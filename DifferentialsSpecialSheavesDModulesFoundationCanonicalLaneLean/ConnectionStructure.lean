import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure ConnectionPackage where
  vectorBundle : Type u
  connection : Type v
  curvature : Type w
  flatCondition : Prop
  integrability : Prop

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.flatCondition ∧ C.integrability

theorem connection_closed_from_props (C : ConnectionPackage)
    (hflat : C.flatCondition) (hint : C.integrability) : ConnectionClosed C := by
  exact And.intro hflat hint

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
