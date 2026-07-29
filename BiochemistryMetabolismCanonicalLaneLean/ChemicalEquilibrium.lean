import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  leChatelierPrinciple : Prop
  equilibriumCondition : Prop
  equilibriumConstantDefined : equilibriumConstant
  reactionQuotientDefined : reactionQuotient
  leChatelierPrincipleClosed : leChatelierPrinciple
  equilibriumConditionClosed : equilibriumCondition

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : C.equilibriumConstant
  reactionQuotientClosed : C.reactionQuotient
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  equilibriumConditionClosed : C.equilibriumCondition

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstant ∧ C.reactionQuotient ∧ C.leChatelierPrinciple ∧ C.equilibriumCondition

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantClosed (And.intro E.reactionQuotientClosed (And.intro E.leChatelierPrincipleClosed E.equilibriumConditionClosed))

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse