import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure RSAKeyExchangePackage where
  modulus : Nat
  publicExponent : Nat
  privateExponent : Nat
  encryptionSoundness : Prop
  decryptionSoundness : Prop
  securityReduction : Prop

structure RSAKeyExchangeEvidence (R : RSAKeyExchangePackage) where
  encryptionSoundnessClosed : R.encryptionSoundness
  decryptionSoundnessClosed : R.decryptionSoundness
  securityReductionClosed : R.securityReduction

def RSAKeyExchangeClosed (R : RSAKeyExchangePackage) : Prop :=
  R.encryptionSoundness ∧ R.decryptionSoundness ∧ R.securityReduction

theorem rsa_key_exchange_closed_from_evidence (R : RSAKeyExchangePackage) (E : RSAKeyExchangeEvidence R) :
    RSAKeyExchangeClosed R := by
  exact And.intro E.encryptionSoundnessClosed (And.intro E.decryptionSoundnessClosed E.securityReductionClosed)

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse