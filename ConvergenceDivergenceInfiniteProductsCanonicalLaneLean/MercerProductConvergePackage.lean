import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.ConvergentInfiniteProductClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure MercerProductPackage (A : AdmissibleClass) where
  eigenvalues : Nat → ℂ
  eigenvalueSumConverges : ∑_{k=0}^{∞} eigenvalues k < ∞
  determinantProduct : InfiniteProduct A
  productTermsFromEigenvalues : ∀ n : ℕ, determinantProduct.terms n = 1 + eigenvalues n

theorem mercer_product_converges (A : AdmissibleClass) (M : MercerProductPackage A) :
  bridgeClosed A M.determinantProduct := by
  apply weierstrass_bridge_from_admissible_class

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse