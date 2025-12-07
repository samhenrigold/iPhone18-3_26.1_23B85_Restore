@interface MicActivityServiceDelegate
- (void)disableMicrophoneActivityDetection:(id)detection;
- (void)enableMicrophoneActivityDetection:(id)detection;
- (void)listenForMicrophoneActivity:(NSXPCListenerEndpoint *)activity reply:(id)reply;
- (void)stopListeningForMicrophoneActivity:(id)activity;
@end

@implementation MicActivityServiceDelegate

- (void)enableMicrophoneActivityDetection:(id)detection
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(detection);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2450E5908();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2450EEAF0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2450EEAF8;
  v12[5] = v11;

  sub_2450CFF64(0, 0, v7, &unk_2450EEB00, v12);
}

- (void)disableMicrophoneActivityDetection:(id)detection
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(detection);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2450E5908();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2450EEAC8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2450EEAD0;
  v12[5] = v11;

  sub_2450CFF64(0, 0, v7, &unk_2450EEAD8, v12);
}

- (void)listenForMicrophoneActivity:(NSXPCListenerEndpoint *)activity reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = activity;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2450E5908();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2450EEAA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2450EEAA8;
  v14[5] = v13;
  activityCopy = activity;

  sub_2450CFF64(0, 0, v9, &unk_2450EEAB0, v14);
}

- (void)stopListeningForMicrophoneActivity:(id)activity
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(activity);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2450E5908();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2450EEA50;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2450EEA60;
  v12[5] = v11;

  sub_2450CFF64(0, 0, v7, &unk_2450EEA70, v12);
}

@end