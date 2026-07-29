import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.InfiniteProductSpace

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure AbsoluteConvergencePackage (I : InfiniteProductSpace) where
  termSequence : Type
  absoluteConvergence : Prop
  comparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop

structure AbsoluteConvergenceEvidence {I : InfiniteProductSpace} (A : AbsoluteConvergencePackage I) where
  absoluteConvergenceClosed : A.absoluteConvergence
  comparisonTestClosed : A.comparisonTest
  ratioTestClosed : A.ratioTest
  rootTestClosed : A.rootTest

def AbsoluteConvergenceClosed {I : InfiniteProductSpace} (A : AbsoluteConvergencePackage I) : Prop :=
  A.absoluteConvergence ∧ A.comparisonTest ∧ A.ratioTest ∧ A.rootTest

theorem absolute_convergence_closed_from_evidence
    {I : InfiniteProductSpace} (A : AbsoluteConvergencePackage I)
    (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteConvergenceClosed
    (And.intro E.comparisonTestClosed
      (And.intro E.ratioTestClosed E.rootTestClosed))

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
