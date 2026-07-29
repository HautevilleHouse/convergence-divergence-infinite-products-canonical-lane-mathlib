import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure SummabilityMethodPackage where
  cesaroSummation : Prop
  abelSummation : Prop
  borelSummation : Prop
  tauberianTheorem : Prop

structure SummabilityMethodEvidence (S : SummabilityMethodPackage) where
  cesaroSummationClosed : S.cesaroSummation
  abelSummationClosed : S.abelSummation
  borelSummationClosed : S.borelSummation
  tauberianTheoremClosed : S.tauberianTheorem

def SummabilityMethodClosed (S : SummabilityMethodPackage) : Prop :=
  S.cesaroSummation ∧ S.abelSummation ∧ S.borelSummation ∧ S.tauberianTheorem

theorem summability_method_closed_from_evidence (S : SummabilityMethodPackage) (E : SummabilityMethodEvidence S) : SummabilityMethodClosed S := by
  exact And.intro E.cesaroSummationClosed
    (And.intro E.abelSummationClosed
      (And.intro E.borelSummationClosed E.tauberianTheoremClosed))

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
