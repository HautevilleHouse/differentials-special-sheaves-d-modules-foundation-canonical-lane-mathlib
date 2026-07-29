import canonicalLaneMathlib.AdmissibleClass
import DModuleSheafMathlibObjects

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure CharacteristicCyclePackage (O : DModuleAdmittedObject) where
  characteristicVariety : Type u
  singularSupport : Prop
  cohomologicalDimension : Prop
  indexTheoremInput : Prop

structure CharacteristicCycleEvidence {O : DModuleAdmittedObject} (C : CharacteristicCyclePackage O) where
  singularSupportClosed : C.singularSupport
  cohomologicalDimensionClosed : C.cohomologicalDimension
  indexTheoremInputClosed : C.indexTheoremInput

def CharacteristicCycleClosed {O : DModuleAdmittedObject} (C : CharacteristicCyclePackage O) : Prop :=
  C.singularSupport ∧ C.cohomologicalDimension ∧ C.indexTheoremInput

theorem characteristic_cycle_closed_from_evidence
    {O : DModuleAdmittedObject} (C : CharacteristicCyclePackage O)
    (E : CharacteristicCycleEvidence C) : CharacteristicCycleClosed C := by
  exact And.intro E.singularSupportClosed (And.intro E.cohomologicalDimensionClosed E.indexTheoremInputClosed)

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse