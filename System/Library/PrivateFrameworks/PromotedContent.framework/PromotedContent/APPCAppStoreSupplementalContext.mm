@interface APPCAppStoreSupplementalContext
- (APPCAppStoreSupplementalContext)init;
- (NSDate)requestTime;
- (NSDictionary)appMetadataFields;
- (NSDictionary)dictionaryRepresentation;
- (NSString)adamId;
- (id)copyWithZone:(void *)zone;
- (void)setAdamId:(id)id;
- (void)setAppMetadataFields:(id)fields;
- (void)setRequestTime:(id)time;
@end

@implementation APPCAppStoreSupplementalContext

- (NSString)adamId
{
  v2 = self + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1C1B94D78();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAdamId:(id)id
{
  if (id)
  {
    v4 = sub_1C1B94D88();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)appMetadataFields
{
  v3 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_1C1B94CA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAppMetadataFields:(id)fields
{
  if (fields)
  {
    v4 = sub_1C1B94CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSDate)requestTime
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AA7E30(self + v6, v5, &qword_1EBF07F50, &qword_1C1B9A590);
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C1B94538();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setRequestTime:(id)time
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (time)
  {
    sub_1C1B94558();
    v8 = sub_1C1B94588();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1C1B94588();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  selfCopy = self;
  sub_1C1AABE90(v7, self + v10);
  swift_endAccess();
}

- (NSDictionary)dictionaryRepresentation
{
  selfCopy = self;
  sub_1C1AD6D7C();

  sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
  v3 = sub_1C1B94CA8();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1C1AD7498(v6);

  sub_1C1AAABE0(v6, v6[3]);
  v4 = sub_1C1B95878();
  sub_1C1AA86F8(v6);
  return v4;
}

- (APPCAppStoreSupplementalContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end