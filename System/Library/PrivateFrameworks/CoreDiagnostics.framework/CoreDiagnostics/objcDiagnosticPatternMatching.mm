@interface objcDiagnosticPatternMatching
- (objcDiagnosticPatternMatching)initWithSwiftDiagnosticPatternMatching:(id)matching;
- (objcDiagnosticPatternMatching)initWithType:(int)type;
@end

@implementation objcDiagnosticPatternMatching

- (objcDiagnosticPatternMatching)initWithType:(int)type
{
  v4 = [[_SwiftDiagnosticPatternMatching alloc] initWithType:*&type];
  swiftDiagnosticPatternMatching = self->_swiftDiagnosticPatternMatching;
  self->_swiftDiagnosticPatternMatching = v4;

  return self;
}

- (objcDiagnosticPatternMatching)initWithSwiftDiagnosticPatternMatching:(id)matching
{
  matchingCopy = matching;
  v9.receiver = self;
  v9.super_class = objcDiagnosticPatternMatching;
  v6 = [(objcDiagnosticPatternMatching *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftDiagnosticPatternMatching, matching);
  }

  return v7;
}

@end