double sub_10061166C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100140278(&qword_1008EC4E8, &unk_100700A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  v8 = sub_100140278(&qword_1008EC4F0, "Hu\v");
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-v9];
  v11 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v11 - 8);
  v13 = &v24[-v12];
  sub_10001B104(a1, v10, &qword_1008EC4F0, "Hu\v");
  sub_10001B104(a2, v7, &qword_1008EC4E8, &unk_100700A80);
  v14 = *(v2 + 24);

  sub_1003F53A0(v10, v7, v14, v13);
  v15 = *(v2 + 32);
  v25 = v13;
  v16 = (v15 + *(*v15 + class metadata base offset for ManagedBuffer + 16));
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1006118FC(v16);
  os_unfair_lock_unlock((v15 + v17));
  sub_100073798(v13);
  os_unfair_lock_lock((v15 + v17));
  v18 = *v16;
  v19 = v16[1];
  if (*v16)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = sub_10007BD68;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_10000B210(v18, v19);
  os_unfair_lock_unlock((v15 + v17));
  if (v18)
  {

    (v21)(v23);
    sub_1000245E0(v21, v20);
    return sub_1000245E0(v21, v20);
  }

  return result;
}

uint64_t sub_1006118FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
  return sub_100611948(v3, a1 + *(v4 + 20));
}

uint64_t sub_100611948(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006119B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100611A1C()
{
  result = qword_1008F64B8;
  if (!qword_1008F64B8)
  {
    type metadata accessor for CatalogTipActivityTileDataModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F64B8);
  }

  return result;
}

uint64_t sub_100611A70()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp16WorkoutPowerInfo_elapsedTimeInZones);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  for (i = 0.0; v5; i = i + *(*(v1 + 56) + ((v8 << 9) | (8 * v9))))
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      return *&i;
    }

    v5 = *(v1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100611B2C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CyclingPowerZonesConfigurationType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    v11 = HKWorkoutActivity.cyclingPowerZonesConfiguration.getter();

    if (v11)
    {
LABEL_6:
      v12 = v10;
      v13 = HKWorkoutActivity.elapsedTimeInCyclingPowerZones.getter();

      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (!HKWorkout.cyclingPowerZonesConfiguration.getter())
  {

    goto LABEL_15;
  }

  if (a2)
  {
    v10 = a2;
    goto LABEL_6;
  }

LABEL_7:
  v13 = HKWorkout.elapsedTimeInCyclingPowerZones.getter();

  if (!v13)
  {

    goto LABEL_15;
  }

LABEL_8:
  if (CyclingPowerZonesConfiguration.isEmpty.getter())
  {

LABEL_15:

    *(v3 + 16) = 0;
    (*(v7 + 104))(v3 + OBJC_IVAR____TtC10FitnessApp16WorkoutPowerInfo_configurationType, enum case for CyclingPowerZonesConfigurationType.automatic(_:), v6);
    v13 = 0;
    goto LABEL_16;
  }

  v14 = CyclingPowerZonesConfiguration.zones.getter();
  if (v14 >> 62)
  {
    type metadata accessor for Zone();
    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Zone();

    v15 = v14;
  }

  *(v3 + 16) = v15;
  CyclingPowerZonesConfiguration.configurationType.getter();

  (*(v7 + 32))(v3 + OBJC_IVAR____TtC10FitnessApp16WorkoutPowerInfo_configurationType, v9, v6);
LABEL_16:
  *(v3 + OBJC_IVAR____TtC10FitnessApp16WorkoutPowerInfo_elapsedTimeInZones) = v13;
  return v3;
}

uint64_t sub_100611D84()
{

  v1 = OBJC_IVAR____TtC10FitnessApp16WorkoutPowerInfo_configurationType;
  v2 = type metadata accessor for CyclingPowerZonesConfigurationType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPowerInfo(uint64_t a1)
{
  result = qword_1008F64E8;
  if (!qword_1008F64E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100611E8C(uint64_t a1)
{
  result = type metadata accessor for CyclingPowerZonesConfigurationType();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100611F50(uint64_t a1)
{
  sub_10005C91C(319);
  if (v1 <= 0x3F)
  {
    sub_1004A9304(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MessagesAppInstallationObserver(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FriendsHighlightCard(319);
        if (v4 <= 0x3F)
        {
          sub_10005C6EC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 sub_100612040@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008F6640, &qword_100700B98);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_100140278(&qword_1008F6648, &qword_100700BA0);
  sub_10061219C(v1, &v5[*(v6 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v5, a1, &qword_1008F6640, &qword_100700B98);
  v7 = a1 + *(sub_100140278(&qword_1008F6650, &qword_100700BA8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_10061219C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for FriendsHighlightCardView(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100140278(&qword_1008DCF08, &qword_1006D5770);
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v70 - v9;
  v11 = a1 + v3[7];
  v81 = type metadata accessor for FriendsHighlightCard(0);
  *(&v115 + 1) = v81;
  *&v116[0] = &off_10085B970;
  v12 = sub_100005994(&v114);
  sub_100616D9C(v11, v12, type metadata accessor for FriendsHighlightCard);
  sub_10001B104(a1 + v3[8], v116 + 8, &qword_1008DC808, &unk_1006D4FD0);
  v75 = *(a1 + v3[9]);
  LOBYTE(v117) = v75;
  BYTE8(v117) = static Edge.Set.all.getter();
  v118 = xmmword_1006D4E50;
  v119 = xmmword_1006D4E60;
  LOWORD(v120) = 0;
  v73 = a1;
  sub_100616D9C(a1, &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendsHighlightCardView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v72 = v5;
  v14 = swift_allocObject();
  v71 = v13;
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100615E54(v74, v14 + v13, type metadata accessor for FriendsHighlightCardView);
  sub_100140278(&qword_1008DC810, &unk_1006D4FE0);
  sub_10005250C();
  v76 = v10;
  v15 = v11;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(&v114, &qword_1008DC810, &unk_1006D4FE0);
  if (*(v11 + v81[11]) == 1 && *(v11 + v81[12]) == 1 && (v16 = *(v11 + v81[9]), *(v16 + 16)))
  {
    v17 = v73;
    type metadata accessor for DashboardCardCellViewCache(0);
    sub_100073CF8(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache, &unk_1006DB780);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v18 = v114;
    v19 = v115;
    v20 = v74;
    sub_100616D9C(v17, v74, type metadata accessor for FriendsHighlightCardView);
    v21 = v71;
    v22 = swift_allocObject();
    sub_100615E54(v20, v22 + v21, type metadata accessor for FriendsHighlightCardView);
    LOBYTE(v93) = 1;

    State.init(wrappedValue:)();
    v23 = v104[0];
    v24 = *(&v104[0] + 1);
    LOBYTE(v93) = 0;
    State.init(wrappedValue:)();
    v25 = 0;
    v26 = v104[0];
    v27 = *(&v104[0] + 1);
    if ((v75 & 1) == 0)
    {
      v25 = *(v15 + v81[7]) ^ 1;
    }

    v104[0] = v18;
    *&v104[1] = v19;
    BYTE8(v104[1]) = v23;
    *&v105 = v24;
    BYTE8(v105) = v26;
    *&v106 = v27;
    *(&v106 + 1) = v16;
    LOBYTE(v107) = v75 ^ 1;
    *(&v107 + 1) = sub_100615B7C;
    *&v108 = v22;
    BYTE8(v108) = v25 & 1;
    sub_100615BEC(v104);
  }

  else
  {
    v28 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    LOBYTE(v104[0]) = 0;
    v37 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v114) = 0;
    v46 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v104[0]) = v75;
    *(v104 + 8) = xmmword_100700AF0;
    BYTE8(v104[1]) = v28;
    *&v105 = v30;
    *(&v105 + 1) = v32;
    *&v106 = v34;
    *(&v106 + 1) = v36;
    LOBYTE(v107) = 0;
    BYTE8(v107) = v37;
    *&v108 = v39;
    *(&v108 + 1) = v41;
    *&v109 = v43;
    *(&v109 + 1) = v45;
    LOBYTE(v110) = 0;
    BYTE8(v110) = v46;
    *&v111 = v47;
    *(&v111 + 1) = v48;
    *&v112 = v49;
    *(&v112 + 1) = v50;
    LOBYTE(v113) = 0;
    sub_100615A88(v104);
  }

  v101 = v111;
  v102 = v112;
  v103 = v113;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v93 = v104[0];
  v94 = v104[1];
  v95 = v105;
  v96 = v106;
  sub_100140278(&qword_1008F6658, &qword_100700BB0);
  sub_100140278(&qword_1008F6660, &qword_100700BB8);
  sub_100615A94();
  sub_1000545E0(&qword_1008F6680, &qword_1008F6660, &qword_100700BB8, sub_100615B4C);
  _ConditionalContent<>.init(storage:)();
  v52 = v78;
  v51 = v79;
  v53 = *(v79 + 16);
  v54 = v76;
  v55 = v80;
  v53(v78, v76, v80);
  v90 = v120;
  v91 = v121;
  v92 = v122;
  v86 = v116[2];
  v87 = v117;
  v88 = v118;
  v89 = v119;
  v82 = v114;
  v83 = v115;
  v84 = v116[0];
  v85 = v116[1];
  v56 = v77;
  v53(v77, v52, v55);
  v57 = *(sub_100140278(&qword_1008F6698, &qword_100700BD8) + 48);
  v58 = v91;
  v101 = v90;
  v102 = v91;
  v59 = v86;
  v60 = v87;
  v97 = v86;
  v98 = v87;
  v62 = v88;
  v61 = v89;
  v99 = v88;
  v100 = v89;
  v63 = v82;
  v64 = v83;
  v93 = v82;
  v94 = v83;
  v66 = v84;
  v65 = v85;
  v95 = v84;
  v96 = v85;
  v67 = &v56[v57];
  *(v67 + 8) = v90;
  *(v67 + 9) = v58;
  *(v67 + 4) = v59;
  *(v67 + 5) = v60;
  *(v67 + 6) = v62;
  *(v67 + 7) = v61;
  *v67 = v63;
  *(v67 + 1) = v64;
  v103 = v92;
  *(v67 + 80) = v92;
  *(v67 + 2) = v66;
  *(v67 + 3) = v65;
  sub_10001B104(&v93, v104, &qword_1008F66A0, &qword_100700BE0);
  v68 = *(v51 + 8);
  v68(v54, v55);
  v111 = v90;
  v112 = v91;
  v113 = v92;
  v107 = v86;
  v108 = v87;
  v109 = v88;
  v110 = v89;
  v104[0] = v82;
  v104[1] = v83;
  v105 = v84;
  v106 = v85;
  sub_10000EA04(v104, &qword_1008F66A0, &qword_100700BE0);
  return (v68)(v52, v55);
}

uint64_t sub_100612994(uint64_t a1)
{
  v2 = type metadata accessor for FriendsHighlightCardView(0);
  sub_10001B104(a1 + *(v2 + 32), v7, &qword_1008DC808, &unk_1006D4FD0);
  if (!v8)
  {
    return sub_10000EA04(v7, &qword_1008DC808, &unk_1006D4FD0);
  }

  v3 = sub_1000066AC(v7, v8);
  v4 = *(v2 + 28);
  memset(v6, 0, sizeof(v6));
  sub_10049CD30(a1 + v4, v6, *v3);
  sub_10000EA04(v6, &qword_1008E51F0, qword_1006D50E0);
  return sub_100005A40(v7);
}

uint64_t sub_100612A50(uint64_t a1)
{
  v2 = type metadata accessor for FriendsHighlightCardView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = a1 + *(v5 + 36);
  v12[3] = *(v6 + *(type metadata accessor for FriendsHighlightCard(0) + 36));
  sub_100616D9C(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendsHighlightCardView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100615E54(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FriendsHighlightCardView);

  sub_100140278(&qword_1008F66A8, &qword_100700C10);
  type metadata accessor for UUID();
  sub_100140278(&qword_1008F66B0, &qword_100700C18);
  sub_10014A6B0(&qword_1008F66B8, &qword_1008F66A8, &qword_100700C10, &protocol conformance descriptor for [A]);
  v9 = sub_100141EEC(&qword_1008F66C0, &qword_100700C20);
  v10 = sub_100615C74();
  v12[1] = v9;
  v12[2] = v10;
  swift_getOpaqueTypeConformance2();
  sub_100073CF8(&qword_1008F6700, type metadata accessor for ActivitySharingHighlightViewModel, &unk_1006E71A0);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100612CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v43 = a2;
  v50 = a3;
  v5 = type metadata accessor for FriendsHighlightCardView(0);
  v48 = *(v5 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v5 - 8);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivitySharingHighlightViewModel(0);
  v46 = *(v7 - 8);
  v44 = *(v46 + 64);
  __chkstk_darwin(v7 - 8);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008F66F8, &qword_100700C38);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_100140278(&qword_1008F66E8, &qword_100700C30);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_100140278(&qword_1008F66D0, &qword_100700C28);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = sub_100140278(&qword_1008F66C0, &qword_100700C20);
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v22 = sub_100140278(&qword_1008F6708, &unk_100700C40);
  sub_1006132B4(v3, a1, &v11[*(v22 + 44)]);
  LOBYTE(v3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100015E80(v11, v15, &qword_1008F66F8, &qword_100700C38);
  v31 = &v15[*(v13 + 44)];
  *v31 = v3;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_100015E80(v15, v18, &qword_1008F66E8, &qword_100700C30);
  LOBYTE(v15) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v32 = &v18[*(v16 + 36)];
  *v32 = v15;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000545E0(&qword_1008F66D8, &qword_1008F66D0, &qword_100700C28, sub_100615D9C);
  View.containerRelativeFrame(_:alignment:)();
  sub_10000EA04(v18, &qword_1008F66D0, &qword_100700C28);
  v21[*(v19 + 36)] = 0;
  v37 = v45;
  sub_100616D9C(a1, v45, type metadata accessor for ActivitySharingHighlightViewModel);
  v38 = v47;
  sub_100616D9C(v43, v47, type metadata accessor for FriendsHighlightCardView);
  v39 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v40 = (v44 + *(v48 + 80) + v39) & ~*(v48 + 80);
  v41 = swift_allocObject();
  sub_100615E54(v37, v41 + v39, type metadata accessor for ActivitySharingHighlightViewModel);
  sub_100615E54(v38, v41 + v40, type metadata accessor for FriendsHighlightCardView);
  sub_100615C74();
  View.onTapGesture(count:perform:)();

  return sub_10000EA04(v21, &qword_1008F66C0, &qword_100700C20);
}

uint64_t sub_1006131C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for ActivitySharingHighlight(0) + 28));
  v4 = type metadata accessor for FriendsHighlightCardView(0);
  sub_10001B104(a2 + *(v4 + 32), v11, &qword_1008DC808, &unk_1006D4FD0);
  if (!v12)
  {
    return sub_10000EA04(v11, &qword_1008DC808, &unk_1006D4FD0);
  }

  v5 = sub_1000066AC(v11, v12);
  v6 = *(v4 + 28);
  v10[3] = &type metadata for FriendCardActionContext;
  v10[0] = v3;
  v7 = *v5;
  v8 = v3;
  sub_1004A2E5C(a2 + v6, v10, v7);

  sub_10000EA04(v10, &qword_1008E51F0, qword_1006D50E0);
  return sub_100005A40(v11);
}

uint64_t sub_1006132B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  *&v59 = type metadata accessor for DynamicTypeSize();
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v54[-v9];
  v11 = sub_100140278(&qword_1008F6710, &qword_100700C50);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v62 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v54[-v15];
  sub_100613A70(a1, a2, &v54[-v15]);
  v17 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v18 = &v16[*(v12 + 44)];
  v56 = v16;
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = static Alignment.center.getter();
  v57 = v24;
  v58 = v23;
  sub_1002EAE70(v137);
  v67 = v137[1];
  v68 = v137[0];
  v65 = v137[3];
  v66 = v137[2];
  v25 = v138;
  v63 = v138;
  v26 = 0x4028000000000000;
  if (*(a2 + 8) < 2u)
  {
    v26 = 0x4034000000000000;
  }

  v60 = v26;
  v64 = static Edge.Set.all.getter();
  v140 = v25;
  v139 = 0;
  type metadata accessor for FriendsHighlightCardView(0);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v141[3] + 7) = *(&v141[10] + 8);
  *(&v141[4] + 7) = *(&v141[11] + 8);
  *(&v141[5] + 7) = *(&v141[12] + 8);
  *(&v141[6] + 7) = *(&v141[13] + 8);
  *(v141 + 7) = *(&v141[7] + 8);
  *(&v141[1] + 7) = *(&v141[8] + 8);
  *(&v141[2] + 7) = *(&v141[9] + 8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1002EB514(v115);
  v134 = v115[6];
  v135 = v115[7];
  v136 = v116;
  v130 = v115[2];
  v131 = v115[3];
  v133 = v115[5];
  v132 = v115[4];
  v129 = v115[1];
  v128 = v115[0];
  v55 = static Edge.Set.horizontal.getter();
  sub_10005491C(v10);
  v27 = v59;
  (*(v5 + 104))(v7, enum case for DynamicTypeSize.accessibility1(_:), v59);
  static DynamicTypeSize.< infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v7, v27);
  v28(v10, v27);
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v75 = v134;
  v76 = v135;
  LOWORD(v77) = v136;
  v71 = v130;
  v72 = v131;
  v73 = v132;
  v74 = v133;
  v69 = v128;
  v70 = v129;
  v117 = 0;
  v37 = v62;
  sub_10001B104(v16, v62, &qword_1008F6710, &qword_100700C50);
  v38 = v61;
  sub_10001B104(v37, v61, &qword_1008F6710, &qword_100700C50);
  v39 = sub_100140278(&qword_1008F6718, &qword_100700C58);
  v40 = *(v39 + 48);
  v41 = v57;
  v42 = v58;
  *v78 = v58;
  *&v78[8] = v57;
  *&v78[16] = v68;
  *&v78[24] = v67;
  *&v78[32] = v66;
  *&v78[40] = v65;
  v78[48] = v63;
  *&v78[49] = *v127;
  *&v78[52] = *&v127[3];
  v78[56] = v64;
  *&v78[57] = *v126;
  *&v78[60] = *&v126[3];
  v59 = xmmword_1006DB530;
  *&v78[64] = xmmword_1006DB530;
  v43 = v60;
  *&v78[80] = v60;
  *&v78[88] = 0;
  v78[96] = 0;
  *&v78[161] = v141[4];
  *&v78[177] = v141[5];
  *&v78[193] = v141[6];
  *&v78[208] = *(&v141[6] + 15);
  *&v78[97] = v141[0];
  *&v78[113] = v141[1];
  *&v78[129] = v141[2];
  *&v78[145] = v141[3];
  *&v78[296] = v124;
  *&v78[312] = v125;
  *&v78[264] = v122;
  *&v78[280] = v123;
  *&v78[248] = v121;
  *&v78[232] = v120;
  *&v78[216] = v119;
  memcpy((v38 + v40), v78, 0x148uLL);
  v44 = v38 + *(v39 + 64);
  v84 = v75;
  v85 = v76;
  *&v86 = v77;
  v82 = v73;
  v83 = v74;
  v80 = v71;
  v81 = v72;
  v45 = v70;
  v79[0] = v69;
  v79[1] = v70;
  LOBYTE(v39) = v55;
  BYTE8(v86) = v55;
  *(&v86 + 9) = *v118;
  HIDWORD(v86) = *&v118[3];
  v46 = v74;
  v47 = v75;
  v48 = v72;
  *(v44 + 64) = v73;
  *(v44 + 80) = v46;
  v49 = v85;
  v50 = v86;
  *(v44 + 96) = v47;
  *(v44 + 112) = v49;
  v51 = v80;
  *v44 = v79[0];
  *(v44 + 16) = v45;
  *&v87 = v30;
  *(&v87 + 1) = v32;
  *&v88 = v34;
  *(&v88 + 1) = v36;
  *(v44 + 32) = v51;
  *(v44 + 48) = v48;
  v52 = v88;
  *(v44 + 144) = v87;
  *(v44 + 160) = v52;
  v89 = 0;
  *(v44 + 176) = 0;
  *(v44 + 128) = v50;
  sub_10001B104(v78, v99, &qword_1008F6720, &qword_100700C60);
  sub_10001B104(v79, v99, &qword_1008F6728, &qword_100700C68);
  sub_10000EA04(v56, &qword_1008F6710, &qword_100700C50);
  v90[6] = v75;
  v90[7] = v76;
  v91 = v77;
  v90[2] = v71;
  v90[3] = v72;
  v90[4] = v73;
  v90[5] = v74;
  v90[0] = v69;
  v90[1] = v70;
  v92 = v39;
  *v93 = *v118;
  *&v93[3] = *&v118[3];
  v94 = v30;
  v95 = v32;
  v96 = v34;
  v97 = v36;
  v98 = 0;
  sub_10000EA04(v90, &qword_1008F6728, &qword_100700C68);
  v99[0] = v42;
  v99[1] = v41;
  v99[2] = v68;
  v99[3] = v67;
  v99[4] = v66;
  v99[5] = v65;
  v100 = v63;
  *v101 = *v127;
  *&v101[3] = *&v127[3];
  v102 = v64;
  *v103 = *v126;
  *&v103[3] = *&v126[3];
  v104 = v59;
  v105 = v43;
  v106 = 0;
  v107 = 0;
  v112 = v141[4];
  v113 = v141[5];
  *v114 = v141[6];
  *&v114[15] = *(&v141[6] + 15);
  v108 = v141[0];
  v109 = v141[1];
  v110 = v141[2];
  v111 = v141[3];
  *&v114[103] = v124;
  *&v114[119] = v125;
  *&v114[71] = v122;
  *&v114[87] = v123;
  *&v114[55] = v121;
  *&v114[39] = v120;
  *&v114[23] = v119;
  sub_10000EA04(v99, &qword_1008F6720, &qword_100700C60);
  return sub_10000EA04(v62, &qword_1008F6710, &qword_100700C50);
}

uint64_t sub_100613A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v26 = sub_100140278(&qword_1008F6730, &qword_100700C70);
  __chkstk_darwin(v26);
  v5 = &v22 - v4;
  v23 = sub_100140278(&qword_1008F6738, &qword_100700C78);
  __chkstk_darwin(v23);
  v7 = &v22 - v6;
  v25 = sub_100140278(&qword_1008F6740, &qword_100700C80);
  __chkstk_darwin(v25);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_10005491C(&v22 - v15);
  (*(v11 + 104))(v13, enum case for DynamicTypeSize.accessibility1(_:), v10);
  v17 = static DynamicTypeSize.< infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  if (v17)
  {
    *v9 = static VerticalAlignment.top.getter();
    *(v9 + 1) = 0x4020000000000000;
    v9[16] = 0;
    v19 = sub_100140278(&qword_1008F6760, &qword_100700C90);
    sub_100613EAC(v24, a1, &v9[*(v19 + 44)]);
    sub_10001B104(v9, v7, &qword_1008F6740, &qword_100700C80);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F6750, &qword_1008F6740, &qword_100700C80, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008F6758, &qword_1008F6730, &qword_100700C70, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v9, &qword_1008F6740, &qword_100700C80);
  }

  else
  {
    *v5 = static HorizontalAlignment.leading.getter();
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    v21 = sub_100140278(&qword_1008F6748, &qword_100700C88);
    sub_100614718(v24, a1, &v5[*(v21 + 44)]);
    sub_10001B104(v5, v7, &qword_1008F6730, &qword_100700C70);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F6750, &qword_1008F6740, &qword_100700C80, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008F6758, &qword_1008F6730, &qword_100700C70, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v5, &qword_1008F6730, &qword_100700C70);
  }
}

uint64_t sub_100613EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v82 = a3;
  v4 = type metadata accessor for FriendsHighlightCardView(0);
  v5 = v4 - 8;
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  *&v83 = v6;
  *(&v83 + 1) = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivitySharingHighlight(0);
  __chkstk_darwin(v7 - 8);
  *(&v80 + 1) = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  v16 = sub_100140278(&qword_1008E7C68, &unk_1006E83E8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v88 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  sub_100616D9C(a1, &v74 - v20, type metadata accessor for ActivitySharingHighlightViewModel);
  v22 = *(type metadata accessor for ActivitySharingAvatarView(0) + 20);
  *&v89 = 0;
  sub_100140278(&qword_1008E9B30, &qword_1006E1880);
  State.init(wrappedValue:)();
  *&v21[v22] = v106;
  LOBYTE(v22) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = *(v17 + 44);
  v87 = v21;
  v24 = &v21[v23];
  *v24 = v22;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v86 = static HorizontalAlignment.leading.getter();
  v29 = v84;
  sub_10005491C(v15);
  (*(v10 + 104))(v12, enum case for DynamicTypeSize.xLarge(_:), v9);
  v30 = static DynamicTypeSize.< infix(_:_:)();
  v31 = *(v10 + 8);
  v31(v12, v9);
  v31(v15, v9);
  v122 = 0;
  sub_10061556C(&v106);
  v115 = *&v107[80];
  v116 = *&v107[96];
  v117 = *&v107[112];
  v111 = *&v107[16];
  v112 = *&v107[32];
  v113 = *&v107[48];
  v114 = *&v107[64];
  v109 = v106;
  v110 = *v107;
  v119[6] = *&v107[80];
  v119[7] = *&v107[96];
  v119[8] = *&v107[112];
  v119[2] = *&v107[16];
  v119[3] = *&v107[32];
  v119[4] = *&v107[48];
  v119[5] = *&v107[64];
  v118 = v107[128];
  v120 = v107[128];
  v119[0] = v106;
  v119[1] = *v107;
  sub_10001B104(&v109, &v89, &qword_1008F6768, &qword_100700C98);
  sub_10000EA04(v119, &qword_1008F6768, &qword_100700C98);
  *&v121[23] = v110;
  *&v121[87] = v114;
  *&v121[71] = v113;
  *&v121[55] = v112;
  *&v121[39] = v111;
  *&v121[135] = v117;
  *&v121[119] = v116;
  *&v121[103] = v115;
  v121[151] = v118;
  *&v121[7] = v109;
  v85 = v122;
  v32 = *(v5 + 32);
  v33 = v29;
  v34 = *(v29 + v32);
  swift_getKeyPath();
  *&v106 = v34;
  sub_100073CF8(&qword_1008F6D40, type metadata accessor for MessagesAppInstallationObserver, &unk_100701658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (*(v34 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) == 1)
  {
    v47 = *(&v80 + 1);
    sub_100616D9C(a1, *(&v80 + 1), type metadata accessor for ActivitySharingHighlight);
    type metadata accessor for ActivitySharingReplyCoordinator(0);
    swift_allocObject();
    sub_10013E858(v47, 0);
    v48 = *(&v83 + 1);
    sub_100616D9C(v33, *(&v83 + 1), type metadata accessor for FriendsHighlightCardView);
    v49 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v50 = swift_allocObject();
    sub_100615E54(v48, v50 + v49, type metadata accessor for FriendsHighlightCardView);
    sub_1005BDB0C(sub_100615F88, v50, v123);
    v35 = v123[0];
    v36 = v123[1];
    v37 = v123[2];
    v38 = v123[3];
    v39 = v123[4];
    v40 = v123[5];
    v41 = v123[6];
    v42 = v123[7];
    v43 = v123[8];
    v44 = v123[9];
    v45 = v123[10];
    v46 = v123[11];
  }

  *&v77 = v35;
  *(&v77 + 1) = v36;
  v78 = v38;
  v79 = v44;
  *&v80 = v45;
  *(&v80 + 1) = v46;
  *&v83 = v41;
  *(&v83 + 1) = v42;
  v84 = v43;
  if (v30)
  {
    v51 = 0x4000000000000000;
  }

  else
  {
    v51 = 0;
  }

  v81 = v51;
  v52 = v88;
  v53 = v39;
  v75 = v39;
  v76 = v40;
  v54 = v40;
  sub_10001B104(v87, v88, &qword_1008E7C68, &unk_1006E83E8);
  v55 = v52;
  v56 = v82;
  sub_10001B104(v55, v82, &qword_1008E7C68, &unk_1006E83E8);
  v57 = sub_100140278(&qword_1008F6770, &qword_100700CC8);
  v58 = (v56 + v57[12]);
  *&v89 = v86;
  *(&v89 + 1) = v51;
  LOBYTE(v90[0]) = v85;
  *(&v90[6] + 1) = *&v121[96];
  *(&v90[7] + 1) = *&v121[112];
  *(&v90[8] + 1) = *&v121[128];
  *(&v90[9] + 1) = *&v121[144];
  *(&v90[2] + 1) = *&v121[32];
  *(&v90[3] + 1) = *&v121[48];
  *(&v90[4] + 1) = *&v121[64];
  *(&v90[5] + 1) = *&v121[80];
  *(&v90[1] + 1) = *&v121[16];
  *(v90 + 1) = *v121;
  v59 = v90[4];
  v58[4] = v90[3];
  v58[5] = v59;
  *(v58 + 153) = *(&v90[8] + 9);
  v60 = v90[8];
  v58[8] = v90[7];
  v58[9] = v60;
  v61 = v90[6];
  v58[6] = v90[5];
  v58[7] = v61;
  v62 = v90[0];
  *v58 = v89;
  v58[1] = v62;
  v63 = v90[2];
  v58[2] = v90[1];
  v58[3] = v63;
  v64 = v56 + v57[16];
  *v64 = 0;
  *(v64 + 8) = 0;
  v65 = (v56 + v57[20]);
  v66 = v77;
  v91 = v77;
  v67 = v78;
  v68 = v79;
  *&v92 = v37;
  *(&v92 + 1) = v78;
  *&v93 = v53;
  *(&v93 + 1) = v54;
  v94 = v83;
  *&v95 = v84;
  *(&v95 + 1) = v79;
  v69 = v80;
  v96 = v80;
  v70 = v83;
  v65[2] = v93;
  v65[3] = v70;
  v71 = v92;
  *v65 = v91;
  v65[1] = v71;
  v72 = v96;
  v65[4] = v95;
  v65[5] = v72;
  sub_10001B104(&v89, &v106, &qword_1008F6778, &qword_100700CD0);
  sub_10001B104(&v91, &v106, &qword_1008F6780, &unk_100700CD8);
  sub_10000EA04(v87, &qword_1008E7C68, &unk_1006E83E8);
  v97 = v66;
  v98 = v37;
  v99 = v67;
  v100 = v75;
  v101 = v76;
  v102 = v83;
  v103 = v84;
  v104 = v68;
  v105 = v69;
  sub_10000EA04(&v97, &qword_1008F6780, &unk_100700CD8);
  *&v107[97] = *&v121[96];
  *&v107[113] = *&v121[112];
  *&v107[129] = *&v121[128];
  *&v107[33] = *&v121[32];
  *&v107[49] = *&v121[48];
  *&v107[65] = *&v121[64];
  *&v107[81] = *&v121[80];
  *&v107[1] = *v121;
  *&v106 = v86;
  *(&v106 + 1) = v81;
  v107[0] = v85;
  v108 = *&v121[144];
  *&v107[17] = *&v121[16];
  sub_10000EA04(&v106, &qword_1008F6778, &qword_100700CD0);
  return sub_10000EA04(v88, &qword_1008E7C68, &unk_1006E83E8);
}

uint64_t sub_100614718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_100140278(&qword_1008F6798, &qword_100700D90);
  __chkstk_darwin(v12 - 8);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  *v16 = static VerticalAlignment.top.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100140278(&qword_1008F67A0, &qword_100700D98);
  sub_100614BA0(a1, a2, &v16[*(v17 + 44)]);
  v32 = static HorizontalAlignment.leading.getter();
  sub_10005491C(v11);
  (*(v6 + 104))(v8, enum case for DynamicTypeSize.xLarge(_:), v5);
  LOBYTE(a2) = static DynamicTypeSize.< infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if (a2)
  {
    v19 = 0x4000000000000000;
  }

  else
  {
    v19 = 0;
  }

  v53 = 0;
  sub_10061556C(&v49);
  v41 = *&v50[80];
  v42 = *&v50[96];
  v43 = *&v50[112];
  v37 = *&v50[16];
  v38 = *&v50[32];
  v39 = *&v50[48];
  v40 = *&v50[64];
  v35 = v49;
  v36 = *v50;
  v45[6] = *&v50[80];
  v45[7] = *&v50[96];
  v45[8] = *&v50[112];
  v45[2] = *&v50[16];
  v45[3] = *&v50[32];
  v45[4] = *&v50[48];
  v45[5] = *&v50[64];
  v44 = v50[128];
  v46 = v50[128];
  v45[0] = v49;
  v45[1] = *v50;
  sub_10001B104(&v35, &v47, &qword_1008F6768, &qword_100700C98);
  sub_10000EA04(v45, &qword_1008F6768, &qword_100700C98);
  *&v52[103] = v41;
  *&v52[119] = v42;
  *&v52[135] = v43;
  *&v52[39] = v37;
  *&v52[55] = v38;
  *&v52[71] = v39;
  *&v52[87] = v40;
  *&v52[7] = v35;
  v52[151] = v44;
  *&v52[23] = v36;
  v20 = v53;
  v21 = v33;
  sub_10001B104(v16, v33, &qword_1008F6798, &qword_100700D90);
  v22 = v34;
  sub_10001B104(v21, v34, &qword_1008F6798, &qword_100700D90);
  v23 = (v22 + *(sub_100140278(&qword_1008F67A8, &qword_100700DA0) + 48));
  v24 = v32;
  *&v47 = v32;
  *(&v47 + 1) = v19;
  LOBYTE(v48[0]) = v20;
  *(&v48[6] + 1) = *&v52[96];
  *(&v48[7] + 1) = *&v52[112];
  *(&v48[8] + 1) = *&v52[128];
  *(&v48[9] + 1) = *&v52[144];
  *(&v48[2] + 1) = *&v52[32];
  *(&v48[3] + 1) = *&v52[48];
  *(&v48[4] + 1) = *&v52[64];
  *(&v48[5] + 1) = *&v52[80];
  *(&v48[1] + 1) = *&v52[16];
  *(v48 + 1) = *v52;
  v25 = v48[8];
  v23[8] = v48[7];
  v23[9] = v25;
  *(v23 + 153) = *(&v48[8] + 9);
  v26 = v48[4];
  v23[4] = v48[3];
  v23[5] = v26;
  v27 = v48[6];
  v23[6] = v48[5];
  v23[7] = v27;
  v28 = v48[0];
  *v23 = v47;
  v23[1] = v28;
  v29 = v48[2];
  v23[2] = v48[1];
  v23[3] = v29;
  sub_10001B104(&v47, &v49, &qword_1008F6778, &qword_100700CD0);
  sub_10000EA04(v16, &qword_1008F6798, &qword_100700D90);
  *&v50[97] = *&v52[96];
  *&v50[113] = *&v52[112];
  *&v50[129] = *&v52[128];
  *&v50[33] = *&v52[32];
  *&v50[49] = *&v52[48];
  *&v50[65] = *&v52[64];
  *&v50[81] = *&v52[80];
  *&v50[1] = *v52;
  *&v49 = v24;
  *(&v49 + 1) = v19;
  v50[0] = v20;
  v51 = *&v52[144];
  *&v50[17] = *&v52[16];
  sub_10000EA04(&v49, &qword_1008F6778, &qword_100700CD0);
  return sub_10000EA04(v21, &qword_1008F6798, &qword_100700D90);
}

uint64_t sub_100614BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v83 = a2;
  v71 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  __chkstk_darwin(v71);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v64 - v6;
  v76 = type metadata accessor for DynamicTypeSize();
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v64 - v9;
  v69 = sub_100140278(&qword_1008E2B48, &unk_1006DFC80);
  __chkstk_darwin(v69);
  v77 = &v64 - v10;
  v11 = type metadata accessor for FriendsHighlightCardView(0);
  v12 = v11 - 8;
  v72 = *(v11 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivitySharingHighlight(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008F67B0, &qword_100700DA8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v64 - v19;
  v20 = sub_100140278(&qword_1008F67B8, &qword_100700DB0);
  __chkstk_darwin(v20 - 8);
  v81 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  v25 = type metadata accessor for ActivitySharingAvatarView(0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v80 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v64 - v29;
  sub_100616D9C(a1, &v64 - v29, type metadata accessor for ActivitySharingHighlightViewModel);
  v31 = *(v26 + 28);
  *&v84 = 0;
  sub_100140278(&qword_1008E9B30, &qword_1006E1880);
  State.init(wrappedValue:)();
  v79 = v30;
  *&v30[v31] = v94[0];
  v32 = *(v83 + *(v12 + 32));
  swift_getKeyPath();
  *&v94[0] = v32;
  sub_100073CF8(&qword_1008F6D40, type metadata accessor for MessagesAppInstallationObserver, &unk_100701658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v32 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) != 1)
  {
    (*(v18 + 56))(v24, 1, 1, v17);
    v56 = v24;
    goto LABEL_5;
  }

  v65 = v18;
  v66 = v24;
  v64 = v17;
  sub_100616D9C(a1, v16, type metadata accessor for ActivitySharingHighlight);
  type metadata accessor for ActivitySharingReplyCoordinator(0);
  swift_allocObject();
  sub_10013E858(v16, 0);
  v33 = v73;
  sub_100616D9C(v83, v73, type metadata accessor for FriendsHighlightCardView);
  v34 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v35 = swift_allocObject();
  sub_100615E54(v33, v35 + v34, type metadata accessor for FriendsHighlightCardView);
  sub_1005BDB0C(sub_100617050, v35, v93);
  v36 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v92 = 0;
  v86 = v93[2];
  v87 = v93[3];
  v88 = v93[4];
  v89 = v93[5];
  v84 = v93[0];
  v85 = v93[1];
  LOBYTE(v90) = v36;
  *(&v90 + 1) = v37;
  *&v91[0] = v38;
  *(&v91[0] + 1) = v39;
  *&v91[1] = v40;
  BYTE8(v91[1]) = 0;
  v41 = *(v78 + 104);
  v42 = v74;
  v43 = v76;
  v41(v74, enum case for DynamicTypeSize.xSmall(_:), v76);
  v44 = v75;
  v41(v75, enum case for DynamicTypeSize.xxxLarge(_:), v43);
  sub_100073CF8(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v46 = v78;
    v47 = *(v78 + 32);
    v48 = v68;
    v47(v68, v42, v43);
    v49 = v71;
    v47((v48 + *(v71 + 48)), v44, v43);
    v50 = v70;
    sub_10001B104(v48, v70, &qword_1008E2B40, &qword_100702440);
    v51 = *(v49 + 48);
    v47(v77, v50, v43);
    v52 = *(v46 + 8);
    v52(v50 + v51, v43);
    sub_100616ED4(v48, v50);
    v53 = v77;
    v47(&v77[*(v69 + 36)], (v50 + *(v49 + 48)), v43);
    v52(v50, v43);
    sub_100140278(&qword_1008F67C8, &qword_100700DC0);
    sub_1000545E0(&qword_1008F67D0, &qword_1008F67C8, &qword_100700DC0, sub_100616F44);
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48, &unk_1006DFC80, &protocol conformance descriptor for ClosedRange<A>);
    v54 = v67;
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v53, &qword_1008E2B48, &unk_1006DFC80);
    v94[6] = v90;
    v95[0] = v91[0];
    *(v95 + 9) = *(v91 + 9);
    v94[2] = v86;
    v94[3] = v87;
    v94[4] = v88;
    v94[5] = v89;
    v94[0] = v84;
    v94[1] = v85;
    sub_10000EA04(v94, &qword_1008F67C8, &qword_100700DC0);
    v55 = v65;
    v56 = v66;
    v57 = v64;
    (*(v65 + 32))(v66, v54, v64);
    (*(v55 + 56))(v56, 0, 1, v57);
LABEL_5:
    v58 = v79;
    v59 = v80;
    sub_100616D9C(v79, v80, type metadata accessor for ActivitySharingAvatarView);
    v60 = v81;
    sub_10001B104(v56, v81, &qword_1008F67B8, &qword_100700DB0);
    v61 = v82;
    sub_100616D9C(v59, v82, type metadata accessor for ActivitySharingAvatarView);
    v62 = sub_100140278(&qword_1008F67C0, &qword_100700DB8);
    v63 = v61 + *(v62 + 48);
    *v63 = 0;
    *(v63 + 8) = 1;
    sub_10001B104(v60, v61 + *(v62 + 64), &qword_1008F67B8, &qword_100700DB0);
    sub_10000EA04(v56, &qword_1008F67B8, &qword_100700DB0);
    sub_100616E04(v58, type metadata accessor for ActivitySharingAvatarView);
    sub_10000EA04(v60, &qword_1008F67B8, &qword_100700DB0);
    return sub_100616E04(v59, type metadata accessor for ActivitySharingAvatarView);
  }

  __break(1u);
  return result;
}

uint64_t sub_10061556C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EA6EC(&v60);
  v32 = v60;
  v35 = v61;
  v6 = v62;
  v30 = v64;
  static Font.subheadline.getter();
  v25 = enum case for Font.Leading.tight(_:);
  v24 = *(v3 + 104);
  v24(v5);
  *(&v34 + 1) = Font.leading(_:)();

  v7 = *(v3 + 8);
  v7(v5, v2);
  *&v34 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  LOBYTE(v60) = v6;
  v31 = v6;
  LOBYTE(v56) = 0;
  sub_1002EAAE8(&v60);
  v27 = v61;
  v28 = v60;
  v26 = v62;
  v29 = v64;
  static Font.caption.getter();
  (v24)(v5, v25, v2);
  v8 = Font.leading(_:)();

  v7(v5, v2);
  v9 = swift_getKeyPath();
  LODWORD(v5) = static HierarchicalShapeStyle.secondary.getter();
  v10 = swift_getKeyPath();
  *&v51 = v32;
  *(&v51 + 1) = v35;
  LOBYTE(v52) = v6;
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  v11 = v30;
  *(&v52 + 1) = v30;
  v53 = v34;
  *&v54 = KeyPath;
  *(&v54 + 1) = 1;
  v55 = 0;
  v48[0] = 0;
  v46 = v34;
  v47 = v54;
  v44 = v51;
  v45 = v52;
  v13 = v27;
  v12 = v28;
  *&v56 = v28;
  *(&v56 + 1) = v27;
  v14 = v26;
  LOBYTE(v57) = v26;
  DWORD1(v57) = *(v49 + 3);
  *(&v57 + 1) = v49[0];
  v15 = v29;
  *(&v57 + 1) = v29;
  *&v58 = v9;
  *(&v58 + 1) = v8;
  *v59 = v5;
  *&v59[8] = v10;
  *&v59[16] = 1;
  v59[24] = 0;
  *&v48[8] = v56;
  *&v48[65] = *&v59[9];
  *&v48[56] = *v59;
  *&v48[40] = v58;
  *&v48[24] = v57;
  v16 = v52;
  *a1 = v51;
  *(a1 + 16) = v16;
  v17 = v46;
  v18 = v47;
  v19 = *&v48[16];
  *(a1 + 64) = *v48;
  *(a1 + 80) = v19;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  v20 = *&v48[32];
  v21 = *&v48[48];
  v22 = *&v48[64];
  *(a1 + 144) = v48[80];
  *(a1 + 112) = v21;
  *(a1 + 128) = v22;
  *(a1 + 96) = v20;
  v60 = v12;
  v61 = v13;
  v62 = v14;
  *v63 = v49[0];
  *&v63[3] = *(v49 + 3);
  v64 = v15;
  v65 = v9;
  v66 = v8;
  v67 = v5;
  v68 = v10;
  v69 = 1;
  v70 = 0;
  sub_10001B104(&v51, v36, &qword_1008F6788, &qword_100700D80);
  sub_10001B104(&v56, v36, &qword_1008F6790, &qword_100700D88);
  sub_10000EA04(&v60, &qword_1008F6790, &qword_100700D88);
  v36[0] = v32;
  v36[1] = v35;
  v37 = v31;
  *v38 = *v50;
  *&v38[3] = *&v50[3];
  v39 = v11;
  v40 = v34;
  v41 = KeyPath;
  v42 = 1;
  v43 = 0;
  return sub_10000EA04(v36, &qword_1008F6788, &qword_100700D80);
}

uint64_t sub_100615940(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendsHighlightCardView(0);
  sub_10001B104(a2 + *(v4 + 32), v11, &qword_1008DC808, &unk_1006D4FD0);
  if (!v12)
  {
    return sub_10000EA04(v11, &qword_1008DC808, &unk_1006D4FD0);
  }

  v5 = sub_1000066AC(v11, v12);
  v6 = *(v4 + 28);
  v10[3] = sub_10014A0BC();
  v10[0] = a1;
  v7 = *v5;
  v8 = a1;
  sub_100615F8C(a2 + v6, v10, v7);
  sub_10000EA04(v10, &qword_1008E51F0, qword_1006D50E0);
  return sub_100005A40(v11);
}

uint64_t sub_100615A28()
{
  v1 = *(type metadata accessor for FriendsHighlightCardView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100612994(v2);
}

unint64_t sub_100615A94()
{
  result = qword_1008F6668;
  if (!qword_1008F6668)
  {
    sub_100141EEC(&qword_1008F6658, &qword_100700BB0);
    sub_10014A6B0(&qword_1008F6670, &qword_1008F6678, &qword_100700BC0, &unk_1006E8A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6668);
  }

  return result;
}

uint64_t sub_100615B7C()
{
  v1 = *(type metadata accessor for FriendsHighlightCardView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100612A50(v2);
}

uint64_t sub_100615BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FriendsHighlightCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100612CB4(a1, v6, a2);
}

unint64_t sub_100615C74()
{
  result = qword_1008F66C8;
  if (!qword_1008F66C8)
  {
    sub_100141EEC(&qword_1008F66C0, &qword_100700C20);
    sub_100141EEC(&qword_1008F66D0, &qword_100700C28);
    sub_1000545E0(&qword_1008F66D8, &qword_1008F66D0, &qword_100700C28, sub_100615D9C);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840, &qword_1006D4FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F66C8);
  }

  return result;
}

unint64_t sub_100615D9C()
{
  result = qword_1008F66E0;
  if (!qword_1008F66E0)
  {
    sub_100141EEC(&qword_1008F66E8, &qword_100700C30);
    sub_10014A6B0(&qword_1008F66F0, &qword_1008F66F8, &qword_100700C38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F66E0);
  }

  return result;
}

uint64_t sub_100615E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100615EBC()
{
  v1 = *(type metadata accessor for ActivitySharingHighlightViewModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FriendsHighlightCardView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1006131C0(v0 + v2, v5);
}

uint64_t sub_100615F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendsHighlightCard(0);
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100616D9C(a1, v8, type metadata accessor for FriendsHighlightCard);
  v9 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v9)
  {
    return sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
  }

  v10 = &v8[*(v6 + 20)];
  v11 = v10[16];
  if (v8[*(v6 + 28)])
  {
    if (v11 == 3 && *v10 == 0)
    {
      return sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
    }

    v12 = v9;
    sub_100616198(v8, v12);
    goto LABEL_6;
  }

  if (v11 != 3)
  {
    return sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
  }

  v13 = *v10;
  if (*&v8[*(v6 + 20) + 8] || v13 != 4)
  {
    return sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
  }

  sub_10001B104(a2, v18, &qword_1008E51F0, qword_1006D50E0);
  if (v19)
  {
    sub_10014A0BC();
    v12 = v9;
    if (swift_dynamicCast())
    {
      v15 = v17[1];
      [v12 dismissViewControllerAnimated:0 completion:0];
      [v12 presentViewController:v15 animated:1 completion:0];

      return sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
    }

LABEL_6:

    return sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
  }

  sub_100616E04(v8, type metadata accessor for FriendsHighlightCard);
  return sub_10000EA04(v18, &qword_1008E51F0, qword_1006D50E0);
}

void sub_100616198(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v100 = type metadata accessor for CardTypeConfigurationRoomView(0);
  __chkstk_darwin(v100);
  v101 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v103 = &v94[-v6];
  v112 = type metadata accessor for FriendsHighlightCard(0);
  v113 = &off_10085B970;
  v7 = sub_100005994(v111);
  sub_100616D9C(a1, v7, type metadata accessor for FriendsHighlightCard);
  v8 = v112;
  v9 = v113;
  sub_1000066AC(v111, v112);
  v10 = (v9[2])(v8, v9);
  v12 = v11;
  v14 = v13;
  v15 = sub_1000490C8(v10, v11, v13);
  sub_10001D4F8(v10, v12, v14);
  v16 = *&a2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v17 = sub_1003DEDA0(v15);
  if (v17[2] && (v18 = sub_1004CD4B0(v15), (v19 & 1) != 0))
  {
    v20 = *(v17[7] + 8 * v18);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v102 = v16;
  v21 = *&v16[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards];
  v22 = *(v21 + 2);
  if (v22)
  {
    v97 = v20;
    v99 = a2;
    v23 = (v21 + 32);
    v96 = v21;

    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100007C5C(v23, &v108);
      v25 = *(&v109 + 1);
      v26 = v110;
      sub_1000066AC(&v108, *(&v109 + 1));
      v27 = (*(v26 + 16))(v25, v26);
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          goto LABEL_18;
        }

        if (v27 > 4)
        {
          if (v27 <= 6)
          {
            if (v27 ^ 5 | v28)
            {
              if (v15 != 6)
              {
                goto LABEL_22;
              }
            }

            else if (v15 != 5)
            {
              goto LABEL_22;
            }
          }

          else if (v27 ^ 7 | v28)
          {
            if (!(v27 ^ 8 | v28))
            {
LABEL_18:
              if (v15 != 8)
              {
                goto LABEL_22;
              }

              goto LABEL_19;
            }

            if (v15 != 19)
            {
              goto LABEL_22;
            }
          }

          else if (v15 != 4)
          {
            goto LABEL_22;
          }
        }

        else if (v27 <= 1)
        {
          if (v27 | v28)
          {
            if (v15 != 7)
            {
              goto LABEL_22;
            }
          }

          else if (v15)
          {
            goto LABEL_22;
          }
        }

        else if (v27 ^ 2 | v28)
        {
          if (v27 ^ 3 | v28)
          {
            goto LABEL_21;
          }

          if (v15 != 10)
          {
            goto LABEL_22;
          }
        }

        else if (v15 != 3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v29)
        {
          sub_10001D4F8(v27, v28, 1);
LABEL_21:
          if (v15 != 9)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        if (v27 <= 0x12u)
        {
          if (v27 > 0xCu)
          {
            if (v15 != 14)
            {
              goto LABEL_22;
            }
          }

          else if (v27 - 4 >= 9)
          {
            if (v27 >= 2u)
            {
              if (v15 != 2)
              {
                goto LABEL_22;
              }
            }

            else if (v15 != 1)
            {
              goto LABEL_22;
            }
          }

          else if (v15 != 13)
          {
            goto LABEL_22;
          }
        }

        else if (v27 > 0x1Du)
        {
          if (v27 - 30 < 4)
          {
            if (v15 != 12)
            {
              goto LABEL_22;
            }
          }

          else if (v27 - 34 >= 4)
          {
            if (v15 != 18)
            {
LABEL_22:
              v106 = 0;
              v105 = 0u;
              v104 = 0u;
              goto LABEL_23;
            }
          }

          else if (v15 != 11)
          {
            goto LABEL_22;
          }
        }

        else if (v27 - 19 < 4)
        {
          if (v15 != 16)
          {
            goto LABEL_22;
          }
        }

        else if (v27 - 23 >= 4)
        {
          if (v15 != 15)
          {
            goto LABEL_22;
          }
        }

        else if (v15 != 17)
        {
          goto LABEL_22;
        }
      }

LABEL_19:
      sub_100007C5C(&v108, &v104);
LABEL_23:
      sub_100005A40(&v108);
      if (*(&v105 + 1))
      {
        sub_100006260(&v104, v107);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1001A1E58(0, v24[2] + 1, 1, v24);
        }

        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          v24 = sub_1001A1E58((v30 > 1), v31 + 1, 1, v24);
        }

        v24[2] = v31 + 1;
        sub_100006260(v107, &v24[5 * v31 + 4]);
      }

      else
      {
        sub_10000EA04(&v104, &qword_1008DCC60, &qword_1006DEBC0);
      }

      v23 += 40;
      if (!--v22)
      {

        a2 = v99;
        v20 = v97;
        break;
      }
    }
  }

  *&v108 = v20;

  sub_10019EDF8(v32);
  v33 = *&a2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];

  sub_100478034(&v108, v33);

  v34 = v108;
  __chkstk_darwin(v35);
  *&v94[-16] = v111;
  v36 = sub_10047CE14(sub_1004780CC, &v94[-32], v34);
  if (v37)
  {

    v38 = static os_log_type_t.default.getter();
    v39 = HKLogActivity;
    sub_100007C5C(v111, &v108);
    if (os_log_type_enabled(v39, v38))
    {
      v40 = v39;
      v41 = swift_slowAlloc();
      *&v107[0] = swift_slowAlloc();
      *v41 = 136315394;
      ASFriendListDisplayMode.id.getter();
      v42 = _typeName(_:qualified:)();
      v44 = sub_10000AFDC(v42, v43, v107);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = *(&v109 + 1);
      v46 = v110;
      sub_1000066AC(&v108, *(&v109 + 1));
      v47 = (*(v46 + 40))(v45, v46);
      v49 = v48;
      sub_100005A40(&v108);
      v50 = sub_10000AFDC(v47, v49, v107);

      *(v41 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v38, "%s Not presenting edit card modal. Unable to determine current card index for card: %s.", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100005A40(&v108);
    }

LABEL_95:
    sub_100005A40(v111);
    return;
  }

  v51 = v36;
  v52 = v112;
  v53 = v113;
  v54 = a2;
  sub_1000066AC(v111, v112);
  v55 = (v53[2])(v52, v53);
  v57 = v56;
  v59 = v58;
  LODWORD(v99) = sub_1000490C8(v55, v56, v58);
  sub_10001D4F8(v55, v57, v59);
  sub_100007C5C(v111, &v108);
  v60 = *&v33[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider];
  v61 = v102;
  v62 = v60;
  v63 = [a2 view];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 window];

    if (v65)
    {
      [v65 bounds];
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v102 = v51;
    v68 = [a2 view];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 window];

      ObjectType = v61;
      v97 = v62;
      if (v70)
      {
        [v70 bounds];
        v72 = v71;
      }

      else
      {
        v72 = 0;
      }

      v95 = v70 == 0;
      v73 = v65 == 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v54;
      KeyPath = swift_getKeyPath();
      v76 = v103;
      *v103 = KeyPath;
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      v77 = v100;
      v78 = *(v100 + 40);
      type metadata accessor for DashboardCardCellViewCache(0);
      swift_allocObject();
      v96 = v54;
      *(v76 + v78) = sub_100037560();
      v79 = v77[15];
      v80 = enum case for DynamicTypeSize.accessibility1(_:);
      v81 = type metadata accessor for DynamicTypeSize();
      v82 = *(*(v81 - 8) + 104);
      v82(v76 + v79, v80, v81);
      v82(v76 + v77[16], enum case for DynamicTypeSize.xLarge(_:), v81);
      *(v76 + v77[5]) = v99;
      v83 = v76 + v77[6];
      v84 = v109;
      *v83 = v108;
      *(v83 + 1) = v84;
      *(v83 + 4) = v110;
      *(v76 + v77[7]) = v34;
      *(v76 + v77[8]) = ObjectType;
      *(v76 + v77[9]) = v97;
      v85 = v76 + v77[11];
      *v85 = v67;
      v85[8] = v73;
      v86 = v76 + v77[12];
      *v86 = v72;
      v86[8] = v95;
      v87 = (v76 + v77[13]);
      *v87 = sub_100616D94;
      v87[1] = v74;
      v88 = (v76 + v77[14]);
      *v88 = v102;
      v88[1] = 0;
      sub_100616D9C(v76, v101, type metadata accessor for CardTypeConfigurationRoomView);
      v89 = objc_allocWithZone(sub_100140278(&qword_1008EE6A8, &unk_1006F2958));
      v90 = UIHostingController.init(rootView:)();
      v91 = [v90 presentationController];
      if (v91)
      {
        v92 = v91;
        objc_opt_self();
        v93 = swift_dynamicCastObjCClass();
        if (v93)
        {
          [v93 setPrefersGrabberVisible:1];
        }
      }

      [v96 presentViewController:v90 animated:1 completion:0];

      sub_100616E04(v103, type metadata accessor for CardTypeConfigurationRoomView);
      goto LABEL_95;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_100616D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100616E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100616E64(void *a1)
{
  v3 = *(type metadata accessor for FriendsHighlightCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100615940(a1, v4);
}

uint64_t sub_100616ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100616F44()
{
  result = qword_1008F67D8;
  if (!qword_1008F67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F67D8);
  }

  return result;
}

unint64_t sub_100616F98()
{
  result = qword_1008F67E0;
  if (!qword_1008F67E0)
  {
    sub_100141EEC(&qword_1008F6650, &qword_100700BA8);
    sub_10014A6B0(&qword_1008F67E8, &qword_1008F6640, &qword_100700B98, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F67E0);
  }

  return result;
}

void sub_100617064(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a5;
  v42 = a7;
  v45 = a4;
  v46 = a6;
  v12 = a3;
  v13 = type metadata accessor for UUID();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for LoadCard(0);
  __chkstk_darwin(Card);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  if (v12 < 3 || a1 ^ 1 | a2)
  {
    v27 = static os_log_type_t.error.getter();
    v28 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v27))
    {
      v29 = v28;
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10000AFDC(0x6472614364616F4CLL, 0xEF79726F74636146, &v51);
      *(v30 + 12) = 2080;
      v47[0] = a1;
      v47[1] = a2;
      v48 = a3;
      sub_10001D510(a1, a2, a3);
      v31 = String.init<A>(describing:)();
      v33 = sub_10000AFDC(v31, v32, &v51);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v29, v27, "%s tried making load card with cardType %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    sub_10001B104(v41, v47, &qword_1008DCC60, &qword_1006DEBC0);
    v24 = v49;
    if (v49)
    {
      v25 = v50;
      sub_1000066AC(v47, v49);
      (*(v25 + 8))(v24, v25);
      v26 = v44;
      (v44[7])(v23, 0, 1, v13);
      sub_100005A40(v47);
    }

    else
    {
      sub_10000EA04(v47, &qword_1008DCC60, &qword_1006DEBC0);
      v26 = v44;
      (v44[7])(v23, 1, 1, v13);
    }

    *(a8 + 24) = Card;
    *(a8 + 32) = &off_100861A08;
    v44 = sub_100005994(a8);
    v34 = &v17[Card[5]];
    *v34 = xmmword_1006D4AB0;
    v34[16] = 3;
    sub_10001B104(v23, v20, &unk_1008DB8A0, qword_1006DBA20);
    v35 = v26;
    v36 = v26[6];
    v37 = v36(v20, 1, v13);
    v38 = v42;
    if (v37 == 1)
    {
      v39 = v43;
      UUID.init()();
      sub_10000EA04(v23, &unk_1008DB8A0, qword_1006DBA20);
      if (v36(v20, 1, v13) != 1)
      {
        sub_10000EA04(v20, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v23, &unk_1008DB8A0, qword_1006DBA20);
      v39 = v43;
      (v35[4])(v43, v20, v13);
    }

    (v35[4])(v17, v39, v13);
    v17[Card[6]] = v45 & 1;
    v17[Card[7]] = v46 & 1;
    v17[Card[8]] = 1;
    *&v17[Card[9]] = v38;
    sub_100478E78(v17, v44);
  }
}

id UIButton.withLineBreakMode(_:)(uint64_t a1)
{
  v3 = [v1 titleLabel];
  [v3 setLineBreakMode:a1];

  return v5;
}

unint64_t sub_100617614(char a1)
{
  result = 0x5F44494C41564E49;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000024;
      break;
    case 11:
      return result;
    case 12:
      result = 0x5F544F4E5F59454BLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_1006177EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100617614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10061782C()
{
  result = qword_1008F67F0;
  if (!qword_1008F67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F67F0);
  }

  return result;
}

double sub_100617880(void *a1)
{
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_unknownObjectRetain();
    sub_100140278(&qword_1008F68A0, &qword_100700F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000AFDC(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v3, "MenuBuilder handling %s", v6, 0xCu);
    sub_100005A40(v7);
  }

  v11 = *(v1 + 16);
  os_unfair_lock_lock((v11 + 32));
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = sub_100617B54;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  sub_10000B210(v12, v13);
  os_unfair_lock_unlock((v11 + 32));
  if (v12)
  {
    v17 = a1;

    v15(&v17);
    sub_1000245E0(v15, v14);
    return sub_1000245E0(v15, v14);
  }

  return result;
}

uint64_t sub_100617A48()
{
  type metadata accessor for MenuBuilderHandler();
  v0 = swift_allocObject();
  sub_100140278(&qword_1008F6898, &qword_100700F68);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(v0 + 16) = result;
  qword_100926148 = v0;
  return result;
}

uint64_t sub_100617AAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1000245E0(*a1, a1[1]);
  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  *a1 = a2;
  a1[1] = v6;
  return sub_10000B210(a2, a3);
}

uint64_t sub_100617B2C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100617B94()
{
  result = qword_1008F68A8;
  if (!qword_1008F68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F68A8);
  }

  return result;
}

Swift::Int sub_100617BE8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1003077F8(v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100617C44(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_1003077F8(v2, v3);
  return Hasher._finalize()();
}

void sub_100617C94(char *a1)
{
  *&v1[OBJC_IVAR___CHLegacyDevicesViewController_hostingViewController] = 0;
  *&v1[OBJC_IVAR___CHLegacyDevicesViewController_subView] = 0;
  v3 = *&a1[OBJC_IVAR___CHFitnessAppContext_cloudDeviceProvider];
  *&v1[OBJC_IVAR___CHLegacyDevicesViewController_cloudDeviceProvider] = v3;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for LegacyDevicesViewController();
  v4 = v3;
  v5 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
  v6 = *&v5[OBJC_IVAR___CHLegacyDevicesViewController_cloudDeviceProvider];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(sub_100140278(&qword_1008F68F0, &qword_100701040));
  v8 = v6;
  v9 = v5;

  v10 = UIHostingController.init(rootView:)();
  v11 = [v10 view];
  v12 = *&v9[OBJC_IVAR___CHLegacyDevicesViewController_subView];
  *&v9[OBJC_IVAR___CHLegacyDevicesViewController_subView] = v11;

  v13 = v9;
  [v13 addChildViewController:v10];
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = v14;
  v16 = [v10 view];

  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v15 addSubview:v16];

  v17 = [v13 navigationController];
  if (v17)
  {
    [v17 setToolbarHidden:0];
  }

  v18 = [v13 navigationItem];
  v19 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v13 action:"doneTapped"];

  [v18 setLeftBarButtonItem:v19];
}

void sub_100617F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v5];

    if (v6)
    {
      v7 = v6;
      [v7 setPresentingViewController:v4];
      [v7 present];
    }

    else
    {
      v8 = static os_log_type_t.error.getter();
      v7 = HKLogActivity;
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v7, "Failed to create privacyPresenter", 33, 2, _swiftEmptyArrayStorage);
    }
  }
}

void sub_1006180E0()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for LegacyDevicesViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR___CHLegacyDevicesViewController_subView];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 addSubview:v2];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = [v2 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 safeAreaLayoutGuide];

  v12 = [v11 leadingAnchor];
  v13 = [v8 constraintEqualToAnchor:v12];

  [v13 setActive:1];
  v14 = [v2 trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 safeAreaLayoutGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v14 constraintEqualToAnchor:v18];

  [v19 setActive:1];
  v20 = [v2 topAnchor];
  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 safeAreaLayoutGuide];

    v24 = [v23 topAnchor];
    v25 = [v20 constraintEqualToAnchor:v24];

    [v25 setActive:1];
    v26 = [v2 bottomAnchor];
    v27 = [v0 view];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 bottomAnchor];

      v30 = [v26 constraintEqualToAnchor:v29];
      [v30 setActive:1];

      return;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100618568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyDevicesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100618624()
{
  v1 = type metadata accessor for IndexSet.Index();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008F69A8, &qword_100701228);
  v10 = __chkstk_darwin(v9);
  v12 = v29 - v11;
  (*(v6 + 16))(v8, v0, v5, v10);
  sub_100045F38(&qword_1008F69B0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  sub_100045F38(&qword_1008F69B8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  v13 = sub_100045F38(&qword_1008F69C0, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v2 + 8;
  v30 = *(v2 + 8);
  v30(v4, v1);
  v16 = 0;
  v29[1] = v14;
  if ((v14 & 1) == 0)
  {
    v18 = dispatch thunk of Collection.subscript.read();
    v16 = *v19;
    v18(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    while (1)
    {
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30(v4, v1);
      if (v20)
      {
        break;
      }

      v21 = v12;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v4;
      v24 = v1;
      v25 = v13;
      v26 = v15;
      v28 = *v27;
      v22(v31, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (v28 < v16)
      {
        v16 = v28;
      }

      v15 = v26;
      v13 = v25;
      v1 = v24;
      v4 = v23;
      v12 = v21;
      dispatch thunk of Collection.endIndex.getter();
    }
  }

  sub_10000EA04(v12, &qword_1008F69A8, &qword_100701228);
  return v16;
}

uint64_t sub_100618A10()
{
  v1 = type metadata accessor for IndexSet.Index();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008F69A8, &qword_100701228);
  v10 = __chkstk_darwin(v9);
  v12 = v29 - v11;
  (*(v6 + 16))(v8, v0, v5, v10);
  sub_100045F38(&qword_1008F69B0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  sub_100045F38(&qword_1008F69B8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  v13 = sub_100045F38(&qword_1008F69C0, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v2 + 8;
  v30 = *(v2 + 8);
  v30(v4, v1);
  v16 = 0;
  v29[1] = v14;
  if ((v14 & 1) == 0)
  {
    v18 = dispatch thunk of Collection.subscript.read();
    v16 = *v19;
    v18(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    while (1)
    {
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30(v4, v1);
      if (v20)
      {
        break;
      }

      v21 = v12;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v4;
      v24 = v1;
      v25 = v13;
      v26 = v15;
      v28 = *v27;
      v22(v31, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (v16 <= v28)
      {
        v16 = v28;
      }

      v15 = v26;
      v13 = v25;
      v1 = v24;
      v4 = v23;
      v12 = v21;
      dispatch thunk of Collection.endIndex.getter();
    }
  }

  sub_10000EA04(v12, &qword_1008F69A8, &qword_100701228);
  return v16;
}

double sub_100618DFC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v14 = *v13;
  *&v14[9] = *&v13[9];
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = *v14;
  *(a1 + 169) = *&v13[9];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t DivingDataCalculator.formatAxisDate(_:)()
{
  v1 = *(v0 + OBJC_IVAR___CHDivingDataCalculator_axisFormatter);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = [v1 stringFromDate:isa];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t DivingDataCalculator.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DivingDataCalculator.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CHDivingDataCalculator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100619160;
}

void sub_100619160(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t DivingDataCalculator.diveDetailViewRowCount.getter()
{
  if (*(v0 + OBJC_IVAR___CHDivingDataCalculator_diveSectionMode) >= 2u)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void DivingDataCalculator.chartWidth.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3 + OBJC_IVAR___CHDivingDataCalculator__chartWidth;
  if (*(v3 + OBJC_IVAR___CHDivingDataCalculator__chartWidth + 8) == 1)
  {
    *v14 = a1;
    *(v14 + 8) = a2 & 1;
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10061975C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100864A48;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100045F38(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_100619590(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v4 = sub_100619764(v3);

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = static Published.subscript.modify();
    *(v6 + 8) = v4;

    v5(v12, 0);

    v8 = sub_100619764(v7);

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = static Published.subscript.modify();
    *v10 = v8;

    v9(v12, 0);

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      [v11 divingDataDidFinishLoading];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

size_t sub_100619764(unint64_t a1)
{
  v3 = type metadata accessor for WorkoutChartDataElement(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F6998, &qword_100701218);
  __chkstk_darwin(v7 - 8);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v92 - v11;
  v109 = sub_100140278(&qword_1008F69A0, &qword_100701220);
  v96 = *(v109 - 8);
  __chkstk_darwin(v109);
  v98 = (&v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v110 = &v92 - v14;
  v15 = type metadata accessor for DivingDataCalculator.SampleBucket(0);
  v111 = *(v15 - 1);
  __chkstk_darwin(v15);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = &v92 - v19;
  __chkstk_darwin(v20);
  v95 = &v92 - v21;
  __chkstk_darwin(v22);
  v116 = &v92 - v23;
  v24 = type metadata accessor for Date();
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = &v92 - v26;
  __chkstk_darwin(v28);
  v30 = &v92 - v29;
  __chkstk_darwin(v31);
  *&v112 = &v92 - v35;
  v113 = v1;
  v36 = (v1 + OBJC_IVAR___CHDivingDataCalculator__chartWidth);
  if (*(v1 + OBJC_IVAR___CHDivingDataCalculator__chartWidth + 8))
  {
    return _swiftEmptyArrayStorage;
  }

  v37 = *v36;
  if (*v36 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v93 = v4;
  v105 = v33;
  v38 = v32;
  if (a1 >> 62)
  {
    goto LABEL_79;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v100 = a1;
    v114 = v34;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v39 = *(a1 + 32);
    }

    v40 = v39;
    v41 = [v39 quantityType];

    v42 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierUnderwaterDepth];
    v94 = v6;
    v115 = v15;
    if (v41)
    {
      if (v42)
      {
        v43 = v42;
        sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);
        v104 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v104 = 0;
      }

      goto LABEL_14;
    }

    if (v42)
    {
      v104 = 0;
      v41 = v42;
LABEL_14:

      goto LABEL_15;
    }

    v104 = 1;
LABEL_15:
    v44 = floor(v37 / 3.0 * 0.5);
    v45 = OBJC_IVAR___CHDivingDataCalculator_diveSession;
    v46 = v113;
    v47 = [*&v113[OBJC_IVAR___CHDivingDataCalculator_diveSession] endDate];
    v48 = v112;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = v45;
    v49 = [*&v46[v45] startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = v48;
    Date.timeIntervalSince(_:)();
    v51 = v50;
    v15 = (v114 + 8);
    v6 = *(v114 + 8);
    (v6)(v30, v38);
    (v6)(v48, v38);
    if (*&v44 >> 52 > 0x7FEuLL)
    {
      break;
    }

    if (v44 <= -9.22337204e18)
    {
      goto LABEL_84;
    }

    if (v44 >= 9.22337204e18)
    {
      goto LABEL_85;
    }

    v106 = v27;
    v99 = v17;
    v97 = v9;
    v92 = v3;
    if (v44 < 0)
    {
      goto LABEL_86;
    }

    v3 = 0;
    v102 = (v114 + 16);
    v101 = v44 + 1;
    v30 = _swiftEmptyArrayStorage;
    v37 = v51 / v44;
    a1 = v106;
    do
    {
      v9 = v113;
      v27 = v103;
      v52 = [*&v103[v113] startDate];
      v17 = v112;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.addingTimeInterval(_:)();
      (v6)(v17, v38);
      v53 = [*&v27[v9] startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      v54 = v38;
      v114 = v3;
      v55 = v105;
      Date.addingTimeInterval(_:)();
      (v6)(v17, v54);
      v56 = *v102;
      v57 = v116;
      (*v102)(v116, a1, v54);
      v56(v57 + *(v115 + 5), v55, v54);
      IndexSet.init()();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1001A3B10(0, *(v30 + 16) + 1, 1, v30);
      }

      v9 = *(v30 + 16);
      v58 = *(v30 + 24);
      v59 = v114;
      if (v9 >= v58 >> 1)
      {
        v30 = sub_1001A3B10((v58 > 1), v9 + 1, 1, v30);
      }

      (v6)(v55, v54);
      a1 = v106;
      (v6)(v106, v54);
      *(v30 + 16) = v9 + 1;
      v17 = ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v1 = &v17[v30];
      v38 = v54;
      v60 = v111[9];
      sub_10061E5F8(v116, &v17[v30 + v60 * v9], type metadata accessor for DivingDataCalculator.SampleBucket);
      v3 = v59 + 1;
    }

    while (v101 != v3);
    v116 = v60;
    v117 = 0;
    v118 = v30;

    v15 = 0;
    v3 = v9 + 1;
    a1 = &qword_100701220;
    v27 = v109;
    while (v15 < *(v30 + 16))
    {
      v38 = *(v27 + 12);
      v6 = v110;
      *v110 = v15;
      sub_10061E538(v1, &v6[v38]);
      sub_10061DB80(v15, &v6[v38], v100, v104 & 1, &v118, &v117, v61);
      sub_10000EA04(v6, &qword_1008F69A0, &qword_100701220);
      v1 += v116;
      v9 = ++v15;
      if (v3 == v15)
      {

        v3 = v118;
        if ((v104 & 1) == 0)
        {
          v30 = v107;
          v6 = v108;
          goto LABEL_47;
        }

        v63 = v118[2];
        v6 = v108;
        if (!v63)
        {
          goto LABEL_87;
        }

        v38 = v118;
        v15 = v115;
        v9 = v95;
        if (v63 >= 3)
        {
          v30 = 0;
          v114 = v63 - 2;
          a1 = v17;
          while (v30 < *(v38 + 16))
          {
            v3 = v38;
            sub_10061E538(v38 + a1, v9);
            v64 = IndexSet.isEmpty.getter();
            sub_10061E59C(v9);
            if ((v64 & 1) == 0)
            {
              if ((v30 + 1) >= *(v38 + 16))
              {
                goto LABEL_77;
              }

              sub_10061E538(v38 + v116 + a1, v9);
              v65 = IndexSet.isEmpty.getter();
              sub_10061E59C(v9);
              if (v65)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v38 = sub_10057F6E4(v38);
                }

                if (v30 >= *(v38 + 16))
                {
                  goto LABEL_78;
                }

                IndexSet.insert(_:)(0);
              }
            }

            ++v30;
            a1 += v116;
            if (v114 == v30)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_76;
        }

LABEL_43:
        v1 = v117;
        v3 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_88;
        }

        v30 = v107;
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        goto LABEL_45;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v1 = v34;
    v91 = _CocoaArrayWrapper.endIndex.getter();
    v34 = v1;
    if (!v91)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_10057F6E4(v3);
  v3 = result;
  v30 = v107;
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  else
  {
LABEL_45:
    if (v1 >= *(v3 + 16))
    {
      goto LABEL_90;
    }

    IndexSet.insert(_:)(0);
    v118 = v3;
LABEL_47:
    v38 = 0;
    v113 = &v17[v3];
    v114 = v3;
    v3 = *(v3 + 16);
    a1 = v96 + 56;
    v111 = _swiftEmptyArrayStorage;
    v15 = (v96 + 48);
    *&v62 = 134218240;
    v112 = v62;
    v37 = 0.0;
    v17 = v97;
    while (1)
    {
      if (v38 == v3)
      {
        v67 = 1;
        v38 = v3;
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_74;
        }

        if (v38 >= *(v114 + 16))
        {
          goto LABEL_75;
        }

        v68 = &v113[v38 * v116];
        v69 = *(v27 + 12);
        v70 = v98;
        *v98 = v38;
        sub_10061E538(v68, v70 + v69);
        sub_100015E80(v70, v17, &qword_1008F69A0, &qword_100701220);
        v67 = 0;
        ++v38;
      }

      (*a1)(v17, v67, 1, v27);
      sub_100015E80(v17, v30, &qword_1008F6998, &qword_100701218);
      if ((*v15)(v30, 1, v27) == 1)
      {
        break;
      }

      v71 = *v30;
      sub_10061E5F8(v30 + *(v27 + 12), v6, type metadata accessor for DivingDataCalculator.SampleBucket);
      v72 = static os_log_type_t.debug.getter();
      v73 = v6;
      v74 = v99;
      sub_10061E538(v73, v99);
      sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
      v75 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v75, v72))
      {
        v76 = swift_slowAlloc();
        *v76 = v112;
        *(v76 + 4) = v71;
        *(v76 + 12) = 2048;
        v9 = v115;
        v77 = IndexSet.count.getter();
        sub_10061E59C(v74);
        *(v76 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v75, v72, "DDC: Bucket %ld has %ld samples", v76, 0x16u);
        v17 = v97;
      }

      else
      {
        sub_10061E59C(v74);
        v9 = v115;
      }

      v6 = v108;
      v78 = IndexSet.isEmpty.getter();
      v27 = v109;
      if (v78)
      {
        sub_10061E59C(v6);
        v30 = v107;
      }

      else
      {
        v79 = sub_100618624();
        if (v80)
        {
          v81 = 0.0;
        }

        else
        {
          v81 = v79;
        }

        v82 = sub_100618A10();
        if (v83)
        {
          v84 = 0.0;
        }

        else
        {
          v84 = v82;
        }

        Date.timeIntervalSince(_:)();
        v85 = v94;
        Date.addingTimeInterval(_:)();
        v86 = v92;
        *(v85 + *(v92 + 24)) = v81;
        *(v85 + *(v86 + 28)) = v84;
        *(v85 + *(v86 + 20)) = (v81 + v84) * 0.5;
        v87 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1001A1EB4(0, v87[2] + 1, 1, v87);
        }

        v89 = v87[2];
        v88 = v87[3];
        v111 = v87;
        if (v89 >= v88 >> 1)
        {
          v111 = sub_1001A1EB4((v88 > 1), v89 + 1, 1, v111);
        }

        sub_10061E59C(v6);
        v90 = v111;
        v111[2] = v89 + 1;
        sub_10061E5F8(v94, v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v89, type metadata accessor for WorkoutChartDataElement);
        v30 = v107;
      }
    }

    return v111;
  }

  return result;
}

void (*DivingDataCalculator.chartWidth.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  *(v4 + 96) = v7;
  v8 = type metadata accessor for DispatchQoS();
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = OBJC_IVAR___CHDivingDataCalculator__chartWidth;
  *(v4 + 120) = v10;
  *(v4 + 128) = v11;
  v12 = (v1 + v11);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *(v4 + 48) = v13;
  *(v4 + 56) = v12;
  return sub_10061A6F4;
}

void sub_10061A6F4(void ****a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[15];
    v4 = v2[12];
    DivingDataCalculator.chartWidth.setter(v2[6], *(v2 + 56));
  }

  else
  {
    v5 = v2[16] + v2[9];
    if (v5[8] == 1)
    {
      v7 = v2[14];
      v6 = v2[15];
      v8 = v2[12];
      v15 = v2[13];
      v10 = v2[10];
      v9 = v2[11];
      v11 = *(v2 + 56);
      *v5 = v2[6];
      v5[8] = v11;
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v12 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v2[4] = sub_10061F46C;
      v2[5] = v13;
      *v2 = _NSConcreteStackBlock;
      v2[1] = 1107296256;
      v2[2] = sub_1000449A8;
      v2[3] = &unk_100864A70;
      v14 = _Block_copy(v2);

      static DispatchQoS.unspecified.getter();
      v2[8] = _swiftEmptyArrayStorage;
      sub_100045F38(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (v9[1])(v8, v10);
      (v7[1])(v6, v15);
    }

    v3 = v2[15];
    v4 = v2[12];
  }

  free(v3);
  free(v4);

  free(v2);
}

void sub_10061A94C(void *a1)
{
  v3 = v1;
  v5 = [a1 quantity];
  [v5 _value];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = [a1 quantityType];
  v9 = [v8 identifier];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_16:
      v17 = round(v7 / 3.28084 * 100.0);
      v18 = static os_log_type_t.debug.getter();
      sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
      v19 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v19, v18))
      {
        v2 = 0x6874706564;
        v10 = swift_slowAlloc();
        v3 = swift_slowAlloc();
        v33 = v3;
        *v10 = 136315650;
        v20 = [a1 quantityType];
        v21 = [v20 identifier];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
        {

          v26 = 0xE500000000000000;
LABEL_25:
          v28 = sub_10000AFDC(v2, v26, &v33);

          *(v10 + 4) = v28;
          *(v10 + 12) = 2048;
          v29 = [a1 quantity];
          [v29 _value];
          v31 = v30;

          *(v10 + 14) = v31;
          *(v10 + 22) = 2048;
          if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          if (v17 <= -9.22337204e18)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v17 >= 9.22337204e18)
          {
LABEL_36:
            __break(1u);
            return;
          }

          *(v10 + 24) = v17;
          _os_log_impl(&_mh_execute_header, v19, v18, "DivingDataCalculator: inserting %s %f (%ld)", v10, 0x20u);
          sub_100005A40(v3);

LABEL_29:
          if (v17 <= -9.22337204e18)
          {
            __break(1u);
          }

          else if (v17 < 9.22337204e18)
          {
            type metadata accessor for DivingDataCalculator.SampleBucket(0);
            IndexSet.insert(_:)(v17);
            return;
          }

          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {

        if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        v26 = 0xE500000000000000;
      }

      else
      {
        v2 = 1886217588;
        v26 = 0xE400000000000000;
      }

      goto LABEL_25;
    }
  }

  if (v7 < 11000.0)
  {
    goto LABEL_16;
  }

  v15 = static os_log_type_t.error.getter();
  sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
  log = static OS_os_log.default.getter();
  if (os_log_type_enabled(log, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v7;
    _os_log_impl(&_mh_execute_header, log, v15, "DivingDataCalculator bad sample value (out of bounds): %f", v16, 0xCu);
  }
}

uint64_t sub_10061AE1C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100045F38(&qword_1008E4080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9 = dispatch thunk of static Comparable.< infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v7, v3);
  if ((v9 & 1) != 0 || (v11 = [a1 endDate], static Date._unconditionallyBridgeFromObjectiveC(_:)(), v11, type metadata accessor for DivingDataCalculator.SampleBucket(0), LOBYTE(v11) = dispatch thunk of static Comparable.< infix(_:_:)(), v10(v7, v3), (v11)) && ((v12 = objc_msgSend(a1, "startDate"), static Date._unconditionallyBridgeFromObjectiveC(_:)(), v12, LOBYTE(v12) = dispatch thunk of static Comparable.< infix(_:_:)(), v10(v7, v3), (v12) || (v13 = objc_msgSend(a1, "startDate"), static Date._unconditionallyBridgeFromObjectiveC(_:)(), v13, type metadata accessor for DivingDataCalculator.SampleBucket(0), LOBYTE(v13) = dispatch thunk of static Comparable.< infix(_:_:)(), v10(v7, v3), (v13)))
  {
    v14 = [a1 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DivingDataCalculator.SampleBucket(0);
    LOBYTE(v14) = dispatch thunk of static Comparable.< infix(_:_:)();
    v10(v7, v3);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v16 = [a1 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      v10(v7, v3);
      v15 = v17 ^ 1;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

char *sub_10061B150(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_100140278(&qword_1008F6988, &qword_100701200);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___CHDivingDataCalculator__metrics;
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 11565;
  v32 = 0xE200000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = 11565;
  v36 = 0xE200000000000000;
  v37 = 0;
  v38 = 0xE000000000000000;
  v39 = 11565;
  v40 = 0xE200000000000000;
  v41 = 11565;
  v42 = 0xE200000000000000;
  v43 = 11565;
  v44 = 0xE200000000000000;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v3[v12], v11, v8);
  v13 = &v3[OBJC_IVAR___CHDivingDataCalculator__chartWidth];
  *v13 = 0;
  v13[8] = 1;
  *&v3[OBJC_IVAR___CHDivingDataCalculator_rawTempSamples] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___CHDivingDataCalculator_rawDepthSamples] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR___CHDivingDataCalculator_diveSectionMode] = 0;
  *&v3[OBJC_IVAR___CHDivingDataCalculator_healthStore] = a1;
  *&v3[OBJC_IVAR___CHDivingDataCalculator_diveSession] = a2;
  *&v3[OBJC_IVAR___CHDivingDataCalculator_formattingManager] = a3;
  v14 = objc_allocWithZone(NSDateFormatter);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = [v14 init];
  *&v3[OBJC_IVAR___CHDivingDataCalculator_axisFormatter] = v18;
  v19 = [objc_opt_self() predicateForObjectsFromWorkout:v16];
  *&v3[OBJC_IVAR___CHDivingDataCalculator_predicate] = v19;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v27, "init");
  v21 = OBJC_IVAR___CHDivingDataCalculator_axisFormatter;
  v22 = *&v20[OBJC_IVAR___CHDivingDataCalculator_axisFormatter];
  v23 = v20;
  [v22 setDoesRelativeDateFormatting:0];
  [*&v20[v21] setDateStyle:0];
  [*&v20[v21] setTimeStyle:1];
  v24 = *&v20[v21];
  v25 = String._bridgeToObjectiveC()();
  [v24 setDateFormat:v25];

  sub_10061B47C();
  return v23;
}

double sub_10061B47C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);

  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierWaterTemperature).super.super.super.isa;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_10061DB24;
  v3[4] = v0;

  sub_10061D194(isa, sub_10061DB2C, v3);

  return result;
}

double sub_10061B618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a1;
    sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);

    swift_errorRetain();

    isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierUnderwaterDepth).super.super.super.isa;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = sub_10061E3D8;
    v12[4] = v9;

    sub_10061D194(isa, sub_10061E424, v12);
  }

  return result;
}

void sub_10061B79C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v192 = a5;
  v187 = a1;
  v7 = type metadata accessor for WaterTemperatureUnit();
  v185 = *(v7 - 8);
  v186 = v7;
  __chkstk_darwin(v7);
  v184 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TemperatureValue();
  v189 = *(v9 - 8);
  v190 = v9;
  __chkstk_darwin(v9);
  v183 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v181 = &v170 - v12;
  __chkstk_darwin(v13);
  v182 = &v170 - v14;
  v15 = type metadata accessor for TemperatureRange();
  v191 = *(v15 - 8);
  __chkstk_darwin(v15);
  v188 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v170 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v170 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!(a4 | a2))
    {
      v27 = swift_allocObject();
      v180 = v15;
      *(v27 + 16) = 0;
      v177 = (v27 + 16);
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 40) = 11565;
      *(v27 + 48) = 0xE200000000000000;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0xE000000000000000;
      *(v27 + 72) = 11565;
      *(v27 + 80) = 0xE200000000000000;
      *(v27 + 88) = 0;
      *(v27 + 96) = 0xE000000000000000;
      *(v27 + 104) = 11565;
      *(v27 + 112) = 0xE200000000000000;
      *(v27 + 120) = 11565;
      *(v27 + 128) = 0xE200000000000000;
      *(v27 + 136) = 11565;
      *(v27 + 144) = 0xE200000000000000;
      *(v27 + 152) = 0u;
      v176 = (v27 + 152);
      *(v27 + 168) = 0u;
      *(v27 + 184) = 0u;
      *(v27 + 200) = 1;
      sub_10061C544(v192);
      v178 = v29;
      v179 = v28;
      v30 = v19;
      v31 = Strong;
      v32 = sub_10061CAE8();
      v174 = v33;
      v175 = v32;
      v172 = v35;
      v173 = v34;
      v36 = OBJC_IVAR___CHDivingDataCalculator_diveSession;
      v37 = *&v31[OBJC_IVAR___CHDivingDataCalculator_diveSession];
      static DiveWorkoutUtil.underwaterTime(from:)();
      v39 = v38;

      v40 = [*&v31[v36] endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = [*&v31[v36] startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v43 = v42;
      v44 = *(v21 + 8);
      v44(v23, v20);
      v44(v26, v20);
      v45 = *&v31[v36];
      static DiveWorkoutUtil.waterTemperatureRange(from:)();

      v46 = v191;
      v47 = *(v191 + 16);
      v48 = v188;
      v171 = v30;
      v49 = v30;
      v50 = v180;
      v47(v188, v49, v180);
      v51 = (*(v46 + 88))(v48, v50);
      p_info = &OBJC_METACLASS____TtC10FitnessApp25TrendsScrubberPlatterView.info;
      if (v51 == enum case for TemperatureRange.singular(_:))
      {
        (*(v46 + 96))(v48, v50);
        v53 = v189;
        v54 = v182;
        (*(v189 + 32))(v182, v48, v190);
        v55 = *&v31[OBJC_IVAR___CHDivingDataCalculator_formattingManager];
        v56 = v184;
        v57 = v185;
        v58 = v186;
        (*(v185 + 104))(v184, enum case for WaterTemperatureUnit.celcius(_:), v186);
        v59 = v55;
        TemperatureValue.value(forUnit:)();
        v61 = v60;
        (*(v57 + 8))(v56, v58);
        v62 = &selRef_localizedStringForDate_relativeToDate_;
        v63 = [v59 localizedWaterTemperatureValue:v61];

        if (!v63)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v188 = v64;

        (*(v53 + 8))(v54, v190);
      }

      else
      {
        v70 = v189;
        if (v51 != enum case for TemperatureRange.range(_:))
        {
          if (v51 != enum case for TemperatureRange.unknown(_:))
          {
            (*(v46 + 8))(v48, v180);
          }

          v188 = 0xE200000000000000;
          v186 = 11565;
          v62 = &selRef_localizedStringForDate_relativeToDate_;
LABEL_23:
          v102 = v62;
          v190 = sub_100619764(v187);
          v192 = sub_100619764(v192);
          v189 = sub_10061CC08(v192, v103);
          v104 = objc_opt_self();
          isa = sub_10061CE9C().super.super.isa;
          v106 = [v104 stringWithNumber:isa decimalPrecision:1];

          if (v106)
          {
            v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v185 = v107;

            v184 = sub_10061D0B4();
            v109 = v108;
            v110 = p_info[293];
            v111 = [*(&v110->flags + v31) localizedUnderwaterTime:v39];
            if (v111)
            {
              v112 = v111;
              v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115 = v114;

              v116 = [*(&v110->flags + v31) localizedUnderwaterTime:v43];
              if (v116)
              {
                v117 = v116;
                v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v120 = v119;

                LOBYTE(v196) = 1;
                v121 = v177[9];
                v194[8] = v177[8];
                v194[9] = v121;
                v195[0] = v177[10];
                *(v195 + 9) = *(v177 + 169);
                v122 = v177[5];
                v194[4] = v177[4];
                v194[5] = v122;
                v123 = v177[7];
                v194[6] = v177[6];
                v194[7] = v123;
                v124 = v177[1];
                v194[0] = *v177;
                v194[1] = v124;
                v125 = v177[3];
                v194[2] = v177[2];
                v194[3] = v125;
                v126 = v192;
                *(v27 + 16) = v190;
                *(v27 + 24) = v126;
                v127 = v187;
                *(v27 + 32) = v189;
                *(v27 + 40) = v127;
                v128 = v184;
                *(v27 + 48) = v185;
                *(v27 + 56) = v128;
                v130 = v174;
                v129 = v175;
                *(v27 + 64) = v109;
                *(v27 + 72) = v129;
                v131 = v172;
                v132 = v173;
                *(v27 + 80) = v130;
                *(v27 + 88) = v132;
                *(v27 + 96) = v131;
                *(v27 + 104) = v113;
                *(v27 + 112) = v115;
                *(v27 + 120) = v118;
                v133 = v186;
                *(v27 + 128) = v120;
                *(v27 + 136) = v133;
                *(v27 + 144) = v188;
                v134 = v176;
                *v176 = 0u;
                v134[1] = 0u;
                v134[2] = 0u;
                *(v27 + 200) = v196;
                sub_10021D28C(v194);
                v135 = v179;
                if (v179)
                {
                  v136 = Strong;
                  v137 = *(&v110->flags + Strong);
                  v138 = v102;
                  v139 = v179;
                  v140 = v178;
                  v141 = v178;
                  v142 = v137;
                  sub_10061E44C(v135, v140);
                  v143 = [v139 quantity];
                  [v143 _value];
                  v145 = v144;

                  v146 = [v142 v138[70]];
                  if (v146)
                  {
                    v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v148 = v147;
                  }

                  else
                  {
                    v192 = 0;
                    v148 = 0;
                  }

                  v150 = *(&v110->flags + v136);
                  v151 = [v141 quantity];
                  [v151 _value];
                  v153 = v152;

                  v154 = [v150 localizedWaterTemperatureValue:v153];
                  if (v154)
                  {
                    v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v157 = v156;
                  }

                  else
                  {
                    v155 = 0;
                    v157 = 0;
                  }

                  v158 = [v139 quantity];
                  [v158 _value];
                  v160 = v159;

                  v161 = floor(v160);
                  v162 = [v141 quantity];
                  [v162 _value];
                  v164 = v163;

                  *(v27 + 184) = v161;
                  *(v27 + 192) = floor(v164);
                  *(v27 + 200) = 0;
                  if (v157)
                  {
                    v165 = v141;
                  }

                  else
                  {
                    v165 = v139;
                  }

                  if (v157)
                  {
                    v141 = v139;
                  }

                  else
                  {
                    v155 = 11565;
                  }

                  if (!v157)
                  {
                    v157 = 0xE200000000000000;
                  }

                  (*(v191 + 8))(v171, v180);
                  v166 = v192;
                  if (v148)
                  {
                    v167 = v148;
                  }

                  else
                  {
                    v166 = 11565;
                    v167 = 0xE200000000000000;
                  }

                  v168 = *(v27 + 152);
                  v169 = *(v27 + 160);
                  *(v27 + 152) = v166;
                  *(v27 + 160) = v167;
                  *(v27 + 168) = v155;
                  *(v27 + 176) = v157;
                  sub_10061E48C(v168, v169);
                  v149 = Strong;
                  sub_10061C818(Strong, v27);
                  sub_10061E4D0(v179, v178);
                }

                else
                {
                  (*(v191 + 8))(v171, v180);
                  v149 = Strong;
                  sub_10061C818(Strong, v27);
                }

                return;
              }

              goto LABEL_49;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        (*(v46 + 96))(v48, v180);
        v71 = *(sub_100140278(&qword_1008F6990, &unk_100701208) + 48);
        v72 = *(v70 + 32);
        v73 = v190;
        v72(v181, v48, v190);
        v72(v183, &v48[v71], v73);
        v74 = *&v31[OBJC_IVAR___CHDivingDataCalculator_formattingManager];
        v75 = enum case for WaterTemperatureUnit.celcius(_:);
        v76 = v184;
        v77 = v185;
        v78 = *(v185 + 104);
        v79 = v186;
        v78(v184, enum case for WaterTemperatureUnit.celcius(_:), v186);
        v188 = v74;
        TemperatureValue.value(forUnit:)();
        v81 = v80;
        v82 = *(v77 + 8);
        v82(v76, v79);
        v83 = v183;
        v78(v76, v75, v79);
        TemperatureValue.value(forUnit:)();
        v85 = v84;
        v82(v76, v79);
        v86 = v188;
        v87 = [v188 localizedWaterTemperatureRangeWithColdest:v81 hottest:v85];

        if (!v87)
        {
LABEL_51:
          __break(1u);
          return;
        }

        v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v188 = v88;

        v89 = *(v189 + 8);
        v90 = v83;
        v91 = v190;
        v89(v90, v190);
        v89(v181, v91);
        v31 = Strong;
        v62 = &selRef_localizedStringForDate_relativeToDate_;
      }

      p_info = (&OBJC_METACLASS____TtC10FitnessApp25TrendsScrubberPlatterView + 32);
      goto LABEL_23;
    }
  }

  v65 = static os_log_type_t.error.getter();
  sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
  v66 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v66, v65))
  {
    v67 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    *v67 = 136315394;
    if (a4)
    {
      swift_getErrorValue();
      v68 = Error.localizedDescription.getter();
      a4 = v69;
    }

    else
    {
      v68 = 0;
    }

    *&v194[0] = v68;
    *(&v194[0] + 1) = a4;
    sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
    v92 = Optional.description.getter();
    v94 = v93;

    v95 = sub_10000AFDC(v92, v94, &v196);

    *(v67 + 4) = v95;
    *(v67 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v96 = Error.localizedDescription.getter();
      a2 = v97;
    }

    else
    {
      v96 = 0;
    }

    *&v194[0] = v96;
    *(&v194[0] + 1) = a2;
    v98 = Optional.description.getter();
    v100 = v99;

    v101 = sub_10000AFDC(v98, v100, &v196);

    *(v67 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v66, v65, "DivingDataCalculator internal error: %s %s", v67, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10061C544(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    v14 = static os_log_type_t.error.getter();
    sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "DivingDataCalculator empty temperature samples", 46, 2, _swiftEmptyArrayStorage);
LABEL_18:

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(a1 + 32);
  }

  v1 = v4;
  sub_1000059F8(0, &qword_1008DB898, NSObject_ptr);
  v5 = [v1 quantityType];
  sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);
  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierWaterTemperature).super.super.super.isa;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {

    goto LABEL_17;
  }

  v17 = sub_100474840(v8);
  sub_10061E660(&v17);
  v2 = v17;
  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    v9 = *(v17 + 16);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
LABEL_24:

    v16 = static os_log_type_t.error.getter();
    sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v15, "DivingDataCalculator temperature sample sorting error", 53, 2, _swiftEmptyArrayStorage);

    goto LABEL_18;
  }

LABEL_10:
  if ((v2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!__OFSUB__(v9, 1))
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = v9 - 1;
    if (!__OFSUB__(v9, 1))
    {
      if (v11 < v10)
      {
        v12 = *(v2 + 32 + 8 * v11);
        *(v2 + 32);
        v13 = v12;
LABEL_15:

        return;
      }

      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);

  __break(1u);
}

uint64_t sub_10061C818(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10061E510;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100864C80;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045F38(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_10061CAE8()
{
  v1 = *(v0 + OBJC_IVAR___CHDivingDataCalculator_formattingManager);
  v2 = *(v0 + OBJC_IVAR___CHDivingDataCalculator_diveSession);
  v10 = 0;
  v3 = [v1 localizedGoalDescriptionForDive:v2 outValue:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = v3;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v10;
    v6 = 11565;
    if (!v4)
    {
LABEL_7:

      return v6;
    }
  }

  v10 = 0;
  v11 = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v11)
  {
    goto LABEL_7;
  }

  return v6;
}

uint64_t sub_10061CC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v22 - v10;
  v12 = OBJC_IVAR___CHDivingDataCalculator_diveSession;
  v13 = [*(v3 + OBJC_IVAR___CHDivingDataCalculator_diveSession) endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [*(v3 + v12) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v15 = *(v5 + 8);
  v22[0] = v4;
  v15(v7, v4);
  v15(v11, v4);
  sub_100140278(&unk_1008E51C0, &qword_1006D8E40);
  v22[1] = 2 * *(v5 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006D64F0;
  v17 = [*(v3 + v12) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = [*(v3 + v12) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.addingTimeInterval(_:)();
  v19 = v22[0];
  v15(v11, v22[0]);
  v20 = [*(v3 + v12) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.addingTimeInterval(_:)();
  v15(v11, v19);
  return v16;
}

NSNumber sub_10061CE9C()
{
  v1 = [*(v0 + OBJC_IVAR___CHDivingDataCalculator_diveSession) workoutEvents];
  if (v1)
  {
    v2 = v1;
    sub_1000059F8(0, &qword_1008DC000, HKWorkoutEvent_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v6 type] == 2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      goto LABEL_27;
    }

    for (j = _swiftEmptyArrayStorage[2]; ; j = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!__OFADD__(j, 1))
      {
        break;
      }

      __break(1u);
LABEL_27:
      ;
    }

    return Int._bridgeToObjectiveC()();
  }

  else
  {
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    return NSNumber.init(integerLiteral:)(1);
  }
}

uint64_t sub_10061D0B4()
{
  v1 = *(v0 + OBJC_IVAR___CHDivingDataCalculator_formattingManager);
  v11[0] = 0;
  v2 = [v1 localizedZeroDepthWithOutValue:v11];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = v11[0];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = v4;

  v11[0] = v5;
  v11[1] = v7;
  sub_10000FCBC();
  v9 = StringProtocol.localizedLowercase.getter();

  return v9;
}

void sub_10061D194(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  v8 = *(v3 + OBJC_IVAR___CHDivingDataCalculator_predicate);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v7;
  v9[5] = a1;
  v10 = objc_allocWithZone(HKQuantitySeriesSampleQuery);
  v13[4] = sub_10061DB54;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10061E228;
  v13[3] = &unk_100864BB8;
  v11 = _Block_copy(v13);

  v12 = [v10 initWithQuantityType:a1 predicate:v8 quantityHandler:v11];
  _Block_release(v11);

  [*(v3 + OBJC_IVAR___CHDivingDataCalculator_healthStore) executeQuery:v12];
}

uint64_t sub_10061D30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *a6) = a1;
    v11 = Strong;
  }

  return a4(a1, a2);
}

void sub_10061D3AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(__n128), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a6;
  v37 = a8;
  v38 = a5;
  v39 = a9;
  v13 = type metadata accessor for Date();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v19 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
  __chkstk_darwin(v19 - 8);
  v21 = &v33 - v20;
  v22 = type metadata accessor for DateInterval();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_4:
    if ((v38 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  sub_10005A758(a3, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000EA04(v21, &qword_1008E5C70, qword_1006F0480);
    goto LABEL_4;
  }

  v33 = a10;
  v34 = a7;
  (*(v23 + 32))(v25, v21, v22);
  v27 = a2;
  DateInterval.start.getter();
  DateInterval.end.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v29 = Date._bridgeToObjectiveC()().super.isa;
  v30 = [objc_opt_self() quantitySampleWithType:v33 quantity:v27 startDate:isa endDate:v29];

  v31 = *(v35 + 8);
  v31(v15, v13);
  v31(v18, v13);
  v32 = v39;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  (*(v23 + 8))(v25, v22);
  a7 = v34;
  if (v38)
  {
LABEL_5:
    swift_beginAccess();

    (a7)(v26, v36);
  }
}

uint64_t sub_10061D8BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10061D8D4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10061D910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10061D958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10061DA00(uint64_t a1)
{
  sub_10061DAD4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10061DAD4()
{
  if (!qword_1008F6980)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F6980);
    }
  }
}

void sub_10061DB80(unint64_t a1, int64_t a2, unint64_t a3, int a4, int64_t *a5, uint64_t *a6, __n128 a7)
{
  v43 = a6;
  v45 = a5;
  v50 = a4;
  v51 = a2;
  v44 = type metadata accessor for DivingDataCalculator.SampleBucket(0);
  v42 = *(v44 - 8);
  v9 = __chkstk_darwin(v44);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_49;
  }

  if ((a3 & 0x8000000000000000) != 0 || (a3 & 0x4000000000000000) != 0)
  {
LABEL_50:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_5:
      v13 = 0;
      v14 = v11 & ~(v11 >> 63);
      v48 = a3 & 0xFFFFFFFFFFFFFF8;
      v49 = a3 & 0xC000000000000001;
      v9.n128_u64[0] = 134218240;
      v41 = v9;
      v9.n128_u64[0] = 134217984;
      v39 = v9;
      v46 = v12;
      v47 = a3;
      while (1)
      {
        if (v49)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v48 + 16))
          {
            goto LABEL_43;
          }

          v16 = *(a3 + 8 * v13 + 32);
        }

        v18 = v16;
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
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
          goto LABEL_50;
        }

        v11 = v51;
        if ((sub_10061AE1C(v16, v17) & 1) == 0)
        {
          break;
        }

        v20 = static os_log_type_t.debug.getter();
        a3 = sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
        v21 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v21, v20))
        {
          v22 = swift_slowAlloc();
          *v22 = v41.n128_u32[0];
          *(v22 + 4) = v13;
          *(v22 + 12) = 2048;
          *(v22 + 14) = a1;
          _os_log_impl(&_mh_execute_header, v21, v20, "DDC: Putting sample %ld into bucket %ld", v22, 0x16u);
        }

        v23 = v45;
        v11 = *v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v11;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v11 = sub_10057F6E4(v11);
          *v45 = v11;
          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }
        }

        if (*(v11 + 16) <= a1)
        {
          goto LABEL_45;
        }

        v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v26 = *(v42 + 72);
        v27 = v26 * a1;
        v11 += v25 + v26 * a1;
        sub_10061A94C(v18);
        *v43 = a1;
        if (v50)
        {
          if (!a1)
          {
            goto LABEL_23;
          }

          if (v14 >= *(*v45 + 16))
          {
            goto LABEL_47;
          }

          v28 = *v45 + v25 + v26 * v14;
          v29 = v40;
          sub_10061E538(v28, v40);
          v11 = IndexSet.isEmpty.getter();
          sub_10061E59C(v29);
          if (v11)
          {
LABEL_23:
            v30 = static os_log_type_t.debug.getter();
            v31 = static OS_os_log.default.getter();
            if (os_log_type_enabled(v31, v30))
            {
              v32 = swift_slowAlloc();
              *v32 = v39.n128_u32[0];
              *(v32 + 4) = a1;
              _os_log_impl(&_mh_execute_header, v31, v30, "DDC: Writing 0 descent to %ld", v32, 0xCu);
            }

            a3 = v45;
            v11 = *v45;
            v33 = swift_isUniquelyReferenced_nonNull_native();
            *a3 = v11;
            if ((v33 & 1) == 0)
            {
              v11 = sub_10057F6E4(v11);
              *v45 = v11;
            }

            if (*(v11 + 16) <= a1)
            {
              goto LABEL_46;
            }

            v15 = v11 + v25 + v27;
LABEL_7:
            v11 = v15 + *(v44 + 24);
            IndexSet.insert(_:)(0);
          }
        }

LABEL_8:

        ++v13;
        a3 = v47;
        if (v19 == v46)
        {
          return;
        }
      }

      if ((v50 & 1) == 0)
      {
        goto LABEL_8;
      }

      v11 = v51 + *(v44 + 24);
      if (IndexSet.isEmpty.getter())
      {
        goto LABEL_8;
      }

      v34 = static os_log_type_t.debug.getter();
      sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
      v35 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v35, v34))
      {
        v36 = swift_slowAlloc();
        *v36 = v39.n128_u32[0];
        *(v36 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v35, v34, "DDC: Writing 0 to ascent %ld", v36, 0xCu);
      }

      a3 = *v43;
      v37 = v45;
      v11 = *v45;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v11;
      if (v38)
      {
        if ((a3 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v11 = sub_10057F6E4(v11);
        *v45 = v11;
        if ((a3 & 0x8000000000000000) != 0)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      if (a3 >= *(v11 + 16))
      {
        goto LABEL_48;
      }

      v15 = v11 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * a3;
      goto LABEL_7;
    }
  }
}

void *sub_10061E090(_BYTE *a1, _OWORD *a2)
{
  v4 = *&a1[OBJC_IVAR___CHDivingDataCalculator_rawDepthSamples];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  a1[OBJC_IVAR___CHDivingDataCalculator_diveSectionMode] = v6;
  swift_beginAccess();
  v7 = a2[10];
  v24 = a2[9];
  v25 = v7;
  v26[0] = a2[11];
  *(v26 + 9) = *(a2 + 185);
  v8 = a2[6];
  v20 = a2[5];
  v21 = v8;
  v9 = a2[8];
  v22 = a2[7];
  v23 = v9;
  v10 = a2[2];
  v16 = a2[1];
  v17 = v10;
  v11 = a2[4];
  v18 = a2[3];
  v19 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v14[20] = v24;
  v14[21] = v25;
  v15[0] = v26[0];
  *(v15 + 9) = *(v26 + 9);
  v14[16] = v20;
  v14[17] = v21;
  v14[18] = v22;
  v14[19] = v23;
  v14[12] = v16;
  v14[13] = v17;
  v14[14] = v18;
  v14[15] = v19;
  v12 = a1;
  sub_100601488(&v16, v14);
  static Published.subscript.setter();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result divingDataDidFinishLoading];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10061E228(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6, void *a7)
{
  v25 = a6;
  v13 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  if (a4)
  {
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = type metadata accessor for DateInterval();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for DateInterval();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  v22 = a7;
  v16(v19, a3, v15, a5, v25, a7);

  return sub_10000EA04(v15, &qword_1008E5C70, qword_1006F0480);
}

uint64_t sub_10061E3E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10061E44C(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_10061E48C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_10061E4D0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_10061E538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DivingDataCalculator.SampleBucket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061E59C(uint64_t a1)
{
  v2 = type metadata accessor for DivingDataCalculator.SampleBucket(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10061E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10061E660(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001AB738(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10061E6DC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10061E6DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000059F8(0, &qword_1008EE6F0, HKQuantitySample_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10061E924(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10061E7F0(0, v2, 1, a1);
  }
}

void sub_10061E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 quantity];
      [v12 _value];
      v14 = v13;

      v15 = [v11 quantity];
      [v15 _value];
      v17 = v16;

      if (v14 >= v17)
      {
LABEL_4:
        ++v4;
        v6 = v22 + 8;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v18;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10061E924(char ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1001A99A4(v9);
    }

    v102 = *(v9 + 2);
    if (v102 >= 2)
    {
      while (*a3)
      {
        v103 = *&v9[16 * v102];
        v104 = *&v9[16 * v102 + 24];
        sub_10061F038((*a3 + 8 * v103), (*a3 + 8 * *&v9[16 * v102 + 16]), (*a3 + 8 * v104), v5);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v104 < v103)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001A99A4(v9);
        }

        if (v102 - 2 >= *(v9 + 2))
        {
          goto LABEL_114;
        }

        v105 = &v9[16 * v102];
        *v105 = v103;
        *(v105 + 1) = v104;
        sub_1001A9918(v102 - 1);
        v102 = *(v9 + 2);
        if (v102 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v115 = v7;
      v108 = v9;
      v9 = v10;
      v113 = 8 * v10;
      v11 = (*a3 + 8 * v10);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = *(*a3 + 8 * v8);
      v15 = v13;
      v16 = [v14 quantity];
      v5 = &selRef__setFont_;
      [v16 _value];
      v18 = v17;

      v19 = [v15 quantity];
      [v19 _value];
      v21 = v20;

      v109 = v9;
      v22 = v9 + 2;
      while (1)
      {
        v8 = v115;
        if (v115 == v22)
        {
          break;
        }

        v23 = *(v12 - 1);
        v24 = *v12;
        v25 = v23;
        v5 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        v26 = [v24 quantity];
        v9 = &selRef__setFont_;
        [v26 _value];
        v28 = v27;

        v29 = [v25 quantity];
        [v29 _value];
        v31 = v30;

        ++v22;
        ++v12;
        if (v18 < v21 == v28 >= v31)
        {
          v8 = (v22 - 1);
          break;
        }
      }

      v10 = v109;
      v32 = v113;
      if (v18 >= v21)
      {
        goto LABEL_18;
      }

      if (v8 < v109)
      {
        goto LABEL_117;
      }

      if (v109 >= v8)
      {
LABEL_18:
        v9 = v108;
      }

      else
      {
        v33 = 8 * v8 - 8;
        v34 = v8;
        v35 = v109;
        v9 = v108;
        do
        {
          if (v35 != --v34)
          {
            v37 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v36 = *(v37 + v32);
            *(v37 + v32) = *(v37 + v33);
            *(v37 + v33) = v36;
          }

          ++v35;
          v33 -= 8;
          v32 += 8;
        }

        while (v35 < v34);
      }
    }

    v38 = a3[1];
    if (v8 < v38)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_118;
        }

        if (v10 + a4 >= v38)
        {
          v39 = a3[1];
        }

        else
        {
          v39 = v10 + a4;
        }

        if (v39 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v39)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1001A1D54(0, *(v9 + 2) + 1, 1, v9);
    }

    v57 = *(v9 + 2);
    v56 = *(v9 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v9 = sub_1001A1D54((v56 > 1), v57 + 1, 1, v9);
    }

    *(v9 + 2) = v58;
    v59 = &v9[16 * v57];
    *(v59 + 4) = v10;
    *(v59 + 5) = v8;
    v60 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v9 + 4);
          v63 = *(v9 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_57:
          if (v65)
          {
            goto LABEL_104;
          }

          v78 = &v9[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_107;
          }

          v84 = &v9[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_111;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v88 = &v9[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_71:
        if (v83)
        {
          goto LABEL_106;
        }

        v91 = &v9[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_109;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_78:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v100 = *&v9[16 * v99 + 32];
        v5 = *&v9[16 * v61 + 40];
        sub_10061F038((*a3 + 8 * v100), (*a3 + 8 * *&v9[16 * v61 + 32]), (*a3 + 8 * v5), v60);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v5 < v100)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001A99A4(v9);
        }

        if (v99 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v101 = &v9[16 * v99];
        *(v101 + 4) = v100;
        *(v101 + 5) = v5;
        sub_1001A9918(v61);
        v58 = *(v9 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v9[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_102;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_103;
      }

      v73 = &v9[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_105;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_108;
      }

      if (v77 >= v69)
      {
        v95 = &v9[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_112;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v106 = v6;
  v40 = v10;
  v41 = *a3;
  v42 = *a3 + 8 * v8 - 8;
  v110 = v40;
  v43 = (v40 - v8);
  v112 = v39;
LABEL_30:
  v114 = v42;
  v116 = v8;
  v44 = *(v41 + 8 * v8);
  v5 = v43;
  while (1)
  {
    v45 = *v42;
    v46 = v44;
    v47 = v45;
    v48 = [v46 quantity];
    [v48 _value];
    v50 = v49;

    v51 = [v47 quantity];
    [v51 _value];
    v53 = v52;

    if (v50 >= v53)
    {
LABEL_29:
      ++v8;
      v42 = v114 + 8;
      v43 = (v43 - 1);
      if (v116 + 1 != v112)
      {
        goto LABEL_30;
      }

      v8 = v112;
      v6 = v106;
      v10 = v110;
      goto LABEL_37;
    }

    if (!v41)
    {
      break;
    }

    v54 = *v42;
    v44 = *(v42 + 8);
    *v42 = v44;
    *(v42 + 8) = v54;
    v42 -= 8;
    v55 = __CFADD__(v5, 1);
    v5 = (v5 + 1);
    if (v55)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_10061F038(void **__src, id *a2, id *a3, void **a4)
{
  __dst = a4;
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v43 = &__dst[v8];
    if (v6 < 8 || v12 >= v4)
    {
      v26 = v5;
      goto LABEL_37;
    }

    while (1)
    {
      v13 = v4;
      v14 = __dst;
      v15 = *__dst;
      v16 = *v12;
      v17 = v15;
      v18 = [v16 quantity];
      [v18 _value];
      v20 = v19;

      v21 = [v17 quantity];
      [v21 _value];
      v23 = v22;

      if (v20 >= v23)
      {
        break;
      }

      v24 = v12;
      if (v5 != v12++)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v5;
      if (__dst < v43)
      {
        v4 = v13;
        if (v12 < v13)
        {
          continue;
        }
      }

      v26 = v5;
      goto LABEL_37;
    }

    v24 = __dst++;
    if (v5 == v14)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v5 = *v24;
    goto LABEL_17;
  }

  v26 = a2;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    memmove(a4, a2, 8 * v11);
  }

  v43 = &__dst[v11];
  if (v9 >= 8 && v26 > v5)
  {
    do
    {
      v42 = v26;
      v27 = v26 - 1;
      --v4;
      v28 = v43;
      while (1)
      {
        v29 = v4 + 1;
        v30 = *--v28;
        v31 = v27;
        v32 = *v27;
        v33 = v30;
        v34 = v32;
        v35 = [v33 quantity];
        [v35 _value];
        v37 = v36;

        v38 = [v34 quantity];
        [v38 _value];
        v40 = v39;

        if (v37 < v40)
        {
          break;
        }

        if (v29 != v43)
        {
          *v4 = *v28;
        }

        --v4;
        v43 = v28;
        v27 = v31;
        if (v28 <= __dst)
        {
          v43 = v28;
          v26 = v42;
          goto LABEL_37;
        }
      }

      if (v29 != v42)
      {
        *v4 = *v31;
      }

      if (v43 <= __dst)
      {
        break;
      }

      v26 = v31;
    }

    while (v31 > v5);
    v26 = v31;
  }

LABEL_37:
  if (v26 != __dst || v26 >= (__dst + ((v43 - __dst + (v43 - __dst < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v26, __dst, 8 * (v43 - __dst));
  }

  return 1;
}

uint64_t sub_10061F3E4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for IndexSet();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10061F478()
{
  v1 = v0;
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for StepType.work(_:) || v7 == enum case for StepType.rest(_:) || v7 == enum case for StepType.warmUp(_:) || v7 == enum case for StepType.coolDown(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 localizedStringForKey:v9 value:0 table:0];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v11;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

void *sub_10061F688()
{
  v1 = v0[2];
  v2 = *(*v0 + 16);
  if (!v2)
  {
    goto LABEL_33;
  }

  if (v2 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
    if ((v43 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v43)
  {
    v4 = v0[3];
    if (i)
    {
      v51 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0 && i > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v48 = objc_opt_self();
      v46 = v1;
      v5 = v1;
      v6 = 0;
      v49 = i;
      v50 = v4;
      v7 = v5;
      do
      {
        if (v51)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [*&v8[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_zoneNameLabel] trailingAnchor];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = [*&v9[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_rangeLabel] leadingAnchor];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v52 = v6 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v9;
        [v7 addSubview:v12];
        sub_100140278(&unk_1008E4E20, &qword_1006D5040);
        v0 = swift_allocObject();
        *(v0 + 1) = xmmword_1006D68C0;
        v13 = [v12 leadingAnchor];
        v14 = [v7 leadingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];

        v0[4] = v15;
        v16 = [v12 trailingAnchor];

        v17 = [v7 trailingAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];

        v0[5] = v18;
        v19 = [v12 topAnchor];

        v20 = &selRef_bottomAnchor;
        if (!v6)
        {
          v20 = &selRef_topAnchor;
        }

        v21 = [v5 *v20];
        v22 = [v19 constraintEqualToAnchor:v21];

        v0[6] = v22;
        sub_10019EC5C();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v48 activateConstraints:isa];

        v5 = v12;
        v6 = v52;
        v4 = v50;
      }

      while (v49 != v52);
      v1 = v46;
      if (!(v50 >> 62))
      {
LABEL_19:
        v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v25 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        if (!v24)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v12 = v1;
      if (!(v4 >> 62))
      {
        goto LABEL_19;
      }
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    v25 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    if (!v24)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v24 >= 1)
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    LODWORD(v45) = 0;
    v44 = 23;
    v43 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_34:
    ;
  }

  for (j = 0; j != v24; ++j)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v4 + 8 * j + 32);
    }

    v28 = v27;
    sub_10036FFDC(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 10.0);
  }

LABEL_28:

  v29 = *(v47 + 32);
  [v1 addSubview:v29];
  v30 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006D68C0;
  v32 = [v29 v25[215]];
  v33 = [v1 v25[215]];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v29 trailingAnchor];
  v36 = [v1 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [v29 topAnchor];
  v39 = [v12 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];

  *(v31 + 48) = v40;
  sub_10019EC5C();
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:v41];

  return v1;
}

uint64_t sub_10061FD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100620420();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10061FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100620420();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10061FE08(uint64_t a1)
{
  sub_100620420();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_10061FE30(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_31;
  }

  v7 = objc_allocWithZone(UIView);

  v8 = a2;
  v9 = &selRef_currentItem;
  v10 = [v7 init];
  if (v3 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v48 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v3;
  v47 = a1;
  v11 = FIUIBundle();
  if (!v11)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v15 = StringProtocol.localizedUppercase.getter();
  v17 = v16;

  if (v48 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v48)
  {
    v45 = v10;
    v18 = v8;
    v19 = 0;
    v20 = OBJC_IVAR____TtC10FitnessApp16WorkoutPowerInfo_elapsedTimeInZones;
    v21 = v3;
    v22 = v47;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v21 + 8 * v19 + 32);
      }

      v24 = *(v22 + v20);
      v25 = 0.0;
      if (v24)
      {
        if (*(v24 + 16))
        {
          v26 = sub_1004C5998(v19);
          if (v27)
          {
            v25 = *(*(v24 + 56) + 8 * v26);
          }
        }
      }

      v28 = COERCE_DOUBLE(sub_100611A70());
      v30 = v25 / v28;
      if (v28 <= 0.0)
      {
        v30 = 0.0;
      }

      if (v29)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v30;
      }

      v32 = objc_allocWithZone(type metadata accessor for WorkoutTimeInZoneView());
      v33 = v18;

      v34 = sub_100370650(v23, v33, v15, v17, v25, v31);
      [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

      v35 = v34;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v19;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v22 = v47;
      v21 = v46;
    }

    while (v48 != v19);
    v8 = v18;
    v10 = v45;
    v9 = &selRef_currentItem;
  }

  else
  {
    v22 = v47;
  }

  v36 = [objc_allocWithZone(UILabel) v9[463]];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [objc_opt_self() mainBundle];
  v38 = v22;
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v39 value:0 table:0];

  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  [v36 setText:v40];
  v41 = [objc_opt_self() grayColor];
  [v36 setTextColor:v41];

  v42 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v43 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v44 = [v42 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v43];

  [v36 setFont:v44];
  [v36 setNumberOfLines:0];

  *a3 = v38;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = _swiftEmptyArrayStorage;
  a3[4] = v36;
}

unint64_t sub_1006203CC()
{
  result = qword_1008F6A60;
  if (!qword_1008F6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6A60);
  }

  return result;
}

unint64_t sub_100620420()
{
  result = qword_1008F6A68;
  if (!qword_1008F6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6A68);
  }

  return result;
}

void sub_10062049C(uint64_t a1)
{
  sub_100620588(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LoadCard(319);
    if (v2 <= 0x3F)
    {
      sub_10005C6EC(319);
      if (v3 <= 0x3F)
      {
        sub_100620588(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100620588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006205F8()
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v38 = *(DataType - 8);
  v39 = DataType;
  __chkstk_darwin(DataType);
  v35 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v36 = *(ViewModel - 8);
  v37 = ViewModel;
  __chkstk_darwin(ViewModel);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizationFeature();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + *(type metadata accessor for LoadCardView(0) + 28);
  v14 = *v13;
  v15 = *(v13 + 8);
  v33 = v10;
  if (v15 == 1)
  {
    v16 = v14;
  }

  else
  {

    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v19 = sub_1000A73A4(v14, 0);
    (*(v10 + 8))(v12, v9, v19);
    v16 = v40;
  }

  v20 = dispatch thunk of TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.getter();

  if (v20)
  {
    (*(v6 + 104))(v8, enum case for LocalizationFeature.workout(_:), v5);
    View = static Localization.workoutUILocalizedString(_:feature:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (v15)
    {
      v22 = v14;
    }

    else
    {

      v23 = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v25 = sub_1000A73A4(v14, 0);
      (*(v33 + 8))(v12, v9, v25);
      v22 = v40;
    }

    v27 = v38;
    v26 = v39;
    v28 = v35;
    (*(v38 + 104))(v35, enum case for TrainingLoadDataType.workout(_:), v39);
    v29 = v34;
    dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

    (*(v27 + 8))(v28, v26);
    View = TrainingLoadViewModel.formattedFractionalDifferenceFromChronicBaselineForToday.getter();
    v31 = v30;
    (*(v36 + 8))(v29, v37);
    if (!v31)
    {
      return 11565;
    }
  }

  return View;
}

uint64_t sub_100620AC4()
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v36 = *(DataType - 8);
  v37 = DataType;
  __chkstk_darwin(DataType);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v34 = *(ViewModel - 8);
  v35 = ViewModel;
  __chkstk_darwin(ViewModel);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizationFeature();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + *(type metadata accessor for LoadCardView(0) + 28);
  v14 = *v13;
  v15 = *(v13 + 8);
  v31 = v10;
  if (v15 == 1)
  {
    v16 = v14;
  }

  else
  {

    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v19 = sub_1000A73A4(v14, 0);
    (*(v10 + 8))(v12, v9, v19);
    v16 = v38;
  }

  v20 = dispatch thunk of TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.getter();

  if (v20)
  {
    (*(v6 + 104))(v8, enum case for LocalizationFeature.workout(_:), v5);
    countAndFlagsBits = static Localization.workoutUILocalizedString(_:feature:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (v15)
    {
      v22 = v14;
    }

    else
    {

      v23 = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v25 = sub_1000A73A4(v14, 0);
      (*(v31 + 8))(v12, v9, v25);
      v22 = v38;
    }

    v27 = v36;
    v26 = v37;
    v28 = v33;
    (*(v36 + 104))(v33, enum case for TrainingLoadDataType.workout(_:), v37);
    v29 = v32;
    dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

    (*(v27 + 8))(v28, v26);
    countAndFlagsBits = TrainingLoadViewModel.loadBandTodayLocalizedDescription()()._countAndFlagsBits;
    (*(v34 + 8))(v29, v35);
  }

  return countAndFlagsBits;
}

double sub_100620F80@<D0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OvernightMetricsViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100621274(v1, &v30);
  v10 = v30;
  v28 = v31;
  v29 = *(&v30 + 1);
  v27 = v32;
  v26 = v33;
  v24 = v34;
  v11 = v1 + *(type metadata accessor for LoadCardView(0) + 28);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = v12;
  }

  else
  {

    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v23 = v2;
    v16 = v15;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = sub_1000A73A4(v12, 0);
    (*(v3 + 8))(v5, v23, v17);
    v13 = v30;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v18 = OvernightMetricsViewModel.primaryTintColor.getter();
  (*(v7 + 8))(v9, v6);
  v20 = v28;
  v19 = v29;
  *&v30 = v10;
  *(&v30 + 1) = v29;
  v31 = v28;
  v32 = v27;
  v33 = v26;
  v34 = v24;
  v35 = v18;
  static Font.Weight.medium.getter();
  sub_100140278(&qword_1008F6C50, &qword_1007015B8);
  sub_100627730();
  View.fontWeight(_:)();
  sub_100627948(v10, v19, v20);

  return result;
}

double sub_100621274@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v80 = a2;
  v4 = type metadata accessor for LocalizationFeature();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for OvernightMetricsViewModel.Summary();
  v6 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for OvernightMetricsViewModel();
  v85 = *(v82 - 8);
  __chkstk_darwin(v82);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for OvernightMetricsViewModel.Summary.Variant();
  v10 = *(v79 - 8);
  __chkstk_darwin(v79);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for LoadCardView(0) + 28);
  v70 = a1;
  v20 = a1 + v19;
  v21 = *v20;
  LODWORD(v73) = *(v20 + 8);
  v69 = v15;
  v68 = v16;
  v74 = v21;
  if (v73 == 1)
  {
    v25 = v21;
  }

  else
  {

    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_1000A73A4(v21, 0);
    (*(v16 + 8))(v18, v15, v24);
    v25 = v89;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v26 = v83;
  OvernightMetricsViewModel.summary.getter();
  v27 = *(v85 + 8);
  v85 += 8;
  v27(v9, v82);
  OvernightMetricsViewModel.Summary.variant.getter();

  v28 = *(v6 + 8);
  v75 = v6 + 8;
  v72 = v28;
  v28(v26, v84);
  v29 = v81;
  v30 = v79;
  v71 = *(v10 + 104);
  v71(v81, enum case for OvernightMetricsViewModel.Summary.Variant.noData(_:), v79);
  v31 = static OvernightMetricsViewModel.Summary.Variant.== infix(_:_:)();
  v32 = *(v10 + 8);
  v32(v29, v30);
  v32(v14, v30);
  if (v31)
  {
    v34 = v76;
    v33 = v77;
    v35 = v78;
    (*(v77 + 104))(v76, enum case for LocalizationFeature.workout(_:), v78);
    v36 = static Localization.workoutUILocalizedString(_:feature:)();
    v38 = v37;
    (*(v33 + 8))(v34, v35);
    *&v89 = v36;
    *(&v89 + 1) = v38;
    sub_10000FCBC();
    v39 = Text.init<A>(_:)();
    v41 = v39;
    v42 = v40;
    *&v86 = v39;
    *(&v86 + 1) = v40;
    v44 = v43 & 1;
    *&v87 = v43 & 1;
    *(&v87 + 1) = v45;
    LOBYTE(v88) = 0;
  }

  else
  {
    if (v73)
    {
      v46 = v74;
    }

    else
    {
      v73 = v27;
      v47 = v74;

      v48 = static os_log_type_t.fault.getter();
      v49 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v50 = v47;
      v27 = v73;
      v51 = sub_1000A73A4(v50, 0);
      (*(v68 + 8))(v18, v69, v51);
      v46 = v89;
    }

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
    v52 = v83;
    OvernightMetricsViewModel.summary.getter();
    v27(v9, v82);
    OvernightMetricsViewModel.Summary.variant.getter();

    v72(v52, v84);
    v53 = v81;
    v71(v81, enum case for OvernightMetricsViewModel.Summary.Variant.insufficientData(_:), v30);
    v54 = static OvernightMetricsViewModel.Summary.Variant.== infix(_:_:)();
    v32(v53, v30);
    v32(v14, v30);
    if ((v54 & 1) == 0)
    {
      sub_100621BC4(v70, &v89);
      v86 = v89;
      v87 = v90;
      LOBYTE(v88) = v91;
      HIBYTE(v88) = 1;
      sub_100140278(&qword_1008E36D0, &qword_1006F5920);
      sub_100140278(&qword_1008E91A0, &unk_1006E9C90);
      sub_100335B80();
      sub_100627814(&qword_1008E9198, &qword_1008E91A0, &unk_1006E9C90, sub_100335B80);
      _ConditionalContent<>.init(storage:)();
      goto LABEL_13;
    }

    v56 = v76;
    v55 = v77;
    v57 = v78;
    (*(v77 + 104))(v76, enum case for LocalizationFeature.workout(_:), v78);
    v58 = static Localization.workoutUILocalizedString(_:feature:)();
    v60 = v59;
    (*(v55 + 8))(v56, v57);
    *&v89 = v58;
    *(&v89 + 1) = v60;
    sub_10000FCBC();
    v39 = Text.init<A>(_:)();
    v41 = v39;
    v42 = v40;
    v44 = v61 & 1;
    *&v86 = v39;
    *(&v86 + 1) = v40;
    *&v87 = v61 & 1;
    *(&v87 + 1) = v62;
    LOBYTE(v88) = 1;
  }

  sub_10006965C(v39, v40, v44);

  _ConditionalContent<>.init(storage:)();
  v86 = v89;
  v87 = v90;
  v88 = v91;
  sub_100140278(&qword_1008E36D0, &qword_1006F5920);
  sub_100140278(&qword_1008E91A0, &unk_1006E9C90);
  sub_100335B80();
  sub_100627814(&qword_1008E9198, &qword_1008E91A0, &unk_1006E9C90, sub_100335B80);
  _ConditionalContent<>.init(storage:)();
  sub_10004642C(v41, v42, v44);

LABEL_13:
  result = *&v89;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v67 = v80;
  *v80 = v89;
  v67[1] = v64;
  *(v67 + 32) = v65;
  *(v67 + 33) = v66;
  return result;
}

double sub_100621BC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = a2;
  v4 = type metadata accessor for LocalizationFeature();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OvernightMetricsViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = a1 + *(type metadata accessor for LoadCardView(0) + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  v53 = v7;
  v54 = v6;
  if (v18 == 1)
  {
    v19 = v17;
  }

  else
  {

    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v22 = sub_1000A73A4(v17, 0);
    (*(v7 + 8))(v9, v6, v22);
    v19 = v65;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v23 = OvernightMetricsViewModel.changeCountDescription.getter();
  v25 = v24;
  v26 = *(v11 + 8);
  v26(v15, v10);
  if (v25)
  {
    *&v65 = v23;
    *(&v65 + 1) = v25;
    sub_10000FCBC();
    v60 = Text.init<A>(_:)();
    v61 = v27;
    v62 = v28 & 1;
    v63 = v29;
    v64 = 0;
  }

  else
  {
    if (v18)
    {
      v30 = v17;
    }

    else
    {

      v31 = static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v33 = sub_1000A73A4(v17, 0);
      (*(v53 + 8))(v9, v54, v33);
      v30 = v65;
    }

    v34 = v55;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    v35 = OvernightMetricsViewModel.changeDetectedCountToday.getter();
    v37 = v36;
    v26(v34, v10);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v35;
    }

    v40 = v56;
    v39 = v57;
    v41 = v58;
    (*(v57 + 104))(v56, enum case for LocalizationFeature.workout(_:), v58);
    static Localization.workoutUILocalizedString(_:feature:)();
    (*(v39 + 8))(v40, v41);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1006D46C0;
    *(v42 + 56) = &type metadata for Int;
    *(v42 + 64) = &protocol witness table for Int;
    *(v42 + 32) = v38;
    v43 = static String.localizedStringWithFormat(_:_:)();
    v45 = v44;

    *&v65 = v43;
    *(&v65 + 1) = v45;
    sub_10000FCBC();
    v60 = Text.init<A>(_:)();
    v61 = v47;
    v62 = v46 & 1;
    v63 = v48;
    v64 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v65;
  v50 = v66;
  v51 = v67;
  v52 = v59;
  *v59 = v65;
  v52[1] = v50;
  *(v52 + 32) = v51;
  return result;
}

uint64_t sub_100622118@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v134 = a1;
  v126 = a2;
  v2 = type metadata accessor for Font.Leading();
  v131 = *(v2 - 8);
  v132 = v2;
  __chkstk_darwin(v2);
  v130 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v107 = *(DataType - 8);
  v108 = DataType;
  __chkstk_darwin(DataType);
  v104 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v105 = *(ViewModel - 8);
  v106 = ViewModel;
  __chkstk_darwin(ViewModel);
  v103 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for EnvironmentValues();
  v112 = *(v133 - 8);
  __chkstk_darwin(v133);
  v111 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v103 - v10;
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v178[0] = sub_100620AC4();
  *(&v178[0] + 1) = v16;
  sub_10000FCBC();
  v17 = Text.init<A>(_:)();
  v109 = v18;
  v110 = v17;
  v20 = v19;
  v22 = v21;
  v124 = *(v13 + 104);
  v125 = v13 + 104;
  v124(v15, enum case for Font.TextStyle.title2(_:), v12);
  v23 = enum case for Font.Design.rounded(_:);
  v24 = type metadata accessor for Font.Design();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v122 = v23;
  v27 = v23;
  v28 = v11;
  v119 = v26;
  v120 = v25 + 104;
  v26(v11, v27, v24);
  v29 = *(v25 + 56);
  v123 = v24;
  v121 = v25 + 56;
  v118 = v29;
  v29(v11, 0, 1, v24);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v11, &qword_1008DC448, &qword_1006D48C0);
  v30 = *(v13 + 8);
  v127 = v15;
  v128 = v13 + 8;
  v129 = v12;
  v117 = v30;
  v30(v15, v12);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v31 = v110;
  v32 = Text.font(_:)();
  v114 = v33;
  v115 = v32;
  v113 = v34;
  v116 = v35;

  sub_10004642C(v31, v20, v22 & 1);

  v36 = v134 + *(type metadata accessor for LoadCardView(0) + 28);
  v37 = *v36;
  v38 = *(v36 + 8);
  if (v38 == 1)
  {
    v39 = v37;
    v40 = v133;
    v42 = v111;
    v41 = v112;
  }

  else
  {

    v43 = static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v42 = v111;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v45 = sub_1000A73A4(v37, 0);
    v41 = v112;
    v40 = v133;
    (*(v112 + 8))(v42, v133, v45);
    v39 = *&v178[0];
  }

  v46 = dispatch thunk of TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.getter();

  if (v46)
  {
    View = static Color.white.getter();
  }

  else
  {
    if (v38)
    {
      v48 = v37;
    }

    else
    {

      v49 = static os_log_type_t.fault.getter();
      v50 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v51 = sub_1000A73A4(v37, 0);
      (*(v41 + 8))(v42, v40, v51);
      v48 = *&v178[0];
    }

    v53 = v107;
    v52 = v108;
    v54 = v104;
    (*(v107 + 104))(v104, enum case for TrainingLoadDataType.workout(_:), v108);
    v55 = v103;
    dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

    (*(v53 + 8))(v54, v52);
    View = TrainingLoadViewModel.loadBandTodayColor()();
    (*(v105 + 8))(v55, v106);
  }

  *&v178[0] = View;
  v56 = v113;
  v58 = v114;
  v57 = v115;
  v59 = Text.foregroundStyle<A>(_:)();
  v111 = v60;
  v112 = v59;
  v62 = v61;
  v133 = v63;
  sub_10004642C(v57, v58, v56 & 1);

  v64 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v62 & 1;
  v196 = v62 & 1;
  v193 = 0;
  v74 = sub_100622CA8(v134, v166);
  v75 = v127;
  v76 = v129;
  (v124)(v127, enum case for Font.TextStyle.footnote(_:), v129, v74);
  v77 = v123;
  v119(v28, v122, v123);
  v118(v28, 0, 1, v77);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v28, &qword_1008DC448, &qword_1006D48C0);
  v117(v75, v76);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v78 = v130;
  v79 = v131;
  v80 = v132;
  (*(v131 + 104))(v130, enum case for Font.Leading.tight(_:), v132);
  v81 = Font.leading(_:)();

  (*(v79 + 8))(v78, v80);
  KeyPath = swift_getKeyPath();
  v161 = v166[2];
  v162 = v166[3];
  LOWORD(v163) = v167;
  v159 = v166[0];
  v160 = v166[1];
  v83 = swift_getKeyPath();
  LOBYTE(v178[0]) = 0;
  LOBYTE(v80) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *&v168 = v59;
  v84 = v111;
  *(&v168 + 1) = v111;
  LOBYTE(v169) = v73;
  *(&v169 + 1) = *v195;
  DWORD1(v169) = *&v195[3];
  *(&v169 + 1) = v133;
  LOBYTE(v170) = v64;
  DWORD1(v170) = *&v194[3];
  *(&v170 + 1) = *v194;
  *(&v170 + 1) = v66;
  *&v171[0] = v68;
  *(&v171[0] + 1) = v70;
  *&v171[1] = v72;
  BYTE8(v171[1]) = 0;
  *(v149 + 9) = *(v171 + 9);
  v148 = v170;
  v149[0] = v171[0];
  v146 = v168;
  v147 = v169;
  v85 = v161;
  v86 = v162;
  v172[2] = v161;
  v172[3] = v162;
  v88 = v159;
  v87 = v160;
  v172[0] = v159;
  v172[1] = v160;
  v89 = v163;
  *&v173 = v163;
  *(&v173 + 1) = KeyPath;
  *&v174 = v81;
  *(&v174 + 1) = v83;
  *&v175 = 0;
  BYTE8(v175) = 0;
  HIDWORD(v175) = *(v165 + 3);
  *(&v175 + 9) = v165[0];
  LOBYTE(v176) = v80;
  DWORD1(v176) = *&v164[3];
  *(&v176 + 1) = *v164;
  *(&v176 + 1) = v90;
  *&v177[0] = v91;
  *(&v177[0] + 1) = v92;
  *&v177[1] = v93;
  BYTE8(v177[1]) = 0;
  v150 = v159;
  v151 = v160;
  v154 = v173;
  v155 = v174;
  v152 = v161;
  v153 = v162;
  *(v158 + 9) = *(v177 + 9);
  v157 = v176;
  v158[0] = v177[0];
  v156 = v175;
  v94 = v177[0];
  v95 = v126;
  v126[12] = v176;
  v95[13] = v94;
  *(v95 + 217) = *(v158 + 9);
  v96 = v154;
  v95[8] = v153;
  v95[9] = v96;
  v97 = v156;
  v95[10] = v155;
  v95[11] = v97;
  v98 = v150;
  v95[4] = v149[1];
  v95[5] = v98;
  v99 = v152;
  v95[6] = v151;
  v95[7] = v99;
  v100 = v147;
  *v95 = v146;
  v95[1] = v100;
  v101 = v149[0];
  v95[2] = v148;
  v95[3] = v101;
  v178[2] = v85;
  v178[3] = v86;
  v178[1] = v87;
  v178[0] = v88;
  v179 = v89;
  v180 = KeyPath;
  v181 = v81;
  v182 = v83;
  v183 = 0;
  v184 = 0;
  *v185 = v165[0];
  *&v185[3] = *(v165 + 3);
  v186 = v80;
  *&v187[3] = *&v164[3];
  *v187 = *v164;
  v188 = v90;
  v189 = v91;
  v190 = v92;
  v191 = v93;
  v192 = 0;
  sub_10001B104(&v168, v135, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v172, v135, &qword_1008F6C90, &qword_1007015E0);
  sub_10000EA04(v178, &qword_1008F6C90, &qword_1007015E0);
  v135[0] = v112;
  v135[1] = v84;
  v136 = v73;
  *v137 = *v195;
  *&v137[3] = *&v195[3];
  v138 = v133;
  v139 = v64;
  *v140 = *v194;
  *&v140[3] = *&v194[3];
  v141 = v66;
  v142 = v68;
  v143 = v70;
  v144 = v72;
  v145 = 0;
  return sub_10000EA04(v135, &qword_1008DC4C0, &unk_1006D4960);
}

__n128 sub_100622CA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v93 = *(BaselineComparison - 8);
  v94 = BaselineComparison;
  __chkstk_darwin(BaselineComparison);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v8 = *(DataType - 8);
  v103 = DataType;
  v104 = v8;
  __chkstk_darwin(DataType);
  v102 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v98 = *(ViewModel - 8);
  v99 = ViewModel;
  __chkstk_darwin(ViewModel);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v85 - v13;
  v15 = sub_100140278(&qword_1008F36C0, &qword_1006FAB70);
  __chkstk_darwin(v15 - 8);
  v17 = &v85 - v16;
  v18 = sub_100140278(&qword_1008F36C8, &qword_1006FAB78);
  __chkstk_darwin(v18 - 8);
  v91 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v97 = &v85 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for LoadCardView(0) + 28);
  v100 = a1;
  v27 = a1 + v26;
  v28 = *v27;
  v101 = *(v27 + 8);
  v96 = v22;
  if (v101 == 1)
  {
    v125 = v28;
    v29 = v28;
  }

  else
  {

    v30 = static os_log_type_t.fault.getter();
    v31 = v23;
    v32 = v22;
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v34 = sub_1000A73A4(v28, 0);
    v35 = v32;
    v23 = v31;
    (*(v31 + 8))(v25, v35, v34);
    v29 = v125;
  }

  v36 = dispatch thunk of TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.getter();

  if ((v36 & 1) == 0)
  {
    v90 = a2;
    v85 = v23;
    if (v101)
    {
      v119 = v28;
      v43 = v28;
    }

    else
    {

      v44 = static os_log_type_t.fault.getter();
      v45 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v46 = sub_1000A73A4(v28, 0);
      (*(v23 + 8))(v25, v96, v46);
      v43 = v119;
    }

    v48 = v103;
    v47 = v104;
    v49 = *(v104 + 104);
    v50 = v102;
    v88 = enum case for TrainingLoadDataType.workout(_:);
    v89 = v104 + 104;
    v87 = v49;
    v49(v102);
    dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

    v86 = *(v47 + 8);
    v104 = v47 + 8;
    v86(v50, v48);
    TrainingLoadViewModel.trainingLoadDaySummaryForToday.getter();
    v51 = v99;
    v52 = *(v98 + 1);
    v52(v14, v99);
    SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
    v54 = *(SampleDaySummary - 8);
    if ((*(v54 + 48))(v17, 1, SampleDaySummary) == 1)
    {
      sub_10000EA04(v17, &qword_1008F36C0, &qword_1006FAB70);
      ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
      v56 = v97;
      (*(*(ChronicBaseline - 8) + 56))(v97, 1, 1, ChronicBaseline);
      sub_10000EA04(v56, &qword_1008F36C8, &qword_1006FAB78);
      if (v101)
      {
LABEL_11:
        v105._countAndFlagsBits = v28;
        countAndFlagsBits = v28;
LABEL_16:

        v71 = v102;
        v70 = v103;
        v87(v102, v88, v103);
        v72 = v95;
        dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

        v86(v71, v70);
        TrainingLoadViewModel.loadBandTodayLocalizedLongDescriptionInNonActiveState()();
        v52(v72, v51);
        v73 = String.uppercased()();

        v120 = v73;
        sub_10000FCBC();
        v74 = Text.init<A>(_:)();
        v76 = v75;
        LOBYTE(v70) = v77;
        v79 = v78;
        KeyPath = swift_getKeyPath();
        v81 = [objc_opt_self() secondaryLabelColor];
        v82 = Color.init(_:)();
        v112 = v70 & 1;
        v111 = 0;
        v113 = 1;
        v120._countAndFlagsBits = v74;
        v120._object = v76;
        v121.n128_u8[0] = v70 & 1;
        v121.n128_u64[1] = v79;
        *&v122 = KeyPath;
        *(&v122 + 1) = 4;
        LOBYTE(v123) = 0;
        *(&v123 + 1) = v82;
        LOBYTE(v124) = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v98 = v52;
      v58 = v92;
      TrainingLoadSampleDaySummary.trainingLoad.getter();
      (*(v54 + 8))(v17, SampleDaySummary);
      v59 = v97;
      TrainingLoadBaselineComparison.chronicBaseline.getter();
      (*(v93 + 8))(v58, v94);
      v60 = type metadata accessor for TrainingLoadChronicBaseline();
      v61 = *(v60 - 8);
      (*(v61 + 56))(v59, 0, 1, v60);
      v62 = v91;
      sub_100015E80(v59, v91, &qword_1008F36C8, &qword_1006FAB78);
      if ((*(v61 + 88))(v62, v60) == enum case for TrainingLoadChronicBaseline.available(_:))
      {
        sub_100623B6C(v100, &v120._countAndFlagsBits);
        v63 = v120;
        v64 = v121.n128_u8[0];
        v65 = v121.n128_u64[1];
        v66 = swift_getKeyPath();
        LOBYTE(v105._countAndFlagsBits) = v64;
        v113 = 0;
        v112 = 0;
        v120 = v63;
        v121.n128_u8[0] = v64;
        v121.n128_u64[1] = v65;
        *&v122 = v66;
        *(&v122 + 1) = 4;
        LOBYTE(v123) = 0;
        LOBYTE(v124) = 0;
LABEL_17:
        sub_100140278(&qword_1008F6C98, &qword_1007015E8);
        sub_100140278(&qword_1008F6CA0, &qword_1007015F0);
        sub_100627950();
        sub_100627A84();
        _ConditionalContent<>.init(storage:)();
        v107 = v116;
        v108 = v117;
        v109 = v118;
        v105 = v114;
        v106 = v115;
        v113 = 1;
        v110 = 1;
        sub_100140278(&qword_1008F6CC8, &qword_100701600);
        sub_100140278(&qword_1008F6CD0, qword_100701608);
        sub_100627B3C();
        sub_100627BF4();
        _ConditionalContent<>.init(storage:)();
        a2 = v90;
        goto LABEL_18;
      }

      (*(v61 + 8))(v62, v60);
      v52 = v98;
      if (v101)
      {
        goto LABEL_11;
      }
    }

    v67 = static os_log_type_t.fault.getter();
    v68 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v68, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v69 = sub_1000A73A4(v28, 0);
    (*(v85 + 8))(v25, v96, v69);
    countAndFlagsBits = v105._countAndFlagsBits;
    goto LABEL_16;
  }

  sub_10062382C(&v120);
  v37 = v120;
  v38 = v121.n128_u8[0];
  v39 = v121.n128_u64[1];
  v40 = swift_getKeyPath();
  v41 = [objc_opt_self() secondaryLabelColor];
  v42 = Color.init(_:)();
  LOBYTE(v119) = v38;
  v113 = 0;
  LOBYTE(v114._countAndFlagsBits) = 0;
  v105 = v37;
  LOBYTE(v106) = v38;
  *(&v106 + 1) = v39;
  *&v107 = v40;
  *(&v107 + 1) = 4;
  LOBYTE(v108) = 0;
  *(&v108 + 1) = v42;
  v110 = 0;
  sub_100140278(&qword_1008F6CC8, &qword_100701600);
  sub_100140278(&qword_1008F6CD0, qword_100701608);
  sub_100627B3C();
  sub_100627BF4();
  _ConditionalContent<>.init(storage:)();
LABEL_18:
  v83 = v123;
  *(a2 + 32) = v122;
  *(a2 + 48) = v83;
  *(a2 + 64) = v124;
  result = v121;
  *a2 = v120;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10062382C@<X0>(unint64_t *a1@<X8>)
{
  v48 = a1;
  v43 = type metadata accessor for LocalizationFeature();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1006205F8();
  v50 = v5;
  v42 = sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v16 = static Text.+ infix(_:_:)();
  v46 = v17;
  v47 = v16;
  v44 = v18;
  v45 = v19;
  sub_10004642C(v11, v13, v15 & 1);

  sub_10004642C(v6, v8, v10 & 1);

  v20 = v43;
  (*(v2 + 104))(v4, enum case for LocalizationFeature.workout(_:), v43);
  v21 = static Localization.workoutUILocalizedString(_:feature:)();
  v23 = v22;
  (*(v2 + 8))(v4, v20);
  v49 = v21;
  v50 = v23;
  v24 = Text.init<A>(_:)();
  v26 = v25;
  LOBYTE(v11) = v27;
  v28 = [objc_opt_self() secondaryLabelColor];
  v49 = Color.init(_:)();
  v29 = Text.foregroundStyle<A>(_:)();
  v31 = v30;
  v33 = v32;
  sub_10004642C(v24, v26, v11 & 1);

  LOBYTE(v24) = v44;
  v34 = v46;
  v35 = v47;
  v42 = static Text.+ infix(_:_:)();
  v43 = v36;
  v38 = v37;
  LOBYTE(v26) = v39;
  sub_10004642C(v29, v31, v33 & 1);

  sub_10004642C(v35, v34, v24 & 1);

  v41 = v48;
  *v48 = v42;
  v41[1] = v38;
  *(v41 + 16) = v26 & 1;
  v41[3] = v43;
  return result;
}

uint64_t sub_100623B6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v4 = type metadata accessor for LocalizationFeature();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v7 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v14 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1006205F8();
  v83 = v17;
  v77 = sub_10000FCBC();
  v18 = Text.init<A>(_:)();
  v75 = v19;
  v76 = v18;
  LODWORD(v74) = v20;
  v21 = a1 + *(type metadata accessor for LoadCardView(0) + 28);
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    v23 = v22;
  }

  else
  {

    v24 = static os_log_type_t.fault.getter();
    v71 = v10;
    v25 = v24;
    v26 = static Log.runtimeIssuesLog.getter();
    v72 = v9;
    v27 = ViewModel;
    v28 = v26;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    ViewModel = v27;
    v9 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v29 = sub_1000A73A4(v22, 0);
    (*(v73 + 8))(v12, v71, v29);
    v23 = v82;
  }

  (*(v7 + 104))(v9, enum case for TrainingLoadDataType.workout(_:), DataType);
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v7 + 8))(v9, DataType);
  View = TrainingLoadViewModel.loadBandTodayColor()();
  (*(v14 + 8))(v16, ViewModel);
  v82 = View;
  v31 = v74;
  v33 = v75;
  v32 = v76;
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  v38 = v37;
  sub_10004642C(v32, v33, v31 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  LOBYTE(View) = v42;
  v43 = static Text.+ infix(_:_:)();
  v75 = v44;
  v76 = v43;
  LODWORD(v73) = v45;
  v74 = v46;
  sub_10004642C(v39, v41, View & 1);

  sub_10004642C(v34, v36, v38 & 1);

  v48 = v78;
  v47 = v79;
  v49 = v80;
  (*(v79 + 104))(v78, enum case for LocalizationFeature.workout(_:), v80);
  v50 = static Localization.workoutUILocalizedString(_:feature:)();
  v52 = v51;
  (*(v47 + 8))(v48, v49);
  v82 = v50;
  v83 = v52;
  v53 = Text.init<A>(_:)();
  v55 = v54;
  LOBYTE(v49) = v56;
  v57 = [objc_opt_self() secondaryLabelColor];
  v82 = Color.init(_:)();
  v58 = Text.foregroundStyle<A>(_:)();
  v60 = v59;
  LOBYTE(v41) = v61;
  sub_10004642C(v53, v55, v49 & 1);

  v63 = v75;
  v62 = v76;
  v64 = static Text.+ infix(_:_:)();
  v66 = v65;
  LOBYTE(v49) = v67;
  v80 = v68;
  sub_10004642C(v58, v60, v41 & 1);

  sub_10004642C(v62, v63, v73 & 1);

  v70 = v81;
  *v81 = v64;
  v70[1] = v66;
  *(v70 + 16) = v49 & 1;
  v70[3] = v80;
  return result;
}

uint64_t sub_100624200@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  CardView = type metadata accessor for LoadCardView(0);
  v3 = CardView - 8;
  v24 = *(CardView - 8);
  v22 = *(v24 + 64);
  __chkstk_darwin(CardView);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008F6B08, &qword_1007013F8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (&v22 - v8);
  v10 = sub_100140278(&qword_1008F6B10, &qword_100701400);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v25 = sub_100140278(&qword_1008F6B18, &qword_100701408);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v22 - v13;
  sub_100624580(v1, v9);
  *(v9 + *(v7 + 44)) = 0;
  sub_10001B104(v1 + *(v3 + 32), v27, &qword_1008DC808, &unk_1006D4FD0);
  v15 = v28 != 0;
  sub_10000EA04(v27, &qword_1008DC808, &unk_1006D4FD0);
  sub_100015E80(v9, v12, &qword_1008F6B08, &qword_1007013F8);
  v12[*(v10 + 36)] = v15;
  sub_1006272D8(v1, v5);
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = swift_allocObject();
  sub_10062733C(v5, v17 + v16);
  sub_1006273B8();
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v12, &qword_1008F6B10, &qword_100701400);
  sub_1006272D8(v1, v5);
  v18 = swift_allocObject();
  sub_10062733C(v5, v18 + v16);
  v19 = v26;
  (*(v23 + 32))(v26, v14, v25);
  result = sub_100140278(&qword_1008F6B68, &qword_100701428);
  v21 = (v19 + *(result + 36));
  *v21 = sub_100627634;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = 0;
  return result;
}

void *sub_100624580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v43 = a1;
  CardView = type metadata accessor for LoadCardView(0);
  v36 = *(CardView - 8);
  __chkstk_darwin(CardView - 8);
  v37 = v4;
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AdaptiveStackType();
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v42 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008F6B60, &qword_100701420);
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v39 = &v31 - v15;
  v41 = sub_100140278(&qword_1008F6B70, &qword_100701458);
  __chkstk_darwin(v41);
  v17 = &v31 - v16;
  if (qword_1008DA938 != -1)
  {
    swift_once();
  }

  v18 = qword_100925688;
  swift_getKeyPath();
  v44 = v18;
  sub_100080048(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler, &unk_1006E9E60);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v18 + 16))
  {
    v32 = v14;
    v33 = a2;
    sub_10005491C(v11);
    v19 = *(v6 + 104);
    v19(v8, enum case for DynamicTypeSize.accessibility1(_:), v5);
    v20 = static DynamicTypeSize.< infix(_:_:)();
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    v22 = &enum case for AdaptiveStackType.horizontal(_:);
    if ((v20 & 1) == 0)
    {
      v22 = &enum case for AdaptiveStackType.vertical(_:);
    }

    (*(v34 + 104))(v42, *v22, v35);
    sub_10005491C(v11);
    v19(v8, enum case for DynamicTypeSize.xLarge(_:), v5);
    v23 = static DynamicTypeSize.< infix(_:_:)();
    v21(v8, v5);
    v21(v11, v5);
    if (v23)
    {
      static VerticalAlignment.center.getter();
    }

    else
    {
      static VerticalAlignment.top.getter();
    }

    v25 = v32;
    static HorizontalAlignment.leading.getter();
    v26 = v38;
    sub_1006272D8(v43, v38);
    v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v28 = swift_allocObject();
    sub_10062733C(v26, v28 + v27);
    sub_100140278(&qword_1008F6B78, &qword_100701488);
    sub_10014A6B0(&qword_1008F6B80, &qword_1008F6B78, &qword_100701488, &protocol conformance descriptor for TupleView<A>);
    v29 = v39;
    AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
    v30 = v40;
    (*(v40 + 16))(v17, v29, v25);
    swift_storeEnumTagMultiPayload();
    sub_1006275E0();
    sub_10014A6B0(&qword_1008F6B58, &qword_1008F6B60, &qword_100701420, &protocol conformance descriptor for AdaptiveStack<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 8))(v29, v25);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1006275E0();
    sub_10014A6B0(&qword_1008F6B58, &qword_1008F6B60, &qword_100701420, &protocol conformance descriptor for AdaptiveStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100624BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = sub_100140278(&qword_1008F6B88, &qword_100701490);
  __chkstk_darwin(v3 - 8);
  v108 = (&v91 - v4);
  v107 = sub_100140278(&qword_1008F6B90, &qword_100701498);
  __chkstk_darwin(v107);
  v110 = &v91 - v5;
  v109 = sub_100140278(&qword_1008F6B98, &qword_1007014A0);
  __chkstk_darwin(v109);
  v113 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v91 - v8;
  __chkstk_darwin(v9);
  v112 = &v91 - v10;
  v106 = type metadata accessor for DynamicTypeSize();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v91 - v13;
  v14 = sub_100140278(&qword_1008F6BA0, &qword_1007014A8);
  __chkstk_darwin(v14 - 8);
  v115 = &v91 - v15;
  DataType = type metadata accessor for TrainingLoadDataType();
  v16 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v92 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayView = type metadata accessor for TrainingLoadDayView();
  v98 = *(DayView - 8);
  __chkstk_darwin(DayView);
  v95 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100140278(&qword_1008F6BA8, &qword_1007014B0);
  __chkstk_darwin(v96);
  v102 = &v91 - v26;
  v101 = sub_100140278(&qword_1008F6BB0, &qword_1007014B8);
  __chkstk_darwin(v101);
  v104 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v100 = &v91 - v29;
  __chkstk_darwin(v30);
  v116 = &v91 - v31;
  v32 = *(type metadata accessor for LoadCardView(0) + 28);
  v117 = a1;
  v33 = a1 + v32;
  v34 = *v33;
  v35 = *(v33 + 8);
  v91 = v20;
  if (v35 == 1)
  {
    v36 = v19;
    v37 = v34;
  }

  else
  {

    v38 = static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v40 = sub_1000A73A4(v34, 0);
    v41 = *(v20 + 8);
    v36 = v19;
    v41(v22, v19, v40);
    v37 = v121;
  }

  v42 = DataType;
  (*(v16 + 104))(v18, enum case for TrainingLoadDataType.workout(_:), DataType);
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v16 + 8))(v18, v42);
  TrainingLoadViewModel.fractionalBaselineDifferenceFromChronicForToday.getter();
  (*(v92 + 8))(v24, ViewModel);
  v43 = type metadata accessor for WidgetRenderingMode();
  (*(*(v43 - 8) + 56))(v115, 1, 1, v43);
  if (v35)
  {
    v44 = v34;
  }

  else
  {

    v45 = static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v46, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v47 = sub_1000A73A4(v34, 0);
    (*(v91 + 8))(v22, v36, v47);
    v44 = v121;
  }

  dispatch thunk of TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.getter();

  v48 = v95;
  TrainingLoadDayView.init(fractionalDifferenceFromAcuteToChronicBaseline:widgetRenderingMode:isLoading:)();
  v49 = v97;
  sub_10005491C(v97);
  v50 = enum case for DynamicTypeSize.accessibility1(_:);
  v51 = v105;
  v115 = *(v105 + 104);
  v52 = v103;
  LODWORD(DataType) = enum case for DynamicTypeSize.accessibility1(_:);
  v53 = v106;
  (v115)(v103, enum case for DynamicTypeSize.accessibility1(_:), v106);
  static DynamicTypeSize.< infix(_:_:)();
  v54 = *(v51 + 8);
  v54(v52, v53);
  v54(v49, v53);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = v102;
  (*(v98 + 32))(v102, v48, DayView);
  v56 = &v55[*(v96 + 36)];
  v57 = v119;
  *v56 = v118;
  *(v56 + 1) = v57;
  *(v56 + 2) = v120;
  sub_10005491C(v49);
  (v115)(v52, v50, v53);
  v58 = static DynamicTypeSize.< infix(_:_:)();
  v54(v52, v53);
  v54(v49, v53);
  if (v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = 0x4024000000000000;
  }

  if (v58)
  {
    v60 = 0x4028000000000000;
  }

  else
  {
    v60 = 0;
  }

  v61 = static Edge.Set.all.getter();
  v62 = v55;
  v63 = v100;
  sub_100015E80(v62, v100, &qword_1008F6BA8, &qword_1007014B0);
  v64 = v63 + *(v101 + 36);
  *v64 = v61;
  *(v64 + 8) = 0;
  *(v64 + 16) = 0;
  *(v64 + 24) = v59;
  *(v64 + 32) = v60;
  *(v64 + 40) = 0;
  sub_100015E80(v63, v116, &qword_1008F6BB0, &qword_1007014B8);
  v65 = static HorizontalAlignment.leading.getter();
  v66 = v108;
  *v108 = v65;
  *(v66 + 8) = 0x4000000000000000;
  *(v66 + 16) = 0;
  v67 = sub_100140278(&qword_1008F6BB8, &qword_1007014C0);
  sub_100625968(v117, (v66 + *(v67 + 44)));
  v68 = static Edge.Set.top.getter();
  sub_10005491C(v49);
  (v115)(v52, DataType, v53);
  static DynamicTypeSize.< infix(_:_:)();
  v54(v52, v53);
  v54(v49, v53);
  EdgeInsets.init(_all:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v110;
  sub_100015E80(v66, v110, &qword_1008F6B88, &qword_100701490);
  v78 = v77 + *(v107 + 36);
  *v78 = v68;
  *(v78 + 8) = v70;
  *(v78 + 16) = v72;
  *(v78 + 24) = v74;
  *(v78 + 32) = v76;
  *(v78 + 40) = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v79 = v111;
  sub_100015E80(v77, v111, &qword_1008F6B90, &qword_100701498);
  v80 = (v79 + *(v109 + 36));
  v81 = v126;
  v80[4] = v125;
  v80[5] = v81;
  v80[6] = v127;
  v82 = v122;
  *v80 = v121;
  v80[1] = v82;
  v83 = v124;
  v80[2] = v123;
  v80[3] = v83;
  v84 = v112;
  sub_100015E80(v79, v112, &qword_1008F6B98, &qword_1007014A0);
  v85 = v116;
  v86 = v104;
  sub_10001B104(v116, v104, &qword_1008F6BB0, &qword_1007014B8);
  v87 = v113;
  sub_10001B104(v84, v113, &qword_1008F6B98, &qword_1007014A0);
  v88 = v114;
  sub_10001B104(v86, v114, &qword_1008F6BB0, &qword_1007014B8);
  v89 = sub_100140278(&qword_1008F6BC0, &qword_1007014C8);
  sub_10001B104(v87, v88 + *(v89 + 48), &qword_1008F6B98, &qword_1007014A0);
  sub_10000EA04(v84, &qword_1008F6B98, &qword_1007014A0);
  sub_10000EA04(v85, &qword_1008F6BB0, &qword_1007014B8);
  sub_10000EA04(v87, &qword_1008F6B98, &qword_1007014A0);
  return sub_10000EA04(v86, &qword_1008F6BB0, &qword_1007014B8);
}

uint64_t sub_100625968@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v99 = sub_100140278(&qword_1008F6BC8, &qword_1007014D0);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v93 = &v83 - v4;
  v84 = sub_100140278(&qword_1008F6BD0, &qword_1007014D8);
  __chkstk_darwin(v84);
  v88 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v83 - v7;
  v8 = type metadata accessor for Divider();
  v86 = *(v8 - 8);
  v87 = v8;
  __chkstk_darwin(v8);
  v92 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v83 - v11;
  v100 = type metadata accessor for OvernightMetricsViewModel();
  v95 = *(v100 - 8);
  __chkstk_darwin(v100);
  v94 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v83 - v14;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100140278(&qword_1008F6BD8, &qword_1007014E0);
  __chkstk_darwin(v20 - 8);
  v98 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v96 = &v83 - v23;
  sub_100622118(a1, &v105);
  v24 = *(type metadata accessor for LoadCardView(0) + 28);
  v83 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  v27 = *(v25 + 8);
  v89 = v17;
  v90 = v16;
  if (v27 == 1)
  {
    v28 = v26;
  }

  else
  {

    v29 = static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage, v83);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v31 = sub_1000A73A4(v26, 0);
    (*(v17 + 8))(v19, v16, v31);
    v28 = *&v103[0];
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v32 = OvernightMetricsViewModel.isWatchExperienceAvailable.getter();

  v33 = *(v95 + 8);
  v33(v15, v100);
  if (v32 == 2 || (v32 & 1) == 0)
  {
    v35 = 1;
    v36 = v96;
  }

  else
  {
    if (v27)
    {
      v34 = v26;
    }

    else
    {

      v53 = static os_log_type_t.fault.getter();
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v55 = sub_1000A73A4(v26, 0);
      (*(v89 + 8))(v19, v90, v55);
      v34 = *&v103[0];
    }

    v56 = v94;
    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    v57 = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
    v33(v56, v100);
    v36 = v96;
    if (v57 == 2 || (v57 & 1) != 0)
    {
      v35 = 1;
    }

    else
    {
      v58 = v91;
      Divider.init()();
      v59 = static Axis.Set.horizontal.getter();
      v60 = v85;
      *v85 = v59;
      v61 = sub_100140278(&qword_1008F6BF0, &qword_1007014F8);
      sub_100626274(v83, v60 + *(v61 + 44));
      v62 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = v60 + *(sub_100140278(&qword_1008F6BF8, &qword_100701500) + 36);
      *v71 = v62;
      *(v71 + 8) = v64;
      *(v71 + 16) = v66;
      *(v71 + 24) = v68;
      *(v71 + 32) = v70;
      *(v71 + 40) = 0;
      v72 = static Font.subheadline.getter();
      KeyPath = swift_getKeyPath();
      v74 = (v60 + *(v84 + 36));
      *v74 = KeyPath;
      v74[1] = v72;
      v75 = v86;
      v76 = v87;
      v77 = *(v86 + 16);
      v78 = v92;
      v77(v92, v58, v87);
      v79 = v88;
      sub_10001B104(v60, v88, &qword_1008F6BD0, &qword_1007014D8);
      v77(v93, v78, v76);
      v80 = sub_100140278(&qword_1008F6C00, &qword_100701538);
      v81 = v93;
      sub_10001B104(v79, &v93[*(v80 + 48)], &qword_1008F6BD0, &qword_1007014D8);
      sub_10000EA04(v60, &qword_1008F6BD0, &qword_1007014D8);
      v82 = *(v75 + 8);
      v82(v91, v76);
      sub_10000EA04(v79, &qword_1008F6BD0, &qword_1007014D8);
      v82(v92, v76);
      sub_100015E80(v81, v36, &qword_1008F6BC8, &qword_1007014D0);
      v35 = 0;
    }
  }

  (*(v97 + 56))(v36, v35, 1, v99);
  v37 = v98;
  sub_10001B104(v36, v98, &qword_1008F6BD8, &qword_1007014E0);
  v38 = v118[0];
  v101[12] = v117;
  v102[0] = v118[0];
  *(v102 + 9) = *(v118 + 9);
  v39 = v113;
  v40 = v114;
  v101[8] = v113;
  v101[9] = v114;
  v42 = v115;
  v41 = v116;
  v101[10] = v115;
  v101[11] = v116;
  v43 = v109;
  v44 = v110;
  v101[4] = v109;
  v101[5] = v110;
  v46 = v111;
  v45 = v112;
  v101[6] = v111;
  v101[7] = v112;
  v47 = v105;
  v48 = v106;
  v101[0] = v105;
  v101[1] = v106;
  v50 = v107;
  v49 = v108;
  v101[2] = v107;
  v101[3] = v108;
  a2[12] = v117;
  a2[13] = v38;
  *(a2 + 217) = *(v118 + 9);
  a2[8] = v39;
  a2[9] = v40;
  a2[10] = v42;
  a2[11] = v41;
  a2[4] = v43;
  a2[5] = v44;
  a2[6] = v46;
  a2[7] = v45;
  *a2 = v47;
  a2[1] = v48;
  a2[2] = v50;
  a2[3] = v49;
  v51 = sub_100140278(&qword_1008F6BE0, &qword_1007014E8);
  sub_10001B104(v37, a2 + *(v51 + 48), &qword_1008F6BD8, &qword_1007014E0);
  sub_10001B104(v101, v103, &qword_1008F6BE8, &qword_1007014F0);
  sub_10000EA04(v36, &qword_1008F6BD8, &qword_1007014E0);
  sub_10000EA04(v37, &qword_1008F6BD8, &qword_1007014E0);
  v103[12] = v117;
  v104[0] = v118[0];
  *(v104 + 9) = *(v118 + 9);
  v103[8] = v113;
  v103[9] = v114;
  v103[10] = v115;
  v103[11] = v116;
  v103[4] = v109;
  v103[5] = v110;
  v103[6] = v111;
  v103[7] = v112;
  v103[0] = v105;
  v103[1] = v106;
  v103[2] = v107;
  v103[3] = v108;
  return sub_10000EA04(v103, &qword_1008F6BE8, &qword_1007014F0);
}

uint64_t sub_100626274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F6C08, &qword_100701540);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_100140278(&qword_1008F6C10, &qword_100701548);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100140278(&qword_1008F6C18, &qword_100701550);
  sub_1006264BC(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_100140278(&qword_1008F6C20, &qword_100701558);
  sub_100626948(a1, &v9[*(v17 + 44)]);
  sub_10001B104(v15, v12, &qword_1008F6C10, &qword_100701548);
  sub_10001B104(v9, v6, &qword_1008F6C08, &qword_100701540);
  sub_10001B104(v12, a2, &qword_1008F6C10, &qword_100701548);
  v18 = sub_100140278(&qword_1008F6C28, &qword_100701560);
  sub_10001B104(v6, a2 + *(v18 + 48), &qword_1008F6C08, &qword_100701540);
  sub_10000EA04(v9, &qword_1008F6C08, &qword_100701540);
  sub_10000EA04(v15, &qword_1008F6C10, &qword_100701548);
  sub_10000EA04(v6, &qword_1008F6C08, &qword_100701540);
  return sub_10000EA04(v12, &qword_1008F6C10, &qword_100701548);
}

uint64_t sub_1006264BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_100140278(&qword_1008F6C80, &qword_1007015D0);
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OvernightMetricsViewModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LoadCardView(0) + 28);
  v50 = a1;
  v17 = a1 + v16;
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {

    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v22 = sub_1000A73A4(v18, 0);
    (*(v9 + 8))(v11, v8, v22);
    v19 = v55;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v23 = OvernightMetricsViewModel.localizedTitle.getter();
  v25 = v24;
  (*(v13 + 8))(v15, v12);
  v55 = v23;
  v56 = v25;
  sub_10000FCBC();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  v31 = [objc_opt_self() secondaryLabelColor];
  v55 = Color.init(_:)();
  v32 = Text.foregroundStyle<A>(_:)();
  v48 = v32;
  v34 = v33;
  v49 = v35;
  v37 = v36;
  sub_10004642C(v26, v28, v30 & 1);

  v38 = sub_100620F80(v7);
  v40 = v52;
  v39 = v53;
  v41 = *(v53 + 16);
  v42 = v54;
  v41(v52, v7, v54, v38);
  v43 = v51;
  *v51 = v32;
  v43[1] = v34;
  LOBYTE(v32) = v49 & 1;
  *(v43 + 16) = v49 & 1;
  v43[3] = v37;
  v43[4] = 0;
  *(v43 + 40) = 1;
  v44 = sub_100140278(&qword_1008F6C88, &qword_1007015D8);
  (v41)(v43 + *(v44 + 64), v40, v42);
  v45 = v48;
  sub_10006965C(v48, v34, v32);
  v46 = *(v39 + 8);

  v46(v7, v42);
  v46(v40, v42);
  sub_10004642C(v45, v34, v32);
}

uint64_t sub_100626948@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v54 = sub_100140278(&qword_1008F6C30, &qword_100701568);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v49 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OvernightMetricsViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for LoadCardView(0) + 28);
  v53 = a1;
  v15 = a1 + v14;
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v71 = *v15;
    v17 = v16;
  }

  else
  {

    v18 = static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v20 = sub_1000A73A4(v16, 0);
    (*(v7 + 8))(v9, v6, v20);
    v17 = v71;
  }

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v21 = OvernightMetricsViewModel.localizedTitle.getter();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  v60 = v21;
  v61 = v23;
  sub_10000FCBC();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v29 = [objc_opt_self() secondaryLabelColor];
  v60 = Color.init(_:)();
  v30 = Text.foregroundStyle<A>(_:)();
  v51 = v30;
  v32 = v31;
  v50 = v31;
  v34 = v33;
  v36 = v35;
  sub_10004642C(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v76 = v34 & 1;
  v72 = 0;
  v38 = v55;
  sub_100620F80(v55);
  *(v38 + *(sub_100140278(&qword_1008F6C38, &qword_1007015A0) + 36)) = 256;
  v39 = swift_getKeyPath();
  v40 = v38 + *(v54 + 36);
  *v40 = v39;
  *(v40 + 8) = 4;
  *(v40 + 16) = 0;
  v41 = v52;
  sub_10001B104(v38, v52, &qword_1008F6C30, &qword_100701568);
  *&v57 = v30;
  *(&v57 + 1) = v32;
  LOBYTE(v58) = v34 & 1;
  v42 = v41;
  *(&v58 + 1) = *v75;
  DWORD1(v58) = *&v75[3];
  *(&v58 + 1) = v36;
  *v59 = 256;
  *&v59[2] = v73;
  *&v59[6] = v74;
  *&v59[8] = KeyPath;
  *&v59[16] = 4;
  v59[24] = 0;
  v43 = v57;
  v44 = v58;
  v45 = *v59;
  v46 = v56;
  *(v56 + 41) = *&v59[9];
  v46[1] = v44;
  v46[2] = v45;
  *v46 = v43;
  v47 = sub_100140278(&qword_1008F6C40, &qword_1007015A8);
  sub_10001B104(v42, v46 + *(v47 + 48), &qword_1008F6C30, &qword_100701568);
  sub_10001B104(&v57, &v60, &qword_1008F6C48, &qword_1007015B0);
  sub_10000EA04(v38, &qword_1008F6C30, &qword_100701568);
  sub_10000EA04(v42, &qword_1008F6C30, &qword_100701568);
  v60 = v51;
  v61 = v50;
  v62 = v34 & 1;
  *v63 = *v75;
  *&v63[3] = *&v75[3];
  v64 = v36;
  v65 = 256;
  v66 = v73;
  v67 = v74;
  v68 = KeyPath;
  v69 = 4;
  v70 = 0;
  return sub_10000EA04(&v60, &qword_1008F6C48, &qword_1007015B0);
}

uint64_t sub_100626ED0(uint64_t a1)
{
  CardView = type metadata accessor for LoadCardView(0);
  sub_10001B104(a1 + *(CardView + 24), v7, &qword_1008DC808, &unk_1006D4FD0);
  if (!v8)
  {
    return sub_10000EA04(v7, &qword_1008DC808, &unk_1006D4FD0);
  }

  v3 = sub_1000066AC(v7, v8);
  v4 = *(CardView + 20);
  memset(v6, 0, sizeof(v6));
  sub_1004A4304(a1 + v4, v6, *v3);
  sub_10000EA04(v6, &qword_1008E51F0, qword_1006D50E0);
  return sub_100005A40(v7);
}

void sub_100626F8C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for LoadCardView(0) + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8 == 1)
  {
    v9 = v7;
  }

  else
  {

    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v12 = sub_1000A73A4(v7, 0);
    (*(v3 + 8))(v5, v2, v12);
    v9 = v23;
  }

  swift_getKeyPath();
  v23 = v9;
  sub_100080048(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v9[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter + 9] << 8;

  if (v13 != 768)
  {
    if (v8)
    {
      v14 = v7;
    }

    else
    {

      v15 = static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v17 = sub_1000A73A4(v7, 0);
      (*(v3 + 8))(v5, v2, v17);
      v14 = v23;
    }

    sub_1001D5568(0, 768);
  }

  if (v8)
  {
    v18 = v7;
  }

  else
  {

    v19 = static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v21 = sub_1000A73A4(v7, 0);
    (*(v3 + 8))(v5, v2, v21);
    v18 = v23;
  }

  sub_1001D9610();
}

uint64_t sub_1006272D8(uint64_t a1, uint64_t a2)
{
  CardView = type metadata accessor for LoadCardView(0);
  (*(*(CardView - 8) + 16))(a2, a1, CardView);
  return a2;
}

uint64_t sub_10062733C(uint64_t a1, uint64_t a2)
{
  CardView = type metadata accessor for LoadCardView(0);
  (*(*(CardView - 8) + 32))(a2, a1, CardView);
  return a2;
}

unint64_t sub_1006273B8()
{
  result = qword_1008F6B20;
  if (!qword_1008F6B20)
  {
    sub_100141EEC(&qword_1008F6B10, &qword_100701400);
    sub_100627444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6B20);
  }

  return result;
}

unint64_t sub_100627444()
{
  result = qword_1008F6B28;
  if (!qword_1008F6B28)
  {
    sub_100141EEC(&qword_1008F6B08, &qword_1007013F8);
    sub_100627814(&qword_1008F6B30, &qword_1008F6B38, &qword_100701410, sub_100627528);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840, &qword_1006D4FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6B28);
  }

  return result;
}

unint64_t sub_100627528()
{
  result = qword_1008F6B40;
  if (!qword_1008F6B40)
  {
    sub_100141EEC(&qword_1008F6B48, &qword_100701418);
    sub_1006275E0();
    sub_10014A6B0(&qword_1008F6B58, &qword_1008F6B60, &qword_100701420, &protocol conformance descriptor for AdaptiveStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6B40);
  }

  return result;
}

unint64_t sub_1006275E0()
{
  result = qword_1008F6B50;
  if (!qword_1008F6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6B50);
  }

  return result;
}

uint64_t sub_10062764C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LoadCardView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1006276C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100624BE0(v4, a1);
}

unint64_t sub_100627730()
{
  result = qword_1008F6C58;
  if (!qword_1008F6C58)
  {
    sub_100141EEC(&qword_1008F6C50, &qword_1007015B8);
    sub_100627814(&qword_1008F6C60, &qword_1008F6C68, &qword_1007015C0, sub_100627890);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6C58);
  }

  return result;
}

uint64_t sub_100627814(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100627890()
{
  result = qword_1008F6C70;
  if (!qword_1008F6C70)
  {
    sub_100141EEC(&qword_1008F6C78, &qword_1007015C8);
    sub_100335B80();
    sub_100627814(&qword_1008E9198, &qword_1008E91A0, &unk_1006E9C90, sub_100335B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6C70);
  }

  return result;
}

unint64_t sub_100627950()
{
  result = qword_1008F6CA8;
  if (!qword_1008F6CA8)
  {
    sub_100141EEC(&qword_1008F6C98, &qword_1007015E8);
    sub_100627A08();
    sub_10014A6B0(&qword_1008DCB40, &qword_1008DCB48, &unk_1006D5530, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6CA8);
  }

  return result;
}

unint64_t sub_100627A08()
{
  result = qword_1008F6CB0;
  if (!qword_1008F6CB0)
  {
    sub_100141EEC(&qword_1008F6CB8, &qword_1007015F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6CB0);
  }

  return result;
}

unint64_t sub_100627A84()
{
  result = qword_1008F6CC0;
  if (!qword_1008F6CC0)
  {
    sub_100141EEC(&qword_1008F6CA0, &qword_1007015F0);
    sub_10015EE70();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6CC0);
  }

  return result;
}

unint64_t sub_100627B3C()
{
  result = qword_1008F6CD8;
  if (!qword_1008F6CD8)
  {
    sub_100141EEC(&qword_1008F6CC8, &qword_100701600);
    sub_100627950();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6CD8);
  }

  return result;
}

unint64_t sub_100627BF4()
{
  result = qword_1008F6CE0;
  if (!qword_1008F6CE0)
  {
    sub_100141EEC(&qword_1008F6CD0, qword_100701608);
    sub_100627950();
    sub_100627A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6CE0);
  }

  return result;
}

unint64_t sub_100627C80()
{
  result = qword_1008F6CE8;
  if (!qword_1008F6CE8)
  {
    sub_100141EEC(&qword_1008F6B68, &qword_100701428);
    sub_100141EEC(&qword_1008F6B10, &qword_100701400);
    sub_1006273B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6CE8);
  }

  return result;
}

void *sub_100627D48(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_100007C5C(i, v5);
    sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
    sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_100627E8C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100627FF4(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000B1B4(i, v5);
    sub_1000059F8(0, &qword_1008F6D48, LSApplicationProxy_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_100628100()
{
  swift_getKeyPath();
  sub_100628FD0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled);
}

void sub_100628178(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100628FD0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled);
}

void sub_100628220(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100628FD0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

_BYTE *sub_100628308(uint64_t a1)
{
  ObservationRegistrar.init()();
  v2 = objc_opt_self();
  result = [v2 defaultWorkspace];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 applicationIsInstalled:v5];

  v1[OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled] = v6;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MessagesAppInstallationObserver(0);
  v7 = objc_msgSendSuper2(&v13, "init");
  result = [v2 defaultWorkspace];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  [result addObserver:v7];

  result = [v2 defaultWorkspace];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 applicationIsInstalled:v10];

  if (v11 == v7[OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled])
  {
    v7[OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled] = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100628FD0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v7;
}

void *sub_100628584(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 bundleIdentifier];
      if (v7)
      {
        v8 = v7;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        if (v9 == 0xD000000000000013 && 0x80000001007678F0 == v11)
        {

          return v5;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          return v5;
        }
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_1006286F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100628790, v6, v5);
}

uint64_t sub_100628790()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) == 1)
  {
    *(v1 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) = 1;
  }

  else
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_100628FD0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = v0[1];

  return v4();
}

double sub_1006288E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  swift_getObjectType();
  sub_100140278(&qword_1008E1760, &qword_1006D4490);
  *&result = __chkstk_darwin(a1).n128_u64[0];
  v11 = &v26 - v10;
  if (v8)
  {
    v12 = sub_100627FF4(v8);
    if (v12)
    {
      v13 = sub_100628584(v12);

      if (v13)
      {

        v14 = static os_log_type_t.default.getter();
        v15 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v14))
        {
          v26 = v15;
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v27 = v17;
          *v16 = 136315138;
          v18 = _typeName(_:qualified:)();
          v20 = sub_10000AFDC(v18, v19, &v27);

          *(v16 + 4) = v20;
          v21 = v26;
          _os_log_impl(&_mh_execute_header, v26, v14, a2, v16, 0xCu);
          sub_100005A40(v17);
        }

        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
        type metadata accessor for MainActor();
        v23 = v4;
        v24 = static MainActor.shared.getter();
        v25 = swift_allocObject();
        v25[2] = v24;
        v25[3] = &protocol witness table for MainActor;
        v25[4] = v23;
        sub_10026E198(0, 0, v11, a4, v25);
      }
    }
  }

  return result;
}

uint64_t sub_100628B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100628BCC, v6, v5);
}

uint64_t sub_100628BCC()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled))
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_100628FD0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100628CF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

id sub_100628D70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesAppInstallationObserver(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesAppInstallationObserver(uint64_t a1)
{
  result = qword_1008F6D28;
  if (!qword_1008F6D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100628E68(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100628F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100628B34(a1, v4, v5, v6);
}

unint64_t sub_100628FD0()
{
  result = qword_1008F6D40;
  if (!qword_1008F6D40)
  {
    type metadata accessor for MessagesAppInstallationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6D40);
  }

  return result;
}

uint64_t sub_100629028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1006286F8(a1, v4, v5, v6);
}

void sub_100629168(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v4 - 8);
  if (a2)
  {
    sub_100140278(&unk_1008F8F40, &unk_1006D50D0);
    v5 = a2;
    LocalizedStringResource.init(stringLiteral:)();
    EntityProperty<>.init(title:)();
    v6 = v5;

    [v6 unearned];
    EntityProperty.wrappedValue.setter();

    sub_10033A70C();
    sub_100140278(&unk_1008F8F50, &unk_1006E9DF0);
    sub_10033A764();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v7 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
    sub_10007151C();
    v8 = AppEntityViewAnnotation.init<A>(entity:state:)();
    UIView.annotate(with:)();
  }
}