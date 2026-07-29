import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure IncidenceMatrixPackage where
  blockDesign : Type u
  points : Nat
  blocks : Nat
  incidence : List (List Nat)
  constantRowSum : Prop
  constantColSum : Prop

structure IncidenceMatrixEvidence (M : IncidenceMatrixPackage) where
  constantRowSumClosed : M.constantRowSum
  constantColSumClosed : M.constantColSum

def IncidenceMatrixClosed (M : IncidenceMatrixPackage) : Prop := M.constantRowSum ∧ M.constantColSum

theorem incidence_matrix_closed_from_evidence (M : IncidenceMatrixPackage) (E : IncidenceMatrixEvidence M) : IncidenceMatrixClosed M := by
  exact And.intro E.constantRowSumClosed E.constantColSumClosed

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse
