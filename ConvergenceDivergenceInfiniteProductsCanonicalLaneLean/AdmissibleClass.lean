import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure InfiniteProductSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure InfiniteProductAdmittedObject where
  space : InfiniteProductSpace
  sequence : ℕ → carrier
  productWellDefined : Prop
  convergenceProperty : Prop
  divergenceProperty : Prop
  conclusion : convergenceProperty ∨ divergenceProperty

structure AdmissibleClass where
  object : InfiniteProductAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  InfiniteProductWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse