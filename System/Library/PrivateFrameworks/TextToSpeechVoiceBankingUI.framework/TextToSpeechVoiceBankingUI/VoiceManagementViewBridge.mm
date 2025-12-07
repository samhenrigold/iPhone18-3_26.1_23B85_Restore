@interface VoiceManagementViewBridge
+ (id)makeVoiceManagementViewControllerWithVoiceID:(id)d voiceName:(id)name dismissCallback:(id)callback;
- (VoiceManagementViewBridge)init;
@end

@implementation VoiceManagementViewBridge

+ (id)makeVoiceManagementViewControllerWithVoiceID:(id)d voiceName:(id)name dismissCallback:(id)callback
{
  v7 = type metadata accessor for VoiceManagementView(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF37EDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = _Block_copy(callback);
  sub_26EF37EBC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  (*(v11 + 16))(v14, v16, v10);
  nameCopy = name;

  VoiceManagementView.init(voiceID:dismissCallback:)(v14, sub_26EEB15E8, v18, v9);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B98, &unk_26EF417E0));
  v21 = sub_26EF39F8C();
  [v21 setTitle_];

  (*(v11 + 8))(v16, v10);

  return v21;
}

- (VoiceManagementViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VoiceManagementViewBridge();
  return [(VoiceManagementViewBridge *)&v3 init];
}

@end