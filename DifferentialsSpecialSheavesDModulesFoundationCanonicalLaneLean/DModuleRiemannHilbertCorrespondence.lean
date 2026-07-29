import canonicalLaneMathlib.AdmissibleClass
import DModuleBeilinsonBernsteinLocalization

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure RiemannHilbertPackage {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O}
    {L : LocalizationTheoremPackage C} where
  deRhamFunctor : Prop
  perverseSheafEquivalence : Prop
  monodromyCompatibility : Prop

structure RiemannHilbertEvidence {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O}
    {L : LocalizationTheoremPackage C}
    (R : RiemannHilbertPackage L) where
  deRhamFunctorClosed : R.deRhamFunctor
  perverseSheafEquivalenceClosed : R.perverseSheafEquivalence
  monodromyCompatibilityClosed : R.monodromyCompatibility

def RiemannHilbertClosed {O : DModuleAdmittedObject}
    {C : CharacteristicCyclePackage O}
    {L : LocalizationTheoremPackage C}
    (R : RiemannHilbertPackage L) : Prop :=
  R.deRhamFunctor ∧ R.perverseSheafEquivalence ∧ R.monodromyCompatibility

theorem riemann_hilbert_closed_from_evidence
    {O : DModuleAdmittedObject} {C : CharacteristicCyclePackage O}
    {L : LocalizationTheoremPackage C}
    (R : RiemannHilbertPackage L) (E : RiemannHilbertEvidence R) :
    RiemannHilbertClosed R := by
  exact And.intro E.deRhamFunctorClosed (And.intro E.perverseSheafEquivalenceClosed E.monodromyCompatibilityClosed)

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse