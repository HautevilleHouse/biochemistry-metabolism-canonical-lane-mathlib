import BiochemistryMetabolismCanonicalLaneLean.MetabolicPathway

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure ThermodynamicConstraintPackage {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} where
  gibbsFreeEnergy : ℝ → ℝ
  equilibriumConstant : ℝ
  feasibilityCondition : Prop
  spontaneityCondition : Prop

structure ThermodynamicConstraintEvidence {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} (T : ThermodynamicConstraintPackage P) where
  feasibilityConditionClosed : T.feasibilityCondition
  spontaneityConditionClosed : T.spontaneityCondition

def ThermodynamicConstraintClosed {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} (T : ThermodynamicConstraintPackage P) : Prop :=
  T.feasibilityCondition ∧ T.spontaneityCondition

theorem thermodynamic_constraint_closed_from_evidence {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} (T : ThermodynamicConstraintPackage P)
    (ev : ThermodynamicConstraintEvidence T) : ThermodynamicConstraintClosed T := by
  exact And.intro ev.feasibilityConditionClosed ev.spontaneityConditionClosed

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse