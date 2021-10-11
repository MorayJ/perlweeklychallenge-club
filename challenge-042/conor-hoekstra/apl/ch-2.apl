isValid ← ((0=⊃∘⌽)∧0∧.≤⊢)∘(+\-⌿)'()'∘.=⊢

⍝ Tests
(isValid,⊢) '()'[?2⍴⍨?10] ⍝ 0 ()))))()(
(isValid,⊢) '()'[?2⍴⍨?10] ⍝ 1 (())
(isValid,⊢) '()'[?2⍴⍨?10] ⍝ 0 (((())
(isValid,⊢) '()'[?2⍴⍨?10] ⍝ 1 ()((()))
(isValid,⊢) '()'[?2⍴⍨?10] ⍝ 0 ((( 

⍝ Tacit Tree Visualization

              isValid
            ┌────┴─────┐  
            ∘       ┌──┼─┐
      ┌─────┴─────┐ () . ⊢
  ┌───┼───┐     ┌─┴─┐ ┌┴┐ 
┌─┼─┐ ∧ ┌─┼─┐   \   ⌿ ∘ = 
0 = ∘   0 . ⊢ ┌─┘ ┌─┘     
   ┌┴┐   ┌┴┐  +   -       
   ⊃ ⌽   ∧ ≤   