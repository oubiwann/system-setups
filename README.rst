system-setups
=============

Dependencies
------------

First, get the dependencies installed.

Debian/Ubuntu-based systems:

.. code:: shell

  sudo apt-get install git openssh-server make

Initial file-copies:

With that in place, scp the appropriate ``.ssh`` files over to the new system
(as well as the ``.gitconfig`` and ``.gitignore_global`` files), and then ``git
clone`` the repo:

With these changes in place, the repo can now be checked out:

.. code:: shell

  git clone git@github.com:oubiwann/system-setups.git

Or, if you're not me:

.. code:: shell

  git clone https://github.com/oubiwann/system-setups.git


Lubuntu/CL-FSWM Tiling WM
-------------------------

These instructions can be applied (with the appropriate substitutions) for
other targets as well:

.. code:: shell

  cd system-setups
  make lubuntu-clfswm


Getting started with CL-FSWM
____________________________

``clfswm`` is a "full screen" window manager; it does more than just tiling.
However, here's how you get started with tiling:

* log in to X using ``clfswm``

* go into "second mode" with ``alt+t`` and then access the menu with ``m``

* Then type ``f`` then ``l``  then ``e`` to access the frame layout
  menu

* At this menu are listed some tiling options that can get you started quickly,
  with or without space around your windows (guess that depends upon how much
  you like your background image!).
