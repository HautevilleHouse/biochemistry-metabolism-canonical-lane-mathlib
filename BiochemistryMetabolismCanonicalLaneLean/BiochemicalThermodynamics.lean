import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure BiochemicalThermodynamicsPackage where
  gibbsFreeEnergyChange : ℝ → ℝ
  equilibriumConstant : ℝ → ℝ
  vanHoffEquation : Prop
  thermodynamicConsistency : Prop
  phAndIonicStrengthEffect : Prop

structure BiochemicalThermodynamicsEvidence (T : BiochemicalThermodynamicsPackage) where
  vanHoffEquationClosed : T.vanHoffEquation
  thermodynamicConsistencyClosed : T.thermodynamicConsistency
  phAndIonicStrengthEffectClosed : T.phAndIonicStrengthEffect

def BiochemicalThermodynamicsClosed (T : BiochemicalThermodynamicsPackage) : Prop :=
  T.vanHoffEquation ∧ T.thermodynamicConsistency ∧ T.phAndIonicStrengthEffect

theorem biochemical_thermodynamics_closed_from_evidence (T : BiochemicalThermodynamicsPackage) (E : BiochemicalThermodynamicsEvidence T) :
    BiochemicalThermodynamicsClosed T := by
  exact And.intro E.vanHoffEquationClosed (And.intro E.thermodynamicConsistencyClosed E.phAndIonicStrengthEffectClosed)

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse
