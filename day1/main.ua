# Experimental!
# ⊣ (last) operator is currently experimental
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Parse ← ≡(∩(⋕ °□) ⊃⊢⊣ SplitOnChars " " °□) SplitOnChars "\r\n"

PartOne ← /+ ⌵-∩⍆
PartTwo ← /+ ≡(×⊙(/+=) .) ⊙¤

Parse Test

⊃PartOne PartTwo
