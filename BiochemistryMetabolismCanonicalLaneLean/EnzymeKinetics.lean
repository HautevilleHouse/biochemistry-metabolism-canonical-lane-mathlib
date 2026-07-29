import BiochemistryMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure EnzymeKineticsPackage where
  enzyme : Type
  substrate : Type
  km : ℝ
  kcat : ℝ
  michaelisMentenModel : Prop
  inhibitionModel : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  michaelisMentenModelClosed : E.michaelisMentenModel
  inhibitionModelClosed : E.inhibitionModel

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.michaelisMentenModel ∧ E.inhibitionModel

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage)
    (ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro ev.michaelisMentenModelClosed ev.inhibitionModelClosed

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse