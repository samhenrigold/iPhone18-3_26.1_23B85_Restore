@interface PCNewsSegmentation
+ (NSNumber)ageGroup;
+ (NSNumber)gender;
+ (id)_classProperties;
+ (void)_updateGenderAndAgeGroupValues;
+ (void)addClientToSegments:(id)segments replaceExisting:(BOOL)existing privateSegment:(BOOL)segment;
@end

@implementation PCNewsSegmentation

+ (NSNumber)ageGroup
{
  [self _updateGenderAndAgeGroupValues];
  _classProperties = [self _classProperties];
  v4 = [_classProperties objectForKey:@"ageGroup"];

  return v4;
}

+ (void)_updateGenderAndAgeGroupValues
{
  v7 = objc_alloc_init(PCSupportRequester);
  fetchGenderAndAgeGroupData = [(PCSupportRequester *)v7 fetchGenderAndAgeGroupData];
  v4 = [fetchGenderAndAgeGroupData objectForKey:@"gender"];
  v5 = [fetchGenderAndAgeGroupData objectForKey:@"ageGroup"];
  _classProperties = [self _classProperties];
  [_classProperties setValue:v4 forKey:@"gender"];
  [_classProperties setValue:v5 forKey:@"ageGroup"];
}

+ (id)_classProperties
{
  if (qword_280C4F9C0 != -1)
  {
    sub_260F1E36C();
  }

  v3 = qword_280C4F9C8;

  return v3;
}

+ (NSNumber)gender
{
  [self _updateGenderAndAgeGroupValues];
  _classProperties = [self _classProperties];
  v4 = [_classProperties objectForKey:@"gender"];

  return v4;
}

+ (void)addClientToSegments:(id)segments replaceExisting:(BOOL)existing privateSegment:(BOOL)segment
{
  segmentCopy = segment;
  existingCopy = existing;
  segmentsCopy = segments;
  v8 = objc_alloc_init(PCSupportRequester);
  [(PCSupportRequester *)v8 addClientToSegments:segmentsCopy replaceExisting:existingCopy privateSegment:segmentCopy];
}

@end