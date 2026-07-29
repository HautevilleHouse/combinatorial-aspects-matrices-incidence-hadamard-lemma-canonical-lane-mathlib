import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | MatricesIncidenceHadamardObject O => O.hadamardLemmaClosed
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  sorry

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse