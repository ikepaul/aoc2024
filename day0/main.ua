# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Parse ← SplitOnChars "\r\n"

PartOne ← .

PartTwo ← .

Parse Test

⊃PartOne PartTwo
