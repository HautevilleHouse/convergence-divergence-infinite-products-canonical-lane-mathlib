import canonicalLaneMathlib.AdmissibleClass

/-!
# Infinite Product Convergence Criteria

This module defines the basic criteria for convergence of infinite products.
-/

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure InfiniteProductSequence (α : Type u) [TopologicalSpace α] [CommMonoidWithZero α] where
  terms : ℕ → α

def InfiniteProduct (S : InfiniteProductSequence α) [TopologicalSpace α] [CommMonoidWithZero α] : ℕ → α := λ n => ∏_{k=0}^{n-1} S.terms k

structure InfiniteProductConvergencePackage where
  limitExists : Prop
  limitFinite : Prop
  limitNonZero : Prop
  infiniteProduct : Prop

def InfiniteProductConvergenceClosed (P : InfiniteProductConvergencePackage) : Prop :=
  P.limitExists ∧ P.limitFinite ∧ P.limitNonZero ∧ P.infiniteProduct

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse