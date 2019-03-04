(cond ((eq system-type 'windows-nt)
       (setq my-prefix "C:/Users/J6L")
       )
      ((eq system-type 'darwin)
       (setq my-prefix "~")
       )
      (t                                ;otherwise...
       ;; All kinds of unix.
       (setq my-prefix "~")
       )
      )

(setq org-publish-project-alist
      (list (list "tarheel-nc"
         :base-directory (concat my-prefix "/Documents/AmazonS3/Tarheel-NC")
         :base-extension 'any
         :exclude "^\\.git\\|\\(\\\\\\|/\\)#\\|~$\\|template\.org" ;.git subdir, Temp. and backup files.
         :publishing-directory (concat my-prefix "/Documents/AmazonS3/Tarheel-NC-published")
         :recursive 't
         :headline-levels 12
         :with-author nil
         :with-creator 't
         :publishing-function 'lusk-org-publish
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
