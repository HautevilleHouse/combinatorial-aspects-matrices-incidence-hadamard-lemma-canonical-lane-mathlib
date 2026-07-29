import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure CombinatorialDesign (V B : Type) where
  points : Nat
  blocks : Nat
  incidence : IncidenceMatrix V B
  regularity : Prop
  balance : Prop
  designParameters : Prop

structure CombinatorialDesignEvidence (D : CombinatorialDesign V B) where
  regularityClosed : D.regularity
  balanceClosed : D.balance
  designParametersClosed : D.designParameters

def CombinatorialDesignClosed (D : CombinatorialDesign V B) : Prop :=
  D.regularity ∧ D.balance ∧ D.designParameters

theorem combinatorial_design_closed_from_evidence
    (D : CombinatorialDesign V B) (E : CombinatorialDesignEvidence D) :
    CombinatorialDesignClosed D := by
  exact And.intro E.regularityClosed
    (And.intro E.balanceClosed E.designParametersClosed)

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse