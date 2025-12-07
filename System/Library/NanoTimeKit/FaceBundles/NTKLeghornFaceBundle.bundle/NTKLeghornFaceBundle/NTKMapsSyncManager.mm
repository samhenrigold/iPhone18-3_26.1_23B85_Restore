@interface NTKMapsSyncManager
+ (BOOL)_mapsSyncObjectSet:(id)set containsItemWithMuid:(id)muid;
+ (NTKMapsSyncManager)sharedManager;
+ (id)_fetchInStore:(id)store poiFilter:(id)filter coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSCollectionPlaceItemsInMSCollectionInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter;
+ (id)_fetchMSCollectionPlaceItemsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSCollectionsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSFavoriteItemInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSUserRoutesInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_filterMapItems:(id)items bySearchRadius:(double)radius fromCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)_filterRequiredFromMSCollections:(id)collections;
- (NSArray)waypoints;
- (NTKMapsSyncManager)init;
- (id)_query;
- (id)_wrapperForPOI:(id)i;
- (void)_runQuery:(id)query completion:(id)completion;
- (void)_setQuery:(id)query;
- (void)_setWaypoints:(id)waypoints;
- (void)_updateSubscriber;
- (void)fetchUserGuidesWithCompletion:(id)completion;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
- (void)startUpdatingDelegate:(id)delegate;
- (void)stopUpdating;
- (void)storeDidChange:(id)change;
@end

@implementation NTKMapsSyncManager

- (NTKMapsSyncManager)init
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = NTKMapsSyncManager;
  v4 = [(NTKMapsSyncManager *)&v17 init];
  if (v4)
  {
    v5 = objc_msgSend_sharedStore(MEMORY[0x277D26670], v2, v3);
    store = v4->_store;
    v4->_store = v5;

    v7 = dispatch_get_global_queue(2, 0);
    workQueue = v4->_workQueue;
    v4->_workQueue = v7;

    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v18, 4);
    objc_msgSend_setStoreSubscriptionTypes_(v4, v11, v10);

    v14 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v12, v13);
    styleAttributesCache = v4->_styleAttributesCache;
    v4->_styleAttributesCache = v14;
  }

  return v4;
}

+ (NTKMapsSyncManager)sharedManager
{
  if (qword_27E1DF670 != -1)
  {
    sub_23BEE7568();
  }

  v3 = qword_27E1DF668;

  return v3;
}

- (id)_wrapperForPOI:(id)i
{
  iCopy = i;
  v8 = objc_msgSend_ntk_styleAttributes(iCopy, v5, v6);
  if (v8)
  {
    styleAttributesCache = self->_styleAttributesCache;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    objc_msgSend_imageAndColorsForStyleAttributes_image_glyphColor_fillColor_(styleAttributesCache, v7, v8, &v23, &v22, &v21);
    v10 = v23;
    v11 = v22;
    v12 = v21;
    v15 = v12;
    if (v11)
    {
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_12:
      v15 = objc_msgSend_ntk_defaultFillColor(iCopy, v13, v14);
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v20 = NTKFoghornFaceBundleLogObject(0, v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE757C(iCopy, v20);
    }

    v15 = 0;
    v10 = 0;
  }

  v11 = objc_msgSend_ntk_defaultGlyphColor(iCopy, v13, v14);
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_13:
  v10 = objc_msgSend_ntk_defaultIconImage(iCopy, v13, v14);
LABEL_5:
  v16 = [NTKMapsPOIWrapper alloc];
  inited = objc_msgSend_initWithmapsPOI_image_glyphColor_fillColor_(v16, v17, iCopy, v10, v11, v15);

  return inited;
}

- (void)storeDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v6 = NTKFoghornFaceBundleLogObject(changeCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NTKMapsSyncManager storeDidChange:]";
    v13 = 2112;
    v14 = changeCopy;
    _os_log_impl(&dword_23BEB1000, v6, OS_LOG_TYPE_DEFAULT, "%s: types = %@", &v11, 0x16u);
  }

  v9 = objc_msgSend__query(self, v7, v8);
  objc_msgSend__runQuery_completion_(self, v10, v9, 0);
}

- (id)_query
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentQuery;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setQuery:(id)query
{
  queryCopy = query;
  obj = self;
  objc_sync_enter(obj);
  currentQuery = obj->_currentQuery;
  obj->_currentQuery = queryCopy;

  objc_sync_exit(obj);
}

- (NSArray)waypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastWaypoints = selfCopy->_lastWaypoints;
  selfCopy->_lastWaypoints = waypointsCopy;

  objc_sync_exit(selfCopy);

  objc_msgSend__updateSubscriber(selfCopy, v7, v8);
}

- (void)_updateSubscriber
{
  delegate = self->_delegate;
  if (delegate)
  {
    currentQuery = self->_currentQuery;
    v4 = delegate;
    v11 = objc_msgSend_poiFilter(currentQuery, v5, v6);
    v9 = objc_msgSend_includedCategories(v11, v7, v8);
    objc_msgSend_storeDidChangeWithCategories_(v4, v10, v9);
  }
}

- (void)startUpdatingDelegate:(id)delegate
{
  objc_storeStrong(&self->_delegate, delegate);
  delegateCopy = delegate;
  objc_msgSend_subscribe_(self->_store, v5, self);
}

- (void)stopUpdating
{
  objc_msgSend_unsubscribe_(self->_store, a2, self);
  delegate = self->_delegate;
  self->_delegate = 0;
}

+ (id)_filterMapItems:(id)items bySearchRadius:(double)radius fromCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v38.latitude = latitude;
  v38.longitude = longitude;
  v9 = CLLocationCoordinate2DIsValid(v38);
  if (radius <= 0.0 || !v9)
  {
    v11 = itemsCopy;
  }

  else
  {
    v12 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = itemsCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v35, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          objc_msgSend_ntk_latitude(v21, v16, v17, v31);
          v23 = v22;
          objc_msgSend_ntk_longitude(v21, v24, v25);
          v27 = CLLocationCoordinate2DMake(v23, v26);
          if (ntk_CLLocationCoordinate2DDistanceToCoordinate(latitude, longitude, v27.latitude, v27.longitude) <= radius)
          {
            objc_msgSend_addObject_(v12, v16, v21);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v35, 16);
      }

      while (v18);
    }

    v11 = objc_msgSend_copy(v12, v28, v29);
  }

  return v11;
}

+ (id)_filterRequiredFromMSCollections:(id)collections
{
  v23 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = collectionsCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ((objc_msgSend_ntk_isLegacyFavoritesCollection(v13, v8, v9, v18) & 1) == 0)
        {
          objc_msgSend_addObject_(v4, v8, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v10);
  }

  v16 = objc_msgSend_copy(v4, v14, v15);

  return v16;
}

+ (id)_fetchMSCollectionPlaceItemsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D26610];
  storeCopy = store;
  v11 = [v9 alloc];
  v13 = objc_msgSend_initWithStore_(v11, v12, storeCopy);

  v14 = MEMORY[0x277D26680];
  v16 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v15, 6);
  v29[0] = v16;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v29, 1);
  v20 = objc_msgSend_queryPredicateWithFormat_argumentArray_(v14, v19, @"(type & %@) == 0", v18);

  v22 = objc_msgSend_ntk_newest100WithPredicate_(MEMORY[0x277D26678], v21, v20);
  v28 = 0;
  v24 = objc_msgSend_fetchSyncWithOptions_error_(v13, v23, v22, &v28);

  v26 = objc_msgSend__filterMapItems_bySearchRadius_fromCoordinate_(self, v25, v24, radius, latitude, longitude);

  return v26;
}

+ (id)_fetchMSCollectionsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  v5 = MEMORY[0x277D26618];
  storeCopy = store;
  v7 = [v5 alloc];
  v9 = objc_msgSend_initWithStore_(v7, v8, storeCopy);

  v12 = objc_msgSend_ntk_newest100(MEMORY[0x277D26678], v10, v11);
  v19 = 0;
  v14 = objc_msgSend_fetchSyncWithOptions_error_(v9, v13, v12, &v19);

  v15 = objc_opt_class();
  v17 = objc_msgSend__filterRequiredFromMSCollections_(v15, v16, v14);

  return v17;
}

+ (id)_fetchMSCollectionPlaceItemsInMSCollectionInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v81 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  filterCopy = filter;
  v13 = objc_opt_new();
  v64 = storeCopy;
  v15 = objc_msgSend__fetchMSCollectionsInStore_coordinate_radius_(self, v14, storeCopy, latitude, longitude, radius);
  v83.latitude = latitude;
  v83.longitude = longitude;
  v16 = CLLocationCoordinate2DIsValid(v83);
  v17 = 0;
  if (radius > 0.0 && v16)
  {
    v18 = objc_alloc(MEMORY[0x277CE41F8]);
    v17 = objc_msgSend_initWithLatitude_longitude_(v18, v19, v20, latitude, longitude);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v15;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v75, v80, 16);
  if (v68)
  {
    v66 = filterCopy;
    v67 = *v76;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v76 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v75 + 1) + 8 * i);
        v28 = objc_msgSend_title(v25, v22, v23);
        if (!filterCopy || objc_msgSend_includesCategory_named_(filterCopy, v26, 2, v28))
        {
          v69 = v28;
          v70 = i;
          v29 = objc_msgSend_fetchPlaces(v25, v26, v27);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v71, v79, 16);
          if (v31)
          {
            v32 = v31;
            v33 = *v72;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v72 != v33)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v71 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = v35;
                  v40 = v37;
                  if (!v17 || (objc_msgSend_latitude(v37, v38, v39), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend_doubleValue(v41, v42, v43), v45 = v44, v41, objc_msgSend_longitude(v40, v46, v47), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend_doubleValue(v48, v49, v50), v52 = v51, v48, v53 = objc_alloc(MEMORY[0x277CE41F8]), v56 = objc_msgSend_initWithLatitude_longitude_(v53, v54, v55, v45, v52), objc_msgSend_distanceFromLocation_(v17, v57, v56), v59 = v58, v56, v59 <= radius))
                  {
                    objc_msgSend_addObject_(v13, v38, v40);
                  }
                }
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v36, &v71, v79, 16);
            }

            while (v32);
          }

          filterCopy = v66;
          v28 = v69;
          i = v70;
        }
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v75, v80, 16);
    }

    while (v68);
  }

  v62 = objc_msgSend_copy(v13, v60, v61);

  return v62;
}

+ (id)_fetchMSUserRoutesInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = MEMORY[0x277D26660];
  storeCopy = store;
  v11 = [v9 alloc];
  v13 = objc_msgSend_initWithStore_(v11, v12, storeCopy);

  v16 = objc_msgSend_ntk_newest100(MEMORY[0x277D26678], v14, v15);
  v22 = 0;
  v18 = objc_msgSend_fetchSyncWithOptions_error_(v13, v17, v16, &v22);

  v20 = objc_msgSend__filterMapItems_bySearchRadius_fromCoordinate_(self, v19, v18, radius, latitude, longitude);

  return v20;
}

+ (id)_fetchMSFavoriteItemInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = MEMORY[0x277D26628];
  storeCopy = store;
  v11 = [v9 alloc];
  v13 = objc_msgSend_initWithStore_(v11, v12, storeCopy);

  v15 = objc_msgSend_mapsFavoritesPredicateWithHidden_includeNearbyTransit_(MEMORY[0x277D26680], v14, 0, 0);
  v17 = objc_msgSend_ntk_newest100WithPredicate_(MEMORY[0x277D26678], v16, v15);
  v23 = 0;
  v19 = objc_msgSend_fetchSyncWithOptions_error_(v13, v18, v17, &v23);

  v21 = objc_msgSend__filterMapItems_bySearchRadius_fromCoordinate_(self, v20, v19, radius, latitude, longitude);

  return v21;
}

+ (BOOL)_mapsSyncObjectSet:(id)set containsItemWithMuid:(id)muid
{
  v29 = *MEMORY[0x277D85DE8];
  setCopy = set;
  muidCopy = muid;
  v9 = muidCopy;
  if (muidCopy && objc_msgSend_unsignedLongLongValue(muidCopy, v7, v8))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = setCopy;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
    if (v12)
    {
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v17 = v15;
          v20 = objc_msgSend_muid(v17, v18, v19, v24);
          v22 = v20;
          if (v20 && (objc_msgSend_isEqualToNumber_(v20, v21, v9) & 1) != 0)
          {

            LOBYTE(v12) = 1;
            goto LABEL_18;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v24, v28, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

+ (id)_fetchInStore:(id)store poiFilter:(id)filter coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v216 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  filterCopy = filter;
  v11 = objc_opt_new();
  v182 = filterCopy;
  if (objc_msgSend_includesCategory_(filterCopy, v12, 2))
  {
    v14 = objc_opt_class();
    v16 = objc_msgSend__fetchMSCollectionPlaceItemsInMSCollectionInStore_coordinate_radius_poiFilter_(v14, v15, storeCopy, filterCopy, latitude, longitude, radius);
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v202, v215, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v203;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v203 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v202 + 1) + 8 * i);
          v25 = objc_msgSend_customName(v24, v19, v20, v182);
          v28 = v25;
          if (v25)
          {
            v29 = v25;
          }

          else
          {
            v29 = objc_msgSend_mapItemName(v24, v26, v27);
          }

          v30 = v29;

          v33 = objc_msgSend_latitude(v24, v31, v32);
          objc_msgSend_doubleValue(v33, v34, v35);
          v37 = v36;

          v40 = objc_msgSend_longitude(v24, v38, v39);
          objc_msgSend_doubleValue(v40, v41, v42);
          v44 = v43;

          v47 = objc_msgSend_type(v24, v45, v46);
          v48 = v47;
          v50 = NTKFoghornFaceBundleLogObject(v47, v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v211 = 2112;
            v212 = v30;
            v213 = 1024;
            *v214 = v48;
            *&v214[4] = 2048;
            *&v214[6] = v37;
            *&v214[14] = 2048;
            *&v214[16] = v44;
            _os_log_impl(&dword_23BEB1000, v50, OS_LOG_TYPE_DEFAULT, "%s: MapsGuidePlace Waypoint = %@[0x%u] @ %f, %f", buf, 0x30u);
          }

          objc_msgSend_addObject_(v11, v51, v24);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v202, v215, 16);
      }

      while (v21);
    }

    filterCopy = v182;
  }

  v52 = objc_msgSend_includesCategory_(filterCopy, v13, 256, v182);
  v54 = objc_msgSend_includesCategory_(filterCopy, v53, 8);
  v56 = v54;
  v186 = v52;
  if ((v52 & 1) != 0 || v54)
  {
    objc_msgSend__fetchMSCollectionPlaceItemsInStore_coordinate_radius_(self, v55, storeCopy, latitude, longitude, radius);
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    obj = v201 = 0u;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v198, v208, 16);
    if (!v58)
    {
      goto LABEL_45;
    }

    v61 = v58;
    v62 = *v199;
    while (1)
    {
      v63 = 0;
      do
      {
        if (*v199 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v198 + 1) + 8 * v63);
        v65 = objc_msgSend_customName(v64, v59, v60);
        v68 = v65;
        if (v65)
        {
          v69 = v65;
        }

        else
        {
          v69 = objc_msgSend_mapItemName(v64, v66, v67);
        }

        v70 = v69;

        v73 = objc_msgSend_latitude(v64, v71, v72);
        objc_msgSend_doubleValue(v73, v74, v75);
        v77 = v76;

        v80 = objc_msgSend_longitude(v64, v78, v79);
        objc_msgSend_doubleValue(v80, v81, v82);
        v84 = v83;

        v87 = objc_msgSend_type(v64, v85, v86);
        v89 = v87;
        if (v56)
        {
          v90 = objc_msgSend_containsObject_(v11, v88, v64);
          v91 = v90;
          v93 = NTKFoghornFaceBundleLogObject(v90, v92);
          v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
          if (v91)
          {
            if (v94)
            {
              *buf = 136316162;
              v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
              v211 = 2112;
              v212 = v70;
              v213 = 1024;
              *v214 = v89;
              *&v214[4] = 2048;
              *&v214[6] = v77;
              *&v214[14] = 2048;
              *&v214[16] = v84;
              v95 = v93;
              v96 = "%s: MapsPlace Waypoint = %@[0x%u] @ %f, %f (already found in MapsGuide)";
              goto LABEL_29;
            }

            goto LABEL_30;
          }

          if (v94)
          {
            *buf = 136316162;
            v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v211 = 2112;
            v212 = v70;
            v213 = 1024;
            *v214 = v89;
            *&v214[4] = 2048;
            *&v214[6] = v77;
            *&v214[14] = 2048;
            *&v214[16] = v84;
            v101 = v93;
            v102 = "%s: MapsPlace Waypoint = %@[0x%u] @ %f, %f";
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v186 && (v87 & 1) != 0)
        {
          v97 = objc_msgSend_containsObject_(v11, v88, v64);
          v98 = v97;
          v93 = NTKFoghornFaceBundleLogObject(v97, v99);
          v100 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
          if (v98)
          {
            if (v100)
            {
              *buf = 136316162;
              v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
              v211 = 2112;
              v212 = v70;
              v213 = 1024;
              *v214 = v89;
              *&v214[4] = 2048;
              *&v214[6] = v77;
              *&v214[14] = 2048;
              *&v214[16] = v84;
              v95 = v93;
              v96 = "%s: MapsFavorite Waypoint = %@[0x%u] @ %f, %f (already found in MapsGuide)";
LABEL_29:
              _os_log_impl(&dword_23BEB1000, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 0x30u);
            }

LABEL_30:

            goto LABEL_40;
          }

          if (v100)
          {
            *buf = 136316162;
            v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v211 = 2112;
            v212 = v70;
            v213 = 1024;
            *v214 = v89;
            *&v214[4] = 2048;
            *&v214[6] = v77;
            *&v214[14] = 2048;
            *&v214[16] = v84;
            v101 = v93;
            v102 = "%s: MapsFavorite Waypoint = %@[0x%u] @ %f, %f";
LABEL_38:
            _os_log_impl(&dword_23BEB1000, v101, OS_LOG_TYPE_DEFAULT, v102, buf, 0x30u);
          }

LABEL_39:

          objc_msgSend_addObject_(v11, v103, v64);
        }

LABEL_40:

        ++v63;
      }

      while (v61 != v63);
      v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v198, v208, 16);
      v61 = v104;
      if (!v104)
      {
LABEL_45:

        filterCopy = v183;
        break;
      }
    }
  }

  v105 = objc_msgSend_includesCategory_(filterCopy, v55, 4);
  v107 = objc_msgSend_includesCategory_(filterCopy, v106, 32);
  v109 = v107;
  v187 = v105;
  if ((v105 & 1) != 0 || v107)
  {
    objc_msgSend__fetchMSFavoriteItemInStore_coordinate_radius_(self, v108, storeCopy, latitude, longitude, radius);
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    obja = v197 = 0u;
    v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v110, &v194, v207, 16);
    if (!v111)
    {
      goto LABEL_71;
    }

    v114 = v111;
    v115 = *v195;
    while (1)
    {
      for (j = 0; j != v114; ++j)
      {
        if (*v195 != v115)
        {
          objc_enumerationMutation(obja);
        }

        v117 = *(*(&v194 + 1) + 8 * j);
        v118 = objc_msgSend_customName(v117, v112, v113);
        v121 = v118;
        if (v118)
        {
          v122 = v118;
        }

        else
        {
          v122 = objc_msgSend_mapItemName(v117, v119, v120);
        }

        v123 = v122;

        v128 = objc_msgSend_favoriteType(v117, v124, v125);
        if (v128 == 4)
        {
          if ((v109 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (!v187)
        {
          goto LABEL_69;
        }

        v129 = v109;
        v130 = objc_msgSend_latitude(v117, v126, v127);
        objc_msgSend_doubleValue(v130, v131, v132);
        v134 = v133;

        v137 = objc_msgSend_longitude(v117, v135, v136);
        objc_msgSend_doubleValue(v137, v138, v139);
        v141 = v140;

        v144 = objc_msgSend_muid(v117, v142, v143);
        v146 = v144;
        if (v144 && (v144 = objc_msgSend__mapsSyncObjectSet_containsItemWithMuid_(self, v145, v11, v144), v144))
        {
          v147 = NTKFoghornFaceBundleLogObject(v144, v145);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v211 = 2112;
            v212 = v123;
            v213 = 1024;
            *v214 = v128;
            *&v214[4] = 2048;
            *&v214[6] = v134;
            *&v214[14] = 2048;
            *&v214[16] = v141;
            _os_log_impl(&dword_23BEB1000, v147, OS_LOG_TYPE_DEFAULT, "%s: MapsPinned Waypoint = %@[%u] @ %f, %f (already found in MapsGuide or MapsPlace)", buf, 0x30u);
          }
        }

        else
        {
          v148 = NTKFoghornFaceBundleLogObject(v144, v145);
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v211 = 2112;
            v212 = v123;
            v213 = 1024;
            *v214 = v128;
            *&v214[4] = 2048;
            *&v214[6] = v134;
            *&v214[14] = 2048;
            *&v214[16] = v141;
            _os_log_impl(&dword_23BEB1000, v148, OS_LOG_TYPE_DEFAULT, "%s: MapsPinned Waypoint = %@[%u] @ %f, %f", buf, 0x30u);
          }

          objc_msgSend_addObject_(v11, v149, v117);
        }

        v109 = v129;

LABEL_69:
      }

      v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v112, &v194, v207, 16);
      if (!v114)
      {
LABEL_71:

        filterCopy = v183;
        break;
      }
    }
  }

  if (objc_msgSend_includesCategory_(filterCopy, v108, 16))
  {
    v152 = objc_msgSend__fetchMSUserRoutesInStore_coordinate_radius_(self, v150, storeCopy, latitude, longitude, radius);
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v153, &v190, v206, 16);
    if (v154)
    {
      v157 = v154;
      v158 = *v191;
      do
      {
        for (k = 0; k != v157; ++k)
        {
          if (*v191 != v158)
          {
            objc_enumerationMutation(v152);
          }

          v160 = *(*(&v190 + 1) + 8 * k);
          v161 = objc_msgSend_customName(v160, v155, v156);
          v164 = objc_msgSend_originLatitude(v160, v162, v163);
          objc_msgSend_doubleValue(v164, v165, v166);
          v168 = v167;

          v171 = objc_msgSend_originLongitude(v160, v169, v170);
          objc_msgSend_doubleValue(v171, v172, v173);
          v175 = v174;

          v178 = NTKFoghornFaceBundleLogObject(v176, v177);
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v210 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v211 = 2112;
            v212 = v161;
            v213 = 2048;
            *v214 = v168;
            *&v214[8] = 2048;
            *&v214[10] = v175;
            _os_log_impl(&dword_23BEB1000, v178, OS_LOG_TYPE_DEFAULT, "%s: MapsRoute Waypoint = %@ @ %f, %f", buf, 0x2Au);
          }

          objc_msgSend_addObject_(v11, v179, v160);
        }

        v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v155, &v190, v206, 16);
      }

      while (v157);
    }

    filterCopy = v183;
  }

  v180 = objc_msgSend_allObjects(v11, v150, v151);

  return v180;
}

- (void)fetchUserGuidesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BEE6548;
  v7[3] = &unk_278BA1C40;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_runQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  objc_msgSend__setQuery_(self, v8, queryCopy);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEE6720;
  block[3] = &unk_278BA1070;
  objc_copyWeak(&v15, &location);
  v13 = queryCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = queryCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  locationCopy = location;
  filterCopy = filter;
  completionCopy = completion;
  v14 = completionCopy;
  if ((locationCopy || radius <= 0.0) && (radius <= 0.0 || radius >= 50.0))
  {
    v15 = objc_msgSend_copyIncludingCategories_(filterCopy, v13, 318);
    v18 = objc_msgSend__query(self, v16, v17);
    objc_msgSend_coordinate(locationCopy, v19, v20);
    v22 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v21, v15);
    if (objc_msgSend_matchesQuery_(v18, v23, v22))
    {
      if (v14)
      {
        v14[2](v14, 0);
      }
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_23BEE6AB8;
      v25[3] = &unk_278BA1098;
      v26 = v14;
      objc_msgSend__runQuery_completion_(self, v24, v22, v25);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end