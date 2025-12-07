@interface PurchaseHistoryAppStateDataSource
- (void)purchaseHistoryUpdated:(id)updated;
@end

@implementation PurchaseHistoryAppStateDataSource

- (void)purchaseHistoryUpdated:(id)updated
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_22261AC60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22261AC40();
  v11 = sub_22261B310();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  swift_retain_n();
  sub_222603104(0, 0, v6, &unk_22261E7F0, v12);

  (*(v8 + 8))(v10, v7);
}

@end