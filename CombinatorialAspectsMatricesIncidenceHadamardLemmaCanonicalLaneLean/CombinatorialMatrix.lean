import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean

structure CombinatorialMatrix (R : Type u) where
  rows : Nat
  cols : Nat
  entries : Nat -> Nat -> R

def matrixMul {R : Type u} [Semiring R] (A B : CombinatorialMatrix R) : CombinatorialMatrix R :=
  { rows := A.rows, cols := B.cols, entries := fun i j =>
    Finset.sum (Finset.range A.cols) (fun k => A.entries i k * B.entries k j) }

end CombinatorialAspectsMatricesIncidenceHadamardLemmaCanonicalLaneLean
end HautevilleHouse