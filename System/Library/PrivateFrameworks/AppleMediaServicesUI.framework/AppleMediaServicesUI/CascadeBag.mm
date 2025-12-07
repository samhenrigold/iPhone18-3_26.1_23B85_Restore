@interface CascadeBag
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation CascadeBag

- (BOOL)isExpired
{
  selfCopy = self;
  v3 = sub_1000B037C();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  sub_1000B04AC(v5);

  v7 = type metadata accessor for Date();
  isa = 0;
  if (sub_100009F34(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return isa;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_100009624(&unk_1001E8868, v5);
}

@end