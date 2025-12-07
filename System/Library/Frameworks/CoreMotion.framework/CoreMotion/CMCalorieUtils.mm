@interface CMCalorieUtils
+ (BOOL)isAvailable;
+ (CLBodyMetrics)CLBodyMetricsFromCMCalorieUserInfo:(SEL)info errorPtr:(id)ptr;
+ (id)lookupCalorieDataForCMWorkoutType:(int64_t)type duration:(double)duration error:(id *)error;
+ (id)lookupCalorieDataForCMWorkoutType:(int64_t)type duration:(double)duration userInfo:(id)info error:(id *)error;
+ (id)lookupCalorieDataForWorkoutConfiguration:(id)configuration duration:(double)duration distance:(id)distance userInfo:(id)info errorPtr:(id *)ptr;
@end

@implementation CMCalorieUtils

+ (BOOL)isAvailable
{
  sub_19B421798();
  if (sub_19B43B6EC())
  {
    return 1;
  }

  sub_19B421798();
  if (sub_19B4426E4())
  {
    return 1;
  }

  sub_19B421798();
  return 0;
}

+ (CLBodyMetrics)CLBodyMetricsFromCMCalorieUserInfo:(SEL)info errorPtr:(id)ptr
{
  *&retstr->var0 = xmmword_19B7BDCA4;
  *&retstr->var4 = unk_19B7BDCB4;
  *&retstr->var8 = xmmword_19B7BDCC4;
  *&retstr->var11 = *(&xmmword_19B7BDCC4 + 12);
  if (objc_msgSend_gender(ptr, info, ptr) && objc_msgSend_gender(ptr, v8, v9) != 1)
  {
    if (!a5)
    {
      objc_msgSend_height(ptr, v8, v9);
      if (v30 > 0.0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"CMErrorDomain", 107, 0);
  }

  else
  {
    retstr->var0 = objc_msgSend_gender(ptr, v8, v9);
  }

  objc_msgSend_height(ptr, v10, v11);
  if (v14 > 0.0)
  {
LABEL_7:
    objc_msgSend_height(ptr, v12, v13);
    *&v15 = v15;
    retstr->var15 = 1;
    retstr->var2 = *&v15;
    goto LABEL_10;
  }

  if (a5)
  {
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"CMErrorDomain", 107, 0);
  }

LABEL_10:
  objc_msgSend_weight(ptr, v12, v13);
  if (v18 <= 0.0)
  {
    if (!a5)
    {
      objc_msgSend_age(ptr, v16, v17);
      if (v26 <= 0.0)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v16, @"CMErrorDomain", 107, 0);
  }

  else
  {
    objc_msgSend_weight(ptr, v16, v17);
    *&v21 = v21;
    retstr->var16 = 1;
    retstr->var3 = *&v21;
  }

  objc_msgSend_age(ptr, v19, v20);
  if (v24 > 0.0)
  {
LABEL_15:
    objc_msgSend_age(ptr, v22, v23);
    *&v25 = v25;
    retstr->var14 = 1;
    retstr->var5 = *&v25;
    goto LABEL_19;
  }

  if (a5)
  {
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v22, @"CMErrorDomain", 107, 0);
  }

LABEL_19:
  if (objc_msgSend_condition(ptr, v22, v23) < 0 || objc_msgSend_condition(ptr, v27, v28) > 6)
  {
    if (a5)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v27, @"CMErrorDomain", 107, 0);
    }
  }

  else
  {
    retstr->var10 = objc_msgSend_condition(ptr, v27, v28);
  }

  result = objc_msgSend_betaBlockerUse(ptr, v27, v28);
  if (result)
  {
    retstr->var12 = 1;
  }

  return result;
}

+ (id)lookupCalorieDataForCMWorkoutType:(int64_t)type duration:(double)duration userInfo:(id)info error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  if (!info)
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CMCalorieUtils.mm", 82, @"Invalid parameter not satisfying: %@", @"userInfo");
  }

  if (duration <= 0.0)
  {
    if (error)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
    }

    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    v14 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      durationCopy = duration;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Workout calorie lookup, duration must be positive, %f", buf, 0xCu);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    LODWORD(v39[0]) = 134217984;
    *(v39 + 4) = duration;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Workout calorie lookup, duration must be positive, %f");
    goto LABEL_27;
  }

  memset(v39, 0, 60);
  objc_msgSend_CLBodyMetricsFromCMCalorieUserInfo_errorPtr_(CMCalorieUtils, a2, info, error);
  if (*error)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    v11 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      durationCopy = *&info;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Workout calorie lookup, invalid userInfo, %@", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    *v36 = 138412290;
    *&v36[4] = info;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Workout calorie lookup, invalid userInfo, %@", v36, 12, *v36, *&v36[8]);
LABEL_27:
    v16 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMCalorieUtils lookupCalorieDataForCMWorkoutType:duration:userInfo:error:]", "CoreLocation: %s\n", v13);
    if (v16 != buf)
    {
      free(v16);
    }

    return 0;
  }

  v19 = objc_msgSend_CLMotionActivityTypeFromCMWorkoutType_(CMWorkout, v10, type);
  v20 = sub_19B71A29C(v19);
  v21 = sub_19B73FF78(v39, (v19 < 0xC) & (0xC07u >> v19));
  v22 = (v20 * *(v39 + 3)) * duration / 3600.0;
  v23 = (v21 * *(v39 + 3)) * duration / 3600.0;
  v24 = [CMCalorieData alloc];
  v17 = objc_msgSend_initWithWorkoutType_duration_mets_basalMets_totalCalories_basalCalories_(v24, v25, type, duration, v20, v21, v22, v23);
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
  }

  v26 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *error;
    *buf = 138412802;
    durationCopy = *&v17;
    v42 = 2112;
    infoCopy = info;
    v44 = 2112;
    v45 = v27;
    _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "Workout calorie lookup, %@, %@, %@", buf, 0x20u);
  }

  v28 = sub_19B420058();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    v29 = *error;
    *v36 = 138412802;
    *&v36[4] = v17;
    *&v36[12] = 2112;
    *&v36[14] = info;
    v37 = 2112;
    v38 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "Workout calorie lookup, %@, %@, %@", v36, 32);
    v31 = v30;
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMCalorieUtils lookupCalorieDataForCMWorkoutType:duration:userInfo:error:]", "CoreLocation: %s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  return v17;
}

+ (id)lookupCalorieDataForCMWorkoutType:(int64_t)type duration:(double)duration error:(id *)error
{
  v6 = [CMCalorieUserInfo alloc];
  v8 = objc_msgSend_initWithAge_gender_height_weight_condition_betaBlockerUse_(v6, v7, 0, 0, 0, 30.0, 1.70000005, 68.0299988);

  return MEMORY[0x1EEE66B58](CMCalorieUtils, sel_lookupCalorieDataForCMWorkoutType_duration_userInfo_error_, type);
}

+ (id)lookupCalorieDataForWorkoutConfiguration:(id)configuration duration:(double)duration distance:(id)distance userInfo:(id)info errorPtr:(id *)ptr
{
  v61 = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    v49 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, a2, self, @"CMCalorieUtils.mm", 139, @"Invalid parameter not satisfying: %@", @"workoutConfiguration");
  }

  if (duration <= 0.0)
  {
    if (ptr)
    {
      *ptr = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
    }

    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    v18 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = duration;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "Workout calorie lookup, duration must be strictly positive, %f", buf, 0xCu);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    LODWORD(v56) = 134217984;
    *(&v56 + 4) = duration;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Workout calorie lookup, duration must be strictly positive, %f");
    goto LABEL_44;
  }

  if (distance)
  {
    objc_msgSend_floatValue(distance, a2, configuration);
    if (v14 < 0.0)
    {
      if (ptr)
      {
        *ptr = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"CMErrorDomain", 107, 0);
      }

      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
      }

      v15 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 0x7FF8000000000000;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Workout calorie lookup, distance must be non-negative, %f", buf, 0xCu);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
      }

      LODWORD(v56) = 134217984;
      *(&v56 + 4) = 0x7FF8000000000000;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Workout calorie lookup, distance must be non-negative, %f");
LABEL_44:
      v24 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMCalorieUtils lookupCalorieDataForWorkoutConfiguration:duration:distance:userInfo:errorPtr:]", "CoreLocation: %s\n", v17);
      if (v24 != buf)
      {
        free(v24);
      }

      return 0;
    }

    objc_msgSend_floatValue(distance, v12, v13);
    v20 = v21;
  }

  else
  {
    v20 = NAN;
  }

  v56 = xmmword_19B7BDCA4;
  v57 = unk_19B7BDCB4;
  v58[0] = xmmword_19B7BDCC4;
  *(v58 + 12) = *(&xmmword_19B7BDCC4 + 12);
  if (info)
  {
    objc_msgSend_CLBodyMetricsFromCMCalorieUserInfo_errorPtr_(CMCalorieUtils, a2, info, ptr);
    if (*ptr)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
      }

      v22 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = info;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Workout calorie lookup, invalid userInfo, %@", buf, 0xCu);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
      }

      *v51 = 138412290;
      *&v51[4] = info;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Workout calorie lookup, invalid userInfo, %@", v51, 12, *v51, *&v51[8]);
      goto LABEL_44;
    }
  }

  v27 = v20 / duration;
  v28 = sub_19B73FF78(&v56, 0);
  *buf = v56;
  *&buf[16] = v57;
  v60[0] = v58[0];
  *(v60 + 12) = *(v58 + 12);
  sub_19B71A7B4(configuration, buf, v27, v29);
  if (v28 >= v30)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  v32 = (v28 * *(&v56 + 3)) * duration / 3600.0;
  v33 = v32;
  v34 = (v31 * *(&v56 + 3)) * duration / 3600.0;
  v35 = v34;
  v36 = [CMCalorieData alloc];
  v39 = objc_msgSend_workoutType(configuration, v37, v38);
  v25 = objc_msgSend_initWithWorkoutType_duration_mets_basalMets_totalCalories_basalCalories_(v36, v40, v39, duration, v31, v28, v35, v33);
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
  }

  v41 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *ptr;
    *buf = 138413058;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = configuration;
    *&buf[22] = 2112;
    *&buf[24] = info;
    LOWORD(v60[0]) = 2112;
    *(v60 + 2) = v42;
    _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_DEFAULT, "Workout calorie lookup, %@, %@, %@, %@", buf, 0x2Au);
  }

  v43 = sub_19B420058();
  if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A6C0);
    }

    v44 = *ptr;
    *v51 = 138413058;
    *&v51[4] = v25;
    *&v51[12] = 2112;
    *&v51[14] = configuration;
    v52 = 2112;
    infoCopy = info;
    v54 = 2112;
    v55 = v44;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "Workout calorie lookup, %@, %@, %@, %@", v51, 42);
    v46 = v45;
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMCalorieUtils lookupCalorieDataForWorkoutConfiguration:duration:distance:userInfo:errorPtr:]", "CoreLocation: %s\n", v45);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  return v25;
}

@end