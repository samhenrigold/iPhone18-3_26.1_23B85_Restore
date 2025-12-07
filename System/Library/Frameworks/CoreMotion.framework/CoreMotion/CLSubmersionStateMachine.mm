@interface CLSubmersionStateMachine
- (CLSubmersionStateMachine)initWithType:(int64_t)type;
- (int64_t)stateFromDepth:(id)depth forceSubmersion:(BOOL)submersion;
- (void)initializeThresholds;
@end

@implementation CLSubmersionStateMachine

- (CLSubmersionStateMachine)initWithType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = CLSubmersionStateMachine;
  v4 = [(CLSubmersionStateMachine *)&v9 init];
  v7 = v4;
  if (v4)
  {
    v4->_type = type;
    objc_msgSend_initializeThresholds(v4, v5, v6);
  }

  return v7;
}

- (void)initializeThresholds
{
  v23[204] = *MEMORY[0x1E69E9840];
  v3 = 6.0;
  if (self->_type != 1)
  {
    goto LABEL_16;
  }

  self->_maxDepth = 40.0;
  v4 = MGGetSInt32Answer();
  if (qword_1EAFE2850 != -1)
  {
    dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
  }

  v5 = qword_1EAFE2870;
  if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v4;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Max depth from gestalt, %d", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
    }

    LODWORD(v18) = 67109120;
    HIDWORD(v18) = v4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2870, 0, "Max depth from gestalt, %d", &v18);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLSubmersionStateMachine initializeThresholds]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (v4 >= 1)
  {
    v3 = v4;
LABEL_16:
    self->_maxDepth = v3;
  }

  if (qword_1EAFE2850 != -1)
  {
    dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
  }

  v9 = qword_1EAFE2870;
  if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEFAULT))
  {
    type = self->_type;
    maxDepth = self->_maxDepth;
    *buf = 67109376;
    v22 = type;
    LOWORD(v23[0]) = 2048;
    *(v23 + 2) = maxDepth;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "initializing submersion thresholds,type,%d,maxdepth,%f", buf, 0x12u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
    }

    v13 = self->_type;
    v14 = self->_maxDepth;
    LODWORD(v18) = 67109376;
    HIDWORD(v18) = v13;
    v19 = 2048;
    v20 = v14;
    LODWORD(v17) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2870, 0, "initializing submersion thresholds,type,%d,maxdepth,%f", &v18, v17);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLSubmersionStateMachine initializeThresholds]", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  sub_19B61DA04(buf, "DeepDepthMeters", &qword_19B7BB830, 0);
  *&self->_deepThreshold = v23[0];
  v18 = self->_maxDepth * 0.875;
  sub_19B61DA04(buf, "NearDepthLimitMeters", &v18, 0);
  *&self->_nearDepthLimitThreshold = v23[0];
  sub_19B61DA04(buf, "PastMaxDepthMeters", &self->_maxDepth, 0);
  *&self->_pastMaxDepthThreshold = v23[0];
  v18 = self->_maxDepth * 1.1;
  sub_19B61DA04(buf, "SensorErrorDepthMeters", &v18, 0);
  *&self->_sensorErrorThreshold = v23[0];
}

- (int64_t)stateFromDepth:(id)depth forceSubmersion:(BOOL)submersion
{
  v48 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_state(depth, a2, depth) > 199 || submersion)
  {
    objc_msgSend_depth(depth, v7, v8);
    if (v31 <= self->_sensorErrorThreshold)
    {
      objc_msgSend_depth(depth, v29, v30);
      if (v34 <= self->_pastMaxDepthThreshold)
      {
        objc_msgSend_depth(depth, v32, v33);
        if (v37 <= self->_nearDepthLimitThreshold)
        {
          objc_msgSend_depth(depth, v35, v36);
          if (v38 <= self->_deepThreshold)
          {
            return 200;
          }

          else
          {
            return 300;
          }
        }

        else
        {
          return 400;
        }
      }

      else
      {
        return 500;
      }
    }

    else
    {
      return 600;
    }
  }

  else
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
    }

    v9 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_msgSend_state(depth, v10, v11);
      objc_msgSend_depth(depth, v13, v14);
      *buf = 134218240;
      v45 = v12;
      v46 = 2048;
      v47 = v15;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "not updating client state because not submerged,state,%ld,depth,%f", buf, 0x16u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
      }

      v21 = qword_1EAFE2870;
      v22 = objc_msgSend_state(depth, v19, v20);
      objc_msgSend_depth(depth, v23, v24);
      v40 = 134218240;
      v41 = v22;
      v42 = 2048;
      v43 = v25;
      LODWORD(v39) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v21, 2, "not updating client state because not submerged,state,%ld,depth,%f", &v40, v39);
      v27 = v26;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLSubmersionStateMachine stateFromDepth:forceSubmersion:]", "CoreLocation: %s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    return objc_msgSend_state(depth, v17, v18);
  }
}

@end