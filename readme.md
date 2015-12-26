# dotemacs

This is my official emacs config. It makes use of evil to add some of the
smart fuctionality that you get from vim. 

Credits to [aaronbieber](https://github.com/aaronbieber) and [bling](https://github.com/bling) for insperation and for providing
awesome config examples

## Installation

1.  Begin with cloning this repository

    ```sh
    git clone https://github.com/cjiq/dotemacs
    ```

1.  Then move contents to .emacs.d/ directory

    ```sh
    cp -r dotemacs/* ~/.emacs.d/
    ```

1.  Finally symlink init.el to .emacs

    ```sh
    ln -s ~/.emacs.d/init.el ~/.emacs
    ```

1.  Done! The next time you launch emacs it will start to download 
    any missing packages.

## License

MIT