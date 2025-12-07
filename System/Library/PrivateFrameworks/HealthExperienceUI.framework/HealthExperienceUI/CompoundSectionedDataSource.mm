@interface CompoundSectionedDataSource
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
@end

@implementation CompoundSectionedDataSource

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &aBlock[-1] - v11;
  sub_1BA4A45C8();

  sub_1B9F264E0();
  swift_beginAccess();
  v13 = *self->changeObservers;
  v14 = swift_allocObject();
  *(v14 + 16) = self;
  *(v14 + 24) = animated;
  aBlock[4] = sub_1B9F8C0D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_35_0;
  v15 = _Block_copy(aBlock);

  v16 = v13;

  [v16 notifyObservers_];
  _Block_release(v15);

  (*(v9 + 8))(v12, v8);
}

@end