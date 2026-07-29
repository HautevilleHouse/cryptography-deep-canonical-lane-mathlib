import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure RSAPackage where
  n : ℕ
  e : ℕ
  d : ℕ
  φ : ℕ
  correctness : e * d ≡ 1 [MOD φ]
  securityAssumption : factoringHard : Prop

structure RSAEvidence (R : RSAPackage) where
  correctnessClosed : R.correctness
  securityAssumptionClosed : R.securityAssumption

def RSAClosed (R : RSAPackage) : Prop :=
  R.correctness ∧ R.securityAssumption

theorem rsa_closed_from_evidence (R : RSAPackage) (E : RSAEvidence R) : RSAClosed R :=
  And.intro E.correctnessClosed E.securityAssumptionClosed

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse