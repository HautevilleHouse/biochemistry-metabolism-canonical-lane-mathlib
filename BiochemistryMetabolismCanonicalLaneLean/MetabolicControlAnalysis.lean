import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure MetabolicControlAnalysisPackage where
  fluxControlCoefficients : ℝ → ℝ
  concentrationControlCoefficients : ℝ → ℝ
  summationTheorem : Prop
  connectivityTheorem : Prop
  localResponseCoefficients : Prop

structure MetabolicControlAnalysisEvidence (M : MetabolicControlAnalysisPackage) where
  summationTheoremClosed : M.summationTheorem
  connectivityTheoremClosed : M.connectivityTheorem
  localResponseCoefficientsClosed : M.localResponseCoefficients

def MetabolicControlAnalysisClosed (M : MetabolicControlAnalysisPackage) : Prop :=
  M.summationTheorem ∧ M.connectivityTheorem ∧ M.localResponseCoefficients

theorem metabolic_control_analysis_closed_from_evidence (M : MetabolicControlAnalysisPackage) (E : MetabolicControlAnalysisEvidence M) :
    MetabolicControlAnalysisClosed M := by
  exact And.intro E.summationTheoremClosed (And.intro E.connectivityTheoremClosed E.localResponseCoefficientsClosed)

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse
