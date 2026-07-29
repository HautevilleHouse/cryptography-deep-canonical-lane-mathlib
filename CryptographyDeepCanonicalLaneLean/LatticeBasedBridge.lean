import CryptographyDeepCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure LatticeHardnessEvidence where
  sIvpHardness : Prop
  bddReducedBasis : Prop
  gaussianSampling : Prop
  modulusSwitching : Prop
  rlweHardness : Prop

def LatticeHardnessClosed (E : LatticeHardnessEvidence) : Prop :=
  E.sIvpHardness ∧ E.bddReducedBasis ∧ E.gaussianSampling ∧ E.modulusSwitching ∧ E.rlweHardness

theorem lattice_hardness_closed (E : LatticeHardnessEvidence) :
    LatticeHardnessClosed E := by
  exact And.intro E.sIvpHardness (And.intro E.bddReducedBasis (And.intro E.gaussianSampling (And.intro E.modulusSwitching E.rlweHardness)))

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse