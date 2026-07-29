import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure MetabolicPathwayPackage where
  pathwayGraph : Type u
  fluxDistribution : Type v
  steadyStateCondition : Prop
  regulationMechanism : Prop
  pathwayGraphDefined : pathwayGraph
  fluxDistributionDefined : fluxDistribution
  steadyStateConditionClosed : steadyStateCondition
  regulationMechanismClosed : regulationMechanism

structure MetabolicPathwayEvidence (M : MetabolicPathwayPackage) where
  pathwayGraphClosed : M.pathwayGraph
  fluxDistributionClosed : M.fluxDistribution
  steadyStateConditionClosed : M.steadyStateCondition
  regulationMechanismClosed : M.regulationMechanism

def MetabolicPathwayClosed (M : MetabolicPathwayPackage) : Prop :=
  M.pathwayGraph ∧ M.fluxDistribution ∧ M.steadyStateCondition ∧ M.regulationMechanism

theorem metabolic_pathway_closed_from_evidence (M : MetabolicPathwayPackage) (E : MetabolicPathwayEvidence M) :
    MetabolicPathwayClosed M := by
  exact And.intro E.pathwayGraphClosed (And.intro E.fluxDistributionClosed (And.intro E.steadyStateConditionClosed E.regulationMechanismClosed))

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse