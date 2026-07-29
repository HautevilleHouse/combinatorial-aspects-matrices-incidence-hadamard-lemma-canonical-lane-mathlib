import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure IncidenceToHadamardBridge (m n : Nat) (I : IncidenceMatrix m n) (H : HadamardMatrix n) where
  incidenceToHadamardMap : (Fin m) -> (Fin n) -> Matrix (Fin n) (Fin n) (Fin 2)
  bridgeCondition : Prop
  bridgeConditionProof : bridgeCondition

structure IncidenceToHadamardBridgeEvidence {m n : Nat} {I : IncidenceMatrix m n} {H : HadamardMatrix n} (B : IncidenceToHadamardBridge m n I H) where
  bridgeConditionClosed : B.bridgeCondition

def IncidenceToHadamardBridgeClosed {m n : Nat} {I : IncidenceMatrix m n} {H : HadamardMatrix n} (B : IncidenceToHadamardBridge m n I H) : Prop :=
  B.bridgeCondition

theorem incidence_to_hadamard_bridge_closed_from_evidence {m n : Nat} {I : IncidenceMatrix m n} {H : HadamardMatrix n} (B : IncidenceToHadamardBridge m n I H) (E : IncidenceToHadamardBridgeEvidence B) : IncidenceToHadamardBridgeClosed B := by
  exact E.bridgeConditionClosed

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse