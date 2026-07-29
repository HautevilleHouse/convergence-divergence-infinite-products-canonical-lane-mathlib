import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure InfiniteProductSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProductAdmittedObject where
  space : InfiniteProductSpace
  infiniteProduct : Prop
  convergenceCriterion : Prop
  limitObject : Type
  limitTopology : TopologicalSpace limitObject
  convergenceToLimit : Prop
  conclusion : convergenceToLimit

structure ProductEndgameState where
  object : ProductAdmittedObject

def ProductWitnessClosed (O : ProductAdmittedObject) : Prop :=
  O.convergenceToLimit

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
