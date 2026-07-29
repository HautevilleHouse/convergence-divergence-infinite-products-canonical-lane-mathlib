import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure PowerSeriesPackage where
  powerSeries : Type u
  radiusOfConvergence : Prop
  cauchyHadamardFormula : Prop
  ratioFormula : Prop
  analyticFunction : Prop

structure PowerSeriesEvidence (P : PowerSeriesPackage) where
  powerSeriesDefined : P.powerSeries
  radiusOfConvergenceClosed : P.radiusOfConvergence
  cauchyHadamardFormulaClosed : P.cauchyHadamardFormula
  ratioFormulaClosed : P.ratioFormula
  analyticFunctionClosed : P.analyticFunction

def PowerSeriesClosed (P : PowerSeriesPackage) : Prop :=
  P.powerSeries ∧ P.radiusOfConvergence ∧ P.cauchyHadamardFormula ∧ P.ratioFormula ∧ P.analyticFunction

theorem power_series_closed_from_evidence (P : PowerSeriesPackage) (E : PowerSeriesEvidence P) : PowerSeriesClosed P := by
  exact And.intro E.powerSeriesDefined
    (And.intro E.radiusOfConvergenceClosed
      (And.intro E.cauchyHadamardFormulaClosed
        (And.intro E.ratioFormulaClosed E.analyticFunctionClosed)))

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
