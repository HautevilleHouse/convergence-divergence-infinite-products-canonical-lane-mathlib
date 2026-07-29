import canonicalLaneMathlib.AdmissibleClass

/-!
# Weierstrass Product Factorization

This module defines Weierstrass products for entire functions with prescribed zeros.
-/

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure EntireFunction (α : Type u) [NormedCommRing α] [CompleteSpace α] where
  f : α → ℂ
  analytic : ∀ x, DifferentiableAt ℂ f x

structure WeierstrassProductData where
  zeroMultiplicity : ℂ → ℕ
  genus : ℕ
  canonicalFactors : ℕ → ℂ → ℂ

def WeierstrassProduct (data : WeierstrassProductData) : ℂ → ℂ :=
  λ z => ∏_{k=0}^∞ (1 - z / a_k) * exp(z^k / k)

structure WeierstrassProductTheoremPackage where
  productDefined : Prop
  factorization : Prop
  productConverges : Prop

def WeierstrassProductClosed (P : WeierstrassProductTheoremPackage) : Prop :=
  P.productDefined ∧ P.factorization ∧ P.productConverges

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse