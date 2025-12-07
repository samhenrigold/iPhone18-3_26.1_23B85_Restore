@interface AVOuputDeviceCommunicationsChannelBroker
- (void)availableDevicesDidChange;
@end

@implementation AVOuputDeviceCommunicationsChannelBroker

- (void)availableDevicesDidChange
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_23E900A74();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_23E884370(0, 0, v5, &unk_23E9040C8, v7);
}

@end