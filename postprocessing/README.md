# HTML postprocessing

This directory contains [sed](https://linux.die.net/man/1/sed) scripts
used to postprocess website HTML after it has been downloaded.
These scripts are used to simplify the HTML before it is committed back to this repository.

To apply these scripts to a directory containing HTML:

```sh
./transform_results.sh path_to_html
```

The HTML will be modified in-place.

A testing script is also included for validating the existing scripts and developing new ones:

```sh
./test.sh
```
