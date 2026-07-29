import BiochemistryMetabolismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

def ConstrainedBiochemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biochemistry_endgame (A : AdmissibleClass) :
    ConstrainedBiochemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse