@interface BiokitOperation
- (BiokitOperation)initWithQueue:(id)queue forUnitTest:(BOOL)test;
- (id)cancelActiveOperation:(id)operation;
- (id)createPresenceDetectOperationWithTimeout:(double)timeout options:(id)options;
- (void)device:(id)device pearlEventOccurred:(int64_t)occurred;
- (void)device:(id)device pearlStateChanged:(int64_t)changed;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)operation:(id)operation motionDetectStateChanged:(id)changed;
- (void)startPresenceDetectOperation:(id)operation;
@end

@implementation BiokitOperation

- (void)device:(id)device pearlStateChanged:(int64_t)changed
{
  v19 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = absTimeNS();
      if (v8 == -1)
      {
        v9 = INFINITY;
      }

      else
      {
        v9 = v8 / 1000000000.0;
      }

      LODWORD(v17[0]) = 134218498;
      *(v17 + 4) = v9;
      WORD6(v17[0]) = 2112;
      *(v17 + 14) = self;
      WORD3(v17[1]) = 2080;
      *(&v17[1] + 1) = getDeviceStateDescription(changed);
      v14 = "%13.5f: %@ pearlStateChanged %s";
      v15 = v7;
      v16 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, v17, v16);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v10 = i;
        }

        else if (!*(i - 1))
        {
          v12 = absTimeNS();
          if (v12 == -1)
          {
            v13 = INFINITY;
          }

          else
          {
            v13 = v12 / 1000000000.0;
          }

          LODWORD(v17[0]) = 136316162;
          *(v17 + 4) = v10;
          WORD6(v17[0]) = 1024;
          *(v17 + 14) = 415;
          WORD1(v17[1]) = 2048;
          *(&v17[1] + 4) = v13;
          WORD6(v17[1]) = 2112;
          *(&v17[1] + 14) = self;
          WORD3(v17[2]) = 2080;
          *(&v17[2] + 1) = getDeviceStateDescription(changed);
          v14 = "%30s:%-4d: %13.5f: %@ pearlStateChanged %s";
          v15 = v7;
          v16 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  LODWORD(v17[0]) = changed;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:4 data:v17 forOperation:self];
}

- (void)device:(id)device pearlEventOccurred:(int64_t)occurred
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = absTimeNS();
      if (v8 == -1)
      {
        v9 = INFINITY;
      }

      else
      {
        v9 = v8 / 1000000000.0;
      }

      DeviceEventDescription = getDeviceEventDescription(occurred);
      pendingPresenceOperation = self->_pendingPresenceOperation;
      LODWORD(v21[0]) = 134219010;
      *(v21 + 4) = v9;
      WORD6(v21[0]) = 2112;
      *(v21 + 14) = self;
      WORD3(v21[1]) = 2080;
      *(&v21[1] + 1) = DeviceEventDescription;
      LOWORD(v21[2]) = 2048;
      *(&v21[2] + 2) = pendingPresenceOperation;
      WORD5(v21[2]) = 2080;
      *(&v21[2] + 12) = getOperationStateDescription([(BKFaceDetectOperation *)pendingPresenceOperation state]);
      v16 = "%13.5f: %@ pearlEventOccurred %s, current operation %p state %s";
      v17 = v7;
      v18 = 52;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, v21, v18);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v10 = i;
        }

        else if (!*(i - 1))
        {
          v12 = absTimeNS();
          if (v12 == -1)
          {
            v13 = INFINITY;
          }

          else
          {
            v13 = v12 / 1000000000.0;
          }

          v19 = getDeviceEventDescription(occurred);
          v20 = self->_pendingPresenceOperation;
          LODWORD(v21[0]) = 136316674;
          *(v21 + 4) = v10;
          WORD6(v21[0]) = 1024;
          *(v21 + 14) = 403;
          WORD1(v21[1]) = 2048;
          *(&v21[1] + 4) = v13;
          WORD6(v21[1]) = 2112;
          *(&v21[1] + 14) = self;
          WORD3(v21[2]) = 2080;
          *(&v21[2] + 1) = v19;
          LOWORD(v21[3]) = 2048;
          *(&v21[3] + 2) = v20;
          WORD5(v21[3]) = 2080;
          *(&v21[3] + 12) = getOperationStateDescription([(BKFaceDetectOperation *)v20 state]);
          v16 = "%30s:%-4d: %13.5f: %@ pearlEventOccurred %s, current operation %p state %s";
          v17 = v7;
          v18 = 68;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  LODWORD(v21[0]) = occurred;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:3 data:v21 forOperation:self];
}

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  v31 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_queue);
  v7 = MEMORY[0x1E696AEC0];
  pendingPresenceOperation = self->_pendingPresenceOperation;
  [(BKFaceDetectOperation *)pendingPresenceOperation timeout];
  v10 = [v7 stringWithFormat:@"operation %p currentOperation %p (timeout %13.5f) finishedWithReason %s", operationCopy, pendingPresenceOperation, v9, getEndReasonDescriptions(reason)];
  if (currentLogLevel == 5)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = absTimeNS();
      if (v12 == -1)
      {
        v13 = INFINITY;
      }

      else
      {
        v13 = v12 / 1000000000.0;
      }

      *buf = 134218498;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v10;
      v18 = "%13.5f: %@ %@";
      v19 = v11;
      v20 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v14 = i;
        }

        else if (!*(i - 1))
        {
          v16 = absTimeNS();
          if (v16 == -1)
          {
            v17 = INFINITY;
          }

          else
          {
            v17 = v16 / 1000000000.0;
          }

          *buf = 136316162;
          *&buf[4] = v14;
          *&buf[12] = 1024;
          *&buf[14] = 385;
          *&buf[18] = 2048;
          *&buf[20] = v17;
          *&buf[28] = 2112;
          *&buf[30] = self;
          *&buf[38] = 2112;
          *&buf[40] = v10;
          v18 = "%30s:%-4d: %13.5f: %@ %@";
          v19 = v11;
          v20 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = reason;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:2 data:buf forOperation:self];
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  v59 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *&v45 = 0;
  v46 = 0u;
  *&v42 = 0;
  LODWORD(changed) = [changedCopy faceDetected];
  pitch = [changedCopy pitch];
  v9 = [changedCopy yaw];
  roll = [changedCopy roll];
  distance = [changedCopy distance];
  orientation = [changedCopy orientation];
  if ((orientation - 1) >= 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = orientation;
  }

  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  if (currentLogLevel == 5)
  {
    v14 = _AALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v39 = distance;
      v15 = absTimeNS();
      v40 = pitch;
      v35 = v9;
      v16 = operationCopy;
      if (v15 == -1)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = v15 / 1000000000.0;
      }

      pendingPresenceOperation = self->_pendingPresenceOperation;
      if (changed)
      {
        v23 = "FACE FOUND";
      }

      else
      {
        v23 = "FACE NOT FOUND";
      }

      getFaceDetectOrientationDescription(v13);
      changed = v37 = changed;
      faceDetectionScore = [changedCopy faceDetectionScore];
      *buf = 134220290;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      *&buf[32] = 2048;
      *&buf[34] = pendingPresenceOperation;
      *&buf[42] = 2080;
      *&buf[44] = v23;
      *&buf[52] = 2112;
      pitch = v40;
      *&buf[54] = v40;
      *&buf[62] = 2112;
      v9 = v35;
      *&buf[64] = v35;
      *&buf[72] = 2112;
      *&buf[74] = roll;
      *&buf[82] = 2112;
      *&buf[84] = changed;
      *&buf[92] = 2112;
      *&buf[94] = faceDetectionScore;
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, "%13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %@ yaw: %@ roll: %@ orientation: %@ faceDetectionScore: %@", buf, 0x66u);

      operationCopy = v16;
      LOBYTE(changed) = v37;
LABEL_28:
      distance = v39;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (currentLogLevel >= 6)
  {
    v14 = _AALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v34 = operationCopy;
      v18 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v18 = i;
        }

        else if (!*(i - 1))
        {
          v39 = distance;
          v20 = absTimeNS();
          v41 = pitch;
          v36 = v9;
          if (v20 == -1)
          {
            v21 = INFINITY;
          }

          else
          {
            v21 = v20 / 1000000000.0;
          }

          v25 = self->_pendingPresenceOperation;
          if (changed)
          {
            v26 = "FACE FOUND";
          }

          else
          {
            v26 = "FACE NOT FOUND";
          }

          v27 = getFaceDetectOrientationDescription(v13);
          [changedCopy faceDetectionScore];
          changed = v38 = changed;
          *buf = 136317954;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = 355;
          *&buf[18] = 2048;
          *&buf[20] = v21;
          *&buf[28] = 2112;
          *&buf[30] = self;
          *&buf[38] = 2048;
          operationCopy = v34;
          *&buf[40] = v34;
          *&buf[48] = 2048;
          *&buf[50] = v25;
          *&buf[58] = 2080;
          *&buf[60] = v26;
          *&buf[68] = 2112;
          pitch = v41;
          *&buf[70] = v41;
          *&buf[78] = 2112;
          v9 = v36;
          *&buf[80] = v36;
          *&buf[88] = 2112;
          *&buf[90] = roll;
          *&buf[98] = 2112;
          *&buf[100] = v27;
          *&buf[108] = 2112;
          *&buf[110] = changed;
          _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %@ yaw: %@ roll: %@ orientation: %@ faceDetectionScore: %@", buf, 0x76u);

          LOBYTE(changed) = v38;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  LOBYTE(v42) = changed;
  *(&v45 + 1) = 1;
  [pitch doubleValue];
  *(&v42 + 1) = v28;
  [v9 doubleValue];
  *&v43 = v29;
  [roll doubleValue];
  *(&v43 + 1) = v30;
  *&v44 = v13;
  [distance doubleValue];
  *(&v44 + 1) = v31;
  faceDetectionScore2 = [changedCopy faceDetectionScore];
  [faceDetectionScore2 floatValue];
  DWORD2(v50) = v33;

  memset_pattern16(&v46, &unk_1BB32B2C0, 0x40uLL);
  *&v50 = 0;
  v55 = v50;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  *&buf[64] = v46;
  *&buf[80] = v47;
  *&buf[96] = v48;
  *&buf[112] = v49;
  *buf = v42;
  *&buf[16] = v43;
  *&buf[32] = v44;
  *&buf[48] = v45;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:1 data:buf forOperation:self];
}

- (void)operation:(id)operation motionDetectStateChanged:(id)changed
{
  v56 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v8 = _AALog();
  v9 = _AALog();
  v10 = os_signpost_id_generate(v9);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v8, OS_SIGNPOST_EVENT, v10, "AA: Motion detect success", &unk_1BB32C3F2, buf, 2u);
  }

  *buf = 1;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(&buf[8], 0, 48);
  *&buf[56] = 3;
  v48 = 0u;
  v49 = 0;
  motionDetectState = [changedCopy motionDetectState];
  if (motionDetectState == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * (motionDetectState == 2);
  }

  *&v46 = v12;
  if (v12)
  {
    memset_pattern16(&v42, &unk_1BB32B2C0, 0x40uLL);
    goto LABEL_13;
  }

  motionMatrix = [changedCopy motionMatrix];

  if (!motionMatrix)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_34;
    }

    v33 = _AALog();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_41:

      goto LABEL_34;
    }

    v34 = absTimeNS();
    if (v34 == -1)
    {
      v35 = INFINITY;
    }

    else
    {
      v35 = v34 / 1000000000.0;
    }

    *v50 = 134217984;
    v51 = v35;
    v38 = "%13.5f: MotionMatrix is nil";
LABEL_48:
    _os_log_error_impl(&dword_1BB2EF000, v33, OS_LOG_TYPE_ERROR, v38, v50, 0xCu);
    goto LABEL_41;
  }

  motionMatrix2 = [changedCopy motionMatrix];
  v15 = [motionMatrix2 count];

  if (v15 != 16)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_34;
    }

    v33 = _AALog();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v36 = absTimeNS();
    if (v36 == -1)
    {
      v37 = INFINITY;
    }

    else
    {
      v37 = v36 / 1000000000.0;
    }

    *v50 = 134217984;
    v51 = v37;
    v38 = "%13.5f: Motion matrix is of invalid length, not sending this to client";
    goto LABEL_48;
  }

  for (i = 0; i != 16; ++i)
  {
    motionMatrix3 = [changedCopy motionMatrix];
    v18 = [motionMatrix3 objectAtIndexedSubscript:i];

    [v18 floatValue];
    *(&v42 + i) = v19;
  }

LABEL_13:
  if (currentLogLevel == 5)
  {
    v20 = _AALog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = absTimeNS();
      if (v21 == -1)
      {
        v22 = INFINITY;
      }

      else
      {
        v22 = v21 / 1000000000.0;
      }

      pendingPresenceOperation = self->_pendingPresenceOperation;
      v28 = getMotionEventTypeDescription(v12);
      *v50 = 134220290;
      v51 = v22;
      v52 = 2112;
      *v53 = self;
      *&v53[8] = 2048;
      *&v53[10] = operationCopy;
      *&v53[18] = 2048;
      *&v53[20] = pendingPresenceOperation;
      *&v53[28] = 2080;
      *&v53[30] = "FACE FOUND";
      *&v53[38] = 2048;
      *&v53[40] = 0;
      *&v53[48] = 2048;
      *&v53[50] = 0;
      *&v53[58] = 2048;
      *&v53[60] = 0;
      *&v53[68] = 2112;
      *&v53[70] = @"Unknown";
      *&v53[78] = 2112;
      *&v53[80] = v28;
      v29 = "%13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ motionResult: %@";
      v30 = v20;
      v31 = 102;
LABEL_31:
      _os_log_impl(&dword_1BB2EF000, v30, OS_LOG_TYPE_DEFAULT, v29, v50, v31);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (currentLogLevel >= 6)
  {
    v20 = _AALog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v23 = j;
        }

        else if (!*(j - 1))
        {
          v25 = absTimeNS();
          if (v25 == -1)
          {
            v26 = INFINITY;
          }

          else
          {
            v26 = v25 / 1000000000.0;
          }

          v32 = self->_pendingPresenceOperation;
          v28 = getMotionEventTypeDescription(v12);
          *v50 = 136317954;
          v51 = *&v23;
          v52 = 1024;
          *v53 = 310;
          *&v53[4] = 2048;
          *&v53[6] = v26;
          *&v53[14] = 2112;
          *&v53[16] = self;
          *&v53[24] = 2048;
          *&v53[26] = operationCopy;
          *&v53[34] = 2048;
          *&v53[36] = v32;
          *&v53[44] = 2080;
          *&v53[46] = "FACE FOUND";
          *&v53[54] = 2048;
          *&v53[56] = 0;
          *&v53[64] = 2048;
          *&v53[66] = 0;
          *&v53[74] = 2048;
          *&v53[76] = 0;
          *&v53[84] = 2112;
          *&v53[86] = @"Unknown";
          v54 = 2112;
          v55 = v28;
          v29 = "%30s:%-4d: %13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ motionResult: %@";
          v30 = v20;
          v31 = 118;
          goto LABEL_31;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v39[8] = v46;
  v39[9] = v47;
  v39[10] = v48;
  v40 = v49;
  v39[4] = v42;
  v39[5] = v43;
  v39[6] = v44;
  v39[7] = v45;
  v39[0] = *buf;
  v39[1] = *&buf[16];
  v39[2] = *&buf[32];
  v39[3] = *&buf[48];
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:1 data:v39 forOperation:self];
LABEL_34:
}

- (id)cancelActiveOperation:(id)operation
{
  v30 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      *buf = 134218242;
      v25 = v7;
      v26 = 2112;
      *v27 = operationCopy;
      v12 = "%13.5f: cancelActiveOperation called with info %@";
      v13 = v5;
      v14 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v8 = i;
        }

        else if (!*(i - 1))
        {
          v10 = absTimeNS();
          if (v10 == -1)
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = v10 / 1000000000.0;
          }

          *buf = 136315906;
          v25 = *&v8;
          v26 = 1024;
          *v27 = 223;
          *&v27[4] = 2048;
          *&v27[6] = v11;
          v28 = 2112;
          v29 = operationCopy;
          v12 = "%30s:%-4d: %13.5f: cancelActiveOperation called with info %@";
          v13 = v5;
          v14 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  pendingPresenceOperation = self->_pendingPresenceOperation;
  if (pendingPresenceOperation)
  {
    v16 = pendingPresenceOperation;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__BiokitOperation_cancelActiveOperation___block_invoke;
    block[3] = &unk_1E7F37C10;
    v21 = v16;
    selfCopy = self;
    v23 = operationCopy;
    v17 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v18 = self->_pendingPresenceOperation;
    self->_pendingPresenceOperation = 0;
  }

  return 0;
}

void __41__BiokitOperation_cancelActiveOperation___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cancel];
  if (currentLogLevel == 5)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = absTimeNS();
      if (v3 == -1)
      {
        v4 = INFINITY;
      }

      else
      {
        v4 = v3 / 1000000000.0;
      }

      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = *(a1 + 48);
      v18 = 134218754;
      v19 = v4;
      v20 = 2112;
      *v21 = v9;
      *&v21[8] = 2048;
      *&v21[10] = v10;
      *&v21[18] = 2112;
      *&v21[20] = v11;
      v12 = "%13.5f: %@ cancelled presence operation %p (%@)";
      v13 = v2;
      v14 = 42;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      return;
    }

    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v5 = i;
        }

        else if (!*(i - 1))
        {
          v7 = absTimeNS();
          if (v7 == -1)
          {
            v8 = INFINITY;
          }

          else
          {
            v8 = v7 / 1000000000.0;
          }

          v16 = *(a1 + 32);
          v15 = *(a1 + 40);
          v17 = *(a1 + 48);
          v18 = 136316418;
          v19 = *&v5;
          v20 = 1024;
          *v21 = 230;
          *&v21[4] = 2048;
          *&v21[6] = v8;
          *&v21[14] = 2112;
          *&v21[16] = v15;
          *&v21[24] = 2048;
          *&v21[26] = v16;
          v22 = 2112;
          v23 = v17;
          v12 = "%30s:%-4d: %13.5f: %@ cancelled presence operation %p (%@)";
          v13 = v2;
          v14 = 58;
          goto LABEL_19;
        }
      }
    }
  }
}

- (void)startPresenceDetectOperation:(id)operation
{
  operationCopy = operation;
  pendingPresenceOperation = self->_pendingPresenceOperation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__BiokitOperation_startPresenceDetectOperation___block_invoke;
  v7[3] = &unk_1E7F37408;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(BKFaceDetectOperation *)pendingPresenceOperation startWithReply:v7];
}

void __48__BiokitOperation_startPresenceDetectOperation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    if (currentLogLevel >= 3)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v26 = absTimeNS();
        if (v26 == -1)
        {
          v27 = INFINITY;
        }

        else
        {
          v27 = v26 / 1000000000.0;
        }

        v28 = *(a1 + 32);
        v29 = *(v28 + 32);
        *buf = 134218754;
        v33 = v27;
        v34 = 2112;
        *v35 = v28;
        *&v35[8] = 2048;
        *&v35[10] = v29;
        *&v35[18] = 2112;
        *&v35[20] = v5;
        _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, "%13.5f: %@ failed to start presence operation %p: %@", buf, 0x2Au);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v30 = *MEMORY[0x1E696A578];
    v31 = @" Unable to start presence detect operation";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [v12 errorWithDomain:v13 code:3 userInfo:v6];

    v5 = v14;
LABEL_25:

    goto LABEL_26;
  }

  if (currentLogLevel == 5)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v19 = *(a1 + 32);
      v20 = *(v19 + 32);
      *buf = 134218498;
      v33 = v8;
      v34 = 2112;
      *v35 = v19;
      *&v35[8] = 2048;
      *&v35[10] = v20;
      v21 = "%13.5f: %@ presence operation %p successfully started";
      v22 = v6;
      v23 = 32;
LABEL_24:
      _os_log_impl(&dword_1BB2EF000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }

    goto LABEL_25;
  }

  if (currentLogLevel >= 6)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v15 = i;
        }

        else if (!*(i - 1))
        {
          v17 = absTimeNS();
          if (v17 == -1)
          {
            v18 = INFINITY;
          }

          else
          {
            v18 = v17 / 1000000000.0;
          }

          v24 = *(a1 + 32);
          v25 = *(v24 + 32);
          *buf = 136316162;
          v33 = *&v15;
          v34 = 1024;
          *v35 = 206;
          *&v35[4] = 2048;
          *&v35[6] = v18;
          *&v35[14] = 2112;
          *&v35[16] = v24;
          *&v35[24] = 2048;
          *&v35[26] = v25;
          v21 = "%30s:%-4d: %13.5f: %@ presence operation %p successfully started";
          v22 = v6;
          v23 = 48;
          goto LABEL_24;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  (*(*(a1 + 40) + 16))();
}

- (id)createPresenceDetectOperationWithTimeout:(double)timeout options:(id)options
{
  v4 = *&options.var0;
  v42 = *MEMORY[0x1E69E9840];
  pearlDevice = self->_pearlDevice;
  v35 = 0;
  v8 = [(BKDevicePearl *)pearlDevice createPresenceDetectOperationWithError:&v35];
  v9 = v35;
  pendingPresenceOperation = self->_pendingPresenceOperation;
  self->_pendingPresenceOperation = v8;

  if (v9)
  {
    if (currentLogLevel >= 3)
    {
      v14 = _AALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v33 = absTimeNS();
        if (v33 == -1)
        {
          v34 = INFINITY;
        }

        else
        {
          v34 = v33 / 1000000000.0;
        }

        *buf = 134218242;
        v37 = v34;
        v38 = 2112;
        *v39 = v9;
        _os_log_error_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_ERROR, "%13.5f: Unable to create presence detect operation due to error: %@", buf, 0x16u);
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  [(BKFaceDetectOperation *)self->_pendingPresenceOperation setTimeout:timeout];
  self->_timeout = timeout;
  [(BKFaceDetectOperation *)self->_pendingPresenceOperation setMotionDetect:(v4 >> 8) & 1];
  [(BKFaceDetectOperation *)self->_pendingPresenceOperation setDelegate:self];
  [(BKFaceDetectOperation *)self->_pendingPresenceOperation setQueue:self->_queue];
  if ([(BKFaceDetectOperation *)self->_pendingPresenceOperation motionDetect])
  {
    v11 = _AALog();
    v12 = _AALog();
    v13 = os_signpost_id_generate(v12);

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v11, OS_SIGNPOST_EVENT, v13, "AA: Motion detect started", &unk_1BB32C3F2, buf, 2u);
    }
  }

  if (currentLogLevel == 5)
  {
    v14 = _AALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = absTimeNS();
      if (v15 == -1)
      {
        v16 = INFINITY;
      }

      else
      {
        v16 = v15 / 1000000000.0;
      }

      v21 = self->_pendingPresenceOperation;
      timeout = self->_timeout;
      v23 = "DISABLED";
      if (v4)
      {
        v24 = "ENABLED";
      }

      else
      {
        v24 = "DISABLED";
      }

      *buf = 134219010;
      if ((v4 & 0x100) != 0)
      {
        v23 = "ENABLED";
      }

      v37 = v16;
      v38 = 2112;
      *v39 = v21;
      *&v39[8] = 2048;
      *&v39[10] = timeout;
      *&v39[18] = 2080;
      *&v39[20] = v24;
      *&v39[28] = 2080;
      *&v39[30] = v23;
      v25 = "%13.5f: Presence detect operation %@ created successfully with timeout: %f AttentionDetect: %s MotionDetect: %s";
      v26 = v14;
      v27 = 52;
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (currentLogLevel >= 6)
  {
    v14 = _AALog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v17 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v17 = i;
      }

      else if (!*(i - 1))
      {
        v19 = absTimeNS();
        if (v19 == -1)
        {
          v20 = INFINITY;
        }

        else
        {
          v20 = v19 / 1000000000.0;
        }

        v28 = self->_pendingPresenceOperation;
        v29 = self->_timeout;
        v30 = "DISABLED";
        if (v4)
        {
          v31 = "ENABLED";
        }

        else
        {
          v31 = "DISABLED";
        }

        *buf = 136316674;
        if ((v4 & 0x100) != 0)
        {
          v30 = "ENABLED";
        }

        v37 = *&v17;
        v38 = 1024;
        *v39 = 194;
        *&v39[4] = 2048;
        *&v39[6] = v20;
        *&v39[14] = 2112;
        *&v39[16] = v28;
        *&v39[24] = 2048;
        *&v39[26] = v29;
        *&v39[34] = 2080;
        *&v39[36] = v31;
        v40 = 2080;
        v41 = v30;
        v25 = "%30s:%-4d: %13.5f: Presence detect operation %@ created successfully with timeout: %f AttentionDetect: %s MotionDetect: %s";
        v26 = v14;
        v27 = 68;
LABEL_35:
        _os_log_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
LABEL_36:

        break;
      }
    }
  }

LABEL_37:

  return v9;
}

- (BiokitOperation)initWithQueue:(id)queue forUnitTest:(BOOL)test
{
  testCopy = test;
  v32 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = BiokitOperation;
  v8 = [(BiokitOperation *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    if (testCopy)
    {
      +[AWUnitTestPearlDevice sharedDevice];
    }

    else
    {
      getPearlDevice();
    }
    v10 = ;
    pearlDevice = v9->_pearlDevice;
    v9->_pearlDevice = v10;

    [(BKDevicePearl *)v9->_pearlDevice setQueue:v9->_queue];
    [(BKDevicePearl *)v9->_pearlDevice setDelegate:v9];
    v9->_timeout = 0.0;
  }

  if (testCopy)
  {
    if (currentLogLevel == 5)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        v19 = v9->_pearlDevice;
        *buf = 134218242;
        v27 = v14;
        v28 = 2112;
        *v29 = v19;
        v20 = "%13.5f: Unit test device %@ created";
        v21 = v12;
        v22 = 22;
LABEL_25:
        _os_log_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }

LABEL_26:

      goto LABEL_27;
    }

    if (currentLogLevel >= 6)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v15 = i;
          }

          else if (!*(i - 1))
          {
            v17 = absTimeNS();
            if (v17 == -1)
            {
              v18 = INFINITY;
            }

            else
            {
              v18 = v17 / 1000000000.0;
            }

            v23 = v9->_pearlDevice;
            *buf = 136315906;
            v27 = *&v15;
            v28 = 1024;
            *v29 = 158;
            *&v29[4] = 2048;
            *&v29[6] = v18;
            v30 = 2112;
            v31 = v23;
            v20 = "%30s:%-4d: %13.5f: Unit test device %@ created";
            v21 = v12;
            v22 = 38;
            goto LABEL_25;
          }
        }
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  return v9;
}

@end