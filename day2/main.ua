# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Parse ← ≡(□ ≡(⋕ °□) SplitOnChars " " °□) SplitOnChars "\r\n"

IsSafe  ← ××⊃⊃(/× ≥ 1⌵)(/× ≤ 3⌵)(+⊃(/× > 0)(/× < 0)) ↘1 - ↻¯ 1 .
PartOne ← /+ ≡(IsSafe °□)

Dampen  ← >0 /+ ≡IsSafe ≡▽ ¬ ⊞=.⊙¤ ⇡⧻ .
PartTwo ← /+ ≡(Dampen °□)

Parse Input

⊃PartOne PartTwo
