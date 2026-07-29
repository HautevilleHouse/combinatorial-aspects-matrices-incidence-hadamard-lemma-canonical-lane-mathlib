import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure HadamardMatrix (n : Nat) where
  entries : Matrix (Fin n) (Fin n) ℤ
  orthogonalRows : Prop
  constantEntry : Prop
  normalisation : Prop

structure HadamardMatrixEvidence (H : HadamardMatrix n) where
  orthogonalRowsClosed : H.orthogonalRows
  constantEntryClosed : H.constantEntry
  normalisationClosed : H.normalisation

def HadamardMatrixClosed (H : HadamardMatrix n) : Prop :=
  H.orthogonalRows ∧ H.constantEntry ∧ H.normalisation

theorem hadamard_matrix_closed_from_evidence
    (H : HadamardMatrix n) (E : HadamardMatrixEvidence H) :
    HadamardMatrixClosed H := by
  exact And.intro E.orthogonalRowsClosed
    (And.intro E.constantEntryClosed E.normalisationClosed)

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse