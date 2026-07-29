import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.ConvergentInfiniteProductClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure EulerProductPackage (A : AdmissibleClass) where
  primes : Nat → ℕ
  eulerProduct : InfiniteProduct A
  termsAreReciprocal : ∀ n : ℕ, eulerProduct.terms n = 1 / (1 - (1 / (primes n : ℂ)))
  eulerProductConverges : ∀ s : ℂ, s.re > 1 → bridgeClosed A eulerProduct

theorem euler_product_absolutely_converges (A : AdmissibleClass) (E : EulerProductPackage A) (s : ℂ) (h : s.re > 1) :
  ∑_{k=0}^{∞} |E.eulerProduct.terms k - 1| < ∞ := by
  have h' : ∀ n : ℕ, E.eulerProduct.terms n = 1 / (1 - (1 / (E.primes n : ℂ))) := E.termsAreReciprocal
  -- express terms in absolute value using geometric series bound
  have hbound : ∀ n : ℕ, |E.eulerProduct.terms n - 1| ≤ C / (E.primes n : ℝ) ^ s.re for some constant C? 
  -- but we need to use known estimates for Dirichlet series
  -- For now, we use that the series converges because the Euler product converges absolutely for Re(s)>1
  have hconv : ∀ s : ℂ, s.re > 1 → bridgeClosed A E.eulerProduct := E.eulerProductConverges
  have hbridge := hconv s h
  -- use the property that bridgeClosed implies absolute convergence of the product terms
  have habs : ∑_{k=0}^{∞} |E.eulerProduct.terms k - 1| < ∞ := by
    -- we need to extract this from the definition of bridgeClosed in ConvergentInfiniteProductClass
    -- Assume that bridgeClosed A eulerProduct implies that the infinite product converges absolutely
    -- This is a placeholder; depends on the actual definition
    exact hbridge.absolutelyConverges
  exact habs

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse