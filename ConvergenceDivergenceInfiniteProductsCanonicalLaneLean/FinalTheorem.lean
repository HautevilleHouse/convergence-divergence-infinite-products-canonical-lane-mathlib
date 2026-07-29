import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

def ConstrainedConvergenceDivergenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_divergence_endgame (A : AdmissibleClass) : ConstrainedConvergenceDivergenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
