;; Desenvolva um programa em LISP que calcule o fatorial de um número. Requisitos:
;; • Usuário deve informar o número;
;; • Se o número não for um inteiro, o programa deve exibir a mensagem “O numero deve ser
;; inteiro”;
;; • Se o número for 0 ou negativo, o programa deve exibir a mensagem “O numero deve ser
;; maior do que zero”;
;; • Se o número for um inteiro e positivo (>0), o programa deve calcular o fatorial do
;; numero e apresentar a mensagem “ O fatorial de “numero” e “9999999999999” “;

(defun calcular-fatorial ()
  (format t "Informe um numero inteiro para calcular seu fatorial: ")
  (let ((numero (parse-integer (read-line))))
    (cond
      ((not (integerp numero))
       (format t "O numero deve ser inteiro.")
       (terpri))
      ((< numero 0)
       (format t "O numero deve ser maior ou igual a zero."))
      (t
       (format t "O fatorial de ~a eh ~a." numero (fatorial numero)))
       (terpri))
    )
  )

(defun fatorial (numero)
  (if (and (>= numero 0) (<= numero 1))
      1
      (* numero (fatorial (- numero 1)))
    )
  )

(calcular-fatorial)
