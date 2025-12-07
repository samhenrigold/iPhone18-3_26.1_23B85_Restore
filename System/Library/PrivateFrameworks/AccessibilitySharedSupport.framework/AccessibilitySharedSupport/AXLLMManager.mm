@interface AXLLMManager
- (_TtC26AccessibilitySharedSupport12AXLLMManager)init;
- (_TtC26AccessibilitySharedSupport12AXLLMManager)initWithClientName:(id)name model:(int64_t)model handleSensitiveData:(BOOL)data systemInstructions:(id)instructions locale:(id)locale;
@end

@implementation AXLLMManager

- (_TtC26AccessibilitySharedSupport12AXLLMManager)initWithClientName:(id)name model:(int64_t)model handleSensitiveData:(BOOL)data systemInstructions:(id)instructions locale:(id)locale
{
  v9 = sub_1C0F4F940();
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0F501B0();
  v17 = v16;
  v18 = sub_1C0F501B0();
  v20 = v19;
  sub_1C0F4F8F0();
  return AXLLMManager.init(clientName:model:handleSensitiveData:systemInstructions:locale:)(v15, v17, model, data, v18, v20, v14);
}

- (_TtC26AccessibilitySharedSupport12AXLLMManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end