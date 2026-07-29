import HautevilleHouse.CryptographyDeepCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  cryptographicallyConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary.claimBoundary,
    cryptographicallyConstrainedStatement := "cryptographically-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def CryptographicallyConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "cryptographically_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  CryptographicallyConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

theorem cryptographically_constrained_theorem_closed_checked :
    CryptographicallyConstrainedTheoremClosed := by
  exact And.intro rfl (And.intro rfl rfl)

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  exact And.intro rfl (And.intro rfl (And.intro classical_source_boundary_carried_checked cryptographically_constrained_theorem_closed_checked))

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse