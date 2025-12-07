@interface TPSDefaultsManager
+ (BOOL)isInternalDevice;
+ (NSDate)lastMajorVersionUpdateDate;
+ (NSNumber)contentUpdatedDarwinNotificationInSeconds;
+ (NSNumber)contextualEventDaysSinceLastMajorUpdateInSeconds;
+ (NSNumber)holdoutGroup;
+ (NSNumber)requestInterval;
+ (NSNumber)standardNotificationInterval;
+ (NSNumber)userType;
+ (int64_t)crunchingIntervalInDays;
+ (void)setIsInternalDevice:(BOOL)device;
- (TPSDefaultsManager)init;
@end

@implementation TPSDefaultsManager

+ (int64_t)crunchingIntervalInDays
{
  sub_1C01254E8(6, &v4);
  v2 = v5;
  sub_1C00FC158(&v4);
  if (v2)
  {
    return sub_1C01258D4(6);
  }

  else
  {
    return sub_1C014B910();
  }
}

+ (BOOL)isInternalDevice
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1EDD44C08;
}

+ (void)setIsInternalDevice:(BOOL)device
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  byte_1EDD44C08 = device;
}

+ (NSNumber)contentUpdatedDarwinNotificationInSeconds
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(3);

  return v2;
}

+ (NSNumber)contextualEventDaysSinceLastMajorUpdateInSeconds
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(4);

  return v2;
}

+ (NSNumber)holdoutGroup
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(12);

  return v2;
}

+ (NSNumber)requestInterval
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(25);

  return v2;
}

+ (NSNumber)standardNotificationInterval
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(38);

  return v2;
}

+ (NSNumber)userType
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(41);

  return v2;
}

+ (NSDate)lastMajorVersionUpdateDate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1C01254E8(16, &v13);
  if (v14)
  {
    v5 = sub_1C014BD40();
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
    v8 = (*(v7 + 48))(v4, 1, v5);
    v9 = 0;
    if (v8 != 1)
    {
      v10 = sub_1C014BCE0();
      (*(v7 + 8))(v4, v5);
      v9 = v10;
    }
  }

  else
  {
    sub_1C00FC158(&v13);
    v11 = sub_1C014BD40();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v9 = 0;
  }

  return v9;
}

- (TPSDefaultsManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipsDefaultsManager();
  return [(TPSDefaultsManager *)&v3 init];
}

@end