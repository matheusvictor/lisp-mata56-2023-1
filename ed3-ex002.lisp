;; Desenvolva um programa em LISP que verifique se uma palavra ou frase é um palíndromo.
;; Requisitos:
;; • O usuário executa o programa passando a palavra ou frase. Não é necessário fazer a
;; leitura/digitação da frase;
;; • Converter strings para letras minusculas;
;; • Só considerar letras;
;; • Considerar palavras e frases sem acento;
;; • A rotina deve verificar se a palavra ou frase é a mesma na ordem invertida:
;; ◦ “Ana” é um palindromo;
;; ◦ “Socorra me subi no onibus em marrocos” é um palíndromo;
;; ◦ “LISP” não é um palíndromo.

(defun converter-para-minusculas (texto)
  (string-downcase texto)
)

(defun remover-nao-letras (texto)
  (remove-if-not #'alpha-char-p texto)
)

(defun manter-apenas-letras (texto)
  (
   let (
        (lista-letras (remover-nao-letras texto))
      )
    (coerce lista-letras 'string)
  )
)

;; (defun reverter-texto (texto)
;;   (
;;    setq texto-reverso (reverse (manter-apenas-letras texto))
;;   )
;; )

(defun verificar-se-eh-palindromo (texto)
  (let ((texto-em-minusculo (converter-para-minusculas texto)))
    ;; (format t "Texto tratado: ~a ~%" (manter-apenas-letras texto-em-minusculo))
    (let ((texto-formatado (manter-apenas-letras texto-em-minusculo)))
      (if (equal 
           texto-formatado (reverse texto-formatado)
        )
          (format t "'~a' é palíndromo.~%" texto)
          (format t "'~a' não é palíndromo.~%" texto)
      )
    )
  )
)

;; (print
;;  (manter-apenas-letras "ola, mund! 123")
;; )

(verificar-se-eh-palindromo "Socorram me subi no onibus em marrocos")
(verificar-se-eh-palindromo "Ana")
(verificar-se-eh-palindromo "Lisp")


;; (print
;;   (reverse (remover-nao-letras "Socorram Me subi no onibus em marrocos"))
;; )

;; (print
;;    (remover-nao-letras "Socorram Me subi no onibus em marrocos")
;; )

;; (print(converter-para-minusculas "Socorram me subi no onibus em marrocos"))
