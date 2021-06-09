# Motivation

These scripts have been written to solve specific problems, but could be used as a source of inspiration for other situations.

## csv-to-list-tuples

This script generates a pyton like list of tuples from a CSV formatted file.

Each line of the CSV will be transformed into a tuple of the python list.

### Example:

```bash
$ awk -v header=1 -F "," -f csv_to_list_of_tuple.awk source.csv
[
("2008","48.104496002197266","7.380321502685547","A5G8"),
("2008","43.2242317199707","0.10261153429746628","A6E2"),
("2008","44.37619400024414","4.700921058654785","3685"),
("2008","49.508567810058594","0.21447540819644928","5490"),
("2008","45.25423049926758","5.628854751586914","9017"),
]
```