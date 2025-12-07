@interface RGBLivenessController
- (void)cancelAfterAppMovedToBackground;
@end

@implementation RGBLivenessController

- (void)cancelAfterAppMovedToBackground
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v14 - v12;
  (*(v7 + 16))(v9, self + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  *v5 = 7;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

@end