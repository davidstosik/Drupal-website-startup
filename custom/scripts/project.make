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

; If using Pressflow instead of Drupal core:
; projects[pressflow][type] = "core"
; projects[pressflow][download][type] = "file"
; projects[pressflow][download][url] = "http://to-be-filled.tar.gz"

; Projects
; --------
; Each project that you would like to include in the makefile should be
; declared under the `projects` key.

; Modules
; -------

; Essential modules
projects[] = token
projects[] = pathauto
projects[] = ctools
projects[] = views
projects[] = whois
projects[] = title
projects[] = name
projects[] = email
projects[] = phone
projects[] = field_group

; Use dev release until the features integration is released with 2.2.
projects[wysiwyg][version] = 2.x-dev

; Languages
projects[] = l10n_update

; Configuration saving
projects[] = features
projects[] = features_extra
projects[] = strongarm
projects[] = entity

; Others
projects[] = admin_menu
projects[] = adsense
projects[] = google_analytics
projects[] = link

; Video
projects[] = vimeo_link_formatter
projects[] = youtube

; Tools
projects[] = libraries

; Themes
; ------

projects[] = omega

; Libraries
; ---------
; Non-Drupal-specific libraries (e.g. js, PHP or other Drupal-agnostic
; components) should be declared under the `libraries` key.

libraries[tinymce][download][type] = "file"
libraries[tinymce][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_3.5.6.zip"
libraries[tinymce][directory_name] = "tinymce"

