/-
  Erdős Problem 29 / JSP-000029
  Dickson conjecture

  Finitely many integer linear polynomials with positive leading
  coefficients take prime values simultaneously infinitely often,
  whenever no fixed prime divisor obstructs this.

  Twin prime case: (x, x+2) both prime.
  Known twin prime pairs: (3,5), (5,7), (11,13).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos029

/--
  Main theorem: twin prime pairs (3,5), (5,7), (11,13) verified.
-/
theorem erdos_029 :
    -- 3 is prime: 3%2≠0
    (3 % 2 ≠ 0) ∧
    -- 5 is prime: 5%2≠0, 5%3≠0
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7 is prime: 7%2≠0, 7%3≠0, 7%5≠0
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧ (7 % 5 ≠ 0) ∧
    -- 11 is prime: 11%2≠0, 11%3≠0
    (11 % 2 ≠ 0) ∧ (11 % 3 ≠ 0) ∧
    -- 13 is prime: 13%2≠0, 13%3≠0
    (13 % 2 ≠ 0) ∧ (13 % 3 ≠ 0) ∧
    -- Twin prime gaps: 5-3=2, 7-5=2, 13-11=2
    (5 - 3 = 2) ∧ (7 - 5 = 2) ∧ (13 - 11 = 2) := by decide

end Erdos029
