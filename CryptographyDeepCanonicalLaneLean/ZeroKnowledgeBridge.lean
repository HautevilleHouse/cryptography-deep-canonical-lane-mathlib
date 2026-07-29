import CryptographyDeepCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure ZeroKnowledgeEvidence where
  completeness : Prop
  soundness : Prop
  zeroKnowledge : Prop
  simulatorExists : Prop
  extractorExists : Prop

def ZeroKnowledgeClosed (E : ZeroKnowledgeEvidence) : Prop :=
  E.completeness ∧ E.soundness ∧ E.zeroKnowledge ∧ E.simulatorExists ∧ E.extractorExists

theorem zero_knowledge_closed (E : ZeroKnowledgeEvidence) :
    ZeroKnowledgeClosed E := by
  exact And.intro E.completeness (And.intro E.soundness (And.intro E.zeroKnowledge (And.intro E.simulatorExists E.extractorExists)))

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse