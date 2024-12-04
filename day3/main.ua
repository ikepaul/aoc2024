# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Parse ← SplitOnChars "\r\n"

DoTheMulsAndThenAdd ← /+≡(/× ⊜⋕ ∈ "0123456789" . °□ ⊢)
PartOne             ← DoTheMulsAndThenAdd regex "mul\\([0-9]+,[0-9]+\\)"

GetOccurencesInOrder ← ⊢⍉ ⬚""regex "(mul\\([0-9]+,[0-9]+\\))|(don\\'t\\(\\))|(do\\(\\))"
MarkDoesAndDonts     ← + ⊃≡(≍"do()" °□)≡(¯ ≍ "don't()" °□)
CreateMask           ← \(↧ 1 ↥ 0 +) ⊂ [1] ↘ 1
PartTwo              ← DoTheMulsAndThenAdd ▽ ⊃(≡(= @m ⊢ °□))∘ ▽ MarkDoesAndDonts . GetOccurencesInOrder

PartTwo Test
