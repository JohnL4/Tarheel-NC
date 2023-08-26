;; Note: this file may exist in multiple places.  Check your emacs-lisp load path, because I may have moved a more
;; up-to-date copy of it there.

(cond ((eq system-type 'windows-nt)
       (setq my-home (format "%s%s" (getenv "HOMEDRIVE") (getenv "HOMEPATH")))
       ;; (cond ((eq system-name "Oberon") setq my-home "C:/Users/John")
       ;;       (t
       ;;        (setq my-home "C:/Users/j6l") ;Corporate home dir.  Emacs on Windows may have a different idea of home than the
       ;;                                  ;O/S itself.  NOTE: these paths may be case-sensitive (even on Windows), so get
       ;;                                  ;'em right.
       ;;        ))
       )
      ((eq system-type 'darwin)
       (setq my-home "~")
       )
      (t                                ;otherwise...
       ;; All kinds of unix.
       (setq my-home "~")
       )
      )

(setq org-publish-project-alist
      (list
       (list "tarheel-nc"
             :base-directory (concat my-home "/Documents/AmazonS3/Tarheel-NC")
             :base-extension 'any
             :exclude "^\\.git\\|^\\.DS_store\\|\\(\\\\\\|/\\)#\\|~$\\|template\.org" ;.git subdir, Temp. and backup files.
             :publishing-directory (concat my-home "/Documents/AmazonS3/Tarheel-NC-published")
             :recursive 't
             :headline-levels 12
             :with-author nil
             :with-creator 't
             :publishing-function 'lusk-org-publish
             ;; This might actually be better than the HTML_LINK export settings that are the default for org-mode.  We can
             ;; probably just make them less obtrusive.
             ;; :html-preamble "<p><a class='button' href='/'>Home</a> <a class='button' href='..'>Up dir</a> <a class='button' href='.'>Current dir</a></p>"
             )
       (list "sunrise-vademecum"
             :base-directory "c:/Work/Sunrise/VadeMecum"
             :publishing-directory "c:/Work/Sunrise/VadeMecum-Publish"
             :base-extension 'any
             :exclude "^\\.git\\|\\(\\\\\\|/\\)#\\|~$\\|template\.org" ;.git subdir, Temp. and backup files.
             :recursive 't
             :headline-levels 12
             :with-author nil
             :with-creator 't
             :publishing-function 'lusk-org-publish
             ;; This might actually be better than the HTML_LINK export settings that are the default for org-mode.  We can
             ;; probably just make them less obtrusive.
             ;; :html-preamble "<p><a class='button' href='/'>Home</a> <a class='button' href='..'>Up dir</a> <a class='button' href='.'>Current dir</a></p>"
             )
       (list "hmed-vademecum"
             :base-directory "c:/Work/HMED/VadeMecum"
             :publishing-directory "c:/Work/HMED/VadeMecum-Publish"
             :base-extension 'any
             :exclude "^\\.git\\|\\(\\\\\\|/\\)#\\|~$\\|template\.org" ;.git subdir, Temp. and backup files.
             :recursive 't
             :headline-levels 12
             :with-author nil
             :with-creator 't
             :publishing-function 'lusk-org-publish
             ;; This might actually be better than the HTML_LINK export settings that are the default for org-mode.  We can
             ;; probably just make them less obtrusive.
             ;; :html-preamble "<p><a class='button' href='/'>Home</a> <a class='button' href='..'>Up dir</a> <a class='button' href='.'>Current dir</a></p>"
             )
       )
      )

(defun lusk-org-publish (prop-list filename dest-pub-dir)
  "Choose what to do with a given file.  Useful if all your org-mode files live in the directory (org, attachments,
javascript, css, etc."
  (if (string-suffix-p ".org" filename t)
      (org-html-publish-to-html prop-list filename dest-pub-dir)
    (org-publish-attachment prop-list filename dest-pub-dir)))

(provide 'org-projects)
