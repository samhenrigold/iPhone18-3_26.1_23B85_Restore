uint64_t sub_10001D410()
{
  v1 = *(v0 + 288);

  return _swift_task_switch(sub_10001D484, v1, 0);
}

uint64_t sub_10001D484()
{
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7A58);
  swift_errorRetain();
  v2 = sub_100080FF8();
  v3 = sub_1000815D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error: %@", v4, 0xCu);
    sub_10001A80C(v5, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  **(v0 + 272) = _swiftEmptyArrayStorage;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001D65C()
{
  swift_willThrow();
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7A58);
  swift_errorRetain();
  v2 = sub_100080FF8();
  v3 = sub_1000815D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error: %@", v4, 0xCu);
    sub_10001A80C(v5, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  *(v0 + 352) = *(*(v0 + 288) + 160);

  return _swift_task_switch(sub_10001CDE8, 0, 0);
}

uint64_t sub_10001D81C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002329C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000DC18(0, &qword_1000B7B98, &off_1000A8DF8);
    **(*(v4 + 64) + 40) = sub_100081488();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10001D90C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a2;
  *(v6 + 136) = a5;
  *(v6 + 144) = a6;
  *(v6 + 128) = a1;
  v7 = sub_100080D98();
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10001D9D4, 0, 0);
}

void sub_10001D9D4()
{
  v1 = v0[18];
  sub_10002329C((v0[17] + 112), *(v0[17] + 136));
  v2 = [v1 publicKey];
  v3 = sub_100080CF8();
  v5 = v4;

  v0[23] = v3;
  v0[24] = v5;
  v0[25] = CloudEnvironmentDefaultVersion.unsafeMutableAddressor()->_object;
  type metadata accessor for CalibrationDataDownloaderImpl();

  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_10001DB90;

  JUMPOUT(0x100019984);
}

uint64_t sub_10001DB90(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_10001E2A4;
  }

  else
  {
    v5 = v3[24];
    v6 = v3[23];

    sub_100006A34(v6, v5);
    v4 = sub_10001DCBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001DCBC()
{
  v1 = *(v0 + 224);
  v2 = (*(v0 + 216) + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v3 = *v2;
  v4 = v2[1];
  sub_10000D808(*v2, v4);
  v5 = sub_10001345C(v3, v4, 0);
  if (v1)
  {
    v6 = *(v0 + 216);
    sub_100006A34(v3, v4);
  }

  else
  {
    v7 = v5;
    sub_100006A34(v3, v4);
    v8 = OBJC_IVAR___CRXCAppClipCodePayload_left;
    swift_beginAccess();
    v9 = *&v7[v8];
    if (v9)
    {
      v10 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v13 = *&v7[v12];
      if (v13)
      {
        v14 = *(v0 + 216);
        v15 = *(v0 + 176);
        v63 = *(v0 + 168);
        v64 = *(v0 + 160);
        v16 = *(v0 + 144);
        v17 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
        swift_beginAccess();
        v18 = *(v13 + v17);
        v19 = *v2;
        v62 = v2[1];
        v60 = v11;
        v59 = v18;
        v20 = v19;
        sub_10000D808(v19, v62);
        v21 = [v16 name];
        v22 = sub_1000812B8();
        v54 = v23;
        v55 = v22;

        v24 = [v16 creationDate];
        v58 = v15;
        sub_100080D78();

        v25 = v14;
        v57 = v14;
        v26 = &v14[OBJC_IVAR___CRXCFactoryCalibrationData_left];
        v27 = *&v14[OBJC_IVAR___CRXCFactoryCalibrationData_left];
        v28 = *(v26 + 1);
        v29 = *&v25[OBJC_IVAR___CRXCFactoryCalibrationData_right];
        v30 = *&v25[OBJC_IVAR___CRXCFactoryCalibrationData_right + 8];
        v56 = type metadata accessor for CRXCPrescriptionRecord(0);
        v31 = objc_allocWithZone(v56);
        v32 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
        *v32 = v19;
        v32[1] = v62;
        v33 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName];
        *v33 = v55;
        v33[1] = v54;
        (*(v63 + 16))(&v31[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate], v15, v64);
        v34 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData];
        *v34 = v27;
        v34[1] = v28;
        v35 = v28;
        v36 = &v31[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData];
        v37 = v29;
        *v36 = v29;
        v36[1] = v30;
        *&v31[OBJC_IVAR___CRXCPrescriptionRecord_leftEye] = v60;
        *&v31[OBJC_IVAR___CRXCPrescriptionRecord_rightEye] = v59;
        v38 = v35;
        sub_10001622C(v27, v35);
        sub_10001622C(v37, v30);
        v61 = v60;
        v39 = v59;
        sub_10000D808(v20, v62);
        sub_10001622C(v27, v38);
        sub_10001622C(v37, v30);
        *(v0 + 112) = v31;
        *(v0 + 120) = v56;
        v40 = objc_msgSendSuper2((v0 + 112), "init");

        sub_10001A164(v37, v30);
        sub_10001A164(v27, v38);
        sub_100006A34(v20, v62);
        (*(v63 + 8))(v58, v64);
        goto LABEL_17;
      }
    }

    if (qword_1000B73E0 != -1)
    {
      swift_once();
    }

    v41 = sub_100081018();
    sub_100016240(v41, qword_1000B7A58);
    v42 = sub_100080FF8();
    v43 = sub_1000815D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Prescription is missing left & right eye RX; ignoring", v44, 2u);
    }

    v6 = *(v0 + 216);

    sub_10001A110();
    swift_allocError();
    *v45 = 6;
    swift_willThrow();
  }

  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v46 = sub_100081018();
  sub_100016240(v46, qword_1000B7A58);
  swift_errorRetain();
  v47 = sub_100080FF8();
  v48 = sub_1000815D8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 4) = v51;
    *v50 = v51;
    _os_log_impl(&_mh_execute_header, v47, v48, "Error: %@", v49, 0xCu);
    sub_10001A80C(v50, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v40 = 0;
LABEL_17:
  **(v0 + 128) = v40;

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_10001E2A4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  sub_100006A34(v2, v1);
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v3 = sub_100081018();
  sub_100016240(v3, qword_1000B7A58);
  swift_errorRetain();
  v4 = sub_100080FF8();
  v5 = sub_1000815D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@", v6, 0xCu);
    sub_10001A80C(v7, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  **(v0 + 128) = 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10001E46C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 200) = a2;
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 176) = a1;
  v7 = sub_100080D98();
  *(v6 + 208) = v7;
  *(v6 + 216) = *(v7 - 8);
  *(v6 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10001E534, 0, 0);
}

uint64_t sub_10001E534()
{
  v1 = [*(v0 + 184) metadata];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_100081218();

  v4 = sub_1000812B8();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_1000525C4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_100006888(*(v3 + 56) + 32 * v6, v0 + 16);

  if (swift_dynamicCast())
  {
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    *(v0 + 232) = v9;
    *(v0 + 240) = v10;
    v11 = sub_10001345C(v9, v10, 0);
    *(v0 + 248) = v11;
    v18 = v11;
    v19 = OBJC_IVAR___CRXCAppClipCodePayload_left;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (v20)
    {
      v21 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
      swift_beginAccess();
      v22 = *(v20 + v21);
      *(v0 + 256) = v22;
      v23 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v24 = *&v18[v23];
      if (v24)
      {
        v25 = *(v0 + 192);
        v26 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
        swift_beginAccess();
        v27 = *(v24 + v26);
        *(v0 + 264) = v27;
        sub_10002329C((v25 + 112), *(v25 + 136));
        v28 = v22;
        v29 = v27;
        sub_10000D808(v9, v10);
        *(v0 + 272) = CloudEnvironmentDefaultVersion.unsafeMutableAddressor()->_object;
        type metadata accessor for CalibrationDataDownloaderImpl();

        v30 = swift_task_alloc();
        *(v0 + 280) = v30;
        *v30 = v0;
        v30[1] = sub_10001EB64;

        JUMPOUT(0x100019984);
      }
    }

    if (qword_1000B73E0 != -1)
    {
      swift_once();
    }

    v31 = sub_100081018();
    sub_100016240(v31, qword_1000B7A58);
    v32 = sub_100080FF8();
    v33 = sub_1000815D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Prescription is missing left & right eye RX; ignoring", v34, 2u);
    }

    sub_100006A34(v9, v10);
    goto LABEL_13;
  }

LABEL_8:
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v12 = sub_100081018();
  sub_100016240(v12, qword_1000B7A58);
  v13 = sub_100080FF8();
  v14 = sub_1000815D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Prescription is missing ACC; ignoring", v15, 2u);
  }

LABEL_13:
  **(v0 + 176) = 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10001EB64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10001EF50;
  }

  else
  {
    v7 = v4[29];
    v6 = v4[30];

    v4[37] = a1;
    sub_100006A34(v7, v6);
    v5 = sub_10001ECA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001ECA4()
{
  v1 = *(v0 + 296);
  v30 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8];
  v31 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_left];
  v3 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_right];
  v2 = *&v1[OBJC_IVAR___CRXCFactoryCalibrationData_right + 8];
  v28 = v2;
  v29 = v3;
  sub_10001622C(v31, v30);
  sub_10001622C(v3, v2);

  v25 = *(v0 + 256);
  v27 = *(v0 + 264);
  v4 = *(v0 + 240);
  v32 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = [v9 description];
  v24 = sub_1000812B8();
  v12 = v11;

  v13 = [v9 dateIssued];
  sub_100080D78();

  v14 = type metadata accessor for CRXCPrescriptionRecord(0);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
  *v16 = v6;
  v16[1] = v4;
  v17 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName];
  *v17 = v24;
  v17[1] = v12;
  (*(v8 + 16))(&v15[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate], v5, v7);
  v18 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData];
  *v18 = v31;
  v18[1] = v30;
  v19 = &v15[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData];
  *v19 = v29;
  v19[1] = v28;
  *&v15[OBJC_IVAR___CRXCPrescriptionRecord_leftEye] = v25;
  *&v15[OBJC_IVAR___CRXCPrescriptionRecord_rightEye] = v27;
  v26 = v25;
  v20 = v27;
  sub_10000D808(v6, v4);
  sub_10001622C(v31, v30);
  sub_10001622C(v29, v28);
  *(v0 + 160) = v15;
  *(v0 + 168) = v14;
  v21 = objc_msgSendSuper2((v0 + 160), "init");

  sub_10001A164(v29, v28);
  sub_10001A164(v31, v30);
  sub_100006A34(v6, v4);
  (*(v8 + 8))(v5, v7);
  **(v0 + 176) = v21;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10001EF50()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  sub_100006A34(v1, v2);
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v3 = sub_100081018();
  sub_100016240(v3, qword_1000B7A58);
  swift_errorRetain();
  v4 = sub_100080FF8();
  v5 = sub_1000815D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error: %@", v6, 0xCu);
    sub_10001A80C(v7, &qword_1000B83B0, &qword_100084EC0);
  }

  else
  {
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  v30 = *(v0 + 264);
  v31 = *(v0 + 248);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 216);
  v29 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = [v14 description];
  v16 = sub_1000812B8();
  v18 = v17;

  v19 = [v14 dateIssued];
  sub_100080D78();

  v20 = type metadata accessor for CRXCPrescriptionRecord(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___CRXCPrescriptionRecord_accPayload];
  *v22 = v11;
  v22[1] = v10;
  v23 = &v21[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentName];
  *v23 = v16;
  v23[1] = v18;
  (*(v13 + 16))(&v21[OBJC_IVAR___CRXCPrescriptionRecord_enrollmentDate], v12, v29);
  *&v21[OBJC_IVAR___CRXCPrescriptionRecord_leftCalibrationData] = xmmword_100084890;
  *&v21[OBJC_IVAR___CRXCPrescriptionRecord_rightCalibrationData] = xmmword_100084890;
  *&v21[OBJC_IVAR___CRXCPrescriptionRecord_leftEye] = v9;
  *&v21[OBJC_IVAR___CRXCPrescriptionRecord_rightEye] = v30;
  v24 = v9;
  v25 = v30;
  sub_10000D808(v11, v10);
  sub_10001622C(0, 0xF000000000000000);
  sub_10001622C(0, 0xF000000000000000);
  *(v0 + 160) = v21;
  *(v0 + 168) = v20;
  v26 = objc_msgSendSuper2((v0 + 160), "init");

  sub_10001A164(0, 0xF000000000000000);
  sub_10001A164(0, 0xF000000000000000);
  sub_100006A34(v11, v10);
  (*(v13 + 8))(v12, v29);
  **(v0 + 176) = v26;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10001F2F4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10001F384, v1, 0);
}

uint64_t sub_10001F384()
{
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  v0[5] = sub_100016240(v1, qword_1000B7A58);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all enrollment data", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10001F50C;
  v6 = v0[3];

  return sub_10003F5C4(v6);
}

uint64_t sub_10001F50C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(sub_10001F68C, v6, 0);
  }
}

uint64_t sub_10001F68C(uint64_t a1)
{
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all vision prescription health records", v4, 2u);
  }

  v5 = *(v1 + 32);

  *(v1 + 56) = *(v5 + 160);

  return _swift_task_switch(sub_10001F79C, 0, 0);
}

uint64_t sub_10001F79C()
{
  v1 = *(*(v0 + 56) + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10001F86C;

  return sub_100064534(v1);
}

uint64_t sub_10001F86C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(sub_10001F9EC, v6, 0);
  }
}

uint64_t sub_10001F9EC(uint64_t a1)
{
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all ASA keys", v4, 2u);
  }

  v5 = v1[4];

  v6 = *(v5 + 152);
  v1[2] = 0;
  v7 = [v6 deleteAllASAKeysWithError:v1 + 2];
  v8 = v1[2];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v10 = v8;
    sub_100080C38();

    swift_willThrow();
    swift_errorRetain();
    v11 = sub_100080FF8();
    v12 = sub_1000815D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to delete ASA Keys: %@", v13, 0xCu);
      sub_10001A80C(v14, &qword_1000B83B0, &qword_100084EC0);
    }

    else
    {
    }
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_10001FC30()
{
  *(v1 + 104) = v0;
  sub_100006940(&qword_1000B7A10, &qword_100084E70);
  *(v1 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10001FCCC, v0, 0);
}

uint64_t sub_10001FCCC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_100081538();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = *(v2 + 184);
  v5 = sub_100022D08();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v2;

  swift_retain_n();
  v7 = sub_1000205B8(0, 0, v1, &unk_100084FA8, v6);
  v0[15] = v7;
  *(v2 + 184) = v7;

  v8 = swift_task_alloc();
  v0[16] = v8;
  v9 = sub_100006940(&qword_1000B7910, &unk_100084B20);
  v0[17] = v9;
  *v8 = v0;
  v8[1] = sub_10001FE70;

  return Task.result.getter(v0 + 2, v7, &type metadata for Any + 8, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_10001FE70()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_10001FF9C, v1, 0);
}

uint64_t sub_10001FF9C()
{
  if (*(v0 + 48))
  {
    *(v0 + 88) = *(v0 + 16);
    swift_willThrowTypedImpl();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1000068E4((v0 + 16), (v0 + 56));
    sub_100006940(&qword_1000B7B60, &qword_100084FB8);
    swift_dynamicCast();
    v3 = *(v0 + 96);

    v4 = *(v0 + 8);

    return v4(v3);
  }
}

uint64_t sub_1000200AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return _swift_task_switch(sub_1000200D0, a5, 0);
}

uint64_t sub_1000200D0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    v3 = sub_100006940(&qword_1000B7910, &unk_100084B20);
    *v2 = v0;
    v2[1] = sub_100020234;

    return Task.result.getter(v0 + 16, v1, &type metadata for Any + 8, v3, &protocol self-conformance witness table for Error);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = -1;
    sub_10001A80C(v0 + 16, &qword_1000B7B68, &qword_100084FC0);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1000203F0;

    return sub_100040A2C();
  }
}

uint64_t sub_100020234()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100020344, v1, 0);
}

uint64_t sub_100020344()
{
  sub_10001A80C(v0 + 16, &qword_1000B7B68, &qword_100084FC0);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1000203F0;

  return sub_100040A2C();
}

uint64_t sub_1000203F0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 72);

    return _swift_task_switch(sub_100020534, v6, 0);
  }
}

uint64_t sub_100020534()
{
  v1 = *(v0 + 56);
  v1[3] = sub_100006940(&qword_1000B7B70, &qword_100084FC8);
  *v1 = _swiftEmptyArrayStorage;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000205B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = v24 - v11;
  sub_10001A8DC(a3, v24 - v11, &qword_1000B7A10, &qword_100084E70);
  v13 = sub_100081538();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10001A80C(v12, &qword_1000B7A10, &qword_100084E70);
  }

  else
  {
    sub_100081528();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000814D8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100081358() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10001A80C(a3, &qword_1000B7A10, &qword_100084E70);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001A80C(a3, &qword_1000B7A10, &qword_100084E70);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100020864()
{
  *(v1 + 1408) = v0;

  return _swift_task_switch(sub_1000208F4, v0, 0);
}

uint64_t sub_1000208F4()
{
  *(v0 + 1416) = *(*(v0 + 1408) + 160);

  return _swift_task_switch(sub_10002098C, 0, 0);
}

uint64_t sub_10002098C()
{
  v1 = swift_task_alloc();
  *(v0 + 1424) = v1;
  v2 = sub_100006940(&qword_1000B7B50, &qword_100084F80);
  *v1 = v0;
  v1[1] = sub_100020AA8;
  v3 = *(v0 + 1416);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0x54636E7953746567, 0xEE00292873656D69, sub_100022D5C, v3, v2);
}

uint64_t sub_100020AA8()
{

  return _swift_task_switch(sub_100020BD0, 0, 0);
}

uint64_t sub_100020BD0()
{
  v1 = *(v0 + 1408);
  *(v0 + 1432) = *(v0 + 72);
  *(v0 + 1369) = *(v0 + 88);

  return _swift_task_switch(sub_100020C70, v1, 0);
}

uint64_t sub_100020C70()
{
  v1 = *(v0 + 1408);
  bzero((v0 + 89), 0x500uLL);
  uname((v0 + 89));
  *(v0 + 1392) = sub_100081368();
  *(v0 + 1400) = v2;
  *(v0 + 1448) = v2;
  *(v0 + 1456) = *(v1 + 176);
  v3 = swift_task_alloc();
  *(v0 + 1464) = v3;
  *v3 = v0;
  v3[1] = sub_100020D60;

  return sub_100043E34(0);
}

uint64_t sub_100020D60(uint64_t a1)
{
  v3 = *v2;
  v3[6] = v2;
  v3[7] = a1;
  v3[8] = v1;
  v4 = *v2;
  v3[184] = v1;

  if (v1)
  {
    v5 = v3[176];

    return _swift_task_switch(sub_1000214A0, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[185] = v6;
    *v6 = v4;
    v6[1] = sub_100020F24;

    return sub_100021688();
  }
}

uint64_t sub_100020F24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[186] = a2;
  v4[187] = v2;

  if (v2)
  {
    v5 = v4[176];
    v6 = sub_10002153C;
  }

  else
  {
    v5 = v4[182];
    v6 = sub_10002107C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002107C()
{
  v0[188] = *(v0[182] + 328);
  v1 = swift_task_alloc();
  v0[189] = v1;
  *v1 = v0;
  v1[1] = sub_100021148;

  return sub_100044500(3);
}

uint64_t sub_100021148(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1520) = v2;

  if (v2)
  {
    v7 = v6[176];
    v8 = sub_1000215D8;
  }

  else
  {
    v9 = v6[3];
    v10 = v6[7];
    v7 = v6[176];
    v6[191] = v6[174];
    v6[192] = a2;
    v6[193] = a1;
    v6[194] = v9;
    v6[195] = v10;
    v8 = sub_1000212C4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000212C4()
{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1488);
  v7 = *(v0 + 1448);
  v8 = *(v0 + 1369);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1432);
  if (v7)
  {
    v11 = *(v0 + 1528);
  }

  else
  {
    v11 = 0x6E776F6E6B6E55;
  }

  if (v7)
  {
    v12 = *(v0 + 1448);
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = type metadata accessor for CRXCSystemStatus();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___CRXCSystemStatus_healthLastPullTime] = v9;
  *&v14[OBJC_IVAR___CRXCSystemStatus_healthLastPushTime] = v10;
  v14[OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled] = v8;
  v15 = &v14[OBJC_IVAR___CRXCSystemStatus_hardwareModel];
  *v15 = v11;
  v15[1] = v12;
  v14[OBJC_IVAR___CRXCSystemStatus_guestMode] = 0;
  *&v14[OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion] = v1;
  v16 = &v14[OBJC_IVAR___CRXCSystemStatus_currentLocation];
  *v16 = v2;
  v16[1] = v6;
  v17 = &v14[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID];
  *v17 = 0;
  v17[1] = 0;
  *&v14[OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime] = v5;
  v18 = &v14[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation];
  *v18 = v3;
  v18[1] = v4;
  *(v0 + 1376) = v14;
  *(v0 + 1384) = v13;
  v19 = objc_msgSendSuper2((v0 + 1376), "init");
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_1000214A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002153C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000215D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000216A4()
{
  v26 = v0;
  v1 = [objc_opt_self() currentEstimates];
  sub_10000DC18(0, &qword_1000B7B58, RDEstimate_ptr);
  v2 = sub_100081488();

  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  v3 = sub_100081018();
  sub_100016240(v3, qword_1000B7A58);

  v4 = sub_100080FF8();
  v5 = sub_1000815C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = sub_100081498();
    v10 = sub_1000597A8(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "estimates: %s", v6, 0xCu);
    sub_1000068F4(v7);
  }

  if (v2 >> 62)
  {
    if (sub_1000817A8() < 2)
    {
      goto LABEL_10;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_10;
  }

  v11 = sub_100080FF8();
  v12 = sub_1000815B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "More than one potential current country code returned", v13, 2u);
  }

LABEL_10:
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_18:

LABEL_20:
    v23 = 0;
    v22 = 0;
    goto LABEL_21;
  }

  result = sub_1000817A8();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v15 = sub_1000816A8();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v2 + 32);
  }

  v16 = v15;

  v17 = [v16 countryCode];
  if (!v17)
  {

    goto LABEL_20;
  }

  v18 = v17;
  v19 = sub_1000812B8();
  v21 = v20;

  v22 = v21;
  v23 = v19;
LABEL_21:
  v24 = *(v0 + 8);

  return v24(v23, v22);
}

uint64_t sub_1000219E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_100081308();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100021AD8, v4, 0);
}

uint64_t sub_100021AD8()
{
  if (*(v0 + 144))
  {
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_100021C30;
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);

    return sub_100044894(v7, v6);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_100022010;
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);

    return sub_100045470(v3, v2);
  }
}

uint64_t sub_100021C30(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[19];
  if (v1)
  {
    v6 = sub_1000223F0;
  }

  else
  {
    v4[25] = a1;
    v6 = sub_100021D98;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100021D98()
{
  v1 = *(v0 + 200);
  *(v0 + 104) = sub_100006940(&unk_1000B8390, &qword_100086040);
  *(v0 + 80) = v1;
  sub_1000068E4((v0 + 80), (v0 + 16));
  v2 = objc_opt_self();
  sub_10002329C((v0 + 16), *(v0 + 40));
  v3 = sub_100081878();
  *(v0 + 112) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:v0 + 112];
  swift_unknownObjectRelease();
  v5 = *(v0 + 112);
  if (v4)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    v10 = sub_100080CF8();
    v12 = v11;

    isa = sub_100080CC8().super.isa;
    [v9 writeData:isa];

    sub_1000812F8();
    v14 = sub_1000812C8();
    v16 = v15;
    result = (*(v7 + 8))(v6, v8);
    if (v16 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 120);
    v19 = sub_100080CC8().super.isa;
    sub_10001A164(v14, v16);
    [v18 writeData:v19];
    sub_100006A34(v10, v12);

    sub_1000068F4((v0 + 16));

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = v5;
    sub_100080C38();

    swift_willThrow();
    sub_1000068F4((v0 + 16));

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_100022010(uint64_t a1)
{
  v4 = *v2;
  v4[27] = v1;

  v5 = v4[19];
  if (v1)
  {
    v6 = sub_100022480;
  }

  else
  {
    v4[28] = a1;
    v6 = sub_100022178;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100022178()
{
  v1 = *(v0 + 224);
  *(v0 + 72) = sub_100006940(&unk_1000B8390, &qword_100086040);
  *(v0 + 48) = v1;
  sub_1000068E4((v0 + 48), (v0 + 16));
  v2 = objc_opt_self();
  sub_10002329C((v0 + 16), *(v0 + 40));
  v3 = sub_100081878();
  *(v0 + 112) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:v0 + 112];
  swift_unknownObjectRelease();
  v5 = *(v0 + 112);
  if (v4)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    v10 = sub_100080CF8();
    v12 = v11;

    isa = sub_100080CC8().super.isa;
    [v9 writeData:isa];

    sub_1000812F8();
    v14 = sub_1000812C8();
    v16 = v15;
    result = (*(v7 + 8))(v6, v8);
    if (v16 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 120);
    v19 = sub_100080CC8().super.isa;
    sub_10001A164(v14, v16);
    [v18 writeData:v19];
    sub_100006A34(v10, v12);

    sub_1000068F4((v0 + 16));

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = v5;
    sub_100080C38();

    swift_willThrow();
    sub_1000068F4((v0 + 16));

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1000223F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022510(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10002329C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000225E0()
{
  sub_1000068F4((v0 + 112));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100022664(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100022758;

  return v5(v2 + 16);
}

uint64_t sub_100022758()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100022888()
{
  sub_100081518();
  v0[2] = sub_100081508();
  v2 = sub_1000814D8();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_10002291C, v2, v1);
}

uint64_t sub_10002291C()
{
  v1 = qword_1000B7A50;
  if (qword_1000B7A50)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    type metadata accessor for CorePrescriptionService();
    swift_allocObject();
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_100022A14;

    return sub_10001AC68();
  }
}

uint64_t sub_100022A14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = v4[4];
    v7 = sub_100022B3C;
  }

  else
  {
    v4[7] = a1;
    v5 = v4[3];
    v6 = v4[4];
    v7 = sub_100022BA0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100022B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022BA0()
{
  qword_1000B7A50 = *(v0 + 56);

  v2 = qword_1000B7A50;
  if (qword_1000B7A50)
  {

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100022D08()
{
  result = qword_1000B7B48;
  if (!qword_1000B7B48)
  {
    type metadata accessor for CorePrescriptionService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7B48);
  }

  return result;
}

uint64_t sub_100022D64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001A01C;

  return sub_1000200AC(a1, v4, v5, v7, v6);
}

uint64_t sub_100022E6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001AB70;

  return sub_10001C738(a1, a2, v6, v8, v7);
}

uint64_t sub_100022F6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100022FB4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001A01C;

  return sub_10001E46C(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_10002308C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000230C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AB70;

  return sub_100022664(a1, v4);
}

uint64_t sub_10002317C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000231C4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AB70;

  return sub_10001D90C(a1, v8, v4, v5, v6, v7);
}

void *sub_10002329C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000232E0(uint64_t a1)
{
  CloudEnvironmentDefaultVersion.unsafeMutableAddressor();
  if (!a1)
  {

    return 0;
  }

  v2 = *(a1 + 16);

  if (!v2 || (v3 = sub_1000525C4(0x6D6E6F7269766E65, 0xEB00000000746E65), (v4 & 1) == 0) || (sub_100006888(*(a1 + 56) + 32 * v3, v10), (swift_dynamicCast() & 1) == 0))
  {
    v5 = 0;
    if (!*(a1 + 16))
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v9 == 1;
  }

  if (*(a1 + 16))
  {
LABEL_11:
    v6 = sub_1000525C4(0x6E6F6973726576, 0xE700000000000000);
    if (v7)
    {
      sub_100006888(*(a1 + 56) + 32 * v6, v10);
      if (swift_dynamicCast())
      {
      }
    }
  }

  return v5;
}

void sub_100023440()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7BA8);
  sub_100016240(v0, qword_1000B7BA8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for CorePrescriptionServiceConnection();
    sub_100006940(&qword_1000B7BE8, &qword_100085110);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000236E8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100023790;

  return sub_10002B42C();
}

uint64_t sub_100023790(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_100080C28();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100023AAC(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  if (a1)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a5;
    v14 = sub_100080CF8();
    v16 = v15;

    v5[4] = v14;
    v5[5] = v16;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0xF000000000000000;
    v5[6] = 0;
    v5[7] = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v21 = a3;
  v22 = a5;
  v23 = a2;
  v14 = 0;
  v16 = 0xF000000000000000;
  v5[4] = 0;
  v5[5] = 0xF000000000000000;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_100080CF8();
  v19 = v18;

  v5[6] = v17;
  v5[7] = v19;
  if (a3)
  {
LABEL_4:
    v20 = sub_100081218();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v5[8] = v20;
  v24 = swift_task_alloc();
  v5[9] = v24;
  *v24 = v5;
  v24[1] = sub_100023C48;

  return sub_10002BA84(v14, v16, v17, v19, v20);
}

uint64_t sub_100023C48(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = v5[7];
  v9 = v5[6];
  v10 = v5[5];
  v11 = v5[4];
  v12 = v5[3];

  sub_10001A164(v9, v8);
  sub_10001A164(v11, v10);
  if (v3)
  {
    v13 = sub_100080C28();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](v12, a1, 0);
    _Block_release(v12);
  }

  v14 = *(v7 + 8);

  return v14();
}

uint64_t sub_100023FE4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002408C;

  return sub_10002C29C();
}

uint64_t sub_10002408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;

  v8 = *(v6 + 16);
  if (v4)
  {
    v9 = sub_100080C28();

    (v8)[2](v8, 0, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v10 = sub_100081288();
    v11 = sub_100081288();
    (v8)[2](v8, v10, v11, 0);

    _Block_release(v8);
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1000243D4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002447C;

  return sub_10002C9D4();
}

uint64_t sub_10002447C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *v3;

  if (v4)
  {
    a2 = sub_100080C28();

    v8 = a2;
LABEL_3:
    v9 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v8 = 0;
    goto LABEL_3;
  }

  v10 = sub_100081288();

  v9 = v10;
  v8 = 0;
  a2 = v10;
LABEL_6:
  v11 = *(v6 + 16);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_10002476C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B818;

  return sub_10002D07C();
}

uint64_t sub_100024988(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100024A30;

  return sub_10002D6D4();
}

uint64_t sub_100024A30(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v4;
  v9 = *v4;

  if (v5)
  {
    v10 = *(v8 + 16);
    v11 = sub_100080C28();

    (v10)[2](v10, 0, 0, v11);

    _Block_release(v10);
  }

  else
  {
    if (a3)
    {

      v12 = sub_100081288();
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v8 + 16);
    (v13)[2](v13, a1 & 1, v12, 0);

    _Block_release(v13);
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_100024D60(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100024E08;

  return sub_10002DD34();
}

uint64_t sub_100024E08(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_100080C28();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000250F4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002519C;

  return sub_10002E394();
}

uint64_t sub_10002519C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCEnrollmentBriefRecord();
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100025494(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100025540;

  return sub_10002E9EC();
}

uint64_t sub_100025540(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCEnrollmentRecord(0);
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_10002583C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B68C;

  return sub_10002F044();
}

uint64_t sub_100025A9C(int a1, int a2, int a3, uint64_t a4, int a5, void *aBlock)
{
  v6[2] = _Block_copy(aBlock);
  if (a4)
  {
    sub_1000812B8();
  }

  else
  {
    v8 = 0;
  }

  v6[3] = v8;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_100025B64;

  return sub_10002F69C();
}

uint64_t sub_100025B64(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_100080C28();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100025EA8(int a1, int a2, int a3, int a4, void *aBlock)
{
  *(v5 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_100025F54;

  return sub_10002FCF4();
}

uint64_t sub_100025F54(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCNewEnrollmentInfo();
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100026258(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_10003B688;

  return sub_10003034C();
}

uint64_t sub_10002648C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B688;

  return sub_1000309A4();
}

uint64_t sub_1000266AC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_100030FFC();
}

uint64_t sub_1000268D8(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B688;

  return sub_100031654();
}

uint64_t sub_100026AF8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_100031CAC();
}

uint64_t sub_100026D28(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10003B688;

  return sub_100032304();
}

uint64_t sub_100026F48(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_10003295C();
}

uint64_t sub_100027164(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B684;

  return sub_100032FB4();
}

uint64_t sub_100027380(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100027428;

  return sub_10003360C();
}

uint64_t sub_100027428()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_100080C28();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_100027700(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000277A8;

  return sub_100033C90();
}

uint64_t sub_1000277A8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_100080C28();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100027A9C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100027B44;

  return sub_1000342E8();
}

uint64_t sub_100027B44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_100080C28();

    v10 = v9;
    v11 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  else
  {
    isa = sub_100080CC8().super.isa;
    sub_10001A164(a1, a2);
    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v7 + 16);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100027E5C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = a1;
    v7 = a3;
    v8 = sub_100080CF8();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v3[4] = v8;
  v3[5] = v10;
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_100027F54;

  return sub_100034940();
}

uint64_t sub_100027F54()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_10001A164(v6, v5);
  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_100080C28();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100028288(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100028330;

  return sub_100034F98();
}

uint64_t sub_100028330(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    isa = sub_100081208().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_10002863C(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1000277A8;

  return sub_1000355F0();
}

uint64_t sub_100028888(int a1, int a2, int a3, void *aBlock)
{
  *(v4 + 16) = _Block_copy(aBlock);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10003B688;

  return sub_100035C48();
}

uint64_t sub_100028AB8(const void *a1, double a2)
{
  *(v2 + 16) = _Block_copy(a1);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100028B70;

  return sub_1000362A0(a2);
}

uint64_t sub_100028B70(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_100080C28();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for CRXCPrescriptionRecord(0);
    isa = sub_100081478().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100028E68(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10003B688;

  return sub_100036944(a1);
}

uint64_t sub_1000290AC(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = sub_100080CF8();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_1000291A4;

  return sub_100036FD4(v10, v12, a2);
}

uint64_t sub_1000291A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = v5[5];
  v9 = v5[4];
  v10 = v5[3];
  sub_100006A34(v9, v8);
  if (v3)
  {
    v11 = sub_100080C28();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1000294F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000295CC;

  return sub_10003758C(v6);
}

uint64_t sub_1000295CC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = sub_100080C28();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = sub_100080CC8().super.isa;
    sub_100006A34(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 32);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_100029934(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *aBlock, void *a8)
{
  v8[3] = a4;
  v8[4] = a8;
  v8[2] = a3;
  v8[5] = _Block_copy(aBlock);
  if (a6)
  {
    v16 = a6;
    v17 = a3;
    v18 = a4;
    v19 = a8;
    v20 = sub_100080CF8();
    v22 = v21;
  }

  else
  {
    v23 = a4;
    v24 = a8;
    v25 = a3;
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v8[6] = v20;
  v8[7] = v22;
  v26 = swift_task_alloc();
  v8[8] = v26;
  *v26 = v8;
  v26[1] = sub_100029A84;

  return sub_100037B50(a1, a2, a3, a4, a5, v20, v22);
}

uint64_t sub_100029A84(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 32);
  v10 = *v3;

  v11 = *(v7 + 56);
  v12 = *(v7 + 48);
  v13 = *(v7 + 24);

  sub_10001A164(v12, v11);
  if (v4)
  {
    isa = sub_100080C28();

    v15 = isa;
    v16 = 0;
  }

  else
  {
    isa = sub_100080CC8().super.isa;
    sub_100006A34(a1, a2);
    v16 = isa;
    v15 = 0;
  }

  v17 = *(v8 + 40);
  (v17)[2](v17, v16, v15);

  _Block_release(v17);
  v18 = *(v10 + 8);

  return v18();
}

uint64_t sub_100029E28(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_1000812B8();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  v12 = a1;
  v13 = a5;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = sub_100029F3C;

  return sub_100038164(v12, a2, v11, a3);
}

uint64_t sub_100029F3C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_100080C28();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10002A270(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B81C;

  return sub_1000387FC();
}

uint64_t sub_10002A48C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B68C;

  return sub_100038E98();
}

uint64_t sub_10002A6A8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003B688;

  return sub_100039534();
}

id sub_10002A750(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CorePrescriptionServiceConnection();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10002A7B0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_10002A6A8(v2);
}

uint64_t sub_10002A85C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001AB70;

  return v6();
}

uint64_t sub_10002A944()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_10002A85C(v2, v3, v4);
}

uint64_t sub_10002AA04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001A01C;

  return v7();
}

uint64_t sub_10002AAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AB70;

  return sub_10002AA04(a1, v4, v5, v6);
}

uint64_t sub_10002ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = v25 - v12;
  sub_10002AE74(a3, v25 - v12);
  v14 = sub_100081538();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10002AEE4(v13);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100081528();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000814D8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_100081358() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10002AEE4(a3);

    return v23;
  }

LABEL_8:
  sub_10002AEE4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002AE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AEE4(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AF4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002B044;

  return v6(a1);
}

uint64_t sub_10002B044()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002B13C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002B174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AB70;

  return sub_10002AF4C(a1, v4);
}

uint64_t sub_10002B22C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A01C;

  return sub_10002AF4C(a1, v4);
}

void sub_10002B2E4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000013, 0x8000000100093D50, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002B448()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "checkLensPresence()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002B5A8;

  return sub_100022888();
}

uint64_t sub_10002B5A8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002B8DC;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002B6C8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002B6C8()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000013, 0x8000000100093D50, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002B87C, 0, 0);
}

uint64_t sub_10002B87C()
{
  sub_10002B2E4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B8DC()
{
  sub_10002B2E4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002B93C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002ELL, 0x8000000100093D20, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10002BAAC, 0, 0);
}

uint64_t sub_10002BAAC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchCalibrationData(forACC:orASAKey:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10002BC08;

  return sub_100022888();
}

uint64_t sub_10002BC08(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  if (v1)
  {
    v5 = sub_10002BF58;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002BD28;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002BD28()
{
  v1 = v0[8];
  v2 = sub_1000232E0(v0[6]);
  v4 = v3;
  v6 = v5;
  v0[10] = v5;
  sub_10002329C((v1 + 112), *(v1 + 136));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10002BE00;
  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  return sub_100016628(v11, v10, v8, v9, v2, v4, v6);
}

uint64_t sub_10002BE00(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_10002C084;
  }

  else
  {
    v4[13] = a1;
    v6 = sub_10002BFB8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002BF58()
{
  sub_10002B93C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002BFB8()
{

  return _swift_task_switch(sub_10002C020, 0, 0);
}

uint64_t sub_10002C020()
{
  sub_10002B93C();
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_10002C084()
{

  return _swift_task_switch(sub_10002C0EC, 0, 0);
}

uint64_t sub_10002C0EC()
{
  sub_10002B93C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002C14C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0x6573556863746566, 0xEF29286F666E4972, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002C2B8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchUserInfo()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10002C414;

  return sub_100022888();
}

uint64_t sub_10002C414(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10002C6FC, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[5] = v5;
    *v5 = v4;
    v5[1] = sub_10002C594;

    return sub_10001BCD4();
  }
}

uint64_t sub_10002C594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v10[6] = v4;

  v11 = v10[3];
  if (v4)
  {

    v12 = sub_10002C82C;
    v11 = 0;
  }

  else
  {
    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;
    v12 = sub_10002C75C;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_10002C6FC()
{
  sub_10002C14C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002C75C()
{

  return _swift_task_switch(sub_10002C7C4, 0, 0);
}

uint64_t sub_10002C7C4()
{
  sub_10002C14C();
  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_10002C82C()
{
  sub_10002C14C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002C88C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093D00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002C9F0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getCurrentCountryCode()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10002CB4C;

  return sub_100022888();
}

uint64_t sub_10002CB4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10002CE08, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[5] = v5;
    *v5 = v4;
    v5[1] = sub_10002CCCC;

    return sub_100021688();
  }
}

uint64_t sub_10002CCCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_10002CECC;
  }

  else
  {

    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_10002CE68;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002CE08()
{
  sub_10002C88C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CE68()
{
  sub_10002C88C();
  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];

  return v1(v2, v3);
}

uint64_t sub_10002CECC()
{

  sub_10002C88C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002CF34()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093CE0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002D098()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getPrismActivationLocation()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002D1F8;

  return sub_100022888();
}

uint64_t sub_10002D1F8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002D52C;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002D318;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002D318()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093CE0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002D4CC, 0, 0);
}

uint64_t sub_10002D4CC()
{
  sub_10002CF34();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D52C()
{
  sub_10002CF34();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002D58C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093CC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002D6F0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getPrismActivationStatus()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002D850;

  return sub_100022888();
}

uint64_t sub_10002D850(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002DB88;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002D970;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002D970()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093CC0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002DB24, 0, 0);
}

uint64_t sub_10002DB24()
{
  sub_10002D58C();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10002DB88()
{
  sub_10002D58C();
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_10002DBEC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093CA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002DD50()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "canSkipGazeEnrollment()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002DEB0;

  return sub_100022888();
}

uint64_t sub_10002DEB0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002E1E8;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002DFD0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002DFD0()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093CA0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002E184, 0, 0);
}

uint64_t sub_10002E184()
{
  sub_10002DBEC();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10002E1E8()
{
  sub_10002DBEC();
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_10002E24C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000016, 0x8000000100093C80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002E3B0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "listBriefEnrollments()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002E510;

  return sub_100022888();
}

uint64_t sub_10002E510(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002E844;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002E630;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002E630()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000017, 0x8000000100093C60, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002E7E4, 0, 0);
}

uint64_t sub_10002E7E4()
{
  sub_10002E24C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E844()
{
  sub_10002E24C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002E8A4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000019, 0x8000000100093C40, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002EA08()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "listEnrollments(inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002EB68;

  return sub_100022888();
}

uint64_t sub_10002EB68(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002EE9C;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002EC88;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002EC88()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093C20, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002EE3C, 0, 0);
}

uint64_t sub_10002EE3C()
{
  sub_10002E8A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EE9C()
{
  sub_10002E8A4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002EEFC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093C00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002F060()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchEnrollment(withUUID:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002F1C0;

  return sub_100022888();
}

uint64_t sub_10002F1C0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002F4F4;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002F2E0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002F2E0()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001ALL, 0x8000000100093BE0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002F494, 0, 0);
}

uint64_t sub_10002F494()
{
  sub_10002EEFC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002F4F4()
{
  sub_10002EEFC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002F554()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000003ALL, 0x8000000100093BA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002F6B8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "addEnrollment(_:inGroup:fromSource:assigningUUID:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002F818;

  return sub_100022888();
}

uint64_t sub_10002F818(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10002FB4C;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002F938;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002F938()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000003ALL, 0x8000000100093BA0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10002FAEC, 0, 0);
}

uint64_t sub_10002FAEC()
{
  sub_10002F554();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002FB4C()
{
  sub_10002F554();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10002FBAC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002DLL, 0x8000000100093B70, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10002FD10()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "addEnrollments(_:inGroup:fromSource:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10002FE70;

  return sub_100022888();
}

uint64_t sub_10002FE70(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000301A4;
    v6 = 0;
  }

  else
  {
    v5 = sub_10002FF90;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002FF90()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000002DLL, 0x8000000100093B70, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100030144, 0, 0);
}

uint64_t sub_100030144()
{
  sub_10002FBAC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000301A4()
{
  sub_10002FBAC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100030204()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093B40, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100030368()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "renameEnrollment(withUUID:toNewName:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000304C8;

  return sub_100022888();
}

uint64_t sub_1000304C8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000307FC;
    v6 = 0;
  }

  else
  {
    v5 = sub_1000305E8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000305E8()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093B40, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10003079C, 0, 0);
}

uint64_t sub_10003079C()
{
  sub_100030204();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000307FC()
{
  sub_100030204();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10003085C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093B20, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_1000309C0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteEnrollment(withUUID:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100030B20;

  return sub_100022888();
}

uint64_t sub_100030B20(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100030E54;
    v6 = 0;
  }

  else
  {
    v5 = sub_100030C40;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100030C40()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093B20, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100030DF4, 0, 0);
}

uint64_t sub_100030DF4()
{
  sub_10003085C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030E54()
{
  sub_10003085C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100030EB4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000016, 0x8000000100093B00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100031018()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteAllEnrollments()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100031178;

  return sub_100022888();
}

uint64_t sub_100031178(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000314AC;
    v6 = 0;
  }

  else
  {
    v5 = sub_100031298;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100031298()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000016, 0x8000000100093B00, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_10003144C, 0, 0);
}

uint64_t sub_10003144C()
{
  sub_100030EB4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000314AC()
{
  sub_100030EB4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10003150C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AE0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100031670()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteEnrollments(inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000317D0;

  return sub_100022888();
}

uint64_t sub_1000317D0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100031B04;
    v6 = 0;
  }

  else
  {
    v5 = sub_1000318F0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000318F0()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AE0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100031AA4, 0, 0);
}

uint64_t sub_100031AA4()
{
  sub_10003150C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100031B04()
{
  sub_10003150C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100031B64()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100031CC8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteDemoLensEnrollments()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100031E28;

  return sub_100022888();
}

uint64_t sub_100031E28(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_10003215C;
    v6 = 0;
  }

  else
  {
    v5 = sub_100031F48;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100031F48()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AC0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_1000320FC, 0, 0);
}

uint64_t sub_1000320FC()
{
  sub_100031B64();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003215C()
{
  sub_100031B64();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000321BC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100032320()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "selectEnrollment(withUUID:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100032480;

  return sub_100022888();
}

uint64_t sub_100032480(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000327B4;
    v6 = 0;
  }

  else
  {
    v5 = sub_1000325A0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000325A0()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093AA0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100032754, 0, 0);
}

uint64_t sub_100032754()
{
  sub_1000321BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000327B4()
{
  sub_1000321BC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100032814()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093A80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100032978()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deselectCurrentEnrollment()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100032AD8;

  return sub_100022888();
}

uint64_t sub_100032AD8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100032E0C;
    v6 = 0;
  }

  else
  {
    v5 = sub_100032BF8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100032BF8()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001BLL, 0x8000000100093A80, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100032DAC, 0, 0);
}

uint64_t sub_100032DAC()
{
  sub_100032814();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100032E0C()
{
  sub_100032814();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100032E6C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000024, 0x8000000100093A50, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100032FD0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "syncEnrollmentsWithExternalSources()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100033130;

  return sub_100022888();
}

uint64_t sub_100033130(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100033464;
    v6 = 0;
  }

  else
  {
    v5 = sub_100033250;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100033250()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000024, 0x8000000100093A50, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100033404, 0, 0);
}

uint64_t sub_100033404()
{
  sub_100032E6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033464()
{
  sub_100032E6C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000334C4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000012, 0x8000000100093A30, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100033628()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deleteAllASAKeys()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_100033784;

  return sub_100022888();
}

uint64_t sub_100033784(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100033A20, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[5] = v5;
    *v5 = v4;
    v5[1] = sub_100033904;

    return sub_10001C168();
  }
}

uint64_t sub_100033904()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100033AE0;
  }

  else
  {

    v2 = sub_100033A80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033A20()
{
  sub_1000334C4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033A80()
{
  sub_1000334C4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033AE0()
{

  sub_1000334C4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100033B48()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000018, 0x8000000100093A10, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100033CAC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchPrescriptionState()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100033E0C;

  return sub_100022888();
}

uint64_t sub_100033E0C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100034140;
    v6 = 0;
  }

  else
  {
    v5 = sub_100033F2C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100033F2C()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000018, 0x8000000100093A10, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_1000340E0, 0, 0);
}

uint64_t sub_1000340E0()
{
  sub_100033B48();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034140()
{
  sub_100033B48();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000341A0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000022, 0x80000001000939E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100034304()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchActiveComfortAdjustmentData()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100034464;

  return sub_100022888();
}

uint64_t sub_100034464(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100034798;
    v6 = 0;
  }

  else
  {
    v5 = sub_100034584;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100034584()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000022, 0x80000001000939E0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100034738, 0, 0);
}

uint64_t sub_100034738()
{
  sub_1000341A0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034798()
{
  sub_1000341A0();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000347F8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000025, 0x80000001000939B0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10003495C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateActiveComfortAdjustmentData(_:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100034ABC;

  return sub_100022888();
}

uint64_t sub_100034ABC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100034DF0;
    v6 = 0;
  }

  else
  {
    v5 = sub_100034BDC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100034BDC()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000025, 0x80000001000939B0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100034D90, 0, 0);
}

uint64_t sub_100034D90()
{
  sub_1000347F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034DF0()
{
  sub_1000347F8();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100034E50()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093990, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100034FB4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchComfortAdjustmentData()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100035114;

  return sub_100022888();
}

uint64_t sub_100035114(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100035448;
    v6 = 0;
  }

  else
  {
    v5 = sub_100035234;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100035234()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093990, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_1000353E8, 0, 0);
}

uint64_t sub_1000353E8()
{
  sub_100034E50();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100035448()
{
  sub_100034E50();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000354A8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000026, 0x8000000100093960, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_10003560C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchPrismCorrection(forUUID:inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10003576C;

  return sub_100022888();
}

uint64_t sub_10003576C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_100035AA0;
    v6 = 0;
  }

  else
  {
    v5 = sub_10003588C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10003588C()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000026, 0x8000000100093960, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100035A40, 0, 0);
}

uint64_t sub_100035A40()
{
  sub_1000354A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100035AA0()
{
  sub_1000354A8();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100035B00()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000029, 0x8000000100093930, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100035C64()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "updatePrismCorrection(_:forUUID:inGroup:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100035DC4;

  return sub_100022888();
}

uint64_t sub_100035DC4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000360F8;
    v6 = 0;
  }

  else
  {
    v5 = sub_100035EE4;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100035EE4()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000029, 0x8000000100093930, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100036098, 0, 0);
}

uint64_t sub_100036098()
{
  sub_100035B00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000360F8()
{
  sub_100035B00();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100036158()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000026, 0x8000000100093900, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_1000362C0()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchPrescriptionRecords(withTimeout:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_10003641C;

  return sub_100022888();
}

uint64_t sub_10003641C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 4) = a1;
  *(v3 + 5) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000366D0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v3 + 6) = v5;
    *v5 = v4;
    v5[1] = sub_1000365A0;
    v6 = v3[2];

    return sub_10001C300(v6);
  }
}

uint64_t sub_1000365A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100036794;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_100036730;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000366D0()
{
  sub_100036158();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036730()
{
  sub_100036158();
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_100036794()
{

  sub_100036158();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000367FC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000013, 0x80000001000938E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100036964()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "purgeData(options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100036AC0;

  return sub_100022888();
}

uint64_t sub_100036AC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[4] = a1;
  v3[5] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100036D64, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[6] = v5;
    *v5 = v4;
    v5[1] = sub_100036C48;
    v6 = v3[2];

    return sub_10001F2F4(v6);
  }
}

uint64_t sub_100036C48()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100036E24;
  }

  else
  {

    v2 = sub_100036DC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100036D64()
{
  sub_1000367FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036DC4()
{
  sub_1000367FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036E24()
{

  sub_1000367FC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100036E8C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002FLL, 0x80000001000938B0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100036FD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_100036FF8, 0, 0);
}

uint64_t sub_100036FF8()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "decodeAppClipCodePayload(_:allowUnsupportedRX:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_100037154;

  return sub_100022888();
}

uint64_t sub_100037154(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100037320;
    v6 = 0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100037288;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100037288()
{
  v1 = *(v0 + 40);
  *(v0 + 56) = sub_10001345C(*(v0 + 16), *(v0 + 24), *(v0 + 72));
  *(v0 + 64) = v1;

  if (v1)
  {
    v2 = sub_1000373E4;
  }

  else
  {
    v2 = sub_100037380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100037320()
{
  sub_100036E8C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037380()
{
  sub_100036E8C();
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1000373E4()
{
  sub_100036E8C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100037444()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000001CLL, 0x8000000100093890, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_1000375AC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "encodeAppClipCodePayload(_:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100037708;

  return sub_100022888();
}

uint64_t sub_100037708(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_1000378E4;
    v6 = 0;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_10003783C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10003783C()
{
  v1 = v0[4];
  v2 = sub_100014974(v0[2]);
  v4 = v3;
  v0[6] = v1;

  if (v1)
  {
    v5 = sub_1000379A8;
  }

  else
  {
    v0[7] = v4;
    v0[8] = v2;
    v5 = sub_100037944;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000378E4()
{
  sub_100037444();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037944()
{
  sub_100037444();
  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];

  return v1(v2, v3);
}

uint64_t sub_1000379A8()
{
  sub_100037444();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100037A08()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000048, 0x8000000100093840, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100037B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100037B7C, 0, 0);
}

uint64_t sub_100037B7C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "generateAppClipCodePayload(version:lensType:odRX:osRX:colorCode:secret:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100037CD8;

  return sub_100022888();
}

uint64_t sub_100037CD8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  if (v1)
  {
    v5 = sub_100037EF8;
    v6 = 0;
  }

  else
  {
    v5 = sub_100037DF8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100037DF8()
{
  if (*(v0 + 32) == 0)
  {
    sub_10001A110();
    v1 = swift_allocError();
    *v2 = 1;
    swift_willThrow();

LABEL_4:
    *(v0 + 112) = v1;
    v7 = sub_100037FBC;
    goto LABEL_5;
  }

  v3 = *(v0 + 88);
  v4 = sub_100015288(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v6 = v5;
  v1 = v3;

  if (v3)
  {
    goto LABEL_4;
  }

  *(v0 + 96) = v6;
  *(v0 + 104) = v4;
  v7 = sub_100037F58;
LABEL_5:

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100037EF8()
{
  sub_100037A08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037F58()
{
  sub_100037A08();
  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_100037FBC()
{
  sub_100037A08();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10003801C()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002ALL, 0x8000000100093810, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100038164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100038188, 0, 0);
}

uint64_t sub_100038188()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "dumpDataStore(toFileHandle:table:options:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000382E4;

  return sub_100022888();
}

uint64_t sub_1000382E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10003858C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v4;
    v5[1] = sub_100038470;
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];
    v9 = v3[2];

    return sub_1000219E4(v9, v8, v6, v7);
  }
}

uint64_t sub_100038470()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10003864C;
  }

  else
  {

    v2 = sub_1000385EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003858C()
{
  sub_10003801C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000385EC()
{
  sub_10003801C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003864C()
{

  sub_10003801C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000386B4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD00000000000002CLL, 0x80000001000937E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100038818()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "validateAndApplySharedLensEnrollmentAssets()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_100038974;

  return sub_100022888();
}

uint64_t sub_100038974(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100038C24, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[5] = v5;
    *v5 = v4;
    v5[1] = sub_100038AF4;

    return sub_10001FC30();
  }
}

uint64_t sub_100038AF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_100038CE8;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_100038C84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100038C24()
{
  sub_1000386B4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038C84()
{
  sub_1000386B4();
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_100038CE8()
{

  sub_1000386B4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100038D50()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000013, 0x80000001000937C0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100038EB4()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchSystemStatus()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_100039010;

  return sub_100022888();
}

uint64_t sub_100039010(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000392C0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[5] = v5;
    *v5 = v4;
    v5[1] = sub_100039190;

    return sub_100020864();
  }
}

uint64_t sub_100039190(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_100039384;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_100039320;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000392C0()
{
  sub_100038D50();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100039320()
{
  sub_100038D50();
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_100039384()
{

  sub_100038D50();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000393EC()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100081018();
  sub_100016240(v0, qword_1000B7BA8);
  oslog = sub_100080FF8();
  v1 = sub_1000815B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093790, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Returning from %s", v2, 0xCu);
    sub_1000068F4(v3);
  }
}

uint64_t sub_100039550()
{
  if (qword_1000B73E8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  *(v0 + 16) = v1;
  sub_100016240(v1, qword_1000B7BA8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "migrateExistingRecordsToDataSharing()", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000396B0;

  return sub_100022888();
}

uint64_t sub_1000396B0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000399E4;
    v6 = 0;
  }

  else
  {
    v5 = sub_1000397D0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000397D0()
{
  v8 = v0;
  if (qword_1000B73E0 != -1)
  {
    swift_once();
  }

  sub_100016240(*(v0 + 16), qword_1000B7A58);
  v1 = sub_100080FF8();
  v2 = sub_1000815D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000597A8(0xD000000000000025, 0x8000000100093790, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s is not implemented on this platform", v3, 0xCu);
    sub_1000068F4(v4);
  }

  sub_10001A110();
  *(v0 + 48) = swift_allocError();
  *v5 = 9;
  swift_willThrow();

  return _swift_task_switch(sub_100039984, 0, 0);
}

uint64_t sub_100039984()
{
  sub_1000393EC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000399E4()
{
  sub_1000393EC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100039A44()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_10002A48C(v2);
}

uint64_t sub_100039AF0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_10002A270(v2);
}

uint64_t sub_100039BA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001AB70;

  return sub_100029E28(v2, v3, v4, v5, v6);
}

uint64_t sub_100039C6C()
{
  _Block_release(*(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100039CC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10001AB70;

  return sub_100029934(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100039DB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_1000294F8(v2, v3, v4);
}

uint64_t sub_100039E68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001AB70;

  return sub_1000290AC(v2, v3, v5, v4);
}

uint64_t sub_100039F30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100028E68(v2, v3);
}

uint64_t sub_100039FE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100028AB8(v3, v2);
}

uint64_t sub_10003A098()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001AB70;

  return sub_100028888(v2, v3, v4, v5);
}

uint64_t sub_10003A1B0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A1F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_10002863C(v2, v3, v4);
}

uint64_t sub_10003A2B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100028288(v2);
}

uint64_t sub_10003A364()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100027E5C(v2, v3, v4);
}

uint64_t sub_10003A418()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100027A9C(v2);
}

uint64_t sub_10003A4C4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A01C;

  return sub_100027700(v2);
}

uint64_t sub_10003A570()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100027380(v2);
}

uint64_t sub_10003A61C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100027164(v2);
}

uint64_t sub_10003A6C8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100026F48(v2);
}

uint64_t sub_10003A774()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100026D28(v2, v3);
}

uint64_t sub_10003A828()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100026AF8(v2);
}

uint64_t sub_10003A8D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_1000268D8(v2, v3);
}

uint64_t sub_10003A988()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_1000266AC(v2);
}

uint64_t sub_10003AA34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_10002648C(v2, v3);
}

uint64_t sub_10003AAE8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003AB38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001AB70;

  return sub_100026258(v2, v3, v4);
}

uint64_t sub_10003ABF8()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003AC40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001AB70;

  return sub_100025EA8(v2, v3, v4, v5, v6);
}

uint64_t sub_10003AD14()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003AD64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001AB70;

  return sub_100025A9C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10003AE40()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AE88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_10002583C(v2, v3);
}

uint64_t sub_10003AF3C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AF7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001AB70;

  return sub_100025494(v2, v3);
}

uint64_t sub_10003B030()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_1000250F4(v2);
}

uint64_t sub_10003B0DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100024D60(v2);
}

uint64_t sub_10003B188()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100024988(v2);
}

uint64_t sub_10003B234()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_10002476C(v2);
}

uint64_t sub_10003B2E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_1000243D4(v2);
}

uint64_t sub_10003B38C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_100023FE4(v2);
}

uint64_t sub_10003B438()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003B490()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001AB70;

  return sub_100023AAC(v2, v3, v4, v5, v6);
}

uint64_t sub_10003B558()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B598()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AB70;

  return sub_1000236E8(v2);
}

uint64_t sub_10003B644()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10003B820()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7BF0);
  sub_100016240(v0, qword_1000B7BF0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for CorePrescriptionServiceDelegate();
    sub_100006940(&qword_1000B7C98, &qword_1000856D8);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

id sub_10003B9B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CorePrescriptionServiceDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10003BA10(void *a1)
{
  v2 = sub_100081288();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v18 == 1)
    {
      v4 = [objc_allocWithZone(type metadata accessor for CorePrescriptionServiceConnection()) init];
      v5 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP23CorePrescriptionService31CorePrescriptionServiceProtocol_];
      [a1 setExportedInterface:v5];

      [a1 setExportedObject:v4];
      [a1 resume];

      return 1;
    }
  }

  else
  {
    sub_10000D014(v21);
  }

  [a1 invalidate];
  [a1 auditToken];
  v7 = bundleIDForAuditToken(v21);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000812B8();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
    v9 = 0x296C696E28;
  }

  if (qword_1000B73F0 != -1)
  {
    swift_once();
  }

  v12 = sub_100081018();
  sub_100016240(v12, qword_1000B7BF0);
  v13 = a1;

  v14 = sub_100080FF8();
  v15 = sub_1000815D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v21[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_1000597A8(0xD000000000000031, 0x8000000100093F60, v21);
    *(v16 + 12) = 1024;
    *(v16 + 14) = [v13 processIdentifier];

    *(v16 + 18) = 2080;
    v17 = sub_1000597A8(v9, v11, v21);

    *(v16 + 20) = v17;
    _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement: %s, client PID: (%d, client bundle: %s", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t AccessoryDataFetchEnvironment.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_10003BD98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

unint64_t CorePrescriptionServiceError.errorUserInfo.getter(uint64_t a1)
{
  sub_100006940(&unk_1000B8360, &unk_1000856E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_100081338();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_10003C570(inited);
  swift_setDeallocating();
  sub_10003C6A0(inited + 32);
  v6 = CorePrescriptionServiceError.errorDescription.getter(a1);
  v8 = v7;
  v9 = sub_1000812B8();
  v11 = v10;
  v16 = &type metadata for String;
  *&v15 = v6;
  *(&v15 + 1) = v8;
  sub_1000068E4(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003C2FC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  return v5;
}

uint64_t CorePrescriptionServiceError.errorDescription.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    switch(a1)
    {
      case 9:
        return 0xD000000000000028;
      case 10:
        return 0xD000000000000011;
      case 11:
        return 0xD000000000000013;
    }

    goto LABEL_24;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0x2064696C61766E49;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

LABEL_24:
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  if (a1 == 3)
  {
    return 0xD000000000000010;
  }

  if (a1 == 4)
  {
    return 0xD000000000000011;
  }

  return 0x6C616E7265746E49;
}

Swift::Int sub_10003C128(uint64_t a1, uint64_t a2)
{
  sub_100081988();
  sub_100081238();
  return sub_1000819B8();
}

uint64_t sub_10003C18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003CE64();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10003C1D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003CC10(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10003C20C(uint64_t a1)
{
  v2 = sub_10003CE64();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10003C248(uint64_t a1)
{
  v2 = sub_10003CE64();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10003C2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003CE64();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

_OWORD *sub_10003C2FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000525C4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000537E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100052730(v16, a4 & 1);
    v11 = sub_1000525C4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1000818E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000068F4(v22);

    return sub_1000068E4(a1, v22);
  }

  else
  {
    sub_100053504(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_10003C44C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10005263C(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100053988();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1000529E8(v14, a3 & 1);
    v9 = sub_10005263C(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1000818E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_100053570(v9, a2 & 1, a1, v19);
  }
}

unint64_t sub_10003C570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006940(&qword_1000B7D58, &qword_100085A10);
    v3 = sub_1000817D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A8DC(v4, &v13, &qword_1000B7D00, qword_100085E80);
      v5 = v13;
      v6 = v14;
      result = sub_1000525C4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000068E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003C6A0(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B7D00, qword_100085E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10003C708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100006940(&qword_1000B7D38, &qword_1000859F0);
  v3 = sub_1000817D8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10005263C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_10005263C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003C818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006940(&unk_1000B83D0, &unk_1000859E0);
    v3 = sub_1000817D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A8DC(v4, v11, &qword_1000B7D30, &unk_100085BC0);
      v5 = v11[0];
      result = sub_1000526A8(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_1000068E4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003C940(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000B7D40, &unk_100085A00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100006940(&qword_1000B7D48, qword_100086060);
    v9 = sub_1000817D8();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10001A8DC(v11, v7, &qword_1000B7D40, &unk_100085A00);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1000525C4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for DataManager.StateInfo(0);
      result = sub_10003CE00(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003CB14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006940(&qword_1000B83F0, &qword_1000859F8);
    v3 = sub_1000817D8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000525C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003CC10(uint64_t result)
{
  if ((result - 12) < 0xFFFFFFFFFFFFFFF5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10003CC28()
{
  result = qword_1000B7D08;
  if (!qword_1000B7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D08);
  }

  return result;
}

unint64_t sub_10003CC80()
{
  result = qword_1000B7D10;
  if (!qword_1000B7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D10);
  }

  return result;
}

unint64_t sub_10003CCDC()
{
  result = qword_1000B7D18;
  if (!qword_1000B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D18);
  }

  return result;
}

unint64_t sub_10003CD34()
{
  result = qword_1000B7D20;
  if (!qword_1000B7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D20);
  }

  return result;
}

unint64_t sub_10003CD8C()
{
  result = qword_1000B7D28;
  if (!qword_1000B7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D28);
  }

  return result;
}

uint64_t sub_10003CE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.StateInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003CE64()
{
  result = qword_1000B7D50;
  if (!qword_1000B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7D50);
  }

  return result;
}

Swift::String __swiftcall Data.toHexString()()
{
  sub_10003D7BC(v0, v1);
  sub_100006940(&qword_1000B7530, &qword_100089380);
  sub_10003EEE8(&qword_1000B88A0, &qword_1000B7530, &qword_100089380, &protocol conformance descriptor for [A]);
  v2 = sub_100081248();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (sub_100081398())
  {
    goto LABEL_148;
  }

  result = sub_100081398();
  if (!result)
  {
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v3 = result;
  v80 = _swiftEmptyArrayStorage;
  result = sub_10003E078(0, result & ~(result >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v80;
    do
    {
      v5 = sub_100081438();
      v80 = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_10003E078((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v80;
      }

      v4[2] = v8 + 1;
      v9 = &v4[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      result = sub_1000813A8();
      --v3;
    }

    while (v3);
LABEL_11:
    v79 = v4[2];
    if (v79)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v15 = __OFADD__(v13, 2);
        v13 += 2;
        if (v15)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v12;
        if (v13 >= v79)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v14 = 0;
LABEL_19:
    v82 = _swiftEmptyArrayStorage;
    result = sub_10003E058(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      goto LABEL_164;
    }

    v16 = v82;
    if (v14)
    {
      v17 = 0;
      v18 = v4 + 4;
      do
      {
        if (v17 >= v79)
        {
          goto LABEL_152;
        }

        v19 = v17 + 2;
        if (__OFADD__(v17, 2))
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v17 + 2;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_153;
        }

        v21 = v4[2];
        if (v17 >= v21)
        {
          goto LABEL_154;
        }

        if (v17 + 1 >= v21)
        {
          goto LABEL_155;
        }

        v22 = v18[2 * v17 + 1];
        v23 = &v18[2 * v17 + 2];
        v24 = *v23;
        v25 = v23[1];
        v80 = v18[2 * v17];
        v81 = v22;
        v26 = v16;
        swift_bridgeObjectRetain_n();

        v83._countAndFlagsBits = v24;
        v83._object = v25;
        sub_1000813B8(v83);

        v16 = v26;
        v27 = v80;
        v82 = v26;
        v28 = v26[2];
        v29 = v16[3];
        if (v28 >= v29 >> 1)
        {
          result = sub_10003E058((v29 > 1), v28 + 1, 1);
          v16 = v82;
        }

        v16[2] = v28 + 1;
        v30 = &v16[2 * v28];
        v30[4] = v27;
        v30[5] = v22;
        v17 = v20;
        --v14;
      }

      while (v14);
      if (v20 >= v79)
      {
LABEL_48:
        v45 = v16;

        v46 = v45;
        v47 = v45[2];
        if (v47)
        {
          v48 = 0;
          v49 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v48 >= v46[2])
            {
              goto LABEL_156;
            }

            v50 = &v45[2 * v48 + 4];
            v51 = *v50;
            v52 = v50[1];
            ++v48;
            v53 = HIBYTE(v52) & 0xF;
            v54 = v51 & 0xFFFFFFFFFFFFLL;
            if ((v52 & 0x2000000000000000) != 0)
            {
              v55 = HIBYTE(v52) & 0xF;
            }

            else
            {
              v55 = v51 & 0xFFFFFFFFFFFFLL;
            }

            if (!v55)
            {
              goto LABEL_135;
            }

            if ((v52 & 0x1000000000000000) == 0)
            {
              break;
            }

            LOWORD(v51) = sub_10003E734(v51, v52, 16);

            v46 = v45;
            if ((v51 & 0x100) == 0)
            {
LABEL_138:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10003DB4C(0, *(v49 + 2) + 1, 1, v49, &qword_1000B7DA8, qword_1000867C0);
                v49 = result;
              }

              v75 = *(v49 + 2);
              v74 = *(v49 + 3);
              if (v75 >= v74 >> 1)
              {
                result = sub_10003DB4C((v74 > 1), v75 + 1, 1, v49, &qword_1000B7DA8, qword_1000867C0);
                v46 = v45;
                v49 = result;
              }

              else
              {
                v46 = v45;
              }

              *(v49 + 2) = v75 + 1;
              v49[v75 + 32] = v51;
            }

LABEL_135:
            if (v48 == v47)
            {
              goto LABEL_146;
            }
          }

          if ((v52 & 0x2000000000000000) != 0)
          {
            v80 = v51;
            v81 = v52 & 0xFFFFFFFFFFFFFFLL;
            if (v51 == 43)
            {
              if (!v53)
              {
                goto LABEL_160;
              }

              if (--v53)
              {
                LOBYTE(v51) = 0;
                v66 = &v80 + 1;
                while (1)
                {
                  v67 = *v66;
                  v68 = v67 - 48;
                  if ((v67 - 48) >= 0xA)
                  {
                    if ((v67 - 65) < 6)
                    {
                      v68 = v67 - 55;
                    }

                    else
                    {
                      if ((v67 - 97) > 5)
                      {
                        goto LABEL_133;
                      }

                      v68 = v67 - 87;
                    }
                  }

                  if (v51 > 0xFu)
                  {
                    break;
                  }

                  LOBYTE(v51) = v68 + 16 * v51;
                  ++v66;
                  if (!--v53)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }

            else if (v51 == 45)
            {
              if (!v53)
              {
                goto LABEL_162;
              }

              if (--v53)
              {
                LOBYTE(v51) = 0;
                v60 = &v80 + 1;
                while (1)
                {
                  v61 = *v60;
                  v62 = v61 - 48;
                  if ((v61 - 48) >= 0xA)
                  {
                    if ((v61 - 65) < 6)
                    {
                      v62 = v61 - 55;
                    }

                    else
                    {
                      if ((v61 - 97) > 5)
                      {
                        goto LABEL_133;
                      }

                      v62 = v61 - 87;
                    }
                  }

                  if (v51 > 0xFu)
                  {
                    break;
                  }

                  LODWORD(v51) = 16 * (v51 & 0xF) - v62;
                  if ((v51 & 0xFFFFFF00) != 0)
                  {
                    break;
                  }

                  ++v60;
                  if (!--v53)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }

            else if (v53)
            {
              LOBYTE(v51) = 0;
              v71 = &v80;
              while (1)
              {
                v72 = *v71;
                v73 = v72 - 48;
                if ((v72 - 48) >= 0xA)
                {
                  if ((v72 - 65) < 6)
                  {
                    v73 = v72 - 55;
                  }

                  else
                  {
                    if ((v72 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v73 = v72 - 87;
                  }
                }

                if (v51 > 0xFu)
                {
                  break;
                }

                LOBYTE(v51) = v73 + 16 * v51;
                ++v71;
                if (!--v53)
                {
                  goto LABEL_134;
                }
              }
            }

            goto LABEL_133;
          }

          if ((v51 & 0x1000000000000000) != 0)
          {
            result = (v52 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_1000816B8();
            v46 = v45;
          }

          v56 = *result;
          if (v56 == 43)
          {
            if (v54 < 1)
            {
              goto LABEL_163;
            }

            v53 = v54 - 1;
            if (v54 == 1)
            {
              goto LABEL_133;
            }

            if (result)
            {
              LOBYTE(v51) = 0;
              v63 = (result + 1);
              while (1)
              {
                v64 = *v63;
                v65 = v64 - 48;
                if ((v64 - 48) >= 0xA)
                {
                  if ((v64 - 65) < 6)
                  {
                    v65 = v64 - 55;
                  }

                  else
                  {
                    if ((v64 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v65 = v64 - 87;
                  }
                }

                if (v51 > 0xFu)
                {
                  goto LABEL_133;
                }

                LOBYTE(v51) = v65 + 16 * v51;
                ++v63;
                if (!--v53)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else if (v56 == 45)
          {
            if (v54 < 1)
            {
              goto LABEL_161;
            }

            v53 = v54 - 1;
            if (v54 == 1)
            {
              goto LABEL_133;
            }

            if (result)
            {
              LOBYTE(v51) = 0;
              v57 = (result + 1);
              while (1)
              {
                v58 = *v57;
                v59 = v58 - 48;
                if ((v58 - 48) >= 0xA)
                {
                  if ((v58 - 65) < 6)
                  {
                    v59 = v58 - 55;
                  }

                  else
                  {
                    if ((v58 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v59 = v58 - 87;
                  }
                }

                if (v51 > 0xFu)
                {
                  goto LABEL_133;
                }

                LODWORD(v51) = 16 * (v51 & 0xF) - v59;
                if ((v51 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_133;
                }

                ++v57;
                if (!--v53)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else
          {
            if (!v54)
            {
LABEL_133:
              LOBYTE(v51) = 0;
              LOBYTE(v53) = 1;
LABEL_134:
              LOBYTE(v82) = v53;
              if ((v53 & 1) == 0)
              {
                goto LABEL_138;
              }

              goto LABEL_135;
            }

            if (result)
            {
              LOBYTE(v51) = 0;
              while (1)
              {
                v69 = *result;
                v70 = v69 - 48;
                if ((v69 - 48) >= 0xA)
                {
                  if ((v69 - 65) < 6)
                  {
                    v70 = v69 - 55;
                  }

                  else
                  {
                    if ((v69 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v70 = v69 - 87;
                  }
                }

                if (v51 > 0xFu)
                {
                  goto LABEL_133;
                }

                LOBYTE(v51) = v70 + 16 * v51;
                ++result;
                if (!--v54)
                {
                  LOBYTE(v53) = 0;
                  goto LABEL_134;
                }
              }
            }
          }

          LOBYTE(v51) = 0;
          LOBYTE(v53) = 0;
          goto LABEL_134;
        }

        v49 = _swiftEmptyArrayStorage;
LABEL_146:

        v76 = *(v49 + 2);
        if (v76)
        {
          v77 = sub_100081398();

          if (v77 / v76 != 2)
          {
LABEL_148:

            return 0;
          }
        }

        else
        {
        }

        v78 = sub_10003EE08(v49);

        return v78;
      }
    }

    else
    {
      if (!v79)
      {
        goto LABEL_48;
      }

      v19 = 0;
    }

    v31 = &v4[2 * v19 + 7];
    while (1)
    {
      v32 = v19 + 2;
      v33 = __OFADD__(v19, 2);
      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      v34 = v4[2];
      if (v19 >= v34)
      {
        goto LABEL_158;
      }

      v35 = v19 + 1;
      if (v35 >= v34)
      {
        goto LABEL_159;
      }

      v36 = *(v31 - 2);
      v37 = *(v31 - 1);
      v38 = *v31;
      v80 = *(v31 - 3);
      v81 = v36;
      v39 = v16;
      swift_bridgeObjectRetain_n();

      v84._countAndFlagsBits = v37;
      v84._object = v38;
      sub_1000813B8(v84);

      v16 = v39;
      v40 = v80;
      v82 = v39;
      v41 = v39[2];
      v42 = v16[3];
      if (v41 >= v42 >> 1)
      {
        result = sub_10003E058((v42 > 1), v41 + 1, 1);
        v16 = v82;
      }

      v31 += 4;
      v16[2] = v41 + 1;
      v43 = &v16[2 * v41];
      v43[4] = v40;
      v43[5] = v36;
      v44 = !v33;
      v19 = v35 + 1;
      if (v32 >= v79)
      {
        v44 = 0;
      }

      if (!v44)
      {
        goto LABEL_48;
      }
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10003D7BC(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10003E058(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_100080AE8();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_100080B18();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_100080AE8();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_100080B18();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100006940(&qword_1000B7528, &unk_100086800);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100084830;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1000812E8();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10003E058((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}