@interface CLMapHelperService
- (BOOL)fetchGEOMapFeatureRoadDataAtIntersectionOf:(id)of allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id *)roads;
- (BOOL)fetchGEORoadDataAtIntersectionOf:(shared_ptr<CLMapRoad>)of allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles ignoreUTurns:(BOOL)turns returnRoads:(void *)roads;
- (BOOL)getGEOMapFeatureRoadDataAroundLatitude:(double)latitude longitude:(double)longitude inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id)self0;
- (BOOL)makeIntersectionQueryCallUsingMapsAPIFor:(id)for allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id *)roads;
- (CLMapHelperService)init;
- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)array;
- (id)internalConstructVehicularRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8;
- (shared_ptr<CLMapRoad>)getCLMapRoadForLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles gmfRoad:(id *)self0;
- (void)cancelRoadDataRequest;
- (void)clearMemoryAndExitCleanly;
- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9;
- (void)fetchGEOBuildingDataAroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius tileSetStyle:(int)style allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles clearTiles:(BOOL)clearTiles withReply:(id)reply;
- (void)fetchGEORoadDataAroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles withReply:(id)reply;
- (void)releaseOSTransaction;
- (void)stopConstructRouteFromLocation;
- (void)takeOSTransaction;
@end

@implementation CLMapHelperService

- (CLMapHelperService)init
{
  v13.receiver = self;
  v13.super_class = CLMapHelperService;
  v2 = [(CLMapHelperService *)&v13 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"_CLMapHelperService, %p", v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [[GEOMapFeatureAccess alloc] initWithQueue:v2->_queue memoryCacheCountLimit:150 memoryCacheCostLimit:0x200000];
    fGEOMapFeatureAccess = v2->fGEOMapFeatureAccess;
    v2->fGEOMapFeatureAccess = v8;

    [v2->fGEOMapFeatureAccess setAllowNetworkTileLoad:1];
    [v2->fGEOMapFeatureAccess setFlipNegativeTravelDirectionRoads:1];
    [v2->fGEOMapFeatureAccess setPreferStaleData:0];
    [v2->fGEOMapFeatureAccess setAllowStaleData:1];
    [v2->fGEOMapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:1];
    fGeoMapFeatureRoadRequest = v2->fGeoMapFeatureRoadRequest;
    v2->fGeoMapFeatureRoadRequest = 0;

    v2->fRoadDataRequestInProgress = 0;
    [v2->fGEOMapFeatureAccess setAllowOfflineData:1];
    v2->fEnableDebugLogging = 0;
    *&v2->fHasEntitlementForRoadData = 0;
    fTransaction = v2->fTransaction;
    v2->fTransaction = 0;

    v2->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 0;
  }

  return v2;
}

- (void)clearMemoryAndExitCleanly
{
  NSLog(@"CLTSP,CLMM,MapHelperService CleanExit", a2);
  releaseOSTransaction = [(CLMapHelperService *)self releaseOSTransaction];

  _xpc_transaction_exit_clean(releaseOSTransaction);
}

- (void)fetchGEORoadDataAroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles withReply:(id)reply
{
  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  replyCopy = reply;
  if (!self->fHasEntitlementForRoadData)
  {
    v18 = @"CLTSP,CLMM,MaphelperService,application missing road data entitlement";
LABEL_6:
    NSLog(&v18->isa);
    goto LABEL_7;
  }

  if (latitude != 0.0 || longitude != 0.0)
  {
    v18 = @"CLTSP,CLMM,MaphelperService,invalid radius or over the max allowed radius for road data query";
    if (radius >= 0.01 && radius <= 10000.0)
    {
      v19 = objc_autoreleasePoolPush();
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = sub_100008320;
      v29[4] = sub_100008330;
      v30 = +[NSMutableArray array];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100008338;
      v28[3] = &unk_100014588;
      v28[4] = v29;
      v20 = objc_retainBlock(v28);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000895C;
      v24[3] = &unk_1000145B0;
      v25 = replyCopy;
      v26 = v29;
      clearTilesCopy = clearTiles;
      v24[4] = self;
      v21 = objc_retainBlock(v24);
      [(CLMapHelperService *)self takeOSTransaction];
      self->fRoadDataRequestInProgress = 1;
      [self->fGEOMapFeatureAccess setAllowNetworkTileLoad:networkCopy];
      [self->fGEOMapFeatureAccess setPreferStaleData:tilesCopy];
      [self->fGEOMapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:!cyclingCopy];
      radius = [self->fGEOMapFeatureAccess findRoadsNear:v20 radius:v21 handler:latitude completionHandler:longitude, radius];
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;
      self->fGeoMapFeatureRoadRequest = radius;

      _Block_object_dispose(v29, 8);
      objc_autoreleasePoolPop(v19);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NSLog(@"CLTSP,CLMM,MaphelperService,invalid null-island coordinates for road data query");
LABEL_7:
  (*(replyCopy + 2))(replyCopy, 0);
LABEL_8:
}

- (void)fetchGEOBuildingDataAroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius tileSetStyle:(int)style allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles clearTiles:(BOOL)clearTiles withReply:(id)reply
{
  tilesCopy = tiles;
  networkCopy = network;
  v12 = *&style;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  replyCopy = reply;
  if (!self->fHasEntitlementForBuildingData)
  {
    v18 = @"CLTSP,CLMM,MaphelperService,application missing building data entitlement";
LABEL_6:
    NSLog(&v18->isa);
    goto LABEL_7;
  }

  if (latitude != 0.0 || longitude != 0.0)
  {
    v18 = @"CLTSP,CLMM,MaphelperService,invalid radius or over the max allowed radius for building data query";
    if (radius >= 0.01 && radius <= 10000.0)
    {
      v19 = objc_autoreleasePoolPush();
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x2020000000;
      v36[3] = CFAbsoluteTimeGetCurrent();
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = sub_100008320;
      v34[4] = sub_100008330;
      v35 = +[NSMutableArray array];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100008D60;
      v33[3] = &unk_1000145D8;
      v33[4] = v34;
      v20 = objc_retainBlock(v33);
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_10000922C;
      v26 = &unk_100014600;
      v31 = v12;
      v29 = v34;
      v30 = v36;
      clearTilesCopy = clearTiles;
      selfCopy = self;
      v28 = replyCopy;
      v21 = objc_retainBlock(&v23);
      [(CLMapHelperService *)self takeOSTransaction:v23];
      [self->fGEOMapFeatureAccess setAllowNetworkTileLoad:networkCopy];
      [self->fGEOMapFeatureAccess setPreferStaleData:tilesCopy];
      radius = [self->fGEOMapFeatureAccess findBuildingsNear:v12 radius:v20 tileSetStyle:v21 handler:latitude completionHandler:longitude, radius];

      _Block_object_dispose(v34, 8);
      _Block_object_dispose(v36, 8);
      objc_autoreleasePoolPop(v19);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NSLog(@"CLTSP,CLMM,MaphelperService,invalid coordinates for building data query");
LABEL_7:
  (*(replyCopy + 2))(replyCopy, 0);
LABEL_8:
}

- (void)takeOSTransaction
{
  if (!self->fTransaction)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,Taking OS Transaction", a2);
    self->fTransaction = os_transaction_create();

    _objc_release_x1();
  }
}

- (void)releaseOSTransaction
{
  fGEOMapFeatureAccess = self->fGEOMapFeatureAccess;
  if (fGEOMapFeatureAccess)
  {
    [fGEOMapFeatureAccess clearAllTiles];
  }

  if (self->fTransaction)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,Releasing OS Transaction", a2);
    fTransaction = self->fTransaction;
    self->fTransaction = 0;
  }
}

- (void)cancelRoadDataRequest
{
  NSLog(@"CLTSP,CLMM,MaphelperService,cancelRoadDataRequest", a2);
  if (self->fRoadDataRequestInProgress)
  {
    if (self->fGeoMapFeatureRoadRequest)
    {
      NSLog(@"CLTSP,CLMM,MaphelperService,cancelRoadDataRequest processed");
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;

      [(GEOMapFeatureAccessRequest *)fGeoMapFeatureRoadRequest cancel];
    }
  }

  else
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,cancelRoadDataRequest,query not in progress");
  }
}

- (BOOL)getGEOMapFeatureRoadDataAroundLatitude:(double)latitude longitude:(double)longitude inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id)self0
{
  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  roadsCopy = roads;
  if (!self->fHasEntitlementForRoadData)
  {
    v19 = @"CLTSP,CLMM,MaphelperService,application missing road data entitlement";
    goto LABEL_6;
  }

  if (latitude != 0.0 || longitude != 0.0)
  {
    v19 = @"CLTSP,CLMM,MaphelperService,invalid radius or over the max allowed radius for road data query";
    if (radius >= 0.01 && radius <= 10000.0)
    {
      context = objc_autoreleasePoolPush();
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_100008320;
      v47 = sub_100008330;
      v48 = dispatch_semaphore_create(0);
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100009828;
      v37[3] = &unk_100014628;
      v22 = roadsCopy;
      v38 = v22;
      v23 = objc_retainBlock(v37);
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100009890;
      v31 = &unk_100014650;
      clearTilesCopy = clearTiles;
      v32 = v22;
      selfCopy = self;
      v34 = &v39;
      v35 = &v43;
      v24 = objc_retainBlock(&v28);
      [(CLMapHelperService *)self takeOSTransaction];
      self->fRoadDataRequestInProgress = 1;
      [self->fGEOMapFeatureAccess setAllowNetworkTileLoad:networkCopy];
      [self->fGEOMapFeatureAccess setPreferStaleData:tilesCopy];
      [self->fGEOMapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:!cyclingCopy];
      [self->fGEOMapFeatureAccess setFlipNegativeTravelDirectionRoads:1];
      radius = [self->fGEOMapFeatureAccess findRoadsNear:v23 radius:v24 handler:latitude completionHandler:longitude, radius];
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;
      self->fGeoMapFeatureRoadRequest = radius;

      if (dispatch_semaphore_wait(v44[5], 0xFFFFFFFFFFFFFFFFLL))
      {
        NSLog(@"CLMM,CLTSP,Roads,queryForRoadsWithinDistance,semaphore timed out", context, v28, v29, v30, v31);
      }

      else
      {
        if (*(v40 + 24) != 1)
        {
          v20 = 1;
          goto LABEL_16;
        }

        NSLog(@"CLMM,CLTSP,Roads,queryForRoadsWithinDistance returned error", context, v28, v29, v30, v31);
      }

      v20 = 0;
LABEL_16:

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);

      objc_autoreleasePoolPop(context);
      goto LABEL_8;
    }

LABEL_6:
    NSLog(&v19->isa);
    goto LABEL_7;
  }

  NSLog(@"CLTSP,CLMM,MaphelperService,invalid coordinates for road data query");
LABEL_7:
  v20 = 0;
LABEL_8:

  return v20;
}

- (BOOL)makeIntersectionQueryCallUsingMapsAPIFor:(id)for allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id *)roads
{
  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  forCopy = for;
  if (roads)
  {
    [*roads removeAllObjects];
    if (self->fHasEntitlementForRoadData)
    {
      v15 = forCopy;
      v16 = v15;
      if (!v15)
      {
        NSLog(@"CLTSP,CLMM,input road is nil");
        v21 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v25 = v15;
      context = objc_autoreleasePoolPush();
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = sub_100008320;
      v43 = sub_100008330;
      v44 = dispatch_semaphore_create(0);
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_100008320;
      v33 = sub_100008330;
      v34 = +[NSMutableArray array];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100009D4C;
      v28[3] = &unk_100014588;
      v28[4] = &v29;
      v17 = objc_retainBlock(v28);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100009DEC;
      v26[3] = &unk_100014678;
      v26[4] = self;
      v26[5] = &v35;
      clearTilesCopy = clearTiles;
      v26[6] = &v39;
      v18 = objc_retainBlock(v26);
      v16 = v25;
      [(CLMapHelperService *)self takeOSTransaction];
      self->fRoadDataRequestInProgress = 1;
      [self->fGEOMapFeatureAccess setAllowNetworkTileLoad:networkCopy];
      [self->fGEOMapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:!cyclingCopy];
      [self->fGEOMapFeatureAccess setFlipNegativeTravelDirectionRoads:1];
      [self->fGEOMapFeatureAccess setPreferStaleData:tilesCopy];
      v19 = [self->fGEOMapFeatureAccess findRoadsFromNextIntersectionOf:v25 handler:v17 completionHandler:v18];
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;
      self->fGeoMapFeatureRoadRequest = v19;

      if (dispatch_semaphore_wait(v40[5], 0xFFFFFFFFFFFFFFFFLL))
      {
        NSLog(@"CLMM,CLTSP,Roads,findRoadsFromNextIntersectionOf,semaphore timed out", context);
      }

      else
      {
        if (*(v36 + 24) != 1)
        {
          [*roads addObjectsFromArray:{v30[5], context}];
          v21 = 1;
          goto LABEL_13;
        }

        NSLog(@"CLMM,CLTSP,Roads,findRoadsFromNextIntersectionOf returned error", context);
      }

      v21 = 0;
LABEL_13:

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);

      objc_autoreleasePoolPop(contexta);
      goto LABEL_14;
    }

    NSLog(@"CLTSP,CLMM,MaphelperService,application missing road data entitlement");
  }

  else
  {
    NSLog(@"CLTSP,CLMM,input retrun road array is nil");
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (BOOL)fetchGEOMapFeatureRoadDataAtIntersectionOf:(id)of allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id *)roads
{
  clearTilesCopy = clearTiles;
  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  ofCopy = of;
  v14 = ofCopy;
  if (!self->fHasEntitlementForRoadData)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,application missing road data entitlement");
LABEL_32:
    v37 = 0;
    goto LABEL_33;
  }

  if (!ofCopy)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(@"CLTSP,CLMM,Error,failed to get intersection data as input road is nil");
    }

    goto LABEL_32;
  }

  if (!*roads)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(@"CLTSP,CLMM,Error,intersection data object is nil");
    }

    goto LABEL_32;
  }

  [*roads removeAllObjects];
  v35 = v14;
  v15 = +[NSMutableArray array];
  v52 = v15;
  v37 = [(CLMapHelperService *)self makeIntersectionQueryCallUsingMapsAPIFor:v14 allowNetwork:networkCopy preferCachedTiles:tilesCopy isPedestrianOrCycling:cyclingCopy clearTiles:clearTilesCopy returnRoads:&v52];
  v36 = v52;

  if (v37)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v36;
    v16 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v16)
    {
      v41 = *v49;
      v38 = tilesCopy;
      do
      {
        v42 = v16;
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v18 = 0;
          v19 = *(*(&v48 + 1) + 8 * i);
          v20 = -1;
          while ([v19 coordinateCount] - 1 > ++v20)
          {
            coordinates = [v19 coordinates];
            v23 = *&coordinates[v18];
            v22 = *&coordinates[v18 + 8];
            v24 = ([v19 coordinates] + v18);
            if (vabdd_f64(v23, v24[2]) < 0.0000001)
            {
              v18 += 16;
              if (vabdd_f64(v22, v24[3]) < 0.0000001)
              {
                continue;
              }
            }

            if ([v19 coordinateCount] > 1)
            {
              [*roads addObject:v19];
              goto LABEL_28;
            }

            break;
          }

          if (self->fEnableDebugLogging)
          {
            NSLog(@"CLTSP,CLMM,got road with duplicate coordinates,coordinateCount,%d", [v19 coordinateCount]);
          }

          v25 = +[NSMutableArray array];
          v47 = v25;
          v26 = [(CLMapHelperService *)self makeIntersectionQueryCallUsingMapsAPIFor:v19 allowNetwork:networkCopy preferCachedTiles:tilesCopy isPedestrianOrCycling:cyclingCopy clearTiles:clearTilesCopy returnRoads:&v47];
          v27 = v47;

          if (v26)
          {
            v28 = cyclingCopy;
            v29 = clearTilesCopy;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v30 = v27;
            v31 = [v30 countByEnumeratingWithState:&v43 objects:v53 count:16];
            if (v31)
            {
              v32 = *v44;
              do
              {
                for (j = 0; j != v31; j = j + 1)
                {
                  if (*v44 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  [*roads addObject:*(*(&v43 + 1) + 8 * j)];
                }

                v31 = [v30 countByEnumeratingWithState:&v43 objects:v53 count:16];
              }

              while (v31);
            }

            tilesCopy = v38;
            clearTilesCopy = v29;
            cyclingCopy = v28;
          }

LABEL_28:
          ;
        }

        v16 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v16);
    }
  }

  else if (self->fEnableDebugLogging)
  {
    NSLog(@"CLTSP,CLMM,API call to ge intersections failed");
  }

  v14 = v35;
LABEL_33:

  return v37;
}

- (BOOL)fetchGEORoadDataAtIntersectionOf:(shared_ptr<CLMapRoad>)of allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles ignoreUTurns:(BOOL)turns returnRoads:(void *)roads
{
  if (self->fHasEntitlementForRoadData)
  {
    cyclingCopy = cycling;
    tilesCopy = tiles;
    networkCopy = network;
    var1 = of.var1;
    var0 = of.var0;
    v43 = +[NSMutableArray array];
    v16 = *(*var0 + 144);
    if (v16 == *(*var0 + 136))
    {
      v17 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v17 = *(v16 - 16);
      v18 = *(v16 - 8);
    }

    v20 = v43;
    v19 = [(CLMapHelperService *)self getGEOMapFeatureRoadDataAroundLatitude:var1 longitude:networkCopy inRadius:tilesCopy allowNetwork:cyclingCopy preferCachedTiles:v43 isPedestrianOrCycling:v17 clearTiles:v18 returnRoads:0.5];
    if (v19)
    {
      clearTilesCopy = clearTiles;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v52 = 0;
      v53 = 0;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v21 = v43;
      v22 = [v21 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v22)
      {
        v23 = *v49;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v49 != v23)
            {
              objc_enumerationMutation(v21);
            }

            if ([*(*(&v48 + 1) + 8 * i) coordinateCount])
            {
              sub_10000C7F0();
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v22);
      }

      __p = 0;
      v46 = 0;
      v47 = 0;
      v44 = *(*var0 + 112);
      sub_10000A82C(&__p, &v44);
      v26 = v52;
      v25 = v53;
      while (v26 != v25)
      {
        if (CLMapRoad::stopIsConnectedToStart(*var0, v26))
        {
          v44 = *(*v26 + 112);
          sub_10000A82C(&__p, &v44);
        }

        v26 += 2;
      }

      v27 = v55;
      for (j = v56; v27 != j; ++v27)
      {
        v29 = *v27;
        if (*v27)
        {
          v30 = *var0;
          if ((*v29 != **var0 || *(v29 + 8) != *(v30 + 8)) && *(v29 + 81) == 1 && *(v29 + 72) <= 1u && *(v30 + 17) == *(v29 + 17))
          {
            if (CLMapRoad::stopIsConnectedToStart(v30, v27))
            {
              v31 = *var0;
              v32 = *v27;
              if (vabdd_f64(*(*var0 + 128), *(*v27 + 120)) < 1.0)
              {
                if ((*(v31 + 117) & 1) == 0 && (~*(v31 + 112) & 0x7FFFFFFF) != 0 && (*(v32 + 116) & 1) == 0 && (v33 = *(v32 + 108), (~v33 & 0x7FFFFFFF) != 0))
                {
                  for (k = __p; k != v46; ++k)
                  {
                    if (*k == v33)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
LABEL_35:
                  sub_100001408(turns, v27);
                }
              }
            }
          }
        }
      }

      if (clearTilesCopy)
      {
        v35 = *turns;
        if (*turns != *(turns + 8))
        {
          v36 = -v35;
          while (!CLMapRoad::isUTurnRoadOf(*v35, var0))
          {
            v35 += 2;
            v36 -= 16;
            if (v35 == *(turns + 8))
            {
              goto LABEL_55;
            }
          }

          sub_100001CB4(&v44, (16 - v36), *(turns + 8), -v36);
          v38 = v37;
          for (m = *(turns + 8); m != v38; m -= 16)
          {
            v40 = *(m - 8);
            if (v40)
            {
              sub_100001F6C(v40);
            }
          }

          *(turns + 8) = v38;
        }
      }

LABEL_55:
      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }

      __p = &v52;
      sub_100001D20(&__p);
      v52 = &v55;
      sub_100001D20(&v52);
      v20 = v43;
    }

    else
    {
      NSLog(@"CLTSP,CLMM,MaphelperService,getGEOMapFeatureRoadDataAroundCoordinate failed");
    }
  }

  else
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,application missing road data entitlement", a2, of.var0, of.var1, network, tiles, cycling, clearTiles);
    return 0;
  }

  return v19;
}

- (shared_ptr<CLMapRoad>)getCLMapRoadForLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles gmfRoad:(id *)self0
{
  clearTilesCopy = clearTiles;
  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  longitude = location.longitude;
  latitude = location.latitude;
  v18 = v10;
  v19 = +[NSMutableArray array];
  if ([(CLMapHelperService *)self getGEOMapFeatureRoadDataAroundLatitude:networkCopy longitude:tilesCopy inRadius:cyclingCopy allowNetwork:clearTilesCopy preferCachedTiles:v19 isPedestrianOrCycling:latitude clearTiles:longitude returnRoads:0.5])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v21)
    {
      v22 = *v27;
      do
      {
        v23 = 0;
        do
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v20);
          }

          if ([*(*(&v26 + 1) + 8 * v23) coordinateCount])
          {
            sub_10000C7F0();
          }

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v21);
    }

    if (self->fEnableDebugLogging)
    {
      NSLog(@"CLTSP,CLMM,MaphelperService,getCLMapRoadDataFromTripSegmentRoad,failed to find clMapRoad");
    }
  }

  else if (self->fEnableDebugLogging)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,getGEOMapFeatureRoadDataAroundCoordinate failed");
  }

  *v18 = 0;
  v18[1] = 0;

  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)array
{
  v4 = +[NSMutableArray array];
  v5 = *array;
  v35 = *(array + 1);
  v36 = v4;
  if (*array != v35)
  {
    do
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = [NSNumber numberWithUnsignedLongLong:**v5];
      [v6 setValue:v7 forKey:@"roadID"];

      v8 = [NSNumber numberWithUnsignedInt:*(*v5 + 5)];
      [v6 setValue:v8 forKey:@"roadClass"];

      v9 = [NSNumber numberWithUnsignedInt:*(*v5 + 6)];
      [v6 setValue:v9 forKey:@"formOfWay"];

      v10 = [NSNumber numberWithUnsignedInt:*(*v5 + 18)];
      [v6 setValue:v10 forKey:@"travelDirection"];

      v11 = [NSNumber numberWithUnsignedInt:*(*v5 + 19)];
      [v6 setValue:v11 forKey:@"rampType"];

      v12 = [NSNumber numberWithUnsignedInt:*(*v5 + 4)];
      [v6 setValue:v12 forKey:@"speedLimit"];

      v13 = [NSNumber numberWithBool:*(*v5 + 81)];
      [v6 setValue:v13 forKey:@"isDrivable"];

      v14 = [NSNumber numberWithBool:*(*v5 + 80)];
      [v6 setValue:v14 forKey:@"isRoadPedestrianNavigable"];

      v15 = [NSNumber numberWithBool:*(*v5 + 18)];
      [v6 setValue:v15 forKey:@"isTunnel"];

      v16 = [NSNumber numberWithBool:*(*v5 + 19)];
      [v6 setValue:v16 forKey:@"isBridge"];

      v17 = [NSNumber numberWithBool:*(*v5 + 17)];
      [v6 setValue:v17 forKey:@"isRail"];

      v18 = [NSNumber numberWithUnsignedInt:*(*v5 + 27)];
      [v6 setValue:v18 forKey:@"startJunction"];

      v19 = [NSNumber numberWithUnsignedInt:*(*v5 + 28)];
      [v6 setValue:v19 forKey:@"stopJunction"];

      v20 = [NSNumber numberWithBool:*(*v5 + 116)];
      [v6 setValue:v20 forKey:@"startTileBorder"];

      v21 = [NSNumber numberWithBool:*(*v5 + 117)];
      [v6 setValue:v21 forKey:@"endTileBorder"];

      v22 = [NSNumber numberWithUnsignedInt:*(*v5 + 82)];
      [v6 setValue:v22 forKey:@"bikeableSide"];

      v23 = [NSNumber numberWithUnsignedInt:*(*v5 + 21)];
      [v6 setValue:v23 forKey:@"walkableSide"];

      v24 = *v5;
      v25 = [NSNumber numberWithUnsignedInt:((*v5)[18] - (*v5)[17]) >> 4];
      [v6 setValue:v25 forKey:@"coordinateCount"];

      v26 = v24[17];
      v27 = v24[18] - v26;
      if (v27)
      {
        v28 = 0;
        v29 = 0;
        v30 = v27 >> 4;
        do
        {
          v31 = 0;
          if (!v29)
          {
            v31 = (*v5)[15];
          }

          if (v29 == v30 - 1)
          {
            v31 = (*v5)[16];
          }

          v32 = [NSString stringWithFormat:@"%.7lf, %.7lf, %.2lf", *(v26 + v28), *(v26 + v28 + 8), v31];
          v33 = [NSString stringWithFormat:@"coord%d", v29];
          [v6 setValue:v32 forKey:v33];

          ++v29;
          v26 = v24[17];
          v30 = (v24[18] - v26) >> 4;
          v28 += 16;
        }

        while (v30 > v29);
      }

      [v36 addObject:v6];

      v5 += 2;
    }

    while (v5 != v35);
  }

  return v36;
}

- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9
{
  HIDWORD(v36) = tiles;
  networkCopy = network;
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v30 = location.longitude;
  v31 = location.latitude;
  dataCopy = data;
  replyCopy = reply;
  if (cycling)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(@"CLTSP,CLMM,MaphelperService,function call does not support constructing route for pedestrian/cycling use case");
    }

    replyCopy[2](replyCopy, 0);
  }

  [(CLMapHelperService *)self takeOSTransaction];
  LOBYTE(v36) = query;
  LOWORD(v35) = __PAIR16__(clearTiles, cycling);
  v34 = [(CLMapHelperService *)self internalConstructVehicularRouteFromLocation:d roadID:iD clRoadID:roadID projection:lRoadID toLocation:networkCopy toRoadID:HIDWORD(v36) toCLRoadID:v31 toProjection:v30 maxRouteLength:projection allowNetwork:latitude preferCachedTiles:longitude isPedestrianOrCycling:toProjection clearTiles:length iOSTime:time familiarityData:v35 useMapsAPIForIntersectionQuery:dataCopy, v36];
  (replyCopy)[2](replyCopy, v34);
}

- (id)internalConstructVehicularRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8
{
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v20 = location.longitude;
  v21 = location.latitude;
  dataCopy = data;
  self->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 0;
  v32 = 0;
  objc_msgSend_getCLMapRoadForLocation_roadID_clRoadID_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_gmfRoad_(self, v21, v20, &v32);
  v27 = v32;
  v30 = 0;
  objc_msgSend_getCLMapRoadForLocation_roadID_clRoadID_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_gmfRoad_(self, latitude, longitude, &v30);
  v26 = v30;
  if (v33 && v31 && v27 && v26)
  {
    memset(v29, 0, sizeof(v29));
    if (CLMapRoad::stopIsConnectedToStart(v33, &v31))
    {
      sub_100001408(v29, &v33);
      sub_100001408(v29, &v31);
    }

    else
    {
      if (!CLMapRoad::stopIsConnectedToStart(v31, &v33))
      {
        if (*v33 != *v31 || *(v33 + 8) != *(v31 + 8))
        {
          operator new();
        }

        sub_100001408(v29, &v33);
        if (self->fEnableDebugLogging)
        {
          NSLog(@"CLTSP,CVR,constructed,start road is same as destination road");
        }

        goto LABEL_14;
      }

      sub_100001408(v29, &v31);
      sub_100001408(v29, &v33);
    }

    if (self->fEnableDebugLogging)
    {
      NSLog(@"CLTSP,CVR,constructed,start road and destination road are neighbors");
    }

LABEL_14:
    v23 = [(CLMapHelperService *)self convertCLMapRoadVectorToRoadDictionaryArray:v29];
    v28 = v29;
    sub_100001D20(&v28);
    goto LABEL_15;
  }

  if (self->fEnableDebugLogging)
  {
    NSLog(@"CLTSP,CVR,MaphelperService,invalid start or end road");
  }

  v23 = 0;
LABEL_15:
  if (*(&v31 + 1))
  {
    sub_100001F6C(*(&v31 + 1));
  }

  if (*(&v33 + 1))
  {
    sub_100001F6C(*(&v33 + 1));
  }

  return v23;
}

- (void)stopConstructRouteFromLocation
{
  self->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 1;
  if (self->fEnableDebugLogging)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,stopConstructRouteFromLocation", a2);
  }
}

@end