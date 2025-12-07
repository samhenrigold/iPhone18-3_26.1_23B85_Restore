BOOL CLClientPopulateRegionFromInfo(id *a1, const __CFDictionary *a2)
{
  v140 = *MEMORY[0x1E69E9840];
  sub_19B874A98(v134, a2);
  memset(&v133, 0, sizeof(v133));
  sub_19B92B010(v134, "kCLConnectionMessageNameKey", &v133, 0xFFFFFFFFLL);
  memset(&v132, 0, sizeof(v132));
  sub_19B92B010(v134, "kCLConnectionMessageOnBehalfOfKey", &v132, 0xFFFFFFFFLL);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v132.__r_.__value_.__l.__size_)
    {
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, v132.__r_.__value_.__l.__data_, v4);
      goto LABEL_6;
    }
  }

  else if (*(&v132.__r_.__value_.__s + 23))
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, &v132, v4);
LABEL_6:
    v6 = v5;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  memset(&v131, 0, sizeof(v131));
  memset(&__p, 0, sizeof(__p));
  sub_19B92B010(v134, "kCLConnectionMessageDeviceIDKey", &v131, 0xFFFFFFFFLL);
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, &v131, v8);
  }

  else
  {
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v131.__r_.__value_.__l.__data_, v8);
  }

  v13 = objc_msgSend_initWithUUIDString_(v9, v11, v10, v12);
  sub_19B92B010(v134, "kCLConnectionMessageHandoffTagKey", &__p, 0xFFFFFFFFLL);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, &__p, v15);
  }

  else
  {
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, __p.__r_.__value_.__l.__data_, v15);
  }

  v17 = v16;
  v129 = 0;
  sub_19B876178(v134, "kCLConnectionMessageRegionTypeKey", &v129, 0xFFFFFFFFLL);
  v128 = 0;
  sub_19B8767CC(v134, "kCLConnectionMessageNotifyOnEntryKey", &v128 + 1, 0xFFFFFFFFLL);
  sub_19B8767CC(v134, "kCLConnectionMessageNotifyOnExitKey", &v128, 0xFFFFFFFFLL);
  v127 = 0;
  sub_19B8767CC(v134, "kCLConnectionMessageConservativeEntry", &v127 + 1, 0xFFFFFFFFLL);
  sub_19B8767CC(v134, "kCLConnectionMessageEmergencyKey", &v127, 0xFFFFFFFFLL);
  if (v129 <= 1)
  {
    if (v129)
    {
      if (v129 != 1)
      {
        goto LABEL_104;
      }

      LODWORD(v123) = 0;
      sub_19B876178(v134, "kCLConnectionMessageReferenceFrameKey", &v123, 0xFFFFFFFFLL);
      sub_19B8767CC(v134, "kCLConnectionMessageMonitoringNearby", &v122, 0xFFFFFFFFLL);
      LOBYTE(v126) = 0;
      sub_19B8767CC(v134, "kCLConnectionMessageLowPowerFenceKey", &v126, 0xFFFFFFFFLL);
      v135 = 0.0;
      sub_19B92ACF0(v134, "kCLConnectionMessageLatitudeKey", buf, 0xFFFFFFFFLL);
      sub_19B92ACF0(v134, "kCLConnectionMessageLongitudeKey", v139, 0xFFFFFFFFLL);
      sub_19B92ACF0(v134, "kCLConnectionMessageRadiusKey", &v135, 0xFFFFFFFFLL);
      v20 = [CLCircularRegion alloc];
      v21 = *buf;
      v22 = *v139;
      v23 = v135;
      v24 = v123;
      v25 = v126;
      v26 = MEMORY[0x1E696AEC0];
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
LABEL_23:
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v18, &v133, v19);
        goto LABEL_24;
      }

LABEL_22:
      v27 = objc_msgSend_stringWithUTF8String_(v26, v18, v133.__r_.__value_.__l.__data_, v19);
LABEL_24:
      BYTE1(v121) = HIBYTE(v127);
      BYTE2(v121) = v127;
      LOBYTE(v121) = v128;
      *a1 = objc_msgSend_initWithCenter_radius_referenceFrame_allowMonitoringWhenNearby_lowPower_identifier_onBehalfOfBundleId_notifyOnEntry_notifyOnExit_conservativeEntry_emergency_deviceId_handoffTag_(v20, v28, v24, 0, v25, v27, v6, HIBYTE(v128), *&v21, v22, v23, v121, v13, v17);
      goto LABEL_104;
    }

    LOBYTE(v126) = 0;
    sub_19B8767CC(v134, "kCLConnectionMessageNotifyEntryStateOnDisplayKey", &v126, 0xFFFFFFFFLL);
    *buf = 0;
    *v139 = 0;
    *&v139[8] = 0;
    LOWORD(v123) = 0;
    LOWORD(v122) = 0;
    LODWORD(v135) = 0;
    sub_19B92B010(v134, "kCLConnectionMessageProximityUUIDKey", buf, 0xFFFFFFFFLL);
    sub_19B92991C(v134, "kCLConnectionMessageMajorKey", &v123, 0xFFFFFFFFLL);
    sub_19B92991C(v134, "kCLConnectionMessageMinorKey", &v122, 0xFFFFFFFFLL);
    sub_19B876178(v134, "kCLConnectionMessageRegionDefinitionKey", &v135, 0xFFFFFFFFLL);
    if ((~LODWORD(v135) & 7) != 0)
    {
      if ((~LODWORD(v135) & 3) != 0)
      {
        if ((LOBYTE(v135) & 1) == 0)
        {
          v75 = [CLBeaconRegion alloc];
          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v73, &v133, v74);
          }

          else
          {
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v73, v133.__r_.__value_.__l.__data_, v74);
          }

          v79 = objc_msgSend_initWithIdentifier_(v75, v77, v76, v78);
          v35 = 0;
          objc_msgSend_setOnBehalfOfBundleId_(v79, v80, v6, v81);
LABEL_86:
          objc_msgSend_setNotifyEntryStateOnDisplay_(v79, v82, v126, v83);
          objc_msgSend_setNotifyOnEntry_(v79, v97, HIBYTE(v128), v98);
          objc_msgSend_setNotifyOnExit_(v79, v99, v128, v100);
          objc_msgSend_setConservativeEntry_(v79, v101, HIBYTE(v127), v102);
          objc_msgSend_setEmergency_(v79, v103, v127, v104);
          *a1 = v79;

          if ((v139[15] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          goto LABEL_104;
        }

        v88 = objc_alloc(MEMORY[0x1E696AFB0]);
        if (v139[15] >= 0)
        {
          v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v86, buf, v87);
        }

        else
        {
          v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v86, *buf, v87);
        }

        v35 = objc_msgSend_initWithUUIDString_(v88, v90, v89, v91);
        v94 = [CLBeaconRegion alloc];
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v92, &v133, v93);
        }

        else
        {
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v92, v133.__r_.__value_.__l.__data_, v93);
        }

        v43 = objc_msgSend_initWithUUID_identifier_(v94, v96, v35, v95);
      }

      else
      {
        v59 = objc_alloc(MEMORY[0x1E696AFB0]);
        if (v139[15] >= 0)
        {
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v57, buf, v58);
        }

        else
        {
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v57, *buf, v58);
        }

        v35 = objc_msgSend_initWithUUIDString_(v59, v61, v60, v62);
        v65 = [CLBeaconRegion alloc];
        v66 = v123;
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v63, &v133, v64);
        }

        else
        {
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v63, v133.__r_.__value_.__l.__data_, v64);
        }

        v43 = objc_msgSend_initWithUUID_major_identifier_(v65, v68, v35, v66, v67);
      }
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x1E696AFB0]);
      if (v139[15] >= 0)
      {
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v29, buf, v30);
      }

      else
      {
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v29, *buf, v30);
      }

      v35 = objc_msgSend_initWithUUIDString_(v31, v33, v32, v34);
      v38 = [CLBeaconRegion alloc];
      v39 = v123;
      v40 = v122;
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v36, &v133, v37);
      }

      else
      {
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v36, v133.__r_.__value_.__l.__data_, v37);
      }

      v43 = objc_msgSend_initWithUUID_major_minor_identifier_(v38, v42, v35, v39, v40, v41);
    }

    v79 = v43;
    objc_msgSend_setOnBehalfOfBundleId_(v43, v44, v6, v45);
    goto LABEL_86;
  }

  if (v129 != 2)
  {
    if (v129 != 3)
    {
      goto LABEL_104;
    }

    LODWORD(v123) = 0;
    sub_19B876178(v134, "kCLConnectionMessageReferenceFrameKey", &v123, 0xFFFFFFFFLL);
    sub_19B8767CC(v134, "kCLConnectionMessageMonitoringNearby", &v122, 0xFFFFFFFFLL);
    LOBYTE(v126) = 0;
    sub_19B8767CC(v134, "kCLConnectionMessageLowPowerFenceKey", &v126, 0xFFFFFFFFLL);
    v135 = 0.0;
    sub_19B92ACF0(v134, "kCLConnectionMessageLatitudeKey", buf, 0xFFFFFFFFLL);
    sub_19B92ACF0(v134, "kCLConnectionMessageLongitudeKey", v139, 0xFFFFFFFFLL);
    sub_19B92ACF0(v134, "kCLConnectionMessageRadiusKey", &v135, 0xFFFFFFFFLL);
    v20 = [_CLSignificantRegion alloc];
    v21 = *buf;
    v22 = *v139;
    v23 = v135;
    v24 = v123;
    v25 = v126;
    v26 = MEMORY[0x1E696AEC0];
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  sub_19B876178(v134, "kCLConnectionMessagePolygonalVerticesCountKey", &v124, 0xFFFFFFFFLL);
  sub_19B92D410(v134, @"kCLConnectionMessagePolygonalVerticesKey", &v123);
  sub_19B876178(v134, "kCLConnectionMessageReferenceFrameKey", &v126, 0xFFFFFFFFLL);
  sub_19B8767CC(v134, "kCLConnectionMessageMonitoringNearby", &v125, 0xFFFFFFFFLL);
  v46 = v123;
  v122 = 0;
  v47 = MEMORY[0x1E696ACD0];
  v48 = objc_opt_class();
  v50 = objc_msgSend_unarchivedArrayOfObjectsOfClass_fromData_error_(v47, v49, v48, v46, &v122);
  v54 = objc_msgSend_count(v50, v51, v52, v53);
  if (v122)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v55 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v139 = 2082;
      *&v139[2] = "";
      *&v139[10] = 2114;
      *&v139[12] = v122;
      _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to get vertices from encoded data, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }
    }

    v56 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v139 = 2082;
      *&v139[2] = "";
      *&v139[10] = 2114;
      *&v139[12] = v122;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to get vertices from encoded data", "{msg%{public}.0s:Unable to get vertices from encoded data, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    goto LABEL_104;
  }

  v69 = v54;
  if (v124 == v54)
  {
    if ((v124 - 102) > 0xFFFFFF9D)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v105 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67174657;
        *&buf[4] = v124;
        _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "Copied %{private}d vertices", buf, 8u);
      }

      v106 = sub_19B87DD40();
      if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        LODWORD(v135) = 67174657;
        HIDWORD(v135) = v124;
        v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "Copied %{private}d vertices", &v135, 8);
        sub_19B885924("Generic", 1, 0, 2, "Boolean CLClientPopulateRegionFromInfo(CLRegion **, CFDictionaryRef)", "CoreLocation: %s\n", v107);
        if (v107 != buf)
        {
          free(v107);
        }
      }

      v110 = [_CLPolygonalRegion alloc];
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v108, &v133, v109);
      }

      else
      {
        v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v108, v133.__r_.__value_.__l.__data_, v109);
      }

      v113 = objc_msgSend_initWithVertices_identifier_(v110, v112, v50, v111);
      objc_msgSend_setReferenceFrame_(v113, v114, v126, v115);
      objc_msgSend_setEmergency_(v113, v116, v127, v117);
      *a1 = v113;
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      v70 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        *&buf[4] = v124;
        _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_FAULT, "Number of vertices received invalid, %{public}d, internal", buf, 8u);
      }

      v71 = sub_19B87DD40();
      if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
        }

        LODWORD(v135) = 67240192;
        HIDWORD(v135) = v124;
        v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Number of vertices received invalid, %{public}d, internal", &v135, 8);
        sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientPopulateRegionFromInfo(CLRegion **, CFDictionaryRef)", "CoreLocation: %s\n", v72);
LABEL_76:
        if (v72 != buf)
        {
          free(v72);
        }
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v84 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240448;
      *&buf[4] = v124;
      *v139 = 2050;
      *&v139[2] = v69;
      _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_FAULT, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", buf, 0x12u);
    }

    v85 = sub_19B87DD40();
    if ((*(v85 + 160) & 0x80000000) == 0 || (*(v85 + 164) & 0x80000000) == 0 || (*(v85 + 168) & 0x80000000) == 0 || *(v85 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
      }

      LODWORD(v135) = 67240448;
      HIDWORD(v135) = v124;
      v136 = 2050;
      v137 = v69;
      v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", &v135, 18);
      sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientPopulateRegionFromInfo(CLRegion **, CFDictionaryRef)", "CoreLocation: %s\n", v72);
      goto LABEL_76;
    }
  }

LABEL_104:
  v118 = *a1;
  v119 = *a1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  sub_19B8756F0(v134);
  return v119 != 0;
}

void sub_19B88D4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_19B8756F0(&a41);
  _Unwind_Resume(a1);
}

uint64_t CLClientGetGroundAltitudeAtLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 368);
    a1 = *(a1 + 360);
  }

  else
  {
    v5 = 0;
  }

  return sub_19B9BF390(a1, v5, a2, a3);
}

uint64_t sub_19B88D5D0(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  if (CLClientPopulateRegionFromInfo(a2, theDict))
  {
    v6 = sub_19B876178(v8, "kCLConnectionMessageEventKey", a3, 0xFFFFFFFFLL);
  }

  else
  {
    v6 = 0;
  }

  sub_19B8756F0(v8);
  return v6;
}

uint64_t sub_19B88D668(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  v6 = 0;
  if (a2 && a3)
  {
    if (CLClientPopulateRegionFromInfo(a2, theDict))
    {
      v6 = sub_19B876178(v8, "kCLConnectionMessageStatusKey", a3, 0xFFFFFFFFLL);
    }

    else
    {
      v6 = 0;
    }
  }

  sub_19B8756F0(v8);
  return v6;
}

uint64_t sub_19B88D70C(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  v6 = 0;
  if (a2 && a3)
  {
    if (CLClientPopulateRegionFromInfo(a2, theDict))
    {
      v6 = sub_19B876178(v8, "kCLConnectionMessageErrorKey", a3, 0xFFFFFFFFLL);
    }

    else
    {
      v6 = 0;
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  sub_19B8756F0(v8);
  return v6;
}

BOOL sub_19B88D7B4(CFDictionaryRef theDict, id *a2, _BYTE *a3, id *a4)
{
  sub_19B874A98(v11, theDict);
  v8 = 0;
  if (a2 && a3 && a4)
  {
    *a3 = 1;
    v8 = CLClientPopulateRegionFromInfo(a2, theDict);
    sub_19B87B468(v10);
    if (sub_19B92BD80(v11, "kCLConnectionMessageAlternateRegionKey", v10, 0xFFFFFFFFLL))
    {
      if (v8)
      {
        v8 = CLClientPopulateRegionFromInfo(a4, v10[1]);
      }
    }

    else
    {
      *a3 = 0;
    }

    sub_19B8756F0(v10);
  }

  sub_19B8756F0(v11);
  return v8;
}

void sub_19B88D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88D8AC(CFDictionaryRef theDict, void *a2)
{
  sub_19B874A98(v4, theDict);
  if (a2)
  {
    a2 = sub_19B92ACF0(v4, "kCLConnectionMessageRegionWatchdogSinceLast", a2, 0xFFFFFFFFLL);
  }

  sub_19B8756F0(v4);
  return a2;
}

uint64_t sub_19B88D920(uint64_t a1, void *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 240);
  v75[3] = v6;
  pthread_mutex_lock(v6);
  v76 = 257;
  sub_19B87B468(v75);
  sub_19B87BBB4();
  if ((sub_19B93BE2C() & 0x400000) == 0)
  {
    v10 = 0;
    goto LABEL_23;
  }

  if (objc_msgSend_count(a2, v7, v8, v9))
  {
    if ((*(a1 + 392) & 4) != 0)
    {
      objc_msgSend_count(a2, v11, v12, v13);
      entr_act_modify();
      goto LABEL_10;
    }

    objc_msgSend_count(a2, v11, v12, v13);
    entr_act_begin();
    v14 = *(a1 + 392) | 4;
    goto LABEL_8;
  }

  if ((*(a1 + 392) & 4) != 0)
  {
    entr_act_end();
    v14 = *(a1 + 392) & 0xFB;
LABEL_8:
    *(a1 + 392) = v14;
  }

LABEL_10:
  v68 = a3;
  v67 = a1;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v11, &v71, v77, 16);
  if (v18)
  {
    v19 = *v72;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v72 != v19)
        {
          objc_enumerationMutation(a2);
        }

        v21 = *(*(&v71 + 1) + 8 * i);
        if (!objc_msgSend_onBehalfOfBundleId(v21, v15, v16, v17))
        {
          sub_19B87B468(v70);
          v25 = objc_msgSend_identifier(v21, v22, v23, v24);
          sub_19B87D0EC(v70, "kCLConnectionMessageIdentifierKey", v25);
          v69 = objc_msgSend_definitionMask(v21, v26, v27, v28);
          sub_19B87B384(v70, "kCLConnectionMessageRegionDefinitionKey", &v69);
          v32 = objc_msgSend_UUID(v21, v29, v30, v31);
          v36 = objc_msgSend_UUIDString(v32, v33, v34, v35);
          if (v36)
          {
            sub_19B87C3A4(v70, "kCLConnectionMessageProximityUUIDKey", v36);
          }

          else
          {
            sub_19B92E6C8(v70, "kCLConnectionMessageProximityUUIDKey", "");
          }

          v40 = objc_msgSend_major(v21, v37, v38, v39);
          LOWORD(v69) = objc_msgSend_unsignedShortValue(v40, v41, v42, v43);
          sub_19B92D79C(v70, "kCLConnectionMessageMajorKey", &v69);
          v47 = objc_msgSend_minor(v21, v44, v45, v46);
          LOWORD(v69) = objc_msgSend_unsignedShortValue(v47, v48, v49, v50);
          sub_19B92D79C(v70, "kCLConnectionMessageMinorKey", &v69);
          LOBYTE(v69) = objc_msgSend_notifyOnEntry(v21, v51, v52, v53);
          sub_19B87B7CC(v75, "kCLConnectionMessageNotifyOnEntryKey", &v69);
          LOBYTE(v69) = objc_msgSend_notifyOnExit(v21, v54, v55, v56);
          sub_19B87B7CC(v75, "kCLConnectionMessageNotifyOnExitKey", &v69);
          LOBYTE(v69) = objc_msgSend_notifyEntryStateOnDisplay(v21, v57, v58, v59);
          sub_19B87B7CC(v75, "kCLConnectionMessageNotifyEntryStateOnDisplayKey", &v69);
          LOBYTE(v69) = objc_msgSend_conservativeEntry(v21, v60, v61, v62);
          sub_19B87B7CC(v75, "kCLConnectionMessageConservativeEntry", &v69);
          LOBYTE(v69) = objc_msgSend_emergency(v21, v63, v64, v65);
          sub_19B87B7CC(v75, "kCLConnectionMessageEmergencyKey", &v69);
          sub_19B930818(v75, "kCLConnectionMessageRegionsKey", v70);
          sub_19B8756F0(v70);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v15, &v71, v77, 16);
    }

    while (v18);
  }

  LODWORD(v70[0]) = v68;
  sub_19B87B384(v75, "kCLConnectionMessageSubscribeKey", v70);
  v10 = 1;
  sub_19B87B6CC(v67, "kCLConnectionMessageRanging", v75);
LABEL_23:
  sub_19B8756F0(v75);
  pthread_mutex_unlock(v6);
  return v10;
}

void sub_19B88DCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_19B8756F0(&a24);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B88DD54(CFDictionaryRef theDict, id *a2, CFTypeRef *a3)
{
  sub_19B874A98(v10, theDict);
  *a3 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  if (CLClientPopulateRegionFromInfo(a2, theDict))
  {
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "kCLConnectionMessageBeaconsKey", 0x8000100u);
    *a3 = CFDictionaryGetValue(v10[1], v6);
    CFRelease(v6);
    if (*a3)
    {
      CFRetain(*a3);
    }

    v7 = *a2;
  }

  if (*a2)
  {
    v8 = *a3 != 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  sub_19B8756F0(v10);
  return v8;
}

uint64_t sub_19B88DE40(CFDictionaryRef theDict, id *a2, _DWORD *a3)
{
  sub_19B874A98(v8, theDict);
  v6 = 0;
  if (a2 && a3)
  {
    if (CLClientPopulateRegionFromInfo(a2, theDict))
    {
      v6 = sub_19B876178(v8, "kCLConnectionMessageErrorKey", a3, 0xFFFFFFFFLL);
    }

    else
    {
      v6 = 0;
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  sub_19B8756F0(v8);
  return v6;
}

uint64_t CLClientGetAuthorizationStatus(const __CFDictionary *a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 1;
  AuthorizationStatusAndCorrectiveCompensation = CLClientGetAuthorizationStatusAndCorrectiveCompensation(a1, a2, &v5, &v6);
  if (AuthorizationStatusAndCorrectiveCompensation && v5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client is subject to corrective compensation, but hasn't been updated to find out about it yet}", buf, 0x12u);
    }
  }

  return AuthorizationStatusAndCorrectiveCompensation;
}

void *CLClientSetMatchInfoEnabled(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageMatchInfoEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88E0A0(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageGroundAltitudeEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88E158(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageFusionInfoEnabled", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88E210(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageAllowsLocationPrompts", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientSetShowLocationPrompt(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageEnabledKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageShowLocationPrompt", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientMarkAsHavingReceivedLocation(uint64_t a1)
{
  sub_19B87B468(v4);
  v2 = *(a1 + 240);
  pthread_mutex_lock(v2);
  sub_19B87B6CC(a1, "kCLConnectionMessageMarkAsHavingReceivedLocation", v4);
  pthread_mutex_unlock(v2);
  return sub_19B8756F0(v4);
}

void sub_19B88E3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void CLClientSetAutomaticPromptingEnabled()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_INFO, "kCLConnectionMessageAutomaticPromptingEnabled is not supported", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 1, "kCLConnectionMessageAutomaticPromptingEnabled is not supported", v3, 2);
    sub_19B885924("Generic", 1, 0, 2, "void CLClientSetAutomaticPromptingEnabled(CLClientRef, Boolean)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

void *CLClientUpdateARSessionState(uint64_t a1, uint64_t a2)
{
  sub_19B87B468(v6);
  sub_19B87D0EC(v6, "kCLConnectionMessageARSessionState", a2);
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageARSessionState", v6);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v6);
}

void sub_19B88E648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientUpdateVIOEstimation(uint64_t a1, uint64_t a2)
{
  sub_19B87B468(v6);
  sub_19B87D0EC(v6, "kCLConnectionMessageVIOEstimation", a2);
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageVIOEstimation", v6);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v6);
}

void sub_19B88E6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *CLClientUpdateVLLocalizationResult(uint64_t a1, uint64_t a2)
{
  sub_19B87B468(v6);
  sub_19B87D0EC(v6, "kCLConnectionMessageVLLocalizationResult", a2);
  v4 = *(a1 + 240);
  pthread_mutex_lock(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageVLLocalizationResult", v6);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v6);
}

void sub_19B88E7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88E7D8(CFDictionaryRef theDict, _BYTE *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_19B874A98(v14, theDict);
  if (!a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "Invalid call to CLClientGetAutopauseState", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v13[0] = 0;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Invalid call to CLClientGetAutopauseState", v13, 2);
    sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientGetAutopauseState(CFDictionaryRef, Boolean *, Boolean *)", "CoreLocation: %s\n", v8);
    goto LABEL_25;
  }

  v12 = 0;
  if (!sub_19B8767CC(v14, "kCLConnectionMessageAutopauseStatusKey", &v12 + 1, 0xFFFFFFFFLL) || !sub_19B8767CC(v14, "kCLConnectionMessageAutopauseOverrideKey", &v12, 0xFFFFFFFFLL))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "malformed message: kCLConnectionMessageAutopauseStatus", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v13[0] = 0;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "malformed message: kCLConnectionMessageAutopauseStatus", v13, 2);
    sub_19B885924("Generic", 1, 0, 0, "Boolean CLClientGetAutopauseState(CFDictionaryRef, Boolean *, Boolean *)", "CoreLocation: %s\n", v8);
LABEL_25:
    if (v8 != buf)
    {
      free(v8);
    }

LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  *a2 = HIBYTE(v12);
  *a3 = v12;
  v5 = 1;
LABEL_28:
  sub_19B8756F0(v14);
  return v5;
}

void sub_19B88EB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88EB50(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageAllowsBackgroundLocationUpdatesKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageAllowsBackgroundLocationUpdates", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88EBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88EC08(uint64_t a1, int a2)
{
  sub_19B87B468(v9);
  v6 = a2;
  sub_19B87B384(v9, "kCLConnectionMessageShowsBackgroundLocationIndicatorKey", &v6);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageShowsBackgroundLocationIndicator", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88ECC0(uint64_t a1, double a2, double a3)
{
  v11 = a2;
  v10 = a3;
  entr_act_set();
  entr_act_set();
  sub_19B87B468(v9);
  v6[0] = 1;
  sub_19B87B7CC(v9, "kCLConnectionMessageBatchAllowedKey", v6);
  sub_19B87D390(v9, "kCLConnectionMessageBatchDistanceKey", &v11);
  sub_19B87D390(v9, "kCLConnectionMessageBatchTimeoutKey", &v10);
  v4 = *(a1 + 240);
  v7 = v4;
  pthread_mutex_lock(v4);
  v8 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageBatch", v9);
  pthread_mutex_unlock(v4);
  return sub_19B8756F0(v9);
}

void sub_19B88EDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

void *sub_19B88EE08(uint64_t a1)
{
  entr_act_set();
  entr_act_set();
  sub_19B87B468(v7);
  v4[0] = 0;
  sub_19B87B7CC(v7, "kCLConnectionMessageBatchAllowedKey", v4);
  v2 = *(a1 + 240);
  v5 = v2;
  pthread_mutex_lock(v2);
  v6 = 257;
  sub_19B87B6CC(a1, "kCLConnectionMessageBatch", v7);
  pthread_mutex_unlock(v2);
  return sub_19B8756F0(v7);
}

void sub_19B88EEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_19B888D7C(va);
  sub_19B8756F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88EEEC(uint64_t a1, const __CFDictionary *a2, BOOL *a3, _DWORD *a4)
{
  entr_act_set();
  entr_act_set();
  sub_19B874A98(v9, a2);
  v7 = 0;
  if (a3 && a4)
  {
    sub_19B876178(v9, "kCLConnectionMessageErrorKey", a4, 0xFFFFFFFFLL);
    a4[1] = 0;
    a4[2] = 0;
    *a3 = *a4 == -1;
    v7 = 1;
  }

  sub_19B8756F0(v9);
  return v7;
}

uint64_t sub_19B88EFC0(uint64_t a1)
{
  v2 = *(a1 + 240);
  v4[3] = v2;
  pthread_mutex_lock(v2);
  v5 = 257;
  sub_19B87B468(v4);
  sub_19B87B6CC(a1, "kCLConnectionMessageRegisterAsLocationClient", v4);
  sub_19B8756F0(v4);
  return pthread_mutex_unlock(v2);
}

void sub_19B88F034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_19B8756F0(va);
  sub_19B888D7C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88F058(CFDictionaryRef theDict, UInt8 *a2)
{
  cf = 0;
  sub_19B874A98(v6, theDict);
  sub_19B87F9E8(v6, "kCLConnectionMessageVehicleSpeedKey", &cf, 0xFFFFFFFFLL);
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFDataGetTypeID()))
  {
    v8.location = 0;
    v8.length = 32;
    CFDataGetBytes(cf, v8, a2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_19B8756F0(v6);
  return v4;
}

void sub_19B88F0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B88F104(CFDictionaryRef theDict, UInt8 *a2)
{
  cf = 0;
  sub_19B874A98(v6, theDict);
  sub_19B87F9E8(v6, "kCLConnectionMessageVehicleHeadingKey", &cf, 0xFFFFFFFFLL);
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFDataGetTypeID()))
  {
    v8.location = 0;
    v8.length = 16;
    CFDataGetBytes(cf, v8, a2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_19B8756F0(v6);
  return v4;
}

void sub_19B88F19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStartVehicleSpeedUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 1;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleSpeed", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStopVehicleSpeedUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 0;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleSpeed", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStartVehicleHeadingUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 1;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleHeading", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *CLClientStopVehicleHeadingUpdates(uint64_t a1)
{
  sub_19B87B468(v4);
  v3 = 0;
  sub_19B87B7CC(v4, "kCLConnectionMessageSubscribeKey", &v3);
  sub_19B87B6CC(a1, "kCLConnectionMessageVehicleHeading", v4);
  return sub_19B8756F0(v4);
}

void sub_19B88F3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B8756F0(va);
  _Unwind_Resume(a1);
}

void *sub_19B88F3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "Invalid call to CLClientRequestRecordingOrLocalization", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v13[0] = 0;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientRequestRecordingOrLocalization", v13, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestRecordingOrLocalization(CLClientRef, const char *const, CFDictionaryRef, void (^)(BOOL, NSError *))", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A578];
  v15 = @"CoreLocation MiLo RequestRecordingOrLocalization API Deprecated";
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v15, &v14, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"kCLErrorDomain", 1, v10);
  if (a4)
  {
    return (*(a4 + 16))(a4, 0, result);
  }

  return result;
}

void *sub_19B88F5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "Invalid call to CLClientDonateMicroLocationTruthTag", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v13[0] = 0;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientDonateMicroLocationTruthTag", v13, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientDonateMicroLocationTruthTag(CLClientRef, CFStringRef, CFStringRef, void (^)(NSError *))", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A578];
  v15 = @"CoreLocation MiLo DonateMicroLocationTruthTag API Deprecated";
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v15, &v14, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"kCLErrorDomain", 1, v10);
  if (a4)
  {
    return (*(a4 + 16))(a4, result);
  }

  return result;
}

void *sub_19B88F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "Invalid call to CLClientDonateMicroLocationTruthTagBetweenDates", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v14[0] = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientDonateMicroLocationTruthTagBetweenDates", v14, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientDonateMicroLocationTruthTagBetweenDates(CLClientRef, CFStringRef, CFDateRef, CFDateRef, void (^)(NSError *))", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16 = @"CoreLocation MiLo DonateMicroLocationTruthTagBetweenDates API Deprecated";
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &v16, &v15, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"kCLErrorDomain", 1, v11);
  if (a5)
  {
    return (*(a5 + 16))(a5, result);
  }

  return result;
}

void *sub_19B88FA04(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLExportMicroLocationDatabaseTables", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v11[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLExportMicroLocationDatabaseTables", v11, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLExportMicroLocationDatabaseTables(CLClientRef, void (^)(NSError *, CFDictionaryRef))", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13 = @"CoreLocation MiLo ExportMicroLocationDatabaseTables API Deprecated";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v13, &v12, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"kCLErrorDomain", 1, v8);
  if (a2)
  {
    return (*(a2 + 16))(a2, result, MEMORY[0x1E695E0F8]);
  }

  return result;
}

void *sub_19B88FC24(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLExportMicroLocationDataForMigration", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v11[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLExportMicroLocationDataForMigration", v11, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLExportMicroLocationDataForMigration(CLClientRef, void (^)(NSError *, CFDictionaryRef))", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13 = @"CoreLocation MiLo ExportMicroLocationDataForMigration API Deprecated";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v13, &v12, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"kCLErrorDomain", 1, v8);
  if (a2)
  {
    return (*(a2 + 16))(a2, result, MEMORY[0x1E695E0F8]);
  }

  return result;
}

void *sub_19B88FE44(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLClientRequestMicroLocationStaticSourcesStatistics", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v11[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientRequestMicroLocationStaticSourcesStatistics", v11, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestMicroLocationStaticSourcesStatistics(CLClientRef, void (^)(NSError *, CFDictionaryRef))", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13 = @"CoreLocation MiLo RequestMicroLocationStaticSourcesStatistics API Deprecated";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v13, &v12, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"kCLErrorDomain", 1, v8);
  if (a2)
  {
    return (*(a2 + 16))(a2, result, MEMORY[0x1E695E0F8]);
  }

  return result;
}

void *sub_19B890064(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Invalid call to CLClientRequestMicroLocationLearning", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v11[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientRequestMicroLocationLearning", v11, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientRequestMicroLocationLearning(CLClientRef, void (^)(BOOL, NSError *))", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13 = @"CoreLocation MiLo RequestMicroLocationLearning API Deprecated";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v13, &v12, 1);
  result = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"kCLErrorDomain", 1, v8);
  if (a2)
  {
    return (*(a2 + 16))(a2, 0, result);
  }

  return result;
}

void sub_19B890280()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "Invalid call to CLClientPurgeMicroLocationSemiSupervisedData", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientPurgeMicroLocationSemiSupervisedData", v3, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientPurgeMicroLocationSemiSupervisedData(CLClientRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

void sub_19B89041C()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "Invalid call to CLClientPurgeMicroLocationData", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Invalid call to CLClientPurgeMicroLocationData", v3, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLClientPurgeMicroLocationData(CLClientRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

uint64_t sub_19B8905B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"kCLConnectionMessageFetchEstimatedLocationDateKey";
  v10[0] = a2;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  v6 = *(a1 + 232);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B89069C;
  v8[3] = &unk_1E753CD58;
  v8[4] = v6;
  v8[5] = a3;
  return sub_19B890C98(a1, "kCLConnectionMessageFetchEstimatedLocationAtDate", v5, 0, v8);
}

uint64_t sub_19B89069C(uint64_t a1, CLConnectionMessage **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v6, v9, v7, v10, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v5, v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"kCLConnectionMessageErrorKey", v14);
    v18 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"kCLConnectionMessageFetchEstimatedLocationLocationKey", v17);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B89084C;
    v25[3] = &unk_1E753CD30;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v25[5] = v15;
    v25[6] = v20;
    v25[4] = v18;
    return objc_msgSend_async_(v19, v21, v25, v22);
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8907E8;
    v26[3] = &unk_1E753CCE0;
    v24 = *(a1 + 32);
    v26[4] = *(a1 + 40);
    return objc_msgSend_async_(v24, a2, v26, a4);
  }
}

uint64_t sub_19B8907E8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, *MEMORY[0x1E696A250], 4097, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B890864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v6 = *(a1 + 384);
  if (v6 && (v7 = *v6, *v6))
  {
    v8 = 0;
    v9 = 0;
    v10 = v6 + 1;
    do
    {
      v9 ^= v7 << (v8 & 0x18);
      v11 = *v10++;
      v7 = v11;
      v8 += 8;
    }

    while (v11);
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  v12 = *a5;
  if (*a5)
  {
    v13 = 0;
    v14 = a5 + 1;
    do
    {
      v9 ^= v12 << (v13 & 0x18);
      v15 = *v14++;
      v12 = v15;
      v13 += 8;
    }

    while (v15);
  }

LABEL_11:
  if (a6)
  {
    v16 = *a6;
    if (*a6)
    {
      v17 = 0;
      v18 = a6 + 1;
      do
      {
        v9 ^= v16 << (v17 & 0x18);
        v19 = *v18++;
        v16 = v19;
        v17 += 8;
      }

      while (v19);
    }
  }

  return entr_act_modify();
}

void sub_19B890914(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  NSLog(&cfstr_WarningSupport.isa);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v6 = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Supported CoreLocation API call rate exceeded, behavior undefined., count:%{public}lu}", &v6, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B590);
    }
  }

  v4 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v5 = *(a1 + 32);
    v6 = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = v5;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Supported CoreLocation API call rate exceeded, behavior undefined.", "{msg%{public}.0s:Supported CoreLocation API call rate exceeded, behavior undefined., count:%{public}lu}", &v6, 0x1Cu);
  }
}

void sub_19B890AEC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B890B48(exception, a1);
  __cxa_throw(exception, off_1E753CC30, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_19B890B48(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_19B890B94(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B890BF0(exception, a1);
  __cxa_throw(exception, off_1E753CC38, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_19B890BF0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_19B890C44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6B5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B890C98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = a3;
  v11 = a2;
  v6 = *(a1 + 240);
  v8 = v6;
  pthread_mutex_lock(v6);
  v9 = 257;
  if (!*(a1 + 225))
  {
    sub_19B890E08();
  }

  return pthread_mutex_unlock(v6);
}

void sub_19B890DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void *sub_19B890E7C(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B890ED8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B890ED8(uint64_t a1, char **a2, void *a3)
{
  sub_19B8759E8(__p, *a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B890F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B890F50(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B890FA4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B890FA4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_19B891A08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [CLMonitor alloc];
  v7 = objc_msgSend_name(*(a1 + 32), v4, v5, v6);
  v11 = objc_msgSend_path(*(a1 + 32), v8, v9, v10);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v12[1];
  v18 = objc_msgSend_manager(v12, v15, v16, v17);
  v22 = objc_msgSend_eventHandler(*(a1 + 32), v19, v20, v21);
  v24 = objc_msgSend_initWithLedgerName_path_onSilo_authIdentity_locationManager_handler_(v3, v23, v7, v11, v14, v13, v18, v22);
  v28 = objc_msgSend_manager(*(a1 + 32), v25, v26, v27);
  objc_msgSend_addIdentifiableClient_(v28, v29, v24, v30);
  objc_msgSend_setIdentityToken_(*(a1 + 32), v31, 0, v32);
  objc_msgSend_setStorageToken_(*(a1 + 32), v33, 0, v34);
  if (objc_msgSend_vendingHandler(*(a1 + 32), v35, v36, v37))
  {
    v41 = objc_msgSend_vendingHandler(*(a1 + 32), v38, v39, v40);
    (*(v41 + 16))(v41, v24);
  }

  v42 = *(a1 + 32);

  objc_autoreleasePoolPop(v2);
}

void sub_19B891FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8943F4;
  block[3] = &unk_1E753CC90;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_19B8921E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_delegate(*(a1 + 32), v5, v6, v7);
    v12 = objc_msgSend_locationManagerRoutine(*(a1 + 32), v9, v10, v11);
    v14 = *(a1 + 40);

    objc_msgSend_locationManager_didUpdateLocations_(v8, v13, v12, v14);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v15 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v16[0] = 68289026;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, not respondsToSelector @selector(locationManager:didUpdateLocations:)}", v16, 0x12u);
    }
  }
}

uint64_t sub_19B89248C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_delegate(*(a1 + 32), v5, v6, v7);
    v12 = objc_msgSend_locationManagerRoutine(*(a1 + 32), v9, v10, v11);
    v13 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v8, sel_locationManager_didUpdateLocations_completion_, v12, v13);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v14 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v18[0] = 68289026;
      v18[1] = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, not respondsToSelector @selector(locationManager:didUpdateLocations:completion:)}", v18, 0x12u);
    }

    objc_msgSend_didUpdateLocations_(*(a1 + 32), v15, *(a1 + 40), v16);
    return (*(*(a1 + 48) + 16))();
  }
}

void sub_19B89272C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_inertialDelegate(*(a1 + 32), a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_inertialDelegate(*(a1 + 32), v5, v6, v7);
    v12 = objc_msgSend_locationManagerRoutine(*(a1 + 32), v9, v10, v11);
    v13 = *(a1 + 40);

    MEMORY[0x1EEE66B58](v8, sel_inertialDataManager_didUpdateInertialData_, v12, v13);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v14 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 68289026;
      v15[1] = 0;
      v16 = 2082;
      v17 = "";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendInertial to RT, not respondsToSelector @selector(inertialDataManager:didUpdateInertialData:)}", v15, 0x12u);
    }
  }
}

uint64_t sub_19B892DE4(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v3 = result;
    if (a2)
    {
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v4 = qword_1EAFE46F8;
      if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = a2;
        _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#ADL #location #routine getRemoteObjectProxy failed with error %@", buf, 0xCu);
      }

      v5 = sub_19B87DD40();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46C0 != -1)
        {
          dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
        }

        v7 = 138412290;
        v8 = a2;
        v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F8, 16, "#ADL #location #routine getRemoteObjectProxy failed with error %@", &v7, 12);
        sub_19B885924("Generic", 1, 0, 0, "[_CLLocationManagerRoutineProxy getRemoteObjectProxyWithErrorHandler:]_block_invoke", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }

    return (*(*(v3 + 32) + 16))();
  }

  return result;
}

uint64_t sub_19B893208(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, *(a1 + 40), *(a1 + 32), @"CLLocationManagerRoutine.m", 285, @"delegate must respond to selector locationManager:didUpdateLocations:");
  }

  v8 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), v5, v6, v7);
  objc_msgSend_setUpdating_(v8, v9, 1, v10);
  v14 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), v11, v12, v13);
  v18 = objc_msgSend_connection(v14, v15, v16, v17);
  v22 = objc_msgSend_remoteObjectProxy(v18, v19, v20, v21);

  return objc_msgSend_startUpdatingLocation(v22, v23, v24, v25);
}

uint64_t sub_19B89331C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  objc_msgSend_setUpdating_(v5, v6, 0, v7);
  v11 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), v8, v9, v10);
  v15 = objc_msgSend_connection(v11, v12, v13, v14);
  v19 = objc_msgSend_remoteObjectProxy(v15, v16, v17, v18);

  return objc_msgSend_stopUpdatingLocation(v19, v20, v21, v22);
}

void *sub_19B893578(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B8936E4;
  v13[3] = &unk_1E753CF88;
  v13[4] = *(a1 + 48);
  result = objc_msgSend_getRemoteObjectProxyWithErrorHandler_(v5, v6, v13, v7);
  if (result)
  {
    v9 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v10 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchLocationAtDate, proxy:%{public, location:escape_only}@, date:%{public, location:escape_only}@}", buf, 0x26u);
    }

    return objc_msgSend_fetchLocationAtDate_withHandler_(v9, v11, *(a1 + 40), *(a1 + 48));
  }

  return result;
}

uint64_t sub_19B8936E4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void *sub_19B893918(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B893A8C;
  v14[3] = &unk_1E753CF88;
  v14[4] = *(a1 + 40);
  result = objc_msgSend_getRemoteObjectProxyWithErrorHandler_(v5, v6, v14, v7);
  if (result)
  {
    v9 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v10 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 48);
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2114;
      v20 = v9;
      v21 = 2050;
      v22 = v13;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchLocationAtMachContinuousTime, proxy:%{public, location:escape_only}@, mct:%{public}0.3f}", buf, 0x26u);
    }

    return objc_msgSend_fetchLocationAtMachContinuousTime_withHandler_(v9, v11, *(a1 + 40), v12, *(a1 + 48));
  }

  return result;
}

uint64_t sub_19B893A8C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void *sub_19B893CB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B893E2C;
  v13[3] = &unk_1E753CF88;
  v13[4] = *(a1 + 40);
  result = objc_msgSend_getRemoteObjectProxyWithErrorHandler_(v5, v6, v13, v7);
  if (result)
  {
    v9 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v10 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 48);
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v9;
      v20 = 1026;
      v21 = v12;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchLocationsInLastSeconds, proxy:%{public, location:escape_only}@, numberOfSeconds:%{public}d}", buf, 0x22u);
    }

    return objc_msgSend_fetchLocationsInLastSeconds_withHandler_(v9, v11, *(a1 + 48), *(a1 + 40));
  }

  return result;
}

uint64_t sub_19B893E2C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void *sub_19B894058(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B8941C4;
  v13[3] = &unk_1E753CF88;
  v13[4] = *(a1 + 48);
  result = objc_msgSend_getRemoteObjectProxyWithErrorHandler_(v5, v6, v13, v7);
  if (result)
  {
    v9 = result;
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v10 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #routine fetchRecentLocationsWithOptions, proxy:%{public, location:escape_only}@, fetchOptions:%{public, location:escape_only}@}", buf, 0x26u);
    }

    return objc_msgSend_fetchRecentLocationsWithOptions_withHandler_(v9, v11, *(a1 + 40), *(a1 + 48));
  }

  return result;
}

uint64_t sub_19B8941C4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t sub_19B894268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_setDelegate_(v5, v6, v8, v7);
}

uint64_t sub_19B894350(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_locationManagerRoutineProxy(*(a1 + 32), a2, a3, a4);
  v7 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v5, sel_setInertialDelegate_, v7, v6);
}

os_log_t sub_19B8943C4()
{
  result = os_log_create("com.apple.locationd.Core", "Routine");
  qword_1EAFE46F8 = result;
  return result;
}

CLEmergencyEnablementAssertion *sub_19B8943FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      v10[0] = @"kCLConnectionMessageBundleIdentifierKey";
      v10[1] = @"kCLConnectionMessageBundlePathKey";
      v11[0] = a1;
      v11[1] = a2;
      v11[2] = a3;
      v10[2] = @"kCLConnectionMessagePurposeKey";
      v10[3] = @"kCLConnectionMessageOverrideDeauthorizationKey";
      v11[3] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a4, a4);
      v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v11, v10, 4);
      v8 = [CLEmergencyEnablementAssertion alloc];
      return objc_msgSend_initWithRegistrationMessageName_messageDictionary_(v8, v9, "EmergencyEnablementAssertion/kCLConnectionMessage", v7);
    }
  }

  return result;
}

uint64_t sub_19B8982A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setDistanceFilter_(a2, a2, a3, a4, *MEMORY[0x1E6985C60]);
  objc_msgSend_setDesiredAccuracy_(a2, v5, v6, v7, -1.0);
  objc_msgSend_setHeadingFilter_(a2, v8, v9, v10, 1.0);
  objc_msgSend_setAllowsLocationPrompts_(a2, v11, 1, v12);
  objc_msgSend_setAllowsMapCorrection_(a2, v13, 1, v14);
  v15 = dyld_program_sdk_at_least() ^ 1;

  return MEMORY[0x1EEE66B58](a2, sel_setCourtesyPromptNeeded_, v15, v16);
}

void sub_19B898460(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"kCLErrorDomain", 10, 0);
  (*(v3 + 16))(v3, 0, v4);
  v5 = *(a1 + 32);
}

dispatch_queue_t sub_19B89AD14()
{
  result = dispatch_queue_create("com.apple.corelocation.shared", 0);
  qword_1EAFE50F0 = result;
  return result;
}

void sub_19B89D978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t sub_19B89E544(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (objc_opt_respondsToSelector())
  {
    entr_act_modify();
    v3 = *(a1 + 40);
    v4 = NSStringFromSelector(sel_locationManagerDidResumeLocationUpdates_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10[0] = 68289794;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v8;
      v15 = 2050;
      v16 = v3;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", v10, 0x30u);
    }

    objc_msgSend_locationManagerDidResumeLocationUpdates_(*(a1 + 40), v6, *(a1 + 32), v7);
  }

  else
  {
    entr_act_modify();
  }

  return objc_sync_exit(v2);
}

void sub_19B89EA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_activity_scope_state_s state)
{
  objc_sync_exit(v13);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A0AE8(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = NSStringFromSelector(sel_locationManager_monitoringDidFailForRegion_withError_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_msgSend_identifier(*(a1 + 48), v6, v7, v8);
      objc_msgSend_center(*(a1 + 48), v11, v12, v13);
      v15 = v14;
      objc_msgSend_center(*(a1 + 48), v16, v17, v18);
      v20 = v19;
      objc_msgSend_radius(*(a1 + 48), v21, v22, v23);
      v31[0] = 68290819;
      v31[1] = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2050;
      v35 = v9;
      v36 = 2050;
      v37 = v3;
      v38 = 2114;
      v39 = v4;
      v40 = 2113;
      v41 = v10;
      v42 = 2053;
      v43 = v15;
      v44 = 2053;
      v45 = v20;
      v46 = 2050;
      v47 = v24;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", v31, 0x58u);
    }

    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"kCLErrorDomain", 5, 0);
    objc_msgSend_locationManager_monitoringDidFailForRegion_withError_(v25, v29, v26, v27, v28);
  }

  return objc_sync_exit(v2);
}

void sub_19B8A0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

void sub_19B8A1338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A1B60(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  objc_sync_enter(v2);
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[5];
    v4 = NSStringFromSelector(sel_locationManager_rangingBeaconsDidFailForRegion_withError_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[6];
      v15[0] = 68290051;
      v15[1] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2050;
      v19 = v7;
      v20 = 2050;
      v21 = v3;
      v22 = 2114;
      v23 = v4;
      v24 = 2113;
      v25 = v8;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region:%{private, location:escape_only}@}", v15, 0x3Au);
    }

    v10 = a1[4];
    v9 = a1[5];
    v11 = a1[6];
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"kCLErrorDomain", 17, 0);
    objc_msgSend_locationManager_rangingBeaconsDidFailForRegion_withError_(v9, v13, v10, v11, v12);
  }

  return objc_sync_exit(v2);
}

void sub_19B8A2248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_sync_exit(v9);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A2644(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v3, @"kCLErrorDomain", 17, 0);
    v5 = *(a1 + 40);
    v6 = NSStringFromSelector(sel_locationManager_didFailRangingBeaconsForConstraint_error_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v12[0] = 68290051;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v9;
      v17 = 2050;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2113;
      v22 = v10;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, constraint:%{private, location:escape_only}@}", v12, 0x3Au);
    }

    objc_msgSend_locationManager_didFailRangingBeaconsForConstraint_error_(*(a1 + 40), v8, *(a1 + 32), *(a1 + 48), v4);
  }

  return objc_sync_exit(v2);
}

uint64_t sub_19B8A31E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 || !a3)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables, error:%{private, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
      }
    }

    v7 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationManager, Could not export MicroLocation database tables", "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables, error:%{private, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

uint64_t sub_19B8A360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 || !a3)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables for migration, error:%{private, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
      }
    }

    v7 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationManager, Could not export MicroLocation database tables for migration", "{msg%{public}.0s:LocationManager, Could not export MicroLocation database tables for migration, error:%{private, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

void sub_19B8A3A38(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a2 || !a3)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v80 = 2082;
      v81 = "";
      v82 = 2113;
      v83 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationManager, couldn't export per anchor per cluster measured value statistics, error:%{private, location:escape_only}@}", &buf, 0x1Cu);
    }
  }

  if (*(a1 + 32))
  {
    v63 = a1;
    v7 = MEMORY[0x1E695DF70];
    v8 = objc_msgSend_count(a3, a2, a3, a4);
    v65 = objc_msgSend_arrayWithCapacity_(v7, v9, v8, v10);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v11, &v73, v78, 16);
    if (v66)
    {
      v64 = *v74;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v74 != v64)
          {
            objc_enumerationMutation(a3);
          }

          v68 = *(*(&v73 + 1) + 8 * i);
          v15 = objc_msgSend_objectForKeyedSubscript_(a3, v12, v68, v13);
          v16 = MEMORY[0x1E695DF70];
          v20 = objc_msgSend_count(v15, v17, v18, v19);
          v23 = objc_msgSend_arrayWithCapacity_(v16, v21, v20, v22);
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v24, &v69, v77, 16);
          if (v25)
          {
            v28 = v25;
            v29 = *v70;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v70 != v29)
                {
                  objc_enumerationMutation(v15);
                }

                v31 = *(*(&v69 + 1) + 8 * j);
                v32 = objc_msgSend_objectForKeyedSubscript_(v15, v26, v31, v27);
                v33 = [_CLMicroLocationClusterIdAndClusterData alloc];
                v36 = objc_msgSend_objectAtIndexedSubscript_(v32, v34, 0, v35);
                objc_msgSend_doubleValue(v36, v37, v38, v39);
                v41 = v40;
                v44 = objc_msgSend_objectAtIndexedSubscript_(v32, v42, 1, v43);
                objc_msgSend_doubleValue(v44, v45, v46, v47);
                v51 = objc_msgSend_initWithClusterIdentifier_meanBleRssi_meanUwbRange_(v33, v48, v31, v49, v41, v50);
                objc_msgSend_addObject_(v23, v52, v51, v53);
              }

              v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v26, &v69, v77, 16);
            }

            while (v28);
          }

          v54 = [_CLMicroLocationSourceIdAndSourceData alloc];
          v56 = objc_msgSend_initWithSourceIdsIdentifier_sourceData_(v54, v55, v68, v23);
          objc_msgSend_addObject_(v65, v57, v56, v58);
        }

        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v12, &v73, v78, 16);
      }

      while (v66);
    }

    v59 = [_CLMicroLocationSourcesStatisticsResult alloc];
    v62 = objc_msgSend_initWithSourcesData_(v59, v60, v65, v61);
    (*(*(v63 + 32) + 16))();
  }
}

void sub_19B8A7934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8A978C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_count(a2, a2, a3, a4);
  if (!v4 && !v7)
  {
    v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"kCLErrorDomainPrivate", 6, 0);
  }

  if (v4)
  {
    v11 = *(a1 + 40);

    return objc_msgSend_callPlaceInferenceHandlerWithResult_error_(v11, v8, 0, v4);
  }

  else
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v14, &v27, v31, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(a2);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          v21 = [_CLPlaceInference alloc];
          v23 = objc_msgSend_initWithUserType_placeType_placemark_referenceLocation_confidence_preferredName_loiIdentifier_(v21, v22, 0, 2, v20, *(a1 + 48), 0, 0, 0.4);
          objc_msgSend_addObject_(v13, v24, v23, v25);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v26, &v27, v31, 16);
      }

      while (v17);
    }

    return objc_msgSend_callPlaceInferenceHandlerWithResult_error_(*(a1 + 40), v16, v13, 0);
  }
}

uint64_t sub_19B8AB46C(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void sub_19B8ABFD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a2, a2, a3, a4) == 8)
  {
    v8 = objc_msgSend_objectAtIndex_(a2, v6, 0, v7);
    v14 = objc_msgSend_intValue(v8, v9, v10, v11);
    v15 = 0;
    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x1E696AFB0]);
      v19 = objc_msgSend_objectAtIndex_(a2, v17, 1, v18);
      v15 = objc_msgSend_initWithUUIDString_(v16, v20, v19, v21);
    }

    if ((v14 & 2) != 0)
    {
      v22 = objc_msgSend_objectAtIndex_(a2, v12, 2, v13);
      if ((v14 & 4) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v22 = 0;
      if ((v14 & 4) != 0)
      {
LABEL_6:
        v23 = objc_msgSend_objectAtIndex_(a2, v12, 3, v13);
LABEL_22:
        v34 = objc_msgSend_objectAtIndex_(a2, v12, 4, v13);
        v40 = objc_msgSend_integerValue(v34, v35, v36, v37) - 1;
        if (v40 < 3)
        {
          v41 = v40 + 1;
        }

        else
        {
          v41 = 0;
        }

        v42 = objc_msgSend_objectAtIndex_(a2, v38, 5, v39);
        objc_msgSend_doubleValue(v42, v43, v44, v45);
        v47 = v46;
        v50 = objc_msgSend_objectAtIndex_(a2, v48, 6, v49);
        v54 = objc_msgSend_shortValue(v50, v51, v52, v53);
        v57 = objc_msgSend_objectAtIndex_(a2, v55, 7, v56);
        objc_msgSend_doubleValue(v57, v58, v59, v60);
        v62 = v61;
        v63 = [CLBeacon alloc];
        v67 = objc_msgSend_initWithUUID_major_minor_proximity_accuracy_rssi_timestamp_(v63, v64, v15, v22, v23, v41, v54, v47, v62);
        objc_msgSend_addObject_(*(a1 + 32), v65, v67, v66);

        return;
      }
    }

    v23 = 0;
    goto LABEL_22;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v24 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v71 = objc_msgSend_count(a2, v25, v26, v27);
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "Client beacon is invalid (count,%lu).", buf, 0xCu);
  }

  v28 = sub_19B87DD40();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v32 = qword_1ED519090;
    v68 = 134217984;
    v69 = objc_msgSend_count(a2, v29, v30, v31);
    v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v32, 0, "Client beacon is invalid (count,%lu).", &v68, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventRanging:]_block_invoke", "CoreLocation: %s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }
}

void sub_19B8B19DC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v10 = a2;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "#diagnosticManager failed to get remoteObjectProxy with error %@", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = 138412290;
    v8 = a2;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#diagnosticManager failed to get remoteObjectProxy with error %@", &v7, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

void sub_19B8B1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "#diagnosticManager error copying files: %@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v8 = 138412290;
      v9 = a3;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#diagnosticManager error copying files: %@", &v8, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_19B8B4A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state, id location)
{
  objc_sync_exit(v20);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *sub_19B8B4AD0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 48));
  if (result)
  {
    v3 = result;
    objc_sync_enter(result);

    *(*(a1 + 32) + 248) = objc_msgSend_copy(*(a1 + 40), v4, v5, v6);
    *(*(a1 + 32) + 256) = *(a1 + 56);
    objc_sync_exit(v3);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "Start continuous PlaceInferences", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10[0] = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Start continuous PlaceInferences", v10, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _fetchContinuousPlaceInferencesWithFidelityPolicy:handler:]_block_invoke", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return sub_19B884630(*(*(a1 + 32) + 8), *(a1 + 56));
  }

  return result;
}

os_log_t sub_19B8B51F0()
{
  result = os_log_create("com.apple.locationd.Position", "Microlocation");
  qword_1EAFE4730 = result;
  return result;
}

const char *sub_19B8B5220(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_1E753D1A8[a1];
  }
}

void sub_19B8B5244(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v14 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,client,#warning,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v7 = qword_1ED519090;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v11 = 136315138;
    v12 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v7, 0, "#CLGNSSStateQueryAssertion,client,#warning,unexpected message,%s", &v11, 12);
    sub_19B885924("Generic", 1, 0, 2, "CLGNSSStateQueryAssertionResponseInternal::CLGNSSStateQueryAssertionResponseInternal(dispatch_queue_t, const char *, NSDictionary *, CLGNSSStateQueryAssertionResponseCallback)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }
}

uint64_t sub_19B8B543C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 8) = 0;
  }

  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    v4 = MEMORY[0x19EAE95D0]();
    result = MEMORY[0x19EAE98C0](v4, 0xB0C40BC2CC919);
  }

  *(a1 + 16) = 0;
  return result;
}

void sub_19B8B5854(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  if (a25)
  {
    sub_19B8750F8(a25);
  }

  MEMORY[0x19EAE98C0](v33, v34, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B8B5950(uint64_t *result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,client,~CLGNSSStateQueryAssertionResponseInternal", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }

      v6[0] = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLGNSSStateQueryAssertion,client,~CLGNSSStateQueryAssertionResponseInternal", v6, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLGNSSStateQueryAssertionResponseInternal::~CLGNSSStateQueryAssertionResponseInternal()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    sub_19B8B543C(v2);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

void sub_19B8B5B64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

CLGNSSStateQueryAssertionResponse *sub_19B8B5B70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#CLGNSSStateQueryAssertion,client,reason missing";
    v14 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#CLGNSSStateQueryAssertion,client,bundleID or bundlePath needed";
    v14 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#CLGNSSStateQueryAssertion,client,nil callback queue";
    v14 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback queue}";
    goto LABEL_35;
  }

  if (a5)
  {
    v18[0] = @"kCLConnectionMessageBundleIdentifierKey";
    v18[1] = @"kCLConnectionMessageBundlePathKey";
    v19[0] = a1;
    v19[1] = a2;
    v18[2] = @"kCLConnectionMessagePurposeKey";
    v19[2] = a3;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v19, v18, 3);
    v8 = [CLGNSSStateQueryAssertionResponse alloc];
    return objc_msgSend_initWithRegistrationMessageName_messagePayload_callbackQueue_completionHandler_(v8, v9, "kCLConnectionMessageBBGnssStatusQuery", v7, a4, a5);
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback block}", buf, 0x12u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }
  }

  v12 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#CLGNSSStateQueryAssertion,client,nil callback block";
    v14 = "{msg%{public}.0s:#CLGNSSStateQueryAssertion,client,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, 0x12u);
  }

  return 0;
}

uint64_t sub_19B8B64FC(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_19B8B8900(a1, a2);
  }

  else
  {
    sub_19B8B88A0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t *sub_19B8B653C(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_19B8B925C((a1 + 3), 24);
  return a1;
}

void sub_19B8B67B8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x19EAE9870](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8B67E0(const char *a1)
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
    pw_gid = v2->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  return lchown(a1, pw_uid, pw_gid);
}

uint64_t sub_19B8B6834(_BYTE *a1, uid_t a2, gid_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  v6 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v7 = 0;
  v8 = a1 + 1;
  while (1)
  {
    v11[v7] = v6;
    if (v6 != 47 || !stat(v11, &v10))
    {
      goto LABEL_7;
    }

    if (mkdir(v11, 0x1FFu))
    {
      return 0;
    }

    lchown(v11, a2, a3);
    lchmod(v11, 0x1C0u);
LABEL_7:
    result = 1;
    if (v7 <= 0x3FD)
    {
      v6 = v8[v7++];
      if (v6)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_19B8B6930(const char *a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_41:
    v25 = 0;
    goto LABEL_57;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v13 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v14 = *__error();
      *buf = 136446466;
      v35 = a1;
      v36 = 1026;
      v37 = v14;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v16 = off_1ED519060;
      v17 = *__error();
      v30 = 136446466;
      v31 = a1;
      v32 = 1026;
      v33 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 17, "cannot open source file: %{public}s, errno %{public}d", &v30, 18);
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    goto LABEL_41;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v19 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v20 = *__error();
      *buf = 136446466;
      v35 = a2;
      v36 = 1026;
      v37 = v20;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v22 = off_1ED519060;
      v23 = *__error();
      v30 = 136446466;
      v31 = a2;
      v32 = 1026;
      v33 = v23;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 17, "cannot open target file: %{public}s, errno %{public}d", &v30, 18);
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    fclose(v6);
    goto LABEL_41;
  }

  v8 = v7;
  while (1)
  {
    if (feof(v6))
    {
      v25 = 1;
      goto LABEL_56;
    }

    v9 = fread(v4, 1uLL, 0x400uLL, v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 != fwrite(v4, 1uLL, v9, v8))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v10 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v35 = a2;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
        }

        v30 = 136446210;
        v31 = a2;
        v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "error writing target file: %{public}s", &v30, 12);
LABEL_53:
        v28 = v12;
        sub_19B885924("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v12);
        if (v28 != buf)
        {
          free(v28);
        }

        goto LABEL_55;
      }

      goto LABEL_55;
    }
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
  }

  v26 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v35 = a1;
    _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
  }

  v27 = sub_19B87DD40();
  if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v30 = 136446210;
    v31 = a1;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "error reading source file: %{public}s", &v30, 12);
    goto LABEL_53;
  }

LABEL_55:
  v25 = 0;
LABEL_56:
  fclose(v6);
  fclose(v8);
LABEL_57:
  free(v4);
  return v25;
}

uint64_t sub_19B8B6FE4(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2, a4);
  PathComponent = objc_msgSend_lastPathComponent(v7, v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v6, v12, @"compress:%@", v13, PathComponent);
  v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
  sub_19B8B8B78(v48, v18, 0);
  bzerror = 0;
  v19 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v19)
  {
LABEL_59:
    v26 = 0;
    goto LABEL_60;
  }

  v20 = fopen(a1, "rb");
  if (!v20)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v31 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v32 = *__error();
      *buf = 136446466;
      v55 = a1;
      v56 = 1026;
      v57 = v32;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v34 = off_1ED519060;
      v35 = *__error();
      v50 = 136446466;
      v51 = a1;
      v52 = 1026;
      v53 = v35;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v34, 17, "cannot open source file: %{public}s, errno %{public}d", &v50, 18);
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    goto LABEL_59;
  }

  v21 = fopen(a2, "wb");
  if (!v21)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v37 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v38 = *__error();
      *buf = 136446466;
      v55 = a1;
      v56 = 1026;
      v57 = v38;
      _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v40 = off_1ED519060;
      v41 = *__error();
      v50 = 136446466;
      v51 = a1;
      v52 = 1026;
      v53 = v41;
      v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v40, 17, "cannot open target file: %{public}s, errno %{public}d", &v50, 18);
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    fclose(v20);
    goto LABEL_59;
  }

  v22 = BZ2_bzWriteOpen(&bzerror, v21, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v23 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v55 = a2;
      v56 = 1026;
      v57 = bzerror;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v50 = 136446466;
      v51 = a2;
      v52 = 1026;
      v53 = bzerror;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "cannot open compression stream: %{public}s, bzerror %{public}d", &v50, 18);
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v25);
LABEL_15:
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  else
  {
    while (1)
    {
      if (feof(v20))
      {
        v26 = 1;
        goto LABEL_18;
      }

      v30 = fread(v19, 1uLL, 0x400uLL, v20);
      if (v30 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v22, v19, v30);
      if (bzerror)
      {
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
        }

        v46 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v55 = a2;
          v56 = 1026;
          v57 = bzerror;
          _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        v47 = sub_19B87DD40();
        if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
          }

          v50 = 136446466;
          v51 = a2;
          v52 = 1026;
          v53 = bzerror;
          v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "error writing target file: %{public}s, bzerror: %{public}d", &v50, 18);
          sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v25);
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
    }

    v44 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v55 = a1;
      _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    v45 = sub_19B87DD40();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v50 = 136446210;
      v51 = a1;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "error reading source file: %{public}s", &v50, 12);
      sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v25);
      goto LABEL_15;
    }
  }

LABEL_17:
  v26 = 0;
LABEL_18:
  fclose(v20);
  if (v22)
  {
    BZ2_bzWriteClose(&bzerror, v22, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
      }

      v27 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v55 = a2;
        v56 = 1026;
        v57 = bzerror;
        _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      v28 = sub_19B87DD40();
      if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6B780);
        }

        v50 = 136446466;
        v51 = a2;
        v52 = 1026;
        v53 = bzerror;
        v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "error closing target file: %{public}s, bzerror: %{public}d", &v50, 18);
        sub_19B885924("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }
  }

  fclose(v21);
LABEL_60:
  free(v19);
  sub_19B8B8DC0(v48);
  return v26;
}

void sub_19B8B7A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B8B8DC0(va);
  _Unwind_Resume(a1);
}

long double sub_19B8B7A88(double *a1, long double *a2, double a3, double a4, double a5, double a6)
{
  v8 = a4 * 0.0174532925;
  v9 = a5 * 0.0174532925;
  v10 = a6 / 6378137.0;
  v11 = __sincos_stret(a3 * 0.0174532925);
  v12 = __sincos_stret(v10);
  v13 = __sincos_stret(v9);
  v14 = asin(v13.__cosval * (v11.__cosval * v12.__sinval) + v11.__sinval * v12.__cosval);
  v15 = sin(v14);
  v16 = atan2(v11.__cosval * (v13.__sinval * v12.__sinval), v12.__cosval - v11.__sinval * v15);
  *a1 = v14 / 0.0174532925;
  result = (v8 + v16) / 0.0174532925;
  *a2 = result;
  return result;
}

void sub_19B8B7B58(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v13 = a6 * 0.0174532925;
      v14 = a7 / 6378137.0;
      v15 = __sincos_stret(a5 * 0.0174532925);
      v16 = __sincos_stret(v14);
      v17 = vabdd_f64(asin(v15.__cosval * v16.__sinval + v15.__sinval * v16.__cosval) / 0.0174532925, a5);
      v18 = asin(v15.__cosval * v16.__sinval * 6.123234e-17 + v15.__sinval * v16.__cosval);
      v19 = sin(v18);
      v20 = vabdd_f64((v13 + atan2(v15.__cosval * v16.__sinval, v16.__cosval - v15.__sinval * v19)) / 0.0174532925, a6);
      *a1 = a5 - v17;
      *a3 = v17 + a5;
      *a2 = a6 - v20;
      *a4 = v20 + a6;
    }
  }
}

uint64_t sub_19B8B7C60(const __CFString *a1, const __CFString *a2, Boolean *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &v35;
  }

  *v5 = 0;
  v6 = CFCopyUserName();
  if (CFEqual(v6, @"mobile"))
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, a2, v5);
    if (!*v5)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_msgSend_UTF8String(@"mobile", v7, v8, v9);
      sub_19B8759E8(v33, v12);
      sub_19B953254(v33, __p);
      if (v37 >= 0)
      {
        v15 = objc_msgSend_stringWithUTF8String_(v11, v13, __p, v14);
      }

      else
      {
        v15 = objc_msgSend_stringWithUTF8String_(v11, v13, __p[0], v14);
      }

      v18 = v15;
      v19 = objc_msgSend_componentsJoinedByString_(&unk_1F0E8CCA0, v16, @"/", v17);
      v22 = objc_msgSend_stringByAppendingPathComponent_(v18, v20, v19, v21);
      v25 = objc_msgSend_stringByAppendingString_(v22, v23, @"/", v24);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      __p[0] = v25;
      __p[1] = a2;
      v26 = *MEMORY[0x1E695E480];
      v27 = CFArrayCreate(*MEMORY[0x1E695E480], __p, 2, MEMORY[0x1E695E9C0]);
      if (v27)
      {
        v28 = CFStringCreateByCombiningStrings(v26, v27, &stru_1F0E6F140);
        if (v28)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, v28, v5);
          CFRelease(v28);
        }

        CFRelease(v27);
      }
    }
  }

  else
  {
    v29 = CFPreferencesCopyValue(a1, a2, @"mobile", *MEMORY[0x1E695E898]);
    if (v29)
    {
      v30 = v29;
      v31 = CFGetTypeID(v29);
      if (v31 == CFBooleanGetTypeID())
      {
        *v5 = 1;
        AppBooleanValue = CFEqual(v30, *MEMORY[0x1E695E4D0]);
      }

      else if (v31 == CFNumberGetTypeID() && !CFNumberIsFloatType(v30))
      {
        *v5 = 1;
        LODWORD(__p[0]) = 0;
        CFNumberGetValue(v30, kCFNumberIntType, __p);
        AppBooleanValue = LODWORD(__p[0]) != 0;
      }

      else
      {
        AppBooleanValue = 0;
      }

      CFRelease(v30);
    }

    else
    {
      return 0;
    }
  }

  return AppBooleanValue;
}

void sub_19B8B7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8B7F14(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_lengthOfBytesUsingEncoding_(a1, a2, 4, a4) < 0x41)
  {
    if (objc_msgSend_hasPrefix_(a1, v5, @"_", v6))
    {
      NSLog(&cfstr_MonitorNameCan.isa);
    }

    else
    {
      v9 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AD48], v7, @"_", v8);
      v13 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v10, v11, v12);
      objc_msgSend_formUnionWithCharacterSet_(v9, v14, v13, v15);
      v19 = objc_msgSend_invertedSet(v9, v16, v17, v18);
      if (objc_msgSend_rangeOfCharacterFromSet_(a1, v20, v19, v21) == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 1;
      }

      NSLog(&cfstr_MonitorNameCon.isa);
    }
  }

  else
  {
    NSLog(&cfstr_ConstraintMoni.isa, 64);
  }

  return 0;
}

void sub_19B8B7FE8(FILE *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = _dyld_image_count();
  v3 = v2;
  v4 = malloc_type_calloc(v2, 0x38uLL, 0x105004076241286uLL);
  v5 = v4;
  v31 = v4;
  if (v2 && v4)
  {
    v6 = 0;
    do
    {
      image_name = _dyld_get_image_name(v6);
      v8 = &image_name[strlen(image_name) + 1];
      do
      {
        v9 = *(v8 - 2);
        --v8;
      }

      while (v9 != 47);
      image_header = _dyld_get_image_header(v6);
      v11 = image_header;
      v12 = *&image_header->cputype;
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        v14 = 0;
        p_cputype = &image_header[1].cputype;
        do
        {
          if (*p_cputype == 1)
          {
            if (!strncmp(p_cputype + 8, "__TEXT", 6uLL))
            {
              v14 = (v14 + p_cputype[7]);
            }
          }

          else if (*p_cputype == 27)
          {
            v32[0] = *(p_cputype + 2);
          }

          p_cputype = (p_cputype + p_cputype[1]);
          --ncmds;
        }

        while (ncmds);
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      v5 = v31;
      v17 = v31;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        v18 = v19;
        if (v19 >= v11 || v18 == 0)
        {
          break;
        }

        if (v3 == ++v16)
        {
          v16 = v3;
          v21 = v3;
          goto LABEL_24;
        }
      }

      v21 = v16;
LABEL_24:
      v22 = &v31[56 * v16];
      memmove(v22 + 7, v22, 56 * (v3 + ~v21));
      *v22 = v11;
      v22[1] = v14;
      *(v22 + 1) = v32[0];
      v22[4] = image_name;
      v22[5] = v8;
      v22[6] = v12;
      ++v6;
    }

    while (v6 != v3);
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
  }

  else
  {
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v23 = 0;
  do
  {
    v24 = &v5[56 * v23];
    v25 = *(v24 + 1);
    v32[0] = *v24;
    v32[1] = v25;
    v33 = *(v24 + 2);
    v34 = *(v24 + 6);
    v26 = "other";
    if (v34 != 16777228)
    {
      v27 = "unknown";
      if (HIDWORD(v34) == 9)
      {
        v27 = "armv7";
      }

      v26 = "armv6";
      if (HIDWORD(v34) != 6)
      {
        v26 = v27;
      }
    }

    v30 = v26;
    if (v23)
    {
      v28 = 32;
    }

    else
    {
      v28 = 43;
    }

    fprintf(a1, "%16p - %lld %c%s %s <", *&v32[0], ((v32[0] + __PAIR128__(-1, 0)) >> 64), v28, *(&v33 + 1), v30);
    for (i = 16; i != 32; ++i)
    {
      fprintf(a1, "%02X", *(v32 + i));
    }

    fprintf(a1, "> %s\n", v33);
    ++v23;
    v5 = v31;
  }

  while (v23 != v3);
LABEL_39:

  free(v5);
}

CFTypeRef sub_19B8B8308(CFStringRef filePath, const __CFString *a2)
{
  if (!filePath)
  {
    return 0;
  }

  v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 1u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v6 = Unique;
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(Unique, a2);
    v8 = ValueForInfoDictionaryKey;
    if (ValueForInfoDictionaryKey)
    {
      CFRetain(ValueForInfoDictionaryKey);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

BOOL sub_19B8B83AC(__CFString *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (sub_19B8B8414(a1, a2, a3, a4))
  {
    return 1;
  }

  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F7DBC(qword_1EAFE5B48, a1);
}

BOOL sub_19B8B8414(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v16 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED519148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519148))
  {
    sub_19B8759E8(&v13, "/System/Library/LocationBundles/LocationPromptUI.bundle");
    sub_19B8759E8(v14, "/System/Library/LocationBundles/LocationFenceSync.bundle");
    sub_19B8759E8(v15, "/System/Library/LocationBundles/PLAMonitor.bundle");
    qword_1ED519150 = 0;
    qword_1ED519158 = 0;
    qword_1ED519160 = 0;
    sub_19B8B8FD4(&v13, &v16);
  }

  v5 = qword_1ED519150;
  v6 = qword_1ED519158;
  v7 = objc_msgSend_UTF8String(a1, a2, a3, a4);
  if (v5 != v6)
  {
    v8 = v7;
    v9 = strlen(v7);
    while (1)
    {
      v10 = *(v5 + 23);
      if (v10 < 0)
      {
        if (v9 == *(v5 + 8))
        {
          if (v9 == -1)
          {
            sub_19B890B7C();
          }

          v11 = *v5;
LABEL_10:
          if (!memcmp(v11, v8, v9))
          {
            return v5 != qword_1ED519158;
          }
        }
      }

      else
      {
        v11 = v5;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }

      v5 += 24;
      if (v5 == v6)
      {
        v5 = v6;
        return v5 != qword_1ED519158;
      }
    }
  }

  return v5 != qword_1ED519158;
}

void sub_19B8B85DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v21 = &a20;
  v22 = -72;
  v23 = &a20;
  while (1)
  {
    v24 = *v23;
    v23 -= 24;
    if (v24 < 0)
    {
      operator delete(*(v21 - 23));
    }

    v21 = v23;
    v22 += 24;
    if (!v22)
    {
      __cxa_guard_abort(&qword_1ED519148);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_19B8B866C(const __CFString *a1)
{
  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F7F78(qword_1EAFE5B48, a1);
}

void **sub_19B8B86C4(void **a1)
{
  v3 = a1;
  sub_19B890F50(&v3);
  return a1;
}

BOOL sub_19B8B86FC(const __CFString *a1)
{
  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F8060(qword_1EAFE5B48, a1);
}

BOOL sub_19B8B8754(const __CFString *a1)
{
  if (qword_1EAFE5B50 != -1)
  {
    dispatch_once(&qword_1EAFE5B50, &unk_1F0E6EA90);
  }

  return sub_19B9F8148(qword_1EAFE5B48, a1);
}

uint64_t sub_19B8B87AC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForInfoDictionaryKey_(a1, a2, @"NSWidgetWantsLocation", a4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return objc_msgSend_BOOLValue(v4, v5, v6, v7);
}

__CFBundle *sub_19B8B8818()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    v1 = result;
    if (CFBundleGetValueForInfoDictionaryKey(result, @"NSLocationWhenInUseUsageDescription"))
    {
      return 1;
    }

    else
    {
      return (CFBundleGetValueForInfoDictionaryKey(v1, @"NSLocationAlwaysAndWhenInUseUsageDescription") != 0);
    }
  }

  return result;
}

os_log_t sub_19B8B8870()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

void *sub_19B8B88A0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_19B874C9C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_19B8B8900(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19B8B8A40();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_19B8B8A58(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19B874C9C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_19B8B8AE4(&v17);
  return v11;
}

void sub_19B8B8A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8B8AE4(va);
  _Unwind_Resume(a1);
}

void sub_19B8B8A58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8B8AB0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_19B8B8AE4(uint64_t a1)
{
  sub_19B8B8B1C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8B8B1C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_19B8B8B78(uint64_t *a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, a2, v7);
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
    }

    v8 = qword_1EAFE47C0;
    if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[1];
      *buf = 134349314;
      v19 = a1;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47B8 != -1)
      {
        dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
      }

      v11 = a1[1];
      v14 = 134349314;
      v15 = a1;
      v16 = 2114;
      v17 = v11;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47C0, 0, "os_transaction created: (%{public}p) %{public}@", &v14, 22);
      sub_19B885924("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a1;
}

os_log_t sub_19B8B8D90()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EAFE47C0 = result;
  return result;
}

id *sub_19B8B8DC0(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[1])
  {
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
    }

    v2 = qword_1EAFE47C0;
    if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v13 = a1;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47B8 != -1)
      {
        dispatch_once(&qword_1EAFE47B8, &unk_1F0E6B7A0);
      }

      v5 = a1[1];
      v8 = 134349314;
      v9 = a1;
      v10 = 2114;
      v11 = v5;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47C0, 0, "os_transaction releasing: (%{public}p) %{public}@", &v8, 22);
      sub_19B885924("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    a1[1] = 0;
  }

  *a1 = 0;
  return a1;
}

void sub_19B8B8FC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

uint64_t sub_19B8B90F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

void sub_19B8B9154(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_19B8B925C(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAE9820](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_19B8B9154(a1);
  return a1;
}

void sub_19B8B92F0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

BOOL sub_19B8B9318(void *a1)
{
  v2 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = (-858993459 * ((a1[2] - v3) >> 3) - 1);
  for (i = (v3 + 72); ; i += 5)
  {
    v6 = v2;
    if ((v4 & ~(v4 >> 63)) == v2)
    {
      break;
    }

    v8 = *(i - 6);
    v7 = *(i - 5);
    v10 = *(i - 3);
    v9 = *(i - 2);
    if (vabdd_f64(v8, v10) >= 0.0000001 || vabdd_f64(v7, v9) >= 0.0000001)
    {
      v11 = vabdd_f64(v8, *(i - 1)) < 0.0000001;
      if (vabdd_f64(v7, *i) >= 0.0000001)
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    v13 = *(i - 8);
    v12 = *(i - 7);
    if (vabdd_f64(v13, v10) >= 0.0000001 || vabdd_f64(v12, v9) >= 0.0000001)
    {
      v14 = vabdd_f64(v13, *(i - 1)) < 0.0000001;
      if (vabdd_f64(v12, *i) >= 0.0000001)
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    v15 = v11 || v14;
    v2 = v6 + 1;
    if (!v15)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v17 = a1[4];
        *buf = 134217984;
        v25 = v17;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,%.3lf,RouteHints received without proper connections", buf, 0xCu);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
        }

        v19 = a1[4];
        v22 = 134217984;
        v23 = v19;
        v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%.3lf,RouteHints received without proper connections", &v22, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapsRouteHintData::isConnectivityGood() const", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      return v6 >= v4;
    }
  }

  return v6 >= v4;
}

BOOL sub_19B8B95C8(void *a1)
{
  v2 = 0;
  v43 = *MEMORY[0x1E69E9840];
  __p = 0;
  v29 = 0;
  v30 = 0;
  v3 = (a1 + 1);
  v4 = -1;
  while (1)
  {
    v6 = a1[1];
    v5 = a1[2];
    if (++v4 >= (-1 - 858993459 * ((v5 - v6) >> 3)))
    {
      v18 = v6 != v5;
      v19 = __p;
      if (!__p)
      {
        return v18;
      }

      goto LABEL_17;
    }

    v7 = v6 + v2;
    if (__p == v29)
    {
      sub_19B8B99A8(&__p, (v6 + v2));
    }

    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    v11 = *(v7 + 48);
    v10 = *(v7 + 56);
    if (vabdd_f64(v9, v11) >= 0.0000001 || vabdd_f64(v8, v10) >= 0.0000001)
    {
      v12 = vabdd_f64(v9, *(v6 + v2 + 64)) < 0.0000001;
      if (vabdd_f64(v8, *(v6 + v2 + 72)) >= 0.0000001)
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    v13 = v6 + v2;
    v15 = *(v6 + v2 + 8);
    v14 = *(v6 + v2 + 16);
    if (vabdd_f64(v15, v11) >= 0.0000001 || vabdd_f64(v14, v10) >= 0.0000001)
    {
      v16 = *(v13 + 72);
      v17 = vabdd_f64(v15, *(v13 + 64)) < 0.0000001;
      if (vabdd_f64(v14, v16) >= 0.0000001)
      {
        v17 = 0;
      }

      if (!v12 && !v17)
      {
        break;
      }
    }

    v2 += 40;
    sub_19B8B99A8(&__p, (v7 + 40));
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
  }

  v21 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v22 = a1[4];
    v23 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2] - a1[1]) >> 3);
    *buf = 134218496;
    v38 = v22;
    v39 = 2048;
    v40 = v23;
    v41 = 2048;
    v42 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - __p) >> 3);
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLMM,%.3lf,RouteHints received without proper connections,changing segments from %lu,to,%lu", buf, 0x20u);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B7C0);
    }

    v25 = a1[4];
    v26 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2] - a1[1]) >> 3);
    v31 = 134218496;
    v32 = v25;
    v33 = 2048;
    v34 = v26;
    v35 = 2048;
    v36 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - __p) >> 3);
    v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%.3lf,RouteHints received without proper connections,changing segments from %lu,to,%lu", &v31, 32);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapsRouteHintData::getConnectedRouteSegments() const", "CoreLocation: %s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  if (v3 != &__p)
  {
    sub_19B8B9C88(v3, __p, v29, 0xCCCCCCCCCCCCCCCDLL * ((v29 - __p) >> 3));
  }

  v19 = __p;
  v18 = v29 != __p;
  if (__p)
  {
LABEL_17:
    v29 = v19;
    operator delete(v19);
  }

  return v18;
}

void sub_19B8B9980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8B99A8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_19B8B8A40();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_19B8B9C30(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

os_log_t sub_19B8B9AB0()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B8B9AE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_19B8B9C30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void **sub_19B8B9C88(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      sub_19B8B9DEC(v7, v12);
    }

    sub_19B8B8A40();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void sub_19B8B9DEC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_19B8B9C30(a1, a2);
  }

  sub_19B8B8A40();
}

void *sub_19B8B9E38(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EAE9750](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_19B8B9FE0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19EAE9760](v13);
  return a1;
}

void sub_19B8B9F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x19EAE9760](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x19B8B9F58);
}

uint64_t sub_19B8B9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_19B890AD4();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_19B8BA1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8BA1C8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_19B8BAF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_19B8BAF90(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v5 = result;
    objc_msgSend_notifyHelperInvalidation(result, v2, v3, v4);
    result = objc_msgSend_fConnection(v5, v6, v7, v8);
    if (result)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v9 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v26 = "[CLEEDHelper initWithDelegate:queue:]_block_invoke";
        v27 = 2114;
        v28 = objc_msgSend_fConnection(v5, v10, v11, v12);
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Connection[%{public}@] to EEDHelperService invalidated", buf, 0x16u);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v19 = qword_1EAFE4718;
        v21 = 136446466;
        v22 = "[CLEEDHelper initWithDelegate:queue:]_block_invoke";
        v23 = 2114;
        v24 = objc_msgSend_fConnection(v5, v16, v17, v18);
        v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 0, "#EED2FWK,%{public}s, Connection[%{public}@] to EEDHelperService invalidated", &v21, 22);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]_block_invoke", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      return objc_msgSend_setFConnection_(v5, v14, 0, v15);
    }
  }

  return result;
}

uint64_t sub_19B8BB1B4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v2 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v12 = "[CLEEDHelper initWithDelegate:queue:]_block_invoke_2";
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, Connection to EEDHelperService interrupted", buf, 0xCu);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = 136446210;
    v10 = "[CLEEDHelper initWithDelegate:queue:]_block_invoke";
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, Connection to EEDHelperService interrupted", &v9, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDHelper initWithDelegate:queue:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return objc_msgSend_handleInterruption(Weak, v4, v5, v6);
}

uint64_t sub_19B8BB38C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_fConnection(v5, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v6, v7, v8, v9);

  return objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v5, v10, a2, v11);
}

uint64_t sub_19B8BB9F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_fConnection(v5, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v6, v7, v8, v9);

  return objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v5, v10, a2, v11);
}

uint64_t sub_19B8BC640(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BC6B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v19 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]_block_invoke_2";
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, Array:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446722;
    v13 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]_block_invoke";
    v14 = 2114;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, Array:%{public}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BCBF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BCC64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446723;
    v19 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]_block_invoke_2";
    v20 = 2113;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, request:%{private}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446723;
    v13 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]_block_invoke";
    v14 = 2113;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, request:%{private}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BD1B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BD220(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v19 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]_block_invoke_2";
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, request:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446722;
    v13 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]_block_invoke";
    v14 = 2114;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, request:%{public}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BD764(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BD7D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v19 = "[CLEEDHelper fetchMitigationsWithCompletion:]_block_invoke_2";
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, mitigation:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446722;
    v13 = "[CLEEDHelper fetchMitigationsWithCompletion:]_block_invoke";
    v14 = 2114;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, mitigation:%{public}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchMitigationsWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BDD44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BDDB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v6);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v16 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]_block_invoke_2";
    v17 = 2114;
    v18 = a2;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, error:%{public}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = 136446466;
    v12 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]_block_invoke";
    v13 = 2114;
    v14 = a2;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, error:%{public}@", &v11, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper mediaUploadList:forRequestID:completion:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BE2F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BE35C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v6);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v16 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]_block_invoke_2";
    v17 = 2114;
    v18 = a2;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, error:%{public}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = 136446466;
    v12 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]_block_invoke";
    v13 = 2114;
    v14 = a2;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, error:%{public}@", &v11, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper streamingSessionEndedForRequestID:completion:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BE8C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BE938(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v19 = "[CLEEDHelper handleResponse:forRequest:completion:]_block_invoke_2";
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, updatedRequest:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446722;
    v13 = "[CLEEDHelper handleResponse:forRequest:completion:]_block_invoke";
    v14 = 2114;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, updatedRequest:%{public}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper handleResponse:forRequest:completion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BF8B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BF920(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v19 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]_block_invoke_2";
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, cloakingKey:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446722;
    v13 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]_block_invoke";
    v14 = 2114;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, cloakingKey:%{public}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCloakingKeyWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8BFE64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8BFED4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v8 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v19 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]_block_invoke_2";
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, contactNames:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v12 = 136446722;
    v13 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]_block_invoke";
    v14 = 2114;
    v15 = a2;
    v16 = 2114;
    v17 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, contactNames:%{public}@, error:%{public}@", &v12, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8C03C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8C0430(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v6);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v16 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]_block_invoke_2";
    v17 = 2114;
    v18 = a2;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, status:%{public}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = 136446466;
    v12 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]_block_invoke";
    v13 = 2114;
    v14 = a2;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, status:%{public}@", &v11, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B8C0960(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_fConnection(v6, a2, a3, a4);
  v11 = objc_msgSend_processIdentifier(v7, v8, v9, v10);
  objc_msgSend_handleRemoteProxyError_forProcessIdentifier_(v6, v12, a2, v11);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t sub_19B8C09D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_fClientQueue(*(a1 + 32), a2, a3, a4);
  dispatch_assert_queue_V2(v8);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v22 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]_block_invoke_2";
    v23 = 2114;
    v24 = a2;
    v25 = 2114;
    v26 = a3;
    v27 = 2114;
    v28 = a4;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s, CompletionBlock, cachedStatus:%{public}@, nextUpdateDate:%{public}@, error:%{public}@", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = 136446978;
    v14 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]_block_invoke";
    v15 = 2114;
    v16 = a2;
    v17 = 2114;
    v18 = a3;
    v19 = 2114;
    v20 = a4;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s, CompletionBlock, cachedStatus:%{public}@, nextUpdateDate:%{public}@, error:%{public}@", &v13, 42);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

os_log_t sub_19B8D5024()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

void sub_19B8D5510(double *a1, uint64_t *a2, double a3)
{
  v469 = *MEMORY[0x1E69E9840];
  v6 = sub_19B8E3CB0();
  v7 = v6;
  v8 = a2;
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
  }

  v9 = (a1 + 16);
  if (*(a1 + 151) < 0)
  {
    v9 = *(a1 + 16);
  }

  v197 = (a1 + 16);
  v196 = a2;
  if (*v6 != 1)
  {
    goto LABEL_147;
  }

  v10 = a1[12];
  sub_19B8759E8(&v198, "CLMM,%{public}s,trip,%{public}lld,T,%{public}.1lf,machT,%{public}.2lf,contT,%{public}.2lf,gpsTMs,%{public}d,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crse,%{public}.1lf,crseUnc,%{public}.1lf,spdKph,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwLL,%{sensitive}.7lf,%{sensitive}.7lf,score,%{public}.1lf,ratio,%{public}.1lf,varFac,%{public}.7g,deltaAz,%{public}.3lf,alngTrk,%{public}.3lf,acrsTrk,%{public}.3lf,usable,%{public}d,ambiguous,%{public}d,proj,%{public}.3lf,type,%{public}d,rseg,%{private}lld,frc,%{public}d,fow,%{public}d,road,%{private}s,activity,%{public}d,actConf,%{public}d,static,%{public}d,staticSetAt,%{public}.1lf,mount,%{public}d,fitness,%{public}d,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,favGPS,%{public}d,gnssCont,%{public}d,locationType,%{public}d,lifespan,%{public}.1lf,rawCourse,%{public}.1lf,sigEnv,%{public}d,sigEnvFid,%{public}d,latency,%{public}.1lf,rw,%{public}.2lf");
  v191 = v9;
  v194 = v8;
  sub_19B8759E8(buf, "{public}");
  sub_19B8759E8(__p, "");
  v11 = 0;
  v12 = v10 * 3.6;
  size = HIBYTE(v198.__r_.__value_.__r.__words[2]);
  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v198;
  }

  else
  {
    v14 = v198.__r_.__value_.__r.__words[0];
  }

  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v198.__r_.__value_.__l.__size_;
  }

  v15 = HIBYTE(v335);
  if (v335 >= 0)
  {
    v16 = HIBYTE(v335);
  }

  else
  {
    v16 = *&buf[8];
  }

  if (v335 >= 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  while (!v16)
  {
LABEL_27:
    if (v11 != -1)
    {
      if (v200 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = *__p;
      }

      if (v200 >= 0)
      {
        v25 = HIBYTE(v200);
      }

      else
      {
        v25 = *&__p[8];
      }

      std::string::replace(&v198, v11, v16, v24, v25);
      v26 = HIBYTE(v200);
      if (v200 < 0)
      {
        v26 = *&__p[8];
      }

      v11 += v26;
      size = HIBYTE(v198.__r_.__value_.__r.__words[2]);
      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v198;
      }

      else
      {
        v14 = v198.__r_.__value_.__r.__words[0];
      }

      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v198.__r_.__value_.__l.__size_;
      }

      v15 = HIBYTE(v335);
      v17 = v335 >= 0 ? buf : *buf;
      v16 = v335 >= 0 ? HIBYTE(v335) : *&buf[8];
      if (size >= v11)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  v18 = size - v11;
  if ((size - v11) >= v16)
  {
    v19 = v14 + size;
    v20 = v14 + v11;
    v21 = *v17;
    do
    {
      if (v18 - v16 == -1)
      {
        break;
      }

      v22 = memchr(v20, v21, v18 - v16 + 1);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (!memcmp(v22, v17, v16))
      {
        if (v23 == v19)
        {
          break;
        }

        v11 = v23 - v14;
        goto LABEL_27;
      }

      v20 = v23 + 1;
      v18 = v19 - (v23 + 1);
    }

    while (v18 >= v16);
  }

LABEL_48:
  if (SHIBYTE(v200) < 0)
  {
    operator delete(*__p);
    if ((v335 & 0x8000u) == 0)
    {
      goto LABEL_50;
    }

LABEL_169:
    operator delete(*buf);
    goto LABEL_50;
  }

  if (v15 < 0)
  {
    goto LABEL_169;
  }

LABEL_50:
  sub_19B8759E8(buf, "{private}");
  sub_19B8759E8(__p, "");
  v27 = 0;
  v28 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v198;
  }

  else
  {
    v29 = v198.__r_.__value_.__r.__words[0];
  }

  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v198.__r_.__value_.__l.__size_;
  }

  v30 = HIBYTE(v335);
  if (v335 >= 0)
  {
    v31 = HIBYTE(v335);
  }

  else
  {
    v31 = *&buf[8];
  }

  if (v335 >= 0)
  {
    v32 = buf;
  }

  else
  {
    v32 = *buf;
  }

  while (!v31)
  {
LABEL_71:
    if (v27 != -1)
    {
      if (v200 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = *__p;
      }

      if (v200 >= 0)
      {
        v40 = HIBYTE(v200);
      }

      else
      {
        v40 = *&__p[8];
      }

      std::string::replace(&v198, v27, v31, v39, v40);
      v41 = HIBYTE(v200);
      if (v200 < 0)
      {
        v41 = *&__p[8];
      }

      v27 += v41;
      v28 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v198;
      }

      else
      {
        v29 = v198.__r_.__value_.__r.__words[0];
      }

      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v198.__r_.__value_.__l.__size_;
      }

      v30 = HIBYTE(v335);
      v32 = v335 >= 0 ? buf : *buf;
      v31 = v335 >= 0 ? HIBYTE(v335) : *&buf[8];
      if (v28 >= v27)
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  v33 = v28 - v27;
  if ((v28 - v27) >= v31)
  {
    v34 = v29 + v28;
    v35 = v29 + v27;
    v36 = *v32;
    do
    {
      if (v33 - v31 == -1)
      {
        break;
      }

      v37 = memchr(v35, v36, v33 - v31 + 1);
      if (!v37)
      {
        break;
      }

      v38 = v37;
      if (!memcmp(v37, v32, v31))
      {
        if (v38 == v34)
        {
          break;
        }

        v27 = v38 - v29;
        goto LABEL_71;
      }

      v35 = v38 + 1;
      v33 = v34 - (v38 + 1);
    }

    while (v33 >= v31);
  }

LABEL_92:
  if (SHIBYTE(v200) < 0)
  {
    operator delete(*__p);
    if ((v335 & 0x8000u) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((v30 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  operator delete(*buf);
LABEL_94:
  sub_19B8759E8(buf, "{sensitive}");
  sub_19B8759E8(__p, "");
  v42 = 0;
  v43 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v198;
  }

  else
  {
    v44 = v198.__r_.__value_.__r.__words[0];
  }

  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = v198.__r_.__value_.__l.__size_;
  }

  v45 = HIBYTE(v335);
  if (v335 >= 0)
  {
    v46 = HIBYTE(v335);
  }

  else
  {
    v46 = *&buf[8];
  }

  if (v335 >= 0)
  {
    v47 = buf;
  }

  else
  {
    v47 = *buf;
  }

  while (!v46)
  {
LABEL_115:
    if (v42 != -1)
    {
      if (v200 >= 0)
      {
        v54 = __p;
      }

      else
      {
        v54 = *__p;
      }

      if (v200 >= 0)
      {
        v55 = HIBYTE(v200);
      }

      else
      {
        v55 = *&__p[8];
      }

      std::string::replace(&v198, v42, v46, v54, v55);
      v56 = HIBYTE(v200);
      if (v200 < 0)
      {
        v56 = *&__p[8];
      }

      v42 += v56;
      v43 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v198;
      }

      else
      {
        v44 = v198.__r_.__value_.__r.__words[0];
      }

      if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = v198.__r_.__value_.__l.__size_;
      }

      v45 = HIBYTE(v335);
      v47 = v335 >= 0 ? buf : *buf;
      v46 = v335 >= 0 ? HIBYTE(v335) : *&buf[8];
      if (v43 >= v42)
      {
        continue;
      }
    }

    goto LABEL_136;
  }

  v48 = v43 - v42;
  if ((v43 - v42) >= v46)
  {
    v49 = v44 + v43;
    v50 = v44 + v42;
    v51 = *v47;
    do
    {
      if (v48 - v46 == -1)
      {
        break;
      }

      v52 = memchr(v50, v51, v48 - v46 + 1);
      if (!v52)
      {
        break;
      }

      v53 = v52;
      if (!memcmp(v52, v47, v46))
      {
        if (v53 == v49)
        {
          break;
        }

        v42 = v53 - v44;
        goto LABEL_115;
      }

      v50 = v53 + 1;
      v48 = v49 - (v53 + 1);
    }

    while (v48 >= v46);
  }

LABEL_136:
  if (SHIBYTE(v200) < 0)
  {
    operator delete(*__p);
    v45 = HIBYTE(v335);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
  }

  bzero((v7 + 56), 0x800uLL);
  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v198;
  }

  else
  {
    v57 = v198.__r_.__value_.__r.__words[0];
  }

  snprintf((v7 + 56), 0x800uLL, v57, v194, *a1, *(a1 + 1), *(a1 + 2), *(a1 + 3), 0, 0, *(a1 + 7), *(a1 + 8), *(a1 + 10), *(a1 + 9), *(a1 + 11), *(a1 + 13), *(a1 + 24), *&v12, *(a1 + 23), *(a1 + 25), *(a1 + 26), *(a1 + 27), *(a1 + 19), *(a1 + 20), *(a1 + 21), *(a1 + 36), *(a1 + 37), *(a1 + 38), *(a1 + 41), *(a1 + 42), *(a1 + 39), *(a1 + 40), *(a1 + 46), *(a1 + 47), *(a1 + 48), *(a1 + 49), *(a1 + 4), *(a1 + 5), *(a1 + 44), *(a1 + 45), *(a1 + 29), *(a1 + 30), *(a1 + 31), *(a1 + 32), *(a1 + 264), *(a1 + 265), *(a1 + 34), *(a1 + 70), *(a1 + 14), *(a1 + 30), *(a1 + 31), v191, *(a1 + 56), *(a1 + 86), *(a1 + 228), *(a1 + 44), *(a1 + 229), *(a1 + 350), *(a1 + 351), *(a1 + 360), *(a1 + 349), *(a1 + 361), *(a1 + 362));
  a2 = v196;
  Current = CFAbsoluteTimeGetCurrent();
  sub_19B8759E8(buf, (v7 + 56));
  sub_19B8E3D48(v7, buf, Current, v59, v60);
  if (SHIBYTE(v335) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

LABEL_147:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
  }

  v61 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v62 = a2;
    if (*(a2 + 23) < 0)
    {
      v62 = *a2;
    }

    v63 = *a1;
    v64 = *(a1 + 1);
    v66 = *(a1 + 2);
    v65 = *(a1 + 3);
    v67 = *(a1 + 7);
    v68 = *(a1 + 8);
    v70 = *(a1 + 9);
    v69 = *(a1 + 10);
    v71 = *(a1 + 11);
    v72 = a1[12] * 3.6;
    v74 = *(a1 + 23);
    v73 = *(a1 + 24);
    v75 = *(a1 + 25);
    v76 = *(a1 + 26);
    v158 = *(a1 + 27);
    v77 = *(a1 + 19);
    v78 = *(a1 + 20);
    v79 = *(a1 + 21);
    v80 = *(a1 + 36);
    v81 = *(a1 + 37);
    v82 = *(a1 + 41);
    v83 = *(a1 + 42);
    v84 = *(a1 + 38);
    v85 = *(a1 + 39);
    v157 = *(a1 + 40);
    v159 = *(a1 + 46);
    v161 = *(a1 + 47);
    v163 = *(a1 + 48);
    v165 = *(a1 + 49);
    v167 = *(a1 + 4);
    v169 = *(a1 + 5);
    v86 = *(a1 + 44);
    v87 = *(a1 + 45);
    v171 = *(a1 + 29);
    v173 = *(a1 + 30);
    v175 = *(a1 + 31);
    v177 = *(a1 + 32);
    v179 = *(a1 + 264);
    v181 = *(a1 + 265);
    v183 = *(a1 + 34);
    v185 = *(a1 + 70);
    v88 = *(a1 + 13);
    v187 = *(a1 + 14);
    v189 = *(a1 + 30);
    v192 = *(a1 + 31);
    v195 = (a1 + 16);
    if (*(a1 + 151) < 0)
    {
      v195 = *v197;
    }

    *&buf[4] = v62;
    *&buf[14] = v63;
    v336 = v64;
    v338 = v66;
    v340 = v65;
    v346 = v67;
    v348 = v68;
    v350 = v69;
    v352 = v70;
    v354 = v71;
    v356 = v88;
    v358 = v73;
    v362 = v74;
    v364 = v75;
    v366 = v76;
    v370 = v77;
    v89 = *(a1 + 56);
    v372 = v78;
    v90 = *(a1 + 86);
    v374 = v79;
    v91 = *(a1 + 228);
    v378 = v81;
    v92 = *(a1 + 44);
    v380 = v84;
    v93 = *(a1 + 229);
    v382 = v82;
    v94 = *(a1 + 350);
    v342 = 0;
    v95 = *(a1 + 351);
    v368 = v158;
    v96 = *(a1 + 360);
    v376 = v80;
    v97 = *(a1 + 349);
    v384 = v83;
    v98 = *(a1 + 361);
    v386 = v85;
    v99 = *(a1 + 362);
    v388 = v157;
    v100 = *(a1 + 348);
    v390 = v159;
    v101 = *(a1 + 100);
    v392 = v161;
    v102 = *(a1 + 101);
    v394 = v163;
    v103 = *(a1 + 51);
    v396 = v165;
    v104 = *(a1 + 6);
    v398 = v167;
    v345 = 2053;
    v347 = 2053;
    v369 = 2053;
    v371 = 2053;
    v375 = 2053;
    v377 = 2053;
    v381 = 2053;
    v383 = 2053;
    v385 = 2053;
    v387 = 2053;
    v389 = 2053;
    v391 = 2053;
    v393 = 2053;
    v395 = 2053;
    v397 = 2053;
    v399 = 2053;
    v105 = *(a1 + 104);
    v400 = v169;
    v106 = *(a1 + 105);
    v406 = v171;
    v107 = *(a1 + 53);
    *buf = 136463619;
    v408 = v173;
    *&buf[12] = 2050;
    v335 = 2050;
    v337 = 2050;
    v339 = 2050;
    v410 = v175;
    v341 = 1026;
    v343 = 1026;
    v344 = 0;
    v349 = 2050;
    v351 = 2050;
    v353 = 2050;
    v355 = 2050;
    v357 = 2050;
    v359 = 2050;
    v360 = v72;
    v361 = 2050;
    v363 = 2050;
    v365 = 2050;
    v367 = 2050;
    v373 = 2050;
    v379 = 2050;
    v401 = 2050;
    v402 = v86;
    v403 = 2050;
    v404 = v87;
    v405 = 2050;
    v407 = 2050;
    v409 = 2050;
    v411 = 2050;
    v412 = v177;
    v413 = 1026;
    v414 = v179;
    v415 = 1026;
    v416 = v181;
    v417 = 2050;
    v418 = v183;
    v419 = 1026;
    v420 = v185;
    v421 = 2049;
    v422 = v187;
    v423 = 1026;
    v424 = v189;
    v425 = 1026;
    v426 = v192;
    v427 = 2081;
    v428 = v195;
    v429 = 1026;
    v430 = v89;
    v431 = 1026;
    v432 = v90;
    v433 = 1026;
    v434 = v91;
    v435 = 2050;
    v436 = v92;
    v437 = 1026;
    v438 = v93;
    v439 = 1026;
    v440 = v94;
    v441 = 1026;
    v442 = v95;
    v443 = 1026;
    v444 = v96;
    v445 = 1026;
    v446 = v97;
    v447 = 1026;
    v448 = v98;
    v449 = 1026;
    v450 = v99;
    v451 = 1026;
    v452 = v100;
    v453 = 1026;
    v454 = v101;
    v455 = 1026;
    v456 = v102;
    v457 = 2050;
    v458 = v103;
    v459 = 2050;
    v460 = v104;
    v461 = 1026;
    v462 = v105;
    v463 = 1026;
    v464 = v106;
    v465 = 2050;
    v466 = a3;
    v467 = 2050;
    v468 = v107;
    _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEBUG, "CLMM,%{public}s,trip,%{public}lld,T,%{public}.1lf,machT,%{public}.2lf,contT,%{public}.2lf,gpsTMs,%{public}d,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crse,%{public}.1lf,crseUnc,%{public}.1lf,spdKph,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwLL,%{sensitive}.7lf,%{sensitive}.7lf,score,%{public}.1lf,ratio,%{public}.1lf,varFac,%{public}.7g,deltaAz,%{public}.3lf,alngTrk,%{public}.3lf,acrsTrk,%{public}.3lf,usable,%{public}d,ambiguous,%{public}d,proj,%{public}.3lf,type,%{public}d,rseg,%{private}lld,frc,%{public}d,fow,%{public}d,road,%{private}s,activity,%{public}d,actConf,%{public}d,static,%{public}d,staticSetAt,%{public}.1lf,mount,%{public}d,fitness,%{public}d,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,favGPS,%{public}d,gnssCont,%{public}d,locationType,%{public}d,lifespan,%{public}.1lf,rawCourse,%{public}.1lf,sigEnv,%{public}d,sigEnvFid,%{public}d,latency,%{public}.1lf,rw,%{public}.2lf", buf, 0x25Cu);
    a2 = v196;
  }

  v108 = sub_19B87DD40();
  if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
    }

    if (*(a2 + 23) < 0)
    {
      v196 = *a2;
    }

    v109 = *a1;
    v110 = *(a1 + 1);
    v111 = *(a1 + 2);
    v112 = *(a1 + 3);
    v113 = *(a1 + 7);
    v114 = *(a1 + 8);
    v116 = *(a1 + 9);
    v115 = *(a1 + 10);
    v117 = *(a1 + 11);
    v118 = a1[12] * 3.6;
    v120 = *(a1 + 23);
    v119 = *(a1 + 24);
    v121 = *(a1 + 25);
    v122 = *(a1 + 26);
    v123 = *(a1 + 27);
    v124 = *(a1 + 19);
    v125 = *(a1 + 20);
    v126 = *(a1 + 21);
    v127 = *(a1 + 36);
    v128 = *(a1 + 37);
    v130 = *(a1 + 41);
    v129 = *(a1 + 42);
    v132 = *(a1 + 38);
    v131 = *(a1 + 39);
    v133 = *(a1 + 40);
    v160 = *(a1 + 46);
    v162 = *(a1 + 47);
    v164 = *(a1 + 48);
    v166 = *(a1 + 49);
    v168 = *(a1 + 4);
    v170 = *(a1 + 5);
    v134 = *(a1 + 44);
    v135 = *(a1 + 45);
    v172 = *(a1 + 29);
    v174 = *(a1 + 30);
    v176 = *(a1 + 31);
    v178 = *(a1 + 32);
    v180 = *(a1 + 264);
    v182 = *(a1 + 265);
    v184 = *(a1 + 34);
    v186 = *(a1 + 70);
    v136 = *(a1 + 13);
    v188 = *(a1 + 14);
    v190 = *(a1 + 30);
    v193 = *(a1 + 31);
    if (*(a1 + 151) < 0)
    {
      v197 = *v197;
    }

    v470 = &v251;
    *&__p[4] = v196;
    *&__p[14] = v109;
    v201 = v110;
    v203 = v111;
    v205 = v112;
    v211 = v113;
    v213 = v114;
    v215 = v115;
    v217 = v116;
    v219 = v117;
    v221 = v136;
    v223 = v119;
    v227 = v120;
    v229 = v121;
    v231 = v122;
    v233 = v123;
    v235 = v124;
    v137 = *(a1 + 56);
    v237 = v125;
    v138 = *(a1 + 86);
    v239 = v126;
    v139 = *(a1 + 228);
    v243 = v128;
    v140 = *(a1 + 44);
    v245 = v132;
    v141 = *(a1 + 229);
    v247 = v130;
    v142 = *(a1 + 350);
    v143 = *(a1 + 351);
    v241 = v127;
    v144 = *(a1 + 360);
    v249 = v129;
    v145 = *(a1 + 349);
    v251 = v131;
    v146 = *(a1 + 361);
    v253 = v133;
    v147 = *(a1 + 362);
    v255 = v160;
    v148 = *(a1 + 348);
    v257 = v162;
    v149 = *(a1 + 100);
    v259 = v164;
    v150 = *(a1 + 101);
    v261 = v166;
    v151 = *(a1 + 51);
    v263 = v168;
    v210 = 2053;
    v212 = 2053;
    v234 = 2053;
    v236 = 2053;
    v240 = 2053;
    v242 = 2053;
    v246 = 2053;
    v248 = 2053;
    v250 = 2053;
    v252 = 2053;
    v254 = 2053;
    v256 = 2053;
    v258 = 2053;
    v260 = 2053;
    v262 = 2053;
    v264 = 2053;
    v152 = *(a1 + 6);
    v265 = v170;
    v153 = *(a1 + 104);
    v271 = v172;
    v154 = *(a1 + 105);
    v155 = *(a1 + 53);
    *__p = 136463619;
    v273 = v174;
    *&__p[12] = 2050;
    v200 = 2050;
    v202 = 2050;
    v204 = 2050;
    v275 = v176;
    v206 = 1026;
    v207 = 0;
    v208 = 1026;
    v209 = 0;
    v214 = 2050;
    v216 = 2050;
    v218 = 2050;
    v220 = 2050;
    v222 = 2050;
    v224 = 2050;
    v225 = v118;
    v226 = 2050;
    v228 = 2050;
    v230 = 2050;
    v232 = 2050;
    v238 = 2050;
    v244 = 2050;
    v266 = 2050;
    v267 = v134;
    v268 = 2050;
    v269 = v135;
    v270 = 2050;
    v272 = 2050;
    v274 = 2050;
    v276 = 2050;
    v277 = v178;
    v278 = 1026;
    v279 = v180;
    v280 = 1026;
    v281 = v182;
    v282 = 2050;
    v283 = v184;
    v284 = 1026;
    v285 = v186;
    v286 = 2049;
    v287 = v188;
    v288 = 1026;
    v289 = v190;
    v290 = 1026;
    v291 = v193;
    v292 = 2081;
    v293 = v197;
    v294 = 1026;
    v295 = v137;
    v296 = 1026;
    v297 = v138;
    v298 = 1026;
    v299 = v139;
    v300 = 2050;
    v301 = v140;
    v302 = 1026;
    v303 = v141;
    v304 = 1026;
    v305 = v142;
    v306 = 1026;
    v307 = v143;
    v308 = 1026;
    v309 = v144;
    v310 = 1026;
    v311 = v145;
    v312 = 1026;
    v313 = v146;
    v314 = 1026;
    v315 = v147;
    v316 = 1026;
    v317 = v148;
    v318 = 1026;
    v319 = v149;
    v320 = 1026;
    v321 = v150;
    v322 = 2050;
    v323 = v151;
    v324 = 2050;
    v325 = v152;
    v326 = 1026;
    v327 = v153;
    v328 = 1026;
    v329 = v154;
    v330 = 2050;
    v331 = a3;
    v332 = 2050;
    v333 = v155;
    v156 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}s,trip,%{public}lld,T,%{public}.1lf,machT,%{public}.2lf,contT,%{public}.2lf,gpsTMs,%{public}d,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crse,%{public}.1lf,crseUnc,%{public}.1lf,spdKph,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf,rwLL,%{sensitive}.7lf,%{sensitive}.7lf,score,%{public}.1lf,ratio,%{public}.1lf,varFac,%{public}.7g,deltaAz,%{public}.3lf,alngTrk,%{public}.3lf,acrsTrk,%{public}.3lf,usable,%{public}d,ambiguous,%{public}d,proj,%{public}.3lf,type,%{public}d,rseg,%{private}lld,frc,%{public}d,fow,%{public}d,road,%{private}s,activity,%{public}d,actConf,%{public}d,static,%{public}d,staticSetAt,%{public}.1lf,mount,%{public}d,fitness,%{public}d,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,favGPS,%{public}d,gnssCont,%{public}d,locationType,%{public}d,lifespan,%{public}.1lf,rawCourse,%{public}.1lf,sigEnv,%{public}d,sigEnvFid,%{public}d,latency,%{public}.1lf,rw,%{public}.2lf", __p, 604);
    sub_19B885924("Generic", 1, 0, 2, "void CLMapCrumb::debugOutput(const std::string, double)", "CoreLocation: %s\n", v156);
    if (v156 != buf)
    {
      free(v156);
    }
  }
}

void sub_19B8D6628(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B890AB0(a1);
  }

  _Unwind_Resume(a1);
}

std::string *sub_19B8D6654@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  snprintf(__str, 0x100uLL, "trip,%lld", *a1);
  sub_19B8D7878(a2, __str);
  snprintf(__str, 0x100uLL, ",T,%.1lf", *(a1 + 8));
  v4 = strlen(__str);
  std::string::append(a2, __str, v4);
  snprintf(__str, 0x100uLL, ",machT,%.2lf", *(a1 + 16));
  v5 = strlen(__str);
  std::string::append(a2, __str, v5);
  snprintf(__str, 0x100uLL, ",contT,%.2lf", *(a1 + 24));
  v6 = strlen(__str);
  std::string::append(a2, __str, v6);
  snprintf(__str, 0x100uLL, ",gpsTMs,%d,%d", 0, 0);
  v7 = strlen(__str);
  std::string::append(a2, __str, v7);
  snprintf(__str, 0x100uLL, ",LL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 56), *(a1 + 64));
  v8 = strlen(__str);
  std::string::append(a2, __str, v8);
  snprintf(__str, 0x100uLL, ",hunc,%.1lf", *(a1 + 80));
  v9 = strlen(__str);
  std::string::append(a2, __str, v9);
  snprintf(__str, 0x100uLL, ",alt,%.1lf", *(a1 + 72));
  v10 = strlen(__str);
  std::string::append(a2, __str, v10);
  snprintf(__str, 0x100uLL, ",vunc,%.1lf", *(a1 + 88));
  v11 = strlen(__str);
  std::string::append(a2, __str, v11);
  snprintf(__str, 0x100uLL, ",crse,%.1lf", *(a1 + 104));
  v12 = strlen(__str);
  std::string::append(a2, __str, v12);
  snprintf(__str, 0x100uLL, ",crseUnc,%.1lf", *(a1 + 192));
  v13 = strlen(__str);
  std::string::append(a2, __str, v13);
  snprintf(__str, 0x100uLL, ",spdKph,%.3lf", *(a1 + 96) * 3.6);
  v14 = strlen(__str);
  std::string::append(a2, __str, v14);
  snprintf(__str, 0x100uLL, ",spdUncMps,%.1lf", *(a1 + 184));
  v15 = strlen(__str);
  std::string::append(a2, __str, v15);
  snprintf(__str, 0x100uLL, ",a95,%.1lf", *(a1 + 200));
  v16 = strlen(__str);
  std::string::append(a2, __str, v16);
  snprintf(__str, 0x100uLL, ",b95,%.1lf", *(a1 + 208));
  v17 = strlen(__str);
  std::string::append(a2, __str, v17);
  snprintf(__str, 0x100uLL, ",theta,%.1lf", *(a1 + 216));
  v18 = strlen(__str);
  std::string::append(a2, __str, v18);
  snprintf(__str, 0x100uLL, ",snapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 152), *(a1 + 160));
  v19 = strlen(__str);
  std::string::append(a2, __str, v19);
  snprintf(__str, 0x100uLL, ",snapCrse,%.1lf", *(a1 + 168));
  v20 = strlen(__str);
  std::string::append(a2, __str, v20);
  snprintf(__str, 0x100uLL, ",fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 288), *(a1 + 296));
  v21 = strlen(__str);
  std::string::append(a2, __str, v21);
  snprintf(__str, 0x100uLL, ",fSnapCrse,%.1lf", *(a1 + 304));
  v22 = strlen(__str);
  std::string::append(a2, __str, v22);
  snprintf(__str, 0x100uLL, ",pSnapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 328), *(a1 + 336));
  v23 = strlen(__str);
  std::string::append(a2, __str, v23);
  snprintf(__str, 0x100uLL, ",rwSnapLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 312), *(a1 + 320));
  v24 = strlen(__str);
  std::string::append(a2, __str, v24);
  snprintf(__str, 0x100uLL, ",rwSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 368), *(a1 + 376));
  v25 = strlen(__str);
  std::string::append(a2, __str, v25);
  snprintf(__str, 0x100uLL, ",rwFSnapOfstLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 384), *(a1 + 392));
  v26 = strlen(__str);
  std::string::append(a2, __str, v26);
  snprintf(__str, 0x100uLL, ",rwLL,%{sensitive}.7lf,%{sensitive}.7lf", *(a1 + 32), *(a1 + 40));
  v27 = strlen(__str);
  std::string::append(a2, __str, v27);
  snprintf(__str, 0x100uLL, ",score,%.1lf", *(a1 + 176));
  v28 = strlen(__str);
  std::string::append(a2, __str, v28);
  snprintf(__str, 0x100uLL, ",ratio,%.1lf", *(a1 + 180));
  v29 = strlen(__str);
  std::string::append(a2, __str, v29);
  snprintf(__str, 0x100uLL, ",varFac,%.7g", *(a1 + 232));
  v30 = strlen(__str);
  std::string::append(a2, __str, v30);
  snprintf(__str, 0x100uLL, ",deltaAz,%.3lf", *(a1 + 240));
  v31 = strlen(__str);
  std::string::append(a2, __str, v31);
  snprintf(__str, 0x100uLL, ",alngTrk,%.3lf", *(a1 + 248));
  v32 = strlen(__str);
  std::string::append(a2, __str, v32);
  snprintf(__str, 0x100uLL, ",acrsTrk,%.3lf", *(a1 + 256));
  v33 = strlen(__str);
  std::string::append(a2, __str, v33);
  snprintf(__str, 0x100uLL, ",usable,%d", *(a1 + 264));
  v34 = strlen(__str);
  std::string::append(a2, __str, v34);
  snprintf(__str, 0x100uLL, ",ambiguous,%d", *(a1 + 265));
  v35 = strlen(__str);
  std::string::append(a2, __str, v35);
  snprintf(__str, 0x100uLL, ",proj,%.3lf", *(a1 + 272));
  v36 = strlen(__str);
  std::string::append(a2, __str, v36);
  snprintf(__str, 0x100uLL, ",type,%d", *(a1 + 280));
  v37 = strlen(__str);
  std::string::append(a2, __str, v37);
  snprintf(__str, 0x100uLL, ",rseg,%lld", *(a1 + 112));
  v38 = strlen(__str);
  std::string::append(a2, __str, v38);
  snprintf(__str, 0x100uLL, ",frc,%d", *(a1 + 120));
  v39 = strlen(__str);
  std::string::append(a2, __str, v39);
  snprintf(__str, 0x100uLL, ",fow,%d", *(a1 + 124));
  v40 = strlen(__str);
  std::string::append(a2, __str, v40);
  std::operator+<char>();
  v41 = std::string::append(&v64, "", 1uLL);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v66 = v41->__r_.__value_.__r.__words[2];
  *__p = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (v66 >= 0)
  {
    v43 = __p;
  }

  else
  {
    v43 = __p[0];
  }

  if (v66 >= 0)
  {
    v44 = HIBYTE(v66);
  }

  else
  {
    v44 = __p[1];
  }

  std::string::append(a2, v43, v44);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x100uLL, ",activity,%d", *(a1 + 224));
  v45 = strlen(__str);
  std::string::append(a2, __str, v45);
  snprintf(__str, 0x100uLL, ",actConf,%d", *(a1 + 344));
  v46 = strlen(__str);
  std::string::append(a2, __str, v46);
  snprintf(__str, 0x100uLL, ",static,%d", *(a1 + 228));
  v47 = strlen(__str);
  std::string::append(a2, __str, v47);
  snprintf(__str, 0x100uLL, ",staticSetAt,%.1lf", *(a1 + 352));
  v48 = strlen(__str);
  std::string::append(a2, __str, v48);
  snprintf(__str, 0x100uLL, ",mount,%d", *(a1 + 229));
  v49 = strlen(__str);
  std::string::append(a2, __str, v49);
  snprintf(__str, 0x100uLL, ",fitness,%d", *(a1 + 350));
  v50 = strlen(__str);
  std::string::append(a2, __str, v50);
  snprintf(__str, 0x100uLL, ",shifted,%d", *(a1 + 351));
  v51 = strlen(__str);
  std::string::append(a2, __str, v51);
  snprintf(__str, 0x100uLL, ",propagated,%d", *(a1 + 360));
  v52 = strlen(__str);
  std::string::append(a2, __str, v52);
  snprintf(__str, 0x100uLL, ",rail,%d", *(a1 + 349));
  v53 = strlen(__str);
  std::string::append(a2, __str, v53);
  snprintf(__str, 0x100uLL, ",bridge,%d", *(a1 + 361));
  v54 = strlen(__str);
  std::string::append(a2, __str, v54);
  snprintf(__str, 0x100uLL, ",tunnel,%d", *(a1 + 362));
  v55 = strlen(__str);
  std::string::append(a2, __str, v55);
  snprintf(__str, 0x100uLL, ",favGPS,%d", *(a1 + 348));
  v56 = strlen(__str);
  std::string::append(a2, __str, v56);
  snprintf(__str, 0x100uLL, ",gnssCont,%d", *(a1 + 400));
  v57 = strlen(__str);
  std::string::append(a2, __str, v57);
  snprintf(__str, 0x100uLL, ",locationType,%d", *(a1 + 404));
  v58 = strlen(__str);
  std::string::append(a2, __str, v58);
  snprintf(__str, 0x100uLL, ",lifespan,%.1lf", *(a1 + 408));
  v59 = strlen(__str);
  std::string::append(a2, __str, v59);
  snprintf(__str, 0x100uLL, ",rawCourse,%.1lf", *(a1 + 48));
  v60 = strlen(__str);
  std::string::append(a2, __str, v60);
  snprintf(__str, 0x100uLL, ",rw,%.2lf", *(a1 + 424));
  v61 = strlen(__str);
  std::string::append(a2, __str, v61);
  snprintf(__str, 0x100uLL, ",signalEnv,%d", *(a1 + 416));
  v62 = strlen(__str);
  return std::string::append(a2, __str, v62);
}

void sub_19B8D72A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B8D72F4(uint64_t a1, float64x2_t *a2, uint64_t *a3, double *a4, double *a5, double a6, double a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  if (fabs(v14) < 0.00003 && fabs(v15) < 0.00003 || fabs(*(a1 + 32)) < 0.00003 && fabs(*(a1 + 40)) < 0.00003)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 8);
      *buf = 134349056;
      v50 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM, %{public}.1lf, null island", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
      }

      v19 = *(a1 + 8);
      v37 = 134349056;
      v38 = v19;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, %{public}.1lf, null island", &v37, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLMapCrumb::computeSnapCoordinatesFromRawGPSCoordinates(CLDistanceCalc &, const std::string, double, double, double &, double &) const", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    return 0;
  }

  v35 = 0.0;
  v36 = 0.0;
  v34 = 0.0;
  if (!sub_19BA0BE88(a2, &v35, &v36, &v34, v14, v15, *(a1 + 72), a6, a7, *(a1 + 72)))
  {
    return 0;
  }

  v21 = sub_19BA0C1C0(a2->f64, a4, a5, &v33, *(a1 + 32), *(a1 + 40), *(a1 + 72), v35, v36, v34);
  if (v21)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 8);
      v24 = a3;
      if (*(a3 + 23) < 0)
      {
        v24 = *a3;
      }

      v25 = *a4;
      v26 = *a5;
      *buf = 134350339;
      v50 = v23;
      v51 = 2080;
      v52 = v24;
      v53 = 2053;
      v54 = a6;
      v55 = 2053;
      v56 = a7;
      v57 = 2053;
      v58 = v25;
      v59 = 2053;
      v60 = v26;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM, %{public}.1lf, New Snap Coordinates,%s,inSnapLat,%{sensitive}.8lf,inSnapLon,%{sensitive}.8lf,outSnapLat,%{sensitive}.8lf,outSnapLon,%{sensitive}.8lf", buf, 0x3Eu);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B820);
      }

      v28 = *(a1 + 8);
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v29 = *a4;
      v30 = *a5;
      v37 = 134350339;
      v38 = v28;
      v39 = 2080;
      v40 = a3;
      v41 = 2053;
      v42 = a6;
      v43 = 2053;
      v44 = a7;
      v45 = 2053;
      v46 = v29;
      v47 = 2053;
      v48 = v30;
      v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM, %{public}.1lf, New Snap Coordinates,%s,inSnapLat,%{sensitive}.8lf,inSnapLon,%{sensitive}.8lf,outSnapLat,%{sensitive}.8lf,outSnapLon,%{sensitive}.8lf", &v37, 62);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLMapCrumb::computeSnapCoordinatesFromRawGPSCoordinates(CLDistanceCalc &, const std::string, double, double, double &, double &) const", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  return v21;
}

os_log_t sub_19B8D778C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

std::string *sub_19B8D77BC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_19B8D7878(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_19B8D77BC(a1, __s, v4);
}

uint64_t sub_19B8D78C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B890AD4();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void *sub_19B8D794C(void *a1, char *a2, unint64_t *a3, double a4, double a5, uint64_t a6)
{
  v11 = *a2;
  for (i = objc_msgSend_count(a1, a2, a3, a6); v11 < i; i = objc_msgSend_count(a1, v13, v14, v15))
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(a1, v13, v11, v15);
    v20 = objc_msgSend_cfAbsTimestamp(v16, v17, v18, v19);
    objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22, v23);
    if (v24 >= a4)
    {
      *a2 = v11;
      break;
    }

    ++v11;
  }

  for (j = *a2; ; ++j)
  {
    result = objc_msgSend_count(a1, v13, v14, v15);
    if (j >= result)
    {
      break;
    }

    v29 = objc_msgSend_objectAtIndexedSubscript_(a1, v27, j, v28);
    v33 = objc_msgSend_cfAbsTimestamp(v29, v30, v31, v32);
    result = objc_msgSend_timeIntervalSinceReferenceDate(v33, v34, v35, v36);
    if (v37 >= a5)
    {
      *a3 = j;
      return result;
    }
  }

  return result;
}

void *sub_19B8D7A04(void *a1, char *a2, unint64_t *a3, double a4, double a5, uint64_t a6)
{
  v11 = *a2;
  for (i = objc_msgSend_count(a1, a2, a3, a6); v11 < i; i = objc_msgSend_count(a1, v13, v14, v15))
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(a1, v13, v11, v15);
    v20 = objc_msgSend_timestamp(v16, v17, v18, v19);
    objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22, v23);
    if (v24 >= a4)
    {
      *a2 = v11;
      break;
    }

    ++v11;
  }

  for (j = *a2; ; ++j)
  {
    result = objc_msgSend_count(a1, v13, v14, v15);
    if (j >= result)
    {
      break;
    }

    v29 = objc_msgSend_objectAtIndexedSubscript_(a1, v27, j, v28);
    v33 = objc_msgSend_timestamp(v29, v30, v31, v32);
    result = objc_msgSend_timeIntervalSinceReferenceDate(v33, v34, v35, v36);
    if (v37 >= a5)
    {
      *a3 = j;
      return result;
    }
  }

  return result;
}

void *sub_19B8D7ABC(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_initWithArray_copyItems_(v4, v5, a1, 1);
  objc_msgSend_setArray_(a2, v7, v6, v8);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v9, &v16, v20, 16);
  if (result)
  {
    v13 = result;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(a2);
        }

        objc_msgSend_setLocationReconstructionType_(*(*(&v16 + 1) + 8 * v15), v11, 1, v12);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v11, &v16, v20, 16);
      v13 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_19B8D7BD0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v18 = a2;
      v19 = 2048;
      v20 = 2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
      }

      v13 = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 2;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", &v13, 22);
      sub_19B885924("Generic", 1, 0, 0, "T &CMMatrix<double, 2>::operator()(size_t, size_t) [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (a3 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v18 = a3;
      v19 = 2048;
      v20 = 2;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6B860);
      }

      v13 = 134218240;
      v14 = a3;
      v15 = 2048;
      v16 = 2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", &v13, 22);
      sub_19B885924("Generic", 1, 0, 0, "T &CMMatrix<double, 2>::operator()(size_t, size_t) [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a1 + 8 * (a2 + 2 * a3);
}

void sub_19B8D7F58(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (sqrtf((v2 * v2) + (v3 * v3)) != 0.0)
  {
    v4 = *a2;
    v5 = a2[1];
    if (sqrtf((v4 * v4) + (v5 * v5)) != 0.0)
    {
      v6 = 0;
      v19 = *a1;
      v20 = v3;
      v7 = 0.0;
      v21 = 0;
      do
      {
        v7 = v7 + (*(&v19 + v6) * *(&v19 + v6));
        v6 += 4;
      }

      while (v6 != 12);
      v8 = 0.0;
      if (sqrtf(v7) <= 0.00000011921)
      {
        v12 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + (*(&v19 + v9) * *(&v19 + v9));
          v9 += 4;
        }

        while (v9 != 12);
        v11 = sqrtf(v10);
        v2 = v2 / v11;
        v3 = v3 / v11;
        v12 = 0.0 / v11;
      }

      v13 = 0;
      v19 = v4;
      v20 = v5;
      v21 = 0;
      do
      {
        v8 = v8 + (*(&v19 + v13) * *(&v19 + v13));
        v13 += 4;
      }

      while (v13 != 12);
      v14 = sqrtf(v8);
      v15 = 0.0;
      if (v14 > 0.00000011921)
      {
        for (i = 0; i != 12; i += 4)
        {
          v15 = v15 + (*(&v19 + i) * *(&v19 + i));
        }

        v17 = sqrtf(v15);
        v4 = v4 / v17;
        v5 = v5 / v17;
        v15 = 0.0 / v17;
      }

      v18 = ((v12 * v15) + (v3 * v5)) + (v2 * v4);
      if (v18 > -1.0 && v18 < 1.0)
      {
        acos(v18);
      }
    }
  }
}

BOOL sub_19B8D8100(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v90 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v72 = 0;
  v70 = xmmword_19BA89490;
  v73 = 0x3FF0000000000000;
  v68 = 0.0;
  v69 = 0;
  objc_msgSend_latitude(a2, a2, a5, a6);
  v11 = v10;
  objc_msgSend_longitude(a2, v12, v13, v14);
  v19 = sub_19BA0BE88(&v70, &v69, &v68, &v67, a3, a4, 0.0, v11, v15, 0.0);
  if (v19)
  {
    v20 = objc_msgSend_timestamp(a2, v16, v17, v18);
    objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22, v23);
    v24 = v69;
    *a1 = v25;
    *(a1 + 8) = v24;
    *(a1 + 16) = -v68;
    objc_msgSend_horizontalAccuracy(a2, v26, v27, v28);
    *(a1 + 24) = v29;
    *(a1 + 32) = objc_msgSend_signalEnvironmentType(a2, v30, v31, v32);
    *(a1 + 36) = objc_msgSend_referenceFrame(a2, v33, v34, v35);
    objc_msgSend_altitude(a2, v36, v37, v38);
    *(a1 + 40) = v39;
    objc_msgSend_altitudeAccuracy(a2, v40, v41, v42);
    *(a1 + 48) = v43;
  }

  else
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
    }

    v44 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_latitude(a2, v45, v46, v47);
      v49 = v48;
      objc_msgSend_longitude(a2, v50, v51, v52);
      *buf = 134546433;
      v83 = v49;
      v84 = 2053;
      v85 = v53;
      v86 = 2053;
      v87 = a3;
      v88 = 2053;
      v89 = a4;
      _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_ERROR, "[CLTrajectorySmootherUtilities] Conversion from lat/lon to NWU failed. location sample,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,selected origin,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f.", buf, 0x2Au);
    }

    v54 = sub_19B87DD40();
    if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
      }

      v58 = qword_1EAFE4760;
      objc_msgSend_latitude(a2, v55, v56, v57);
      v60 = v59;
      objc_msgSend_longitude(a2, v61, v62, v63);
      v74 = 134546433;
      v75 = v60;
      v76 = 2053;
      v77 = v64;
      v78 = 2053;
      v79 = a3;
      v80 = 2053;
      v81 = a4;
      v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v58, 16, "[CLTrajectorySmootherUtilities] Conversion from lat/lon to NWU failed. location sample,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,selected origin,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f.", &v74, 42);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLPTSUtility::LocationInNWU::convertLatitudeLongitudeToNWU(CLTripSegmentLocation * _Nonnull, const double, const double)", "CoreLocation: %s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }
  }

  return v19;
}

CLTripSegmentLocation *sub_19B8D8410(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v32 = 0;
  v33 = 0;
  v31 = xmmword_19BA89490;
  v34 = 0x3FF0000000000000;
  v29 = 0.0;
  v30 = 0.0;
  sub_19BA0C1C0(&v31, &v30, &v29, &v28, a7, a8, 0.0, a5, -a6, 0.0);
  v16 = [CLTripSegmentLocation alloc];
  v20 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v17, v18, v19, a3);
  v22 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v16, v21, v20, 1, a1, v30, v29, a4, -1.0, -1.0, -1.0, -1.0, a9, *&a10);
  objc_msgSend_setSignalEnvironmentType_(v22, v23, a2, v24);
  objc_msgSend_setLocationReconstructionType_(v22, v25, 2, v26);
  return v22;
}

void sub_19B8D8528(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>, double a5@<D0>, double a6@<D1>, uint64_t a7@<X3>)
{
  v7 = a3;
  v150[0] = 0;
  v150[1] = 0;
  v151 = 0;
  v13 = objc_msgSend_count(a1, a2, a3, a7);
  if (v13 <= 1)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v16 = v13;
  v17 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  __p = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  do
  {
    v18 = objc_msgSend_objectAtIndex_(a1, v14, v17, v15);
    if (objc_msgSend_locType(v18, v19, v20, v21) == 1)
    {
      p_p = &v147;
    }

    else
    {
      if (objc_msgSend_locType(v18, v22, v23, v24) != 4)
      {
        goto LABEL_9;
      }

      p_p = &__p;
    }

    sub_19B8D8B54(p_p, &v143);
LABEL_9:
    v17 = v143 + 1;
    v143 = v17;
  }

  while (v17 < v16);
  v26 = (v148 - v147) >> 3;
  if (v26 < 2)
  {
    *a4 = *v150;
    a4[2] = v151;
    v150[1] = 0;
    v151 = 0;
    v150[0] = 0;
    goto LABEL_73;
  }

  v27 = v26 - 1;
  v141 = v7;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  while (2)
  {
    v31 = (v147 + 8 * v30);
    v143 = *v31;
    v32 = v31[1];
    v33 = objc_msgSend_objectAtIndex_(a1, v14, v143, v15);
    v36 = objc_msgSend_objectAtIndex_(a1, v34, v32, v35);
    objc_msgSend_horizontalAccuracy(v33, v37, v38, v39);
    ++v29;
    if (v43 >= 0.0)
    {
      objc_msgSend_horizontalAccuracy(v33, v40, v41, v42);
      if (v44 <= 5.5)
      {
        goto LABEL_23;
      }
    }

    v45 = objc_msgSend_timestamp(v36, v40, v41, v42);
    v49 = objc_msgSend_timestamp(v33, v46, v47, v48);
    objc_msgSend_timeIntervalSinceDate_(v45, v50, v49, v51);
    if (fabs(v53) <= 20.0)
    {
      if (v29 < a2)
      {
        goto LABEL_42;
      }

      if (v150[0] == v150[1])
      {
        v69 = 0;
      }

      else
      {
        v57 = objc_msgSend_objectAtIndex_(a1, v14, *(v150[1] - 1), v15);
        v61 = objc_msgSend_timestamp(v33, v58, v59, v60);
        v65 = objc_msgSend_timestamp(v57, v62, v63, v64);
        objc_msgSend_timeIntervalSinceDate_(v61, v66, v65, v67);
        v69 = fabs(v68) <= 2.5;
      }

      objc_msgSend_horizontalAccuracy(v33, v14, v52, v15);
      if (v89 < 0.0)
      {
        goto LABEL_42;
      }

      objc_msgSend_horizontalAccuracy(v33, v14, v88, v15);
      if (v90 > a5 || v69)
      {
        goto LABEL_42;
      }

LABEL_23:
      sub_19B8D8B54(v150, &v143);
      v28 = 1;
      goto LABEL_42;
    }

    if (v28)
    {
      objc_msgSend_horizontalAccuracy(v33, v14, v52, v15);
      if (v55 >= 0.0)
      {
        objc_msgSend_horizontalAccuracy(v33, v14, v54, v15);
        if (v56 <= a5)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      objc_msgSend_horizontalAccuracy(v33, v14, v52, v15);
      if (v71 >= 0.0)
      {
        objc_msgSend_horizontalAccuracy(v33, v14, v70, v15);
        v72 = v73 <= a6;
      }

      else
      {
        v72 = 0;
      }

      if (v150[0] == v150[1])
      {
        v87 = 1;
      }

      else
      {
        v74 = objc_msgSend_objectAtIndex_(a1, v14, *(v150[1] - 1), v15);
        v78 = objc_msgSend_timestamp(v33, v75, v76, v77);
        v82 = objc_msgSend_timestamp(v74, v79, v80, v81);
        objc_msgSend_timeIntervalSinceDate_(v78, v83, v82, v84);
        v87 = v85 > 60.0 || v29 >= a2;
      }

      if (v72 && v87)
      {
LABEL_40:
        sub_19B8D8B54(v150, &v143);
      }
    }

    v29 = 0;
    v28 = 0;
LABEL_42:
    if (v27 != ++v30)
    {
      continue;
    }

    break;
  }

  v143 = *(v148 - 1);
  v91 = objc_msgSend_objectAtIndex_(a1, v14, v143, v15);
  objc_msgSend_horizontalAccuracy(v91, v92, v93, v94);
  if (v98 >= 0.0)
  {
    objc_msgSend_horizontalAccuracy(v91, v95, v96, v97);
    v99 = v100 > a6;
  }

  else
  {
    v99 = 1;
  }

  objc_msgSend_horizontalAccuracy(v91, v95, v96, v97);
  if (v104 >= 0.0)
  {
    objc_msgSend_horizontalAccuracy(v91, v101, v102, v103);
    v105 = v106 > 5.5;
  }

  else
  {
    v105 = 1;
  }

  if (v150[0] == v150[1])
  {
    v119 = 0;
  }

  else
  {
    v107 = objc_msgSend_objectAtIndex_(a1, v101, *(v150[1] - 1), v103);
    v111 = objc_msgSend_timestamp(v91, v108, v109, v110);
    v115 = objc_msgSend_timestamp(v107, v112, v113, v114);
    objc_msgSend_timeIntervalSinceDate_(v111, v116, v115, v117);
    v119 = fabs(v118) <= 2.5;
  }

  if (!v105 || !v99 && !v119 && v29 >= a2)
  {
    sub_19B8D8B54(v150, &v143);
  }

  if (v141)
  {
    v120 = __p;
    if (v145 != __p)
    {
      v121 = 0;
      do
      {
        v142 = v120[v121];
        v122 = objc_msgSend_objectAtIndex_(a1, v101, v142, v103);
        objc_msgSend_horizontalAccuracy(v122, v123, v124, v125);
        if (v127 >= 0.0)
        {
          objc_msgSend_horizontalAccuracy(v122, v101, v126, v103);
          if (v128 <= 50.0)
          {
            sub_19B8D8B54(v150, &v142);
          }
        }

        ++v121;
        v120 = __p;
      }

      while (v121 < (v145 - __p) >> 3);
    }
  }

  v129 = v150[1];
  v130 = v150[0];
  if (v150[1] == v150[0])
  {
    goto LABEL_71;
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v133 = v150[0];
  if (v150[1] != v150[0])
  {
    v134 = 0;
    v135 = 0;
    while (1)
    {
      v136 = objc_msgSend_objectAtIndex_(a1, v131, v133[v135], v132);
      objc_msgSend_horizontalAccuracy(v136, v137, v138, v139);
      if (v140 <= 35.0)
      {
        break;
      }

      ++v135;
      v133 = v150[0];
      v134 -= 8;
      if (v135 >= (v150[1] - v150[0]) >> 3)
      {
        goto LABEL_72;
      }
    }

    v130 = v150[0];
    v129 = v150[1];
    if (v135)
    {
      if (v150[0] - v134 != v150[1])
      {
        memmove(v150[0], v150[0] + 8 * v135, v150[1] - v150[0] + v134);
        v130 = v150[0];
      }

      v129 += v134;
      v150[1] = v129;
    }

LABEL_71:
    *a4 = v130;
    a4[1] = v129;
    a4[2] = v151;
    a4 = v150;
  }

LABEL_72:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
LABEL_73:
  if (__p)
  {
    v145 = __p;
    operator delete(__p);
  }

  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  if (v150[0])
  {
    v150[1] = v150[0];
    operator delete(v150[0]);
  }
}

void sub_19B8D8AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8D8B54(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_19B8B8A40();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8D9954(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_19B8D8C34(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  while (1)
  {
    *&v128[0].f64[0] = v6;
    if (v6 >= objc_msgSend_count(a1, a2, a3, a4))
    {
      break;
    }

    v9 = objc_msgSend_objectAtIndex_(a1, v7, *&v128[0].f64[0], v8);
    if (objc_msgSend_locType(v9, v10, v11, v12) == 1)
    {
      sub_19B8D8B54(&v134, v128);
    }

    v6 = *&v128[0].f64[0] + 1;
  }

  v13 = objc_msgSend_objectAtIndex_(a1, v7, *v134, v8);
  v17 = objc_msgSend_timestamp(v13, v14, v15, v16);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v20 = v134;
  if (v135 == v134)
  {
LABEL_55:
    v40 = 0;
    goto LABEL_56;
  }

  v21 = v17;
  v22 = 0;
  do
  {
    v23 = objc_msgSend_objectAtIndex_(a1, v18, v20[v22], v19);
    v27 = objc_msgSend_timestamp(v23, v24, v25, v26);
    objc_msgSend_timeIntervalSinceDate_(v27, v28, v21, v29);
    v32 = v132;
    if (v31 < 0.0 || v31 > 180.0)
    {
      break;
    }

    if (v132 >= v133)
    {
      v33 = (v132 - v131) >> 3;
      if ((v33 + 1) >> 61)
      {
        sub_19B8B8A40();
      }

      v34 = (v133 - v131) >> 2;
      if (v34 <= v33 + 1)
      {
        v34 = v33 + 1;
      }

      if (v133 - v131 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v34;
      }

      if (v35)
      {
        sub_19B8D999C(&v131, v35);
      }

      v36 = (8 * v33);
      *v36 = v23;
      v32 = 8 * v33 + 8;
      v37 = v36 - (v132 - v131);
      memcpy(v37, v131, v132 - v131);
      v38 = v131;
      v131 = v37;
      v132 = v32;
      v133 = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v132 = v23;
      v32 += 8;
    }

    v132 = v32;
    ++v22;
    v20 = v134;
  }

  while (v22 < v135 - v134);
  v39 = v131;
  if ((v32 - v131) >= 9)
  {
    v41 = 0;
    v42 = 10.5;
    do
    {
      v43 = v131;
      v44 = v132;
      while (v43 != v44)
      {
        v45 = *v43;
        objc_msgSend_horizontalAccuracy(*v43, v18, v30, v19);
        if (v46 > 0.0)
        {
          objc_msgSend_horizontalAccuracy(v45, v18, v30, v19);
          if (v47 < v42)
          {
            if (v41)
            {
              objc_msgSend_distanceFromLocation_(v41, v18, v45, v19);
              v49 = v48;
              objc_msgSend_horizontalAccuracy(v41, v50, v51, v52);
              v54 = v53;
              objc_msgSend_horizontalAccuracy(v45, v55, v56, v57);
              if (v49 > v54 + v58)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v41 = v45;
            }
          }
        }

        ++v43;
      }

      v45 = 0;
LABEL_37:
      v42 = v42 + 1.0;
    }

    while (v42 < 60.0 && v45 == 0);
    v40 = 0;
    if (v45 && v41)
    {
      v60 = objc_msgSend_timestamp(v41, v18, v30, v19);
      v64 = objc_msgSend_timestamp(v45, v61, v62, v63);
      v67 = objc_msgSend_compare_(v60, v65, v64, v66);
      if (v67 == 1)
      {
        v71 = v41;
      }

      else
      {
        v71 = v45;
      }

      if (v67 == 1)
      {
        v41 = v45;
      }

      objc_msgSend_latitude(v41, v68, v69, v70);
      v73 = v72;
      objc_msgSend_longitude(v41, v74, v75, v76);
      v78 = v77;
      memset(v128, 0, sizeof(v128));
      v129 = 0x100000000;
      __asm { FMOV            V0.2D, #-1.0 }

      v120 = _Q0;
      v130 = _Q0;
      sub_19B8D8100(v128, v41, v73, v78, v83, v84);
      memset(v125, 0, sizeof(v125));
      v126 = 0x100000000;
      v127 = v120;
      sub_19B8D8100(v125, v71, v73, v78, v85, v86);
      v123 = 0;
      v124 = 0;
      sub_19B8D794C(a2, &v124, &v123, v128[0].f64[0], v125[0].f64[0], v87);
      v91 = v123;
      v90 = v124;
      v92 = 0.0;
      v93 = 0.0;
      if (v124 <= v123)
      {
        v94 = 0.0;
        v95 = 0.0;
        do
        {
          v96 = objc_msgSend_objectAtIndexedSubscript_(a2, v88, v90, v89, v92, v93, v120);
          v100 = objc_msgSend_deltaPosition_m(v96, v97, v98, v99);
          if (objc_msgSend_isValid(v100, v101, v102, v103))
          {
            v105 = objc_msgSend_deltaPosition_m(v96, v88, v104, v89);
            objc_msgSend_X(v105, v106, v107, v108);
            v110 = v109;
            v114 = objc_msgSend_deltaPosition_m(v96, v111, v112, v113);
            objc_msgSend_Y(v114, v115, v116, v117);
            v95 = v95 + v110;
            v94 = v94 + v92;
          }

          ++v90;
        }

        while (v90 <= v91);
        *&v92 = v95;
        *&v93 = v94;
      }

      v122 = vcvt_f32_f64(vsubq_f64(*(v125 + 8), *(v128 + 8)));
      v121[0] = *&v92;
      v121[1] = *&v93;
      if (sqrtf(vaddv_f32(vmul_f32(v122, v122))) == 0.0)
      {
        goto LABEL_55;
      }

      sub_19B8D7F58(v121, &v122);
      v40 = v119;
    }

LABEL_56:
    v39 = v131;
    if (!v131)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v40 = 0;
  if (v131)
  {
LABEL_57:
    v132 = v39;
    operator delete(v39);
  }

LABEL_58:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  return v40;
}

void sub_19B8D9068(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B8D90D4(uint64_t **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == a1[1])
  {
    return 0;
  }

  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], a2, a3, a4);
  v9 = *a1;
  v8 = a1[1];
  while (v9 != v8)
  {
    v10 = *v9++;
    objc_msgSend_addIndex_(v7, v5, v10, v6);
  }

  return v7;
}

double sub_19B8D913C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_count(a1, a2, a3, a4, 0x41582AF3D4F25D95, 0x415854A640000000, 0, 0, 0x3FF0000000000000);
  v8 = 0.0;
  if (v5 >= 2)
  {
    v9 = v5;
    for (i = 1; i != v9; ++i)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(a1, v6, i, v7);
      v14 = objc_msgSend_objectAtIndexedSubscript_(a1, v12, i - 1, v13);
      objc_msgSend_latitude(v11, v15, v16, v17);
      v19 = v18;
      objc_msgSend_longitude(v11, v20, v21, v22);
      v24 = v23;
      objc_msgSend_latitude(v14, v25, v26, v27);
      v29 = v28;
      objc_msgSend_longitude(v14, v30, v31, v32);
      sub_19BA0C01C(&v36, v19, v24, v29, v33, 0.0);
      v8 = v8 + v34;
    }
  }

  return v8;
}

double sub_19B8D9230(void *a1, const char *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v49, v53, 16);
  if (!v3)
  {
    return 0.0;
  }

  v7 = v3;
  v8 = *v50;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v50 != v8)
      {
        objc_enumerationMutation(a1);
      }

      v11 = *(*(&v49 + 1) + 8 * i);
      v12 = objc_msgSend_deltaPosition_m(v11, v4, v5, v6);
      if (objc_msgSend_isValid(v12, v13, v14, v15))
      {
        v16 = objc_msgSend_deltaPosition_m(v11, v4, v5, v6);
        objc_msgSend_X(v16, v17, v18, v19);
        v21 = v20;
        v25 = objc_msgSend_deltaPosition_m(v11, v22, v23, v24);
        objc_msgSend_X(v25, v26, v27, v28);
        v30 = v21 * v29;
        v34 = objc_msgSend_deltaPosition_m(v11, v31, v32, v33);
        objc_msgSend_Y(v34, v35, v36, v37);
        v39 = v38;
        v43 = objc_msgSend_deltaPosition_m(v11, v40, v41, v42);
        objc_msgSend_Y(v43, v44, v45, v46);
        v9 = v9 + sqrt(v30 + v39 * v47);
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v4, &v49, v53, 16);
  }

  while (v7);
  return v9;
}

BOOL sub_19B8D9388(void *a1, double a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(a1, a3, a4, a5) < 2 || objc_msgSend_count(a1, v7, v8, v9) < 2)
  {
    return 0;
  }

  v12 = 1;
  do
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(a1, v10, v12 - 1, v11);
    v16 = objc_msgSend_objectAtIndexedSubscript_(a1, v14, v12, v15);
    v20 = objc_msgSend_timestamp(v16, v17, v18, v19);
    v24 = objc_msgSend_timestamp(v13, v21, v22, v23);
    objc_msgSend_timeIntervalSinceDate_(v20, v25, v24, v26);
    v31 = fabs(v30);
    v32 = v31 > a2;
    if (v31 > a2)
    {
      break;
    }

    ++v12;
  }

  while (v12 < objc_msgSend_count(a1, v27, v28, v29));
  return v32;
}

uint64_t sub_19B8D9444(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a1, a2, a3, a4) < 2 || objc_msgSend_count(a1, v5, v6, v7) < 2)
  {
    return 0;
  }

  v10 = 1;
  while (1)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(a1, v8, v10 - 1, v9);
    v14 = objc_msgSend_objectAtIndexedSubscript_(a1, v12, v10, v13);
    objc_msgSend_distanceFromLocation_(v14, v15, v11, v16);
    if (v20 > 450.0)
    {
      break;
    }

    if (++v10 >= objc_msgSend_count(a1, v17, v18, v19))
    {
      return 0;
    }
  }

  if (qword_1EAFE4758 != -1)
  {
    dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
  }

  v22 = qword_1EAFE4760;
  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
  {
    objc_msgSend_distanceFromLocation_(v14, v23, v11, v24);
    *buf = 134349056;
    v35 = v25;
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "[CLTrajectorySmootherUtilities], distance between two consecutive samples is, %{public}.1f.", buf, 0xCu);
  }

  v26 = sub_19B87DD40();
  if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6B840);
    }

    v29 = qword_1EAFE4760;
    objc_msgSend_distanceFromLocation_(v14, v27, v11, v28);
    v32 = 134349056;
    v33 = v30;
    v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 16, "[CLTrajectorySmootherUtilities], distance between two consecutive samples is, %{public}.1f.", &v32, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLPTSUtility::areTriplocationSamplesTooSparseInSpace(NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  return 1;
}

double sub_19B8D96A4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0.0;
  v9 = 0.0;
  if (objc_msgSend_count(a1, a2, a3, a4))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(a1, v5, v11, v7);
      if (objc_msgSend_signalEnvironmentType(v12, v13, v14, v15) - 3 < 2)
      {
        ++v10;
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(a1, v16, v17, v18));
    v9 = v10;
  }

  if (objc_msgSend_count(a1, v5, v6, v7))
  {
    return v9 / objc_msgSend_count(a1, v19, v20, v21);
  }

  return v8;
}

void sub_19B8D9740(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  *a1 = a2 + (a4 - a2) * a6;
  v7 = a3 + 360.0;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  v8 = a5 + 360.0;
  if (a5 >= 0.0)
  {
    v8 = a5;
  }

  v9 = v8 - v7;
  if (v9 <= 180.0)
  {
    if (v9 < -180.0)
    {
      v9 = v9 + 360.0;
    }
  }

  else
  {
    v9 = v9 + -360.0;
  }

  v10 = fmod(a3 + v9 * a6, 360.0);
  if (v10 <= -180.0)
  {
    v10 = v10 + 360.0;
  }

  else if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  a1[1] = v10;
}

uint64_t sub_19B8D9804(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  if (objc_msgSend_count(a1, a2, a3, a4) - 1 <= a3)
  {
    v4 = (objc_msgSend_count(a1, v7, v8, v9) - 1);
  }

  if (v4 <= v5)
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(a1, v7, v5, v9);
      v17 = objc_msgSend_deltaPosition_m(v13, v14, v15, v16);
      isValid = objc_msgSend_isValid(v17, v18, v19, v20);
      v25 = 0.0;
      v26 = 0.0;
      if (isValid)
      {
        v27 = objc_msgSend_deltaPosition_m(v13, v21, v22, v23);
        objc_msgSend_X(v27, v28, v29, v30);
        v25 = v31;
        v35 = objc_msgSend_deltaPosition_m(v13, v32, v33, v34);
        objc_msgSend_Y(v35, v36, v37, v38);
        v26 = v39;
      }

      v10 = v10 + isValid;
      v11 = v11 + 1.0;
      v12 = v12 + hypot(v25, v26);
      ++v5;
    }

    while (v5 <= v4);
    v40 = v10 / v11 > 0.15;
    v41 = v12 > 2.0;
  }

  return v40 | (v41 << 8);
}

os_log_t sub_19B8D9924()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

void sub_19B8D9954(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8D999C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

os_log_t sub_19B8D99E4()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

void sub_19B8D9AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8DAF00;
  block[3] = &unk_1E753CC90;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t sub_19B8D9C30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v9 = objc_msgSend_delegate(*(a1 + 32), v6, v7, v8);
    v13 = objc_msgSend_locationManagerSmoother(*(a1 + 32), v10, v11, v12);
    v14 = *(a1 + 40);
    objc_msgSend_intValue(*(a1 + 48), v15, v16, v17);

    return MEMORY[0x1EEE66B58](v9, sel_locationManager_didSmoothLocations_ofType_, v13, v14);
  }

  return result;
}

uint64_t sub_19B8DABE4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, 1, a4);
  v9 = objc_msgSend_locationManagerSmootherProxy(*(a1 + 32), v6, v7, v8);
  v13 = objc_msgSend_connection(v9, v10, v11, v12);
  v17 = objc_msgSend_remoteObjectProxy(v13, v14, v15, v16);
  v18 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v17, sel_smoothLocations_useType_, v18, v5);
}

uint64_t sub_19B8DAD48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_array(MEMORY[0x1E695DEC8], a2, a3, a4);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v6, @"CLSmootherErrorDomain", 1, 0);
  v8 = *(v4 + 16);

  return v8(v4, v5, v7);
}

uint64_t sub_19B8DAE9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_locationManagerSmootherProxy(*(a1 + 32), a2, a3, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_setDelegate_(v5, v6, v8, v7);
}

os_log_t sub_19B8DAF08()
{
  result = os_log_create("com.apple.locationd.Position", "RouteSmoother");
  qword_1EAFE47A0 = result;
  return result;
}

void sub_19B8DB9C8(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v14 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#clgda,client,#warning,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v7 = qword_1ED519090;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v11 = 136315138;
    v12 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v7, 0, "#clgda,client,#warning,unexpected message,%s", &v11, 12);
    sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::CLGnssDisablementAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, CLGnssDisablementAssertionCallback)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }
}

void sub_19B8DBBC0(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
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

    *buf = 136315138;
    v21 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#clgda,client,message,%s", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v8 = qword_1ED519090;
    v9 = CLConnectionMessage::name(*a2);
    if (*(v9 + 23) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    v18 = 136315138;
    v19 = v10;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v8, 2, "#clgda,client,message,%s", &v18, 12);
    sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::CLGnssDisablementAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, CLGnssDisablementAssertionCallback)_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (*(v3 + 8))
  {
    v12 = CLConnectionMessage::name(*a2);
    if (*(v12 + 23) < 0 && *(v12 + 8) == 44 && !memcmp(*v12, "kCLConnectionMessageGnssDisablementAssertRsp", 0x2CuLL) && (*(v3 + 24) & 1) == 0)
    {
      v13 = *(v3 + 8);
      Dictionary = CLConnectionMessage::getDictionary(*a2);
      (*(v13 + 16))(v13, Dictionary);
      *(v3 + 24) = 1;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#clgda,#warning,client,noRegisteredCallback", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }

      LOWORD(v18) = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clgda,#warning,client,noRegisteredCallback", &v18, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::CLGnssDisablementAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, CLGnssDisablementAssertionCallback)_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

void sub_19B8DC334(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  if (a25)
  {
    sub_19B8750F8(a25);
  }

  MEMORY[0x19EAE98C0](v33, v34, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B8DC430(uint64_t *result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#clgda,client,~CLGnssDisablementAssertionInternal()", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }

      v6[0] = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#clgda,client,~CLGnssDisablementAssertionInternal()", v6, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::~CLGnssDisablementAssertionInternal()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    sub_19B8B543C(v2);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

void sub_19B8DC644(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

CLGnssDisablementAssertion *sub_19B8DC650(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#clgda,client,reason missing";
    v14 = "{msg%{public}.0s:#clgda,client,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#clgda,client,bundleID or bundlePath needed";
    v14 = "{msg%{public}.0s:#clgda,client,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#clgda,client,nil callback queue";
    v14 = "{msg%{public}.0s:#clgda,client,nil callback queue}";
    goto LABEL_35;
  }

  if (a5)
  {
    v18[0] = @"kCLConnectionMessageBundleIdentifierKey";
    v18[1] = @"kCLConnectionMessageBundlePathKey";
    v19[0] = a1;
    v19[1] = a2;
    v18[2] = @"kCLConnectionMessagePurposeKey";
    v19[2] = a3;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v19, v18, 3);
    v8 = [CLGnssDisablementAssertion alloc];
    return objc_msgSend_initWithRegistrationMessageName_messagePayload_callbackQueue_completionHandler_(v8, v9, "kCLConnectionMessageGnssDisablementAssertReq", v7, a4, a5);
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,nil callback block}", buf, 0x12u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }
  }

  v12 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "#clgda,client,nil callback block";
    v14 = "{msg%{public}.0s:#clgda,client,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, 0x12u);
  }

  return 0;
}