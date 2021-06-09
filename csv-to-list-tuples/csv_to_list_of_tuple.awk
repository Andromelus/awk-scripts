# --- VARS
# header: bool (0 or 1), default to false (0). If true, ignore first line of input file
# --- EXAMPLE
# awk -F "," -v header=1 -f csv_to_list_of_tuple.awk source.csv
BEGIN {
    ignore_first_line = 0
    if (header == 1) {
        ignore_first_line = 1
    }
    list = "[" ORS
}

function process_line() {
    tuple = "("
    for (i = 1; i<=NF ; i++) {
        if (i != 1) {
            tuple = tuple ","
        }
        tuple = tuple "\""$i"\""
    }
    return tuple ")," ORS
}

{
    if (NR == 1) {
        if (ignore_first_line == 0) {
            list = list process_line()
        }
    } else {
       list = list process_line()
    }
}

END {
    list = list "]"
    print list
}
