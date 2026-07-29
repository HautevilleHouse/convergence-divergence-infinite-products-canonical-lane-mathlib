import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.ConvergentInfiniteProductClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
  gateClosed A := by
  exact A.gateWitness

structure ConditionalConvergenceGate (A : AdmissibleClass) (P : InfiniteProduct A) where
  conditionalCondition : ConditionalConvergenceCondition A P
  gateCondition : gateClosed A

def conditional_convergence_gate_closed (A : AdmissibleClass) (P : InfiniteProduct A) (G : ConditionalConvergenceGate A P) : Prop :=
  G.gateCondition

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse