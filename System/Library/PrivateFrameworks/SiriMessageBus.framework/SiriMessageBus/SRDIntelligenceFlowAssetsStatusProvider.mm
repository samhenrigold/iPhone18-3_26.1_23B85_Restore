@interface SRDIntelligenceFlowAssetsStatusProvider
- (SRDIntelligenceFlowAssetsStatusProvider)initWithDelegate:(id)delegate locale:(id)locale;
@end

@implementation SRDIntelligenceFlowAssetsStatusProvider

- (SRDIntelligenceFlowAssetsStatusProvider)initWithDelegate:(id)delegate locale:(id)locale
{
  v4 = sub_2237B415C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237B414C();
  v7 = swift_unknownObjectRetain();
  return sub_223785488(v7, v6);
}

@end