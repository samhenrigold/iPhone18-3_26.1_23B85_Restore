@interface CLReductiveFilterSuite
+ (double)rangeForReductiveFilterOptions:(id)options;
+ (double)rangeForTransmitPower:(double)power;
+ (id)applyFilterToLocationObservations:(id)observations options:(id)options;
+ (id)applyFilterToLocationTrace:(id)trace options:(id)options;
+ (id)deriveLocationFromLocations:(id)locations;
+ (id)deriveLocationFromLocations:(id)locations options:(id)options;
+ (id)filterOutliers:(id)outliers;
+ (id)filterOutliers:(id)outliers options:(id)options;
@end

@implementation CLReductiveFilterSuite

+ (double)rangeForReductiveFilterOptions:(id)options
{
  objc_msgSend_applyRangeEstimation(options, a2, options, v3);
  if (v8 == 0.0)
  {
    return 0.0;
  }

  objc_msgSend_transmitPower(options, v5, v6, v7);

  MEMORY[0x1EEE66B58](CLReductiveFilterSuite, sel_rangeForTransmitPower_, v9, v10);
  return result;
}

+ (double)rangeForTransmitPower:(double)power
{
  powerCopy = power;
  v14 = *MEMORY[0x1E69E9840];
  if (power < 4.0 || power > 20.0)
  {
    if (qword_1EAFE4768 != -1)
    {
      dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
    }

    v5 = qword_1EAFE4770;
    if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = powerCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:rangeForTransmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f}", &v9, 0x1Cu);
      if (qword_1EAFE4768 != -1)
      {
        dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
      }
    }

    v6 = qword_1EAFE4770;
    if (os_signpost_enabled(qword_1EAFE4770))
    {
      v9 = 68289282;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = powerCopy;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "rangeForTransmitPower: invalid range of transmit power", "{msg%{public}.0s:rangeForTransmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f}", &v9, 0x1Cu);
    }

    v7 = 4.0;
    if (powerCopy >= 4.0)
    {
      v7 = powerCopy;
    }

    powerCopy = fmin(v7, 20.0);
  }

  return sqrt(__exp10(powerCopy / 10.0) / 1000.0) * 199.526231;
}

+ (id)filterOutliers:(id)outliers
{
  v6 = objc_alloc_init(CLReductiveFilterOptions);

  return objc_msgSend_filterOutliers_options_(self, v5, outliers, v6);
}

+ (id)filterOutliers:(id)outliers options:(id)options
{
  v154 = *MEMORY[0x1E69E9840];
  if (!options)
  {
    v110 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, outliers, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v110, v111, a2, self, @"CLReductiveFilterSuite.m", 76, @"Invalid parameter not satisfying: %@", @"options");
  }

  objc_msgSend_rangeForReductiveFilterOptions_(self, a2, options, options);
  v8 = v7;
  if (!objc_msgSend_count(outliers, v9, v10, v11))
  {
    return 0;
  }

  v117 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = objc_msgSend_reverseObjectEnumerator(outliers, v12, v13, v14);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v138, v153, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v139;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v139 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v138 + 1) + 8 * i);
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v17, &v134, v152, 16);
        if (!v22)
        {
          goto LABEL_22;
        }

        v25 = v22;
        v26 = 0;
        v27 = *v135;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v135 != v27)
            {
              objc_enumerationMutation(v117);
            }

            v29 = *(*(&v134 + 1) + 8 * j);
            Object = objc_msgSend_firstObject(v29, v17, v23, v24);
            objc_msgSend_distanceFromLocation_(v21, v31, Object, v32);
            v34 = v33;
            objc_msgSend_horizontalAccuracy(v21, v35, v36, v37);
            v39 = v34 - v38;
            objc_msgSend_horizontalAccuracy(Object, v40, v41, v42);
            v44 = v39 - v43;
            v48 = objc_msgSend_timestamp(Object, v45, v46, v47);
            objc_msgSend_timeIntervalSince1970(v48, v49, v50, v51);
            v53 = v52;
            v57 = objc_msgSend_timestamp(v21, v54, v55, v56);
            objc_msgSend_timeIntervalSince1970(v57, v58, v59, v60);
            if (v44 <= v8)
            {
              goto LABEL_18;
            }

            v62 = v53 - v61;
            if (v62 < 5.0)
            {
              v62 = 5.0;
            }

            if (fmax(v44, 0.0) / v62 <= 250.0)
            {
LABEL_18:
              objc_msgSend_insertObject_atIndex_(v29, v17, v21, 0);
              v26 = 1;
            }
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v17, &v134, v152, 16);
        }

        while (v25);
        if ((v26 & 1) == 0)
        {
LABEL_22:
          v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
          objc_msgSend_addObject_(v63, v64, v21, v65);
          objc_msgSend_addObject_(v117, v66, v63, v67);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v138, v153, 16);
    }

    while (v18);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v17, &v130, v151, 16);
  if (v68)
  {
    v72 = v68;
    v114 = 0;
    v73 = 0;
    v74 = *v131;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v131 != v74)
        {
          objc_enumerationMutation(v117);
        }

        v76 = *(*(&v130 + 1) + 8 * k);
        if (objc_msgSend_count(v76, v69, v70, v71) > v73)
        {
          v73 = objc_msgSend_count(v76, v69, v70, v71);
          v114 = v76;
        }
      }

      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v69, &v130, v151, 16);
    }

    while (v72);
  }

  else
  {
    v114 = 0;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v69, &v126, v150, 16);
  if (v113)
  {
    v112 = *v127;
    do
    {
      v78 = 0;
      do
      {
        if (*v127 != v112)
        {
          objc_enumerationMutation(v117);
        }

        v115 = v78;
        v79 = *(*(&v126 + 1) + 8 * v78);
        if (v114 == v79)
        {
          v124 = 0uLL;
          v125 = 0uLL;
          v122 = 0uLL;
          v123 = 0uLL;
          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v77, &v122, v149, 16);
          if (v94)
          {
            v95 = v94;
            v96 = *v123;
            do
            {
              v97 = 0;
              do
              {
                if (*v123 != v96)
                {
                  objc_enumerationMutation(v79);
                }

                v98 = *(*(&v122 + 1) + 8 * v97);
                if (qword_1EAFE4768 != -1)
                {
                  dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
                }

                v99 = qword_1EAFE4770;
                if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEBUG))
                {
                  v103 = objc_msgSend_description(v98, v100, v101, v102);
                  v107 = objc_msgSend_UTF8String(v103, v104, v105, v106);
                  *buf = 68289283;
                  v144 = 0;
                  v145 = 2082;
                  v146 = "";
                  v147 = 2081;
                  v148 = v107;
                  _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Selected location, loc:%{private, location:escape_only}s}", buf, 0x1Cu);
                }

                ++v97;
              }

              while (v95 != v97);
              v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v100, &v122, v149, 16);
            }

            while (v95);
          }
        }

        else
        {
          v120 = 0uLL;
          v121 = 0uLL;
          v118 = 0uLL;
          v119 = 0uLL;
          v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v77, &v118, v142, 16);
          if (v80)
          {
            v81 = v80;
            v82 = *v119;
            do
            {
              v83 = 0;
              do
              {
                if (*v119 != v82)
                {
                  objc_enumerationMutation(v79);
                }

                v84 = *(*(&v118 + 1) + 8 * v83);
                if (qword_1EAFE4768 != -1)
                {
                  dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
                }

                v85 = qword_1EAFE4770;
                if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEBUG))
                {
                  v89 = objc_msgSend_description(v84, v86, v87, v88);
                  v93 = objc_msgSend_UTF8String(v89, v90, v91, v92);
                  *buf = 68289283;
                  v144 = 0;
                  v145 = 2082;
                  v146 = "";
                  v147 = 2081;
                  v148 = v93;
                  _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Removed location, loc:%{private, location:escape_only}s}", buf, 0x1Cu);
                }

                ++v83;
              }

              while (v81 != v83);
              v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v86, &v118, v142, 16);
            }

            while (v81);
          }
        }

        v78 = v115 + 1;
      }

      while (v115 + 1 != v113);
      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v77, &v126, v150, 16);
    }

    while (v113);
  }

  return v114;
}

+ (id)deriveLocationFromLocations:(id)locations
{
  v6 = objc_alloc_init(CLReductiveFilterOptions);

  return objc_msgSend_deriveLocationFromLocations_options_(self, v5, locations, v6);
}

+ (id)deriveLocationFromLocations:(id)locations options:(id)options
{
  v200 = *MEMORY[0x1E69E9840];
  if (!options)
  {
    v137 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, locations, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v137, v138, a2, self, @"CLReductiveFilterSuite.m", 179, @"Invalid parameter not satisfying: %@", @"options");
  }

  result = objc_msgSend_count(locations, a2, locations, options);
  if (!result)
  {
    return result;
  }

  objc_msgSend_rangeForReductiveFilterOptions_(self, v8, options, v9);
  v11 = v10;
  v15 = objc_msgSend_now(MEMORY[0x1E695DF00], v12, v13, v14);
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  locationsCopy = locations;
  v19 = objc_msgSend_reverseObjectEnumerator(locations, v16, v17, v18);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v162, v199, 16);
  if (v21)
  {
    v25 = v21;
    v26 = 0;
    v27 = 0;
    v28 = *v163;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v163 != v28)
        {
          objc_enumerationMutation(v19);
        }

        v30 = *(*(&v162 + 1) + 8 * i);
        objc_msgSend_horizontalAccuracy(v30, v22, v23, v24);
        v27 |= v31 <= 500.0;
        v35 = objc_msgSend_timestamp(v30, v32, v33, v34);
        v26 |= objc_msgSend_compare_(v35, v36, v15, v37) != 1;
        if (v27 & 1) != 0 && (v26)
        {
          v26 = 1;
          v27 = 1;
          goto LABEL_16;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v162, v199, 16);
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

LABEL_16:
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = objc_msgSend_reverseObjectEnumerator(locations, v22, v23, v24);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v158, v198, 16);
  if (!v39)
  {
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v147 = 0;
    v142 = 0;
    v47 = 0.0;
    v152 = 0.0;
    v153 = 0.0;
    v150 = 0.0;
    v151 = 0.0;
    v48 = 0.0;
    goto LABEL_52;
  }

  v43 = v39;
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v147 = 0;
  v142 = 0;
  v44 = 0;
  v45 = *v159;
  v46 = 1;
  v47 = 0.0;
  v152 = 0.0;
  v153 = 0.0;
  v150 = 0.0;
  v151 = 0.0;
  v48 = 0.0;
  v140 = v11;
  while (2)
  {
    v154 = v48;
    for (j = 0; j != v43; ++j)
    {
      if (*v159 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v158 + 1) + 8 * j);
      if (v27)
      {
        objc_msgSend_horizontalAccuracy(*(*(&v158 + 1) + 8 * j), v40, v41, v42);
        if (v51 > 500.0)
        {
          ++v144;
          continue;
        }
      }

      if (v26)
      {
        v52 = objc_msgSend_timestamp(v50, v40, v41, v42);
        if (objc_msgSend_compare_(v52, v53, v15, v54) == 1)
        {
          ++v143;
          continue;
        }
      }

      objc_msgSend_coordinate(v50, v40, v41, v42);
      v56 = v55;
      objc_msgSend_coordinate(v50, v57, v58, v59);
      v61 = v60;
      v62 = __sincos_stret(v56 * 0.0174532925);
      v63 = __sincos_stret(v61 * 0.0174532925);
      v64 = 6378137.0 / sqrt(v62.__sinval * -0.00669437999 * v62.__sinval + 1.0);
      v65 = v62.__cosval * (v64 + 0.0);
      v66 = v63.__cosval * v65;
      v67 = v63.__sinval * v65;
      v68 = v62.__sinval * (v64 * 0.99330562 + 0.0);
      objc_msgSend_horizontalAccuracy(v50, v69, v70, v71);
      v149 = v72;
      objc_msgSend_biasRateInMeasurement(options, v73, v74, v75);
      v148 = v76;
      objc_msgSend_horizontalAccuracy(v50, v77, v78, v79);
      v81 = v80;
      objc_msgSend_biasRateInMeasurement(options, v82, v83, v84);
      v86 = v85;
      objc_msgSend_horizontalAccuracy(v50, v87, v88, v89);
      v94 = v93;
      if (v46)
      {
        v142 = objc_msgSend_timestamp(v50, v90, v91, v92);
LABEL_32:
        v46 = 0;
        v44 = 0;
        v102 = 1.0 / ((v11 + v149) * (v11 + v149));
        ++v147;
        v150 = v150 + v66 * v102;
        v151 = v151 + v67 * v102;
        v152 = v152 + v68 * v102;
        v153 = v153 + v148 * v81 * v102;
        v47 = v47 + (1.0 - v86) * v94 * ((1.0 - v86) * v94) * (v102 * v102);
        v154 = v154 + v102;
        continue;
      }

      if (v154 <= 0.0)
      {
        if (qword_1EAFE4768 != -1)
        {
          dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
        }

        v103 = qword_1EAFE4770;
        if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_FAULT, "Reductive filtering: Sum of weights <= 0 after at least one point added.", buf, 2u);
        }

        v104 = sub_19B87DD40();
        if ((*(v104 + 160) & 0x80000000) == 0 || (*(v104 + 164) & 0x80000000) == 0 || (*(v104 + 168) & 0x80000000) == 0 || *(v104 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4768 != -1)
          {
            dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
          }

          LOWORD(v157[0]) = 0;
          v105 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4770, 17, "Reductive filtering: Sum of weights <= 0 after at least one point added.", v157, 2);
          sub_19B885924("Generic", 1, 0, 0, "+[CLReductiveFilterSuite deriveLocationFromLocations:options:]", "CoreLocation: %s\n", v105);
          if (v105 != buf)
          {
            free(v105);
          }
        }

        return 0;
      }

      v145 = v47;
      v95 = v11 + v153 / v154 + sqrt(v47 / (v154 * v154));
      objc_msgSend_horizontalAccuracy(v50, v90, v91, v92);
      v97 = v96;
      objc_msgSend_horizontalAccuracy(v50, v98, v99, v100);
      if ((v67 - v151 / v154) * (v67 - v151 / v154) + (v66 - v150 / v154) * (v66 - v150 / v154) + (v68 - v152 / v154) * (v68 - v152 / v154) < (v95 * v95 + v97 * v101) * 2.9957)
      {
        v11 = v140;
        v47 = v145;
        goto LABEL_32;
      }

      ++v141;
      if (v44)
      {
        v11 = v140;
        v47 = v145;
        v48 = v154;
        goto LABEL_52;
      }

      v46 = 0;
      v44 = 1;
      v11 = v140;
      v47 = v145;
    }

    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v158, v198, 16);
    v48 = v154;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_52:
  v156 = 0.0;
  v157[0] = 0.0;
  v155 = 0;
  v106 = v48;
  sub_19B9C7BD0(v157, &v156, &v155, v150 / v48, v151 / v48, v152 / v48);
  v107 = v156;
  v108 = v157[0];
  v109 = CLLocationCoordinate2DMake(v157[0], v156);
  v110 = v153 / v106 + sqrt(v47 / (v106 * v106));
  v111 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v111, v112, @"yyyy-MM-dd HH:mm:ss.SSSS", v113);
  if (qword_1EAFE4768 != -1)
  {
    dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
  }

  v114 = v11 + v110;
  v115 = qword_1EAFE4770;
  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEBUG))
  {
    v119 = objc_msgSend_count(locationsCopy, v116, v117, v118);
    objc_msgSend_transmitPower(options, v120, v121, v122);
    v123 = v11;
    v125 = v124;
    v128 = objc_msgSend_stringFromDate_(v111, v126, v142, v127);
    v132 = objc_msgSend_UTF8String(v128, v129, v130, v131);
    *buf = 68292611;
    v167 = 0;
    v168 = 2082;
    v169 = "";
    v170 = 1026;
    v171 = v119;
    v172 = 1026;
    v173 = v141;
    v174 = 1026;
    v175 = v147;
    v176 = 2050;
    v177 = v125;
    v178 = 2050;
    v179 = v123;
    v180 = 2053;
    v181 = v108;
    v182 = 2053;
    v183 = v107;
    v184 = 2049;
    v185 = v114;
    v186 = 2082;
    v187 = v132;
    v188 = 1026;
    v189 = v27 & 1;
    v190 = 1026;
    v191 = v26 & 1;
    v192 = 1026;
    v193 = v144 != 0;
    v194 = 1026;
    v195 = v143 != 0;
    v196 = 1026;
    v197 = v144 + v143;
    _os_log_impl(&dword_19B873000, v115, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Reductive filtering, input:%{public}d, outliers:%{public}d, used:%{public}d, transmitPower:%{public}.6f, rangeOfBeacon:%{public}.6f, lat:%{sensitive}.08f, lon:%{sensitive}.08f, hunc:%{private}f, timestamp:%{public, location:escape_only}s, isAccurateLocationAvailable:%{public}hhd, isPastLocationAvailable:%{public}hhd, nLowAccuracyLocations:%{public}hhd, nFutureLocations:%{public}hhd, filtered:%{public}d}", buf, 0x7Eu);
  }

  v133 = objc_alloc(MEMORY[0x1E6985C40]);
  return objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v133, v134, v142, v135, v109.latitude, v109.longitude, 0.0, v114, -1.0);
}

+ (id)applyFilterToLocationObservations:(id)observations options:(id)options
{
  v65[1] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(observations, a2, observations, options))
  {
    return 0;
  }

  v65[0] = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v6, @"timestamp", 1);
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v65, 1);
  v11 = objc_msgSend_sortedArrayUsingDescriptors_(observations, v9, v8, v10);
  v15 = objc_msgSend_count(observations, v12, v13, v14);
  v17 = objc_msgSend_filterOutliers_options_(CLReductiveFilterSuite, v16, v11, options);
  v21 = objc_msgSend_count(v17, v18, v19, v20);
  v23 = objc_msgSend_deriveLocationFromLocations_options_(CLReductiveFilterSuite, v22, v17, options);
  if (qword_1EAFE4768 != -1)
  {
    dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
  }

  v24 = qword_1EAFE4770;
  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_msgSend_beaconType(options, v25, v26, v27);
    objc_msgSend_transmitPower(options, v29, v30, v31);
    v33 = v32;
    objc_msgSend_biasRateInMeasurement(options, v34, v35, v36);
    v38 = v37;
    objc_msgSend_applyRangeEstimation(options, v39, v40, v41);
    v53 = 68290050;
    v54 = 0;
    v55 = 2082;
    v56 = "";
    v57 = 2050;
    v58 = v28;
    v59 = 2050;
    v60 = v33;
    v61 = 2050;
    v62 = v38;
    v63 = 1026;
    v64 = v42 != 0.0;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - options, beaconType:%{public}lu, transmitPower:%{public}.6f, biasRate:%{public}.6f, applyRangeEstimation:%{public}hhd}", &v53, 0x36u);
    if (qword_1EAFE4768 != -1)
    {
      dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
    }
  }

  v43 = qword_1EAFE4770;
  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_msgSend_description(v23, v44, v45, v46);
    v51 = objc_msgSend_UTF8String(v47, v48, v49, v50);
    v53 = 68289795;
    v54 = 0;
    v55 = 2082;
    v56 = "";
    v57 = 2050;
    v58 = v15;
    v59 = 2050;
    v60 = v21;
    v61 = 2081;
    v62 = v51;
    _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - location observations, countInput:%{public}lu, countFiltered:%{public}lu, loc:%{private, location:escape_only}s}", &v53, 0x30u);
  }

  return v23;
}

+ (id)applyFilterToLocationTrace:(id)trace options:(id)options
{
  v71[1] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(trace, a2, trace, options))
  {
    return 0;
  }

  objc_msgSend_setBiasRateInMeasurement_(options, v6, v7, v8, 1.0);
  objc_msgSend_setApplyRangeEstimation_(options, v9, v10, v11, 0.0);
  v71[0] = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v12, @"timestamp", 1);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v71, 1);
  v17 = objc_msgSend_sortedArrayUsingDescriptors_(trace, v15, v14, v16);
  v21 = objc_msgSend_count(trace, v18, v19, v20);
  v23 = objc_msgSend_filterOutliers_options_(CLReductiveFilterSuite, v22, v17, options);
  v27 = objc_msgSend_count(v23, v24, v25, v26);
  v29 = objc_msgSend_deriveLocationFromLocations_options_(CLReductiveFilterSuite, v28, v23, options);
  if (qword_1EAFE4768 != -1)
  {
    dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
  }

  v30 = qword_1EAFE4770;
  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_msgSend_beaconType(options, v31, v32, v33);
    objc_msgSend_transmitPower(options, v35, v36, v37);
    v39 = v38;
    objc_msgSend_biasRateInMeasurement(options, v40, v41, v42);
    v44 = v43;
    objc_msgSend_applyRangeEstimation(options, v45, v46, v47);
    v59 = 68290050;
    v60 = 0;
    v61 = 2082;
    v62 = "";
    v63 = 2050;
    v64 = v34;
    v65 = 2050;
    v66 = v39;
    v67 = 2050;
    v68 = v44;
    v69 = 1026;
    v70 = v48 != 0.0;
    _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - options, beaconType:%{public}lu, transmitPower:%{public}.6f, biasRate:%{public}.6f, applyRangeEstimation:%{public}hhd}", &v59, 0x36u);
    if (qword_1EAFE4768 != -1)
    {
      dispatch_once(&qword_1EAFE4768, &unk_1F0E6C410);
    }
  }

  v49 = qword_1EAFE4770;
  if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_DEFAULT))
  {
    v53 = objc_msgSend_description(v29, v50, v51, v52);
    v57 = objc_msgSend_UTF8String(v53, v54, v55, v56);
    v59 = 68289795;
    v60 = 0;
    v61 = 2082;
    v62 = "";
    v63 = 2050;
    v64 = v21;
    v65 = 2050;
    v66 = v27;
    v67 = 2081;
    v68 = v57;
    _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reductive filtering - location trace, countInput:%{public}lu, countFiltered:%{public}lu, loc:%{private, location:escape_only}s}", &v59, 0x30u);
  }

  return v29;
}

@end