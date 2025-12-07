@interface SiriAnalyticsTagShim
- (NSString)description;
- (SiriAnalyticsTagShim)initWithConditionType:(int)type componentId:(id)id componentName:(int)name joined:(BOOL)joined;
- (SiriAnalyticsTagShim)initWithConditionType:(int)type requestId:(id)id joined:(BOOL)joined;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriAnalyticsTagShim

- (SiriAnalyticsTagShim)initWithConditionType:(int)type componentId:(id)id componentName:(int)name joined:(BOOL)joined
{
  v9 = sub_1D992AE84();
  MEMORY[0x1EEE9AC00](*(*(v9 - 8) + 64));
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  return TagShim.init(conditionType:componentId:componentName:joined:)(type, v11, name, joined);
}

- (SiriAnalyticsTagShim)initWithConditionType:(int)type requestId:(id)id joined:(BOOL)joined
{
  v6 = *&type;
  v7 = sub_1D992AE84();
  MEMORY[0x1EEE9AC00](*(*(v7 - 8) + 64));
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  return TagShim.init(conditionType:requestId:joined:)(v6, v9, joined);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D990FC38(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1D9910620();

  v3 = sub_1D992B614();

  return v3;
}

@end