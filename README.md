# HTML Archive of consumerfinance.gov

**Description**:
This repo contains an archive of consumerfinance.gov HTML, generated via web crawl.
This can serve as a resource when answering questions about how the site changes and when those changes happen.

  - **Technology**: Uses `wget` to crawl the site and download HTML.
  - **Status**:  See the [CHANGELOG](CHANGELOG.md).

## The archive

The archive of consumerfinance.gov is contained in the `www.consumerfinance.gov` directory of this repo.
It contains an HTML download of each page it crawls.
The archive does not download any CSS, JavaScript, or images associated with the pages.
It also does not contain any PDF, CSV, or other supplementary files linked from consumerfinance.gov.
The HTML is modified before being archived to remove `<script>` tags, since these are usually minified and would not be useful for analysis.

## Dependencies

This project uses [`wget`](https://www.gnu.org/software/wget/) to crawl consumerfinance.gov and download the HTML.
You can install it on a Mac using `brew install wget`.

## Installation

To get a copy of the consumerfinance.gov archive or run a crawl on your computer, clone this repository.

## Usage

### Exploring the archive

To view the consumerfinance.gov archive, you can browse the history of this repo here on github.com, or clone this repository.

#### Performing basic searches in a browser

GitHub.com's search functionality can be used to perform basic searches for words or phrases.
For example,
[searching for "reverse  mortgage"](https://github.com/cfpb/crawl-cfgov/search?q=%22reverse+mortgage%22)
returns all pages containing that term.
Unfortunately, although GitHub does provide the ability to
[customize search results](https://docs.github.com/en/free-pro-team@latest/github/searching-for-information-on-github/searching-code),
it only supports basic querying and filtering.
Advanced searches can be more easily performed locally using shell commands after cloning this repository.

#### Using shell commands to search locally

Once this repository has been cloned locally, the common shell command `grep` can be used for common searches.
For example, to list all instances of the case-insensitive phrase "reverse mortgage":

```sh
grep -ri "reverse mortgage" www.consumerfinance.gov
```

To list only matching filenames, use the `-l` option:

```sh
grep -ril "reverse mortgage" www.consumerfinance.gov
```

You may want to also sort the results alphabetically:

```sh
grep -ril "reverse mortgage" www.consumerfinance.gov | sort
```

Versions of `grep` with support for extended regular expressions allow additional searches.
For example, to find all occurrences of a GovDelivery code like `USCFPB_12345`:

```sh
grep -rE 'USCFPB_[0-9]+' www.consumerfinance.gov
```

The results of a `grep` search can be piped to tools like `sed` to do further processing.

For example, let's say you want to check the value of all `aria-label` attributes on Spanish pages:

```sh
# Ggenerate a list of Spanish pages, using the presence of "Un sitio web"
# in the site header to distinguish them from English pages.
grep -rl "Un sitio web" www.consumerfinance.gov > spanish-pages.txt

# Grep only those files again to find all aria-label attributes.
cat spanish-pages.txt | xargs grep aria-label > spanish-aria-labels.txt

# Used sed to extract the list of aria-labels, and show a sorted list of unique values.
cat spanish-aria-labels.txt | sed -n 's/^.*aria-label="\([^"]*\)".*$/\1/p' | sort | uniq
```

Command line tools like
[`grep`](https://linux.die.net/man/1/grep)
and
[`sed`](https://linux.die.net/man/1/sed)
are very complex (and can vary depending on operating system),
so reading their documentation can be helpful in creating searches.

### Running the crawler locally

To run a crawl on your computer, `cd` into the root of this project and use the following command:

```sh
./crawl.sh https://www.consumerfinance.gov
```

A full crawl can take several hours. To limit the crawl depth:

```sh
./crawl.sh -d 4 https://www.consumerfinance.gov
```

Or, to start the crawl at a specific URL:

```sh
./crawl.sh https://www.consumerfinance.gov/start/crawl/here/
```

## Known issues

The crawl has some constraints and limitations.
- The results intentionally only contain pages that share the same domain.
- The crawl will not include any pages that are not linked to from any other page reachable from the site root.
- The crawl records each page based on its url.
  If we accidentally record a page with url parameters, it counts that as a separate page, which could result in duplication.
- There are some pages on consumerfinance.gov that can only be found by paging through paginated lists of results.
  We try to configure the crawl to find and download all of these pages, but it's possible there will be omissions.

## Getting help

If you have questions, concerns, bug reports, etc, please file an issue in this repository's Issue Tracker.

## Getting involved

See our [contributing guidelines](CONTRIBUTING.md).


----

## Open source licensing info
1. [TERMS](TERMS.md)
2. [LICENSE](LICENSE)
3. [CFPB Source Code Policy](https://github.com/cfpb/source-code-policy/)
