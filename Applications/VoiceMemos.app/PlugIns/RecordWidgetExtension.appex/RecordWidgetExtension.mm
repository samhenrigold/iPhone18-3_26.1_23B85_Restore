void sub_1000017E4(id a1)
{
  qword_10000C448 = objc_alloc_init(RCAppGroupStorage);

  _objc_release_x1();
}

id OSLogForCategory(void *a1)
{
  v1 = a1;
  if (qword_10000C458 != -1)
  {
    sub_1000044B0();
  }

  v2 = [qword_10000C450 objectForKey:v1];
  if (!v2)
  {
    if ([qword_10000C450 count] > 0xA)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v2 = &_os_log_default;
        v6 = &_os_log_default;
        goto LABEL_13;
      }

      v8 = 0;
      v4 = "ERROR | Too many categories defined, use default";
      v5 = &v8;
    }

    else
    {
      v3 = os_log_create("com.apple.VoiceMemos", [v1 UTF8String]);
      if (v3)
      {
        v2 = v3;
        [qword_10000C450 setObject:v3 forKey:v1];
        goto LABEL_13;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v4 = "ERROR | Failed os_log_create, use default";
      v5 = buf;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

void sub_100001ABC(id a1)
{
  qword_10000C450 = [[NSMutableDictionary alloc] initWithCapacity:10];

  _objc_release_x1();
}

uint64_t sub_100001B00(uint64_t a1, uint64_t a2)
{
  if (qword_10000C460 != -1)
  {
    sub_1000044C4();
  }

  return byte_10000C468;
}

unint64_t sub_100001B5C()
{
  result = qword_10000C290;
  if (!qword_10000C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C290);
  }

  return result;
}

unint64_t sub_100001BB4()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

unint64_t sub_100001C0C()
{
  result = qword_10000C2A0;
  if (!qword_10000C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A0);
  }

  return result;
}

uint64_t sub_100001C60()
{
  v0 = sub_1000045E8();
  sub_100002F90(v0, qword_10000C9F0);
  sub_100002F58(v0, qword_10000C9F0);
  return sub_1000045D8();
}

uint64_t sub_100001CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_100004788();
  v3[15] = sub_100004778();
  v5 = sub_100004768();
  v3[16] = v5;
  v3[17] = v4;

  return _swift_task_switch(sub_100001D60, v5, v4);
}

uint64_t sub_100001D60()
{
  sub_100004588();
  if (*(v0 + 176) == 1)
  {
    sub_1000044D8();
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_100002EC8((v0 + 56), v1);
    v13 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_100001FB8;
    v4 = *(v0 + 112);
    v5 = *(v0 + 104);
    v6 = v1;
    v7 = v2;
    v8 = v13;
  }

  else
  {
    sub_1000044D8();
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_100002EC8((v0 + 16), v9);
    v14 = (*(v10 + 16) + **(v10 + 16));
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_100002168;
    v4 = *(v0 + 112);
    v5 = *(v0 + 104);
    v6 = v9;
    v7 = v10;
    v8 = v14;
  }

  return v8(v5, v4, v6, v7);
}

uint64_t sub_100001FB8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100002318;
  }

  else
  {
    v5 = sub_1000020F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000020F4()
{

  sub_100002F0C((v0 + 56));
  sub_100004568();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002168()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100002384;
  }

  else
  {
    v5 = sub_1000022A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000022A4()
{

  sub_100002F0C((v0 + 16));
  sub_100004568();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002318()
{

  sub_100002F0C((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002384()
{

  sub_100002F0C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000023F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004588();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002464(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100004578();
  return sub_1000024D8;
}

void sub_1000024D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000252C()
{
  result = qword_10000C2A8;
  if (!qword_10000C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A8);
  }

  return result;
}

unint64_t sub_100002584()
{
  result = qword_10000C2B0;
  if (!qword_10000C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B0);
  }

  return result;
}

uint64_t sub_100002644@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C288 != -1)
  {
    swift_once();
  }

  v2 = sub_1000045E8();
  v3 = sub_100002F58(v2, qword_10000C9F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000026F8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = sub_1000045C8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100002774(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002820;

  return sub_100001CC4(a1, v5, v4);
}

uint64_t sub_100002820()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002914@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002AC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000293C(uint64_t a1)
{
  v2 = sub_100001BB4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100002978(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000029CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100002A1C()
{
  result = qword_10000C2B8;
  if (!qword_10000C2B8)
  {
    sub_100002A80(&qword_10000C2C0, &qword_100004E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B8);
  }

  return result;
}

uint64_t sub_100002A80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002AC8()
{
  v0 = sub_1000045B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002E80(&qword_10000C2C8, &qword_100004E58);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_100002E80(&qword_10000C2D0, &qword_100004E60);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = sub_100002E80(&qword_10000C2D8, &qword_100004E68);
  __chkstk_darwin(v10 - 8);
  v12 = v19 - v11;
  v13 = sub_1000045E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100002E80(&qword_10000C2E0, &qword_100004E70);
  sub_1000045D8();
  (*(v14 + 56))(v12, 1, 1, v13);
  LOBYTE(v20[0]) = 2;
  v15 = sub_100004758();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_100004558();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  v17 = sub_1000045A8();
  sub_100002E80(&qword_10000C2E8, &qword_100004E78);
  v19[1] = 0xD00000000000002FLL;
  v19[2] = 0x80000001000050E0;
  sub_100004798();
  sub_100004508();
  sub_1000044F8();
  sub_1000044E8();
  return v17;
}

uint64_t sub_100002E80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100002EC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002F0C(void *a1)
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

uint64_t sub_100002F58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002F90(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003000()
{
  v0 = sub_100002E80(&qword_10000C2F8, qword_100004EE8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000031AC();
  sub_100004638();
  sub_100003200();
  sub_100004618();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000312C();
  sub_1000045F8();
  return 0;
}

unint64_t sub_10000312C()
{
  result = qword_10000C2F0;
  if (!qword_10000C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2F0);
  }

  return result;
}

unint64_t sub_1000031AC()
{
  result = qword_10000C300;
  if (!qword_10000C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C300);
  }

  return result;
}

unint64_t sub_100003200()
{
  result = qword_10000C308;
  if (!qword_10000C308)
  {
    sub_100002A80(&qword_10000C2F8, qword_100004EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C308);
  }

  return result;
}

uint64_t sub_100003264()
{
  sub_100002A80(&qword_10000C2F8, qword_100004EE8);
  sub_100003200();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000032F4@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_1000045E8();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002E80(&qword_10000C320, &qword_100004F58);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = sub_100002E80(&qword_10000C328, &qword_100004F60);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_100002E80(&qword_10000C330, &qword_100004F68);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_100002E80(&qword_10000C338, &qword_100004F70);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  __chkstk_darwin(v15);
  v31 = &v31 - v17;

  sub_100002E80(&qword_10000C340, &qword_100004F78);
  v18 = sub_100002A80(&qword_10000C348, &qword_100004F80);
  v19 = sub_100004134(&qword_10000C350, &qword_10000C348, &qword_100004F80, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v43 = v18;
  v44 = v19;
  swift_getOpaqueTypeConformance2();
  sub_100003F2C();
  sub_100004748();
  sub_1000045D8();
  v20 = sub_100004134(&qword_10000C360, &qword_10000C320, &qword_100004F58, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v21 = v32;
  sub_100004658();
  v22 = *(v38 + 8);
  v23 = v41;
  v22(v2, v41);
  (*(v33 + 8))(v6, v21);
  sub_1000045D8();
  v43 = v21;
  v44 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_100004648();
  v22(v2, v23);
  (*(v35 + 8))(v10, v25);
  v43 = v25;
  v44 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v31;
  v28 = v36;
  sub_100004678();
  (*(v37 + 8))(v14, v28);
  v43 = v28;
  v44 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v39;
  sub_100004668();
  return (*(v40 + 8))(v27, v29);
}

uint64_t sub_100003880@<X0>(uint64_t a2@<X8>)
{
  v10[1] = a2;
  v2 = sub_100002E80(&qword_10000C348, &qword_100004F80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  sub_100004608();
  v10[4] = sub_100002AC8();
  v10[5] = v6;
  sub_100002E80(&qword_10000C368, &qword_100004F88);
  v7 = sub_100002A80(&qword_10000C370, &qword_100004F90);
  v8 = sub_10000404C();
  v10[2] = v7;
  v10[3] = v8;
  swift_getOpaqueTypeConformance2();
  sub_10000417C();
  sub_100004738();
  sub_1000046A8();
  sub_100004134(&qword_10000C350, &qword_10000C348, &qword_100004F80, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_100004628();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100003AA4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = sub_100004728();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004708();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v29 - v11;
  __chkstk_darwin(v10);
  v14 = v29 - v13;
  v36 = sub_100002E80(&qword_10000C388, &qword_100004F98);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v16 = v29 - v15;
  v17 = sub_100002E80(&qword_10000C370, &qword_100004F90);
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  sub_100004608();
  if (a1)
  {
    v32 = "PROGRESS_ACTION_HINT";
    v20 = 0xD000000000000021;
  }

  else
  {
    v32 = "RECORDING_CONTROL_DESCRIPTION";
    v20 = 0xD000000000000024;
  }

  v30 = v16;
  v31 = v20;
  sub_1000046B8();
  sub_1000046F8();
  sub_1000046E8();
  v21 = *(v6 + 8);
  v21(v14, v5);
  sub_1000046D8();
  v21(v12, v5);
  v22 = v4;
  sub_100004718();
  v29[0] = v19;
  v29[1] = v17;
  v23 = &v19[*(v17 + 36)];
  v24 = sub_100004688();
  v25 = v33;
  v26 = v35;
  (*(v33 + 16))(&v23[*(v24 + 20)], v22, v35);
  sub_1000041D0(&qword_10000C3A0, &type metadata accessor for BreatheSymbolEffect, &protocol conformance descriptor for BreatheSymbolEffect);
  sub_1000046C8();
  (*(v25 + 8))(v22, v26);
  v21(v9, v5);
  v23[*(v24 + 24)] = 1;
  v27 = v29[0];
  (*(v34 + 32))(v29[0], v30, v36);
  sub_100004608();
  sub_10000404C();
  sub_100004698();

  return sub_100004218(v27);
}

unint64_t sub_100003F2C()
{
  result = qword_10000C358;
  if (!qword_10000C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C358);
  }

  return result;
}

uint64_t sub_100003FA8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isRecording];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10000404C()
{
  result = qword_10000C378;
  if (!qword_10000C378)
  {
    sub_100002A80(&qword_10000C370, &qword_100004F90);
    sub_100004134(&qword_10000C380, &qword_10000C388, &qword_100004F98, &protocol conformance descriptor for Label<A, B>);
    sub_1000041D0(&qword_10000C390, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C378);
  }

  return result;
}

uint64_t sub_100004134(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002A80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000417C()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t sub_1000041D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004218(uint64_t a1)
{
  v2 = sub_100002E80(&qword_10000C370, &qword_100004F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004290()
{
  sub_100002A80(&qword_10000C338, &qword_100004F70);
  sub_100002A80(&qword_10000C330, &qword_100004F68);
  sub_100002A80(&qword_10000C328, &qword_100004F60);
  sub_100002A80(&qword_10000C320, &qword_100004F58);
  sub_100004134(&qword_10000C360, &qword_10000C320, &qword_100004F58, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_10000442C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCAppGroupStorage init]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- app group user defaults are nil", &v1, 0xCu);
}