import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure InfiniteProduct (A : AdmissibleClass) where
  terms : Nat → ℂ
  product : ℕ → ℂ
  partial_product_formula : ∀ n : ℕ, product n = ∏_{k=0}^{n-1} terms k

structure AbsoluteConvergenceCondition (A : AdmissibleClass) (P : InfiniteProduct A) where
  sum_abs_converges : ∑_{k=0}^{∞} |P.terms k - 1| < ∞

structure ConditionalConvergenceCondition (A : AdmissibleClass) (P : InfiniteProduct A) where
  product_converges_to_nonzero : ∃ (L : ℂ), L ≠ 0 ∧ Filter.Tendsto (fun n : ℕ => P.product n) Filter.atTop (𝓝 L)
  sum_abs_diverges : ∑_{k=0}^{∞} |P.terms k - 1| = ∞

inductive ConvergenceType
| absolute
| conditional
| divergent

structure ConvergentInfiniteProductClass (A : AdmissibleClass) where
  infiniteProduct : InfiniteProduct A
  convergenceType : ConvergenceType
  absoluteCondition : Option (AbsoluteConvergenceCondition A infiniteProduct)
  conditionalCondition : Option (ConditionalConvergenceCondition A infiniteProduct)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse