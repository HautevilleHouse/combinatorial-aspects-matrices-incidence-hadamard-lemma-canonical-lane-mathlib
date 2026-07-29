import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean.IncidenceMatrix
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean.HadamardMatrix

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | IncidenceAdmitted M => IncidenceMatrixClosed M
  | HadamardAdmitted H => HadamardMatrixClosed H

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    unfold bridgeClosed
    rcases A with ⟨object, _, _, _⟩
    cases object
    · rename_i M
      exact incidence_matrix_closed_from_evidence M (by sorry)
    · rename_i H
      exact hadamard_matrix_closed_from_evidence H (by sorry)

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse
