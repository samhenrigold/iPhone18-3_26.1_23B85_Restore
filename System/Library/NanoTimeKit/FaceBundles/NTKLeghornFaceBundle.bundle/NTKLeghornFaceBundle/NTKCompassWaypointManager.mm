@interface NTKCompassWaypointManager
+ (id)_filterNCWaypoints:(id)waypoints location:(id)location radius:(double)radius;
+ (id)_filterNCWaypoints:(id)waypoints query:(id)query;
- (NSArray)waypoints;
- (NTKCompassWaypointManager)init;
- (void)_removeObservers;
- (void)_updateSubscriber;
- (void)_waypointListDidChange:(id)change;
- (void)dealloc;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
- (void)startUpdatingDelegate:(id)delegate;
- (void)stopUpdating;
@end

@implementation NTKCompassWaypointManager

- (NTKCompassWaypointManager)init
{
  v10.receiver = self;
  v10.super_class = NTKCompassWaypointManager;
  v2 = [(NTKCompassWaypointManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    filteredWaypoints = v2->_filteredWaypoints;
    v2->_filteredWaypoints = 0;

    v7 = objc_msgSend_invalidQuery(NTKLeghornWaypointQuery, v5, v6);
    currentQuery = v3->_currentQuery;
    v3->_currentQuery = v7;
  }

  return v3;
}

- (void)dealloc
{
  objc_msgSend__removeObservers(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKCompassWaypointManager;
  [(NTKCompassWaypointManager *)&v4 dealloc];
}

+ (id)_filterNCWaypoints:(id)waypoints location:(id)location radius:(double)radius
{
  v5 = objc_opt_new();
  v8 = objc_msgSend_copy(v5, v6, v7);

  return v8;
}

+ (id)_filterNCWaypoints:(id)waypoints query:(id)query
{
  queryCopy = query;
  waypointsCopy = waypoints;
  if (objc_msgSend_isValid(queryCopy, v8, v9))
  {
    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    objc_msgSend_centerCoordinate(queryCopy, v13, v14);
    v16 = v15;
    objc_msgSend_centerCoordinate(queryCopy, v17, v18);
    v21 = objc_msgSend_initWithLatitude_longitude_(v12, v19, v20, v16);
  }

  else
  {
    v21 = 0;
  }

  objc_msgSend_radius(queryCopy, v10, v11);
  v23 = objc_msgSend__filterNCWaypoints_location_radius_(self, v22, waypointsCopy, v21);

  return v23;
}

- (void)_updateSubscriber
{
  delegate = self->_delegate;
  if (delegate)
  {
    objc_msgSend_storeDidChangeWithCategories_(delegate, a2, 1);
  }
}

- (void)_waypointListDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = NTKFoghornFaceBundleLogObject(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NTKCompassWaypointManager _waypointListDidChange:]";
    _os_log_impl(&dword_23BEB1000, v4, OS_LOG_TYPE_DEFAULT, "%s: waypoints did change", &v8, 0xCu);
  }

  compassWaypoints = self->_compassWaypoints;
  self->_compassWaypoints = 0;

  objc_msgSend__updateSubscriber(self, v6, v7);
}

- (void)_removeObservers
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], a2, v2);
  objc_msgSend_removeObserver_(v5, v4, self);
}

- (NSArray)waypoints
{
  if (!self->_compassWaypoints)
  {
    v4 = objc_msgSend_poiFilter(self->_currentQuery, a2, v2);
    objc_msgSend_includesCategory_(v4, v5, 1);

    filteredWaypoints = self->_filteredWaypoints;
    self->_filteredWaypoints = 0;
  }

  v7 = self->_filteredWaypoints;
  if (!v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend__filterNCWaypoints_query_(v8, v9, self->_compassWaypoints, self->_currentQuery);
    v11 = self->_filteredWaypoints;
    self->_filteredWaypoints = v10;

    v7 = self->_filteredWaypoints;
  }

  return v7;
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  locationCopy = location;
  filterCopy = filter;
  completionCopy = completion;
  if ((locationCopy || radius <= 0.0) && (radius <= 0.0 || radius >= 50.0))
  {
    v13 = objc_msgSend_copyIncludingCategories_(filterCopy, v11, 1);
    v14 = self->_currentQuery;
    objc_msgSend_coordinate(locationCopy, v15, v16);
    v18 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v17, v13);
    if ((objc_msgSend_matchesQuery_(v14, v19, v18) & 1) == 0)
    {
      v22 = objc_msgSend_poiFilter(self->_currentQuery, v20, v21);
      v24 = objc_msgSend_includesCategory_(v22, v23, 1);

      v27 = objc_msgSend_poiFilter(v18, v25, v26);
      v29 = objc_msgSend_includesCategory_(v27, v28, 1);

      v30 = 24;
      if (v24 != v29)
      {
        v30 = 16;
      }

      v31 = *(&self->super.isa + v30);
      *(&self->super.isa + v30) = 0;

      objc_msgSend__updateSubscriber(self, v32, v33);
      objc_storeStrong(&self->_currentQuery, v18);
    }

    if (completionCopy)
    {
      v34 = objc_msgSend_waypoints(self, v20, v21);
      completionCopy[2](completionCopy, self->_filteredWaypoints != 0);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)startUpdatingDelegate:(id)delegate
{
  objc_storeStrong(&self->_delegate, delegate);

  MEMORY[0x2821F9670](self, sel__addObservers, v4);
}

- (void)stopUpdating
{
  objc_msgSend__removeObservers(self, a2, v2);
  delegate = self->_delegate;
  self->_delegate = 0;
}

@end