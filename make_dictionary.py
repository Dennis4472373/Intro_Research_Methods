#!/usr/bin/python3

import json
import sys


def open_files(first_file, second_file):
    """This function opens the two data files"""

    with open(first_file, 'r') as first_inp:
        data_2013 = first_inp.read()

    with open(second_file, 'r') as second_inp:
        data_2019 = second_inp.read()

    return data_2013, data_2019


def find_data(data_2013, data_2019):
    """This functions selects the actual data from the total data"""

    tweets_data = []
    digits = ""
    for file in data_2013, data_2019:
        file = file.split("\n")
        for line in file:
            for char in line:
                if char in "0123456789":
                    digits += char
            if digits == "2013" or digits == "2019":
                digits = ""
            else:
                tweets_data.append(digits)
                digits = ""
    for element in tweets_data:
        if element == "":
            tweets_data.remove(element)

    return tweets_data


def main(argv):

    data_2013, data_2019 = open_files(argv[1], argv[2])

    tweets_data = find_data(data_2013, data_2019)

    data_dict = {
        'Year': ['2013', '2019'],
        'Total tweets': [tweets_data[0], tweets_data[2]],
        'Tweets about AI': [tweets_data[1], tweets_data[3]]
    }

    with open("edited_data.json", 'w') as output:
        json.dump(data_dict, output)


if __name__ == "__main__":
    main(sys.argv)
