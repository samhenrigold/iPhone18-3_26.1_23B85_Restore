@interface CRAccNavRouteGuidance
+ (id)loadingForComponent:(id)component sourceName:(id)name sourceSupported:(BOOL)supported;
+ (id)resetForComponent:(id)component;
- (ACCNavigationRouteGuidanceUpdateInfo)routeGuidance;
- (BOOL)hasCurrentLaneGuidanceIndex;
- (NSArray)currentManeuverIndexes;
@end

@implementation CRAccNavRouteGuidance

- (ACCNavigationRouteGuidanceUpdateInfo)routeGuidance
{
  [objc_opt_class() ACCNavigationInfoClass];
  accNavInfo = [(CRAccNavInfo *)self accNavInfo];
  if (accNavInfo && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = accNavInfo;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)currentManeuverIndexes
{
  v2 = [(CRAccNavInfo *)self valueForInfoType:13];
  objc_opt_class();
  v3 = v2;
  if (!v3 || (v4 = v3, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (BOOL)hasCurrentLaneGuidanceIndex
{
  v2 = [(CRAccNavInfo *)self valueForInfoType:16];
  v3 = v2 != 0;

  return v3;
}

+ (id)resetForComponent:(id)component
{
  componentCopy = component;
  v5 = objc_opt_new();
  [v5 setInfo:1 data:&unk_283821E58];
  v6 = [[self alloc] initWithComponent:componentCopy accNavInfo:v5];

  return v6;
}

+ (id)loadingForComponent:(id)component sourceName:(id)name sourceSupported:(BOOL)supported
{
  supportedCopy = supported;
  nameCopy = name;
  componentCopy = component;
  v10 = objc_opt_new();
  [v10 setInfo:1 data:&unk_283821E70];
  [v10 setInfo:19 data:nameCopy];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:supportedCopy];
  [v10 setInfo:20 data:v11];

  v12 = [[self alloc] initWithComponent:componentCopy accNavInfo:v10];

  return v12;
}

@end