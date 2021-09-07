#!/usr/bin/env python3

import sys


def main(address):
    return [f"\\x{address[i : i + 2]}" for i in range(0, len(address), 2)][::-1]


if __name__ == "__main__":
    hex_code = main(sys.argv[1])
    print("".join(hex_code))
