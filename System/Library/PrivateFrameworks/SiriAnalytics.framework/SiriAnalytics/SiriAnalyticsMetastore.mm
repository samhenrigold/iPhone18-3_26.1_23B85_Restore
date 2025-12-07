@interface SiriAnalyticsMetastore
- (id)createTagWithShim:(id)shim onClock:(id)clock;
- (void)bootstrap;
- (void)checkpoint;
- (void)prune;
@end

@implementation SiriAnalyticsMetastore

- (void)bootstrap
{
  selfCopy = self;
  sub_1D9898A84();
}

- (void)prune
{
  selfCopy = self;
  sub_1D9898E24();
}

- (void)checkpoint
{
  selfCopy = self;
  sub_1D989912C();
}

- (id)createTagWithShim:(id)shim onClock:(id)clock
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v18 - v7;
  v9 = sub_1D992AE84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](*(v10 + 64));
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  shimCopy = shim;
  selfCopy = self;
  Metastore.createTag(shim:onClock:)();

  v15 = *(v10 + 8);
  v15(v12, v9);
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v16 = sub_1D992AE44();
    v15(v8, v9);
  }

  return v16;
}

@end