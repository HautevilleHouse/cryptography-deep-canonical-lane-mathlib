import CryptographyDeepCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure DiscreteLogHardnessEvidence where
  cyclicGroupGeneration : Prop
  indexCalculusResistance : Prop
  pohligHellmanResistance : Prop
  genericGroupLowerBound : Prop

def DiscreteLogHardnessClosed (E : DiscreteLogHardnessEvidence) : Prop :=
  E.cyclicGroupGeneration ∧ E.indexCalculusResistance ∧ E.pohligHellmanResistance ∧ E.genericGroupLowerBound

theorem discrete_log_hardness_closed (E : DiscreteLogHardnessEvidence) :
    DiscreteLogHardnessClosed E := by
  exact And.intro E.cyclicGroupGeneration (And.intro E.indexCalculusResistance (And.intro E.pohligHellmanResistance E.genericGroupLowerBound))

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse