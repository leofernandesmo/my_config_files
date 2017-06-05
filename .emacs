;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Arquivo de configuração do meu ambiente do emacs
;; @auhor Leonardo Fernandes M de Oliveira
;; @email leofernandesmo@gmail.com
;; @data 2015-02
;;
;; Passos para uso:
;; 1 - Baixar e instalar o Emacs24 (ou mais atual)
;; 2 - 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(display-time) ;;Mostra a hora atual na barra inferior
(setq transient-mark-mode t) ;;Permite a seleção normal através do Tab

;;---------------------------------------------------------------------------
;; faz com que o emacs23 fique no modo de texto visual
;; (quebra de linha visual) quando edita porção tex de um Rnw
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;;---------------------------------------------------------------------------
;; auxilia na identação do código, colunas coloridas após certa distância
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face tabs lines-tail trailing))
(global-whitespace-mode t)
 
;;---------------------------------------------------------------------------
;; inicia Emacs com ctrl-{zxcv} abilitado para desf/recor/cop/colar
;; (cua-mode t)

;;---------------------------------------------------------------------------
;; realçador de pareamento de parenteses, chaves, colchetes, aspas...
(show-paren-mode 1)

;;---------------------------------------------------------------------------
;; tamanho da fonte (120~12pt)
;; comandos C-x C-+ e C-x C-- para aumentar e diminiur o tamanho da fonte
(set-face-attribute 'default nil :height 120)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(column-number-mode t) ;;Habilita a visualização do número da coluna
;; '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(fill-column 80)  ;; Limita a 80 colunas o código.
 '(indicate-empty-lines t) ;; Indica linhas vazias
 '(inhibit-startup-screen t) ;; Desabilita a tela inicial de ajuda
 '(initial-scratch-message nil) ;; Buffer de rascunho aparece vazio
 '(make-backup-files nil) ;; Evita o salvamento de arquivos de backup
 '(visible-bell t) ;; Avisos visuais em vez de bips da placa de som

)
   

 ;; Format the title-bar to always include the buffer name
 (setq frame-title-format "leofernandesmo@emacs - %b")

;; Scroll line by line
 (setq scroll-step 1)





;;YASnippet is a template system for Emacs. It allows you to type an 
;; abbreviation and automatically expand it into function templates. 
;; Bundled language templates include: C, C++, C#, Perl, Python, Ruby, 
;; SQL, LaTeX, HTML, CSS, Erlang and more.
;; 1 - Baixar YASnippet em https://github.com/capitaomorte/yasnippet
;; 2 - Descompactar em .emacs.d/plugins (criar se não existir)
;; 3 - Baixar o pacote de snippets e colocar na pasta /plugins/yasnippet/snippets
;; 4 - Baixe o snippets em https://github.com/AndreaCrotti/yasnippet-snippets
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)

;; (add-to-list 'yas/root-directory "~/.emacs.d/plugins/yasnippet/snippets/")
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets/text-mode");; diretório onde serão salvos os seus snippets personalizados
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets") ;; pasta onde são salvos os snippets globais

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;--------------------------------------------------------------------------------
;; Customizacao feita como indicacao para trabahar com Haskell no GHC
;; Link: https://ghc.haskell.org/trac/ghc/wiki/Emacs
;;------------------------------------------------------------------------------

;;IDO - Interactively DO Things
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Disable tabs for indentation
(setq-default indent-tabs-mode nil)

;;Highlight trailing whitespaces (Destaca as linhas em branco a direita)
(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)

;;Adiciona o numero da linha no canto (pode ser desabilitado com F11)
;; numeração das linhas na margem esquerda
(global-set-key (kbd "<f11>") 'global-linum-mode)

(setq-default fill-column 80)

;;--------------------------------------------------------------------------------
;;Erlang Mode - Para desenvolver em Erlang. Habilite as linhas abaixo.
;;------------------------------------------------------------------------------
(setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.8/emacs"
     load-path))
      (setq erlang-root-dir "/usr/local/lib/erlang")
      (setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
      (require 'erlang-start)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;Wrangler elisp: Puglin para Wrangler refactoring tool
;(add-to-list 'load-path "/usr/local/lib/erlang/lib/wrangler-1.1.01/elisp")
;(require 'wrangler)

;; If you don't have MELPA in your package archives:
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;(package-refresh-contents)
;;(package-install 'intero)
;;(add-hook 'haskell-mode-hook 'intero-mode)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;Auto-complete plugin
;;To install: https://github.com/auto-complete/auto-complete
;; M-x package-install [RET] auto-complete [RET]
;; Default configuration
(ac-config-default)

;;Flycheck: Modern on-the-fly syntax checking extension for GNU Emacs
;;To-install: https://github.com/flycheck/flycheck
(global-flycheck-mode)
