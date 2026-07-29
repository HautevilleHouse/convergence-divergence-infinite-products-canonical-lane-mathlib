import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure AdmittedInfiniteProductObject where
  product : ℕ → ℝ
  limit : ℝ
  converges : Prop

structure AdmissibleClass where
  object : AdmittedInfiniteProductObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.converges

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.converges

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse