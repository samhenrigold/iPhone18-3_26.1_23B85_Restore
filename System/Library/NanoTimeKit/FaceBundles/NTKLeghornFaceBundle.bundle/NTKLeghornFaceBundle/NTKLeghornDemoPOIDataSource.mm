@interface NTKLeghornDemoPOIDataSource
+ (id)_filterWaypoints:(id)waypoints userGuides:(id)guides location:(id)location radius:(double)radius poiFilter:(id)filter;
+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location filterBy:(id)by filterRadius:(double)radius ensureNorthPOI:(BOOL)i useMetric:(BOOL)metric userGuides:(id *)self0;
+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location useMetric:(BOOL)metric userGuides:(id *)guides;
- (NSArray)waypoints;
- (NTKLeghornDemoPOIDataSource)initWithDataSet:(const NTKLeghornPOIDataSet *)set;
- (void)fetchUserGuidesWithCompletion:(id)completion;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
@end

@implementation NTKLeghornDemoPOIDataSource

+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location useMetric:(BOOL)metric userGuides:(id *)guides
{
  metricCopy = metric;
  locationCopy = location;
  v48 = objc_opt_new();
  v46 = objc_opt_new();
  if (count)
  {
    countCopy = count;
    do
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      sub_23BEDDCE8(&v51, s);
      v14 = &v54 + 1;
      if (metricCopy)
      {
        v14 = &v54;
      }

      v50 = objc_msgSend_ntk_locationAtDistance_bearing_(locationCopy, v12, v13, *v14, *(&v53 + 1));
      v15 = NTKFoghornFaceLocalizedString(*(&v51 + 1));
      v16 = sub_23BEDDD60(*(&v52 + 1));
      v17 = sub_23BEDDD60(v53);
      v18 = v52;
      v19 = v51;
      v20 = v55;
      if (objc_msgSend_hasPrefix_(v18, v21, @"sa:"))
      {
        v23 = objc_msgSend_substringFromIndex_(v18, v22, 3);
        v25 = objc_msgSend_ntk_styleAttributesNamed_(MEMORY[0x277D0EB18], v24, v23);
        v26 = [GEOFeatureStyleAttributesPOI alloc];
        v28 = objc_msgSend_initWithStyleAttributes_category_labelText_location_(v26, v27, v25, v19, v15, v50);
      }

      else
      {
        v30 = [NTKLeghornWaypoint alloc];
        v28 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_(v30, v31, v15, v16, v17, v16, v18, v50, v19);
      }

      objc_msgSend_addObject_(v48, v29, v28);
      v32 = countCopy;
      if (v20)
      {
        v33 = NTKFoghornFaceLocalizedString(v20);
        v36 = objc_msgSend_objectForKeyedSubscript_(v46, v34, v33);
        if (!v36)
        {
          v37 = [_LeghornDemoPOICollection alloc];
          v36 = objc_msgSend_initWithTitle_(v37, v38, v33);
          objc_msgSend_setObject_forKeyedSubscript_(v46, v39, v36, v33);
        }

        objc_msgSend_addPoi_(v36, v35, v28);

        v32 = countCopy;
      }

      sub_23BEDE070(&v51);
      ++s;
      countCopy = v32 - 1;
    }

    while (v32 != 1);
  }

  if (guides)
  {
    v40 = objc_msgSend_allValues(v46, v9, v10);
    *guides = objc_msgSend_copy(v40, v41, v42);
  }

  v43 = objc_msgSend_copy(v48, v9, v10);

  return v43;
}

+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location filterBy:(id)by filterRadius:(double)radius ensureNorthPOI:(BOOL)i useMetric:(BOOL)metric userGuides:(id *)self0
{
  metricCopy = metric;
  iCopy = i;
  guidesCopy4 = guides;
  locationCopy = location;
  byCopy = by;
  countCopy = count;
  v20 = malloc_type_calloc(count, 0x48uLL, 0x108004074F8D4EEuLL);
  v21 = byCopy;
  if (!count)
  {
    v22 = 0;
LABEL_18:
    selfCopy2 = self;
    goto LABEL_19;
  }

  v30 = iCopy;
  v22 = 0;
  v23 = 0;
  do
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    memset(v32, 0, sizeof(v32));
    sub_23BEDDCE8(v32, s);
    if (radius == 0.0)
    {
      goto LABEL_26;
    }

    v25 = 56;
    if (metricCopy)
    {
      v25 = 48;
    }

    if (*(v32 + v25) <= radius)
    {
LABEL_26:
      if (!v21 || objc_msgSend_includesCategory_(v21, v24, *&v32[0]))
      {
        sub_23BEDE970(&v20[9 * v22], v32);
        if (*(&v33 + 1) == 0.0)
        {
          v23 = 1;
        }

        v22 = (v22 + 1);
      }
    }

    sub_23BEDE070(v32);
    ++s;
    --countCopy;
  }

  while (countCopy);
  if (v23)
  {
    guidesCopy4 = guides;
    goto LABEL_18;
  }

  selfCopy2 = self;
  if (v30)
  {
    guidesCopy4 = guides;
    if (v22)
    {
      qsort(v20, v22, 0x48uLL, sub_23BEDE9F0);
      v20[5] = 0;
    }
  }

  else
  {
    guidesCopy4 = guides;
  }

LABEL_19:

  v28 = objc_msgSend__relativePOIS_count_atLocation_useMetric_userGuides_(selfCopy2, v27, v20, v22, locationCopy, metricCopy, guidesCopy4);
  free(v20);

  return v28;
}

- (NTKLeghornDemoPOIDataSource)initWithDataSet:(const NTKLeghornPOIDataSet *)set
{
  v9.receiver = self;
  v9.super_class = NTKLeghornDemoPOIDataSource;
  v4 = [(NTKLeghornDemoPOIDataSource *)&v9 init];
  v5 = v4;
  if (v4)
  {
    waypoints = v4->_waypoints;
    v4->_waypoints = 0;

    allWaypoints = v5->_allWaypoints;
    v5->_allWaypoints = 0;

    v5->_dataSet = set;
  }

  return v5;
}

- (NSArray)waypoints
{
  waypoints = self->_waypoints;
  if (waypoints)
  {
    v4 = waypoints;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)_filterWaypoints:(id)waypoints userGuides:(id)guides location:(id)location radius:(double)radius poiFilter:(id)filter
{
  v64 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  guidesCopy = guides;
  locationCopy = location;
  filterCopy = filter;
  v15 = filterCopy;
  if (radius <= 0.0 && filterCopy == 0)
  {
    v50 = waypointsCopy;
  }

  else
  {
    v17 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v53 = waypointsCopy;
    v18 = waypointsCopy;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v58, v63, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v59;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v59 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v58 + 1) + 8 * i);
          v27 = objc_msgSend_waypointCategory(v26, v21, v22);
          if (objc_msgSend_includesCategory_(v15, v28, v27))
          {
            if (radius <= 0.0 || (objc_msgSend_waypointLocation(v26, v21, v22), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_distanceFromLocation_(locationCopy, v30, v29), v32 = v31, v29, v32 <= radius))
            {
              objc_msgSend_addObject_(v17, v21, v26);
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v58, v63, 16);
      }

      while (v23);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = guidesCopy;
    v33 = guidesCopy;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v54, v62, 16);
    if (v35)
    {
      v38 = v35;
      v39 = *v55;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v54 + 1) + 8 * j);
          v42 = objc_msgSend_title(v41, v36, v37, v52);
          if (objc_msgSend_includesCategory_named_(v15, v43, 2, v42))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = objc_msgSend_pois(v41, v44, v45);
              objc_msgSend_addObjectsFromArray_(v17, v47, v46);
            }
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v54, v62, 16);
      }

      while (v38);
    }

    v50 = objc_msgSend_allObjects(v17, v48, v49);

    guidesCopy = v52;
    waypointsCopy = v53;
  }

  return v50;
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  locationCopy = location;
  filterCopy = filter;
  completionCopy = completion;
  if (!self->_allWaypoints)
  {
    v15 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v12, v13);
    v17 = objc_msgSend_objectForKey_(v15, v16, *MEMORY[0x277CBE718]);
    v20 = objc_msgSend_BOOLValue(v17, v18, v19);

    v21 = objc_opt_class();
    dataSet = self->_dataSet;
    v38 = 0;
    v24 = objc_msgSend_demoPOIsFromDataSet_relativeToLocation_useMetric_userGuides_(v21, v23, dataSet, locationCopy, v20, &v38);
    v25 = v38;
    allWaypoints = self->_allWaypoints;
    self->_allWaypoints = v24;

    allUserGuides = self->_allUserGuides;
    self->_allUserGuides = v25;
  }

  v28 = self->_currentQuery;
  objc_msgSend_coordinate(locationCopy, v29, v30);
  v32 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v31, filterCopy);
  if (!objc_msgSend_matchesQuery_(v28, v33, v32))
  {
    objc_storeStrong(&self->_currentQuery, v32);
    v34 = objc_opt_class();
    v36 = objc_msgSend__filterWaypoints_userGuides_location_radius_poiFilter_(v34, v35, self->_allWaypoints, self->_allUserGuides, locationCopy, filterCopy, radius);
    waypoints = self->_waypoints;
    self->_waypoints = v36;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)fetchUserGuidesWithCompletion:(id)completion
{
  if (completion)
  {
    allUserGuides = self->_allUserGuides;
    if (!allUserGuides)
    {
      allUserGuides = MEMORY[0x277CBEBF8];
    }

    (*(completion + 2))(completion, 0, allUserGuides);
  }
}

@end