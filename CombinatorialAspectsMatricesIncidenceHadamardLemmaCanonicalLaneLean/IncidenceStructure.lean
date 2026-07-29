import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure IncidenceStructure where
  pointSet : Finset Nat
  blockSet : Finset Nat
  incidence : Nat -> Nat -> Bool

def incidenceMatrix (I : IncidenceStructure) : CombinatorialMatrix Bool :=
  { rows := I.pointSet.card, cols := I.blockSet.card, entries := fun i j => I.incidence i j }

structure DesignParameters where
  v : Nat
  k : Nat
  lambda : Nat
  r : Nat
  b : Nat

def symmetricDesign (I : IncidenceStructure) : Prop :=
  I.pointSet.card = I.blockSet.card

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse