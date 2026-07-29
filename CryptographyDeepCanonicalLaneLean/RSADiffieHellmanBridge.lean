import CryptographyDeepCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure RSADiffieHellmanEvidence where
  rsaOaepSecurity : Prop
  ddhAssumption : Prop
  cdhAssumption : Prop
  factoringReduction : Prop
  keyExchangeSecurity : Prop

def RSADiffieHellmanClosed (E : RSADiffieHellmanEvidence) : Prop :=
  E.rsaOaepSecurity ∧ E.ddhAssumption ∧ E.cdhAssumption ∧ E.factoringReduction ∧ E.keyExchangeSecurity

theorem rsa_diffie_hellman_closed (E : RSADiffieHellmanEvidence) :
    RSADiffieHellmanClosed E := by
  exact And.intro E.rsaOaepSecurity (And.intro E.ddhAssumption (And.intro E.cdhAssumption (And.intro E.factoringReduction E.keyExchangeSecurity)))

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse