import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  ellipticOperator : Type v
  analyticIndex : Type w
  topologicalIndex : Type x
  indexEquality : Prop

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexEquality

theorem index_theorem_closed_from_prop (I : IndexTheoremPackage) (h : I.indexEquality) : IndexTheoremClosed I := h

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
