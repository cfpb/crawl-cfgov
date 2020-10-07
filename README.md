# HTML Archive of consumerfinance.gov

**Description**:
This repo contains an archive of consumerfinance.gov HTML, generated via web crawl.
This can serve as a resource when answering questions about how the site changes and when those changes happen.

  - **Technology**: Uses `wget` to crawl the site and download HTML.
  - **Status**:  See the [CHANGELOG](CHANGELOG.md).

## Dependencies

This project uses [`wget`](https://www.gnu.org/software/wget/) to crawl consumerfinance.gov and download the HTML.
You can install it on a Mac using `brew install wget`.

## Installation

To get a copy of the consumerfinance.gov archive or run a crawl on your computer, clone this repository.

## Usage

To view the consumerfinance.gov archive, you can browse the history of this repo here on github.com, or clone this repository.

To run a crawl on your computer, `cd` into the root of this project and use the following command: `./crawl.sh`.
A full crawl usually takes over two hours.
To modify the parameters of the crawl, such as the target domain or which pages to include, edit `crawl.sh`.

## Getting help

If you have questions, concerns, bug reports, etc, please file an issue in this repository's Issue Tracker.

## Getting involved

See our [contributing guidelines](CONTRIBUTING.md).


----

## Open source licensing info
1. [TERMS](TERMS.md)
2. [LICENSE](LICENSE)
3. [CFPB Source Code Policy](https://github.com/cfpb/source-code-policy/)
