@interface AskToAirDropSenderController
- (BOOL)hasSeenPrivacyPrompt;
- (_TtC7Sharing28AskToAirDropSenderController)init;
- (_TtC7Sharing28AskToAirDropSenderController)initWithQueue:(id)queue;
- (id)didStopHandler;
- (int64_t)nearbyDeviceCount;
- (void)fetchPrivacyPromptInformationWithCompletion:(id)completion;
- (void)fetchSharingNameWithCompletionHandler:(id)handler;
- (void)setDidStopHandler:(id)handler;
- (void)setHasSeenPrivacyPrompt:(BOOL)prompt;
- (void)setNearbyDeviceCount:(int64_t)count;
- (void)setNearbyDeviceCountChangedHandler:(id)handler;
- (void)startAs:(id)as pin:(id)pin;
- (void)startWithPin:(id)pin;
- (void)stop;
@end

@implementation AskToAirDropSenderController

- (int64_t)nearbyDeviceCount
{
  v3 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNearbyDeviceCount:(int64_t)count
{
  v5 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  *(self + v5) = count;
  selfCopy = self;
  sub_1A989D814();
}

- (BOOL)hasSeenPrivacyPrompt
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  initWithSuiteName_ = [v2 initWithSuiteName_];

  if (!initWithSuiteName_)
  {
    return 0;
  }

  v5 = sub_1A99767E0();
  bOOLForKey_ = [initWithSuiteName_ BOOLForKey_];

  return bOOLForKey_;
}

- (void)setHasSeenPrivacyPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1A99767E0();
  initWithSuiteName_ = [v4 initWithSuiteName_];

  if (initWithSuiteName_)
  {
    v7 = sub_1A99767E0();
    [initWithSuiteName_ setBool:promptCopy forKey:v7];
  }
}

- (void)setNearbyDeviceCountChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7, v8);
}

- (id)didStopHandler
{
  v2 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989E660;
    aBlock[3] = &block_descriptor_163;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidStopHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98A7824;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A967C46C(v7, v8);
}

- (_TtC7Sharing28AskToAirDropSenderController)init
{
  *(self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount) = 0;
  v2 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1A9977470();
  __break(1u);
  return result;
}

- (_TtC7Sharing28AskToAirDropSenderController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = sub_1A98A6BE8(queueCopy);

  return v4;
}

- (void)startAs:(id)as pin:(id)pin
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  pinCopy = pin;
  selfCopy = self;
  v11 = sub_1A9976070();
  v13 = v12;

  v14 = sub_1A9976C00();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = selfCopy;
  v15[5] = v11;
  v15[6] = v13;
  sub_1A989FBEC(0, 0, v8, &unk_1A999FCF0, v15);
}

- (void)startWithPin:(id)pin
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  pinCopy = pin;
  selfCopy = self;
  v10 = sub_1A9976070();
  v12 = v11;

  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = selfCopy;
  v14[5] = v10;
  v14[6] = v12;
  sub_1A989FBEC(0, 0, v7, &unk_1A999FCE8, v14);
}

- (void)stop
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1A9976C00();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1A989FBEC(0, 0, v5, &unk_1A999FCE0, v7);
}

- (void)fetchPrivacyPromptInformationWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1A9976C00();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_1A98A799C;
  v11[6] = v9;
  selfCopy = self;
  sub_1A97B4F40(0, 0, v7, &unk_1A999FCD8, v11);
}

- (void)fetchSharingNameWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A9976C00();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A999FC98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A9998300;
  v12[5] = v11;
  selfCopy = self;
  sub_1A98A683C(0, 0, v7, &unk_1A9998308, v12);
}

@end