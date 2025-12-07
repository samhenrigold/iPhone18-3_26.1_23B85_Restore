uint64_t sub_1240(uint64_t a1)
{
  sub_7870(&qword_20A18, type metadata accessor for Dispatcher.PipelineNotFound, &unk_15BA4);

  return sub_150C8();
}

uint64_t sub_12AC()
{
  sub_14FE8(54);
  v1._object = 0x80000000000163F0;
  v1._countAndFlagsBits = 0x1000000000000026;
  sub_14EA8(v1);
  sub_14C78();
  sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = sub_15078();
  sub_14EA8(v2);

  v3._countAndFlagsBits = 0x20736177209D80E2;
  v3._object = 0xAE002E646E756F66;
  sub_14EA8(v3);
  return 0;
}

int *sub_13C4()
{
  result = sub_81EC(&_swiftEmptyArrayStorage);
  dword_20888 = 0;
  off_20890 = result;
  return result;
}

uint64_t sub_1428()
{
  v1 = v0;
  v2 = sub_14C78();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v31 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v28[-v6];
  if (qword_20880 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_20888);
  v8 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, &v0[v8], v2);
  v10 = off_20890;
  if (*(&dword_10 + off_20890) && (v11 = sub_12260(v7), (v12 & 1) != 0))
  {
    v13 = *(v3 + 8);
    v14 = *(*&stru_20.segname[v10 + 16] + 8 * v11);
    v13(v7, v2);

    os_unfair_lock_unlock(&dword_20888);
  }

  else
  {
    v30 = *(v3 + 8);
    v30(v7, v2);
    os_unfair_lock_unlock(&dword_20888);
    if (qword_20898 != -1)
    {
      swift_once();
    }

    v15 = sub_14DE8();
    sub_77D4(v15, qword_208A0);
    v16 = sub_14F78();
    v17 = v1;
    v18 = sub_14DC8();

    v29 = v16;
    if (os_log_type_enabled(v18, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v31;
      v22 = v20;
      v32 = v20;
      *v19 = 136446210;
      v9(v21, &v1[v8], v2);
      sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = sub_15078();
      v25 = v24;
      v30(v21, v2);
      v26 = sub_119EC(v23, v25, &v32);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v18, v29, "No processing pipeline with the ID “%{public}s” was found; defaulting to an extraction memory footprint of 50MB…", v19, 0xCu);
      sub_86FC(v22);
    }
  }

  return 52428800;
}

id sub_17A0(char *a1)
{
  v3 = v1;
  v4 = sub_14C78();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20880 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_20888);
  v8 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v1 + v8, v4);
  v10 = off_20890;
  if (*(&dword_10 + off_20890) && (v11 = sub_12260(v7), (v12 & 1) != 0))
  {
    v13 = *(*&stru_20.segname[v10 + 16] + 8 * v11);
    v17 = a1;
    v14 = *(v5 + 8);
    v15 = v13;
    v14(v7, v4);
    a1 = v17;
    os_unfair_lock_unlock(&dword_20888);
    if (v15)
    {
      return v15;
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    os_unfair_lock_unlock(&dword_20888);
  }

  v9(a1, v3 + v8, v4);
  v15 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  sub_7870(&qword_20A18, type metadata accessor for Dispatcher.PipelineNotFound, &unk_15BA4);
  swift_willThrowTypedImpl();
  return v15;
}

uint64_t sub_19D8()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_208A0);
  sub_77D4(v0, qword_208A0);
  return sub_14DD8();
}

uint64_t sub_1ADC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_75AC(&qword_20A10, &unk_15A50);
  v3[16] = swift_task_alloc();
  v4 = sub_14C78();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for Dispatcher.PipelineNotFound(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for ResumptionInfo(0);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = sub_14BA8();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = sub_14BF8();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1D58, 0, 0);
}

uint64_t sub_1D58()
{
  v111 = v0;
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_208A0);
  v2 = sub_14F58();

  v3 = sub_14DC8();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v110[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_119EC(v5, v4, v110);
    _os_log_impl(&dword_0, v3, v2, "Prepare for extraction to path: %{public}s", v6, 0xCu);
    sub_86FC(v7);
  }

  v8 = *(v0 + 264);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);
  sub_14BB8();
  *(v0 + 88) = 0xD000000000000014;
  *(v0 + 96) = 0x80000000000163D0;
  (*(v9 + 104))(v10, enum case for URL.DirectoryHint.notDirectory(_:), v11);
  sub_8AD4();
  sub_14BE8();
  (*(v9 + 8))(v10, v11);
  v12 = [objc_opt_self() defaultManager];
  sub_14BD8(0);
  v13 = sub_14E58();

  v14 = [v12 fileExistsAtPath:v13];

  v15 = *(v8 + 16);
  v16 = *(v0 + 288);
  v17 = *(v0 + 256);
  if (v14)
  {
    v15(*(v0 + 280), v16, v17);
    v18 = sub_14DC8();
    v19 = sub_14F88();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 280);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v110[0] = v107;
      *v24 = 136446210;
      sub_7870(&qword_20A20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = sub_15078();
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v21, v23);
      v29 = sub_119EC(v25, v27, v110);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "Resumption info was found at “%{public}s”; reusing an existing processing pipeline…", v24, 0xCu);
      sub_86FC(v107);
    }

    else
    {

      v28 = *(v22 + 8);
      v28(v21, v23);
    }

    *(v0 + 304) = v28;
    v50 = sub_14C08();
    *(v0 + 312) = v50;
    *(v0 + 320) = v51;
    v108 = v28;
    v58 = v50;
    v59 = v51;
    sub_14B48();
    swift_allocObject();
    *(v0 + 328) = sub_14B38();
    sub_7870(&qword_20A48, type metadata accessor for ResumptionInfo, &unk_16074);
    sub_14B28();
    sub_967C(*(v0 + 224), *(v0 + 216), type metadata accessor for ResumptionInfo);
    v60 = sub_14DC8();
    v61 = sub_14F88();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 216);
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v110[0] = v65;
      *v64 = 136446210;
      sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = sub_15078();
      v68 = v67;
      sub_96E4(v63, type metadata accessor for ResumptionInfo);
      v69 = sub_119EC(v66, v68, v110);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_0, v60, v61, "The existing processing pipeline’s ID is “%{public}s”.", v64, 0xCu);
      sub_86FC(v65);
    }

    else
    {

      sub_96E4(v63, type metadata accessor for ResumptionInfo);
    }

    v70 = *(v0 + 224);
    v72 = *(v0 + 200);
    v71 = *(v0 + 208);
    v74 = *(v0 + 136);
    v73 = *(v0 + 144);
    v75 = *(v0 + 120);
    v76 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v73 + 24))(v75 + v76, v70, v74);
    swift_endAccess();
    sub_967C(v70, v71, type metadata accessor for ResumptionInfo);
    sub_967C(v70, v72, type metadata accessor for ResumptionInfo);
    v77 = sub_14DC8();
    v78 = sub_14F88();
    v79 = os_log_type_enabled(v77, v78);
    v81 = *(v0 + 200);
    v80 = *(v0 + 208);
    if (v79)
    {
      v100 = *(v0 + 192);
      loga = v77;
      v82 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v110[0] = v102;
      *v82 = 136446466;
      sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v83 = sub_15078();
      v85 = v84;
      sub_96E4(v80, type metadata accessor for ResumptionInfo);
      v86 = sub_119EC(v83, v85, v110);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2048;
      v87 = *(v81 + *(v100 + 20));
      sub_96E4(v81, type metadata accessor for ResumptionInfo);
      *(v82 + 14) = v87;
      _os_log_impl(&dword_0, loga, v78, "Resuming the processing pipeline with the ID “%{public}s” at an offset of %llu bytes…", v82, 0x16u);
      sub_86FC(v102);
    }

    else
    {
      sub_96E4(*(v0 + 200), type metadata accessor for ResumptionInfo);

      sub_96E4(v80, type metadata accessor for ResumptionInfo);
    }

    v88 = sub_17A0(*(v0 + 176));
    v89 = *(v0 + 296);
    v90 = *(v0 + 256);
    v91 = *(v0 + 224);
    v92 = *(v0 + 192);
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_B18C(Strong);
    swift_unknownObjectRelease();

    sub_8748(v58, v59);
    v108(v89, v90);
    v109 = *(v91 + *(v92 + 20));
    sub_96E4(v91, type metadata accessor for ResumptionInfo);
    v95 = *(v0 + 256);
    v94 = *(v0 + 264);
    v97 = *(v0 + 120);
    v96 = *(v0 + 128);
    (*(v94 + 32))(v96, *(v0 + 288), v95);
    (*(v94 + 56))(v96, 0, 1, v95);
    v98 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
    swift_beginAccess();
    sub_960C(v96, v97 + v98);
    swift_endAccess();

    v99 = *(v0 + 8);

    return v99(v109);
  }

  else
  {
    v30 = *(v0 + 120);
    v15(*(v0 + 272), v16, v17);
    v31 = v30;
    v32 = sub_14DC8();
    v33 = sub_14F88();

    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 264);
    v35 = *(v0 + 272);
    v37 = *(v0 + 256);
    if (v34)
    {
      v38 = *(v0 + 144);
      log = *(v0 + 136);
      v105 = *(v0 + 152);
      v101 = *(v0 + 120);
      v39 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v39 = 136446466;
      sub_7870(&qword_20A20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v40 = sub_15078();
      v42 = v41;
      v106 = v33;
      v43 = *(v36 + 8);
      v43(v35, v37);
      v44 = sub_119EC(v40, v42, v110);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v45 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
      swift_beginAccess();
      (*(v38 + 16))(v105, v101 + v45, log);
      sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = sub_15078();
      v48 = v47;
      (*(v38 + 8))(v105, log);
      v49 = sub_119EC(v46, v48, v110);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_0, v32, v106, "Resumption info wasn’t found at “%{public}s”; creating a new processing pipeline with the ID “%{public}s”…", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v43 = *(v36 + 8);
      v43(v35, v37);
    }

    *(v0 + 336) = v43;
    v52 = swift_task_alloc();
    *(v0 + 344) = v52;
    *v52 = v0;
    v52[1] = sub_2D84;
    v53 = *(v0 + 288);
    v54 = *(v0 + 112);
    v55 = *(v0 + 120);
    v56 = *(v0 + 104);

    return sub_8EF0(v55, v56, v54, v53);
  }
}

uint64_t sub_2D84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_3074;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_2EAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2EAC()
{
  (*(v0 + 336))(*(v0 + 296), *(v0 + 256));
  v8 = *(v0 + 360);
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  (*(v1 + 32))(v3, *(v0 + 288), v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_960C(v3, v4 + v5);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_3074()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[32];
  v1(v0[36], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_31DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_3528;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_3304;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3304()
{
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[21];

  sub_8748(v2, v1);
  sub_96E4(v7, type metadata accessor for Dispatcher.PipelineNotFound);
  sub_96E4(v6, type metadata accessor for ResumptionInfo);
  v3(v4, v5);
  v15 = v0[48];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[15];
  v10 = v0[16];
  (*(v8 + 32))(v10, v0[36], v9);
  (*(v8 + 56))(v10, 0, 1, v9);
  v12 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_960C(v10, v11 + v12);
  swift_endAccess();

  v13 = v0[1];

  return v13(v15);
}

uint64_t sub_3528()
{
  v1 = v0[40];
  v2 = v0[39];
  v3 = v0[28];
  v4 = v0[21];

  sub_8748(v2, v1);
  sub_96E4(v4, type metadata accessor for Dispatcher.PipelineNotFound);
  sub_96E4(v3, type metadata accessor for ResumptionInfo);
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[32];
  v5(v0[36], v7);
  v5(v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_386C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_14E68();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_3940;

  return sub_1ADC(v5, v7);
}

uint64_t sub_3940(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_14B88();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_3AF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_3B8C, 0, 0);
}

uint64_t sub_3B8C()
{
  v16 = v0;
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_14DE8();
  sub_77D4(v3, qword_208A0);
  v4 = sub_14F58();
  sub_8944(v2, v1);
  v5 = sub_14DC8();
  sub_8748(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = sub_14C18();
    v10 = sub_119EC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "Supply bytes: %{public}s", v6, 0xCu);
    sub_86FC(v7);
  }

  *(v0 + 56) = sub_17A0(*(v0 + 48));
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_3E28;
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  return sub_B330(v13, v12);
}

uint64_t sub_3E28(char a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_3F84, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_3F84()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_417C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_14C38();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_4258;

  return sub_3AF4(v7, v9);
}

uint64_t sub_4258(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[3];
  sub_8748(v5[4], v5[5]);
  if (v3)
  {
    v10 = sub_14B88();

    (*(v9 + 16))(v9, v10, 0);
  }

  else
  {
    (*(v9 + 16))(v9, 0, a1 & 1);
  }

  _Block_release(v6[3]);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_4414()
{
  v1[11] = v0;
  v1[12] = type metadata accessor for ResumptionInfo(0);
  v1[13] = swift_task_alloc();
  v2 = sub_14C78();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_75AC(&qword_20A10, &unk_15A50);
  v1[17] = swift_task_alloc();
  v3 = sub_14BF8();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_45C8, 0, 0);
}

uint64_t sub_45C8()
{
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  v0[23] = sub_77D4(v1, qword_208A0);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Suspend stream", v4, 2u);
  }

  v5 = v0[22];

  v0[24] = sub_17A0(v5);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_4800;

  return sub_BA04();
}

uint64_t sub_4800(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_5028;
  }

  else
  {

    v4 = sub_491C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_491C()
{
  v54 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_83D4(v4 + v5, v3, &qword_20A10, &unk_15A50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[11];
    sub_78B8(v0[17], &qword_20A10, &unk_15A50);
    v7 = sub_14F78();
    v8 = v6;
    v9 = sub_14DC8();

    if (os_log_type_enabled(v9, v7))
    {
      v11 = v0[15];
      v10 = v0[16];
      v12 = v0[14];
      v13 = v0[11];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53[0] = v15;
      *v14 = 136446210;
      v16 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
      swift_beginAccess();
      (*(v11 + 16))(v10, v13 + v16, v12);
      sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = sub_15078();
      v19 = v18;
      (*(v11 + 8))(v10, v12);
      v20 = sub_119EC(v17, v19, v53);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_0, v9, v7, "No resumption URL is available for the processing pipeline with the ID “%{public}s”.", v14, 0xCu);
      sub_86FC(v15);
    }

    goto LABEL_5;
  }

  v24 = v0[11];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v25 = v24;
  v26 = sub_14DC8();
  v27 = sub_14F88();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[26];
    v30 = v0[15];
    v29 = v0[16];
    v31 = v0[14];
    v32 = v0[11];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53[0] = v34;
    *v33 = 134218242;
    *(v33 + 4) = v28;
    *(v33 + 12) = 2082;
    v35 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v30 + 16))(v29, v32 + v35, v31);
    sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = sub_15078();
    v38 = v37;
    (*(v30 + 8))(v29, v31);
    v39 = sub_119EC(v36, v38, v53);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_0, v26, v27, "Recording an offset of %llu bytes for the processing pipeline with the ID “%{public}s”…", v33, 0x16u);
    sub_86FC(v34);
  }

  v40 = v0[27];
  v41 = sub_14C08();
  if (!v40)
  {
    v43 = v41;
    v44 = v42;
    sub_14B48();
    swift_allocObject();
    sub_14B38();
    sub_7870(&qword_20A48, type metadata accessor for ResumptionInfo, &unk_16074);
    sub_14B28();
    *(v0[13] + *(v0[12] + 20)) = v0[26];
    sub_14B78();
    swift_allocObject();
    sub_14B68();
    sub_7870(&qword_20A50, type metadata accessor for ResumptionInfo, &unk_1604C);
    v45 = sub_14B58();
    v47 = v46;
    sub_14C48();
    v48 = v0[19];
    v51 = v0[18];
    v52 = v0[20];
    v49 = v0[13];
    sub_8748(v45, v47);

    sub_8748(v43, v44);
    sub_96E4(v49, type metadata accessor for ResumptionInfo);
    (*(v48 + 8))(v52, v51);
LABEL_5:

    v21 = v0[1];
    v22 = v0[26];

    return v21(v22);
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v50 = v0[1];

  return v50();
}

uint64_t sub_5028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5244(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_52EC;

  return sub_4414();
}

uint64_t sub_52EC(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_14B88();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_547C()
{
  v1[9] = v0;
  v2 = sub_14C78();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_75AC(&qword_20A10, &unk_15A50);
  v1[13] = swift_task_alloc();
  v3 = sub_14BF8();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_5638, 0, 0);
}

uint64_t sub_5638()
{
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  v0[20] = sub_77D4(v1, qword_208A0);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Finish stream", v4, 2u);
  }

  v5 = v0[19];

  v0[21] = sub_17A0(v5);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_58AC;

  return sub_BC18();
}

uint64_t sub_58AC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_5F08;
  }

  else
  {

    v3 = sub_59FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_59FC()
{
  v47 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_83D4(v4 + v5, v3, &qword_20A10, &unk_15A50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_78B8(v0[13], &qword_20A10, &unk_15A50);
LABEL_8:

    v39 = v0[1];
    goto LABEL_10;
  }

  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[9];
  (*(v9 + 32))(v6, v0[13], v8);
  (*(v9 + 16))(v7, v6, v8);
  v11 = v10;
  v12 = sub_14DC8();
  v13 = sub_14F88();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  if (v14)
  {
    v45 = v13;
    v18 = v0[11];
    v43 = v0[10];
    v44 = v0[12];
    v42 = v0[9];
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v19 = 136446466;
    sub_7870(&qword_20A20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = sub_15078();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v15, v17);
    v24 = sub_119EC(v20, v22, &v46);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v18 + 16))(v44, v42 + v25, v43);
    sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = sub_15078();
    v28 = v27;
    (*(v18 + 8))(v44, v43);
    v29 = sub_119EC(v26, v28, &v46);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_0, v12, v45, "Removing the resumption info at “%{public}s” for the processing pipeline with the ID “%{public}s”…", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v16 + 8);
    v23(v15, v17);
  }

  v30 = [objc_opt_self() defaultManager];
  sub_14BC8(v31);
  v33 = v32;
  v0[8] = 0;
  v34 = [v30 removeItemAtURL:v32 error:v0 + 8];

  v35 = v0[8];
  v36 = v0[17];
  v37 = v0[14];
  if (v34)
  {
    v38 = v35;
    v23(v36, v37);
    goto LABEL_8;
  }

  v40 = v35;
  sub_14B98();

  swift_willThrow();
  v23(v36, v37);

  v39 = v0[1];
LABEL_10:

  return v39();
}

uint64_t sub_5F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_614C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_61F4;

  return sub_547C();
}

uint64_t sub_61F4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_14B88();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_6378(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_14C78();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_75AC(&qword_20A10, &unk_15A50);
  v2[14] = swift_task_alloc();
  v4 = sub_14BF8();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_6534, 0, 0);
}

uint64_t sub_6534()
{
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  v0[21] = sub_77D4(v1, qword_208A0);
  v2 = sub_14F58();
  swift_errorRetain();
  v3 = sub_14DC8();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v3, v2, "Terminate stream with error: %{public}@", v4, 0xCu);
    sub_78B8(v5, &qword_20A30, &qword_15D70);
  }

  v7 = v0[20];

  v0[22] = sub_17A0(v7);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_6830;
  v9 = v0[9];

  return sub_C1E8(v9);
}

uint64_t sub_6830()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_6E8C;
  }

  else
  {

    v3 = sub_6980;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6980()
{
  v47 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_83D4(v4 + v5, v3, &qword_20A10, &unk_15A50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_78B8(v0[14], &qword_20A10, &unk_15A50);
LABEL_8:

    v39 = v0[1];
    goto LABEL_10;
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[10];
  (*(v9 + 32))(v6, v0[14], v8);
  (*(v9 + 16))(v7, v6, v8);
  v11 = v10;
  v12 = sub_14DC8();
  v13 = sub_14F88();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  if (v14)
  {
    v45 = v13;
    v18 = v0[12];
    v43 = v0[11];
    v44 = v0[13];
    v42 = v0[10];
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v19 = 136446466;
    sub_7870(&qword_20A20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = sub_15078();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v15, v17);
    v24 = sub_119EC(v20, v22, &v46);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v18 + 16))(v44, v42 + v25, v43);
    sub_7870(&qword_20A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = sub_15078();
    v28 = v27;
    (*(v18 + 8))(v44, v43);
    v29 = sub_119EC(v26, v28, &v46);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_0, v12, v45, "Removing the resumption info at “%{public}s” for the processing pipeline with the ID “%{public}s”…", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v16 + 8);
    v23(v15, v17);
  }

  v30 = [objc_opt_self() defaultManager];
  sub_14BC8(v31);
  v33 = v32;
  v0[8] = 0;
  v34 = [v30 removeItemAtURL:v32 error:v0 + 8];

  v35 = v0[8];
  v36 = v0[18];
  v37 = v0[15];
  if (v34)
  {
    v38 = v35;
    v23(v36, v37);
    goto LABEL_8;
  }

  v40 = v35;
  sub_14B98();

  swift_willThrow();
  v23(v36, v37);

  v39 = v0[1];
LABEL_10:

  return v39();
}

uint64_t sub_6E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_70E4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_71A8;

  return sub_6378(v6);
}

uint64_t sub_71A8()
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
    v9 = sub_14B88();

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

id sub_7374()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_7474(uint64_t a1)
{
  sub_14C78();
  if (v1 <= 0x3F)
  {
    sub_7554(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_7554(uint64_t a1)
{
  if (!qword_209A0)
  {
    sub_14BF8();
    v1 = sub_14F98();
    if (!v2)
    {
      atomic_store(v1, &qword_209A0);
    }
  }
}

uint64_t sub_75AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_75F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_70E4(v2, v3, v4);
}

uint64_t sub_76B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_99A8;

  return sub_11458(a1, v4, v5, v6);
}

uint64_t sub_779C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_780C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_78B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_75AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_14C78();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_75AC(&qword_20A40, &qword_15A68);
  v39 = v4;
  result = sub_15018();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_7870(&qword_20A68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_14E38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_7CF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_14C78();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_12260(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_7F78();
      goto LABEL_7;
    }

    sub_7918(v17, a3 & 1);
    v23 = sub_12260(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_7EC0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_150B8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_7EC0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_14C78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_7F78()
{
  v1 = v0;
  v31 = sub_14C78();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AC(&qword_20A40, &qword_15A68);
  v3 = *v0;
  v4 = sub_15008();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_81EC(uint64_t a1)
{
  v2 = sub_75AC(&qword_20A38, &qword_15A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_75AC(&qword_20A40, &qword_15A68);
    v7 = sub_15028();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_83D4(v9, v5, &qword_20A38, &qword_15A60);
      result = sub_12260(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_14C78();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_83D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_75AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_843C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_84A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_614C(v2, v3);
}

uint64_t sub_8550()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_11370(v2, v3, v4);
}

uint64_t sub_8610()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_5244(v2, v3);
}

uint64_t sub_86FC(void *a1)
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

uint64_t sub_8748(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_879C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_8850;

  return sub_417C(v2, v3, v4);
}

uint64_t sub_8850()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_8944(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_8998()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_89E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_386C(v2, v3, v4);
}

uint64_t sub_8A94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_8AD4()
{
  result = qword_20A58;
  if (!qword_20A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20A58);
  }

  return result;
}

id sub_8B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_14C68();
  v6 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  v7 = sub_14BF8();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  if (a1)
  {
    v8 = qword_20898;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_14DE8();
    sub_77D4(v9, qword_208A0);
    v10 = sub_14F58();

    swift_unknownObjectRetain();
    v11 = sub_14DC8();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v11, v10))
    {

      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136446466;
    v13 = sub_14E28();
    v15 = v14;

    v16 = sub_119EC(v13, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_14E78();
    v19 = sub_119EC(v17, v18, &v28);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_0, v11, v10, "Init options: %{public}s delegate: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    goto LABEL_10;
  }

  if (qword_20898 != -1)
  {
    swift_once();
  }

  v20 = sub_14DE8();
  sub_77D4(v20, qword_208A0);
  v21 = sub_14F58();
  swift_unknownObjectRetain();
  v11 = sub_14DC8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v24 = sub_14E78();
    v26 = sub_119EC(v24, v25, &v28);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v11, v21, "Init delegate: %{public}s", v22, 0xCu);
    sub_86FC(v23);
LABEL_10:
  }

LABEL_12:

  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_options] = a1;
  swift_unknownObjectUnownedInit();
  v29.receiver = v3;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = type metadata accessor for ResumptionInfo(0);
  v4[13] = swift_task_alloc();
  v5 = sub_14C78();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_8FE4, 0, 0);
}

uint64_t sub_8FE4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  objc_allocWithZone(type metadata accessor for ProcessingPipeline(0));

  v3 = sub_D008(v2, Strong);
  v0[17] = v3;
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_9144;
    v6 = v0[9];
    v5 = v0[10];

    return sub_99AC(v6, v5);
  }

  else
  {
    sub_9744();
    swift_allocError();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_9144(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[19] = v1;

  if (v1)
  {
    v4 = sub_9594;
  }

  else
  {
    v4 = sub_9260;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9260()
{
  if (qword_20880 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[19];
  v5 = v0[8];
  os_unfair_lock_lock(&dword_20888);
  v6 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
  swift_beginAccess();
  v19 = *(v3 + 16);
  v19(v2, v5 + v6, v4);
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = off_20890;
  off_20890 = 0x8000000000000000;
  sub_7CF4(v7, v2, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  off_20890 = v23;
  os_unfair_lock_unlock(&dword_20888);
  v19(v20, v5 + v6, v4);
  *(v20 + *(v21 + 20)) = 0;
  sub_14B78();
  swift_allocObject();
  sub_14B68();
  sub_7870(&qword_20A50, type metadata accessor for ResumptionInfo, &unk_1604C);
  v9 = sub_14B58();
  if (v22)
  {
    v11 = v0[17];
    sub_96E4(v0[13], type metadata accessor for ResumptionInfo);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v12 = v9;
    v13 = v10;
    sub_14C48();
    v16 = v0[6];
    v17 = v0[17];
    sub_96E4(v0[13], type metadata accessor for ResumptionInfo);

    sub_8748(v12, v13);

    v18 = v0[1];

    return v18(v16);
  }
}

uint64_t sub_9594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_960C(uint64_t a1, uint64_t a2)
{
  v4 = sub_75AC(&qword_20A10, &unk_15A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_967C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_96E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9744()
{
  result = qword_20A60;
  if (!qword_20A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20A60);
  }

  return result;
}

uint64_t sub_97D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_9854(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_98C4(uint64_t a1)
{
  result = sub_14C78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_99AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_75AC(&qword_20A08, &qword_15A20);
  v3[6] = swift_task_alloc();
  v4 = sub_14CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_14DF8();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_75AC(&qword_20DF0, &qword_15E38);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for ProcessingPipeline.LicenseInfo(0);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  sub_75AC(&qword_20DF8, &qword_15E40);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_9C0C, 0, 0);
}

uint64_t sub_9C0C()
{
  v12 = v0;
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  v0[22] = sub_77D4(v1, qword_20B80);
  v2 = sub_14F58();

  v3 = sub_14DC8();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_119EC(v5, v4, &v11);
    _os_log_impl(&dword_0, v3, v2, "Prepare for extraction to path: %{public}s", v6, 0xCu);
    sub_86FC(v7);
  }

  v0[23] = sub_14DB8();
  v0[24] = sub_14DA8();
  v0[25] = sub_12F9C(&qword_20E00, &type metadata accessor for AppLicenseDelivery.Isolation, &protocol conformance descriptor for AppLicenseDelivery.Isolation);
  v9 = sub_14EC8();

  return _swift_task_switch(sub_9E08, v9, v8);
}

uint64_t sub_9E08()
{

  if (qword_208D0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_9EA0, 0, 0);
}

uint64_t sub_9EA0()
{
  *(v0 + 208) = sub_14DA8();
  v2 = sub_14EC8();

  return _swift_task_switch(sub_9F34, v2, v1);
}

uint64_t sub_9F34()
{

  *(v0 + 216) = qword_217C0;

  return _swift_task_switch(sub_9FA8, 0, 0);
}

uint64_t sub_9FA8()
{
  *(v0 + 224) = sub_14DA8();
  v2 = sub_14EC8();

  return _swift_task_switch(sub_A03C, v2, v1);
}

uint64_t sub_A03C()
{

  sub_13270();

  return _swift_task_switch(sub_A0A8, 0, 0);
}

uint64_t sub_A0A8()
{
  v52 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_83D4(v0[4] + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_licenseInfo, v3, &qword_20DF0, &qword_15E38);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_78B8(v0[16], &qword_20DF0, &qword_15E38);
    v4 = v0[21];
    v5 = v0[20];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[11];
    v9 = v0[12];
    v10 = sub_14D78();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_12ED8(v5, v4, &qword_20DF8, &qword_15E40);

    sub_14E08();
    v11 = *(v9 + 16);
    v11(v7, v6, v8);
    v12 = sub_14DC8();
    v13 = sub_14F88();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[12];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v18 = 136446210;
      sub_12F9C(&qword_20E18, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v49 = v13;
      v19 = v11;
      v20 = sub_15078();
      v22 = v21;
      v25 = *(v17 + 8);
      v24 = v17 + 8;
      v23 = v25;
      v25(v15, v16);
      v26 = v20;
      v11 = v19;
      v27 = sub_119EC(v26, v22, &v51);

      *(v18 + 4) = v27;
      _os_log_impl(&dword_0, v12, v49, "Creating a stream pipeline for extraction to “%{public}s”…", v18, 0xCu);
      sub_86FC(v50);
    }

    else
    {

      v28 = *(v17 + 8);
      v24 = v17 + 8;
      v23 = v28;
      v28(v15, v16);
    }

    v0[32] = v24;
    v0[33] = v23;
    v29 = v0[21];
    v30 = v0[10];
    v32 = v0[8];
    v31 = v0[9];
    v33 = v0[7];
    v11(v0[13], v0[15], v0[11]);
    sub_14CC8();
    sub_75AC(&qword_20E08, &qword_15E48);
    (*(v32 + 16))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[34] = v34;
    *(v34 + 16) = v29;
    v0[35] = sub_14CB8();
    sub_12C6C(&qword_20E10, &qword_20E08, &qword_15E48, &protocol conformance descriptor for StreamPipeline<A, Pack{repeat B}>);
    v36 = sub_14EC8();

    return _swift_task_switch(sub_ACA0, v36, v35);
  }

  else
  {
    sub_12CB4(v0[16], v0[19], type metadata accessor for ProcessingPipeline.LicenseInfo);
    if (qword_208C0 != -1)
    {
      swift_once();
    }

    v0[29] = sub_13BA8();
    v37 = v0[19];
    v38 = v0[17];
    v39 = *v37;
    v40 = v37[1];
    v41 = v38[5];
    v42 = *(v37 + v38[6]);
    v43 = (v37 + v38[7]);
    v44 = *v43;
    v45 = v43[1];
    v46 = swift_task_alloc();
    v0[30] = v46;
    *v46 = v0;
    v46[1] = sub_A7C0;
    v47 = v0[20];

    return Helper.Proxy.requestLicense(forAssetPackWithID:versionID:internalVersionID:appBundleID:)(v47, v39, v40, v37 + v41, v42, v44, v45);
  }
}

uint64_t sub_A7C0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_AF54;
  }

  else
  {
    v2 = sub_A8F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A8F4()
{
  v38 = v0;
  sub_12DD8(v0[19], type metadata accessor for ProcessingPipeline.LicenseInfo);
  v1 = v0[21];
  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v7 = sub_14D78();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_12ED8(v2, v1, &qword_20DF8, &qword_15E40);

  sub_14E08();
  v8 = *(v5 + 16);
  v8(v4, v3, v6);
  v9 = sub_14DC8();
  v10 = sub_14F88();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v15 = 136446210;
    sub_12F9C(&qword_20E18, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v35 = v10;
    v16 = v8;
    v17 = sub_15078();
    v19 = v18;
    v22 = *(v13 + 8);
    v20 = v13 + 8;
    v21 = v22;
    v22(v12, v14);
    v23 = v17;
    v8 = v16;
    v24 = sub_119EC(v23, v19, &v37);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_0, v9, v35, "Creating a stream pipeline for extraction to “%{public}s”…", v15, 0xCu);
    sub_86FC(v36);
  }

  else
  {

    v25 = *(v13 + 8);
    v20 = v13 + 8;
    v21 = v25;
    v25(v12, v14);
  }

  v0[32] = v20;
  v0[33] = v21;
  v26 = v0[21];
  v27 = v0[10];
  v29 = v0[8];
  v28 = v0[9];
  v30 = v0[7];
  v8(v0[13], v0[15], v0[11]);
  sub_14CC8();
  sub_75AC(&qword_20E08, &qword_15E48);
  (*(v29 + 16))(v28, v27, v30);
  v31 = swift_task_alloc();
  v0[34] = v31;
  *(v31 + 16) = v26;
  v0[35] = sub_14CB8();
  sub_12C6C(&qword_20E10, &qword_20E08, &qword_15E48, &protocol conformance descriptor for StreamPipeline<A, Pack{repeat B}>);
  v33 = sub_14EC8();

  return _swift_task_switch(sub_ACA0, v33, v32);
}

uint64_t sub_ACA0()
{
  *(v0 + 288) = sub_14CA8();

  return _swift_task_switch(sub_AD0C, 0, 0);
}

uint64_t sub_AD0C()
{
  v1 = v0[35];
  v18 = v0[33];
  v2 = v0[21];
  v17 = v0[15];
  v15 = v0[10];
  v16 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v14 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  atomic_store(v0[36], &v6[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_minimumChunkSize]);
  v9 = sub_14F08();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v6;
  v10[6] = v7;
  v10[7] = v8;
  v10[8] = v5;

  v11 = v6;
  sub_F590(0, 0, v4, &unk_15E58, v10);

  sub_78B8(v4, &qword_20A08, &qword_15A20);
  (*(v3 + 8))(v15, v14);
  v18(v17, v16);
  sub_78B8(v2, &qword_20DF8, &qword_15E40);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_AF54()
{
  sub_12DD8(v0[19], type metadata accessor for ProcessingPipeline.LicenseInfo);
  v1 = sub_14F68();
  swift_errorRetain();
  v2 = sub_14DC8();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v2, v1, "A license couldn’t be requested: %{public}@", v3, 0xCu);
    sub_78B8(v4, &qword_20A30, &qword_15D70);
  }

  v6 = v0[4];

  swift_willThrow();
  v7 = (v6 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher));
  sub_75AC(&qword_20C70, &qword_15CA0);
  sub_C914(0, 1);
  os_unfair_lock_unlock(v7);

  v8 = v0[1];

  return v8();
}

void sub_B18C(uint64_t a1)
{
  v2 = v1;
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v3 = sub_14DE8();
  sub_77D4(v3, qword_20B80);
  v4 = sub_14F58();
  swift_unknownObjectRetain();
  v5 = sub_14DC8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_14E78();
    v10 = sub_119EC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "Set delegate: %{public}s", v6, 0xCu);
    sub_86FC(v7);
  }

  v11 = (v2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference));
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v11);
}

uint64_t sub_B330(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_B354, 0, 0);
}

uint64_t sub_B354()
{
  v55 = v0;
  if (qword_208C8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = sub_14DE8();
  sub_77D4(v3, qword_20B80);
  v4 = sub_14F58();
  sub_8944(v2, v1);
  v5 = sub_14DC8();
  sub_8748(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54[0] = v7;
    *v6 = 136446210;
    v8 = sub_14C18();
    v10 = sub_119EC(v8, v9, v54);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "Supply bytes: %{public}s", v6, 0xCu);
    sub_86FC(v7);
  }

  v11 = *(v0 + 64);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_15;
    }

    v14 = *(*(v0 + 56) + 16);
    v15 = *(*(v0 + 56) + 24);
    v16 = __OFSUB__(v15, v14);
    v13 = v15 - v14;
    if (!v16)
    {
LABEL_13:
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_11:
    v17 = *(v0 + 56);
    v18 = *(v0 + 60);
    v16 = __OFSUB__(v18, v17);
    LODWORD(v13) = v18 - v17;
    if (v16)
    {
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    v13 = v13;
    goto LABEL_13;
  }

  if (v12)
  {
    goto LABEL_11;
  }

  v13 = BYTE6(v11);
LABEL_16:
  v19 = *(v0 + 72);
  v20 = *(v19 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount);
  v21 = (v19 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount);
  do
  {
    v22 = v20 + v13;
    if (__CFADD__(v20, v13))
    {
      __break(1u);
      goto LABEL_34;
    }

    *(v0 + 80) = v22;
    v23 = v20;
    atomic_compare_exchange_strong(v21, &v23, v22);
    v24 = v23 == v20;
    v20 = v23;
  }

  while (!v24);
  v25 = *(v0 + 72);
  v26 = *(v25 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_totalBytesExpectedCount);
  *(v0 + 88) = v26;
  v27 = atomic_load((v25 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_minimumChunkSize));
  if (v22 >= v27 || v22 >= v26)
  {
    v29 = v22 >= v26;
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);
    v33 = swift_task_alloc();
    *(v0 + 96) = v33;
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v29;
    v34 = swift_task_alloc();
    *(v0 + 104) = v34;
    *v34 = v0;
    v34[1] = sub_B830;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  v36 = *(v0 + 56);
  v35 = *(v0 + 64);
  v37 = sub_14F48();
  sub_8944(v36, v35);
  v38 = sub_14DC8();
  sub_8748(v36, v35);
  if (os_log_type_enabled(v38, v37))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54[0] = v41;
    *v40 = 136446722;
    v42 = sub_14C18();
    v44 = sub_119EC(v42, v43, v54);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2048;
    *(v40 + 14) = v27;
    *(v40 + 22) = 2048;
    *(v40 + 24) = v22;
    _os_log_impl(&dword_0, v38, v37, "Buffering %{public}s until the minimum chunk size of %lu bytes (currently at %llu bytes) is reached…", v40, 0x20u);
    sub_86FC(v41);
  }

  v45 = *(v0 + 64);
  v46 = *(v0 + 56);
  v47 = (*(v0 + 72) + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk);
  os_unfair_lock_lock(v47);
  *(v0 + 40) = &type metadata for Data;
  *(v0 + 48) = &protocol witness table for Data;
  *(v0 + 16) = v46;
  *(v0 + 24) = v45;
  v48 = sub_1221C((v0 + 16), &type metadata for Data);
  v49 = *v48;
  v50 = v48[1];
  sub_8944(v46, v45);
  sub_126F4(v49, v50, &v47[2]);
  sub_86FC((v0 + 16));
  os_unfair_lock_unlock(v47);
  v51 = *(v0 + 8);
  v52 = *(v0 + 80) >= *(v0 + 88);

  return v51(v52);
}

uint64_t sub_B830()
{

  return _swift_task_switch(sub_B948, 0, 0);
}

uint64_t sub_B948()
{
  v1 = (v0[9] + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setExtractionProgress:v0[10] / v0[11]];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v1);
  v3 = v0[1];
  v4 = v0[10] >= v0[11];

  return v3(v4);
}

uint64_t sub_BA24()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20B80);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Suspend stream", v4, 2u);
  }

  v5 = sub_14DC8();
  v6 = sub_14F88();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Suspending the stream pipeline…", v7, 2u);
  }

  v8 = *(v0 + 16);

  v9 = atomic_load((v8 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount));
  v10 = (v8 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock(v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setExtractionProgress:v9 / *(*(v0 + 16) + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_totalBytesExpectedCount)];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v10);
  v12 = *(v0 + 8);

  return v12(v9);
}

uint64_t sub_BC18()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = swift_getObjectType();

  return _swift_task_switch(sub_BC88, 0, 0);
}

uint64_t sub_BC88()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  *(v0 + 48) = sub_77D4(v1, qword_20B80);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Finish stream", v4, 2u);
  }

  v9 = *(v0 + 32);

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v9;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_75AC(&qword_20DD0, &qword_15DA0);
  *v6 = v0;
  v6[1] = sub_BE54;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x74536873696E6966, 0xEE0029286D616572, sub_12044, v5, v7);
}

uint64_t sub_BE54()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_C090;
  }

  else
  {

    v2 = sub_BF70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_BF70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = sub_14DC8();
  v5 = sub_14F88();
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 2;
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "The stream pipeline finished.";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 12;
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    v9 = "The stream pipeline finished after processing %ld bytes.";
  }

  _os_log_impl(&dword_0, v4, v5, v9, v8, v7);

LABEL_7:

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_C090()
{

  v1 = sub_14F68();
  swift_errorRetain();
  v2 = sub_14DC8();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v2, v1, "The stream couldn’t be finished: %{public}@", v3, 0xCu);
    sub_78B8(v4, &qword_20A30, &qword_15D70);
  }

  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_C1E8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_C208, 0, 0);
}

uint64_t sub_C208()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20B80);
  v2 = sub_14F58();
  swift_errorRetain();
  v3 = sub_14DC8();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v3, v2, "Terminate stream with error: %{public}@", v4, 0xCu);
    sub_78B8(v5, &qword_20A30, &qword_15D70);
  }

  swift_errorRetain();
  v7 = sub_14DC8();
  v8 = sub_14F88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, "Finishing the stream pipeline by throwing the error “%{public}@”…", v9, 0xCu);
    sub_78B8(v10, &qword_20A30, &qword_15D70);
  }

  v12 = v0[3];

  v0[2] = v12;
  swift_errorRetain();
  sub_75AC(&unk_20DC0, &qword_15D68);
  sub_14F38();
  v13 = v0[1];

  return v13();
}

uint64_t sub_C4B8()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20B60);
  sub_77D4(v0, qword_20B60);
  return sub_14DD8();
}

uint64_t sub_C538(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_75AC(&unk_20CF0, &qword_15D00);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  if (qword_208B8 != -1)
  {
    swift_once();
  }

  v10 = sub_14DE8();
  sub_77D4(v10, qword_20B60);
  v11 = sub_14F58();
  v12 = *(v4 + 16);
  v12(v9, v35, v3);
  v13 = sub_14DC8();
  v31 = v11;
  v14 = os_log_type_enabled(v13, v11);
  v33 = v12;
  v34 = v4;
  v32 = v4 + 16;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v1;
    v17 = v16;
    v36 = v16;
    *v15 = 136446210;
    v12(v7, v9, v3);
    v18 = sub_14E78();
    v20 = v19;
    (*(v4 + 8))(v9, v3);
    v21 = sub_119EC(v18, v20, &v36);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v13, v31, "Attach: %{public}s", v15, 0xCu);
    sub_86FC(v17);
    v2 = v30;
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  v22 = *v2;
  v23 = sub_14DC8();
  v24 = sub_14F88();
  v25 = os_log_type_enabled(v23, v24);
  if (v22 == 1)
  {
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v23, v24, "Resuming the continuation immediately…", v26, 2u);
    }

    v36 = 0;
    v37 = 1;
    return sub_14EE8();
  }

  else
  {
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v23, v24, "Storing the continuation for later…", v28, 2u);
    }

    v29 = *(type metadata accessor for ProcessingPipeline.Finisher(0) + 20);
    sub_78B8(&v2[v29], &qword_20C78, &qword_15CE8);
    v33(&v2[v29], v35, v3);
    return (*(v34 + 56))(&v2[v29], 0, 1, v3);
  }
}

void sub_C914(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_75AC(&qword_20C78, &qword_15CE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_208B8 != -1)
  {
    swift_once();
  }

  v9 = sub_14DE8();
  sub_77D4(v9, qword_20B60);
  v10 = sub_14F58();
  v11 = sub_14DC8();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v11, v10, "Finish", v12, 2u);
  }

  if (*v2)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_14DC8();
    v14 = sub_14F88();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Finishing…", v15, 2u);
    }

    *v3 = 1;
    v16 = *(type metadata accessor for ProcessingPipeline.Finisher(0) + 20);
    sub_12ED8(&v3[v16], v8, &qword_20C78, &qword_15CE8);
    v17 = sub_75AC(&unk_20CF0, &qword_15D00);
    v18 = *(v17 - 8);
    (*(v18 + 56))(&v3[v16], 1, 1, v17);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_78B8(v8, &qword_20C78, &qword_15CE8);
    }

    else
    {
      v19 = a1;
      v20 = a2 & 1;
      sub_14EE8();
      (*(v18 + 8))(v8, v17);
    }
  }
}

void sub_CBDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75AC(&qword_20C78, &qword_15CE8);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  if (qword_208B8 != -1)
  {
    swift_once();
  }

  v7 = sub_14DE8();
  sub_77D4(v7, qword_20B60);
  v8 = sub_14F58();
  swift_errorRetain();
  v9 = sub_14DC8();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v9, v8, "Finish throwing: %{public}@", v10, 0xCu);
    sub_78B8(v11, &qword_20A30, &qword_15D70);
  }

  if (*v1)
  {
    __break(1u);
  }

  else
  {
    swift_errorRetain();
    v13 = sub_14DC8();
    v14 = sub_14F88();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_0, v13, v14, "Finishing by throwing the error “%{public}@”…", v15, 0xCu);
      sub_78B8(v16, &qword_20A30, &qword_15D70);
    }

    *v2 = 1;
    v18 = *(type metadata accessor for ProcessingPipeline.Finisher(0) + 20);
    sub_12ED8(&v2[v18], v6, &qword_20C78, &qword_15CE8);
    v19 = sub_75AC(&unk_20CF0, &qword_15D00);
    v20 = *(v19 - 8);
    (*(v20 + 56))(&v2[v18], 1, 1, v19);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_78B8(v6, &qword_20C78, &qword_15CE8);
    }

    else
    {
      v21[1] = a1;
      swift_errorRetain();
      sub_14ED8();
      (*(v20 + 8))(v6, v19);
    }
  }
}

uint64_t sub_CF88()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20B80);
  sub_77D4(v0, qword_20B80);
  return sub_14DD8();
}

id sub_D008(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_75AC(&qword_20E50, &qword_15E98);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin(v7);
  v152 = &v136 - v8;
  v9 = sub_75AC(&unk_20DC0, &qword_15D68);
  v153 = *(v9 - 8);
  v154 = v9;
  __chkstk_darwin(v9);
  v151 = &v136 - v10;
  v150 = sub_75AC(&qword_20E20, &qword_15E78);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v136 - v11;
  v12 = sub_75AC(&qword_20DF0, &qword_15E38);
  __chkstk_darwin(v12 - 8);
  v143 = &v136 - v13;
  v14 = sub_75AC(&qword_20E58, &qword_15EA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v136 - v15;
  v147 = sub_14C78();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v18 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProcessingPipeline.Finisher(0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_extractionMemoryFootprint] = 52428800;
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount] = 0;
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_minimumChunkSize] = 0;
  v23 = &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk];
  *v23 = 0;
  *(v23 + 8) = xmmword_15C00;
  v159 = (v23 + 8);
  v24 = &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher];
  *v22 = 0;
  v25 = *(v20 + 28);
  v26 = sub_75AC(&unk_20CF0, &qword_15D00);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  *v24 = 0;
  v27 = *(sub_75AC(&qword_20C70, &qword_15CA0) + 28);
  v28 = sub_75AC(&qword_20E60, &qword_15EA8);
  bzero(&v24[v27], *(*(v28 - 8) + 64));
  v157 = v27;
  v158 = v24;
  v29 = &v24[v27];
  v30 = a1;
  sub_12CB4(v22, v29, type metadata accessor for ProcessingPipeline.Finisher);
  v31 = &Dispatcher;
  v144 = v18;
  v145 = v16;
  if (a1)
  {
    v32 = qword_208C8;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_14DE8();
    sub_77D4(v33, qword_20B80);
    v34 = sub_14F58();

    swift_unknownObjectRetain();
    v35 = sub_14DC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v36 = 136446466;
      v37 = sub_14E28();
      v38 = v30;
      v39 = a2;
      v41 = v40;

      v42 = sub_119EC(v37, v41, v163);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2082;
      swift_getObjectType();
      v164 = v39;
      swift_unknownObjectRetain();
      v43 = sub_14E78();
      v45 = sub_119EC(v43, v44, v163);

      *(v36 + 14) = v45;
      v30 = v38;
      v31 = &Dispatcher;
      _os_log_impl(&dword_0, v35, v34, "Init options: %{public}s delegate: %{public}s", v36, 0x16u);
      swift_arrayDestroy();

LABEL_10:

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_208C8 != -1)
    {
      swift_once();
    }

    v46 = sub_14DE8();
    sub_77D4(v46, qword_20B80);
    v47 = sub_14F58();
    swift_unknownObjectRetain();
    v35 = sub_14DC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v163[0] = v49;
      *v48 = 136446210;
      swift_getObjectType();
      v164 = a2;
      swift_unknownObjectRetain();
      v50 = sub_14E78();
      v52 = sub_119EC(v50, v51, v163);

      *(v48 + 4) = v52;
      v30 = 0;
      v31 = &Dispatcher;
      _os_log_impl(&dword_0, v35, v47, "Init delegate: %{public}s", v48, 0xCu);
      sub_86FC(v49);

      goto LABEL_10;
    }
  }

LABEL_12:

  if (v31[281].count != -1)
  {
    swift_once();
  }

  v53 = sub_14DE8();
  v54 = sub_77D4(v53, qword_20B80);
  v55 = sub_14DC8();
  v56 = sub_14F88();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Initializing the processing pipeline…", v57, 2u);
  }

  swift_unknownObjectWeakInit();
  v58 = swift_unknownObjectWeakAssign();
  LODWORD(v163[0]) = 0;
  v163[1] = 0;
  sub_12D1C(v58, &v163[1]);
  v59 = &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference];
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference] = *v163;
  if (!v30)
  {
    v93 = sub_14F78();
    v94 = sub_14DC8();
    if (os_log_type_enabled(v94, v93))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "No options dictionary was provided.";
      goto LABEL_41;
    }

LABEL_42:

    swift_unknownObjectRelease();
LABEL_43:
    sub_12D54((v59 + 8));
    sub_12D84(v159);
    sub_12DD8(v158 + v157, type metadata accessor for ProcessingPipeline.Finisher);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v60 = sub_14DC8();
  v61 = sub_14F88();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v163[0] = v141;
    *v62 = 136446210;
    v63 = sub_14E28();
    v142 = v54;
    v65 = v30;
    v66 = sub_119EC(v63, v64, v163);
    v54 = v142;

    *(v62 + 4) = v66;
    v30 = v65;
    _os_log_impl(&dword_0, v60, v61, "An options dictionary, “%{public}s”, was provided.", v62, 0xCu);
    sub_86FC(v141);
  }

  v161 = 0xD000000000000017;
  v162 = 0x80000000000165D0;
  sub_14FC8();
  if (!*(v30 + 16) || (v67 = sub_12370(v163), (v68 & 1) == 0))
  {

    sub_12E38(v163);
    goto LABEL_37;
  }

  sub_1204C(*(v30 + 56) + 32 * v67, &v164);
  sub_12E38(v163);
  v69 = sub_12E8C();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_37:
    v93 = sub_14F78();
    v94 = sub_14DC8();
    if (os_log_type_enabled(v94, v93))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "A number value for the key “TotalBytesExpectedCount” wasn’t found in the options dictionary.";
LABEL_41:
      _os_log_impl(&dword_0, v94, v93, v96, v95, 2u);

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v141 = v161;
  v70 = [v161 unsignedLongLongValue];
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_totalBytesExpectedCount] = v70;
  v161 = 0x4965736E6563694CLL;
  v162 = 0xEB000000006F666ELL;
  sub_14FC8();
  if (!*(v30 + 16) || (v71 = sub_12370(v163), (v72 & 1) == 0))
  {

    sub_12E38(v163);
    goto LABEL_46;
  }

  sub_1204C(*(v30 + 56) + 32 * v71, &v164);
  sub_12E38(v163);

  sub_75AC(&unk_20E70, &unk_15EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    v98 = sub_14DC8();
    v99 = sub_14F88();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_0, v98, v99, "A string-keyed dictionary value wasn’t found for the key “LicenseInfo” in the options dictionary.", v100, 2u);
    }

    v101 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_licenseInfo;
    v102 = type metadata accessor for ProcessingPipeline.LicenseInfo(0);
    (*(*(v102 - 8) + 56))(&v3[v101], 1, 1, v102);
    goto LABEL_49;
  }

  v140 = v69;
  v73 = v54;
  v74 = v161;
  v142 = v73;
  v75 = sub_14DC8();
  v76 = sub_14F88();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_0, v75, v76, "License info was provided in the options dictionary.", v77, 2u);
  }

  if (!*(v74 + 16) || (v78 = sub_122F8(0x6361507465737341, 0xEB0000000044496BLL), (v79 & 1) == 0) || (sub_1204C(*(v74 + 56) + 32 * v78, v163), (swift_dynamicCast() & 1) == 0))
  {

    v109 = sub_14F78();
    v110 = sub_14DC8();
    if (!os_log_type_enabled(v110, v109))
    {
LABEL_53:

      swift_unknownObjectRelease();
      goto LABEL_43;
    }

    v111 = swift_slowAlloc();
    *v111 = 0;
    v112 = "A string value for the key “AssetPackID” wasn’t found in the license-info dictionary.";
LABEL_52:
    _os_log_impl(&dword_0, v110, v109, v112, v111, 2u);

    goto LABEL_53;
  }

  v80 = v165;
  if (!*(v74 + 16) || (v81 = v164, v82 = sub_122F8(0x496E6F6973726556, 0xE900000000000044), (v83 & 1) == 0) || (sub_1204C(*(v74 + 56) + 32 * v82, v163), (swift_dynamicCast() & 1) == 0))
  {

    v109 = sub_14F78();
    v110 = sub_14DC8();
    if (!os_log_type_enabled(v110, v109))
    {
      goto LABEL_53;
    }

    v111 = swift_slowAlloc();
    *v111 = 0;
    v112 = "A string value for the key “VersionID” wasn’t found in the license-info dictionary.";
    goto LABEL_52;
  }

  v136 = v81;
  v139 = v80;
  v138 = v59;
  v84 = v165;
  v85 = v145;
  v137 = v164;
  sub_14C58();
  v86 = v146;
  v87 = v147;
  if ((*(v146 + 48))(v85, 1, v147) == 1)
  {

    sub_78B8(v85, &qword_20E58, &qword_15EA0);
    v88 = sub_14F78();

    v89 = sub_14DC8();

    if (os_log_type_enabled(v89, v88))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v163[0] = v91;
      *v90 = 136446210;
      v92 = sub_119EC(v137, v84, v163);

      *(v90 + 4) = v92;
      _os_log_impl(&dword_0, v89, v88, "The version-ID string “%{public}s” isn’t a valid UUID.", v90, 0xCu);
      sub_86FC(v91);
    }

    else
    {
    }

    swift_unknownObjectRelease();
LABEL_70:
    v59 = v138;
    goto LABEL_43;
  }

  v113 = *(v86 + 32);
  v114 = v144;
  v113(v144, v85, v87);
  if (!*(v74 + 16) || (v115 = sub_122F8(0xD000000000000011, 0x80000000000165F0), (v116 & 1) == 0) || (sub_1204C(*(v74 + 56) + 32 * v115, v163), (swift_dynamicCast() & 1) == 0))
  {

    v128 = sub_14F78();
    v129 = sub_14DC8();
    v130 = os_log_type_enabled(v129, v128);
    v131 = v146;
    if (v130)
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_0, v129, v128, "A number value for the key “InternalVersionID” wasn’t found in the license-info dictionary.", v132, 2u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v131 + 8))(v114, v147);
    goto LABEL_70;
  }

  v145 = v164;
  if (!*(v74 + 16) || (v117 = sub_122F8(0x6C646E7542707041, 0xEB00000000444965), (v118 & 1) == 0))
  {

    goto LABEL_73;
  }

  sub_1204C(*(v74 + 56) + 32 * v117, v163);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_73:

    v133 = sub_14F78();
    v134 = sub_14DC8();
    if (os_log_type_enabled(v134, v133))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_0, v134, v133, "A string value for the key “AppBundleID” wasn’t found in the license-info dictionary.", v135, 2u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v146 + 8))(v114, v147);
    goto LABEL_70;
  }

  v158 = v165;
  v159 = v164;
  v119 = type metadata accessor for ProcessingPipeline.LicenseInfo(0);
  v120 = v146;
  v121 = v143;
  v122 = v147;
  (*(v146 + 16))(&v143[v119[5]], v114, v147);
  v123 = v145;
  v124 = [v145 unsignedLongLongValue];

  (*(v120 + 8))(v114, v122);
  v125 = v139;
  *v121 = v136;
  v121[1] = v125;
  *(v121 + v119[6]) = v124;
  v126 = (v121 + v119[7]);
  v127 = v158;
  *v126 = v159;
  v126[1] = v127;
  (*(*(v119 - 1) + 56))(v121, 0, 1, v119);
  sub_12ED8(v121, &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_licenseInfo], &qword_20DF0, &qword_15E38);
LABEL_49:
  sub_75AC(&qword_20C30, &qword_15C70);
  v104 = v155;
  v103 = v156;
  v105 = v152;
  (*(v155 + 104))(v152, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v156);
  v106 = v148;
  v107 = v151;
  sub_14F18();

  (*(v104 + 8))(v105, v103);
  (*(v149 + 32))(&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_stream], v106, v150);
  (*(v153 + 32))(&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_streamContinuation], v107, v154);
  v160.receiver = v3;
  v160.super_class = ObjectType;
  v108 = objc_msgSendSuper2(&v160, "init");
  swift_unknownObjectRelease();
  return v108;
}

id sub_E6A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v3 = sub_14DE8();
  sub_77D4(v3, qword_20B80);
  v4 = sub_14F58();
  v5 = sub_14DC8();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v5, v4, "Deinit", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_E93C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v2 = sub_14D38();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = __chkstk_darwin(v2);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v41 - v5;
  v45 = sub_75AC(&qword_20E30, &qword_15E80);
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v41 - v7;
  v8 = sub_75AC(&qword_20E38, &qword_15E88);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_75AC(&qword_20DF8, &qword_15E40);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_14D78();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v44 = sub_75AC(&qword_20E40, &qword_15E90);
  v21 = *(v44 - 8);
  v22 = __chkstk_darwin(v44);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v51 = &v41 - v25;
  sub_83D4(v43, v13, &qword_20DF8, &qword_15E40);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_78B8(v13, &qword_20DF8, &qword_15E40);
    (*(v6 + 56))(v10, 1, 1, v45);
    sub_14CF8();
    sub_14D18();
    sub_78B8(v10, &qword_20E38, &qword_15E88);
  }

  else
  {
    v26 = *(v15 + 32);
    v41 = v20;
    v26(v20, v13, v14);
    v27 = sub_14CF8();
    (*(v15 + 16))(v18, v20, v14);
    v54[0] = sub_14CE8();
    v55 = v54;

    v52 = v27;
    v57 = &protocol witness table for DecryptionProcessor;
    v28 = v42;
    sub_14D08();

    v29 = *(v6 + 16);
    v43 = v24;
    v30 = v45;
    v29(v10, v28, v45);
    (*(v6 + 56))(v10, 0, 1, v30);
    sub_14D18();

    sub_78B8(v10, &qword_20E38, &qword_15E88);
    v31 = v30;
    v24 = v43;
    (*(v6 + 8))(v28, v31);
    (*(v15 + 8))(v41, v14);
  }

  v32 = v46;
  sub_14D28();
  v33 = v51;
  v34 = v44;
  (*(v21 + 16))(v24, v51, v44);
  v55 = v24;
  v36 = v49;
  v35 = v50;
  v37 = v47;
  (*(v49 + 16))(v47, v32, v50);
  v56 = v37;
  v54[0] = v34;
  v54[1] = v35;
  v52 = sub_12C6C(&qword_20E48, &qword_20E40, &qword_15E90, &protocol conformance descriptor for ConditionalProcessor<A>);
  v53 = &protocol witness table for DecompressionProcessor;
  sub_14D08();
  v38 = *(v36 + 8);
  v38(v32, v35);
  v39 = *(v21 + 8);
  v39(v33, v34);
  v38(v37, v35);
  return (v39)(v24, v34);
}

uint64_t sub_EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_stream;
  v14 = (&async function pointer to dispatch thunk of StreamPipeline.process<A>(_:) + async function pointer to dispatch thunk of StreamPipeline.process<A>(_:));
  v10 = swift_task_alloc();
  v7[5] = v10;
  v11 = sub_75AC(&qword_20E20, &qword_15E78);
  v12 = sub_12C6C(&qword_20E28, &qword_20E20, &qword_15E78, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  *v10 = v7;
  v10[1] = sub_F0D8;

  return v14(a5 + v9, v11, v12);
}

uint64_t sub_F0D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_F3B4;
  }

  else
  {
    v4 = sub_F1EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F1EC()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20B80);
  v2 = sub_14DC8();
  v3 = sub_14F88();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "The stream pipeline successfully processed %ld bytes.", v5, 0xCu);
  }

  v6 = v0[6];
  v7 = v0[2];

  v8 = (v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher));
  sub_75AC(&qword_20C70, &qword_15CA0);
  sub_C914(v6, 0);
  os_unfair_lock_unlock(v8);
  v9 = (v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_14E58();
    [v11 extractionCompleteAtArchivePath:v12];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v9);
  v13 = v0[1];

  return v13();
}

uint64_t sub_F3B4()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20B80);
  v2 = sub_14F68();
  swift_errorRetain();
  v3 = sub_14DC8();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v3, v2, "The stream pipeline failed: %{public}@", v4, 0xCu);
    sub_78B8(v5, &qword_20A30, &qword_15D70);
  }

  v7 = v0[7];
  v8 = v0[2];

  v9 = (v8 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock(v9);
  sub_75AC(&qword_20C70, &qword_15CA0);
  sub_CBDC(v7);
  os_unfair_lock_unlock(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_83D4(a3, v25 - v10, &qword_20A08, &qword_15A20);
  v12 = sub_14F08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_78B8(v11, &qword_20A08, &qword_15A20);
  }

  else
  {
    sub_14EF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_14EC8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_14E88() + 32;
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t sub_F9D8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_14E68();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_3940;

  return sub_99AC(v5, v7);
}

void sub_FAAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v24 = a5;
  v22[1] = a2;
  v26 = a1;
  v8 = sub_75AC(&qword_20C30, &qword_15C70);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v25 = sub_75AC(&qword_20DE0, &qword_15E00);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = v22 - v12;
  v14 = a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk));
  v22[0] = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_streamContinuation;
  v16 = *(v14 + 16);
  *&v28 = *(v14 + 8);
  v15 = v28;
  *(&v28 + 1) = v16;
  v27[3] = &type metadata for Data;
  v27[4] = &protocol witness table for Data;
  v27[0] = a3;
  v27[1] = a4;
  v17 = sub_1221C(v27, &type metadata for Data);
  v18 = *v17;
  v19 = v17[1];
  sub_8944(v15, v16);
  sub_8944(a3, a4);
  sub_126F4(v18, v19, &v28);
  sub_86FC(v27);
  v20 = *(v9 + 72);
  *v11 = v28;
  v11[16] = v24;
  v21 = sub_75AC(&qword_20DE8, &qword_15E08);
  (*(*(v21 - 8) + 16))(&v11[v20], v26, v21);
  sub_75AC(&unk_20DC0, &qword_15D68);
  sub_14F28();
  (*(v23 + 8))(v13, v25);
  sub_8748(*(v14 + 8), *(v14 + 16));
  *(v14 + 8) = xmmword_15C00;
  os_unfair_lock_unlock(v14);
}

uint64_t sub_FEA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_14C38();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_4258;

  return sub_B330(v7, v9);
}

uint64_t sub_100F0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_52EC;

  return sub_BA04();
}

uint64_t sub_10198(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher));
  sub_75AC(&qword_20C70, &qword_15CA0);
  sub_C538(a1);
  os_unfair_lock_unlock(v3);
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v4 = sub_14DE8();
  sub_77D4(v4, qword_20B80);
  v5 = sub_14DC8();
  v6 = sub_14F88();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Finishing the stream pipeline…", v7, 2u);
  }

  sub_75AC(&unk_20DC0, &qword_15D68);
  return sub_14F38();
}

uint64_t sub_10464(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_61F4;

  return sub_BC18();
}

uint64_t sub_10694(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_71A8;

  return sub_C1E8(v6);
}

void sub_10788(uint64_t a1)
{
  sub_10A88(319, &qword_20C20, type metadata accessor for ProcessingPipeline.LicenseInfo, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_109F8(319, &qword_20C28, &type metadata accessor for AsyncThrowingStream);
    if (v2 <= 0x3F)
    {
      sub_109F8(319, &qword_20C40, &type metadata accessor for AsyncThrowingStream.Continuation);
      if (v3 <= 0x3F)
      {
        sub_10A88(319, &qword_20C48, type metadata accessor for ProcessingPipeline.Finisher, &type metadata accessor for Mutex);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_109B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_109F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_109B0(&qword_20C30, &qword_15C70);
    v7 = sub_109B0(&qword_20C38, &qword_15C78);
    v8 = a3(a1, v6, v7, &protocol self-conformance witness table for Error);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_10B0C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C50, &qword_15C80);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10B3C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C58, &qword_15C88);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10B6C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C60, &qword_15C90);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10B9C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C68, &qword_15C98);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10BCC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C70, &qword_15CA0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10BFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10C1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10C68(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_75AC(&qword_20C78, &qword_15CE8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10D38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_75AC(&qword_20C78, &qword_15CE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10DE4(uint64_t a1)
{
  sub_10E60(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10E60(uint64_t a1)
{
  if (!qword_20CE8)
  {
    sub_109B0(&unk_20CF0, &qword_15D00);
    v1 = sub_14F98();
    if (!v2)
    {
      atomic_store(v1, &qword_20CE8);
    }
  }
}

uint64_t sub_10ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_14C78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10F98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_14C78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1103C(uint64_t a1)
{
  result = sub_14C78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_110CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_10694(v2, v3, v4);
}

uint64_t sub_11180(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_11278;

  return v6(a1);
}

uint64_t sub_11278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_11370(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_99A8;

  return v6();
}

uint64_t sub_11458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_8850;

  return v7();
}

uint64_t sub_11540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_83D4(a3, v23 - v10, &qword_20A08, &qword_15A20);
  v12 = sub_14F08();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_78B8(v11, &qword_20A08, &qword_15A20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_14EF8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_14EC8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_14E88() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_78B8(a3, &qword_20A08, &qword_15A20);

    return v21;
  }

LABEL_8:
  sub_78B8(a3, &qword_20A08, &qword_15A20);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1183C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_13020;

  return v6(a1);
}

uint64_t sub_11934(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_99A8;

  return sub_1183C(a1, v4);
}

unint64_t sub_119EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_11AB8(v11, 0, 0, 1, a1, a2);
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
    sub_1204C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_86FC(v11);
  return v7;
}

unint64_t sub_11AB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_11BC4(a5, a6);
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
    result = sub_14FF8();
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

char *sub_11BC4(uint64_t a1, unint64_t a2)
{
  v3 = sub_11C10(a1, a2);
  sub_11D40(&off_1C9E0);
  return v3;
}

char *sub_11C10(uint64_t a1, unint64_t a2)
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

  v6 = sub_11E2C(v5, 0);
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

  result = sub_14FF8();
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
        v10 = sub_14EB8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_11E2C(v10, 0);
        result = sub_14FD8();
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

uint64_t sub_11D40(uint64_t result)
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

  result = sub_11EA0(result, v11, 1, v3);
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

void *sub_11E2C(uint64_t a1, uint64_t a2)
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

  sub_75AC(&qword_20DD8, &qword_15DA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11EA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_75AC(&qword_20DD8, &qword_15DA8);
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

uint64_t sub_11F98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_10464(v2, v3);
}

uint64_t sub_1204C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_120AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_100F0(v2, v3);
}

uint64_t sub_12158()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_8850;

  return sub_FEA0(v2, v3, v4);
}

void *sub_1221C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_12260(uint64_t a1)
{
  sub_14C78();
  sub_12F9C(&qword_20A68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_14E38();

  return sub_123B4(a1, v2);
}

unint64_t sub_122F8(uint64_t a1, uint64_t a2)
{
  sub_15118();
  sub_14E98();
  v4 = sub_15138();

  return sub_12574(a1, a2, v4);
}

unint64_t sub_12370(uint64_t a1)
{
  v2 = v1;
  v4 = sub_14FA8(*(v2 + 40));

  return sub_1262C(a1, v4);
}

unint64_t sub_123B4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_14C78();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_12F9C(&unk_20E80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_14E48();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_12574(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_15098())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1262C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_12F40(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_14FB8();
      sub_12E38(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_126F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_14C28();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1282C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1282C(v4, v5);
  }

  return sub_14C28();
}

uint64_t sub_1282C(uint64_t a1, uint64_t a2)
{
  result = sub_14AC8();
  if (!result || (result = sub_14AE8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_14AD8();
      return sub_14C28();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_128C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_F9D8(v2, v3, v4);
}

uint64_t sub_12998()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_129E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_99A8;

  return sub_EFB0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_12AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12AFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_99A8;

  return sub_11180(a1, v4);
}

uint64_t sub_12BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8850;

  return sub_11180(a1, v4);
}

uint64_t sub_12C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_109B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_12CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_12E8C()
{
  result = qword_20E68;
  if (!qword_20E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_20E68);
  }

  return result;
}

uint64_t sub_12ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_75AC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_12F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessingPipelineError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ProcessingPipelineError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_13120()
{
  sub_15118();
  sub_15128(0);
  return sub_15138();
}

Swift::Int sub_1318C(uint64_t a1)
{
  sub_15118();
  sub_15128(0);
  return sub_15138();
}

unint64_t sub_1321C()
{
  result = qword_20E90;
  if (!qword_20E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E90);
  }

  return result;
}

void sub_13270()
{
  if (qword_208D8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20E98);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Start if necessary", v4, 2u);
  }

  v5 = *(v0 + 16);
  oslog = sub_14DC8();
  v6 = sub_14F88();
  v7 = os_log_type_enabled(oslog, v6);
  if (v5)
  {
    if (v7)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, oslog, v6, "App License Delivery was previously started.", v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, oslog, v6, "Starting App License Delivery…", v9, 2u);
    }

    sub_14D98();
    *(v0 + 16) = 1;
  }
}

uint64_t sub_13538()
{
  type metadata accessor for AppLicenseDeliverySession();
  swift_allocObject();
  result = sub_135F4();
  qword_217C0 = result;
  return result;
}

uint64_t sub_13574()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20E98);
  sub_77D4(v0, qword_20E98);
  return sub_14DD8();
}

uint64_t sub_135F4()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_208D8 != -1)
  {
    swift_once();
  }

  v2 = sub_14DE8();
  sub_77D4(v2, qword_20E98);
  v3 = sub_14F58();
  v4 = sub_14DC8();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v4, v3, "Init", v5, 2u);
  }

  return v1;
}

uint64_t sub_136D4()
{
  sub_14DB8();
  sub_14DA8();
  sub_13AE8();
  sub_14EC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_208D8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20E98);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Deinit", v4, 2u);
  }

  v5 = *(v0 + 16);
  v6 = sub_14DC8();
  v7 = sub_14F88();
  v8 = os_log_type_enabled(v6, v7);
  if (v5 == 1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v6, v7, "Stopping App License Delivery…", v9, 2u);
    }

    sub_14D88();
  }

  else
  {
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v6, v7, "App License Delivery wasn’t previously started.", v10, 2u);
    }
  }

  return v0;
}

uint64_t sub_139F0(uint64_t a1)
{
  sub_136D4();

  return _swift_deallocClassInstance(a1, 17, 7);
}

uint64_t sub_13A30()
{
  sub_14DB8();
  sub_14DA8();
  sub_13AE8();
  v1 = sub_14EC8();
  v3 = v2;

  return _swift_task_deinitOnExecutor(v0, sub_139F0, v1, v3, 0);
}

unint64_t sub_13AE8()
{
  result = qword_20E00;
  if (!qword_20E00)
  {
    sub_14DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E00);
  }

  return result;
}

uint64_t sub_13B40(uint64_t a1)
{
  v2 = sub_75AC(&qword_20A30, &qword_15D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13BA8()
{
  if (qword_208E0 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20F50);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Helper", v4, 2u);
  }

  sub_75AC(&qword_20F68, &qword_16030);
  result = sub_14C98();
  if (!result)
  {
    v6 = sub_14DC8();
    v7 = sub_14F88();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Connecting to the helper service…", v8, 2u);
    }

    sub_14D68();
    result = sub_14D58();
    if (!v0)
    {
      return sub_14C88();
    }
  }

  return result;
}

uint64_t sub_13D54()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20F50);
  sub_77D4(v0, qword_20F50);
  return sub_14DD8();
}

uint64_t sub_13DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_13E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ResumptionInfo(uint64_t a1)
{
  result = qword_20FC8;
  if (!qword_20FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13F28(uint64_t a1)
{
  result = sub_14C78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_13FB4()
{
  v1 = *v0;
  sub_15118();
  sub_15128(v1);
  return sub_15138();
}

Swift::Int sub_14028(uint64_t a1)
{
  v2 = *v1;
  sub_15118();
  sub_15128(v2);
  return sub_15138();
}

uint64_t sub_1406C()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_14098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_15098() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_15098();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_14180(uint64_t a1)
{
  v2 = sub_146F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_141BC(uint64_t a1)
{
  v2 = sub_146F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_141F8(void *a1)
{
  v3 = sub_75AC(&qword_21018, &qword_160A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1221C(a1, a1[3]);
  sub_146F8();
  sub_15158();
  v8[15] = 0;
  sub_14C78();
  sub_1480C(&qword_21020, &protocol conformance descriptor for UUID);
  sub_15058();
  if (!v1)
  {
    type metadata accessor for ResumptionInfo(0);
    v8[14] = 1;
    sub_15068();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1439C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = sub_14C78();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_75AC(&qword_21000, &qword_160A0);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ResumptionInfo(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1221C(a1, a1[3]);
  sub_146F8();
  sub_15148();
  if (v2)
  {
    return sub_86FC(a1);
  }

  v18 = v10;
  v11 = v20;
  v25 = 0;
  sub_1480C(&qword_21010, &protocol conformance descriptor for UUID);
  v12 = v22;
  sub_15038();
  v13 = v18;
  (*(v11 + 32))(v18, v5, v12);
  v24 = 1;
  v14 = sub_15048();
  v15 = v13;
  v16 = *(v8 + 20);
  (*(v21 + 8))(v7, v23);
  *(v15 + v16) = v14;
  sub_1474C(v15, v19);
  sub_86FC(a1);
  return sub_147B0(v15);
}

unint64_t sub_146F8()
{
  result = qword_21008;
  if (!qword_21008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21008);
  }

  return result;
}

uint64_t sub_1474C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResumptionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_147B0(uint64_t a1)
{
  v2 = type metadata accessor for ResumptionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1480C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_14C78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResumptionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResumptionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_149C4()
{
  result = qword_21028;
  if (!qword_21028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21028);
  }

  return result;
}

unint64_t sub_14A1C()
{
  result = qword_21030;
  if (!qword_21030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21030);
  }

  return result;
}

unint64_t sub_14A74()
{
  result = qword_21038;
  if (!qword_21038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21038);
  }

  return result;
}