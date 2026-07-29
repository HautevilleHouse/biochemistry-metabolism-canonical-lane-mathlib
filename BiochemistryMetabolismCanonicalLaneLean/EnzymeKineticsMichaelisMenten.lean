import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure MichaelisMentenPackage where
  km : ℝ
  vmax : ℝ
  substrateConcentration : ℝ → ℝ
  reactionRate : ℝ → ℝ
  michaelisMentenEquation : Prop
  parametersPositive : Prop

structure MichaelisMentenEvidence (M : MichaelisMentenPackage) where
  michaelisMentenEquationClosed : M.michaelisMentenEquation
  parametersPositiveClosed : M.parametersPositive

def MichaelisMentenClosed (M : MichaelisMentenPackage) : Prop :=
  M.michaelisMentenEquation ∧ M.parametersPositive

theorem michaelis_menten_closed_from_evidence (M : MichaelisMentenPackage) (E : MichaelisMentenEvidence M) :
    MichaelisMentenClosed M := by
  exact And.intro E.michaelisMentenEquationClosed E.parametersPositiveClosed

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse
