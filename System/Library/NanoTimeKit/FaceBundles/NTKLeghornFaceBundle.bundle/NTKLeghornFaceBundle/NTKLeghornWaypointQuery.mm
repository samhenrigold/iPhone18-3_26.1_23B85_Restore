@interface NTKLeghornWaypointQuery
+ (NTKLeghornWaypointQuery)queryWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter;
- (BOOL)isValid;
- (BOOL)matchesQuery:(id)query;
- (BOOL)matchesQuery:(id)query distance:(double)distance;
- (CLLocationCoordinate2D)centerCoordinate;
- (NTKLeghornWaypointQuery)initWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter;
@end

@implementation NTKLeghornWaypointQuery

- (NTKLeghornWaypointQuery)initWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  filterCopy = filter;
  v14.receiver = self;
  v14.super_class = NTKLeghornWaypointQuery;
  v11 = [(NTKLeghornWaypointQuery *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_centerCoordinate.latitude = latitude;
    v11->_centerCoordinate.longitude = longitude;
    v11->_radius = radius;
    objc_storeStrong(&v11->_poiFilter, filter);
  }

  return v12;
}

+ (NTKLeghornWaypointQuery)queryWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  filterCopy = filter;
  v9 = [NTKLeghornWaypointQuery alloc];
  v11 = objc_msgSend_initWithCenterCoordinate_radius_poiFilter_(v9, v10, filterCopy, latitude, longitude, radius);

  return v11;
}

- (BOOL)matchesQuery:(id)query distance:(double)distance
{
  queryCopy = query;
  v9 = objc_msgSend_poiFilter(self, v7, v8);
  v12 = objc_msgSend_poiFilter(queryCopy, v10, v11);
  v15 = v12;
  if ((v9 == 0) == (v12 != 0))
  {

LABEL_7:
    v46 = 0;
    goto LABEL_8;
  }

  v16 = objc_msgSend_poiFilter(self, v13, v14);
  v19 = objc_msgSend_poiFilter(queryCopy, v17, v18);
  isEqual = objc_msgSend_isEqual_(v16, v20, v19);

  if (!isEqual)
  {
    goto LABEL_7;
  }

  objc_msgSend_radius(self, v22, v23);
  v25 = v24 == 0.0;
  objc_msgSend_radius(queryCopy, v26, v27);
  if (v25 == (v30 != 0.0))
  {
    goto LABEL_7;
  }

  objc_msgSend_radius(self, v28, v29);
  v32 = v31;
  objc_msgSend_radius(queryCopy, v33, v34);
  if (vabdd_f64(v32, v37) > 10.0)
  {
    goto LABEL_7;
  }

  objc_msgSend_centerCoordinate(self, v35, v36);
  v39 = v38;
  v41 = v40;
  objc_msgSend_centerCoordinate(queryCopy, v42, v43);
  v46 = fabs(ntk_CLLocationCoordinate2DDistanceToCoordinate(v39, v41, v44, v45)) <= distance;
LABEL_8:

  return v46;
}

- (BOOL)matchesQuery:(id)query
{
  queryCopy = query;
  objc_msgSend_radius(self, v5, v6);
  LOBYTE(self) = objc_msgSend_matchesQuery_distance_(self, v8, queryCopy, v7 * 0.1);

  return self;
}

- (BOOL)isValid
{
  objc_msgSend_centerCoordinate(self, a2, v2);
  v4 = CLLocationCoordinate2DIsValid(v9);
  if (v4)
  {
    objc_msgSend_radius(self, v5, v6);
    LOBYTE(v4) = v7 > 0.0;
  }

  return v4;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  objc_copyStruct(v4, &self->_centerCoordinate, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end