Bash-Framework
==============

A framework for writing bash scripts. To use, simply put /lib in a directory, and source it in a scripts as follows:

```bash
. /path/to/lib/main.lib
```

Make sure that you use the full path in your scripts, or you may encounter problems.

In order to load a module, use librequire

```bash
#!/usr/bin/env bash
. /path/to/lib/main.lib
librequire "my module.lib"
# rest of the script
```

