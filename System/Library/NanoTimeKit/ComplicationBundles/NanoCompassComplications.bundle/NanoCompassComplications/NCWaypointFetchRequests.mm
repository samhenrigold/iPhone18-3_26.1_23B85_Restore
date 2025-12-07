@interface NCWaypointFetchRequests
+ (id)fetchRequestForAllWaypoints;
+ (id)fetchRequestForCompassWaypoints;
+ (id)fetchRequestForCompassWaypointsWithAltitude:(BOOL)altitude;
+ (id)fetchRequestForCountOfMissingElevationForWaypointsOfType:(int64_t)type;
+ (id)fetchRequestForCountOfWaypointsInElevationTableOfType:(int64_t)type;
+ (id)fetchRequestForDatabaseWaypoints;
+ (id)fetchRequestForEnabledCompassWaypoints;
+ (id)fetchRequestForWaypointContainingKeyword:(id)keyword;
+ (id)fetchRequestForWaypointWithUUID:(id)d;
+ (id)fetchRequestForWaypointsOfTypes:(id)types withAltitude:(BOOL)altitude;
@end

@implementation NCWaypointFetchRequests

+ (id)fetchRequestForAllWaypoints
{
  v2 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v3 = objc_alloc(MEMORY[0x277CCAC98]);
  v5 = objc_msgSend_initWithKey_ascending_(v3, v4, @"timeOfCreation", 0);
  v7 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v6, v5);
  objc_msgSend_setSortDescriptors_(v2, v8, v7);

  return v2;
}

+ (id)fetchRequestForCompassWaypoints
{
  v2 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"type == %d or type == %d", 4, 0);
  objc_msgSend_setPredicate_(v2, v5, v4);

  v6 = objc_alloc(MEMORY[0x277CCAC98]);
  v8 = objc_msgSend_initWithKey_ascending_(v6, v7, @"timeOfCreation", 0);
  v10 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v9, v8);
  objc_msgSend_setSortDescriptors_(v2, v11, v10);

  return v2;
}

+ (id)fetchRequestForDatabaseWaypoints
{
  v2 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"type == %d or type == %d", 2, 7);
  objc_msgSend_setPredicate_(v2, v5, v4);

  v6 = objc_alloc(MEMORY[0x277CCAC98]);
  v8 = objc_msgSend_initWithKey_ascending_(v6, v7, @"timeOfCreation", 0);
  v10 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v9, v8);
  objc_msgSend_setSortDescriptors_(v2, v11, v10);

  return v2;
}

+ (id)fetchRequestForEnabledCompassWaypoints
{
  v2 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"enabled == YES and (type == %d or type == %d)", 4, 0);
  objc_msgSend_setPredicate_(v2, v5, v4);

  v6 = objc_alloc(MEMORY[0x277CCAC98]);
  v8 = objc_msgSend_initWithKey_ascending_(v6, v7, @"label", 1);
  v10 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v9, v8);
  objc_msgSend_setSortDescriptors_(v2, v11, v10);

  return v2;
}

+ (id)fetchRequestForWaypointWithUUID:(id)d
{
  v3 = MEMORY[0x277CBE428];
  dCopy = d;
  v6 = objc_msgSend_fetchRequestWithEntityName_(v3, v5, @"Waypoint");
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, @"uuid == %@", dCopy);

  objc_msgSend_setPredicate_(v6, v9, v8);
  objc_msgSend_setFetchLimit_(v6, v10, 1);

  return v6;
}

+ (id)fetchRequestForWaypointContainingKeyword:(id)keyword
{
  v3 = MEMORY[0x277CBE428];
  keywordCopy = keyword;
  v6 = objc_msgSend_fetchRequestWithEntityName_(v3, v5, @"Waypoint");
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, @"label CONTAINS[cd] %@", keywordCopy);

  objc_msgSend_setPredicate_(v6, v9, v8);

  return v6;
}

+ (id)fetchRequestForCountOfMissingElevationForWaypointsOfType:(int64_t)type
{
  v4 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"type == %d and altitudePopulated == 0", type);
  objc_msgSend_setPredicate_(v4, v7, v6);

  return v4;
}

+ (id)fetchRequestForCountOfWaypointsInElevationTableOfType:(int64_t)type
{
  v4 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"type == %d", type);
  objc_msgSend_setPredicate_(v4, v7, v6);

  return v4;
}

+ (id)fetchRequestForCompassWaypointsWithAltitude:(BOOL)altitude
{
  altitudeCopy = altitude;
  v4 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], a2, @"Waypoint");
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"(type == %d or type == %d) and altitudePopulated == %d", 4, 0, altitudeCopy);
  objc_msgSend_setPredicate_(v4, v7, v6);

  return v4;
}

+ (id)fetchRequestForWaypointsOfTypes:(id)types withAltitude:(BOOL)altitude
{
  altitudeCopy = altitude;
  typesCopy = types;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v6, @"Waypoint");
  v9 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v8, @"type IN %@ and altitudePopulated == %d", typesCopy, altitudeCopy);

  objc_msgSend_setPredicate_(v7, v10, v9);

  return v7;
}

@end