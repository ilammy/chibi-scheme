Maintainer guide
================

## How to pull new upstream release

 1. **Merge the changes.**

    Merge the release tag into `debian/sid`.

 2. **Refresh the patches.**

    Most likely the patches are not going to apply cleanly and will need a refresh.
    Move through them, applying one by one with `quilt push`,
    fixing the the changes, refreshing the patches with `quilt refresh`.
    Do this until the entire patch set can be cleanly applied with no warnings using `quilt push -a`.

    You may need to remove some files from patches, or entire patches altogether.
    Even if there are no sematic changes, line numbers in patches may need an update.
    Take care to preserve sequential patch numbering as well.

    Refer to [this guide](https://wiki.debian.org/UsingQuilt)
    if you have troubles with **quilt**.

 3. **Update the changelog.**

    Add a `New upstream release` changelog entry with `dch`, bumping the package version.

    Repackage the source code with

        ./debian/make-orig-tarball

    and now you can attempt building the package with

        debuild -us -uc

    If there are not drastic changes, the build process should process more or less smoothly.

 4. **Review symbol updates.**

    During the build process the **dpkg-gensymbols** will fail due to symbol changes.
    It will usually print out a draft diff that you need to apply to fix the errors.
    Update the `debian/*.symbols` files with new symbols for the release.
    Note and comment out the removed symbols, if there are any, and confirm that they do not break ABI.

    Refer to [this guide](https://www.debian.org/doc/manuals/maint-guide/advanced.en.html#librarysymbols)
    for more information on maintaining `*.symbols` files.

 5. **Review lintian warnings.**

    During the `debuild` stage **lintian** might give out some new warnings and errors.
    Review and resolve them as necessary.

 6. **Review news and changes.**

    Unfortunately, chibi-scheme does not maintain a changelog, so keeping up is tricky.
    Review the changes to see if there is something that might break the package,
    or some new things that you might need to maintain from now on.

    Here's a list of files which might interest you:

      - `Makefile` and its sisters
      - `include/*` for API/ABI changes

 7. **Update manpages.**

    Review new command-line options worth describing and update the man pages as necessary.
    Regardless of substantial changes, update the release version, name, and date.
