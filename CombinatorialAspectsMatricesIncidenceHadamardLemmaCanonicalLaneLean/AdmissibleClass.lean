import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

inductive AdmittedObject
| IncidenceAdmitted (M : IncidenceMatrix V E)
| HadamardAdmitted (H : HadamardMatrix n)

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (match A.object with
   | AdmittedObject.IncidenceAdmitted M => IncidenceMatrixClosed M
   | AdmittedObject.HadamardAdmitted H => HadamardMatrixClosed H) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse
