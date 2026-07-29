import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMetabolismCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Type u
  rateConstant : Type v
  reactionOrder : Prop
  activationEnergy : Prop
  rateLawDefined : rateLaw
  rateConstantDefined : rateConstant
  reactionOrderClosed : reactionOrder
  activationEnergyClosed : activationEnergy

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  rateConstantClosed : R.rateConstant
  reactionOrderClosed : R.reactionOrder
  activationEnergyClosed : R.activationEnergy

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.rateConstant ∧ R.reactionOrder ∧ R.activationEnergy

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.rateConstantClosed (And.intro E.reactionOrderClosed E.activationEnergyClosed))

end BiochemistryMetabolismCanonicalLaneLean
end HautevilleHouse