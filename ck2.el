(defvar ck2-mode-hook nil)

(defvar ck2-mode-map
  (let ((map (make-keymap)))
    (define-key map "\C-j" 'newline-and-indent) ; (define-key keySequence function)
    map)
  "Keymap for Crusader Kings 2 Clausewitz major mode")

(set-language-environment "windows-1252")

(defconst ck2-syntax-table
  (let ((table (make-syntax-table)))
    ;; " is generally a string delimiter
    (modify-syntax-entry ?\" "\"" table)
    ;; # begins a comment, a newline (\n) ends it
    (modify-syntax-entry ?# ". 12" table)
    (modify-syntax-entry ?\n ">" table)
    table))

(define-derived-mode ck2-mode prog-mode "Crusader Kings 2 Clausewitz mode"
  :syntax-table ck2-syntax-table
  (font-lock-fontify-buffer))
