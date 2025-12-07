@interface RTLocalBluePOIService
+ (id)adaptMacAddress:(id)address;
+ (id)meanOf:(id)of;
+ (id)normalizedRSSI:(id)i;
- (id)calibrateConfidence:(id)confidence targetMUID:(unint64_t)d bluePOITile:(id)tile;
- (id)categoryFilteredLocalBluePOIResultWithPOIConfidences:(id)confidences aoiConfidences:(id)aoiConfidences distanceToNearestAOILowerBound:(id)bound referenceLocation:(id)location queryTime:(id)time bluePOITile:(id)tile;
- (id)getCompiledModelForAccessPoints:(id)points fromBluePOITile:(id)tile;
- (id)processTile:(id)tile fileManager:(id)manager error:(id *)error;
- (void)compileCoreMLModelAtURL:(id)l handler:(id)handler;
- (void)downloadBluePOIMetadataWithHandler:(id)handler;
- (void)downloadBluePOIMetadataWithTileLoader:(id)loader handler:(id)handler;
- (void)downloadBluePOITilesForDownloadKeys:(id)keys handler:(id)handler;
- (void)downloadBluePOITilesForDownloadKeys:(id)keys tileLoader:(id)loader handler:(id)handler;
- (void)fetchBluePOIMetadataWithHandler:(id)handler;
- (void)fetchBluePOITilesForDownloadKeys:(id)keys handler:(id)handler;
- (void)inferLocalBluePOIWithReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points bluePOITile:(id)tile signalEnv:(int)env refreshAOI:(BOOL)i handler:(id)handler;
- (void)loadPreinstalledTileAtPath:(id)path handler:(id)handler;
@end

@implementation RTLocalBluePOIService

+ (id)meanOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count])
    {
      v4 = 0;
      v5 = 0.0;
      do
      {
        v6 = [ofCopy objectAtIndexedSubscript:v4];
        [v6 doubleValue];
        v5 = v5 + v7;

        ++v4;
      }

      while ([ofCopy count] > v4);
    }

    else
    {
      v5 = 0.0;
    }

    v8 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v5 / [ofCopy count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)adaptMacAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy componentsSeparatedByString:@":"];
  v5 = [[NSMutableString alloc] initWithCapacity:{objc_msgSend(addressCopy, "length")}];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v4 objectAtIndexedSubscript:v6];
      if ([v8 length] == 2 && objc_msgSend(v8, "hasPrefix:", @"0"))
      {
        v9 = [v4 objectAtIndexedSubscript:v6];
        v10 = [v9 substringFromIndex:1];

        v8 = v10;
      }

      [v5 appendString:v8];

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while ([v4 count] > v6);
  }

  return v5;
}

+ (id)normalizedRSSI:(id)i
{
  [i doubleValue];
  v4 = (v3 + 100.0) / 65.0;

  return [NSNumber numberWithDouble:v4];
}

- (id)getCompiledModelForAccessPoints:(id)points fromBluePOITile:(id)tile
{
  pointsCopy = points;
  tileCopy = tile;
  v7 = objc_opt_new();
  v8 = [NSMutableDictionary alloc];
  models = [tileCopy models];
  v50 = [v8 initWithCapacity:{objc_msgSend(models, "count")}];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v51 = tileCopy;
  models2 = [tileCopy models];
  v11 = [models2 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(models2);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        identifier = [v15 identifier];
        [v50 setObject:v15 forKeyedSubscript:identifier];
      }

      v12 = [models2 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v12);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = pointsCopy;
  v52 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v52)
  {
    v49 = *v63;
    do
    {
      v17 = 0;
      do
      {
        if (*v63 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v17;
        v18 = *(*(&v62 + 1) + 8 * v17);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        hashedApToModelMapping = [v51 hashedApToModelMapping];
        v20 = [hashedApToModelMapping objectForKeyedSubscript:v18];

        v21 = [v20 countByEnumeratingWithState:&v58 objects:v75 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v59;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v59 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v58 + 1) + 8 * j);
              v26 = [v7 objectForKeyedSubscript:v25];

              if (v26)
              {
                v27 = [v7 objectForKeyedSubscript:v25];
                v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 integerValue] + 1);
                [v7 setObject:v28 forKeyedSubscript:v25];
              }

              else
              {
                [v7 setObject:&off_1000AB730 forKeyedSubscript:v25];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v58 objects:v75 count:16];
          }

          while (v22);
        }

        v17 = v53 + 1;
      }

      while ((v53 + 1) != v52);
      v52 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v52);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v55;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v54 + 1) + 8 * k);
        if (v32)
        {
          v36 = [v29 objectForKeyedSubscript:v32];
          unsignedIntegerValue = [v36 unsignedIntegerValue];
          v38 = [v29 objectForKeyedSubscript:v35];
          unsignedIntegerValue2 = [v38 unsignedIntegerValue];

          if (unsignedIntegerValue < unsignedIntegerValue2)
          {
            v40 = v35;

            v32 = v40;
          }
        }

        else
        {
          v32 = v35;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v41 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v71 = v29;
      v72 = 2112;
      v73 = v32;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Model votes: %@, best match: %@", buf, 0x16u);
    }
  }

  if (v32 && ([v50 objectForKey:v32], v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
  {
    v43 = [v50 objectForKey:v32];
  }

  else
  {
    v44 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      *buf = 138412290;
      v71 = v46;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%@, Invalid best match", buf, 0xCu);
    }

    v43 = 0;
  }

  return v43;
}

- (id)calibrateConfidence:(id)confidence targetMUID:(unint64_t)d bluePOITile:(id)tile
{
  confidenceCopy = confidence;
  tileCopy = tile;
  v9 = kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationApplePay;
  v10 = kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationApplePay;
  v11 = kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationApplePay;
  v84 = kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationApplePay;
  v12 = kRTBluePOITileModelCalibrationHighestScoreApplePay;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  pointsOfInterest = [tileCopy pointsOfInterest];
  v14 = [pointsOfInterest countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v14)
  {
    v15 = v14;
    v80 = v11;
    v82 = confidenceCopy;
    v16 = v10;
    v17 = *v90;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v90 != v17)
      {
        objc_enumerationMutation(pointsOfInterest);
      }

      v19 = *(*(&v89 + 1) + 8 * v18);
      if ([v19 muid] == d)
      {
        break;
      }

      if (v15 == ++v18)
      {
        v15 = [pointsOfInterest countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if ([v19 applePaySupport])
    {
LABEL_11:
      v11 = v80;
      v10 = v16;
      goto LABEL_13;
    }

    v20 = kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationNonApplePay;

    v10 = kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationNonApplePay;
    v11 = kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationNonApplePay;

    v21 = kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationNonApplePay;
    v22 = kRTBluePOITileModelCalibrationHighestScoreNonApplePay;
    v23 = v12;
    v12 = v22;

    v84 = v21;
    v9 = v20;
LABEL_13:
    confidenceCopy = v82;
  }

  modelCalibrationParameters = [tileCopy modelCalibrationParameters];
  v25 = [modelCalibrationParameters objectForKeyedSubscript:v9];

  if (v25)
  {
    modelCalibrationParameters2 = [tileCopy modelCalibrationParameters];
    v27 = [modelCalibrationParameters2 objectForKeyedSubscript:v9];
    [v27 doubleValue];
    v29 = v28;
  }

  else
  {
    v29 = 0.6;
  }

  modelCalibrationParameters3 = [tileCopy modelCalibrationParameters];
  v31 = [modelCalibrationParameters3 objectForKeyedSubscript:v10];

  if (v31)
  {
    modelCalibrationParameters4 = [tileCopy modelCalibrationParameters];
    v33 = [modelCalibrationParameters4 objectForKeyedSubscript:v10];
    [v33 doubleValue];
    v35 = v34;
  }

  else
  {
    v35 = 0.8;
  }

  modelCalibrationParameters5 = [tileCopy modelCalibrationParameters];
  v37 = [modelCalibrationParameters5 objectForKeyedSubscript:v11];

  if (v37)
  {
    modelCalibrationParameters6 = [tileCopy modelCalibrationParameters];
    v39 = [modelCalibrationParameters6 objectForKeyedSubscript:v11];
    [v39 doubleValue];
    v41 = v40;
  }

  else
  {
    v41 = 0.9;
  }

  modelCalibrationParameters7 = [tileCopy modelCalibrationParameters];
  v43 = [modelCalibrationParameters7 objectForKeyedSubscript:v84];

  if (v43)
  {
    modelCalibrationParameters8 = [tileCopy modelCalibrationParameters];
    v45 = [modelCalibrationParameters8 objectForKeyedSubscript:v84];
    [v45 doubleValue];
    v47 = v46;
  }

  else
  {
    v47 = 0.95;
  }

  modelCalibrationParameters9 = [tileCopy modelCalibrationParameters];
  v49 = [modelCalibrationParameters9 objectForKeyedSubscript:v12];

  if (v49)
  {
    modelCalibrationParameters10 = [tileCopy modelCalibrationParameters];
    v51 = [modelCalibrationParameters10 objectForKeyedSubscript:v12];
    [v51 doubleValue];
    v53 = v52;
  }

  else
  {
    v53 = 1.0;
  }

  if (v29 > v35 || v41 > v47 || v29 == 0.0 || (+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", d), v54 = objc_claimAutoreleasedReturnValue(), [confidenceCopy objectForKeyedSubscript:v54], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "doubleValue"), v57 = v56, v55, v54, v57 < 0.525))
  {
    v58 = confidenceCopy;
    goto LABEL_63;
  }

  v79 = tileCopy;
  if (v57 >= v29)
  {
    if (v57 >= v35)
    {
      v59 = v47 + (v53 - v47) * (v57 - v35) / (1.0 - v35);
    }

    else
    {
      v59 = v41 + (v47 - v41) * (v57 - v29) / (v35 - v29);
    }
  }

  else
  {
    v59 = v41 / v29 * v57;
  }

  v58 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v60 = confidenceCopy;
  v61 = [v60 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (v61)
  {
    v62 = v61;
    v77 = v9;
    v78 = v10;
    v81 = v11;
    v83 = confidenceCopy;
    v63 = *v86;
    v64 = 1.0;
    do
    {
      for (i = 0; i != v62; i = i + 1)
      {
        if (*v86 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v66 = *(*(&v85 + 1) + 8 * i);
        v67 = [v60 objectForKeyedSubscript:{v66, v77, v78}];
        [v67 doubleValue];
        v69 = v68;

        v70 = v59;
        if ([v66 unsignedIntegerValue] != d)
        {
          if (v59 >= v57)
          {
            v70 = (1.0 - v59) * v69 / (1.0 - v57);
          }

          else
          {
            v70 = v59 * v69 / v57;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v71 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            integerValue = [v66 integerValue];
            *buf = 134218496;
            v94 = *&integerValue;
            v95 = 2048;
            v96 = v69;
            v97 = 2048;
            v98 = v70;
            _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "muid: %lu, original confidence: %f, calibrated confidence: %f", buf, 0x20u);
          }
        }

        v72 = [NSNumber numberWithDouble:v70];
        [v58 setObject:v72 forKeyedSubscript:v66];

        v64 = v64 - v70;
      }

      v62 = [v60 countByEnumeratingWithState:&v85 objects:v99 count:16];
    }

    while (v62);

    v11 = v81;
    confidenceCopy = v83;
    v9 = v77;
    v10 = v78;
    if (v64 <= 0.0)
    {
      tileCopy = v79;
      goto LABEL_63;
    }
  }

  else
  {

    v64 = 1.0;
  }

  tileCopy = v79;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v74 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v94 = v64;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "muid: 0, original confidence: 0.0, calibrated confidence: %f", buf, 0xCu);
    }
  }

  v75 = [NSNumber numberWithDouble:v64];
  [v58 setObject:v75 forKeyedSubscript:&off_1000AB748];

LABEL_63:

  return v58;
}

- (id)categoryFilteredLocalBluePOIResultWithPOIConfidences:(id)confidences aoiConfidences:(id)aoiConfidences distanceToNearestAOILowerBound:(id)bound referenceLocation:(id)location queryTime:(id)time bluePOITile:(id)tile
{
  confidencesCopy = confidences;
  aoiConfidencesCopy = aoiConfidences;
  boundCopy = bound;
  locationCopy = location;
  timeCopy = time;
  tileCopy = tile;
  v20 = tileCopy;
  if (!confidencesCopy)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: poiConfidences";
LABEL_43:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v48, buf, 2u);
    goto LABEL_44;
  }

  if (!aoiConfidencesCopy)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: aoiConfidences";
    goto LABEL_43;
  }

  if (!locationCopy)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: referenceLocation";
    goto LABEL_43;
  }

  if (!timeCopy)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: queryTime";
    goto LABEL_43;
  }

  if (!tileCopy)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v48 = "Invalid parameter not satisfying: bluePOITile";
      goto LABEL_43;
    }

LABEL_44:
    v47 = 0;
    goto LABEL_45;
  }

  aSelector = a2;
  v51 = timeCopy;
  v52 = locationCopy;
  v53 = boundCopy;
  v54 = aoiConfidencesCopy;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  pointsOfInterest = [v20 pointsOfInterest];
  v24 = [pointsOfInterest countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v63;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v63 != v26)
        {
          objc_enumerationMutation(pointsOfInterest);
        }

        v28 = *(*(&v62 + 1) + 8 * i);
        v29 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v28 muid]);
        [v22 addObject:v29];

        if ([v28 filtered])
        {
          v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v28 muid]);
          [v21 addObject:v30];
        }
      }

      v25 = [pointsOfInterest countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v25);
  }

  v50 = v20;

  v56 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v31 = confidencesCopy;
  v57 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v57)
  {
    v32 = *v59;
    do
    {
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v59 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v34 = *(*(&v58 + 1) + 8 * j);
        if ([v21 containsObject:v34, v50])
        {
          v35 = [v31 objectForKeyedSubscript:v34];
          [v35 doubleValue];
          v37 = v36;

          v38 = [v56 objectForKeyedSubscript:&off_1000AB748];
          [v38 doubleValue];
          v40 = v39;

          if (v37 >= v40)
          {
            v41 = v37;
          }

          else
          {
            v41 = v40;
          }

          v42 = [NSNumber numberWithDouble:v41];
          v43 = v56;
          v44 = v42;
          v45 = &off_1000AB748;
          goto LABEL_27;
        }

        if ([v22 containsObject:v34])
        {
          v42 = [v31 objectForKeyedSubscript:v34];
          v43 = v56;
          v44 = v42;
          v45 = v34;
LABEL_27:
          [v43 setObject:v44 forKeyedSubscript:v45];
          goto LABEL_30;
        }

        v42 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v46 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v67 = v46;
          v68 = 2112;
          v69 = v34;
          _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "%@, POI not found in POI metadata, muid, %@", buf, 0x16u);
        }

LABEL_30:
      }

      v57 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v57);
  }

  boundCopy = v53;
  aoiConfidencesCopy = v54;
  timeCopy = v51;
  locationCopy = v52;
  v47 = [[RTLocalBluePOIResult alloc] initWithPOIConfidences:v56 aoiConfidences:v54 distanceToNearestAOILowerBound:v53 referenceLocation:v52 queryTime:v51];

  v20 = v50;
LABEL_45:

  return v47;
}

- (void)inferLocalBluePOIWithReferenceLocation:(id)location locations:(id)locations accessPoints:(id)points bluePOITile:(id)tile signalEnv:(int)env refreshAOI:(BOOL)i handler:(id)handler
{
  iCopy = i;
  v10 = *&env;
  locationCopy = location;
  locationsCopy = locations;
  pointsCopy = points;
  v18 = COERCE_DOUBLE(tile);
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v20 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v276 = locationCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Reference location: %{sensitive}@", buf, 0xCu);
    }
  }

  v217 = locationsCopy;
  selfCopy = self;
  v21 = +[NSDate now];
  v221 = objc_opt_new();
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = v23;
  v25 = COERCE_DOUBLE(&off_1000AB978);
  v219 = pointsCopy;
  v220 = locationCopy;
  if (iCopy)
  {
    v26 = v10;
    v27 = v18;
    v28 = handlerCopy;
    v29 = v23;
    v264 = &off_1000AB978;
    v263 = 0;
    obj = objc_opt_new();
    v30 = v21;
    v31 = [obj inferLocalPolygonalBluePOIsWithReferenceLocation:locationCopy queryTime:v21 distanceToNearestAOILowerBound:&v264 error:&v263];
    v25 = COERCE_DOUBLE(v264);
    v32 = v263;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v33 = sub_1000011A0(&qword_1000B2970);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v276 = v31;
        v277 = 2112;
        v278 = v25;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Polygonal BluePOI Results: %@, distanceToNearestAOILowerBound: %@", buf, 0x16u);
      }
    }

    v34 = v30;
    v24 = v29;
    handlerCopy = v28;
    v18 = v27;
    v10 = v26;
    if (v32)
    {
      v212 = v25;
      v35 = v34;
      v36 = handlerCopy;
      [v24 addObject:v32];
      v37 = sub_1000011A0(&qword_1000B2970);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v276 = v32;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "AOI inference error: %@", buf, 0xCu);
      }

      v284 = NSLocalizedDescriptionKey;
      v285 = @"AOI inference error";
      v38 = [NSDictionary dictionaryWithObjects:&v285 forKeys:&v284 count:1];
      v39 = [NSError errorWithDomain:@"RTBluePOIErrorDomain" code:111 userInfo:v38];

      [v24 addObject:v39];
      handlerCopy = v36;
      v34 = v35;
      v25 = v212;
    }
  }

  else
  {
    v31 = v22;
    v34 = v21;
  }

  v228 = v18;
  if (v18 == 0.0)
  {
    v56 = v220;
    v55 = v221;
    v57 = v31;
    v58 = [[RTLocalBluePOIResult alloc] initWithPOIConfidences:v221 aoiConfidences:v31 distanceToNearestAOILowerBound:*&v25 referenceLocation:v220 queryTime:v34];
    _RTSafeArray();
    v59 = handlerCopy;
    v60 = v24;
    v62 = v61 = v34;
    _RTMultiErrorCreate();
    v63 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v59[2](v59, v58, *&v63);
  }

  else
  {
    v211 = v24;
    if ([*&v18 singlePOIMuid])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v40 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Enter single POI Model.", buf, 2u);
        }
      }

      v226 = objc_opt_new();
      v41 = [v226 inferLocalSinglePOIBluePOIsWithReferenceLocation:v220 bluePOITile:*&v18 signalEnv:v10 queryTime:v34];

      allKeys = [v41 allKeys];
      v43 = [allKeys count];

      if (v43)
      {
        v261 = 0u;
        v262 = 0u;
        v259 = 0u;
        v260 = 0u;
        allKeys2 = [v41 allKeys];
        v45 = [allKeys2 countByEnumeratingWithState:&v259 objects:v283 count:16];
        v46 = v41;
        if (v45)
        {
          v47 = v45;
          v213 = v25;
          v215 = v31;
          v208 = v34;
          v48 = *v260;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v260 != v48)
              {
                objc_enumerationMutation(allKeys2);
              }

              v50 = *(*(&v259 + 1) + 8 * i);
              integerValue = [v50 integerValue];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                v52 = sub_1000011A0(&qword_1000B2970);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                {
                  v53 = [v41 objectForKeyedSubscript:v50];
                  [v53 doubleValue];
                  *buf = 134218240;
                  v276 = integerValue;
                  v277 = 2048;
                  v278 = v54;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Result muid: %lu, Confidence: %.3f, returned from single POI model", buf, 0x16u);
                }
              }
            }

            v47 = [allKeys2 countByEnumeratingWithState:&v259 objects:v283 count:16];
          }

          while (v47);
          v34 = v208;
          v24 = v211;
          v25 = v213;
          v31 = v215;
          v46 = v41;
        }
      }

      else
      {
        v46 = v41;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
LABEL_114:
          v56 = v220;
          v57 = v31;
          v58 = [[RTLocalBluePOIResult alloc] initWithPOIConfidences:v46 aoiConfidences:v31 distanceToNearestAOILowerBound:*&v25 referenceLocation:v220 queryTime:v34];
          _RTSafeArray();
          v63 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          _RTMultiErrorCreate();
          v142 = v141 = v46;
          handlerCopy[2](handlerCopy, v58, v142);

          v55 = v141;
          v59 = handlerCopy;
          v60 = v24;
          v61 = v34;
          v62 = v226;
          goto LABEL_159;
        }

        allKeys2 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(allKeys2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, allKeys2, OS_LOG_TYPE_INFO, "No result from single POI Model.", buf, 2u);
        }
      }

      goto LABEL_114;
    }

    v214 = v25;
    v216 = v31;
    v207 = handlerCopy;
    v209 = v34;
    v64 = objc_alloc_init(NSMutableDictionary);
    v255 = 0u;
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    obja = pointsCopy;
    v65 = [obja countByEnumeratingWithState:&v255 objects:v282 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v256;
      do
      {
        for (j = 0; j != v66; j = j + 1)
        {
          if (*v256 != v67)
          {
            objc_enumerationMutation(obja);
          }

          v69 = *(*(&v255 + 1) + 8 * j);
          rssi = [v69 rssi];
          v71 = -100;
          if (rssi > -100)
          {
            v71 = rssi;
          }

          if (v71 >= -35)
          {
            v72 = -35;
          }

          else
          {
            v72 = v71;
          }

          v73 = [v69 mac];
          v74 = [v64 objectForKeyedSubscript:v73];

          if (!v74)
          {
            v75 = objc_alloc_init(NSMutableArray);
            v76 = [v69 mac];
            [v64 setObject:v75 forKeyedSubscript:v76];
          }

          v77 = [v69 mac];
          v78 = [v64 objectForKeyedSubscript:v77];
          v79 = [NSNumber numberWithInteger:v72];
          [v78 addObject:v79];
        }

        v66 = [obja countByEnumeratingWithState:&v255 objects:v282 count:16];
      }

      while (v66);
    }

    objb = COERCE_DOUBLE(objc_alloc_init(NSMutableDictionary));
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v80 = v64;
    v81 = [v80 countByEnumeratingWithState:&v251 objects:v281 count:16];
    v227 = v80;
    if (v81)
    {
      v82 = v81;
      v224 = *v252;
      do
      {
        for (k = 0; k != v82; k = k + 1)
        {
          if (*v252 != v224)
          {
            objc_enumerationMutation(v80);
          }

          v84 = *(*(&v251 + 1) + 8 * k);
          [RTLocalBluePOIService adaptMacAddress:v84];
          v85 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v86 = [*&v85 dataUsingEncoding:4];
          hashSalt = [*&v228 hashSalt];
          v88 = [NSMutableData dataWithData:hashSalt];

          [v88 appendData:v86];
          sha256Hash = [v88 sha256Hash];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            v90 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v276 = v84;
              v277 = 2112;
              v278 = v85;
              v279 = 2112;
              v280 = sha256Hash;
              _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "mac: %@, adaptedMac, %@, hashedMac: %@", buf, 0x20u);
            }
          }

          v91 = [v80 objectForKeyedSubscript:v84];
          v92 = [RTLocalBluePOIService meanOf:v91];
          v93 = [RTLocalBluePOIService normalizedRSSI:v92];
          [*&objb setObject:v93 forKeyedSubscript:sha256Hash];

          v80 = v227;
        }

        v82 = [v227 countByEnumeratingWithState:&v251 objects:v281 count:16];
      }

      while (v82);
    }

    v63 = objb;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v94 = sub_1000011A0(&qword_1000B2970);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        hashSalt2 = [*&v228 hashSalt];
        *buf = 138412546;
        v276 = hashSalt2;
        v277 = 2112;
        v278 = objb;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "hashSalt, %@, accessPointsDict: %@", buf, 0x16u);
      }
    }

    v225 = [(RTLocalBluePOIService *)selfCopy getCompiledModelForAccessPoints:*&objb fromBluePOITile:*&v228];
    if (v225)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v96 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v276 = v225;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "Local compiled model: %@", buf, 0xCu);
        }
      }

      v97 = [v225 url];
      v98 = [NSURL fileURLWithPath:v97];

      v250 = 0;
      v204 = v98;
      v99 = [MLModel modelWithContentsOfURL:v98 error:&v250];
      v218 = v250;
      v206 = v99;
      if (v99)
      {
        v100 = +[NSDecimalNumber notANumber];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v101 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "Building inputs", buf, 2u);
          }
        }

        v222 = v100;
        modelDescription = [v206 modelDescription];
        inputDescriptionsByName = [modelDescription inputDescriptionsByName];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v103 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            v104 = [inputDescriptionsByName count];
            featureToHashedApMapping = [v225 featureToHashedApMapping];
            v106 = COERCE_DOUBLE([featureToHashedApMapping count]);
            *buf = 134218240;
            v276 = v104;
            v277 = 2048;
            v278 = v106;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Model featureNames count: %lu, featureToHashedApMapping count: %lu", buf, 0x16u);
          }
        }

        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        v107 = inputDescriptionsByName;
        v108 = [v107 countByEnumeratingWithState:&v246 objects:v272 count:16];
        if (v108)
        {
          v109 = v108;
          v110 = *v247;
          while (2)
          {
            for (m = 0; m != v109; m = m + 1)
            {
              if (*v247 != v110)
              {
                objc_enumerationMutation(v107);
              }

              v112 = *(*(&v246 + 1) + 8 * m);
              featureToHashedApMapping2 = [v225 featureToHashedApMapping];
              v114 = [featureToHashedApMapping2 objectForKey:v112];

              if (!v114)
              {
                v147 = sub_1000011A0(&qword_1000B2970);
                if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412547;
                  v276 = v112;
                  v277 = 2117;
                  v278 = v228;
                  _os_log_fault_impl(&_mh_execute_header, v147, OS_LOG_TYPE_FAULT, "featureToHashedApMapping doesn't have key, %@, tile, %{sensitive}@", buf, 0x16u);
                }

                v148 = v107;

                v270 = NSLocalizedDescriptionKey;
                v271 = @"Invalid feature list";
                v149 = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                v150 = [NSError errorWithDomain:@"RTBluePOIErrorDomain" code:105 userInfo:v149];

                if (v150)
                {
                  [v211 addObject:v150];
                }

                v205 = v150;
                v151 = _RTSafeArray();
                v152 = _RTMultiErrorCreate();
                v207[2](v207, 0, v152);
                v59 = v207;
                v58 = 0;
                v153 = v148;
                v25 = v214;
                v140 = modelDescription;
                v139 = v204;
                goto LABEL_154;
              }
            }

            v109 = [v107 countByEnumeratingWithState:&v246 objects:v272 count:16];
            if (v109)
            {
              continue;
            }

            break;
          }
        }

        v202 = v107;

        v115 = objc_alloc_init(NSMutableDictionary);
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        v245 = 0u;
        featureToHashedApMapping3 = [v225 featureToHashedApMapping];
        v117 = [featureToHashedApMapping3 countByEnumeratingWithState:&v242 objects:v269 count:16];
        v223 = v115;
        if (v117)
        {
          v118 = v117;
          v119 = *v243;
          do
          {
            for (n = 0; n != v118; n = n + 1)
            {
              if (*v243 != v119)
              {
                objc_enumerationMutation(featureToHashedApMapping3);
              }

              v121 = *(*(&v242 + 1) + 8 * n);
              featureToHashedApMapping4 = [v225 featureToHashedApMapping];
              [featureToHashedApMapping4 objectForKeyedSubscript:v121];
              v123 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

              allKeys3 = [*&v63 allKeys];
              v125 = [allKeys3 containsObject:*&v123];

              if (v125)
              {
                v126 = [*&v63 objectForKeyedSubscript:*&v123];
                v115 = v223;
                [v223 setValue:v126 forKey:v121];

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  v127 = sub_1000011A0(&qword_1000B2970);
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                  {
                    v128 = [v223 objectForKeyedSubscript:v121];
                    *buf = 138412802;
                    v276 = v121;
                    v277 = 2112;
                    v278 = v123;
                    v279 = 2112;
                    v280 = v128;
                    _os_log_debug_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEBUG, "feature name: %@, feature: %@, feature value: %@", buf, 0x20u);
                  }

                  v63 = objb;
                }
              }

              else
              {
                v115 = v223;
                [v223 setValue:v222 forKey:v121];
              }
            }

            v118 = [featureToHashedApMapping3 countByEnumeratingWithState:&v242 objects:v269 count:16];
          }

          while (v118);
        }

        v241 = v218;
        v129 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v115 error:&v241];
        v205 = v241;

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v130 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_INFO, "Local Blue POI inferring...", buf, 2u);
          }
        }

        v240 = 0;
        v131 = [v206 predictionFromFeatures:v129 error:&v240];
        v132 = v240;
        v200 = v131;
        v201 = v129;
        if (v132)
        {
          v133 = v132;
          v134 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v276 = v133;
            _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "POI inference error, %@", buf, 0xCu);
          }

          v267 = NSLocalizedDescriptionKey;
          v268 = @"POI inference error";
          v135 = [NSDictionary dictionaryWithObjects:&v268 forKeys:&v267 count:1];
          v136 = [NSError errorWithDomain:@"RTBluePOIErrorDomain" code:110 userInfo:v135];

          if (v136)
          {
            [v211 addObject:v136];
          }

          v137 = _RTSafeArray();
          v138 = _RTMultiErrorCreate();
          v207[2](v207, 0, v138);
          v58 = 0;
          v25 = v214;
          v140 = modelDescription;
          v139 = v204;
        }

        else
        {
          v159 = [v131 featureValueForName:@"target"];
          stringValue = [v159 stringValue];
          integerValue2 = [stringValue integerValue];

          v162 = [v131 featureValueForName:@"classProbability"];
          dictionaryValue = [v162 dictionaryValue];

          v164 = objc_opt_new();
          v236 = 0u;
          v237 = 0u;
          v238 = 0u;
          v239 = 0u;
          v136 = dictionaryValue;
          v165 = [v136 countByEnumeratingWithState:&v236 objects:v266 count:16];
          if (v165)
          {
            v166 = v165;
            v167 = *v237;
            do
            {
              for (ii = 0; ii != v166; ii = ii + 1)
              {
                if (*v237 != v167)
                {
                  objc_enumerationMutation(v136);
                }

                v169 = *(*(&v236 + 1) + 8 * ii);
                integerValue3 = [v169 integerValue];
                v171 = [v136 objectForKeyedSubscript:v169];
                [v171 doubleValue];
                v173 = v172;

                v174 = [NSNumber numberWithDouble:v173];
                v175 = [NSNumber numberWithUnsignedInteger:integerValue3];
                [v164 setObject:v174 forKeyedSubscript:v175];
              }

              v166 = [v136 countByEnumeratingWithState:&v236 objects:v266 count:16];
            }

            while (v166);
          }

          v199 = v164;
          v176 = [(RTLocalBluePOIService *)selfCopy calibrateConfidence:v164 targetMUID:integerValue2 bluePOITile:*&v228];
          v177 = [NSNumber numberWithUnsignedInteger:integerValue2];
          v178 = [v176 objectForKeyedSubscript:v177];
          [v178 doubleValue];
          v180 = v179;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v181 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
            {
              v182 = [NSNumber numberWithUnsignedInteger:integerValue2];
              *buf = 138412546;
              v276 = v182;
              v277 = 2048;
              v278 = v180;
              _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_INFO, "Target muid with highest confidence: %@, Confidence: %f", buf, 0x16u);
            }
          }

          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v138 = v176;
          v183 = [v138 countByEnumeratingWithState:&v232 objects:v265 count:16];
          if (v183)
          {
            v184 = v183;
            v185 = *v233;
            do
            {
              for (jj = 0; jj != v184; jj = jj + 1)
              {
                if (*v233 != v185)
                {
                  objc_enumerationMutation(v138);
                }

                v187 = *(*(&v232 + 1) + 8 * jj);
                unsignedIntegerValue = [v187 unsignedIntegerValue];
                v189 = [v138 objectForKeyedSubscript:v187];
                [v189 doubleValue];
                v191 = v190;

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                {
                  v192 = sub_1000011A0(&qword_1000B2970);
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134218240;
                    v276 = unsignedIntegerValue;
                    v277 = 2048;
                    v278 = v191;
                    _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_INFO, "Result muid: %lu, Confidence: %f, returned", buf, 0x16u);
                  }
                }

                v193 = [NSNumber numberWithDouble:v191];
                v194 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
                [v221 setObject:v193 forKeyedSubscript:v194];
              }

              v184 = [v138 countByEnumeratingWithState:&v232 objects:v265 count:16];
            }

            while (v184);
          }

          v25 = v214;
          v58 = [(RTLocalBluePOIService *)selfCopy categoryFilteredLocalBluePOIResultWithPOIConfidences:v221 aoiConfidences:v216 distanceToNearestAOILowerBound:*&v214 referenceLocation:v220 queryTime:v209 bluePOITile:*&v228];
          v195 = _RTSafeArray();
          v196 = _RTMultiErrorCreate();
          v207[2](v207, v58, v196);

          v63 = objb;
          v140 = modelDescription;
          v139 = v204;
          v137 = v199;
        }

        v151 = v201;
        v148 = v202;
        v153 = v223;
        v152 = v200;
        v59 = v207;
LABEL_154:

        v218 = v205;
        v197 = v211;
        v198 = v222;
      }

      else
      {
        allKeys4 = [v216 allKeys];
        v155 = [allKeys4 count];

        if (!v155)
        {
          v156 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v276 = v218;
            _os_log_error_impl(&_mh_execute_header, v156, OS_LOG_TYPE_ERROR, "Error in loading ML Model: %@", buf, 0xCu);
          }

          v273 = NSLocalizedDescriptionKey;
          v274 = @"Model loading error";
          v157 = [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
          v158 = [NSError errorWithDomain:@"RTBluePOIErrorDomain" code:110 userInfo:v157];

          if (v158)
          {
            [v211 addObject:v158];
            v218 = v158;
          }

          else
          {
            v218 = 0;
          }
        }

        v25 = v214;
        v58 = [(RTLocalBluePOIService *)selfCopy categoryFilteredLocalBluePOIResultWithPOIConfidences:v221 aoiConfidences:v216 distanceToNearestAOILowerBound:*&v214 referenceLocation:v220 queryTime:v209 bluePOITile:*&v228];
        v198 = _RTSafeArray();
        _RTMultiErrorCreate();
        v140 = v197 = v211;
        v59 = v207;
        v207[2](v207, v58, v140);
        v139 = v204;
      }

      v60 = v197;

      v55 = v221;
      v146 = v218;
    }

    else
    {
      v59 = v207;
      allKeys5 = [v216 allKeys];
      v144 = [allKeys5 count];

      if (!v144)
      {
        v145 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "No local compiled model for access points", buf, 2u);
        }
      }

      v55 = v221;
      v25 = v214;
      v58 = [(RTLocalBluePOIService *)selfCopy categoryFilteredLocalBluePOIResultWithPOIConfidences:v221 aoiConfidences:v216 distanceToNearestAOILowerBound:*&v214 referenceLocation:v220 queryTime:v209 bluePOITile:*&v228];
      v60 = v211;
      v139 = _RTSafeArray();
      v146 = _RTMultiErrorCreate();
      v207[2](v207, v58, v146);
    }

    v57 = v216;
    v62 = v227;
    v56 = v220;
    v61 = v209;
  }

LABEL_159:
}

- (void)compileCoreMLModelAtURL:(id)l handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v12 = 0;
  v8 = [MLModel compileModelAtURL:lCopy error:&v12];
  v9 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = lCopy;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, model URL, %@, compiled model URL, %@, error, %@", buf, 0x2Au);
    }
  }

  handlerCopy[2](handlerCopy, v8, v9);
}

- (void)fetchBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020E24;
  v11[3] = &unk_1000A8BE0;
  v14 = handlerCopy;
  v15 = a2;
  v12 = [[RTBluePOITileParser alloc] initWithFileManager:v6 wkbParser:v7];
  v13 = v6;
  v8 = v6;
  v9 = v12;
  v10 = handlerCopy;
  [(RTLocalBluePOIService *)self downloadBluePOIMetadataWithHandler:v11];
}

- (void)fetchBluePOITilesForDownloadKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [[RTBluePOITileParser alloc] initWithFileManager:v9 wkbParser:v10];
  v12 = objc_opt_new();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100001200;
  v25[4] = sub_100021300;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100021308;
  v17[3] = &unk_1000A8C08;
  v23 = v25;
  v24 = a2;
  v13 = v11;
  v18 = v13;
  selfCopy = self;
  v14 = v9;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v16 = handlerCopy;
  v22 = v16;
  [(RTLocalBluePOIService *)self downloadBluePOITilesForDownloadKeys:keysCopy handler:v17];

  _Block_object_dispose(v25, 8);
}

- (void)loadPreinstalledTileAtPath:(id)path handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v9 = objc_opt_new();
  v10 = [RTBluePOITileParser alloc];
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [(RTBluePOITileParser *)v10 initWithFileManager:v11 wkbParser:v12];

  v22 = 0;
  v14 = [(RTBluePOITileParser *)v13 loadProtobufTileAtPath:pathCopy cacheInfo:0 outError:&v22];
  v15 = v22;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v16 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138413059;
      v24 = v17;
      v25 = 2112;
      v26 = pathCopy;
      v27 = 2112;
      v28 = v15;
      v29 = 2117;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@, tile path, %@, error, %@, tile, %{sensitive}@", buf, 0x2Au);
    }
  }

  v18 = 0;
  if (!v15 && v14)
  {
    v21 = 0;
    v18 = [(RTLocalBluePOIService *)self processTile:v14 fileManager:v9 error:&v21];
    v15 = v21;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v19 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412803;
      v24 = v20;
      v25 = 2117;
      v26 = v18;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@, processed Tile, %{sensitive}@, error, %@", buf, 0x20u);
    }
  }

  handlerCopy[2](handlerCopy, v18, v15);
}

- (id)processTile:(id)tile fileManager:(id)manager error:(id *)error
{
  tileCopy = tile;
  managerCopy = manager;
  v85 = managerCopy;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      models = [tileCopy models];
      *buf = 138412546;
      v112 = v9;
      v113 = 2048;
      v114 = [models count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, CoreML model count, %lu", buf, 0x16u);

      managerCopy = v85;
    }
  }

  v84 = [NSFileManager pathInCacheDirectory:@"BluePOIModels"];
  v11 = [NSMutableSet alloc];
  models2 = [tileCopy models];
  v77 = [v11 initWithCapacity:{objc_msgSend(models2, "count")}];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [tileCopy models];
  v80 = [obj countByEnumeratingWithState:&v98 objects:v119 count:16];
  if (v80)
  {
    v86 = 0;
    v82 = *v99;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v99 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v98 + 1) + 8 * v13);
      v15 = [NSURL alloc];
      v16 = [v14 url];
      date = [v15 initFileURLWithPath:v16];

      v97 = 0;
      downloadKey = [MLModel compileModelAtURL:date error:&v97];
      v19 = v97;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v20 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = NSStringFromSelector(a2);
          *buf = 138413058;
          v112 = v21;
          v113 = 2112;
          v114 = date;
          v115 = 2112;
          v116 = *&downloadKey;
          v117 = 2112;
          v118 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@, step 1: compile CoreML model, coremlModelURL, %@, tempCompiledModelURL, %@, error, %@", buf, 0x2Au);
        }
      }

      if (v19 || ([downloadKey path], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        v83 = tileCopy;
        v65 = [NSError alloc];
        v109 = NSLocalizedDescriptionKey;
        v66 = [NSString stringWithFormat:@"failed to compile model"];
        v110 = v66;
        v67 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        apToModelMapping = [v65 initWithDomain:@"RTBluePOIErrorDomain" code:109 userInfo:v67];

        if (error)
        {
          v69 = apToModelMapping;
          v70 = 0;
          *error = apToModelMapping;
        }

        else
        {
          v70 = 0;
        }

        goto LABEL_63;
      }

      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [tileCopy geoTileKey]);
      v24 = [NSString stringWithFormat:@"%@-%lu.mlmodelc", v23, v86];
      v25 = [v84 stringByAppendingPathComponent:v24];

      if (![managerCopy fileExistsAtPath:v25 isDirectory:0])
      {
        goto LABEL_23;
      }

      v96 = 0;
      [managerCopy removeItemAtPath:v25 error:&v96];
      v26 = v96;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v27 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = NSStringFromSelector(a2);
          *buf = 138412802;
          v112 = v28;
          v113 = 2112;
          v114 = v25;
          v115 = 2112;
          v116 = *&v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@, remove existing compiled model, %@, error, %@", buf, 0x20u);
        }
      }

      if (v26)
      {
        v29 = [NSError alloc];
        v107 = NSLocalizedDescriptionKey;
        v30 = [NSString stringWithFormat:@"failed to delete existing compiled model"];
        v108 = v30;
        v31 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v32 = [v29 initWithDomain:@"RTBluePOIErrorDomain" code:100 userInfo:v31];
      }

      else
      {
LABEL_23:
        path = [downloadKey path];
        v95 = 0;
        [managerCopy moveItemAtPath:path toPath:v25 error:&v95];
        v34 = v95;

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v35 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = NSStringFromSelector(a2);
            path2 = [downloadKey path];
            *buf = 138413058;
            v112 = v36;
            v113 = 2112;
            v114 = path2;
            v115 = 2112;
            v116 = *&v25;
            v117 = 2112;
            v118 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@, step 2: save compiled model, before, %@, after, %@, error, %@", buf, 0x2Au);

            managerCopy = v85;
          }
        }

        if (v34)
        {
          v38 = [NSError alloc];
          v105 = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithFormat:@"failed to save compiled model"];
          v106 = v39;
          v40 = &v106;
          v41 = &v105;
        }

        else
        {
          v42 = [v14 url];
          v94 = 0;
          [managerCopy removeItemAtPath:v42 error:&v94];
          v34 = v94;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v43 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = NSStringFromSelector(a2);
              v45 = [v14 url];
              *buf = 138412802;
              v112 = v44;
              v113 = 2112;
              v114 = v45;
              v115 = 2112;
              v116 = *&v34;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@, step 3: delete CoreML model, %@, error, %@", buf, 0x20u);
            }
          }

          if (!v34)
          {
            v49 = [RTBluePOIModel alloc];
            identifier = [v14 identifier];
            featureToHashedApMapping = [v14 featureToHashedApMapping];
            v52 = [v49 initWithIdentifier:identifier featureToHashedApMapping:featureToHashedApMapping url:v25];

            if (v52)
            {
              [v77 addObject:v52];
            }

            ++v86;

            v32 = 0;
            v48 = 1;
            goto LABEL_42;
          }

          v38 = [NSError alloc];
          v103 = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithFormat:@"failed to delete the CoreML model"];
          v104 = v39;
          v40 = &v104;
          v41 = &v103;
        }

        v46 = [NSDictionary dictionaryWithObjects:v40 forKeys:v41 count:1];
        v32 = [v38 initWithDomain:@"RTBluePOIErrorDomain" code:100 userInfo:v46];
      }

      if (error)
      {
        v47 = v32;
        v48 = 0;
        *error = v32;
      }

      else
      {
        v48 = 0;
      }

LABEL_42:
      managerCopy = v85;

      if (!v48)
      {
        v70 = 0;
        goto LABEL_64;
      }

      if (v80 == ++v13)
      {
        v80 = [obj countByEnumeratingWithState:&v98 objects:v119 count:16];
        if (v80)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v83 = tileCopy;

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v53 = v77;
  v54 = [v53 countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v91;
    v57 = 0.0;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v91 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v59 = *(*(&v90 + 1) + 8 * i);
        v60 = [v59 url];
        v61 = vcvtd_n_f64_u64([NSFileManager directorySizeAtPath:v60], 0xAuLL);

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v62 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = NSStringFromSelector(a2);
            v64 = [v59 url];
            *buf = 138412802;
            v112 = v63;
            v113 = 2112;
            v114 = v64;
            v115 = 2048;
            v116 = v61;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%@, compiledModelURL, %@, size, %.1f (kB)", buf, 0x20u);
          }
        }

        v57 = v57 + v61;
      }

      v55 = [v53 countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v55);
  }

  else
  {
    v57 = 0.0;
  }

  aSelectora = [RTBluePOITile alloc];
  obj = [v83 identifier];
  apToModelMapping = [v83 apToModelMapping];
  date = [v83 date];
  downloadKey = [v83 downloadKey];
  geoCacheInfo = [v83 geoCacheInfo];
  geoTileKey = [v83 geoTileKey];
  hashedApToModelMapping = [v83 hashedApToModelMapping];
  hashSalt = [v83 hashSalt];
  modelCalibrationParameters = [v83 modelCalibrationParameters];
  modelURLs = [v83 modelURLs];
  pointsOfInterest = [v83 pointsOfInterest];
  v70 = [aSelectora initWithIdentifier:obj apToModelMapping:apToModelMapping date:date downloadKey:downloadKey geoCacheInfo:geoCacheInfo geoTileKey:geoTileKey hashedApToModelMapping:v57 hashSalt:hashedApToModelMapping modelCalibrationParameters:hashSalt models:modelCalibrationParameters modelURLs:v53 pointsOfInterest:modelURLs singlePOIMuid:pointsOfInterest size:{objc_msgSend(v83, "singlePOIMuid")}];

LABEL_63:
  tileCopy = v83;
  managerCopy = v85;
LABEL_64:

  return v70;
}

- (void)downloadBluePOITilesForDownloadKeys:(id)keys handler:(id)handler
{
  handlerCopy = handler;
  keysCopy = keys;
  v8 = objc_alloc_init(GEOExternalTileLoader);
  [(RTLocalBluePOIService *)self downloadBluePOITilesForDownloadKeys:keysCopy tileLoader:v8 handler:handlerCopy];
}

- (void)downloadBluePOITilesForDownloadKeys:(id)keys tileLoader:(id)loader handler:(id)handler
{
  keysCopy = keys;
  loaderCopy = loader;
  handlerCopy = handler;
  v11 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = keysCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v32 = 0uLL;
        v32 = *[v16 bytes];
        v17 = [[GEOExternalTileRequest alloc] initWithExternalKey:&v32];
        if (v17)
        {
          [v11 addObject:v17];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = objc_opt_new();
  *&v32 = 0;
  *(&v32 + 1) = &v32;
  v33 = 0x3032000000;
  v34 = sub_100001200;
  v35 = sub_100021300;
  v36 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100022B1C;
  v24[3] = &unk_1000A8C30;
  v26 = &v32;
  v27 = a2;
  v20 = v19;
  v25 = v20;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002305C;
  v22[3] = &unk_1000A8B40;
  v21 = v18;
  v23 = v21;
  [loaderCopy fetchTiles:v11 result:v24 finished:v22];
  dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  handlerCopy[2](handlerCopy, v20, *(*(&v32 + 1) + 40));

  _Block_object_dispose(&v32, 8);
}

- (void)downloadBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(GEOExternalTileLoader);
  [(RTLocalBluePOIService *)self downloadBluePOIMetadataWithTileLoader:v5 handler:handlerCopy];
}

- (void)downloadBluePOIMetadataWithTileLoader:(id)loader handler:(id)handler
{
  loaderCopy = loader;
  handlerCopy = handler;
  v8 = [[GEOExternalTileRequest alloc] initWithType:2 dataFormatVersion:1 coordinate:{0.0, 0.0}];
  if (v8)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100001200;
    v30 = sub_100021300;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100001200;
    v24 = sub_100021300;
    v25 = 0;
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000233A4;
    v15[3] = &unk_1000A8C58;
    v18 = &v26;
    v19 = a2;
    v17 = &v20;
    v10 = v9;
    v16 = v10;
    [loaderCopy fetchTile:v8 result:v15];
    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    handlerCopy[2](handlerCopy, v27[5], v21[5]);

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v11 = [NSError alloc];
    v32 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"invalid tile download request"];
    v33 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v11 initWithDomain:RTErrorDomain code:7 userInfo:v13];

    handlerCopy[2](handlerCopy, 0, v14);
  }
}

@end