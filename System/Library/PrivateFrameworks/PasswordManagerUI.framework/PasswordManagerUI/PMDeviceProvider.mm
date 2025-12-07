@interface PMDeviceProvider
+ (void)fetchListsOfSharingDevicesSeparatedByAvailability:(id)availability;
- (PMDeviceProvider)init;
@end

@implementation PMDeviceProvider

+ (void)fetchListsOfSharingDevicesSeparatedByAvailability:(id)availability
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(availability);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21CBB4A38;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21CBA0DB8;
  v12[5] = v11;
  sub_21C963EF4(0, 0, v7, &unk_21CBA0DC0, v12);
}

- (PMDeviceProvider)init
{
  v3.receiver = self;
  v3.super_class = PMDeviceProvider;
  return [(PMDeviceProvider *)&v3 init];
}

@end