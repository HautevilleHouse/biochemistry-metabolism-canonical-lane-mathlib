import BiochemistryMetabolismCanonicalLaneLean.ThermodynamicConstraint

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure MetabolicFluxAnalysisPackage {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} {T : ThermodynamicConstraintPackage P} where
  fluxVector : ℝⁿ
  stoichiometricMatrix : ℝⁿˣᵐ
  fluxBalanceEquation : Prop
  optimalFlux : Prop

structure MetabolicFluxAnalysisEvidence {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} {T : ThermodynamicConstraintPackage P}
    (F : MetabolicFluxAnalysisPackage T) where
  fluxBalanceEquationClosed : F.fluxBalanceEquation
  optimalFluxClosed : F.optimalFlux

def MetabolicFluxAnalysisClosed {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} {T : ThermodynamicConstraintPackage P}
    (F : MetabolicFluxAnalysisPackage T) : Prop :=
  F.fluxBalanceEquation ∧ F.optimalFlux

theorem metabolic_flux_analysis_closed_from_evidence {E : EnzymeKineticsPackage}
    {P : MetabolicPathwayPackage E} {T : ThermodynamicConstraintPackage P}
    (F : MetabolicFluxAnalysisPackage T) (ev : MetabolicFluxAnalysisEvidence F) :
    MetabolicFluxAnalysisClosed F := by
  exact And.intro ev.fluxBalanceEquationClosed ev.optimalFluxClosed

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse