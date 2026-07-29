import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure ConvergenceTestPackage where
  testName : String
  sequence : (ℕ → ℝ) → Prop
  convergenceCondition : Prop
  divergenceCondition : Prop
  testApplied : (ℕ → ℝ) → Prop

def ConvergenceTestClosed (P : ConvergenceTestPackage) : Prop :=
  P.convergenceCondition ∧ P.divergenceCondition

structure ConvergenceTestEvidence (P : ConvergenceTestPackage) where
  convergenceConditionClosed : P.convergenceCondition
  divergenceConditionClosed : P.divergenceCondition

theorem convergence_test_closed_from_evidence (P : ConvergenceTestPackage) (E : ConvergenceTestEvidence P) :
  ConvergenceTestClosed P := by
  exact And.intro E.convergenceConditionClosed E.divergenceConditionClosed

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse