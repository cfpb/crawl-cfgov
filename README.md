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

To view the consumerfinance.gov archive, you can browse the history of this repo here on github.com, or clone this repository.

To run a crawl from your computer, `cd` into the root of this project and use the following command: `./crawl.sh`.
A full crawl usually takes over two hours.
To modify the parameters of the crawl, such as the target domain or which pages to include, edit `crawl.sh`.

## Known issues

The crawl has some constraints and limitations.
- The results only contain pages that share the same domain: www.consumerfinance.gov
- Pages may exist on consumerfinance.gov that are not linked to. If so, they will not appear in crawl results.
- The crawl records each page based on its url.
  If we accidentally record a page with url parameters, it counts that as a separate page, which could result in duplication
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
