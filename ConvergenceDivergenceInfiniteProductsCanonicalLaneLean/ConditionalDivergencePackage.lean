import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.InfiniteProductSpace

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure ConditionalDivergencePackage (I : InfiniteProductSpace) where
  termSequence : Type
  conditionalDivergence : Prop
  oscillatingBehavior : Prop
  partialProductLimits : Prop

structure ConditionalDivergenceEvidence {I : InfiniteProductSpace} (D : ConditionalDivergencePackage I) where
  conditionalDivergenceClosed : D.conditionalDivergence
  oscillatingBehaviorClosed : D.oscillatingBehavior
  partialProductLimitsClosed : D.partialProductLimits

def ConditionalDivergenceClosed {I : InfiniteProductSpace} (D : ConditionalDivergencePackage I) : Prop :=
  D.conditionalDivergence ∧ D.oscillatingBehavior ∧ D.partialProductLimits

theorem conditional_divergence_closed_from_evidence
    {I : InfiniteProductSpace} (D : ConditionalDivergencePackage I)
    (E : ConditionalDivergenceEvidence D) : ConditionalDivergenceClosed D := by
  exact And.intro E.conditionalDivergenceClosed
    (And.intro E.oscillatingBehaviorClosed E.partialProductLimitsClosed)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
