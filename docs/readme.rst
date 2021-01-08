==========================================================================================
Things To Do
==========================================================================================

.. rubric:: Checkout dotted files

.. code-block:: terminal

    $ git clone https://github.com/Jeroen-Matthijssens/.dottedFiles.git


.. rubric:: enable keyboard layout

.. code-block:: terminal

    $ sudo cp ~/.dottedFiles/cdvorak /usr/share/X11/xkb/symbols/.
    $ setxkbmap cdvorak
    $ setxkbmap -print -verbose 10
    $ localectl --no-convert set-x11-keymap cdvorak
    $ cat /etc/X11/xorg.conf.d/00-keyboard.conf


.. rubric:: Link files

.. code-block:: terminal

   $ cd ~

   $ [ -f .bashrc ] && mv .bashrc .dottedFiles/bash-original-rc

   $ ln -s .dottedFiles/vimrc .vimrc
   $ ln -s .dottedFiles/vim .vim
   $ ln -s .dottedFiles/bashrc .bashrc
   $ ln -s .dottedFiles/inputrc .inputrc
   $ ln -s .dottedFiles/gitconfig .gitconfig
   $ ln -s .dottedFiles/tmux.conf .tmux.conf

   $ mkdir .vim/{swps,bcks,undo}


Do this for both yourself and the root user.

.. code-block:: terminal

    $ sudo su
    $ # repeat previous steps


.. rubric:: install git plugins

.. code-block:: terminal

    $ mkdir ~/.vimplugins
    $ cd ~/.vimplugins
    $ git clone https://github.com/scrooloose/nerdtree.git


.. rubric:: Install tools

.. code-block:: terminal

    $ sudo pacman -S bash-completion xclip bat
    $ sudo pacman -S tmux exa jq youtube-dl
    $ sudo pacman -S docker docker-compose


.. rubric:: enable git auto completion


.. rubric:: installing cdvorak xkb keyboard layout in X11

To enable the keyboard layout for the login page


To enable keyboard selection from the keyboard layout settings insert the following in
``/usr/share/X11/xkb/rules/base.xml`` and ``/usr/share/X11/xkb/rules/evdev.xml``.


see https://blog.simos.info/avestan-keyboard-layout/ for inspiration

.. code-block:: xml

    <layout>
        <configItem>
            <name>be</name>
            <shortDescription>cdvorak</shortDescription>
            <languageList>
                <iso649Id>en</iso649Id>
                <iso649Id>nld</iso649Id>
            </languageList>
        </configItem>
        <variantList>
            <variant>
                <configItem>
                    <name>102</name>
                    <description>accented custom dvorak</description>
                </configItem>
            </variant>
        </variantList>
    </layout>


.. admonition:: Work in progress

    - what are the names and how xkb know what file to look in and what section to use?

      When looking at this from manjaro with kde, it found variants which I did not
      define.

.. rubric:: setup pyenv and pipenv

.. code-block:: terminal

    $ sudo pacman -S pyenv
    $ pip install pipenv


.. rubric:: generate new private key and add change dotted file

.. rubric:: setup rst documentation site generator

.. rubric:: setup google drive integration?

.. rubric:: setup java (https://adoptopenjdk.net)
