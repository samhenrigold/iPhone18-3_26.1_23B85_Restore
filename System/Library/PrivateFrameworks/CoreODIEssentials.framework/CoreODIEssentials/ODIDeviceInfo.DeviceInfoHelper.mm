@interface ODIDeviceInfo.DeviceInfoHelper
- (_TtCC17CoreODIEssentials13ODIDeviceInfoP33_B07CCE03E02CC77E93497B1A0FAD96D316DeviceInfoHelper)init;
- (void)phoneNumberChanged:(id)changed;
@end

@implementation ODIDeviceInfo.DeviceInfoHelper

- (_TtCC17CoreODIEssentials13ODIDeviceInfoP33_B07CCE03E02CC77E93497B1A0FAD96D316DeviceInfoHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)phoneNumberChanged:(id)changed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  Strong = swift_weakLoadStrong();
  v8 = sub_1DB09DA24();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = Strong;
  v9[5] = changed;
  changedCopy = changed;
  sub_1DAF4F6F8(0, 0, v6, &unk_1DB0AC338, v9);
}

@end