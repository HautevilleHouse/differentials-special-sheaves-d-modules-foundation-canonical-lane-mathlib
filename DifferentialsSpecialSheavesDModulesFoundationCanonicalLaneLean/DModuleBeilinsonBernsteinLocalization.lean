import canonicalLaneMathlib.AdmissibleClass
import DModuleCharacteristicCycle

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure LocalizationTheoremPackage {O : DModuleAdmittedObject}
    (C : CharacteristicCyclePackage O) where
  localizationFunctor : Prop
  derivedEquivalence : Prop
  beilinsonBernsteinMap : Prop

structure LocalizationTheoremEvidence {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} (L : LocalizationTheoremPackage C) where
  localizationFunctorClosed : L.localizationFunctor
  derivedEquivalenceClosed : L.derivedEquivalence
  beilinsonBernsteinMapClosed : L.beilinsonBernsteinMap

def LocalizationTheoremClosed {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} (L : LocalizationTheoremPackage C) : Prop :=
  L.localizationFunctor ∧ L.derivedEquivalence ∧ L.beilinsonBernsteinMap

theorem localization_theorem_closed_from_evidence
    {O : DModuleAdmittedObject} {C : CharacteristicCyclePackage O}
    (L : LocalizationTheoremPackage C) (E : LocalizationTheoremEvidence L) :
    LocalizationTheoremClosed L := by
  exact And.intro E.localizationFunctorClosed (And.intro E.derivedEquivalenceClosed E.beilinsonBernsteinMapClosed)

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse