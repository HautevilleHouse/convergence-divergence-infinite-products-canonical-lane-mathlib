import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure FunctionSeriesPackage where
  functionSequence : Type u
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  weierstrassMTest : Prop
  powerSeriesConvergence : Prop

structure FunctionSeriesEvidence (F : FunctionSeriesPackage) where
  functionSequenceDefined : F.functionSequence
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  weierstrassMTestClosed : F.weierstrassMTest
  powerSeriesConvergenceClosed : F.powerSeriesConvergence

def FunctionSeriesClosed (F : FunctionSeriesPackage) : Prop :=
  F.functionSequence ∧ F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.weierstrassMTest ∧ F.powerSeriesConvergence

theorem function_series_closed_from_evidence (F : FunctionSeriesPackage) (E : FunctionSeriesEvidence F) : FunctionSeriesClosed F := by
  exact And.intro E.functionSequenceDefined
    (And.intro E.pointwiseConvergenceClosed
      (And.intro E.uniformConvergenceClosed
        (And.intro E.weierstrassMTestClosed E.powerSeriesConvergenceClosed)))

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
