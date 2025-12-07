uint64_t sub_19B9C01B4(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLInternalTearDownLocationAuthPrompt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalTearDownLocationAuthPrompt, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v6, v7, v8);
  v11 = objc_msgSend_tearDownLocationAuthPromptForBundleID_orBundlePath_(v9, v10, a1, a2);
  os_activity_scope_leave(&v13);
  return v11;
}

uint64_t sub_19B9C031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetLocationButtonUseMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetLocationButtonUseMode, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setLocationButtonUseMode_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return v13;
}

uint64_t CLInternalSetPinnedLocationAuthorization(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetPinnedLocationAuthorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v2, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetPinnedLocationAuthorization, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
  v10 = objc_msgSend_setPinnedLocationAuthorization_(v7, v8, a1, v9);
  os_activity_scope_leave(&v12);
  return v10;
}

uint64_t CLInternalGetPinnedLocationAuthorizationState(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetPinnedLocationAuthorizationState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v2, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetPinnedLocationAuthorizationState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
  PinnedLocationAuthorizationState = objc_msgSend_getPinnedLocationAuthorizationState_(v7, v8, a1, v9);
  os_activity_scope_leave(&v12);
  return PinnedLocationAuthorizationState;
}

uint64_t sub_19B9C073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetAuthorizationStatusByType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  os_activity_scope_enter(v12, &v21);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290818;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = a1;
    v30 = 2114;
    v31 = a2;
    v32 = 2114;
    v33 = a3;
    v34 = 2114;
    v35 = a4;
    v36 = 2050;
    v37 = a5;
    v38 = 2050;
    v39 = a6;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetAuthorizationStatusByType, event:%{public, location:escape_only}s, bundleId:%{public, location:escape_only}@, bundlePath:%{public, location:escape_only}@, zoneId:%{public, location:escape_only}@, subIdentityId:%{public, location:escape_only}@, auth:%{public, location:CLClientAuthorizationStatus}lld, compensation:%{public, location:CLClientCorrectiveCompensation}lld}", buf, 0x58u);
  }

  v17 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v14, v15, v16);
  v19 = objc_msgSend_setAuthorizationStatusByType_withCorrectiveCompensation_andZoneIdentifier_andSubIdentityIdentifier_forBundleID_orBundlePath_(v17, v18, a5, a6, a3, a4, a1, a2);
  os_activity_scope_leave(&v21);
  return v19;
}

uint64_t sub_19B9C0914(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_updatePillButtonChoiceForOutstandingPrompt_, a1, v6);
}

uint64_t sub_19B9C0954(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_, a1, a2);
}

uint64_t sub_19B9C09AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_, a1, a2);
}

uint64_t sub_19B9C09F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_, a1, a2);
}

uint64_t sub_19B9C0A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetIncidentalUseMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetIncidentalUseMode, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setIncidentalUseMode_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return v13;
}

uint64_t sub_19B9C0C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetVisitHistoryAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetVisitHistoryAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setVisitHistoryAccess_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return v13;
}

uint64_t sub_19B9C0D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetLearnedRoutesAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetLearnedRoutesAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setLearnedRoutesAccess_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return v13;
}

uint64_t sub_19B9C0EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetVisitHistoryAccessAllowedTime", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetVisitHistoryAccessAllowedTime, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  VisitHistoryAccessAllowedTime_forBundleID_orBundlePath = objc_msgSend_getVisitHistoryAccessAllowedTime_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return VisitHistoryAccessAllowedTime_forBundleID_orBundlePath;
}

uint64_t sub_19B9C1054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetVisitHistoryAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetVisitHistoryAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  VisitHistoryAccess_forBundleID_orBundlePath = objc_msgSend_getVisitHistoryAccess_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return VisitHistoryAccess_forBundleID_orBundlePath;
}

uint64_t sub_19B9C11C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetLearnedRoutesAccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetLearnedRoutesAccess, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  LearnedRoutesAccess_forBundleID_orBundlePath = objc_msgSend_getLearnedRoutesAccess_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return LearnedRoutesAccess_forBundleID_orBundlePath;
}

uint64_t sub_19B9C1334(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_setBackgroundIndicatorForBundleID_orBundlePath_enabled_, a1, a2);
}

double sub_19B9C138C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(a2 + 192);
  v6 = *(a2 + 200);
  v8 = v7 + 1.414;
  if (v7 >= 180.0)
  {
    v8 = -1.0;
  }

  if (*(a2 + 104) < 0.0 || v7 <= 0.0)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = v8;
  }

  if (v6 > 0.0 && (v11 = *(a2 + 208), v11 > 0.0) && (v12 = *(a2 + 216), v12 >= 0.0))
  {
    memset(&v31[7], 0, 32);
    *(a1 + 41) = *v31;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 57) = *&v31[16];
    *(a1 + 72) = 0;
    v15 = v6 / 2.45;
    v14 = v11 / 2.45;
    if (v12 > 0.0)
    {
      v27 = tan(v12 * -2.0 * 0.0174532925);
      v28 = sqrt((v15 * v15 - v14 * v14) * (v15 * v15 - v14 * v14) * 0.25 * (v27 * v27) / (v27 * v27 + 1.0));
      *(a1 + 16) = v28;
      v29 = v15 * v15 + v14 * v14;
      v30 = (v28 + v28) / v27;
      v14 = (v29 + v30) * 0.5;
      v15 = (v29 - v30) * 0.5;
    }
  }

  else
  {
    v13 = *(a2 + 80);
    memset(&v31[7], 0, 32);
    *(a1 + 41) = *v31;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 57) = *&v31[16];
    *(a1 + 72) = 0;
    v14 = v13 * v13 * 0.5;
    v15 = v14;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  v16 = v10 * v10;
  if (v10 <= 0.0)
  {
    v16 = -1.0;
  }

  *(a1 + 24) = v16;
  v17 = *(a2 + 96);
  if (v17 > 19.4444444 && v15 + v14 < 25.0)
  {
    __asm { FMOV            V2.2D, #25.0 }

    *a1 = _Q2;
    *(a1 + 16) = 0;
    v15 = 25.0;
    v14 = 25.0;
  }

  if (v15 + v14 < 156.25)
  {
    *a1 = vdupq_n_s64(0x4063880000000000uLL);
    *(a1 + 16) = 0;
  }

  if (a3 && v16 > 0.0)
  {
    v23 = v17 == 0.0;
    v24 = 3.0;
    if ((v23 | *(a2 + 228)))
    {
      v24 = 15.0;
    }

    v25 = sqrt(v16);
    v16 = (v25 + v24) * (v25 + v24);
    *(a1 + 24) = v16;
  }

  if (v16 > 0.0 && v16 < 42.25)
  {
    *(a1 + 24) = 0x4045200000000000;
  }

  return sub_19B9C1640(a1);
}

double sub_19B9C1640(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "fVarEast <= 0.0", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v25[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 17, "fVarEast <= 0.0", v25, 2);
      goto LABEL_34;
    }

    return result;
  }

  v2 = *(a1 + 8);
  if (v2 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "fVarNorth <= 0.0", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v25[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 17, "fVarNorth <= 0.0", v25, 2);
      goto LABEL_34;
    }

    return result;
  }

  v3 = *(a1 + 16);
  if (v3 >= 0.0)
  {
    v13 = *(a1 + 24);
    if (v13 <= 0.0 || v13 >= 32400.0)
    {
      *(a1 + 24) = 0xBFF0000000000000;
      *(a1 + 40) = 0;
      v21 = -v3;
      v22 = v1 * v2 - v3 * v3;
      *(a1 + 32) = v22;
      *(a1 + 48) = v2;
      *(a1 + 56) = v21;
      *(a1 + 64) = v1;
      if (v22 != 0.0)
      {
        *(a1 + 48) = v2 / v22;
        *(a1 + 56) = v21 / v22;
        result = v1 / v22;
        *(a1 + 64) = result;
        return result;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v23 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_FAULT, "CLMM, Unexpected determinant of 0", buf, 2u);
      }

      v24 = sub_19B87DD40();
      if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
      {
        return result;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v14 = v2 * v13;
      v15 = -(v13 * v3);
      *(a1 + 48) = v2 * v13;
      *(a1 + 56) = v15;
      v16 = v1 * v13;
      v17 = v1 * v2 - v3 * v3;
      *(a1 + 64) = v16;
      *(a1 + 72) = v17;
      v18 = v17 * v13;
      *(a1 + 32) = v17 * v13;
      if (v17 * v13 != 0.0)
      {
        *(a1 + 48) = v14 / v18;
        *(a1 + 56) = v15 / v18;
        result = v17 / v18;
        *(a1 + 64) = v16 / v18;
        *(a1 + 72) = result;
        return result;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v19 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "CLMM, Unexpected determinant of 0", buf, 2u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
      {
        return result;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_48:
        v25[0] = 0;
        v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 17, "CLMM, Unexpected determinant of 0", v25, 2);
LABEL_34:
        v12 = v7;
        sub_19B885924("Generic", 1, 0, 0, "void CLMapDataUtil::CovarInvDet::calcInvAndDet()", "CoreLocation: %s\n", v7);
        if (v12 != buf)
        {
          free(v12);
        }

        return result;
      }
    }

    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    goto LABEL_48;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "fVarEastNorth < 0.0", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v25[0] = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 17, "fVarEastNorth < 0.0", v25, 2);
    goto LABEL_34;
  }

  return result;
}

void sub_19B9C1C60(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 16) = 0;
  v2 = *(a1 + 32);
  if (v2 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "determinant <= 0.0", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E4F8);
      }

      v14[0] = 0;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 17, "determinant <= 0.0", v14, 2);
      sub_19B885924("Generic", 1, 0, 0, "void CLMapDataUtil::CovarInvDet::calculateScoreAndVarFactor(MapMatcherScore &) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    if (*(a1 + 40))
    {
      v7 = v5 * ((*(a2 + 32) + *(a2 + 32)) * *(a2 + 40)) + *(a2 + 32) * *(a2 + 32) * v4 + *(a2 + 40) * *(a2 + 40) * v6 + *(a2 + 56) * *(a2 + 56) * *(a1 + 72);
      v8 = v7 / 3.0;
      v9 = 248.050213;
    }

    else
    {
      v7 = v5 * ((*(a2 + 32) + *(a2 + 32)) * *(a2 + 40)) + *(a2 + 32) * *(a2 + 32) * v4 + *(a2 + 40) * *(a2 + 40) * v6;
      v8 = v7 * 0.5;
      v9 = 39.4784176;
    }

    v13 = exp(v7 * -0.5);
    *(a2 + 16) = v8;
    *a2 = v13 / sqrt(v2 * v9);
  }
}

os_log_t sub_19B9C1ECC()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9C22A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9C22E0(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = MEMORY[0x1E696AD98];
    v9 = objc_msgSend_roadID(a2, v6, v7, v8);
    v12 = objc_msgSend_numberWithUnsignedLongLong_(v5, v10, v9, v11);
    objc_msgSend_setValue_forKey_(v4, v13, v12, @"roadID");
    v14 = MEMORY[0x1E696AD98];
    v18 = objc_msgSend_roadClass(a2, v15, v16, v17);
    v21 = objc_msgSend_numberWithUnsignedInt_(v14, v19, v18, v20);
    objc_msgSend_setValue_forKey_(v4, v22, v21, @"roadClass");
    v23 = MEMORY[0x1E696AD98];
    v27 = objc_msgSend_formOfWay(a2, v24, v25, v26);
    v30 = objc_msgSend_numberWithUnsignedInt_(v23, v28, v27, v29);
    objc_msgSend_setValue_forKey_(v4, v31, v30, @"formOfWay");
    v32 = MEMORY[0x1E696AD98];
    v36 = objc_msgSend_travelDirection(a2, v33, v34, v35);
    v39 = objc_msgSend_numberWithUnsignedInt_(v32, v37, v36, v38);
    objc_msgSend_setValue_forKey_(v4, v40, v39, @"travelDirection");
    v41 = MEMORY[0x1E696AD98];
    v45 = objc_msgSend_rampType(a2, v42, v43, v44);
    v48 = objc_msgSend_numberWithUnsignedInt_(v41, v46, v45, v47);
    objc_msgSend_setValue_forKey_(v4, v49, v48, @"rampType");
    v50 = MEMORY[0x1E696AD98];
    v54 = objc_msgSend_speedLimit(a2, v51, v52, v53);
    v57 = objc_msgSend_numberWithUnsignedInt_(v50, v55, v54, v56);
    objc_msgSend_setValue_forKey_(v4, v58, v57, @"speedLimit");
    v59 = MEMORY[0x1E696AD98];
    isDrivable = objc_msgSend_isDrivable(a2, v60, v61, v62);
    v66 = objc_msgSend_numberWithBool_(v59, v64, isDrivable, v65);
    objc_msgSend_setValue_forKey_(v4, v67, v66, @"isDrivable");
    v68 = MEMORY[0x1E696AD98];
    isRoadPedestrianNavigable = objc_msgSend_isRoadPedestrianNavigable(a2, v69, v70, v71);
    v75 = objc_msgSend_numberWithBool_(v68, v73, isRoadPedestrianNavigable, v74);
    objc_msgSend_setValue_forKey_(v4, v76, v75, @"isRoadPedestrianNavigable");
    v77 = MEMORY[0x1E696AD98];
    isTunnel = objc_msgSend_isTunnel(a2, v78, v79, v80);
    v84 = objc_msgSend_numberWithBool_(v77, v82, isTunnel, v83);
    objc_msgSend_setValue_forKey_(v4, v85, v84, @"isTunnel");
    v86 = MEMORY[0x1E696AD98];
    isBridge = objc_msgSend_isBridge(a2, v87, v88, v89);
    v93 = objc_msgSend_numberWithBool_(v86, v91, isBridge, v92);
    objc_msgSend_setValue_forKey_(v4, v94, v93, @"isBridge");
    v95 = MEMORY[0x1E696AD98];
    isRail = objc_msgSend_isRail(a2, v96, v97, v98);
    v102 = objc_msgSend_numberWithBool_(v95, v100, isRail, v101);
    objc_msgSend_setValue_forKey_(v4, v103, v102, @"isRail");
    v104 = MEMORY[0x1E696AD98];
    started = objc_msgSend_startJunction(a2, v105, v106, v107);
    v112 = objc_msgSend_junctionIndex(started, v109, v110, v111);
    v115 = objc_msgSend_numberWithUnsignedInt_(v104, v113, v112, v114);
    objc_msgSend_setValue_forKey_(v4, v116, v115, @"startJunction");
    v117 = MEMORY[0x1E696AD98];
    v121 = objc_msgSend_endJunction(a2, v118, v119, v120);
    v125 = objc_msgSend_junctionIndex(v121, v122, v123, v124);
    v128 = objc_msgSend_numberWithUnsignedInt_(v117, v126, v125, v127);
    objc_msgSend_setValue_forKey_(v4, v129, v128, @"stopJunction");
    v130 = MEMORY[0x1E696AD98];
    v134 = objc_msgSend_startJunction(a2, v131, v132, v133);
    v138 = objc_msgSend_isOnTileBorder(v134, v135, v136, v137);
    v141 = objc_msgSend_numberWithBool_(v130, v139, v138, v140);
    objc_msgSend_setValue_forKey_(v4, v142, v141, @"startTileBorder");
    v143 = MEMORY[0x1E696AD98];
    v147 = objc_msgSend_endJunction(a2, v144, v145, v146);
    v151 = objc_msgSend_isOnTileBorder(v147, v148, v149, v150);
    v154 = objc_msgSend_numberWithBool_(v143, v152, v151, v153);
    objc_msgSend_setValue_forKey_(v4, v155, v154, @"endTileBorder");
    v156 = MEMORY[0x1E696AD98];
    v160 = objc_msgSend_bikeableSide(a2, v157, v158, v159);
    v163 = objc_msgSend_numberWithUnsignedInt_(v156, v161, v160, v162);
    objc_msgSend_setValue_forKey_(v4, v164, v163, @"bikeableSide");
    v165 = MEMORY[0x1E696AD98];
    v169 = objc_msgSend_walkableSide(a2, v166, v167, v168);
    v172 = objc_msgSend_numberWithUnsignedInt_(v165, v170, v169, v171);
    objc_msgSend_setValue_forKey_(v4, v173, v172, @"walkableSide");
    v174 = MEMORY[0x1E696AD98];
    v178 = objc_msgSend_coordinateCount(a2, v175, v176, v177);
    v181 = objc_msgSend_numberWithUnsignedInt_(v174, v179, v178, v180);
    objc_msgSend_setValue_forKey_(v4, v182, v181, @"coordinateCount");
    if (objc_msgSend_coordinateCount(a2, v183, v184, v185))
    {
      v189 = 0;
      v190 = 0;
      do
      {
        v191 = MEMORY[0x1E696AEC0];
        v192 = *(objc_msgSend_coordinates3d(a2, v186, v187, v188) + v189);
        v196 = *(objc_msgSend_coordinates3d(a2, v193, v194, v195) + v189 + 8);
        v200 = objc_msgSend_coordinates3d(a2, v197, v198, v199);
        v203 = objc_msgSend_stringWithFormat_(v191, v201, @"%.7lf,%.7lf,%.2lf", v202, v192, v196, *(v200 + v189 + 16));
        v206 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v204, @"coord%d", v205, v190);
        objc_msgSend_setValue_forKey_(v4, v207, v203, v206);
        ++v190;
        v189 += 24;
      }

      while (objc_msgSend_coordinateCount(a2, v208, v209, v210) > v190);
    }

    v211 = *(*(v3[4] + 8) + 40);

    return objc_msgSend_addObject_(v211, v186, v4, v188);
  }

  return result;
}

void *sub_19B9C2740(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = objc_msgSend_code(a2, a2, a3, a4);
    v10 = objc_msgSend_domain(a2, v7, v8, v9);
    v14 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
    NSLog(&cfstr_CltspClmmMaphe_3.isa, v6, v10, v14);
  }

  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    result = objc_msgSend_clearRoadTiles(*(*(a1 + 32) + 16), v16, v17, v18);
  }

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 24) = 0;
  return result;
}

void sub_19B9C2A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void *sub_19B9C2AB0(void *result, void *a2)
{
  if (a2)
  {
    v145 = result;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = MEMORY[0x1E696AD98];
    v8 = objc_msgSend_buildingID(a2, v5, v6, v7);
    v11 = objc_msgSend_numberWithUnsignedLongLong_(v4, v9, v8, v10);
    objc_msgSend_setValue_forKey_(v3, v12, v11, @"buildingID");
    v13 = MEMORY[0x1E696AD98];
    v17 = objc_msgSend_tileSetStyle(a2, v14, v15, v16);
    v20 = objc_msgSend_numberWithUnsignedInt_(v13, v18, v17, v19);
    objc_msgSend_setValue_forKey_(v3, v21, v20, @"tileSetStyle");
    v22 = MEMORY[0x1E696AD98];
    hasTerrainElevation = objc_msgSend_hasTerrainElevation(a2, v23, v24, v25);
    v29 = objc_msgSend_numberWithUnsignedInt_(v22, v27, hasTerrainElevation, v28);
    objc_msgSend_setValue_forKey_(v3, v30, v29, @"hasTerrainElevation");
    v144 = v3;
    v146 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setValue_forKey_(v3, v31, v146, @"sections");
    v35 = objc_msgSend_sections(a2, v32, v33, v34);
    if (objc_msgSend_count(v35, v36, v37, v38))
    {
      v41 = 0;
      do
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v46 = objc_msgSend_sections(a2, v43, v44, v45);
        v49 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, v41, v48);
        if (v49)
        {
          v53 = v49;
          v54 = MEMORY[0x1E696AD98];
          objc_msgSend_maxBaseHeight(v49, v50, v51, v52);
          v58 = objc_msgSend_numberWithDouble_(v54, v55, v56, v57);
          objc_msgSend_setValue_forKey_(v42, v59, v58, @"maxBaseHeight");
          v60 = MEMORY[0x1E696AD98];
          objc_msgSend_minBaseHeight(v53, v61, v62, v63);
          v67 = objc_msgSend_numberWithDouble_(v60, v64, v65, v66);
          objc_msgSend_setValue_forKey_(v42, v68, v67, @"minBaseHeight");
          v69 = MEMORY[0x1E696AD98];
          objc_msgSend_topHeight(v53, v70, v71, v72);
          v76 = objc_msgSend_numberWithDouble_(v69, v73, v74, v75);
          objc_msgSend_setValue_forKey_(v42, v77, v76, @"topHeight");
          v78 = MEMORY[0x1E696AD98];
          objc_msgSend_terrainElevation(v53, v79, v80, v81);
          v85 = objc_msgSend_numberWithDouble_(v78, v82, v83, v84);
          objc_msgSend_setValue_forKey_(v42, v86, v85, @"terrainElevation");
          v87 = MEMORY[0x1E696AD98];
          objc_msgSend_height(v53, v88, v89, v90);
          v94 = objc_msgSend_numberWithDouble_(v87, v91, v92, v93);
          objc_msgSend_setValue_forKey_(v42, v95, v94, @"height");
          v96 = MEMORY[0x1E696AD98];
          objc_msgSend_baseHeight(v53, v97, v98, v99);
          v103 = objc_msgSend_numberWithDouble_(v96, v100, v101, v102);
          objc_msgSend_setValue_forKey_(v42, v104, v103, @"baseHeight");
          v105 = MEMORY[0x1E696AD98];
          v109 = objc_msgSend_coordinateCount(v53, v106, v107, v108);
          v112 = objc_msgSend_numberWithUnsignedInt_(v105, v110, v109, v111);
          objc_msgSend_setValue_forKey_(v42, v113, v112, @"coordinateCount");
          if (objc_msgSend_coordinateCount(v53, v114, v115, v116))
          {
            v118 = 0;
            v119 = 0;
            do
            {
              v120 = MEMORY[0x1E696AEC0];
              v121 = *(objc_msgSend_coordinates(v53, v50, v117, v52) + v118);
              v125 = objc_msgSend_coordinates(v53, v122, v123, v124);
              v128 = objc_msgSend_stringWithFormat_(v120, v126, @"%.7lf,%.7lf", v127, v121, *(v125 + v118 + 8));
              v131 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v129, @"coord%d", v130, v119);
              objc_msgSend_setValue_forKey_(v42, v132, v128, v131);
              ++v119;
              v118 += 16;
            }

            while (objc_msgSend_coordinateCount(v53, v133, v134, v135) > v119);
          }
        }

        objc_msgSend_addObject_(v146, v50, v42, v52);
        ++v41;
        v139 = objc_msgSend_sections(a2, v136, v137, v138);
      }

      while (objc_msgSend_count(v139, v140, v141, v142) > v41);
    }

    v143 = *(*(v145[4] + 8) + 40);

    return objc_msgSend_addObject_(v143, v39, v144, v40);
  }

  return result;
}

void *sub_19B9C2DFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a1 + 64);
    v7 = objc_msgSend_code(a2, a2, a3, a4);
    v11 = objc_msgSend_domain(a2, v8, v9, v10);
    v15 = objc_msgSend_localizedDescription(a2, v12, v13, v14);
    NSLog(&cfstr_CltspClmmGeoma.isa, v6, v7, v11, v15);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v17 = *(a1 + 64);
    v21 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v18, v19, v20);
    NSLog(&cfstr_CltspClgeomaph.isa, v17, v21, (Current - *(*(*(a1 + 56) + 8) + 24)) * 1000.0);
  }

  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 68) == 1)
  {
    v26 = *(*(a1 + 32) + 16);

    return objc_msgSend_clearBuildingTiles(v26, v23, v24, v25);
  }

  return result;
}

void sub_19B9C32E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *sub_19B9C3314(id *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return objc_msgSend_addObject_(result[4], a2, a2, a4);
  }

  return result;
}

intptr_t sub_19B9C3328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = objc_msgSend_code(a2, a2, a3, a4);
    v10 = objc_msgSend_domain(a2, v7, v8, v9);
    v14 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
    NSLog(&cfstr_CltspClmmMaphe_3.isa, v6, v10, v14);
    objc_msgSend_removeAllObjects(*(a1 + 32), v15, v16, v17);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(a1 + 64) == 1)
  {
    objc_msgSend_clearRoadTiles(*(*(a1 + 40) + 16), a2, a3, a4);
  }

  *(*(a1 + 40) + 48) = 0;
  *(*(a1 + 40) + 24) = 0;
  v18 = *(*(*(a1 + 56) + 8) + 40);

  return dispatch_semaphore_signal(v18);
}

void sub_19B9C36BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void *sub_19B9C36F8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    result = objc_msgSend_isDrivable(a2, a2, a3, a4);
    if (result)
    {
      if (objc_msgSend_travelDirection(a2, v6, v7, v8) == 1 || (result = objc_msgSend_travelDirection(a2, v9, v10, v11), !result))
      {
        v12 = *(*(v5[4] + 8) + 40);

        return objc_msgSend_addObject_(v12, v9, a2, v11);
      }
    }
  }

  return result;
}

intptr_t sub_19B9C3774(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (*(*(a1 + 32) + 50) == 1)
    {
      v6 = objc_msgSend_code(a2, a2, a3, a4);
      v10 = objc_msgSend_domain(a2, v7, v8, v9);
      v14 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
      NSLog(&cfstr_CltspClmmMaphe_3.isa, v6, v10, v14);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(a1 + 56) == 1)
  {
    objc_msgSend_clearRoadTiles(*(*(a1 + 32) + 16), a2, a3, a4);
  }

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 24) = 0;
  v15 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v15);
}

void sub_19B9C3F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **__p, char **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a22;
  sub_19B8F0E84(&__p);
  a22 = &a25;
  sub_19B8F0E84(&a22);
  _Unwind_Resume(a1);
}

void sub_19B9C41CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9C5720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B8F3484(&a48, a49);
  if (a52)
  {
    sub_19B8750F8(a52);
  }

  sub_19B8F3484(&a53, a54);
  sub_19B9B0C1C(&a56, a57);
  sub_19B8750F8(a21);
  if (a65)
  {
    sub_19B8750F8(a65);
  }

  a59 = &a66;
  sub_19B8F0E84(&a59);
  if (STACK[0x210])
  {
    sub_19B8750F8(STACK[0x210]);
  }

  if (STACK[0x228])
  {
    sub_19B8750F8(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

void sub_19B9C67A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9C6818;
  block[3] = &unk_1E753CFD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = a3;
  dispatch_async(v3, block);
}

uint64_t sub_19B9C6818(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = *(v5 + 16);
    v7 = *(a1 + 48);
    v8 = 0;
  }

  else
  {
    v9 = objc_msgSend_geoAddress(*(a1 + 40), a2, 0, a4);
    v8 = objc_msgSend_formattedAddressLines(v9, v10, v11, v12);
    v6 = *(v5 + 16);
    v7 = v5;
    v4 = 0;
  }

  return v6(v7, v8, v4);
}

uint64_t sub_19B9C6890(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_geoAddress(*(*(*(a1 + 32) + 8) + 40), a2, a3, a4);
  v9 = objc_msgSend_formattedAddressLines(v5, v6, v7, v8);
  v10 = *(v4 + 16);

  return v10(v4, v9, 0);
}

void *sub_19B9C6E90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_length(a2, a2, a3, a4);
  if (result)
  {
    if (objc_msgSend_length(*(a1 + 32), v7, v8, v9))
    {
      objc_msgSend_appendString_(*(a1 + 32), v10, @", ", v11);
    }

    v12 = *(a1 + 32);

    return objc_msgSend_appendString_(v12, v10, a2, v11);
  }

  return result;
}

uint64_t sub_19B9C70E4()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressStreetKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE5088 = result;
  }

  else
  {
    result = qword_1EAFE5088;
  }

  off_1ED519098 = sub_19B9C7164;
  return result;
}

void *sub_19B9C7170()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
  qword_1EAFE5098 = result;
  return result;
}

uint64_t sub_19B9C719C()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressSubLocalityKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50A0 = result;
  }

  else
  {
    result = qword_1EAFE50A0;
  }

  off_1ED5190A0 = sub_19B9C721C;
  return result;
}

uint64_t sub_19B9C7228()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressCityKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50A8 = result;
  }

  else
  {
    result = qword_1EAFE50A8;
  }

  off_1ED5190A8 = sub_19B9C72A8;
  return result;
}

uint64_t sub_19B9C72B4()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressSubAdministrativeAreaKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50B0 = result;
  }

  else
  {
    result = qword_1EAFE50B0;
  }

  off_1ED5190B0 = sub_19B9C7334;
  return result;
}

uint64_t sub_19B9C7340()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressStateKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50B8 = result;
  }

  else
  {
    result = qword_1EAFE50B8;
  }

  off_1ED5190B8 = sub_19B9C73C0;
  return result;
}

uint64_t sub_19B9C73CC()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressPostalCodeKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50C0 = result;
  }

  else
  {
    result = qword_1EAFE50C0;
  }

  off_1ED5190C0 = sub_19B9C744C;
  return result;
}

uint64_t sub_19B9C7458()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressCountryKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50C8 = result;
  }

  else
  {
    result = qword_1EAFE50C8;
  }

  off_1ED5190C8 = sub_19B9C74D8;
  return result;
}

uint64_t sub_19B9C74E4()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  v0 = dlsym(qword_1EAFE5098, "CNPostalAddressISOCountryCodeKey");
  if (v0)
  {
    result = *v0;
    qword_1EAFE50D0 = result;
  }

  else
  {
    result = qword_1EAFE50D0;
  }

  off_1ED5190D0 = sub_19B9C7564;
  return result;
}

Class sub_19B9C7570()
{
  if (qword_1EAFE5090 != -1)
  {
    dispatch_once(&qword_1EAFE5090, &unk_1F0E6E558);
  }

  result = objc_getClass("CNPostalAddress");
  qword_1EAFE50D8 = result;
  off_1ED5190D8 = sub_19B9C75D4;
  return result;
}

os_log_t sub_19B9C7854()
{
  result = os_log_create("com.apple.locationd.Position", "Position");
  qword_1EAFE4770 = result;
  return result;
}

void sub_19B9C7BD0(double *a1, long double *a2, double *a3, long double a4, long double a5, long double a6)
{
  v9 = sqrt(a5 * a5 + a4 * a4);
  *a2 = atan2(a5, a4) / 0.0174532925;
  v10 = v9 * 0.99330562;
  v11 = 0.0;
  v12 = 1.57079633;
  if (v9 * 0.99330562 != 0.0)
  {
    __y = a6;
    v13 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v15 = v12;
      v12 = atan2(__y, v10);
      v16 = __sincos_stret(v12);
      v17 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
      v11 = v9 / v16.__cosval - v17;
      if (vabdd_f64(v15, v12) >= 0.000001)
      {
        if (v13 > 8)
        {
          goto LABEL_13;
        }
      }

      else if (vabdd_f64(v14, v11) < 0.001 || v13 >= 9)
      {
        goto LABEL_13;
      }

      ++v13;
      v10 = v9 * (v17 / (v17 + v11) * -0.00669437999 + 1.0);
      v14 = v9 / v16.__cosval - v17;
    }

    while (v10 != 0.0);
    v12 = 1.57079633;
  }

LABEL_13:
  *a1 = v12 / 0.0174532925;
  *a3 = v11;
}

void sub_19B9C94C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9CA898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (v53)
  {
    operator delete(v53);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B9CA990()
{
  result = os_log_create("com.apple.locationd.Position", "RouteSmoother");
  qword_1EAFE47A0 = result;
  return result;
}

void sub_19B9CA9C0(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_19B8D9954(a1, a2);
    }

    sub_19B8F3F74();
  }
}

void sub_19B9CAA60(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_19B9CABD8(a2);
    }

    sub_19B8B8A40();
  }
}

void sub_19B9CAB04(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B9CABD8(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void sub_19B9CABD8(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B9CAC20(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v8 = v3 - *a1;
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
      sub_19B9CACF4(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_19B9CACF4(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B9CAD3C(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v145 = *(v8 + 2);
          v146 = *v8;
          v147 = v8[3];
          v148 = v8[1];
          if (v145 == *v8)
          {
            v149 = v147 < v148;
          }

          else
          {
            v149 = v145 < *v8;
          }

          v150 = *(a2 - 2);
          v151 = *(a2 - 1);
          v152 = v151 < v147;
          if (v150 != v145)
          {
            v152 = v150 < v145;
          }

          if (!v149)
          {
            if (!v152)
            {
              return result;
            }

            *(v8 + 2) = v150;
            *(a2 - 2) = v145;
            v8[3] = v151;
            *(a2 - 1) = v147;
            v131 = *(v8 + 2);
            v139 = *v8;
            v133 = v8[3];
            goto LABEL_278;
          }

          if (v152)
          {
            *v8 = v150;
            *(a2 - 2) = v146;
            v8[1] = v151;
          }

          else
          {
            *v8 = v145;
            v8[2] = v146;
            v8[1] = v147;
            v8[3] = v148;
            v216 = *(a2 - 2);
            v217 = *(a2 - 1);
            v218 = v217 < v148;
            if (v216 != *&v146)
            {
              v218 = v216 < *&v146;
            }

            if (!v218)
            {
              return result;
            }

            *(v8 + 2) = v216;
            *(a2 - 2) = v146;
            v8[3] = v217;
          }

          *(a2 - 1) = v148;
          return result;
        case 4:

          return sub_19B9CBBBC(v8, v8 + 2, v8 + 4, a2 - 2);
        case 5:
          result = sub_19B9CBBBC(v8, v8 + 2, v8 + 4, v8 + 6);
          v126 = *(a2 - 2);
          v127 = *(v8 + 6);
          v128 = *(a2 - 1);
          v129 = v8[7];
          v130 = v128 < v129;
          if (v126 != v127)
          {
            v130 = v126 < v127;
          }

          if (!v130)
          {
            return result;
          }

          *(v8 + 6) = v126;
          *(a2 - 2) = v127;
          v8[7] = v128;
          *(a2 - 1) = v129;
          v131 = *(v8 + 6);
          v132 = *(v8 + 4);
          v133 = v8[7];
          v134 = v8[5];
          v135 = v133 < v134;
          if (v131 != v132)
          {
            v135 = v131 < v132;
          }

          if (!v135)
          {
            return result;
          }

          *(v8 + 4) = v131;
          *(v8 + 6) = v132;
          v8[5] = v133;
          v8[7] = v134;
          v136 = *(v8 + 2);
          v137 = v8[3];
          v138 = v133 < v137;
          if (v131 != v136)
          {
            v138 = v131 < v136;
          }

          if (!v138)
          {
            return result;
          }

          *(v8 + 2) = v131;
          *(v8 + 4) = v136;
          v8[3] = v133;
          v8[5] = v137;
          v139 = *v8;
LABEL_278:
          v204 = v8[1];
          v205 = v133 < v204;
          if (v131 != *&v139)
          {
            v205 = v131 < *&v139;
          }

          if (v205)
          {
            *v8 = v131;
            v8[2] = v139;
            v8[1] = v133;
            v8[3] = v204;
          }

          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v140 = *(a2 - 2);
        v141 = *v8;
        v142 = *(a2 - 1);
        v143 = v8[1];
        v144 = v142 < v143;
        if (v140 != *&v141)
        {
          v144 = v140 < *v8;
        }

        if (v144)
        {
          *v8 = v140;
          *(a2 - 2) = v141;
          v8[1] = v142;
          *(a2 - 1) = v143;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v167 = (v9 - 2) >> 1;
      v168 = v167;
      do
      {
        v169 = v168;
        if (v167 >= v168)
        {
          v170 = (2 * v168) | 1;
          v171 = &v8[2 * v170];
          if (2 * v169 + 2 >= v9)
          {
            v172 = *v171;
          }

          else
          {
            v172 = *(v171 + 2);
            v173 = v171[1] < v171[3];
            result = *v171 < v172;
            if (*v171 != v172)
            {
              v173 = *v171 < v172;
            }

            if (v173)
            {
              v171 += 2;
            }

            else
            {
              v172 = *v171;
            }

            if (v173)
            {
              v170 = 2 * v169 + 2;
            }
          }

          v174 = &v8[2 * v169];
          v175 = *v174;
          v176 = v171[1];
          v177 = v174[1];
          v178 = v176 < v177;
          if (v172 != *v174)
          {
            v178 = v172 < *v174;
          }

          if (!v178)
          {
            do
            {
              *v174 = v172;
              v174[1] = v176;
              v174 = v171;
              if (v167 < v170)
              {
                break;
              }

              v179 = (2 * v170) | 1;
              v171 = &v8[2 * v179];
              v170 = 2 * v170 + 2;
              if (v170 >= v9)
              {
                v172 = *v171;
                v170 = v179;
              }

              else
              {
                v172 = *(v171 + 2);
                result = *v171;
                v180 = v171[1] < v171[3];
                if (*v171 != v172)
                {
                  v180 = *v171 < v172;
                }

                if (v180)
                {
                  v171 += 2;
                }

                else
                {
                  v172 = *v171;
                }

                if (!v180)
                {
                  v170 = v179;
                }
              }

              v176 = v171[1];
              v181 = v176 < v177;
              if (v172 != v175)
              {
                v181 = v172 < v175;
              }
            }

            while (!v181);
            *v174 = v175;
            v174[1] = v177;
          }
        }

        v168 = v169 - 1;
      }

      while (v169);
      while (2)
      {
        v182 = 0;
        v183 = *v8;
        v184 = v8[1];
        v185 = v8;
        do
        {
          v186 = &v185[2 * v182];
          v187 = v186 + 2;
          v188 = (2 * v182) | 1;
          v182 = 2 * v182 + 2;
          if (v182 >= v9)
          {
            v190 = *v187;
            v182 = v188;
          }

          else
          {
            v191 = *(v186 + 4);
            v189 = v186 + 4;
            v190 = v191;
            v192 = *(v189 - 2);
            v193 = v192 < v191;
            if (v192 == v191)
            {
              result = *(v189 - 1) < v189[1];
            }

            else
            {
              result = v193;
            }

            if (result)
            {
              v187 = v189;
            }

            else
            {
              v190 = *(v189 - 2);
            }

            if (!result)
            {
              v182 = v188;
            }
          }

          *v185 = v190;
          v185[1] = v187[1];
          v185 = v187;
        }

        while (v182 <= ((v9 - 2) >> 1));
        if (v187 != a2 - 2)
        {
          *v187 = *(a2 - 2);
          v187[1] = *(a2 - 1);
          *(a2 - 2) = v183;
          *(a2 - 1) = v184;
          v194 = (v187 - v8 + 16) >> 4;
          v195 = v194 < 2;
          v196 = v194 - 2;
          if (!v195)
          {
            v197 = v196 >> 1;
            v198 = &v8[2 * v197];
            v199 = *v198;
            v200 = *v187;
            v201 = v198[1];
            v184 = v187[1];
            v202 = v201 < v184;
            if (*v198 != *v187)
            {
              v202 = *v198 < *v187;
            }

            if (v202)
            {
              do
              {
                *v187 = v199;
                v187[1] = v201;
                v187 = v198;
                if (!v197)
                {
                  break;
                }

                v197 = (v197 - 1) >> 1;
                v198 = &v8[2 * v197];
                v199 = *v198;
                v201 = v198[1];
                v203 = v201 < v184;
                if (*v198 != v200)
                {
                  v203 = *v198 < v200;
                }
              }

              while (v203);
              *v187 = v200;
LABEL_272:
              v187[1] = v184;
            }
          }

          a2 -= 2;
          v195 = v9-- <= 2;
          if (v195)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v187 = v183;
      goto LABEL_272;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 2);
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = v10[1];
      v16 = v8[1];
      v17 = *v10 < *v8;
      if (*v10 == *v8)
      {
        v17 = v15 < v16;
      }

      v18 = v12 < v15;
      if (v11 != *&v13)
      {
        v18 = v11 < *&v13;
      }

      if (v17)
      {
        if (v18)
        {
          *v8 = v11;
          *(a2 - 2) = v14;
          v8[1] = v12;
          goto LABEL_41;
        }

        *v8 = v13;
        *v10 = v14;
        v8[1] = v15;
        v10[1] = v16;
        v33 = *(a2 - 2);
        v34 = *(a2 - 1);
        v35 = v34 < v16;
        if (v33 != *&v14)
        {
          v35 = v33 < *&v14;
        }

        if (v35)
        {
          *v10 = v33;
          *(a2 - 2) = v14;
          v10[1] = v34;
LABEL_41:
          *(a2 - 1) = v16;
        }
      }

      else if (v18)
      {
        *v10 = v11;
        *(a2 - 2) = v13;
        v10[1] = v12;
        *(a2 - 1) = v15;
        v25 = *v8;
        v26 = v10[1];
        v27 = v8[1];
        v28 = v26 < v27;
        if (*v10 != *v8)
        {
          v28 = *v10 < *v8;
        }

        if (v28)
        {
          *v8 = *v10;
          *v10 = v25;
          v8[1] = v26;
          v10[1] = v27;
        }
      }

      v36 = v10 - 2;
      v37 = *(v10 - 2);
      v38 = *(v8 + 2);
      v39 = *(v10 - 1);
      v40 = v8[3];
      if (v37 == v38)
      {
        v41 = v39 < v40;
      }

      else
      {
        v41 = v37 < v38;
      }

      v42 = *(a2 - 4);
      v43 = *(a2 - 3);
      v44 = v43 < v39;
      if (v42 != v37)
      {
        v44 = v42 < v37;
      }

      if (v41)
      {
        if (v44)
        {
          *(v8 + 2) = v42;
          *(a2 - 4) = v38;
          v8[3] = v43;
          goto LABEL_64;
        }

        *(v8 + 2) = v37;
        *v36 = v38;
        v8[3] = v39;
        *(v10 - 1) = v40;
        v52 = *(a2 - 4);
        v53 = *(a2 - 3);
        v54 = v53 < v40;
        if (v52 != v38)
        {
          v54 = v52 < v38;
        }

        if (v54)
        {
          *v36 = v52;
          *(a2 - 4) = v38;
          *(v10 - 1) = v53;
LABEL_64:
          *(a2 - 3) = v40;
        }
      }

      else if (v44)
      {
        *v36 = v42;
        *(a2 - 4) = v37;
        *(v10 - 1) = v43;
        *(a2 - 3) = v39;
        v45 = *(v8 + 2);
        v46 = *(v10 - 1);
        v47 = v8[3];
        v48 = v46 < v47;
        if (*v36 != v45)
        {
          v48 = *v36 < v45;
        }

        if (v48)
        {
          v8[2] = *v36;
          *v36 = v45;
          v8[3] = v46;
          *(v10 - 1) = v47;
        }
      }

      v55 = v10 + 2;
      v56 = *(v10 + 2);
      v57 = *(v8 + 4);
      v58 = v10[3];
      v59 = v8[5];
      if (v56 == v57)
      {
        v60 = v58 < v59;
      }

      else
      {
        v60 = v56 < v57;
      }

      v61 = *(a2 - 6);
      v62 = *(a2 - 5);
      v63 = v62 < v58;
      if (v61 != v56)
      {
        v63 = v61 < v56;
      }

      if (v60)
      {
        if (v63)
        {
          *(v8 + 4) = v61;
          *(a2 - 6) = v57;
          v8[5] = v62;
          goto LABEL_82;
        }

        *(v8 + 4) = v56;
        *v55 = v57;
        v8[5] = v58;
        v10[3] = v59;
        v68 = *(a2 - 6);
        v69 = *(a2 - 5);
        v70 = v69 < v59;
        if (v68 != v57)
        {
          v70 = v68 < v57;
        }

        if (v70)
        {
          *v55 = v68;
          *(a2 - 6) = v57;
          v10[3] = v69;
LABEL_82:
          *(a2 - 5) = v59;
        }
      }

      else if (v63)
      {
        *v55 = v61;
        *(a2 - 6) = v56;
        v10[3] = v62;
        *(a2 - 5) = v58;
        v64 = *(v8 + 4);
        v65 = v10[3];
        v66 = v8[5];
        v67 = v65 < v66;
        if (*v55 != v64)
        {
          v67 = *v55 < v64;
        }

        if (v67)
        {
          v8[4] = *v55;
          *v55 = v64;
          v8[5] = v65;
          v10[3] = v66;
        }
      }

      v71 = *v10;
      v72 = *v36;
      v73 = v10[1];
      v74 = *(v10 - 1);
      if (*v10 == *v36)
      {
        v75 = v73 < v74;
      }

      else
      {
        v75 = *v10 < *v36;
      }

      v76 = *v55;
      v77 = v10[3];
      v78 = v77 < v73;
      if (*v55 != *&v71)
      {
        v78 = *v55 < *&v71;
      }

      if (v75)
      {
        if (!v78)
        {
          *v36 = v71;
          *v10 = v72;
          v79 = *&v76 < *&v72;
          if (*&v76 == *&v72)
          {
            v79 = v77 < v74;
          }

          *(v10 - 1) = v73;
          v10[1] = v74;
          v36 = v10;
          v73 = v77;
          v71 = v76;
          if (!v79)
          {
            v73 = v74;
            v71 = v72;
LABEL_100:
            v81 = *v8;
            *v8 = v71;
            *v10 = v81;
            v82 = *(v8 + 1);
            v8[1] = v73;
            *(v10 + 1) = v82;
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (!v78)
        {
          goto LABEL_100;
        }

        *v10 = v76;
        *v55 = v71;
        v10[1] = v77;
        v10[3] = v73;
        if (*&v76 == *&v72)
        {
          v80 = v77 < v74;
        }

        else
        {
          v80 = *&v76 < *&v72;
        }

        v55 = v10;
        v73 = v74;
        v71 = v72;
        if (!v80)
        {
          v73 = v77;
          v71 = v76;
          goto LABEL_100;
        }
      }

      *v36 = v76;
      *v55 = v72;
      v36[1] = v77;
      v55[1] = v74;
      goto LABEL_100;
    }

    v19 = *v8;
    v20 = *v10;
    v21 = v8[1];
    v22 = v10[1];
    v23 = *v8 < *v10;
    if (*v8 == *v10)
    {
      v23 = v21 < v22;
    }

    v24 = v12 < v21;
    if (v11 != *&v19)
    {
      v24 = v11 < *&v19;
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v11;
        *(a2 - 2) = v20;
        v10[1] = v12;
LABEL_59:
        *(a2 - 1) = v22;
        goto LABEL_101;
      }

      *v10 = v19;
      *v8 = v20;
      v10[1] = v21;
      v8[1] = v22;
      v49 = *(a2 - 2);
      v50 = *(a2 - 1);
      v51 = v50 < v22;
      if (v49 != *&v20)
      {
        v51 = v49 < *&v20;
      }

      if (v51)
      {
        *v8 = v49;
        *(a2 - 2) = v20;
        v8[1] = v50;
        goto LABEL_59;
      }
    }

    else if (v24)
    {
      *v8 = v11;
      *(a2 - 2) = v19;
      v8[1] = v12;
      *(a2 - 1) = v21;
      v29 = *v10;
      v30 = v8[1];
      v31 = v10[1];
      v32 = v30 < v31;
      if (*v8 != *v10)
      {
        v32 = *v8 < *v10;
      }

      if (v32)
      {
        *v10 = *v8;
        *v8 = v29;
        v10[1] = v30;
        v8[1] = v31;
      }
    }

LABEL_101:
    --a3;
    v83 = *v8;
    if (a4)
    {
      v84 = v8[1];
      goto LABEL_106;
    }

    v85 = *(v8 - 2);
    v84 = v8[1];
    v154 = v85 == *&v83;
    v86 = v85 < *&v83;
    if (v154)
    {
      v86 = *(v8 - 1) < v84;
    }

    if (v86)
    {
LABEL_106:
      v87 = 0;
      do
      {
        v88 = v8[v87 + 2];
        v89 = v8[v87 + 3] < v84;
        if (*&v88 != *&v83)
        {
          v89 = *&v88 < *&v83;
        }

        v87 += 2;
      }

      while (v89);
      v90 = &v8[v87];
      v91 = a2;
      if (v87 == 2)
      {
        v91 = a2;
        do
        {
          if (v90 >= v91)
          {
            break;
          }

          v94 = *(v91 - 2);
          v91 -= 2;
          v95 = v94 < *&v83;
          if (v94 == *&v83)
          {
            v95 = v91[1] < v84;
          }
        }

        while (!v95);
      }

      else
      {
        do
        {
          v92 = *(v91 - 2);
          v91 -= 2;
          v93 = v92 < *&v83;
          if (v92 == *&v83)
          {
            v93 = v91[1] < v84;
          }
        }

        while (!v93);
      }

      if (v90 >= v91)
      {
        v8 = v90;
      }

      else
      {
        v96 = *v91;
        v8 = v90;
        v97 = v91;
        do
        {
          *v8 = v96;
          *v97 = v88;
          v98 = *(v8 + 1);
          v8[1] = v97[1];
          *(v97 + 1) = v98;
          do
          {
            v99 = v8[2];
            v8 += 2;
            v88 = v99;
            v100 = v8[1] < v84;
            v101 = *&v99 < *&v83;
            if (*&v99 != *&v83)
            {
              v100 = v101;
            }
          }

          while (v100);
          do
          {
            v102 = *(v97 - 2);
            v97 -= 2;
            v96 = v102;
            v103 = v97[1] < v84;
            v104 = v102 < *&v83;
            if (v102 != *&v83)
            {
              v103 = v104;
            }
          }

          while (!v103);
        }

        while (v8 < v97);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        *(v7 + 8) = *(v8 - 1);
      }

      *(v8 - 2) = v83;
      *(v8 - 1) = v84;
      if (v90 < v91)
      {
        goto LABEL_137;
      }

      v105 = sub_19B9CBD78(v7, v8 - 2);
      result = sub_19B9CBD78(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v105)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v105)
      {
LABEL_137:
        result = sub_19B9CAD3C(v7, (v8 - 2), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v106 = *(a2 - 2);
      v154 = *&v83 == v106;
      v107 = *&v83 < v106;
      if (v154)
      {
        v107 = v84 < *(a2 - 1);
      }

      if (v107)
      {
        do
        {
          v108 = *(v8 + 2);
          v8 += 2;
          v109 = *&v83 < v108;
          if (*&v83 == v108)
          {
            v109 = v84 < v8[1];
          }
        }

        while (!v109);
      }

      else
      {
        v110 = v8 + 2;
        do
        {
          v8 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = *v110;
          v112 = v84 < v8[1];
          v154 = *&v83 == v111;
          v113 = *&v83 < v111;
          if (!v154)
          {
            v112 = v113;
          }

          v110 = v8 + 2;
        }

        while (!v112);
      }

      v114 = a2;
      if (v8 < a2)
      {
        v114 = a2;
        do
        {
          v115 = *(v114 - 2);
          v114 -= 2;
          v116 = *&v83 < v115;
          if (*&v83 == v115)
          {
            v116 = v84 < v114[1];
          }
        }

        while (v116);
      }

      if (v8 < v114)
      {
        v117 = *v8;
        v118 = *v114;
        do
        {
          *v8 = v118;
          *v114 = v117;
          v119 = *(v8 + 1);
          v8[1] = v114[1];
          *(v114 + 1) = v119;
          do
          {
            v120 = v8[2];
            v8 += 2;
            v117 = v120;
            v121 = v84 < v8[1];
            v122 = *&v83 < *&v120;
            if (*&v83 != *&v120)
            {
              v121 = v122;
            }
          }

          while (!v121);
          do
          {
            v123 = *(v114 - 2);
            v114 -= 2;
            v118 = v123;
            v124 = v84 < v114[1];
            v125 = *&v83 < v123;
            if (*&v83 != v123)
            {
              v124 = v125;
            }
          }

          while (v124);
        }

        while (v8 < v114);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        *(v7 + 8) = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v83;
      *(v8 - 1) = v84;
    }
  }

  v153 = v8 + 2;
  v154 = v8 == a2 || v153 == a2;
  v155 = v154;
  if (a4)
  {
    if ((v155 & 1) == 0)
    {
      v156 = 0;
      v157 = v8;
      do
      {
        v158 = *(v157 + 2);
        v159 = *v157;
        v160 = v157[3];
        v161 = v157[1];
        v157 = v153;
        v162 = v160 < v161;
        if (v158 != v159)
        {
          v162 = v158 < v159;
        }

        if (v162)
        {
          v163 = v156;
          while (1)
          {
            v164 = v8 + v163;
            *(v164 + 2) = v159;
            *(v164 + 3) = *(v8 + v163 + 8);
            if (!v163)
            {
              break;
            }

            v159 = *(v164 - 2);
            v165 = v160 < *(v164 - 1);
            if (v158 != v159)
            {
              v165 = v158 < v159;
            }

            v163 -= 16;
            if (!v165)
            {
              v166 = v8 + v163 + 16;
              goto LABEL_215;
            }
          }

          v166 = v8;
LABEL_215:
          *v166 = v158;
          *(v166 + 8) = v160;
        }

        v153 = v157 + 2;
        v156 += 16;
      }

      while (v157 + 2 != a2);
    }
  }

  else if ((v155 & 1) == 0)
  {
    v206 = v8 + 3;
    do
    {
      v207 = *(v7 + 16);
      v208 = *v7;
      v209 = *(v7 + 24);
      v210 = *(v7 + 8);
      v7 = v153;
      v211 = v209 < v210;
      if (v207 != *&v208)
      {
        v211 = v207 < *&v208;
      }

      if (v211)
      {
        v212 = v206;
        do
        {
          v213 = v212;
          *(v212 - 1) = v208;
          v214 = *(v212 - 2);
          v212 -= 2;
          *v213 = v214;
          v208 = *(v213 - 5);
          v215 = v209 < *(v213 - 4);
          if (v207 != *&v208)
          {
            v215 = v207 < *&v208;
          }
        }

        while (v215);
        *(v212 - 1) = v207;
        *v212 = v209;
      }

      v153 = (v7 + 16);
      v206 += 2;
    }

    while ((v7 + 16) != a2);
  }

  return result;
}

double *sub_19B9CBBBC(double *result, double *a2, double *a3, double *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = a2[1];
  v7 = result[1];
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v10 < v6;
  if (*a3 != v4)
  {
    v11 = *a3 < v4;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      result[1] = v10;
LABEL_18:
      v6 = v7;
      v4 = *&v5;
      a3[1] = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    result[1] = v6;
    a2[1] = v7;
    v4 = *a3;
    v6 = a3[1];
    v16 = v6 < v7;
    if (*a3 != *&v5)
    {
      v16 = *a3 < *&v5;
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      a2[1] = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    a2[1] = v10;
    a3[1] = v6;
    v12 = *result;
    v13 = a2[1];
    v14 = result[1];
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      result[1] = v13;
      a2[1] = v14;
      v4 = *a3;
      v6 = a3[1];
    }
  }

  else
  {
    v6 = a3[1];
    v4 = *a3;
  }

LABEL_20:
  v17 = a4[1];
  v18 = v17 < v6;
  if (*a4 != v4)
  {
    v18 = *a4 < v4;
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    a3[1] = v17;
    a4[1] = v6;
    v19 = *a2;
    v20 = a3[1];
    v21 = a2[1];
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      a2[1] = v20;
      a3[1] = v21;
      v23 = *result;
      v24 = a2[1];
      v25 = result[1];
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        result[1] = v24;
        a2[1] = v25;
      }
    }
  }

  return result;
}

BOOL sub_19B9CBD78(double *a1, double *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 2);
        v6 = *a1;
        v7 = *(a2 - 1);
        v8 = a1[1];
        v9 = v7 < v8;
        if (v5 != *a1)
        {
          v9 = v5 < *a1;
        }

        if (v9)
        {
          *a1 = v5;
          *(a2 - 2) = v6;
          a1[1] = v7;
LABEL_69:
          result = 1;
          *(a2 - 1) = v8;
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v27 = *(a1 + 2);
      v28 = *a1;
      v29 = a1[3];
      v8 = a1[1];
      if (v27 == *a1)
      {
        v30 = v29 < v8;
      }

      else
      {
        v30 = v27 < *a1;
      }

      v31 = *(a2 - 2);
      v32 = *(a2 - 1);
      v33 = v32 < v29;
      if (v31 != v27)
      {
        v33 = v31 < v27;
      }

      if (v30)
      {
        if (v33)
        {
          *a1 = v31;
          *(a2 - 2) = v28;
          a1[1] = v32;
          goto LABEL_69;
        }

        *a1 = v27;
        *(a1 + 2) = v28;
        a1[1] = v29;
        a1[3] = v8;
        v64 = *(a2 - 2);
        v65 = *(a2 - 1);
        v66 = v65 < v8;
        if (v64 != v28)
        {
          v66 = v64 < v28;
        }

        if (v66)
        {
          *(a1 + 2) = v64;
          *(a2 - 2) = v28;
          a1[3] = v65;
          goto LABEL_69;
        }
      }

      else if (v33)
      {
        *(a1 + 2) = v31;
        *(a2 - 2) = v27;
        a1[3] = v32;
        *(a2 - 1) = v29;
        v47 = *(a1 + 2);
        v48 = *a1;
        v49 = a1[3];
        v50 = a1[1];
        v51 = v49 < v50;
        if (v47 != *a1)
        {
          v51 = v47 < *a1;
        }

        if (v51)
        {
          *a1 = v47;
          *(a1 + 2) = v48;
          a1[1] = v49;
          result = 1;
          a1[3] = v50;
          return result;
        }
      }

      return 1;
    case 4:
      sub_19B9CBBBC(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      sub_19B9CBBBC(a1, a1 + 2, a1 + 4, a1 + 6);
      v10 = *(a2 - 2);
      v11 = *(a1 + 6);
      v12 = *(a2 - 1);
      v13 = a1[7];
      v14 = v12 < v13;
      if (v10 != v11)
      {
        v14 = v10 < v11;
      }

      if (v14)
      {
        *(a1 + 6) = v10;
        *(a2 - 2) = v11;
        a1[7] = v12;
        *(a2 - 1) = v13;
        v15 = *(a1 + 6);
        v16 = *(a1 + 4);
        v17 = a1[7];
        v18 = a1[5];
        v19 = v17 < v18;
        if (v15 != v16)
        {
          v19 = v15 < v16;
        }

        if (v19)
        {
          *(a1 + 4) = v15;
          *(a1 + 6) = v16;
          a1[5] = v17;
          a1[7] = v18;
          v20 = *(a1 + 2);
          v21 = a1[3];
          v22 = v17 < v21;
          if (v15 != v20)
          {
            v22 = v15 < v20;
          }

          if (v22)
          {
            *(a1 + 2) = v15;
            *(a1 + 4) = v20;
            a1[3] = v17;
            a1[5] = v21;
            v23 = *a1;
            v24 = a1[1];
            v25 = v17 < v24;
            if (v15 != *a1)
            {
              v25 = v15 < *a1;
            }

            if (v25)
            {
              *a1 = v15;
              a1[2] = v23;
              a1[1] = v17;
              result = 1;
              a1[3] = v24;
              return result;
            }
          }
        }
      }

      return 1;
  }

LABEL_32:
  v34 = a1 + 4;
  v35 = *(a1 + 4);
  v36 = a1 + 2;
  v37 = *(a1 + 2);
  v38 = *a1;
  v39 = a1 + 3;
  v40 = a1[3];
  v41 = a1 + 1;
  v42 = a1[1];
  v43 = v37 < *a1;
  v44 = a1[5];
  if (v37 == *a1)
  {
    v43 = v40 < v42;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = a1 + 4;
      v39 = a1 + 5;
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v41 = v44;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    a1[2] = v38;
    if (v35 == *&v38)
    {
      v67 = v44 < v42;
    }

    else
    {
      v67 = v35 < *&v38;
    }

    v46 = a1 + 2;
    a1[1] = v40;
    a1[3] = v42;
    v36 = a1 + 4;
    v41 = a1 + 3;
    v39 = a1 + 5;
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    a1[5] = v40;
    v52 = v44 < v42;
    if (v35 != *&v38)
    {
      v52 = v35 < *&v38;
    }

    v46 = a1;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v53 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v34;
    v58 = v53[1];
    v59 = v58 < v34[1];
    if (*v53 != v57)
    {
      v59 = *v53 < v57;
    }

    if (v59)
    {
      v60 = v54;
      while (1)
      {
        v61 = a1 + v60;
        *(v61 + 6) = v57;
        *(v61 + 7) = *(a1 + v60 + 40);
        if (v60 == -32)
        {
          break;
        }

        v57 = *(v61 + 2);
        v62 = v58 < *(v61 + 3);
        if (v56 != v57)
        {
          v62 = v56 < v57;
        }

        v60 -= 16;
        if (!v62)
        {
          v63 = (a1 + v60 + 48);
          goto LABEL_62;
        }
      }

      v63 = a1;
LABEL_62:
      *v63 = v56;
      v63[1] = v58;
      if (++v55 == 8)
      {
        return v53 + 2 == a2;
      }
    }

    v34 = v53;
    v54 += 16;
    v53 += 2;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

float sub_19B9CC1DC(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

float32x4_t sub_19B9CC28C(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_19B9CC990(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v5, sel_serviceExtensionWillTerminate, v3, v4);
  }

  return result;
}

os_log_t sub_19B9D0538()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

uint64_t sub_19B9D0B34(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#monitor dealloc destroying connection in a deferred way", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#monitor dealloc destroying connection in a deferred way", v5, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLMonitor dealloc]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    return CLConnection::deferredDelete(*(*(*(v1 + 40) + 8) + 24));
  }

  return result;
}

void sub_19B9D0F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9D0FC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_monitoredIdentifiers(*(a1 + 32), a2, a3, a4);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B9D10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9D10F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_allMonitoringRecordsByIdentifier(*(*(a1 + 32) + 24), a2, a3, a4);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t sub_19B9D18D8(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_addConditionForMonitoring_identifier_options_assumedState_, v3, v4);
}

uint64_t sub_19B9D1E8C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v5 = *(a1 + 32);

  return objc_msgSend_removeConditionFromMonitoringWithIdentifier_(Weak, v3, v5, v4);
}

void sub_19B9D2314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  sub_19B8750F8(v17);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_19B9D2A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  sub_19B8750F8(v29);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B9D2AF0(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Default handler invoked, message:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  Weak = objc_loadWeak((a1 + 32));
  v10 = *(a2 + 8);
  v11 = *a2;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend_handleMessageMonitor_(Weak, v8, &v11, v9);
  if (v12)
  {
    sub_19B8750F8(v12);
  }
}

void sub_19B9D2C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9D30F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setIdentityToken_(*(a1 + 32), a2, *(a1 + 40), a4);
  objc_msgSend_setStorageToken_(*(a1 + 32), v5, *(a1 + 48), v6);
  v10 = *(a1 + 32);

  return objc_msgSend_manageConnection(v10, v7, v8, v9);
}

id sub_19B9D360C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4);
  qword_1ED519300 = result;
  return result;
}

uint64_t sub_19B9D3798(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_1F0E6E648;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_19B874C9C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 48) = 0x600000006;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 80) = _Q0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 114) = 1;
  return a1;
}

void sub_19B9D3840(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9D3858(uint64_t a1)
{
  *a1 = &unk_1F0E6E648;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

uint64_t sub_19B9D38CC(uint64_t a1, char a2)
{
  *(a1 + 112) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_19B9D3900(uint64_t a1, int a2)
{
  *(a1 + 113) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))(result, a2 ^ 1u);
  }

  return result;
}

uint64_t sub_19B9D3938(uint64_t a1, char *a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v686 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || !a4)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v22 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240704;
      *&buf[4] = a2 == 0;
      *&buf[8] = 1026;
      *&buf[10] = a3 == 0;
      *&buf[14] = 1026;
      *&buf[16] = a4 == 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned false. isTripLocationsNil, %{public}u, isInertialOdometryDataNil, %{public}u, isReconstructedLocationsNil, %{public}u.", buf, 0x14u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v663 = 67240704;
    *&v663[4] = a2 == 0;
    *&v663[8] = 1026;
    *&v663[10] = a3 == 0;
    *&v663[14] = 1026;
    *&v663[16] = a4 == 0;
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned false. isTripLocationsNil, %{public}u, isInertialOdometryDataNil, %{public}u, isReconstructedLocationsNil, %{public}u.", v663, 20);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v24);
    goto LABEL_28;
  }

  v15 = objc_msgSend_count(a3, a2, a3, a4);
  if (v15 <= 1)
  {
    v17 = v15;
    sub_19B8D7ABC(a2, a4);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v18 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *&buf[4] = v17;
      *&buf[12] = 2050;
      *&buf[14] = 2;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned true. Deep copy tripLocations to reconstructedLocations. inertialOdometryData array count, %{public}zu, expected minimum count, %{public}zu.", buf, 0x16u);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v663 = 134349312;
      *&v663[4] = v17;
      *&v663[12] = 2050;
      *&v663[14] = 2;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned true. Deep copy tripLocations to reconstructedLocations. inertialOdometryData array count, %{public}zu, expected minimum count, %{public}zu.", v663, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    return 1;
  }

  v652 = a4;
  sub_19B8D8528(a2, 5, a7, buf, 15.5, 60.0, v16);
  v29 = *(a1 + 592);
  if (v29)
  {
    *(a1 + 600) = v29;
    operator delete(v29);
  }

  v657 = (a1 + 592);
  v30 = *buf;
  *(a1 + 592) = *buf;
  v31 = *&buf[8];
  v654 = (a1 + 600);
  *(a1 + 600) = *&buf[8];
  if ((v31 - v30) <= 8)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v89 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      v90 = *v654 - *v657;
      *buf = 134349056;
      *&buf[4] = v90;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned false. Number of hunc based selected locations %{public}zu.", buf, 0xCu);
    }

    v91 = sub_19B87DD40();
    if (*(v91 + 160) <= 1 && *(v91 + 164) <= 1 && *(v91 + 168) <= 1 && !*(v91 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v92 = *v654 - *v657;
    *v663 = 134349056;
    *&v663[4] = v92;
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Returned false. Number of hunc based selected locations %{public}zu.", v663, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v24);
LABEL_28:
    if (v24 != buf)
    {
      free(v24);
    }

    return 0;
  }

  Object = objc_msgSend_firstObject(a2, v26, v27, v28);
  objc_msgSend_latitude(Object, v33, v34, v35);
  v37 = v36;
  v41 = objc_msgSend_firstObject(a2, v38, v39, v40);
  objc_msgSend_longitude(v41, v42, v43, v44);
  *(a1 + 48) = v37;
  *(a1 + 56) = v45;
  *(a1 + 64) = 1;
  v49 = sub_19B8D96A4(a2, v46, v47, v48);
  v52 = objc_msgSend_objectAtIndexedSubscript_(a2, v50, *(*(a1 + 600) - 8), v51);
  v56 = objc_msgSend_timestamp(v52, v53, v54, v55);
  v59 = objc_msgSend_objectAtIndexedSubscript_(a2, v57, **(a1 + 592), v58);
  v63 = objc_msgSend_timestamp(v59, v60, v61, v62);
  objc_msgSend_timeIntervalSinceDate_(v56, v64, v63, v65);
  v67 = v66;
  v68 = v66 < 2700.0 && v49 > 0.9;
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v69 = a6 ^ 1;
  v649 = v68 & (a6 ^ 1);
  v70 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134284545;
    *&buf[4] = v49;
    *&buf[12] = 2050;
    *&buf[14] = v67;
    *&buf[22] = 1026;
    LODWORD(v667) = v68 & v69;
    WORD2(v667) = 1026;
    *(&v667 + 6) = a6;
    WORD5(v667) = 1026;
    HIDWORD(v667) = a7;
    _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] ratioOfDenseUrbanLocation, %{private}.2f, durationOfSession_inSec, %{public}.2f, shouldRunRANSAC, %{public}d, wasLocationOutlierRejectorEnabled, %{public}d, enableUseWifiInPTS, %{public}d.", buf, 0x28u);
  }

  v71 = sub_19B87DD40();
  if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v663 = 134284545;
    *&v663[4] = v49;
    *&v663[12] = 2050;
    *&v663[14] = v67;
    *&v663[22] = 1026;
    *&v663[24] = v68 & v69;
    *&v663[28] = 1026;
    *&v663[30] = a6;
    *&v663[34] = 1026;
    *&v663[36] = a7;
    v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] ratioOfDenseUrbanLocation, %{private}.2f, durationOfSession_inSec, %{public}.2f, shouldRunRANSAC, %{public}d, wasLocationOutlierRejectorEnabled, %{public}d, enableUseWifiInPTS, %{public}d.", v663, 40);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v72);
    if (v72 != buf)
    {
      free(v72);
    }
  }

  if (a6)
  {
    *a1 = 257;
    *(a1 + 424) = a8;
    *(a1 + 432) = a9;
    v73 = sub_19B949838(a1, a2, a3, v652);
    *(a1 + 576) = *(a1 + 568);
    v77 = objc_msgSend_count(a2, v74, v75, v76);
    v81 = *(a1 + 576);
    v82 = *(a1 + 568);
    v83 = (v81 - v82) >> 3;
    if (v77 <= v83)
    {
      if (v77 < v83)
      {
        v81 = v82 + 8 * v77;
        *(a1 + 576) = v81;
      }
    }

    else
    {
      v84 = v77 - v83;
      v85 = *(a1 + 584);
      if (v84 > (v85 - v81) >> 3)
      {
        if (!(v77 >> 61))
        {
          v86 = v85 - v82;
          v87 = v86 >> 2;
          if (v86 >> 2 <= v77)
          {
            v87 = v77;
          }

          if (v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v88 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v87;
          }

          sub_19B8D9954(a1 + 568, v88);
        }

        sub_19B8B8A40();
      }

      bzero(*(a1 + 576), 8 * v84);
      v81 += 8 * v84;
      *(a1 + 576) = v81;
    }

    if (v82 != v81)
    {
      v336 = 0;
      v337 = (v81 - v82 - 8) >> 3;
      v338 = vdupq_n_s64(v337);
      v339 = (v337 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v340 = xmmword_19BA8C830;
      v341 = vdupq_n_s64(2uLL);
      do
      {
        v342 = vmovn_s64(vcgeq_u64(v338, v340));
        if (v342.i8[0])
        {
          *(v82 + 8 * v336) = v336;
        }

        if (v342.i8[4])
        {
          *(v82 + 8 * v336 + 8) = v336 + 1;
        }

        v336 += 2;
        v340 = vaddq_s64(v340, v341);
      }

      while (v339 != v336);
    }

    if (v73)
    {
      goto LABEL_266;
    }

    goto LABEL_278;
  }

  if (!v649)
  {
    v101 = sub_19B9D7088(a1, a2, a3, v652);
    goto LABEL_265;
  }

  context = objc_autoreleasePoolPush();
  *a1 = 0;
  if (*(a1 + 600) - *(a1 + 592) <= 8uLL)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v96 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v97 = *v654 - *v657;
      *buf = 134217984;
      *&buf[4] = v97;
      _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RANSAC is called with insufficient locations samples, %{publuc}zu.", buf, 0xCu);
    }

    v98 = sub_19B87DD40();
    if ((*(v98 + 160) & 0x80000000) != 0 && (*(v98 + 164) & 0x80000000) != 0 && (*(v98 + 168) & 0x80000000) != 0 && !*(v98 + 152))
    {
      goto LABEL_250;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v99 = *v654 - *v657;
    *v660 = 134217984;
    *&v660[4] = v99;
    v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RANSAC is called with insufficient locations samples, %{publuc}zu.", v660, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v100);
LABEL_248:
    if (v100 != buf)
    {
      free(v100);
    }

LABEL_250:
    objc_autoreleasePoolPop(context);
    v345 = qword_1EAFE4758;
LABEL_251:
    if (v345 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v346 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v346, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] RANSAC failed. Fall back to non-RANSAC.", buf, 2u);
    }

    v347 = sub_19B87DD40();
    v348 = v652;
    if (*(v347 + 160) > 1 || *(v347 + 164) > 1 || *(v347 + 168) > 1 || *(v347 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v663 = 0;
      v349 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] RANSAC failed. Fall back to non-RANSAC.", v663, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v349);
      if (v349 != buf)
      {
        free(v349);
      }

      v348 = v652;
    }

    v101 = sub_19B9D7088(a1, a2, a3, v348);
LABEL_265:
    if (v101)
    {
      goto LABEL_266;
    }

LABEL_278:
    v21 = 0;
    goto LABEL_347;
  }

  v102 = sub_19B8D90D4(v657, v93, v94, v95);
  v105 = objc_msgSend_objectsAtIndexes_(a2, v103, v102, v104);
  v109 = objc_msgSend_lastObject(v105, v106, v107, v108);
  v113 = objc_msgSend_timestamp(v109, v110, v111, v112);
  v117 = objc_msgSend_firstObject(v105, v114, v115, v116);
  v121 = objc_msgSend_timestamp(v117, v118, v119, v120);
  objc_msgSend_timeIntervalSinceDate_(v113, v122, v121, v123);
  if (v124 < 180.0 || v124 < 0.0)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v343 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v343, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] computation of scenario specific metrics failed.", buf, 2u);
    }

    v344 = sub_19B87DD40();
    if ((*(v344 + 160) & 0x80000000) != 0 && (*(v344 + 164) & 0x80000000) != 0 && (*(v344 + 168) & 0x80000000) != 0 && !*(v344 + 152))
    {
      goto LABEL_250;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v660 = 0;
    v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] computation of scenario specific metrics failed.", v660, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v100);
    goto LABEL_248;
  }

  v125 = vcvtmd_u64_f64(v124 / 180.0);
  *(a1 + 616) = v125;
  v126 = pow(0.7, (v125 + 2));
  v127 = vcvtpd_u64_f64(-2.0 / log10(1.0 - v126));
  if (v127 <= 0x64)
  {
    v127 = 100;
  }

  if (v127 >= 0x3E8)
  {
    v127 = 1000;
  }

  *(a1 + 624) = v127;
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v128 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    v129 = *(a1 + 624);
    v130 = *(a1 + 616);
    *buf = 134218240;
    *&buf[4] = v129;
    *&buf[12] = 2048;
    *&buf[14] = v130;
    _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[computeScenarioSpecificMetrics] number of iteration,%lu, number of intermediate points, %lu.", buf, 0x16u);
  }

  v131 = sub_19B87DD40();
  if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v132 = *(a1 + 624);
    v133 = *(a1 + 616);
    *v660 = 134218240;
    *&v660[4] = v132;
    *&v660[12] = 2048;
    *&v660[14] = v133;
    v134 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[computeScenarioSpecificMetrics] number of iteration,%lu, number of intermediate points, %lu.", v660, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::computeScenarioSpecificMetrics(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v134);
    if (v134 != buf)
    {
      free(v134);
    }
  }

  v650 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 624))
  {
    v641 = 0;
    v135 = 0;
    v136 = a1;
    while (1)
    {
      v646 = v135;
      v137 = v136[77] + 2;
      if (v137 >= (v136[75] - v136[74]) >> 3)
      {
        break;
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      *v660 = 0;
      sub_19B9D8CFC(buf, 0, v660);
      *v660 = *v654 - *v657 - 1;
      sub_19B9D8CFC(buf, *v660, v660);
      while (*&buf[16] < v137)
      {
        v141 = arc4random_uniform((*v654 - *v657) >> 3);
        v142 = *&buf[8];
        if (!*&buf[8])
        {
LABEL_124:
          operator new();
        }

        v143 = &buf[8];
        v144 = *&buf[8];
        do
        {
          v145 = *(v144 + 32);
          v146 = v145 >= v141;
          v147 = v145 < v141;
          if (v146)
          {
            v143 = v144;
          }

          v144 = *(v144 + 8 * v147);
        }

        while (v144);
        if (v143 == &buf[8] || *(v143 + 4) > v141)
        {
          while (1)
          {
            while (1)
            {
              v148 = v142;
              v149 = v142[4];
              if (v149 <= v141)
              {
                break;
              }

              v142 = *v148;
              if (!*v148)
              {
                goto LABEL_124;
              }
            }

            if (v149 >= v141)
            {
              break;
            }

            v142 = v148[1];
            if (!v142)
            {
              goto LABEL_124;
            }
          }
        }
      }

      v152 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v138, v139, v140);
      v153 = *buf;
      if (*buf != &buf[8])
      {
        do
        {
          objc_msgSend_addIndex_(v152, v150, (*v657)[v153[4]], v151);
          v154 = v153[1];
          if (v154)
          {
            do
            {
              v155 = v154;
              v154 = *v154;
            }

            while (v154);
          }

          else
          {
            do
            {
              v155 = v153[2];
              v156 = *v155 == v153;
              v153 = v155;
            }

            while (!v156);
          }

          v153 = v155;
        }

        while (v155 != &buf[8]);
      }

      sub_19B9D8CB0(*&buf[8]);
      if (!v152)
      {
        goto LABEL_429;
      }

      v159 = objc_msgSend_objectsAtIndexes_(a2, v157, v152, v158);
      if (sub_19B949838(a1, v159, a3, v650))
      {
        v648 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v160, v161, v162);
        if (*v654 != *v657)
        {
          v166 = 0;
          v167 = 0;
          v168 = 0.0;
          while (1)
          {
            if (v167 >= objc_msgSend_count(v650, v163, v164, v165))
            {
              goto LABEL_163;
            }

            v169 = (*v657)[v166];
            v170 = objc_msgSend_objectAtIndex_(a2, v163, v169, v165);
            v173 = objc_msgSend_objectAtIndex_(v650, v171, v167, v172);
            v177 = objc_msgSend_timestamp(v173, v174, v175, v176);
            v181 = objc_msgSend_timestamp(v170, v178, v179, v180);
            if (objc_msgSend_compare_(v177, v182, v181, v183) == -1)
            {
              ++v167;
            }

            else
            {
              if (v167)
              {
                v184 = objc_msgSend_objectAtIndex_(v650, v163, v167 - 1, v165);
                v188 = objc_msgSend_timestamp(v170, v185, v186, v187);
                v192 = objc_msgSend_timestamp(v184, v189, v190, v191);
                objc_msgSend_timeIntervalSinceDate_(v188, v193, v192, v194);
                v196 = v195;
                v200 = objc_msgSend_timestamp(v173, v197, v198, v199);
                v204 = objc_msgSend_timestamp(v184, v201, v202, v203);
                objc_msgSend_timeIntervalSinceDate_(v200, v205, v204, v206);
                v211 = v210;
                v212 = v196 / v210;
                if (v196 / v210 > 1.0)
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                  }

                  v292 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *&buf[4] = v196;
                    *&buf[12] = 2048;
                    *&buf[14] = v211;
                    _os_log_impl(&dword_19B873000, v292, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[selectInliers] projection is greater than 1, fromPrevToMeas, %.2f, fromPrevToEvaluate, %.2f", buf, 0x16u);
                  }

                  v293 = sub_19B87DD40();
                  if ((*(v293 + 160) & 0x80000000) == 0 || (*(v293 + 164) & 0x80000000) == 0 || (*(v293 + 168) & 0x80000000) == 0 || *(v293 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                    }

                    *v660 = 134218240;
                    *&v660[4] = v196;
                    *&v660[12] = 2048;
                    *&v660[14] = v211;
                    v294 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[selectInliers] projection is greater than 1, fromPrevToMeas, %.2f, fromPrevToEvaluate, %.2f", v660, 22);
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::selectInliers(RTSModel &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v294);
                    goto LABEL_206;
                  }

                  goto LABEL_208;
                }

                objc_msgSend_latitude(v184, v207, v208, v209);
                v214 = v213;
                objc_msgSend_longitude(v184, v215, v216, v217);
                v219 = CLLocationCoordinate2DMake(v214, v218);
                objc_msgSend_latitude(v173, v220, v221, v222);
                v224 = v223;
                objc_msgSend_longitude(v173, v225, v226, v227);
                v229 = CLLocationCoordinate2DMake(v224, v228);
                sub_19B8D9740(buf, v219.latitude, v219.longitude, v229.latitude, v229.longitude, v212);
                objc_msgSend_latitude(v170, v230, v231, v232);
                v234 = v233;
                objc_msgSend_longitude(v170, v235, v236, v237);
                sub_19BA0C01C((a1 + 528), v234, v238, *buf, *&buf[8], 0.0);
                v240 = v239;
                if (v239 < 25.0)
                {
                  objc_msgSend_addIndex_(v648, v163, v169, v165);
                }
              }

              else
              {
                v241 = objc_msgSend_timestamp(v173, v163, v164, v165);
                v245 = objc_msgSend_timestamp(v170, v242, v243, v244);
                if (objc_msgSend_compare_(v241, v246, v245, v247))
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                  }

                  v296 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    v300 = objc_msgSend_timestamp(v173, v297, v298, v299);
                    objc_msgSend_timeIntervalSinceReferenceDate(v300, v301, v302, v303);
                    v305 = v304;
                    v309 = objc_msgSend_timestamp(v170, v306, v307, v308);
                    objc_msgSend_timeIntervalSinceReferenceDate(v309, v310, v311, v312);
                    *buf = 134218240;
                    *&buf[4] = v305;
                    *&buf[12] = 2048;
                    *&buf[14] = v313;
                    _os_log_impl(&dword_19B873000, v296, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[selectInliers] first estimated location is later than first measured locaton, timestampFirstEstimated, %.2f, timestampFirstMeasured, %.2f", buf, 0x16u);
                  }

                  v314 = sub_19B87DD40();
                  if ((*(v314 + 160) & 0x80000000) == 0 || (*(v314 + 164) & 0x80000000) == 0 || (*(v314 + 168) & 0x80000000) == 0 || *(v314 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                    }

                    v318 = qword_1EAFE4760;
                    v319 = objc_msgSend_timestamp(v173, v315, v316, v317);
                    objc_msgSend_timeIntervalSinceReferenceDate(v319, v320, v321, v322);
                    v324 = v323;
                    v328 = objc_msgSend_timestamp(v170, v325, v326, v327);
                    objc_msgSend_timeIntervalSinceReferenceDate(v328, v329, v330, v331);
                    *v660 = 134218240;
                    *&v660[4] = v324;
                    *&v660[12] = 2048;
                    *&v660[14] = v332;
                    v294 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v318, 16, "[CLTrajectorySmoother]:[selectInliers] first estimated location is later than first measured locaton, timestampFirstEstimated, %.2f, timestampFirstMeasured, %.2f", v660, 22);
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::selectInliers(RTSModel &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v294);
LABEL_206:
                    if (v294 != buf)
                    {
                      free(v294);
                    }
                  }

LABEL_208:
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                  }

                  v333 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B873000, v333, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Selection of inliers failed.", buf, 2u);
                  }

                  v334 = sub_19B87DD40();
                  if ((*(v334 + 160) & 0x80000000) == 0 || (*(v334 + 164) & 0x80000000) == 0 || (*(v334 + 168) & 0x80000000) == 0 || *(v334 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
                    }

                    *v660 = 0;
                    v335 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Selection of inliers failed.", v660, 2);
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v335);
                    if (v335 != buf)
                    {
                      free(v335);
                    }
                  }

                  goto LABEL_194;
                }

                objc_msgSend_latitude(v170, v248, v249, v250);
                v252 = v251;
                objc_msgSend_longitude(v170, v253, v254, v255);
                v257 = v256;
                objc_msgSend_latitude(v173, v258, v259, v260);
                v262 = v261;
                objc_msgSend_longitude(v173, v263, v264, v265);
                sub_19BA0C01C((a1 + 528), v252, v257, v262, v266, 0.0);
                v240 = v267;
                if (v267 < 25.0)
                {
                  objc_msgSend_addIndex_(v648, v163, v169, v165);
                }

                v167 = 0;
              }

              v168 = v168 + v240;
              ++v166;
            }

            if (v166 >= *v654 - *v657)
            {
              goto LABEL_163;
            }
          }
        }

        v168 = 0.0;
LABEL_163:
        v274 = objc_msgSend_count(v648, v163, v164, v165);
        v275 = *v654;
        v276 = *v657;
        v279 = objc_msgSend_objectsAtIndexes_(a2, v277, v648, v278);
        v283 = sub_19B8D9388(v279, 300.0, v280, v281, v282);
        v284 = v283;
        v285 = v274 / (v275 - v276);
        v286 = v285 < 0.8 || v283;
        if (v286 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
          }

          v287 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240448;
            *&buf[4] = v284;
            *&buf[8] = 1026;
            *&buf[10] = v285 < 0.8;
            _os_log_impl(&dword_19B873000, v287, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Disgarding model, areInliersTooSparse, %{public}d, isRatioOfInliersLow, %{public}d.", buf, 0xEu);
          }

          v288 = sub_19B87DD40();
          if (*(v288 + 160) > 1 || *(v288 + 164) > 1 || *(v288 + 168) > 1 || *(v288 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
            }

            *v660 = 67240448;
            *&v660[4] = v284;
            *&v660[8] = 1026;
            *&v660[10] = v285 < 0.8;
            v289 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Disgarding model, areInliersTooSparse, %{public}d, isRatioOfInliersLow, %{public}d.", v660, 14);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v289);
            if (v289 != buf)
            {
              free(v289);
            }
          }
        }

        else
        {
          v290 = v641;
          v291 = v641 >> 4;
          if (((v641 >> 4) + 1) >> 60)
          {
            sub_19B8B8A40();
          }

          if (v641 >> 4 != -1)
          {
            if (!(((v641 >> 4) + 1) >> 60))
            {
              operator new();
            }

            sub_19B8B8AB0();
          }

          v295 = 16 * v291;
          *v295 = v648;
          *(v295 + 8) = v168;
          v641 = 16 * v291 + 16;
          memcpy(0, 0, v290);
        }
      }

      else
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
        }

        v268 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v268, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RTS failed while generating models with randomly selected location samples.", buf, 2u);
        }

        v269 = sub_19B87DD40();
        if ((*(v269 + 160) & 0x80000000) == 0 || (*(v269 + 164) & 0x80000000) == 0 || (*(v269 + 168) & 0x80000000) == 0 || *(v269 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
          }

          *v660 = 0;
          v273 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RTS failed while generating models with randomly selected location samples.", v660, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v273);
          if (v273 != buf)
          {
            free(v273);
          }
        }
      }

LABEL_194:
      objc_msgSend_removeAllObjects(v650, v270, v271, v272);
      v135 = v646 + 1;
      v136 = a1;
      if ((v646 + 1) >= *(a1 + 624))
      {
        goto LABEL_360;
      }
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v622 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v623 = *v654 - *v657;
      *buf = 134217984;
      *&buf[4] = v623;
      _os_log_impl(&dword_19B873000, v622, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[chooseRandomLocationIndices] insufficient location samplers for random selection, %{publuc}zu.", buf, 0xCu);
    }

    v624 = sub_19B87DD40();
    if ((*(v624 + 160) & 0x80000000) == 0 || (*(v624 + 164) & 0x80000000) == 0 || (*(v624 + 168) & 0x80000000) == 0 || *(v624 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v625 = *v654 - *v657;
      *v660 = 134217984;
      *&v660[4] = v625;
      v626 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[chooseRandomLocationIndices] insufficient location samplers for random selection, %{publuc}zu.", v660, 12);
      sub_19B885924("Generic", 1, 0, 0, "NSIndexSet *CLTrajectorySmoother::chooseRandomLocationIndices()", "CoreLocation: %s\n", v626);
      if (v626 != buf)
      {
        free(v626);
      }
    }

LABEL_429:
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v627 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v627, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] random location selection failed.", buf, 2u);
    }

    v628 = sub_19B87DD40();
    if ((*(v628 + 160) & 0x80000000) == 0 || (*(v628 + 164) & 0x80000000) == 0 || (*(v628 + 168) & 0x80000000) == 0 || *(v628 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v660 = 0;
      v629 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] random location selection failed.", v660, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v629);
      if (v629 != buf)
      {
        free(v629);
      }
    }

    goto LABEL_250;
  }

  v641 = 0;
LABEL_360:

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v586 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = v641 >> 4;
    _os_log_impl(&dword_19B873000, v586, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Number of selected models, %{public}zu.", buf, 0xCu);
  }

  v587 = sub_19B87DD40();
  if (*(v587 + 160) > 1 || *(v587 + 164) > 1 || *(v587 + 168) > 1 || (*(v587 + 152) & 1) != 0)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v588 = v641 >> 4;
    *v660 = 134349056;
    *&v660[4] = v641 >> 4;
    v589 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Number of selected models, %{public}zu.", v660, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v589);
    if (v589 != buf)
    {
      free(v589);
    }
  }

  else
  {
    v588 = v641 >> 4;
  }

  v590 = 126 - 2 * __clz(v588);
  if (v641)
  {
    v591 = v590;
  }

  else
  {
    v591 = 0;
  }

  sub_19B9D78C8(0, v641, v591, 1);
  v595 = sub_19B8D9230(a3, v592);
  *a1 = 257;
  v596 = 0;
  if (!v641)
  {
    goto LABEL_250;
  }

  v597 = 0;
  if (v588 <= 1)
  {
    v588 = 1;
  }

  v598 = v595 * 5.0;
  v599 = v595 * 0.5;
  while (1)
  {
    if (v597 >= 0xB)
    {
      *a1 = 0;
    }

    v600 = *v596;
    v601 = objc_msgSend_objectsAtIndexes_(a2, v593, *v596, v594);
    if ((sub_19B949838(a1, v601, a3, v652) & 1) == 0)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v619 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v597;
        _os_log_impl(&dword_19B873000, v619, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RTS failed while evaluating model, %{public}zu.", buf, 0xCu);
      }

      v620 = sub_19B87DD40();
      if ((*(v620 + 160) & 0x80000000) == 0 || (*(v620 + 164) & 0x80000000) == 0 || (*(v620 + 168) & 0x80000000) == 0 || *(v620 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
        }

        *v660 = 134349056;
        *&v660[4] = v597;
        v621 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] RTS failed while evaluating model, %{public}zu.", v660, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v621);
        if (v621 != buf)
        {
          free(v621);
        }
      }

      goto LABEL_412;
    }

    v607 = sub_19B8D913C(v652, v602, v603, v604);
    v608 = v607 > v599 && v607 < v598;
    if (*(a1 + 440) < 3.0 && *(a1 + 448) < 0.785398157 && v608)
    {
      break;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v609 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      v610 = *(a1 + 448);
      v611 = *(a1 + 440) < 3.0;
      *buf = 134349824;
      *&buf[4] = v597;
      *&buf[12] = 1026;
      *&buf[14] = v611;
      *&buf[18] = 1026;
      *&buf[20] = v610 < 0.785398157;
      LOWORD(v667) = 1026;
      *(&v667 + 2) = v608;
      _os_log_impl(&dword_19B873000, v609, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Disgard model, %{public}zu, isDisplacementRatio, %{public}d, isCourseOffset, %{public}d, isDistance, %{public}d.", buf, 0x1Eu);
    }

    v612 = sub_19B87DD40();
    if (*(v612 + 160) > 1 || *(v612 + 164) > 1 || *(v612 + 168) > 1 || *(v612 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v616 = *(a1 + 440) < 3.0;
      v617 = *(a1 + 448) < 0.785398157;
      *v660 = 134349824;
      *&v660[4] = v597;
      *&v660[12] = 1026;
      *&v660[14] = v616;
      *&v660[18] = 1026;
      *&v660[20] = v617;
      v661 = 1026;
      v662 = v608;
      v618 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] Disgard model, %{public}zu, isDisplacementRatio, %{public}d, isCourseOffset, %{public}d, isDistance, %{public}d.", v660, 30);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v618);
      if (v618 != buf)
      {
        free(v618);
      }
    }

LABEL_412:
    objc_msgSend_removeAllObjects(v652, v613, v614, v615);
    ++v597;
    v596 += 2;
    if (v588 == v597)
    {
      v630 = 0;
      goto LABEL_441;
    }
  }

  *(a1 + 576) = *(a1 + 568);
  *v663 = MEMORY[0x1E69E9820];
  *&v663[8] = 3221225472;
  *&v663[16] = sub_19B9D742C;
  *&v663[24] = &unk_1E753E8F0;
  *&v663[32] = a1;
  objc_msgSend_enumerateIndexesUsingBlock_(v600, v605, v663, v606);
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v634 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *&buf[4] = v597;
    _os_log_impl(&dword_19B873000, v634, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] selected model, %{public}zu.", buf, 0xCu);
  }

  v635 = sub_19B87DD40();
  if (*(v635 + 160) > 1 || *(v635 + 164) > 1 || *(v635 + 168) > 1 || *(v635 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v660 = 134349056;
    *&v660[4] = v597;
    v636 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothingWithRANSAC] selected model, %{public}zu.", v660, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothingWithRANSAC(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v636);
    if (v636 != buf)
    {
      free(v636);
    }
  }

  v630 = 1;
LABEL_441:
  operator delete(0);
  objc_autoreleasePoolPop(context);
  v345 = qword_1EAFE4758;
  if (!v630)
  {
    goto LABEL_251;
  }

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v631 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v631, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] RANSAC succeeded.", buf, 2u);
  }

  v632 = sub_19B87DD40();
  if (*(v632 + 160) > 1 || *(v632 + 164) > 1 || *(v632 + 168) > 1 || *(v632 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v663 = 0;
    v633 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] RANSAC succeeded.", v663, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v633);
    if (v633 != buf)
    {
      free(v633);
    }
  }

LABEL_266:
  v350 = sub_19B8D90D4((a1 + 568), v78, v79, v80);
  Index = objc_msgSend_firstIndex(v350, v351, v352, v353);
  v357 = objc_msgSend_objectAtIndex_(a2, v355, Index, v356);
  v361 = objc_msgSend_timestamp(v357, v358, v359, v360);
  objc_msgSend_timeIntervalSinceReferenceDate(v361, v362, v363, v364);
  *a5 = v365;
  v369 = objc_msgSend_lastObject(v652, v366, v367, v368);
  v373 = objc_msgSend_timestamp(v369, v370, v371, v372);
  v377 = objc_msgSend_firstObject(v652, v374, v375, v376);
  v381 = objc_msgSend_timestamp(v377, v378, v379, v380);
  objc_msgSend_timeIntervalSinceDate_(v373, v382, v381, v383);
  v651 = v387;
  v388 = *(a1 + 488);
  *v663 = *(a1 + 472);
  *&v663[16] = v388;
  __dst = 0;
  v665 = 0;
  *&v663[32] = 0;
  v390 = *(a1 + 504);
  v389 = *(a1 + 512);
  if (v389 != v390)
  {
    sub_19B8FD05C(&v663[32], (v389 - v390) >> 3);
  }

  v394 = sub_19B8D913C(v652, v384, v385, v386);
  if (v394 <= 0.0)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v443 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v443, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[CA metrics] ptsPathLength is zero", buf, 2u);
    }

    v444 = sub_19B87DD40();
    if ((*(v444 + 160) & 0x80000000) == 0 || (*(v444 + 164) & 0x80000000) == 0 || (*(v444 + 168) & 0x80000000) == 0 || (v394 = -1.0, v442 = -1.0, v410 = -1.0, *(v444 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      *v660 = 0;
      v445 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[CA metrics] ptsPathLength is zero", v660, 2);
      sub_19B885924("Generic", 1, 0, 0, "void CLTrajectorySmoother::computeReconstructedRouteMetrics(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, CLPedestrianRTSSmoother::RTSModelMetrics, double &, double &, double &)", "CoreLocation: %s\n", v445);
      if (v445 != buf)
      {
        free(v445);
      }

      v394 = -1.0;
      v442 = -1.0;
      v410 = -1.0;
    }
  }

  else
  {
    *v660 = objc_msgSend_firstObject(a2, v391, v392, v393);
    *&v660[8] = objc_msgSend_lastObject(a2, v395, v396, v397);
    v399 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v398, v660, 2);
    v406 = sub_19B8D913C(v399, v400, v401, v402);
    v407 = (__dst - *&v663[32]) >> 3;
    v408 = *(a1 + 568);
    v409 = *(a1 + 576) - v408;
    v410 = v406 / v394;
    if (v407 == (v409 >> 3) - 1)
    {
      *buf = 0;
      v659[0] = 0;
      v411 = 0.0;
      if (v409 != 8)
      {
        v412 = 0;
        do
        {
          v413 = objc_msgSend_objectAtIndexedSubscript_(a2, v403, *(v408 + 8 * v412 + 8), v405);
          v416 = objc_msgSend_objectAtIndexedSubscript_(a2, v414, *(*(a1 + 568) + 8 * v412), v415);
          v420 = objc_msgSend_timestamp(v413, v417, v418, v419);
          objc_msgSend_timeIntervalSinceReferenceDate(v420, v421, v422, v423);
          v425 = v424;
          v429 = objc_msgSend_timestamp(v416, v426, v427, v428);
          objc_msgSend_timeIntervalSinceReferenceDate(v429, v430, v431, v432);
          sub_19B8D7A04(v652, buf, v659, v434, v425, v433);
          v435 = v659[0];
          v437 = objc_msgSend_subarrayWithRange_(v652, v436, *buf, v659[0] - *buf + 1);
          v441 = sub_19B8D913C(v437, v438, v439, v440);
          if (v441 <= 0.0)
          {
            --v407;
          }

          else
          {
            v411 = v411 + *(*&v663[32] + 8 * v412) / v441;
          }

          ++v412;
          *buf = v435;
          v408 = *(a1 + 568);
        }

        while (v412 < ((*(a1 + 576) - v408) >> 3) - 1);
      }

      if (v407)
      {
        v442 = v411 / v407;
        goto LABEL_303;
      }

LABEL_302:
      v442 = -1.0;
    }

    else
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v446 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v446, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[CA metrics] fwdPropEndptError.size != consumedTripLocation.size", buf, 2u);
      }

      v447 = sub_19B87DD40();
      if ((*(v447 + 160) & 0x80000000) == 0 || (*(v447 + 164) & 0x80000000) == 0 || (*(v447 + 168) & 0x80000000) == 0 || (v442 = -1.0, *(v447 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
        }

        LOWORD(v659[0]) = 0;
        v448 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[CA metrics] fwdPropEndptError.size != consumedTripLocation.size", v659, 2);
        sub_19B885924("Generic", 1, 0, 0, "void CLTrajectorySmoother::computeReconstructedRouteMetrics(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, CLPedestrianRTSSmoother::RTSModelMetrics, double &, double &, double &)", "CoreLocation: %s\n", v448);
        if (v448 != buf)
        {
          free(v448);
        }

        goto LABEL_302;
      }
    }
  }

LABEL_303:
  if (*&v663[32])
  {
    __dst = *&v663[32];
    operator delete(*&v663[32]);
  }

  v449 = *(a1 + 568);
  v450 = *(a1 + 576);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  if (v449 != v450)
  {
    operator new();
  }

  v647 = v442;
  v451 = 0;
  v452 = 0;
  v453 = 0;
  v454 = 0;
  v455 = 0.0;
  v456 = 0.0;
  v655 = 0.0;
  v658 = 0.0;
  v457 = 0.0;
  while (v452 < objc_msgSend_count(a2, v403, v404, v405))
  {
    v461 = objc_msgSend_objectAtIndexedSubscript_(a2, v458, v452, v460);
    v465 = v461;
    v466 = *&buf[8];
    if (*&buf[8])
    {
      v467 = &buf[8];
      do
      {
        v468 = *(v466 + 32);
        v146 = v468 >= v452;
        v469 = v468 < v452;
        if (v146)
        {
          v467 = v466;
        }

        v466 = *(v466 + 8 * v469);
      }

      while (v466);
      if (v467 != &buf[8] && v452 >= *(v467 + 4))
      {
        if (v454)
        {
          v470 = objc_msgSend_timestamp(v461, v462, v463, v464);
          v474 = objc_msgSend_timestamp(v454, v471, v472, v473);
          objc_msgSend_timeIntervalSinceDate_(v470, v475, v474, v476);
          v655 = v655 + v477;
          v478 = v658;
          if (v477 > v658)
          {
            v478 = v477;
          }

          v658 = v478;
          if (v477 > 20.0)
          {
            ++v451;
          }
        }

        objc_msgSend_horizontalAccuracy(v465, v462, v463, v464);
        v455 = v455 + v479;
        v454 = v465;
      }
    }

    if (v453)
    {
      v480 = objc_msgSend_timestamp(v465, v462, v463, v464);
      v484 = objc_msgSend_timestamp(v453, v481, v482, v483);
      objc_msgSend_timeIntervalSinceDate_(v480, v485, v484, v486);
      v457 = v457 + v487;
    }

    objc_msgSend_horizontalAccuracy(v465, v462, v463, v464);
    v456 = v456 + v488;
    ++v452;
    v453 = v465;
  }

  v642 = v455;
  __src = v410;
  contexta = v394;
  v639 = *(a1 + 568);
  v640 = *(a1 + 576);
  v638 = objc_msgSend_count(a2, v458, v459, v460);
  v492 = objc_msgSend_count(a2, v489, v490, v491);
  sub_19B9D8CB0(*&buf[8]);
  v637 = sub_19B8D9230(a3, v493);
  v499 = 0;
  v500 = 0;
  if (objc_msgSend_count(a3, v494, v495, v496))
  {
    v501 = 0;
    v502 = 0;
    v503 = 1.79769313e308;
    v504 = 2.22507386e-308;
    v505 = 0.0;
    v506 = 0.0;
    v507 = 0.0;
    do
    {
      v508 = objc_msgSend_objectAtIndexedSubscript_(a3, v497, v501, v498);
      v512 = objc_msgSend_deltaPosition_m(v508, v509, v510, v511);
      objc_msgSend_X(v512, v513, v514, v515);
      v517 = v516;
      v521 = objc_msgSend_deltaPosition_m(v508, v518, v519, v520);
      objc_msgSend_Y(v521, v522, v523, v524);
      v525 = v517;
      *&v526 = v526;
      *buf = v525;
      *&buf[4] = LODWORD(v526);
      v530 = objc_msgSend_deltaPosition_m(v508, v527, v528, v529);
      objc_msgSend_Z(v530, v531, v532, v533);
      v505 = v505 + v537;
      if (v505 > v504)
      {
        v504 = v505;
      }

      if (v505 < v503)
      {
        v503 = v505;
      }

      if (v501)
      {
        v538 = objc_msgSend_objectAtIndexedSubscript_(a3, v534, v501 - 1, v536);
        v542 = objc_msgSend_staticFlag(v538, v539, v540, v541) == 1;
        v546 = objc_msgSend_cfAbsTimestamp(v508, v543, v544, v545);
        v550 = objc_msgSend_cfAbsTimestamp(v538, v547, v548, v549);
        objc_msgSend_timeIntervalSinceDate_(v546, v551, v550, v552);
        v554 = v506 + v553;
        v555 = v507 + v553;
        if (v542)
        {
          v506 = v554;
        }

        else
        {
          v507 = v555;
        }

        if (v501 >= 7)
        {
          v556 = objc_msgSend_objectAtIndexedSubscript_(a3, v534, v501 - 6, v536);
          v560 = objc_msgSend_deltaPosition_m(v556, v557, v558, v559);
          objc_msgSend_X(v560, v561, v562, v563);
          v565 = v564;
          v569 = objc_msgSend_deltaPosition_m(v556, v566, v567, v568);
          objc_msgSend_Y(v569, v570, v571, v572);
          v573 = v565;
          *&v574 = v574;
          *v660 = v573;
          *&v660[4] = LODWORD(v574);
          sub_19B8D7F58(v660, buf);
          v576 = fabs(v575);
          v577 = !v502;
          v502 = v576 > 1.30899693;
          v578 = v502 & v577;
          if (v576 > 2.44346093)
          {
            v579 = v578;
          }

          else
          {
            v579 = 0;
          }

          v499 += v579;
          v500 += v578;
        }
      }

      ++v501;
    }

    while (v501 < objc_msgSend_count(a3, v534, v535, v536));
    v580 = v504 - v503;
  }

  else
  {
    v507 = 0.0;
    v580 = -1.79769313e308;
    v506 = 0.0;
  }

  v581 = (v640 - v639) >> 3;
  v582 = v637 / contexta;
  if (contexta <= 0.0)
  {
    v582 = -1.0;
  }

  *&buf[8] = 3221225472;
  *buf = MEMORY[0x1E69E9820];
  *&buf[16] = sub_19B9D7518;
  *&v667 = &unk_1E753E910;
  *(&v667 + 1) = a1;
  v682 = v500;
  v683 = v499;
  v684 = v451;
  v668 = v651 / 60.0;
  v669 = contexta;
  v670 = v637;
  v671 = v582;
  v672 = v506 / (v507 + v506);
  v673 = a1 + 472;
  v674 = v642 / v581;
  v675 = v456 / v638;
  v676 = v655 / (v581 - 1);
  v677 = v658;
  v678 = v457 / (v492 - 1);
  v679 = v580;
  v680 = __src;
  v681 = v647;
  v685 = v649;
  AnalyticsSendEventLazy();
  v21 = 1;
LABEL_347:
  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
  }

  v583 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v21;
    _os_log_impl(&dword_19B873000, v583, OS_LOG_TYPE_DEFAULT, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Completed, returned %{public}u.", buf, 8u);
  }

  v584 = sub_19B87DD40();
  if (*(v584 + 160) > 1 || *(v584 + 164) > 1 || *(v584 + 168) > 1 || *(v584 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    *v663 = 67240192;
    *&v663[4] = v21;
    v585 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLTrajectorySmoother]:[runPedestrianTrajectorySmoothing] Completed, returned %{public}u.", v663, 8);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTrajectorySmoother::runPedestrianTrajectorySmoothing(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double &, const BOOL, const BOOL, std::unordered_map<size_t, double> &, std::unordered_map<size_t, double> &)", "CoreLocation: %s\n", v585);
    if (v585 != buf)
    {
      free(v585);
    }
  }

  return v21;
}

uint64_t sub_19B9D7088(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 600);
  v6 = *(a1 + 592);
  v7 = v5 - v6;
  v8 = (v5 - v6) >> 3;
  if (v8 > 1)
  {
    v16 = a2;
    v17 = (a1 + 568);
    v18 = *(a1 + 584);
    v19 = *(a1 + 568);
    if (v18 - v19 < v7)
    {
      if (v19)
      {
        *(a1 + 576) = v19;
        operator delete(v19);
        v18 = 0;
        *v17 = 0;
        *(a1 + 576) = 0;
        *(a1 + 584) = 0;
      }

      if (!(v8 >> 61))
      {
        v20 = v18 >> 2;
        if (v18 >> 2 <= v8)
        {
          v20 = (v5 - v6) >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (!(v21 >> 61))
        {
          sub_19B8D9954(a1 + 568, v21);
        }
      }

      sub_19B8B8A40();
    }

    v22 = *(a1 + 576);
    v23 = v22 - v19;
    if (v22 - v19 >= v7)
    {
      if (v5 != v6)
      {
        memmove(v19, v6, v5 - v6);
      }

      v25 = &v19[v7];
    }

    else
    {
      if (v22 != v19)
      {
        memmove(v19, v6, v22 - v19);
        v22 = *(a1 + 576);
      }

      a2 = &v6[v23];
      v24 = v5 - &v6[v23];
      if (v24)
      {
        memmove(v22, a2, v24);
      }

      v25 = &v22[v24];
    }

    *(a1 + 576) = v25;
    *a1 = 257;
    v26 = sub_19B8D90D4((a1 + 568), a2, a3, a4);
    v29 = objc_msgSend_objectsAtIndexes_(v16, v27, v26, v28);

    return sub_19B949838(a1, v29, a3, a4);
  }

  else
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
    }

    v9 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      v10 = (*(a1 + 600) - *(a1 + 592)) >> 3;
      *buf = 134217984;
      v34 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "[CLTrajectorySmoother]:[runRTSOnly] RTS is called with insufficient locations samples, %{publuc}zu.", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6E708);
      }

      v12 = (*(a1 + 600) - *(a1 + 592)) >> 3;
      v31 = 134217984;
      v32 = v12;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLTrajectorySmoother]:[runRTSOnly] RTS is called with insufficient locations samples, %{publuc}zu.", &v31, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTrajectorySmoother::runRTSOnly(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    return 0;
  }
}

void sub_19B9D742C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[72];
  v5 = v3[73];
  if (v4 >= v5)
  {
    v7 = v3[71];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_19B8B8A40();
    }

    v11 = v5 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_19B8D9954((v3 + 71), v13);
    }

    v14 = (v4 - v7) >> 3;
    v15 = (8 * v9);
    v16 = (8 * v9 - 8 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[71];
    v3[71] = v16;
    v3[72] = v6;
    v3[73] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v4 = a2;
    v6 = v4 + 8;
  }

  v3[72] = v6;
}

uint64_t sub_19B9D7518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v72[21] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v71[0] = @"Timespan";
  v72[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, a4, *(a1 + 40));
  v71[1] = @"NumberOfTurns";
  v72[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, *(a1 + 152), v7);
  v71[2] = @"NumberOfSuddenDirectionChanges";
  v72[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, *(a1 + 156), v9);
  v71[3] = @"NumberOfSegments";
  v72[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, *(a1 + 160), v11);
  v72[4] = &unk_1F0E8CD78;
  v71[4] = @"NumberOfRoutes";
  v71[5] = @"PTSPathLength";
  if (*(a1 + 48) <= 0.0)
  {
    v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v12, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v12, v13, v14);
  }

  v72[5] = v15;
  v71[6] = @"IOPathLength";
  v72[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v16, v17, v18, *(a1 + 56));
  v71[7] = @"IOPathLengthOverPTSPathLength";
  if (*(a1 + 64) <= 0.0)
  {
    v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v19, v20, v21);
  }

  else
  {
    v22 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, v21);
  }

  v72[7] = v22;
  v71[8] = @"PercentTimeIOStatic";
  v72[8] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, v25, *(a1 + 72));
  v71[9] = @"AvgFrameAlignmentConsistency";
  v26 = MEMORY[0x1E696AD98];
  v27 = *(a1 + 80);
  v28 = *v27;
  v29 = 0.0;
  if (*v27)
  {
    v29 = vaddvq_f64(vmulq_f64(*(v27 + 8), *(v27 + 8))) / (v28 * v28);
  }

  v33 = log(fmax(v29, 0.00000011920929));
  if (v33 >= 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = -v33;
  }

  v35 = sqrt(v34);
  if (v28 < 2)
  {
    v35 = 0.0;
  }

  v72[9] = objc_msgSend_numberWithDouble_(v26, v30, v31, v32, v35);
  v71[10] = @"MaxFrameAlignmentConsistency";
  v72[10] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v36, v37, v38, *(*(a1 + 80) + 24));
  v71[11] = @"AvgConsumedGNSSUncertainty";
  v72[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v39, v40, v41, *(a1 + 88));
  v71[12] = @"AvgReceivedGNSSUncertainty";
  v72[12] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v42, v43, v44, *(a1 + 96));
  v71[13] = @"AvgPeriodConsumedGNSS";
  v72[13] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v45, v46, v47, *(a1 + 104));
  v71[14] = @"MaxPeriodConsumedGNSS";
  v72[14] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v48, v49, v50, *(a1 + 112));
  v71[15] = @"AvgPeriodReceivedGNSS";
  v72[15] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v51, v52, v53, *(a1 + 120));
  v71[16] = @"DeltaElevation";
  v72[16] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v54, v55, v56, *(a1 + 128));
  v71[17] = @"Straightness";
  if (*(a1 + 136) <= 0.0)
  {
    v60 = objc_msgSend_null(MEMORY[0x1E695DFB0], v57, v58, v59);
  }

  else
  {
    v60 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v57, v58, v59);
  }

  v72[17] = v60;
  v71[18] = @"AvgForwardPropEndpointDistanceError";
  if (*(a1 + 144) <= 0.0)
  {
    v64 = objc_msgSend_null(MEMORY[0x1E695DFB0], v61, v62, v63);
  }

  else
  {
    v64 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v61, v62, v63);
  }

  v72[18] = v64;
  v71[19] = @"RansacNumberOfIterations";
  v72[19] = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v65, *(v5 + 624), v66);
  v71[20] = @"DidUseRansac";
  v72[20] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v67, *(a1 + 164), v68);
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v69, v72, v71, 21);
}

os_log_t sub_19B9D7898()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

void sub_19B9D78C8(void **result, void **a2, uint64_t a3, uint64_t a4)
{
  v375 = a4;
  v4 = a3;
  v5 = a2;
LABEL_2:
  v376 = v5 - 2;
  v373 = v5 - 6;
  v374 = v5 - 4;
  v7 = result;
  while (1)
  {
    result = v7;
    v8 = (v5 - v7) >> 4;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v250 = *(v5 - 2);
        v249 = v5 - 2;
        v254 = objc_msgSend_count(v250, a2, a3, a4);
        if (v254 <= objc_msgSend_count(*result, v251, v252, v253))
        {
          return;
        }

LABEL_110:
        v398 = *result;
        *result = *v249;
        v273 = v398;
        goto LABEL_111;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      sub_19B9D8730(result, result + 2, result + 4, v376);
      return;
    }

    if (v8 == 5)
    {
      *&v215 = sub_19B9D8730(result, result + 2, result + 4, result + 6).n128_u64[0];
      v217 = *(v5 - 2);
      v216 = v5 - 2;
      v221 = objc_msgSend_count(v217, v218, v219, v220, v215);
      if (v221 > objc_msgSend_count(result[6], v222, v223, v224))
      {
        v228 = *(result + 3);
        *(result + 3) = *v216;
        *v216 = v228;
        v229 = objc_msgSend_count(result[6], v225, v226, v227);
        if (v229 > objc_msgSend_count(result[4], v230, v231, v232))
        {
          v236 = *(result + 2);
          *(result + 2) = *(result + 3);
          *(result + 3) = v236;
          v237 = objc_msgSend_count(result[4], v233, v234, v235);
          if (v237 > objc_msgSend_count(result[2], v238, v239, v240))
          {
            v244 = *(result + 1);
            *(result + 1) = *(result + 2);
            *(result + 2) = v244;
            v245 = objc_msgSend_count(result[2], v241, v242, v243);
            if (v245 > objc_msgSend_count(*result, v246, v247, v248))
            {
              v397 = *result;
              *result = *(result + 1);
              *(result + 1) = v397;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v274 = result + 2;
      v275 = result == v5 || v274 == v5;
      v276 = v275;
      if (v375)
      {
        if ((v276 & 1) == 0)
        {
          v277 = 0;
          v278 = result;
          do
          {
            v279 = v274;
            v280 = objc_msgSend_count(v278[2], a2, a3, a4);
            if (v280 > objc_msgSend_count(*v278, v281, v282, v283))
            {
              v284 = *v279;
              v285 = v278[3];
              v286 = v277;
              while (1)
              {
                *(result + v286 + 16) = *(result + v286);
                if (!v286)
                {
                  break;
                }

                v287 = objc_msgSend_count(v284, a2, a3, a4);
                v291 = objc_msgSend_count(*(result + v286 - 16), v288, v289, v290);
                v286 -= 16;
                if (v287 <= v291)
                {
                  v292 = (result + v286 + 16);
                  goto LABEL_130;
                }
              }

              v292 = result;
LABEL_130:
              *v292 = v284;
              v292[1] = v285;
            }

            v274 = v279 + 2;
            v277 += 16;
            v278 = v279;
          }

          while (v279 + 2 != v5);
        }
      }

      else if ((v276 & 1) == 0)
      {
        do
        {
          v354 = v274;
          v355 = objc_msgSend_count(result[2], a2, a3, a4);
          if (v355 > objc_msgSend_count(*result, v356, v357, v358))
          {
            v359 = *v354;
            v360 = result[3];
            v361 = v354;
            do
            {
              *v361 = *(v361 - 1);
              v363 = objc_msgSend_count(v359, a2, a3, a4);
              v367 = objc_msgSend_count(*(v361 - 4), v364, v365, v366);
              v362 = v361 - 2;
              v361 -= 2;
            }

            while (v363 > v367);
            *v362 = v359;
            v362[1] = v360;
          }

          v274 = v354 + 2;
          result = v354;
        }

        while (v354 + 2 != v5);
      }

      return;
    }

    if (!v4)
    {
      if (result != v5)
      {
        v293 = v9 >> 1;
        v294 = v9 >> 1;
        v372 = v5;
        do
        {
          v295 = v294;
          if (v293 >= v294)
          {
            v377 = v294;
            v296 = (2 * v294) | 1;
            v297 = &result[2 * v296];
            v298 = 2 * v294 + 2;
            if (v298 < v8)
            {
              v299 = objc_msgSend_count(*v297, a2, a3, a4);
              if (v299 > objc_msgSend_count(v297[2], v300, v301, v302))
              {
                v297 += 2;
                v296 = v298;
              }
            }

            v295 = v377;
            v303 = &result[2 * v377];
            v304 = objc_msgSend_count(*v297, a2, a3, a4);
            if (v304 <= objc_msgSend_count(*v303, v305, v306, v307))
            {
              v308 = *v303;
              v309 = v303[1];
              do
              {
                v310 = v303;
                v303 = v297;
                *v310 = *v297;
                if (v293 < v296)
                {
                  break;
                }

                v311 = (2 * v296) | 1;
                v297 = &result[2 * v311];
                v312 = 2 * v296 + 2;
                if (v312 < v8)
                {
                  v313 = objc_msgSend_count(*v297, a2, a3, a4);
                  if (v313 > objc_msgSend_count(v297[2], v314, v315, v316))
                  {
                    v297 += 2;
                    v311 = v312;
                  }
                }

                v317 = objc_msgSend_count(*v297, a2, a3, a4);
                v296 = v311;
              }

              while (v317 <= objc_msgSend_count(v308, v318, v319, v320));
              *v303 = v308;
              v303[1] = v309;
              v5 = v372;
              v295 = v377;
            }
          }

          v294 = v295 - 1;
        }

        while (v295);
        do
        {
          v321 = 0;
          v399 = *result;
          v322 = result;
          do
          {
            v323 = &v322[2 * v321];
            v324 = v323 + 2;
            v325 = (2 * v321) | 1;
            v326 = 2 * v321 + 2;
            if (v326 >= v8)
            {
              v321 = (2 * v321) | 1;
            }

            else
            {
              v327 = objc_msgSend_count(v323[2], a2, a3, a4);
              v329 = v323[4];
              v328 = v323 + 4;
              if (v327 <= objc_msgSend_count(v329, v330, v331, v332))
              {
                v321 = v325;
              }

              else
              {
                v324 = v328;
                v321 = v326;
              }
            }

            *v322 = *v324;
            v322 = v324;
          }

          while (v321 <= ((v8 - 2) >> 1));
          v5 -= 2;
          if (v324 == v5)
          {
            *v324 = v399;
          }

          else
          {
            *v324 = *v5;
            *v5 = v399;
            v333 = (v324 - result + 16) >> 4;
            v334 = v333 < 2;
            v335 = v333 - 2;
            if (!v334)
            {
              v336 = v335 >> 1;
              v337 = &result[2 * (v335 >> 1)];
              v338 = objc_msgSend_count(*v337, a2, a3, a4);
              if (v338 > objc_msgSend_count(*v324, v339, v340, v341))
              {
                v342 = *v324;
                v343 = v324[1];
                do
                {
                  v344 = v324;
                  v324 = v337;
                  *v344 = *v337;
                  if (!v336)
                  {
                    break;
                  }

                  v336 = (v336 - 1) >> 1;
                  v337 = &result[2 * v336];
                  v345 = objc_msgSend_count(*v337, a2, a3, a4);
                }

                while (v345 > objc_msgSend_count(v342, v346, v347, v348));
                *v324 = v342;
                v324[1] = v343;
              }
            }
          }

          v334 = v8-- <= 2;
        }

        while (!v334);
      }

      return;
    }

    v10 = v5;
    v11 = &result[2 * (v8 >> 1)];
    if (v8 >= 0x81)
    {
      v12 = objc_msgSend_count(*v11, a2, a3, a4);
      v16 = objc_msgSend_count(*result, v13, v14, v15);
      v20 = objc_msgSend_count(*v376, v17, v18, v19);
      v24 = objc_msgSend_count(*v11, v21, v22, v23);
      if (v12 <= v16)
      {
        if (v20 > v24)
        {
          v380 = *v11;
          *v11 = *v376;
          *v376 = v380;
          v46 = objc_msgSend_count(*v11, v25, v26, v27);
          if (v46 > objc_msgSend_count(*result, v47, v48, v49))
          {
            v381 = *result;
            *result = *v11;
            *v11 = v381;
          }
        }
      }

      else
      {
        if (v20 > v24)
        {
          v378 = *result;
          v28 = v376;
          *result = *v376;
          goto LABEL_27;
        }

        v384 = *result;
        *result = *v11;
        *v11 = v384;
        v54 = objc_msgSend_count(*v376, v25, v26, v27);
        if (v54 > objc_msgSend_count(*v11, v55, v56, v57))
        {
          v378 = *v11;
          v28 = v376;
          *v11 = *v376;
LABEL_27:
          *v28 = v378;
        }
      }

      v58 = v11 - 2;
      v59 = objc_msgSend_count(*(v11 - 2), v25, v26, v27);
      v60 = result + 2;
      v64 = objc_msgSend_count(result[2], v61, v62, v63);
      v68 = objc_msgSend_count(*v374, v65, v66, v67);
      v72 = objc_msgSend_count(*(v11 - 2), v69, v70, v71);
      if (v59 <= v64)
      {
        if (v68 > v72)
        {
          v385 = *v58;
          *v58 = *v374;
          *v374 = v385;
          v78 = objc_msgSend_count(*v58, v73, v74, v75);
          if (v78 > objc_msgSend_count(*v60, v79, v80, v81))
          {
            v82 = *v60;
            *v60 = *v58;
            *v58 = v82;
          }
        }
      }

      else
      {
        if (v68 > v72)
        {
          v76 = *v60;
          v77 = v374;
          *v60 = *v374;
          goto LABEL_39;
        }

        v87 = *v60;
        *v60 = *v58;
        *v58 = v87;
        v88 = objc_msgSend_count(*v374, v73, v74, v75);
        if (v88 > objc_msgSend_count(*v58, v89, v90, v91))
        {
          v387 = *v58;
          v77 = v374;
          *v58 = *v374;
          v76 = v387;
LABEL_39:
          *v77 = v76;
        }
      }

      v92 = v11 + 2;
      v93 = objc_msgSend_count(v11[2], v73, v74, v75);
      v94 = result + 4;
      v98 = objc_msgSend_count(result[4], v95, v96, v97);
      v102 = objc_msgSend_count(*v373, v99, v100, v101);
      v106 = objc_msgSend_count(v11[2], v103, v104, v105);
      if (v93 <= v98)
      {
        if (v102 > v106)
        {
          v388 = *v92;
          *v92 = *v373;
          *v373 = v388;
          v112 = objc_msgSend_count(*v92, v107, v108, v109);
          if (v112 > objc_msgSend_count(*v94, v113, v114, v115))
          {
            v116 = *v94;
            *v94 = *v92;
            *v92 = v116;
          }
        }
      }

      else
      {
        if (v102 > v106)
        {
          v110 = *v94;
          v111 = v373;
          *v94 = *v373;
          goto LABEL_48;
        }

        v117 = *v94;
        *v94 = *v92;
        *v92 = v117;
        v118 = objc_msgSend_count(*v373, v107, v108, v109);
        if (v118 > objc_msgSend_count(*v92, v119, v120, v121))
        {
          v389 = *v92;
          v111 = v373;
          *v92 = *v373;
          v110 = v389;
LABEL_48:
          *v111 = v110;
        }
      }

      v122 = objc_msgSend_count(*v11, v107, v108, v109);
      v126 = objc_msgSend_count(*v58, v123, v124, v125);
      v130 = objc_msgSend_count(*v92, v127, v128, v129);
      v134 = objc_msgSend_count(*v11, v131, v132, v133);
      if (v122 <= v126)
      {
        if (v130 > v134)
        {
          v391 = *v11;
          *v11 = *v92;
          *v92 = v391;
          v135 = objc_msgSend_count(*v11, v42, v43, v44);
          if (v135 > objc_msgSend_count(*v58, v136, v137, v138))
          {
            v392 = *v58;
            *v58 = *v11;
            *v11 = v392;
          }
        }
      }

      else
      {
        if (v130 > v134)
        {
          v390 = *v58;
          *v58 = *v92;
          goto LABEL_57;
        }

        v393 = *v58;
        *v58 = *v11;
        *v11 = v393;
        v139 = objc_msgSend_count(*v92, v42, v43, v44);
        if (v139 > objc_msgSend_count(*v11, v140, v141, v142))
        {
          v390 = *v11;
          *v11 = *v92;
LABEL_57:
          *v92 = v390;
        }
      }

      v394 = *result;
      *result = *v11;
      *v11 = v394;
      goto LABEL_59;
    }

    v29 = objc_msgSend_count(*result, a2, a3, a4);
    v33 = objc_msgSend_count(*v11, v30, v31, v32);
    v37 = objc_msgSend_count(*v376, v34, v35, v36);
    v41 = objc_msgSend_count(*result, v38, v39, v40);
    if (v29 <= v33)
    {
      if (v37 > v41)
      {
        v382 = *result;
        *result = *v376;
        *v376 = v382;
        v50 = objc_msgSend_count(*result, v42, v43, v44);
        if (v50 > objc_msgSend_count(*v11, v51, v52, v53))
        {
          v383 = *v11;
          *v11 = *result;
          *result = v383;
        }
      }

      goto LABEL_59;
    }

    if (v37 <= v41)
    {
      v386 = *v11;
      *v11 = *result;
      *result = v386;
      v83 = objc_msgSend_count(*v376, v42, v43, v44);
      if (v83 <= objc_msgSend_count(*result, v84, v85, v86))
      {
        goto LABEL_59;
      }

      v379 = *result;
      v45 = v376;
      *result = *v376;
    }

    else
    {
      v379 = *v11;
      v45 = v376;
      *v11 = *v376;
    }

    *v45 = v379;
LABEL_59:
    v143 = v4 - 1;
    if ((v375 & 1) != 0 || (v144 = objc_msgSend_count(*(result - 2), v42, v43, v44), v144 > objc_msgSend_count(*result, v145, v146, v147)))
    {
      v148 = v143;
      v149 = 0;
      v150 = *result;
      v151 = result[1];
      v5 = v10;
      do
      {
        v152 = objc_msgSend_count(result[v149 + 2], v42, v43, v44);
        v149 += 2;
      }

      while (v152 > objc_msgSend_count(v150, v153, v154, v155));
      v156 = &result[v149];
      v157 = v10;
      v275 = v149 == 2;
      v4 = v148;
      if (v275)
      {
        v157 = v10;
        do
        {
          if (v156 >= v157)
          {
            break;
          }

          v163 = *(v157 - 2);
          v157 -= 2;
          v164 = objc_msgSend_count(v163, v42, v43, v44);
        }

        while (v164 <= objc_msgSend_count(v150, v165, v166, v167));
      }

      else
      {
        do
        {
          v158 = *(v157 - 2);
          v157 -= 2;
          v159 = objc_msgSend_count(v158, v42, v43, v44);
        }

        while (v159 <= objc_msgSend_count(v150, v160, v161, v162));
      }

      v7 = v156;
      if (v156 < v157)
      {
        v168 = v157;
        do
        {
          v395 = *v7;
          *v7 = *v168;
          *v168 = v395;
          do
          {
            v169 = v7[2];
            v7 += 2;
            v170 = objc_msgSend_count(v169, v42, v43, v44);
          }

          while (v170 > objc_msgSend_count(v150, v171, v172, v173));
          do
          {
            v174 = *(v168 - 2);
            v168 -= 2;
            v175 = objc_msgSend_count(v174, v42, v43, v44);
          }

          while (v175 <= objc_msgSend_count(v150, v176, v177, v178));
        }

        while (v7 < v168);
      }

      if (v7 - 2 != result)
      {
        *result = *(v7 - 1);
      }

      *(v7 - 2) = v150;
      *(v7 - 1) = v151;
      if (v156 < v157)
      {
        goto LABEL_80;
      }

      v179 = sub_19B9D88D0(result, v7 - 2, v43, v44);
      if (sub_19B9D88D0(v7, v10, v180, v181))
      {
        v5 = v7 - 2;
        if (!v179)
        {
          goto LABEL_2;
        }

        return;
      }

      if (!v179)
      {
LABEL_80:
        sub_19B9D78C8(result, v7 - 2, v4, v375 & 1);
        v375 = 0;
      }
    }

    else
    {
      v182 = v143;
      v183 = *result;
      v184 = result[1];
      v185 = objc_msgSend_count(*result, v42, v43, v44);
      v5 = v10;
      if (v185 <= objc_msgSend_count(*v376, v186, v187, v188))
      {
        v194 = result + 2;
        do
        {
          v7 = v194;
          if (v194 >= v10)
          {
            break;
          }

          v195 = objc_msgSend_count(v183, a2, a3, a4);
          v194 += 2;
        }

        while (v195 <= objc_msgSend_count(*v7, v196, v197, v198));
      }

      else
      {
        v7 = result;
        do
        {
          v189 = objc_msgSend_count(v183, a2, a3, a4);
          v190 = v7[2];
          v7 += 2;
        }

        while (v189 <= objc_msgSend_count(v190, v191, v192, v193));
      }

      v199 = v10;
      if (v7 < v10)
      {
        v199 = v10;
        do
        {
          v200 = objc_msgSend_count(v183, a2, a3, a4);
          v201 = *(v199 - 2);
          v199 -= 2;
        }

        while (v200 > objc_msgSend_count(v201, v202, v203, v204));
      }

      v4 = v182;
      while (v7 < v199)
      {
        v396 = *v7;
        *v7 = *v199;
        *v199 = v396;
        do
        {
          v205 = objc_msgSend_count(v183, a2, a3, a4);
          v206 = v7[2];
          v7 += 2;
        }

        while (v205 <= objc_msgSend_count(v206, v207, v208, v209));
        do
        {
          v210 = objc_msgSend_count(v183, a2, a3, a4);
          v211 = *(v199 - 2);
          v199 -= 2;
        }

        while (v210 > objc_msgSend_count(v211, v212, v213, v214));
      }

      if (v7 - 2 != result)
      {
        *result = *(v7 - 1);
      }

      v375 = 0;
      *(v7 - 2) = v183;
      *(v7 - 1) = v184;
    }
  }

  v255 = result + 2;
  v256 = objc_msgSend_count(result[2], a2, a3, a4);
  v260 = objc_msgSend_count(*result, v257, v258, v259);
  v261 = *(v5 - 2);
  v249 = v5 - 2;
  v265 = objc_msgSend_count(v261, v262, v263, v264);
  v269 = objc_msgSend_count(result[2], v266, v267, v268);
  if (v256 > v260)
  {
    if (v265 > v269)
    {
      goto LABEL_110;
    }

    v401 = *result;
    *result = *v255;
    *v255 = v401;
    v368 = objc_msgSend_count(*v249, v270, v271, v272);
    if (v368 <= objc_msgSend_count(result[2], v369, v370, v371))
    {
      return;
    }

    v273 = *v255;
    *v255 = *v249;
LABEL_111:
    *v249 = v273;
    return;
  }

  if (v265 > v269)
  {
    v349 = *v255;
    *v255 = *v249;
    *v249 = v349;
    v350 = objc_msgSend_count(result[2], v270, v271, v272);
    if (v350 > objc_msgSend_count(*result, v351, v352, v353))
    {
      v400 = *result;
      *result = *v255;
      *v255 = v400;
    }
  }
}

__n128 sub_19B9D8730(id *a1, id *a2, id *a3, id *a4)
{
  v8 = objc_msgSend_count(*a2, a2, a3, a4);
  v12 = objc_msgSend_count(*a1, v9, v10, v11);
  v16 = objc_msgSend_count(*a3, v13, v14, v15);
  v20 = objc_msgSend_count(*a2, v17, v18, v19);
  if (v8 <= v12)
  {
    if (v16 > v20)
    {
      v25 = *a2;
      *a2 = *a3;
      *a3 = v25;
      v26 = objc_msgSend_count(*a2, v21, v22, v23);
      if (v26 > objc_msgSend_count(*a1, v27, v28, v29))
      {
        v30 = *a1;
        *a1 = *a2;
        *a2 = v30;
      }
    }
  }

  else
  {
    if (v16 > v20)
    {
      v24 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v24;
      goto LABEL_10;
    }

    v31 = *a1;
    *a1 = *a2;
    *a2 = v31;
    v32 = objc_msgSend_count(*a3, v21, v22, v23);
    if (v32 > objc_msgSend_count(*a2, v33, v34, v35))
    {
      v24 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  v36 = objc_msgSend_count(*a4, v21, v22, v23);
  if (v36 > objc_msgSend_count(*a3, v37, v38, v39))
  {
    v44 = *a3;
    *a3 = *a4;
    *a4 = v44;
    v45 = objc_msgSend_count(*a3, v40, v41, v42);
    if (v45 > objc_msgSend_count(*a2, v46, v47, v48))
    {
      v52 = *a2;
      *a2 = *a3;
      *a3 = v52;
      v53 = objc_msgSend_count(*a2, v49, v50, v51);
      if (v53 > objc_msgSend_count(*a1, v54, v55, v56))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_19B9D88D0(id *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v47 = a1 + 2;
        v48 = objc_msgSend_count(a1[2], a2, a3, a4);
        v52 = objc_msgSend_count(*a1, v49, v50, v51);
        v53 = *(a2 - 2);
        v7 = a2 - 2;
        v57 = objc_msgSend_count(v53, v54, v55, v56);
        v61 = objc_msgSend_count(*v47, v58, v59, v60);
        if (v48 <= v52)
        {
          if (v57 > v61)
          {
            v85 = *v47;
            *v47 = *v7;
            *v7 = v85;
            v86 = objc_msgSend_count(a1[2], v62, v63, v64);
            if (v86 > objc_msgSend_count(*a1, v87, v88, v89))
            {
              v90 = *a1;
              *a1 = *v47;
              *v47 = v90;
            }
          }

          return 1;
        }

        if (v57 <= v61)
        {
          v97 = *a1;
          *a1 = *v47;
          *v47 = v97;
          v98 = objc_msgSend_count(*v7, v62, v63, v64);
          if (v98 <= objc_msgSend_count(a1[2], v99, v100, v101))
          {
            return 1;
          }

          v65 = *v47;
          *v47 = *v7;
          goto LABEL_17;
        }

LABEL_16:
        v65 = *a1;
        *a1 = *v7;
LABEL_17:
        *v7 = v65;
        return 1;
      case 4:
        sub_19B9D8730(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        *&v12 = sub_19B9D8730(a1, a1 + 2, a1 + 4, a1 + 6).n128_u64[0];
        v14 = *(a2 - 2);
        v13 = a2 - 2;
        v18 = objc_msgSend_count(v14, v15, v16, v17, v12);
        if (v18 > objc_msgSend_count(a1[6], v19, v20, v21))
        {
          v25 = *(a1 + 3);
          *(a1 + 3) = *v13;
          *v13 = v25;
          v26 = objc_msgSend_count(a1[6], v22, v23, v24);
          if (v26 > objc_msgSend_count(a1[4], v27, v28, v29))
          {
            v33 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v33;
            v34 = objc_msgSend_count(a1[4], v30, v31, v32);
            if (v34 > objc_msgSend_count(a1[2], v35, v36, v37))
            {
              v41 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v41;
              v42 = objc_msgSend_count(a1[2], v38, v39, v40);
              if (v42 > objc_msgSend_count(*a1, v43, v44, v45))
              {
                v46 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v46;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 2;
      v8 = objc_msgSend_count(*(a2 - 2), a2, a3, a4);
      if (v8 <= objc_msgSend_count(*a1, v9, v10, v11))
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v66 = a1 + 2;
  v67 = objc_msgSend_count(a1[2], a2, a3, a4);
  v71 = objc_msgSend_count(*a1, v68, v69, v70);
  v72 = a1 + 4;
  v76 = objc_msgSend_count(a1[4], v73, v74, v75);
  v80 = objc_msgSend_count(*v66, v77, v78, v79);
  if (v67 <= v71)
  {
    if (v76 > v80)
    {
      v91 = *v66;
      *v66 = *v72;
      *v72 = v91;
      v92 = objc_msgSend_count(a1[2], v81, v82, v83);
      if (v92 > objc_msgSend_count(*a1, v93, v94, v95))
      {
        v96 = *a1;
        *a1 = *v66;
        *v66 = v96;
      }
    }
  }

  else
  {
    if (v76 <= v80)
    {
      v102 = *a1;
      *a1 = *v66;
      *v66 = v102;
      v103 = objc_msgSend_count(a1[4], v81, v82, v83);
      if (v103 <= objc_msgSend_count(a1[2], v104, v105, v106))
      {
        goto LABEL_33;
      }

      v84 = *v66;
      *v66 = *v72;
    }

    else
    {
      v84 = *a1;
      *a1 = *v72;
    }

    *v72 = v84;
  }

LABEL_33:
  v107 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v108 = 0;
  v109 = 0;
  while (1)
  {
    v110 = objc_msgSend_count(*v107, v81, v82, v83);
    if (v110 > objc_msgSend_count(*v72, v111, v112, v113))
    {
      v114 = *v107;
      v115 = v107[1];
      v116 = v108;
      while (1)
      {
        *(a1 + v116 + 48) = *(a1 + v116 + 32);
        if (v116 == -32)
        {
          break;
        }

        v117 = objc_msgSend_count(v114, v81, v82, v83);
        v121 = objc_msgSend_count(*(a1 + v116 + 16), v118, v119, v120);
        v116 -= 16;
        if (v117 <= v121)
        {
          v122 = (a1 + v116 + 48);
          goto LABEL_41;
        }
      }

      v122 = a1;
LABEL_41:
      *v122 = v114;
      v122[1] = v115;
      if (++v109 == 8)
      {
        return v107 + 2 == a2;
      }
    }

    v72 = v107;
    v108 += 16;
    v107 += 2;
    if (v107 == a2)
    {
      return 1;
    }
  }
}

void sub_19B9D8CB0(void *a1)
{
  if (a1)
  {
    sub_19B9D8CB0(*a1);
    sub_19B9D8CB0(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_19B9D8CFC(uint64_t result, unint64_t a2, void *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_19B9DAD28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setIdentityToken_(*(a1 + 32), a2, *(a1 + 40), a4);
  objc_msgSend_setStorageToken_(*(a1 + 32), v5, *(a1 + 48), v6);
  v10 = *(a1 + 32);

  return objc_msgSend_manageConnection(v10, v7, v8, v9);
}

void sub_19B9DB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_19B8750F8(v29);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B9DB314(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v6 = a2[1];
    v7 = *a2;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    objc_msgSend_handleResponseMessage_(Weak, v4, &v7, v5);
    if (v8)
    {
      sub_19B8750F8(v8);
    }
  }
}

void sub_19B9DB374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DB5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DB954(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_UTF8String(*(a1 + 32), v3, v4, v5);
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v8[5] = 2082;
      v9 = v6;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ficConnectionManager destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }
}

void sub_19B9DBAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DBD1C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v2 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLHarvester invalidation handler", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47B0, 0, "CLHarvester invalidation handler", v5, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLHarvester connect]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *(*(a1 + 32) + 8) = 0;
}

void sub_19B9DBEE0()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v0 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "CLHarvester interruption handler", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47B0, 16, "CLHarvester interruption handler", v3, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLHarvester connect]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

void sub_19B9DC1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9DC1F4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v0 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "CLHarvester synchronous remote proxy invalidated", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47B0, 0, "CLHarvester synchronous remote proxy invalidated", v3, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLHarvester currentStateDictionary]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

id sub_19B9DC398(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47A8 != -1)
  {
    dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
  }

  v4 = qword_1EAFE47B0;
  if (os_log_type_enabled(qword_1EAFE47B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLHarvester fetchState reply block called", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47A8 != -1)
    {
      dispatch_once(&qword_1EAFE47A8, &unk_1F0E6E7A8);
    }

    v8[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47B0, 0, "CLHarvester fetchState reply block called", v8, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLHarvester currentStateDictionary]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

os_log_t sub_19B9DC55C()
{
  result = os_log_create("com.apple.locationd.Core", "Harvester");
  qword_1EAFE47B0 = result;
  return result;
}

void sub_19B9DD078(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  objc_autoreleasePoolPush();
  if (objc_msgSend_allowNetworkTileLoad(*(a1 + 2600), v6, v7, v8))
  {
    if (sub_19B9DEDA8(a1))
    {
      objc_msgSend_setAllowNetworkTileLoad_(*(a1 + 2600), v9, 0, v11);
    }
  }

  objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11);
  operator new();
}

void sub_19B9DDA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  sub_19B917010(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

void *sub_19B9DDB04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sections(a2, a2, a3, a4);
  result = objc_msgSend_count(v6, v7, v8, v9);
  if (result)
  {
    v13 = *(a1 + 32);

    return objc_msgSend_addObject_(v13, v11, a2, v12);
  }

  return result;
}

void sub_19B9DDB5C(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v7 = a4;
  v4 = *(a3 + 56);
  v5 = *(a3 + 64);
  v6 = v4;
  sub_19B9DD078(a1, a2, &v6, &v5, &v7);
}

os_log_t sub_19B9DDB94()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9DDBE0(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v46 = objc_msgSend_code(a2, v5, v6, v7);
      v47 = 2114;
      v48 = objc_msgSend_domain(a2, v8, v9, v10);
      v49 = 2113;
      v50 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v18 = off_1EAFE4708;
      v39 = 134349571;
      v40 = objc_msgSend_code(a2, v15, v16, v17);
      v41 = 2114;
      v42 = objc_msgSend_domain(a2, v19, v20, v21);
      v43 = 2113;
      v44 = objc_msgSend_localizedDescription(a2, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", &v39, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(*(a1[6] + 8) + 24);
      v28 = *(*(a1[4] + 8) + 24);
      *buf = 134349312;
      v46 = v27;
      v47 = 1026;
      LODWORD(v48) = v28;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", buf, 0x12u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v30 = *(*(a1[6] + 8) + 24);
      v31 = *(*(a1[4] + 8) + 24);
      v39 = 134349312;
      v40 = v30;
      v41 = 1026;
      LODWORD(v42) = v31;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", &v39, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    dispatch_group_leave(*(*(a1[5] + 8) + 40));
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[5] + 8) + 40))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v33 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup when time-out has happened", buf, 2u);
      }

      v34 = sub_19B87DD40();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
        }

        LOWORD(v39) = 0;
        v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,clearing dispatchGroup when time-out has happened", &v39, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      *(*(a1[5] + 8) + 40) = 0;
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
      }

      v36 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLMM,dispatchGroup is unexpectedly nil", buf, 2u);
      }

      v37 = sub_19B87DD40();
      if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E7E8);
        }

        LOWORD(v39) = 0;
        v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,dispatchGroup is unexpectedly nil", &v39, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }
    }
  }
}

__n128 sub_19B9DE33C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6E818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B9DE3A0(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6E878))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B9DE3EC(uint64_t result)
{
  *result = &unk_1F0E6E898;
  *(result + 8) = 0xBFF0000000000000;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 31) = 0;
  *(result + 64) = 0x415854A640000000;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0x3FF0000000000000;
  v1 = 5489;
  v2 = 1;
  v3 = 25;
  *(result + 48) = xmmword_19BA8C810;
  do
  {
    v4 = 1812433253 * (v1 ^ (v1 >> 30));
    v1 = v4 + v2;
    *(result + 4 * v3) = v3 + v4 - 24;
    ++v2;
    ++v3;
  }

  while (v3 != 648);
  v5 = 0;
  *(result + 2624) = 0u;
  *(result + 2600) = 0u;
  *(result + 2616) = result + 2624;
  *(result + 2640) = 0xBFF0000000000000;
  *(result + 96) = 0;
  v6 = 1;
  for (i = 25; i != 648; ++i)
  {
    v8 = 1812433253 * (v5 ^ (v5 >> 30));
    v5 = v8 + v6;
    *(result + 4 * i) = i + v8 - 24;
    ++v6;
  }

  *(result + 2592) = 0;
  return result;
}

uint64_t sub_19B9DE4D8(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E6E898;
  if ((*(a1 + 33) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLMM,CLGCZ,destroy geocodec malloc zone,~CLGeoMapFeatureAccessGeometry()", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v14[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 0, "CLMM,CLGCZ,destroy geocodec malloc zone,~CLGeoMapFeatureAccessGeometry()", v14, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual CLMapGeometry::~CLMapGeometry()", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      sub_19B9E008C(v8);
    }

    v9 = *(a1 + 2600);
    if (v9)
    {
      v9 = objc_msgSend_clearAllTiles(v9, v4, v5, v6);
    }

    v10 = *(a1 + 2608);
    if (v10)
    {

      *(a1 + 2608) = 0;
    }

    v11 = *(a1 + 2600);
    if (v11)
    {

      *(a1 + 2600) = 0;
    }

    MEMORY[0x19EAE9260](v9);
  }

  sub_19B9E076C(a1 + 2616, *(a1 + 2624));
  v12 = *(a1 + 24);
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  return a1;
}

void sub_19B9DE704(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

void sub_19B9DE718(uint64_t a1, uint64_t *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 1;
  v3 = *a2;
  if (*a2)
  {
    *(a1 + 33) = 1;
    *(a1 + 34) = *(v3 + 169);
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 24);
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    if (v5)
    {
      sub_19B8750F8(v5);
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 16);
      v8 = (v7 + 128);
      if (*(v7 + 151) < 0)
      {
        v8 = *v8;
      }

      v9 = *(v7 + 169);
      v10 = *(v7 + 216);
      v11 = *(v7 + 192);
      *buf = 136446978;
      v34 = v8;
      v35 = 1026;
      v36 = v9;
      v37 = 1026;
      v38 = v10;
      v39 = 1026;
      v40 = v11;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "CLMM,%{public}s,referenced maps buffer,xpc,%{public}d,waitForQueryComplete,%{public}d,allowNetworkTileDownload,%{public}d", buf, 0x1Eu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v13 = *(a1 + 16);
      v14 = (v13 + 128);
      if (*(v13 + 151) < 0)
      {
        v14 = *v14;
      }

      v15 = *(v13 + 169);
      v16 = *(v13 + 216);
      v17 = *(v13 + 192);
      v25 = 136446978;
      v26 = v14;
      v27 = 1026;
      v28 = v15;
      v29 = 1026;
      v30 = v16;
      v31 = 1026;
      v32 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 0, "CLMM,%{public}s,referenced maps buffer,xpc,%{public}d,waitForQueryComplete,%{public}d,allowNetworkTileDownload,%{public}d", &v25, 30);
      sub_19B885924("Generic", 1, 0, 2, "void CLMapGeometry::initializeWithRoadBufferPointer(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM,RoadGeometry pointer provided is nullptr, using maps API in process", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      LOWORD(v25) = 0;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,RoadGeometry pointer provided is nullptr, using maps API in process", &v25, 2);
      v20 = sub_19B885924("Generic", 1, 0, 0, "void CLMapGeometry::initializeWithRoadBufferPointer(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    *(a1 + 33) = 0;
    sub_19B963BBC(v20, v21, v22, v23);
    (*(*a1 + 24))(a1);
  }
}

double sub_19B9DEB0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 71) < 0)
  {
    sub_19B874C9C(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    __p = *(v4 + 48);
  }

  std::string::operator=((a1 + 128), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  *(a1 + 112) = **a2;
  *(a1 + 120) = *(v5 + 20);
  *(a1 + 152) = *(a2 + 2);
  result = *(a2 + 6);
  *(a1 + 168) = result;
  return result;
}

void sub_19B9DEBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9DEBC4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
  }

  v2 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 40);
    *buf = 67240448;
    v13 = v3;
    v14 = 1026;
    v15 = v4;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,MapsAPICallCount,%{public}d,MapsAPIQueryContinuousFailCount,%{public}d", buf, 0xEu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v6 = *(a1 + 36);
    v7 = *(a1 + 40);
    v9[0] = 67240448;
    v9[1] = v6;
    v10 = 1026;
    v11 = v7;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,MapsAPICallCount,%{public}d,MapsAPIQueryContinuousFailCount,%{public}d", v9, 14);
    sub_19B885924("Generic", 1, 0, 2, "void CLMapGeometry::logMapsAPICallCount() const", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

uint64_t sub_19B9DEDA8(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 1 && (v2 = *(a1 + 16)) != 0)
  {
    v3 = (v2 + 124);
  }

  else
  {
    v3 = (a1 + 40);
  }

  v4 = *v3;
  if (*v3 < 6)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 48);
  if (v5 < 0.0)
  {
    v6 = mach_continuous_time();
    v5 = sub_19B994BF4(v6);
    *(a1 + 48) = v5;
  }

  v7 = mach_continuous_time();
  v8 = vabdd_f64(v5, sub_19B994BF4(v7));
  if (v8 < 60.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v18 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v19 = (*(*a1 + 16))(a1);
      v20 = (*(*a1 + 112))(a1);
      v21 = "road";
      *buf = 67240962;
      v37 = v19;
      v38 = 2082;
      if (v20)
      {
        v21 = "building";
      }

      v39 = v21;
      v40 = 1026;
      v41 = v4;
      v42 = 2050;
      v43 = v8;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLMM,shouldBackOffFromNetworkAccess,1,geometryType,%{public}d,type,%{public}s,failCount,%{public}d,timeSinceLastFail,%{public}.1lf", buf, 0x22u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v23 = off_1EAFE4708;
      v24 = (*(*a1 + 16))(a1);
      v25 = (*(*a1 + 112))(a1);
      v26 = "road";
      v28 = 67240962;
      v29 = v24;
      v30 = 2082;
      if (v25)
      {
        v26 = "building";
      }

      v31 = v26;
      v32 = 1026;
      v33 = v4;
      v34 = 2050;
      v35 = v8;
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v23, 2, "CLMM,shouldBackOffFromNetworkAccess,1,geometryType,%{public}d,type,%{public}s,failCount,%{public}d,timeSinceLastFail,%{public}.1lf", &v28, 34);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapGeometry::shouldBackOffFromNetworkAccess()", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    return 1;
  }

  else
  {
LABEL_9:
    *(a1 + 48) = 0xBFF0000000000000;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v10 = (*(*a1 + 16))(a1);
      if ((*(*a1 + 112))(a1))
      {
        v11 = "building";
      }

      else
      {
        v11 = "road";
      }

      *buf = 67240706;
      v37 = v10;
      v38 = 2082;
      v39 = v11;
      v40 = 1026;
      v41 = v4;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLMM,shouldBackOffFromNetworkAccess,0,geometryType,%{public}d,type,%{public}s,failCount,%{public}d", buf, 0x18u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v13 = off_1EAFE4708;
      v14 = (*(*a1 + 16))(a1);
      if ((*(*a1 + 112))(a1))
      {
        v15 = "building";
      }

      else
      {
        v15 = "road";
      }

      v28 = 67240706;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      v32 = 1026;
      v33 = v4;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v13, 2, "CLMM,shouldBackOffFromNetworkAccess,0,geometryType,%{public}d,type,%{public}s,failCount,%{public}d", &v28, 24);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapGeometry::shouldBackOffFromNetworkAccess()", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    return 0;
  }
}

void *sub_19B9DF37C(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(result + 33) == 1)
  {
    v5 = result[2];
    if (v5)
    {
      *(v5 + 192) = a2;
    }
  }

  else
  {
    result = result[325];
    if (result)
    {
      if (a2)
      {
        v6 = sub_19B9DEDA8(v4) ^ 1;
        result = v4[325];
      }

      else
      {
        v6 = 0;
      }

      return objc_msgSend_setAllowNetworkTileLoad_(result, a2, v6, a4);
    }
  }

  return result;
}

uint64_t sub_19B9DF3F8(uint64_t a1, uint64_t a2, double **a3, char a4, double *a5, int a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v10 = 8 * a6;
  v11 = 0.0;
  do
  {
    v12 = *a5++;
    v11 = v11 + v12;
    v10 -= 8;
  }

  while (v10);
  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v11 / a6;
  if (!v14)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    LOWORD(__y[0]) = 0;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, NULL road", __y, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v21);
    goto LABEL_31;
  }

  v16 = (*(v14 + 18) - *(v14 + 17)) >> 4;
  if (v16 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    LOWORD(__y[0]) = 0;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,CoordinateCount is 0", __y, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v21);
LABEL_31:
    if (v21 != buf)
    {
      free(v21);
    }

LABEL_33:
    v18 = 0;
    v17 = 0.0;
    goto LABEL_34;
  }

  v17 = 0.0;
  if (v16 == 1)
  {
    v18 = 1;
    goto LABEL_34;
  }

  sub_19B9F5AA8(v14);
  v32 = (*(v14 + 21) - *(v14 + 20)) >> 3;
  if (v32 != v16 - 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v41 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
    }

    v42 = sub_19B87DD40();
    if (*(v42 + 160) <= 1 && *(v42 + 164) <= 1 && *(v42 + 168) <= 1 && !*(v42 + 152))
    {
      goto LABEL_80;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    LOWORD(__y[0]) = 0;
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,inconsistent array size", __y, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v43);
    goto LABEL_78;
  }

  sub_19B9F5AA8(v14);
  if (v15 >= 0.000001)
  {
    if (v15 >= 0.999999)
    {
      v52 = (*(v14 + 17) + 16 * v32);
      v24 = *v52;
      v17 = v52[1];
      v53 = sub_19B9E09EC((a1 + 56), *(v52 - 2), *(v52 - 1), *v52, v17);
LABEL_101:
      v25 = v53;
      goto LABEL_102;
    }

    v44 = *(v14 + 20);
    v45 = *(v14 + 21);
    if (v44 != v45)
    {
      v46 = 0.0;
      v47 = 2;
      v48 = 24;
      while (1)
      {
        v49 = *v44 / v14[5];
        if (vabdd_f64(v15, v46 + v49) < 0.000001)
        {
          break;
        }

        if (v46 + v49 > v15)
        {
          v65 = (*(v14 + 17) + v48);
          v66 = *(v65 - 2);
          v67 = *v65;
          v68 = v66 + 360.0;
          if (v66 >= 0.0)
          {
            v68 = *(v65 - 2);
          }

          v69 = v67 + 360.0;
          if (v67 >= 0.0)
          {
            v69 = *v65;
          }

          v70 = v69 - v68;
          if (v70 <= 180.0)
          {
            if (v70 < -180.0)
            {
              v70 = v70 + 360.0;
            }
          }

          else
          {
            v70 = v70 + -360.0;
          }

          v75 = *(v65 - 3);
          v76 = *(v65 - 1);
          v73 = (v15 - v46) / v49;
          v74 = fmod(v66 + v70 * v73, 360.0);
          v17 = v74;
          if (v74 <= -180.0)
          {
            v17 = v74 + 360.0;
          }

          else if (v74 > 180.0)
          {
            v17 = v74 + -360.0;
          }

          v37 = v75;
          v34 = v76;
          v24 = v75 + (v76 - v75) * v73;
          buf[0].__r_.__value_.__r.__words[0] = 0;
          __y[0] = 0.0;
          v36 = (a1 + 56);
          v38 = v66;
          v35 = v67;
          goto LABEL_60;
        }

        ++v44;
        v48 += 16;
        ++v47;
        v46 = v46 + v49;
        if (v44 == v45)
        {
          goto LABEL_87;
        }
      }

      if (v47 < v16)
      {
        v54 = (*(v14 + 17) + v48);
        v24 = *(v54 - 1);
        v17 = *v54;
        v55 = *(v54 - 3);
        v56 = *(v54 - 2);
        buf[0].__r_.__value_.__r.__words[0] = 0;
        __y[0] = 0.0;
        sub_19BA0BE88((a1 + 56), buf, __y, v77, v55, v56, 0.0, v24, v17, 0.0);
        v57 = __y[0];
        v58 = *&buf[0].__r_.__value_.__l.__data_;
        v59 = *(v14 + 17) + v48;
        v60 = *(v59 + 8);
        v61 = *(v59 + 16);
        buf[0].__r_.__value_.__r.__words[0] = 0;
        __y[0] = 0.0;
        sub_19BA0BE88((a1 + 56), buf, __y, v77, v24, v17, 0.0, v60, v61, 0.0);
        v62 = atan2(v57, v58);
        if (v62 < 0.0)
        {
          v62 = v62 + 6.28318531;
        }

        v63 = v62 * 57.2957795;
        v64 = atan2(__y[0], *&buf[0].__r_.__value_.__l.__data_);
        if (v64 < 0.0)
        {
          v64 = v64 + 6.28318531;
        }

        sub_19B8B646C(v63, v64 * 57.2957795);
        goto LABEL_101;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v71 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v71, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
      }

      v72 = sub_19B87DD40();
      if ((*(v72 + 160) & 0x80000000) != 0 && (*(v72 + 164) & 0x80000000) != 0 && (*(v72 + 168) & 0x80000000) != 0 && !*(v72 + 152))
      {
        goto LABEL_33;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      LOWORD(__y[0]) = 0;
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", __y, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v21);
      goto LABEL_31;
    }

LABEL_87:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v50 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
    }

    v51 = sub_19B87DD40();
    if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
    {
LABEL_80:
      v18 = 0;
LABEL_34:
      v24 = 0.0;
      v25 = 0.0;
      if (!v13)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    LOWORD(__y[0]) = 0;
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", __y, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v43);
LABEL_78:
    if (v43 != buf)
    {
      free(v43);
    }

    goto LABEL_80;
  }

  v33 = *(v14 + 17);
  v24 = *v33;
  v17 = v33[1];
  v34 = v33[2];
  v35 = v33[3];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  __y[0] = 0.0;
  v36 = (a1 + 56);
  v37 = v24;
  v38 = v17;
LABEL_60:
  sub_19BA0BE88(v36, buf, __y, v77, v37, v38, 0.0, v34, v35, 0.0);
  v39 = atan2(__y[0], *&buf[0].__r_.__value_.__l.__data_);
  if (v39 < 0.0)
  {
    v39 = v39 + 6.28318531;
  }

  v25 = v39 * 57.2957795;
LABEL_102:
  v18 = 1;
  if (v13)
  {
LABEL_35:
    sub_19B8750F8(v13);
  }

LABEL_36:
  if ((v18 & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLMM,interpolateOnRoad,interpolateProjections returned false", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      LOWORD(__y[0]) = 0;
      v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,interpolateOnRoad,interpolateProjections returned false", __y, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLMapGeometry::interpolateOnRoad(CLMapCrumb &, const CLMapRoadPtr &, BOOL, const double *, int) const", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    return 0;
  }

  if ((a4 & 1) == 0 && v25 < 360.0 && v25 >= 0.0)
  {
    v25 = v25 + dbl_19BA8D0D0[v25 > 180.0];
  }

  v27 = *a3;
  if (*(*a3 + 71) < 0)
  {
    sub_19B874C9C(buf, *(v27 + 6), *(v27 + 7));
  }

  else
  {
    buf[0] = *(v27 + 2);
  }

  std::string::operator=((a2 + 128), buf);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  v40 = *a3;
  *(a2 + 112) = **a3;
  *(a2 + 120) = *(v40 + 20);
  *(a2 + 152) = v24;
  *(a2 + 160) = v17;
  *(a2 + 168) = v25;
  *(a2 + 272) = v15;
  return 1;
}

void sub_19B9E0054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9E008C(uint64_t a1)
{
  v2 = a1 + 248;
  v1 = *(a1 + 248);
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 224) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_19B9B0C1C(a1 + 240, v1);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  sub_19B9B0C1C(v2 + 16, *(v2 + 24));
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = v2 + 24;
  sub_19B9E076C(v2 + 40, *(v2 + 48));
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = v2 + 48;
  *(v2 + 72) = 0;

  sub_19B8EBC04((v2 + 80));
}

void sub_19B9E0148(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 33) & 1) == 0)
  {
    v5 = *(a1 + 2600);
    if (v5)
    {
      if (objc_msgSend_allowNetworkTileLoad(v5, a2, a3, a4))
      {
        ++*(a1 + 36);
        v7 = *(a1 + 2600);

        MEMORY[0x1EEE66B58](v7, sel_preloadRoadTilesNear_radius_completionHandler_, &unk_1F0E6E910, v6);
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v8 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLMM,provideCacheHint,fGEOMapFeatureAccess is unexpectedly nil", buf, 2u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
        }

        v11[0] = 0;
        v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,provideCacheHint,fGEOMapFeatureAccess is unexpectedly nil", v11, 2);
        sub_19B885924("Generic", 1, 0, 0, "virtual void CLMapGeometry::provideCacheHint(double, double, double)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }
  }
}

void sub_19B9E0384(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v3 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349571;
      v32 = objc_msgSend_code(a2, v4, v5, v6);
      v33 = 2114;
      v34 = objc_msgSend_domain(a2, v7, v8, v9);
      v35 = 2113;
      v36 = objc_msgSend_localizedDescription(a2, v10, v11, v12);
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLMM,Warning,provideCacheHint reported error:%{public}lld (%{public}@) %{private}@", buf, 0x20u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
      }

      v17 = off_1EAFE4708;
      v25 = 134349571;
      v26 = objc_msgSend_code(a2, v14, v15, v16);
      v27 = 2114;
      v28 = objc_msgSend_domain(a2, v18, v19, v20);
      v29 = 2113;
      v30 = objc_msgSend_localizedDescription(a2, v21, v22, v23);
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 2, "CLMM,Warning,provideCacheHint reported error:%{public}lld (%{public}@) %{private}@", &v25, 32);
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLMapGeometry::provideCacheHint(double, double, double)_block_invoke", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }
}

uint64_t sub_19B9E05C8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
  }

  v0 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "Base function called for moveOnRouteRoads", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E940);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "Base function called for moveOnRouteRoads", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLMapGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

void sub_19B9E076C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_19B9E076C(a1, *a2);
    sub_19B9E076C(a1, *(a2 + 1));
    v4 = (a2 + 80);
    sub_19B8F0E84(&v4);
    v4 = (a2 + 56);
    sub_19B8F0E84(&v4);
    operator delete(a2);
  }
}

os_log_t sub_19B9E07DC()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9E0878(void *a1, const char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6E970;
  sub_19B8E5918(a1 + 3, a2);
}

void sub_19B9E0928(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B9E097C(uint64_t a1)
{
  v3 = (a1 + 352);
  sub_19B8F0E84(&v3);
  sub_19B9E076C(a1 + 312, *(a1 + 320));
  sub_19B9B0C1C(a1 + 288, *(a1 + 296));
  sub_19B9B0C1C(a1 + 264, *(a1 + 272));
  sub_19B9495D4((a1 + 256));
  return sub_19B9B1004(a1 + 24);
}

double sub_19B9E09EC(float64x2_t *a1, double a2, double a3, double a4, double a5)
{
  v9 = 0.0;
  __y = 0.0;
  sub_19BA0BE88(a1, &v9, &__y, &v7, a2, a3, 0.0, a4, a5, 0.0);
  v5 = atan2(__y, v9);
  if (v5 < 0.0)
  {
    v5 = v5 + 6.28318531;
  }

  return v5 * 57.2957795;
}

BOOL sub_19B9E0A5C(double a1, uint64_t a2, const char *a3, int a4, unint64_t a5, void *a6, void *a7)
{
  v8 = a3;
  v619 = *MEMORY[0x1E69E9840];
  v566 = 0u;
  v567 = 0u;
  v568 = 0u;
  v569 = 0u;
  v558 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, a3, &v566, v618, 16);
  if (v558)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0.8;
    if (a5 == 1)
    {
      v14 = 0.0;
    }

    v550 = v14;
    v15 = 20.0;
    if (a5 == 3)
    {
      v15 = 5.0;
    }

    v557 = *v567;
    if (a5 == 2)
    {
      v15 = 3.0;
    }

    v552 = v15;
    do
    {
      v16 = 0;
      do
      {
        if (*v567 != v557)
        {
          objc_enumerationMutation(a6);
        }

        v17 = *(*(&v566 + 1) + 8 * v16);
        if (v17)
        {
          v18 = objc_msgSend_locType(*(*(&v566 + 1) + 8 * v16), v9, v10, v11);
          if (v18 > 0xD || ((1 << v18) & 0x2E1A) == 0)
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
            }

            v480 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              v484 = objc_msgSend_locType(v17, v481, v482, v483);
              *buf = 67240192;
              *v595 = v484;
              _os_log_impl(&dword_19B873000, v480, OS_LOG_TYPE_DEBUG, "CLTSP,LI,interpolator,unsupported location type skipped,%{public}d", buf, 8u);
            }

            v485 = sub_19B87DD40();
            if (*(v485 + 160) > 1 || *(v485 + 164) > 1 || *(v485 + 168) > 1 || *(v485 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v489 = qword_1EAFE46E8;
              v490 = objc_msgSend_locType(v17, v486, v487, v488);
              v570 = 67240192;
              *v571 = v490;
              v479 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v489, 2, "CLTSP,LI,interpolator,unsupported location type skipped,%{public}d", &v570, 8);
LABEL_116:
              v423 = v479;
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v479);
              goto LABEL_117;
            }
          }

          else
          {
            v23 = objc_msgSend_timestamp(v17, v19, v20, v21);
            objc_msgSend_timeIntervalSinceReferenceDate(v23, v24, v25, v26);
            v28 = v27;
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
            }

            v565 = v28;
            v29 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
            {
              objc_msgSend_latitude(v17, v30, v31, v32);
              v562 = v33;
              objc_msgSend_longitude(v17, v34, v35, v36);
              v38 = v37;
              objc_msgSend_altitude(v17, v39, v40, v41);
              v43 = v42;
              objc_msgSend_speed(v17, v44, v45, v46);
              v48 = v47;
              objc_msgSend_course(v17, v49, v50, v51);
              v53 = v52;
              objc_msgSend_horizontalAccuracy(v17, v54, v55, v56);
              v58 = v57;
              objc_msgSend_altitudeAccuracy(v17, v59, v60, v61);
              v63 = v62;
              objc_msgSend_speedAccuracy(v17, v64, v65, v66);
              v68 = v67;
              objc_msgSend_courseAccuracy(v17, v69, v70, v71);
              v73 = v72;
              v77 = objc_msgSend_UUIDString(v8, v74, v75, v76);
              v81 = objc_msgSend_UTF8String(v77, v78, v79, v80);
              v85 = objc_msgSend_locType(v17, v82, v83, v84);
              *buf = 67243523;
              *v595 = a5;
              *&v595[4] = 1026;
              *&v595[6] = a4;
              *v596 = 2050;
              *&v596[2] = v565;
              *v597 = 2053;
              *&v597[2] = v562;
              v598 = 2053;
              v599 = v38;
              v600 = 2050;
              v601 = v43;
              v602 = 2050;
              v603 = v48;
              v604 = 2050;
              v605 = v53;
              v606 = 2050;
              v607 = v58;
              v608 = 2050;
              v609 = v63;
              v610 = 2050;
              v611 = v68;
              v612 = 2050;
              v613 = v73;
              v614 = 2082;
              v615 = v81;
              v616 = 1026;
              v617 = v85;
              _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "CLTSP,LI,input,mode,%{public}d,final,%{public}d,time,%{public}.4lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.2lf,cunc,%{public}.2lf,id,%{public}s,type,%{public}d", buf, 0x82u);
            }

            v86 = sub_19B87DD40();
            if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v90 = qword_1EAFE46E8;
              objc_msgSend_latitude(v17, v87, v88, v89);
              v563 = v91;
              objc_msgSend_longitude(v17, v92, v93, v94);
              v96 = v95;
              objc_msgSend_altitude(v17, v97, v98, v99);
              v101 = v100;
              objc_msgSend_speed(v17, v102, v103, v104);
              v106 = v105;
              objc_msgSend_course(v17, v107, v108, v109);
              v111 = v110;
              objc_msgSend_horizontalAccuracy(v17, v112, v113, v114);
              v116 = v115;
              objc_msgSend_altitudeAccuracy(v17, v117, v118, v119);
              v121 = v120;
              objc_msgSend_speedAccuracy(v17, v122, v123, v124);
              v126 = v125;
              objc_msgSend_courseAccuracy(v17, v127, v128, v129);
              v131 = v130;
              v135 = objc_msgSend_UUIDString(v8, v132, v133, v134);
              v139 = objc_msgSend_UTF8String(v135, v136, v137, v138);
              v143 = objc_msgSend_locType(v17, v140, v141, v142);
              v570 = 67243523;
              *v571 = a5;
              *&v571[4] = 1026;
              *&v571[6] = a4;
              *v572 = 2050;
              *&v572[2] = v565;
              *v573 = 2053;
              *&v573[2] = v563;
              v574 = 2053;
              v575 = v96;
              v576 = 2050;
              v577 = v101;
              v578 = 2050;
              v579 = v106;
              v580 = 2050;
              v581 = v111;
              v582 = 2050;
              v583 = v116;
              v584 = 2050;
              v585 = v121;
              v586 = 2050;
              v587 = v126;
              v588 = 2050;
              v589 = v131;
              v590 = 2082;
              v591 = v139;
              v592 = 1026;
              v593 = v143;
              v144 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v90, 2, "CLTSP,LI,input,mode,%{public}d,final,%{public}d,time,%{public}.4lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.2lf,cunc,%{public}.2lf,id,%{public}s,type,%{public}d", &v570, 130);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v144);
              if (v144 != buf)
              {
                free(v144);
              }
            }

            if (!v13)
            {
              v12 = 1;
LABEL_82:
              v13 = v17;
              goto LABEL_119;
            }

            v145 = objc_msgSend_timestamp(v17, v9, v10, v11);
            objc_msgSend_timeIntervalSinceReferenceDate(v145, v146, v147, v148);
            v150 = v149;
            v154 = objc_msgSend_timestamp(v13, v151, v152, v153);
            objc_msgSend_timeIntervalSinceReferenceDate(v154, v155, v156, v157);
            if (v150 <= v161)
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v368 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
              {
                v372 = objc_msgSend_timestamp(v17, v369, v370, v371);
                objc_msgSend_timeIntervalSinceReferenceDate(v372, v373, v374, v375);
                v377 = v376;
                v381 = objc_msgSend_timestamp(v13, v378, v379, v380);
                objc_msgSend_timeIntervalSinceReferenceDate(v381, v382, v383, v384);
                v386 = v385;
                v390 = objc_msgSend_locType(v17, v387, v388, v389);
                v394 = objc_msgSend_locType(v13, v391, v392, v393);
                *buf = 134349824;
                *v595 = v377;
                *&v595[8] = 2050;
                *v596 = v386;
                *&v596[8] = 1026;
                *v597 = v390;
                *&v597[4] = 1026;
                *&v597[6] = v394;
                _os_log_impl(&dword_19B873000, v368, OS_LOG_TYPE_ERROR, "CLTSP,LI,timestamp moving back,time,%{public}.4lf,prevTime,%{public}.4lf,type,%{public}d,prevType,%{public}d", buf, 0x22u);
              }

              v395 = sub_19B87DD40();
              if ((*(v395 + 160) & 0x80000000) == 0 || (*(v395 + 164) & 0x80000000) == 0 || (*(v395 + 168) & 0x80000000) == 0 || *(v395 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                }

                v399 = qword_1EAFE46E8;
                v400 = objc_msgSend_timestamp(v17, v396, v397, v398);
                objc_msgSend_timeIntervalSinceReferenceDate(v400, v401, v402, v403);
                v405 = v404;
                v409 = objc_msgSend_timestamp(v13, v406, v407, v408);
                objc_msgSend_timeIntervalSinceReferenceDate(v409, v410, v411, v412);
                v414 = v413;
                v418 = objc_msgSend_locType(v17, v415, v416, v417);
                v422 = objc_msgSend_locType(v13, v419, v420, v421);
                v570 = 134349824;
                *v571 = v405;
                *&v571[8] = 2050;
                *v572 = v414;
                *&v572[8] = 1026;
                *v573 = v418;
                *&v573[4] = 1026;
                *&v573[6] = v422;
                v367 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v399, 16, "CLTSP,LI,timestamp moving back,time,%{public}.4lf,prevTime,%{public}.4lf,type,%{public}d,prevType,%{public}d", &v570, 34);
                goto LABEL_93;
              }
            }

            else
            {
              v162 = objc_msgSend_timestamp(v17, v158, v159, v160);
              v166 = objc_msgSend_timestamp(v13, v163, v164, v165);
              objc_msgSend_timeIntervalSinceDate_(v162, v167, v166, v168);
              v173 = v172;
              if (v172 > v550)
              {
                v174 = objc_msgSend_timestamp(v13, v169, v170, v171);
                objc_msgSend_timeIntervalSinceReferenceDate(v174, v175, v176, v177);
                v179 = v178;
                objc_msgSend_distanceFromLocation_(v17, v180, v13, v181);
                v186 = v185;
                if (v173 <= 1.5)
                {
                  objc_msgSend_speed(v17, v182, v183, v184);
                  v495 = v565;
                  if (v173 > 0.0 && v494 < 0.0)
                  {
                    if (a5 > 3)
                    {
                      v496 = 53.6;
                    }

                    else
                    {
                      v496 = dbl_19BA8D160[a5];
                    }

                    if (v496 >= v186 / v173)
                    {
                      v496 = v186 / v173;
                    }

                    objc_msgSend_updateSpeed_andSpeedAccuracy_(v17, v491, v492, v493, v496, v552);
                  }

                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                  }

                  v497 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    objc_msgSend_speed(v17, v498, v499, v500);
                    *buf = 134218496;
                    *v595 = v173;
                    *&v595[8] = 2048;
                    *v596 = v186;
                    *&v596[8] = 2048;
                    *v597 = v501;
                    _os_log_impl(&dword_19B873000, v497, OS_LOG_TYPE_DEBUG, "CLTSP,LI,duration_since_previous_epoch,%.2lf,distance,%.2lf,speed,%.2lf", buf, 0x20u);
                  }

                  v502 = sub_19B87DD40();
                  if (*(v502 + 160) > 1 || *(v502 + 164) > 1 || *(v502 + 168) > 1 || *(v502 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                    }

                    v509 = qword_1EAFE46E8;
                    objc_msgSend_speed(v17, v506, v507, v508);
                    v570 = 134218496;
                    *v571 = v173;
                    *&v571[8] = 2048;
                    *v572 = v186;
                    *&v572[8] = 2048;
                    *v573 = v510;
                    v511 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v509, 2, "CLTSP,LI,duration_since_previous_epoch,%.2lf,distance,%.2lf,speed,%.2lf", &v570, 32);
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v511);
                    if (v511 != buf)
                    {
                      free(v511);
                    }
                  }

                  if (v12)
                  {
                    objc_msgSend_speed(v13, v503, v504, v505);
                    if (v515 < 0.0)
                    {
                      objc_msgSend_speed(v17, v512, v513, v514);
                      objc_msgSend_updateSpeed_andSpeedAccuracy_(v13, v516, v517, v518);
                    }

                    objc_msgSend_setLocationReconstructionType_(v13, v512, 1, v514);
                    objc_msgSend_addObject_(a7, v519, v13, v520);
                    v524 = objc_msgSend_timestamp(v13, v521, v522, v523);
                    objc_msgSend_timeIntervalSinceReferenceDate(v524, v525, v526, v527);
                    v529 = v528;
                    v533 = objc_msgSend_timestamp(v13, v530, v531, v532);
                    objc_msgSend_timeIntervalSinceReferenceDate(v533, v534, v535, v536);
                    v538 = v537;
                    v542 = objc_msgSend_count(a7, v539, v540, v541);
                    sub_19B9E1DE8(v13, v542, v8, a5, v529, v538, -1.0, -1.0);
                    v495 = v565;
                  }

                  objc_msgSend_addObject_(a7, v503, v17, v505);
                  v546 = objc_msgSend_count(a7, v543, v544, v545);
                  sub_19B9E1DE8(v17, v546, v8, a5, v495, v179, v495, -1.0);
                  v12 = 0;
                }

                else
                {
                  v559 = a1 / v173 * v185 / a1;
                  v553 = a1 / v173;
                  v554 = v179;
                  v187 = a1 / v173;
                  v555 = v173;
                  do
                  {
                    if (v187 >= 0.9999999)
                    {
                      break;
                    }

                    objc_msgSend_latitude(v13, v182, v183, v184);
                    v189 = v188;
                    objc_msgSend_longitude(v13, v190, v191, v192);
                    v194 = CLLocationCoordinate2DMake(v189, v193);
                    objc_msgSend_latitude(v17, v195, v196, v197);
                    v199 = v198;
                    objc_msgSend_longitude(v17, v200, v201, v202);
                    v205 = CLLocationCoordinate2DMake(v199, v203);
                    longitude = v205.longitude;
                    v206 = v194.longitude + 360.0;
                    if (v194.longitude >= 0.0)
                    {
                      v206 = v194.longitude;
                    }

                    if (v205.longitude < 0.0)
                    {
                      longitude = v205.longitude + 360.0;
                    }

                    v207 = longitude - v206;
                    if (v207 <= 180.0)
                    {
                      if (v207 < -180.0)
                      {
                        v207 = v207 + 360.0;
                      }
                    }

                    else
                    {
                      v207 = v207 + -360.0;
                    }

                    v211 = fmod(v194.longitude + v207 * v187, 360.0);
                    if (v211 <= -180.0)
                    {
                      v211 = v211 + 360.0;
                    }

                    else if (v211 > 180.0)
                    {
                      v211 = v211 + -360.0;
                    }

                    objc_msgSend_speed(v13, v208, v209, v210);
                    v216 = v215 < 0.0;
                    v217 = v559;
                    v564 = v187;
                    if (!v216)
                    {
                      objc_msgSend_speed(v17, v212, v213, v214, v559);
                      v216 = v221 < 0.0;
                      v217 = v559;
                      if (!v216)
                      {
                        objc_msgSend_speed(v13, v218, v219, v220, v559);
                        v223 = v222;
                        objc_msgSend_speed(v17, v224, v225, v226);
                        v217 = v187 * v227 + v223 * (1.0 - v187);
                      }
                    }

                    v228 = v8;
                    v229 = 53.6;
                    if (a5 <= 3)
                    {
                      v229 = dbl_19BA8D160[a5];
                    }

                    v230 = v179 + v187 * v173;
                    v231 = v194.latitude + (v205.latitude - v194.latitude) * v187;
                    if (v229 < v217)
                    {
                      v217 = v229;
                    }

                    v561 = v217;
                    v232 = [CLTripSegmentLocation alloc];
                    v236 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v233, v234, v235, v179 + v187 * v173);
                    objc_msgSend_horizontalAccuracy(v17, v237, v238, v239);
                    v241 = v240;
                    objc_msgSend_course(v17, v242, v243, v244);
                    v246 = v245;
                    objc_msgSend_courseAccuracy(v17, v247, v248, v249);
                    v251 = v250;
                    objc_msgSend_altitude(v17, v252, v253, v254);
                    v256 = v255;
                    objc_msgSend_altitudeAccuracy(v17, v257, v258, v259);
                    v261 = v260;
                    v265 = objc_msgSend_locType(v17, v262, v263, v264);
                    v269 = objc_msgSend_referenceFrame(v17, v266, v267, v268);
                    v271 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v232, v270, v236, v265, v269, v231, v211, v241, v246, v251, v561, v552, v256, v261);
                    objc_msgSend_setLocationReconstructionType_(v271, v272, 4, v273);
                    v277 = objc_msgSend_locType(v13, v274, v275, v276);
                    objc_msgSend_setStartLocationType_(v271, v278, v277, v279);
                    v283 = objc_msgSend_locType(v17, v280, v281, v282);
                    objc_msgSend_setStopLocationType_(v271, v284, v283, v285);
                    v289 = objc_msgSend_timestamp(v13, v286, v287, v288);
                    objc_msgSend_timeIntervalSinceReferenceDate(v289, v290, v291, v292);
                    v294 = v293;
                    v298 = objc_msgSend_timestamp(v17, v295, v296, v297);
                    objc_msgSend_timeIntervalSinceReferenceDate(v298, v299, v300, v301);
                    if (vabdd_f64(v230, v294) >= vabdd_f64(v230, v305))
                    {
                      v306 = objc_msgSend_signalEnvironmentType(v17, v302, v303, v304);
                    }

                    else
                    {
                      v306 = objc_msgSend_signalEnvironmentType(v13, v302, v303, v304);
                    }

                    objc_msgSend_setSignalEnvironmentType_(v271, v307, v306, v308);
                    if (objc_msgSend_locType(v13, v309, v310, v311) == 13 || objc_msgSend_locType(v17, v312, v313, v314) == 13)
                    {
                      objc_msgSend_speed(v271, v312, v313, v314);
                      objc_msgSend_updateSpeed_andSpeedAccuracy_(v271, v315, v316, v317);
                    }

                    v8 = v228;
                    v318 = v565;
                    v179 = v554;
                    v173 = v555;
                    if (v12)
                    {
                      objc_msgSend_speed(v13, v312, v313, v314);
                      if (v322 < 0.0)
                      {
                        objc_msgSend_speed(v271, v319, v320, v321);
                        objc_msgSend_updateSpeed_andSpeedAccuracy_(v13, v323, v324, v325);
                      }

                      objc_msgSend_addObject_(a7, v319, v13, v321);
                      v329 = objc_msgSend_timestamp(v13, v326, v327, v328);
                      objc_msgSend_timeIntervalSinceReferenceDate(v329, v330, v331, v332);
                      v334 = v333;
                      v338 = objc_msgSend_timestamp(v13, v335, v336, v337);
                      objc_msgSend_timeIntervalSinceReferenceDate(v338, v339, v340, v341);
                      v343 = v342;
                      v347 = objc_msgSend_count(a7, v344, v345, v346);
                      sub_19B9E1DE8(v13, v347, v228, a5, v334, v343, -1.0, -1.0);
                      v318 = v565;
                    }

                    objc_msgSend_addObject_(a7, v312, v271, v314);
                    v351 = objc_msgSend_count(a7, v348, v349, v350);
                    sub_19B9E1DE8(v271, v351, v228, a5, v230, v554, v318, v564);
                    v12 = 0;
                    v352 = v553 + v564;
                    if (v553 + v564 > 1.0)
                    {
                      v352 = 1.0;
                    }

                    if (v564 >= 1.0)
                    {
                      break;
                    }

                    v187 = v352;
                  }

                  while (v230 < v318);
                  if (a5 == 1)
                  {
                    objc_msgSend_setLocationReconstructionType_(v17, v182, 4, v184);
                    v356 = objc_msgSend_locType(v13, v353, v354, v355);
                    objc_msgSend_setStartLocationType_(v17, v357, v356, v358);
                    v362 = objc_msgSend_locType(v17, v359, v360, v361);
                    objc_msgSend_setStopLocationType_(v17, v363, v362, v364);
                  }

                  objc_msgSend_addObject_(a7, v182, v17, v184);
                }

                goto LABEL_82;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
              }

              v424 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v428 = objc_msgSend_timestamp(v17, v425, v426, v427);
                objc_msgSend_timeIntervalSinceReferenceDate(v428, v429, v430, v431);
                v433 = v432;
                v437 = objc_msgSend_timestamp(v13, v434, v435, v436);
                objc_msgSend_timeIntervalSinceReferenceDate(v437, v438, v439, v440);
                v442 = v441;
                v446 = objc_msgSend_locType(v17, v443, v444, v445);
                v450 = objc_msgSend_locType(v13, v447, v448, v449);
                *buf = 134350080;
                *v595 = v433;
                *&v595[8] = 2050;
                *v596 = v442;
                *&v596[8] = 1026;
                *v597 = v446;
                *&v597[4] = 1026;
                *&v597[6] = v450;
                v598 = 2050;
                v599 = v173;
                _os_log_impl(&dword_19B873000, v424, OS_LOG_TYPE_DEBUG, "CLTSP,LI,duration_since_previous_epoch threshold not met,time,%{public}.4lf,prevTime,%{public}.4lf,type,%{public}d,prevType,%{public}d,duration_since_previous_epoch,%{public}.2lf", buf, 0x2Cu);
              }

              v451 = sub_19B87DD40();
              if (*(v451 + 160) > 1 || *(v451 + 164) > 1 || *(v451 + 168) > 1 || *(v451 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
                }

                v455 = qword_1EAFE46E8;
                v456 = objc_msgSend_timestamp(v17, v452, v453, v454);
                objc_msgSend_timeIntervalSinceReferenceDate(v456, v457, v458, v459);
                v461 = v460;
                v465 = objc_msgSend_timestamp(v13, v462, v463, v464);
                objc_msgSend_timeIntervalSinceReferenceDate(v465, v466, v467, v468);
                v470 = v469;
                v474 = objc_msgSend_locType(v17, v471, v472, v473);
                v478 = objc_msgSend_locType(v13, v475, v476, v477);
                v570 = 134350080;
                *v571 = v461;
                *&v571[8] = 2050;
                *v572 = v470;
                *&v572[8] = 1026;
                *v573 = v474;
                *&v573[4] = 1026;
                *&v573[6] = v478;
                v574 = 2050;
                v575 = v173;
                v479 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v455, 2, "CLTSP,LI,duration_since_previous_epoch threshold not met,time,%{public}.4lf,prevTime,%{public}.4lf,type,%{public}d,prevType,%{public}d,duration_since_previous_epoch,%{public}.2lf", &v570, 44);
                goto LABEL_116;
              }
            }
          }
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
          }

          v365 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v365, OS_LOG_TYPE_ERROR, "CLTSP,LI,interpolator,null location object skipped", buf, 2u);
          }

          v366 = sub_19B87DD40();
          if ((*(v366 + 160) & 0x80000000) == 0 || (*(v366 + 164) & 0x80000000) == 0 || (*(v366 + 168) & 0x80000000) == 0 || *(v366 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
            }

            LOWORD(v570) = 0;
            v367 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,LI,interpolator,null location object skipped", &v570, 2);
LABEL_93:
            v423 = v367;
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentLinearInterpolator::upsampleTripSegmentData(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const double) const", "CoreLocation: %s\n", v367);
LABEL_117:
            if (v423 != buf)
            {
              free(v423);
            }
          }
        }

LABEL_119:
        ++v16;
      }

      while (v16 != v558);
      v547 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v9, &v566, v618, 16);
      v558 = v547;
    }

    while (v547);
  }

  return objc_msgSend_count(a7, v9, v10, v11) != 0;
}

void sub_19B9E1DE8(void *a1, int a2, void *a3, int a4, double a5, double a6, double a7, double a8)
{
  v224 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
  }

  v12 = qword_1EAFE46E8;
  v16 = &xmmword_19BA8B000;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    objc_msgSend_latitude(a1, v13, v14, v15);
    v142 = v17;
    objc_msgSend_longitude(a1, v18, v19, v20);
    v22 = v21;
    objc_msgSend_course(a1, v23, v24, v25);
    v27 = v26;
    objc_msgSend_speed(a1, v28, v29, v30);
    v32 = v31;
    objc_msgSend_altitude(a1, v33, v34, v35);
    v37 = v36;
    objc_msgSend_horizontalAccuracy(a1, v38, v39, v40);
    v42 = v41;
    objc_msgSend_courseAccuracy(a1, v43, v44, v45);
    v47 = v46;
    objc_msgSend_speedAccuracy(a1, v48, v49, v50);
    v52 = v51;
    objc_msgSend_altitudeAccuracy(a1, v53, v54, v55);
    v57 = v56;
    v61 = objc_msgSend_locType(a1, v58, v59, v60);
    v65 = objc_msgSend_UUIDString(a3, v62, v63, v64);
    *buf = 134353667;
    v187 = a5;
    v188 = 2050;
    v189 = a6;
    v190 = 2050;
    v191 = a7;
    v192 = 2053;
    v193 = v142;
    v194 = 2053;
    v195 = v22;
    v196 = 2050;
    v197 = v27;
    v198 = 2050;
    v199 = v32;
    v200 = 2050;
    v201 = v37;
    v202 = 2050;
    v203 = v42;
    v204 = 2050;
    v205 = v47;
    v206 = 2050;
    v207 = v52;
    v208 = 2050;
    v209 = v57;
    v210 = 1026;
    v211 = v61;
    v212 = 2050;
    v213 = a8;
    v214 = 1026;
    v215 = a2;
    v216 = 2082;
    v217 = objc_msgSend_UTF8String(v65, v66, v67, v68);
    v218 = 1026;
    v219 = a4;
    v220 = 1026;
    v221 = objc_msgSend_reconstructionType(a1, v69, v70, v71);
    v16 = &xmmword_19BA8B000;
    v222 = 1026;
    v223 = objc_msgSend_referenceFrame(a1, v72, v73, v74);
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLTSP,LI,output,time,%{public}.4lf,start,%{public}.4lf,end,%{public}.4lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.2lf,speed,%{public}.2lf,alt,%{public}.2lf,hunc,%{public}.2lf,cunc,%{public}.2lf,sunc,%{public}.2lf,vunc,%{public}.2lf,type,%{public}d,projection,%{public}.5lf,count,%{public}d,id,%{public}s,mode,%{public}d,reconstructionType,%{public}d,refFrame,%{public}d", buf, 0xACu);
  }

  v75 = sub_19B87DD40();
  if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9B0);
    }

    v79 = qword_1EAFE46E8;
    objc_msgSend_latitude(a1, v76, v77, v78);
    v143 = v80;
    objc_msgSend_longitude(a1, v81, v82, v83);
    v85 = v84;
    objc_msgSend_course(a1, v86, v87, v88);
    v90 = v89;
    objc_msgSend_speed(a1, v91, v92, v93);
    v95 = v94;
    objc_msgSend_altitude(a1, v96, v97, v98);
    v100 = v99;
    objc_msgSend_horizontalAccuracy(a1, v101, v102, v103);
    v105 = v104;
    objc_msgSend_courseAccuracy(a1, v106, v107, v108);
    v110 = v109;
    objc_msgSend_speedAccuracy(a1, v111, v112, v113);
    v115 = v114;
    objc_msgSend_altitudeAccuracy(a1, v116, v117, v118);
    v120 = v119;
    v124 = objc_msgSend_locType(a1, v121, v122, v123);
    v128 = objc_msgSend_UUIDString(a3, v125, v126, v127);
    v132 = objc_msgSend_UTF8String(v128, v129, v130, v131);
    v136 = objc_msgSend_reconstructionType(a1, v133, v134, v135);
    v140 = objc_msgSend_referenceFrame(a1, v137, v138, v139);
    v148 = *(v16 + 384);
    v149 = a5;
    v150 = 2050;
    v151 = a6;
    v152 = 2050;
    v153 = a7;
    v154 = 2053;
    v155 = v143;
    v156 = 2053;
    v157 = v85;
    v158 = 2050;
    v159 = v90;
    v160 = 2050;
    v161 = v95;
    v162 = 2050;
    v163 = v100;
    v164 = 2050;
    v165 = v105;
    v166 = 2050;
    v167 = v110;
    v168 = 2050;
    v169 = v115;
    v170 = 2050;
    v171 = v120;
    v172 = 1026;
    v173 = v124;
    v174 = 2050;
    v175 = a8;
    v176 = 1026;
    v177 = a2;
    v178 = 2082;
    v179 = v132;
    v180 = 1026;
    v181 = a4;
    v182 = 1026;
    v183 = v136;
    v184 = 1026;
    v185 = v140;
    v141 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v79, 2, "CLTSP,LI,output,time,%{public}.4lf,start,%{public}.4lf,end,%{public}.4lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.2lf,speed,%{public}.2lf,alt,%{public}.2lf,hunc,%{public}.2lf,cunc,%{public}.2lf,sunc,%{public}.2lf,vunc,%{public}.2lf,type,%{public}d,projection,%{public}.5lf,count,%{public}d,id,%{public}s,mode,%{public}d,reconstructionType,%{public}d,refFrame,%{public}d", &v148, 172);
    sub_19B885924("Generic", 1, 0, 2, "void printOutputLogLine(CLTripSegmentLocation *, CFAbsoluteTime, CFAbsoluteTime, CFAbsoluteTime, double, int, NSUUID * _Nonnull, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v141);
    if (v141 != buf)
    {
      free(v141);
    }
  }
}

os_log_t sub_19B9E22AC()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

_DWORD *sub_19B9E26C4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_opt_class();
  v8 = objc_msgSend_trackerStateSize(v4, v5, v6, v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
  *v10 = 3;
  v10[1] = v9;
  __strlcpy_chk();
  v11 = objc_opt_class();
  objc_msgSend_trackerStateTypeName(v11, v12, v13, v14);
  __strlcpy_chk();
  object_getClassName(WeakRetained);
  __strlcpy_chk();
  if ((objc_msgSend_dumpState_withSize_hints_(WeakRetained, v15, (v10 + 50), v9, a2) & 1) == 0)
  {
    free(v10);
    v10 = 0;
  }

  return v10;
}

uint64_t sub_19B9E2ED8(unsigned int a1)
{
  if (a1 > 9)
  {
    return 4;
  }

  else
  {
    return dword_19BA8D1F0[a1];
  }
}

void sub_19B9E2EF8(float64x2_t *a1, const char *a2, void *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6)
{
  v246[3] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v25 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLTSP,Unexpected,invalid geometry pointer,processUpsampledLocations", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      LOWORD(v214[0]) = 0;
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,Unexpected,invalid geometry pointer,processUpsampledLocations", v214, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLUpsampledTripLocationProcessor::processUpsampledLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    return;
  }

  v7 = a5;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!objc_msgSend_count(a3, a2, a3, a4))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v28 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEBUG, "CLTSP,snapUpsampledLocation,empty location array", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      LOWORD(v214[0]) = 0;
      v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,snapUpsampledLocation,empty location array", v214, 2);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::snapUpsampledLocations(CLDistanceCalc &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport, BOOL)", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v32 = 0;
    if (v7)
    {
      goto LABEL_208;
    }

    goto LABEL_209;
  }

  memset(v246, 0, 24);
  v214[1] = 0uLL;
  v214[0] = xmmword_19BA89490;
  v214[2] = 0x3FF0000000000000uLL;
  v214[3] = 0uLL;
  if (!sub_19B948DC0(v214, a3))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v33 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLTSP,snapUpsampledLocation,unable to initialize location array", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
    {
      goto LABEL_93;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LOWORD(v209) = 0;
    v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,snapUpsampledLocation,unable to initialize location array", &v209, 2);
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::snapUpsampledLocations(CLDistanceCalc &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport, BOOL)", "CoreLocation: %s\n", v35);
    goto LABEL_91;
  }

  v11 = *(&v214[2] + 1);
  for (i = *&v214[3]; v11 != i; v11 += 2)
  {
    v13 = *v11;
    v14 = *(*v11 + 40);
    if (*(*v11 + 32) >= 0.0)
    {
      v15 = *(v13 + 24);
      if (v14 < v15)
      {
        v14 = v15 + 10.0;
      }

      if (v14 > 179.0)
      {
        v14 = 135.0;
      }
    }

    *(v13 + 40) = v14;
  }

  v211 = a4;
  v212 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_19B9AECDC(&v214[2] + 1, v246, &v211);
  if (v212)
  {
    sub_19B8750F8(v212);
  }

  if ((v16 & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v36 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLTSP,snapUpsampledLocation,quickMapMatcher returned error", buf, 2u);
    }

    v37 = sub_19B87DD40();
    if (*(v37 + 160) <= 1 && *(v37 + 164) <= 1 && *(v37 + 168) <= 1 && !*(v37 + 152))
    {
      goto LABEL_93;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LOWORD(v209) = 0;
    v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,snapUpsampledLocation,quickMapMatcher returned error", &v209, 2);
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::snapUpsampledLocations(CLDistanceCalc &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport, BOOL)", "CoreLocation: %s\n", v35);
LABEL_91:
    if (v35 != buf)
    {
      free(v35);
    }

LABEL_93:
    v32 = 0;
    goto LABEL_207;
  }

  v189 = v7;
  memset(buf, 0, sizeof(buf));
  v18 = v246[0];
  v17 = v246[1];
  if (v246[0] == v246[1])
  {
    v209 = 0uLL;
    v210 = 0;
    goto LABEL_205;
  }

  v188 = a4;
  v193 = a6;
  v19 = 0;
  v20 = -1;
  do
  {
    v21 = *v18;
    if (!*v18)
    {
      goto LABEL_24;
    }

    ++v19;
    if (*buf == *&buf[8] || v19 == (v246[1] - v246[0]) >> 4)
    {
      sub_19B8EAB68(buf, v18);
      goto LABEL_24;
    }

    if (*(v21 + 64) == 1)
    {
      if (v20 != -1 && v20 <= 1)
      {
        ++v20;
        goto LABEL_24;
      }

      if (*(v21 + 96) == 1 && (*(v21 + 30) | 2) == 3)
      {
LABEL_41:
        sub_19B8EAB68(buf, v18);
LABEL_42:
        v20 = -1;
        goto LABEL_24;
      }

      v22 = *v21;
      if (!*v21 || a6 == 1 && (*(v22 + 20) & 0xFFFFFFFE) == 8 || *(v22 + 76) == 2)
      {
        goto LABEL_42;
      }

      v23 = sub_19B9E2ED8(*(v22 + 20));
      v24 = sqrt(*(v21 + 9) * *(v21 + 9) + *(v21 + 10) * *(v21 + 10));
      if (v24 < 50.0 && *(v21 + 11) < 30.0)
      {
        goto LABEL_41;
      }

      v20 = 0;
      if (!v23 && v24 < 100.0)
      {
        if (*(v21 + 11) < 40.0)
        {
          goto LABEL_41;
        }

        v20 = 0;
      }
    }

LABEL_24:
    ++v18;
  }

  while (v18 != v17);
  v39 = *buf;
  v38 = *&buf[8];
  v209 = 0uLL;
  v210 = 0;
  if (*buf == *&buf[8])
  {
LABEL_205:
    v206 = &v209;
    sub_19B8F0E84(&v206);
    goto LABEL_206;
  }

  LODWORD(v40) = 0;
  v41 = 0;
  v42 = 0;
  v187 = *&buf[8];
  do
  {
    v43 = *v39;
    if (!*v39)
    {
      goto LABEL_201;
    }

    LODWORD(v40) = v40 + 1;
    if (v195 == v196 || v193 == 1 && v40 == (*&buf[8] - *buf) >> 4)
    {
      sub_19B8EAB68(&v195, v39);
      goto LABEL_201;
    }

    if (v41)
    {
      v44 = v42;
      v43 = v41;
    }

    else
    {
      v44 = *(v39 + 1);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v42)
      {
        sub_19B8750F8(v42);
      }
    }

    v192 = v40;
    v40 = v40;
    v45 = (*&buf[8] - *buf) >> 4;
    v41 = *v39;
    if (*(*v39 + 16) - *(v43 + 16) < 3.0 && v45 > v40)
    {
      sub_19B8EAB68(&v209, v39);
      v41 = *v39;
      v42 = *(v39 + 1);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v44)
      {
        sub_19B8750F8(v44);
      }
    }

    else
    {
      v190 = v44;
      v47 = *(&v209 + 1);
      v48 = v209;
      if (*(&v209 + 1) - v209 <= 0x20uLL && v45 != v40)
      {
        v42 = *(v39 + 1);
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v190)
        {
          sub_19B8750F8(v190);
          v48 = v209;
        }

        for (j = *(&v209 + 1); j != v48; --j)
        {
          v50 = *(j - 1);
          if (v50)
          {
            sub_19B8750F8(v50);
          }
        }

        *(&v209 + 1) = v48;
        sub_19B8EAB68(&v209, v39);
        goto LABEL_201;
      }

      v206 = 0;
      v207 = 0;
      v208 = 0;
      if (v209 != *(&v209 + 1))
      {
        v185 = (*&buf[8] - *buf) >> 4;
        v186 = v40;
        v51 = 0;
        v52 = 0;
        v53 = 0.0;
        while (1)
        {
          v54 = v51;
          v55 = *v48;
          if (*v48)
          {
            break;
          }

LABEL_144:
          if (++v48 == v47)
          {
            v47 = *(&v209 + 1);
            v48 = v209;
            v45 = v185;
            v40 = v186;
            goto LABEL_191;
          }
        }

        if (!v52 || (v56 = *v52) == 0)
        {
          v51 = *(v48 + 1);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v54)
          {
            sub_19B8750F8(v54);
          }

          sub_19B8EAB68(&v206, v48);
          v52 = v55;
          goto LABEL_144;
        }

        if (*(&v209 + 1) - v209 <= 0x3C0uLL && (**v55 != *v56 || *(*v55 + 8) != v56[1]))
        {
          v60 = *v48;
          if (v193 == 1)
          {
            if ((sub_19B9F6278(v56, v60) & 1) == 0)
            {
LABEL_152:
              v203 = 0;
              v204 = 0;
              v205 = 0;
              memset(v202, 0, sizeof(v202));
              v61 = v52[1];
              v200 = *v52;
              v201 = v61;
              if (v61)
              {
                atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v62 = sub_19B8EB824(v188, &v200, &v203, v202, 1, 1000.0);
              if (v201)
              {
                sub_19B8750F8(v201);
              }

              if (!v62 || (v63 = v203, v203 == v204))
              {
LABEL_162:
                v65 = 0;
              }

              else
              {
                v64 = **v48;
                while (*v64 != **v63 || v64[1] != *(*v63 + 1))
                {
                  v63 += 2;
                  if (v63 == v204)
                  {
                    goto LABEL_162;
                  }
                }

                v65 = 1;
              }

              if (v193 != 1)
              {
                v66 = v52[1];
                v198 = *v52;
                v199 = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v67 = sub_19B8EB824(v188, &v198, &v203, v202, 0, 1000.0);
                if (v199)
                {
                  sub_19B8750F8(v199);
                }

                if (v67)
                {
                  v68 = v203;
                  if (v203 != v204)
                  {
                    v69 = **v48;
                    while (*v69 != **v68 || v69[1] != *(*v68 + 1))
                    {
                      v68 += 2;
                      if (v68 == v204)
                      {
                        goto LABEL_174;
                      }
                    }

                    v213 = v202;
                    sub_19B8F0E84(&v213);
                    v202[0] = &v203;
                    sub_19B8F0E84(v202);
                    goto LABEL_132;
                  }
                }
              }

LABEL_174:
              v213 = v202;
              sub_19B8F0E84(&v213);
              v202[0] = &v203;
              sub_19B8F0E84(v202);
              if ((v65 & 1) == 0)
              {
                sub_19B9F1C14(&v206, &v195, v193, v53);
                v70 = v206;
                for (k = v207; k != v70; --k)
                {
                  v72 = *(k - 1);
                  if (v72)
                  {
                    sub_19B8750F8(v72);
                  }
                }

                v207 = v70;
                sub_19B8EAB68(&v206, v48);
                v52 = *v48;
                v51 = *(v48 + 1);
                if (v51)
                {
                  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v53 = 0.0;
                if (!v54)
                {
                  goto LABEL_144;
                }

                goto LABEL_138;
              }
            }
          }

          else if ((sub_19B9F6534(v56, v60) & 1) == 0)
          {
            goto LABEL_152;
          }
        }

LABEL_132:
        sub_19BA0C01C(a1, *(*v48 + 24), *(*v48 + 32), *(v52 + 3), *(v52 + 4), 0.0);
        v58 = v57;
        sub_19B8EAB68(&v206, v48);
        v53 = v53 + v58;
        v59 = *(*(&v209 + 1) - 16);
        v52 = *v48;
        if (v59 && *(v52 + 2) == *(v59 + 16))
        {
          sub_19B9F1C14(&v206, &v195, v193, v53);
          v52 = *v48;
        }

        v51 = *(v48 + 1);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v54)
        {
          goto LABEL_144;
        }

LABEL_138:
        sub_19B8750F8(v54);
        goto LABEL_144;
      }

      v51 = 0;
LABEL_191:
      while (v47 != v48)
      {
        v73 = *(v47 - 1);
        if (v73)
        {
          sub_19B8750F8(v73);
        }

        --v47;
      }

      *(&v209 + 1) = v48;
      sub_19B8EAB68(&v209, v39);
      v41 = *v39;
      v42 = *(v39 + 1);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v190)
      {
        sub_19B8750F8(v190);
      }

      if (v45 == v40)
      {
        sub_19B8EAB68(&v195, v39);
      }

      if (v51)
      {
        sub_19B8750F8(v51);
      }

      v203 = &v206;
      sub_19B8F0E84(&v203);
      v38 = v187;
      LODWORD(v40) = v192;
    }

LABEL_201:
    ++v39;
  }

  while (v39 != v38);
  v206 = &v209;
  sub_19B8F0E84(&v206);
  if (v42)
  {
    sub_19B8750F8(v42);
  }

LABEL_206:
  *&v209 = buf;
  sub_19B8F0E84(&v209);
  v32 = 1;
  v7 = v189;
LABEL_207:
  *buf = &v214[2] + 8;
  sub_19B8F0E84(buf);
  *buf = v246;
  sub_19B8F0E84(buf);
  if (v7)
  {
LABEL_208:
    sub_19B8750F8(v7);
  }

LABEL_209:
  if (!v32)
  {
    goto LABEL_428;
  }

  memset(v214, 0, sizeof(v214));
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v30, v214, buf, 16);
  if (v77)
  {
    v78 = **&v214[1];
    do
    {
      for (m = 0; m != v77; ++m)
      {
        if (**&v214[1] != v78)
        {
          objc_enumerationMutation(a3);
        }

        v80 = *(*(&v214[0] + 1) + 8 * m);
        if (!objc_msgSend_isGPSLocationType(v80, v74, v75, v76) || (objc_msgSend_isOriginalLocationType(v80, v74, v75, v76) & 1) == 0)
        {
          v81 = objc_msgSend_timestamp(v80, v74, v75, v76);
          objc_msgSend_timeIntervalSinceReferenceDate(v81, v82, v83, v84);
          for (n = v195; n != v196; n += 16)
          {
            v87 = *n;
            if (*n && vabdd_f64(v87[2], v85) < 0.001)
            {
              v88 = *(n + 1);
              if (v88)
              {
                atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (*v87 && v87[6] * *(*v87 + 128) + *(*v87 + 120) * (1.0 - v87[6]) > 0.0)
              {
                objc_msgSend_updateAltitude_andAltitudeAccuracy_(v80, v74, v75, v76);
              }

              if (v88)
              {
                sub_19B8750F8(v88);
              }

              break;
            }
          }
        }
      }

      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v74, v214, buf, 16);
    }

    while (v77);
  }

  v89 = a1[2].f64[1];
  v191 = &a1[2].f64[1];
  v90 = a1[3].f64[0];
  while (*&v90 != *&v89)
  {
    *&v90 -= 24;
    *buf = v90;
    sub_19B8F0E84(buf);
  }

  v91 = v195;
  a1[3].f64[0] = v89;
  memset(v246, 0, 24);
  if (v196 == v91)
  {
    *buf = v246;
    sub_19B8F0E84(buf);
    goto LABEL_350;
  }

  v92 = 0;
  v93 = 0;
  v94 = 0;
  while (2)
  {
    v95 = *&v91[16 * v92];
    v209 = v95;
    if (*(&v95 + 1))
    {
      atomic_fetch_add_explicit((*(&v95 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v95 && *v95)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v96 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v97 = *a2;
        if (a2[23] >= 0)
        {
          v97 = a2;
        }

        if (*v209)
        {
          v98 = *(*v209 + 20);
        }

        else
        {
          v98 = -1;
        }

        v104 = *(v209 + 16);
        v105 = *(v209 + 24);
        v106 = *(v209 + 32);
        v107 = *(v209 + 40);
        v108 = *(v209 + 48);
        v109 = *(v209 + 56);
        v110 = *(v209 + 72);
        v111 = *(v209 + 80);
        v112 = *(v209 + 88);
        v113 = *(v209 + 64);
        *buf = 136449027;
        *&buf[4] = v97;
        *&buf[12] = 2050;
        *&buf[14] = v104;
        *&buf[22] = 2053;
        v227 = v105;
        v228 = 2053;
        v229 = v106;
        v230 = 2049;
        v231 = v107;
        v232 = 2050;
        v233 = v108;
        v234 = 2050;
        v235 = v109;
        v236 = 2050;
        v237 = v111;
        v238 = 2050;
        v239 = v110;
        v240 = 2050;
        v241 = v112;
        v242 = 1026;
        v243 = v113;
        v244 = 1026;
        v245 = v98;
        _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedIILocationContinuous,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
      }

      v114 = sub_19B87DD40();
      if (*(v114 + 160) > 1 || *(v114 + 164) > 1 || *(v114 + 168) > 1 || *(v114 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        if (a2[23] >= 0)
        {
          v115 = a2;
        }

        else
        {
          v115 = *a2;
        }

        v116 = *(v209 + 16);
        v117 = *(v209 + 24);
        v119 = *(v209 + 32);
        v118 = *(v209 + 40);
        v121 = *(v209 + 48);
        v120 = *(v209 + 56);
        v122 = *(v209 + 72);
        v123 = *(v209 + 80);
        v124 = *(v209 + 88);
        v125 = *(v209 + 64);
        if (*v209)
        {
          v126 = *(*v209 + 20);
        }

        else
        {
          v126 = -1;
        }

        LODWORD(v214[0]) = 136449027;
        *(v214 + 4) = v115;
        WORD6(v214[0]) = 2050;
        *(v214 + 14) = v116;
        WORD3(v214[1]) = 2053;
        *(&v214[1] + 1) = v117;
        LOWORD(v214[2]) = 2053;
        *(&v214[2] + 2) = v119;
        WORD5(v214[2]) = 2049;
        *(&v214[2] + 12) = v118;
        WORD2(v214[3]) = 2050;
        *(&v214[3] + 6) = v121;
        HIWORD(v214[3]) = 2050;
        v215 = v120;
        v216 = 2050;
        v217 = v123;
        v218 = 2050;
        v219 = v122;
        v220 = 2050;
        v221 = v124;
        v222 = 1026;
        v223 = v125;
        v224 = 1026;
        v225 = v126;
        v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,MI,snappedIILocationContinuous,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", v214, 114);
        sub_19B885924("Generic", 1, 0, 2, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v127);
        if (v127 != buf)
        {
          free(v127);
        }
      }

      if (!v94)
      {
        sub_19B8EAB68(v246, &v209);
        goto LABEL_292;
      }

      v128 = *v94;
      if (*v94)
      {
        if (vabdd_f64(*(v209 + 16), v94[2]) < 3.0)
        {
          v129 = sub_19B9E2ED8(*(*v209 + 20));
          if (v129 == sub_19B9E2ED8(*(*&v128 + 20)))
          {
            sub_19B8EAB68(v246, &v209);
            v130 = *(&v209 + 1);
            v94 = v209;
            if (*(&v209 + 1))
            {
              atomic_fetch_add_explicit((*(&v209 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v93)
            {
              sub_19B8750F8(v93);
            }

            v93 = v130;
            if (((v196 - v195) >> 4) - 1 != v92)
            {
              goto LABEL_339;
            }
          }
        }

        if (v246[1] != v246[0])
        {
          v132 = a1[3].f64[0];
          if (*&v132 >= *&a1[3].f64[1])
          {
            v133 = sub_19B9A2EF8(v191, v246);
          }

          else
          {
            sub_19B9A2EA4(v191, v246);
            v133 = (*&v132 + 24);
          }

          *&a1[3].f64[0] = v133;
          v141 = *(&v209 + 1);
          v94 = v209;
          if (*(&v209 + 1))
          {
            atomic_fetch_add_explicit((*(&v209 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v93)
          {
            sub_19B8750F8(v93);
          }

          v142 = v246[0];
          for (ii = v246[1]; ii != v142; ii -= 16)
          {
            v144 = *(ii - 1);
            if (v144)
            {
              sub_19B8750F8(v144);
            }
          }

          v246[1] = v142;
          v93 = v141;
          sub_19B8EAB68(v246, &v209);
          goto LABEL_339;
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v138 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v138, OS_LOG_TYPE_ERROR, "CLTSP,MI,unexpected,location chunk empty", buf, 2u);
        }

        v139 = sub_19B87DD40();
        if ((*(v139 + 160) & 0x80000000) == 0 || (*(v139 + 164) & 0x80000000) == 0 || (*(v139 + 168) & 0x80000000) == 0 || *(v139 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          LOWORD(v214[0]) = 0;
          v140 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,unexpected,location chunk empty", v214, 2);
          sub_19B885924("Generic", 1, 0, 0, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v140);
          if (v140 != buf)
          {
            free(v140);
          }
        }

LABEL_292:
        v131 = *(&v209 + 1);
        v94 = v209;
        if (*(&v209 + 1))
        {
          atomic_fetch_add_explicit((*(&v209 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v93)
        {
          sub_19B8750F8(v93);
        }

        v93 = v131;
        goto LABEL_339;
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v134 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        if (a2[23] >= 0)
        {
          v135 = a2;
        }

        else
        {
          v135 = *a2;
        }

        *buf = 136446466;
        *&buf[4] = v135;
        *&buf[12] = 1026;
        *&buf[14] = v92;
        _os_log_impl(&dword_19B873000, v134, OS_LOG_TYPE_ERROR, "CLTSP,MI,snappedIILocationContinuous,prevLocation road is nullptr,tripSegmentID,%{public}s,index,%{public}d", buf, 0x12u);
      }

      v136 = sub_19B87DD40();
      if ((*(v136 + 160) & 0x80000000) == 0 || (*(v136 + 164) & 0x80000000) == 0 || (*(v136 + 168) & 0x80000000) == 0 || *(v136 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        if (a2[23] >= 0)
        {
          v137 = a2;
        }

        else
        {
          v137 = *a2;
        }

        LODWORD(v214[0]) = 136446466;
        *(v214 + 4) = v137;
        WORD6(v214[0]) = 1026;
        *(v214 + 14) = v92;
        v103 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,snappedIILocationContinuous,prevLocation road is nullptr,tripSegmentID,%{public}s,index,%{public}d", v214, 18);
        sub_19B885924("Generic", 1, 0, 0, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v103);
        goto LABEL_263;
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v99 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        if (a2[23] >= 0)
        {
          v100 = a2;
        }

        else
        {
          v100 = *a2;
        }

        *buf = 136446466;
        *&buf[4] = v100;
        *&buf[12] = 1026;
        *&buf[14] = v92;
        _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_ERROR, "CLTSP,MI,snappedIILocationContinuous,road is nullptr,tripSegmentID,%{public}s,index,%{public}d", buf, 0x12u);
      }

      v101 = sub_19B87DD40();
      if ((*(v101 + 160) & 0x80000000) == 0 || (*(v101 + 164) & 0x80000000) == 0 || (*(v101 + 168) & 0x80000000) == 0 || *(v101 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        if (a2[23] >= 0)
        {
          v102 = a2;
        }

        else
        {
          v102 = *a2;
        }

        LODWORD(v214[0]) = 136446466;
        *(v214 + 4) = v102;
        WORD6(v214[0]) = 1026;
        *(v214 + 14) = v92;
        v103 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,snappedIILocationContinuous,road is nullptr,tripSegmentID,%{public}s,index,%{public}d", v214, 18);
        sub_19B885924("Generic", 1, 0, 0, "void CLUpsampledTripLocationProcessor::makeSegments(const std::string &, const std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v103);
LABEL_263:
        if (v103 != buf)
        {
          free(v103);
        }
      }
    }

LABEL_339:
    if (*(&v209 + 1))
    {
      sub_19B8750F8(*(&v209 + 1));
    }

    ++v92;
    v91 = v195;
    if (v92 < (v196 - v195) >> 4)
    {
      continue;
    }

    break;
  }

  *buf = v246;
  sub_19B8F0E84(buf);
  if (v93)
  {
    sub_19B8750F8(v93);
  }

LABEL_350:
  v145 = v195;
  for (jj = v196; jj != v145; jj -= 16)
  {
    v147 = *(jj - 1);
    if (v147)
    {
      sub_19B8750F8(v147);
    }
  }

  v196 = v145;
  *(&v214[0] + 1) = 0;
  *&v214[1] = 0;
  *&v214[0] = v214 + 8;
  v148 = *&a1[2].f64[1];
  v149 = *&a1[3].f64[0];
  if (v149 != v148)
  {
    v150 = 0;
    v151 = -1;
    v152 = 4;
    v153 = 4;
    do
    {
      v154 = &v148[3 * v150];
      if (*v154 != v154[1])
      {
        v155 = **v154;
        if (v155)
        {
          v156 = *v155;
          if (v156)
          {
            v157 = sub_19B9E2ED8(*(v156 + 20));
            if (v152 == 4)
            {
              v152 = v157;
            }

            else
            {
              if (v153 != 4)
              {
                if (v157 != v152 && v157 == v153)
                {
                  v151 = -1;
                  v152 = v153;
                }

                else
                {
                  v159 = *(&v214[0] + 1);
LABEL_368:
                  if (!v159)
                  {
LABEL_376:
                    operator new();
                  }

                  while (1)
                  {
                    v160 = v159;
                    v161 = *(v159 + 7);
                    if (v161 > v151)
                    {
                      v159 = *v160;
                      goto LABEL_368;
                    }

                    if (v161 >= v151)
                    {
                      break;
                    }

                    v159 = v160[1];
                    if (!v159)
                    {
                      goto LABEL_376;
                    }
                  }

                  *(v160 + 32) = 1;
                  v151 = -1;
                }
              }

              if (v157 == v152)
              {
                v153 = 4;
              }

              else
              {
                v151 = v150;
                v153 = v157;
              }

              if (v157 == v152)
              {
                v152 = v157;
              }
            }
          }
        }
      }

      ++v150;
      v148 = *&a1[2].f64[1];
      v149 = *&a1[3].f64[0];
    }

    while (0xAAAAAAAAAAAAAAABLL * (v149 - v148) > v150);
  }

  if (v148 == v149)
  {
    goto LABEL_427;
  }

  v162 = 0;
  while (2)
  {
    v163 = *(&v214[0] + 1);
    if (!*(&v214[0] + 1))
    {
LABEL_390:
      v148 += 3;
      goto LABEL_391;
    }

    while (2)
    {
      v164 = *(v163 + 7);
      if (v162 < v164)
      {
LABEL_389:
        v163 = *v163;
        if (!v163)
        {
          goto LABEL_390;
        }

        continue;
      }

      break;
    }

    if (v164 < v162)
    {
      ++v163;
      goto LABEL_389;
    }

    v166 = *v148;
    v165 = v148[1];
    if (*v148 == v165)
    {
      goto LABEL_398;
    }

    if (!*v166)
    {
      goto LABEL_398;
    }

    v167 = **v166;
    if (!v167)
    {
      goto LABEL_398;
    }

    v168 = sub_19B9E2ED8(*(v167 + 20));
    v169 = v165 - v166;
    if (v168 > 1)
    {
      if (v169 >= 0x1D1)
      {
        goto LABEL_414;
      }

LABEL_398:
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v170 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v171 = **v148;
        v172 = v171[2];
        LODWORD(v171) = *(*v171 + 20);
        *buf = 134349312;
        *&buf[4] = v172;
        *&buf[12] = 1026;
        *&buf[14] = v171;
        _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_INFO, "CLTSP,UpsampledLocFiltering,erased,%{public}.2lf,locFRC,%{public}d", buf, 0x12u);
      }

      v173 = sub_19B87DD40();
      if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v174 = **v148;
        v175 = v174[2];
        LODWORD(v174) = *(*v174 + 20);
        LODWORD(v246[0]) = 134349312;
        *(v246 + 4) = v175;
        WORD2(v246[1]) = 1026;
        *(&v246[1] + 6) = v174;
        v176 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,UpsampledLocFiltering,erased,%{public}.2lf,locFRC,%{public}d", v246, 18);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLUpsampledTripLocationProcessor::processUpsampledLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v176);
        if (v176 != buf)
        {
          free(v176);
        }
      }

      v149 = sub_19B9F1E2C((v148 + 3), *&a1[3].f64[0], v148);
      v177 = a1[3].f64[0];
      while (*&v177 != v149)
      {
        *&v177 -= 24;
        *buf = v177;
        sub_19B8F0E84(buf);
      }

      *&a1[3].f64[0] = v149;
      goto LABEL_391;
    }

    if (v169 <= 0x90)
    {
      goto LABEL_398;
    }

LABEL_414:
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v178 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v179 = **v148;
      v180 = v179[2];
      LODWORD(v179) = *(*v179 + 20);
      *buf = 134349568;
      *&buf[4] = v180;
      *&buf[12] = 1026;
      *&buf[14] = v179;
      *&buf[18] = 1026;
      *&buf[20] = v168;
      _os_log_impl(&dword_19B873000, v178, OS_LOG_TYPE_INFO, "CLTSP,UpsampledLocFiltering,skip erasing major or secondary road snaps,%{public}.2lf,locFRC,%{public}d,clrc,%{public}d", buf, 0x18u);
    }

    v181 = sub_19B87DD40();
    if (*(v181 + 160) > 1 || *(v181 + 164) > 1 || *(v181 + 168) > 1 || *(v181 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v182 = **v148;
      v183 = v182[2];
      LODWORD(v182) = *(*v182 + 20);
      LODWORD(v246[0]) = 134349568;
      *(v246 + 4) = v183;
      WORD2(v246[1]) = 1026;
      *(&v246[1] + 6) = v182;
      WORD1(v246[2]) = 1026;
      HIDWORD(v246[2]) = v168;
      v184 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,UpsampledLocFiltering,skip erasing major or secondary road snaps,%{public}.2lf,locFRC,%{public}d,clrc,%{public}d", v246, 24);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLUpsampledTripLocationProcessor::processUpsampledLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v184);
      if (v184 != buf)
      {
        free(v184);
      }
    }

    v148 += 3;
    v149 = *&a1[3].f64[0];
LABEL_391:
    ++v162;
    if (v148 != v149)
    {
      continue;
    }

    break;
  }

LABEL_427:
  sub_19B9D8CB0(*(&v214[0] + 1));
LABEL_428:
  *buf = &v195;
  sub_19B8F0E84(buf);
}