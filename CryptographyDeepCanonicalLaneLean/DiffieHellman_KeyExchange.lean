import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure DiffieHellmanKeyExchangePackage where
  group : Type u
  generator : group
  secretA : group
  secretB : group
  sharedSecret : group
  cDH_Assumption : Prop
  dDH_Assumption : Prop

structure DiffieHellmanKeyExchangeEvidence (D : DiffieHellmanKeyExchangePackage) where
  cDH_AssumptionClosed : D.cDH_Assumption
  dDH_AssumptionClosed : D.dDH_Assumption

def DiffieHellmanKeyExchangeClosed (D : DiffieHellmanKeyExchangePackage) : Prop :=
  D.cDH_Assumption ∧ D.dDH_Assumption

theorem diffie_hellman_key_exchange_closed_from_evidence (D : DiffieHellmanKeyExchangePackage) (E : DiffieHellmanKeyExchangeEvidence D) :
    DiffieHellmanKeyExchangeClosed D := by
  exact And.intro E.cDH_AssumptionClosed E.dDH_AssumptionClosed

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse