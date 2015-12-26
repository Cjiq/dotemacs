# dotemacs

This is my official emacs config. It makes use of evil to add some of the
smart fuctionality you get from vim.

## Installation

1.  Begin with cloning this repository

    ```sh
    git clone https://github.com/cjiq/dotemacs
    ```

1.  Then move contents to .emacs.d/ directory

    ```sh
    cp -R dotemacs/* ~/.emacs.d/
    ```

1.  Finally symlink init.el to .emacs

    ```sh
    ln -s ~/.emacs.d/init.el ~/.emacs
    ```

## License

MIT