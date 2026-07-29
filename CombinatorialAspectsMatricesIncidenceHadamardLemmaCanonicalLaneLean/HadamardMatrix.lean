import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure HadamardMatrix (n : ℕ) where
  matrix : Matrix (Fin n) (Fin n) ℤ
  entries : ∀ i j, matrix i j = 1 ∨ matrix i j = -1
  orthogonalRows : ∀ i j, i ≠ j → (∑ k, matrix i k * matrix j k) = 0
  normRow : ∀ i, (∑ k, matrix i k * matrix i k) = n

structure HadamardMatrixEvidence (H : HadamardMatrix n) where
  entriesClosed : H.entries
  orthogonalRowsClosed : H.orthogonalRows
  normRowClosed : H.normRow

def HadamardMatrixClosed (H : HadamardMatrix n) : Prop :=
  H.entries ∧ H.orthogonalRows ∧ H.normRow

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrix n) (E : HadamardMatrixEvidence H) : HadamardMatrixClosed H :=
  by
    exact And.intro E.entriesClosed (And.intro E.orthogonalRowsClosed E.normRowClosed)

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse
