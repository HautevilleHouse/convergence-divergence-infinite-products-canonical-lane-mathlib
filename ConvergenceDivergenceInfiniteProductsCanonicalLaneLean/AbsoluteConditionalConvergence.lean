import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure AbsoluteConvergencePackage where
  series : Type u
  absoluteConvergenceDefined : Prop
  comparisonCriterion : Prop
  ratioComparison : Prop

structure ConditionalConvergencePackage {A : AbsoluteConvergencePackage} where
  series : Type u
  conditionalConvergenceDefined : Prop
  alternatingSeriesTest : Prop
  dirichletTest : Prop
  abelTest : Prop

structure AbsoluteConditionalEvidence (A : AbsoluteConvergencePackage) (C : ConditionalConvergencePackage A) where
  absoluteConvergenceClosed : A.absoluteConvergenceDefined
  comparisonCriterionClosed : A.comparisonCriterion
  conditionalConvergenceClosed : C.conditionalConvergenceDefined
  alternatingSeriesTestClosed : C.alternatingSeriesTest

def AbsoluteConditionalClosed (A : AbsoluteConvergencePackage) (C : ConditionalConvergencePackage A) : Prop :=
  A.absoluteConvergenceDefined ∧ A.comparisonCriterion ∧ C.conditionalConvergenceDefined ∧ C.alternatingSeriesTest

theorem absolute_conditional_closed_from_evidence (A : AbsoluteConvergencePackage) (C : ConditionalConvergencePackage A) (E : AbsoluteConditionalEvidence A C) : AbsoluteConditionalClosed A C := by
  exact And.intro E.absoluteConvergenceClosed
    (And.intro E.comparisonCriterionClosed
      (And.intro E.conditionalConvergenceClosed E.alternatingSeriesTestClosed))

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
