system-setups
=============

Common Ubuntu
-------------

.. code:: shell

  sudo apt-get install git openssh-server

With that in place, scp the appropriate ``.ssh`` files over to the new system
(as well as the ``.gitconfig`` and ``.gitignore_global`` files), and then ``git
clone`` the repo:

.. code:: shell

  git clone git@github.com:oubiwann/system-setups.git


Lubuntu/Awesome Tiling WM
_________________________

.. code:: shell

  cd system-setups/lubuntu-awesome
