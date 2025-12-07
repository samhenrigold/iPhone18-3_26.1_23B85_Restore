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

- (void)clearLastFix
{
  lastFix = self->_lastFix;
  self->_lastFix = 0;
}

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
  v75 = *MEMORY[0x277D85DE8];
  lonCopy = lon;
  latlon1Copy = latlon1;
  v11 = latlon1Copy;
  if (!lonCopy)
  {
    v57 = sub_245A782E4(latlon1Copy);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = "assert";
      v73 = 2081;
      v74 = "latlon0 != nullptr";
      _os_log_impl(&dword_245A2E000, v57, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v59 = sub_245A782E4(v58);
    if (os_signpost_enabled(v59))
    {
      *buf = 68289539;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = "assert";
      v73 = 2081;
      v74 = "latlon0 != nullptr";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: first coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v61 = sub_245A782E4(v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = "assert";
      v73 = 2081;
      v74 = "latlon0 != nullptr";
      _os_log_impl(&dword_245A2E000, v61, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v62 = 104;
LABEL_18:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", v62, "+[CLAvailableVenuesStateMachine distBetweenLatLon:latlon1:]");
    __break(1u);
  }

  if (!latlon1Copy)
  {
    v63 = sub_245A782E4(0);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = "assert";
      v73 = 2081;
      v74 = "latlon1 != nullptr";
      _os_log_impl(&dword_245A2E000, v63, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v65 = sub_245A782E4(v64);
    if (os_signpost_enabled(v65))
    {
      *buf = 68289539;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = "assert";
      v73 = 2081;
      v74 = "latlon1 != nullptr";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v65, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: second coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v61 = sub_245A782E4(v66);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = "assert";
      v73 = 2081;
      v74 = "latlon1 != nullptr";
      _os_log_impl(&dword_245A2E000, v61, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v62 = 105;
    goto LABEL_18;
  }

  objc_msgSend_latitude(lonCopy, v7, v8, v9, v10);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v12, v13, v14, v15);
  v17 = v16;
  objc_msgSend_longitude(lonCopy, v18, v16, v19, v20);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v21, v22, v23, v24);
  v26 = v25;
  objc_msgSend_latitude(v11, v27, v25, v28, v29);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v30, v31, v32, v33);
  v35 = v34;
  objc_msgSend_longitude(v11, v36, v34, v37, v38);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v39, v40, v41, v42);
  v44 = sin((v26 - v43) * 0.5);
  v45 = v44 * v44;
  v46 = sin((v17 - v35) * 0.5);
  v47 = v46 * v46;
  v48 = cos(v17);
  v49 = cos(v35);
  v50 = asin(sqrt(v47 + v48 * v49 * v45));
  objc_msgSend_metersFromGreatCircleDistance_(CLAvailableVenuesStateMachine, v51, v50 + v50, v52, v53);
  v55 = v54;

  return v55;
}

- (BOOL)isVenueDisabled:(id)disabled locationId:(id)id
{
  disabledCopy = disabled;
  idCopy = id;
  disabledVenues = self->_disabledVenues;
  if (disabledVenues)
  {
    v13 = objc_msgSend_member_(disabledVenues, v7, v9, v10, v11, disabledCopy);
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v19 = objc_msgSend_member_(self->_disabledVenues, v14, v15, v16, v17, idCopy);
      v18 = v19 != 0;

      v13 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates
{
  venuesCopy = venues;
  coordinatesCopy = coordinates;
  v28 = 0;
  v12 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v8, v9, v10, v11, venuesCopy, coordinatesCopy, &v28);
  if (v28 == 1)
  {
    sub_245A785B8();
    v17 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v13, v14, v15, v16, venuesCopy, coordinatesCopy, &v28);

    if (v28 == 1)
    {
      sub_245A785B8();
      v12 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v18, v19, v20, v21, venuesCopy, coordinatesCopy, &v28);

      if (v28 == 1)
      {
        sub_245A785B8();
        v26 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v22, v23, v24, v25, venuesCopy, coordinatesCopy, &v28);

        if (v28 == 1)
        {
          sub_245A8E690(&v29);

          result = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 143, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:]");
          __break(1u);
          return result;
        }

        v12 = v26;
      }
    }

    else
    {
      v12 = v17;
    }
  }

  return v12;
}

- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates withError:(BOOL *)error
{
  v357 = *MEMORY[0x277D85DE8];
  venuesCopy = venues;
  coordinatesCopy = coordinates;
  errorCopy = error;
  *error = 0;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v7, v8, v9, v10, v11, 120);
  v13 = 120;
  do
  {
    v14 = objc_alloc_init(ECEFCoordinate);
    objc_msgSend_addObject_(v12, v15, v16, v17, v18, v14);

    --v13;
  }

  while (v13);
  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v323 = objc_msgSend_initWithCapacity_(v19, v20, v21, v22, v23, 120);
  v326 = v12;
  v324 = objc_alloc_init(GeographicCoordinate);
  v330 = objc_alloc_init(ENUCoordinate);
  v313 = objc_alloc_init(ECEFCoordinate);
  v317 = objc_alloc_init(GeographicCoordinate);
  v316 = objc_msgSend_numVenuesExpected(venuesCopy, v24, v25, v26, v27);
  v318 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v28, v29, v30, v31, v316);
  v36 = objc_msgSend_numTotalExpectedExteriorsInVenues(venuesCopy, v32, v33, v34, v35);
  if (qword_28144B270 != -1)
  {
    sub_245A8E67C();
  }

  v37 = qword_28144B278;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v349 = v36;
    _os_log_impl(&dword_245A2E000, v37, OS_LOG_TYPE_INFO, "@IndoorAvl, load, Reserving %zu entries for AvailabilityTile entries in result", buf, 0xCu);
  }

  v308 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v38, v39, v40, v41, v36);
  if (qword_28144B270 != -1)
  {
    sub_245A8E818();
  }

  v42 = qword_28144B278;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v349) = v316;
    _os_log_impl(&dword_245A2E000, v42, OS_LOG_TYPE_INFO, "@IndoorAvl, load, iterating over %d venues in the availability tile", buf, 8u);
  }

  if (v316 >= 1)
  {
    v309 = 0;
    v307 = 0;
    v322 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      sub_245A3036C(buf);
      if (objc_msgSend_tileIsOpenForIncrementalIO(venuesCopy, v47, v48, v49, v50))
      {
        if ((objc_msgSend_getNextVenueBoundsIncrementally_(venuesCopy, v51, v52, v53, v54, buf) & 1) == 0)
        {
          if (qword_28144B270 != -1)
          {
            sub_245A8E818();
          }

          v55 = qword_28144B278;
          if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
          {
            *v347 = 0;
            _os_log_impl(&dword_245A2E000, v55, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, failed to incrementally read venue bounds from tile", v347, 2u);
          }

          v56 = 1;
          *errorCopy = 1;
          goto LABEL_174;
        }
      }

      else
      {
        AvlTile = objc_msgSend_getAvlTile(venuesCopy, v51, v52, v53, v54);
        sub_245A827CC(AvlTile, v322, v347);
        sub_245A89074(buf, v347);
        sub_245A30368(v347);
      }

      sub_245A38948(&v351[2], ", ", __p);
      if (!v354)
      {
        if (qword_28144B270 != -1)
        {
          sub_245A8E818();
        }

        v68 = qword_28144B278;
        if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
        {
          v69 = __p;
          if (v344 < 0)
          {
            v69 = __p[0];
          }

          *v347 = 136446210;
          *&v347[4] = v69;
          _os_log_impl(&dword_245A2E000, v68, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, venue [%{public}s] is missing exterior", v347, 0xCu);
          v56 = 11;
        }

        else
        {
          v56 = 11;
        }

        goto LABEL_172;
      }

      v342[0] = 0;
      v342[1] = 0;
      v341 = v342;
      v340[0] = 0;
      v340[1] = 0;
      v339 = v340;
      if ((v356 & 4) != 0)
      {
        v62 = v355;
        if (!v355)
        {
          v62 = *(qword_28144B978 + 64);
        }

        sub_245A317F0(v347, v62);
        if (*&v347[24] >= 1)
        {
          v63 = 0;
          do
          {
            v64 = *(*&v347[16] + 4 * v63);
            v65 = v340[0];
LABEL_31:
            if (!v65)
            {
LABEL_35:
              operator new();
            }

            while (1)
            {
              v66 = v65;
              v67 = *(v65 + 7);
              if (v64 < v67)
              {
                v65 = *v66;
                goto LABEL_31;
              }

              if (v67 >= v64)
              {
                break;
              }

              v65 = v66[1];
              if (!v65)
              {
                goto LABEL_35;
              }
            }

            ++v63;
          }

          while (v63 < *&v347[24]);
        }

        sub_245A32198(v347);
      }

      objc_msgSend_removeAllObjects(v318, v58, v59, v60, v61);
      if (v352 < 1)
      {
        goto LABEL_163;
      }

      v74 = 0;
      v75 = 0;
      do
      {
        v76 = *(*&v351[2] + 8 * v74);
        if (*(v76 + 23) < 0)
        {
          v76 = *v76;
        }

        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v76);
        if (objc_msgSend_hasPrefix_(v77, v78, v79, v80, v81, @"G"))
        {
          if (v75)
          {

            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v268 = qword_28144B278;
            if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
            {
              v269 = __p;
              if (v344 < 0)
              {
                v269 = __p[0];
              }

              *v347 = 136446210;
              *&v347[4] = v269;
              v270 = v268;
              v271 = OS_LOG_TYPE_ERROR;
              v272 = "Multiple groups associated with venue [%{public}s].  Ignoring from availability tile";
              goto LABEL_183;
            }

LABEL_170:
            v56 = 11;
            goto LABEL_171;
          }

          if (objc_msgSend_isVenueDisabled_locationId_(self, v82, v83, v84, v85, v77, 0))
          {
            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v273 = qword_28144B278;
            if (os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG))
            {
              v274 = v77;
              v279 = objc_msgSend_UTF8String(v77, v275, v276, v277, v278);
              *v347 = 136315138;
              *&v347[4] = v279;
              _os_log_impl(&dword_245A2E000, v273, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v347, 0xCu);
            }

LABEL_163:
            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v280 = qword_28144B278;
            if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
            {
              v281 = __p;
              if (v344 < 0)
              {
                v281 = __p[0];
              }

              *v347 = 136315138;
              *&v347[4] = v281;
              _os_log_impl(&dword_245A2E000, v280, OS_LOG_TYPE_DEFAULT, "#Warning Cannot find location group in venue [%s]", v347, 0xCu);
            }

            v75 = 0;
            goto LABEL_170;
          }

          v75 = v77;
        }

        else
        {
          if (!objc_msgSend_hasPrefix_(v77, v82, v83, v84, v85, @"L"))
          {
            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v94 = qword_28144B278;
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              v101 = v77;
              v106 = objc_msgSend_UTF8String(v77, v102, v103, v104, v105);
              *v347 = 136315138;
              *&v347[4] = v106;
              _os_log_impl(&dword_245A2E000, v94, OS_LOG_TYPE_DEFAULT, "#Warning Encountered invalid venue id %s in availability tile. Skipping", v347, 0xCu);
            }

            goto LABEL_62;
          }

          if (objc_msgSend_isVenueDisabled_locationId_(self, v86, v87, v88, v89, 0, v77))
          {
            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v94 = qword_28144B278;
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              v95 = v77;
              v100 = objc_msgSend_UTF8String(v77, v96, v97, v98, v99);
              *v347 = 136315138;
              *&v347[4] = v100;
              _os_log_impl(&dword_245A2E000, v94, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v347, 0xCu);
            }

LABEL_62:

            goto LABEL_63;
          }

          objc_msgSend_addObject_(v318, v90, v91, v92, v93, v77);
          if (v74 >= v352)
          {
            sub_245A8E840();
            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 154, "operator()");
            goto LABEL_227;
          }

          if ((v356 & 4) != 0)
          {
            v116 = v340[0];
            if (v340[0])
            {
              v117 = v340;
              do
              {
                v118 = *(v116 + 7);
                v119 = v74 <= v118;
                v120 = v74 > v118;
                if (v119)
                {
                  v117 = v116;
                }

                v116 = v116[v120];
              }

              while (v116);
              if (v117 != v340 && v74 >= *(v117 + 7))
              {
LABEL_77:
                v121 = objc_msgSend_count(v318, v107, v108, v109, v110) - 1;
                for (i = v342[0]; i; i = *v123)
                {
                  while (1)
                  {
                    v123 = i;
                    v124 = i[4];
                    if (v121 < v124)
                    {
                      break;
                    }

                    if (v124 >= v121)
                    {
                      goto LABEL_63;
                    }

                    i = v123[1];
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

          else
          {
            LocationContextFromVenueBounds = objc_msgSend_getLocationContextFromVenueBounds_(CLAvailableVenuesStateMachine, v107, v108, v109, v110, buf);
            if (objc_msgSend_isRegional_(CLLocationContextUtil, v112, v113, v114, v115, LocationContextFromVenueBounds))
            {
              goto LABEL_77;
            }
          }
        }

LABEL_63:

        ++v74;
      }

      while (v74 < v352);
      if (!v75)
      {
        goto LABEL_163;
      }

      if (!objc_msgSend_count(v318, v70, v71, v72, v73) || !v318)
      {
        if (qword_28144B270 != -1)
        {
          sub_245A8E818();
        }

        v282 = qword_28144B278;
        if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
        {
          v283 = __p;
          if (v344 < 0)
          {
            v283 = __p[0];
          }

          *v347 = 136315138;
          *&v347[4] = v283;
          v270 = v282;
          v271 = OS_LOG_TYPE_DEFAULT;
          v272 = "#Warning No venues associated with availability tile [%s]";
LABEL_183:
          _os_log_impl(&dword_245A2E000, v270, v271, v272, v347, 0xCu);
          goto LABEL_170;
        }

        goto LABEL_170;
      }

      v129 = objc_msgSend_count(v318, v125, v126, v127, v128);
      v306 = objc_msgSend_substringFromIndex_(v75, v130, v131, v132, v133, 1);

      v138 = objc_msgSend_getLocationContextFromVenueBounds_(CLAvailableVenuesStateMachine, v134, v135, v136, v137, buf);
      v305 = v138;
      v309 += v129;
      if (v354)
      {
        v314 = 0;
        v315 = v353;
        v312 = &v353[v354];
        do
        {
          if (v314)
          {
            v314 = 1;
          }

          else
          {
            v143 = *(*v315 + 24);
            v320 = *v315;
            if (v143 == *(*v315 + 48))
            {
              if ((v143 & 0x80000000) != 0)
              {
                v297 = sub_245A782E4(v138);
                if (os_log_type_enabled(v297, OS_LOG_TYPE_FAULT))
                {
                  v298 = *(v320 + 48);
                  *v347 = 68289795;
                  *&v347[8] = 2082;
                  *&v347[10] = "";
                  *&v347[18] = 1026;
                  *&v347[20] = v298;
                  *&v347[24] = 2082;
                  *&v347[26] = "assert";
                  *&v347[34] = 2081;
                  *&v347[36] = "exterior.longitude_size() >= 0";
                  _os_log_impl(&dword_245A2E000, v297, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v347, 0x2Cu);
                }

                v300 = sub_245A782E4(v299);
                if (os_signpost_enabled(v300))
                {
                  v301 = *(v320 + 48);
                  *v347 = 68289795;
                  *&v347[8] = 2082;
                  *&v347[10] = "";
                  *&v347[18] = 1026;
                  *&v347[20] = v301;
                  *&v347[24] = 2082;
                  *&v347[26] = "assert";
                  *&v347[34] = 2081;
                  *&v347[36] = "exterior.longitude_size() >= 0";
                  _os_signpost_emit_with_name_impl(&dword_245A2E000, v300, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, load, exterior longitude_size() returned a negative value?!", "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v347, 0x2Cu);
                }

                v303 = sub_245A782E4(v302);
                if (os_log_type_enabled(v303, OS_LOG_TYPE_INFO))
                {
                  v304 = *(v320 + 48);
                  *v347 = 68289795;
                  *&v347[8] = 2082;
                  *&v347[10] = "";
                  *&v347[18] = 1026;
                  *&v347[20] = v304;
                  *&v347[24] = 2082;
                  *&v347[26] = "assert";
                  *&v347[34] = 2081;
                  *&v347[36] = "exterior.longitude_size() >= 0";
                  _os_log_impl(&dword_245A2E000, v303, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v347, 0x2Cu);
                }

                abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 337, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:withError:]");
LABEL_227:
                while (2)
                {
                  __break(1u);
                  sub_245A8E818();
                  v294 = qword_28144B278;
                  if (os_log_type_enabled(v294, OS_LOG_TYPE_FAULT))
                  {
                    *v347 = 68289539;
                    *&v347[4] = 0;
                    *&v347[8] = 2082;
                    *&v347[10] = "";
                    *&v347[18] = 2082;
                    *&v347[20] = "assert";
                    *&v347[28] = 2081;
                    *&v347[30] = "!std::isnan(vertexENU.x())";
                    _os_log_impl(&dword_245A2E000, v294, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v347, 0x26u);
                  }

                  if (qword_28144B270 == -1)
                  {
                    v295 = qword_28144B278;
                    if (os_signpost_enabled(v295))
                    {
                      goto LABEL_210;
                    }
                  }

                  else
                  {
                    dispatch_once(&qword_28144B270, &unk_28589FEF8);
                    v295 = qword_28144B278;
                    if (os_signpost_enabled(v295))
                    {
LABEL_210:
                      *v347 = 68289539;
                      *&v347[4] = 0;
                      *&v347[8] = 2082;
                      *&v347[10] = "";
                      *&v347[18] = 2082;
                      *&v347[20] = "assert";
                      *&v347[28] = 2081;
                      *&v347[30] = "!std::isnan(vertexENU.x())";
                      _os_signpost_emit_with_name_impl(&dword_245A2E000, v295, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "vertexENU.x() must not be NaN", "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v347, 0x26u);
                    }
                  }

                  if (qword_28144B270 != -1)
                  {
                    dispatch_once(&qword_28144B270, &unk_28589FEF8);
                  }

                  v296 = qword_28144B278;
                  if (os_log_type_enabled(v296, OS_LOG_TYPE_INFO))
                  {
                    *v347 = 68289539;
                    *&v347[4] = 0;
                    *&v347[8] = 2082;
                    *&v347[10] = "";
                    *&v347[18] = 2082;
                    *&v347[20] = "assert";
                    *&v347[28] = 2081;
                    *&v347[30] = "!std::isnan(vertexENU.x())";
                    _os_log_impl(&dword_245A2E000, v296, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v347, 0x26u);
                  }

                  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 366, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:withError:]");
                  continue;
                }
              }

              if (objc_msgSend_count(v12, v139, v140, v141, v142) < v143)
              {
                v148 = objc_msgSend_count(v12, v144, v145, v146, v147);
                v149 = v143 - v148;
                if (v143 != v148)
                {
                  do
                  {
                    v150 = objc_alloc_init(ECEFCoordinate);
                    objc_msgSend_addObject_(v12, v151, v152, v153, v154, v150);

                    --v149;
                  }

                  while (v149);
                }

                if (qword_28144B270 != -1)
                {
                  sub_245A8E818();
                }

                v155 = qword_28144B278;
                if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_FAULT))
                {
                  *v347 = 67109120;
                  *&v347[4] = v143;
                  _os_log_impl(&dword_245A2E000, v155, OS_LOG_TYPE_FAULT, "@IndoorAvl, load, Needed to allocate additional ECEFCoordinates for the pool: total required %d", v347, 8u);
                }
              }

              if (v143)
              {
                v156 = 0;
                v157 = 8 * v143;
                do
                {
                  objc_msgSend_setFromLatitude_longitude_andAltitude_(v324, v144, *(*(v320 + 16) + v156), *(*(v320 + 40) + v156), 0.0);
                  v162 = objc_msgSend_lastObject(v12, v158, v159, v160, v161);
                  objc_msgSend_removeLastObject(v12, v163, v164, v165, v166);
                  objc_msgSend_setFromLatLon_(v162, v167, v168, v169, v170, v324);
                  objc_msgSend_addObject_(v323, v171, v172, v173, v174, v162);

                  v156 += 8;
                }

                while (v157 != v156);
              }

              objc_msgSend_storeAverage_ofVertices_(CLLocationGroup, v144, v145, v146, v147, v313, v323);
              objc_msgSend_setFromECEFCoordinate_(v317, v175, v176, v177, v178, v313);
              if (objc_msgSend_count(coordinatesCopy, v179, v180, v181, v182))
              {
                v337 = 0u;
                v338 = 0u;
                v335 = 0u;
                v336 = 0u;
                v186 = coordinatesCopy;
                v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v187, v188, v189, v190, &v335, v346, 16);
                if (v191)
                {
                  v192 = *v336;
LABEL_107:
                  v193 = 0;
                  while (1)
                  {
                    if (*v336 != v192)
                    {
                      objc_enumerationMutation(v186);
                    }

                    v194 = *(*(&v335 + 1) + 8 * v193);
                    objc_msgSend_distBetweenLatLon_latlon1_(CLAvailableVenuesStateMachine, v195, v196, v197, v198, v317, v194);
                    v200 = v199;
                    v201 = v199 >= self->_maxLoadRadius;

                    if (!v201)
                    {
                      break;
                    }

                    if (v191 == ++v193)
                    {
                      v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v202, v203, v204, v205, &v335, v346, 16);
                      if (v191)
                      {
                        goto LABEL_107;
                      }

                      break;
                    }
                  }
                }

                else
                {
                  v200 = 1.79769313e308;
                }
              }

              else
              {
                v200 = 0.0;
              }

              maxLoadRadius = self->_maxLoadRadius;
              v314 = v200 > maxLoadRadius;
              if (v200 > maxLoadRadius)
              {
                v309 -= objc_msgSend_count(v318, v183, maxLoadRadius, v184, v185);
              }

              else
              {
                v215 = [CLLocationGroup alloc];
                v219 = objc_msgSend_initWithGroupId_locationIds_center_wifiOnlyDownloadLocIdxs_locationContext_andTolerance_(v215, v216, *(v320 + 64), v217, v218, v306, v318, v313, &v341, v305);
                v329 = v219;
                Vertices = objc_msgSend_getVertices(v219, v220, v221, v222, v223);
                v333 = 0u;
                v334 = 0u;
                v331 = 0u;
                v332 = 0u;
                obj = v323;
                v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v225, v226, v227, v228, &v331, v345, 16);
                v234 = v229;
                if (v229)
                {
                  v328 = *v332;
                  do
                  {
                    v235 = 0;
                    do
                    {
                      if (*v332 != v328)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v236 = *(*(&v331 + 1) + 8 * v235);
                      v237 = *Vertices;
                      v238 = objc_msgSend_centerLatLon(v219, v230, v231, v232, v233);
                      v243 = objc_msgSend_centerECEF(v219, v239, v240, v241, v242);
                      objc_msgSend_toBoostEnuWithLatLonOrigin_andEcefOrigin_usingENU_(v236, v244, v245, v246, v247, v238, v243, v330);
                      v251 = v237[1];
                      v250 = v237[2];
                      if (v251 >= v250)
                      {
                        v253 = *v237;
                        v254 = v251 - *v237;
                        v255 = v254 >> 4;
                        v256 = (v254 >> 4) + 1;
                        if (v256 >> 60)
                        {
                          sub_245A7B094();
                        }

                        v257 = v250 - v253;
                        if (v257 >> 3 > v256)
                        {
                          v256 = v257 >> 3;
                        }

                        if (v257 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v258 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v258 = v256;
                        }

                        if (v258)
                        {
                          if (!(v258 >> 60))
                          {
                            operator new();
                          }

                          sub_245A3C610();
                        }

                        v259 = (16 * v255);
                        *v259 = v248;
                        v259[1] = v249;
                        v252 = 16 * v255 + 16;
                        memcpy(0, v253, v254);
                        *v237 = 0;
                        v237[1] = v252;
                        v237[2] = 0;
                        if (v253)
                        {
                          operator delete(v253);
                        }

                        v12 = v326;
                      }

                      else
                      {
                        *v251 = v248;
                        v251[1] = v249;
                        v252 = (v251 + 2);
                      }

                      v237[1] = v252;

                      v231 = *((*Vertices)[1] - 8);
                      v219 = v329;
                      ++v235;
                    }

                    while (v234 != v235);
                    v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v230, v231, v232, v233, &v331, v345, 16);
                  }

                  while (v234);
                }

                if (*(v320 + 48) != ((*Vertices)[1] - **Vertices) >> 4)
                {
                  sub_245A8EA20(v347);

                  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailableVenuesStateMachine.mm", 372, "[CLAvailableVenuesStateMachine computeAvailableVenues:nearCoordinates:withError:]");
                  goto LABEL_227;
                }

                sub_245A31344(*Vertices);
                objc_msgSend_addObject_(v308, v260, v261, v262, v263, v329);

                ++v307;
              }

              objc_msgSend_addObjectsFromArray_(v12, v211, v212, v213, v214, v323);
              v138 = objc_msgSend_removeAllObjects(v323, v264, v265, v266, v267);
            }

            else
            {
              if (qword_28144B270 != -1)
              {
                sub_245A8E818();
              }

              v206 = qword_28144B278;
              v138 = os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR);
              if (v138)
              {
                v207 = __p;
                if (v344 < 0)
                {
                  v207 = __p[0];
                }

                v208 = *(v320 + 24);
                v209 = *(v320 + 48);
                *v347 = 136446722;
                *&v347[4] = v207;
                *&v347[12] = 1026;
                *&v347[14] = v208;
                *&v347[18] = 1026;
                *&v347[20] = v209;
                _os_log_impl(&dword_245A2E000, v206, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, exterior polygon of venue [%{public}s] is corrupt.  %{public}d latitudes, %{public}d longitudes", v347, 0x18u);
              }

              v314 = 0;
            }
          }

          ++v315;
        }

        while (v315 != v312);
      }

      v56 = 0;
      v75 = v306;
LABEL_171:
      sub_245A312EC(&v339, v340[0]);
      sub_245A312EC(&v341, v342[0]);

LABEL_172:
      if (v344 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_174:
      sub_245A30368(buf);
      objc_autoreleasePoolPop(context);
      if (v56 != 11 && v56)
      {
        v292 = 0;
        v293 = v308;
        goto LABEL_203;
      }

      if (++v322 == v316)
      {
        goto LABEL_186;
      }
    }
  }

  v307 = 0;
  v309 = 0;
LABEL_186:
  if (objc_msgSend_tileIsOpenForIncrementalIO(venuesCopy, v43, v44, v45, v46))
  {
    sub_245A3036C(buf);
    if (qword_28144B270 != -1)
    {
      sub_245A8E818();
    }

    v284 = qword_28144B278;
    if (os_log_type_enabled(v284, OS_LOG_TYPE_INFO))
    {
      *v347 = 0;
      _os_log_impl(&dword_245A2E000, v284, OS_LOG_TYPE_INFO, "@IndoorAvl, load, make sure we have no more venue bounds to read", v347, 2u);
    }

    if (objc_msgSend_getNextVenueBoundsIncrementally_(venuesCopy, v285, v286, v287, v288, buf))
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E818();
      }

      v289 = qword_28144B278;
      if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
      {
        *v347 = 0;
        _os_log_impl(&dword_245A2E000, v289, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, had venues left over after iterating over all venues in tile. why?", v347, 2u);
      }
    }

    sub_245A30368(buf);
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8E818();
  }

  v290 = qword_28144B278;
  if (os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v349 = v309;
    v350 = 2048;
    *v351 = v307;
    _os_log_impl(&dword_245A2E000, v290, OS_LOG_TYPE_DEBUG, "Found %zu floors across %zu venues", buf, 0x16u);
  }

  v293 = v308;
  v292 = v308;
LABEL_203:

  return v292;
}

- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos
{
  v7 = objc_msgSend_getNearbyLocationGroupsForTile_withUpdatedPos_nearLocationsOfInterest_(self, a2, v4, v5, v6, tile, pos, 0);

  return v7;
}

- (id)openTileParserAtPath:(id)path
{
  v53 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (qword_28144B270 != -1)
  {
    sub_245A8E67C();
  }

  v4 = qword_28144B278;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_absoluteString(pathCopy, v5, v6, v7, v8);
    v10 = v9;
    v51 = 136315138;
    v52 = objc_msgSend_UTF8String(v10, v11, v12, v13, v14);
    _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_INFO, "Request to get nearby location groups from availability tile at %s", &v51, 0xCu);
  }

  v19 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v15, v16, v17, v18);
  v24 = objc_msgSend_path(pathCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_fileExistsAtPath_(v19, v25, v26, v27, v28, v24);

  if (v29)
  {
    v30 = [CLAvailabilityTileParser alloc];
    v35 = objc_msgSend_initWithTilePathIncrementalIO_(v30, v31, v32, v33, v34, pathCopy);
    v36 = v35;
    if (v35)
    {
      v36 = v35;
      v37 = v36;
    }

    else
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E818();
      }

      v49 = qword_28144B278;
      if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v51) = 0;
        _os_log_impl(&dword_245A2E000, v49, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't load availability tile - ignoring request for nearby locations", &v51, 2u);
      }

      v37 = 0;
    }
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E818();
    }

    v36 = qword_28144B278;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v42 = objc_msgSend_path(pathCopy, v38, v39, v40, v41);
      v43 = v42;
      v48 = objc_msgSend_UTF8String(v42, v44, v45, v46, v47);
      v51 = 136315138;
      v52 = v48;
      _os_log_impl(&dword_245A2E000, v36, OS_LOG_TYPE_INFO, "#warning, cannot find file %s on-disk", &v51, 0xCu);
    }

    v37 = 0;
  }

  return v37;
}

- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos
{
  v7 = objc_msgSend_getNearbyLocationGroups_withUpdatedPos_nearLocationsOfInterest_(self, a2, v4, v5, v6, groups, pos, 0);

  return v7;
}

- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest
{
  posCopy = pos;
  interestCopy = interest;
  v15 = objc_msgSend_openTileParserAtPath_(self, v10, v11, v12, v13, groups);
  if (v15)
  {
    v19 = objc_msgSend_getNearbyLocationGroupsForTile_withUpdatedPos_nearLocationsOfInterest_(self, v14, v16, v17, v18, v15, posCopy, interestCopy);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)shouldRecompute:(id)recompute
{
  v17 = *MEMORY[0x277D85DE8];
  recomputeCopy = recompute;
  lastFix = self->_lastFix;
  if (lastFix)
  {
    objc_msgSend_distBetweenLatLon_latlon1_(CLAvailableVenuesStateMachine, v4, v6, v7, v8, lastFix, recomputeCopy);
    v11 = v10;
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v12 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134217984;
      v16 = v11;
      _os_log_impl(&dword_245A2E000, v12, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, CLAvailableVenuesStateMachine, shouldRecompute, moveDist, %lf", &v15, 0xCu);
    }

    v13 = v11 >= self->_maxLoadRadius * 0.5;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest
{
  v45 = *MEMORY[0x277D85DE8];
  tileCopy = tile;
  posCopy = pos;
  interestCopy = interest;
  v11 = [CLIndoorAvailabilityTileParams alloc];
  AvlTile = objc_msgSend_getAvlTile(tileCopy, v12, v13, v14, v15);
  v21 = objc_msgSend_initWithAvailabilityTile_(v11, v17, v18, v19, v20, AvlTile);
  availabilityTileParams = self->_availabilityTileParams;
  self->_availabilityTileParams = v21;

  if (self->_lastFix)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v23 = qword_28144B278;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      objc_msgSend_latitude(self->_lastFix, v24, v25, v26, v27);
      v29 = v28;
      objc_msgSend_longitude(self->_lastFix, v30, v28, v31, v32);
      v41 = 134545921;
      v42 = v29;
      v43 = 2053;
      v44 = v33;
      _os_log_impl(&dword_245A2E000, v23, OS_LOG_TYPE_DEBUG, "Previous load occurred at %{sensitive}.7lf, %{sensitive}.7lf", &v41, 0x16u);
    }
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v38 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_245A2E000, v38, OS_LOG_TYPE_DEBUG, "No previous location stored in state, we should definitely recompute", &v41, 2u);
    }
  }

  v39 = objc_msgSend_recomputeIfNecessary_withGlobalAvailabilityTile_andAdditionalLOIs_(self, v34, v35, v36, v37, posCopy, tileCopy, interestCopy);

  return v39;
}

- (id)recomputeIfNecessary:(id)necessary withGlobalAvailabilityTile:(id)tile andAdditionalLOIs:(id)is
{
  v36 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  tileCopy = tile;
  isCopy = is;
  v16 = isCopy;
  if (!necessaryCopy)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v19 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_245A2E000, v19, OS_LOG_TYPE_DEBUG, "Have to recompute nearby location groups because newCoordinate was not nil?", &v35, 2u);
    }

    goto LABEL_18;
  }

  if (isCopy)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v17 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v35) = 0;
    v18 = "Have to recompute because we have locations of interest";
LABEL_16:
    _os_log_impl(&dword_245A2E000, v17, OS_LOG_TYPE_DEBUG, v18, &v35, 2u);
LABEL_17:
    objc_storeStrong(&self->_lastFix, necessary);
LABEL_18:
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = objc_msgSend_initWithArray_(v20, v21, v22, v23, v24, v16);
    v30 = v25;
    if (necessaryCopy)
    {
      objc_msgSend_addObject_(v25, v26, v27, v28, v29, necessaryCopy);
    }

    v31 = objc_msgSend_computeAvailableVenues_nearCoordinates_(self, v26, v27, v28, v29, tileCopy, v30, v35, v36);

    goto LABEL_21;
  }

  if (objc_msgSend_shouldRecompute_(self, v12, v13, v14, v15, necessaryCopy))
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v17 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v35) = 0;
    v18 = "Have to recompute nearby location groups because we moved far enough away";
    goto LABEL_16;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8E67C();
  }

  v33 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    v34 = self->_lastFix == 0;
    LODWORD(v35) = 67109120;
    HIDWORD(v35) = v34;
    _os_log_impl(&dword_245A2E000, v33, OS_LOG_TYPE_DEBUG, "No need to recompute nearby location groups, (_lastFix==nil) = %d", &v35, 8u);
  }

  v31 = 0;
LABEL_21:

  return v31;
}

+ (int64_t)getLocationContextFromVenueBounds:(const void *)bounds
{
  if ((*(bounds + 104) & 8) != 0)
  {
    return *(bounds + 24) != 1;
  }

  v6 = *(bounds + 6);
  if (!v6)
  {
    return 0;
  }

  v7 = *(bounds + 2);
  v8 = 8 * v6;
  while (1)
  {
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5);
    if ((objc_msgSend_hasPrefix_(v9, v10, v11, v12, v13, @"G") & 1) == 0)
    {
      break;
    }

    v7 += 8;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  hasPrefix = objc_msgSend_hasPrefix_(v9, v14, v15, v16, v17, @"LR");

  return hasPrefix;
}

@end