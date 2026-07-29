import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.ConvergentInfiniteProductClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure WeierstrassProductConditions (A : AdmissibleClass) (P : InfiniteProduct A) where
  canonicalFactors : Nat → ℂ
  growthCondition : ∑_{k=0}^{∞} |canonicalFactors k - 1|^2 < ∞
  factorRepresentation : ∀ n : ℕ, P.product n = ∏_{k=0}^{n-1} canonicalFactors k

def bridgeClosed (A : AdmissibleClass) (P : InfiniteProduct A) : Prop :=
  ∑_{k=0}^{∞} |P.terms k - 1| < ∞ ∨ (∃ (cond : ConditionalConvergenceCondition A P), True)

theorem weierstrass_bridge_from_admissible_class (A : AdmissibleClass) (P : InfiniteProduct A) :
  bridgeClosed A P := by
  by_cases h : ∑_{k=0}^{∞} |P.terms k - 1| < ∞
  · exact Or.inl h
  · have hprod : ConvergentInfiniteProductClass A P := by
      have := isConvergentInfiniteProductClass A
      exact this P
    have hcond : ConditionalConvergenceCondition A P := hprod.toConditionalConvergenceCondition
    exact Or.inr ⟨hcond, trivial⟩

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse