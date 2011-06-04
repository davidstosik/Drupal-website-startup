; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. 

projects[] = drupal

; Projects
; --------
; Each project that you would like to include in the makefile should be
; declared under the `projects` key.

; Modules
; -------

projects[] = token
projects[] = pathauto
projects[] = ctools
projects[] = views
projects[] = wysiwyg
projects[] = features
; Waiting for a stable release off Strongarm
projects[strongarm] = 2.0-beta2

; Themes
; ------

projects[] = omega

; Libraries
; ---------
; Non-Drupal-specific libraries (e.g. js, PHP or other Drupal-agnostic
; components) should be declared under the `libraries` key.

libraries[tinymce][download][type] = "file"
libraries[tinymce][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_3.4.2.zip"
libraries[tinymce][directory_name] = "tinymce"
