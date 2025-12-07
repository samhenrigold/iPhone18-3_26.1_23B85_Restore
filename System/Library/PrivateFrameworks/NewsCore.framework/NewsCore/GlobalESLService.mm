@interface GlobalESLService
- (void)fetchFeedItemsWithCursor:(_TtC8NewsCore16GlobalESLService *)self feedItemHandler:(SEL)handler networkEventHandler:(FCFeedItemServiceCursor *)eventHandler completionHandler:(id)completionHandler;
@end

@implementation GlobalESLService

- (void)fetchFeedItemsWithCursor:(_TtC8NewsCore16GlobalESLService *)self feedItemHandler:(SEL)handler networkEventHandler:(FCFeedItemServiceCursor *)eventHandler completionHandler:(id)completionHandler
{
  v6 = v5;
  v7 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completionHandler);
  v15 = _Block_copy(v7);
  v16 = _Block_copy(v6);
  v17 = swift_allocObject();
  v17[2] = eventHandler;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;
  v17[6] = self;
  v18 = sub_1B67D993C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B68148E0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B68148F0;
  v20[5] = v19;
  eventHandlerCopy = eventHandler;

  sub_1B64664B8(0, 0, v13, &unk_1B6814900, v20);
}

@end