import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure CauchyCriterionPackage where
  sequence : ℕ → ℝ
  cauchyProperty : Prop
  convergent : Prop
  cauchyClosed : Prop

def CauchyCriterionClosed (C : CauchyCriterionPackage) : Prop :=
  C.cauchyProperty ∧ C.convergent ∧ C.cauchyClosed

theorem cauchy_criterion_closed_from_evidence (C : CauchyCriterionPackage) (h1 : C.cauchyProperty) (h2 : C.convergent) (h3 : C.cauchyClosed) : CauchyCriterionClosed C := by
  exact And.intro h1 (And.intro h2 h3)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse