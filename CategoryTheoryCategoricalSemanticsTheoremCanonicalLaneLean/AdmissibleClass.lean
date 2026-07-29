import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryTheoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure CategoryTheoryObject where
  categoryType : Type u
  hasLimits : Prop
  hasColimits : Prop
  isCartesianClosed : Prop
  hasSubobjectClassifier : Prop

def CategoryTheoryObjectClosed (O : CategoryTheoryObject) : Prop :=
  O.hasLimits ∧ O.hasColimits ∧ O.isCartesianClosed ∧ O.hasSubobjectClassifier

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse
