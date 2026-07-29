import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.AbsoluteConvergencePackage

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure ConditionalConvergencePackage {I : InfiniteProductSpace}
    (A : AbsoluteConvergencePackage I) where
  conditionalConvergence : Prop
  rearrangementTheorem : Prop
  divergenceByRearrangement : Prop

structure ConditionalConvergenceEvidence {I : InfiniteProductSpace}
    {A : AbsoluteConvergencePackage I} (C : ConditionalConvergencePackage A) where
  conditionalConvergenceClosed : C.conditionalConvergence
  rearrangementTheoremClosed : C.rearrangementTheorem
  divergenceByRearrangementClosed : C.divergenceByRearrangement

def ConditionalConvergenceClosed {I : InfiniteProductSpace}
    {A : AbsoluteConvergencePackage I} (C : ConditionalConvergencePackage A) : Prop :=
  C.conditionalConvergence ∧ C.rearrangementTheorem ∧ C.divergenceByRearrangement

theorem conditional_convergence_closed_from_evidence
    {I : InfiniteProductSpace} {A : AbsoluteConvergencePackage I}
    (C : ConditionalConvergencePackage A) (E : ConditionalConvergenceEvidence C) :
    ConditionalConvergenceClosed C := by
  exact And.intro E.conditionalConvergenceClosed
    (And.intro E.rearrangementTheoremClosed E.divergenceByRearrangementClosed)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
