import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure BiochemistryAdmittedObject where
  model : Type
  modelTopology : TopologicalSpace model
  closedBiochemicalNetwork : Prop
  steadyState : Prop
  endpointReached : Prop
  conclusion : endpointReached

def BiochemistryWitnessClosed (O : BiochemistryAdmittedObject) : Prop :=
  O.endpointReached

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse
