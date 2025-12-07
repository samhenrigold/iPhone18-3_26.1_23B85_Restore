@interface CLIndoorCommonHooks
+ (id)filterLocationGroups:(id)groups isRegionalSupported:(BOOL)supported;
+ (id)nearestVenues:()time_point<std:(std:()std:(1000000000>>>)std :(id)a4 ratio<1 :(id)a5 chrono:(double)chrono :(const NearestVenueSettings *)a7 duration<long)long :(BOOL)a8 chrono::steady_clock availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:;
@end

@implementation CLIndoorCommonHooks

+ (id)nearestVenues:()time_point<std:(std:()std:(1000000000>>>)std :(id)a4 ratio<1 :(id)a5 chrono:(double)chrono :(const NearestVenueSettings *)a7 duration<long)long :(BOOL)a8 chrono::steady_clock availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:
{
  v135 = *MEMORY[0x277D85DE8];
  v118 = a4;
  v117 = a5;
  if (a7->var0)
  {
    v17 = a7->var0;
    goto LABEL_45;
  }

  if (!a7->var2 && (objc_msgSend_isStaleFix_(v117, v13, v14, v15, v16, std.var0.__rep_) & 1) != 0)
  {
    v17 = 0;
    goto LABEL_45;
  }

  v119 = a7;
  v116 = objc_msgSend_filterLocationGroups_isRegionalSupported_(CLIndoorCommonHooks, v13, v14, v15, v16, v118, a7->var3);
  if (objc_msgSend_count(v116, v18, v19, v20, v21))
  {
    var2 = a7->var2;
    if (var2 || (var2 = v117) != 0)
    {
      objc_msgSend_gpsLocation(var2, v22, v23, v24);
    }

    else
    {
      memset(v132, 0, 156);
    }

    v26 = [GeographicCoordinate alloc];
    v28 = objc_msgSend_initWithLatitude_longitude_andAltitude_(v26, v27, *(v132 + 4), *(v132 + 12), 0.0);
    v33 = objc_msgSend_fromLatLon_(ECEFCoordinate, v29, v30, v31, v32, v28);

    v34 = *(&v132[1] + 4) * chrono;
    if (a8)
    {
      v35 = objc_alloc(MEMORY[0x277CBEB58]);
      v40 = objc_msgSend_count(v116, v36, v37, v38, v39);
      v17 = objc_msgSend_initWithCapacity_(v35, v41, v42, v43, v44, v40);
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v45 = v116;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, v47, v48, v49, &v120, v133, 16);
      if (v51)
      {
        v55 = *v121;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v121 != v55)
            {
              objc_enumerationMutation(v45);
            }

            v57 = *(*(&v120 + 1) + 8 * i);
            v58 = objc_msgSend_groupId(v57, v50, v52, v53, v54);
            v63 = objc_msgSend_stringByAppendingString_(@"G", v59, v60, v61, v62, v58);

            if ((objc_msgSend_containsObject_(v17, v64, v65, v66, v67, v63) & 1) == 0)
            {
              objc_msgSend_distance_(v57, v68, v69, v70, v71, v33);
              v73 = v72;
              objc_msgSend_tolerance(v57, v74, v72, v75, v76);
              v80 = v73 - v34 - v79;
              var1 = v119->var1;
              if (v80 < var1)
              {
                objc_msgSend_addObject_(v17, v77, v80, var1, v78, v63);
              }
            }
          }

          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v50, v52, v53, v54, &v120, v133, 16);
        }

        while (v51);
      }

      goto LABEL_43;
    }

    __p[0] = 0;
    __p[1] = 0;
    v131 = 0;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v82 = v116;
    v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, v84, v85, v86, &v126, v134, 16);
    if (v88)
    {
      v92 = *v127;
      v93 = INFINITY;
      do
      {
        for (j = 0; j != v88; ++j)
        {
          if (*v127 != v92)
          {
            objc_enumerationMutation(v82);
          }

          v95 = *(*(&v126 + 1) + 8 * j);
          objc_msgSend_distance_(v95, v87, v89, v90, v91, v33);
          v96 = v89;
          if (v89 < v93)
          {
            objc_msgSend_tolerance(v95, v87, v89, v90, v91);
            v89 = v34 + v97;
            if (v96 <= v89)
            {
              v98 = objc_msgSend_groupId(v95, v87, v89, v90, v91);
              v99 = v98;
              v104 = objc_msgSend_UTF8String(v98, v100, v101, v102, v103);
              MEMORY[0x245D78760](__p, v104);

              v93 = v96;
            }
          }
        }

        v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v87, v89, v90, v91, &v126, v134, 16);
      }

      while (v88);
    }

    v105 = HIBYTE(v131);
    if (v131 < 0)
    {
      v105 = __p[1];
    }

    if (v105)
    {
      std::operator+<char>();
      if (SHIBYTE(v131) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v124;
      v131 = v125;
      v109 = MEMORY[0x277CBEB98];
      if (v125 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, *&v124, v107, v108, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, *&v124, v107, v108, v124);
      }
      v110 = ;
      v17 = objc_msgSend_setWithObject_(v109, v111, v112, v113, v114, v110);

      if ((v131 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = 0;
      if ((v131 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    operator delete(__p[0]);
LABEL_43:

    goto LABEL_44;
  }

  v17 = 0;
LABEL_44:

LABEL_45:

  return v17;
}

+ (id)filterLocationGroups:(id)groups isRegionalSupported:(BOOL)supported
{
  supportedCopy = supported;
  v44 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v10 = groupsCopy;
  if (supportedCopy)
  {
    v11 = objc_msgSend_copy(groupsCopy, v6, v7, v8, v9);
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = v10;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v39, v43, 16);
    if (v17)
    {
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v25 = objc_msgSend_locationContext(v20, v21, v22, v23, v24, v39);
          if ((objc_msgSend_isRegional_(CLLocationContextUtil, v26, v27, v28, v29, v25) & 1) == 0)
          {
            objc_msgSend_addObject_(v11, v30, v31, v32, v33, v20);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v34, v35, v36, v37, &v39, v43, 16);
      }

      while (v17);
    }
  }

  return v11;
}

@end