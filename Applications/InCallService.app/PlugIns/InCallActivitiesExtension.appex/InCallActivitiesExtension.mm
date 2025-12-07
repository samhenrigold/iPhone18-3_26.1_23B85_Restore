uint64_t sub_1000015A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000161C(&qword_10000C090, &unk_100004730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000161C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000161C(&qword_10000C090, &unk_100004730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CallScreeningActivityView(uint64_t a1)
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001740(uint64_t a1)
{
  sub_1000017AC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000017AC(uint64_t a1)
{
  if (!qword_10000C100)
  {
    sub_10000416C();
    sub_1000029A4(&unk_10000C108, &type metadata accessor for IntelligenceActivityAttributes, &protocol conformance descriptor for IntelligenceActivityAttributes);
    v1 = sub_10000430C();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C100);
    }
  }
}

uint64_t sub_10000185C()
{
  v0 = sub_10000161C(&qword_10000C160, &qword_100004828);
  __chkstk_darwin(v0 - 8);
  v19 = v17 - v1;
  v2 = sub_10000416C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v17 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v17 - v11;
  __chkstk_darwin(v10);
  v14 = v17 - v13;
  v18 = sub_10000402C();
  sub_10000161C(&qword_10000C090, &unk_100004730);
  sub_1000042EC();
  v17[3] = sub_10000412C();
  v15 = *(v3 + 8);
  v15(v14, v2);
  sub_1000042EC();
  sub_10000411C();
  v15(v12, v2);
  sub_1000042EC();
  sub_1000040FC();
  v15(v9, v2);
  sub_1000042EC();
  sub_10000413C();
  v15(v6, v2);
  return sub_10000401C();
}

uint64_t sub_100001ADC()
{
  v0 = sub_10000161C(&qword_10000C168, &qword_100004830);
  v1 = __chkstk_darwin(v0 - 8);
  v51 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v50 = &v43 - v3;
  v4 = sub_10000161C(&qword_10000C170, &qword_100004838);
  v5 = __chkstk_darwin(v4 - 8);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v43 - v7;
  v8 = sub_10000416C();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = __chkstk_darwin(v8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v46 = &v43 - v12;
  __chkstk_darwin(v11);
  v44 = &v43 - v13;
  v14 = sub_10000161C(&qword_10000C178, &unk_100004840);
  v15 = __chkstk_darwin(v14 - 8);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v19 = sub_1000040EC();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v45 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v43 - v24;
  __chkstk_darwin(v23);
  v27 = &v43 - v26;
  v28 = sub_100003FDC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v55 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000161C(&qword_10000C090, &unk_100004730);
  sub_1000042FC();
  sub_1000040CC();
  v31 = v18;
  v32 = *(v20 + 8);
  v56 = v20 + 8;
  v57 = v19;
  v54 = v32;
  v32(v27, v19);
  v33 = *(v29 + 48);
  v34 = v33(v18, 1, v28);
  v43 = v28;
  if (v34 == 1)
  {
    v35 = v44;
    sub_1000042EC();
    sub_10000414C();
    (*(v52 + 8))(v35, v53);
    if (v33(v31, 1, v28) != 1)
    {
      sub_100002710(v31);
    }
  }

  else
  {
    (*(v29 + 32))(v55, v18, v28);
    v35 = v44;
  }

  sub_1000042FC();
  sub_10000409C();
  v54(v25, v57);
  sub_1000042EC();
  v36 = v48;
  sub_10000415C();
  v37 = v53;
  v38 = *(v52 + 8);
  v38(v35, v53);
  (*(v29 + 56))(v36, 0, 1, v43);
  v39 = v46;
  sub_1000042EC();
  sub_10000408C();
  v38(v39, v37);
  v40 = v47;
  sub_1000042EC();
  sub_10000410C();
  v38(v40, v37);
  v41 = v45;
  sub_1000042FC();
  sub_1000040AC();
  v54(v41, v57);
  sub_10000404C();
  swift_allocObject();
  return sub_10000403C();
}

uint64_t sub_1000020FC()
{
  v0 = sub_10000161C(&qword_10000C168, &qword_100004830);
  v1 = __chkstk_darwin(v0 - 8);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v20 = &v20 - v3;
  v4 = sub_10000161C(&qword_10000C178, &unk_100004840);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = sub_1000040EC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  sub_10000161C(&qword_10000C090, &unk_100004730);
  sub_1000042FC();
  sub_1000040DC();
  v15 = *(v9 + 8);
  v15(v14, v8);
  v16 = sub_100003FDC();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1000042FC();
  sub_1000040BC();
  v15(v12, v8);
  v17 = sub_10000407C();
  v18 = *(*(v17 - 8) + 56);
  v18(v20, 1, 1, v17);
  v18(v21, 1, 1, v17);
  sub_10000406C();
  swift_allocObject();
  return sub_10000405C();
}

uint64_t sub_100002420@<X0>(uint64_t a1@<X8>)
{
  sub_1000020FC();
  sub_100001ADC();
  sub_10000185C();
  sub_10000400C();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_10000161C(&qword_10000C138, &qword_100004800) + 36));
  v4 = *(sub_10000161C(&qword_10000C140, &qword_100004808) + 28);
  v5 = enum case for ActivityEnvironment.liveActivity(_:);
  v6 = sub_100003FFC();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  LOBYTE(KeyPath) = sub_10000421C();
  sub_10000417C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_10000161C(&qword_10000C148, &qword_100004810) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(KeyPath) = sub_10000420C();
  sub_10000417C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a1 + *(sub_10000161C(&qword_10000C150, &qword_100004818) + 36);
  *v24 = KeyPath;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  LOBYTE(KeyPath) = sub_10000422C();
  sub_10000417C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = sub_10000161C(&qword_10000C158, &qword_100004820);
  v34 = a1 + *(result + 36);
  *v34 = KeyPath;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_100002620(uint64_t a1)
{
  v2 = sub_100003FFC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000041BC();
}

uint64_t sub_100002710(uint64_t a1)
{
  v2 = sub_10000161C(&qword_10000C178, &unk_100004840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000027BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002834(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000027BC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000028E8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    sub_1000027BC(&qword_10000C138, &qword_100004800);
    sub_1000029A4(&qword_10000C1A0, &type metadata accessor for IntelligenceActivityView, &protocol conformance descriptor for IntelligenceActivityView);
    sub_1000029EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_1000029A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000029EC()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    sub_1000027BC(&qword_10000C140, &qword_100004808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

uint64_t sub_100002A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100002B50(a1, a2, a3);

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v3, &type metadata for InCallActivitiesLiveActivity, v3);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002AD0(*&argc, argv, envp);
  sub_10000419C();
  return 0;
}

unint64_t sub_100002AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

unint64_t sub_100002B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

uint64_t sub_100002C1C(uint64_t a1)
{
  v2 = sub_10000161C(&qword_10000C1C8, &qword_100004918);
  __chkstk_darwin(v2);
  v4 = &v12 - v3;
  v5 = sub_10000161C(&qword_10000C090, &unk_100004730);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(v2 + 36)];
  v8 = *(sub_10000161C(&qword_10000C1E8, &unk_100004920) + 28);
  v9 = enum case for ColorScheme.dark(_:);
  v10 = sub_10000418C();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = KeyPath;
  sub_10000429C();
  sub_1000037BC();
  sub_10000424C();

  return sub_100003EBC(v4, &qword_10000C1C8, &qword_100004918);
}

uint64_t sub_100002DC0(uint64_t a1)
{
  v2 = sub_10000418C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000041DC();
}

uint64_t sub_100002E88()
{
  v0 = sub_10000161C(&qword_10000C160, &qword_100004828);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1000042DC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_10000161C(&qword_10000C1F0, &qword_100004930);
  sub_100003F60(&qword_10000C1F8, &qword_10000C1F0, &qword_100004930, &protocol conformance descriptor for TupleView<A>);
  sub_1000042BC();
  sub_100003FEC();
  sub_1000042CC();
  sub_100003EBC(v2, &qword_10000C160, &qword_100004828);
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_10000428C();
  sub_1000042AC();

  return (v10)(v9, v3);
}

uint64_t sub_100003114@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = sub_10000161C(&qword_10000C200, &qword_100004938);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v2 = &v19 - v1;
  v3 = sub_10000161C(&qword_10000C208, &qword_100004940);
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_10000439C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000161C(&qword_10000C210, &qword_100004948);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v19 - v13;
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  sub_10000437C();
  sub_10000433C();
  sub_10000438C();
  sub_10000433C();
  sub_10000436C();
  sub_10000433C();
  v29 = v16;
  sub_10000161C(&qword_10000C218, &qword_100004950);
  v30 = &type metadata for Text;
  v31 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v19 = v5;
  sub_10000434C();
  v27 = v5;
  v28 = v14;
  sub_10000161C(&qword_10000C220, &qword_100004958);
  sub_100003F60(&qword_10000C228, &qword_10000C220, &qword_100004958, &protocol conformance descriptor for TupleView<A>);
  sub_10000434C();
  v25 = v2;
  v26 = v11;
  sub_10000161C(&qword_10000C1F0, &qword_100004930);
  sub_100003F60(&qword_10000C1F8, &qword_10000C1F0, &qword_100004930, &protocol conformance descriptor for TupleView<A>);
  sub_10000434C();
  (*(v22 + 8))(v2, v24);
  (*(v20 + 8))(v19, v21);
  v17 = *(v8 + 8);
  v17(v11, v7);
  v17(v14, v7);
  return (v17)(v16, v7);
}

uint64_t sub_10000363C@<X0>(uint64_t a1@<X8>)
{
  sub_1000041EC();
  result = sub_10000423C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000369C()
{
  sub_10000416C();
  sub_10000161C(&qword_10000C1C0, &qword_100004910);
  sub_1000038A4(&unk_10000C108, &type metadata accessor for IntelligenceActivityAttributes, &protocol conformance descriptor for IntelligenceActivityAttributes);
  sub_1000027BC(&qword_10000C1C8, &qword_100004918);
  sub_1000037BC();
  swift_getOpaqueTypeConformance2();
  return sub_10000431C();
}

unint64_t sub_1000037BC()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    sub_1000027BC(&qword_10000C1C8, &qword_100004918);
    sub_1000038A4(&qword_10000C1D8, type metadata accessor for CallScreeningActivityView, &unk_10000477C);
    sub_100003F60(&qword_10000C1E0, &qword_10000C1E8, &unk_100004920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

uint64_t sub_1000038A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000392C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000161C(&qword_10000C218, &qword_100004950);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_10000161C(&qword_10000C220, &qword_100004958);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_10000161C(&qword_10000C200, &qword_100004938);
  sub_10000435C();
  sub_10000161C(&qword_10000C210, &qword_100004948);
  sub_10000432C();
  sub_100003DBC(v14, v12);
  v15 = *(v3 + 16);
  v15(v6, v8, v2);
  sub_100003DBC(v12, a1);
  v16 = sub_10000161C(&qword_10000C230, &qword_100004960);
  v15((a1 + *(v16 + 48)), v6, v2);
  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_100003E2C(v14);
  v17(v6, v2);
  return sub_100003E2C(v12);
}

uint64_t sub_100003B6C@<X0>(char *a1@<X8>)
{
  v2 = sub_10000161C(&qword_10000C218, &qword_100004950);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - v11;
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_10000161C(&qword_10000C208, &qword_100004940);
  sub_10000435C();
  sub_10000161C(&qword_10000C210, &qword_100004948);
  sub_10000432C();
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v15(v6, v12, v2);
  v15(a1, v9, v2);
  v16 = sub_10000161C(&qword_10000C238, &unk_100004968);
  v15(&a1[*(v16 + 48)], v6, v2);
  v17 = *(v3 + 8);
  v17(v12, v2);
  v17(v14, v2);
  v17(v6, v2);
  return (v17)(v9, v2);
}

uint64_t sub_100003DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000161C(&qword_10000C220, &qword_100004958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E2C(uint64_t a1)
{
  v2 = sub_10000161C(&qword_10000C220, &qword_100004958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003EBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000161C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003F60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000027BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}