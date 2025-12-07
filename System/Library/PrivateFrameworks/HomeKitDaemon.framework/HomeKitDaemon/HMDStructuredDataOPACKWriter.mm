@interface HMDStructuredDataOPACKWriter
- (void)emitRootValue:(id)value;
@end

@implementation HMDStructuredDataOPACKWriter

- (void)emitRootValue:(id)value
{
  v4 = OPACKEncodeObject();
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
    [(HMDStructuredDataFoundationWriter *)self failWithError:v5];
  }
}

@end