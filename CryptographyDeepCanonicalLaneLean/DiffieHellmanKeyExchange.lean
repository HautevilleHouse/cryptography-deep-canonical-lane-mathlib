import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure DiffieHellmanPackage where
  G : Type
  g : G
  a : ℕ
  b : ℕ
  groupCyclic : IsCyclic G
  discreteLogHard : Prop
  sharedSecret : G := g^(a*b)

structure DiffieHellmanEvidence (D : DiffieHellmanPackage) where
  groupCyclicClosed : D.groupCyclic
  discreteLogHardClosed : D.discreteLogHard

def DiffieHellmanClosed (D : DiffieHellmanPackage) : Prop :=
  D.groupCyclic ∧ D.discreteLogHard

theorem diffie_hellman_closed_from_evidence (D : DiffieHellmanPackage) (E : DiffieHellmanEvidence D) : DiffieHellmanClosed D :=
  And.intro E.groupCyclicClosed E.discreteLogHardClosed

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse