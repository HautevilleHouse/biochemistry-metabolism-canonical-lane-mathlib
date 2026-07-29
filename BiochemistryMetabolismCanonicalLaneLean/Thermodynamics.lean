import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Type u
  enthalpy : Type v
  entropy : Type w
  spontaneityCondition : Prop
  gibbsFreeEnergyDefined : gibbsFreeEnergy
  enthalpyDefined : enthalpy
  entropyDefined : entropy
  spontaneityConditionClosed : spontaneityCondition

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  spontaneityConditionClosed : T.spontaneityCondition

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.spontaneityCondition

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyClosed (And.intro E.entropyClosed E.spontaneityConditionClosed))

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse