@interface FutureDateChecker
+ (BOOL)sharedInstanceShouldAssertTestsOnly;
+ (void)setSharedInstanceShouldAssertTestsOnly:(BOOL)only;
- (BOOL)isFutureWithDate:(id)date boundBy:(id)by;
- (BOOL)isFutureWithTimestamp:(double)timestamp;
- (_TtC18PodcastsFoundation17FutureDateChecker)init;
- (double)timestamp:(double)timestamp boundBy:(double)by;
- (double)timestampBoundByNow:(double)now;
- (double)timestampBoundByNowForDate:(id)date;
- (double)timestampForDate:(id)date boundBy:(id)by;
@end

@implementation FutureDateChecker

+ (BOOL)sharedInstanceShouldAssertTestsOnly
{
  if (qword_1ECAB3740 != -1)
  {
    swift_once();
  }

  return *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures);
}

+ (void)setSharedInstanceShouldAssertTestsOnly:(BOOL)only
{
  if (qword_1ECAB3740 != -1)
  {
    onlyCopy = only;
    swift_once();
    only = onlyCopy;
  }

  *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures) = only;
}

- (BOOL)isFutureWithTimestamp:(double)timestamp
{
  selfCopy = self;
  sub_1D9176CDC();
  v6 = sub_1D9163AFC(timestamp, v5);

  return v6;
}

- (BOOL)isFutureWithDate:(id)date boundBy:(id)by
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = sub_1D9176E3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1D9176DFC();
  if (by)
  {
    sub_1D9176DFC();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v13 + 56))(v11, v19, 1, v12);
  sub_1D8CF6B1C(v11, v8);
  v20 = *(v13 + 48);
  if (v20(v8, 1, v12) == 1)
  {
    selfCopy = self;
    sub_1D9176E2C();
    if (v20(v8, 1, v12) != 1)
    {
      sub_1D8CF5EF8(v8);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v8, v12);
    selfCopy2 = self;
  }

  sub_1D9176CCC();
  v24 = v23;
  sub_1D9176CCC();
  v26 = sub_1D9163AFC(v24, v25);

  v27 = *(v13 + 8);
  v27(v15, v12);
  sub_1D8CF5EF8(v11);
  v27(v18, v12);
  return v26;
}

- (double)timestamp:(double)timestamp boundBy:(double)by
{
  if (sub_1D9163AFC(timestamp, by))
  {
    return by;
  }

  else
  {
    return timestamp;
  }
}

- (double)timestampForDate:(id)date boundBy:(id)by
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1D9176DFC();
  sub_1D9176DFC();
  selfCopy = self;
  sub_1D9176CCC();
  v14 = v13;
  sub_1D9176CCC();
  v16 = v15;
  v17 = sub_1D9163AFC(v14, v15);

  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if (v17)
  {
    return v16;
  }

  else
  {
    return v14;
  }
}

- (double)timestampBoundByNow:(double)now
{
  selfCopy = self;
  sub_1D9176CDC();
  v6 = v5;
  v7 = sub_1D9163AFC(now, v5);

  if (v7)
  {
    return v6;
  }

  else
  {
    return now;
  }
}

- (double)timestampBoundByNowForDate:(id)date
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  selfCopy = self;
  sub_1D9176CCC();
  v10 = v9;
  sub_1D9176CDC();
  v12 = v11;
  LOBYTE(self) = sub_1D9163AFC(v10, v11);

  (*(v5 + 8))(v7, v4);
  if (self)
  {
    return v12;
  }

  else
  {
    return v10;
  }
}

- (_TtC18PodcastsFoundation17FutureDateChecker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end