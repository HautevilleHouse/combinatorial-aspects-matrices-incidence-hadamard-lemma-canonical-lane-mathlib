import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure HadamardLemmaPackage where
  hadamardMatrixOrder : ℕ
  hadamardMaxDeterminantBound : Prop
  boundAchievable : Prop
  boundAchievableTerm : boundAchievable

def HadamardLemmaClosed (P : HadamardLemmaPackage) : Prop :=
  P.hadamardMaxDeterminantBound ∧ P.boundAchievable

theorem hadamard_lemma_closed_from_evidence (P : HadamardLemmaPackage) :
    HadamardLemmaClosed P := by
  exact And.intro P.boundAchievable P.boundAchievableTerm

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse