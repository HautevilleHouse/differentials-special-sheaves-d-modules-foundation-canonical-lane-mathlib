import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure CurvatureInvariantPackage where
  manifold : Type u
  metric : Type v
  ricciScalar : Type w
  kaehlerCondition : Prop
  constantScalarCurvature : Prop

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.kaehlerCondition ∧ C.constantScalarCurvature

theorem curvature_invariant_closed_from_props (C : CurvatureInvariantPackage)
    (hk : C.kaehlerCondition) (hc : C.constantScalarCurvature) : CurvatureInvariantClosed C := by
  exact And.intro hk hc

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
