@interface CMWorkoutOverview
- (CMWorkoutOverview)initWithCoder:(id)coder;
- (CMWorkoutOverview)initWithOverviewId:(id)id workouts:(id)workouts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMWorkoutOverview

- (CMWorkoutOverview)initWithOverviewId:(id)id workouts:(id)workouts
{
  v32 = *MEMORY[0x1E69E9840];
  if (!id)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMWorkoutOverview.mm", 24, @"Invalid parameter not satisfying: %@", @"overviewId");
    if (workouts)
    {
      goto LABEL_3;
    }

LABEL_18:
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMWorkoutOverview.mm", 25, @"Invalid parameter not satisfying: %@", @"workouts");
    goto LABEL_3;
  }

  if (!workouts)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (objc_msgSend_count(workouts, a2, id) >= 2)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(workouts, v8, &v27, v31, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(workouts);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if (objc_msgSend_mode(v15, v10, v11) == 1)
          {
            v16 = objc_msgSend_type(v15, v10, v11);
            if ((objc_msgSend_workoutIsSupportedForLowPower_(CMWorkout, v17, v16) & 1) == 0)
            {
              v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CMWorkoutOverview.mm", 29, @"Invalid parameter not satisfying: %@", @"wrk.mode != CMWorkoutModeExtended || [CMWorkout workoutIsSupportedForLowPower:wrk.type]");
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(workouts, v10, &v27, v31, 16);
      }

      while (v12);
    }
  }

  v26.receiver = self;
  v26.super_class = CMWorkoutOverview;
  v20 = [(CMWorkoutOverview *)&v26 init];
  if (v20)
  {
    v20->_overviewId = id;
    v20->_workouts = workouts;
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutOverview;
  [(CMWorkoutOverview *)&v3 dealloc];
}

- (CMWorkoutOverview)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = CMWorkoutOverview;
  v4 = [(CMWorkoutOverview *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_overviewId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMWorkoutOverviewCodingKeyOverviewId");
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v4->_workouts = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v12, v11, @"kCMWorkoutOverviewCodingKeyWorkouts");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_overviewId(self, v8, v9);
  v14 = objc_msgSend_workouts(self, v11, v12);

  return objc_msgSend_initWithOverviewId_workouts_(v7, v13, v10, v14);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_overviewId, @"kCMWorkoutOverviewCodingKeyOverviewId");
  workouts = self->_workouts;

  objc_msgSend_encodeObject_forKey_(coder, v5, workouts, @"kCMWorkoutOverviewCodingKeyWorkouts");
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  workouts = self->_workouts;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(workouts, v5, &v16, v20, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(workouts);
        }

        objc_msgSend_appendFormat_(v3, v7, @"%@, ", *(*(&v16 + 1) + 8 * i));
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(workouts, v7, &v16, v20, 16);
    }

    while (v8);
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  return objc_msgSend_stringWithFormat_(v11, v14, @"%@, <overviewId %@, workouts [ %@]>", v13, self->_overviewId, v3);
}

@end