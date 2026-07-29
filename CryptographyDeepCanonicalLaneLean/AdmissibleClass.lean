import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure AdmissibleCryptographyClass where
  object : CryptographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleCryptographyClass) : Prop :=
  CryptographyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse