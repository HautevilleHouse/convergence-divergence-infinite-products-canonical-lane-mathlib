import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure InfiniteProduct where
  terms : ℕ → ℝ
  product : ℕ → ℝ
  productDefined : ∀ n, product n = ∏_{k=0}^{n-1} terms k

structure InfiniteProductConvergencePackage (P : InfiniteProduct) where
  convergenceType : Prop
  absoluteConvergence : Prop
  conditionalConvergence : Prop
  divergenceType : Prop
  convergenceCriterion : Prop

def InfiniteProductConvergenceClosed {P : InfiniteProduct} (C : InfiniteProductConvergencePackage P) : Prop :=
  C.convergenceType ∧ C.absoluteConvergence ∧ C.conditionalConvergence ∧ C.divergenceType

structure InfiniteProductConvergenceEvidence {P : InfiniteProduct} (C : InfiniteProductConvergencePackage P) where
  convergenceTypeClosed : C.convergenceType
  absoluteConvergenceClosed : C.absoluteConvergence
  conditionalConvergenceClosed : C.conditionalConvergence
  divergenceTypeClosed : C.divergenceType

theorem infinite_product_convergence_closed_from_evidence {P : InfiniteProduct}
  (C : InfiniteProductConvergencePackage P) (E : InfiniteProductConvergenceEvidence C) :
  InfiniteProductConvergenceClosed C := by
  exact And.intro E.convergenceTypeClosed
    (And.intro E.absoluteConvergenceClosed
      (And.intro E.conditionalConvergenceClosed E.divergenceTypeClosed))

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse