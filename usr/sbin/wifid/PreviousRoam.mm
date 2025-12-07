@interface PreviousRoam
+ (id)roamWithBssid:(id)bssid andReason:(unsigned int)reason;
+ (void)initialize;
- (PreviousRoam)initWithBssid:(id)bssid andReason:(unsigned int)reason;
- (void)dealloc;
@end

@implementation PreviousRoam

+ (void)initialize
{
  v2 = objc_alloc_init(NSDateFormatter);
  qword_100298480 = v2;

  [v2 setDateFormat:@"HH:mm:ss"];
}

+ (id)roamWithBssid:(id)bssid andReason:(unsigned int)reason
{
  v4 = [[self alloc] initWithBssid:bssid andReason:*&reason];

  return v4;
}

- (PreviousRoam)initWithBssid:(id)bssid andReason:(unsigned int)reason
{
  v4 = *&reason;
  v8.receiver = self;
  v8.super_class = PreviousRoam;
  v6 = [(PreviousRoam *)&v8 init];
  [(PreviousRoam *)v6 setBssid:bssid];
  [(PreviousRoam *)v6 setReason:[WiFiRoamManager stringRepresentationWithReason:v4]];
  [(PreviousRoam *)v6 setTimestamp:+[NSDate date]];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PreviousRoam;
  [(PreviousRoam *)&v3 dealloc];
}

@end