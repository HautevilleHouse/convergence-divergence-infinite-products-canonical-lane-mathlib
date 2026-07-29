import canonicalLaneMathlib.AdmissibleClass

/-!
# Infinite Product Divergence Tests

This module defines divergence criteria for infinite products, particularly when the product diverges to zero or infinity.
-/

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure InfiniteProductDivergenceTestPackage where
  termsDiverge : Prop
  productDivergesToZero : Prop
  productDivergesToInfinity : Prop
  partialProductDiverges : Prop

def InfiniteProductDivergenceClosed (P : InfiniteProductDivergenceTestPackage) : Prop :=
  P.termsDiverge ∨ P.productDivergesToZero ∨ P.productDivergesToInfinity ∨ P.partialProductDiverges

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse