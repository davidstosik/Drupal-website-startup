Requirements
============
* Web server: Apache 2.x.
* Database server: MySQL 5.0.15 or higher with PDO.
* PHP: 5.3 or higher.
* Drush: Drush 4 with Drush Make, or Drush 5 and higher.

Project installation
====================
After cloning Git repository on your local file system, you need to build the
source code with drush make:
 $ drush make custom/scripts/project.make --translations=ja
(You can add other translations in a comma-separated list.)

Note: Before invoking drush make please make sure that root folder is writeable
by you, otherwise drush won't be able to extract the downloaded files.

The file settings.php as been a bit tweaked, so that it can be commited to Git,
including all customizations that need to live in that file (domain, memcache, ...),
whithout storing database credentials on Git. You need instead to input your
database credentials manually by creating the file sites/default/db.settings.php.
 $ cp sites/default/example.db.settings.php sites/default/db.settings.php
 $ vim sites/default/db.settings.php

Then, as everything is meant to be tracked on Git, you just need to install the
website, either following the install process going to install.php with a web
bowser, or using drush:
 $ drush site-install [profile] --account-pass=admin --locale=ja --site-name="[Name]"

Note:
- Drush will create the tables for you, no need to create table manually before
invoking drush site-install.

Profile
=======
All Drupal custom code is placed inside a custom profile, located in profiles/.

Dependencies
============
When installing a new contrib. project, it should be added in the project.make
file, so that it can be downloaded when building the project source code, and
also in the profile's dependencies (in .info file), so that it is installed
during site installation.

Features
========
When possible, Drupal settings should be exported in features, instead of coded
in custom modules. Features can contain many configuration elements, such as
content types, image presets, views, Drupal variables (thanks to Strongarm),
and more.
Features can contain custom code too, in their .module file (or any needed
include file). Be sure to keep in a same module/feature all code related to a
one fonctionnality, and nothing else.

Custom modules
==============
Each custom module should focus on a specific need, and, when possible, be
generic enough to be contributed on Drupal.org. For general customization, use
the profile, which acts as a custom module (.profile file replaces .module,
.install file has the same use as a module's one, profile's weight is very high,
so it will probably be called last).

Staying up-to-date
==================
In development phase, be sure to regularly update your Git workspace (git pull),
and to run make file again (using drush make command above). As new versions of
modules can appear, make sure database is up-to-date to (drush updb).
During first development phase, installing the site from scratch is a good way
to ensure nothing has been left away.

Update phase
=============
As soon as the project has been delivered, and client wants to keep the data he
creates on his platform, the website will not be installed from scratch anymore.
This means update functions (hook_update_N) should be written. They may contain
installation of new modules, features revert, or any needed custom code.
From this moment, the make file should describe all project's versions.
(New versions can break a website.)
This project is particular, as install AND update procedures will always need to
be kept up-to-date. The reason is that this project is intendend to be installed
many times on different domains, over time.

Hacking
=======
Hacking is prohibited! Most of the time, instead of hacking, there is a clean
way to plug in a module's process (using hooks), and customize the execution.
When the considered module has a bug, instead of just hacking it, a clean patch
should be written and uploaded on Drupal.org (in the corresponding issue queue),
and added to the make file until the patch gets approved and commited.

Goal
====
EVERY single piece of development, configuration, created data needs to be put
down in code. This provides the development team a lot of benefits:
 - delivery process is standardized, and should take a few minutes
 - everyone has the assurance that achieved work is tracked, and won't be lost
 - any new developper will easily build a development platform
 - this prepares to work with automated tools (continuous integration, testing).
In one sentence: one should be able to build a full-featured website with only
Git repository  and quick and generic procedures.
