@interface AMSUIEngagementContentRecord
+ (BOOL)isURLEngagementContent:(id)content;
- (AMSUIEngagementContentRecord)initWithURL:(id)l;
- (NSURL)fallbackURL;
@end

@implementation AMSUIEngagementContentRecord

- (NSURL)fallbackURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC44618, &qword_1BB1F0890);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  EngagementContentRecord.fallbackURL.getter(&v8 - v3);
  v5 = sub_1BB1DB398();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_1BB1DB338();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

+ (BOOL)isURLEngagementContent:(id)content
{
  v3 = sub_1BB1DB398();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  v7 = static EngagementContentRecord.isURLEngagementContent(url:)();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (AMSUIEngagementContentRecord)initWithURL:(id)l
{
  v3 = sub_1BB1DB398();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  return EngagementContentRecord.init(url:)(v5);
}

@end