@interface FamilySettingsDestinations
+ (id)urlDestinationTo:(int64_t)to error:(id *)error;
+ (id)urlDestinationTo:(int64_t)to params:(id)params error:(id *)error;
- (FamilySettingsDestinations)init;
@end

@implementation FamilySettingsDestinations

+ (id)urlDestinationTo:(int64_t)to error:(id *)error
{
  v5 = sub_1B715DB20();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  static FamilySettingsDestinations.urlDestination(to:)(to);
  v9 = sub_1B715DAE0();
  (*(v6 + 8))(v8, v5);

  return v9;
}

+ (id)urlDestinationTo:(int64_t)to params:(id)params error:(id *)error
{
  v6 = sub_1B715DB20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B715DFE0();
  static FamilySettingsDestinations.urlDestination(to:params:)(to, v10, v9);

  v11 = sub_1B715DAE0();
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (FamilySettingsDestinations)init
{
  v3.receiver = self;
  v3.super_class = FamilySettingsDestinations;
  return [(FamilySettingsDestinations *)&v3 init];
}

@end