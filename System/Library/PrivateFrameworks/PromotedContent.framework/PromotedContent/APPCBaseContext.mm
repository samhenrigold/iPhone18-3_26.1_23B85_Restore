@interface APPCBaseContext
- (APPCBaseContext)init;
- (APPCPromotableContentDepiction)current;
- (CGSize)maxSize;
- (NSString)requestedAd;
- (NSUUID)identifier;
- (void)setIdentifier:(id)identifier;
- (void)setRequestedAd:(id)ad;
@end

@implementation APPCBaseContext

- (NSUUID)identifier
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1C1B945B8();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (NSString)requestedAd
{
  v2 = self + OBJC_IVAR___APPCBaseContext_requestedAd;
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

- (void)setIdentifier:(id)identifier
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  v8 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (CGSize)maxSize
{
  v2 = *(self + OBJC_IVAR___APPCBaseContext_maxSize);
  v3 = *(self + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (APPCPromotableContentDepiction)current
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setRequestedAd:(id)ad
{
  if (ad)
  {
    v4 = sub_1C1B94D88();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (APPCBaseContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end