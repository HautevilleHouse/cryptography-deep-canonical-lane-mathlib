import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure ZKProofPackage where
  prover : Type
  verifier : Type
  statement : Prop
  completeness : Prop
  soundness : Prop
  zeroKnowledge : Prop

structure ZKProofEvidence (Z : ZKProofPackage) where
  completenessClosed : Z.completeness
  soundnessClosed : Z.soundness
  zeroKnowledgeClosed : Z.zeroKnowledge

def ZKProofClosed (Z : ZKProofPackage) : Prop :=
  Z.completeness ∧ Z.soundness ∧ Z.zeroKnowledge

theorem zkproof_closed_from_evidence (Z : ZKProofPackage) (E : ZKProofEvidence Z) : ZKProofClosed Z :=
  And.intro E.completenessClosed (And.intro E.soundnessClosed E.zeroKnowledgeClosed)

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse