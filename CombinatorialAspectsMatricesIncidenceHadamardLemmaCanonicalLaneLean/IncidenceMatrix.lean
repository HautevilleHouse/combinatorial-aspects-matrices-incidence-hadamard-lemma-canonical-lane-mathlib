import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure IncidenceMatrix (V E : Type) where
  incidence : V → E → ℤ
  rows : Nat
  cols : Nat
  entriesFinite : ∀ v e, incidence v e ∈ ({0,1} : Set ℤ)

structure IncidenceMatrixEvidence (M : IncidenceMatrix V E) where
  rowsColsPositive : M.rows > 0 ∧ M.cols > 0
  entriesBinary : M.entriesFinite

def IncidenceMatrixClosed (M : IncidenceMatrix V E) : Prop :=
  M.rows > 0 ∧ M.cols > 0 ∧ M.entriesFinite

theorem incidence_matrix_closed_from_evidence (M : IncidenceMatrix V E) (E : IncidenceMatrixEvidence M) : IncidenceMatrixClosed M :=
  by
    exact And.intro E.rowsColsPositive.1 (And.intro E.rowsColsPositive.2 E.entriesBinary)

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse
