@interface CLAvailableVenuesStateMachine
+ (double)distBetweenLatLon:(id)lon latlon1:(id)latlon1;
+ (int64_t)getLocationContextFromVenueBounds:(const void *)bounds;
- (BOOL)isVenueDisabled:(id)disabled locationId:(id)id;
- (BOOL)shouldRecompute:(id)recompute;
- (CLAvailableVenuesStateMachine)init;
- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates;
- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates withError:(BOOL *)error;
- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos;
- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest;
- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos;
- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest;
- (id)openTileParserAtPath:(id)path;
- (id)recomputeIfNecessary:(id)necessary withGlobalAvailabilityTile:(id)tile andAdditionalLOIs:(id)is;
- (void)clearLastFix;
@end

@implementation CLAvailableVenuesStateMachine

- (CLAvailableVenuesStateMachine)init
{
  v8.receiver = self;
  v8.super_class = CLAvailableVenuesStateMachine;
  v2 = [(CLAvailableVenuesStateMachine *)&v8 init];
  v3 = v2;
  if (v2)
  {
    lastFix = v2->_lastFix;
    v2->_lastFix = 0;

    disabledVenues = v3->_disabledVenues;
    v3->_maxLoadRadius = 100000.0;
    v3->_disabledVenues = 0;

    availabilityTileParams = v3->_availabilityTileParams;
    v3->_availabilityTileParams = 0;
  }

  return v3;
}

+ (double)distBetweenLatLon:(id)lon latlon1:(id)latlon1
{
  lonCopy = lon;
  latlon1Copy = latlon1;
  v7 = latlon1Copy;
  if (!lonCopy)
  {
    v25 = sub_100024218(latlon1Copy);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "latlon0 != nullptr";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v27 = sub_100024218(v26);
    if (os_signpost_enabled(v27))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "latlon0 != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: first coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v29 = sub_100024218(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "latlon0 != nullptr";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v30 = 104;
LABEL_18:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", v30, "+[CLAvailableVenuesStateMachine distBetweenLatLon:latlon1:]");
    __break(1u);
  }

  if (!latlon1Copy)
  {
    v31 = sub_100024218(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "latlon1 != nullptr";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v33 = sub_100024218(v32);
    if (os_signpost_enabled(v33))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "latlon1 != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: second coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v29 = sub_100024218(v34);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "latlon1 != nullptr";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v30 = 105;
    goto LABEL_18;
  }

  [lonCopy latitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v9 = v8;
  [lonCopy longitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v11 = v10;
  [v7 latitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v13 = v12;
  [v7 longitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v15 = sin((v11 - v14) * 0.5);
  v16 = v15 * v15;
  v17 = sin((v9 - v13) * 0.5);
  v18 = v17 * v17;
  v19 = cos(v9);
  v20 = cos(v13);
  v21 = asin(sqrt(v18 + v19 * v20 * v16));
  [CLAvailableVenuesStateMachine metersFromGreatCircleDistance:(v21 + v21)];
  v23 = v22;

  return v23;
}

- (BOOL)isVenueDisabled:(id)disabled locationId:(id)id
{
  disabledCopy = disabled;
  idCopy = id;
  disabledVenues = self->_disabledVenues;
  if (disabledVenues)
  {
    v9 = [(NSSet *)disabledVenues member:disabledCopy];
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [(NSSet *)self->_disabledVenues member:idCopy];
      v10 = v11 != 0;

      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates
{
  venuesCopy = venues;
  coordinatesCopy = coordinates;
  v12 = 0;
  v8 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:venuesCopy nearCoordinates:coordinatesCopy withError:&v12];
  if (v12 == 1)
  {
    sub_1000244EC();
    v9 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:venuesCopy nearCoordinates:coordinatesCopy withError:&v12];

    if (v12 == 1)
    {
      sub_1000244EC();
      v8 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:venuesCopy nearCoordinates:coordinatesCopy withError:&v12];

      if (v12 == 1)
      {
        sub_1000244EC();
        v10 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:venuesCopy nearCoordinates:coordinatesCopy withError:&v12];

        if (v12 == 1)
        {
          sub_100382924(&v13);

          result = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 143, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:]");
          __break(1u);
          return result;
        }

        v8 = v10;
      }
    }

    else
    {
      v8 = v9;
    }
  }

  return v8;
}

- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates withError:(BOOL *)error
{
  venuesCopy = venues;
  coordinatesCopy = coordinates;
  errorCopy = error;
  *error = 0;
  v7 = [[NSMutableArray alloc] initWithCapacity:120];
  v8 = 120;
  do
  {
    v9 = objc_alloc_init(ECEFCoordinate);
    [v7 addObject:v9];

    --v8;
  }

  while (v8);
  v132 = [[NSMutableArray alloc] initWithCapacity:120];
  v135 = v7;
  v133 = objc_alloc_init(GeographicCoordinate);
  v139 = objc_alloc_init(ENUCoordinate);
  v122 = objc_alloc_init(ECEFCoordinate);
  v126 = objc_alloc_init(GeographicCoordinate);
  numVenuesExpected = [venuesCopy numVenuesExpected];
  v127 = [NSMutableArray arrayWithCapacity:numVenuesExpected];
  numTotalExpectedExteriorsInVenues = [venuesCopy numTotalExpectedExteriorsInVenues];
  if (qword_10045B060 != -1)
  {
    sub_100382910();
  }

  v11 = qword_10045B068;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v157 = numTotalExpectedExteriorsInVenues;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "@IndoorAvl, load, Reserving %zu entries for AvailabilityTile entries in result", buf, 0xCu);
  }

  v117 = [NSMutableArray arrayWithCapacity:numTotalExpectedExteriorsInVenues];
  if (qword_10045B060 != -1)
  {
    sub_100382AAC();
  }

  v12 = qword_10045B068;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v157) = numVenuesExpected;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "@IndoorAvl, load, iterating over %d venues in the availability tile", buf, 8u);
  }

  if (numVenuesExpected >= 1)
  {
    v118 = 0;
    v116 = 0;
    v131 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      sub_1003421A8(buf);
      if ([venuesCopy tileIsOpenForIncrementalIO])
      {
        if (([venuesCopy getNextVenueBoundsIncrementally:buf] & 1) == 0)
        {
          if (qword_10045B060 != -1)
          {
            sub_100382AAC();
          }

          v13 = qword_10045B068;
          if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
          {
            *v155 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, failed to incrementally read venue bounds from tile", v155, 2u);
          }

          v14 = 1;
          *errorCopy = 1;
          goto LABEL_174;
        }
      }

      else
      {
        sub_100170790([venuesCopy getAvlTile], v131, v155);
        sub_100345A64(buf, v155);
        sub_100344504(v155);
      }

      sub_10002629C(&v159[2], ", ", &__p);
      if (!v162)
      {
        if (qword_10045B060 != -1)
        {
          sub_100382AAC();
        }

        v21 = qword_10045B068;
        if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
        {
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v155 = 136446210;
          *&v155[4] = p_p;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, venue [%{public}s] is missing exterior", v155, 0xCu);
          v14 = 11;
        }

        else
        {
          v14 = 11;
        }

        goto LABEL_172;
      }

      v151[0] = 0;
      v151[1] = 0;
      v150 = v151;
      v149[0] = 0;
      v149[1] = 0;
      v148 = v149;
      if ((v164 & 4) != 0)
      {
        v15 = v163;
        if (!v163)
        {
          v15 = *(qword_100471D00 + 64);
        }

        sub_100343200(v155, v15);
        if (*&v155[24] >= 1)
        {
          v16 = 0;
          do
          {
            v17 = *(*&v155[16] + 4 * v16);
            v18 = v149[0];
LABEL_31:
            if (!v18)
            {
LABEL_35:
              operator new();
            }

            while (1)
            {
              v19 = v18;
              v20 = *(v18 + 7);
              if (v17 < v20)
              {
                v18 = *v19;
                goto LABEL_31;
              }

              if (v20 >= v17)
              {
                break;
              }

              v18 = v19[1];
              if (!v18)
              {
                goto LABEL_35;
              }
            }

            ++v16;
          }

          while (v16 < *&v155[24]);
        }

        sub_1003432BC(v155);
      }

      [v127 removeAllObjects];
      if (v160 < 1)
      {
        goto LABEL_163;
      }

      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(*&v159[2] + 8 * v23);
        if (*(v25 + 23) < 0)
        {
          v25 = *v25;
        }

        v26 = [NSString stringWithUTF8String:v25];
        if ([v26 hasPrefix:@"G"])
        {
          if (v24)
          {

            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v85 = qword_10045B068;
            if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
            {
              v86 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v86 = __p.__r_.__value_.__r.__words[0];
              }

              *v155 = 136446210;
              *&v155[4] = v86;
              v87 = v85;
              v88 = OS_LOG_TYPE_ERROR;
              v89 = "Multiple groups associated with venue [%{public}s].  Ignoring from availability tile";
              goto LABEL_183;
            }

LABEL_170:
            v14 = 11;
            goto LABEL_171;
          }

          if ([(CLAvailableVenuesStateMachine *)self isVenueDisabled:v26 locationId:0])
          {
            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v90 = qword_10045B068;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v91 = v26;
              uTF8String = [v26 UTF8String];
              *v155 = 136315138;
              *&v155[4] = uTF8String;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v155, 0xCu);
            }

LABEL_163:
            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v93 = qword_10045B068;
            if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
            {
              v94 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v94 = __p.__r_.__value_.__r.__words[0];
              }

              *v155 = 136315138;
              *&v155[4] = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#Warning Cannot find location group in venue [%s]", v155, 0xCu);
            }

            v24 = 0;
            goto LABEL_170;
          }

          v24 = v26;
        }

        else
        {
          if (![v26 hasPrefix:@"L"])
          {
            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v27 = qword_10045B068;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v26;
              uTF8String2 = [v26 UTF8String];
              *v155 = 136315138;
              *&v155[4] = uTF8String2;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#Warning Encountered invalid venue id %s in availability tile. Skipping", v155, 0xCu);
            }

            goto LABEL_62;
          }

          if ([(CLAvailableVenuesStateMachine *)self isVenueDisabled:0 locationId:v26])
          {
            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v27 = qword_10045B068;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = v26;
              uTF8String3 = [v26 UTF8String];
              *v155 = 136315138;
              *&v155[4] = uTF8String3;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v155, 0xCu);
            }

LABEL_62:

            goto LABEL_63;
          }

          [v127 addObject:v26];
          if (v23 >= v160)
          {
            sub_100382AD4();
            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 154, "operator()");
            goto LABEL_227;
          }

          if ((v164 & 4) != 0)
          {
            v32 = v149[0];
            if (v149[0])
            {
              v33 = v149;
              do
              {
                v34 = *(v32 + 7);
                v35 = v23 <= v34;
                v36 = v23 > v34;
                if (v35)
                {
                  v33 = v32;
                }

                v32 = v32[v36];
              }

              while (v32);
              if (v33 != v149 && v23 >= *(v33 + 7))
              {
LABEL_77:
                v37 = [v127 count] - 1;
                for (i = v151[0]; i; i = *v39)
                {
                  while (1)
                  {
                    v39 = i;
                    v40 = i[4];
                    if (v37 < v40)
                    {
                      break;
                    }

                    if (v40 >= v37)
                    {
                      goto LABEL_63;
                    }

                    i = v39[1];
                    if (!i)
                    {
                      goto LABEL_83;
                    }
                  }
                }

LABEL_83:
                operator new();
              }
            }
          }

          else if ([CLLocationContextUtil isRegional:[CLAvailableVenuesStateMachine getLocationContextFromVenueBounds:buf]])
          {
            goto LABEL_77;
          }
        }

LABEL_63:

        ++v23;
      }

      while (v23 < v160);
      if (!v24)
      {
        goto LABEL_163;
      }

      if (![v127 count] || !v127)
      {
        if (qword_10045B060 != -1)
        {
          sub_100382AAC();
        }

        v95 = qword_10045B068;
        if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
        {
          v96 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v96 = __p.__r_.__value_.__r.__words[0];
          }

          *v155 = 136315138;
          *&v155[4] = v96;
          v87 = v95;
          v88 = OS_LOG_TYPE_DEFAULT;
          v89 = "#Warning No venues associated with availability tile [%s]";
LABEL_183:
          _os_log_impl(&_mh_execute_header, v87, v88, v89, v155, 0xCu);
          goto LABEL_170;
        }

        goto LABEL_170;
      }

      v41 = [v127 count];
      v115 = [v24 substringFromIndex:1];

      removeAllObjects = [CLAvailableVenuesStateMachine getLocationContextFromVenueBounds:buf];
      v114 = removeAllObjects;
      v118 += v41;
      if (v162)
      {
        v123 = 0;
        v124 = v161;
        v121 = &v161[v162];
        do
        {
          if (v123)
          {
            v123 = 1;
          }

          else
          {
            v43 = *(*v124 + 24);
            v129 = *v124;
            if (v43 == *(*v124 + 48))
            {
              if ((v43 & 0x80000000) != 0)
              {
                v106 = sub_100024218(removeAllObjects);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
                {
                  v107 = *(v129 + 48);
                  *v155 = 68289795;
                  *&v155[8] = 2082;
                  *&v155[10] = "";
                  *&v155[18] = 1026;
                  *&v155[20] = v107;
                  *&v155[24] = 2082;
                  *&v155[26] = "assert";
                  *&v155[34] = 2081;
                  *&v155[36] = "exterior.longitude_size() >= 0";
                  _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v155, 0x2Cu);
                }

                v109 = sub_100024218(v108);
                if (os_signpost_enabled(v109))
                {
                  v110 = *(v129 + 48);
                  *v155 = 68289795;
                  *&v155[8] = 2082;
                  *&v155[10] = "";
                  *&v155[18] = 1026;
                  *&v155[20] = v110;
                  *&v155[24] = 2082;
                  *&v155[26] = "assert";
                  *&v155[34] = 2081;
                  *&v155[36] = "exterior.longitude_size() >= 0";
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, load, exterior longitude_size() returned a negative value?!", "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v155, 0x2Cu);
                }

                v112 = sub_100024218(v111);
                if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
                {
                  v113 = *(v129 + 48);
                  *v155 = 68289795;
                  *&v155[8] = 2082;
                  *&v155[10] = "";
                  *&v155[18] = 1026;
                  *&v155[20] = v113;
                  *&v155[24] = 2082;
                  *&v155[26] = "assert";
                  *&v155[34] = 2081;
                  *&v155[36] = "exterior.longitude_size() >= 0";
                  _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v155, 0x2Cu);
                }

                abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 337, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:withError:]");
LABEL_227:
                while (2)
                {
                  __break(1u);
                  sub_100382AAC();
                  v103 = qword_10045B068;
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
                  {
                    *v155 = 68289539;
                    *&v155[4] = 0;
                    *&v155[8] = 2082;
                    *&v155[10] = "";
                    *&v155[18] = 2082;
                    *&v155[20] = "assert";
                    *&v155[28] = 2081;
                    *&v155[30] = "!std::isnan(vertexENU.x())";
                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v155, 0x26u);
                  }

                  if (qword_10045B060 == -1)
                  {
                    v104 = qword_10045B068;
                    if (os_signpost_enabled(v104))
                    {
                      goto LABEL_210;
                    }
                  }

                  else
                  {
                    dispatch_once(&qword_10045B060, &stru_100432A60);
                    v104 = qword_10045B068;
                    if (os_signpost_enabled(v104))
                    {
LABEL_210:
                      *v155 = 68289539;
                      *&v155[4] = 0;
                      *&v155[8] = 2082;
                      *&v155[10] = "";
                      *&v155[18] = 2082;
                      *&v155[20] = "assert";
                      *&v155[28] = 2081;
                      *&v155[30] = "!std::isnan(vertexENU.x())";
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v104, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "vertexENU.x() must not be NaN", "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v155, 0x26u);
                    }
                  }

                  if (qword_10045B060 != -1)
                  {
                    dispatch_once(&qword_10045B060, &stru_100432A60);
                  }

                  v105 = qword_10045B068;
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                  {
                    *v155 = 68289539;
                    *&v155[4] = 0;
                    *&v155[8] = 2082;
                    *&v155[10] = "";
                    *&v155[18] = 2082;
                    *&v155[20] = "assert";
                    *&v155[28] = 2081;
                    *&v155[30] = "!std::isnan(vertexENU.x())";
                    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v155, 0x26u);
                  }

                  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 366, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:withError:]");
                  continue;
                }
              }

              if ([v7 count] < v43)
              {
                v44 = [v7 count];
                v45 = v43 - v44;
                if (v43 != v44)
                {
                  do
                  {
                    v46 = objc_alloc_init(ECEFCoordinate);
                    [v7 addObject:v46];

                    --v45;
                  }

                  while (v45);
                }

                if (qword_10045B060 != -1)
                {
                  sub_100382AAC();
                }

                v47 = qword_10045B068;
                if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
                {
                  *v155 = 67109120;
                  *&v155[4] = v43;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, "@IndoorAvl, load, Needed to allocate additional ECEFCoordinates for the pool: total required %d", v155, 8u);
                }
              }

              if (v43)
              {
                v48 = 0;
                v49 = 8 * v43;
                do
                {
                  [(GeographicCoordinate *)v133 setFromLatitude:*(*(v129 + 16) + v48) longitude:*(*(v129 + 40) + v48) andAltitude:0.0];
                  lastObject = [v7 lastObject];
                  [v7 removeLastObject];
                  [lastObject setFromLatLon:v133];
                  [v132 addObject:lastObject];

                  v48 += 8;
                }

                while (v49 != v48);
              }

              [CLLocationGroup storeAverage:v122 ofVertices:v132];
              [(GeographicCoordinate *)v126 setFromECEFCoordinate:v122];
              if ([coordinatesCopy count])
              {
                v146 = 0u;
                v147 = 0u;
                v144 = 0u;
                v145 = 0u;
                v51 = coordinatesCopy;
                v52 = [v51 countByEnumeratingWithState:&v144 objects:v154 count:16];
                if (v52)
                {
                  v53 = *v145;
LABEL_107:
                  v54 = 0;
                  while (1)
                  {
                    if (*v145 != v53)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v55 = *(*(&v144 + 1) + 8 * v54);
                    [CLAvailableVenuesStateMachine distBetweenLatLon:v126 latlon1:v55];
                    v57 = v56;
                    v58 = v56 >= self->_maxLoadRadius;

                    if (!v58)
                    {
                      break;
                    }

                    if (v52 == ++v54)
                    {
                      v52 = [v51 countByEnumeratingWithState:&v144 objects:v154 count:16];
                      if (v52)
                      {
                        goto LABEL_107;
                      }

                      break;
                    }
                  }
                }

                else
                {
                  v57 = 1.79769313e308;
                }
              }

              else
              {
                v57 = 0.0;
              }

              maxLoadRadius = self->_maxLoadRadius;
              v123 = v57 > maxLoadRadius;
              if (v57 > maxLoadRadius)
              {
                v118 -= [v127 count];
              }

              else
              {
                v64 = [[CLLocationGroup alloc] initWithGroupId:v115 locationIds:v127 center:v122 wifiOnlyDownloadLocIdxs:&v150 locationContext:v114 andTolerance:*(v129 + 64)];
                v138 = v64;
                getVertices = [(CLLocationGroup *)v64 getVertices];
                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                obj = v132;
                v66 = [obj countByEnumeratingWithState:&v140 objects:v153 count:16];
                v67 = v66;
                if (v66)
                {
                  v137 = *v141;
                  do
                  {
                    v68 = 0;
                    do
                    {
                      if (*v141 != v137)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v69 = *(*(&v140 + 1) + 8 * v68);
                      v70 = *getVertices;
                      centerLatLon = [(CLLocationGroup *)v64 centerLatLon];
                      centerECEF = [(CLLocationGroup *)v64 centerECEF];
                      [v69 toBoostEnuWithLatLonOrigin:centerLatLon andEcefOrigin:centerECEF usingENU:v139];
                      v76 = v70[1];
                      v75 = v70[2];
                      if (v76 >= v75)
                      {
                        v78 = *v70;
                        v79 = v76 - *v70;
                        v80 = v79 >> 4;
                        v81 = (v79 >> 4) + 1;
                        if (v81 >> 60)
                        {
                          sub_10000FC84();
                        }

                        v82 = v75 - v78;
                        if (v82 >> 3 > v81)
                        {
                          v81 = v82 >> 3;
                        }

                        if (v82 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v83 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v83 = v81;
                        }

                        if (v83)
                        {
                          if (!(v83 >> 60))
                          {
                            operator new();
                          }

                          sub_10000D444();
                        }

                        v84 = (16 * v80);
                        *v84 = v73;
                        v84[1] = v74;
                        v77 = 16 * v80 + 16;
                        memcpy(0, v78, v79);
                        *v70 = 0;
                        v70[1] = v77;
                        v70[2] = 0;
                        if (v78)
                        {
                          operator delete(v78);
                        }

                        v7 = v135;
                      }

                      else
                      {
                        *v76 = v73;
                        v76[1] = v74;
                        v77 = (v76 + 2);
                      }

                      v70[1] = v77;

                      v64 = v138;
                      v68 = v68 + 1;
                    }

                    while (v67 != v68);
                    v67 = [obj countByEnumeratingWithState:&v140 objects:v153 count:{16, *((*getVertices)[1] - 8)}];
                  }

                  while (v67);
                }

                if (*(v129 + 48) != ((*getVertices)[1] - **getVertices) >> 4)
                {
                  sub_100382CB4(v155);

                  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 372, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:withError:]");
                  goto LABEL_227;
                }

                sub_100027918(*getVertices);
                [v117 addObject:v138];

                ++v116;
              }

              [v7 addObjectsFromArray:v132];
              removeAllObjects = [v132 removeAllObjects];
            }

            else
            {
              if (qword_10045B060 != -1)
              {
                sub_100382AAC();
              }

              v59 = qword_10045B068;
              removeAllObjects = os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR);
              if (removeAllObjects)
              {
                v60 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v60 = __p.__r_.__value_.__r.__words[0];
                }

                v61 = *(v129 + 24);
                v62 = *(v129 + 48);
                *v155 = 136446722;
                *&v155[4] = v60;
                *&v155[12] = 1026;
                *&v155[14] = v61;
                *&v155[18] = 1026;
                *&v155[20] = v62;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, exterior polygon of venue [%{public}s] is corrupt.  %{public}d latitudes, %{public}d longitudes", v155, 0x18u);
              }

              v123 = 0;
            }
          }

          ++v124;
        }

        while (v124 != v121);
      }

      v14 = 0;
      v24 = v115;
LABEL_171:
      sub_1000275F4(&v148, v149[0]);
      sub_1000275F4(&v150, v151[0]);

LABEL_172:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_174:
      sub_100344504(buf);
      objc_autoreleasePoolPop(context);
      if (v14 != 11 && v14)
      {
        v101 = 0;
        v102 = v117;
        goto LABEL_203;
      }

      if (++v131 == numVenuesExpected)
      {
        goto LABEL_186;
      }
    }
  }

  v116 = 0;
  v118 = 0;
LABEL_186:
  if ([venuesCopy tileIsOpenForIncrementalIO])
  {
    sub_1003421A8(buf);
    if (qword_10045B060 != -1)
    {
      sub_100382AAC();
    }

    v97 = qword_10045B068;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      *v155 = 0;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "@IndoorAvl, load, make sure we have no more venue bounds to read", v155, 2u);
    }

    if ([venuesCopy getNextVenueBoundsIncrementally:buf])
    {
      if (qword_10045B060 != -1)
      {
        sub_100382AAC();
      }

      v98 = qword_10045B068;
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *v155 = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, had venues left over after iterating over all venues in tile. why?", v155, 2u);
      }
    }

    sub_100344504(buf);
  }

  if (qword_10045B060 != -1)
  {
    sub_100382AAC();
  }

  v99 = qword_10045B068;
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v157 = v118;
    v158 = 2048;
    *v159 = v116;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEBUG, "Found %zu floors across %zu venues", buf, 0x16u);
  }

  v102 = v117;
  v101 = v117;
LABEL_203:

  return v101;
}

- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos
{
  v4 = [(CLAvailableVenuesStateMachine *)self getNearbyLocationGroupsForTile:tile withUpdatedPos:pos nearLocationsOfInterest:0];

  return v4;
}

- (id)openTileParserAtPath:(id)path
{
  pathCopy = path;
  if (qword_10045B060 != -1)
  {
    sub_100382910();
  }

  v4 = qword_10045B068;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    absoluteString = [pathCopy absoluteString];
    v17 = 136315138;
    uTF8String = [absoluteString UTF8String];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request to get nearby location groups from availability tile at %s", &v17, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  path = [pathCopy path];
  v8 = [v6 fileExistsAtPath:path];

  if (v8)
  {
    v9 = [[CLAvailabilityTileParser alloc] initWithTilePathIncrementalIO:pathCopy];
    p_super = &v9->super;
    if (v9)
    {
      p_super = v9;
      v11 = p_super;
    }

    else
    {
      if (qword_10045B060 != -1)
      {
        sub_100382AAC();
      }

      v15 = qword_10045B068;
      if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't load availability tile - ignoring request for nearby locations", &v17, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_100382AAC();
    }

    p_super = qword_10045B068;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      path2 = [pathCopy path];
      v13 = path2;
      uTF8String2 = [path2 UTF8String];
      v17 = 136315138;
      uTF8String = uTF8String2;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "#warning, cannot find file %s on-disk", &v17, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos
{
  v4 = [(CLAvailableVenuesStateMachine *)self getNearbyLocationGroups:groups withUpdatedPos:pos nearLocationsOfInterest:0];

  return v4;
}

- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest
{
  posCopy = pos;
  interestCopy = interest;
  v10 = [(CLAvailableVenuesStateMachine *)self openTileParserAtPath:groups];
  if (v10)
  {
    v11 = [(CLAvailableVenuesStateMachine *)self getNearbyLocationGroupsForTile:v10 withUpdatedPos:posCopy nearLocationsOfInterest:interestCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)clearLastFix
{
  lastFix = self->_lastFix;
  self->_lastFix = 0;
}

- (BOOL)shouldRecompute:(id)recompute
{
  recomputeCopy = recompute;
  lastFix = self->_lastFix;
  if (lastFix)
  {
    [CLAvailableVenuesStateMachine distBetweenLatLon:lastFix latlon1:recomputeCopy];
    v7 = v6;
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v8 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134217984;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, CLAvailableVenuesStateMachine, shouldRecompute, moveDist, %lf", &v11, 0xCu);
    }

    v9 = v7 >= self->_maxLoadRadius * 0.5;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest
{
  tileCopy = tile;
  posCopy = pos;
  interestCopy = interest;
  v11 = -[CLIndoorAvailabilityTileParams initWithAvailabilityTile:]([CLIndoorAvailabilityTileParams alloc], "initWithAvailabilityTile:", [tileCopy getAvlTile]);
  availabilityTileParams = self->_availabilityTileParams;
  self->_availabilityTileParams = v11;

  if (self->_lastFix)
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v13 = qword_10045B068;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(GeographicCoordinate *)self->_lastFix latitude];
      v15 = v14;
      [(GeographicCoordinate *)self->_lastFix longitude];
      v20 = 134545921;
      v21 = v15;
      v22 = 2053;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Previous load occurred at %{sensitive}.7lf, %{sensitive}.7lf", &v20, 0x16u);
    }
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v17 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "No previous location stored in state, we should definitely recompute", &v20, 2u);
    }
  }

  v18 = [(CLAvailableVenuesStateMachine *)self recomputeIfNecessary:posCopy withGlobalAvailabilityTile:tileCopy andAdditionalLOIs:interestCopy];

  return v18;
}

- (id)recomputeIfNecessary:(id)necessary withGlobalAvailabilityTile:(id)tile andAdditionalLOIs:(id)is
{
  necessaryCopy = necessary;
  tileCopy = tile;
  isCopy = is;
  v12 = isCopy;
  if (!necessaryCopy)
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v15 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Have to recompute nearby location groups because newCoordinate was not nil?", &v22, 2u);
    }

    goto LABEL_18;
  }

  if (isCopy)
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v13 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v22) = 0;
    v14 = "Have to recompute because we have locations of interest";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v14, &v22, 2u);
LABEL_17:
    objc_storeStrong(&self->_lastFix, necessary);
LABEL_18:
    v16 = [[NSMutableArray alloc] initWithArray:v12];
    v17 = v16;
    if (necessaryCopy)
    {
      [v16 addObject:necessaryCopy];
    }

    v18 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:tileCopy nearCoordinates:v17, v22];

    goto LABEL_21;
  }

  if ([(CLAvailableVenuesStateMachine *)self shouldRecompute:necessaryCopy])
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v13 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v22) = 0;
    v14 = "Have to recompute nearby location groups because we moved far enough away";
    goto LABEL_16;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382910();
  }

  v20 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    v21 = self->_lastFix == 0;
    LODWORD(v22) = 67109120;
    HIDWORD(v22) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "No need to recompute nearby location groups, (_lastFix==nil) = %d", &v22, 8u);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

+ (int64_t)getLocationContextFromVenueBounds:(const void *)bounds
{
  if ((*(bounds + 104) & 8) != 0)
  {
    return *(bounds + 24) != 1;
  }

  v3 = *(bounds + 6);
  if (!v3)
  {
    return 0;
  }

  v4 = *(bounds + 2);
  v5 = 8 * v3;
  while (1)
  {
    v6 = [NSString stringWithUTF8String:?];
    if (([v6 hasPrefix:@"G"] & 1) == 0)
    {
      break;
    }

    v4 += 8;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  v8 = [v6 hasPrefix:@"LR"];

  return v8;
}

@end