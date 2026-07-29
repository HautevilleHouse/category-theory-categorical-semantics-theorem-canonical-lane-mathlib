import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  idMorphism : carrier → carrier
  composition : carrier → carrier → carrier → carrier
  associativity : Prop
  identityLaw : Prop
  associativityTerm : associativity
  identityLawTerm : identityLaw

structure FunctorObject where
  source : CategoryObject
  target : CategoryObject
  objectMap : source.carrier → target.carrier
  morphismMap : source.carrier → source.carrier → (source.carrier → source.carrier) → (target.carrier → target.carrier)
  functoriality : Prop
  functorialityTerm : functoriality

structure NaturalTransformationObject where
  sourceFunctor : FunctorObject
  targetFunctor : FunctorObject
  component : (x : sourceFunctor.source.carrier) → (sourceFunctor.target.carrier → sourceFunctor.target.carrier)
  naturality : Prop
  naturalityTerm : naturality

structure AdmittedCategoryObject where
  cat : CategoryObject
  additionalCondition : Prop
  conclusion : additionalCondition

def CategoryWitnessClosed (O : AdmittedCategoryObject) : Prop :=
  O.additionalCondition

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse