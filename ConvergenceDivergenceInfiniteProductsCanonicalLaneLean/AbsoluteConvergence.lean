import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure AbsoluteConvergencePackage where
  sequence : ℕ → ℝ
  absoluteConvergence : Prop
  unconditionalConvergence : Prop
  absoluteConvergenceClosed : Prop

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.absoluteConvergence ∧ A.unconditionalConvergence ∧ A.absoluteConvergenceClosed

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergencePackage) (h1 : A.absoluteConvergence) (h2 : A.unconditionalConvergence) (h3 : A.absoluteConvergenceClosed) : AbsoluteConvergenceClosed A := by
  exact And.intro h1 (And.intro h2 h3)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse