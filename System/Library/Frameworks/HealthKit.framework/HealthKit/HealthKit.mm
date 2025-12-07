void _HKInitializeLogging(uint64_t result, uint64_t a2)
{
  if (_HKInitializeLogging_onceToken != -1)
  {
    _HKInitializeLogging_cold_1();
  }
}

dispatch_queue_t HKCreateSerialDispatchQueueWithQOSClass(void *a1, void *a2, dispatch_qos_class_t a3)
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, a3, 0);
  v8 = a2;
  v9 = a1;

  v10 = dispatch_queue_attr_make_with_overcommit();

  v11 = HKDispatchQueueName(v9, v8);
  v12 = dispatch_queue_create(v11, v10);

  return v12;
}

uint64_t HKDispatchQueueName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [objc_opt_class() isEqual:v3];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = v8;
    v10 = @".";
    v11 = &stru_1F05FF230;
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v10 = &stru_1F05FF230;
    }

    if (v5)
    {
      [v6 stringWithFormat:@"com.apple.HealthKit.%@%@%@", v8, v10, v11, v16];
    }

    else
    {
      [v6 stringWithFormat:@"com.apple.HealthKit.%@%@%@.%p", v8, v10, v11, v3];
    }
    v14 = ;
    v13 = [v14 UTF8String];
  }

  else
  {
    v12 = &stru_1F05FF230;
    if (v4)
    {
      v12 = v4;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.HealthKit.%@", v12];
    v13 = [v9 UTF8String];
  }

  return v13;
}

id _HKActivityCacheDateComponentsFromCacheIndex(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a1];
  v2 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone(v1);
  v3 = _HKActivityCacheDateComponentsFromDate(v1, v2);

  return v3;
}

id _HKActivityCacheDateComponentsFromDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__39;
  v15 = __Block_byref_object_dispose__39;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___HKActivityCacheDateComponentsFromDate_block_invoke;
  v8[3] = &unk_1E7381480;
  v10 = &v11;
  v8[4] = v4;
  v5 = v3;
  v9 = v5;
  HKWithAutoreleasePool(0, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_19197D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKHealthStoreClientInterface(uint64_t a1)
{
  if (HKHealthStoreClientInterface_onceToken != -1)
  {
    HKHealthStoreClientInterface_cold_1();
  }

  v2 = HKHealthStoreClientInterface_interface;

  return v2;
}

uint64_t _HKDerivedCacheIndexAndDateComponents(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 calendarIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E695D850]];

  if ((v8 & 1) == 0)
  {
    _HKDerivedCacheIndexAndDateComponents_cold_1();
  }

  v9 = [v5 timeZone];
  v10 = [v9 secondsFromGMT];

  if (v10)
  {
    _HKDerivedCacheIndexAndDateComponents_cold_2(v5);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__39;
  v23 = __Block_byref_object_dispose__39;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___HKDerivedCacheIndexAndDateComponents_block_invoke;
  v13[3] = &unk_1E73814A8;
  v13[4] = v6;
  v13[5] = v5;
  v14 = a3 != 0;
  v13[6] = &v19;
  v13[7] = &v15;
  HKWithAutoreleasePool(0, v13);
  if (a3)
  {
    *a3 = v20[5];
  }

  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

void sub_19197EFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t HKFirstDayOfWeekForWeeklyGoalCalculations(uint64_t a1, uint64_t a2)
{
  if (HKFirstDayOfWeekForWeeklyGoalCalculations_onceToken != -1)
  {
    HKFirstDayOfWeekForWeeklyGoalCalculations_cold_1();
  }

  return HKFirstDayOfWeekForWeeklyGoalCalculations_firstDayOfWeek;
}

__CFString *_NSStringFromPrivateHeartRateContext(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E73797D8[a1];
  }
}

void sub_19197FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

id HKLogSafeDescription(void *a1)
{
  v1 = a1;
  if (+[_HKBehavior isAppleInternalInstall])
  {
    [v1 description];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v1];
  }
  v2 = ;

  return v2;
}

id _unitStringForUnit(void *a1, void *a2, __CFString *a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", a3];
  }

  v7 = &stru_1F05FF230;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_1F05FF230;
  }

  if (a3)
  {
    v7 = a3;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v8, v6, v7];

  return v9;
}

__CFString *_NSStringFromHeartbeatSequenceContext(uint64_t a1)
{
  v1 = @"Breathe";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Background";
  }
}

id _HKMostRecentActivitySnapshotInSnapshots(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 snapshotIndex];
        if (v8 > [v4 snapshotIndex])
        {
          v9 = v7;

          v4 = v9;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_191980988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  os_unfair_lock_unlock(v3 + 35);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HKWithAutoreleasePool(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = v3[2](v3, &v11);
  v6 = v11;
  objc_autoreleasePoolPop(v4);
  v7 = v6;
  v8 = v7;
  if (v7)
  {
    if (a1)
    {
      v9 = v7;
      *a1 = v8;
    }

    else
    {
      _HKLogDroppedError(v7);
    }
  }

  return v5;
}

uint64_t _HKCacheIndexFromDateComponents(void *a1)
{
  v1 = a1;
  v2 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone(v1);
  v3 = _HKDerivedCacheIndexAndDateComponents(v2, v1, 0);

  return v3;
}

__CFString *HKNSOperatingSystemVersionString(void *a1)
{
  v1 = a1[2];
  if (*a1 == -1 && a1[1] == 0 && v1 == 0)
  {
    v6 = @"NSOperatingSystemVersionUnknown";
  }

  else
  {
    if (v1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%ld", v1];
    }

    else
    {
      v5 = &stru_1F05FF230;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld%@", *a1, a1[1], v5];
  }

  return v6;
}

uint64_t _HKWorkoutGoalTypeAcceptsQuantity(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v6 = +[HKUnit secondUnit];
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v6 = +[HKUnit kilocalorieUnit];
      goto LABEL_10;
    }

LABEL_11:
    v7 = [v4 isCompatibleWithUnit:v5];

    goto LABEL_12;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = +[HKUnit meterUnit];
LABEL_10:
      v5 = v6;
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v7 = v3 == 0;
LABEL_12:

  return v7;
}

id _HKWorkoutDistanceTypeForActivityType(uint64_t a1)
{
  v4 = 0;
  v5 = a1 - 1;
  v6 = HKQuantityTypeIdentifierDistanceCrossCountrySkiing;
  switch(v5)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 17:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 29:
    case 31:
    case 33:
    case 35:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
    case 63:
    case 67:
    case 68:
    case 72:
    case 74:
      v6 = &HKQuantityTypeIdentifierDistanceWalkingRunning;
      goto LABEL_3;
    case 12:
      v6 = &HKQuantityTypeIdentifierDistanceCycling;
      goto LABEL_3;
    case 30:
      v6 = HKQuantityTypeIdentifierDistancePaddleSports;
      goto LABEL_3;
    case 34:
      v6 = HKQuantityTypeIdentifierDistanceRowing;
      goto LABEL_3;
    case 38:
      v6 = HKQuantityTypeIdentifierDistanceSkatingSports;
      goto LABEL_3;
    case 45:
      v6 = &HKQuantityTypeIdentifierDistanceSwimming;
      goto LABEL_3;
    case 59:
      goto LABEL_3;
    case 60:
    case 66:
      v6 = &HKQuantityTypeIdentifierDistanceDownhillSnowSports;
      goto LABEL_3;
    case 69:
    case 70:
      v6 = &HKQuantityTypeIdentifierDistanceWheelchair;
LABEL_3:
      v4 = [HKObjectType quantityTypeForIdentifier:*v6, v1];
      break;
    default:
      break;
  }

  return v4;
}

uint64_t _HKWorkoutActivityTypeIsRouteable(uint64_t a1, int a2, uint64_t a3)
{
  if ((a1 - 21) > 0x3D)
  {
    goto LABEL_6;
  }

  if (((1 << (a1 - 21)) & 0x2006418080054409) != 0)
  {
    return a2 ^ 1u;
  }

  if (a1 == 46)
  {
    return a3 == 2;
  }

LABEL_6:
  if (a1 == 13)
  {
    return a2 ^ 1u;
  }

  return 0;
}

__CFString *_HKWorkoutActivityNameForActivityType(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0;
  switch(v1)
  {
    case 0:
      result = @"HKWorkoutActivityTypeAmericanFootball";
      break;
    case 1:
      result = @"HKWorkoutActivityTypeArchery";
      break;
    case 2:
      result = @"HKWorkoutActivityTypeAustralianFootball";
      break;
    case 3:
      result = @"HKWorkoutActivityTypeBadminton";
      break;
    case 4:
      result = @"HKWorkoutActivityTypeBaseball";
      break;
    case 5:
      result = @"HKWorkoutActivityTypeBasketball";
      break;
    case 6:
      result = @"HKWorkoutActivityTypeBowling";
      break;
    case 7:
      result = @"HKWorkoutActivityTypeBoxing";
      break;
    case 8:
      result = @"HKWorkoutActivityTypeClimbing";
      break;
    case 9:
      result = @"HKWorkoutActivityTypeCricket";
      break;
    case 10:
      result = @"HKWorkoutActivityTypeCrossTraining";
      break;
    case 11:
      result = @"HKWorkoutActivityTypeCurling";
      break;
    case 12:
      result = @"HKWorkoutActivityTypeCycling";
      break;
    case 13:
      result = @"HKWorkoutActivityTypeDance";
      break;
    case 14:
      result = @"HKWorkoutActivityTypeDanceInspiredTraining";
      break;
    case 15:
      result = @"HKWorkoutActivityTypeElliptical";
      break;
    case 16:
      result = @"HKWorkoutActivityTypeEquestrianSports";
      break;
    case 17:
      result = @"HKWorkoutActivityTypeFencing";
      break;
    case 18:
      result = @"HKWorkoutActivityTypeFishing";
      break;
    case 19:
      result = @"HKWorkoutActivityTypeFunctionalStrengthTraining";
      break;
    case 20:
      result = @"HKWorkoutActivityTypeGolf";
      break;
    case 21:
      result = @"HKWorkoutActivityTypeGymnastics";
      break;
    case 22:
      result = @"HKWorkoutActivityTypeHandball";
      break;
    case 23:
      result = @"HKWorkoutActivityTypeHiking";
      break;
    case 24:
      result = @"HKWorkoutActivityTypeHockey";
      break;
    case 25:
      result = @"HKWorkoutActivityTypeHunting";
      break;
    case 26:
      result = @"HKWorkoutActivityTypeLacrosse";
      break;
    case 27:
      result = @"HKWorkoutActivityTypeMartialArts";
      break;
    case 28:
      result = @"HKWorkoutActivityTypeMindAndBody";
      break;
    case 29:
      result = @"HKWorkoutActivityTypeMixedMetabolicCardioTraining";
      break;
    case 30:
      result = @"HKWorkoutActivityTypePaddleSports";
      break;
    case 31:
      result = @"HKWorkoutActivityTypePlay";
      break;
    case 32:
      result = @"HKWorkoutActivityTypePreparationAndRecovery";
      break;
    case 33:
      result = @"HKWorkoutActivityTypeRacquetball";
      break;
    case 34:
      result = @"HKWorkoutActivityTypeRowing";
      break;
    case 35:
      result = @"HKWorkoutActivityTypeRugby";
      break;
    case 36:
      result = @"HKWorkoutActivityTypeRunning";
      break;
    case 37:
      result = @"HKWorkoutActivityTypeSailing";
      break;
    case 38:
      result = @"HKWorkoutActivityTypeSkatingSports";
      break;
    case 39:
      result = @"HKWorkoutActivityTypeSnowSports";
      break;
    case 40:
      result = @"HKWorkoutActivityTypeSoccer";
      break;
    case 41:
      result = @"HKWorkoutActivityTypeSoftball";
      break;
    case 42:
      result = @"HKWorkoutActivityTypeSquash";
      break;
    case 43:
      result = @"HKWorkoutActivityTypeStairClimbing";
      break;
    case 44:
      result = @"HKWorkoutActivityTypeSurfingSports";
      break;
    case 45:
      result = @"HKWorkoutActivityTypeSwimming";
      break;
    case 46:
      result = @"HKWorkoutActivityTypeTableTennis";
      break;
    case 47:
      result = @"HKWorkoutActivityTypeTennis";
      break;
    case 48:
      result = @"HKWorkoutActivityTypeTrackAndField";
      break;
    case 49:
      result = @"HKWorkoutActivityTypeTraditionalStrengthTraining";
      break;
    case 50:
      result = @"HKWorkoutActivityTypeVolleyball";
      break;
    case 51:
      result = @"HKWorkoutActivityTypeWalking";
      break;
    case 52:
      result = @"HKWorkoutActivityTypeWaterFitness";
      break;
    case 53:
      result = @"HKWorkoutActivityTypeWaterPolo";
      break;
    case 54:
      result = @"HKWorkoutActivityTypeWaterSports";
      break;
    case 55:
      result = @"HKWorkoutActivityTypeWrestling";
      break;
    case 56:
      result = @"HKWorkoutActivityTypeYoga";
      break;
    case 57:
      result = @"HKWorkoutActivityTypeBarre";
      break;
    case 58:
      result = @"HKWorkoutActivityTypeCoreTraining";
      break;
    case 59:
      result = @"HKWorkoutActivityTypeCrossCountrySkiing";
      break;
    case 60:
      result = @"HKWorkoutActivityTypeDownhillSkiing";
      break;
    case 61:
      result = @"HKWorkoutActivityTypeFlexibility";
      break;
    case 62:
      result = @"HKWorkoutActivityTypeHighIntensityIntervalTraining";
      break;
    case 63:
      result = @"HKWorkoutActivityTypeJumpRope";
      break;
    case 64:
      result = @"HKWorkoutActivityTypeKickboxing";
      break;
    case 65:
      result = @"HKWorkoutActivityTypePilates";
      break;
    case 66:
      result = @"HKWorkoutActivityTypeSnowboarding";
      break;
    case 67:
      result = @"HKWorkoutActivityTypeStairs";
      break;
    case 68:
      result = @"HKWorkoutActivityTypeStepTraining";
      break;
    case 69:
      result = @"HKWorkoutActivityTypeWheelchairWalkPace";
      break;
    case 70:
      result = @"HKWorkoutActivityTypeWheelchairRunPace";
      break;
    case 71:
      result = @"HKWorkoutActivityTypeTaiChi";
      break;
    case 72:
      result = @"HKWorkoutActivityTypeMixedCardio";
      break;
    case 73:
      result = @"HKWorkoutActivityTypeHandCycling";
      break;
    case 74:
      result = @"HKWorkoutActivityTypeDiscSports";
      break;
    case 75:
      result = @"HKWorkoutActivityTypeFitnessGaming";
      break;
    case 76:
      result = @"HKWorkoutActivityTypeCardioDance";
      break;
    case 77:
      result = @"HKWorkoutActivityTypeSocialDance";
      break;
    case 78:
      result = @"HKWorkoutActivityTypePickleball";
      break;
    case 79:
      result = @"HKWorkoutActivityTypeCooldown";
      break;
    case 80:
      return result;
    case 81:
      result = @"HKWorkoutActivityTypeSwimBikeRun";
      break;
    case 82:
      result = @"HKWorkoutActivityTypeTransition";
      break;
    case 83:
      result = @"HKWorkoutActivityTypeUnderwaterDiving";
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

__CFString *_HKWorkoutSessionLocationTypeName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"invalid location";
  }

  else
  {
    return off_1E737E3E0[a1 - 1];
  }
}

__CFString *_HKWorkoutSwimmingLocationTypeName(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKWorkoutSwimmingLocationType(%ld)", a1];
  }

  else
  {
    v2 = off_1E73846E8[a1];
  }

  return v2;
}

__CFString *_HKWorkoutSessionStateName(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return @"Not Started";
  }

  else
  {
    return off_1E73782C8[a1 - 2];
  }
}

id _HKBaseUnitGrammar(uint64_t a1)
{
  if (_HKBaseUnitGrammar_onceToken != -1)
  {
    _HKBaseUnitGrammar_cold_1();
  }

  v2 = _HKBaseUnitGrammar___grammar;

  return v2;
}

id _Prefixes(uint64_t a1)
{
  if (_Prefixes_onceToken != -1)
  {
    _Prefixes_cold_1();
  }

  v2 = _Prefixes_prefixes;

  return v2;
}

void _HKLogDroppedError(void *a1)
{
  v1 = a1;
  _HKInitializeLogging(v1, v2);
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    _HKLogDroppedError_cold_1(v1, v3);
  }
}

void sub_1919850CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a32)
  {
    operator delete(a32);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v33 - 128));
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x193B03560]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, *v20, v20[1]);
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v4 = v15 + 2;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_1919866DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const char *> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0))
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v11 = __f + 1;
    if (v11 != __l)
    {
      v12 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        v13 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v13)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
      }

      while (++v11 != __l);
    }

    v12 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80, 0))
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v12;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_191986EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v18 = 0;
    negate = this->__negate_;
    goto LABEL_54;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_31;
  }

  v72 = *current;
  v6 = current[1];
  v73 = current[1];
  if (this->__icase_)
  {
    v72 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v73 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v72, &v74, &__p);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    negate = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v72 != *(p_second - 1) || v73 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v74);
    v12 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12[v13].first.__r_.__value_.__r.__words, &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v13].second) >= 1)
      {
        ++v14;
        v12 = this->__ranges_.__begin_;
        ++v13;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v74, &__p);
  v36 = this->__equivalences_.__begin_;
  v37 = v71;
  v38 = this->__equivalences_.__end_ - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      size = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      v45 = size;
      if ((size & 0x80u) != 0)
      {
        size = v36->__r_.__value_.__l.__size_;
      }

      if (v40 == size)
      {
        v46 = v45 >= 0 ? v36 : v36->__r_.__value_.__r.__words[0];
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      ++v36;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v65 = tab[v72];
      if (((v65 & mask) != 0 || v72 == 95 && (mask & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((tab[v73] & mask) != 0 || (mask & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      neg_mask = this->__neg_mask_;
      if ((v65 & neg_mask) != 0 || v72 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_147:
        negate = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v73] & neg_mask) == 0)
      {
        negate = 1;
        if (v73 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    negate = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  negate = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = *a2->__current_;
  v72 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v21) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v21);
    v72 = v21;
  }

  v22 = this->__chars_.__begin_;
  v23 = this->__chars_.__end_ - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = this->__neg_mask_;
  if (v25 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v21 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v21] & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    end = this->__neg_chars_.__end_;
    v28 = memchr(this->__neg_chars_.__begin_, v21, end - this->__neg_chars_.__begin_);
    v29 = !v28 || v28 == end;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      negate = 1;
      goto LABEL_54;
    }
  }

  v33 = this->__ranges_.__begin_;
  v34 = this->__ranges_.__end_;
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v73);
    v33 = this->__ranges_.__begin_;
    v34 = this->__ranges_.__end_;
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v33[v47].first.__r_.__value_.__r.__words, &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v47].second) >= 1)
    {
      ++v48;
      v33 = this->__ranges_.__begin_;
      ++v47;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    negate = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_119:
      v61 = this->__mask_;
      if ((v72 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v72] & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      negate |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v73, &__p);
    v51 = this->__equivalences_.__begin_;
    v52 = this->__equivalences_.__end_ - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v51->__r_.__value_.__l.__size_;
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : v51->__r_.__value_.__r.__words[0];
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        ++v51;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      negate = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v32 = -993;
  }

  else
  {
    a2->__current_ += v18;
    first = this->__first_;
    v32 = -995;
  }

  a2->__do_ = v32;
  a2->__node_ = first;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x193B035A0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F05F4058;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x193B035A0);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x193B035A0);
}

void *sub_191989F7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19198A004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_191CC67B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19198A07C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19198A184()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198A1C4()
{
  sub_191BF98CC(0, &qword_1EADCA830, &qword_1EADCA778, off_1E7375158, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19198A2C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19198A2FC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_191CC6148();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_191CC5DC8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_19198A498(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_191CC6148();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_191CC5DC8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_19198A634(uint64_t a1, uint64_t a2)
{
  sub_191BFF900(0, &qword_1EADCA938, &type metadata for HKStatisticsCollectionQueryDescriptor.Result, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198A6C4(uint64_t a1, uint64_t a2)
{
  sub_191BFF900(0, &qword_1EADCA938, &type metadata for HKStatisticsCollectionQueryDescriptor.Result, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198A758(uint64_t a1, uint64_t a2)
{
  sub_191BFF890(0, &qword_1EADCA8E0, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198A7E0(uint64_t a1, uint64_t a2)
{
  sub_191BFF890(0, &qword_1EADCA8E0, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198A870()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198A8B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198A8EC(uint64_t a1, uint64_t a2)
{
  sub_191C029B0(0, &qword_1EADCA9A8, sub_191C013EC, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198A988(uint64_t a1, uint64_t a2)
{
  sub_191C029B0(0, &qword_1EADCA9A8, sub_191C013EC, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198AA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191C02778(0, &qword_1EADCA980, MEMORY[0x1E69E87B8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_19198AB0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_191C02778(0, &qword_1EADCA980, MEMORY[0x1E69E87B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_19198ABE0()
{
  sub_191C02778(0, &qword_1EADCA810, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19198ACB4(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return HKDayIndexRange.dayIndexClosedRange.setter(&v3);
}

uint64_t sub_19198AD0C(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v2 = *(result + 8);
    v3 = __OFSUB__(v2, *result);
    v4 = v2 - *result;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *a2 = *result;
      a2[1] = v4;
    }
  }

  return result;
}

uint64_t sub_19198AD4C(uint64_t a1, uint64_t a2)
{
  sub_191C0603C(0, &qword_1EADCAA78, MEMORY[0x1E6969080], type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198ADDC(uint64_t a1, uint64_t a2)
{
  sub_191C0603C(0, &qword_1EADCAA78, MEMORY[0x1E6969080], type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198AE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191C06398(0, &qword_1EADCAA68, MEMORY[0x1E69E87B8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

void sub_19198AF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_191C06398(0, &qword_1EADCAA68, MEMORY[0x1E69E87B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }
}

uint64_t sub_19198B038()
{
  sub_191C06398(0, &qword_1EADCA808, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19198B0F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_19198B1D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_191BFEF28(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_19198B2A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198B2E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198B318(uint64_t a1, uint64_t a2)
{
  sub_191C0A4C0(0, &qword_1EADCAB98, sub_191C0A0B0, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198B3B4(uint64_t a1, uint64_t a2)
{
  sub_191C0A4C0(0, &qword_1EADCAB98, sub_191C0A0B0, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198B454(uint64_t a1, uint64_t a2)
{
  sub_191C0A86C(0, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198B4DC(uint64_t a1, uint64_t a2)
{
  sub_191C0A86C(0, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198B57C(uint64_t a1, uint64_t a2)
{
  sub_191C0C0BC(0, &qword_1EADCABF8, &qword_1EADCA7E8, off_1E7374E88, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198B614(uint64_t a1, uint64_t a2)
{
  sub_191C0C0BC(0, &qword_1EADCABF8, &qword_1EADCA7E8, off_1E7374E88, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_19198B794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_19198B868()
{
  sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19198B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_191CC61A8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_19198B99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_191CC61A8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_19198BA40()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19198BAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a3 + 16), a3, a4);
  v9 = type metadata accessor for HKQueryAsyncStream(0, v6, v7, v8);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t sub_19198BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a4 + 16), a3, a4);
  v9 = type metadata accessor for HKQueryAsyncStream(0, v6, v7, v8);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, a2, a2, v9);
}

uint64_t sub_19198BBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a3 + 16), a3, a4);
  sub_191BF92E0();
  v6 = sub_191CC6AD8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_19198BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a4 + 16), a3, a4);
  sub_191BF92E0();
  v6 = sub_191CC6AD8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_19198BCEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19198BD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC61A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19198BE54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_191CC61A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19198BF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC61A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_19198C05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_191CC61A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_19198C194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_191CC61A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_191CC6148();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_19198C318(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_191CC61A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_191CC6148();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_19198C498(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_191CC61A8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_191CC6148();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[12]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_19198C618(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_191CC61A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_191CC6148();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (*(*(v13 - 8) + 84) != a3)
      {
        *(a1 + a4[12]) = (a2 - 1);
        return;
      }

      v9 = v13;
      v10 = *(v13 - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_19198C7B0()
{
  MEMORY[0x193B048B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198C800()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19198C854()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198C88C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198C8C4()
{
  sub_191C3CFE4(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_19198C988()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198C9E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191C420BC(0, a2, a3, a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_19198CA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191C420BC(0, a2, a3, a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_19198CAFC(uint64_t a1, uint64_t a2)
{
  sub_191C42394(0, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198CB84(uint64_t a1, uint64_t a2)
{
  sub_191C42394(0, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198CC14()
{
  sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19198CE5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x193B02090](*a1, &type metadata for HKCloudSync.Show.SyncEntityVersion);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9HealthKit11HKCloudSyncO4ShowV9ContainerVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19198CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_191C47DA4(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19198CFD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_191C47DA4(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19198D0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC61A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19198D1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_191CC61A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19198D2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC61A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_191CC6148();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_19198D3CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_191CC61A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_191CC6148();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_19198D53C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_19198D548()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198D580()
{
  sub_191C6D5DC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_19198D64C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198D684()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19198D6C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19198D704()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198D73C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19198D77C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198D7B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198D7F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_191CC5CF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19198D8A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_191CC5CF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19198D948(uint64_t a1, uint64_t a2)
{
  sub_191C77DFC(0, &qword_1EADCC798, sub_191BFAD0C, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19198D9E4(uint64_t a1, uint64_t a2)
{
  sub_191C77DFC(0, &qword_1EADCC798, sub_191BFAD0C, type metadata accessor for HKQueryAsyncStream);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19198DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191C77EC4(0, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_19198DB68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_191C77EC4(0, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_19198DC3C()
{
  sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v4 | 7);
}

id sub_19198DD44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

id sub_19198DDA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_19198DE08()
{
  sub_191C6D908(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_191C6D908(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19198DE58()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_19198DE78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19198DF70@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_19198EBF4();
}

uint64_t sub_19198E068()
{
  MEMORY[0x193B048B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198E0A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC61A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_191CC6148();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_19198E20C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_191CC61A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_191CC6148();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_19198E334()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198E36C()
{
  v1 = (type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_191CC61A8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_191CC6148();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19198E4BC()
{
  v1 = (type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v3;
  v7 = sub_191CC61A8();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = v1[9];
  v9 = sub_191CC6148();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t sub_19198E628()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198E68C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198E6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_191BF92E0();
  v5 = sub_191CC6AE8();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_19198E754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191BF92E0();
  v6 = sub_191CC6AE8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_19198E7E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19198E828()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19198E860()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19198E8A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_19198E968(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_19198E9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_191CA171C(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19198EA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    sub_191CA171C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_19198EBC4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

void _HKLogDroppedErrorWithReason(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  _HKInitializeLogging(v7, v8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    _HKLogDroppedErrorWithReason_cold_1(v7, v5, v6);
  }
}

uint64_t checkWhetherAllMetadataAlreadyExists(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 <= [v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v4 objectForKey:{v12, v17}];
          v14 = [v7 objectForKey:v12];
          if (!v13 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
          {

LABEL_16:
            v6 = 0;
            goto LABEL_18;
          }

          v15 = [v13 isEqual:v14];

          if (!v15)
          {
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v6 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 1;
    }

LABEL_18:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

__CFString *HKWorkoutBuilderConstructionStateToString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E7376B58[a1];
  }

  return v2;
}

void sub_191999890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_19199B6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _HKDecibleQuantity(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[HKUnit decibelHearingLevelUnit];
    [v1 doubleValue];
    v4 = v3;

    v5 = [HKQuantity quantityWithUnit:v2 doubleValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id HKMedicalRecordsStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F68D8];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchMedicalRecordsForClinicalRecordsUUIDs_completion_ argumentIndex:0 ofReply:0];
  v2 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchMedicalRecordsForClinicalRecordsUUIDs_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id HKCurrentLocaleCountryCodeIfUnknown(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"XX"])
  {
    v2 = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
    v3 = [v2 countryCode];
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

id standardizeIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"/"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];

    v1 = v2;
  }

  v3 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  v4 = [v3 URLByStandardizingPath];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:1];
    v6 = [v5 scheme];
    v7 = [v6 isEqualToString:@"https"];

    if (v7)
    {
      [v5 setScheme:@"http"];
    }

    v8 = [v5 URL];

    v9 = [v8 absoluteString];

    v1 = v9;
  }

  return v1;
}

id HKPrettyPrintedFeatureSettings(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  if (v1 && ([v1 keyValueStorage], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4))
  {
    v22 = v2;
    v24 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v24 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v5 = [[HKTableFormatter alloc] initWithColumnTitles:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v1 allKeys];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", v10];
          v12 = [v1 keyValueStorage];
          v13 = [v12 objectForKeyedSubscript:v10];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
          }

          v16 = v15;

          v17 = [v1 modificationDateForKey:v10];
          if (v17)
          {
            v18 = [v24 stringFromDate:v17];
          }

          else
          {
            v18 = &stru_1F05FF230;
          }

          v29[0] = v11;
          v29[1] = v16;
          v29[2] = v18;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
          [(HKTableFormatter *)v5 appendHeterogenousRow:v19];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    v20 = [(HKTableFormatter *)v5 formattedTable];
    v2 = v22;
    [v22 appendString:v20];
  }

  else
  {
    [v2 appendString:@"<none>\n"];
  }

  return v2;
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_1919A9AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

BOOL HKCategoryTypeAcceptsValue(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 > 275)
  {
    if (a1 > 324)
    {
      v6 = a2 < 4;
      v7 = v6;
      if (a1 != 330)
      {
        v7 = 0;
      }

      if (a1 != 327)
      {
        v6 = v7;
      }

      v8 = a2 < 9;
      v9 = a2 < 7;
      if (a1 != 326)
      {
        v9 = 0;
      }

      if (a1 != 325)
      {
        v8 = v9;
      }

      if (a1 <= 326)
      {
        return v8;
      }

      else
      {
        return v6;
      }
    }

    else if ((a1 - 313) < 2)
    {
LABEL_28:
      v4 = a2 - 1 >= 5;
      return !v4;
    }

    else if (a1 == 276 || a1 == 293)
    {
      return a2 == 0;
    }
  }

  else if (a1 <= 90)
  {
    v10 = a2 == 1;
    v11 = a2 < 2;
    if (a1 != 70)
    {
      v11 = 0;
    }

    if (a1 != 68)
    {
      v10 = v11;
    }

    if (a1 == 63)
    {
      return a2 < 6;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    switch(a1)
    {
      case 91:
      case 95:
        goto LABEL_28;
      case 92:
      case 250:
        v4 = a2 - 1 >= 4;
        return !v4;
      case 96:
      case 97:
      case 99:
      case 140:
      case 141:
      case 147:
      case 156:
      case 189:
      case 191:
      case 192:
      case 237:
      case 254:
      case 262:
      case 263:
      case 264:
      case 265:
        return a2 == 0;
      case 98:
        v4 = a2 >= 8;
        return !v4;
      case 112:
        v4 = a2 >= 3;
        return !v4;
      case 116:
      case 164:
      case 169:
        v4 = a2 >= 2;
        return !v4;
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 165:
      case 166:
      case 167:
      case 168:
      case 171:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 211:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 240:
      case 241:
      case 242:
        v4 = a2 >= 5;
        return !v4;
      case 170:
        v4 = a2 >= 4;
        return !v4;
      case 178:
      case 199:
      case 236:
        return a2 == 1;
      case 190:
        v4 = a2 - 1 >= 2;
        return !v4;
      case 193:
        v4 = a2 - 1 >= 7;
        return !v4;
      case 243:
      case 244:
        v4 = a2 - 1 >= 3;
        return !v4;
      default:
        return result;
    }
  }

  return result;
}

uint64_t HKCodableLocationCoordinateSeriesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableLocationCoordinate);
        [a1 addCoordinates:v13];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableLocationCoordinateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1919AE95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1919AED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1919AF1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1919AF470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_2_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

id HKCloudSyncControlServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6998];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v1 setWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_remote_syncWithRequest_reason_completion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_remote_modifyRecordsToCreate_recordsToDelete_completion_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_remote_modifyRecordsToCreate_recordsToDelete_completion_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_1919B1BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1919B2054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1919B28A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1919B3D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1919B5570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1919B6070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1919B6B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1919BF26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1919BF5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1919BF914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

id HKDescriptionForAnalyticsFileWithName(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(HKHealthStore);
  v3 = [[HKDiagnosticStore alloc] initWithHealthStore:v2];
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = __Block_byref_object_copy__4;
  v27[3] = __Block_byref_object_dispose__4;
  v28 = 0;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__4;
  v24[3] = __Block_byref_object_dispose__4;
  v25 = 0;
  v4 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __HKDescriptionForAnalyticsFileWithName_block_invoke;
  v19[3] = &unk_1E7379118;
  v21 = &v26;
  v22 = &v23;
  v5 = v4;
  v20 = v5;
  [(HKDiagnosticStore *)v3 fetchURLForAnalyticsFileWithName:v1 completion:v19];
  v6 = dispatch_time(0, 10000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  v9 = *(v27[0] + 40);
  if (v9)
  {
    v10 = (v24[0] + 40);
    obj = *(v24[0] + 40);
    v11 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v9 encoding:4 error:&obj];
    objc_storeStrong(v10, obj);
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      _HKInitializeLogging(v12, v13);
      v16 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        HKDescriptionForAnalyticsFileWithName_cold_1(v27, v24, v16);
      }
    }
  }

  else
  {
    _HKInitializeLogging(v7, v8);
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      HKDescriptionForAnalyticsFileWithName_cold_2(v1, v24, v15);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void sub_1919C67F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HKDescriptionForAnalyticsFileWithName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1919C6A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HDStringRepresentationForRecipientIdentifier(void *a1)
{
  v2 = a1;
  v3 = [v2 type];
  if (v3 == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v2 clinicalAccountIdentifier];
    v6 = v5;
    v7 = @"ClinicalAccount-";
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = [v2 invitationUUID];
    v6 = v5;
    v7 = @"SharedSummary-";
  }

  v1 = [v4 stringWithFormat:@"%@%@", v7, v5];

LABEL_6:

  return v1;
}

void sub_1919CBD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1919CC008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __NanoRegistryLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7379250;
    v4 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    NanoRegistryLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getNRDevicePropertyIsSetupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyIsSetup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyIsSetupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKHeartRateMotionContextForPrivateHeartRateContext(uint64_t a1)
{
  if ((a1 - 3) > 4)
  {
    return 0;
  }

  else
  {
    return qword_191D2F488[a1 - 3];
  }
}

uint64_t HKAppleIrregularRhythmNotificationsAlgorithmVersionForPrivateVersionString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 firstObject];

  v3 = [MEMORY[0x1E696ADA0] hk_wholeNumberFormatter];
  v4 = [v3 numberFromString:v2];

  v5 = [v4 integerValue];
  if (v5 >= 3)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = qword_191D2F4B0[v5];
  }

  return v6;
}

id HKMetadataAliasesForKey(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"HKMetadataKeyHeartRateMotionContext"])
  {
    v23 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = *v25;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) integerValue];
        switch(v11)
        {
          case 2:
            [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F06832D0, &unk_1F06832E8, &unk_1F0683300, 0, v18, v19, v20, v21, v22}];
            goto LABEL_13;
          case 1:
            [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F06831F8, 0, v16, v17, v18, v19, v20, v21, v22}];
            goto LABEL_13;
          case 0:
            [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0683240, &unk_1F0683210, &unk_1F0683258, &unk_1F0683270, &unk_1F0683288, &unk_1F06832A0, &unk_1F06832B8, &unk_1F0683228, 0}];
            v12 = LABEL_13:;
            goto LABEL_15;
        }

        v12 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_15:
        v13 = v12;
        [v5 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (!v8)
      {
LABEL_17:

        v30 = @"_HKPrivateHeartRateContext";
        v31 = v5;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v3 = v23;
        goto LABEL_18;
      }
    }
  }

  if ([v3 isEqualToString:@"HKAlgorithmVersion"])
  {
    v28 = @"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion";
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DFD8] set];
    }

    v29 = v5;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    if (!v4)
    {
LABEL_18:
    }
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

id HKMetadataAliasRangesForKey(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1 isEqualToString:@"HKAlgorithmVersion"])
  {
    v4 = [v3 hk_map:&__block_literal_global_9];
    v7 = @"_HKPrivateMetadataKeyBackgroundAtrialFibrillationDetectionVersion";
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

HKMetadataValueRange *__HKMetadataAliasRangesForKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.0", v2];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.0", v2 + 1];
  v5 = [[HKMetadataValueRange alloc] initWithMinValue:v3 maxValue:v4];

  return v5;
}

__CFString *NSStringFromPrivateElectrocardiogramClassification(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7379838[a1];
  }
}

__CFString *_HKHearingTestAlgorithmVersionString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"1";
  }

  else
  {
    return &stru_1F05FF230;
  }
}

uint64_t _HKMetadataKeyIsReadOnly(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HKMetadataKeyAppleECGAlgorithmVersion"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HKMetadataKeyAppleIrregularRhythmNotificationsAlgorithmVersion") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HKMetadataKeyAppleDeviceCalibrated") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"HKMetadataKeyAppleFitnessPlusSession"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"HKMetadataKeyAppleFitnessPlusCatalogIdentifier"];
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return NSRequestConcreteImplementation();
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return objc_opt_class();
}

id HKWorkoutClusterStoreServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6B18];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutsWithFilter_anchor_limit_completion_ argumentIndex:0 ofReply:1];
  v2 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutsWithFilter_limit_sortDescriptors_completion_ argumentIndex:2 ofReply:0];
  v3 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutsWithFilter_limit_sortDescriptors_completion_ argumentIndex:0 ofReply:1];
  v4 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutClustersWithCompletion_ argumentIndex:0 ofReply:1];
  v5 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutUUIDsForClusterUUID_completion_ argumentIndex:0 ofReply:1];
  v6 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutClustersContainingWorkoutUUIDs_completion_ argumentIndex:0 ofReply:0];
  v7 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchWorkoutClustersContainingWorkoutUUIDs_completion_ argumentIndex:0 ofReply:1];
  v8 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_updateWorkoutClusterWithUUID_newRelevance_newLastWorkoutUUID_newBestWorkoutUUID_newWorkoutAssociations_workoutAssociationsToRemove_completion_ argumentIndex:4 ofReply:0];
  v9 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_updateWorkoutClusterWithUUID_newRelevance_newLastWorkoutUUID_newBestWorkoutUUID_newWorkoutAssociations_workoutAssociationsToRemove_completion_ argumentIndex:5 ofReply:0];

  return v0;
}

unint64_t HKCoreMotionSupportsEstimatedWorkoutEffortForActivityType(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = a1;
    switch(a1)
    {
      case 1:
        v4 = 42;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 3:
        v4 = 41;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 4:
        v4 = 52;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 5:
        v4 = 60;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 6:
        v4 = 50;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 8:
        v4 = 64;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 10:
        v4 = 61;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 13:
        v8 = a2 == 0;
        v9 = 4;
        goto LABEL_53;
      case 16:
        v4 = 9;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 20:
        v4 = 28;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 21:
        v4 = 27;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 23:
        v4 = 57;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 24:
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 25:
        v6 = a2 == 0;
        v7 = 48;
        goto LABEL_14;
      case 27:
        v4 = 45;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 31:
        v4 = 38;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 34:
        v4 = 53;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 35:
        if (a2)
        {
          v4 = 12;
        }

        else
        {
          v4 = 35;
        }

        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 36:
        v4 = 44;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 37:
        v8 = a2 == 0;
        v9 = 17;
        goto LABEL_53;
      case 39:
        v8 = a2 == 0;
        v9 = 46;
        goto LABEL_53;
      case 41:
        v8 = a2 == 0;
        v9 = 39;
        goto LABEL_53;
      case 42:
        v4 = 59;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 43:
        v4 = 56;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 44:
        v4 = 11;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 46:
        v4 = 19;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 47:
        v4 = 62;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 48:
        v4 = 51;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 49:
        v4 = 58;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 51:
        v4 = 55;
        return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
      case 52:
        v8 = a2 == 0;
        v9 = 15;
LABEL_53:
        if (v8)
        {
          v4 = v9;
        }

        else
        {
          v4 = v9 + 1;
        }

        break;
      case 57:
        v4 = 6;
        break;
      case 59:
        v4 = 30;
        break;
      case 60:
        v4 = 36;
        break;
      case 61:
        v4 = 23;
        break;
      case 63:
        v4 = 22;
        break;
      case 64:
        v4 = 63;
        break;
      case 65:
        v4 = 34;
        break;
      case 66:
        v4 = 32;
        break;
      case 67:
        v4 = 37;
        break;
      case 70:
        v4 = 20;
        break;
      case 71:
        v4 = 21;
        break;
      case 72:
        v4 = 31;
        break;
      case 74:
        v6 = a2 == 0;
        v7 = 66;
LABEL_14:
        if (v6)
        {
          v4 = v7 + 1;
        }

        else
        {
          v4 = v7;
        }

        break;
      case 75:
        v4 = 43;
        break;
      case 77:
        v4 = 7;
        break;
      case 79:
        v4 = 54;
        break;
      case 80:
        v4 = 29;
        break;
      case 83:
        v4 = 33;
        break;
      default:
        v4 = 14;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  return ([MEMORY[0x1E6963530] supportedMetricsForWorkoutType:{v4, v2, v3}] >> 4) & 1;
}

void sub_1919D15FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1919D23EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1919D3FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double binarysample::ElectrocardiogramLead::ElectrocardiogramLead(binarysample::ElectrocardiogramLead *this)
{
  *this = &unk_1F05F2380;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *&result = 1;
  *(this + 7) = 1;
  return result;
}

void binarysample::ElectrocardiogramLead::~ElectrocardiogramLead(binarysample::ElectrocardiogramLead *this)
{
  *this = &unk_1F05F2380;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  binarysample::ElectrocardiogramLead::~ElectrocardiogramLead(this);

  JUMPOUT(0x193B035A0);
}

binarysample::ElectrocardiogramLead *binarysample::ElectrocardiogramLead::ElectrocardiogramLead(binarysample::ElectrocardiogramLead *this, const binarysample::ElectrocardiogramLead *a2)
{
  *this = &unk_1F05F2380;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 1;
  if (*(a2 + 60))
  {
    v5 = *(a2 + 14);
    *(this + 60) = 1;
    *(this + 14) = v5;
  }

  if (this != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

uint64_t binarysample::ElectrocardiogramLead::formatText(binarysample::ElectrocardiogramLead *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v5 += 4;
    PB::TextFormatter::format(a2, "flag");
  }

  if (*(this + 60))
  {
    PB::TextFormatter::format(a2, "name");
  }

  v7 = *(this + 4);
  v8 = *(this + 5);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "value", v9);
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t binarysample::ElectrocardiogramLead::readFrom(binarysample::ElectrocardiogramLead *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_159;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v65 = v15++ > 8;
          if (v65)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v65 = v9++ > 8;
          if (v65)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        goto LABEL_159;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 4)
      {
        break;
      }

      if (v22 == 3)
      {
        if (v21 != 2)
        {
          v76 = *(this + 5);
          v75 = *(this + 6);
          if (v76 >= v75)
          {
            v87 = *(this + 4);
            v88 = v76 - v87;
            v89 = (v76 - v87) >> 2;
            v90 = v89 + 1;
            if ((v89 + 1) >> 62)
            {
LABEL_162:
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v91 = v75 - v87;
            if (v91 >> 1 > v90)
            {
              v90 = v91 >> 1;
            }

            if (v91 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v92 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = v90;
            }

            if (v92)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 32, v92);
            }

            v99 = (v76 - v87) >> 2;
            v100 = (4 * v89);
            v101 = (4 * v89 - 4 * v99);
            *v100 = 0;
            v77 = v100 + 1;
            memcpy(v101, v87, v88);
            v102 = *(this + 4);
            *(this + 4) = v101;
            *(this + 5) = v77;
            *(this + 6) = 0;
            if (v102)
            {
              operator delete(v102);
            }
          }

          else
          {
            *v76 = 0;
            v77 = v76 + 4;
          }

          *(this + 5) = v77;
          v103 = *(a2 + 1);
          if (v103 <= 0xFFFFFFFFFFFFFFFBLL && v103 + 4 <= *(a2 + 2))
          {
            *(v77 - 1) = *(*a2 + v103);
            *(a2 + 1) += 4;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_155;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_161;
        }

        v32 = *(a2 + 1);
        v33 = *(a2 + 2);
        while (v32 < v33 && (*(a2 + 24) & 1) == 0)
        {
          v35 = *(this + 5);
          v34 = *(this + 6);
          if (v35 >= v34)
          {
            v37 = *(this + 4);
            v38 = v35 - v37;
            v39 = (v35 - v37) >> 2;
            v40 = v39 + 1;
            if ((v39 + 1) >> 62)
            {
              goto LABEL_162;
            }

            v41 = v34 - v37;
            if (v41 >> 1 > v40)
            {
              v40 = v41 >> 1;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v42 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 32, v42);
            }

            v43 = (v35 - v37) >> 2;
            v44 = (4 * v39);
            v45 = (4 * v39 - 4 * v43);
            *v44 = 0;
            v36 = v44 + 1;
            memcpy(v45, v37, v38);
            v46 = *(this + 4);
            *(this + 4) = v45;
            *(this + 5) = v36;
            *(this + 6) = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v35 = 0;
            v36 = v35 + 4;
          }

          *(this + 5) = v36;
          v47 = *(a2 + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(a2 + 2))
          {
            *(a2 + 24) = 1;
            goto LABEL_127;
          }

          *(v36 - 1) = *(*a2 + v47);
          v33 = *(a2 + 2);
          v32 = *(a2 + 1) + 4;
          *(a2 + 1) = v32;
        }

        goto LABEL_127;
      }

      if (v22 == 1)
      {
        *(this + 60) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v78 = 0;
          v79 = 0;
          v28 = 0;
          v16 = v23 >= v24;
          v80 = v23 - v24;
          if (!v16)
          {
            v80 = 0;
          }

          v81 = (v25 + v24);
          v82 = v24 + 1;
          while (1)
          {
            if (!v80)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_125;
            }

            v83 = *v81;
            *(a2 + 1) = v82;
            v28 |= (v83 & 0x7F) << v78;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            --v80;
            ++v81;
            ++v82;
            v65 = v79++ > 8;
            if (v65)
            {
LABEL_102:
              LODWORD(v28) = 0;
              goto LABEL_125;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v65 = v27++ > 8;
            if (v65)
            {
              goto LABEL_102;
            }
          }
        }

LABEL_125:
        *(this + 14) = v28;
      }

      else if ((PB::Reader::skip(a2) & 1) == 0)
      {
LABEL_161:
        v123 = 0;
        return v123 & 1;
      }

LABEL_155:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_159;
      }
    }

    if (v21 != 2)
    {
      v85 = *(this + 2);
      v84 = *(this + 3);
      if (v85 >= v84)
      {
        v93 = *(this + 1);
        v94 = v85 - v93;
        v95 = (v85 - v93) >> 2;
        v96 = v95 + 1;
        if ((v95 + 1) >> 62)
        {
LABEL_163:
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v97 = v84 - v93;
        if (v97 >> 1 > v96)
        {
          v96 = v97 >> 1;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v98 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 8, v98);
        }

        v104 = (v85 - v93) >> 2;
        v105 = (4 * v95);
        v106 = (4 * v95 - 4 * v104);
        *v105 = 0;
        v86 = v105 + 1;
        memcpy(v106, v93, v94);
        v107 = *(this + 1);
        *(this + 1) = v106;
        *(this + 2) = v86;
        *(this + 3) = 0;
        if (v107)
        {
          operator delete(v107);
        }
      }

      else
      {
        *v85 = 0;
        v86 = v85 + 4;
      }

      *(this + 2) = v86;
      v109 = *(a2 + 1);
      v108 = *(a2 + 2);
      v110 = *a2;
      if (v109 > 0xFFFFFFFFFFFFFFF5 || v109 + 10 > v108)
      {
        v117 = 0;
        v118 = 0;
        v113 = 0;
        v16 = v108 >= v109;
        v119 = v108 - v109;
        if (!v16)
        {
          v119 = 0;
        }

        v120 = (v110 + v109);
        v121 = v109 + 1;
        while (1)
        {
          if (!v119)
          {
            LODWORD(v113) = 0;
            *(a2 + 24) = 1;
            goto LABEL_154;
          }

          v122 = *v120;
          *(a2 + 1) = v121;
          v113 |= (v122 & 0x7F) << v117;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          --v119;
          ++v120;
          ++v121;
          v65 = v118++ > 8;
          if (v65)
          {
LABEL_150:
            LODWORD(v113) = 0;
            goto LABEL_154;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v113) = 0;
        }
      }

      else
      {
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = (v110 + v109);
        v115 = v109 + 1;
        while (1)
        {
          *(a2 + 1) = v115;
          v116 = *v114++;
          v113 |= (v116 & 0x7F) << v111;
          if ((v116 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          ++v115;
          v65 = v112++ > 8;
          if (v65)
          {
            goto LABEL_150;
          }
        }
      }

LABEL_154:
      *(v86 - 1) = v113;
      goto LABEL_155;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_161;
    }

    if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
    {
      v48 = *(this + 2);
      while (1)
      {
        v49 = *(this + 3);
        if (v48 >= v49)
        {
          v50 = *(this + 1);
          v51 = v48 - v50;
          v52 = (v48 - v50) >> 2;
          v53 = v52 + 1;
          if ((v52 + 1) >> 62)
          {
            goto LABEL_163;
          }

          v54 = v49 - v50;
          if (v54 >> 1 > v53)
          {
            v53 = v54 >> 1;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v55 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 8, v55);
          }

          v56 = (v48 - v50) >> 2;
          v57 = (4 * v52);
          v58 = (4 * v52 - 4 * v56);
          *v57 = 0;
          v48 = (v57 + 1);
          memcpy(v58, v50, v51);
          v59 = *(this + 1);
          *(this + 1) = v58;
          *(this + 2) = v48;
          *(this + 3) = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          *v48 = 0;
          v48 += 4;
        }

        *(this + 2) = v48;
        v61 = *(a2 + 1);
        v60 = *(a2 + 2);
        v62 = *a2;
        v63 = 0;
        v64 = 0;
        v65 = v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60;
        if (v65)
        {
          break;
        }

        v71 = 0;
        v72 = (v62 + v61);
        v73 = v61 + 1;
        while (1)
        {
          v69 = v73;
          *(a2 + 1) = v73;
          v74 = *v72++;
          v71 |= (v74 & 0x7F) << v63;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          ++v73;
          v65 = v64++ > 8;
          if (v65)
          {
            goto LABEL_85;
          }
        }

LABEL_88:
        *(v48 - 1) = v71;
        if (v69 >= v60 || (*(a2 + 24) & 1) != 0)
        {
          goto LABEL_127;
        }
      }

      v71 = 0;
      v66 = v60 - v61;
      if (v60 < v61)
      {
        v66 = 0;
      }

      v67 = (v62 + v61);
      v68 = v61 + 1;
      while (v66)
      {
        v69 = v68;
        v70 = *v67;
        *(a2 + 1) = v69;
        v71 |= (v70 & 0x7F) << v63;
        if ((v70 & 0x80) == 0)
        {
          if (*(a2 + 24))
          {
            LODWORD(v71) = 0;
          }

          goto LABEL_88;
        }

        v63 += 7;
        --v66;
        ++v67;
        v68 = v69 + 1;
        v65 = v64++ > 8;
        if (v65)
        {
LABEL_85:
          LODWORD(v71) = 0;
          goto LABEL_88;
        }
      }

      *(a2 + 24) = 1;
      *(v48 - 1) = 0;
    }

LABEL_127:
    PB::Reader::recallMark();
    goto LABEL_155;
  }

LABEL_159:
  v123 = v4 ^ 1;
  return v123 & 1;
}

uint64_t binarysample::ElectrocardiogramLead::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 60))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v8 = v3[1];
  v7 = v3[2];
  while (v8 != v7)
  {
    v8 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

void **std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E73765E0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1919D7BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1919D8270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _HKQuantityComparisonResults(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    v8 = v5;
    if (v6)
    {
      if ([v5 compare:v6] == a3)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  v9 = v8;

  return v9;
}

uint64_t HKCompareUUIDBytes(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v2 = uuid_compare(a1, a2);
  if (v2 < 0)
  {
    return -1;
  }

  else
  {
    return v2 != 0;
  }
}

void sub_1919DA08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _HKEnumerateUUIDsInCollection(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v23 + 1) + 8 * v11);
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___HKEnumerateUUIDsInCollection_block_invoke;
      v16[3] = &unk_1E7379E90;
      v16[4] = v12;
      v17 = v7;
      v18 = &v19;
      if (HKWithAutoreleasePool(a2, v16))
      {
        v13 = *(v20 + 24);
        v3 |= v13;
        v14 = v13 ^ 1;
      }

      else
      {
        v3 = 0;
        v14 = 0;
      }

      _Block_object_dispose(&v19, 8);
      if ((v14 & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = 1;
  }

  return v3 & 1;
}

void sub_1919DA47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ValidatorErrorFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v9;
  v15 = *MEMORY[0x1E69E9840];
  v11 = v8;
  if ([v11 errorCount] <= 0x1F)
  {
    vsnprintf(__str, 0x1000uLL, v10, va);
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{__str, va}];
    v13 = [v11 errorMessage];
    [v13 appendString:v12];

    [v11 setErrorCount:{objc_msgSend(v11, "errorCount") + 1}];
  }
}

uint64_t SleepLibraryCore(uint64_t a1)
{
  if (!SleepLibraryCore_frameworkLibrary)
  {
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SleepLibraryCore_frameworkLibrary;
}

uint64_t getgetSleepFeatureAvailabilityProvidingSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr;
  v6 = getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr;
  if (!getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke;
    v2[3] = &unk_1E7378388;
    v2[4] = &v3;
    __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1919DBE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = SleepLibraryCore(&v5);
  if (!v2)
  {
    __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke_cold_1(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "getSleepFeatureAvailabilityProviding");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKSingletonDispatchQueueName(objc_class *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = NSStringFromClass(a1);
  v6 = v5;
  v7 = @".";
  v8 = &stru_1F05FF230;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v7 = &stru_1F05FF230;
  }

  v9 = [v3 stringWithFormat:@"com.apple.HealthKit.%@%@%@", v5, v7, v8];

  v10 = [v9 UTF8String];
  return v10;
}

dispatch_queue_t HKCreateConcurrentDispatchQueueWithQOSClass(void *a1, void *a2, dispatch_qos_class_t a3)
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, a3, 0);
  v8 = a2;
  v9 = a1;

  v10 = dispatch_queue_attr_make_with_overcommit();

  v11 = HKDispatchQueueName(v9, v8);
  v12 = dispatch_queue_create(v11, v10);

  return v12;
}

void HKDispatchAsyncOnGlobalConcurrentQueue(unsigned int a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(a1, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __HKDispatchAsyncOnGlobalConcurrentQueue_block_invoke;
  block[3] = &unk_1E7376A98;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __HKDispatchAsyncOnGlobalConcurrentQueue_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t HKNSOperatingSystemVersionCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return -1;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  v8 = __OFSUB__(v5, v6);
  v7 = v5 - v6 < 0;
  v9 = v5 > v6;
  if (v7 != v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t HKNSOperatingSystemVersionFromString@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3 && (v13 = v3, v3 = [v3 length], v4 = v13, v3))
  {
    v5 = [v13 componentsSeparatedByString:@"."];
    v6 = [v5 hk_map:&__block_literal_global_14];

    if ([v6 count] >= 2 && objc_msgSend(v6, "count") < 4)
    {
      a2[2] = 0;
      if ([v6 count])
      {
        v7 = [v6 objectAtIndexedSubscript:0];
        v8 = [v7 integerValue];
      }

      else
      {
        v8 = 0;
      }

      *a2 = v8;
      if ([v6 count] < 2)
      {
        v10 = 0;
      }

      else
      {
        v9 = [v6 objectAtIndexedSubscript:1];
        v10 = [v9 integerValue];
      }

      a2[1] = v10;
      if ([v6 count] <= 2)
      {
        a2[2] = 0;
      }

      else
      {
        v11 = [v6 objectAtIndexedSubscript:2];
        a2[2] = [v11 integerValue];
      }
    }

    else
    {
      a2[2] = 0;
      *a2 = HKNSOperatingSystemVersionUnknown;
    }

    v4 = v13;
  }

  else
  {
    a2[2] = 0;
    *a2 = HKNSOperatingSystemVersionUnknown;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

uint64_t __HKNSOperatingSystemVersionFromString_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

uint64_t HKApplicationSDKVersionToken(uint64_t a1, uint64_t a2)
{
  if (HKApplicationSDKVersionToken_onceToken != -1)
  {
    HKApplicationSDKVersionToken_cold_1();
  }

  return HKApplicationSDKVersionToken__sdkVersionToken;
}

uint64_t __HKApplicationSDKVersionToken_block_invoke()
{
  result = dyld_get_program_sdk_version_token();
  HKApplicationSDKVersionToken__sdkVersionToken = result;
  return result;
}

void HKWithUnfairLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    HKWithUnfairLock_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  HKWithUnfairLock_cold_2();
LABEL_3:
  os_unfair_lock_lock(a1);
  v3[2]();
  os_unfair_lock_unlock(a1);
}

id HKSafeObject(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Unexpected class for %@ (expected %@, found %@)", v8, a2, objc_opt_class()}];
    v9 = 0;
  }

  return v9;
}

uint64_t HKSafeDivision(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return a1 / a2;
  }

  else
  {
    return 0;
  }
}

double HKSeparateTimeIntervalComponents(int a1, uint64_t *a2, void *a3, double *a4, double result)
{
  v5 = floor(result / 60.0);
  v6 = round(result / 60.0);
  if (a1)
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v6 / 60;
  if (a2)
  {
    *a2 = v8;
  }

  if (a3)
  {
    *a3 = v7 - 60 * v8;
  }

  if (a4)
  {
    result = result - (60 * v7);
    *a4 = result;
  }

  return result;
}

uint64_t HKSeparateTimeIntervalComponentsWithDays(uint64_t result, uint64_t *a2, void *a3, void *a4, double *a5, double a6)
{
  v6 = floor(a6 / 60.0);
  v7 = round(a6 / 60.0);
  if (result)
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = v7 / 60;
  if (a4)
  {
    *a4 = v8 - 60 * v9;
  }

  if (a5)
  {
    *a5 = a6 - (60 * v8);
  }

  v10 = v8 / 1440;
  if (a3)
  {
    *a3 = v9 - 24 * v10;
  }

  if (a2)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t *HKSeparateTimeIntervalComponentsWithWeeks(uint64_t *result, uint64_t *a2, double a3)
{
  v3 = llround(a3 / 60.0);
  v4 = v3 / 60;
  v5 = v3 % 60;
  v6 = v3 / 1440;
  v7 = v4 - 24 * v6;
  if (v5 > 30)
  {
    ++v7;
  }

  if (v7 <= 12)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  if (a2)
  {
    *a2 = v8 % 7;
  }

  if (result)
  {
    *result = v8 / 7;
  }

  return result;
}

__CFString *HKDiagnosticStringFromUUID(void *a1)
{
  if (a1)
  {
    v1 = [a1 UUIDString];
    v2 = [v1 substringToIndex:6];
  }

  else
  {
    v2 = &stru_1F05FF230;
  }

  return v2;
}

__CFString *HKDiagnosticStringFromDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (HKDiagnosticStringFromDate_onceToken == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [HKDiagnosticStringFromDate_dateFormatter stringFromDate:v2];
      goto LABEL_6;
    }
  }

  else
  {
    HKDiagnosticStringFromDate_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = @"never";
LABEL_6:

  return v3;
}

uint64_t __HKDiagnosticStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = HKDiagnosticStringFromDate_dateFormatter;
  HKDiagnosticStringFromDate_dateFormatter = v0;

  v2 = HKDiagnosticStringFromDate_dateFormatter;
  v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [HKDiagnosticStringFromDate_dateFormatter setDateStyle:1];
  v4 = HKDiagnosticStringFromDate_dateFormatter;

  return [v4 setTimeStyle:3];
}

id HKDateFromDiagnosticString(void *a1)
{
  v1 = MEMORY[0x1E696AB78];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateStyle:1];
  [v3 setTimeStyle:3];
  v5 = [v3 dateFromString:v2];

  return v5;
}

__CFString *HKDiagnosticStringForDurationSinceDate(void *a1)
{
  if (a1)
  {
    v2 = a1;
    Current = CFAbsoluteTimeGetCurrent();
    [v2 timeIntervalSinceReferenceDate];
    v5 = v4;

    v6 = vabdd_f64(Current, v5);
    v7 = vcvtmd_s64_f64(v6 / 60.0);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ldh %02ldm %05.3fs", v7 / 60, v7 % 60, v6 - (60 * v7)];
  }

  else
  {
    v8 = @"undefined";
  }

  return v8;
}

__CFString *HKStringFromBool(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *HKStringFromQoS(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"Default";
    }

    if (a1 == 9)
    {
      return @"Background";
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return @"Utility";
      case 33:
        return @"UserInteractive";
      case 25:
        return @"UserInitiated";
    }
  }

  return @"Unknown";
}

__CFString *HKStringFromFitnessMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7379EE8[a1 - 1];
  }
}

id HKSharedResourcesDirectory(uint64_t a1)
{
  if (HKSharedResourcesDirectory_onceToken != -1)
  {
    HKSharedResourcesDirectory_cold_1();
  }

  v2 = HKSharedResourcesDirectory_sharedResourcesDirectory;

  return v2;
}

void __HKSharedResourcesDirectory_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v3 = [v1 objectForKeyedSubscript:@"SIMULATOR_SHARED_RESOURCES_DIRECTORY"];

  if (v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = @"/private/var/mobile/";
  }

  objc_storeStrong(&HKSharedResourcesDirectory_sharedResourcesDirectory, v2);
}

uint64_t HKCompareDoubles(double a1, double a2)
{
  v2 = a1 - a2;
  if (a1 - a2 < 0.0)
  {
    v2 = -(a1 - a2);
  }

  v3 = -1;
  if (a1 >= a2)
  {
    v3 = 1;
  }

  if (v2 >= 2.22044605e-16)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t HKCompareDoublesWithAccuracy(double a1, double a2, double a3)
{
  if (a3 <= 0.0)
  {
    HKCompareDoublesWithAccuracy_cold_1();
  }

  v6 = a1 - a2;
  if (a1 - a2 < 0.0)
  {
    v6 = -(a1 - a2);
  }

  v7 = -1;
  if (a1 >= a2)
  {
    v7 = 1;
  }

  if (v6 >= a3)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t HKCompareIntegers(uint64_t a1, uint64_t a2)
{
  v2 = -1;
  if (a1 >= a2)
  {
    v2 = 1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t HKIsUnitTesting(uint64_t a1, uint64_t a2)
{
  if (HKIsUnitTesting_onceToken != -1)
  {
    HKIsUnitTesting_cold_1();
  }

  return HKIsUnitTesting_hasXCTest & ~forceNotUnitTesting & 1;
}

Class __HKIsUnitTesting_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctest.isa);
  HKIsUnitTesting_hasXCTest = result != 0;
  return result;
}

uint64_t HKMinimumScoreForGAD7AssessmentRisk(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return 5 * a1 - 5;
  }
}

uint64_t HKMaximumScoreForGAD7AssessmentRisk(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return 4;
  }

  else
  {
    return qword_191D2F528[a1 - 2];
  }
}

__CFString *NSStringFromHKGAD7AssessmentAnswer(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7379F00[a1];
  }
}

__CFString *NSStringFromHKGAD7AssessmentRisk(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7379F20[a1 - 1];
  }
}

void sub_1919DEFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    if (a2 == 2)
    {
      v13 = objc_begin_catch(exception_object);
      _HKInitializeLogging(v13, v14);
      v17 = HKLogInfrastructure(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_opt_class();
        [(_HKZipArchiveExtractor *)v18 enumerateEntriesWithError:v13 block:va, v17];
      }

      v19 = MEMORY[0x1E696ABC0];
      objc_opt_class();
      [v19 hk_assignError:v12 code:100 format:@"Caught exception in %@: %@"];

      objc_end_catch();
      JUMPOUT(0x1919DEF30);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x1919DEF38);
  }

  _Unwind_Resume(exception_object);
}

void sub_1919DF1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1919DF4B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    _HKInitializeLogging(v2, v3);
    v6 = HKLogInfrastructure(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_HKZipArchiveEntry dataWithMaxSizeBytes:v2 error:v6];
    }

    [v2 raise];
    objc_end_catch();
    JUMPOUT(0x1919DF468);
  }

  _Unwind_Resume(exception_object);
}

void sub_1919DF690(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    _HKInitializeLogging(v2, v3);
    v6 = HKLogInfrastructure(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_HKZipArchiveEntry dataWithMaxSizeBytes:v2 error:v6];
    }

    [v2 raise];
    objc_end_catch();
    JUMPOUT(0x1919DF608);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromHKOnboardingCompletionCountryCodeProvenance(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v2 = @"Not Set";

        return v2;
      case 1:
        v2 = @"MCC";

        return v2;
      case 2:
        v2 = @"Regulatory Domain";

        return v2;
    }

LABEL_22:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", a1];

    return v2;
  }

  if (a1 > 101)
  {
    if (a1 == 102)
    {
      v2 = @"Demo Data";

      return v2;
    }

    if (a1 == 103)
    {
      v2 = @"Internal Regulatory Domain Override";

      return v2;
    }

    goto LABEL_22;
  }

  if (a1 != 3)
  {
    if (a1 == 101)
    {
      v2 = @"Internal MCC Override";

      return v2;
    }

    goto LABEL_22;
  }

  v2 = @"Copied from Other Completion";

  return v2;
}

void sub_1919E2DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1919E64E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id HDHealthStoreProviderServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6E78];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchAvailableIdentifiersWithCompletion_ argumentIndex:0 ofReply:1];
  v2 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_requestAuthorizationToNewIdentifierToShareTypes_readTypes_completion_ argumentIndex:0 ofReply:0];
  v3 = [v0 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_requestAuthorizationToNewIdentifierToShareTypes_readTypes_completion_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t HKCodableCondensedWorkoutCollectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableCondensedWorkout);
        [a1 addWorkouts:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableCondensedWorkoutReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HKWheelchairUseDisplayName(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      v2 = HKHealthKitFrameworkBundle();
      v3 = v2;
      v4 = @"WHEELCHAIR_NOT_SET";
      goto LABEL_7;
    case 2:
      v2 = HKHealthKitFrameworkBundle();
      v3 = v2;
      v4 = @"WHEELCHAIR_YES";
      goto LABEL_7;
    case 1:
      v2 = HKHealthKitFrameworkBundle();
      v3 = v2;
      v4 = @"WHEELCHAIR_NO";
LABEL_7:
      v5 = [v2 localizedStringForKey:v4 value:&stru_1F05FF230 table:@"Localizable"];

      goto LABEL_9;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a1];
LABEL_9:

  return v5;
}

uint64_t HKWorkoutSessionStateFromServerState(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 3;
  }

  else
  {
    return qword_191D2F550[a1 - 1];
  }
}

uint64_t HKWorkoutSessionServerStateFromSessionState(uint64_t a1)
{
  if ((a1 - 2) > 4)
  {
    return 1;
  }

  else
  {
    return qword_191D2F5D8[a1 - 2];
  }
}

__CFString *_HKWorkoutSessionServerStateToString(uint64_t a1)
{
  if ((a1 - 1) >= 0x11)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_1E737A3A0[a1 - 1];
  }

  return v2;
}

void sub_1919EC98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1919EE1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E737A970[a1 - 1];
  }
}

id HKAllFeatureIdentifiers(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"AFibBurden"];
  }

  v4 = +[_HKBehavior sharedBehavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    [v3 addObject:@"ExampleFeature"];
  }

  [v3 addObject:@"HearingAid"];
  [v3 addObject:@"HearingAidV2"];
  [v3 addObject:@"HearingProtection"];
  [v3 addObject:@"HearingTest"];
  [v3 addObject:@"MenstrualCycles"];
  [v3 addObject:@"MenstrualCyclesDeviationDetection"];
  [v3 addObject:@"MenstrualCyclesHeartRateInput"];
  [v3 addObject:@"MenstrualCyclesWristTemperatureInput"];
  [v3 addObject:@"OxygenSaturationRecording"];
  [v3 addObject:@"OxygenSaturationRecordingCompanionAnalysis"];
  [v3 addObject:@"CardioFitness"];
  v6 = +[_HKBehavior sharedBehavior];
  v7 = [v6 isAppleWatch];

  if ((v7 & 1) == 0)
  {
    [v3 addObject:@"GlucoseEnhancedCharting"];
  }

  v8 = +[_HKBehavior sharedBehavior];
  v9 = [v8 features];
  v10 = [v9 chutney];

  if ((v10 & 1) != 0 || a1)
  {
    [v3 addObject:@"BloodPressureJournal"];
  }

  [v3 addObject:@"ElectrocardiogramRecordingV1"];
  [v3 addObject:@"ElectrocardiogramV2Recording"];
  [v3 addObject:@"ElectrocardiogramRecording"];
  v11 = +[_HKBehavior sharedBehavior];
  v12 = [v11 features];
  v13 = [v12 chamomile];

  if ((v13 & 1) != 0 || a1)
  {
    [v3 addObject:@"StateOfMindLogging"];
    [v3 addObject:@"DepressionAndAnxietyAssessments"];
    [v3 addObject:@"PeriodicDepressionAndAnxietyAssessmentPrompts"];
    [v3 addObject:@"StateOfMindLoggingPatternEscalations"];
  }

  [v3 addObject:@"HighHeartRateNotifications"];
  v14 = +[_HKBehavior sharedBehavior];
  v15 = [v14 features];
  v16 = [v15 hermit];

  if ((v16 & 1) != 0 || a1)
  {
    [v3 addObject:@"HypertensionNotifications"];
  }

  [v3 addObject:@"IrregularRhythmNotifications"];
  [v3 addObject:@"IrregularRhythmNotificationsV1"];
  [v3 addObject:@"IrregularRhythmNotificationsV2"];
  [v3 addObject:@"LowHeartRateNotifications"];
  [v3 addObject:@"RespiratoryRateMeasurements"];
  [v3 addObject:@"SleepingWristTemperatureMeasurements"];
  [v3 addObject:@"SleepActions"];
  [v3 addObject:@"SleepApneaNotifications"];
  [v3 addObject:@"SleepCoaching"];
  [v3 addObject:@"SleepTracking"];
  [v3 addObject:@"SleepingSampleAnalysis"];
  [v3 addObject:@"WalkingSteadinessClassifications"];
  [v3 addObject:@"WalkingSteadinessNotifications"];
  [v3 addObject:@"HearingProtectionPPE"];

  return v3;
}

uint64_t HKFeatureIdentifierIsProvidedBySleepDaemon(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SleepCoaching"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"SleepTracking"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SleepActions"];
  }

  return v2;
}

__CFString *NSStringFromHKFeatureIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"CardioFitness"])
  {
    v2 = @"Cardio Fitness";
  }

  else if ([v1 isEqualToString:@"AFibBurden"])
  {
    v2 = @"AFib Burden";
  }

  else if ([v1 isEqualToString:@"DepressionAndAnxietyAssessments"])
  {
    v2 = @"Depression and Anxiety Assessments";
  }

  else if ([v1 isEqualToString:@"BloodPressureJournal"])
  {
    v2 = @"Chutney";
  }

  else if ([v1 isEqualToString:@"ElectrocardiogramRecordingV1"])
  {
    v2 = @"ECG 1.0";
  }

  else if ([v1 isEqualToString:@"ElectrocardiogramV2Recording"])
  {
    v2 = @"ECG 2.0";
  }

  else if ([v1 isEqualToString:@"ElectrocardiogramRecording"])
  {
    v2 = @"ECG (Combined)";
  }

  else if ([v1 isEqualToString:@"GlucoseEnhancedCharting"])
  {
    v2 = @"Glucose Experience";
  }

  else if ([v1 isEqualToString:@"HearingTest"])
  {
    v2 = @"Hearing Test";
  }

  else if ([v1 isEqualToString:@"HearingAid"])
  {
    v2 = @"Hearing Aid";
  }

  else if ([v1 isEqualToString:@"HearingAidV2"])
  {
    v2 = @"Hearing Aid v2";
  }

  else if ([v1 isEqualToString:@"HearingProtection"])
  {
    v2 = @"Hearing Protection";
  }

  else if ([v1 isEqualToString:@"HearingProtectionPPE"])
  {
    v2 = @"Hearing Protection PPE";
  }

  else if ([v1 isEqualToString:@"HighHeartRateNotifications"])
  {
    v2 = @"High Heart Rate Notifications";
  }

  else if ([v1 isEqualToString:@"HypertensionNotifications"])
  {
    v2 = @"Hermit";
  }

  else if ([v1 isEqualToString:@"IrregularRhythmNotificationsV1"])
  {
    v2 = @"IRN 1.0";
  }

  else if ([v1 isEqualToString:@"IrregularRhythmNotificationsV2"])
  {
    v2 = @"IRN 2.0";
  }

  else if ([v1 isEqualToString:@"IrregularRhythmNotifications"])
  {
    v2 = @"IRN (Combined)";
  }

  else if ([v1 isEqualToString:@"LowHeartRateNotifications"])
  {
    v2 = @"Low Heart Rate Notifications";
  }

  else if ([v1 isEqualToString:@"MenstrualCycles"])
  {
    v2 = @"Cycle Tracking";
  }

  else if ([v1 isEqualToString:@"MenstrualCyclesDeviationDetection"])
  {
    v2 = @"Cycle Tracking Deviations";
  }

  else if ([v1 isEqualToString:@"MenstrualCyclesHeartRateInput"])
  {
    v2 = @"Cycle Tracking Heart Rate Input";
  }

  else if ([v1 isEqualToString:@"MenstrualCyclesWristTemperatureInput"])
  {
    v2 = @"Cycle Tracking Wrist Temperature Input";
  }

  else if ([v1 isEqualToString:@"OxygenSaturationRecording"])
  {
    v2 = @"Blood Oxygen";
  }

  else if ([v1 isEqualToString:@"OxygenSaturationRecordingCompanionAnalysis"])
  {
    v2 = @"Blood Oxygen Companion Analysis";
  }

  else if ([v1 isEqualToString:@"PeriodicDepressionAndAnxietyAssessmentPrompts"])
  {
    v2 = @"Periodic Depression and Anxiety Assessments Prompts";
  }

  else if ([v1 isEqualToString:@"SleepingWristTemperatureMeasurements"])
  {
    v2 = @"Sleeping Wrist Temperature";
  }

  else if ([v1 isEqualToString:@"SleepApneaNotifications"])
  {
    v2 = @"Sleep Apnea Notifications";
  }

  else if ([v1 isEqualToString:@"SleepActions"])
  {
    v2 = @"Sleep Wind Down Shortcuts";
  }

  else if ([v1 isEqualToString:@"SleepCoaching"])
  {
    v2 = @"Sleep";
  }

  else if ([v1 isEqualToString:@"SleepTracking"])
  {
    v2 = @"Sleep on Watch Tracking";
  }

  else if ([v1 isEqualToString:@"SleepingSampleAnalysis"])
  {
    v2 = @"Sleeping Sample Analysis";
  }

  else if ([v1 isEqualToString:@"StateOfMindLogging"])
  {
    v2 = @"State of Mind Logging";
  }

  else if ([v1 isEqualToString:@"StateOfMindLoggingPatternEscalations"])
  {
    v2 = @"State of Mind Logging Pattern Escalations";
  }

  else if ([v1 isEqualToString:@"RespiratoryRateMeasurements"])
  {
    v2 = @"Respiratory Rate";
  }

  else if ([v1 isEqualToString:@"WalkingSteadinessClassifications"])
  {
    v2 = @"Walking Steadiness Classifications";
  }

  else if ([v1 isEqualToString:@"WalkingSteadinessNotifications"])
  {
    v2 = @"Walking Steadiness Notifications";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id HKAliasesByFeatureIdentifier()
{
  v3[37] = *MEMORY[0x1E69E9840];
  v2[0] = @"AFibBurden";
  v2[1] = @"CardioFitness";
  v3[0] = &unk_1F0686538;
  v3[1] = &unk_1F0686550;
  v2[2] = @"DepressionAndAnxietyAssessments";
  v2[3] = @"ElectrocardiogramRecording";
  v3[2] = &unk_1F0686568;
  v3[3] = &unk_1F0686580;
  v2[4] = @"ElectrocardiogramRecordingV1";
  v2[5] = @"ElectrocardiogramV2Recording";
  v3[4] = &unk_1F0686598;
  v3[5] = &unk_1F06865B0;
  v2[6] = @"ExampleFeature";
  v2[7] = @"GlucoseEnhancedCharting";
  v3[6] = &unk_1F06865C8;
  v3[7] = &unk_1F06865E0;
  v2[8] = @"HearingTest";
  v2[9] = @"HearingAid";
  v3[8] = &unk_1F06865F8;
  v3[9] = &unk_1F0686610;
  v2[10] = @"HearingAidV2";
  v2[11] = @"HearingProtection";
  v3[10] = &unk_1F0686628;
  v3[11] = &unk_1F0686640;
  v2[12] = @"HearingProtectionPPE";
  v2[13] = @"HighHeartRateNotifications";
  v3[12] = &unk_1F0686658;
  v3[13] = &unk_1F0686670;
  v2[14] = @"HypertensionNotifications";
  v2[15] = @"IrregularRhythmNotificationsV1";
  v3[14] = &unk_1F0686688;
  v3[15] = &unk_1F06866A0;
  v2[16] = @"IrregularRhythmNotificationsV2";
  v2[17] = @"IrregularRhythmNotifications";
  v3[16] = &unk_1F06866B8;
  v3[17] = &unk_1F06866D0;
  v2[18] = @"LowHeartRateNotifications";
  v2[19] = @"MenstrualCycles";
  v3[18] = &unk_1F06866E8;
  v3[19] = &unk_1F0686700;
  v2[20] = @"MenstrualCyclesDeviationDetection";
  v2[21] = @"MenstrualCyclesHeartRateInput";
  v3[20] = &unk_1F0686718;
  v3[21] = &unk_1F0686730;
  v2[22] = @"MenstrualCyclesWristTemperatureInput";
  v2[23] = @"SleepingWristTemperatureMeasurements";
  v3[22] = &unk_1F0686748;
  v3[23] = &unk_1F0686760;
  v2[24] = @"OxygenSaturationRecording";
  v2[25] = @"OxygenSaturationRecordingCompanionAnalysis";
  v3[24] = &unk_1F0686778;
  v3[25] = &unk_1F0686790;
  v2[26] = @"PeriodicDepressionAndAnxietyAssessmentPrompts";
  v2[27] = @"RespiratoryRateMeasurements";
  v3[26] = &unk_1F06867A8;
  v3[27] = &unk_1F06867C0;
  v2[28] = @"SleepApneaNotifications";
  v2[29] = @"SleepActions";
  v3[28] = &unk_1F06867D8;
  v3[29] = &unk_1F06867F0;
  v2[30] = @"SleepCoaching";
  v2[31] = @"SleepTracking";
  v3[30] = &unk_1F0686808;
  v3[31] = &unk_1F0686820;
  v2[32] = @"SleepingSampleAnalysis";
  v2[33] = @"StateOfMindLogging";
  v3[32] = &unk_1F0686838;
  v3[33] = &unk_1F0686850;
  v2[34] = @"StateOfMindLoggingPatternEscalations";
  v2[35] = @"WalkingSteadinessClassifications";
  v3[34] = &unk_1F0686868;
  v3[35] = &unk_1F0686880;
  v2[36] = @"WalkingSteadinessNotifications";
  v3[36] = &unk_1F0686898;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:37];

  return v0;
}

uint64_t HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()
{
  if (MGIsDeviceOfType())
  {
    return 1;
  }

  else
  {
    return MGGetBoolAnswer();
  }
}

id HKRegulatoryDomainEstimateOverrideISOCode()
{
  v16 = *MEMORY[0x1E69E9840];
  if (!+[_HKBehavior isAppleInternalInstall])
  {
    goto LABEL_9;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 stringForKey:@"HealthRegulatoryDomainISOCountryCodeOverride"];
  v2 = [v1 hk_copyNonEmptyString];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 stringForKey:@"MobileCountryCodeOverride"];
    v4 = [v6 hk_copyNonEmptyString];
  }

  if (v4)
  {
    _HKInitializeLogging(v7, v8);
    v11 = HKLogInfrastructure(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "[HKRegulatoryDomainEstimate] Returning overridden ISO %{public}@.", &v14, 0xCu);
    }

    v12 = [v4 uppercaseString];
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

void sub_1919F4C50(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKPrettyPrintedFeatureStatus(void *a1, void *a2, int a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v42 = a2;
  v6 = [MEMORY[0x1E696AD60] string];
  v7 = [v5 onboardingRecord];
  v8 = HKPrettyPrintedFeatureOnboardingRecord(v7);
  [v6 appendString:v8];

  v39 = v5;
  v9 = [v5 requirementsEvaluationByContext];
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v40 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v40)
  {
    v37 = v6;
    v38 = *v48;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        [v6 appendFormat:@"\n======== Evaluation for %@ ========\n", v13];
        v14 = [v39 requirementsEvaluationByContext];
        v15 = [v14 objectForKeyedSubscript:v13];

        v16 = [v15 requirementIdentifiersOrderedByPriority];
        v17 = [v16 count];

        if (v17)
        {
          v41 = i;
          v18 = [[HKTableFormatter alloc] initWithColumnTitles:0];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v19 = [v15 requirementIdentifiersOrderedByPriority];
          v20 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v44;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v44 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v43 + 1) + 8 * j);
                v25 = [v15 isRequirementSatisfiedWithIdentifier:v24];
                v26 = @" NO";
                if (v25)
                {
                  v26 = @"YES";
                }

                v27 = v26;
                v28 = [v42 overriddenSatisfactionOfRequirementWithIdentifier:v24];

                if (v28)
                {
                  v29 = @" (*)";
                }

                else
                {
                  v29 = &stru_1F05FF230;
                }

                v30 = [(__CFString *)v27 stringByAppendingString:v29];

                if (a3 && HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(v24) && (HKShowSensitiveLogItems() & 1) == 0)
                {

                  v30 = @"<sensitive>";
                }

                v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", v24];
                v51[0] = v31;
                v51[1] = v30;
                v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
                [(HKTableFormatter *)v18 appendRow:v32];
              }

              v21 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v21);
          }

          v33 = [(HKTableFormatter *)v18 formattedTable];
          v6 = v37;
          [v37 appendString:v33];

          i = v41;
        }

        else
        {
          [v6 appendString:@"<no requirements>\n"];
        }
      }

      v40 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v40);
  }

  v34 = [v6 copy];

  return v34;
}

uint64_t HKHearingLevelClassificationForSensitivity(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[HKUnit decibelHearingLevelUnit];
    [v1 doubleValueForUnit:v2];
    v4 = v3;

    v5 = &unk_1E737AA88;
    v6 = 5;
    do
    {
      v7 = (v5 + 32);
      if (v6-- == 0)
      {
        break;
      }

      v9 = *(v5 + 6);
      v5 += 32;
    }

    while (v4 >= v9);
    v10 = *v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id HKPureToneAverageFromPureToneSensitivityPoints(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count] == 4)
  {
    v2 = +[HKUnit decibelHearingLevelUnit];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValueForUnit:{v2, v13}];
          v7 = v7 + v9;
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
      v10 = v7 * 0.25;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [HKQuantity quantityWithUnit:v2 doubleValue:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id HKMinimumDecibelQuantityForHearingLevelClassification(uint64_t a1)
{
  if ((a1 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v2 = *(&_HKHearingLevelClassificationInformationItems + 4 * a1 + 1);
    v3 = +[HKUnit decibelHearingLevelUnit];
    v1 = [HKQuantity quantityWithUnit:v3 doubleValue:v2];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id HKMaximumDecibelQuantityForHearingLevelClassification(uint64_t a1)
{
  if ((a1 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v2 = *(&_HKHearingLevelClassificationInformationItems + 4 * a1 + 2);
    v3 = +[HKUnit decibelHearingLevelUnit];
    v1 = [HKQuantity quantityWithUnit:v3 doubleValue:v2];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id HKLocalizedStringForHearingLevelClassification(unint64_t a1)
{
  if (a1 <= 5)
  {
    v2 = *(&_HKHearingLevelClassificationInformationItems + 4 * a1 + 3);
    v3 = +[_HKBehavior sharedBehavior];
    v4 = [v3 features];
    if ([v4 yodel])
    {
      v5 = HKHealthKitFrameworkBundle();
      [v5 localizedStringForKey:v2 value:&stru_1F05FF230 table:@"Localizable-Yodel"];
    }

    else
    {
      v5 = HKHealthKitFrameworkBundle();
      [v5 localizedStringForKey:v2 value:&stru_1F05FF230 table:@"Localizable-DataTypes"];
    }
    v1 = ;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id HKLocalizedStringForUpperClampedValueAndUnit(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"AUDIOGRAM_UPPER_CLAMPED_VALUE_AND_UNIT %@ %@" value:&stru_1F05FF230 table:@"Localizable-Yodel"];
  v9 = [v6 initWithFormat:v8, v5, v4];

  return v9;
}

uint64_t HKCodableQuantitySeriesReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = objc_alloc_init(HKCodableQuantitySeriesDatum);
        [a1 addValues:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantitySeriesDatumReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

HKRegulatoryDomainManager *HKPreferredRegulatoryDomainProvider()
{
  v0 = objc_alloc_init(HKRegulatoryDomainManager);

  return v0;
}

__CFString *HKSleepDaySummaryQueryOptionsStringRepresentation(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"skipDaysWithoutSleepAnalysis"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"onlySleepAnalysis"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 addObject:@"surfaceSleepStages"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  [v3 addObject:@"aggregateWeekly"];
  if (a1 < 0)
  {
LABEL_6:
    [v3 addObject:@"surfacePeriodTimezones"];
  }

LABEL_7:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"|"];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

uint64_t HKMakeSleepDaySummaryQueryOptionsFromStringRepresentation(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsSeparatedByString:@"|"];
  if ([v1 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = v1;
    obj = v1;
    v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = *v12;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v4 |= [v7 isEqualToString:{@"skipDaysWithoutSleepAnalysis", v9}];
          if ([v7 isEqualToString:@"onlySleepAnalysis"])
          {
            v4 |= 2uLL;
          }

          if ([v7 isEqualToString:@"surfaceSleepStages"])
          {
            v4 |= 4uLL;
          }

          if ([v7 isEqualToString:@"aggregateWeekly"])
          {
            v4 |= 8uLL;
          }

          if ([v7 isEqualToString:@"surfacePeriodTimezones"])
          {
            v4 |= 0x80uLL;
          }
        }

        v3 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    v1 = v9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_191A04144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191A045E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191A04D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_191A05364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HKStringFromUserDomainConceptStoreMethod(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E737AE40[a1 - 1];
  }

  return v2;
}

void sub_191A062B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HKStringFromUserDomainConceptStoreChangeType(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E737AE58[a1 - 1];
  }

  return v2;
}

uint64_t _IsQuantityKeyPath(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"min"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"max"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"most_recent"];
  }

  return v2;
}

uint64_t _IsDateKeyPath(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"most_recent_start_date"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"most_recent_end_date"];
  }

  return v2;
}

uint64_t _HasValidAggregationStyle(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 aggregationStyle];
  if ((v4 - 1) >= 3)
  {
    if (!v4)
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a2 code:3 format:{@"%@ has invalid aggregation style %ld", v3, objc_msgSend(v3, "aggregationStyle")}];
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id _HKAllObjectTypes(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v270[267] = *MEMORY[0x1E69E9840];
  v269 = [[HKQuantityType alloc] _initWithCode:0];
  v270[0] = v269;
  v268 = [[HKQuantityType alloc] _initWithCode:1];
  v270[1] = v268;
  v267 = [[HKQuantityType alloc] _initWithCode:2];
  v270[2] = v267;
  v266 = [[HKQuantityType alloc] _initWithCode:3];
  v270[3] = v266;
  v265 = [[HKQuantityType alloc] _initWithCode:4];
  v270[4] = v265;
  v264 = [[HKQuantityType alloc] _initWithCode:5];
  v270[5] = v264;
  v263 = [[HKQuantityType alloc] _initWithCode:7];
  v270[6] = v263;
  v262 = [[HKQuantityType alloc] _initWithCode:8];
  v270[7] = v262;
  v261 = [[HKQuantityType alloc] _initWithCode:9];
  v270[8] = v261;
  v260 = [[HKQuantityType alloc] _initWithCode:10];
  v270[9] = v260;
  v259 = [[HKQuantityType alloc] _initWithCode:12];
  v270[10] = v259;
  v258 = [[HKQuantityType alloc] _initWithCode:13];
  v270[11] = v258;
  v257 = [[HKQuantityType alloc] _initWithCode:14];
  v270[12] = v257;
  v256 = [[HKQuantityType alloc] _initWithCode:15];
  v270[13] = v256;
  v255 = [[HKQuantityType alloc] _initWithCode:16];
  v270[14] = v255;
  v254 = [[HKQuantityType alloc] _initWithCode:17];
  v270[15] = v254;
  v253 = [[HKQuantityType alloc] _initWithCode:18];
  v270[16] = v253;
  v252 = [[HKQuantityType alloc] _initWithCode:19];
  v270[17] = v252;
  v251 = [[HKQuantityType alloc] _initWithCode:20];
  v270[18] = v251;
  v250 = [[HKQuantityType alloc] _initWithCode:21];
  v270[19] = v250;
  v249 = [[HKQuantityType alloc] _initWithCode:22];
  v270[20] = v249;
  v248 = [[HKQuantityType alloc] _initWithCode:23];
  v270[21] = v248;
  v247 = [[HKQuantityType alloc] _initWithCode:24];
  v270[22] = v247;
  v246 = [[HKQuantityType alloc] _initWithCode:25];
  v270[23] = v246;
  v245 = [[HKQuantityType alloc] _initWithCode:26];
  v270[24] = v245;
  v244 = [[HKQuantityType alloc] _initWithCode:27];
  v270[25] = v244;
  v243 = [[HKQuantityType alloc] _initWithCode:28];
  v270[26] = v243;
  v242 = [[HKQuantityType alloc] _initWithCode:29];
  v270[27] = v242;
  v241 = [[HKQuantityType alloc] _initWithCode:30];
  v270[28] = v241;
  v240 = [[HKQuantityType alloc] _initWithCode:31];
  v270[29] = v240;
  v239 = [[HKQuantityType alloc] _initWithCode:32];
  v270[30] = v239;
  v238 = [[HKQuantityType alloc] _initWithCode:33];
  v270[31] = v238;
  v237 = [[HKQuantityType alloc] _initWithCode:34];
  v270[32] = v237;
  v236 = [[HKQuantityType alloc] _initWithCode:35];
  v270[33] = v236;
  v235 = [[HKQuantityType alloc] _initWithCode:36];
  v270[34] = v235;
  v234 = [[HKQuantityType alloc] _initWithCode:37];
  v270[35] = v234;
  v233 = [[HKQuantityType alloc] _initWithCode:38];
  v270[36] = v233;
  v232 = [[HKQuantityType alloc] _initWithCode:39];
  v270[37] = v232;
  v231 = [[HKQuantityType alloc] _initWithCode:40];
  v270[38] = v231;
  v230 = [[HKQuantityType alloc] _initWithCode:41];
  v270[39] = v230;
  v229 = [[HKQuantityType alloc] _initWithCode:42];
  v270[40] = v229;
  v228 = [[HKQuantityType alloc] _initWithCode:43];
  v270[41] = v228;
  v227 = [[HKQuantityType alloc] _initWithCode:44];
  v270[42] = v227;
  v226 = [[HKQuantityType alloc] _initWithCode:45];
  v270[43] = v226;
  v225 = [[HKQuantityType alloc] _initWithCode:46];
  v270[44] = v225;
  v224 = [[HKQuantityType alloc] _initWithCode:47];
  v270[45] = v224;
  v223 = [[HKQuantityType alloc] _initWithCode:48];
  v270[46] = v223;
  v222 = [[HKQuantityType alloc] _initWithCode:49];
  v270[47] = v222;
  v221 = [[HKQuantityType alloc] _initWithCode:50];
  v270[48] = v221;
  v220 = [[HKQuantityType alloc] _initWithCode:51];
  v270[49] = v220;
  v219 = [[HKQuantityType alloc] _initWithCode:52];
  v270[50] = v219;
  v218 = [[HKQuantityType alloc] _initWithCode:53];
  v270[51] = v218;
  v217 = [[HKQuantityType alloc] _initWithCode:54];
  v270[52] = v217;
  v216 = [[HKQuantityType alloc] _initWithCode:55];
  v270[53] = v216;
  v215 = [[HKQuantityType alloc] _initWithCode:56];
  v270[54] = v215;
  v214 = [[HKQuantityType alloc] _initWithCode:57];
  v270[55] = v214;
  v213 = [[HKQuantityType alloc] _initWithCode:58];
  v270[56] = v213;
  v212 = [[HKQuantityType alloc] _initWithCode:60];
  v270[57] = v212;
  v211 = [[HKQuantityType alloc] _initWithCode:61];
  v270[58] = v211;
  v210 = [[HKQuantityType alloc] _initWithCode:62];
  v270[59] = v210;
  v209 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:63];
  v270[60] = v209;
  v208 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:64];
  v270[61] = v208;
  v207 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:65];
  v270[62] = v207;
  v206 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:66];
  v270[63] = v206;
  v205 = [[HKQuantityType alloc] _initWithCode:67];
  v270[64] = v205;
  v204 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:68];
  v270[65] = v204;
  v203 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:70];
  v270[66] = v203;
  v202 = [[HKQuantityType alloc] _initWithCode:71];
  v270[67] = v202;
  v201 = [[HKQuantityType alloc] _initWithCode:72];
  v270[68] = v201;
  v200 = [[HKQuantityType alloc] _initWithCode:73];
  v270[69] = v200;
  v199 = [[HKQuantityType alloc] _initWithCode:75];
  v270[70] = v199;
  v198 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:76];
  v270[71] = v198;
  v197 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:77];
  v270[72] = v197;
  v196 = [[HKQuantityType alloc] _initWithCode:78];
  v270[73] = v196;
  v195 = [(HKObjectType *)[HKWorkoutType alloc] _initWithCode:79];
  v270[74] = v195;
  v194 = [(HKObjectType *)[HKCorrelationType alloc] _initWithCode:80];
  v270[75] = v194;
  v193 = [(HKObjectType *)[HKCorrelationType alloc] _initWithCode:81];
  v270[76] = v193;
  v192 = [[HKQuantityType alloc] _initWithCode:83];
  v270[77] = v192;
  v191 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:84];
  v270[78] = v191;
  v190 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:85];
  v270[79] = v190;
  v189 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:86];
  v270[80] = v189;
  v188 = [[HKQuantityType alloc] _initWithCode:87];
  v270[81] = v188;
  v187 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:88];
  v270[82] = v187;
  v186 = [[HKQuantityType alloc] _initWithCode:89];
  v270[83] = v186;
  v185 = [[HKQuantityType alloc] _initWithCode:90];
  v270[84] = v185;
  v184 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:91];
  v270[85] = v184;
  v183 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:92];
  v270[86] = v183;
  v182 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:95];
  v270[87] = v182;
  v181 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:96];
  v270[88] = v181;
  v180 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:97];
  v270[89] = v180;
  v179 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:98];
  v270[90] = v179;
  v178 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:99];
  v270[91] = v178;
  v177 = [(HKObjectType *)[HKActivitySummaryType alloc] _initWithCode:100];
  v270[92] = v177;
  v176 = [[HKQuantityType alloc] _initWithCode:101];
  v270[93] = v176;
  v175 = [(HKObjectType *)[HKSeriesType alloc] _initWithCode:102];
  v270[94] = v175;
  v174 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:103];
  v270[95] = v174;
  v173 = [[HKQuantityType alloc] _initWithCode:104];
  v270[96] = v173;
  v172 = [[HKQuantityType alloc] _initWithCode:105];
  v270[97] = v172;
  v171 = [(HKObjectType *)[HKDocumentType alloc] _initWithCode:107];
  v270[98] = v171;
  v170 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:108];
  v270[99] = v170;
  v169 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:109];
  v270[100] = v169;
  v168 = [[HKQuantityType alloc] _initWithCode:110];
  v270[101] = v168;
  v167 = [[HKQuantityType alloc] _initWithCode:111];
  v270[102] = v167;
  v166 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:112];
  v270[103] = v166;
  v165 = [[HKQuantityType alloc] _initWithCode:113];
  v270[104] = v165;
  v164 = [[HKQuantityType alloc] _initWithCode:114];
  v270[105] = v164;
  v163 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:116];
  v270[106] = v163;
  v162 = [[HKQuantityType alloc] _initWithCode:118];
  v270[107] = v162;
  v161 = [(HKObjectType *)[HKSeriesType alloc] _initWithCode:119];
  v270[108] = v161;
  v160 = [[HKQuantityType alloc] _initWithCode:124];
  v270[109] = v160;
  v159 = [[HKQuantityType alloc] _initWithCode:125];
  v270[110] = v159;
  v158 = [(HKObjectType *)[HKMedicationOrderType alloc] _initWithCode:126];
  v270[111] = v158;
  v157 = [(HKObjectType *)[HKMedicationDispenseRecordType alloc] _initWithCode:127];
  v270[112] = v157;
  v156 = [(HKObjectType *)[HKMedicationRecordType alloc] _initWithCode:128];
  v270[113] = v156;
  v155 = [(HKObjectType *)[HKDiagnosticTestResultType alloc] _initWithCode:129];
  v270[114] = v155;
  v154 = [(HKObjectType *)[HKDiagnosticTestReportType alloc] _initWithCode:130];
  v270[115] = v154;
  v153 = [(HKObjectType *)[HKVaccinationRecordType alloc] _initWithCode:131];
  v270[116] = v153;
  v152 = [(HKObjectType *)[HKConditionRecordType alloc] _initWithCode:132];
  v270[117] = v152;
  v151 = [(HKObjectType *)[HKAllergyRecordType alloc] _initWithCode:133];
  v270[118] = v151;
  v150 = [(HKObjectType *)[HKProcedureRecordType alloc] _initWithCode:134];
  v270[119] = v150;
  v149 = [[HKQuantityType alloc] _initWithCode:137];
  v270[120] = v149;
  v148 = [[HKQuantityType alloc] _initWithCode:138];
  v270[121] = v148;
  v147 = [[HKQuantityType alloc] _initWithCode:139];
  v270[122] = v147;
  v146 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:140];
  v270[123] = v146;
  v145 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:141];
  v270[124] = v145;
  v144 = [(HKObjectType *)[HKAccountOwnerType alloc] _initWithCode:142];
  v270[125] = v144;
  v143 = [(HKObjectType *)[HKUnknownRecordType alloc] _initWithCode:143];
  v270[126] = v143;
  v142 = [(HKObjectType *)[HKElectrocardiogramType alloc] _initWithCode:144];
  v270[127] = v142;
  v141 = [(HKObjectType *)[HKAudiogramSampleType alloc] _initWithCode:145];
  v270[128] = v141;
  v140 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:147];
  v270[129] = v140;
  v139 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:149];
  v270[130] = v139;
  v138 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:150];
  v270[131] = v138;
  v137 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:151];
  v270[132] = v137;
  v136 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:152];
  v270[133] = v136;
  v135 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:153];
  v270[134] = v135;
  v134 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:154];
  v270[135] = v134;
  v133 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:155];
  v270[136] = v133;
  v132 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:156];
  v270[137] = v132;
  v131 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:157];
  v270[138] = v131;
  v130 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:158];
  v270[139] = v130;
  v129 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:159];
  v270[140] = v129;
  v128 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:160];
  v270[141] = v128;
  v127 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:161];
  v270[142] = v127;
  v126 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:162];
  v270[143] = v126;
  v125 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:163];
  v270[144] = v125;
  v124 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:164];
  v270[145] = v124;
  v123 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:165];
  v270[146] = v123;
  v122 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:166];
  v270[147] = v122;
  v121 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:167];
  v270[148] = v121;
  v120 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:168];
  v270[149] = v120;
  v119 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:169];
  v270[150] = v119;
  v118 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:170];
  v270[151] = v118;
  v117 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:171];
  v270[152] = v117;
  v116 = [[HKQuantityType alloc] _initWithCode:172];
  v270[153] = v116;
  v115 = [[HKQuantityType alloc] _initWithCode:173];
  v270[154] = v115;
  v114 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:175];
  v270[155] = v114;
  v113 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:176];
  v270[156] = v113;
  v112 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:177];
  v270[157] = v112;
  v111 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:178];
  v270[158] = v111;
  v110 = [[HKQuantityType alloc] _initWithCode:179];
  v270[159] = v110;
  v109 = [[HKQuantityType alloc] _initWithCode:180];
  v270[160] = v109;
  v108 = [[HKQuantityType alloc] _initWithCode:182];
  v270[161] = v108;
  v107 = [[HKQuantityType alloc] _initWithCode:183];
  v270[162] = v107;
  v106 = [[HKQuantityType alloc] _initWithCode:186];
  v270[163] = v106;
  v105 = [[HKQuantityType alloc] _initWithCode:187];
  v270[164] = v105;
  v104 = [[HKQuantityType alloc] _initWithCode:188];
  v270[165] = v104;
  v103 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:189];
  v270[166] = v103;
  v102 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:190];
  v270[167] = v102;
  v101 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:191];
  v270[168] = v101;
  v100 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:192];
  v270[169] = v100;
  v99 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:193];
  v270[170] = v99;
  v98 = [[HKQuantityType alloc] _initWithCode:194];
  v270[171] = v98;
  v97 = [[HKQuantityType alloc] _initWithCode:195];
  v270[172] = v97;
  v96 = [[HKQuantityType alloc] _initWithCode:196];
  v270[173] = v96;
  v95 = [[HKQuantityType alloc] _initWithCode:197];
  v270[174] = v95;
  v94 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:198];
  v270[175] = v94;
  v93 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:199];
  v270[176] = v93;
  v92 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:201];
  v270[177] = v92;
  v91 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:202];
  v270[178] = v91;
  v90 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:203];
  v270[179] = v90;
  v89 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:204];
  v270[180] = v89;
  v88 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:205];
  v270[181] = v88;
  v87 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:206];
  v270[182] = v87;
  v86 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:207];
  v270[183] = v86;
  v85 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:211];
  v270[184] = v85;
  v84 = [(HKObjectType *)[HKCoverageRecordType alloc] _initWithCode:216];
  v270[185] = v84;
  v83 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:217];
  v270[186] = v83;
  v82 = [(HKObjectType *)[HKCharacteristicType alloc] _initWithCode:218];
  v270[187] = v82;
  v81 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:220];
  v270[188] = v81;
  v80 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:221];
  v270[189] = v80;
  v79 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:222];
  v270[190] = v79;
  v78 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:223];
  v270[191] = v78;
  v77 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:224];
  v270[192] = v77;
  v76 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:225];
  v270[193] = v76;
  v75 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:226];
  v270[194] = v75;
  v74 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:229];
  v270[195] = v74;
  v73 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:230];
  v270[196] = v73;
  v72 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:231];
  v270[197] = v72;
  v71 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:232];
  v270[198] = v71;
  v70 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:233];
  v270[199] = v70;
  v69 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:234];
  v270[200] = v69;
  v68 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:235];
  v270[201] = v68;
  v67 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:236];
  v270[202] = v67;
  v66 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:237];
  v270[203] = v66;
  v65 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:240];
  v270[204] = v65;
  v64 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:241];
  v270[205] = v64;
  v63 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:242];
  v270[206] = v63;
  v62 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:243];
  v270[207] = v62;
  v61 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:244];
  v270[208] = v61;
  v60 = [[HKQuantityType alloc] _initWithCode:248];
  v270[209] = v60;
  v59 = [[HKQuantityType alloc] _initWithCode:249];
  v270[210] = v59;
  v58 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:250];
  v270[211] = v58;
  v57 = [[HKQuantityType alloc] _initWithCode:251];
  v270[212] = v57;
  v56 = [(HKObjectType *)[HKSignedClinicalDataRecordType alloc] _initWithCode:252];
  v270[213] = v56;
  v55 = [(HKObjectType *)[HKVerifiableClinicalRecordType alloc] _initWithCode:253];
  v270[214] = v55;
  v54 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:254];
  v270[215] = v54;
  v53 = [[HKQuantityType alloc] _initWithCode:256];
  v270[216] = v53;
  v52 = [(HKObjectType *)[HKPrescriptionType alloc] _initWithCode:257];
  v270[217] = v52;
  v51 = [[HKQuantityType alloc] _initWithCode:258];
  v270[218] = v51;
  v50 = [[HKQuantityType alloc] _initWithCode:259];
  v270[219] = v50;
  v49 = [[HKQuantityType alloc] _initWithCode:260];
  v270[220] = v49;
  v48 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:262];
  v270[221] = v48;
  v47 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:263];
  v270[222] = v47;
  v46 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:264];
  v270[223] = v46;
  v45 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:265];
  v270[224] = v45;
  v44 = [[HKQuantityType alloc] _initWithCode:266];
  v270[225] = v44;
  v43 = [(HKObjectType *)[HKClinicalNoteRecordType alloc] _initWithCode:267];
  v270[226] = v43;
  v42 = [(HKObjectType *)[HKClinicalType alloc] _initWithCode:268];
  v270[227] = v42;
  v41 = [[HKQuantityType alloc] _initWithCode:269];
  v270[228] = v41;
  v40 = [[HKQuantityType alloc] _initWithCode:270];
  v270[229] = v40;
  v39 = [[HKQuantityType alloc] _initWithCode:272];
  v270[230] = v39;
  v38 = [(HKObjectType *)[HKMedicationDoseEventType alloc] _initWithCode:273];
  v270[231] = v38;
  v37 = [[HKQuantityType alloc] _initWithCode:274];
  v270[232] = v37;
  v36 = [[HKQuantityType alloc] _initWithCode:275];
  v270[233] = v36;
  v35 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:276];
  v270[234] = v35;
  v34 = [[HKQuantityType alloc] _initWithCode:277];
  v270[235] = v34;
  v33 = [[HKQuantityType alloc] _initWithCode:279];
  v270[236] = v33;
  v32 = [[HKQuantityType alloc] _initWithCode:280];
  v270[237] = v32;
  v31 = [[HKQuantityType alloc] _initWithCode:281];
  v270[238] = v31;
  v30 = [[HKQuantityType alloc] _initWithCode:282];
  v270[239] = v30;
  v29 = [[HKQuantityType alloc] _initWithCode:283];
  v270[240] = v29;
  v28 = [(HKObjectType *)[HKStateOfMindType alloc] _initWithCode:284];
  v270[241] = v28;
  v27 = [[HKQuantityType alloc] _initWithCode:285];
  v270[242] = v27;
  v26 = [[HKQuantityType alloc] _initWithCode:286];
  v270[243] = v26;
  v25 = [(HKObjectType *)[HKScoredAssessmentType alloc] _initWithCode:287];
  v270[244] = v25;
  v24 = [(HKObjectType *)[HKScoredAssessmentType alloc] _initWithCode:288];
  v270[245] = v24;
  v23 = [(HKObjectType *)[HKWorkoutZonesType alloc] _initWithCode:289];
  v270[246] = v23;
  v22 = [(HKObjectType *)[HKWorkoutZonesType alloc] _initWithCode:290];
  v270[247] = v22;
  v21 = [(HKObjectType *)[HKUserTrackedConceptType alloc] _initWithCode:291];
  v270[248] = v21;
  v20 = [(HKObjectType *)[HKUnprocessedBloodOxygenDataType alloc] _initWithCode:292];
  v270[249] = v20;
  v19 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:293];
  v270[250] = v19;
  v18 = [[HKQuantityType alloc] _initWithCode:294];
  v270[251] = v18;
  v17 = [[HKQuantityType alloc] _initWithCode:295];
  v270[252] = v17;
  v16 = [[HKQuantityType alloc] _initWithCode:296];
  v270[253] = v16;
  v15 = [[HKQuantityType alloc] _initWithCode:297];
  v270[254] = v15;
  v14 = [[HKQuantityType alloc] _initWithCode:298];
  v270[255] = v14;
  v13 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:299];
  v270[256] = v13;
  v1 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:300];
  v270[257] = v1;
  v2 = [[HKQuantityType alloc] _initWithCode:301];
  v270[258] = v2;
  v3 = [[HKQuantityType alloc] _initWithCode:302];
  v270[259] = v3;
  v4 = [[HKQuantityType alloc] _initWithCode:303];
  v270[260] = v4;
  v5 = [[HKQuantityType alloc] _initWithCode:304];
  v270[261] = v5;
  v6 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:305];
  v270[262] = v6;
  v7 = [(HKObjectType *)[HKUserAnnotatedMedicationType alloc] _initWithCode:306];
  v270[263] = v7;
  v8 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:313];
  v270[264] = v8;
  v9 = [(HKObjectType *)[HKCategoryType alloc] _initWithCode:314];
  v270[265] = v9;
  v10 = [(HKObjectType *)[HKSampleType alloc] _initWithCode:341];
  v270[266] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v270 count:267];

  return v12;
}