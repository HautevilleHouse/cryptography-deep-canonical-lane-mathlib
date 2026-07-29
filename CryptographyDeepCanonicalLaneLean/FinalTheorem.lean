import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

def ConstrainedCryptographyClosure (A : AdmissibleCryptographyClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cryptography_endgame (A : AdmissibleCryptographyClass) :
    ConstrainedCryptographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse