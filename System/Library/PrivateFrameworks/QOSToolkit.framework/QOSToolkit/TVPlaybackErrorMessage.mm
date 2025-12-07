@interface TVPlaybackErrorMessage
- (id)defaultAlert;
- (id)getLocalizedErrorMessageForItems:(id)items :(id)a4;
- (id)logger;
- (id)metricsRecorder;
- (void)fetchLocalizedErrorMessageForItems:(NSDictionary *)items :(NSError *)a4 completionHandler:(id)handler;
@end

@implementation TVPlaybackErrorMessage

- (id)logger
{
  v2 = *(self + 8);
  v5[4] = *(self + 7);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26145AD2C;
  v5[3] = &block_descriptor_34;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)metricsRecorder
{
  v2 = *(self + 10);
  v5[4] = *(self + 9);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26145AE54;
  v5[3] = &block_descriptor_31;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)defaultAlert
{
  v2 = *(self + 12);
  v5[4] = *(self + 11);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26145AF78;
  v5[3] = &block_descriptor_0;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)getLocalizedErrorMessageForItems:(id)items :(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
  v6 = sub_2614648E0();
  v7 = *(self + 9);
  sub_26145D4CC(v25);
  v21 = v25[8];
  v22 = v25[9];
  v23 = v25[10];
  v24 = v25[11];
  v17 = v25[4];
  v18 = v25[5];
  v19 = v25[6];
  v20 = v25[7];
  v13 = v25[0];
  v14 = v25[1];
  v15 = v25[2];
  v16 = v25[3];
  v8 = a4;

  v9 = sub_26145D654(v6, &v13, [v8 code], 1);

  v7(v9);

  v11 = (*(self + 11))(v10);

  return v11;
}

- (void)fetchLocalizedErrorMessageForItems:(NSDictionary *)items :(NSError *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = items;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_261464B40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_261467AD8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_261467AE8;
  v17[5] = v16;
  itemsCopy = items;
  v19 = a4;

  sub_26145CC00(0, 0, v12, &unk_261467AF8, v17);
}

@end