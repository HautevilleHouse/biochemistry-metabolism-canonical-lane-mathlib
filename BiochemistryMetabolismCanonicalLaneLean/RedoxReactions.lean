import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure ElectronTransportChainPackage where
  complexI : Real
  complexII : Real
  complexIII : Real
  complexIV : Real
  atpSynthetase : Real
  protonGradient : Prop
  atpProduction : Prop
  redoxCoupling : Prop

structure ElectronTransportChainEvidence (E : ElectronTransportChainPackage) where
  protonGradientClosed : E.protonGradient
  atpProductionClosed : E.atpProduction
  redoxCouplingClosed : E.redoxCoupling

def ElectronTransportChainClosed (E : ElectronTransportChainPackage) : Prop :=
  E.protonGradient ∧ E.atpProduction ∧ E.redoxCoupling

theorem electron_transport_chain_closed_from_evidence (E : ElectronTransportChainPackage) (Ev : ElectronTransportChainEvidence E) :
    ElectronTransportChainClosed E := by
  exact And.intro Ev.protonGradientClosed (And.intro Ev.atpProductionClosed Ev.redoxCouplingClosed)

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse