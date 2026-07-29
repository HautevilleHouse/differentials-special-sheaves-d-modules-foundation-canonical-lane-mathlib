import canonicalLaneMathlib.AdmissibleClass
import DModuleRiemannHilbertCorrespondence

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure CharacteristicCycleEvidenceTerms {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} (E : CharacteristicCycleEvidence C) where
  singularSupportClosed : C.singularSupport
  cohomologicalDimensionClosed : C.cohomologicalDimension
  indexTheoremInputClosed : C.indexTheoremInput
  characteristicCycleClosed : CharacteristicCycleClosed C

def CharacteristicCycleEvidence.toEvidenceTerms {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} (E : CharacteristicCycleEvidence C) :
    CharacteristicCycleEvidenceTerms E := {
  singularSupportClosed := E.singularSupportClosed
  cohomologicalDimensionClosed := E.cohomologicalDimensionClosed
  indexTheoremInputClosed := E.indexTheoremInputClosed
  characteristicCycleClosed := characteristic_cycle_closed_from_evidence C E
}

structure LocalizationEvidenceTerms {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    (E : LocalizationTheoremEvidence L) where
  localizationFunctorClosed : L.localizationFunctor
  derivedEquivalenceClosed : L.derivedEquivalence
  beilinsonBernsteinMapClosed : L.beilinsonBernsteinMap
  localizationClosed : LocalizationTheoremClosed L

def LocalizationTheoremEvidence.toEvidenceTerms {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    (E : LocalizationTheoremEvidence L) : LocalizationEvidenceTerms E := {
  localizationFunctorClosed := E.localizationFunctorClosed
  derivedEquivalenceClosed := E.derivedEquivalenceClosed
  beilinsonBernsteinMapClosed := E.beilinsonBernsteinMapClosed
  localizationClosed := localization_theorem_closed_from_evidence L E
}

structure RiemannHilbertEvidenceTerms {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    {R : RiemannHilbertPackage L} (E : RiemannHilbertEvidence R) where
  deRhamFunctorClosed : R.deRhamFunctor
  perverseSheafEquivalenceClosed : R.perverseSheafEquivalence
  monodromyCompatibilityClosed : R.monodromyCompatibility
  riemannHilbertClosed : RiemannHilbertClosed R

def RiemannHilbertEvidence.toEvidenceTerms {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    {R : RiemannHilbertPackage L} (E : RiemannHilbertEvidence R) :
    RiemannHilbertEvidenceTerms E := {
  deRhamFunctorClosed := E.deRhamFunctorClosed
  perverseSheafEquivalenceClosed := E.perverseSheafEquivalenceClosed
  monodromyCompatibilityClosed := E.monodromyCompatibilityClosed
  riemannHilbertClosed := riemann_hilbert_closed_from_evidence R E
}

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse