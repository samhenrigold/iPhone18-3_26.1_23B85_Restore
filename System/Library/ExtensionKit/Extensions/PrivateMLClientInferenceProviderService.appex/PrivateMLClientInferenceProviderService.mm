uint64_t sub_100001328()
{
  v0 = sub_100007954();
  sub_10000623C(v0, qword_100010180);
  sub_1000054EC(v0, qword_100010180);
  return sub_100007944();
}

uint64_t sub_10000140C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t InferenceProviderAdapter.prewarmHint(_:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_100007794();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_100007904();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100001564, 0, 0);
}

uint64_t sub_100001564()
{
  v68 = v0;
  sub_100005DA0(*(v0 + 144), v0 + 56);
  sub_1000054A4(&qword_100010198, &qword_100007E88);
  sub_1000054A4(&qword_1000101A0, &qword_100007E90);
  if (swift_dynamicCast())
  {
    sub_10000140C((v0 + 96), v0 + 16);
    if (qword_100010178 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 136);
    v6 = sub_100007954();
    sub_1000054EC(v6, qword_100010180);
    v7 = *(v4 + 16);
    v7(v2, v5, v3);
    v7(v1, v5, v3);
    v8 = sub_100007934();
    v9 = sub_100007A24();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    if (v10)
    {
      v65 = v9;
      v15 = *(v0 + 160);
      v16 = *(v0 + 168);
      v61 = *(v0 + 152);
      v17 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v17 = 136315394;
      log = v8;
      sub_1000078E4();
      v18 = sub_100007784();
      v20 = v19;
      (*(v15 + 8))(v16, v61);
      v21 = *(v13 + 8);
      v21(v12, v14);
      v22 = sub_100005524(v18, v20, &v67);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = sub_1000078F4();
      v25 = v24;
      v21(v11, v14);
      v26 = sub_100005524(v23, v25, &v67);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v65, "prewarmHint. sessionUUID=%s modelBundleIdentifier=%s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v53 = *(v13 + 8);
      v53(v11, v14);
      v53(v12, v14);
    }

    v54 = *(v0 + 40);
    v55 = *(v0 + 48);
    sub_100005ACC((v0 + 16), v54);
    v56 = swift_task_alloc();
    *(v0 + 224) = v56;
    *v56 = v0;
    v56[1] = sub_100001BCC;
    v57 = *(v0 + 136);

    return dispatch thunk of InferenceProviderWithPrewarm.prewarmHint(_:)(v57, v54, v55);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100006118(v0 + 96, &qword_1000101A8, &qword_100007E98);
    if (qword_100010178 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 176);
    v30 = *(v0 + 184);
    v31 = *(v0 + 136);
    v32 = sub_100007954();
    sub_1000054EC(v32, qword_100010180);
    v33 = *(v30 + 16);
    v33(v28, v31, v29);
    v33(v27, v31, v29);
    v34 = sub_100007934();
    v35 = sub_100007A24();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 192);
    v38 = *(v0 + 200);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v66 = v35;
      v41 = *(v0 + 160);
      v42 = *(v0 + 168);
      v62 = *(v0 + 152);
      v43 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v43 = 136315394;
      loga = v34;
      sub_1000078E4();
      v44 = sub_100007784();
      v46 = v45;
      (*(v41 + 8))(v42, v62);
      v47 = *(v39 + 8);
      v47(v38, v40);
      v48 = sub_100005524(v44, v46, &v67);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = sub_1000078F4();
      v51 = v50;
      v47(v37, v40);
      v52 = sub_100005524(v49, v51, &v67);

      *(v43 + 14) = v52;
      _os_log_impl(&_mh_execute_header, loga, v66, "prewarmHint skipped, not implemented. sessionUUID=%s modelBundleIdentifier=%s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v58 = *(v39 + 8);
      v58(v37, v40);
      v58(v38, v40);
    }

    v59 = *(v0 + 8);

    return v59();
  }
}

uint64_t sub_100001BCC()
{

  return _swift_task_switch(sub_100001CC8, 0, 0);
}

uint64_t sub_100001CC8()
{
  sub_100005B10((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s39PrivateMLClientInferenceProviderService0cD7AdapterV15transitionAsset_2toy20ModelManagerServices0cdH10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000078D4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100001E20, 0, 0);
}

uint64_t sub_100001E20()
{
  v21 = v0;
  if (qword_100010178 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_100007954();
  sub_1000054EC(v5, qword_100010180);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_100007934();
  v7 = sub_100007A24();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_100006000(&qword_1000101B0, 255, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v14 = sub_100007A84();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100005524(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "transitionAsset not implemented. asset=%s", v12, 0xCu);
    sub_100005B10(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t _s39PrivateMLClientInferenceProviderService0cD7AdapterV15transitionAsset14withIdentifier2to4fromySS_20ModelManagerServices9LoadStateOAJtYaAH0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = v5;
  v6[29] = a5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_1000077D4();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v8 = sub_100007914();
  v6[34] = v8;
  v6[35] = *(v8 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000021B4, 0, 0);
}

uint64_t sub_1000021B4()
{
  v39 = v0;
  if (qword_100010178 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[26];
  v5 = v0[27];
  v7 = sub_100007954();
  sub_1000054EC(v7, qword_100010180);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);

  v9 = sub_100007934();
  v10 = sub_100007A24();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[38];
  v12 = v0[39];
  v15 = v0[34];
  v14 = v0[35];
  if (v11)
  {
    v17 = v0[24];
    v16 = v0[25];
    v37 = v10;
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100005524(v17, v16, &v38);
    *(v18 + 12) = 2080;
    sub_100006000(&qword_1000101E0, 255, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
    v19 = sub_100007A84();
    v21 = v20;
    log = v9;
    v22 = *(v14 + 8);
    v22(v12, v15);
    v23 = sub_100005524(v19, v21, &v38);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v24 = sub_100007A84();
    v26 = v25;
    v22(v13, v15);
    v27 = sub_100005524(v24, v26, &v38);

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v37, "transitionAsset with state asset=%s to=%s from=%s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v14 + 8);
    v22(v13, v15);
    v22(v12, v15);
  }

  v0[40] = v22;
  v28 = v0[28];
  v29 = v28[3];
  v30 = v28[4];
  sub_100005ACC(v28, v29);
  v31 = swift_task_alloc();
  v0[41] = v31;
  *v31 = v0;
  v31[1] = sub_100002528;
  v32 = v0[25];
  v33 = v0[26];
  v34 = v0[24];

  return dispatch thunk of InferenceProvider.transitionAsset(withIdentifier:to:)(v34, v32, v33, v29, v30);
}

uint64_t sub_100002528()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100002CF0;
  }

  else
  {
    v2 = sub_10000263C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000263C()
{
  v1 = enum case for LoadState.unloaded(_:);
  v2 = *(*(v0 + 280) + 104);
  v2(*(v0 + 296), enum case for LoadState.unloaded(_:), *(v0 + 272));
  sub_100006000(&qword_1000101D8, 255, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
  sub_1000079D4();
  sub_1000079D4();
  if (*(v0 + 104) == *(v0 + 120) && *(v0 + 112) == *(v0 + 128))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_100007AA4();
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 272));

  if (v3)
  {
    v4 = *(v0 + 224);
    v5 = v4[3];
    v6 = v4[4];
    sub_100005ACC(v4, v5);
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    *v7 = v0;
    v7[1] = sub_1000029E0;
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);

    return dispatch thunk of InferenceProvider.loadOut(inferenceAssetIdentifier:)(v9, v8, v5, v6);
  }

  v2(*(v0 + 288), v1, *(v0 + 272));
  sub_1000079D4();
  sub_1000079D4();
  v10 = *(v0 + 320);
  v11 = *(v0 + 288);
  v12 = *(v0 + 272);
  if (*(v0 + 136) == *(v0 + 152) && *(v0 + 144) == *(v0 + 160))
  {
    v10(*(v0 + 288), *(v0 + 272));

LABEL_13:
    v14 = *(v0 + 224);
    v15 = v14[3];
    v16 = v14[4];
    sub_100005ACC(v14, v15);
    v17 = swift_task_alloc();
    *(v0 + 360) = v17;
    *v17 = v0;
    v17[1] = sub_100002B68;
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);

    return dispatch thunk of InferenceProvider.loadIn(inferenceAssetIdentifier:)(v19, v18, v15, v16);
  }

  v13 = sub_100007AA4();
  v10(v11, v12);

  if (v13)
  {
    goto LABEL_13;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000029E0()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100003060, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100002B68()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000033D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100002CF0()
{
  v1 = v0[42];
  v0[21] = v1;
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v3 = v0[32];
    v2 = v0[33];
    v4 = v0[30];
    v5 = v0[31];
    v6 = v0[29];

    (*(v5 + 32))(v3, v2, v4);
    (*(v5 + 16))(v6, v3, v4);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v7 = v0[31];
    v16 = v0[30];
    v8 = v0[29];

    v9 = sub_100007774();
    v0[22] = v1;
    swift_errorRetain();
    sub_1000079A4();
    v10 = [v9 domain];
    sub_100007994();

    [v9 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v12;
    swift_getErrorValue();
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v13;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v7 + 104))(v8, enum case for InferenceError.inferenceFailed(_:), v16);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100003060()
{
  v1 = v0[44];
  v0[21] = v1;
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v3 = v0[32];
    v2 = v0[33];
    v4 = v0[30];
    v5 = v0[31];
    v6 = v0[29];

    (*(v5 + 32))(v3, v2, v4);
    (*(v5 + 16))(v6, v3, v4);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v7 = v0[31];
    v16 = v0[30];
    v8 = v0[29];

    v9 = sub_100007774();
    v0[22] = v1;
    swift_errorRetain();
    sub_1000079A4();
    v10 = [v9 domain];
    sub_100007994();

    [v9 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v12;
    swift_getErrorValue();
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v13;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v7 + 104))(v8, enum case for InferenceError.inferenceFailed(_:), v16);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000033D0()
{
  v1 = v0[46];
  v0[21] = v1;
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v3 = v0[32];
    v2 = v0[33];
    v4 = v0[30];
    v5 = v0[31];
    v6 = v0[29];

    (*(v5 + 32))(v3, v2, v4);
    (*(v5 + 16))(v6, v3, v4);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v7 = v0[31];
    v16 = v0[30];
    v8 = v0[29];

    v9 = sub_100007774();
    v0[22] = v1;
    swift_errorRetain();
    sub_1000079A4();
    v10 = [v9 domain];
    sub_100007994();

    [v9 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v12;
    swift_getErrorValue();
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v13;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v7 + 104))(v8, enum case for InferenceError.inferenceFailed(_:), v16);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v14 = v0[1];

  return v14();
}

uint64_t _s39PrivateMLClientInferenceProviderService0cD7AdapterV14requestOneShot10clientData13configuration20ModelManagerServices06ClientK0VAI_AG0cD20RequestConfigurationVtYaAG0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[20] = a4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_1000077D4();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100003814, 0, 0);
}

uint64_t sub_100003814()
{
  v1 = v0[19];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1000038D4;
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];

  return dispatch thunk of InferenceProvider.requestOneShot(clientData:configuration:)(v7, v5, v6, v2, v3);
}

uint64_t sub_1000038D4()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100003A1C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100003A1C()
{
  v1 = v0;
  v0[13] = v0[26];
  swift_errorRetain();
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  if (swift_dynamicCast())
  {
    v2 = v0[23];
    v3 = v0[24];
    v4 = v0[21];
    v5 = v0[22];
    v6 = v1[20];

    (*(v5 + 32))(v2, v3, v4);
    (*(v5 + 16))(v6, v2, v4);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v2, v4);
  }

  else
  {
    v7 = v0[26];
    v8 = v0[22];
    v17 = v0[21];
    v9 = v0[20];

    v10 = sub_100007774();
    v0[14] = v7;
    swift_errorRetain();
    sub_1000079A4();
    v11 = [v10 domain];
    sub_100007994();

    [v10 code];
    sub_1000054A4(&qword_1000101C0, &qword_100007EB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007E70;
    *(inited + 32) = sub_100007994();
    *(inited + 40) = v13;
    swift_getErrorValue();
    *(inited + 48) = sub_100007AB4();
    *(inited + 56) = v14;
    sub_100005C8C(inited);
    swift_setDeallocating();
    sub_100006118(inited + 32, &qword_1000101C8, &qword_100007EC0);
    sub_1000077C4();
    (*(v8 + 104))(v9, enum case for InferenceError.inferenceFailed(_:), v17);
    sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
  }

  v15 = v1[1];

  return v15();
}

uint64_t InferenceProviderAdapter.requestStream(clientData:configuration:)@<X0>(uint64_t *a3@<X8>)
{
  sub_100005ACC(v3, v3[3]);
  sub_1000077E4();
  sub_100005DA0(v17, v16);
  v5 = type metadata accessor for InferenceProviderAdapter.StreamAdapter();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = sub_100005ACC(v16, v16[3]);
  __chkstk_darwin(v7, v7);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100006178(&v13);
  sub_100007A04();
  sub_10000140C(&v13, v6 + 112);
  sub_100005B10(v16);
  a3[3] = v5;
  a3[4] = sub_100006000(&qword_1000101E8, v10, type metadata accessor for InferenceProviderAdapter.StreamAdapter, &unk_1000080F0);
  *a3 = v6;
  return sub_100005B10(v17);
}

uint64_t sub_100003F5C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_1000054A4(&qword_1000102E0, &qword_100008120);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100003FF8, v1, 0);
}

uint64_t sub_100003FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2[22];
  v4 = sub_100006000(&qword_1000102E8, a2, type metadata accessor for InferenceProviderAdapter.StreamAdapter, &unk_1000080C8);
  swift_beginAccess();
  v5 = *(v3 + 136);
  v2[24] = v5;
  v6 = *(v3 + 144);
  v2[25] = v6;
  sub_100006048(v3 + 112, v5);
  v2[26] = swift_getAssociatedTypeWitness();
  v7 = sub_100007A34();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[29] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[30] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v2[31] = v10;
  v2[32] = *(v10 + 64);
  v11 = swift_task_alloc();
  v2[33] = v11;
  v12 = swift_task_alloc();
  v2[34] = v12;
  *v12 = v2;
  v12[1] = sub_100004238;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, v3, v4, v11, v5, v6);
}

uint64_t sub_100004238()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_100004654;
  }

  else
  {
    v5 = *(v2 + 176);
    swift_endAccess();

    v4 = sub_100004370;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100004370()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 224) + 8))(v1, *(v0 + 216));

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v2;
    v4 = sub_100006178((v0 + 16));
    (*(v3 + 32))(v4, v1, v2);
  }

  sub_100006098(v0 + 16, v0 + 80);
  if (*(v0 + 104))
  {
    sub_100006108((v0 + 80), (v0 + 48));
    sub_100006108((v0 + 48), (v0 + 112));
    v5 = sub_1000077B4();
    v6 = swift_dynamicCast();
    v7 = *(*(v5 - 8) + 56);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
    if (v6)
    {
      v10 = *(v5 - 8);
      v7(*(v0 + 184), 0, 1, v5);
      (*(v10 + 32))(v9, v8, v5);
      v11 = v9;
      v12 = 0;
    }

    else
    {
      v7(*(v0 + 184), 1, 1, v5);
      sub_100006118(v8, &qword_1000102E0, &qword_100008120);
      v11 = v9;
      v12 = 1;
    }

    v7(v11, v12, 1, v5);
  }

  else
  {
    v13 = *(v0 + 168);
    sub_100006118(v0 + 80, &qword_1000102F0, &qword_100008128);
    v14 = sub_1000077B4();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  sub_100006118(v0 + 16, &qword_1000102F0, &qword_100008128);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100004654()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = swift_task_alloc();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_100007A94())
  {
    (*(v0[31] + 8))(v4, v0[30]);
  }

  else
  {
    v6 = v0[30];
    swift_allocError();
    v5(v7, v4, v6);
  }

  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000047BC()
{
  sub_100005B10((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000480C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000048A8;

  return sub_100003F5C(a1);
}

uint64_t sub_1000048A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  v7 = sub_1000077D4();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_1000079E4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[9] = v8;
  v5[10] = v10;

  return _swift_task_switch(sub_100004A9C, v8, v10);
}

uint64_t sub_100004A9C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100004B38;
  v2 = *(v0 + 24);

  return sub_100003F5C(v2);
}

uint64_t sub_100004B38()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_100004CD8;
  }

  else
  {
    v5 = sub_100004C74;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100004C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004CD8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = v0[12];
  sub_1000054A4(&qword_1000101B8, &qword_100007EB0);
  swift_dynamicCast();
  sub_100006000(&qword_1000101D0, 255, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100004DF0()
{
  v1 = sub_100007894();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100004E54()
{
  v1 = sub_100007874();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100004EFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000048A8;

  return InferenceProviderAdapter.prewarmHint(_:)(a1);
}

uint64_t sub_100004F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_1000077D4();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_1000062AC;

  return _s39PrivateMLClientInferenceProviderService0cD7AdapterV15transitionAsset_2toy20ModelManagerServices0cdH10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(a1);
}

uint64_t sub_100005088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000062A0;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100005154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000062A0;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_100005204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = sub_1000077D4();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100005324;

  return _s39PrivateMLClientInferenceProviderService0cD7AdapterV14requestOneShot10clientData13configuration20ModelManagerServices06ClientK0VAI_AG0cD20RequestConfigurationVtYaAG0C5ErrorOYKF(a1, a2, a3, v9);
}

uint64_t sub_100005324()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_100005458(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000054A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000054EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005524(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000055F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000061DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005B10(v11);
  return v7;
}

unint64_t sub_1000055F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000056FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100007A54();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000056FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005748(a1, a2);
  sub_100005878(&off_10000C648);
  return v3;
}

char *sub_100005748(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100005964(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100007A54();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000079C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005964(v10, 0);
        result = sub_100007A44();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100005878(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000059D8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100005964(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000054A4(&qword_100010300, qword_100008138);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000059D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000054A4(&qword_100010300, qword_100008138);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100005ACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005B10(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100005B5C(uint64_t a1, uint64_t a2)
{
  sub_100007AC4();
  sub_1000079B4();
  v4 = sub_100007AD4();

  return sub_100005BD4(a1, a2, v4);
}

unint64_t sub_100005BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100007AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054A4(&qword_1000102F8, &qword_100008130);
    v3 = sub_100007A74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100005B5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_100005DA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100005E28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100005E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006000(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006048(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100006098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054A4(&qword_1000102F0, &qword_100008128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006108(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100006178(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000061DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000623C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t PrivateMLClientInferenceProvider.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_100007954();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v22 - v9;
  sub_100007924();
  v11 = sub_100007934();
  v12 = sub_100007A14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Initializing PrivateMLClientInferenceProvider", v13, 2u);
  }

  v14 = *(v3 + 8);
  v14(v10, v2);
  sub_100007924();
  v15 = sub_100007934();
  v16 = sub_100007A14();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Using NewPrivateInferenceProvider", v17, 2u);
  }

  v14(v7, v2);
  v18 = sub_100007974();
  swift_allocObject();
  v19 = sub_100007964();
  a1[3] = &type metadata for InferenceProviderAdapter;
  a1[4] = sub_100006500();
  v20 = swift_allocObject();
  *a1 = v20;
  v20[5] = v18;
  result = sub_10000658C();
  v20[6] = result;
  v20[2] = v19;
  return result;
}

unint64_t sub_100006500()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010308);
  }

  return result;
}

uint64_t sub_100006554()
{
  sub_100005B10((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000658C()
{
  result = qword_100010310;
  if (!qword_100010310)
  {
    sub_100007974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010310);
  }

  return result;
}

uint64_t PrivateMLClientInferenceProvider.prewarmHint(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100006604, 0, 0);
}

uint64_t sub_100006604()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000066C0;
  v5 = v0[2];

  return dispatch thunk of InferenceProviding.prewarmHint(_:)(v5, v2, v3);
}

uint64_t sub_1000066C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s39PrivateMLClientInferenceProviderService0abcD0V15transitionAsset_2toy20ModelManagerServices0cdG10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000077D4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100006878, 0, 0);
}

uint64_t sub_100006878()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100006938;
  v5 = v0[8];
  v7 = v0[2];
  v6 = v0[3];

  return _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTj(v7, v6, v5, v2, v3);
}

uint64_t sub_100006938()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100006A70, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100006A70()
{
  (*(v0[7] + 32))(v0[5], v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t _s39PrivateMLClientInferenceProviderService0abcD0V14requestOneShot10clientData13configuration20ModelManagerServices06ClientJ0VAI_AG0cD20RequestConfigurationVtYaAG0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000077D4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100006BB8, 0, 0);
}

uint64_t sub_100006BB8()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100006C7C;
  v5 = v0[9];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTj(v8, v6, v7, v5, v2, v3);
}

uint64_t sub_100006C7C()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100006DB4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100006DB4()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100006E9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100006EBC, 0, 0);
}

uint64_t sub_100006EBC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000075C0;
  v5 = v0[2];

  return dispatch thunk of InferenceProviding.prewarmHint(_:)(v5, v2, v3);
}

uint64_t sub_100006F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000077D4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000703C, 0, 0);
}

uint64_t sub_10000703C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000070FC;
  v5 = v0[8];
  v7 = v0[2];
  v6 = v0[3];

  return _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTj(v7, v6, v5, v2, v3);
}

uint64_t sub_1000070FC()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1000075B8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100007234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000048A8;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_1000072E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000077D4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000073AC, 0, 0);
}

uint64_t sub_1000073AC()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005ACC(v1, v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100007470;
  v5 = v0[9];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTj(v8, v6, v7, v5, v2, v3);
}

uint64_t sub_100007470()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1000075BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000075F8()
{
  v0 = sub_1000078C4();

  return _swift_deallocClassInstance(v0, 16, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PrivateMLClientInferenceProviderService(0);
  sub_1000076D4();
  sub_1000077A4();
  return 0;
}

uint64_t type metadata accessor for PrivateMLClientInferenceProviderService(uint64_t a1)
{
  result = qword_100010320;
  if (!qword_100010320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000076D4()
{
  result = qword_100010318;
  if (!qword_100010318)
  {
    type metadata accessor for PrivateMLClientInferenceProviderService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010318);
  }

  return result;
}