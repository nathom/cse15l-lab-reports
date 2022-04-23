# Week 4 Lab Report

## Fix test-file2

![Diff for test-file2 fix](Week-4-Lab-Report_resources/qrlddqfcldmvaqjchilornoqrwnsfpsp.jpg)

[test-file2.md](https://github.com/nathom/markdown-parser/blob/main/test-file2.md)

### Symptom

![](Week-4-Lab-Report_resources/eoddpzsadzhikbparplvfpnxngoufszi.jpg)

When running MarkdownParse on test-file2.md, it causes the program to freeze. The bug was
that the program was not checking if any of the characters did not match, returning `-1`.
This meant that it treated `-1` as a valid index, which basically reset the `currentIndex`
variable, never terminating the loop.

## Fix test-file3

![Diff for test-file3 fix](Week-4-Lab-Report_resources/zfmypmwryuczqjqnxbztnftdwkbdtdvj.jpg)

[test-file3.md](https://github.com/nathom/markdown-parser/blob/main/test-file3.md)

### Symptom

![](Week-4-Lab-Report_resources/ruaduiiuomekkvelauboykmdqmikedts.jpg)

The program counts embedded images as links. `should not show` should not have
been detected as a link. The bug was that positions of exclamation marks were
not checked.

## Fix test-file4

![Diff for test-file4 fix](Week-4-Lab-Report_resources/nryfvtwkyjsxnsotmthlnhpnevpbdtjx.jpg)

[test-file4.md](https://github.com/nathom/markdown-parser/blob/main/test-file4.md)

## Symptom

![](Week-4-Lab-Report_resources/xpnddnzigbztwvbissadxzkzktqxjzzn.jpg)

Instead of returning an empty list, MarkdownParse was returning a list with
length one containing `""`. This was because it was not verifying that the closing
bracket was one position before the opening parenthesis.
