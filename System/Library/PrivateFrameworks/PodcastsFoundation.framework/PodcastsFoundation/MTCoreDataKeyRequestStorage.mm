@interface MTCoreDataKeyRequestStorage
- (BOOL)keyExistsInStorageFor:(int64_t)for;
- (BOOL)saveKeyDataFor:(id)for;
- (MTCoreDataKeyRequestStorage)init;
- (id)retrieveKeyDataFor:(id)for;
- (void)markOfflineKeyFor:(int64_t)for pendingDeletion:(BOOL)deletion;
- (void)removeAllKeyDataWithCompletion:(id)completion;
- (void)removeKeyDataFor:(id)for;
- (void)removeKeyDataForStoreTrackID:(int64_t)d;
- (void)saveKeyDataWithKeyIdentifier:(id)identifier storeTrackID:(int64_t)d keyData:(id)data renewalDate:(id)date dsid:(int64_t)dsid responseQueue:(id)queue completion:(id)completion;
@end

@implementation MTCoreDataKeyRequestStorage

- (MTCoreDataKeyRequestStorage)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return [(MTCoreDataKeyRequestStorage *)&v3 init];
}

- (BOOL)saveKeyDataFor:(id)for
{
  forCopy = for;
  forCopy2 = for;
  selfCopy = self;
  LOBYTE(forCopy) = sub_1D8FF34C8(forCopy);

  return forCopy & 1;
}

- (void)saveKeyDataWithKeyIdentifier:(id)identifier storeTrackID:(int64_t)d keyData:(id)data renewalDate:(id)date dsid:(int64_t)dsid responseQueue:(id)queue completion:(id)completion
{
  dCopy = d;
  dsidCopy = dsid;
  v13 = sub_1D9176E3C();
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &dCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(completion);
  v17 = sub_1D917820C();
  v19 = v18;
  dataCopy = data;
  dateCopy = date;
  queueCopy = queue;
  selfCopy = self;
  v24 = sub_1D9176C8C();
  v26 = v25;

  sub_1D9176DFC();
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  sub_1D8FF3F9C(v17, v19, dCopy, v24, v26, v15, dsidCopy, queueCopy, sub_1D8FF7E60, v27);

  sub_1D8D7567C(v24, v26);

  (*(v30 + 8))(v15, v31);
}

- (void)removeKeyDataFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1D8FF47A4(for);
}

- (void)removeKeyDataForStoreTrackID:(int64_t)d
{
  selfCopy = self;
  sub_1D8FF4C38(d);
}

- (void)removeAllKeyDataWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D8FF7AC4(sub_1D8D998AC, v5);
}

- (id)retrieveKeyDataFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1D8FF5368(for);
  v8 = v7;

  return v8;
}

- (BOOL)keyExistsInStorageFor:(int64_t)for
{
  selfCopy = self;
  LOBYTE(for) = sub_1D8FF5EA0(for);

  return for & 1;
}

- (void)markOfflineKeyFor:(int64_t)for pendingDeletion:(BOOL)deletion
{
  selfCopy = self;
  sub_1D8FF6090(for, deletion);
}

@end