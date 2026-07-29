import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure MolecularOrbitalPackage where
  huckelTheory : Prop
  sigmaPiSeparation : Prop
  frontierMolecularOrbitals : Prop
  homoEnergy : Real
  lumoEnergy : Real
  bandGap : Real
  chemicalReactivity : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  huckelTheoryClosed : M.huckelTheory
  sigmaPiSeparationClosed : M.sigmaPiSeparation
  frontierMolecularOrbitalsClosed : M.frontierMolecularOrbitals
  chemicalReactivityClosed : M.chemicalReactivity

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.huckelTheory ∧ M.sigmaPiSeparation ∧ M.frontierMolecularOrbitals ∧ M.chemicalReactivity

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.huckelTheoryClosed (And.intro E.sigmaPiSeparationClosed (And.intro E.frontierMolecularOrbitalsClosed E.chemicalReactivityClosed))

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse