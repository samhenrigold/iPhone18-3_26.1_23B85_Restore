@interface PaymentReadResultStoreService
- (_TtC21ProximityReaderDaemon29PaymentReadResultStoreService)init;
- (void)dealloc;
- (void)fetchStoredPaymentCardReadResultBatchWithSize:(int64_t)size completionHandler:(id)handler;
- (void)fetchStoredPaymentCardReadResultCountWithCompletionHandler:(id)handler;
- (void)resetBatchStateWithCompletionHandler:(id)handler;
- (void)resolveBatchWithBatchDeletionToken:(NSString *)token completionHandler:(id)handler;
@end

@implementation PaymentReadResultStoreService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoreAnalytics(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  swift_beginAccess();
  if ((*(v5 + 48))(self + v8, 1, v4))
  {
    selfCopy = self;
  }

  else
  {
    sub_2613765A4(self + v8, v7, type metadata accessor for StoreAnalytics);
    selfCopy2 = self;
    sub_261266F18();
    sub_261376698(v7, type metadata accessor for StoreAnalytics);
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  [(PaymentReadResultStoreService *)&v12 dealloc];
}

- (_TtC21ProximityReaderDaemon29PaymentReadResultStoreService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchStoredPaymentCardReadResultCountWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2613AD3A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2613AD3B0;
  v12[5] = v11;
  selfCopy = self;
  sub_261262B98(0, 0, v7, &unk_2613AD3B8, v12);
}

- (void)fetchStoredPaymentCardReadResultBatchWithSize:(int64_t)size completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = size;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613AD388;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2613AD390;
  v14[5] = v13;
  selfCopy = self;
  sub_261262B98(0, 0, v9, &unk_2613AD398, v14);
}

- (void)resetBatchStateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2613AD368;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2613AD370;
  v12[5] = v11;
  selfCopy = self;
  sub_261262B98(0, 0, v7, &unk_2613AD378, v12);
}

- (void)resolveBatchWithBatchDeletionToken:(NSString *)token completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613AD330;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2613AD340;
  v14[5] = v13;
  tokenCopy = token;
  selfCopy = self;
  sub_261262B98(0, 0, v9, &unk_2613AD350, v14);
}

@end