import BiochemistryMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiochemistryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse