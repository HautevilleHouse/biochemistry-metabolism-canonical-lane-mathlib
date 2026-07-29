import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure MetabolicPathway where
  pathwayName : String
  enzymeSet : List String
  reactionSystem : Prop

structure Metabolite where
  metaboliteName : String
  concentration : ℝ
  flux : ℝ

def metabolicFluxBalance (metabolites : List Metabolite) : Prop :=
  ∑ m in metabolites, m.flux = 0

structure BiochemistryAdmittedObject where
  pathway : MetabolicPathway
  fluxBalanceCondition : metabolicFluxBalance pathway.enzymeSet.map (λ e => { metaboliteName := e, concentration := 0, flux := 0 })
  conclusion : fluxBalanceCondition

def BiochemistryWitnessClosed (O : BiochemistryAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse