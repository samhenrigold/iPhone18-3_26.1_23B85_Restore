@interface CMFitnessJuniorGoals
+ (BOOL)isAvailable;
+ (unint64_t)recommendedMoveMinutesForLevel:(int64_t)level userInfo:(id)info error:(id *)error;
- (CMFitnessJuniorGoals)init;
- (void)dealloc;
@end

@implementation CMFitnessJuniorGoals

- (CMFitnessJuniorGoals)init
{
  v3.receiver = self;
  v3.super_class = CMFitnessJuniorGoals;
  return [(CMFitnessJuniorGoals *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMFitnessJuniorGoals;
  [(CMFitnessJuniorGoals *)&v2 dealloc];
}

+ (BOOL)isAvailable
{
  sub_19B421798();
  sub_19B421798();

  return sub_19B43B6EC();
}

+ (unint64_t)recommendedMoveMinutesForLevel:(int64_t)level userInfo:(id)info error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  if (level >= 3)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, level);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CMFitnessJuniorGoals.mm", 40, @"CMFitnessJuniorGoalLevel must be low, medium, or high");
    if (info)
    {
      goto LABEL_3;
    }

LABEL_26:
    v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, level);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, a2, self, @"CMFitnessJuniorGoals.mm", 41, @"userInfo must not be empty.");
    goto LABEL_3;
  }

  if (!info)
  {
    goto LABEL_26;
  }

LABEL_3:
  objc_msgSend_age(info, a2, level);
  if (v12 < 5.0 || (objc_msgSend_age(info, v10, v11), v13 >= 13.0))
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E29AA0);
    }

    v14 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_age(info, v15, v16);
      *buf = 134283521;
      v42 = v17;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "FitnessJuniorGoals, Unexpected age input: %{private}f yrs. Fitness junior move minute goals are designed for user age interval [5.0, 13.0) yrs.", buf, 0xCu);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E29AA0);
      }

      v22 = qword_1EAFE2830;
      objc_msgSend_age(info, v20, v21);
      v39 = 134283521;
      v40 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v22, 16, "FitnessJuniorGoals, Unexpected age input: %{private}f yrs. Fitness junior move minute goals are designed for user age interval [5.0, 13.0) yrs.", &v39, 12);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMFitnessJuniorGoals recommendedMoveMinutesForLevel:userInfo:error:]", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (error)
    {
      v26 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], v19, @"com.apple.coremotion");
      v37 = *MEMORY[0x1E696A578];
      v38 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Unexpected age input. Fitness junior move minute goals are designed for user age interval [5.0, 13.0 yrs."), &stru_1F0E3D7A0, 0);
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, &v38, &v37, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v30, @"CMErrorDomain", 107, v29);
    }
  }

  v31 = 90;
  if (level == 2)
  {
    v31 = 120;
  }

  if (level)
  {
    return v31;
  }

  else
  {
    return 60;
  }
}

@end