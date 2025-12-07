@interface ForYouConfigRecord.HeadlineMetadata
- (NSDate)displayDate;
- (_TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata)init;
@end

@implementation ForYouConfigRecord.HeadlineMetadata

- (NSDate)displayDate
{
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA89A58(self + OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_displayDate, v5, sub_1DAA492B4);
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1DACB7C04();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (_TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end