import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

def bridgeClosed (A : AdmissibleCryptographyClass) : Prop :=
  CryptographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleCryptographyClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse