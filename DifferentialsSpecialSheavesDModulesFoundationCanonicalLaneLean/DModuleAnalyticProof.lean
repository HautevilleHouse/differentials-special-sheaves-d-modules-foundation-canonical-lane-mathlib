import canonicalLaneMathlib.AdmissibleClass
import DModuleAnalyticEvidenceTerms

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure CharacteristicCycleAnalyticCertificate {O : DModuleAdmittedObject}
    (C : CharacteristicCyclePackage O) where
  singularSupport : Prop
  cohomologicalDimension : Prop
  indexTheoremInput : Prop
  singularSupportClosed : singularSupport
  cohomologicalDimensionClosed : cohomologicalDimension
  indexTheoremInputClosed : indexTheoremInput
  characteristicCycleEvidence : CharacteristicCycleEvidence C

def CharacteristicCycleAnalyticCertificateClosed {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} (A : CharacteristicCycleAnalyticCertificate C) : Prop :=
  A.singularSupport ∧ A.cohomologicalDimension ∧ A.indexTheoremInput ∧ CharacteristicCycleClosed C

theorem characteristic_cycle_analytic_certificate_closed
    {O : DModuleAdmittedObject} {C : CharacteristicCyclePackage O}
    (A : CharacteristicCycleAnalyticCertificate C) :
    CharacteristicCycleAnalyticCertificateClosed A := by
  exact And.intro A.singularSupportClosed
    (And.intro A.cohomologicalDimensionClosed
      (And.intro A.indexTheoremInputClosed
        (characteristic_cycle_closed_from_evidence C A.characteristicCycleEvidence)))

structure LocalizationAnalyticCertificate {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} (L : LocalizationTheoremPackage C) where
  localizationFunctor : Prop
  derivedEquivalence : Prop
  beilinsonBernsteinMap : Prop
  localizationFunctorClosed : localizationFunctor
  derivedEquivalenceClosed : derivedEquivalence
  beilinsonBernsteinMapClosed : beilinsonBernsteinMap
  localizationEvidence : LocalizationTheoremEvidence L

def LocalizationAnalyticCertificateClosed {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    (A : LocalizationAnalyticCertificate L) : Prop :=
  A.localizationFunctor ∧ A.derivedEquivalence ∧ A.beilinsonBernsteinMap ∧ LocalizationTheoremClosed L

theorem localization_analytic_certificate_closed
    {O : DModuleAdmittedObject} {C : CharacteristicCyclePackage O}
    {L : LocalizationTheoremPackage C} (A : LocalizationAnalyticCertificate L) :
    LocalizationAnalyticCertificateClosed A := by
  exact And.intro A.localizationFunctorClosed
    (And.intro A.derivedEquivalenceClosed
      (And.intro A.beilinsonBernsteinMapClosed
        (localization_theorem_closed_from_evidence L A.localizationEvidence)))

structure RiemannHilbertAnalyticCertificate {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    (R : RiemannHilbertPackage L) where
  deRhamFunctor : Prop
  perverseSheafEquivalence : Prop
  monodromyCompatibility : Prop
  deRhamFunctorClosed : deRhamFunctor
  perverseSheafEquivalenceClosed : perverseSheafEquivalence
  monodromyCompatibilityClosed : monodromyCompatibility
  riemannHilbertEvidence : RiemannHilbertEvidence R

def RiemannHilbertAnalyticCertificateClosed {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O} {L : LocalizationTheoremPackage C}
    {R : RiemannHilbertPackage L} (A : RiemannHilbertAnalyticCertificate R) : Prop :=
  A.deRhamFunctor ∧ A.perverseSheafEquivalence ∧ A.monodromyCompatibility ∧ RiemannHilbertClosed R

theorem riemann_hilbert_analytic_certificate_closed
    {O : DModuleAdmittedObject} {C : CharacteristicCyclePackage O}
    {L : LocalizationTheoremPackage C} {R : RiemannHilbertPackage L}
    (A : RiemannHilbertAnalyticCertificate R) :
    RiemannHilbertAnalyticCertificateClosed A := by
  exact And.intro A.deRhamFunctorClosed
    (And.intro A.perverseSheafEquivalenceClosed
      (And.intro A.monodromyCompatibilityClosed
        (riemann_hilbert_closed_from_evidence R A.riemannHilbertEvidence)))

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse