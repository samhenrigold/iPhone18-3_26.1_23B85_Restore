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
  v27.receiver = self;
  v27.super_class = CLMapHelperService;
  v4 = [(CLMapHelperService *)&v27 init];
  if (v4)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"_CLMapHelperService, %p", v3, v4);
    v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v4 + 1) = dispatch_queue_create(v9, v10);
    v11 = objc_alloc(MEMORY[0x1E69A2198]);
    v13 = objc_msgSend_initWithQueue_memoryCacheCountLimit_memoryCacheCostLimit_(v11, v12, *(v4 + 1), 150, 0x200000);
    *(v4 + 2) = v13;
    objc_msgSend_setAllowNetworkTileLoad_(v13, v14, 1, v15);
    objc_msgSend_setFlipNegativeTravelDirectionRoads_(*(v4 + 2), v16, 1, v17);
    objc_msgSend_setPreferStaleData_(*(v4 + 2), v18, 0, v19);
    objc_msgSend_setAllowStaleData_(*(v4 + 2), v20, 1, v21);
    objc_msgSend_setVisitDoubleTravelDirectionRoadsTwice_(*(v4 + 2), v22, 1, v23);
    *(v4 + 3) = 0;
    v4[48] = 0;
    objc_msgSend_setAllowOfflineData_(*(v4 + 2), v24, 1, v25);
    *(v4 + 16) = 0;
    *(v4 + 5) = 0;
    *(v4 + 49) = 0;
  }

  return v4;
}

- (void)clearMemoryAndExitCleanly
{
  NSLog(&cfstr_CltspClmmMaphe.isa, a2);
  v6 = objc_msgSend_releaseOSTransaction(self, v3, v4, v5);

  MEMORY[0x1EEE75030](v6);
}

- (void)fetchGEORoadDataAroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles withReply:(id)reply
{
  if (self->fHasEntitlementForRoadData)
  {
    cyclingCopy = cycling;
    tilesCopy = tiles;
    networkCopy = network;
    longitude = coordinate.longitude;
    latitude = coordinate.latitude;
    if (coordinate.latitude == 0.0 && coordinate.longitude == 0.0)
    {
      NSLog(&cfstr_CltspClmmMaphe_1.isa, a2);
    }

    else
    {
      if (radius >= 0.01 && radius <= 10000.0)
      {
        v19 = objc_autoreleasePoolPush();
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x3052000000;
        v36[3] = sub_19B9C22C4;
        v36[4] = sub_19B9C22D4;
        v36[5] = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = sub_19B9C22E0;
        v35[3] = &unk_1E753E740;
        v35[4] = v36;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = sub_19B9C2740;
        v33[3] = &unk_1E753E768;
        v33[5] = reply;
        v33[6] = v36;
        clearTilesCopy = clearTiles;
        v33[4] = self;
        objc_msgSend_takeOSTransaction(self, v23, v24, v25);
        self->fRoadDataRequestInProgress = 1;
        objc_msgSend_setAllowNetworkTileLoad_(self->fGEOMapFeatureAccess, v26, networkCopy, v27);
        objc_msgSend_setPreferStaleData_(self->fGEOMapFeatureAccess, v28, tilesCopy, v29);
        objc_msgSend_setVisitDoubleTravelDirectionRoadsTwice_(self->fGEOMapFeatureAccess, v30, !cyclingCopy, v31);
        self->fGeoMapFeatureRoadRequest = objc_msgSend_findRoadsNear_radius_handler_completionHandler_(self->fGEOMapFeatureAccess, v32, v35, v33, latitude, longitude, radius);
        _Block_object_dispose(v36, 8);
        objc_autoreleasePoolPop(v19);
        return;
      }

      NSLog(&cfstr_CltspClmmMaphe_2.isa, a2);
    }
  }

  else
  {
    NSLog(&cfstr_CltspClmmMaphe_0.isa, a2);
  }

  v18 = *(reply + 2);

  v18(reply, 0);
}

- (void)fetchGEOBuildingDataAroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius tileSetStyle:(int)style allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles clearTiles:(BOOL)clearTiles withReply:(id)reply
{
  if (self->fHasEntitlementForBuildingData)
  {
    tilesCopy = tiles;
    networkCopy = network;
    v13 = *&style;
    longitude = coordinate.longitude;
    latitude = coordinate.latitude;
    if (coordinate.latitude == 0.0 && coordinate.longitude == 0.0)
    {
      NSLog(&cfstr_CltspClmmMaphe_5.isa, a2);
    }

    else
    {
      if (radius >= 0.01 && radius <= 10000.0)
      {
        v19 = objc_autoreleasePoolPush();
        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x2020000000;
        v35[3] = CFAbsoluteTimeGetCurrent();
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x3052000000;
        v34[3] = sub_19B9C22C4;
        v34[4] = sub_19B9C22D4;
        v34[5] = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v21, v22);
        LODWORD(v32) = v13;
        BYTE4(v32) = clearTiles;
        objc_msgSend_takeOSTransaction(self, v23, v24, v25, MEMORY[0x1E69E9820], 3221225472, sub_19B9C2DFC, &unk_1E753E7B8, self, reply, v34, v35, v32, MEMORY[0x1E69E9820], 3221225472, sub_19B9C2AB0, &unk_1E753E790, v34);
        objc_msgSend_setAllowNetworkTileLoad_(self->fGEOMapFeatureAccess, v26, networkCopy, v27);
        objc_msgSend_setPreferStaleData_(self->fGEOMapFeatureAccess, v28, tilesCopy, v29);
        objc_msgSend_findBuildingsNear_radius_tileSetStyle_handler_completionHandler_(self->fGEOMapFeatureAccess, v30, v13, &v33, &v31, latitude, longitude, radius);
        _Block_object_dispose(v34, 8);
        _Block_object_dispose(v35, 8);
        objc_autoreleasePoolPop(v19);
        return;
      }

      NSLog(&cfstr_CltspClmmMaphe_6.isa, a2);
    }
  }

  else
  {
    NSLog(&cfstr_CltspClmmMaphe_4.isa, a2);
  }

  v18 = *(reply + 2);

  v18(reply, 0);
}

- (void)takeOSTransaction
{
  if (!self->fTransaction)
  {
    NSLog(&cfstr_CltspClmmMaphe_7.isa, a2);
    self->fTransaction = os_transaction_create();
  }
}

- (void)releaseOSTransaction
{
  fGEOMapFeatureAccess = self->fGEOMapFeatureAccess;
  if (fGEOMapFeatureAccess)
  {
    objc_msgSend_clearAllTiles(fGEOMapFeatureAccess, a2, v2, v3);
  }

  if (self->fTransaction)
  {
    NSLog(&cfstr_CltspClmmMaphe_8.isa, a2);
    self->fTransaction = 0;
  }
}

- (void)cancelRoadDataRequest
{
  NSLog(&cfstr_CltspClmmMaphe_9.isa, a2);
  if (self->fRoadDataRequestInProgress)
  {
    if (self->fGeoMapFeatureRoadRequest)
    {
      NSLog(&cfstr_CltspClmmMaphe_11.isa);
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;

      objc_msgSend_cancel(fGeoMapFeatureRoadRequest, v3, v4, v5);
    }
  }

  else
  {
    NSLog(&cfstr_CltspClmmMaphe_10.isa);
  }
}

- (BOOL)getGEOMapFeatureRoadDataAroundLatitude:(double)latitude longitude:(double)longitude inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id)self0
{
  if (!self->fHasEntitlementForRoadData)
  {
    NSLog(&cfstr_CltspClmmMaphe_0.isa, a2);
    return 0;
  }

  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  if (latitude != 0.0 || longitude != 0.0)
  {
    if (radius < 0.01 || radius > 10000.0)
    {
      NSLog(&cfstr_CltspClmmMaphe_2.isa, a2);
      return 0;
    }

    v21 = objc_autoreleasePoolPush();
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = sub_19B9C22C4;
    v45 = sub_19B9C22D4;
    v46 = dispatch_semaphore_create(0);
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    LOBYTE(v35) = clearTiles;
    objc_msgSend_takeOSTransaction(self, v22, v23, v24, MEMORY[0x1E69E9820], 3221225472, sub_19B9C3328, &unk_1E753E7E0, roads, self, &v37, &v41, v35, MEMORY[0x1E69E9820], 3221225472, sub_19B9C3314, &unk_1E753DB80, roads);
    self->fRoadDataRequestInProgress = 1;
    objc_msgSend_setAllowNetworkTileLoad_(self->fGEOMapFeatureAccess, v25, networkCopy, v26);
    objc_msgSend_setPreferStaleData_(self->fGEOMapFeatureAccess, v27, tilesCopy, v28);
    objc_msgSend_setVisitDoubleTravelDirectionRoadsTwice_(self->fGEOMapFeatureAccess, v29, !cyclingCopy, v30);
    objc_msgSend_setFlipNegativeTravelDirectionRoads_(self->fGEOMapFeatureAccess, v31, 1, v32);
    self->fGeoMapFeatureRoadRequest = objc_msgSend_findRoadsNear_radius_handler_completionHandler_(self->fGEOMapFeatureAccess, v33, &v36, &v34, latitude, longitude, radius);
    if (dispatch_semaphore_wait(v42[5], 0xFFFFFFFFFFFFFFFFLL))
    {
      NSLog(&cfstr_ClmmCltspRoads_7.isa);
    }

    else
    {
      if (*(v38 + 24) != 1)
      {
        v19 = 1;
        goto LABEL_16;
      }

      NSLog(&cfstr_ClmmCltspRoads_8.isa);
    }

    v19 = 0;
LABEL_16:
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    objc_autoreleasePoolPop(v21);
    return v19;
  }

  NSLog(&cfstr_CltspClmmMaphe_12.isa, a2);
  return 0;
}

- (BOOL)makeIntersectionQueryCallUsingMapsAPIFor:(id)for allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id *)roads
{
  roadsCopy = roads;
  if (roads)
  {
    cyclingCopy = cycling;
    tilesCopy = tiles;
    networkCopy = network;
    objc_msgSend_removeAllObjects(*roads, a2, for, network);
    if (self->fHasEntitlementForRoadData)
    {
      if (for)
      {
        context = objc_autoreleasePoolPush();
        v47 = 0;
        v48 = &v47;
        v49 = 0x3052000000;
        v50 = sub_19B9C22C4;
        v51 = sub_19B9C22D4;
        v52 = dispatch_semaphore_create(0);
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        v37 = 0;
        v38 = &v37;
        v39 = 0x3052000000;
        v40 = sub_19B9C22C4;
        v41 = sub_19B9C22D4;
        v42 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_19B9C36F8;
        v36[3] = &unk_1E753E740;
        v36[4] = &v37;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = sub_19B9C3774;
        v34[3] = &unk_1E753E808;
        v34[4] = self;
        v34[5] = &v43;
        clearTilesCopy = clearTiles;
        v34[6] = &v47;
        objc_msgSend_takeOSTransaction(self, v18, v19, v20);
        self->fRoadDataRequestInProgress = 1;
        objc_msgSend_setAllowNetworkTileLoad_(self->fGEOMapFeatureAccess, v21, networkCopy, v22);
        objc_msgSend_setVisitDoubleTravelDirectionRoadsTwice_(self->fGEOMapFeatureAccess, v23, !cyclingCopy, v24);
        objc_msgSend_setFlipNegativeTravelDirectionRoads_(self->fGEOMapFeatureAccess, v25, 1, v26);
        objc_msgSend_setPreferStaleData_(self->fGEOMapFeatureAccess, v27, tilesCopy, v28);
        self->fGeoMapFeatureRoadRequest = objc_msgSend_findRoadsFromNextIntersectionOf_handler_completionHandler_(self->fGEOMapFeatureAccess, v29, for, v36, v34);
        if (dispatch_semaphore_wait(v48[5], 0xFFFFFFFFFFFFFFFFLL))
        {
          NSLog(&cfstr_ClmmCltspRoads_9.isa);
        }

        else
        {
          if (*(v44 + 24) != 1)
          {
            objc_msgSend_addObjectsFromArray_(*roadsCopy, v30, v38[5], v31);
            LOBYTE(roadsCopy) = 1;
            goto LABEL_13;
          }

          NSLog(&cfstr_ClmmCltspRoads_10.isa);
        }

        LOBYTE(roadsCopy) = 0;
LABEL_13:
        _Block_object_dispose(&v37, 8);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);
        objc_autoreleasePoolPop(context);
        return roadsCopy;
      }

      NSLog(&cfstr_CltspClmmInput_0.isa);
    }

    else
    {
      NSLog(&cfstr_CltspClmmMaphe_0.isa);
    }

    LOBYTE(roadsCopy) = 0;
  }

  else
  {
    NSLog(&cfstr_CltspClmmInput.isa, a2, for, network, tiles, cycling, clearTiles);
  }

  return roadsCopy;
}

- (BOOL)fetchGEOMapFeatureRoadDataAtIntersectionOf:(id)of allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles returnRoads:(id *)roads
{
  cyclingCopy = cycling;
  clearTilesCopy = clearTiles;
  tilesCopy = tiles;
  v62 = *MEMORY[0x1E69E9840];
  if (!self->fHasEntitlementForRoadData)
  {
    NSLog(&cfstr_CltspClmmMaphe_0.isa, a2, of, network, tiles, cycling, clearTiles, roads);
    return 0;
  }

  if (!of)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(&cfstr_CltspClmmError.isa, a2, 0, network, tiles, cycling, clearTiles, roads);
    }

    return 0;
  }

  if (!*roads)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(&cfstr_CltspClmmError_0.isa, a2, of, network, tiles, cycling, clearTiles, roads);
    }

    return 0;
  }

  networkCopy = network;
  objc_msgSend_removeAllObjects(*roads, a2, of, network);
  v59 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14);
  v45 = objc_msgSend_makeIntersectionQueryCallUsingMapsAPIFor_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_returnRoads_(self, v15, of, networkCopy, tilesCopy, cyclingCopy, clearTilesCopy, &v59);
  if (v45)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v59;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v16, &v55, v61, 16);
    if (v17)
    {
      v21 = v17;
      v22 = *v56;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v56 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = 0;
          v25 = *(*(&v55 + 1) + 8 * i);
          v26 = -1;
          while (objc_msgSend_coordinateCount(v25, v18, v19, v20) - 1 > ++v26)
          {
            v30 = objc_msgSend_coordinates(v25, v27, v28, v29);
            v32 = *(v30 + v24);
            v31 = *(v30 + v24 + 8);
            v36 = objc_msgSend_coordinates(v25, v33, v34, v35) + v24;
            if (vabdd_f64(v32, *(v36 + 16)) < 0.0000001)
            {
              v24 += 16;
              if (vabdd_f64(v31, *(v36 + 24)) < 0.0000001)
              {
                continue;
              }
            }

            if (objc_msgSend_coordinateCount(v25, v18, v19, v20) > 1)
            {
              objc_msgSend_addObject_(*roads, v27, v25, v29);
              goto LABEL_27;
            }

            break;
          }

          if (self->fEnableDebugLogging)
          {
            v37 = objc_msgSend_coordinateCount(v25, v27, v28, v29);
            NSLog(&cfstr_CltspClmmGotRo.isa, v37);
          }

          v54 = objc_msgSend_array(MEMORY[0x1E695DF70], v27, v28, v29);
          if (objc_msgSend_makeIntersectionQueryCallUsingMapsAPIFor_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_returnRoads_(self, v38, v25, networkCopy, tilesCopy, cyclingCopy, clearTilesCopy, &v54))
          {
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v39 = v54;
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v18, &v50, v60, 16);
            if (v40)
            {
              v41 = v40;
              v42 = *v51;
              do
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v51 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  objc_msgSend_addObject_(*roads, v18, *(*(&v50 + 1) + 8 * j), v20);
                }

                v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v18, &v50, v60, 16);
              }

              while (v41);
            }
          }

LABEL_27:
          ;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v55, v61, 16);
      }

      while (v21);
    }
  }

  else if (self->fEnableDebugLogging)
  {
    NSLog(&cfstr_CltspClmmApiCa.isa);
  }

  return v45;
}

- (BOOL)fetchGEORoadDataAtIntersectionOf:(shared_ptr<CLMapRoad>)of allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles ignoreUTurns:(BOOL)turns returnRoads:(void *)roads
{
  v57 = *MEMORY[0x1E69E9840];
  if (!self->fHasEntitlementForRoadData)
  {
    NSLog(&cfstr_CltspClmmMaphe_0.isa, a2, of.var0, of.var1, network, tiles, cycling, clearTiles);
    return 0;
  }

  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  var1 = of.var1;
  var0 = of.var0;
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, of.var0, of.var1);
  v18 = *(*var0 + 144);
  if (v18 == *(*var0 + 136))
  {
    isPedestrianOrCycling_clearTiles_returnRoads = objc_msgSend_getGEOMapFeatureRoadDataAroundLatitude_longitude_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_returnRoads_(self, v16, var1, networkCopy, tilesCopy, cyclingCopy, v17, 0.0, 0.0, 0.5);
  }

  else
  {
    isPedestrianOrCycling_clearTiles_returnRoads = objc_msgSend_getGEOMapFeatureRoadDataAroundLatitude_longitude_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_returnRoads_(self, v16, var1, networkCopy, tilesCopy, cyclingCopy, v17, *(v18 - 16), *(v18 - 8), 0.5);
  }

  if ((isPedestrianOrCycling_clearTiles_returnRoads & 1) == 0)
  {
    NSLog(&cfstr_CltspClmmMaphe_13.isa);
    return 0;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v46, v56, 16);
  if (v24)
  {
    v25 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v17);
        }

        if (objc_msgSend_coordinateCount(*(*(&v46 + 1) + 8 * i), v21, v22, v23))
        {
          sub_19B8F30F0();
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v21, &v46, v56, 16);
    }

    while (v24);
  }

  __p = 0;
  v44 = 0;
  v45 = 0;
  v42 = *(*var0 + 112);
  sub_19B8EB230(&__p, &v42);
  v27 = v50;
  v28 = v51;
  while (v27 != v28)
  {
    if (sub_19B9F6278(*var0, v27))
    {
      v42 = *(*v27 + 112);
      sub_19B8EB230(&__p, &v42);
    }

    v27 += 2;
  }

  v30 = v53;
  for (j = v54; v30 != j; ++v30)
  {
    v32 = *v30;
    if (*v30)
    {
      v33 = *var0;
      if ((*v32 != **var0 || *(v32 + 8) != *(v33 + 8)) && *(v32 + 81) == 1 && *(v32 + 72) <= 1u && *(v33 + 17) == *(v32 + 17) && sub_19B9F6278(*var0, v30) && vabdd_f64(*(v33 + 128), *(v32 + 120)) < 1.0)
      {
        if ((*(v33 + 117) & 1) == 0 && (~*(v33 + 112) & 0x7FFFFFFF) != 0 && (*(v32 + 116) & 1) == 0 && (v34 = *(v32 + 108), (~v34 & 0x7FFFFFFF) != 0))
        {
          for (k = __p; k != v44; ++k)
          {
            if (*k == v34)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
LABEL_36:
          sub_19B8EAB68(turns, v30);
        }
      }
    }
  }

  if (clearTiles)
  {
    v36 = *turns;
    v37 = *(turns + 8);
    while (v36 != v37)
    {
      if (sub_19B9F6128(*v36, var0))
      {
        sub_19B8F1CF8(&v42, (v36 + 16), v37, v36);
        v39 = v38;
        for (m = *(turns + 8); m != v39; m -= 16)
        {
          v41 = *(m - 8);
          if (v41)
          {
            sub_19B8750F8(v41);
          }
        }

        *(turns + 8) = v39;
        break;
      }

      v36 += 16;
    }
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  __p = &v50;
  sub_19B8F0E84(&__p);
  v50 = &v53;
  sub_19B8F0E84(&v50);
  return 1;
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
  v33 = *MEMORY[0x1E69E9840];
  v19 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, d, iD);
  isPedestrianOrCycling_clearTiles_returnRoads = objc_msgSend_getGEOMapFeatureRoadDataAroundLatitude_longitude_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_returnRoads_(self, v20, networkCopy, tilesCopy, cyclingCopy, clearTilesCopy, v19, latitude, longitude, 0.5);
  if (isPedestrianOrCycling_clearTiles_returnRoads)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    isPedestrianOrCycling_clearTiles_returnRoads = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v28, v32, 16);
    v25 = isPedestrianOrCycling_clearTiles_returnRoads;
    if (isPedestrianOrCycling_clearTiles_returnRoads)
    {
      v26 = *v29;
      do
      {
        v27 = 0;
        do
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(v19);
          }

          if (objc_msgSend_coordinateCount(*(*(&v28 + 1) + 8 * v27), v22, v23, v24))
          {
            sub_19B8F30F0();
          }

          ++v27;
        }

        while (v25 != v27);
        isPedestrianOrCycling_clearTiles_returnRoads = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v28, v32, 16);
        v25 = isPedestrianOrCycling_clearTiles_returnRoads;
      }

      while (isPedestrianOrCycling_clearTiles_returnRoads);
    }

    if (self->fEnableDebugLogging)
    {
      NSLog(&cfstr_CltspClmmMaphe_14.isa);
    }
  }

  else if (self->fEnableDebugLogging)
  {
    NSLog(&cfstr_CltspClmmMaphe_13.isa);
  }

  *v18 = 0;
  v18[1] = 0;
  result.var1 = v22;
  result.var0 = isPedestrianOrCycling_clearTiles_returnRoads;
  return result;
}

- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)array
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, array, v3);
  v6 = *array;
  v95 = *(array + 1);
  v96 = v5;
  if (*array != v95)
  {
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v8, **v6, v9);
      objc_msgSend_setValue_forKey_(v7, v11, v10, @"roadID");
      v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, *(*v6 + 5), v13);
      objc_msgSend_setValue_forKey_(v7, v15, v14, @"roadClass");
      v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v16, *(*v6 + 6), v17);
      objc_msgSend_setValue_forKey_(v7, v19, v18, @"formOfWay");
      v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v20, *(*v6 + 18), v21);
      objc_msgSend_setValue_forKey_(v7, v23, v22, @"travelDirection");
      v26 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v24, *(*v6 + 19), v25);
      objc_msgSend_setValue_forKey_(v7, v27, v26, @"rampType");
      v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v28, *(*v6 + 4), v29);
      objc_msgSend_setValue_forKey_(v7, v31, v30, @"speedLimit");
      v34 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v32, *(*v6 + 81), v33);
      objc_msgSend_setValue_forKey_(v7, v35, v34, @"isDrivable");
      v38 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v36, *(*v6 + 80), v37);
      objc_msgSend_setValue_forKey_(v7, v39, v38, @"isRoadPedestrianNavigable");
      v42 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v40, *(*v6 + 18), v41);
      objc_msgSend_setValue_forKey_(v7, v43, v42, @"isTunnel");
      v46 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v44, *(*v6 + 19), v45);
      objc_msgSend_setValue_forKey_(v7, v47, v46, @"isBridge");
      v50 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v48, *(*v6 + 17), v49);
      objc_msgSend_setValue_forKey_(v7, v51, v50, @"isRail");
      v54 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v52, *(*v6 + 27), v53);
      objc_msgSend_setValue_forKey_(v7, v55, v54, @"startJunction");
      v58 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v56, *(*v6 + 28), v57);
      objc_msgSend_setValue_forKey_(v7, v59, v58, @"stopJunction");
      v62 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v60, *(*v6 + 116), v61);
      objc_msgSend_setValue_forKey_(v7, v63, v62, @"startTileBorder");
      v66 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v64, *(*v6 + 117), v65);
      objc_msgSend_setValue_forKey_(v7, v67, v66, @"endTileBorder");
      v70 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v68, *(*v6 + 82), v69);
      objc_msgSend_setValue_forKey_(v7, v71, v70, @"bikeableSide");
      v74 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v72, *(*v6 + 21), v73);
      objc_msgSend_setValue_forKey_(v7, v75, v74, @"walkableSide");
      v76 = *v6;
      v79 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v77, ((*v6)[18] - (*v6)[17]) >> 4, v78);
      objc_msgSend_setValue_forKey_(v7, v80, v79, @"coordinateCount");
      v83 = v76[17];
      v84 = v76[18] - v83;
      if (v84)
      {
        v85 = 0;
        v86 = 0;
        v87 = v84 >> 4;
        do
        {
          v88 = 0;
          if (!v86)
          {
            v88 = (*v6)[15];
          }

          if (v86 == v87 - 1)
          {
            v88 = (*v6)[16];
          }

          v89 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v81, @"%.7lf,%.7lf,%.2lf", v82, *(v83 + v85), *(v83 + v85 + 8), v88);
          v92 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"coord%d", v91, v86);
          objc_msgSend_setValue_forKey_(v7, v93, v89, v92);
          ++v86;
          v83 = v76[17];
          v87 = (v76[18] - v83) >> 4;
          v85 += 16;
        }

        while (v87 > v86);
      }

      objc_msgSend_addObject_(v96, v81, v7, v82);
      v6 += 2;
    }

    while (v6 != v95);
  }

  return v96;
}

- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9
{
  networkCopy = network;
  tilesCopy = tiles;
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v29 = location.longitude;
  v30 = location.latitude;
  if (cycling)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(&cfstr_CltspClmmMaphe_15.isa, a2);
    }

    (*(reply + 2))(reply, 0);
  }

  objc_msgSend_takeOSTransaction(self, a2, d, iD);
  HIBYTE(v35) = clearTiles;
  LOBYTE(v35) = cycling;
  isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery = objc_msgSend_internalConstructVehicularRouteFromLocation_roadID_clRoadID_projection_toLocation_toRoadID_toCLRoadID_toProjection_maxRouteLength_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery_(self, v32, d, iD, roadID, lRoadID, networkCopy, tilesCopy, v30, v29, projection, latitude, longitude, toProjection, length, time, v35, data, query);
  v34 = *(reply + 2);

  v34(reply, isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery);
}

- (id)internalConstructVehicularRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8
{
  tilesCopy = tiles;
  networkCopy = network;
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v37[18] = *MEMORY[0x1E69E9840];
  self->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 0;
  v37[0] = 0;
  objc_msgSend_getCLMapRoadForLocation_roadID_clRoadID_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_gmfRoad_(self, a2, d, iD, network, tiles, cycling, clearTiles, location.latitude, location.longitude, v37);
  v35 = 0;
  objc_msgSend_getCLMapRoadForLocation_roadID_clRoadID_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_gmfRoad_(self, v25, roadID, lRoadID, networkCopy, tilesCopy, cycling, clearTiles, latitude, longitude, &v35);
  v26 = v36;
  if (v36)
  {
    v27 = v34;
    if (v34)
    {
      if (v37[0] && v35)
      {
        memset(v33, 0, sizeof(v33));
        if (sub_19B9F6278(v36, &v34))
        {
          sub_19B8EAB68(v33, &v36);
          sub_19B8EAB68(v33, &v34);
        }

        else
        {
          if (!sub_19B9F6278(v27, &v36))
          {
            if (*v26 != *v27 || v26[1] != v27[1])
            {
              operator new();
            }

            sub_19B8EAB68(v33, &v36);
            if (self->fEnableDebugLogging)
            {
              NSLog(&cfstr_CltspCvrConstr_0.isa);
            }

            goto LABEL_14;
          }

          sub_19B8EAB68(v33, &v34);
          sub_19B8EAB68(v33, &v36);
        }

        if (self->fEnableDebugLogging)
        {
          NSLog(&cfstr_CltspCvrConstr.isa);
        }

LABEL_14:
        v30 = objc_msgSend_convertCLMapRoadVectorToRoadDictionaryArray_(self, v28, v33, v29);
        *&v32 = v33;
        sub_19B8F0E84(&v32);
        goto LABEL_15;
      }
    }
  }

  if (self->fEnableDebugLogging)
  {
    NSLog(&cfstr_CltspCvrMaphel.isa);
  }

  v30 = 0;
LABEL_15:
  if (*(&v34 + 1))
  {
    sub_19B8750F8(*(&v34 + 1));
  }

  if (*(&v36 + 1))
  {
    sub_19B8750F8(*(&v36 + 1));
  }

  return v30;
}

- (void)stopConstructRouteFromLocation
{
  self->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 1;
  if (self->fEnableDebugLogging)
  {
    NSLog(&cfstr_CltspClmmMaphe_16.isa, a2);
  }
}

@end