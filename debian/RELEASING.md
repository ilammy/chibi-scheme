Maintainer guide
================

## How to pull new upstream release

 1. **Merge the changes.**

    Merge the release tag into `debian/sid`.

 2. **Refresh the patches.**

 3. **Update the changelog.**

    At this point the package should be more or less ready to be built with

        debuild -us -uc

 4. **Review symbol updates.**

 5. **Review lintian warnings.**
