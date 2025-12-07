@interface CoreLocation_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation CoreLocation_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1CD224;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9280 != -1)
  {
    dispatch_once(&qword_2806D9280, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2CF40 forKeyedSubscript:@"CLLocationCoordinate2DMake"];
  [contextCopy setObject:&unk_287F2CF40 forKeyedSubscript:@"CLLocationCoordinate"];
  [contextCopy setObject:&unk_287F2CF60 forKeyedSubscript:@"CLLocationCoordinate2DIsValid"];
  v4 = [contextCopy objectForKeyedSubscript:@"CLLocationCoordinate"];
  [v4 setObject:&unk_287F2CF80 forKeyedSubscript:@"latitude"];

  v5 = [contextCopy objectForKeyedSubscript:@"CLLocationCoordinate"];
  [v5 setObject:&unk_287F2CFA0 forKeyedSubscript:@"longitude"];

  [contextCopy setObject:&unk_287F2CFC0 forKeyedSubscript:@"CLLocation"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE4210]];
  v6 = *MEMORY[0x277CD4630];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CD4630]];

  [constantsCopy defineProperty:@"kCLLocationAccuracyBestForNavigation" descriptor:dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE4208]];
  [dictionary setObject:v7 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCLLocationAccuracyBest" descriptor:dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE4250]];
  [dictionary setObject:v8 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCLLocationAccuracyNearestTenMeters" descriptor:dictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE4228]];
  [dictionary setObject:v9 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCLLocationAccuracyHundredMeters" descriptor:dictionary];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE4238]];
  [dictionary setObject:v10 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCLLocationAccuracyKilometer" descriptor:dictionary];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE4270]];
  [dictionary setObject:v11 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCLLocationAccuracyThreeKilometers" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D60 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"kCLAuthorizationStatusNotDetermined" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D78 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"kCLAuthorizationStatusRestricted" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D90 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"kCLAuthorizationStatusDenied" descriptor:dictionary];
  [dictionary setObject:&unk_287F55DA8 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"kCLAuthorizationStatusAuthorizedAlways" descriptor:dictionary];
  [dictionary setObject:&unk_287F55DC0 forKeyedSubscript:v6];
  [constantsCopy defineProperty:@"kCLAuthorizationStatusAuthorizedWhenInUse" descriptor:dictionary];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE41E0]];
  [dictionary setObject:v12 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"CLLocationDistanceMax" descriptor:dictionary];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE41E8]];
  [dictionary setObject:v13 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"CLTimeIntervalMax" descriptor:dictionary];
  v14 = [MEMORY[0x277CCAE60] valueWithMKCoordinate:{*MEMORY[0x277CE4278], *(MEMORY[0x277CE4278] + 8)}];
  [dictionary setObject:v14 forKeyedSubscript:v6];

  [constantsCopy defineProperty:@"kCLLocationCoordinate2DInvalid" descriptor:dictionary];
}

@end