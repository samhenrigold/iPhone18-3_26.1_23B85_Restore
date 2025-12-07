@interface CLAvailabilityTileParser
+ (BOOL)generateAvlTileFromJSON:(id)n atPath:(id)path;
+ (void)_setParamOverrides:(void *)overrides fromDict:(id)dict;
- (BOOL)_openTileFileForIncrementalIO;
- (CLAvailabilityTileParser)init;
- (CLAvailabilityTileParser)initWithEmptyTile;
- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)o;
- (id).cxx_construct;
- (int)numVenuesExpected;
@end

@implementation CLAvailabilityTileParser

- (int)numVenuesExpected
{
  if ([(CLAvailabilityTileParser *)self tileIsOpenForIncrementalIO])
  {
    return *(self->_avlTile.__ptr_ + 14);
  }

  else
  {
    return [(CLAvailabilityTileParser *)self venuesCount];
  }
}

- (BOOL)_openTileFileForIncrementalIO
{
  path = self->_path;
  if (!path)
  {
    if (qword_10045B060 == -1)
    {
      v7 = qword_10045B068;
      if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      sub_100382E38();
      v7 = qword_10045B068;
      if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "_openTileFileForIncrementalIO: Must specify a valid path to deserialize the availability tile!", &v10, 2u);
    return 0;
  }

  path = [(NSURL *)path path];
  uTF8String = [path UTF8String];
  v5 = strlen(uTF8String);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v13 = v5;
  if (v5)
  {
    memmove(&__dst, uTF8String, v5);
  }

  *(&__dst + v6) = 0;

  sub_100002F5C(&__dst, 0, &v10);
  if (v10 > 1)
  {
    v11 = 1;
    sub_10016F9C0();
  }

  if (qword_10045B060 == -1)
  {
    v8 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_100382E10();
  v8 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_openTileFileForIncrementalIO: tile doesn't exist on-disk. attempting to deserialize will fail", &v10, 2u);
  }

LABEL_17:
  if (v13 < 0)
  {
    operator delete(__dst);
  }

  return 0;
}

- (CLAvailabilityTileParser)init
{
  v7.receiver = self;
  v7.super_class = CLAvailabilityTileParser;
  v2 = [(CLAvailabilityTileParser *)&v7 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  path = v2->_path;
  v2->_path = 0;

  cntrl = v3->_avlTile.__cntrl_;
  v3->_avlTile.__ptr_ = 0;
  v3->_avlTile.__cntrl_ = 0;
  if (!cntrl || atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v3;
  }

  (cntrl->__on_zero_shared)(cntrl);
  std::__shared_weak_count::__release_weak(cntrl);
  return v3;
}

- (CLAvailabilityTileParser)initWithEmptyTile
{
  v5.receiver = self;
  v5.super_class = CLAvailabilityTileParser;
  v2 = [(CLAvailabilityTileParser *)&v5 init];
  if (v2)
  {
    path = v2->_path;
    v2->_path = 0;

    operator new();
  }

  return 0;
}

- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)o
{
  oCopy = o;
  v10.receiver = self;
  v10.super_class = CLAvailabilityTileParser;
  v6 = [(CLAvailabilityTileParser *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_path, o), ![(CLAvailabilityTileParser *)v7 _openTileFileForIncrementalIO]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (void)_setParamOverrides:(void *)overrides fromDict:(id)dict
{
  dictCopy = dict;
  v6 = [dictCopy valueForKey:@"notifyIntervalNanos"];

  if (v6)
  {
    v7 = [dictCopy objectForKeyedSubscript:@"notifyIntervalNanos"];
    unsignedIntValue = [v7 unsignedIntValue];
    *(overrides + 75) |= 1u;
    *(overrides + 2) = unsignedIntValue;
  }

  v9 = [dictCopy valueForKey:@"numParticles"];

  if (v9)
  {
    v10 = [dictCopy objectForKeyedSubscript:@"numParticles"];
    unsignedIntValue2 = [v10 unsignedIntValue];
    *(overrides + 75) |= 2u;
    *(overrides + 6) = unsignedIntValue2;
  }

  v12 = [dictCopy valueForKey:@"localizerType"];

  if (v12)
  {
    v13 = [dictCopy objectForKeyedSubscript:@"localizerType"];
    unsignedIntValue3 = [v13 unsignedIntValue];
    *(overrides + 75) |= 4u;
    *(overrides + 7) = unsignedIntValue3;
  }

  v15 = [dictCopy valueForKey:@"modeEstimator"];

  if (v15)
  {
    v16 = [dictCopy objectForKeyedSubscript:@"modeEstimator"];
    unsignedIntValue4 = [v16 unsignedIntValue];
    *(overrides + 75) |= 0x10u;
    *(overrides + 9) = unsignedIntValue4;
  }

  v18 = [dictCopy valueForKey:@"confidenceFactor"];

  if (v18)
  {
    v19 = [dictCopy objectForKeyedSubscript:@"confidenceFactor"];
    [v19 floatValue];
    *(overrides + 75) |= 0x20u;
    *(overrides + 10) = v20;
  }

  v21 = [dictCopy valueForKey:@"motionPdrUnmodelledHeadingVariancePerSecond"];

  if (v21)
  {
    v22 = [dictCopy objectForKeyedSubscript:@"motionPdrUnmodelledHeadingVariancePerSecond"];
    [v22 floatValue];
    *(overrides + 75) |= 0x40u;
    *(overrides + 11) = v23;
  }

  v24 = [dictCopy valueForKey:@"time2dMotionVariancePerSecond"];

  if (v24)
  {
    v25 = [dictCopy objectForKeyedSubscript:@"time2dMotionVariancePerSecond"];
    [v25 floatValue];
    *(overrides + 75) |= 0x800u;
    *(overrides + 24) = v26;
  }

  v27 = [dictCopy valueForKey:@"secondsBetweenVenueTransitions"];

  if (v27)
  {
    v28 = [dictCopy objectForKeyedSubscript:@"secondsBetweenVenueTransitions"];
    [v28 doubleValue];
    *(overrides + 75) |= 0x8000u;
    *(overrides + 14) = v29;
  }

  v30 = [dictCopy valueForKey:@"coarseIndoorFloorSelection"];

  if (v30)
  {
    v31 = [dictCopy objectForKeyedSubscript:@"coarseIndoorFloorSelection"];
    unsignedIntValue5 = [v31 unsignedIntValue];
    *(overrides + 75) |= 1u;
    *(overrides + 2) = unsignedIntValue5;
  }

  v33 = [dictCopy valueForKey:@"gpsStrobeDistance"];

  if (v33)
  {
    v34 = [dictCopy objectForKeyedSubscript:@"gpsStrobeDistance"];
    [v34 floatValue];
    *(overrides + 75) |= 0x20000u;
    *(overrides + 30) = v35;
  }

  v36 = [dictCopy valueForKey:@"lifespanDeepIndoors"];

  if (v36)
  {
    v37 = [dictCopy objectForKeyedSubscript:@"lifespanDeepIndoors"];
    [v37 floatValue];
    *(overrides + 75) |= 0x40000u;
    *(overrides + 31) = v38;
  }

  v39 = [dictCopy valueForKey:@"lifespanNearVenueEdge"];

  if (v39)
  {
    v40 = [dictCopy objectForKeyedSubscript:@"lifespanNearVenueEdge"];
    [v40 floatValue];
    *(overrides + 75) |= 0x80000u;
    *(overrides + 32) = v41;
  }

  v42 = [dictCopy valueForKey:@"lifespanAuxiliary"];

  if (v42)
  {
    v43 = [dictCopy objectForKeyedSubscript:@"lifespanAuxiliary"];
    [v43 floatValue];
    *(overrides + 75) |= 0x100000u;
    *(overrides + 33) = v44;
  }

  v45 = [dictCopy valueForKey:@"wifiLikelihoodOnMapPriorFactor"];

  if (v45)
  {
    v46 = [dictCopy objectForKeyedSubscript:@"wifiLikelihoodOnMapPriorFactor"];
    [v46 floatValue];
    *(overrides + 75) |= 0x200000u;
    *(overrides + 34) = v47;
  }

  v48 = [dictCopy valueForKey:@"coarseIndoorRadioOddsTransform"];

  if (v48)
  {
    v49 = [dictCopy objectForKeyedSubscript:@"coarseIndoorRadioOddsTransform"];
    unsignedIntValue6 = [v49 unsignedIntValue];
    *(overrides + 75) |= 0x800000u;
    *(overrides + 35) = unsignedIntValue6;
  }

  v51 = [dictCopy valueForKey:@"feasibleLocationRequiredPrbIndoor"];

  if (v51)
  {
    v52 = [dictCopy objectForKeyedSubscript:@"feasibleLocationRequiredPrbIndoor"];
    [v52 doubleValue];
    *(overrides + 75) |= 0x1000000u;
    *(overrides + 19) = v53;
  }

  v54 = [dictCopy valueForKey:@"assignFloorWeightsByLikelihood"];

  if (v54)
  {
    v55 = [dictCopy objectForKeyedSubscript:@"assignFloorWeightsByLikelihood"];
    bOOLValue = [v55 BOOLValue];
    *(overrides + 75) |= 0x10000000u;
    *(overrides + 192) = bOOLValue;
  }

  v57 = [dictCopy valueForKey:@"priorOnMapWeightFraction"];

  if (v57)
  {
    v58 = [dictCopy objectForKeyedSubscript:@"priorOnMapWeightFraction"];
    [v58 doubleValue];
    *(overrides + 75) |= 0x20000000u;
    *(overrides + 23) = v59;
  }

  v60 = [dictCopy valueForKey:@"enableBaroAidedFloorTransition"];

  if (v60)
  {
    v61 = [dictCopy objectForKeyedSubscript:@"enableBaroAidedFloorTransition"];
    bOOLValue2 = [v61 BOOLValue];
    *(overrides + 75) |= 0x40000000u;
    *(overrides + 193) = bOOLValue2;
  }

  v63 = [dictCopy valueForKey:@"time2dMotionVariancePerSecondWifi2"];

  if (v63)
  {
    v64 = [dictCopy objectForKeyedSubscript:@"time2dMotionVariancePerSecondWifi2"];
    [v64 floatValue];
    *(overrides + 75) |= 0x80000000;
    *(overrides + 49) = v65;
  }

  v66 = [dictCopy valueForKey:@"bilinearObservations"];

  if (v66)
  {
    v67 = [dictCopy objectForKeyedSubscript:@"bilinearObservations"];
    bOOLValue3 = [v67 BOOLValue];
    *(overrides + 76) |= 2u;
    *(overrides + 194) = bOOLValue3;
  }

  v69 = [dictCopy valueForKey:@"walkableBlueDotSearchRadius"];

  if (v69)
  {
    v70 = [dictCopy objectForKeyedSubscript:@"walkableBlueDotSearchRadius"];
    [v70 floatValue];
    *(overrides + 76) |= 0x10u;
    *(overrides + 56) = v71;
  }

  v72 = [dictCopy valueForKey:@"motionPdrUnmodelledHeadingVariancePerSecondWifi2"];

  if (v72)
  {
    v73 = [dictCopy objectForKeyedSubscript:@"motionPdrUnmodelledHeadingVariancePerSecondWifi2"];
    [v73 floatValue];
    *(overrides + 76) |= 0x40u;
    *(overrides + 57) = v74;
  }

  v75 = [dictCopy valueForKey:@"particleFilterOffMapProbabilityFloor"];

  if (v75)
  {
    v76 = [dictCopy objectForKeyedSubscript:@"particleFilterOffMapProbabilityFloor"];
    [v76 floatValue];
    *(overrides + 76) |= 0x100u;
    *(overrides + 62) = v77;
  }

  v78 = [dictCopy valueForKey:@"coarseOutdoorProbabilityFloor"];

  if (v78)
  {
    v79 = [dictCopy objectForKeyedSubscript:@"coarseOutdoorProbabilityFloor"];
    [v79 floatValue];
    *(overrides + 76) |= 0x200u;
    *(overrides + 63) = v80;
  }

  v81 = [dictCopy valueForKey:@"pdr"];

  if (v81)
  {
    if (qword_10045B060 == -1)
    {
      v82 = qword_10045B068;
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      sub_100382E38();
      v82 = qword_10045B068;
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }
    }

    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pdr is not currently supported", v113, 2u);
    goto LABEL_55;
  }

LABEL_56:
  v83 = [dictCopy valueForKey:@"pedomCompassMotionWifi2"];

  if (!v83)
  {
    goto LABEL_61;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v84 = qword_10045B068;
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v84 = qword_10045B068;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
LABEL_59:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pedomCompassMotionWifi2 is not currently supported", v113, 2u);
  }

LABEL_60:

LABEL_61:
  v85 = [dictCopy valueForKey:@"deadReckoning"];

  if (!v85)
  {
    goto LABEL_66;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v86 = qword_10045B068;
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v86 = qword_10045B068;
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
LABEL_64:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning deadReckoning is not currently supported", v113, 2u);
  }

LABEL_65:

LABEL_66:
  v87 = [dictCopy valueForKey:@"coarseIndoor"];

  if (!v87)
  {
    goto LABEL_71;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v88 = qword_10045B068;
    if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v88 = qword_10045B068;
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
LABEL_69:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning coarseIndoor is not currently supported", v113, 2u);
  }

LABEL_70:

LABEL_71:
  v89 = [dictCopy valueForKey:@"gpsFusionGlobalParams"];

  if (!v89)
  {
    goto LABEL_76;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v90 = qword_10045B068;
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v90 = qword_10045B068;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
LABEL_74:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning gpsFusionGlobalParams is not currently supported", v113, 2u);
  }

LABEL_75:

LABEL_76:
  v91 = [dictCopy valueForKey:@"wifi"];

  if (!v91)
  {
    goto LABEL_81;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v92 = qword_10045B068;
    if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v92 = qword_10045B068;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
LABEL_79:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning wifi is not currently supported", v113, 2u);
  }

LABEL_80:

LABEL_81:
  v93 = [dictCopy valueForKey:@"bodyFixed"];

  if (!v93)
  {
    goto LABEL_86;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v94 = qword_10045B068;
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v94 = qword_10045B068;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
LABEL_84:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning bodyFixed is not currently supported", v113, 2u);
  }

LABEL_85:

LABEL_86:
  v95 = [dictCopy valueForKey:@"motionTruth"];

  if (!v95)
  {
    goto LABEL_91;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v96 = qword_10045B068;
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v96 = qword_10045B068;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
LABEL_89:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning motionTruth is not currently supported", v113, 2u);
  }

LABEL_90:

LABEL_91:
  v97 = [dictCopy valueForKey:@"multiphoneDbm"];

  if (!v97)
  {
    goto LABEL_96;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v98 = qword_10045B068;
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v98 = qword_10045B068;
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
LABEL_94:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning multiphoneDbm is not currently supported", v113, 2u);
  }

LABEL_95:

LABEL_96:
  v99 = [dictCopy valueForKey:@"pedomCompassMotion"];

  if (!v99)
  {
    goto LABEL_101;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v100 = qword_10045B068;
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v100 = qword_10045B068;
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
LABEL_99:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pedomCompassMotion is not currently supported", v113, 2u);
  }

LABEL_100:

LABEL_101:
  v101 = [dictCopy valueForKey:@"injection"];

  if (!v101)
  {
    goto LABEL_106;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v102 = qword_10045B068;
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v102 = qword_10045B068;
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
LABEL_104:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning injection is not currently supported", v113, 2u);
  }

LABEL_105:

LABEL_106:
  v103 = [dictCopy valueForKey:@"beacon"];

  if (!v103)
  {
    goto LABEL_111;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v104 = qword_10045B068;
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v104 = qword_10045B068;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
LABEL_109:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning beacon is not currently supported", v113, 2u);
  }

LABEL_110:

LABEL_111:
  v105 = [dictCopy valueForKey:@"wallBehavior"];

  if (!v105)
  {
    goto LABEL_116;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v106 = qword_10045B068;
    if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v106 = qword_10045B068;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
LABEL_114:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning wallBehavior is not currently supported", v113, 2u);
  }

LABEL_115:

LABEL_116:
  v107 = [dictCopy valueForKey:@"dynamicUniverseParameters"];

  if (!v107)
  {
    goto LABEL_121;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v108 = qword_10045B068;
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  v108 = qword_10045B068;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
LABEL_119:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning dynamicUniverseParameters is not currently supported", v113, 2u);
  }

LABEL_120:

LABEL_121:
  v109 = [dictCopy valueForKey:@"dynamicUniverseParameters"];

  if (!v109)
  {
    goto LABEL_126;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v110 = qword_10045B068;
    if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  v110 = qword_10045B068;
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
LABEL_124:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning dynamicUniverseParameters is not currently supported", v113, 2u);
  }

LABEL_125:

LABEL_126:
  v111 = [dictCopy valueForKey:@"altitude"];

  if (v111)
  {
    if (qword_10045B060 == -1)
    {
      v112 = qword_10045B068;
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
LABEL_130:

        goto LABEL_131;
      }
    }

    else
    {
      sub_100382E10();
      v112 = qword_10045B068;
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_130;
      }
    }

    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning altitude is not currently supported", v113, 2u);
    goto LABEL_130;
  }

LABEL_131:
}

+ (BOOL)generateAvlTileFromJSON:(id)n atPath:(id)path
{
  nCopy = n;
  pathCopy = path;
  v182 = nCopy;
  v176 = pathCopy;
  if (nCopy)
  {
    if (pathCopy)
    {
      [nCopy dataUsingEncoding:4];
      v175 = v205 = 0;
      v181 = [NSJSONSerialization JSONObjectWithData:"JSONObjectWithData:options:error:" options:? error:?];
      v178 = 0;
      if (v178)
      {
        if (qword_10045B060 != -1)
        {
          sub_100382E10();
        }

        log = qword_10045B068;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v7 = [v178 description];
          v8 = v7;
          uTF8String = [v7 UTF8String];
          v10 = v182;
          uTF8String2 = [v182 UTF8String];
          *buf = 136315394;
          *&buf[4] = uTF8String;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String2;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, failed to generate, error=%s, str=\n%s\n", buf, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        v13 = [v181 objectForKey:@"venues"];
        v174 = v13;
        if (v13)
        {
          if ([v13 count])
          {
            sub_100342230(buf);
            if (qword_10045B060 != -1)
            {
              sub_100382E10();
            }

            v14 = qword_10045B068;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = [v174 count];
              LODWORD(v206[0]) = 134217984;
              *(v206 + 4) = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, adding %lu venues", v206, 0xCu);
            }

            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            log = v174;
            v172 = [log countByEnumeratingWithState:&v201 objects:v210 count:16];
            if (v172)
            {
              v173 = *v202;
              do
              {
                for (i = 0; i != v172; i = i + 1)
                {
                  if (*v202 != v173)
                  {
                    objc_enumerationMutation(log);
                  }

                  v180 = *(*(&v201 + 1) + 8 * i);
                  v16 = *v212;
                  v17 = *&buf[24];
                  if (*&buf[24] >= *v212)
                  {
                    if (*v212 == *&v212[4])
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&buf[16], *v212 + 1);
                      v16 = *v212;
                    }

                    *v212 = v16 + 1;
                    operator new();
                  }

                  ++*&buf[24];
                  v18 = *(*&buf[16] + 8 * v17);
                  v19 = [v180 objectForKey:@"exteriors"];
                  v199 = 0u;
                  v200 = 0u;
                  v197 = 0u;
                  v198 = 0u;
                  obj = v19;
                  v20 = [obj countByEnumeratingWithState:&v197 objects:v209 count:16];
                  if (v20)
                  {
                    v184 = *v198;
                    do
                    {
                      v185 = v20;
                      for (j = 0; j != v185; j = j + 1)
                      {
                        if (*v198 != v184)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v22 = *(*(&v197 + 1) + 8 * j);
                        v23 = *(v18 + 52);
                        v24 = *(v18 + 48);
                        if (v24 >= v23)
                        {
                          if (v23 == *(v18 + 56))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 40), v23 + 1);
                            v23 = *(v18 + 52);
                          }

                          *(v18 + 52) = v23 + 1;
                          operator new();
                        }

                        v25 = *(v18 + 40);
                        *(v18 + 48) = v24 + 1;
                        v26 = *(v25 + 8 * v24);
                        v27 = [v22 objectForKey:@"latitude"];
                        v28 = [v22 objectForKey:@"longitude"];
                        if (qword_10045B060 != -1)
                        {
                          sub_100382E10();
                        }

                        v29 = qword_10045B068;
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                        {
                          v30 = [v27 count];
                          LODWORD(v206[0]) = 134217984;
                          *(v206 + 4) = v30;
                          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, adding %lu exterior points", v206, 0xCu);
                        }

                        for (k = 0; k < [v27 count]; ++k)
                        {
                          v32 = [v27 objectAtIndex:k];
                          [v32 doubleValue];
                          v34 = *(v26 + 24);
                          if (v34 == *(v26 + 28))
                          {
                            if (2 * v34 <= v34 + 1)
                            {
                              v35 = v34 + 1;
                            }

                            else
                            {
                              v35 = 2 * v34;
                            }

                            if (v35 <= 4)
                            {
                              v35 = 4;
                            }

                            *(v26 + 28) = v35;
                            operator new[]();
                          }

                          v36 = *(v26 + 16);
                          *(v26 + 24) = v34 + 1;
                          *(v36 + 8 * v34) = v33;

                          v37 = [v28 objectAtIndex:k];
                          [v37 doubleValue];
                          v39 = *(v26 + 48);
                          if (v39 == *(v26 + 52))
                          {
                            if (2 * v39 <= v39 + 1)
                            {
                              v40 = v39 + 1;
                            }

                            else
                            {
                              v40 = 2 * v39;
                            }

                            if (v40 <= 4)
                            {
                              v40 = 4;
                            }

                            *(v26 + 52) = v40;
                            operator new[]();
                          }

                          v41 = *(v26 + 40);
                          *(v26 + 48) = v39 + 1;
                          *(v41 + 8 * v39) = v38;
                        }

                        v42 = [v22 valueForKey:@"tolerance"];
                        [v42 doubleValue];
                        *(v26 + 76) |= 4u;
                        *(v26 + 64) = v43;
                      }

                      v20 = [obj countByEnumeratingWithState:&v197 objects:v209 count:16];
                    }

                    while (v20);
                  }

                  v195 = 0u;
                  v196 = 0u;
                  v194 = 0u;
                  v193 = 0u;
                  v44 = [v180 objectForKey:@"ids"];
                  v45 = [v44 countByEnumeratingWithState:&v193 objects:v208 count:16];
                  if (v45)
                  {
                    v46 = *v194;
                    do
                    {
                      for (m = 0; m != v45; m = m + 1)
                      {
                        if (*v194 != v46)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v48 = *(*(&v193 + 1) + 8 * m);
                        v49 = v48;
                        uTF8String3 = [v48 UTF8String];
                        v51 = uTF8String3;
                        v52 = *(v18 + 28);
                        v53 = *(v18 + 24);
                        if (v53 >= v52)
                        {
                          if (v52 == *(v18 + 32))
                          {
                            uTF8String3 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 16), v52 + 1);
                            v52 = *(v18 + 28);
                          }

                          *(v18 + 28) = v52 + 1;
                          v55 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(uTF8String3);
                          v56 = *(v18 + 16);
                          v57 = *(v18 + 24);
                          *(v18 + 24) = v57 + 1;
                          *(v56 + 8 * v57) = v55;
                        }

                        else
                        {
                          v54 = *(v18 + 16);
                          *(v18 + 24) = v53 + 1;
                          v55 = *(v54 + 8 * v53);
                        }

                        std::string::assign(v55, v51);
                        if (qword_10045B060 != -1)
                        {
                          sub_100382E10();
                        }

                        v58 = qword_10045B068;
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                        {
                          v59 = v48;
                          uTF8String4 = [v48 UTF8String];
                          LODWORD(v206[0]) = 136315138;
                          *(v206 + 4) = uTF8String4;
                          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, added venue ID %s", v206, 0xCu);
                        }
                      }

                      v45 = [v44 countByEnumeratingWithState:&v193 objects:v208 count:16];
                    }

                    while (v45);
                  }

                  v61 = [v180 valueForKey:@"context"];
                  intValue = [v61 intValue];

                  if (intValue - 1 < 2)
                  {
                    *(v18 + 104) |= 8u;
                    *(v18 + 96) = intValue;
                  }

                  v63 = [v180 objectForKey:@"tileDownloadConfiguration"];
                  v64 = [v63 objectForKey:@"floorIdxsForWifiDownloadOnly"];
                  *(v18 + 104) |= 4u;
                  v65 = *(v18 + 64);
                  if (!v65)
                  {
                    operator new();
                  }

                  v191 = 0u;
                  v192 = 0u;
                  v189 = 0u;
                  v190 = 0u;
                  v66 = v64;
                  v67 = [v66 countByEnumeratingWithState:&v189 objects:v207 count:16];
                  if (v67)
                  {
                    v68 = *v190;
                    do
                    {
                      for (n = 0; n != v67; n = n + 1)
                      {
                        if (*v190 != v68)
                        {
                          objc_enumerationMutation(v66);
                        }

                        unsignedIntValue = [*(*(&v189 + 1) + 8 * n) unsignedIntValue];
                        v72 = *(v65 + 24);
                        if (v72 == *(v65 + 28))
                        {
                          if (2 * v72 <= v72 + 1)
                          {
                            v73 = v72 + 1;
                          }

                          else
                          {
                            v73 = 2 * v72;
                          }

                          if (v73 <= 4)
                          {
                            v73 = 4;
                          }

                          *(v65 + 28) = v73;
                          operator new[]();
                        }

                        v70 = *(v65 + 16);
                        *(v65 + 24) = v72 + 1;
                        *(v70 + 4 * v72) = unsignedIntValue;
                      }

                      v67 = [v66 countByEnumeratingWithState:&v189 objects:v207 count:16];
                    }

                    while (v67);
                  }
                }

                v172 = [log countByEnumeratingWithState:&v201 objects:v210 count:16];
              }

              while (v172);
            }

            v74 = [v181 valueForKey:@"parameterOverrides"];
            v75 = v74 == 0;

            if (!v75)
            {
              v227 |= 2u;
              v76 = v213;
              if (!v213)
              {
                operator new();
              }

              v77 = [v181 objectForKeyedSubscript:@"parameterOverrides"];
              [CLAvailabilityTileParser _setParamOverrides:v76 fromDict:v77];
            }

            v78 = [v181 objectForKey:@"motionActivityDebounceParameters"];
            v79 = v78 == 0;

            if (!v79)
            {
              v80 = [v181 objectForKey:@"motionActivityDebounceParameters"];
              v81 = [v80 valueForKey:@"nonFitnessToCyclingSeconds"];
              v82 = v81 == 0;

              if (!v82)
              {
                v227 |= 0x4000u;
                v83 = v225;
                if (!v225)
                {
                  operator new();
                }

                v84 = [v80 valueForKey:@"nonFitnessToCyclingSeconds"];
                unsignedIntValue2 = [v84 unsignedIntValue];
                *(v83 + 36) |= 1u;
                *(v83 + 16) = unsignedIntValue2;
              }

              v86 = [v80 valueForKey:@"nonFitnessToRunningSeconds"];
              v87 = v86 == 0;

              if (!v87)
              {
                v227 |= 0x4000u;
                v88 = v225;
                if (!v225)
                {
                  operator new();
                }

                v89 = [v80 valueForKey:@"nonFitnessToRunningSeconds"];
                unsignedIntValue3 = [v89 unsignedIntValue];
                *(v88 + 36) |= 2u;
                *(v88 + 20) = unsignedIntValue3;
              }

              v91 = [v80 valueForKey:@"runningToNonFitnessSeconds"];
              v92 = v91 == 0;

              if (!v92)
              {
                v227 |= 0x4000u;
                v93 = v225;
                if (!v225)
                {
                  operator new();
                }

                v94 = [v80 valueForKey:@"runningToNonFitnessSeconds"];
                unsignedIntValue4 = [v94 unsignedIntValue];
                *(v93 + 36) |= 4u;
                *(v93 + 24) = unsignedIntValue4;
              }

              v96 = [v80 valueForKey:@"cyclingToNonFitnessSeconds"];
              v97 = v96 == 0;

              if (!v97)
              {
                v227 |= 0x4000u;
                v98 = v225;
                if (!v225)
                {
                  operator new();
                }

                v99 = [v80 valueForKey:@"cyclingToNonFitnessSeconds"];
                unsignedIntValue5 = [v99 unsignedIntValue];
                *(v98 + 36) |= 8u;
                *(v98 + 28) = unsignedIntValue5;
              }
            }

            v101 = [v181 valueForKey:@"availabilityZScoreConfidenceInterval"];
            v102 = v101 == 0;

            if (!v102)
            {
              v103 = [v181 valueForKey:@"availabilityZScoreConfidenceInterval"];
              [v103 doubleValue];
              v227 |= 4u;
              v214 = v104;
            }

            v105 = [v181 valueForKey:@"indoorPrefetchRadiusKM"];
            v106 = v105 == 0;

            if (!v106)
            {
              v107 = [v181 valueForKey:@"indoorPrefetchRadiusKM"];
              unsignedIntValue6 = [v107 unsignedIntValue];
              v227 |= 8u;
              v215 = unsignedIntValue6;
            }

            v109 = [v181 valueForKey:@"regionalPrefetchRadiusKM"];
            v110 = v109 == 0;

            if (!v110)
            {
              v111 = [v181 valueForKey:@"regionalPrefetchRadiusKM"];
              unsignedIntValue7 = [v111 unsignedIntValue];
              v227 |= 0x10u;
              v216 = unsignedIntValue7;
            }

            v113 = [v181 valueForKey:@"indoorPrefetchMaxFloorCount"];
            v114 = v113 == 0;

            if (!v114)
            {
              v115 = [v181 valueForKey:@"indoorPrefetchMaxFloorCount"];
              unsignedIntValue8 = [v115 unsignedIntValue];
              v227 |= 0x20u;
              v217 = unsignedIntValue8;
            }

            v117 = [v181 valueForKey:@"regionalPrefetchMaxFloorCount"];
            v118 = v117 == 0;

            if (!v118)
            {
              v119 = [v181 valueForKey:@"regionalPrefetchMaxFloorCount"];
              unsignedIntValue9 = [v119 unsignedIntValue];
              v227 |= 0x40u;
              v218 = unsignedIntValue9;
            }

            v121 = [v181 valueForKey:@"indoorPrefetchMaxTotalBytes"];
            v122 = v121 == 0;

            if (!v122)
            {
              v123 = [v181 valueForKey:@"indoorPrefetchMaxTotalBytes"];
              unsignedIntValue10 = [v123 unsignedIntValue];
              v227 |= 0x80u;
              v219 = unsignedIntValue10;
            }

            v125 = [v181 valueForKey:@"regionalPrefetchMaxTotalBytes"];
            v126 = v125 == 0;

            if (!v126)
            {
              v127 = [v181 valueForKey:@"regionalPrefetchMaxTotalBytes"];
              unsignedIntValue11 = [v127 unsignedIntValue];
              v227 |= 0x100u;
              v220 = unsignedIntValue11;
            }

            v129 = [v181 valueForKey:@"indoorLocationOfInterestMergeRadiusKM"];
            v130 = v129 == 0;

            if (!v130)
            {
              v131 = [v181 valueForKey:@"indoorLocationOfInterestMergeRadiusKM"];
              unsignedIntValue12 = [v131 unsignedIntValue];
              v227 |= 0x200u;
              v221 = unsignedIntValue12;
            }

            v133 = [v181 valueForKey:@"regionalLocationOfInterestMergeRadiusKM"];
            v134 = v133 == 0;

            if (!v134)
            {
              v135 = [v181 valueForKey:@"regionalLocationOfInterestMergeRadiusKM"];
              unsignedIntValue13 = [v135 unsignedIntValue];
              v227 |= 0x400u;
              v222 = unsignedIntValue13;
            }

            v137 = [v181 valueForKey:@"preferPredictionWithinNActivityCycles"];
            v138 = v137 == 0;

            if (!v138)
            {
              v139 = [v181 valueForKey:@"preferPredictionWithinNActivityCycles"];
              unsignedIntValue14 = [v139 unsignedIntValue];
              v227 |= 0x800u;
              v223 = unsignedIntValue14;
            }

            v141 = [v181 valueForKey:@"indoorNumberOfDaysBeforeTileRedownload"];
            v142 = v141 == 0;

            if (!v142)
            {
              v143 = [v181 valueForKey:@"indoorNumberOfDaysBeforeTileRedownload"];
              [v143 floatValue];
              v227 |= 0x1000u;
              v224 = v144;
            }

            v145 = [v181 valueForKey:@"regionalNumberOfDaysBeforeTileRedownload"];
            v146 = v145 == 0;

            if (!v146)
            {
              v147 = [v181 valueForKey:@"regionalNumberOfDaysBeforeTileRedownload"];
              [v147 floatValue];
              v227 |= 0x2000u;
              v226 = v148;
            }

            path = [v176 path];
            v150 = path;
            uTF8String5 = [path UTF8String];
            v152 = strlen(uTF8String5);
            if (v152 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_10000D39C();
            }

            v153 = v152;
            if (v152 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v152;
            if (v152)
            {
              memmove(&__dst, uTF8String5, v152);
            }

            __dst.__r_.__value_.__s.__data_[v153] = 0;

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100003228(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __dst;
            }

            HIBYTE(v206[2]) = 16;
            strcpy(v206, ".protoToFile-tmp");
            sub_10001AEA8(&__p, v206);
            if (SHIBYTE(v206[2]) < 0)
            {
              operator delete(v206[0]);
            }

            sub_100170A3C(&__p, 2, &v186);
            wireless_diagnostics::google::protobuf::io::FileOutputStream::FileOutputStream(v206, v186, -1);
            sub_10002B4FC(buf);
            wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(v206);
            sub_100170CB4(&v186);
            sub_10001A224(&__p, &__dst, 0);
            if (qword_10045B060 != -1)
            {
              sub_100382E10();
            }

            v160 = qword_10045B068;
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
            {
              p_dst = &__dst;
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              LODWORD(v206[0]) = 136315138;
              *(v206 + 4) = p_dst;
              _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, find tile at %s", v206, 0xCu);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            sub_100346238(buf);
            v12 = 1;
            goto LABEL_154;
          }

          if (qword_10045B060 != -1)
          {
            sub_100382E10();
          }

          v154 = qword_10045B068;
          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            v157 = v182;
            uTF8String6 = [v182 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String6;
            _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, expected at least one venue, str=\n%s\n", buf, 0xCu);
          }
        }

        else
        {
          if (qword_10045B060 != -1)
          {
            sub_100382E10();
          }

          v154 = qword_10045B068;
          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            v155 = v182;
            uTF8String7 = [v182 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String7;
            _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, no venues given in avl tile json??, str=\n%s\n", buf, 0xCu);
          }
        }

        v12 = 0;
        log = v174;
      }

LABEL_154:

      return v12;
    }

    v168 = sub_10002833C(0);
    if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v212 = 2081;
      *&v212[2] = "path != nullptr";
      _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v170 = sub_10002833C(v169);
    if (os_signpost_enabled(v170))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v212 = 2081;
      *&v212[2] = "path != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v170, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path", "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v166 = sub_10002833C(v171);
    if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v212 = 2081;
      *&v212[2] = "path != nullptr";
      _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v167 = 254;
  }

  else
  {
    v162 = sub_10002833C(pathCopy);
    if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v212 = 2081;
      *&v212[2] = "jsonStr != nullptr";
      _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v164 = sub_10002833C(v163);
    if (os_signpost_enabled(v164))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v212 = 2081;
      *&v212[2] = "jsonStr != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v164, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string", "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v166 = sub_10002833C(v165);
    if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v212 = 2081;
      *&v212[2] = "jsonStr != nullptr";
      _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v167 = 253;
  }

  result = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/Framework/CLAvailabilityTileParser.mm", v167, "+[CLAvailabilityTileParser generateAvlTileFromJSON:atPath:]");
  __break(1u);
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end