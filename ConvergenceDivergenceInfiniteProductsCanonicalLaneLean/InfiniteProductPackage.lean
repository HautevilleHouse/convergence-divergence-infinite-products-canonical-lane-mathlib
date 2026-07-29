import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure InfiniteProductPackage where
  termSequence : ℕ → ℝ
  partialProductSequence : ℕ → ℝ
  convergenceType : Prop
  divergenceType : Prop

def InfiniteProductClosed (P : InfiniteProductPackage) : Prop :=
  P.convergenceType ∨ P.divergenceType

theorem infinite_product_closed_from_evidence (P : InfiniteProductPackage) (h : P.convergenceType) : InfiniteProductClosed P := by
  exact Or.inl h

theorem infinite_product_closed_from_divergence (P : InfiniteProductPackage) (h : P.divergenceType) : InfiniteProductClosed P := by
  exact Or.inr h

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse