uint64_t type metadata accessor for StartGuidedAccessIntent(uint64_t a1)
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000017B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartGuidedAccessIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000188C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_100004410();
  __chkstk_darwin();
  v1 = sub_100003A20(&qword_10000C310, &qword_100004988);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin();
  v28 = &v25 - v3;
  v4 = sub_100003A20(&qword_10000C318, &qword_100004990);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  __chkstk_darwin();
  v29 = &v25 - v6;
  v27 = qword_10000C168;
  type metadata accessor for StartGuidedAccessIntent(0);
  type metadata accessor for GAXAppReferenceClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = ObjCClassFromMetadata;
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0x8000000100004B50;
  v39._countAndFlagsBits = 0x545F544547444957;
  v39._object = 0xEC000000454C5449;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v10.super.isa = v9;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_100004320(v39, v41, v10, v43, 0xD00000000000001ELL, v23);

  sub_100004400();
  sub_100003A20(&qword_10000C320, qword_100004998);
  sub_1000017B0(&qword_10000C188, &unk_1000047B8);
  v24._object = sub_100003F4C(&qword_10000C328, &qword_10000C320, qword_100004998, &protocol conformance descriptor for Label<A, B>);
  v11 = v28;
  sub_100004420();
  v12 = [v8 bundleForClass:v26];
  v24._countAndFlagsBits = 0x8000000100004B90;
  v40._object = 0x8000000100004B70;
  v40._countAndFlagsBits = 0xD000000000000012;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v13.super.isa = v12;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v14 = sub_100004320(v40, v42, v13, v44, 0xD000000000000024, v24);
  v16 = v15;

  v35 = v14;
  v36 = v16;
  v17 = sub_100003F4C(&qword_10000C330, &qword_10000C310, &qword_100004988, &protocol conformance descriptor for ControlButton<A>);
  v18 = sub_100003F94();
  v20 = v29;
  v19 = v30;
  sub_1000043D0();

  (*(v31 + 8))(v11, v19);
  v35 = v19;
  v36 = &type metadata for String;
  v37 = v17;
  v38 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v32;
  sub_1000043E0();
  return (*(v33 + 8))(v20, v21);
}

uint64_t sub_100001D08()
{
  type metadata accessor for GAXAppReferenceClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4._countAndFlagsBits = 0x8000000100004B50;
  v5._countAndFlagsBits = 0x545F544547444957;
  v5._object = 0xEC000000454C5449;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v2.super.isa = v1;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_100004320(v5, v6, v2, v7, 0xD00000000000001ELL, v4);

  sub_100003F94();
  return sub_1000043F0();
}

uint64_t sub_100001E0C()
{
  v0 = sub_100004340();
  sub_100003EB8(v0, qword_10000C3E8);
  sub_100003D6C(v0, qword_10000C3E8);
  return sub_100004330();
}

uint64_t sub_100001E70(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_100003A20(&qword_10000C238, &qword_1000048D8);
  v2[37] = swift_task_alloc();
  v3 = sub_100004370();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100001F68, 0, 0);
}

uint64_t sub_100001F68()
{
  if (_AXSGuidedAccessEnabledNoCaching())
  {
    v1 = swift_task_alloc();
    v0[41] = v1;
    *v1 = v0;
    v1[1] = sub_1000022E8;

    return sub_1000032B8();
  }

  else
  {
    v3 = v0[38];
    v4 = v0[39];
    v5 = v0[37];
    sub_100003DA4(v0[36], v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_100003E14(v0[37], &qword_10000C238, &qword_1000048D8);
      if (qword_10000C180 != -1)
      {
        swift_once();
      }

      v6 = sub_100004390();
      sub_100003D6C(v6, qword_10000C400);
      v7 = sub_100004380();
      v8 = sub_100004470();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Unable to create Guided Access settings URL.", v9, 2u);
      }

      sub_100004310();

      v10 = v0[1];

      return v10();
    }

    else
    {
      (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
      v11 = [objc_allocWithZone(_LSOpenConfiguration) init];
      v0[50] = v11;
      [v11 setSensitive:1];
      v12 = [objc_opt_self() defaultWorkspace];
      v0[51] = v12;
      if (v12)
      {
        v14 = v12;
        sub_100004350(v13);
        v16 = v15;
        v0[52] = v15;
        v0[10] = v0;
        v0[15] = v0 + 34;
        v0[11] = sub_100002A38;
        v17 = swift_continuation_init();
        v0[33] = sub_100003A20(&qword_10000C2F8, &qword_100004920);
        v0[26] = _NSConcreteStackBlock;
        v0[27] = 1107296256;
        v0[28] = sub_1000031BC;
        v0[29] = &unk_100008568;
        v0[30] = v17;
        [v14 openURL:v16 configuration:v11 completionHandler:v0 + 26];
        v12 = v0 + 10;
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v12);
    }
  }
}

uint64_t sub_1000022E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = a2;

  return _swift_task_switch(sub_1000023E8, 0, 0);
}

uint64_t sub_1000023E8()
{
  v1 = v0[43];
  v2 = v0[42] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = [objc_opt_self() defaultWorkspace];
    v0[44] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = sub_100004440();
      v0[45] = v5;
      v6 = [objc_allocWithZone(_LSOpenConfiguration) init];
      v0[46] = v6;
      v0[2] = v0;
      v0[7] = v0 + 54;
      v0[3] = sub_100002698;
      v7 = swift_continuation_init();
      v0[25] = sub_100003A20(&qword_10000C2E8, &qword_100004910);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_10000356C;
      v0[21] = &unk_100008540;
      v0[22] = v7;
      [v4 openApplicationWithBundleIdentifier:v5 usingConfiguration:v6 completionHandler:v0 + 18];
      v3 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v3);
  }

  else
  {

    if (qword_10000C180 != -1)
    {
      swift_once();
    }

    v8 = sub_100004390();
    sub_100003D6C(v8, qword_10000C400);
    v9 = sub_100004380();
    v10 = sub_100004470();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to start Guided Access from Control Center because there was no effective app.", v11, 2u);
    }

    sub_100004310();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100002698()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {

    v2 = sub_100002E24;
  }

  else
  {
    v2 = sub_1000027B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000027B0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_10000285C;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_10000285C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {

    v2 = sub_100002FFC;
  }

  else
  {
    v2 = sub_100002978;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100002978()
{
  result = [objc_opt_self() server];
  if (result)
  {
    v2 = result;

    [v2 toggleGuidedAccess];

    sub_100004310();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002A38()
{
  v1 = *(*v0 + 112);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_100002C14;
  }

  else
  {
    v2 = sub_100002B48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002B48()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];

  (*(v5 + 8))(v4, v6);

  sub_100004310();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100002C14()
{
  v1 = v0[52];
  v3 = v0[50];
  v2 = v0[51];
  swift_willThrow();

  if (qword_10000C180 != -1)
  {
    swift_once();
  }

  v4 = sub_100004390();
  sub_100003D6C(v4, qword_10000C400);
  swift_errorRetain();
  v5 = sub_100004380();
  v6 = sub_100004470();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to open Guided Access settings from Control Center: %@", v11, 0xCu);
    sub_100003E14(v12, &qword_10000C2F0, &qword_100004918);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);
  sub_100004310();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100002E24()
{
  v1 = v0[46];
  v3 = v0[44];
  v2 = v0[45];
  swift_willThrow();

  if (qword_10000C180 != -1)
  {
    swift_once();
  }

  v4 = sub_100004390();
  sub_100003D6C(v4, qword_10000C400);
  swift_errorRetain();
  v5 = sub_100004380();
  v6 = sub_100004470();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to open application from Control Center: %@", v7, 0xCu);
    sub_100003E14(v8, &qword_10000C2F0, &qword_100004918);
  }

  else
  {
  }

  sub_100004310();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100002FFC()
{
  if (qword_10000C180 != -1)
  {
    swift_once();
  }

  v1 = sub_100004390();
  sub_100003D6C(v1, qword_10000C400);
  swift_errorRetain();
  v2 = sub_100004380();
  v3 = sub_100004470();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to open application from Control Center: %@", v4, 0xCu);
    sub_100003E14(v5, &qword_10000C2F0, &qword_100004918);
  }

  else
  {
  }

  sub_100004310();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000031BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100003E74((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003A20(&qword_10000C300, &qword_100004928);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_100004430();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000032D4()
{
  v1 = [objc_opt_self() server];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100003418;
    v3 = swift_continuation_init();
    v0[17] = sub_100003A20(&qword_10000C308, &qword_100004930);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003638;
    v0[13] = &unk_100008590;
    v0[14] = v3;
    [v2 guidedAccessEffectiveAppBundleIdentifier:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100003418()
{

  return _swift_task_switch(sub_1000034F8, 0, 0);
}

uint64_t sub_1000034F8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_10000356C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100003E74((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003A20(&qword_10000C300, &qword_100004928);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100003638(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100003E74((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_100004450();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000036B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C178 != -1)
  {
    swift_once();
  }

  v2 = sub_100004340();
  v3 = sub_100003D6C(v2, qword_10000C3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003770(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003808;

  return sub_100001E70(a1);
}

uint64_t sub_100003808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003918(uint64_t a1)
{
  v2 = sub_1000017B0(&qword_10000C188, &unk_1000047B8);

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000039A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A20(&qword_10000C238, &qword_1000048D8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100003A20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A20(&qword_10000C238, &qword_1000048D8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100003AF8(uint64_t a1)
{
  sub_100003B64(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100003B64(uint64_t a1)
{
  if (!qword_10000C2A8)
  {
    sub_100004370();
    v1 = sub_100004480();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C2A8);
    }
  }
}

uint64_t sub_100003C00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003CBC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_100003D08()
{
  v0 = sub_100004390();
  sub_100003EB8(v0, qword_10000C400);
  sub_100003D6C(v0, qword_10000C400);
  result = GAXLogCommon();
  if (result)
  {
    return sub_1000043A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_100003D6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A20(&qword_10000C238, &qword_1000048D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003A20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100003E74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_100003EB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003F4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003C00(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003F94()
{
  result = qword_10000C338;
  if (!qword_10000C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C338);
  }

  return result;
}

uint64_t sub_100003FE8()
{
  sub_100003C00(&qword_10000C318, &qword_100004990);
  sub_100003C00(&qword_10000C310, &qword_100004988);
  sub_100003F4C(&qword_10000C330, &qword_10000C310, &qword_100004988, &protocol conformance descriptor for ControlButton<A>);
  sub_100003F94();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000040E0()
{
  v0 = sub_1000041DC();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for GAXAppWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000415C();
  sub_1000043B0();
  return 0;
}

unint64_t sub_10000415C()
{
  result = qword_10000C340;
  if (!qword_10000C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C340);
  }

  return result;
}

unint64_t sub_1000041DC()
{
  result = qword_10000C348;
  if (!qword_10000C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C348);
  }

  return result;
}