import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DModuleSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DModuleAdmittedObject where
  space : DModuleSpace
  smoothManifold : Prop
  dModuleStructure : Prop
  sheafOfDModules : Type
  sheafTopology : TopologicalSpace sheafOfDModules
  dModuleCoherent : Prop
  conclusion : dModuleCoherent

structure DModuleEndgameState where
  object : DModuleAdmittedObject

def DModuleWitnessClosed (O : DModuleAdmittedObject) : Prop :=
  O.dModuleCoherent

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse