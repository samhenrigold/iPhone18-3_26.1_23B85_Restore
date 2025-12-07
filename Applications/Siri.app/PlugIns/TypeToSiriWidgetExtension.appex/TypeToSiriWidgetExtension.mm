uint64_t sub_100001670()
{
  v0 = sub_1000056B4();
  sub_1000016F0(v0, qword_10000C300);
  sub_100001754(v0, qword_10000C300);
  return sub_1000056A4();
}

uint64_t *sub_1000016F0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001754(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000178C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1000025BC(&qword_10000C118, &qword_100005CC8);
  __chkstk_darwin(v1 - 8);
  v45 = &v35 - v2;
  v3 = sub_100005644();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100005624();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000025BC(&qword_10000C120, &qword_100005CD0);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1000025BC(&qword_10000C128, &qword_100005CD8);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000025BC(&qword_10000C130, &qword_100005CE0);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1000025BC(&qword_10000C138, &qword_100005CE8);
  v18 = *(v17 - 8);
  v42 = v17;
  v43 = v18;
  __chkstk_darwin(v17);
  v35 = &v35 - v19;
  sub_1000025BC(&qword_10000C140, &qword_100005CF0);
  sub_100002604(&qword_10000C148, &qword_10000C140, &qword_100005CF0, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1000057A4();
  sub_100005614();
  v20 = sub_100002604(&qword_10000C150, &qword_10000C120, &qword_100005CD0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100005714();
  v21 = *(v38 + 8);
  v22 = v41;
  v21(v6, v41);
  (*(v36 + 8))(v9, v7);
  sub_100005614();
  v49 = v7;
  v50 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005704();
  v21(v6, v22);
  (*(v37 + 8))(v12, v10);
  v49 = v10;
  v50 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v35;
  v26 = v39;
  sub_100005724();
  v27 = v16;
  v28 = v26;
  (*(v40 + 8))(v27, v26);
  v29 = sub_100005654();
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
  v30 = objc_allocWithZone(sub_100005684());
  v31 = sub_100005674();
  v32 = v44;
  sub_100005664();

  sub_100005634();
  (*(v46 + 8))(v32, v47);
  v49 = v28;
  v50 = v24;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_100005734();
  return (*(v43 + 8))(v25, v33);
}

uint64_t sub_100001E28()
{
  sub_1000025BC(&qword_10000C158, qword_100005CF8);
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8, &protocol conformance descriptor for Label<A, B>);
  sub_1000024A0();

  return sub_100005794();
}

uint64_t sub_100001F38@<X0>(uint64_t a1@<X8>)
{
  sub_1000056E4();
  result = sub_100005744();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100001FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005774();
  *a1 = result;
  return result;
}

uint64_t sub_100002040()
{
  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000056B4();
  sub_100001754(v1, qword_10000C300);
  v2 = sub_100005694();
  v3 = sub_1000057F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#TypeToSiriControlWidget - perform", v4, 2u);
  }

  v5 = [objc_allocWithZone(SiriSimpleActivationSource) init];
  [v5 activateFromSource:55];
  [v5 invalidate];
  sub_1000055C4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000021BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002254;

  return LaunchTypeToSiriIntent.perform()(a1);
}

uint64_t sub_100002254()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002348(uint64_t a1)
{
  v2 = sub_1000024A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002388()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_1000023E0()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_1000024A0()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100002548(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000025BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002604(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002548(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000264C()
{
  sub_100002548(&qword_10000C138, &qword_100005CE8);
  sub_100002548(&qword_10000C130, &qword_100005CE0);
  sub_100002548(&qword_10000C128, &qword_100005CD8);
  sub_100002548(&qword_10000C120, &qword_100005CD0);
  sub_100002604(&qword_10000C150, &qword_10000C120, &qword_100005CD0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000027A4()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

unint64_t sub_1000027FC()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_1000028BC()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

uint64_t sub_100002910@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1000025BC(&qword_10000C118, &qword_100005CC8);
  __chkstk_darwin(v1 - 8);
  v40 = &v30 - v2;
  v3 = sub_100005644();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005624();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000025BC(&qword_10000C180, &qword_100005E90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_1000025BC(&qword_10000C188, &qword_100005E98);
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v37 = sub_1000025BC(&qword_10000C190, &qword_100005EA0);
  v31 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v30 - v13;
  v38 = sub_1000025BC(&qword_10000C198, &qword_100005EA8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = &v30 - v15;
  sub_1000025BC(&qword_10000C1A0, &unk_100005EB0);
  sub_100002604(&qword_10000C1A8, &qword_10000C1A0, &unk_100005EB0, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1000057A4();
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v16 = v35;
  sub_100001754(v35, qword_10000C318);
  v17 = sub_100002604(&qword_10000C1B0, &qword_10000C180, &qword_100005E90, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100005714();
  (*(v7 + 8))(v9, v6);
  if (qword_10000C0C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000055F4();
  sub_100001754(v18, qword_10000C330);
  v19 = v32;
  sub_1000055E4();
  v44 = v6;
  v45 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005704();
  (*(v33 + 8))(v19, v16);
  (*(v30 + 8))(v12, v10);
  v44 = v10;
  v45 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = v34;
  v23 = v37;
  sub_100005724();
  (*(v31 + 8))(v14, v23);
  v24 = sub_100005654();
  (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  v25 = objc_allocWithZone(sub_100005684());
  v26 = sub_100005674();
  v27 = v39;
  sub_100005664();

  sub_100005634();
  (*(v41 + 8))(v27, v42);
  v44 = v23;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  sub_100005734();
  return (*(v36 + 8))(v22, v28);
}

uint64_t sub_10000301C()
{
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  sub_1000025BC(&qword_10000C158, qword_100005CF8);
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8, &protocol conformance descriptor for Label<A, B>);
  sub_1000028BC();

  return sub_100005794();
}

uint64_t sub_100003158@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005624();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v6 = sub_100001754(v2, qword_10000C318);
  (*(v3 + 16))(v5, v6, v2);
  result = sub_100005754();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1000032A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005774();
  *a1 = result;
  return result;
}

uint64_t sub_1000032D8()
{
  v0 = sub_100005624();
  sub_1000016F0(v0, qword_10000C318);
  sub_100001754(v0, qword_10000C318);
  return sub_100005614();
}

uint64_t sub_100003344()
{
  v0 = sub_1000055F4();
  sub_1000016F0(v0, qword_10000C330);
  sub_100001754(v0, qword_10000C330);
  return sub_1000055D4();
}

uint64_t sub_1000033A8()
{
  v0 = sub_100005604();
  sub_1000016F0(v0, qword_10000C348);
  v1 = sub_100001754(v0, qword_10000C348);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100003430(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000057E4();
  *(v1 + 24) = sub_1000057D4();
  v3 = sub_1000057C4();

  return _swift_task_switch(sub_1000034C8, v3, v2);
}

uint64_t sub_1000034C8()
{

  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000056B4();
  sub_100001754(v1, qword_10000C300);
  v2 = sub_100005694();
  v3 = sub_1000057F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#TalkToSiriControlWidget - perform", v4, 2u);
  }

  v5 = [objc_allocWithZone(SiriSimpleActivationSource) init];
  [v5 activateFromSource:58];
  [v5 invalidate];
  sub_1000055C4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000036A4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100001754(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000374C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002254;

  return sub_100003430(a1);
}

uint64_t sub_1000037E4(uint64_t a1)
{
  v2 = sub_1000028BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000385C()
{
  sub_100002548(&qword_10000C198, &qword_100005EA8);
  sub_100002548(&qword_10000C190, &qword_100005EA0);
  sub_100002548(&qword_10000C188, &qword_100005E98);
  sub_100002548(&qword_10000C180, &qword_100005E90);
  sub_100002604(&qword_10000C1B0, &qword_10000C180, &qword_100005E90, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000039B0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = sub_1000025BC(&qword_10000C1C0, &qword_100005F18);
  __chkstk_darwin(v48);
  v47 = &v35 - v1;
  v46 = sub_1000025BC(&qword_10000C1C8, &qword_100005F20);
  v50 = *(v46 - 8);
  v2 = __chkstk_darwin(v46);
  v45 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v52 = &v35 - v4;
  v5 = sub_1000025BC(&qword_10000C1D0, &qword_100005F28);
  v36 = v5;
  v41 = *(v5 - 8);
  v6 = v41;
  v7 = __chkstk_darwin(v5);
  v51 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_1000025BC(&qword_10000C1D8, &qword_100005F30);
  v44 = *(v11 - 8);
  v12 = v44;
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  sub_100003EEC();
  v43 = v17;
  sub_1000056F4();
  sub_100003F40();
  v40 = v10;
  sub_1000056F4();
  sub_100003F94();
  v18 = v52;
  sub_1000056F4();
  v38 = *(v12 + 16);
  v39 = v11;
  v19 = v15;
  v42 = v15;
  v38(v15, v17, v11);
  v37 = *(v6 + 16);
  v20 = v51;
  v37(v51, v10, v5);
  v21 = *(v50 + 16);
  v22 = v45;
  v23 = v18;
  v24 = v46;
  v21(v45, v23, v46);
  v25 = v47;
  v38(v47, v19, v11);
  v26 = v48;
  v27 = v20;
  v28 = v36;
  v37(&v25[*(v48 + 48)], v27, v36);
  v21(&v25[*(v26 + 64)], v22, v24);
  sub_1000056C4();
  v29 = *(v50 + 8);
  v29(v52, v24);
  v30 = *(v41 + 8);
  v31 = v28;
  v30(v40, v28);
  v32 = *(v44 + 8);
  v33 = v39;
  v32(v43, v39);
  v29(v22, v24);
  v30(v51, v31);
  return (v32)(v42, v33);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003E6C();
  sub_1000056D4();
  return 0;
}

unint64_t sub_100003E6C()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

unint64_t sub_100003EEC()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100003F40()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

unint64_t sub_100003F94()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100003FEC()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    sub_100002548(&qword_10000C200, &qword_100005F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_100004054()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

unint64_t sub_1000040AC()
{
  result = qword_10000C210;
  if (!qword_10000C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C210);
  }

  return result;
}

unint64_t sub_10000416C()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

uint64_t sub_1000041C0()
{
  v0 = sub_1000025BC(&qword_10000C118, &qword_100005CC8);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_100005644();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005654();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = objc_allocWithZone(sub_100005684());
  v9 = sub_100005674();
  sub_100005664();

  v10 = sub_100005634();
  (*(v4 + 8))(v6, v3);
  v11 = AFVisualIntelligenceCameraRestricted();
  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056B4();
  sub_100001754(v12, qword_10000C300);
  v13 = sub_100005694();
  v14 = sub_1000057F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109632;
    *(v15 + 4) = v10 & (v11 ^ 1) & 1;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v10;
    *(v15 + 14) = 1024;
    *(v15 + 16) = v11 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "#VisualIntelligenceControlWidget - IsVisualIntelligenceEnabled: %{BOOL}d - isGMSEligible: %{BOOL}d - isVisualIntelligenceRestricted: %{BOOL}d", v15, 0x14u);
  }

  return v10 & (v11 ^ 1) & 1;
}

uint64_t sub_100004434@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_100005624();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v28 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000025BC(&qword_10000C220, &qword_1000060D0);
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = sub_1000025BC(&qword_10000C228, &qword_1000060D8);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v26 = sub_1000025BC(&qword_10000C230, &qword_1000060E0);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v22 - v9;
  v27 = sub_1000025BC(&qword_10000C238, &qword_1000060E8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = &v22 - v11;
  sub_1000025BC(&qword_10000C240, &unk_1000060F0);
  sub_100002604(&qword_10000C248, &qword_10000C240, &unk_1000060F0, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1000057A4();
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0D8 != -1)
  {
    swift_once();
  }

  v13 = v30;
  sub_100001754(v30, qword_10000C360);
  v14 = sub_100002604(&qword_10000C250, &qword_10000C220, &qword_1000060D0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_100005714();
  (*(v22 + 8))(v5, v3);
  if (qword_10000C0E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000055F4();
  sub_100001754(v15, qword_10000C378);
  v16 = v28;
  sub_1000055E4();
  v32 = v3;
  v33 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005704();
  (*(v29 + 8))(v16, v13);
  (*(v23 + 8))(v8, v6);
  v32 = v6;
  v33 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v26;
  sub_100005724();
  (*(v24 + 8))(v10, v19);
  sub_1000041C0();
  v32 = v19;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  sub_100005734();
  return (*(v25 + 8))(v12, v20);
}

uint64_t sub_1000049E4()
{
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  sub_1000025BC(&qword_10000C258, &unk_100006100);
  sub_100002548(&qword_10000C158, qword_100005CF8);
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8, &protocol conformance descriptor for Label<A, B>);
  sub_100005378();
  swift_getOpaqueTypeConformance2();
  sub_10000416C();
  return sub_100005794();
}

uint64_t sub_100004B20()
{
  v0 = sub_100005624();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000025BC(&qword_10000C158, qword_100005CF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  sub_100005784();
  sub_100005614();
  v7[0] = sub_1000057B4();
  v7[1] = v5;
  sub_100002604(&qword_10000C160, &qword_10000C158, qword_100005CF8, &protocol conformance descriptor for Label<A, B>);
  sub_100005378();
  sub_100005764();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100004D18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005624();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  if (qword_10000C0D8 != -1)
  {
    swift_once();
  }

  v6 = sub_100001754(v2, qword_10000C360);
  (*(v3 + 16))(v5, v6, v2);
  result = sub_100005754();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_100004E60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005774();
  *a1 = result;
  return result;
}

uint64_t sub_100004EA4()
{
  v0 = sub_100005624();
  sub_1000016F0(v0, qword_10000C360);
  sub_100001754(v0, qword_10000C360);
  return sub_100005614();
}

uint64_t sub_100004F08()
{
  v0 = sub_1000055F4();
  sub_1000016F0(v0, qword_10000C378);
  sub_100001754(v0, qword_10000C378);
  return sub_1000055D4();
}

uint64_t sub_100004F6C()
{
  v0 = sub_100005604();
  sub_1000016F0(v0, qword_10000C390);
  v1 = sub_100001754(v0, qword_10000C390);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100004FF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000057E4();
  *(v1 + 24) = sub_1000057D4();
  v3 = sub_1000057C4();

  return _swift_task_switch(sub_10000508C, v3, v2);
}

uint64_t sub_10000508C()
{

  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000056B4();
  sub_100001754(v1, qword_10000C300);
  v2 = sub_100005694();
  v3 = sub_1000057F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#VisualIntelligenceControlWidget - perform", v4, 2u);
  }

  v5 = [objc_allocWithZone(SiriSimpleActivationSource) init];
  [v5 activateFromSource:57];
  [v5 invalidate];
  sub_1000055C4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100005268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002254;

  return sub_100004FF4(a1);
}

uint64_t sub_100005300(uint64_t a1)
{
  v2 = sub_10000416C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100005378()
{
  result = qword_10000C260;
  if (!qword_10000C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C260);
  }

  return result;
}

uint64_t sub_1000053CC()
{
  sub_100002548(&qword_10000C238, &qword_1000060E8);
  sub_100002548(&qword_10000C230, &qword_1000060E0);
  sub_100002548(&qword_10000C228, &qword_1000060D8);
  sub_100002548(&qword_10000C220, &qword_1000060D0);
  sub_100002604(&qword_10000C250, &qword_10000C220, &qword_1000060D0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}