@interface ClientProxy
- (void)roleWithCompletionHandler:(id)handler;
@end

@implementation ClientProxy

- (void)roleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_26D26265C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26D263D90;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26D263D98;
  v12[5] = v11;

  sub_26D260F04(0, 0, v7, &unk_26D263DA0, v12);
}

@end