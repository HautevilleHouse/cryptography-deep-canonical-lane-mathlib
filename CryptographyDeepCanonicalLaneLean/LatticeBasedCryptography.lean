import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure LatticeCryptographyPackage where
  dimension : ℕ
  lattice : Type
  shortestVectorProblem : Prop
  learningWithErrors : Prop
  hardnessAssumption : shortestVectorProblem ∨ learningWithErrors

structure LatticeCryptographyEvidence (L : LatticeCryptographyPackage) where
  dimensionClosed : L.dimension = 0 ∨ True
  hardnessAssumptionClosed : L.hardnessAssumption

def LatticeCryptographyClosed (L : LatticeCryptographyPackage) : Prop :=
  L.hardnessAssumption

theorem lattice_cryptography_closed_from_evidence (L : LatticeCryptographyPackage) (E : LatticeCryptographyEvidence L) : LatticeCryptographyClosed L :=
  E.hardnessAssumptionClosed

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse