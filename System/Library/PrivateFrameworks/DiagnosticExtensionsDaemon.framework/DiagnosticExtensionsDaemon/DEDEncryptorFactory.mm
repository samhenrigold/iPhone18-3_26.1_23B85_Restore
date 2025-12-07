@interface DEDEncryptorFactory
+ (id)getEncryptorForExtensionIdentifier:(id)identifier;
@end

@implementation DEDEncryptorFactory

+ (id)getEncryptorForExtensionIdentifier:(id)identifier
{
  v9[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v9[0] = @"com.apple.DiagnosticExtensions.Cinnamon";
  v9[1] = @"com.apple.DiagnosticExtensions.sysdiagnose";
  v9[2] = @"com.apple.AppleElementsSupport.AppleElementsSleepDiagnostic";
  v9[3] = @"com.apple.AppleElementsSupport.AppleElementsDiagnostic";
  v9[4] = @"com.apple.HealthAlgorithms.CycleTrackingDiagnosticExtension";
  v9[5] = @"com.apple.HeartRhythmAlgorithms.IRNDiagnosticExtension";
  v9[6] = @"com.apple.HealthLite.KaliDiagnosticExtension";
  v9[7] = @"com.apple.AfibBurden.AfibBurdenDiagnosticExtension";
  v9[8] = @"healthwrap";
  v9[9] = @"AppleEncryptedArchive";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:10];
  v6 = [v4 initWithArray:v5];

  if ([v6 containsObject:identifierCopy])
  {
    [identifierCopy isEqualToString:@"AppleEncryptedArchive"];
    v7 = objc_opt_new();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end