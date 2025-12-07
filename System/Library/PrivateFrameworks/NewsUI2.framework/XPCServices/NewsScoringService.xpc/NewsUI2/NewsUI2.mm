int main(int argc, const char **argv, const char **envp)
{
  v42 = sub_100009F1C();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A09C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  sub_10000A07C();
  v16 = sub_10000A08C();
  v17 = sub_10000A2FC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "main entry point", v18, 2u);
  }

  v43 = *(v7 + 8);
  v43(v15, v6);
  sub_1000021DC(0, &qword_1000154E8, &qword_1000154F0, &protocol descriptor for BundleAssemblyType);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10000B070;
  v20 = sub_10000A1FC();
  v21 = [objc_allocWithZone(v20) init];
  *(v19 + 56) = v20;
  *(v19 + 64) = sub_100002290(&qword_1000154F8, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v19 + 32) = v21;
  v22 = sub_10000A05C();
  v23 = [objc_allocWithZone(v22) init];
  *(v19 + 96) = v22;
  *(v19 + 104) = sub_100002290(&qword_100015500, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v19 + 72) = v23;
  v24 = sub_10000A02C();
  v25 = [objc_allocWithZone(v24) init];
  *(v19 + 136) = v24;
  *(v19 + 144) = sub_100002290(&qword_100015508, &type metadata accessor for NewsAppPersonalizationAssembly, &protocol conformance descriptor for NewsAppPersonalizationAssembly);
  *(v19 + 112) = v25;
  sub_1000021DC(0, &qword_100015510, &qword_100015518, &protocol descriptor for AssemblyType);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10000B080;
  v27 = type metadata accessor for Assembly();
  v28 = swift_allocObject();
  *(v26 + 56) = v27;
  *(v26 + 64) = sub_100002290(&qword_100015520, type metadata accessor for Assembly, &unk_10000B1C8);
  *(v26 + 32) = v28;
  sub_100009E5C();
  swift_allocObject();
  sub_100009E4C();
  (*(v3 + 104))(v5, enum case for Container.Environment.normal(_:), v42);
  sub_100009F4C();
  swift_allocObject();
  qword_100015C40 = sub_100009F2C();
  sub_10000A07C();
  v29 = sub_10000A08C();
  v30 = sub_10000A2FC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "will create XPC listener and delegate", v31, 2u);
  }

  v32 = v43;
  v43(v13, v6);
  sub_100009F3C();
  v33 = type metadata accessor for ScoringServiceListenerDelegate();
  v34 = objc_allocWithZone(v33);
  sub_1000022D8(v45, v45[3]);
  type metadata accessor for ScoringEngine();
  v35 = sub_100009E2C();
  if (v35)
  {
    *&v34[OBJC_IVAR____TtC18NewsScoringService30ScoringServiceListenerDelegate_scoringEngine] = v35;
    v44.receiver = v34;
    v44.super_class = v33;
    v36 = objc_msgSendSuper2(&v44, "init");
    sub_10000231C(v45);
    qword_100015C48 = v36;
    qword_100015C50 = [objc_opt_self() serviceListener];
    [qword_100015C50 setDelegate:qword_100015C48];
    sub_10000A07C();
    v37 = sub_10000A08C();
    v38 = sub_10000A2FC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "will resume XPC listener", v39, 2u);
    }

    v32(v10, v6);
    [qword_100015C50 resume];
    LODWORD(v35) = 0;
  }

  else
  {
    __break(1u);
  }

  return v35;
}

void sub_1000021DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100002234(255, a3, a4);
    v5 = sub_10000A45C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100002234(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100002290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000022D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000231C(void *a1)
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

void type metadata accessor for FCFeedPersonalizationConfigurationSet()
{
  if (!qword_100015648)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100015648);
    }
  }
}

uint64_t sub_1000023B8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t, void), uint64_t a8, uint64_t a9)
{
  v62 = a8;
  v63 = a7;
  v65 = a3;
  v66 = a6;
  v64 = a4;
  v12 = sub_10000A20C();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009DCC();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v67 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = [objc_allocWithZone(NSDate) init];
  sub_100006158(0);
  v55 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10000B0D0;
  if (a5 >> 62)
  {
    v19 = sub_10000A41C();
  }

  else
  {
    v19 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  v54 = v19;
  *(v18 + 32) = v19;
  v20 = sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v69 = v15;
  v58 = v20;
  v21 = sub_10000A44C();
  v23 = v22;
  *(v18 + 96) = &type metadata for String;
  v57 = sub_1000061C0();
  *(v18 + 104) = v57;
  *(v18 + 72) = v21;
  *(v18 + 80) = v23;
  v56 = sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v24 = sub_10000A35C();
  v25 = sub_10000A2FC();
  sub_10000A06C("will handle article scoring request, items=%lu, id=%{public}@", 61, 2, &_mh_execute_header, v24, v25, v18);

  sub_1000022D8(a2, a2[3]);
  sub_100009DAC();
  sub_100009FEC();

  v26 = v73;
  v27 = sub_1000022D8(&v72, v73);
  v71 = v26;
  v28 = sub_100006630(&v70);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  v29 = sub_100005B1C(0, 1, 1, &_swiftEmptyArrayStorage);
  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_100005B1C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  sub_100006694(&v70, &v29[32 * v31 + 32]);
  sub_10000231C(&v72);
  sub_10000A1DC();
  v32 = v73;
  v33 = sub_1000022D8(&v72, v73);
  v71 = v32;
  v34 = sub_100006630(&v70);
  (*(*(v32 - 8) + 16))(v34, v33, v32);
  v36 = *(v29 + 2);
  v35 = *(v29 + 3);
  if (v36 >= v35 >> 1)
  {
    v29 = sub_100005B1C((v35 > 1), v36 + 1, 1, v29);
  }

  *(v29 + 2) = v36 + 1;
  sub_100006694(&v70, &v29[32 * v36 + 32]);
  sub_10000231C(&v72);
  (*(v68 + 16))(v67, a1, v69);
  sub_1000022D8(a2, a2[3]);
  if (a5 >> 62)
  {
    sub_100006FB8();

    sub_10000A40C();
  }

  else
  {

    sub_10000A47C();
    sub_100006FB8();
  }

  sub_10000A34C();
  v37 = sub_100009FFC();
  (*(v59 + 8))(v14, v60);

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10000B0E0;
  *(v38 + 56) = &type metadata for Int;
  *(v38 + 64) = &protocol witness table for Int;
  *(v38 + 32) = v54;
  v39 = *(v37 + 16);
  *(v38 + 96) = &type metadata for Int;
  *(v38 + 104) = &protocol witness table for Int;
  *(v38 + 72) = v39;
  v40 = v61;
  v41 = [v61 fc_millisecondTimeIntervalUntilNow];
  *(v38 + 136) = &type metadata for UInt64;
  *(v38 + 144) = &protocol witness table for UInt64;
  *(v38 + 112) = v41;
  v42 = v69;
  v43 = sub_10000A44C();
  v44 = v57;
  *(v38 + 176) = &type metadata for String;
  *(v38 + 184) = v44;
  *(v38 + 152) = v43;
  *(v38 + 160) = v45;
  v46 = sub_10000A35C();
  v47 = sub_10000A2FC();
  sub_10000A06C("did handle article scoring request, items=%lu, results=%lu, time=%llums, id=%{public}@", 86, 2, &_mh_execute_header, v46, v47, v38);

  sub_100003020(v37);
  v49 = v48;

  v50 = v67;
  sub_100002BF8(v67, v29);

  v63(v49, 0);

  v65(v51);

  return (*(v68 + 8))(v50, v42);
}

uint64_t sub_100002BF8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = sub_10000A0CC();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A0FC();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A11C();
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  sub_100009DAC();
  v14 = objc_allocWithZone(NDAssertion);
  v15 = sub_10000A23C();

  v16 = [v14 initWithName:v15];

  v23[1] = *(v24 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_cooldownQueue);
  sub_10000A10C();
  sub_10000A12C();
  v24 = *(v8 + 8);
  v24(v11, v7);
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  aBlock[4] = nullsub_1;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059D0;
  aBlock[3] = &unk_100010C28;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  sub_10000A0DC();
  v31 = &_swiftEmptyArrayStorage;
  sub_100006E30(&qword_100015838, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100006CFC(0, &qword_100015840, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D50(&qword_100015848, &qword_100015840, &type metadata accessor for DispatchWorkItemFlags);
  v21 = v27;
  sub_10000A37C();
  sub_10000A31C();
  _Block_release(v19);

  (*(v30 + 8))(v3, v21);
  (*(v28 + 8))(v6, v29);
  v24(v13, v25);
}

void sub_100003020(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006C40(0);
    v2 = sub_10000A42C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17.super.super.isa = sub_10000A2EC().super.super.isa;
        v18 = sub_100005C34(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100003200(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v35 = a1;
  v3 = sub_100009D6C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v37 = [objc_allocWithZone(NSDate) init];
  sub_100009DBC();
  sub_100006158(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000B0D0;
  sub_100009DDC();
  v14 = sub_100009D2C();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  *(v13 + 56) = &type metadata for String;
  v17 = sub_1000061C0();
  *(v13 + 64) = v17;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = sub_10000A44C();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 72) = v18;
  *(v13 + 80) = v19;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v20 = sub_10000A35C();
  v21 = sub_10000A2FC();
  sub_10000A06C("will enqueue request, baseURL=%{public}@, id=%{public}@", 55, 2, &_mh_execute_header, v20, v21, v13);

  v22 = v36;
  (*(v8 + 16))(v36, v12, v7);
  v23 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v27 = v37;
  v26 = v38;
  v28 = v35;
  *(v25 + 2) = v38;
  *(v25 + 3) = v28;
  *(v25 + 4) = v27;
  (*(v8 + 32))(&v25[v23], v22, v7);
  v29 = &v25[v24];
  v30 = v40;
  *v29 = v39;
  v29[1] = v30;
  v31 = v26;
  v32 = v28;
  v33 = v27;

  sub_100009F5C();

  return (*(v8 + 8))(v12, v7);
}

void sub_1000036BC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100006EC4(0, &qword_100015830, NSNumber_ptr);
    isa = sub_10000A21C().super.isa;
  }

  if (a2)
  {
    v6 = sub_100009D0C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100003778(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v57 = a8;
  v58 = a7;
  v64 = a6;
  v59 = a4;
  v60 = a3;
  v12 = sub_100009DCC();
  v62 = *(v12 - 8);
  __chkstk_darwin(v12);
  v61 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = [objc_allocWithZone(NSDate) init];
  sub_100006158(0);
  v55[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10000B0D0;
  v16 = [a5 description];
  v17 = sub_10000A24C();
  v19 = v18;

  *(v15 + 56) = &type metadata for String;
  v20 = sub_1000061C0();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v21 = sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v63 = v12;
  v55[3] = v21;
  v22 = sub_10000A44C();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v20;
  v55[0] = v20;
  *(v15 + 72) = v22;
  *(v15 + 80) = v23;
  v55[2] = sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v24 = sub_10000A35C();
  v25 = sub_10000A2FC();
  sub_10000A06C("will handle database scoring request, db=%{public}@, id=%{public}@", 66, 2, &_mh_execute_header, v24, v25, v15);

  sub_1000022D8(a2, a2[3]);
  sub_100009DAC();
  sub_100009FEC();

  v26 = v68;
  v27 = sub_1000022D8(&v67, v68);
  v66 = v26;
  v28 = sub_100006630(&v65);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  v29 = sub_100005B1C(0, 1, 1, &_swiftEmptyArrayStorage);
  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_100005B1C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  sub_100006694(&v65, &v29[32 * v31 + 32]);
  sub_10000231C(&v67);
  sub_10000A1DC();
  v32 = v68;
  v33 = sub_1000022D8(&v67, v68);
  v66 = v32;
  v34 = sub_100006630(&v65);
  (*(*(v32 - 8) + 16))(v34, v33, v32);
  v36 = *(v29 + 2);
  v35 = *(v29 + 3);
  v38 = v61;
  v37 = v62;
  if (v36 >= v35 >> 1)
  {
    v29 = sub_100005B1C((v35 > 1), v36 + 1, 1, v29);
  }

  v39 = v63;
  *(v29 + 2) = v36 + 1;
  sub_100006694(&v65, &v29[32 * v36 + 32]);
  sub_10000231C(&v67);
  (*(v37 + 16))(v38, a1, v39);
  sub_10000A16C();
  v67 = 0;
  *&v65 = 0;
  v40 = sub_10000A1BC();
  __chkstk_darwin(v40);
  v55[-6] = a1;
  v55[-5] = a2;
  v55[-4] = a9;
  v55[-3] = &v67;
  v55[-2] = &v65;
  sub_100006E30(&qword_100015858, &type metadata accessor for FeedItemAndScoreEntity, &protocol conformance descriptor for FeedItemAndScoreEntity);
  sub_10000A15C();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10000B0E0;
  v42 = v67;
  *(v41 + 56) = &type metadata for Int;
  *(v41 + 64) = &protocol witness table for Int;
  *(v41 + 32) = v42;
  v43 = v65;
  *(v41 + 96) = &type metadata for Int;
  *(v41 + 104) = &protocol witness table for Int;
  *(v41 + 72) = v43;
  v44 = v56;
  v45 = [v56 fc_millisecondTimeIntervalUntilNow];
  *(v41 + 136) = &type metadata for UInt64;
  *(v41 + 144) = &protocol witness table for UInt64;
  *(v41 + 112) = v45;
  v46 = v63;
  v47 = sub_10000A44C();
  v48 = v55[0];
  *(v41 + 176) = &type metadata for String;
  *(v41 + 184) = v48;
  *(v41 + 152) = v47;
  *(v41 + 160) = v49;
  v50 = sub_10000A35C();
  v51 = sub_10000A2FC();
  sub_10000A06C("did handle database scoring request, items=%lu, results=%lu, time=%llums, id=%{public}@", 87, 2, &_mh_execute_header, v50, v51, v41);

  v52 = v61;
  sub_100002BF8(v61, v29);

  v53 = v58(0);
  v60(v53);

  return (*(v62 + 8))(v52, v46);
}

uint64_t sub_100003F18(uint64_t (**a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v74 = a6;
  v75 = a5;
  v87 = a4;
  v9 = sub_10000A1BC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v86 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = v67 - v13;
  v14 = sub_10000A20C();
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v81 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006158(0);
  v72 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10000B0D0;
  v85 = a1;
  v18 = a1[2];
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  v19 = sub_100009DCC();
  v20 = sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v73 = v19;
  v71 = v20;
  v21 = sub_10000A44C();
  v23 = v22;
  *(v17 + 96) = &type metadata for String;
  v70 = sub_1000061C0();
  *(v17 + 104) = v70;
  *(v17 + 72) = v21;
  *(v17 + 80) = v23;
  v69 = sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v24 = sub_10000A35C();
  v25 = sub_10000A2FC();
  sub_10000A06C("will score batch, items=%lu, id=%{public}@", 42, 2, &_mh_execute_header, v24, v25, v17);

  v78 = [objc_allocWithZone(NSDate) init];
  v26 = a3[3];
  v80 = a3[4];
  v27 = v18;
  v28 = sub_1000022D8(a3, v26);
  v79 = a2;
  v77 = v18;
  if (v18)
  {
    v67[0] = v28;
    v67[1] = v26;
    v89 = &_swiftEmptyArrayStorage;
    sub_10000A3CC();
    v68 = v10;
    v30 = *(v10 + 16);
    v29 = v10 + 16;
    v91 = v30;
    v31 = v85 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v88 = *(v29 + 56);
    v32 = v76;
    do
    {
      (v91)(v32, v31, v9);
      sub_10000A17C();
      (*(v29 - 8))(v32, v9);
      sub_10000A3AC();
      sub_10000A3DC();
      sub_10000A3EC();
      sub_10000A3BC();
      v31 = &v88[v31];
      v27 = (v27 - 1);
    }

    while (v27);
    v10 = v68;
  }

  v33 = v81;
  sub_10000A34C();
  v34 = v84;
  v35 = sub_100009FFC();
  v36 = v85;
  v37 = v86;
  if (v34)
  {
    (*(v82 + 8))(v33, v83);

    return v36;
  }

  v91 = v35;
  v80 = 0;
  (*(v82 + 8))(v33, v83);

  if (v77)
  {
    v40 = *(v10 + 16);
    v39 = v10 + 16;
    v88 = v40;
    v41 = v36 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v84 = *(v39 + 56);
    v85 = (v39 - 8);
    for (i = v77; i; i = (i - 1))
    {
      v44 = v9;
      (v88)(v37, v41, v9);
      if (v87 == 11)
      {
        sub_10000A18C();
        sub_10000A1AC();
        sub_10000A0AC();

        if (!v90)
        {
          goto LABEL_30;
        }

        v45 = v91;
        if (*(v91 + 16))
        {
          v46 = v89;
          v47 = v90;
          goto LABEL_18;
        }
      }

      else
      {
        sub_10000A19C();
        sub_10000A1AC();
        sub_10000A0AC();

        if (!v90)
        {
          goto LABEL_31;
        }

        if (*(v91 + 16))
        {
          v46 = v89;
          v47 = v90;
          v45 = v91;
LABEL_18:
          v48 = sub_100005C34(v46, v47);
          v50 = v49;

          if (v50)
          {
            v43 = *(*(v45 + 56) + 8 * v48);
          }

          else
          {
            v43 = 0;
          }

          goto LABEL_10;
        }
      }

      v43 = 0;
LABEL_10:
      v37 = v86;
      v89 = v43;
      LOBYTE(v90) = 0;
      sub_10000A0BC();

      v9 = v44;
      result = (*v85)(v37, v44);
      v41 += v84;
    }
  }

  v51 = v77;
  if (__OFADD__(*v75, v77))
  {
    __break(1u);
  }

  else
  {
    *v75 += v77;
    v52 = v91;
    v53 = *(v91 + 16);
    v54 = __OFADD__(*v74, v53);
    v55 = *v74 + v53;
    if (!v54)
    {
      *v74 = v55;
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_10000B0E0;
      *(v56 + 56) = &type metadata for Int;
      *(v56 + 64) = &protocol witness table for Int;
      *(v56 + 32) = v51;
      v57 = *(v52 + 16);

      *(v56 + 96) = &type metadata for Int;
      *(v56 + 104) = &protocol witness table for Int;
      *(v56 + 72) = v57;
      v58 = v78;
      v59 = [v78 fc_millisecondTimeIntervalUntilNow];
      *(v56 + 136) = &type metadata for UInt64;
      *(v56 + 144) = &protocol witness table for UInt64;
      *(v56 + 112) = v59;
      v60 = sub_10000A44C();
      v61 = v70;
      *(v56 + 176) = &type metadata for String;
      *(v56 + 184) = v61;
      *(v56 + 152) = v60;
      *(v56 + 160) = v62;
      v63 = sub_10000A35C();
      v64 = sub_10000A2FC();
      sub_10000A06C("did score batch, items=%lu, scores=%lu@, time=%llums, id=%{public}@", 67, 2, &_mh_execute_header, v63, v64, v56);

      sub_100006E78(0, &qword_100015860, &type metadata for String);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10000B080;
      if (v87 == 11)
      {
        v65 = sub_10000A13C();
      }

      else
      {
        v65 = sub_10000A14C();
      }

      *(v36 + 32) = v65;
      *(v36 + 40) = v66;

      return v36;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1000047B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100009D0C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100004814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), unint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v75 = a8;
  v76 = a4;
  v72 = a3;
  v73 = a7;
  v11 = sub_100009DCC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v80 = v13;
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = [objc_allocWithZone(NSDate) init];
  sub_100006158(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10000B0D0;
  v78 = a5;
  if (a5 >> 62)
  {
    v15 = sub_10000A41C();
  }

  else
  {
    v15 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v15;
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16 = sub_10000A44C();
  v18 = v17;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = sub_1000061C0();
  *(v14 + 72) = v16;
  *(v14 + 80) = v18;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v19 = sub_10000A35C();
  v20 = sub_10000A2FC();
  sub_10000A06C("will handle notification scoring request, items=%lu, id=%{public}@", 66, 2, &_mh_execute_header, v19, v20, v14);

  sub_1000022D8(&a6[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService], *&a6[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService + 24]);
  sub_100009DAC();
  sub_10000A03C();

  v21 = v87;
  v22 = sub_1000022D8(v86, v87);
  v85 = v21;
  v23 = sub_100006630(&v84);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  v24 = sub_100005B1C(0, 1, 1, &_swiftEmptyArrayStorage);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100005B1C((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  sub_100006694(&v84, &v24[32 * v26 + 32]);
  sub_10000231C(v86);
  sub_10000A1DC();
  v27 = v87;
  v28 = sub_1000022D8(v86, v87);
  v85 = v27;
  v29 = sub_100006630(&v84);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v31 = *(v24 + 2);
  v30 = *(v24 + 3);
  v74 = a6;
  if (v31 >= v30 >> 1)
  {
    v24 = sub_100005B1C((v30 > 1), v31 + 1, 1, v24);
  }

  *(v24 + 2) = v31 + 1;
  sub_100006694(&v84, &v24[32 * v31 + 32]);
  sub_10000231C(v86);
  v32 = *(v12 + 16);
  v81 = v12 + 16;
  v82 = v32;
  v32(v83, a1, v11);
  v33 = v11;
  v67 = v11;
  v34 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v68 = *(v12 + 80);
  v79 = a1;
  v80 += 7;
  v35 = (v80 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v74;
  *(v38 + 16) = v74;
  v40 = *(v12 + 32);
  v70 = v12 + 32;
  v41 = v40(v38 + v34, v83, v33);
  v71 = v40;
  v69 = v38;
  *(v38 + v35) = v24;
  v42 = (v38 + v36);
  v43 = v72;
  v45 = v75;
  v44 = v76;
  *v42 = v73;
  v42[1] = v45;
  v46 = (v38 + v37);
  *v46 = v43;
  v46[1] = v44;
  __chkstk_darwin(v41);
  v48 = v78;
  v47 = v79;
  *(&v66 - 4) = v39;
  *(&v66 - 3) = v48;
  *(&v66 - 2) = v47;
  sub_10000690C();
  v49 = v39;

  sub_100009F0C();
  v50 = v83;
  v51 = v67;
  v82(v83, v47, v67);
  v52 = v68;
  v53 = (v52 + 32) & ~v52;
  v54 = (v80 + v53) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v77;
  *(v55 + 16) = v48;
  *(v55 + 24) = v56;
  v40(v55 + v53, v50, v51);
  v57 = (v55 + v54);
  v76 = sub_1000067AC;
  v58 = v69;
  *v57 = sub_1000067AC;
  v57[1] = v58;

  v78 = v56;

  v59 = sub_100009ECC();
  sub_100009EDC();

  v60 = v50;
  v82(v50, v79, v51);
  v61 = (v52 + 16) & ~v52;
  v62 = (v80 + v61) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v71(v63 + v61, v60, v51);
  v64 = (v63 + v62);
  *v64 = v76;
  v64[1] = v58;

  v65 = sub_100009ECC();
  sub_100009EEC();
}

uint64_t sub_100004F18(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = *a1;
  sub_100006158(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000B0E0;
  if (a2 >> 62)
  {
    v20 = v9;
    v10 = sub_10000A41C();
    v9 = v20;
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v10;
  v11 = *(v8 + 16);
  *(v9 + 96) = &type metadata for Int;
  *(v9 + 104) = &protocol witness table for Int;
  *(v9 + 72) = v11;
  v12 = v9;
  v13 = [a3 fc_millisecondTimeIntervalUntilNow];
  v12[17] = &type metadata for UInt64;
  v12[18] = &protocol witness table for UInt64;
  v12[14] = v13;
  sub_100009DCC();
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = sub_10000A44C();
  v16 = v15;
  v12[22] = &type metadata for String;
  v12[23] = sub_1000061C0();
  v12[19] = v14;
  v12[20] = v16;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v17 = sub_10000A35C();
  v18 = sub_10000A2FC();
  sub_10000A06C("did handle notification scoring request, items=%lu, results=%lu, time=%llums, id=%{public}@", 91, 2, &_mh_execute_header, v17, v18, v12);

  sub_100003020(v8);
  a5();
}

uint64_t sub_1000050FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  sub_100006158(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000B0D0;
  sub_100002234(0, &qword_100015820, &protocol descriptor for Error);
  sub_10000A3FC();
  *(v5 + 56) = &type metadata for String;
  v6 = sub_1000061C0();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_100009DCC();
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7 = sub_10000A44C();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v9 = sub_10000A35C();
  v10 = sub_10000A2FC();
  sub_10000A06C("failed to handle notification scoring request, error=%{public}@, id=%{public}@", 78, 2, &_mh_execute_header, v9, v10, v5);

  return a3(0, a1);
}

uint64_t sub_1000053C4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a6;
  v23 = a4;
  v24 = a5;
  v8 = sub_100009DCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v22 = a1;
  sub_1000022D8((a1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver), *(a1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver + 24));
  sub_100002234(0, &qword_100015810, &protocol descriptor for ComputeServiceScoringServiceType);
  *(swift_allocObject() + 16) = a2;
  v11 = a2;
  sub_100009E1C();

  if (v29)
  {
    sub_1000063D8(&aBlock, v33);
    v13 = *(v22 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_workQueue);
    (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v8);
    sub_1000063F0(v33, v32);
    v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    v17 = v25;
    *(v16 + 16) = v25;
    (*(v9 + 32))(v16 + v14, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v18 = (v16 + v15);
    v19 = v26;
    *v18 = v24;
    v18[1] = v19;
    sub_1000063D8(v32, v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
    v30 = sub_100006548;
    v31 = v16;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v28 = sub_10000593C;
    v29 = &unk_100010B38;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    [v13 fc_addAsyncOperationWithBlock:v20];
    _Block_release(v20);
    return sub_10000231C(v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005690(void *a1)
{
  v2 = sub_100009D6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000022D8(a1, a1[3]);
  sub_100009DDC();
  sub_10000A27C();
  sub_100009E0C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000057B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  sub_100006158(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000B0D0;
  v14 = [a3 fc_millisecondTimeIntervalUntilNow];
  *(v13 + 56) = &type metadata for UInt64;
  *(v13 + 64) = &protocol witness table for UInt64;
  *(v13 + 32) = v14;
  sub_100009DCC();
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = sub_10000A44C();
  v17 = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = sub_1000061C0();
  *(v13 + 72) = v15;
  *(v13 + 80) = v17;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v18 = sub_10000A35C();
  v19 = sub_10000A2FC();
  sub_10000A06C("did dequeue request, waitTime=%llums, id=%{public}@", 51, 2, &_mh_execute_header, v18, v19, v13);

  return a5(a4, a7, a1, a2);
}

uint64_t sub_10000593C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100006620, v4);
}

uint64_t sub_1000059D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100005A44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100005B1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E78(0, &qword_100015850, &type metadata for Any + 8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100005C34(uint64_t a1, uint64_t a2)
{
  sub_10000A4CC();
  sub_10000A29C();
  v4 = sub_10000A4EC();

  return sub_100005CAC(a1, a2, v4);
}

unint64_t sub_100005CAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000A46C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100005D64(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  ObjectType = swift_getObjectType();
  v24 = sub_10000A32C();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A30C();
  __chkstk_darwin(v8);
  v9 = sub_10000A0FC();
  __chkstk_darwin(v9 - 8);
  v23 = OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_cooldownQueue;
  v10 = sub_100006EC4(0, &qword_1000157C0, OS_dispatch_queue_ptr);
  v22[1] = "eue";
  v22[2] = v10;
  sub_10000A0EC();
  v30 = &_swiftEmptyArrayStorage;
  sub_100006E30(&qword_1000157C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100006CFC(0, &qword_1000157D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100006D50(&qword_1000157D8, &qword_1000157D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A37C();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *&v3[v23] = sub_10000A33C();
  v11 = v25;
  sub_1000063F0(v25, &v3[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver]);
  v12 = v26;
  sub_1000063F0(v26, &v3[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService]);
  v13 = v27;
  *&v4[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_bundleSubscriptionManager] = v27;
  v14 = objc_allocWithZone(NSOperationQueue);
  v15 = v13;
  v16 = [v14 init];
  v17 = OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_workQueue;
  *&v4[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_workQueue] = v16;
  v18 = v16;
  v19 = sub_10000A23C();
  [v18 setName:v19];

  [*&v4[v17] setQualityOfService:25];
  [*&v4[v17] setMaxConcurrentOperationCount:1];
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v29, "init");
  sub_10000231C(v12);
  sub_10000231C(v11);
  return v20;
}

uint64_t sub_100006104()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006158(uint64_t a1)
{
  if (!qword_1000157E8)
  {
    sub_100002234(255, &qword_1000157F0, &protocol descriptor for CVarArg);
    v1 = sub_10000A45C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000157E8);
    }
  }
}

unint64_t sub_1000061C0()
{
  result = qword_1000157F8;
  if (!qword_1000157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000157F8);
  }

  return result;
}

uint64_t sub_100006214()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006300()
{
  v1 = *(sub_100009DCC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000053C4(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_100006398()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000063D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000063F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006454()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  sub_10000231C((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100006548(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100009DCC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = v2 + v7;
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1000057B0(a1, a2, v9, v2 + v6, v11, v12, v2 + v8);
}

uint64_t sub_100006608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100006630(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_100006694(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000066A4()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100009DCC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_100002BF8(v2 + v6, *(v2 + v7));
  v11 = v9(a1, a2);
  return v10(v11);
}

void sub_10000690C()
{
  if (!qword_100015818)
  {
    v0 = sub_10000A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_100015818);
    }
  }
}

uint64_t sub_10000696C()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006A50(uint64_t *a1)
{
  v3 = *(sub_100009DCC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return sub_100004F18(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100006B00()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006BA0(uint64_t a1)
{
  v3 = *(sub_100009DCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000050FC(a1, v1 + v4, v5);
}

void sub_100006C40(uint64_t a1)
{
  if (!qword_100015828)
  {
    sub_100006EC4(255, &qword_100015830, NSNumber_ptr);
    v1 = sub_10000A43C();
    if (!v2)
    {
      atomic_store(v1, &qword_100015828);
    }
  }
}

uint64_t sub_100006CB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100006CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10000A2DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100006D50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100006CFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006DAC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100006E78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10000A45C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100006EC4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100006F14(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100006FB8()
{
  result = qword_100015870;
  if (!qword_100015870)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100015870);
  }

  return result;
}

void *sub_100007034(void *a1)
{
  sub_1000063F0(a1, v7);
  sub_1000022D8(a1, a1[3]);
  sub_100002234(0, &qword_100015B58, &protocol descriptor for NotificationScoringServiceType);
  result = sub_100009E3C();
  if (v6[3])
  {
    sub_1000022D8(a1, a1[3]);
    sub_10000A1EC();
    result = sub_100009E2C();
    if (result)
    {
      v3 = result;
      v4 = objc_allocWithZone(type metadata accessor for ScoringEngine());
      v5 = sub_100005D64(v7, v6, v3);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000711C()
{
  v0 = sub_100009FDC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100009FAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F9C();
  __chkstk_darwin(v5 - 8);
  sub_100009F8C();
  (*(v2 + 104))(v4, enum case for ComputeServiceSettings.UnloadPolicy.immediate(_:), v1);
  sub_100009FCC();
  return sub_100009F7C();
}

uint64_t sub_10000729C(void *a1)
{
  sub_1000022D8(a1, a1[3]);
  sub_10000A1EC();
  result = sub_100009E2C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000072F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000022D8(a1, a1[3]);
  v3 = sub_10000A1EC();
  result = sub_100009E2C();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for DropboxBundleSubscriptionManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100007364()
{
  v0 = objc_allocWithZone(type metadata accessor for NoopUserEventHistoryStorage(0));

  return [v0 init];
}

uint64_t sub_10000739C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RetentionTokenVendor.mostRecent(_:);
  v3 = sub_100009F6C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_100007410@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopResourceService();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_10000884C();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100007464()
{
  v0 = sub_100009D1C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000154E0 != -1)
  {
    swift_once();
  }

  v4 = sub_100009D6C();
  sub_10000875C(v4, qword_100015880);
  v6[0] = 0xD000000000000019;
  v6[1] = 0x800000010000DBD0;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.notDirectory(_:), v0);
  sub_1000087F8();
  sub_100009D5C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000075DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000154E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100009D6C();
  v3 = sub_10000875C(v2, qword_100015880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100007684(void *a1)
{
  sub_1000022D8(a1, a1[3]);
  sub_100006EC4(0, &qword_100015B40, FCFileCoordinatedAppConfigurationManager_ptr);
  result = sub_100009E2C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000076E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000022D8(a1, a1[3]);
  sub_1000086FC(0, &qword_100015B30, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_100009E2C();
  if (result)
  {
    v4 = sub_10000A01C();
    v5 = objc_allocWithZone(v4);
    result = sub_10000A00C();
    a2[3] = v4;
    a2[4] = &protocol witness table for NewsAppConfigurationManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000077C4()
{
  v0 = sub_100009D6C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008794(v2, qword_100015880);
  sub_10000875C(v0, qword_100015880);
  v5 = [objc_opt_self() newsdCachesURL];
  sub_100009D4C();

  sub_100009D3C();
  return (*(v1 + 8))(v4, v0);
}

Swift::Int sub_1000078E4()
{
  sub_10000A4CC();
  sub_10000A4DC(0);
  return sub_10000A4EC();
}

Swift::Int sub_100007950(uint64_t a1)
{
  sub_10000A4CC();
  sub_10000A4DC(0);
  return sub_10000A4EC();
}

uint64_t sub_1000079C4()
{
  sub_1000088A4();
  swift_allocError();
  sub_1000088F8(0, &qword_100015B68, sub_10000895C, &type metadata accessor for Promise);
  swift_allocObject();
  return sub_100009EFC();
}

id sub_100007DD8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_sessionIDs] = 0;
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_sessions] = 0;
  v2 = OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_earliestSessionDate;
  v3 = sub_100009D9C();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_size] = 0;
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_prunedSessionIDs] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_prunedSessionSize] = 0;
  v4 = OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_metadata;
  *&v0[v4] = [objc_opt_self() emptyWithSessionsOnDiskSize:0];
  v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_isEmpty] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t type metadata accessor for NoopUserEventHistoryStorage(uint64_t a1)
{
  result = qword_100015A90;
  if (!qword_100015A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007FE0(uint64_t a1)
{
  sub_1000088F8(319, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000080E0()
{
  v0 = sub_100009EBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009E6C();
  type metadata accessor for ScoringEngine();
  sub_100009E9C();

  sub_100009E6C();
  sub_100009FBC();
  sub_100009EAC();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015AA8, &protocolRef_FCBundleSubscriptionManagerType);
  sub_100009E9C();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015B10, &protocolRef_FCPaidAccessCheckerType);
  sub_100009E9C();

  sub_100009E6C();
  sub_100002234(0, &qword_100015B18, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType);
  sub_100009EAC();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015B20, &protocolRef_FCUserEventHistoryStorageType);
  sub_100009E9C();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_100009DFC();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_100009E6C();
  sub_100009F6C();
  sub_100009EAC();

  v5(v3, v4, v0);
  sub_100009DFC();

  v6(v3, v0);
  v8[1] = v1 + 8;
  sub_100009E6C();
  sub_100002234(0, &qword_100015B28, &protocol descriptor for ResourceServiceType);
  sub_100009EAC();

  v5(v3, v4, v0);
  sub_100009DFC();

  v6(v3, v0);
  sub_100009E6C();
  sub_100009D6C();
  sub_10000A26C();
  sub_100009EAC();

  sub_100009E6C();
  sub_10000A28C();
  sub_100009EAC();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015B30, &protocolRef_FCNewsAppConfigurationManager);
  sub_100009E9C();

  sub_100009E6C();
  sub_100002234(0, &qword_100015B38, &protocol descriptor for ConfigurationManagerType);
  sub_100009EAC();

  v5(v3, v4, v0);
  sub_100009DFC();

  v6(v3, v0);
  sub_100009E7C();
  sub_100009E8C();
}

uint64_t sub_1000086FC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000875C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100008794(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000087F8()
{
  result = qword_100015B48;
  if (!qword_100015B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B48);
  }

  return result;
}

unint64_t sub_10000884C()
{
  result = qword_100015B50;
  if (!qword_100015B50)
  {
    type metadata accessor for NoopResourceService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B50);
  }

  return result;
}

unint64_t sub_1000088A4()
{
  result = qword_100015B60;
  if (!qword_100015B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B60);
  }

  return result;
}

void sub_1000088F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000895C(uint64_t a1)
{
  if (!qword_100015B70)
  {
    sub_100006EC4(255, &qword_100015B78, FCResource_ptr);
    v1 = sub_10000A22C();
    if (!v2)
    {
      atomic_store(v1, &qword_100015B70);
    }
  }
}

uint64_t sub_1000089D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008A28(uint64_t a1, uint64_t a2)
{
  sub_1000088F8(0, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008ABC(uint64_t a1)
{
  sub_1000088F8(0, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for NoopResourceService.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NoopResourceService.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_100008C38()
{
  result = qword_100015B80;
  if (!qword_100015B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B80);
  }

  return result;
}

uint64_t sub_100008C90(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = sub_10000A09C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A07C();

  v10 = sub_10000A08C();
  v11 = sub_10000A2FC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100008F30(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 0xCu);
    sub_10000231C(v13);
  }

  return (*(v7 + 8))(v9, v6);
}

id sub_100008EC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScoringServiceListenerDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100008F30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008FFC(v11, 0, 0, 1, a1, a2);
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
    sub_100009C54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000231C(v11);
  return v7;
}

unint64_t sub_100008FFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009108(a5, a6);
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
    result = sub_10000A39C();
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

char *sub_100009108(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009154(a1, a2);
  sub_100009284(&off_100010A28);
  return v3;
}

char *sub_100009154(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009370(v5, 0);
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

  result = sub_10000A39C();
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
        v10 = sub_10000A2AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009370(v10, 0);
        result = sub_10000A38C();
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

uint64_t sub_100009284(uint64_t result)
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

  result = sub_1000093FC(result, v11, 1, v3);
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

void *sub_100009370(uint64_t a1, uint64_t a2)
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

  sub_100009CB0(0, &qword_100015C38, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000093FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009CB0(0, &qword_100015C38, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

BOOL sub_100009508(void *a1)
{
  v3 = sub_10000A09C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = sub_10000A23C();
  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    v40 = v4;
    v41 = v1;
    sub_10000A36C();
    swift_unknownObjectRelease();
    sub_100009A94(&aBlock);
    sub_100006158(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10000B080;
    *(v12 + 56) = sub_100009B18();
    *(v12 + 64) = sub_100009B64();
    *(v12 + 32) = a1;
    v13 = a1;
    v14 = sub_10000A25C();
    v16 = v15;
    sub_10000A07C();
    v17 = v13;

    v18 = sub_10000A08C();
    v19 = sub_10000A2FC();

    if (os_log_type_enabled(v18, v19))
    {
      v38 = v3;
      v39 = v11;
      v20 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v20 = 136446466;
      v37 = v14;
      *(v20 + 4) = sub_100008F30(v14, v16, &aBlock);
      *(v20 + 12) = 2082;
      v21 = [v17 serviceName];
      if (v21)
      {
        v22 = v21;
        v23 = sub_10000A24C();
        v25 = v24;
      }

      else
      {
        v25 = 0xE500000000000000;
        v23 = 0x3E6C696E3CLL;
      }

      v29 = sub_100008F30(v23, v25, &aBlock);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "will accept new XPC connection, connection=%{public}s, serviceName=%{public}s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v40 + 8))(v9, v38);
      v11 = v39;
      v14 = v37;
    }

    else
    {

      (*(v40 + 8))(v9, v3);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = v14;
    *(v30 + 24) = v16;
    v44 = sub_100009BF4;
    v45 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_1000059D0;
    *(&v43 + 1) = &unk_100010DA8;
    v31 = _Block_copy(&aBlock);

    [v17 setInvalidationHandler:v31];
    _Block_release(v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v14;
    *(v32 + 24) = v16;
    v44 = sub_100009C30;
    v45 = v32;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_1000059D0;
    *(&v43 + 1) = &unk_100010DF8;
    v33 = _Block_copy(&aBlock);

    [v17 setInterruptionHandler:v33];
    _Block_release(v33);
    isa = sub_100009DEC().super.isa;
    [v17 setExportedInterface:isa];

    [v17 setExportedObject:*(v41 + OBJC_IVAR____TtC18NewsScoringService30ScoringServiceListenerDelegate_scoringEngine)];
    [v17 resume];
  }

  else
  {
    aBlock = 0u;
    v43 = 0u;
    sub_100009A94(&aBlock);
    sub_10000A07C();
    v26 = sub_10000A08C();
    v27 = sub_10000A2FC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "rejecting XPC connection due to missing entitlement", v28, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }

  return v11 != 0;
}

uint64_t sub_100009A94(uint64_t a1)
{
  sub_100009CB0(0, &qword_100015C20, &type metadata for Any + 8, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009B18()
{
  result = qword_100015C28;
  if (!qword_100015C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015C28);
  }

  return result;
}

unint64_t sub_100009B64()
{
  result = qword_100015C30;
  if (!qword_100015C30)
  {
    sub_100009B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015C30);
  }

  return result;
}

uint64_t sub_100009BBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100009CB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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