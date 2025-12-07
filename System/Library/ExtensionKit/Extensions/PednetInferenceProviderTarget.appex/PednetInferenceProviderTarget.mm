Swift::String __swiftcall compiledModelPath()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_10000DDD4();
  v2 = sub_10000DDD4();
  v3 = [v0 pathForResource:v1 ofType:v2];

  if (v3)
  {
    v6 = sub_10000DDE4();
    v8 = v7;

    v4 = v6;
    v5 = v8;
  }

  else
  {
    __break(1u);
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t static CMb788Model.Create(from_file:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10000DA74();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100001568, 0, 0);
}

uint64_t sub_100001568()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  sub_10000DA54();
  v5 = [objc_allocWithZone(MLModelConfiguration) init];
  [v5 setComputeUnits:3];
  sub_10000172C();
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  v7 = sub_100001A14(v2, v6);

  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = swift_allocObject();
  swift_defaultActor_initialize();

  (*(v10 + 8))(v8, v9);
  *(v11 + 112) = v7;

  v12 = v0[1];

  return v12(v11);
}

unint64_t sub_10000172C()
{
  result = qword_1000185A8;
  if (!qword_1000185A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000185A8);
  }

  return result;
}

uint64_t sub_100001778(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1000017B8(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t CMb788Model.predict(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100001808, v1, 0);
}

uint64_t sub_100001808()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000018A8;
  v2 = *(v0 + 16);

  return MLModel.prediction(from:)(v2);
}

uint64_t sub_1000018A8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t CMb788Model.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100001A14(uint64_t a1, uint64_t a2)
{
  sub_10000DA64(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_10000DA74();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10000DA44();

    swift_willThrow();
    v12 = sub_10000DA74();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100001B98()
{
  v0 = sub_10000DD34();
  sub_100008940(v0, qword_100018BB8);
  sub_100002410(v0, qword_100018BB8);
  return sub_10000DD24();
}

unint64_t protobufToTensor(_:)(void *a1)
{
  v2 = type metadata accessor for CoreMotionPednet_Request(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100018BB0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000DD34();
  sub_100002410(v5, qword_100018BB8);
  sub_100008144(a1, v4, type metadata accessor for CoreMotionPednet_Request);
  v6 = sub_10000DD14();
  v7 = sub_10000DEA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136315138;
    v10 = sub_10000DE74();
    v12 = v11;
    sub_100002448(v4);
    v13 = sub_100006954(v10, v12, &v64);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "biometrics: %s", v8, 0xCu);
    sub_100007DF0(v9);
  }

  else
  {

    sub_100002448(v4);
  }

  sub_1000024A4(&qword_100018658, &qword_10000E6C0);
  v55 = sub_1000024A4(&qword_100018660, &qword_10000E6C8);
  v14 = *(v55 - 8);
  v56 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10000E6A0;
  v48 = v16;
  v17 = (v16 + v15);
  *v17 = 0x785F6C65636361;
  v17[1] = 0xE700000000000000;
  v61 = sub_1000024A4(&qword_100018668, &qword_10000E6D0);
  v18 = *(sub_10000DD64() - 8);
  v59 = *(v18 + 72);
  v62 = *(v18 + 80);
  v19 = (v62 + 32) & ~v62;
  v20 = swift_allocObject();
  v63 = xmmword_10000E6B0;
  *(v20 + 16) = xmmword_10000E6B0;
  v64 = a1[1];

  v60 = a1;
  v58 = sub_1000024A4(&qword_100018670, &qword_10000E6D8);
  v53 = sub_100002534(&qword_100018678, &qword_100018670, &qword_10000E6D8);
  sub_10000DD84();
  v64 = v20;
  v21 = sub_1000024A4(&qword_100018680, &qword_10000E6E0);
  v22 = sub_100002534(&qword_100018688, &qword_100018680, &qword_10000E6E0);
  v57 = v17;
  v54 = v21;
  v23 = v22;
  sub_10000DD74();
  v25 = v55;
  v24 = v56;
  v26 = (v17 + v56);
  *v26 = 0x795F6C65636361;
  v26[1] = 0xE700000000000000;
  v27 = swift_allocObject();
  *(v27 + 16) = v63;
  v64 = v60[2];

  v52 = v19;
  sub_10000DD84();
  v64 = v27;
  sub_10000DD74();
  v28 = (v57 + 2 * v24);
  v50 = *(v25 + 48);
  *v28 = 0x7A5F6C65636361;
  v28[1] = 0xE700000000000000;
  v29 = swift_allocObject();
  *(v29 + 16) = v63;
  v30 = v60;
  v64 = v60[3];

  sub_10000DD84();
  v64 = v29;
  v51 = v23;
  sub_10000DD74();
  v31 = v57;
  v32 = (v57 + 3 * v24);
  *v32 = 0x785F6F727967;
  v32[1] = 0xE600000000000000;
  v33 = swift_allocObject();
  *(v33 + 16) = v63;
  v64 = v30[4];

  sub_10000DD84();
  v64 = v33;
  sub_10000DD74();
  v34 = v55;
  v35 = v56;
  v50 = 4 * v56;
  v36 = (v31 + 4 * v56);
  v49 = *(v55 + 48);
  *v36 = 0x795F6F727967;
  v36[1] = 0xE600000000000000;
  v37 = swift_allocObject();
  *(v37 + 16) = v63;
  v38 = v60;
  v64 = v60[5];

  sub_10000DD84();
  v64 = v37;
  v39 = v57;
  sub_10000DD74();
  v40 = (v39 + v50 + v35);
  v50 = *(v34 + 48);
  *v40 = 0x7A5F6F727967;
  v40[1] = 0xE600000000000000;
  v41 = swift_allocObject();
  *(v41 + 16) = v63;
  v64 = v38[6];

  sub_10000DD84();
  v64 = v41;
  sub_10000DD74();
  v42 = (v39 + 6 * v56);
  *v42 = 0x746867696568;
  v42[1] = 0xE600000000000000;
  v43 = swift_allocObject();
  *(v43 + 16) = v63;
  sub_1000024A4(&qword_100018690, &qword_10000E6E8);
  result = swift_allocObject();
  *(result + 16) = v63;
  v45 = v60[7];
  if (*(v45 + 16))
  {
    *(result + 32) = *(v45 + 32);
    v64 = result;
    sub_10000DD84();
    v64 = v43;
    sub_10000DD74();
    v46 = sub_100007BFC(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002410(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002448(uint64_t a1)
{
  v2 = type metadata accessor for CoreMotionPednet_Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000024A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000024EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002534(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000024EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002644()
{
  sub_10000DB44();

  return swift_deallocClassInstance();
}

uint64_t sub_1000026B8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_100002794(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t CoreMotionPednetV1InferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptySetSingleton;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t CoreMotionPednetV1InferenceProvider.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptySetSingleton;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t _s29PednetInferenceProviderTarget010CoreMotiona2V1bC0C15transitionAsset_2toy20ModelManagerServices0bcI10DescriptorV_AF9LoadStateOtYaAF0B5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = v3;
  v4[21] = a3;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_1000028C0, v3, 0);
}

uint64_t sub_1000028C0()
{
  v51 = v0;
  v1 = sub_10000DB54();
  v3 = v2;
  v48 = v1;
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  v4 = sub_10000DB74();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  v7 = *(v5 + 16);
  v7();
  v8 = (*(v5 + 88))(v6, v4);
  if (&enum case for LoadState.unloaded(_:) && v8 == enum case for LoadState.unloaded(_:))
  {
    v9 = v0 + 16;
    if (qword_100018BB0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000DD34();
    sub_100002410(v10, qword_100018BB8);

    v11 = sub_10000DD14();
    v12 = sub_10000DEA4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v50 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100006954(v48, v3, &v50);
      _os_log_impl(&_mh_execute_header, v11, v12, "Transition to unloaded for %s", v13, 0xCu);
      sub_100007DF0(v14);
    }

    v15 = (*(**(v0 + 160) + 120))(v0 + 16);
    sub_100007104(v48, v3);

LABEL_15:

    v15(v9, 0);
LABEL_33:

    v45 = *(v0 + 8);

    return v45();
  }

  if (&enum case for LoadState.dynamicMode(_:) && v8 == enum case for LoadState.dynamicMode(_:))
  {
    v9 = v0 + 48;
    if (qword_100018BB0 != -1)
    {
      swift_once();
    }

    v16 = sub_10000DD34();
    sub_100002410(v16, qword_100018BB8);

    v17 = sub_10000DD14();
    v18 = sub_10000DEA4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100006954(v48, v3, &v50);
      _os_log_impl(&_mh_execute_header, v17, v18, "Transition to dynamic mode (aka loaded) for %s", v19, 0xCu);
      sub_100007DF0(v20);
    }

    v15 = (*(**(v0 + 160) + 120))(v0 + 48);
    sub_100006FB4(&v50, v48, v3);
    goto LABEL_15;
  }

  if (!&enum case for LoadState.loaded(_:) || v8 != enum case for LoadState.loaded(_:))
  {

    if (qword_100018BB0 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 152);
    v36 = sub_10000DD34();
    sub_100002410(v36, qword_100018BB8);
    v37 = swift_task_alloc();
    (v7)(v37, v35, v4);
    v38 = sub_10000DD14();
    v39 = sub_10000DEB4();
    if (os_log_type_enabled(v38, v39))
    {
      buf = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *buf = 136315138;
      sub_100007E5C(&qword_1000186A0, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      v46 = v39;
      v40 = sub_10000DF44();
      v42 = v41;
      v43 = *(v5 + 8);
      v43(v37, v4);
      v44 = sub_100006954(v40, v42, &v50);

      *(buf + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v46, "Unknown load state: %s", buf, 0xCu);
      sub_100007DF0(v49);
    }

    else
    {

      v43 = *(v5 + 8);
      v43(v37, v4);
    }

    v43(v6, v4);
    goto LABEL_33;
  }

  if (qword_100018BB0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000DD34();
  sub_100002410(v21, qword_100018BB8);

  v22 = sub_10000DD14();
  v23 = sub_10000DEA4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v50 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100006954(v48, v3, &v50);
    _os_log_impl(&_mh_execute_header, v22, v23, "Transition to loaded for %s", v24, 0xCu);
    sub_100007DF0(v25);
  }

  v26 = sub_10000DD14();
  v27 = sub_10000DEA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 136315138;
    v30 = compiledModelPath()();
    v31 = sub_100006954(v30._countAndFlagsBits, v30._object, &v50);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Loading model from file: %s", v28, 0xCu);
    sub_100007DF0(v29);
  }

  type metadata accessor for CMb788Model();
  v32 = compiledModelPath()();
  *(v0 + 200) = v32._object;
  v33 = swift_task_alloc();
  *(v0 + 208) = v33;
  *v33 = v0;
  v33[1] = sub_100003160;

  return static CMb788Model.Create(from_file:)(v32._countAndFlagsBits, v32._object);
}

uint64_t sub_100003160(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);

    v6 = sub_1000033CC;
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 160);

    *(v4 + 224) = a1;
    v6 = sub_1000032C8;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000032C8()
{
  v8 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  (*(*v3 + 136))(v0[28]);
  v4 = (*(*v3 + 120))(v0 + 10);
  sub_100006FB4(&v7, v2, v1);

  v4(v0 + 10, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000033CC()
{
  v1 = *(v0 + 168);
  swift_getErrorValue();
  sub_10000DF74();
  sub_100007EA4(&_swiftEmptyArrayStorage);
  sub_10000DAC4();
  v2 = enum case for InferenceError.loadFailed(_:);
  v3 = sub_10000DAD4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  sub_100007E5C(&qword_1000186A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t _s29PednetInferenceProviderTarget010CoreMotiona2V1bC0C14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0bC20RequestConfigurationVtYaAG0B5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100003548, v4, 0);
}

uint64_t sub_100003548()
{
  if (qword_100018BB0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v0 = sub_10000DD34();
  sub_100002410(v0, qword_100018BB8);
  v1 = sub_10000DD14();
  v2 = sub_10000DEA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "InferenceProvider requestOneShot called", v3, 2u);
  }

  v4 = sub_10000DB64();
  v5 = 0;
  v6 = v4 + 56;
  v31 = v4;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (63 - v7) >> 6;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          goto LABEL_24;
        }

        v9 = *(v6 + 8 * v11);
        ++v5;
        if (v9)
        {
          v5 = v11;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_14:
    v12 = (*(v31 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(**(v32 + 40) + 104);

    v17 = v15(v16);
    if (!*(v17 + 16))
    {

      __break(1u);
      return result;
    }

    sub_10000DFC4();
    sub_10000DE34();
    v18 = sub_10000DFD4();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      break;
    }

    v9 &= v9 - 1;
    v21 = ~v19;
    while (1)
    {
      v22 = (*(v17 + 48) + 16 * v20);
      v23 = *v22 == v14 && v22[1] == v13;
      if (v23 || (sub_10000DF54() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_23:

  __break(1u);
LABEL_24:

  v24 = sub_10000DAD4();
  *(v32 + 56) = v24;
  *(v32 + 64) = *(v24 - 8);
  v25 = swift_task_alloc();
  *(v32 + 72) = v25;
  v26 = swift_task_alloc();
  *(v32 + 80) = v26;
  *v26 = v32;
  v26[1] = sub_1000038D0;
  v28 = *(v32 + 16);
  v29 = *(v32 + 24);

  return sub_100003A88(v28, v29, v27, v25);
}

uint64_t sub_1000038D0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 40);

    return _swift_task_switch(sub_100003A08, v4, 0);
  }

  else
  {

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_100003A08()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100003A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a1;
  v5[5] = a2;
  v5[8] = type metadata accessor for CoreMotionPednet_Request(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100003B2C, v4, 0);
}

uint64_t sub_100003B2C()
{
  v1 = sub_10000DA94();
  v0[11] = v1;
  v0[12] = v2;
  if (v2 >> 60 == 15)
  {
LABEL_2:
    v3 = v0[4];
    v4 = v0[5];
    v5 = sub_10000DAB4();
    (*(*(v5 - 8) + 16))(v3, v4, v5);

    v6 = v0[1];

    return v6();
  }

  v7 = v1;
  v8 = v2;
  if (qword_100018BB0 != -1)
  {
    swift_once();
  }

  v9 = sub_10000DD34();
  v0[13] = sub_100002410(v9, qword_100018BB8);
  v10 = sub_10000DD14();
  v11 = sub_10000DEA4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Serialize protobuf...", v12, 2u);
  }

  v0[2] = v7;
  v0[3] = v8;
  sub_10000DBC4();
  swift_task_alloc();
  sub_100008748(v7, v8);
  sub_10000DBB4();
  sub_100007E5C(&qword_1000188B8, type metadata accessor for CoreMotionPednet_Request, &protocol conformance descriptor for CoreMotionPednet_Request);
  sub_10000DC74();
  v14 = v0[10];

  v15 = protobufToTensor(_:)(v14);
  v0[14] = v15;
  v16 = sub_10000DD14();
  v17 = sub_10000DEA4();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Tensor converted, about to run inference...", v19, 2u);
  }

  v20 = v0[6];

  v26 = (*(*v20 + 128))(v21, v22, v23, v24, v25);
  v0[15] = v26;
  if (!v26)
  {
    v29 = v0[9];
    v28 = v0[10];

    sub_100008144(v28, v29, type metadata accessor for CoreMotionPednet_Request);
    v30 = sub_10000DD14();
    v31 = sub_10000DEA4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[9];
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      v35 = *v33;
      sub_100002448(v33);
      *(v34 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received request with timestamp %llu", v34, 0xCu);

      sub_100008088(v7, v8);
    }

    else
    {
      sub_100002448(v0[9]);
      sub_100008088(v7, v8);
    }

    sub_100002448(v0[10]);
    goto LABEL_2;
  }

  v27 = swift_task_alloc();
  v0[16] = v27;
  *v27 = v0;
  v27[1] = sub_100004168;

  return CMb788Model.predict(for:)(v15);
}

uint64_t sub_100004168(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[6];

    v5 = sub_100004E30;
  }

  else
  {
    v4 = v3[6];

    v5 = sub_1000042C0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000042C0()
{
  v25 = v0;

  v1 = sub_10000DD14();
  v2 = sub_10000DEA4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v24 = v4;
    *v3 = 136315138;
    sub_10000DD64();
    v5 = sub_10000DD94();
    v7 = sub_100006954(v5, v6, &v24);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Inference run. Output: %s", v3, 0xCu);
    sub_100007DF0(v4);
  }

  v8 = v0[17];
  v0[19] = &_swiftEmptyArrayStorage;
  v0[20] = 0;
  v9 = sub_1000024A4(&qword_1000188C8, &qword_10000EB08);
  v0[21] = v9;
  v0[22] = *(v9 - 8);
  v10 = swift_task_alloc();
  v0[23] = v10;
  v11 = sub_10000DD64();
  v0[24] = v11;
  v12 = *(v11 - 8);
  v0[25] = v12;
  v13 = swift_task_alloc();
  v0[26] = v13;
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v13;

  v19 = sub_100007B78(0x6E69625F70657473, 0xEB00000000797261, sub_100006EFC);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return MLTensor.shapedArray<A>(of:)(v13, v14, v15, v16, v17);
  }

  (*(v12 + 16))(v18, *(v0[17] + 56) + *(v12 + 72) * v19, v11);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_100004600;
  v14 = &type metadata for Float;
  v16 = &protocol witness table for Float;
  v17 = &protocol witness table for Float;
  v13 = v10;
  v15 = &type metadata for Float;

  return MLTensor.shapedArray<A>(of:)(v13, v14, v15, v16, v17);
}

uint64_t sub_100004600()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100004774, v4, 0);
}

uint64_t sub_100004774()
{
  v58 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  sub_100008818();
  v5 = sub_10000DD44();
  (*(v2 + 8))(v1, v3);

  v11 = *(v5 + 16);
  v12 = *(v4 + 16);
  v13 = v12 + v11;
  if (__OFADD__(v12, v11))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 152);
  if (isUniquelyReferenced_nonNull_native && v13 <= *(v14 + 3) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v12 <= v13)
  {
    v19 = v12 + v11;
  }

  else
  {
    v19 = v12;
  }

  isUniquelyReferenced_nonNull_native = sub_100006850(isUniquelyReferenced_nonNull_native, v19, 1, *(v0 + 152));
  v14 = isUniquelyReferenced_nonNull_native;
  if (!*(v5 + 16))
  {
LABEL_13:

    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_5:
  v15 = *(v14 + 2);
  if ((*(v14 + 3) >> 1) - v15 < v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  memcpy(&v14[4 * v15 + 32], (v5 + 32), 4 * v11);

  if (v11)
  {
    v16 = *(v14 + 2);
    v17 = __OFADD__(v16, v11);
    v18 = v16 + v11;
    if (v17)
    {
LABEL_35:
      __break(1u);
      return MLTensor.shapedArray<A>(of:)(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10);
    }

    *(v14 + 2) = v18;
  }

LABEL_14:
  v20 = *(v0 + 160) + 1;
  if (*(v0 + 160) != 4)
  {
    *(v0 + 152) = v14;
    *(v0 + 160) = v20;
    v43 = *(v0 + 136);
    v44 = &off_100014A08 + 2 * v20;
    v46 = v44[4];
    v45 = v44[5];
    v47 = sub_1000024A4(&qword_1000188C8, &qword_10000EB08);
    *(v0 + 168) = v47;
    *(v0 + 176) = *(v47 - 8);
    v48 = swift_task_alloc();
    *(v0 + 184) = v48;
    v49 = sub_10000DD64();
    *(v0 + 192) = v49;
    v50 = *(v49 - 8);
    *(v0 + 200) = v50;
    isUniquelyReferenced_nonNull_native = swift_task_alloc();
    *(v0 + 208) = isUniquelyReferenced_nonNull_native;
    if (*(v43 + 16))
    {
      v51 = isUniquelyReferenced_nonNull_native;

      v52 = sub_100007B78(v46, v45, sub_100006EFC);
      v54 = v53;

      if (v54)
      {
        (*(v50 + 16))(v51, *(*(v0 + 136) + 56) + *(v50 + 72) * v52, v49);
        v55 = swift_task_alloc();
        *(v0 + 216) = v55;
        *v55 = v0;
        v55[1] = sub_100004600;
        v7 = &type metadata for Float;
        v9 = &protocol witness table for Float;
        v10 = &protocol witness table for Float;
        isUniquelyReferenced_nonNull_native = v48;
        v8 = &type metadata for Float;

        return MLTensor.shapedArray<A>(of:)(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10);
      }

      goto LABEL_34;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  swift_arrayDestroy();
  v21 = sub_10000DD14();
  v22 = sub_10000DEA4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v57 = v24;
    *v23 = 136315138;

    v25 = sub_10000DE74();
    v27 = v26;

    v28 = sub_100006954(v25, v27, &v57);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Serializing and returning output vector: %s", v23, 0xCu);
    sub_100007DF0(v24);
  }

  v29 = *(v0 + 144);

  static CoreMotionPednet_Response.serializeSuccess(withValues:)(v30);
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v33 = *(v0 + 80);
  if (v29)
  {
    sub_100002448(*(v0 + 80));
    sub_100008088(v32, v31);
    swift_bridgeObjectRelease_n();
    swift_errorRetain();
    v34 = sub_10000DD14();
    v35 = sub_10000DEB4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unexpected error: %@", v36, 0xCu);
      sub_1000087B0(v37);
    }

    v39 = *(v0 + 56);

    sub_100007EA4(&_swiftEmptyArrayStorage);
    sub_10000DAC4();
    v40 = enum case for InferenceError.invalidClientData(_:);
    v41 = sub_10000DAD4();
    (*(*(v41 - 8) + 104))(v39, v40, v41);
    sub_100007E5C(&qword_1000186A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();

    v42 = *(v0 + 8);
  }

  else
  {

    sub_10000DAA4();
    sub_100008088(v32, v31);
    sub_100002448(v33);

    v42 = *(v0 + 8);
  }

  return v42();
}

uint64_t sub_100004E30()
{
  v1 = v0[10];
  sub_100008088(v0[11], v0[12]);
  sub_100002448(v1);
  swift_errorRetain();
  v2 = sub_10000DD14();
  v3 = sub_10000DEB4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected error: %@", v4, 0xCu);
    sub_1000087B0(v5);
  }

  v7 = v0[7];

  sub_100007EA4(&_swiftEmptyArrayStorage);
  sub_10000DAC4();
  v8 = enum case for InferenceError.invalidClientData(_:);
  v9 = sub_10000DAD4();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_100007E5C(&qword_1000186A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10();
}

uint64_t CoreMotionPednetV1InferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000DE24();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000DA94();
  if (v4 >> 60 != 15)
  {
    v5 = v3;
    v6 = v4;
    sub_10000DE14();
    v7 = sub_10000DE04();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      a1[3] = &type metadata for CoreMotionPednetV1InferenceProvider.ExampleStream;
      a1[4] = sub_1000080F0();
      result = sub_100008088(v5, v6);
      *a1 = v9;
      a1[1] = v10;
      return result;
    }

    sub_100008088(v5, v6);
  }

  a1[3] = type metadata accessor for CoreMotionPednetV1InferenceProvider.ErrorStream(0);
  a1[4] = sub_1000082E8(&qword_1000186B0, &unk_10000E810);
  v12 = sub_100008024(a1);
  sub_100007EA4(&_swiftEmptyArrayStorage);
  sub_10000DAC4();
  v13 = enum case for InferenceError.invalidClientData(_:);
  v14 = sub_10000DAD4();
  return (*(*(v14 - 8) + 104))(v12, v13, v14);
}

uint64_t sub_1000051E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000DAD4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1000052D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_100005340(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000DE24();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100005400, 0, 0);
}

uint64_t sub_100005400()
{
  sub_10000DE54();
  if (v1)
  {
    v0[2] = 0;
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v0[3] = 0xE000000000000000;
    sub_10000DDB4();
    sub_10000DE14();
    sub_10000DDF4();
    v6 = v5;

    result = (*(v3 + 8))(v2, v4);
    if (v6 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v8 = v0[4];

    sub_10000DAA4();
    v9 = sub_10000DAB4();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = v0[4];
    v11 = sub_10000DAB4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000055B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000564C;

  return sub_100005340(a1);
}

uint64_t sub_10000564C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_10000DAD4();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_100005874;

  return sub_1000059A8(a1);
}

uint64_t sub_100005874()
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

uint64_t sub_1000059A8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000DE24();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000089A8, 0, 0);
}

void sub_100005ABC(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
}

uint64_t sub_100005ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000DAD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100005B44()
{
  *(v1 + 16) = v0;
  type metadata accessor for CoreMotionPednetV1InferenceProvider.ErrorStream(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100005BD4, 0, 0);
}

uint64_t sub_100005BD4()
{
  v1 = v0[3];
  sub_100008144(v0[2], v1, type metadata accessor for CoreMotionPednetV1InferenceProvider.ErrorStream);
  v2 = sub_10000DAD4();
  sub_100007E5C(&qword_1000186A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_allocError();
  (*(*(v2 - 8) + 32))(v3, v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100005D24(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000089BC, 0, 0);
}

uint64_t sub_100005DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = v5;
  v6[6] = a4;
  v6[3] = a2;
  v6[4] = a3;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100005E38, 0, 0);
}

uint64_t sub_100005E38()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_100008144(v0[5], v1, type metadata accessor for CoreMotionPednetV1InferenceProvider.ErrorStream);
  v3 = sub_10000DAD4();
  v0[8] = v3;
  v0[9] = sub_100007E5C(&qword_1000186A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  v0[10] = swift_allocError();
  (*(*(v3 - 8) + 32))(v4, v1, v3);
  swift_willThrow();
  if (v2)
  {
    swift_getObjectType();
    v5 = sub_10000DE94();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_100005F7C, v5, v7);
}

uint64_t sub_100005F7C()
{
  v0[2] = v0[10];
  sub_1000024A4(&qword_1000188B0, &qword_10000EAF0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  v1 = v0[1];

  return v1();
}

uint64_t CoreMotionPednetV1InferenceProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CoreMotionPednetV1InferenceProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000060B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CoreMotionPednetV1InferenceProvider();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v2 + 112) = &_swiftEmptySetSingleton;
  *(v2 + 120) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_1000060F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CoreMotionPednetV1InferenceProvider();
  v4 = sub_10000DB14();
  v5 = *(v3 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_10000617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CoreMotionPednetV1InferenceProvider();
  v4 = sub_10000DAE4();
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_10000623C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CoreMotionPednetV1InferenceProvider();
  sub_10000DAF4();
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1000062B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v7 = *(**v3 + 160);
  v8 = sub_10000DAD4();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v12 = (v7 + *v7);
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000089C0;

  return v12(a1, a2, v9);
}

uint64_t sub_100006498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CoreMotionPednetV1InferenceProvider();
  *v10 = v5;
  v10[1] = sub_1000089A4;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, v11, a5);
}

uint64_t sub_100006564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for CoreMotionPednetV1InferenceProvider();
  *v6 = v3;
  v6[1] = sub_1000089A4;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, v7, a3);
}

uint64_t sub_100006618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  v8[2] = a4;
  v10 = *(**v4 + 168);
  v11 = sub_10000DAD4();
  v8[3] = v11;
  v8[4] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[5] = v12;
  v15 = (v10 + *v10);
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_1000089C0;

  return v15(a1, a2, a3, v12);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CoreMotionPednetV1InferenceProviderService(0);
  sub_100007E5C(&qword_100018698, type metadata accessor for CoreMotionPednetV1InferenceProviderService, &protocol conformance descriptor for InferenceProviderExtension<A>);
  sub_10000DA84();
  return 0;
}

char *sub_100006850(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024A4(&qword_100018690, &qword_10000E6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_100006954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006A20(v11, 0, 0, 1, a1, a2);
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
    sub_100008874(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007DF0(v11);
  return v7;
}

unint64_t sub_100006A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006B2C(a5, a6);
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
    result = sub_10000DF24();
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

char *sub_100006B2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006B78(a1, a2);
  sub_100006CA8(&off_1000149E0);
  return v3;
}

char *sub_100006B78(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006D94(v5, 0);
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

  result = sub_10000DF24();
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
        v10 = sub_10000DE64();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006D94(v10, 0);
        result = sub_10000DF04();
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

uint64_t sub_100006CA8(uint64_t result)
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

  result = sub_100006E08(result, v11, 1, v3);
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

void *sub_100006D94(uint64_t a1, uint64_t a2)
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

  sub_1000024A4(&qword_1000188E8, &qword_10000EB20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006E08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024A4(&qword_1000188E8, &qword_10000EB20);
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

unint64_t sub_100006EFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000DF54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100006FB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10000DFC4();
  sub_10000DE34();
  v8 = sub_10000DFD4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10000DF54() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000079F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100007104(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10000DFC4();
  sub_10000DE34();
  v6 = sub_10000DFD4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10000DF54() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100007240();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100007834(v8);
  *v2 = v16;
  return v12;
}

void *sub_100007240()
{
  v1 = v0;
  sub_1000024A4(&qword_1000188E0, &qword_10000EB18);
  v2 = *v0;
  v3 = sub_10000DEE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000739C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000024A4(&qword_1000188E0, &qword_10000EB18);
  result = sub_10000DEF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10000DFC4();

      sub_10000DE34();
      result = sub_10000DFD4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000075D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000024A4(&qword_1000188E0, &qword_10000EB18);
  result = sub_10000DEF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10000DFC4();
      sub_10000DE34();
      result = sub_10000DFD4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100007834(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10000DED4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10000DFC4();

        sub_10000DE34();
        v10 = sub_10000DFD4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000079F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000075D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100007240();
      goto LABEL_16;
    }

    sub_10000739C(v8 + 1);
  }

  v10 = *v4;
  sub_10000DFC4();
  sub_10000DE34();
  result = sub_10000DFD4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10000DF54();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10000DF64();
  __break(1u);
  return result;
}

uint64_t sub_100007B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_10000DFC4();
  sub_10000DE34();
  v5 = sub_10000DFD4();

  return a3(a1, a2, v5);
}

unint64_t sub_100007BFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000024A4(&qword_1000188F0, qword_10000EB28);
    v3 = sub_10000DF34();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = sub_1000024A4(&qword_100018660, &qword_10000E6C8);
  v5 = __chkstk_darwin(v4);
  v8 = (&v23 - v7);
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);

  while (1)
  {
    sub_1000088D0(v10, v8);
    v12 = *v8;
    v13 = v8[1];
    result = sub_100007B78(*v8, v13, sub_100006EFC);
    if (v15)
    {
      break;
    }

    v16 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = v3[7];
    v19 = sub_10000DD64();
    result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v8 + v9, v19);
    v20 = v3[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_12;
    }

    v3[2] = v22;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100007DF0(void *a1)
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

uint64_t sub_100007E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100007EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024A4(&qword_1000188D8, &qword_10000EB10);
    v3 = sub_10000DF34();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100007B78(v5, v6, sub_100006EFC);
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

uint64_t sub_100007FEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100008024(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100008088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000809C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000809C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000080F0()
{
  result = qword_1000186B8;
  if (!qword_1000186B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000186B8);
  }

  return result;
}

uint64_t sub_100008144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000081B0()
{
  result = qword_1000186C0;
  if (!qword_1000186C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000186C0);
  }

  return result;
}

unint64_t sub_100008208()
{
  result = qword_1000186C8;
  if (!qword_1000186C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000186C8);
  }

  return result;
}

unint64_t sub_100008260()
{
  result = qword_1000186D0;
  if (!qword_1000186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000186D0);
  }

  return result;
}

uint64_t sub_1000082E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoreMotionPednetV1InferenceProvider.ErrorStream(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100008430(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000843C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000084D0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000084DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008588(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DAD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100008608(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DAD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100008678(uint64_t a1)
{
  result = sub_10000DAD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000086E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionPednetV1InferenceProvider.ErrorStream(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000875C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000875C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000087B0(uint64_t a1)
{
  v2 = sub_1000024A4(&qword_1000188C0, &qword_10000EB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008818()
{
  result = qword_1000188D0;
  if (!qword_1000188D0)
  {
    sub_1000024EC(&qword_1000188C8, &qword_10000EB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000188D0);
  }

  return result;
}

uint64_t sub_100008874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000088D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024A4(&qword_100018660, &qword_10000E6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100008940(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id CMPednetRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall CMPednetRequest.setTimestamp(_:)(Swift::UInt64 a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))(v5);
  *v4 = a1;
  v3(v5, 0);
}

const void *CMPednetRequest.setArrays(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *result, unint64_t a2, const void *a3, unint64_t a4, const void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v22 = result;
  if (a2)
  {
    v23 = sub_10000DE84();
    v23[2] = a2;
    if (!(a2 >> 61))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v23 = &_swiftEmptyArrayStorage;
LABEL_6:
  v45 = a7;
  memcpy(v23 + 4, v22, 4 * a2);
  v23[2] = a2;
  v24 = *((swift_isaMask & *v14) + 0x68);
  v25 = v24(v46);
  *(v26 + 8) = v23;

  result = v25(v46, 0);
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (a4)
  {
    v27 = sub_10000DE84();
    v27[2] = a4;
    if (!(a4 >> 61))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v27 = &_swiftEmptyArrayStorage;
LABEL_11:
  memcpy(v27 + 4, a3, 4 * a4);
  v27[2] = a4;
  v28 = v24(v46);
  *(v29 + 16) = v27;

  result = v28(v46, 0);
  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a6)
  {
    v30 = sub_10000DE84();
    v30[2] = a6;
    if (!(a6 >> 61))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v30 = &_swiftEmptyArrayStorage;
LABEL_16:
  memcpy(v30 + 4, a5, 4 * a6);
  v30[2] = a6;
  v31 = v24(v46);
  *(v32 + 24) = v30;

  result = v31(v46, 0);
  if ((a8 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a8)
  {
    v33 = sub_10000DE84();
    v33[2] = a8;
    if (!(a8 >> 61))
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v33 = &_swiftEmptyArrayStorage;
LABEL_21:
  memcpy(v33 + 4, v45, 4 * a8);
  v33[2] = a8;
  v34 = v24(v46);
  *(v35 + 32) = v33;

  result = v34(v46, 0);
  if ((a10 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a10)
  {
    v36 = sub_10000DE84();
    v36[2] = a10;
    if (!(a10 >> 61))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v36 = &_swiftEmptyArrayStorage;
LABEL_26:
  memcpy(v36 + 4, a9, 4 * a10);
  v36[2] = a10;
  v37 = v24(v46);
  *(v38 + 40) = v36;

  result = v37(v46, 0);
  if ((a12 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a12)
  {
    v39 = sub_10000DE84();
    v39[2] = a12;
    if (!(a12 >> 61))
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  v39 = &_swiftEmptyArrayStorage;
LABEL_31:
  memcpy(v39 + 4, a11, 4 * a12);
  v39[2] = a12;
  v40 = v24(v46);
  *(v41 + 48) = v39;

  result = v40(v46, 0);
  if ((a14 & 0x8000000000000000) == 0)
  {
    if (a14)
    {
      v42 = sub_10000DE84();
      v42[2] = a14;
      if (!(a14 >> 61))
      {
LABEL_36:
        memcpy(v42 + 4, a13, 4 * a14);
        v42[2] = a14;
        v43 = v24(v46);
        *(v44 + 56) = v42;

        return v43(v46, 0);
      }

      __break(1u);
    }

    v42 = &_swiftEmptyArrayStorage;
    goto LABEL_36;
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_100009090(void *result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_10000DE84();
      v4[2] = a2;
      if (!(a2 >> 61))
      {
LABEL_6:
        memcpy(v4 + 4, v3, 4 * a2);
        v4[2] = a2;
        return v4;
      }

      __break(1u);
    }

    v4 = &_swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t CMPednetRequest.serializedData()()
{
  v1 = type metadata accessor for CoreMotionPednet_Request(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10000A810(&qword_1000188B8, type metadata accessor for CoreMotionPednet_Request, &protocol conformance descriptor for CoreMotionPednet_Request);
  v5 = sub_10000DC64();
  sub_100009878(v4, type metadata accessor for CoreMotionPednet_Request);
  return v5;
}

uint64_t sub_100009374@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1000093D0(v3 + v6, a3, a2);
}

uint64_t sub_1000093D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009458(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  sub_1000094BC(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_1000094BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_1000095B8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2();
  v6.receiver = v3;
  v6.super_class = a3(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100009664(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  v8.receiver = a1;
  v8.super_class = a5(0);
  return objc_msgSendSuper2(&v8, "init");
}

id CMPednetResponse.__allocating_init(response:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PednetInterface16CMPednetResponse_response;
  CoreMotionPednet_Response.init()(v3 + OBJC_IVAR____TtC15PednetInterface16CMPednetResponse_response);
  swift_beginAccess();
  sub_100009814(a1, v3 + v4);
  swift_endAccess();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_100009878(a1, type metadata accessor for CoreMotionPednet_Response);
  return v5;
}

id CMPednetResponse.init(response:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PednetInterface16CMPednetResponse_response;
  CoreMotionPednet_Response.init()(v1 + OBJC_IVAR____TtC15PednetInterface16CMPednetResponse_response);
  swift_beginAccess();
  sub_100009814(a1, v1 + v3);
  swift_endAccess();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CMPednetResponse(0);
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100009878(a1, type metadata accessor for CoreMotionPednet_Response);
  return v4;
}

uint64_t sub_100009814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionPednet_Response(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t CMPednetResponse.getType(_:)(_BYTE *a1)
{
  v3 = type metadata accessor for CoreMotionPednet_Response(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v1) + 0x58))(v4);
  v7 = *(v6 + 1);
  v8 = v6[16];
  sub_100009878(v6, type metadata accessor for CoreMotionPednet_Response);
  result = CoreMotionPednet_Response.TypeEnum.rawValue.getter(v7, v8);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CMPednetResponse.getMachContinuousTimestamp(_:)(void *a1)
{
  v3 = type metadata accessor for CoreMotionPednet_Response(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*((swift_isaMask & *v1) + 0x58))(v4);
  v7 = *v6;
  result = sub_100009878(v6, type metadata accessor for CoreMotionPednet_Response);
  *a1 = v7;
  return result;
}

uint64_t CMPednetResponse.writePredictionValuesToBuffer(_:_:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for CoreMotionPednet_Response(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0x58))(v6);
  v9 = *(v8 + 3);

  result = sub_100009878(v8, type metadata accessor for CoreMotionPednet_Response);
  if ((a2 - 0x2000000000000000) >> 62 == 3)
  {
    memcpy(a1, (v9 + 32), 4 * a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100009D84(char *result, void *__dst, uint64_t a3)
{
  if ((a3 - 0x2000000000000000) >> 62 == 3)
  {
    return memcpy(__dst, result + 32, 4 * a3);
  }

  __break(1u);
  return result;
}

uint64_t CMPednetResponse.errorStringLength(_:)(_DWORD *a1)
{
  v3 = type metadata accessor for CoreMotionPednet_Response(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v1) + 0x58))(v4);
  CoreMotionPednet_Response.errorMessage.getter();
  sub_100009878(v6, type metadata accessor for CoreMotionPednet_Response);
  v7 = sub_10000DE44();

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v7))
  {
    *a1 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CMPednetResponse.errorString(_:_:)(char *a1, size_t a2)
{
  v5 = type metadata accessor for CoreMotionPednet_Response(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0x58))(v6);
  v9 = CoreMotionPednet_Response.errorMessage.getter();
  v11 = v10;
  sub_100009878(v8, type metadata accessor for CoreMotionPednet_Response);
  sub_10000A1F4(v9, v11, a1, a2);
}

char *sub_10000A1F4(char *a1, uint64_t a2, char *__dst, size_t __n)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__src = a1;
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = __n;
      v7 = __src;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = __n;
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      strncpy(__dst, v7, v6);
      return __dst;
    }
  }

  __dst = a1;
  sub_1000024A4(&qword_100018958, &unk_10000EC10);
  sub_10000DF14();
  if (!v4)
  {
    return v11;
  }

  return __dst;
}

uint64_t sub_10000A2CC(uint64_t result, uint64_t a2, void *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v6 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_8:
        memcpy(__dst, v7, v6);
        return __dst;
      }

      goto LABEL_13;
    }

LABEL_10:
    __dst = result;
    sub_1000024A4(&qword_100018950, &qword_10000EC08);
    sub_10000DF14();
    if (!v4)
    {
      return __src[3];
    }

    return __dst;
  }

  __src[0] = result;
  __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v6 = a4 + 1;
  if (!__OFADD__(a4, 1))
  {
    v7 = __src;
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_10000A4F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id static CMPednetResponse.genericError()()
{
  v0 = type metadata accessor for CoreMotionPednet_Response(0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  CoreMotionPednet_Response.init()(&v11 - v4);
  *(v5 + 1) = 1;
  v5[16] = 1;
  *v5 = mach_continuous_time();
  CoreMotionPednet_Response.errorMessage.setter(0x20636972656E6547, 0xED0000726F727265);
  sub_1000093D0(v5, v3, type metadata accessor for CoreMotionPednet_Response);
  v6 = type metadata accessor for CMPednetResponse(0);
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC15PednetInterface16CMPednetResponse_response;
  CoreMotionPednet_Response.init()(v7 + OBJC_IVAR____TtC15PednetInterface16CMPednetResponse_response);
  swift_beginAccess();
  sub_100009814(v3, v7 + v8);
  swift_endAccess();
  v12.receiver = v7;
  v12.super_class = v6;
  v9 = objc_msgSendSuper2(&v12, "init");
  sub_100009878(v3, type metadata accessor for CoreMotionPednet_Response);
  sub_100009878(v5, type metadata accessor for CoreMotionPednet_Response);
  return v9;
}

uint64_t static CoreMotionPednet_Response.serializeSuccess(withValues:)(uint64_t a1)
{
  v2 = type metadata accessor for CoreMotionPednet_Response(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  CoreMotionPednet_Response.init()(v4);

  *(v4 + 3) = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *v4 = mach_continuous_time();
  sub_10000A810(&qword_1000188F8, type metadata accessor for CoreMotionPednet_Response, &protocol conformance descriptor for CoreMotionPednet_Response);
  v5 = sub_10000DC64();
  sub_100009878(v4, type metadata accessor for CoreMotionPednet_Response);
  return v5;
}

uint64_t sub_10000A810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static CoreMotionPednet_Response.serializeFailure(withError:)(uint64_t a1)
{
  v1 = type metadata accessor for CoreMotionPednet_Response(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CoreMotionPednet_Response.init()(v3);
  *(v3 + 1) = 1;
  v3[16] = 1;
  *v3 = mach_continuous_time();
  swift_getErrorValue();
  v4 = sub_10000DF74();
  CoreMotionPednet_Response.errorMessage.setter(v4, v5);
  sub_10000A810(&qword_1000188F8, type metadata accessor for CoreMotionPednet_Response, &protocol conformance descriptor for CoreMotionPednet_Response);
  v6 = sub_10000DC64();
  sub_100009878(v3, type metadata accessor for CoreMotionPednet_Response);
  return v6;
}

uint64_t sub_10000A990(uint64_t a1, unint64_t a2, void *a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v5 = a1;
    v6 = a2;
    v7 = a3;
    v8 = sub_10000DE64();
    a2 = v6;
    a3 = v7;
    v3 = v8;
    a1 = v5;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return sub_10000A2CC(a1, a2, a3, v3);
}

uint64_t sub_10000AA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10000AAE8@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    __src = memcpy(v5, __src, v4 + 1);
    *a2 = v5;
  }

  return __src;
}

char *sub_10000AB3C@<X0>(char *__src@<X0>, char **a2@<X8>)
{
  result = strncpy(*(v2 + 16), __src, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t CoreMotionPednet_Request.userAccelX.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.userAccelY.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.userAccelZ.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.rotationRateX.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.rotationRateY.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.rotationRateZ.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.biometrics.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t CoreMotionPednet_Request.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoreMotionPednet_Request(0) + 48);
  v4 = sub_10000DBA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreMotionPednet_Request.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CoreMotionPednet_Request(0) + 48);
  v4 = sub_10000DBA4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CoreMotionPednet_Request.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = &_swiftEmptyArrayStorage;
  a1[2] = &_swiftEmptyArrayStorage;
  a1[3] = &_swiftEmptyArrayStorage;
  a1[4] = &_swiftEmptyArrayStorage;
  a1[5] = &_swiftEmptyArrayStorage;
  a1[6] = &_swiftEmptyArrayStorage;
  a1[7] = &_swiftEmptyArrayStorage;
  type metadata accessor for CoreMotionPednet_Request(0);
  return sub_10000DB94();
}

uint64_t CoreMotionPednet_Response.type.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t CoreMotionPednet_Response.errorMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for CoreMotionPednet_Response(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CoreMotionPednet_Response.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CoreMotionPednet_Response(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*CoreMotionPednet_Response.errorMessage.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CoreMotionPednet_Response(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_10000B134;
}

void sub_10000B134(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall CoreMotionPednet_Response.clearErrorMessage()()
{
  v1 = (v0 + *(type metadata accessor for CoreMotionPednet_Response(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t CoreMotionPednet_Response.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoreMotionPednet_Response(0) + 28);
  v4 = sub_10000DBA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreMotionPednet_Response.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CoreMotionPednet_Response(0) + 28);
  v4 = sub_10000DBA4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL CoreMotionPednet_Response.TypeEnum.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_10000B3B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_10000B3CC()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_10000B3F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_10000B414(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int sub_10000B434(uint64_t a1, uint64_t a2)
{
  sub_10000DFC4();
  sub_10000DDA4();
  return sub_10000DFD4();
}

Swift::Int sub_10000B4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000DFC4();
  sub_10000DDA4();
  return sub_10000DFD4();
}

BOOL sub_10000B548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t CoreMotionPednet_Response.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CoreMotionPednet_Response(0);
  result = sub_10000DB94();
  v4 = (a1 + *(v2 + 32));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_10000B614()
{
  v0 = sub_10000DD04();
  sub_100008940(v0, static CoreMotionPednet_Request._protobuf_nameMap);
  sub_100002410(v0, static CoreMotionPednet_Request._protobuf_nameMap);
  sub_1000024A4(&qword_100018B10, &qword_10000F0D8);
  v1 = (sub_1000024A4(&qword_100018B18, &qword_10000F0E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10000EC20;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "mach_continuous_timestamp";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_10000DCE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "userAccelX";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "userAccelY";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "userAccelZ";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rotationRateX";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "rotationRateY";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "rotationRateZ";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "biometrics";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_10000DCF4();
}

uint64_t CoreMotionPednet_Request.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DC04();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result < 8 || result == 8)
      {
        goto LABEL_14;
      }

LABEL_15:
      result = sub_10000DC04();
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_10000DC44();
        goto LABEL_15;
      }

      if (result != 2)
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    sub_10000DC24();
    goto LABEL_15;
  }

  return result;
}

uint64_t CoreMotionPednet_Request.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_10000DCD4(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_10000DCA4(), !v4))
    {
      if (!*(v3[2] + 16) || (result = sub_10000DCA4(), !v4))
      {
        if (!*(v3[3] + 16) || (result = sub_10000DCA4(), !v4))
        {
          if (!*(v3[4] + 16) || (result = sub_10000DCA4(), !v4))
          {
            if (!*(v3[5] + 16) || (result = sub_10000DCA4(), !v4))
            {
              if (!*(v3[6] + 16) || (result = sub_10000DCA4(), !v4))
              {
                if (!*(v3[7] + 16) || (result = sub_10000DCA4(), !v4))
                {
                  type metadata accessor for CoreMotionPednet_Request(0);
                  return sub_10000DB84();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000BC84@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = &_swiftEmptyArrayStorage;
  a1[2] = &_swiftEmptyArrayStorage;
  a1[3] = &_swiftEmptyArrayStorage;
  a1[4] = &_swiftEmptyArrayStorage;
  a1[5] = &_swiftEmptyArrayStorage;
  a1[6] = &_swiftEmptyArrayStorage;
  a1[7] = &_swiftEmptyArrayStorage;
  return sub_10000DB94();
}

uint64_t sub_10000BCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_10000DBA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000BD4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_10000DBA4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10000BFE0()
{
  v0 = sub_10000DD04();
  sub_100008940(v0, static CoreMotionPednet_Response._protobuf_nameMap);
  sub_100002410(v0, static CoreMotionPednet_Response._protobuf_nameMap);
  sub_1000024A4(&qword_100018B10, &qword_10000F0D8);
  v1 = (sub_1000024A4(&qword_100018B18, &qword_10000F0E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000EC30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mach_continuous_timestamp";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_10000DCE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "values";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "error_message";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_10000DCF4();
}

uint64_t CoreMotionPednet_Response.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DC04();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_10000DC24();
        }

        else if (result == 4)
        {
          type metadata accessor for CoreMotionPednet_Response(0);
          sub_10000DC34();
        }
      }

      else if (result == 1)
      {
        sub_10000DC44();
      }

      else if (result == 2)
      {
        sub_10000CFC8();
        sub_10000DC14();
      }

      result = sub_10000DC04();
    }
  }

  return result;
}

uint64_t CoreMotionPednet_Response.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_10000DCD4(), !v4))
  {
    if (!v3[1] || (sub_10000CFC8(), result = sub_10000DCB4(), !v4))
    {
      if (!*(v3[3] + 16) || (result = sub_10000DCA4(), !v4))
      {
        result = type metadata accessor for CoreMotionPednet_Response(0);
        if (*(v3 + *(result + 32) + 8))
        {
          result = sub_10000DCC4();
          if (v4)
          {
            return result;
          }

          return sub_10000DB84();
        }

        if (!v4)
        {
          return sub_10000DB84();
        }
      }
    }
  }

  return result;
}

Swift::Int sub_10000C530(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_10000DFC4();
  a1(0);
  sub_10000D01C(a2, a3, a4);
  sub_10000DDA4();
  return sub_10000DFD4();
}

uint64_t sub_10000C5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  result = sub_10000DB94();
  v5 = (a2 + *(a1 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_10000C60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_10000DBA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000C680(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_10000DBA4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

Swift::Int sub_10000C840(uint64_t a1, uint64_t a2)
{
  sub_10000DFC4();
  sub_10000DDA4();
  return sub_10000DFD4();
}

Swift::Int sub_10000C908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000DFC4();
  sub_10000DDA4();
  return sub_10000DFD4();
}

uint64_t sub_10000C95C()
{
  v0 = sub_10000DD04();
  sub_100008940(v0, static CoreMotionPednet_Response.TypeEnum._protobuf_nameMap);
  sub_100002410(v0, static CoreMotionPednet_Response.TypeEnum._protobuf_nameMap);
  sub_1000024A4(&qword_100018B10, &qword_10000F0D8);
  v1 = (sub_1000024A4(&qword_100018B18, &qword_10000F0E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000EC40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10000DCE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAILURE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_10000DCF4();
}

uint64_t sub_10000CB48(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_10000DD04();

  return sub_100002410(v4, a2);
}

uint64_t sub_10000CBC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10000DD04();
  v7 = sub_100002410(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10000CC7C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10000DD04();
  v7 = sub_100002410(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10000CD18(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15PednetInterface010CoreMotionA9_ResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_10000CD18(*(a1 + 24), *(a2 + 24)))
  {
    v6 = *(type metadata accessor for CoreMotionPednet_Response(0) + 32);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = *v7 == *v9 && v8 == v10;
      if (!v11 && (sub_10000DF54() & 1) == 0)
      {
        return 0;
      }

LABEL_19:
      sub_10000DBA4();
      sub_10000D9D0();
      return sub_10000DDC4() & 1;
    }

    if (!v10)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t *_s15PednetInterface010CoreMotionA8_RequestV2eeoiySbAC_ACtFZ_0(uint64_t *result, void *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v3 = result;
  v4 = result[1];
  v5 = a2[1];
  v6 = *(v4 + 16);
  if (v6 != *(v5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_11:
    if (sub_10000CD18(result[2], a2[2]) & 1) != 0 && (sub_10000CD18(v3[3], a2[3]) & 1) != 0 && (sub_10000CD18(v3[4], a2[4]) & 1) != 0 && (sub_10000CD18(v3[5], a2[5]) & 1) != 0 && (sub_10000CD18(v3[6], a2[6]) & 1) != 0 && (sub_10000CD18(v3[7], a2[7]))
    {
      type metadata accessor for CoreMotionPednet_Request(0);
      sub_10000DBA4();
      sub_10000D9D0();
      return (sub_10000DDC4() & 1);
    }

    return 0;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10000CFC8()
{
  result = qword_100018968;
  if (!qword_100018968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018968);
  }

  return result;
}

uint64_t sub_10000D01C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000D068()
{
  result = qword_100018978;
  if (!qword_100018978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018978);
  }

  return result;
}

unint64_t sub_10000D0C0()
{
  result = qword_100018980;
  if (!qword_100018980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018980);
  }

  return result;
}

unint64_t sub_10000D118()
{
  result = qword_100018988;
  if (!qword_100018988)
  {
    sub_1000024EC(&qword_100018990, &qword_10000EC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018988);
  }

  return result;
}

unint64_t sub_10000D180()
{
  result = qword_100018998;
  if (!qword_100018998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018998);
  }

  return result;
}

uint64_t sub_10000D428(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000DBA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D4E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000DBA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000D58C(uint64_t a1)
{
  sub_10000D8CC(319, &unk_100018A18, &type metadata for Float, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10000DBA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000DBA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D72C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000DBA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000D7D0(uint64_t a1)
{
  sub_10000D8CC(319, &unk_100018A18, &type metadata for Float, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10000DBA4();
    if (v2 <= 0x3F)
    {
      sub_10000D8CC(319, &unk_100018AC0, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000D8CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for CoreMotionPednet_Response.TypeEnum(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CoreMotionPednet_Response.TypeEnum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CoreMotionPednet_Response.TypeEnum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10000D984(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D9A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_10000D9D0()
{
  result = qword_100018B20;
  if (!qword_100018B20)
  {
    sub_10000DBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B20);
  }

  return result;
}