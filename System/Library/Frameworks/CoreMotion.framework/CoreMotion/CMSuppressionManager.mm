@interface CMSuppressionManager
+ (BOOL)isAvailable;
+ (BOOL)isSourceAvailable:(unint64_t)available;
- (CMSuppressionEventStruct)currentSuppressionEvent;
- (CMSuppressionManager)init;
- (CMSuppressionManager)initWithClientType:(int64_t)type;
- (id)initPrivateWithClientType:(int64_t)type;
- (id)staticPoseBlocking;
- (id)viewObstructedBlocking;
- (void)connect;
- (void)dealloc;
- (void)deallocPrivate;
- (void)didDetectSignificantUserInteraction;
- (void)feedDevicePresenceEvent:(int64_t)event timestamp:(double)timestamp force:(BOOL)force;
- (void)feedSmartPowerNapEvent:(int64_t)event timestamp:(double)timestamp force:(BOOL)force;
- (void)feedViewObstructedEvent:(int64_t)event facedown:(unint64_t)facedown timeSinceLastFacedownStatic:(double)static timestamp:(double)timestamp force:(BOOL)force;
- (void)handleSmartPowerNapState:(unsigned __int8)state;
- (void)managerDidDetectEvent:(unint64_t)event;
- (void)managerDidFindError:(unint64_t)error;
- (void)onCameraCapturePoseData:(const CameraCapturePose *)data;
- (void)onEclipseData:(const Suppress *)data;
- (void)onNotification:(id)notification;
- (void)onViewObstructedStateData:(const ViewObstructedState *)data;
- (void)sendServiceRequestPrivate;
- (void)sendSuppressionEventToClientPrivate;
- (void)sendViewObstructedRequestPrivate;
- (void)sendViewObstructedStateToClientPrivate:(float)private;
- (void)simulateSignificantUserInteraction;
- (void)startCameraCapturePoseUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startCameraCapturePoseUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startService;
- (void)startSuppressionUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startSuppressionUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startSuppressionUpdatesToQueue:(id)queue withOptions:(unint64_t)options withHandler:(id)handler;
- (void)startViewObstructedStateUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startViewObstructedStateUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)stopCameraCapturePoseUpdates;
- (void)stopCameraCapturePoseUpdatesPrivate;
- (void)stopService;
- (void)stopSuppressionUpdates;
- (void)stopSuppressionUpdatesPrivate;
- (void)stopViewObstructedStateUpdates;
- (void)stopViewObstructedStateUpdatesPrivate;
- (void)updateCurrentSuppressionEvent:(int64_t)event timestamp:(double)timestamp reason:(unint64_t)reason facedownState:(unint64_t)state timeSinceLastFacedownStatic:(double)static;
- (void)updateSuppressionStateAndSendToClient;
@end

@implementation CMSuppressionManager

+ (BOOL)isAvailable
{
  if (qword_1EAFE35F8 != -1)
  {
    dispatch_once(&qword_1EAFE35F8, &unk_1F0E3B618);
  }

  return (byte_1EAFE35F0 | (sub_19B421620() >> 9)) & 1;
}

- (void)stopSuppressionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B44B79C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)didDetectSignificantUserInteraction
{
  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  if (qword_1EAFE3A68)
  {
    v3 = sub_19B420D84();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_19B44D81C;
    v4[3] = &unk_1E7532988;
    v4[4] = self;
    sub_19B421668(v3, v4);
  }
}

- (void)sendServiceRequestPrivate
{
  v19[4] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  internal = self->_internal;
  if (internal[232])
  {
    v7 = 1;
  }

  else
  {
    v7 = internal[233];
  }

  v8 = (*(internal + 42) & 0x18) != 0;
  v18[0] = @"CMEclipseServiceEnable";
  v19[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, v7 & 1);
  v18[1] = @"CMSuppressionManagerClientType";
  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_suppressionClientType(self, v10, v11);
  v19[1] = objc_msgSend_numberWithInteger_(v9, v13, v12);
  v18[2] = @"CMSuppressionManagerAlwaysOnViewObstructedRequested";
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, v8);
  v18[3] = @"CMSuppressionManagerClientID";
  v16 = *(internal + 43);
  v19[2] = v15;
  v19[3] = v16;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v19, v18, 4);
  sub_19B44BE58();
}

- (void)connect
{
  internal = self->_internal;
  if (!internal[27])
  {
    internal[28] = dispatch_queue_create("com.apple.CoreMotion.CMSuppressionManager", 0);
    operator new();
  }
}

- (void)stopService
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B44D4BC;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)stopSuppressionUpdatesPrivate
{
  v82 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isSourceAvailable_(CMSuppressionManager, v4, *(internal + 42)))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    v8 = &unk_19B7BD000;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_msgSend_suppressionClientType(self, v6, v7);
      v10 = *(internal + 43);
      v12 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v11, *(internal + 10));
      v13 = *(internal + 9);
      v15 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v14, *(internal + 16));
      v16 = *(internal + 15);
      v18 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v17, *(internal + 21));
      v19 = *(internal + 20);
      *buf = 134350850;
      v67 = v9;
      v68 = 2114;
      v69 = v10;
      v70 = 2114;
      v71 = v12;
      v72 = 2050;
      v73 = v13;
      v8 = &unk_19B7BD000;
      v74 = 2114;
      v75 = v15;
      v76 = 2050;
      v77 = v16;
      v78 = 2114;
      v79 = v18;
      v80 = 2050;
      v81 = v19;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Stopping suppression updates. Final states: VO: %{public}@ @ %{public}f, SPN: %{public}@ @ %{public}f, DP: %{public}@ @ %{public}f", buf, 0x52u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v25 = off_1EAFE2828;
      v26 = objc_msgSend_suppressionClientType(self, v23, v24);
      v27 = *(internal + 43);
      v29 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v28, *(internal + 10));
      v30 = *(internal + 9);
      v32 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v31, *(internal + 16));
      v33 = *(internal + 15);
      v35 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v34, *(internal + 21));
      v36 = *(internal + 20);
      v50 = v8[270];
      v51 = v26;
      v52 = 2114;
      v53 = v27;
      v54 = 2114;
      v55 = v29;
      v56 = 2050;
      v57 = v30;
      v58 = 2114;
      v59 = v32;
      v60 = 2050;
      v61 = v33;
      v62 = 2114;
      v63 = v35;
      v64 = 2050;
      v65 = v36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v25, 0, "[%{public}ld][%{public}@] Stopping suppression updates. Final states: VO: %{public}@ @ %{public}f, SPN: %{public}@ @ %{public}f, DP: %{public}@ @ %{public}f", &v50, 82);
      v38 = v37;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopSuppressionUpdatesPrivate]", "CoreLocation: %s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v39 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v21, v22);
    objc_msgSend_removeObserver_name_object_(v39, v40, self, @"CMSuppressionEventSendNotification", 0);
    v43 = *(internal + 42);
    if ((v43 & 2) != 0)
    {
      v44 = *(internal + 25);
      if (v44)
      {
        objc_msgSend_unregister(v44, v41, v42);

        *(internal + 25) = 0;
        v43 = *(internal + 42);
      }
    }

    if ((v43 & 4) != 0)
    {
      v45 = *(internal + 26);
      if (v45)
      {
        objc_msgSend_unregisterForWatchPresence(v45, v41, v42);

        *(internal + 26) = 0;
        v43 = *(internal + 42);
      }
    }

    if ((v43 & 0x19) != 0 && *(internal + 14))
    {
      if (qword_1EAFE3A58 != -1)
      {
        dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
      }

      sub_19B426A14(qword_1EAFE3A68, 0, *(internal + 14));
      v46 = *(internal + 14);
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      *(internal + 14) = 0;
    }

    if (*(internal + 41))
    {
      if (qword_1EAFE3A58 != -1)
      {
        dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
      }

      sub_19B426A14(qword_1EAFE3A68, 2, *(internal + 41));
      v47 = *(internal + 41);
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

      *(internal + 41) = 0;
      self->_isCameraCapturePose = 1;
      self->_cameraCapturePoseUIHint = 0;
    }

    v48 = *(internal + 7);
    if (v48)
    {

      *(internal + 7) = 0;
    }

    v49 = *(internal + 6);
    if (v49)
    {

      *(internal + 6) = 0;
    }

    *(internal + 5) = 0;
    *(internal + 24) = 0u;
    *(internal + 8) = 0u;
    *(internal + 72) = 0u;
    *(internal + 88) = 0u;
    *(internal + 13) = 0;
    *(internal + 120) = 0u;
    *(internal + 136) = 0u;
    *(internal + 152) = 0u;
    *(internal + 168) = 0u;
    *(internal + 184) = 0u;
  }
}

- (void)updateSuppressionStateAndSendToClient
{
  v103 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  v5 = *(internal + 2);
  v4 = *(internal + 3);
  v6 = *(internal + 1);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v7 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_suppressionClientType(self, v8, v9);
    v11 = *(internal + 43);
    *buf = 134350082;
    v94 = v10;
    v95 = 2114;
    v96 = v11;
    v97 = 2114;
    v98 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v12, v5);
    v99 = 2114;
    v100 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v13, v4);
    v101 = 2050;
    v102 = v6;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[%{public}ld][%{public}@] Previous: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v17 = off_1EAFE2828;
    v18 = objc_msgSend_suppressionClientType(self, v15, v16);
    v19 = *(internal + 43);
    v83 = 134350082;
    v84 = v18;
    v85 = 2114;
    v86 = v19;
    v87 = 2114;
    v88 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v20, v5);
    v89 = 2114;
    v90 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v21, v4);
    v91 = 2050;
    v92 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 1, "[%{public}ld][%{public}@] Previous: %{public}@ (%{public}@) @ %{public}f", &v83, 52);
    v23 = v22;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CoreLocation: %s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  v24 = *(internal + 10);
  if (v24 != 1)
  {
    v25 = v4 & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_17;
  }

  v25 = v4 | 1;
  v26 = *(internal + 9);
  if (v26 <= 0.0)
  {
LABEL_17:
    v26 = 0.0;
  }

  v27 = *(internal + 16);
  if (v27 != 1)
  {
    v28 = v25 & 0xFFFFFFFFFFFFFFFDLL;
    goto LABEL_22;
  }

  v28 = v25 | 2;
  v29 = *(internal + 15);
  if (v29 <= v26)
  {
LABEL_22:
    v29 = v26;
  }

  v30 = *(internal + 13);
  v31 = *(internal + 21);
  if (v31 == 1)
  {
    v32 = v28 | 4;
    if (*(internal + 20) > v29)
    {
      v29 = *(internal + 20);
    }

    v33 = 1;
  }

  else
  {
    v32 = v28 & 0xFFFFFFFFFFFFFFFBLL;
    v33 = 1;
    if (v24 != 1 && v27 != 1)
    {
      if (v24 == 2 && *(internal + 9) > v29)
      {
        v32 = 1;
        v29 = *(internal + 9);
      }

      if (v27 == 2 && *(internal + 15) > v29)
      {
        v32 = 2;
        v29 = *(internal + 15);
      }

      if (v31 == 2 && *(internal + 20) > v29)
      {
        v32 = 4;
        v29 = *(internal + 20);
      }

      if (v29 == 0.0)
      {
        __assert_rtn("[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CMSuppressionManager.mm", 867, "nextTimestamp != 0.");
      }

      v33 = 2;
    }
  }

  v82 = *(internal + 12);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v34 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v38 = objc_msgSend_suppressionClientType(self, v35, v36);
    v39 = *(internal + 43);
    v41 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v40, v33);
    v43 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v42, v32);
    *buf = 134350082;
    v94 = v38;
    self = selfCopy;
    v95 = 2114;
    v96 = v39;
    v97 = 2114;
    v98 = v41;
    v99 = 2114;
    v100 = v43;
    v101 = 2050;
    v102 = v29;
    _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_INFO, "[%{public}ld][%{public}@] Next: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
  }

  v44 = sub_19B420058();
  if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v48 = off_1EAFE2828;
    selfCopy2 = self;
    v50 = objc_msgSend_suppressionClientType(self, v46, v47);
    v51 = *(internal + 43);
    v53 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v52, v33);
    v55 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v54, v32);
    v83 = 134350082;
    v84 = v50;
    v85 = 2114;
    v86 = v51;
    v87 = 2114;
    v88 = v53;
    v89 = 2114;
    v90 = v55;
    v91 = 2050;
    v92 = v29;
    LODWORD(v81) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v48, 1, "[%{public}ld][%{public}@] Next: %{public}@ (%{public}@) @ %{public}f", &v83, v81);
    v57 = v56;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CoreLocation: %s\n", v56);
    if (v57 != buf)
    {
      free(v57);
    }

    self = selfCopy2;
  }

  if (v33 == v5 && v32 == v4)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v58 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      v61 = objc_msgSend_suppressionClientType(self, v59, v60);
      v62 = *(internal + 43);
      v64 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v63, v5);
      v66 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v65, v4);
      *buf = 134350082;
      v94 = v61;
      v95 = 2114;
      v96 = v62;
      v97 = 2114;
      v98 = v64;
      v99 = 2114;
      v100 = v66;
      v101 = 2050;
      v102 = v6;
      _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_INFO, "[%{public}ld][%{public}@] No Transition: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
    }

    v67 = sub_19B420058();
    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v70 = off_1EAFE2828;
      v71 = objc_msgSend_suppressionClientType(self, v68, v69);
      v72 = *(internal + 43);
      v74 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v73, v5);
      v76 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v75, v4);
      v83 = 134350082;
      v84 = v71;
      v85 = 2114;
      v86 = v72;
      v87 = 2114;
      v88 = v74;
      v89 = 2114;
      v90 = v76;
      v91 = 2050;
      v92 = v6;
      LODWORD(v81) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v70, 1, "[%{public}ld][%{public}@] No Transition: %{public}@ (%{public}@) @ %{public}f", &v83, v81);
      v78 = v77;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CoreLocation: %s\n", v77);
      if (v78 != buf)
      {
        free(v78);
      }
    }
  }

  else
  {
    objc_msgSend_updateCurrentSuppressionEvent_timestamp_reason_facedownState_timeSinceLastFacedownStatic_(self, v45, v33, v32, v82, v29, v30);
    objc_msgSend_sendSuppressionEventToClientPrivate(self, v79, v80);
  }
}

+ (BOOL)isSourceAvailable:(unint64_t)available
{
  if (available <= 0x1F)
  {
    if ((available & 0x19) == 0 || (isAvailable = objc_msgSend_isAvailable(CMSuppressionManager, a2, available)) != 0)
    {
      LOBYTE(isAvailable) = 1;
    }
  }

  else
  {
    LOBYTE(isAvailable) = 0;
  }

  return isAvailable;
}

- (CMSuppressionManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428B30;
  v11 = sub_19B429098;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B765634;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (CMSuppressionManager)initWithClientType:(int64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B428B30;
  v13 = sub_19B429098;
  v14 = 0;
  v5 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B765764;
  v8[3] = &unk_1E7535D48;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = type;
  sub_19B420C9C(v5, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)initPrivateWithClientType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = CMSuppressionManager;
  v4 = [(CMSuppressionManager *)&v6 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CMSuppressionManagerInternal);
    v4->_isCameraCapturePose = 1;
    v4->_cameraCapturePoseUIHint = 0;
    v4->_suppressionClientType = type;
  }

  return v4;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428B30;
  v6[4] = sub_19B429098;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B765900;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMSuppressionManager;
  [(CMSuppressionManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  objc_msgSend_stopSuppressionUpdatesPrivate(self, a2, v2);
  objc_msgSend_stopViewObstructedStateUpdatesPrivate(self, v4, v5);
  objc_msgSend_stopCameraCapturePoseUpdatesPrivate(self, v6, v7);
  objc_msgSend_teardownPrivate(self->_internal, v8, v9);
  internal = self->_internal;
}

- (void)sendViewObstructedRequestPrivate
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  v5 = *(self->_internal + 234);
  v9 = @"CMViewObstructedStateEnable";
  v10[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, v5);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v10, &v9, 1);
  sub_19B659120();
}

- (void)startService
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B766900;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startSuppressionUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B766CF0;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B421668(v7, v8);
}

- (void)startSuppressionUpdatesToQueue:(id)queue withOptions:(unint64_t)options withHandler:(id)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B766D98;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = handler;
  v10[7] = options;
  sub_19B421668(v9, v10);
}

- (void)startCameraCapturePoseUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v7 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Starting CameraCapturePose updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "Starting CameraCapturePose updates", v13, 2);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager startCameraCapturePoseUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B767264;
  v12[3] = &unk_1E7532C08;
  v12[4] = self;
  v12[5] = queue;
  v12[6] = handler;
  sub_19B421668(v11, v12);
}

- (void)stopCameraCapturePoseUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping CameraCapturePose updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "Stopping CameraCapturePose updates", v9, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopCameraCapturePoseUpdates]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B767478;
  v8[3] = &unk_1E7532988;
  v8[4] = self;
  sub_19B421668(v7, v8);
}

- (void)simulateSignificantUserInteraction
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v2 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Simulated significant user interaction detected", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "Simulated significant user interaction detected", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager simulateSignificantUserInteraction]", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  if (qword_1EAFE3A68)
  {
    v6 = sub_19B420D84();
    sub_19B421668(v6, &unk_1F0E3B5F8);
  }
}

- (id)viewObstructedBlocking
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMSuppressionManager, a2, v2))
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3052000000;
    v15 = sub_19B428B30;
    v16 = sub_19B429098;
    v17 = 0;
    v3 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B767944;
    v10[3] = &unk_1E7533730;
    v10[4] = buf;
    sub_19B420C9C(v3, v10);
    v4 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Suppression is not supported on this hardware.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Suppression is not supported on this hardware.", v11, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager viewObstructedBlocking]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    return 0;
  }

  return v4;
}

- (id)staticPoseBlocking
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMSuppressionManager, a2, v2))
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3052000000;
    v15 = sub_19B428B30;
    v16 = sub_19B429098;
    v17 = 0;
    v3 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B767C78;
    v10[3] = &unk_1E7533730;
    v10[4] = buf;
    sub_19B420C9C(v3, v10);
    v4 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Suppression is not supported on this hardware.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Suppression is not supported on this hardware.", v11, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager staticPoseBlocking]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    return 0;
  }

  return v4;
}

- (void)sendSuppressionEventToClientPrivate
{
  v50 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 7))
  {
    v4 = objc_autoreleasePoolPush();
    if ((*(internal + 2) - 1) > 1 || !*(internal + 3) || (v5 = *(internal + 1), v5 == 0.0))
    {
      __assert_rtn("[CMSuppressionManager sendSuppressionEventToClientPrivate]", "CMSuppressionManager.mm", 572, "internal->fCurrentSuppressionEvent.isInitialized()");
    }

    v6 = v4;
    v7 = *(internal + 42);
    if ((v7 & 0xF) != 0)
    {
      v8 = *(internal + 2);
    }

    else
    {
      v8 = 0;
    }

    if ((v7 & 0xF) != 0)
    {
      v9 = *(internal + 3);
    }

    else
    {
      v9 = 0;
    }

    if ((v7 & 0x10) != 0)
    {
      v10 = *(internal + 4);
      v11 = *(internal + 5);
    }

    else
    {
      v10 = 0;
      v11 = 10000.0;
    }

    v12 = [CMSuppressionEvent alloc];
    FacedownStatic = objc_msgSend_initWithEventType_reason_facedownState_timestamp_timeSinceLastFacedownStatic_(v12, v13, v8, v9, v10, v5, v11);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v15 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_suppressionClientType(self, v16, v17);
      v19 = *(internal + 43);
      v20 = mach_absolute_time();
      *buf = 134349826;
      v43 = v18;
      v44 = 2114;
      v45 = v19;
      v46 = 2114;
      v47 = FacedownStatic;
      v48 = 2050;
      v49 = sub_19B41E070(v20);
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Sending to client: %{public}@,now,%{public}f", buf, 0x2Au);
    }

    v21 = sub_19B420058();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v25 = off_1EAFE2828;
      v26 = objc_msgSend_suppressionClientType(self, v23, v24);
      v27 = *(internal + 43);
      v28 = mach_absolute_time();
      v34 = 134349826;
      v35 = v26;
      v36 = 2114;
      v37 = v27;
      v38 = 2114;
      v39 = FacedownStatic;
      v40 = 2050;
      v41 = sub_19B41E070(v28);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v25, 0, "[%{public}ld][%{public}@] Sending to client: %{public}@,now,%{public}f", &v34, 42);
      v30 = v29;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager sendSuppressionEventToClientPrivate]", "CoreLocation: %s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    v32 = *(internal + 6);
    v31 = *(internal + 7);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_19B768090;
    v33[3] = &unk_1E7532B90;
    v33[4] = FacedownStatic;
    v33[5] = v32;
    objc_msgSend_addOperationWithBlock_(v31, v22, v33);

    objc_autoreleasePoolPop(v6);
  }
}

- (void)onEclipseData:(const Suppress *)data
{
  v38 = *MEMORY[0x1E69E9840];
  if (data)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_suppressionClientType(self, v6, v7);
      fLux_low = LOBYTE(data->fLux);
      v10 = *&data->fType;
      *buf = 134349568;
      v33 = v8;
      v34 = 1026;
      v35 = fLux_low;
      v36 = 2050;
      v37 = v10;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[%{public}ld] Incoming view obstructed event, shouldSuppress,%{public}u, timestampSecs,%{public}f", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v15 = off_1EAFE2828;
      v16 = objc_msgSend_suppressionClientType(self, v13, v14);
      v17 = LOBYTE(data->fLux);
      v18 = *&data->fType;
      v26 = 134349568;
      v27 = v16;
      v28 = 1026;
      v29 = v17;
      v30 = 2050;
      v31 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 1, "[%{public}ld] Incoming view obstructed event, shouldSuppress,%{public}u, timestampSecs,%{public}f", &v26, 28);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager onEclipseData:]", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (LOBYTE(data->fLux))
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (BYTE1(data->fLux))
    {
      objc_msgSend_feedViewObstructedEvent_facedown_timeSinceLastFacedownStatic_timestamp_force_(self, v12, v21, 1, 0, *&data->fFacedownStatic, *&data->fType);
    }

    else
    {
      objc_msgSend_feedViewObstructedEvent_facedown_timeSinceLastFacedownStatic_timestamp_force_(self, v12, v21, 2, 0, *&data->fFacedownStatic, *&data->fType);
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v22 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      LOWORD(v26) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Invalid data parameter!", &v26, 2);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onEclipseData:]", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }
}

- (void)onNotification:(id)notification
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_userInfo(notification, a2, notification);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"CMSuppressionEventTypeKey");
  v10 = objc_msgSend_userInfo(notification, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"CMSuppressionEventReasonKey");
  if (v7)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v16 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Invalid notification payload!", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    *v48 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 17, "Invalid notification payload!", v48, 2, *v48, *&v48[8]);
LABEL_54:
    v37 = v18;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onNotification:]", "CoreLocation: %s\n", v18);
    if (v37 != buf)
    {
      free(v37);
    }

    return;
  }

  v19 = v12;
  v22 = objc_msgSend_intValue(v7, v13, v14);
  v23 = objc_msgSend_unsignedIntValue(v19, v20, v21);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v24 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v50 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v25, v22);
    v51 = 2114;
    v52 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v26, v23);
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_INFO, "Incoming suppression notification: %{public}@ (%{public}@)", buf, 0x16u);
  }

  v27 = sub_19B420058();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v29 = off_1EAFE2828;
    *v48 = 138543618;
    *&v48[4] = objc_msgSend_stringForEventType_(CMSuppressionEvent, v28, v22);
    *&v48[12] = 2114;
    *&v48[14] = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v30, v23);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v29, 1, "Incoming suppression notification: %{public}@ (%{public}@)", v48, 22);
    v32 = v31;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager onNotification:]", "CoreLocation: %s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  if ((v22 - 1) >= 2)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v33 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349056;
      v50 = v22;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "Notification event type %{public}lu is invalid!", buf, 0xCu);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    *v48 = 134349056;
    *&v48[4] = v22;
    LODWORD(v47) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 17, "Notification event type %{public}lu is invalid!", v48, v47, *v48, *&v48[8]);
    goto LABEL_54;
  }

  if ((v23 & 7) == 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v35 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349056;
      v50 = v23;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "Notification event reason %{public}lu is invalid!", buf, 0xCu);
    }

    v36 = sub_19B420058();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    *v48 = 134349056;
    *&v48[4] = v23;
    LODWORD(v47) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 17, "Notification event reason %{public}lu is invalid!", v48, v47, *v48, *&v48[8]);
    goto LABEL_54;
  }

  if (v23)
  {
    v38 = mach_absolute_time();
    v39 = sub_19B41E070(v38);
    objc_msgSend_feedViewObstructedEvent_facedown_timeSinceLastFacedownStatic_timestamp_force_(self, v40, v22, 2, 0, 0.0, v39);
    if ((v23 & 2) == 0)
    {
LABEL_32:
      if ((v23 & 4) != 0)
      {
        goto LABEL_59;
      }

      return;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_32;
  }

  v41 = mach_absolute_time();
  v42 = sub_19B41E070(v41);
  objc_msgSend_feedSmartPowerNapEvent_timestamp_force_(self, v43, v22, 0, v42);
  if ((v23 & 4) != 0)
  {
LABEL_59:
    v44 = mach_absolute_time();
    v45 = sub_19B41E070(v44);
    objc_msgSend_feedDevicePresenceEvent_timestamp_force_(self, v46, v22, 0, v45);
  }
}

- (void)updateCurrentSuppressionEvent:(int64_t)event timestamp:(double)timestamp reason:(unint64_t)reason facedownState:(unint64_t)state timeSinceLastFacedownStatic:(double)static
{
  v51 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v14 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_suppressionClientType(self, v15, v16);
    v18 = *(internal + 43);
    *buf = 134350082;
    v42 = v17;
    v43 = 2114;
    v44 = v18;
    v45 = 2114;
    v46 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v19, event);
    v47 = 2114;
    v48 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v20, reason);
    v49 = 2050;
    timestampCopy = timestamp;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] ==== Updating current suppression event: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v24 = off_1EAFE2828;
    v25 = objc_msgSend_suppressionClientType(self, v22, v23);
    v26 = *(internal + 43);
    v31 = 134350082;
    v32 = v25;
    v33 = 2114;
    v34 = v26;
    v35 = 2114;
    v36 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v27, event);
    v37 = 2114;
    v38 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v28, reason);
    v39 = 2050;
    timestampCopy2 = timestamp;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v24, 0, "[%{public}ld][%{public}@] ==== Updating current suppression event: %{public}@ (%{public}@) @ %{public}f", &v31, 52);
    v30 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateCurrentSuppressionEvent:timestamp:reason:facedownState:timeSinceLastFacedownStatic:]", "CoreLocation: %s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  internal[1] = timestamp;
  *(internal + 2) = event;
  *(internal + 3) = reason;
  *(internal + 4) = state;
  internal[5] = static;
}

- (CMSuppressionEventStruct)currentSuppressionEvent
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5812000000;
  v13 = sub_19B768ECC;
  v14 = nullsub_192;
  v15 = &unk_19B840009;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v5 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B768EE4;
  v9[3] = &unk_1E75338E8;
  v9[4] = self;
  v9[5] = &v10;
  sub_19B420C9C(v5, v9);
  v6 = v11;
  v7 = *(v11 + 4);
  *&retstr->timestamp = *(v11 + 3);
  *&retstr->reason = v7;
  *&retstr->timeSinceLastFacedownStatic = v6[10];
  _Block_object_dispose(&v10, 8);
  return result;
}

- (void)feedViewObstructedEvent:(int64_t)event facedown:(unint64_t)facedown timeSinceLastFacedownStatic:(double)static timestamp:(double)timestamp force:(BOOL)force
{
  v13 = sub_19B420D84();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B768FB8;
  v14[3] = &unk_1E7535D90;
  forceCopy = force;
  v14[4] = self;
  v14[5] = event;
  *&v14[6] = timestamp;
  v14[7] = facedown;
  *&v14[8] = static;
  sub_19B421668(v13, v14);
}

- (void)feedSmartPowerNapEvent:(int64_t)event timestamp:(double)timestamp force:(BOOL)force
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B76964C;
  v10[3] = &unk_1E75343F8;
  forceCopy = force;
  v10[4] = self;
  v10[5] = event;
  *&v10[6] = timestamp;
  sub_19B421668(v9, v10);
}

- (void)feedDevicePresenceEvent:(int64_t)event timestamp:(double)timestamp force:(BOOL)force
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B769EC8;
  v10[3] = &unk_1E75343F8;
  forceCopy = force;
  v10[4] = self;
  v10[5] = event;
  *&v10[6] = timestamp;
  sub_19B421668(v9, v10);
}

- (void)startSuppressionUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isSourceAvailable_(CMSuppressionManager, v8, *(internal + 42)))
  {
    v10 = *(internal + 7);
    if (v10 != queue)
    {

      *(internal + 7) = queue;
    }

    v11 = *(internal + 6);
    if (v11 != handler)
    {

      *(internal + 6) = objc_msgSend_copy(handler, v12, v13);
    }

    updated = objc_msgSend_updateCurrentSuppressionEvent_timestamp_reason_facedownState_timeSinceLastFacedownStatic_(self, v9, 0, 0, 0, 0.0, 0.0);
    if ((*(internal + 336) & 0x19) != 0 && !*(internal + 14))
    {
      updated = sub_19B421620();
      if ((updated & 0x200) != 0)
      {
        operator new();
      }
    }

    if (qword_1EAFE3A58 != -1)
    {
      dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
    }

    if (qword_1EAFE3A68 && !*(internal + 41))
    {
      operator new();
    }

    v17 = *(internal + 42);
    if ((v17 & 2) != 0 && !*(internal + 25))
    {
      *(internal + 25) = objc_alloc_init(off_1ED71C840(updated));
      objc_initWeak(buf, self);
      v31 = *(internal + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B76ABCC;
      block[3] = &unk_1E7533528;
      objc_copyWeak(&v35, buf);
      block[4] = internal;
      dispatch_async(v31, block);
      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
      if ((*(internal + 42) & 4) != 0)
      {
LABEL_18:
        if (!*(internal + 26))
        {
          v18 = objc_alloc(off_1ED71C848(updated));
          v20 = objc_msgSend_initWithDelegate_(v18, v19, self);
          *(internal + 26) = v20;
          objc_msgSend_registerForWatchPresence(v20, v21, v22);
          objc_msgSend_getCurrentWatchPresenceStatus(*(internal + 26), v23, v24);
        }
      }
    }

    else if ((v17 & 4) != 0)
    {
      goto LABEL_18;
    }

    v32 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v15, v16);
    objc_msgSend_addObserver_selector_name_object_suspensionBehavior_(v32, v33, self, sel_onNotification_, @"CMSuppressionEventSendNotification", 0, 4);
    return;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v25 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    v26 = *(internal + 42);
    *buf = 134349056;
    v39 = v26;
    _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Suppression updates for sources=%{public}lu not available on this platform", buf, 0xCu);
  }

  v27 = sub_19B420058();
  if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v28 = *(internal + 42);
    v36 = 134349056;
    v37 = v28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Suppression updates for sources=%{public}lu not available on this platform", &v36, 12);
    v30 = v29;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager startSuppressionUpdatesPrivateToQueue:withHandler:]", "CoreLocation: %s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }
  }
}

- (void)onViewObstructedStateData:(const ViewObstructedState *)data
{
  v18 = *MEMORY[0x1E69E9840];
  if (data)
  {
    internal = self->_internal;
    v5 = *&data->fSuppress.fTimeSinceLastFacedownStatic;
    v6 = *&data->fMeanProbabilities[3];
    v7 = *&data->fSuppress.fOrientation;
    *(internal + 74) = LODWORD(data->fMeanProbabilities[7]);
    *(internal + 248) = v7;
    *(internal + 264) = v5;
    *(internal + 280) = v6;
    v8 = *&data->fType;
    v9 = sub_19B420D84();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B76B0F0;
    v14[3] = &unk_1E75357E0;
    v14[4] = self;
    v15 = v8;
    sub_19B421668(v9, v14);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v10 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Invalid data parameter!", v16, 2);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onViewObstructedStateData:]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

- (void)onCameraCapturePoseData:(const CameraCapturePose *)data
{
  v15 = *MEMORY[0x1E69E9840];
  if (data)
  {
    var1 = data->var1;
    var2 = data->var2;
    v6 = sub_19B420D84();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B76B308;
    v11[3] = &unk_1E75343A8;
    v12 = var1;
    v11[4] = self;
    v11[5] = var2;
    sub_19B421668(v6, v11);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v7 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 16, "Invalid data parameter!", v13, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onCameraCapturePoseData:]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

- (void)startViewObstructedStateUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v7 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Starting view obstructed state updates.", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "Starting view obstructed state updates.", v13, 2);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager startViewObstructedStateUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B76B5DC;
  v12[3] = &unk_1E7532C08;
  v12[4] = self;
  v12[5] = queue;
  v12[6] = handler;
  sub_19B421668(v11, v12);
}

- (void)stopViewObstructedStateUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping view obstructed state updates.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "Stopping view obstructed state updates.", v9, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopViewObstructedStateUpdates]", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B76B830;
  v8[3] = &unk_1E7532988;
  v8[4] = self;
  sub_19B421668(v7, v8);
}

- (void)sendViewObstructedStateToClientPrivate:(float)private
{
  v81 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 7))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E696AEC0];
    v8 = sub_19B449494(internal[253]);
    v10 = objc_msgSend_stringWithUTF8String_(v7, v9, v8);
    v11 = MEMORY[0x1E696AEC0];
    sub_19B688FAC(internal[254], __p);
    if (v70 >= 0)
    {
      v13 = objc_msgSend_stringWithUTF8String_(v11, v12, __p);
    }

    else
    {
      v13 = objc_msgSend_stringWithUTF8String_(v11, v12, *__p);
    }

    v14 = v13;
    if (SHIBYTE(v70) < 0)
    {
      operator delete(*__p);
    }

    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    v19 = objc_msgSend_initWithCapacity_(v15, v16, 8);
    for (i = 0; i != 32; i += 4)
    {
      LODWORD(v20) = *&internal[i + 268];
      v22 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v17, v18, v20);
      objc_msgSend_addObject_(v19, v23, v22);
    }

    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v24 = off_1EAFE2828;
    privateCopy = private;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      v26 = internal[250];
      v27 = internal[252];
      v28 = internal[253];
      v29 = internal[254];
      v30 = *(internal + 255);
      v31 = *(internal + 259);
      *__p = 134350850;
      *&__p[4] = privateCopy;
      v67 = 1026;
      v68 = v26;
      v69 = 1026;
      v70 = v27;
      v71 = 1026;
      v72 = v28;
      v73 = 1026;
      v74 = v29;
      v75 = 2050;
      v76 = v30;
      v77 = 2050;
      v78 = v31;
      v79 = 2114;
      v80 = v19;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_INFO, "Incoming view obstructed state event, timestampSecs,%{public}f,shouldSuppress,%{public}u,currentState,%{public}u,orientation,%{public}u,motionType,%{public}u,lux,%{public}f,pocketProbability,%{public}f,meanProbabilities,%{public}@", __p, 0x42u);
    }

    v32 = sub_19B420058();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v33 = internal[250];
      v34 = internal[252];
      v35 = internal[253];
      v36 = internal[254];
      v37 = *(internal + 255);
      v38 = *(internal + 259);
      v50 = 134350850;
      v51 = privateCopy;
      v52 = 1026;
      v53 = v33;
      v54 = 1026;
      v55 = v34;
      v56 = 1026;
      v57 = v35;
      v58 = 1026;
      v59 = v36;
      v60 = 2050;
      v61 = v37;
      v62 = 2050;
      v63 = v38;
      v64 = 2114;
      v65 = v19;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, off_1EAFE2828, 1, "Incoming view obstructed state event, timestampSecs,%{public}f,shouldSuppress,%{public}u,currentState,%{public}u,orientation,%{public}u,motionType,%{public}u,lux,%{public}f,pocketProbability,%{public}f,meanProbabilities,%{public}@", &v50, 66);
      v40 = v39;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager sendViewObstructedStateToClientPrivate:]", "CoreLocation: %s\n", v39);
      if (v40 != __p)
      {
        free(v40);
      }
    }

    v41 = [CMViewObstructedStateEvent alloc];
    LODWORD(v42) = *(internal + 255);
    LODWORD(v43) = *(internal + 259);
    ShouldSupress_currentState_orientation_motionType_lux_pocketProbability_meanProbabilitiesFloatArray = objc_msgSend_initWithShouldSupress_currentState_orientation_motionType_lux_pocketProbability_meanProbabilitiesFloatArray_(v41, v44, internal[250], internal[252], v10, v14, v19, v42, v43);
    v46 = *(internal + 30);
    v47 = *(internal + 7);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_19B76BCB4;
    v49[3] = &unk_1E7532B90;
    v49[4] = ShouldSupress_currentState_orientation_motionType_lux_pocketProbability_meanProbabilitiesFloatArray;
    v49[5] = v46;
    objc_msgSend_addOperationWithBlock_(v47, v48, v49);

    objc_autoreleasePoolPop(v6);
  }
}

- (void)startViewObstructedStateUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v8, v9))
  {
    v10 = internal[7];
    if (v10 != queue)
    {

      internal[7] = queue;
    }

    v11 = internal[30];
    if (v11 != handler)
    {

      internal[30] = objc_msgSend_copy(handler, v12, v13);
    }

    if (qword_1EAFE3A58 != -1)
    {
      dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
    }

    if (qword_1EAFE3A68)
    {
      operator new();
    }
  }
}

- (void)stopViewObstructedStateUpdatesPrivate
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v4, v5))
  {
    if (*(internal + 38))
    {
      if (qword_1EAFE3A58 != -1)
      {
        dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
      }

      sub_19B426A14(qword_1EAFE3A68, 1, *(internal + 38));
      v6 = *(internal + 38);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      *(internal + 38) = 0;
    }

    v7 = *(internal + 7);
    if (v7)
    {

      *(internal + 7) = 0;
    }

    v8 = *(internal + 30);
    if (v8)
    {

      *(internal + 30) = 0;
    }

    *(internal + 248) = 0u;
    v9 = internal + 248;
    *(v9 + 12) = 0;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
  }
}

- (void)startCameraCapturePoseUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v8, v9))
  {
    v10 = internal[39];
    if (v10 != queue)
    {

      internal[39] = queue;
    }

    v11 = internal[40];
    if (v11 != handler)
    {

      internal[40] = objc_msgSend_copy(handler, v12, v13);
    }
  }
}

- (void)stopCameraCapturePoseUpdatesPrivate
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v4, v5))
  {
    v6 = internal[39];
    if (v6)
    {

      internal[39] = 0;
    }

    v7 = internal[40];
    if (v7)
    {

      internal[40] = 0;
    }
  }
}

- (void)handleSmartPowerNapState:(unsigned __int8)state
{
  stateCopy = state;
  v26 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v5 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v23 = objc_msgSend_suppressionClientType(self, v6, v7);
    v24 = 1026;
    v25 = stateCopy;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[%{public}ld] Incoming smart power nap event, %{public}u", buf, 0x12u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v11 = off_1EAFE2828;
    v18 = 134349312;
    v19 = objc_msgSend_suppressionClientType(self, v9, v10);
    v20 = 1026;
    v21 = stateCopy;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "[%{public}ld] Incoming smart power nap event, %{public}u", &v18, 18);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager handleSmartPowerNapState:]", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (stateCopy == 1)
  {
    v14 = 1;
  }

  else
  {
    if (stateCopy)
    {
      return;
    }

    v14 = 2;
  }

  v15 = mach_absolute_time();
  v16 = sub_19B41E070(v15);
  objc_msgSend_feedSmartPowerNapEvent_timestamp_force_(self, v17, v14, 0, v16);
}

- (void)managerDidDetectEvent:(unint64_t)event
{
  v26 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v5 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v23 = objc_msgSend_suppressionClientType(self, v6, v7);
    v24 = 2050;
    eventCopy = event;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[%{public}ld] Incoming device presence event, %{public}lu", buf, 0x16u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v11 = off_1EAFE2828;
    v18 = 134349312;
    v19 = objc_msgSend_suppressionClientType(self, v9, v10);
    v20 = 2050;
    eventCopy2 = event;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "[%{public}ld] Incoming device presence event, %{public}lu", &v18, 22);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager managerDidDetectEvent:]", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (event == 1)
  {
    v14 = 2;
  }

  else
  {
    if (event != 2)
    {
      return;
    }

    v14 = 1;
  }

  v15 = mach_absolute_time();
  v16 = sub_19B41E070(v15);
  objc_msgSend_feedDevicePresenceEvent_timestamp_force_(self, v17, v14, 0, v16);
}

- (void)managerDidFindError:(unint64_t)error
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v14 = sub_19B76C480(error);
    v15 = 2050;
    errorCopy = error;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "Device presence error: %{public}s %{public}lu", buf, 0x16u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v6 = off_1EAFE2828;
    v9 = 136446466;
    v10 = sub_19B76C480(error);
    v11 = 2050;
    errorCopy2 = error;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v6, 16, "Device presence error: %{public}s %{public}lu", &v9, 22);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager managerDidFindError:]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

@end