(defun calcular-fibonacci ()
  (format t "Informe qual n-ésimo elemento deseja encontrar na sequência de Fibonacci: ")
  (let ((elemento (parse-integer (read-line))))
    (cond
      ((not (integerp elemento))
       (format t "Informe um número inteiro.~%")
      )
      ((<= elemento 0)
       (format t "Informe um número maior do que zero.~%")
      )
      (t
       (format t "O ~aº elemento da seq. de Fibonacci é: ~a.~%" elemento (fibonacci elemento)))
    )
  )
)

(defun fibonacci (elemento)
  (if (or (= elemento 0) (= elemento 1))
    elemento
    (+ (fibonacci (- elemento 1)) (fibonacci (- elemento 2)))
  )
)

(calcular-fibonacci)
