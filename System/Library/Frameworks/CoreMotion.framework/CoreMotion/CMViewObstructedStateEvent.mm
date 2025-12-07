@interface CMViewObstructedStateEvent
- (CMViewObstructedStateEvent)initWithShouldSupress:(BOOL)supress currentState:(unsigned __int8)state orientation:(id)orientation motionType:(id)type lux:(float)lux pocketProbability:(float)probability meanProbabilitiesFloatArray:(id)array;
- (id)description;
- (void)dealloc;
@end

@implementation CMViewObstructedStateEvent

- (CMViewObstructedStateEvent)initWithShouldSupress:(BOOL)supress currentState:(unsigned __int8)state orientation:(id)orientation motionType:(id)type lux:(float)lux pocketProbability:(float)probability meanProbabilitiesFloatArray:(id)array
{
  stateCopy = state;
  supressCopy = supress;
  v30.receiver = self;
  v30.super_class = CMViewObstructedStateEvent;
  v16 = [(CMViewObstructedStateEvent *)&v30 init];
  v18 = v16;
  if (v16)
  {
    objc_msgSend_setShouldSuppress_(v16, v17, supressCopy);
    objc_msgSend_setCurrentState_(v18, v19, stateCopy);
    objc_msgSend_setOrientation_(v18, v20, orientation);
    objc_msgSend_setMotionType_(v18, v21, type);
    *&v22 = lux;
    objc_msgSend_setLux_(v18, v23, v24, v22);
    *&v25 = probability;
    objc_msgSend_setPocketProbability_(v18, v26, v27, v25);
    objc_msgSend_setMeanProbabilities_(v18, v28, array);
  }

  return v18;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"[");
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  meanProbabilities = self->_meanProbabilities;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(meanProbabilities, v5, &v22, v26, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(meanProbabilities);
        }

        objc_msgSend_floatValue(*(*(&v22 + 1) + 8 * i), v7, v8);
        v3 = objc_msgSend_stringByAppendingFormat_(v3, v13, @"%f,", v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(meanProbabilities, v7, &v22, v26, 16);
    }

    while (v9);
  }

  v14 = objc_msgSend_length(v3, v7, v8);
  v16 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v3, v15, v14 - 1, 1, @"]");
  v17 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  return objc_msgSend_stringWithFormat_(v17, v20, @"%@ shouldSuppress=%u,CurrentState=%u,Orientation=%@,MotionType=%@,Lux=%f,PocketProbability=%f,MeanProbabilities=%@", v19, self->_shouldSuppress, self->_currentState, self->_orientation, self->_motionType, self->_lux, self->_pocketProbability, v16);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMViewObstructedStateEvent;
  [(CMViewObstructedStateEvent *)&v3 dealloc];
}

@end