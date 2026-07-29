import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean.IncidenceMatrixStructure

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure HadamardMatrixPackage where
  order : Nat
  entries : List (List Int)
  orthogonalRows : Prop
  normalizedFirstRow : Prop

structure HadamardMatrixEvidence (H : HadamardMatrixPackage) where
  orthogonalRowsClosed : H.orthogonalRows
  normalizedFirstRowClosed : H.normalizedFirstRow

def HadamardMatrixClosed (H : HadamardMatrixPackage) : Prop := H.orthogonalRows ∧ H.normalizedFirstRow

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrixPackage) (E : HadamardMatrixEvidence H) : HadamardMatrixClosed H := by
  exact And.intro E.orthogonalRowsClosed E.normalizedFirstRowClosed

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse
