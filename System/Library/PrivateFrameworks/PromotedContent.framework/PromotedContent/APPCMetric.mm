@interface APPCMetric
- (APPCMetric)init;
- (NSDate)timestamp;
- (NSDictionary)properties;
- (NSString)contentId;
- (int64_t)metric;
- (int64_t)purpose;
- (void)setContentId:(id)id;
- (void)setMetric:(int64_t)metric;
- (void)setProperties:(id)properties;
- (void)setPurpose:(int64_t)purpose;
- (void)setTimestamp:(id)timestamp;
@end

@implementation APPCMetric

- (int64_t)purpose
{
  v3 = OBJC_IVAR___APPCMetric_purpose;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPurpose:(int64_t)purpose
{
  v5 = OBJC_IVAR___APPCMetric_purpose;
  swift_beginAccess();
  *(self + v5) = purpose;
}

- (int64_t)metric
{
  v3 = OBJC_IVAR___APPCMetric_metric;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMetric:(int64_t)metric
{
  v5 = OBJC_IVAR___APPCMetric_metric;
  swift_beginAccess();
  *(self + v5) = metric;
}

- (NSDate)timestamp
{
  v3 = sub_1C1B94588();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1C1B94538();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setTimestamp:(id)timestamp
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94558();
  v8 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (NSString)contentId
{
  v2 = self + OBJC_IVAR___APPCMetric_contentId;
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

- (void)setContentId:(id)id
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

  v7 = (self + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)properties
{
  v3 = OBJC_IVAR___APPCMetric_properties;
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

- (void)setProperties:(id)properties
{
  if (properties)
  {
    v4 = sub_1C1B94CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___APPCMetric_properties;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (APPCMetric)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end