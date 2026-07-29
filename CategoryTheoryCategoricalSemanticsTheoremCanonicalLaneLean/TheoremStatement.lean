import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoricalSpace where
  carrier : Type
  structure : Type -- e.g., category structure

structure CategoricalAdmittedObject where
  space : CategoricalSpace
  categoricalTheoremStatement : Prop
  modelWitness : Type
  semanticsWitness : Type
  categoricalConclusion : Prop
  conclusion : categoricalConclusion

structure CategoricalEndgameState where
  object : CategoricalAdmittedObject

def CategoricalWitnessClosed (O : CategoricalAdmittedObject) : Prop :=
  O.categoricalConclusion

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse