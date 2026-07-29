import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DifferentialOperatorSheaf where
  baseManifold : Type u
  structureSheaf : Type v
  tangentSheaf : Type w
  differentialOperatorSheaf : Type x
  manifoldSmooth : Prop
  structureSheafIsSheaf : Prop
  tangentSheafIsLocallyFree : Prop
  differentialOperatorsFiltered : Prop

structure DifferentialOperatorSheafEvidence (S : DifferentialOperatorSheaf) where
  manifoldSmoothClosed : S.manifoldSmooth
  structureSheafIsSheafClosed : S.structureSheafIsSheaf
  tangentSheafIsLocallyFreeClosed : S.tangentSheafIsLocallyFree
  differentialOperatorsFilteredClosed : S.differentialOperatorsFiltered

def DifferentialOperatorSheafClosed (S : DifferentialOperatorSheaf) : Prop :=
  S.manifoldSmooth ∧ S.structureSheafIsSheaf ∧
  S.tangentSheafIsLocallyFree ∧ S.differentialOperatorsFiltered

theorem differential_operator_sheaf_closed_from_evidence (S : DifferentialOperatorSheaf)
    (E : DifferentialOperatorSheafEvidence S) : DifferentialOperatorSheafClosed S := by
  exact And.intro E.manifoldSmoothClosed
    (And.intro E.structureSheafIsSheafClosed
      (And.intro E.tangentSheafIsLocallyFreeClosed E.differentialOperatorsFilteredClosed))

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse