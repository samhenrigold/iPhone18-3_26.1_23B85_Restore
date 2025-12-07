@interface FeedURLComposer
- (_TtC18PodcastsFoundation15FeedURLComposer)init;
- (id)feedURLForOptionalURL:(id)l adamID:(int64_t)d error:(id *)error;
@end

@implementation FeedURLComposer

- (_TtC18PodcastsFoundation15FeedURLComposer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeedURLComposer();
  return [(FeedURLComposer *)&v3 init];
}

- (id)feedURLForOptionalURL:(id)l adamID:(int64_t)d error:(id *)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-v9];
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21[-v16];
  if (l)
  {
    sub_1D9176B9C();
    (*(v12 + 32))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  selfCopy = self;
  sub_1D8FD830C(v10, d, v17);
  sub_1D8E677CC(v10);

  v19 = sub_1D9176B1C();
  (*(v12 + 8))(v17, v11);

  return v19;
}

@end