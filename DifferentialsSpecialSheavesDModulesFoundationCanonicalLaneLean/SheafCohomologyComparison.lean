import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure SheafCohomologyComparison where
  deRhamComplex : Type u
  holonomicDModule : Type v
  deRhamCohomology : Prop
  dModuleCohomology : Prop
  comparisonIsomorphism : Prop
  riemannHilbertCorrespondence : Prop
  deRhamCohomologyClosed : Prop
  dModuleCohomologyClosed : Prop

structure SheafCohomologyComparisonEvidence (C : SheafCohomologyComparison) where
  deRhamCohomologyClosedTerm : C.deRhamCohomologyClosed
  dModuleCohomologyClosedTerm : C.dModuleCohomologyClosed
  comparisonIsomorphismClosed : C.comparisonIsomorphism
  riemannHilbertCorrespondenceClosed : C.riemannHilbertCorrespondence

def SheafCohomologyComparisonClosed (C : SheafCohomologyComparison) : Prop :=
  C.deRhamCohomologyClosed ∧ C.dModuleCohomologyClosed ∧
  C.comparisonIsomorphism ∧ C.riemannHilbertCorrespondence

theorem sheaf_cohomology_comparison_closed_from_evidence (C : SheafCohomologyComparison)
    (E : SheafCohomologyComparisonEvidence C) : SheafCohomologyComparisonClosed C := by
  exact And.intro E.deRhamCohomologyClosedTerm
    (And.intro E.dModuleCohomologyClosedTerm
      (And.intro E.comparisonIsomorphismClosed E.riemannHilbertCorrespondenceClosed))

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse