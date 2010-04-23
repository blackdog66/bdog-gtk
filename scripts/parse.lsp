
(setq f (read-file "cfg"))

(define (getGtkFunctions)
   (find-all  "FUNCTION_NAME = gtk_(.*)" f $1))

(define (getGladeFunctions)
   (find-all  "FUNCTION_NAME = glade_(.*)" f $1))

(define (cam-case n) 
  (join (map title-case (parse n "_"))))

(define (change-types l)
  (map (fn (el) 
         (cond
           ((= el "NONE") "Void")
           ((= el "VOID") "Void")
           ((= el "WIDGET") "String")
           ((= el "STRING") "String")
           ((= el "INT") "Int")
           ((= el "BOOL") "Bool")
           ((= el "BASE64") "String")
           ((= el "NULL") "Widget")
           ((or (= el "DOUBLE") (= el "FLOAT")) "Float")
           ("Dynamic")))
       l))

(define (wrap el)
  (cond
    ((= el "String") (string "'" el "'"))
    ((el))))

(define (add-param-conversion el)
  (string "Server.in" (first el) "(p" (el 1) ")"))

(define (body-params p)
  (if (> (length p) 0)
      (0 -6 (join 
             (map (fn (el) (string "+" (add-param-conversion el) " + \" \""))
                  (zip p (sequence 1 (length p))))))
      ""))

(define (get-prefix apiType)
    (if (= apiType "Gtk") "gtk_" "glade_"))

(define (body f r p apiType) 
  (letn  ((fncall  (string "Server.send(\"" 
                          (get-prefix apiType) 
                          f " \"" (body-params p) (if (= r "Void") "" ",fn") ")")))
    (string fncall ";")))

(define (zip) 
    (transpose (args))) 

(define (head-params p)
  (join
   (if (> (length p) 0)
       (map (fn (el) (string "p" (first el) ":" (el 1)))
            (zip (sequence 1 (length p)) p))
       (list)) ","))

(define (first-char-lower s)
  (string (lower-case (first s)) (1 s)))
 
(define (comma? s)
  (if (= (length s) 0) "" ","))

(define (header n r p)
  (letn ((hps (head-params p)))
    (append "public static function "
            (first-char-lower (cam-case n))
            "(" hps (if (= r "Void") ")" (append (comma? hps) "fn:" r  "->Void)"))
            ":"
            "Void"
            " {\n" )))

(define (genApi generator apiType)
  (map (fn (f)  
     (letn (
        (p (map trim (parse f ",")))
        (fs (change-types p))
        (fnname (p 0))
        (retType (fs 2))
        (prms (4 fs)))
       
       (append
        (header fnname retType prms)
        (body fnname retType prms apiType)
        "\n}"
        )))
       
       (generator)))

(define (fheader cl)
  (string
   "
package gtk;

import ui.Widget;
import gtk.Server; 
import haxe.io.Bytes;

class " cl " {\n"))

(setq out-dir "./")

(define (gen className generator)
  (write-file (append out-dir "/" className ".hx") 
              (string 
               (fheader className)
               (join (genApi generator className) "\n")
               "\n}")))

(gen "Gtk" getGtkFunctions)
(gen "Glade" getGladeFunctions)




