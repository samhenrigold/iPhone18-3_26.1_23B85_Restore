double sub_100034D5C@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000BD050;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0;
  *(v16 + 56) = 8;
  v17 = type metadata accessor for HomePodSetupViewModel(0);
  v18 = v17[6];
  v19 = type metadata accessor for AdjustedMovie(0);
  (*(*(v19 - 8) + 56))(&a1[v18], 1, 1, v19);
  v20 = v17[28];
  v21 = type metadata accessor for AdjustedImage(0);
  (*(*(v21 - 8) + 56))(&a1[v20], 1, 1, v21);
  v22 = v17[58];
  v23 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v23 - 8) + 56))(&a1[v22], 1, 1, v23);
  v24 = &a1[v17[14]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v48);
  *a1 = v47;
  *(a1 + 1) = v5;
  *(a1 + 2) = v8;
  *(a1 + 3) = v10;
  v28 = &a1[v17[7]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  v29 = &a1[v17[8]];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  v30 = &a1[v17[9]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  *&a1[v17[10]] = v16;
  *&a1[v17[11]] = _swiftEmptyArrayStorage;
  *&a1[v17[12]] = _swiftEmptyArrayStorage;
  *&a1[v17[13]] = _swiftEmptyArrayStorage;
  *&a1[v17[15]] = _swiftEmptyArrayStorage;
  *&a1[v17[16]] = _swiftEmptyArrayStorage;
  a1[v17[17]] = Int64 != 0;
  v31 = &a1[v17[18]];
  *v31 = 0;
  v31[4] = 1;
  *&a1[v17[19]] = 1;
  v32 = &a1[v17[20]];
  v33 = v48[3];
  *(v32 + 2) = v48[2];
  *(v32 + 3) = v33;
  *(v32 + 4) = v48[4];
  v34 = v48[1];
  *v32 = v48[0];
  *(v32 + 1) = v34;
  v35 = &a1[v17[21]];
  result = 0.0;
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  *&a1[v17[22]] = 0;
  *&a1[v17[23]] = 0;
  v37 = &a1[v17[24]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a1[v17[25]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &a1[v17[26]];
  *v39 = 0;
  *(v39 + 1) = 0;
  a1[v17[27]] = 0;
  a1[v17[29]] = 0;
  *&a1[v17[30]] = 0;
  *&a1[v17[31]] = 0;
  v40 = &a1[v17[32]];
  *v40 = 0;
  v40[8] = 1;
  a1[v17[33]] = 0;
  a1[v17[34]] = 0;
  a1[v17[35]] = 0;
  *&a1[v17[36]] = 0;
  *&a1[v17[37]] = 0;
  v41 = &a1[v17[38]];
  *v41 = 0;
  *(v41 + 1) = 0xE000000000000000;
  a1[v17[39]] = 0;
  a1[v17[40]] = 0;
  *&a1[v17[41]] = 0;
  a1[v17[42]] = 0;
  a1[v17[43]] = 0;
  a1[v17[44]] = 0;
  v42 = &a1[v17[45]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  a1[v17[46]] = 0;
  v43 = &a1[v17[47]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  a1[v17[48]] = 0;
  v44 = &a1[v17[49]];
  *v44 = 0;
  *(v44 + 1) = 0;
  a1[v17[50]] = 0;
  *&a1[v17[51]] = 0;
  *&a1[v17[52]] = 0;
  v45 = &a1[v17[53]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *&a1[v17[54]] = 0;
  v46 = &a1[v17[55]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  *&a1[v17[56]] = 0;
  a1[v17[57]] = 1;
  return result;
}

uint64_t sub_10003521C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  __chkstk_darwin(v4 - 8);
  v55 = &v52 - v5;
  if (qword_1001015F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100101EF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupViewModel: createDone2ViewModel", v9, 2u);
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = type metadata accessor for HomePodSetupViewModel(0);
  v21 = v20[6];
  v22 = type metadata accessor for AdjustedMovie(0);
  (*(*(v22 - 8) + 56))(&a2[v21], 1, 1, v22);
  sub_10003ACF0(a1);
  v24 = v23;
  sub_10004E01C(0, 0, &a2[v20[28]]);
  v25 = v20[58];
  v54 = v25;
  v26 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v26 - 8) + 56))(&a2[v25], 1, 1, v26);
  v27 = &a2[v20[14]];
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();
  v53 = a1;
  v31 = Int64;

  sub_1000660A0(v56);
  *a2 = v12;
  *(a2 + 1) = v14;
  *(a2 + 2) = v17;
  *(a2 + 3) = v19;
  v32 = &a2[v20[7]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  v33 = &a2[v20[8]];
  *v33 = 0;
  *(v33 + 1) = 0xE000000000000000;
  v34 = &a2[v20[9]];
  *v34 = 0;
  *(v34 + 1) = 0xE000000000000000;
  *&a2[v20[10]] = v24;
  *&a2[v20[11]] = _swiftEmptyArrayStorage;
  *&a2[v20[12]] = _swiftEmptyArrayStorage;
  *&a2[v20[13]] = _swiftEmptyArrayStorage;
  *&a2[v20[15]] = _swiftEmptyArrayStorage;
  *&a2[v20[16]] = _swiftEmptyArrayStorage;
  a2[v20[17]] = v31 != 0;
  v35 = &a2[v20[18]];
  *v35 = 0;
  v35[4] = 1;
  *&a2[v20[19]] = 1;
  v36 = &a2[v20[20]];
  v37 = v56[3];
  *(v36 + 2) = v56[2];
  *(v36 + 3) = v37;
  *(v36 + 4) = v56[4];
  v38 = v56[1];
  *v36 = v56[0];
  *(v36 + 1) = v38;
  v39 = &a2[v20[21]];
  *(v39 + 3) = 0u;
  *(v39 + 4) = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 2) = 0u;
  *v39 = 0u;
  *&a2[v20[22]] = 0;
  *&a2[v20[23]] = 0;
  v40 = &a2[v20[24]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &a2[v20[25]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &a2[v20[26]];
  *v42 = 0;
  *(v42 + 1) = 0;
  a2[v20[27]] = 0;
  a2[v20[29]] = 0;
  *&a2[v20[30]] = 0;
  *&a2[v20[31]] = 0;
  v43 = &a2[v20[32]];
  *v43 = 0;
  v43[8] = 1;
  a2[v20[33]] = 0;
  a2[v20[34]] = 0;
  a2[v20[35]] = 0;
  *&a2[v20[36]] = 0;
  *&a2[v20[37]] = 0;
  v44 = &a2[v20[38]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  a2[v20[39]] = 0;
  a2[v20[40]] = 0;
  *&a2[v20[41]] = 0;
  a2[v20[42]] = 0;
  a2[v20[43]] = 0;
  a2[v20[44]] = 0;
  v45 = &a2[v20[45]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  a2[v20[46]] = 0;
  v46 = &a2[v20[47]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  a2[v20[48]] = 0;
  v47 = &a2[v20[49]];
  *v47 = 0;
  *(v47 + 1) = 0;
  a2[v20[50]] = 0;
  *&a2[v20[51]] = 0;
  *&a2[v20[52]] = 0;
  v48 = &a2[v20[53]];
  *v48 = 0;
  *(v48 + 1) = 0;
  *&a2[v20[54]] = 0;
  v49 = &a2[v20[55]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  *&a2[v20[56]] = 0;
  a2[v20[57]] = 1;
  v50 = v55;
  sub_1000379DC(v53, 0, 0, v55);
  return sub_10003A9C0(v50, &a2[v54]);
}

__n128 sub_10003576C@<Q0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (qword_1001015F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100101EF0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupViewModel: createSoftwareUpdateForHomePodViewModel2", v6, 2u);
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v10;
  v83 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100006658(v16);

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v19;
  v78 = v18;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000BD050;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_100006658(v21);

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = sub_1000535F8(1, 2, 1, v20);
  v26[2] = 2;
  v26[8] = v23;
  v26[9] = v25;
  v26[10] = 1;
  *(v26 + 88) = 2;
  v27 = [objc_opt_self() systemFontOfSize:80.0 weight:UIFontWeightRegular];
  v28 = objc_opt_self();
  v29 = [v28 configurationWithFont:v27];

  v30 = [objc_opt_self() tertiaryLabelColor];
  v31 = [v28 configurationWithHierarchicalColor:v30];

  v32 = String._bridgeToObjectiveC()();

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v81 = v29;
  v34 = [v33 imageByApplyingSymbolConfiguration:v29];

  v80 = v31;
  v35 = [v34 imageByApplyingSymbolConfiguration:v31];

  v36 = v35;
  if (!v35)
  {
    v36 = [objc_allocWithZone(UIImage) init];
  }

  v37 = type metadata accessor for HomePodSetupViewModel(0);
  v38 = v37[6];
  v39 = type metadata accessor for AdjustedMovie(0);
  (*(*(v39 - 8) + 56))(&a2[v38], 1, 1, v39);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000BCE00;
  *(v40 + 32) = v36;
  v41 = v37[28];
  v42 = type metadata accessor for AdjustedImage(0);
  (*(*(v42 - 8) + 56))(&a2[v41], 1, 1, v42);
  v43 = v37[58];
  v44 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v44 - 8) + 56))(&a2[v43], 1, 1, v44);
  v45 = &a2[v37[14]];
  *(v45 + 4) = 0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v46 = v35;
  v47 = v36;
  v48 = String._bridgeToObjectiveC()();
  v49 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v84);
  *a2 = v83;
  *(a2 + 1) = v82;
  *(a2 + 2) = v78;
  *(a2 + 3) = v77;
  v51 = &a2[v37[7]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  v52 = &a2[v37[8]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  v53 = &a2[v37[9]];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  *&a2[v37[10]] = v26;
  *&a2[v37[11]] = v40;
  *&a2[v37[12]] = _swiftEmptyArrayStorage;
  *&a2[v37[13]] = _swiftEmptyArrayStorage;
  *&a2[v37[15]] = _swiftEmptyArrayStorage;
  *&a2[v37[16]] = _swiftEmptyArrayStorage;
  a2[v37[17]] = Int64 != 0;
  v54 = &a2[v37[18]];
  *v54 = 0;
  v54[4] = 1;
  *&a2[v37[19]] = 1;
  v55 = &a2[v37[20]];
  v56 = v84[3];
  *(v55 + 2) = v84[2];
  *(v55 + 3) = v56;
  *(v55 + 4) = v84[4];
  v57 = v84[1];
  *v55 = v84[0];
  *(v55 + 1) = v57;
  v58 = &a2[v37[21]];
  *(v58 + 3) = 0u;
  *(v58 + 4) = 0u;
  *(v58 + 1) = 0u;
  *(v58 + 2) = 0u;
  *v58 = 0u;
  *&a2[v37[22]] = 0;
  *&a2[v37[23]] = 0;
  v59 = &a2[v37[24]];
  *v59 = 0;
  *(v59 + 1) = 0;
  v60 = &a2[v37[25]];
  *v60 = 0;
  *(v60 + 1) = 0;
  v61 = &a2[v37[26]];
  *v61 = 0;
  *(v61 + 1) = 0;
  a2[v37[27]] = 0;
  a2[v37[29]] = 0;
  *&a2[v37[30]] = 0;
  *&a2[v37[31]] = 0;
  v63 = v37[32];
  v62 = v37[33];
  a2[v37[34]] = 0;
  a2[v37[35]] = 0;
  *&a2[v37[36]] = 0;
  *&a2[v37[37]] = 0;
  v64 = &a2[v37[38]];
  *v64 = 0;
  *(v64 + 1) = 0xE000000000000000;
  a2[v37[39]] = 0;
  a2[v37[40]] = 0;
  *&a2[v37[41]] = 0;
  a2[v37[42]] = 0;
  a2[v37[43]] = 0;
  a2[v37[44]] = 0;
  v65 = &a2[v37[45]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  a2[v37[46]] = 0;
  v66 = &a2[v63];
  v67 = &a2[v37[47]];
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  a2[v37[48]] = 0;
  v68 = &a2[v37[49]];
  *v68 = 0;
  *(v68 + 1) = 0;
  a2[v37[50]] = 0;
  *&a2[v37[51]] = 0;
  *&a2[v37[52]] = 0;
  v69 = &a2[v37[53]];
  *v69 = 0;
  *(v69 + 1) = 0;
  *&a2[v37[54]] = 0;
  v70 = &a2[v37[55]];
  *v70 = 0;
  *(v70 + 1) = 0xE000000000000000;
  *&a2[v37[56]] = 0;
  a2[v37[57]] = 1;
  *v66 = 1;
  v66[8] = 0;
  a2[v62] = 1;
  v71 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
  v72 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName + 8);

  sub_10006629C(v71, v72, v85);

  v73 = *(v58 + 3);
  v86[2] = *(v58 + 2);
  v86[3] = v73;
  v86[4] = *(v58 + 4);
  v74 = *(v58 + 1);
  v86[0] = *v58;
  v86[1] = v74;
  sub_10000EBA4(v86, &unk_100102650, &qword_1000BD2B8);
  v75 = v85[3];
  *(v58 + 2) = v85[2];
  *(v58 + 3) = v75;
  *(v58 + 4) = v85[4];
  result = v85[1];
  *v58 = v85[0];
  *(v58 + 1) = result;
  return result;
}

void sub_100035FD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = String._bridgeToObjectiveC()();

  if (a2)
  {
    *&v89[0] = 0x72655F6473;
    *(&v89[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a2 + 16) && (v7 = sub_100053B3C(v90), (v8 & 1) != 0))
    {
      sub_10000EA58(*(a2 + 56) + 32 * v7, v88);
      sub_10000EA04(v90);
      sub_10000E9F4(v88, v89);
      sub_10000E9F4(v89, v90);
      swift_dynamicCast();
    }

    else
    {
      sub_10000EA04(v90);
    }

    *&v89[0] = 0x64655F6473;
    *(&v89[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a2 + 16) && (v9 = sub_100053B3C(v90), (v10 & 1) != 0))
    {
      sub_10000EA58(*(a2 + 56) + 32 * v9, v88);
      sub_10000EA04(v90);
      sub_10000E9F4(v88, v89);
      sub_10000E9F4(v89, v90);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_10000EA04(v90);
    }

    *&v89[0] = 0x65645F6473;
    *(&v89[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a2 + 16) && (v11 = sub_100053B3C(v90), (v12 & 1) != 0))
    {
      sub_10000EA58(*(a2 + 56) + 32 * v11, v88);
      sub_10000EA04(v90);
      sub_10000E9F4(v88, v89);
      sub_10000E9F4(v89, v90);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_10000EA04(v90);
    }

    [objc_opt_self() sysDropBuildMode];
    v13 = String._bridgeToObjectiveC()();
    v14 = sub_100006658(v13);

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v16;
  }

  else
  {
    v15 = 0;
    v86 = 0xE000000000000000;
  }

  v17 = objc_opt_self();
  v18 = [v17 sysDropBuildMode];
  v19 = _swiftEmptyArrayStorage;
  v87 = v15;
  switch(v18)
  {
    case 1u:
      *&v90[0] = 0;
      *(&v90[0] + 1) = 0xE000000000000000;
      v43 = String._bridgeToObjectiveC()();
      v44 = CUAddSuffixForCurrentDeviceClass();

      if (v44)
      {
        v45 = sub_100006658(v44);

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49._countAndFlagsBits = v46;
        v49._object = v48;
        String.append(_:)(v49);

        v85 = v90[0];
        v50 = String._bridgeToObjectiveC()();
        v51 = sub_100006658(v50);

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v52;

        v19 = sub_1000535F8(0, 1, 1, _swiftEmptyArrayStorage);
        v29 = v19[2];
        v53 = v19[3];
        v30 = (v29 + 1);
        if (v29 >= v53 >> 1)
        {
          v19 = sub_1000535F8((v53 > 1), v29 + 1, 1, v19);
        }

        v31 = 17;
        goto LABEL_32;
      }

      break;
    case 2u:
      *&v90[0] = 0;
      *(&v90[0] + 1) = 0xE000000000000000;
      v32 = String._bridgeToObjectiveC()();
      v33 = CUAddSuffixForCurrentDeviceClass();

      if (v33)
      {
        v34 = sub_100006658(v33);

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38._countAndFlagsBits = v35;
        v38._object = v37;
        String.append(_:)(v38);

        v85 = v90[0];
        v39 = String._bridgeToObjectiveC()();
        v40 = sub_100006658(v39);

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v41;

        v19 = sub_1000535F8(0, 1, 1, _swiftEmptyArrayStorage);
        v29 = v19[2];
        v42 = v19[3];
        v30 = (v29 + 1);
        if (v29 >= v42 >> 1)
        {
          v19 = sub_1000535F8((v42 > 1), v29 + 1, 1, v19);
        }

        v31 = 26;
        goto LABEL_32;
      }

      __break(1u);
      break;
    case 3u:
      v20 = String._bridgeToObjectiveC()();
      v21 = sub_100006658(v20);

      *&v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v85 + 1) = v22;

      v23 = String._bridgeToObjectiveC()();
      v24 = sub_100006658(v23);

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v19 = sub_1000535F8(0, 1, 1, _swiftEmptyArrayStorage);
      v29 = v19[2];
      v28 = v19[3];
      v30 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        v19 = sub_1000535F8((v28 > 1), v29 + 1, 1, v19);
      }

      v31 = 33;
LABEL_32:
      v19[2] = v30;
      v54 = &v19[4 * v29];
      v54[4] = v25;
      v54[5] = v27;
      v54[6] = 0;
      *(v54 + 56) = v31;
LABEL_34:
      v55 = type metadata accessor for HomePodSetupViewModel(0);
      v56 = v55[6];
      v57 = type metadata accessor for AdjustedMovie(0);
      (*(*(v57 - 8) + 56))(a3 + v56, 1, 1, v57);
      sub_10004E01C(0, 0, a3 + v55[28]);
      v59 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sysdropPath);
      v58 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sysdropPath + 8);

      v60 = [v17 sysDropBuildMode];
      v61 = v55[58];
      v62 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
      (*(*(v62 - 8) + 56))(a3 + v61, 1, 1, v62);
      v63 = a3 + v55[14];
      *(v63 + 32) = 0;
      *v63 = 0u;
      *(v63 + 16) = 0u;
      v64 = String._bridgeToObjectiveC()();
      v65 = String._bridgeToObjectiveC()();
      Int64 = CFPrefs_GetInt64();

      sub_1000660A0(v90);
      *a3 = v87;
      *(a3 + 8) = v86;
      *(a3 + 16) = v85;
      v67 = (a3 + v55[7]);
      *v67 = 0;
      v67[1] = 0xE000000000000000;
      v68 = (a3 + v55[8]);
      *v68 = 0;
      v68[1] = 0xE000000000000000;
      v69 = (a3 + v55[9]);
      *v69 = 0;
      v69[1] = 0xE000000000000000;
      *(a3 + v55[10]) = v19;
      *(a3 + v55[11]) = _swiftEmptyArrayStorage;
      *(a3 + v55[12]) = _swiftEmptyArrayStorage;
      *(a3 + v55[13]) = _swiftEmptyArrayStorage;
      *(a3 + v55[15]) = _swiftEmptyArrayStorage;
      *(a3 + v55[16]) = _swiftEmptyArrayStorage;
      *(a3 + v55[17]) = Int64 != 0;
      v70 = a3 + v55[18];
      *v70 = 0;
      *(v70 + 4) = 1;
      *(a3 + v55[19]) = 1;
      v71 = (a3 + v55[20]);
      v72 = v90[3];
      v71[2] = v90[2];
      v71[3] = v72;
      v71[4] = v90[4];
      v73 = v90[1];
      *v71 = v90[0];
      v71[1] = v73;
      v74 = (a3 + v55[21]);
      v74[3] = 0u;
      v74[4] = 0u;
      v74[1] = 0u;
      v74[2] = 0u;
      *v74 = 0u;
      *(a3 + v55[22]) = 0;
      *(a3 + v55[23]) = 0;
      v75 = (a3 + v55[24]);
      *v75 = 0;
      v75[1] = 0;
      v76 = (a3 + v55[25]);
      *v76 = 0;
      v76[1] = 0;
      v77 = (a3 + v55[26]);
      *v77 = 0;
      v77[1] = 0;
      *(a3 + v55[27]) = 0;
      *(a3 + v55[29]) = 0;
      *(a3 + v55[30]) = 0;
      *(a3 + v55[31]) = 0;
      v78 = a3 + v55[32];
      *v78 = 0;
      *(v78 + 8) = 1;
      *(a3 + v55[33]) = 0;
      *(a3 + v55[34]) = 0;
      *(a3 + v55[35]) = 0;
      *(a3 + v55[36]) = 0;
      *(a3 + v55[37]) = 0;
      v79 = (a3 + v55[38]);
      *v79 = 0;
      v79[1] = 0xE000000000000000;
      *(a3 + v55[39]) = 0;
      *(a3 + v55[40]) = 1;
      *(a3 + v55[41]) = 0;
      *(a3 + v55[42]) = 0;
      *(a3 + v55[43]) = 0;
      *(a3 + v55[44]) = 0;
      v80 = (a3 + v55[45]);
      *v80 = 0;
      v80[1] = 0xE000000000000000;
      *(a3 + v55[46]) = 0;
      v81 = (a3 + v55[47]);
      *v81 = 0;
      v81[1] = 0xE000000000000000;
      *(a3 + v55[48]) = 0;
      v82 = (a3 + v55[49]);
      *v82 = v59;
      v82[1] = v58;
      *(a3 + v55[50]) = 0;
      *(a3 + v55[51]) = v60;
      *(a3 + v55[52]) = 0;
      v83 = (a3 + v55[53]);
      *v83 = 0;
      v83[1] = 0;
      *(a3 + v55[54]) = 0;
      v84 = (a3 + v55[55]);
      *v84 = 0;
      v84[1] = 0xE000000000000000;
      *(a3 + v55[56]) = 0;
      *(a3 + v55[57]) = 1;
      return;
    default:
      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      goto LABEL_34;
  }

  __break(1u);
}

void sub_1000369BC(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();

  if (!a1)
  {
    v18 = 0;
    v27 = 0;
    v13 = 0.0;
    v20 = 0xE000000000000000;
    v29 = 0xE000000000000000;
    v57 = 0xE000000000000000;
    v58 = 0;
    goto LABEL_32;
  }

  *&v60[0] = 0x72655F6473;
  *(&v60[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v5 = sub_100053B3C(v61), (v6 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v5, v59);
    sub_10000EA04(v61);
    sub_10000E9F4(v59, v60);
    sub_10000E9F4(v60, v61);
    swift_dynamicCast();
  }

  else
  {
    sub_10000EA04(v61);
  }

  *&v60[0] = 0x64655F6473;
  *(&v60[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v7 = sub_100053B3C(v61), (v8 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v7, v59);
    sub_10000EA04(v61);
    sub_10000E9F4(v59, v60);
    sub_10000E9F4(v60, v61);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_10000EA04(v61);
  }

  *&v60[0] = 0x65645F6473;
  *(&v60[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v9 = sub_100053B3C(v61), (v10 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v9, v59);
    sub_10000EA04(v61);
    sub_10000E9F4(v59, v60);
    sub_10000E9F4(v60, v61);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_10000EA04(v61);
  }

  *&v60[0] = 0x72705F70725F6473;
  *(&v60[0] + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v11 = sub_100053B3C(v61), (v12 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v11, v59);
    sub_10000EA04(v61);
    sub_10000E9F4(v59, v60);
    sub_10000E9F4(v60, v61);
    if (swift_dynamicCast())
    {
      v13 = *v59;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    sub_10000EA04(v61);
    v13 = 0.0;
  }

  *&v59[0] = 0x74705F6473;
  *(&v59[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v14 = sub_100053B3C(v61), (v15 & 1) == 0))
  {
    sub_10000EA04(v61);
    goto LABEL_29;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v14, v60);
  sub_10000EA04(v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_30;
  }

  if (*&v59[0] < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (*&v59[0] <= 0x7FFFFFFF)
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = sub_100006658(v16);

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

LABEL_30:
    v21 = String._bridgeToObjectiveC()();
    v22 = sub_100006658(v21);

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v24;
    v58 = v23;

    v25 = String._bridgeToObjectiveC()();
    v26 = sub_100006658(v25);

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

LABEL_32:
    v30 = type metadata accessor for HomePodSetupViewModel(0);
    v31 = v30[6];
    v32 = type metadata accessor for AdjustedMovie(0);
    (*(*(v32 - 8) + 56))(&a2[v31], 1, 1, v32);
    sub_10004E01C(0, 0, &a2[v30[28]]);
    v33 = v30[58];
    v34 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v34 - 8) + 56))(&a2[v33], 1, 1, v34);
    v35 = &a2[v30[14]];
    *(v35 + 4) = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    Int64 = CFPrefs_GetInt64();

    sub_1000660A0(v61);
    *a2 = v58;
    *(a2 + 1) = v57;
    *(a2 + 2) = v27;
    *(a2 + 3) = v29;
    v39 = &a2[v30[7]];
    *v39 = 0;
    *(v39 + 1) = 0xE000000000000000;
    v40 = &a2[v30[8]];
    *v40 = 0;
    *(v40 + 1) = 0xE000000000000000;
    v41 = &a2[v30[9]];
    *v41 = v18;
    *(v41 + 1) = v20;
    *&a2[v30[10]] = _swiftEmptyArrayStorage;
    *&a2[v30[11]] = _swiftEmptyArrayStorage;
    *&a2[v30[12]] = _swiftEmptyArrayStorage;
    *&a2[v30[13]] = _swiftEmptyArrayStorage;
    *&a2[v30[15]] = _swiftEmptyArrayStorage;
    *&a2[v30[16]] = _swiftEmptyArrayStorage;
    a2[v30[17]] = Int64 != 0;
    v42 = &a2[v30[18]];
    *v42 = 0;
    v42[4] = 1;
    *&a2[v30[19]] = 1;
    v43 = &a2[v30[20]];
    v44 = v61[3];
    *(v43 + 2) = v61[2];
    *(v43 + 3) = v44;
    *(v43 + 4) = v61[4];
    v45 = v61[1];
    *v43 = v61[0];
    *(v43 + 1) = v45;
    v46 = &a2[v30[21]];
    *(v46 + 3) = 0u;
    *(v46 + 4) = 0u;
    *(v46 + 1) = 0u;
    *(v46 + 2) = 0u;
    *v46 = 0u;
    *&a2[v30[22]] = 0;
    *&a2[v30[23]] = 0;
    v47 = &a2[v30[24]];
    *v47 = 0;
    *(v47 + 1) = 0;
    v48 = &a2[v30[25]];
    *v48 = 0;
    *(v48 + 1) = 0;
    v49 = &a2[v30[26]];
    *v49 = 0;
    *(v49 + 1) = 0;
    a2[v30[27]] = 0;
    a2[v30[29]] = 0;
    *&a2[v30[30]] = 0;
    *&a2[v30[31]] = 0;
    v50 = &a2[v30[32]];
    *v50 = 0;
    v50[8] = 1;
    a2[v30[33]] = 0;
    a2[v30[34]] = 0;
    a2[v30[35]] = 0;
    *&a2[v30[36]] = 0;
    *&a2[v30[37]] = 0;
    v51 = &a2[v30[38]];
    *v51 = 0;
    *(v51 + 1) = 0xE000000000000000;
    a2[v30[39]] = 1;
    a2[v30[40]] = 1;
    *&a2[v30[41]] = v13;
    a2[v30[42]] = 0;
    a2[v30[43]] = 0;
    a2[v30[44]] = 0;
    v52 = &a2[v30[45]];
    *v52 = 0;
    *(v52 + 1) = 0xE000000000000000;
    a2[v30[46]] = 0;
    v53 = &a2[v30[47]];
    *v53 = 0;
    *(v53 + 1) = 0xE000000000000000;
    a2[v30[48]] = 0;
    v54 = &a2[v30[49]];
    *v54 = 0;
    *(v54 + 1) = 0;
    a2[v30[50]] = 0;
    *&a2[v30[51]] = 0;
    *&a2[v30[52]] = 0;
    v55 = &a2[v30[53]];
    *v55 = 0;
    *(v55 + 1) = 0;
    *&a2[v30[54]] = 0;
    v56 = &a2[v30[55]];
    *v56 = 0;
    *(v56 + 1) = 0xE000000000000000;
    *&a2[v30[56]] = 0;
    a2[v30[57]] = 1;
    return;
  }

  __break(1u);
}

void sub_100037200(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_allocWithZone(CNContactStore) init];
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000BCE00;
  *(v5 + 32) = CNContactGivenNameKey;
  v6 = CNContactGivenNameKey;

  sub_10000E6C4(&qword_100102380, &qword_1000BD260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v67[0] = 0;
  v8 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:v67];

  if (v8)
  {
    v9 = *&v67[0];
    v10 = [v8 givenName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v14 = *&v67[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = _convertErrorToNSError(_:)();
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100101EF0);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "HomePodSetupViewModel: Open Settings failed {error: %@}", v20, 0xCu);
      sub_10000EBA4(v21, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v23 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v23 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v4;

LABEL_20:
    v31 = String._bridgeToObjectiveC()();
    v32 = sub_100006658(v31);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E6C4(&qword_100102388, qword_1000BE250);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000BD050;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100039F8C();
    *(v33 + 32) = v11;
    *(v33 + 40) = v13;
    v34 = String.init(format:_:)();
    v36 = v35;

    v37 = type metadata accessor for HomePodSetupViewModel(0);
    v38 = v37[6];
    v39 = type metadata accessor for AdjustedMovie(0);
    (*(*(v39 - 8) + 56))(&a2[v38], 1, 1, v39);
    v40 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent);
    v41 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDialogInfo);
    v42 = v37[28];

    sub_10004E01C(0, 0, &a2[v42]);
    v43 = v37[58];
    v44 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v44 - 8) + 56))(&a2[v43], 1, 1, v44);
    v45 = &a2[v37[14]];
    *(v45 + 4) = 0;
    *v45 = 0u;
    *(v45 + 1) = 0u;
    v46 = String._bridgeToObjectiveC()();
    v47 = String._bridgeToObjectiveC()();
    Int64 = CFPrefs_GetInt64();

    sub_1000660A0(v67);
    *a2 = v34;
    *(a2 + 1) = v36;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0xE000000000000000;
    v49 = &a2[v37[7]];
    *v49 = 0;
    *(v49 + 1) = 0xE000000000000000;
    v50 = &a2[v37[8]];
    *v50 = 0;
    *(v50 + 1) = 0xE000000000000000;
    v51 = &a2[v37[9]];
    *v51 = 0;
    *(v51 + 1) = 0xE000000000000000;
    *&a2[v37[10]] = _swiftEmptyArrayStorage;
    *&a2[v37[11]] = _swiftEmptyArrayStorage;
    *&a2[v37[12]] = _swiftEmptyArrayStorage;
    *&a2[v37[13]] = _swiftEmptyArrayStorage;
    *&a2[v37[15]] = _swiftEmptyArrayStorage;
    *&a2[v37[16]] = _swiftEmptyArrayStorage;
    a2[v37[17]] = Int64 != 0;
    v52 = &a2[v37[18]];
    *v52 = v40;
    v52[4] = 0;
    *&a2[v37[19]] = 1;
    v53 = &a2[v37[20]];
    v54 = v67[3];
    *(v53 + 2) = v67[2];
    *(v53 + 3) = v54;
    *(v53 + 4) = v67[4];
    v55 = v67[1];
    *v53 = v67[0];
    *(v53 + 1) = v55;
    v56 = &a2[v37[21]];
    *(v56 + 3) = 0u;
    *(v56 + 4) = 0u;
    *(v56 + 1) = 0u;
    *(v56 + 2) = 0u;
    *v56 = 0u;
    *&a2[v37[22]] = v41;
    *&a2[v37[23]] = 0;
    v57 = &a2[v37[24]];
    *v57 = 0;
    *(v57 + 1) = 0;
    v58 = &a2[v37[25]];
    *v58 = 0;
    *(v58 + 1) = 0;
    v59 = &a2[v37[26]];
    *v59 = 0;
    *(v59 + 1) = 0;
    a2[v37[27]] = 0;
    a2[v37[29]] = 0;
    *&a2[v37[30]] = 0;
    *&a2[v37[31]] = 0;
    v60 = &a2[v37[32]];
    *v60 = 0;
    v60[8] = 1;
    a2[v37[33]] = 0;
    a2[v37[34]] = 0;
    a2[v37[35]] = 0;
    *&a2[v37[36]] = 0;
    *&a2[v37[37]] = 0;
    v61 = &a2[v37[38]];
    *v61 = 0;
    *(v61 + 1) = 0xE000000000000000;
    a2[v37[39]] = 0;
    a2[v37[40]] = 0;
    *&a2[v37[41]] = 0;
    a2[v37[42]] = 0;
    a2[v37[43]] = 0;
    a2[v37[44]] = 0;
    v62 = &a2[v37[45]];
    *v62 = 0;
    *(v62 + 1) = 0xE000000000000000;
    a2[v37[46]] = 0;
    v63 = &a2[v37[47]];
    *v63 = 0;
    *(v63 + 1) = 0xE000000000000000;
    a2[v37[48]] = 0;
    v64 = &a2[v37[49]];
    *v64 = 0;
    *(v64 + 1) = 0;
    a2[v37[50]] = 0;
    *&a2[v37[51]] = 0;
    *&a2[v37[52]] = 0;
    v65 = &a2[v37[53]];
    *v65 = 0;
    *(v65 + 1) = 0;
    *&a2[v37[54]] = 0;
    v66 = &a2[v37[55]];
    *v66 = 0;
    *(v66 + 1) = 0xE000000000000000;
    *&a2[v37[56]] = 0;
    a2[v37[57]] = 1;
    return;
  }

  v25 = [objc_opt_self() defaultStore];
  if (v25)
  {
    v26 = v25;

    v27 = [v26 aa_primaryAppleAccount];

    if (v27)
    {
      v28 = [v27 aa_firstName];
      v24 = v4;
      if (v28)
      {
        v29 = v28;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v30;

        goto LABEL_20;
      }
    }

    else
    {
      v24 = v4;
    }

    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1000379DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v170) = a3;
  v163 = a2;
  v167 = a4;
  v5 = type metadata accessor for AdjustedImage(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v158 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v166 = &v156 - v9;
  v10 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v156 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v156 - v18;
  __chkstk_darwin(v17);
  v21 = &v156 - v20;
  v22 = type metadata accessor for URL();
  v173 = *(v22 - 8);
  v174 = v22;
  v23 = __chkstk_darwin(v22);
  v168 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = (&v156 - v25);
  v27 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v28 = __chkstk_darwin(v27 - 8);
  v160 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v159 = &v156 - v31;
  v32 = __chkstk_darwin(v30);
  v165 = &v156 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v156 - v35;
  __chkstk_darwin(v34);
  v176 = v6;
  v37 = *(v6 + 56);
  v172 = &v156 - v38;
  v37();
  v171 = v36;
  v175 = v5;
  v162 = v6 + 56;
  v161 = v37;
  (v37)(v36, 1, 1, v5);
  v39 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle;
  v177 = a1;
  v40 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle);
  v164 = "NOT_NOW_BUTTON_TITLE";
  v41 = String._bridgeToObjectiveC()();
  v169 = objc_opt_self();
  v42 = [v169 imageNamed:v41 inBundle:v40];

  v43 = &unk_100101000;
  if (!v42)
  {
LABEL_10:
    if (v43[191] != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100012AAC(v52, qword_100101EF0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "HomePodSetupViewModel createStereoPairImages: leftHomePod failed to create", v55, 2u);
    }

    v56 = *(v177 + v39);
    v57 = String._bridgeToObjectiveC()();
    v58 = [v169 imageNamed:v57 inBundle:v56];

    if (!v58)
    {
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "HomePodSetupViewModel createStereoPairImages: UIImage(named: ProxCard_StereoPairUnit, in: model.assetBundle) == nil", v60, 2u);
      }
    }

    v61 = *(v177 + v39);
    if (v61)
    {
      v62 = [v61 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
      v64 = v173;
      v63 = v174;
      if (v62)
      {
        v65 = v62;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = *(v64 + 56);
      v67(v13, v66, 1, v63);
      sub_10003B8EC(v13, v16, &qword_100101F08, &unk_1000BD100);
      if ((*(v64 + 48))(v16, 1, v63) != 1)
      {
        sub_10000EBA4(v16, &qword_100101F08, &unk_1000BD100);
LABEL_31:
        v79 = v171;
        goto LABEL_32;
      }
    }

    else
    {
      v67 = *(v173 + 56);
      v67(v16, 1, 1, v174);
    }

    sub_10000EBA4(v16, &qword_100101F08, &unk_1000BD100);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "HomePodSetupViewModel createStereoPairImages: model.assetBundle.url(forResource: SFDeviceAssetNameAdjustments, withExtension: nil) == nil", v83, 2u);
    }

    goto LABEL_31;
  }

  v44 = *(v177 + v39);
  if (!v44)
  {

    (*(v173 + 56))(v21, 1, 1, v174);
LABEL_9:
    sub_10000EBA4(v21, &qword_100101F08, &unk_1000BD100);
    goto LABEL_10;
  }

  v156 = v16;
  v45 = [v44 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
  v157 = v26;
  if (v45)
  {
    v46 = v45;
    v47 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v47 = v13;
    v48 = 1;
  }

  v49 = v173;
  v50 = v174;
  v51 = *(v173 + 56);
  v51(v19, v48, 1, v174);
  sub_10003B8EC(v19, v21, &qword_100101F08, &unk_1000BD100);
  if ((*(v49 + 48))(v21, 1, v50) == 1)
  {

    v43 = &unk_100101000;
    v13 = v47;
    v16 = v156;
    goto LABEL_9;
  }

  v68 = v172;
  sub_10000EBA4(v172, &unk_100102610, &unk_1000BD130);
  v69 = v157;
  (*(v49 + 32))(v157, v21, v50);
  v70 = v175;
  v71 = *(v175 + 20);
  (*(v49 + 16))(&v68[v71], v69, v50);
  v51(&v68[v71], 0, 1, v50);
  *v68 = v42;
  (v161)(v68, 0, 1, v70);
  v72 = qword_1001015F8;
  v73 = v42;
  v74 = v50;
  v67 = v51;
  if (v72 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100012AAC(v75, qword_100101EF0);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v78 = os_log_type_enabled(v76, v77);
  v79 = v171;
  if (v78)
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "HomePodSetupViewModel createStereoPairImages: leftHomePod adjusted image created", v80, 2u);
  }

  else
  {
  }

  (*(v49 + 8))(v157, v74);
  v43 = &unk_100101000;
LABEL_32:
  if (v43[191] != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  v85 = sub_100012AAC(v84, qword_100101EF0);

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 67109376;
    *(v88 + 4) = *(v177 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole);

    *(v88 + 8) = 1024;
    *(v88 + 10) = v170 & 1;
    _os_log_impl(&_mh_execute_header, v86, v87, "HomePodSetupViewModel createStereoPairImages: stereoRole = %d | forceStereo = %{BOOL}d", v88, 0xEu);
  }

  else
  {
  }

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  v91 = os_log_type_enabled(v89, v90);
  v157 = v67;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v178 = v93;
    *v92 = 136315138;
    v94 = v79;
    v95 = v85;
    swift_beginAccess();
    sub_10003AE18(0, &unk_100102410, NSBundle_ptr);

    v96 = Dictionary.description.getter();
    v98 = v97;

    v99 = sub_1000B08A0(v96, v98, &v178);

    *(v92 + 4) = v99;
    v85 = v95;
    v79 = v94;
    _os_log_impl(&_mh_execute_header, v89, v90, "HomePodSetupViewModel assetBundles %s", v92, 0xCu);
    sub_10000E70C(v93);
  }

  v100 = v172;
  v101 = v165;
  v102 = v168;
  v165 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole;
  if (*(v177 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) != 1 || (v170 & 1) != 0)
  {
    v103 = v177;
    v104 = *(v177 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor);
    v105 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundles;
    swift_beginAccess();
    v106 = *(v103 + v105);
    if (*(v106 + 16))
    {
      v107 = sub_100053C8C(v104);
      if (v108)
      {
        v109 = *(*(v106 + 56) + 8 * v107);
        v110 = String._bridgeToObjectiveC()();
        v111 = [v169 imageNamed:v110 inBundle:v109];

        if (v111)
        {
          v112 = [v109 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
          if (v112)
          {
            v113 = v112;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            sub_10000EBA4(v79, &unk_100102610, &unk_1000BD130);
            v170 = v85;
            v115 = v174;
            v114 = v175;
            v116 = *(v175 + 20);
            v117 = v173;
            (*(v173 + 16))(v79 + v116, v102, v174);
            v157(v79 + v116, 0, 1, v115);
            *v79 = v111;
            v118 = v114;
            v85 = v170;
            (v161)(v79, 0, 1, v118);
            v119 = v111;
            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              *v122 = 0;
              _os_log_impl(&_mh_execute_header, v120, v121, "HomePodSetupViewModel createStereoPairImages: rightHomePod adjusted image created", v122, 2u);
              v85 = v170;
            }

            else
            {
            }

            (*(v117 + 8))(v168, v174);
            goto LABEL_54;
          }
        }
      }
    }

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "HomePodSetupViewModel createStereoPairImages: rightHomePod failed to create, setting rightHomepod to left", v125, 2u);
    }

    sub_10003A6F8(v100, v79, &unk_100102610, &unk_1000BD130);
  }

LABEL_54:
  sub_10000F25C(v100, v101, &unk_100102610, &unk_1000BD130);
  v126 = v176 + 48;
  v127 = *(v176 + 48);
  if (v127(v101, 1, v175) == 1)
  {
    sub_10000EBA4(v101, &unk_100102610, &unk_1000BD130);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v128, v129, "HomePodSetupViewModel createStereoPairImages: leftHomePod is nil, returning nil", v130, 2u);
    }

    sub_10000EBA4(v100, &unk_100102610, &unk_1000BD130);
    v131 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v131 - 8) + 56))(v167, 1, 1, v131);
    return sub_10000EBA4(v79, &unk_100102610, &unk_1000BD130);
  }

  sub_10003A760(v101, v166);
  if (v163)
  {
    v132 = String._bridgeToObjectiveC()();
    v133 = [v169 imageNamed:v132];

    if (v133)
    {
    }
  }

  else
  {
    v133 = 0;
  }

  v176 = v126;
  v134 = v133;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v170 = v85;
    v138 = v137;
    *v137 = 67109632;
    *(v137 + 4) = 1;
    *(v137 + 8) = 1024;
    swift_beginAccess();
    v139 = v159;
    sub_10000F25C(v79, v159, &unk_100102610, &unk_1000BD130);
    v140 = (v127)(v139, 1, v175) != 1;
    v100 = v172;
    sub_10000EBA4(v139, &unk_100102610, &unk_1000BD130);
    *(v138 + 10) = v140;
    v79 = v171;
    *(v138 + 14) = 1024;
    *(v138 + 16) = v133 != 0;

    _os_log_impl(&_mh_execute_header, v135, v136, "HomePodSetupViewModel createStereoPairImages: creating StereoPairImage left = %{BOOL}d | right = %{BOOL}d | appleTV = %{BOOL}d", v138, 0x14u);
  }

  else
  {

    v135 = v134;
  }

  if (*&v165[v177] != 3)
  {
    goto LABEL_68;
  }

  swift_beginAccess();
  v141 = v160;
  sub_10000F25C(v79, v160, &unk_100102610, &unk_1000BD130);
  if (v127(v141, 1, v175) == 1)
  {
    sub_10000EBA4(v141, &unk_100102610, &unk_1000BD130);
LABEL_68:
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&_mh_execute_header, v142, v143, "HomePodSetupViewModel StereoPairImage, HomePod being setup set on the left", v144, 2u);
    }

    sub_10000EBA4(v100, &unk_100102610, &unk_1000BD130);
    v145 = v167;
    sub_10003A760(v166, v167);
    swift_beginAccess();
    v146 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    sub_10000F25C(v79, v145 + *(v146 + 20), &unk_100102610, &unk_1000BD130);
    *(v145 + *(v146 + 24)) = v133;
    (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
    return sub_10000EBA4(v79, &unk_100102610, &unk_1000BD130);
  }

  v147 = v141;
  v148 = v158;
  sub_10003A760(v147, v158);
  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 0;
    _os_log_impl(&_mh_execute_header, v149, v150, "HomePodSetupViewModel StereoPairImage, HomePod being setup set on the right", v151, 2u);
  }

  sub_10000EBA4(v100, &unk_100102610, &unk_1000BD130);
  v152 = v167;
  sub_10003A760(v148, v167);
  v153 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v154 = *(v153 + 20);
  sub_10003A760(v166, v152 + v154);
  (v161)(v152 + v154, 0, 1, v175);
  *(v152 + *(v153 + 24)) = v133;
  (*(*(v153 - 8) + 56))(v152, 0, 1, v153);
  return sub_10000EBA4(v79, &unk_100102610, &unk_1000BD130);
}

uint64_t sub_100038F50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for __VaListBuilder();
  v7 = swift_allocObject();
  v7[2] = 8;
  v7[3] = 0;
  v8 = v7 + 3;
  v7[4] = 0;
  v7[5] = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_26:
    v27 = __VaListBuilder.va_list()();
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = sub_10000680C(v28, v29, v27);

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *a2 = v31;
    a2[1] = v33;
  }

  v10 = 0;
  v11 = a1 + 32;
  while (1)
  {
    sub_10000EC1C((v11 + 40 * v10), *(v11 + 40 * v10 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v13 = *v8;
    v14 = *(result + 16);
    v15 = __OFADD__(*v8, v14);
    v16 = *v8 + v14;
    if (v15)
    {
      break;
    }

    v17 = v7[4];
    if (v17 >= v16)
    {
      goto LABEL_18;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v18 = v7[5];
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    v7[4] = v16;
    if ((v16 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v19 = result;
    v20 = swift_slowAlloc();
    v21 = v20;
    v7[5] = v20;
    if (v18)
    {
      if (v20 != v18 || v20 >= &v18[8 * v13])
      {
        memmove(v20, v18, 8 * v13);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v19;
LABEL_18:
      v21 = v7[5];
      if (!v21)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v19;
    if (!v21)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v23 = *(result + 16);
    if (v23)
    {
      v24 = (result + 32);
      v25 = *v8;
      while (1)
      {
        v26 = *v24++;
        *&v21[8 * v25] = v26;
        v25 = *v8 + 1;
        if (__OFADD__(*v8, 1))
        {
          break;
        }

        *v8 = v25;
        if (!--v23)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v10 == v9)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000391B4()
{
  v169 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v169);
  v168 = &v167 - v1;
  v167 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v167);
  v3 = &v167 - v2;
  v170[0] = 0x3D656C746974;
  v170[1] = 0xE600000000000000;
  v4 = *(v0 + 8);
  v171[0] = *v0;
  v171[1] = v4;

  v5._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v170[0];
  v8 = v170[1];
  v170[0] = 0xD000000000000017;
  v170[1] = 0x80000001000C1390;
  v7._object = v8;
  String.append(_:)(v7);

  v10 = v170[0];
  v9 = v170[1];
  strcpy(v170, "subtitle=");
  WORD1(v170[1]) = 0;
  HIDWORD(v170[1]) = -385875968;
  v11 = *(v0 + 24);
  v171[0] = *(v0 + 16);
  v171[1] = v11;

  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v170[0];
  v15 = v170[1];
  v170[0] = v10;
  v170[1] = v9;

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v18 = v170[0];
  v17 = v170[1];
  strcpy(v170, "bodyText=");
  WORD1(v170[1]) = 0;
  HIDWORD(v170[1]) = -385875968;
  v19 = type metadata accessor for HomePodSetupViewModel(0);
  v20 = v0 + v19[7];
  v21 = *(v20 + 8);
  v171[0] = *v20;
  v171[1] = v21;

  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v25 = v170[0];
  v24 = v170[1];
  v170[0] = v18;
  v170[1] = v17;

  v26._countAndFlagsBits = v25;
  v26._object = v24;
  String.append(_:)(v26);

  v28 = v170[0];
  v27 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v170[0] = 0x6D69616C63736964;
  v170[1] = 0xEF3D747865547265;
  v29 = v0 + v19[8];
  v30 = *(v29 + 8);
  v171[0] = *v29;
  v171[1] = v30;

  v31._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33 = v170[0];
  v34 = v170[1];
  v170[0] = v28;
  v170[1] = v27;

  v35._countAndFlagsBits = v33;
  v35._object = v34;
  String.append(_:)(v35);

  v37 = v170[0];
  v36 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v170[0] = 0xD000000000000017;
  v170[1] = 0x80000001000C13B0;
  v38 = v0 + v19[9];
  v39 = *(v38 + 8);
  v171[0] = *v38;
  v171[1] = v39;

  v40._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 32;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = v170[0];
  v43 = v170[1];
  v170[0] = v37;
  v170[1] = v36;

  v44._countAndFlagsBits = v42;
  v44._object = v43;
  String.append(_:)(v44);

  v46 = v170[0];
  v45 = v170[1];
  strcpy(v170, "buttonInfo=");
  HIDWORD(v170[1]) = -352321536;
  v171[0] = *(v0 + v19[10]);

  sub_10000E6C4(&qword_100102338, &qword_1000BD210);
  v47._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 32;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v49 = v170[0];
  v50 = v170[1];
  v170[0] = v46;
  v170[1] = v45;

  v51._countAndFlagsBits = v49;
  v51._object = v50;
  String.append(_:)(v51);

  v53 = v170[0];
  v52 = v170[1];
  v170[0] = 0x3D6569766F6DLL;
  v170[1] = 0xE600000000000000;
  sub_10000F25C(v0 + v19[6], v3, &unk_100101FB0, &qword_1000BD128);
  v54._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 32;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  v56 = v170[0];
  v57 = v170[1];
  v170[0] = v53;
  v170[1] = v52;

  v58._countAndFlagsBits = v56;
  v58._object = v57;
  String.append(_:)(v58);

  v60 = v170[0];
  v59 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v170, "productImage=");
  HIWORD(v170[1]) = -4864;
  sub_10000F25C(v0 + v19[28], v168, &unk_100102610, &unk_1000BD130);
  v61._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v61);

  v62._countAndFlagsBits = 32;
  v62._object = 0xE100000000000000;
  String.append(_:)(v62);
  v63 = v170[0];
  v64 = v170[1];
  v170[0] = v60;
  v170[1] = v59;

  v65._countAndFlagsBits = v63;
  v65._object = v64;
  String.append(_:)(v65);

  v67 = v170[0];
  v66 = v170[1];
  strcpy(v170, "iconImages=");
  HIDWORD(v170[1]) = -352321536;
  v171[0] = *(v0 + v19[11]);

  sub_10000E6C4(&qword_100102340, &qword_1000BD218);
  v68._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v68);

  v69._countAndFlagsBits = 32;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  v70 = v170[0];
  v71 = v170[1];
  v170[0] = v67;
  v170[1] = v66;

  v72._countAndFlagsBits = v70;
  v72._object = v71;
  String.append(_:)(v72);

  v74 = v170[0];
  v73 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v170[0] = 0xD000000000000012;
  v170[1] = 0x80000001000C13D0;
  v171[0] = *(v0 + v19[12]);

  sub_10000E6C4(&qword_100102348, &unk_1000BD220);
  v75._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v75);

  v76._countAndFlagsBits = 32;
  v76._object = 0xE100000000000000;
  String.append(_:)(v76);
  v77 = v170[0];
  v78 = v170[1];
  v170[0] = v74;
  v170[1] = v73;

  v79._countAndFlagsBits = v77;
  v79._object = v78;
  String.append(_:)(v79);

  v81 = v170[0];
  v80 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v171, "defaultOption=");
  HIBYTE(v171[1]) = -18;
  sub_10000F25C(v0 + v19[14], v170, &qword_100102350, &unk_1000BE1B0);
  sub_10000E6C4(&qword_100102350, &unk_1000BE1B0);
  v82._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v82);

  v83._countAndFlagsBits = 32;
  v83._object = 0xE100000000000000;
  String.append(_:)(v83);
  v84 = v171[0];
  v85 = v171[1];
  v170[0] = v81;
  v170[1] = v80;

  v86._countAndFlagsBits = v84;
  v86._object = v85;
  String.append(_:)(v86);

  v88 = v170[0];
  v87 = v170[1];
  strcpy(v170, "features=");
  WORD1(v170[1]) = 0;
  HIDWORD(v170[1]) = -385875968;
  v171[0] = *(v0 + v19[16]);

  sub_10000E6C4(&qword_100102358, &qword_1000BD230);
  v89._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v89);

  v90._countAndFlagsBits = 32;
  v90._object = 0xE100000000000000;
  String.append(_:)(v90);
  v91 = v170[0];
  v92 = v170[1];
  v170[0] = v88;
  v170[1] = v87;

  v93._countAndFlagsBits = v91;
  v93._object = v92;
  String.append(_:)(v93);

  v95 = v170[0];
  v94 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v170[0] = 0x73736572676F7270;
  v170[1] = 0xEF3D6C6961746544;
  v96 = *(v0 + v19[17]);
  if (v96)
  {
    v97 = 7562585;
  }

  else
  {
    v97 = 28494;
  }

  if (*(v0 + v19[17]))
  {
    v98 = 0xE300000000000000;
  }

  else
  {
    v98 = 0xE200000000000000;
  }

  v99 = v98;
  String.append(_:)(*&v97);

  v100._countAndFlagsBits = 32;
  v100._object = 0xE100000000000000;
  String.append(_:)(v100);
  v101 = v170[0];
  v102 = v170[1];
  v170[0] = v95;
  v170[1] = v94;

  v103._countAndFlagsBits = v101;
  v103._object = v102;
  String.append(_:)(v103);

  v105 = v170[0];
  v104 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v170, "progressEvent=");
  HIBYTE(v170[1]) = -18;
  v106 = (v0 + v19[18]);
  v107 = *v106;
  LOBYTE(v106) = *(v106 + 4);
  LODWORD(v171[0]) = v107;
  BYTE4(v171[0]) = v106;
  sub_10000E6C4(&qword_100102360, &qword_1000BD238);
  v108._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v108);

  v109._countAndFlagsBits = 32;
  v109._object = 0xE100000000000000;
  String.append(_:)(v109);
  v110 = v170[0];
  v111 = v170[1];
  v170[0] = v105;
  v170[1] = v104;

  v112._countAndFlagsBits = v110;
  v112._object = v111;
  String.append(_:)(v112);

  v114 = v170[0];
  v113 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v170[0] = 0x6C61694469726973;
  v170[1] = 0xEF3D6F666E49676FLL;
  if (*(v0 + v19[22]))
  {
    v115 = Dictionary.debugDescription.getter();
    v117 = v116;
  }

  else
  {
    v117 = 0xE400000000000000;
    v115 = 1701736270;
  }

  v118 = v117;
  String.append(_:)(*&v115);

  v119._countAndFlagsBits = 32;
  v119._object = 0xE100000000000000;
  String.append(_:)(v119);
  v120 = v170[0];
  v121 = v170[1];
  v170[0] = v114;
  v170[1] = v113;

  v122._countAndFlagsBits = v120;
  v122._object = v121;
  String.append(_:)(v122);

  v124 = v170[0];
  v123 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v170, "accountEmails=");
  HIBYTE(v170[1]) = -18;
  v171[0] = *(v0 + v19[23]);
  v125 = v171[0];
  sub_10000E6C4(&qword_100102368, &qword_1000BD240);
  v126._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v126);

  v127._countAndFlagsBits = 32;
  v127._object = 0xE100000000000000;
  String.append(_:)(v127);
  v128 = v170[0];
  v129 = v170[1];
  v170[0] = v124;
  v170[1] = v123;

  v130._countAndFlagsBits = v128;
  v130._object = v129;
  String.append(_:)(v130);

  v132 = v170[0];
  v131 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v170[0] = 0x73736572676F7270;
  v170[1] = 0xEF3D6C6961746544;
  LOBYTE(v171[0]) = v96;
  v133._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v133);

  v134._countAndFlagsBits = 32;
  v134._object = 0xE100000000000000;
  String.append(_:)(v134);
  v135 = v170[0];
  v136 = v170[1];
  v170[0] = v132;
  v170[1] = v131;

  v137._countAndFlagsBits = v135;
  v137._object = v136;
  String.append(_:)(v137);

  v139 = v170[0];
  v138 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v170[0] = 0xD000000000000010;
  v170[1] = 0x80000001000C13F0;
  v140 = v0 + v19[24];
  v141 = *(v140 + 8);
  v171[0] = *v140;
  v171[1] = v141;

  sub_10000E6C4(&unk_100102370, qword_1000BD248);
  v142._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v142);

  v143._countAndFlagsBits = 32;
  v143._object = 0xE100000000000000;
  String.append(_:)(v143);
  v144 = v170[0];
  v145 = v170[1];
  v170[0] = v139;
  v170[1] = v138;

  v146._countAndFlagsBits = v144;
  v146._object = v145;
  String.append(_:)(v146);

  v148 = v170[0];
  v147 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v170[0] = 0xD00000000000001ALL;
  v170[1] = 0x80000001000C1410;
  v149 = v0 + v19[25];
  v150 = *(v149 + 8);
  v171[0] = *v149;
  v171[1] = v150;

  v151._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v151);

  v152._countAndFlagsBits = 32;
  v152._object = 0xE100000000000000;
  String.append(_:)(v152);
  v153 = v170[0];
  v154 = v170[1];
  v170[0] = v148;
  v170[1] = v147;

  v155._countAndFlagsBits = v153;
  v155._object = v154;
  String.append(_:)(v155);

  v157 = v170[0];
  v156 = v170[1];
  v170[0] = 0;
  v170[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v170[0] = 0xD000000000000011;
  v170[1] = 0x80000001000C1430;
  v158 = v0 + v19[26];
  v159 = *(v158 + 8);
  v171[0] = *v158;
  v171[1] = v159;

  v160._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v160);

  v161._countAndFlagsBits = 32;
  v161._object = 0xE100000000000000;
  String.append(_:)(v161);
  v162 = v170[0];
  v163 = v170[1];
  v170[0] = v157;
  v170[1] = v156;

  v164._countAndFlagsBits = v162;
  v164._object = v163;
  String.append(_:)(v164);

  v165._countAndFlagsBits = 62;
  v165._object = 0xE100000000000000;
  String.append(_:)(v165);

  return v170[0];
}

unint64_t sub_100039F8C()
{
  result = qword_100102390;
  if (!qword_100102390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102390);
  }

  return result;
}

unint64_t sub_100039FE0()
{
  result = qword_1001023A8;
  if (!qword_1001023A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001023A8);
  }

  return result;
}

unint64_t sub_10003A034()
{
  result = qword_1001023C0;
  if (!qword_1001023C0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001023C0);
  }

  return result;
}

uint64_t sub_10003A08C()
{

  return _swift_deallocObject(v0, 41, 7);
}

id sub_10003A0C4()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() imageNamed:v3];

  if (v4)
  {
    v5 = [v4 _applicationIconImageForFormat:2 precomposed:1 scale:v2];

    if (v5)
    {
      return v5;
    }
  }

  v7 = objc_allocWithZone(UIImage);

  return [v7 init];
}

id sub_10003A1D8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = objc_allocWithZone(ISIcon);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithType:v5];

  v7 = [objc_allocWithZone(ISImageDescriptor) initWithSize:32.0 scale:{32.0, v3}];
  [v7 setDrawBorder:1];
  v8 = [v6 imageForDescriptor:v7];
  if (v8)
  {
    v9 = v8;
    if (![v8 placeholder] || (v10 = objc_msgSend(v6, "prepareImageForDescriptor:", v7), v9, (v9 = v10) != 0))
    {
      v11 = [v9 CGImage];
      if (v11)
      {
        v10 = v11;
        v12 = [objc_allocWithZone(UIImage) initWithCGImage:v11];
        v13 = [v12 _applicationIconImageForFormat:2 precomposed:1 scale:v3];

        if (!v13)
        {
          v13 = [objc_allocWithZone(UIImage) init];
        }

        v6 = v7;
        goto LABEL_13;
      }

      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [v0 mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v13 = [v17 _applicationIconImageForBundleIdentifier:v18 format:2 scale:v16];

  if (!v13)
  {
    v13 = [objc_allocWithZone(UIImage) init];
  }

  v9 = v7;
LABEL_13:

  return v13;
}

id *sub_10003A478(char a1)
{
  if (a1)
  {
    v1 = sub_10003A0C4();
  }

  else
  {
    v1 = 0;
  }

  v2 = sub_10003A1D8();
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 _applicationIconImageForBundleIdentifier:v7 format:2 scale:v5];

  if (!v8)
  {
    v8 = [objc_allocWithZone(UIImage) init];
  }

  v18[4] = v1;
  v18[5] = v2;
  v18[6] = v8;
  v19 = sub_10003A0C4();
  v9 = v1;
  v10 = v2;
  v11 = v8;
  result = v19;
  v13 = result;
  v14 = 0;
LABEL_7:
  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  while (1)
  {
    if (v14 == 4)
    {
      sub_10000E6C4(&qword_100102408, &qword_1000BD2B0);
      swift_arrayDestroy();

      return _swiftEmptyArrayStorage;
    }

    if (v15 == v14)
    {
      break;
    }

    v16 = v18[v14++ + 4];
    if (v16)
    {
      v17 = v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A6F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000E6C4(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003A760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustedImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10003A7C4()
{
  v0 = [objc_opt_self() configurationWithPointSize:72.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 systemImageNamed:v1 withConfiguration:v0];

  if (!v3)
  {
    v4 = String._bridgeToObjectiveC()();
    v3 = [v2 imageNamed:v4];

    if (!v3)
    {
      v3 = [objc_allocWithZone(UIImage) init];
    }
  }

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1000BCE00;
  *(v5 + 32) = v3;
  return result;
}

uint64_t sub_10003A8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003A960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10003AA30()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = objc_allocWithZone(ISIcon);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = [objc_allocWithZone(ISImageDescriptor) initWithSize:32.0 scale:{32.0, v3}];
  [v7 setDrawBorder:1];
  v8 = [v6 imageForDescriptor:v7];
  if (v8 && (v9 = v8, [v8 placeholder], v10 = objc_msgSend(v6, "prepareImageForDescriptor:", v7), v9, v10))
  {
    v11 = [v10 CGImage];
    if (v11)
    {
      v12 = v11;
      v13 = [v0 mainScreen];
      [v13 scale];
      v15 = v14;

      v16 = [objc_allocWithZone(UIImage) initWithCGImage:v12];
      v17 = [v16 _applicationIconImageForFormat:2 precomposed:1 scale:v15];

      if (!v17)
      {
        v17 = [objc_allocWithZone(UIImage) init];
      }

      v6 = v7;
      goto LABEL_11;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v18 = [v0 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();
  v17 = [v21 _applicationIconImageForBundleIdentifier:v22 format:2 scale:v20];

  if (!v17)
  {
    v17 = [objc_allocWithZone(UIImage) init];
  }

  v10 = v7;
LABEL_11:

  return v17;
}

double sub_10003ACF0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) == 3 && (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_didUsePhonesNetwork) & 1) != 0 || sub_10004B0F0() || *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem) && *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) == 1)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = 3;
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = 1;
  }

  v4 = sub_100006658(v2);

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_1000BD050;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  *(v8 + 48) = 0;
  *(v8 + 56) = v3;
  return result;
}

uint64_t sub_10003AE18(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10003AE60()
{
  result = qword_100102430;
  if (!qword_100102430)
  {
    sub_1000145EC(&qword_100102428, &unk_1000BD2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102430);
  }

  return result;
}

void sub_10003AEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_10003AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_10003AF4C()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10003AF8C(char a1, int a2, char a3)
{
  if (a2 == 2)
  {
    v4 = 0;
LABEL_13:
    if (a3 == 6)
    {
      if (qword_1001015F8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100012AAC(v10, qword_100101EF0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "createProgressViewModel b620 image adjusted", v13, 2u);
      }

      v14 = !v4;
      result = 215.586667;
    }

    else
    {
      if (qword_1001015F8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100012AAC(v15, qword_100101EF0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "createProgressViewModel b238 image adjusted", v18, 2u);
      }

      v14 = !v4;
      result = 189.366667;
    }

    if (!v14)
    {
      result = 227.24;
    }

    if ((a1 & 1) == 0)
    {
      return 227.546667;
    }

    return result;
  }

  if (a2 == 3 || a3 != 5)
  {
    v4 = a2 != 3;
    goto LABEL_13;
  }

  if (qword_1001015F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100101EF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "createProgressViewModel solo mini image adjusted", v8, 2u);
  }

  result = 189.773333;
  if (a1)
  {
    return 153.4;
  }

  return result;
}

uint64_t sub_10003B264()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100006658(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t sub_10003B464()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100006658(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t sub_10003B588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (IsAppleInternalBuild())
  {
    v23 = a8;
    v16 = String._bridgeToObjectiveC()();
    v17 = sub_100006658(v16);

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v21 = swift_allocObject();
    if (a6)
    {
      *(v21 + 16) = xmmword_1000BD070;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = a3;
      *(v21 + 56) = a4;
      *(v21 + 64) = a5;
      *(v21 + 72) = a6;
      *(v21 + 80) = a7;
      *(v21 + 88) = v23;
      *(v21 + 96) = v18;
      *(v21 + 104) = v20;
      *(v21 + 112) = 1;
      *(v21 + 120) = 17;
    }

    else
    {
      *(v21 + 16) = xmmword_1000BB8E0;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = a3;
      *(v21 + 56) = a4;
      *(v21 + 64) = v18;
      *(v21 + 72) = v20;
      *(v21 + 80) = 1;
      *(v21 + 88) = 17;
    }
  }

  else
  {
    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v21 = swift_allocObject();
    if (a6)
    {
      *(v21 + 16) = xmmword_1000BB8E0;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = a3;
      *(v21 + 56) = a4;
      *(v21 + 64) = a5;
      *(v21 + 72) = a6;
      *(v21 + 80) = a7;
      *(v21 + 88) = a8;
    }

    else
    {
      *(v21 + 16) = xmmword_1000BD050;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = a3;
      *(v21 + 56) = a4;
    }
  }

  return v21;
}

unint64_t sub_10003B774()
{
  result = qword_100102440;
  if (!qword_100102440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102440);
  }

  return result;
}

id sub_10003B7C8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() imageNamed:v3];

  if (v4)
  {
    v5 = [v4 _applicationIconImageForFormat:2 precomposed:1 scale:v2];

    if (v5)
    {
      return v5;
    }
  }

  v7 = objc_allocWithZone(UIImage);

  return [v7 init];
}

uint64_t sub_10003B8EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000E6C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003B954()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100102450);
  v1 = sub_100012AAC(v0, qword_100102450);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10003BA1C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults);
  }

  else
  {
    v4 = objc_allocWithZone(NSUserDefaults);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithSuiteName:v5];

    if (!v6)
    {
      v6 = [objc_opt_self() standardUserDefaults];
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10003BAF0()
{
  result = [objc_allocWithZone(type metadata accessor for HomePodSetupAutomation()) init];
  qword_1001086C0 = result;
  return result;
}

id HomePodSetupAutomation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_10003BBB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10003BA1C();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    v8 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults;
    v9 = *(v3 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v19[0] = v20;
    v19[1] = v21;
    if (*(&v21 + 1))
    {
      sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000EBA4(v19, &qword_1001036C0, &unk_1000BEE90);
    }

    sub_10000D8A8(_swiftEmptyArrayStorage);
LABEL_10:
    *&v20 = sub_10007869C(v4);
    *(&v20 + 1) = v12;
    AnyHashable.init<A>(_:)();
    v13 = sub_10000C754();
    *(&v21 + 1) = sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
    *&v20 = v13;
    sub_10000E9F4(&v20, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100054F9C(v18, v19, isUniquelyReferenced_nonNull_native);
    sub_10000EA04(v19);
    v15 = *(v3 + v8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = String._bridgeToObjectiveC()();
    [v15 setValue:isa forKey:v17];
  }
}

void sub_10003BE34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v125 = sub_10000E074(_swiftEmptyArrayStorage);
  v5 = sub_10003BA1C();
  v6 = String._bridgeToObjectiveC()();
  v7 = &selRef_initWithSystemImageNamed_;
  v8 = [v5 objectForKey:v6];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v133 = v129;
  v134 = v130;
  if (*(&v130 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = *(&v137[0] + 1);
      v10 = &v3[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode];
      *v10 = *&v137[0];
      *(v10 + 1) = v9;
    }
  }

  else
  {
    sub_10000EBA4(&v133, &qword_1001036C0, &unk_1000BEE90);
  }

  v11 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults;
  v12 = *&v3[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v15 = a2;
  v133 = v129;
  v134 = v130;
  v124 = v11;
  if (*(&v130 + 1))
  {
    v16 = sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
    if (swift_dynamicCast())
    {
      v127 = a1;
      v17 = *&v137[0];
      v18 = *&v137[0] + 64;
      v19 = 1 << *(*&v137[0] + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(*&v137[0] + 64);
      v123 = &v3[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode];
      v22 = (v19 + 63) >> 6;

      v23 = 0;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (!v21)
            {
              while (1)
              {
                v25 = v23 + 1;
                if (__OFADD__(v23, 1))
                {
                  break;
                }

                if (v25 >= v22)
                {

                  *&v3[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults] = v125;

                  v15 = a2;
                  a1 = v127;
                  v11 = v124;
                  goto LABEL_65;
                }

                v21 = *(v18 + 8 * v25);
                ++v23;
                if (v21)
                {
                  v23 = v25;
                  goto LABEL_25;
                }
              }

              __break(1u);
LABEL_112:
              swift_once();
LABEL_106:
              v107 = type metadata accessor for Logger();
              sub_100012AAC(v107, qword_100102450);
              v108 = v3;

              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                *&v133 = swift_slowAlloc();
                *v111 = 136315394;

                v112 = Dictionary.description.getter();
                v114 = v113;

                v115 = sub_1000B08A0(v112, v114, &v133);

                *(v111 + 4) = v115;
                *(v111 + 12) = 2080;
                v116 = sub_1000B08A0(v22, v17, &v133);

                *(v111 + 14) = v116;
                _os_log_impl(&_mh_execute_header, v109, v110, "HomePodSetupAutomation: Automation enabled with flow selection for these screens %s always select the defauls is %s", v111, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }

              goto LABEL_110;
            }

LABEL_25:
            v26 = __clz(__rbit64(v21));
            v21 &= v21 - 1;
            sub_10000FCF4(v17[6] + 40 * (v26 | (v23 << 6)), v137);
            v135[0] = v137[0];
            v135[1] = v137[1];
            v136 = v138;
            if (v17[2])
            {
              v27 = sub_100053B3C(v135);
              if (v28)
              {
                sub_10000EA58(v17[7] + 32 * v27, &v133);
                if (swift_dynamicCast())
                {
                  break;
                }
              }
            }

LABEL_19:
            sub_10000EA04(v135);
          }

          sub_10000FCF4(v135, &v133);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_10000EA04(v135);

          v7 = &selRef_initWithSystemImageNamed_;
        }

        v119 = v16;
        v120 = v129;

        sub_10000C190(v29, &v133);
        if (sub_10000FEC4(v133) == 0x6E776F6E6B6E75 && v30 == 0xE700000000000000)
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {

LABEL_42:
            v39 = *(v123 + 1);
            v40 = *v123 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v40 = HIBYTE(v39) & 0xF;
            }

            if (v40 && (v120 == __PAIR128__(0xEE0065646F637373, 0x615044454C746567) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {

              if (qword_100101600 != -1)
              {
                swift_once();
              }

              v41 = type metadata accessor for Logger();
              sub_100012AAC(v41, qword_100102450);
              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                *v44 = 0;
                _os_log_impl(&_mh_execute_header, v42, v43, "HomePodSetupAutomation:Found Automation for getLEDPasscode, but rejecting because of forcedPasscode", v44, 2u);
              }

              goto LABEL_61;
            }

            sub_1000161DC(&v133, &v129);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = sub_100053B80(v120, *(&v120 + 1));
            v48 = v125[2];
            v49 = (v47 & 1) == 0;
            v50 = __OFADD__(v48, v49);
            v51 = v48 + v49;
            if (v50)
            {
              __break(1u);
LABEL_114:
              __break(1u);
              swift_unexpectedError();
              __break(1u);
LABEL_115:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v52 = v47;
            if (v125[3] >= v51)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_57;
              }

              v60 = v46;
              sub_100055750();
              v46 = v60;
              v16 = v119;
              if (v52)
              {
                goto LABEL_17;
              }

LABEL_58:
              v125[(v46 >> 6) + 8] |= 1 << v46;
              *(v125[6] + 16 * v46) = v120;
              v54 = v125[7] + 56 * v46;
              v55 = v132;
              v57 = v130;
              v56 = v131;
              *v54 = v129;
              *(v54 + 16) = v57;
              *(v54 + 32) = v56;
              *(v54 + 48) = v55;
              v58 = v125[2];
              v50 = __OFADD__(v58, 1);
              v59 = v58 + 1;
              if (v50)
              {
                goto LABEL_114;
              }

              v125[2] = v59;
            }

            else
            {
              sub_100054624(v51, isUniquelyReferenced_nonNull_native);
              v46 = sub_100053B80(v120, *(&v120 + 1));
              if ((v52 & 1) != (v53 & 1))
              {
                goto LABEL_115;
              }

LABEL_57:
              v16 = v119;
              if ((v52 & 1) == 0)
              {
                goto LABEL_58;
              }

LABEL_17:
              v24 = v46;

              sub_10003DF74(&v129, v125[7] + 56 * v24);
            }

            v7 = &selRef_initWithSystemImageNamed_;
            sub_100012E08(&v133);
            goto LABEL_19;
          }
        }

        sub_10000F25C(&v133 + 8, &v129, &qword_1001025D0, &unk_1000BD010);
        if (*(&v130 + 1))
        {

          sub_10000EBA4(&v129, &qword_1001025D0, &unk_1000BD010);
          goto LABEL_42;
        }

        sub_10000EBA4(&v129, &qword_1001025D0, &unk_1000BD010);
        if (qword_100101600 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100012AAC(v32, qword_100102450);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        v122 = v33;
        if (os_log_type_enabled(v33, v34))
        {
          buf = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *&v129 = v121;
          *buf = 136315138;
          v117 = v34;
          v35 = Dictionary.description.getter();
          v37 = v36;

          v38 = sub_1000B08A0(v35, v37, &v129);

          *(buf + 4) = v38;
          _os_log_impl(&_mh_execute_header, v122, v117, "HomePodSetupAutomation:Found Automation, but could not convert to choice %s", buf, 0xCu);
          sub_10000E70C(v121);
        }

        else
        {
        }

LABEL_61:
        sub_100012E08(&v133);
        sub_10000EA04(v135);
        v7 = &selRef_initWithSystemImageNamed_;
        v16 = v119;
      }
    }
  }

  else
  {
    sub_10000EBA4(&v133, &qword_1001036C0, &unk_1000BEE90);
  }

LABEL_65:
  v61 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedStateSequence;
  swift_beginAccess();
  v128 = v61;
  *&v3[v61] = _swiftEmptyArrayStorage;

  v62 = *&v3[v11];
  v63 = String._bridgeToObjectiveC()();
  v64 = [v62 v7[363]];

  if (v64)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v133 = v129;
  v134 = v130;
  v65 = v128;
  if (*(&v130 + 1))
  {
    sub_10000E6C4(&qword_100102428, &unk_1000BD2C0);
    if (swift_dynamicCast())
    {
      v66 = *(*&v135[0] + 16);
      if (v66)
      {
        v67 = (*&v135[0] + 40);
        do
        {
          v73 = *(v67 - 1);
          v74 = *v67;
          swift_bridgeObjectRetain_n();
          v75 = sub_100082414(v73, v74);
          if (v75 == 70)
          {
            if (qword_100101600 != -1)
            {
              swift_once();
            }

            v76 = type metadata accessor for Logger();
            sub_100012AAC(v76, qword_100102450);

            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v68 = swift_slowAlloc();
              v69 = v3;
              v70 = a1;
              v71 = swift_slowAlloc();
              *&v133 = v71;
              *v68 = 136315138;
              v72 = sub_1000B08A0(v73, v74, &v133);

              *(v68 + 4) = v72;
              _os_log_impl(&_mh_execute_header, v77, v78, "HomePodSetupAutomation: Found Automation screen name %s, but could not convert to valid HomePodSetupStep", v68, 0xCu);
              sub_10000E70C(v71);
              a1 = v70;
              v3 = v69;
              v65 = v128;
            }

            else
            {
            }
          }

          else
          {
            v79 = v75;

            swift_beginAccess();
            v80 = *&v3[v65];
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v65] = v80;
            if ((v81 & 1) == 0)
            {
              v80 = sub_100053838(0, v80[2] + 1, 1, v80);
              *&v3[v65] = v80;
            }

            v83 = v80[2];
            v82 = v80[3];
            if (v83 >= v82 >> 1)
            {
              v80 = sub_100053838((v82 > 1), (v83 + 1), 1, v80);
            }

            v80[2] = v83 + 1;
            v83[v80 + 32] = v79;
            *&v3[v65] = v80;
            swift_endAccess();
          }

          v67 += 2;
          --v66;
        }

        while (v66);
      }

      if (qword_100101600 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_100012AAC(v84, qword_100102450);
      v85 = v3;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v133 = v89;
        *v88 = 136315138;
        *&v129 = *&v3[v65];

        sub_10000E6C4(&unk_1001024F0, &qword_1000BD300);
        v90 = String.init<A>(reflecting:)();
        v92 = sub_1000B08A0(v90, v91, &v133);

        *(v88 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v86, v87, "HomePodSetupAutomation: Following forced screen were loaded from userDefaults: %s", v88, 0xCu);
        sub_10000E70C(v89);
      }

      v15 = a2;
    }
  }

  else
  {
    sub_10000EBA4(&v133, &qword_1001036C0, &unk_1000BEE90);
  }

  v93 = objc_allocWithZone(NSRegularExpression);
  v21 = sub_100050D30(0x283D6E6565726373, 0xEC000000292A775CLL, 1);

  v94 = String._bridgeToObjectiveC()();
  *&v129 = 15;
  *&v133 = a1;
  *(&v133 + 1) = v15;

  sub_10000E6C4(&qword_1001024D8, &unk_1000BD2F0);
  sub_10003DEBC();
  sub_10003DF20();
  v95 = _NSRange.init<A, B>(_:in:)();
  v97 = [v21 firstMatchInString:v94 options:0 range:{v95, v96}];

  if (v97)
  {
    [v97 rangeAtIndex:1];
    Range<>.init(_:in:)();
    if ((v98 & 1) == 0)
    {
      String.subscript.getter();
      v99 = static String._fromSubstring(_:)();
      v101 = v100;

      v102 = sub_100082414(v99, v101);
      if (v102 != 70)
      {
        v103 = v102;
        swift_beginAccess();
        sub_10003DD08(0, 0, v103);
        swift_endAccess();
      }
    }
  }

  v104 = *&v3[v124];
  v105 = String._bridgeToObjectiveC()();
  v106 = [v104 BOOLForKey:v105];

  v3[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault] = v106;
  if (v106)
  {
    v22 = 0x64656C62616E65;
  }

  else
  {
    v22 = 0x64656C6261736964;
  }

  if (v106)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  if (*(*&v3[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults] + 16) || v106)
  {
    if (qword_100101600 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_110:
}

uint64_t sub_10003CFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10007869C(a1);
  v7 = v6;
  v8 = *(v2 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults);
  if (*(v8 + 16) && (v9 = v5, , v10 = sub_100053B80(v9, v7), v12 = v11, , (v12 & 1) != 0))
  {
    sub_1000161DC(*(v8 + 56) + 56 * v10, a2);
  }

  else
  {

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 1;
  }

  sub_10000F25C(a2, &v31, &qword_1001024D0, &unk_1000BE910);
  v13 = *(&v33 + 1);
  sub_10000EBA4(&v31, &qword_1001024D0, &unk_1000BE910);
  if (v13 != 1)
  {
    if (*(a2 + 32) == 1)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      sub_1000161DC(a2, &v31);
      v14 = sub_10000BFCC();
      v15 = v16;
      sub_100012E08(&v31);
    }

    if (qword_100101600 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100012AAC(v17, qword_100102450);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      v22 = sub_1000B08A0(v14, v15, &v31);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "HomePodSetupAutomation: Automation selection %s being applied.", v20, 0xCu);
      sub_10000E70C(v21);
    }

    else
    {
    }
  }

  sub_10000F25C(a2, &v31, &qword_1001024D0, &unk_1000BE910);
  v23 = *(&v33 + 1);
  result = sub_10000EBA4(&v31, &qword_1001024D0, &unk_1000BE910);
  if (v23 == 1 && *(v3 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault) == 1)
  {
    if (qword_100101600 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100012AAC(v25, qword_100102450);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "HomePodSetupAutomation: Automation always select default enabled selecting primary button.", v28, 2u);
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    LOBYTE(v31) = 1;
    sub_100012DA0(v29, &v32, &qword_1001025D0, &unk_1000BD010);
    return sub_100012DA0(&v31, a2, &qword_1001024D0, &unk_1000BE910);
  }

  return result;
}

uint64_t sub_10003D3B8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode;
  if (!*(v2 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode) && !*(v2 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    return 0;
  }

  v6 = (a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId);
  *v6 = 0xD000000000000010;
  v6[1] = 0x80000001000C39C0;

  v7 = (a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId);
  *v7 = 0xD000000000000013;
  v7[1] = 0x80000001000C39E0;

  v8 = (a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
  *v8 = 0xD000000000000019;
  v8[1] = 0x80000001000C3A00;

  v9 = a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber;
  strcpy((a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber), "FFMC80BDPM4R");
  *(v9 + 13) = 0;
  *(v9 + 14) = -5120;

  *(a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR) = 0;
  *(a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService) = 1;
  v10 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags;
  v11 = *(v2 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags);
  if ((v11 & 8) != 0)
  {
    v12 = 34;
  }

  else
  {
    v12 = v4;
  }

  if ((v11 & 0x10) != 0)
  {
    v12 = 36;
  }

  if ((v11 & 0x20) != 0)
  {
    v12 = 30;
  }

  if ((v11 & 0x40) != 0)
  {
    v12 = 31;
  }

  if ((v11 & 0x100) != 0)
  {
    v12 = 39;
  }

  if ((v11 & 0x200) != 0)
  {
    v12 = 41;
  }

  if ((v11 & 0x800) != 0)
  {
    v12 = 18;
  }

  if ((v11 & 0x1000) != 0)
  {
    v12 = 19;
  }

  if ((v11 & 0x2000) != 0)
  {
    v12 = 20;
  }

  if ((v11 & 0x8080) != 0)
  {
    v12 = 43;
  }

  if ((v11 & 0x10000) != 0)
  {
    v12 = 33;
  }

  if ((v11 & 0x20000) != 0)
  {
    v12 = 11;
  }

  if ((v11 & 0x20000000000) != 0)
  {
    v12 = 8;
  }

  if ((v11 & 0x40000) != 0)
  {
    v12 = 10;
  }

  if ((v11 & 0x2000000) != 0)
  {
    v12 = 35;
  }

  if ((v11 & 0x4000000) != 0)
  {
    v12 = 32;
  }

  if ((v11 & 0x8000000) != 0)
  {
    v12 = 13;
  }

  if ((v11 & 0x20000000) != 0)
  {
    v12 = 44;
  }

  if ((v11 & 0x200000000) != 0)
  {
    v12 = 27;
  }

  if ((v11 & 0x400000000) != 0)
  {
    v12 = 63;
  }

  if ((v11 & 0x800000000) != 0)
  {
    v12 = 18;
  }

  if ((v11 & 0x4000) != 0)
  {
    v12 = 23;
  }

  if ((v11 & 0x2000000000) != 0)
  {
    v12 = 12;
  }

  if ((v11 & 0x4000000000) != 0)
  {
    v12 = 25;
  }

  if ((v11 & 0x400) != 0)
  {
    v12 = 17;
  }

  if ((v11 & 0x200000) != 0)
  {
    *v7 = 0xD000000000000010;
    v7[1] = 0x80000001000C39C0;

    v11 = *(v2 + v10);
    v12 = 17;
  }

  if ((v11 & 0x10000000) != 0)
  {
    v12 = 22;
  }

  if ((v11 & 0x80000) != 0)
  {
    v12 = 16;
  }

  if ((v11 & 0x100000) != 0)
  {
    v12 = 14;
  }

  if ((v11 & 0x1000000000) != 0)
  {
    *(a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) = 5;
  }

  if ((v11 & 0x10000000000) != 0)
  {
    *(a2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) = 6;
  }

  if ((v11 & 0x8000000000) != 0)
  {
    v13 = 26;
  }

  else
  {
    v13 = v12;
  }

  v14 = sub_10007869C(v13);
  v16 = v15;
  if (v14 == sub_10007869C(v4) && v16 == v17)
  {

LABEL_76:
    v20 = *(v2 + v5);
    switch(v20)
    {
      case 1:
        v13 = 42;
        break;
      case 14:
        v13 = 37;
        break;
      case 5:
        v13 = 38;
        break;
    }

    goto LABEL_82;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_76;
  }

LABEL_82:
  v21 = v13;

  return v21;
}

void sub_10003D768(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode;
  v2[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode] = 0;
  v5 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags;
  *&v2[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags] = 0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_100053B3C(v24), (v7 & 1) == 0))
  {
    sub_10000EA04(v24);
    goto LABEL_7;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v6, v25);
  sub_10000EA04(v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      v8 = 5;
      goto LABEL_8;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      v8 = 14;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 1;
LABEL_8:
  v2[v4] = v8;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v9 = sub_100053B3C(v24), (v10 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v9, v25);
    sub_10000EA04(v24);
    if (swift_dynamicCast())
    {
      v11 = String._bridgeToObjectiveC()();

      v12 = sub_1000069D0(v11);

      *&v2[v5] = v12;
    }

    if (!v2[v4])
    {
LABEL_15:
      if (!*&v2[v5])
      {
        return;
      }
    }
  }

  else
  {
    sub_10000EA04(v24);
    if (!v2[v4])
    {
      goto LABEL_15;
    }
  }

  if (qword_100101600 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100102450);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 136315394;
    v19 = sub_10004ADE0(v2[v4]);
    v21 = sub_1000B08A0(v19, v20, v24);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    v22 = *&v2[v5];

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Testing: testMode is %s  flags are %llu", v17, 0x16u);
    sub_10000E70C(v18);
  }

  else
  {
  }
}

id HomePodSetupAutomation.init()()
{
  v1 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults;
  *&v0[v1] = sub_10000E074(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault] = 0;
  *&v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation____lazy_storage___userDefaults] = 0;
  *&v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedStateSequence] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState] = 0;
  *&v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags] = 0;
  v2 = &v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HomePodSetupAutomation();
  return objc_msgSendSuper2(&v4, "init");
}

id HomePodSetupAutomation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupAutomation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10003DD08(char *result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = (*v3)[2];
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > (v5[3] >> 1))
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100053838(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10003DDDC(v7, a2, 1, v12);
  *v3 = v5;
  return result;
}

char *sub_10003DDDC(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_10003DEBC()
{
  result = qword_1001024E0;
  if (!qword_1001024E0)
  {
    sub_1000145EC(&qword_1001024D8, &unk_1000BD2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001024E0);
  }

  return result;
}

unint64_t sub_10003DF20()
{
  result = qword_1001024E8;
  if (!qword_1001024E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001024E8);
  }

  return result;
}

void sub_10003DFD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10003E038()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100102500);
  v1 = sub_100012AAC(v0, qword_100102500);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10003E100(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_images] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_bodyText];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_style] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_loadedMovie] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsUI] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsInProgress] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsRetried] = 0;
  v6 = [objc_allocWithZone(type metadata accessor for HomePodSetupIconContentView()) initWithCardStyle:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView] = v6;
  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for HomePodSetupIconContentViewController(0);
  v8 = objc_msgSendSuper2(&v10, "initWithContentView:", v7);

  return v8;
}

void sub_10003E2A0()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for HomePodSetupIconContentViewController(0);
  v32.receiver = v1;
  v32.super_class = v12;
  objc_msgSendSuper2(&v32, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100102500);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupIconContent: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100047340(v4, v11, type metadata accessor for HomePodSetupViewModel);
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100102500);
    sub_100046CC4(v11, v9, type metadata accessor for HomePodSetupViewModel);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100047508(v9, type metadata accessor for HomePodSetupViewModel);
      v25 = sub_1000B08A0(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupIconContent: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100047508(v9, type metadata accessor for HomePodSetupViewModel);
    }

    sub_1000420E0(v11);
    (*((swift_isaMask & *v1) + 0x1B0))(v11);
    if (v11[v5[40]] == 1)
    {
      if (*&v11[v5[51]] != 2)
      {
        sub_100044328();
      }
    }

    else if (v11[v5[33]] == 1)
    {
      sub_10003E820(v11);
    }

    else if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();
      v29 = String._bridgeToObjectiveC()();
      v30 = [v1 dismissalConfirmationActionWithTitle:v26 message:v27 confirmButtonTitle:v28 cancelButtonTitle:v29];

      [v1 setDismissButtonAction:v30];
    }

    sub_1000418F0(v11);
    sub_100047508(v11, type metadata accessor for HomePodSetupViewModel);
  }
}

void sub_10003E820(uint64_t a1)
{
  v3 = type metadata accessor for HomePodSetupViewModel(0);
  v4 = (a1 + *(v3 + 84));
  v5 = v4[1];
  v38[0] = *v4;
  v38[1] = v5;
  v6 = v4[3];
  v38[2] = v4[2];
  v38[3] = v6;
  v38[4] = v4[4];
  if (*(&v38[0] + 1))
  {
    v30 = v1;
    v29 = v38[0];
    v7 = v4[4];
    v9 = v4[1];
    v8 = v4[2];
    v36 = v4[3];
    v37 = v7;
    v10 = *v4;
    v34 = v9;
    v35 = v8;
    v11 = *(a1 + *(v3 + 40));
    v12 = *(v11 + 16);
    v33[2] = v8;
    v33[3] = v36;
    v33[4] = v7;
    v33[0] = v10;
    v33[1] = v9;
    sub_1000475F4(v33, aBlock);
    v31 = v12;
    if (v12)
    {
      v13 = 0;
      v14 = (v11 + 56);
      while (v13 < *(v11 + 16))
      {
        v16 = *(v14 - 3);
        v15 = *(v14 - 2);
        v17 = *(v14 - 1);
        v18 = *v14;
        if (sub_10000FEC4(*v14) == 0x7972616D697270 && v19 == 0xE700000000000000)
        {

LABEL_13:
          v22 = swift_allocObject();
          *(v22 + 16) = v29;
          v23 = v35;
          *(v22 + 32) = v34;
          *(v22 + 48) = v23;
          v24 = v37;
          *(v22 + 64) = v36;
          *(v22 + 80) = v24;
          *(v22 + 96) = v30;
          *(v22 + 104) = v16;
          *(v22 + 112) = v15;
          *(v22 + 120) = v17;
          *(v22 + 128) = v18;
          v25 = v30;
          v26 = String._bridgeToObjectiveC()();
          aBlock[4] = sub_1000476B8;
          aBlock[5] = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10003DFD0;
          aBlock[3] = &unk_1000EFB68;
          v27 = _Block_copy(aBlock);
          v28 = [objc_opt_self() actionWithTitle:v26 style:0 handler:v27];

          _Block_release(v27);

          [v25 setDismissButtonAction:v28];

          return;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_13;
        }

        ++v13;

        v14 += 32;
        if (v31 == v13)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
      sub_10000EBA4(v38, &unk_100102650, &qword_1000BD2B8);
    }
  }
}

uint64_t sub_10003EB08(uint64_t a1)
{
  v3 = type metadata accessor for HomePodSetupViewModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(a1 + *(__chkstk_darwin(v3 - 8) + 48));
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100046CC4(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomePodSetupViewModel);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_100047340(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for HomePodSetupViewModel);
  v10 = *(v6 + 16);
  if (v10)
  {
    v23 = objc_opt_self();
    v11 = (v6 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v11 += 32;
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v13;
      *(v16 + 32) = v14;
      *(v16 + 40) = v15;
      *(v16 + 48) = sub_1000473A8;
      *(v16 + 56) = v9;
      swift_bridgeObjectRetain_n();

      v17 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10004745C;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003DFD0;
      aBlock[3] = &unk_1000EF730;
      v18 = _Block_copy(aBlock);
      v19 = [v23 actionWithTitle:v17 style:v14 handler:v18];

      _Block_release(v18);

      v20 = [v1 addAction:v19];

      --v10;
    }

    while (v10);
  }
}

void sub_10003EDCC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100102500);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47 = v9;
    *v8 = 136315138;
    v10 = sub_10000FEC4(v4);
    v12 = sub_1000B08A0(v10, v11, &v47);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupIconContent: User tapped on button: %s", v8, 0xCu);
    sub_10000E70C(v9);
  }

  if (sub_10000FEC4(v4) == 0x4C66664F6E727574 && v13 == 0xEF6E6F697461636FLL)
  {

LABEL_9:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v16 = Strong;
    sub_10003F3B4();
    goto LABEL_11;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_9;
  }

  if (sub_10000FEC4(v4) == 0xD000000000000017 && 0x80000001000C07A0 == v17)
  {

    goto LABEL_17;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_17:
    v19 = [objc_opt_self() presenterForPrivacyUnifiedAbout];
    if (v19)
    {
      v16 = v19;
      v20 = [v19 combinedController];
      if (v20)
      {
        v21 = v20;
        [v20 setAllowsOpeningSafari:0];

        v22 = [v16 combinedController];
        if (v22)
        {
          v23 = v22;
          [v22 setPresentedFromPrivacyPane:1];

          swift_beginAccess();
          v24 = swift_unknownObjectWeakLoadStrong();
          [v16 setPresentingViewController:v24];

          [v16 present];
LABEL_11:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    return;
  }

  v25 = type metadata accessor for HomePodSetupViewModel(0);
  v26 = *(a3 + *(v25 + 208));
  if (v26)
  {
    v27 = (a3 + *(v25 + 212));
    v28 = v27[1];
    if (v28)
    {
      v29 = *v27;
      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = v26;
        sub_10003F820(v32, v29, v28);
      }

      return;
    }
  }

  if (sub_10000FEC4(v4) == 0x654674726F706572 && v33 == 0xEE006B6361626465)
  {

    goto LABEL_29;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    if (sub_10000FEC4(v4) == 0xD000000000000010 && 0x80000001000C06C0 == v36)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        if (sub_10000FEC4(v4) == 0xD000000000000014 && 0x80000001000C06A0 == v42)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v16 = v44;
          sub_10004075C();
          goto LABEL_11;
        }

        return;
      }
    }

    if (([objc_opt_self() isSiriForiCloudEnabled] & 1) == 0)
    {
      swift_beginAccess();
      v41 = swift_unknownObjectWeakLoadStrong();
      if (v41)
      {
        v16 = v41;
        sub_1000402F8();
        goto LABEL_11;
      }

      return;
    }

LABEL_36:
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      v40 = swift_unknownObjectWeakLoadStrong();

      if (v40)
      {
        v46 = 0;
        memset(v45, 0, sizeof(v45));
        memset(v48, 0, sizeof(v48));
        LOBYTE(v47) = v4;
        sub_100012DA0(v45, v48, &qword_1001025D0, &unk_1000BD010);
        sub_10007A070(&v47);
        swift_unknownObjectRelease();
        sub_100012E08(&v47);
      }
    }

    return;
  }

LABEL_29:
  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v16 = v35;
    sub_10003FDE8();
    goto LABEL_11;
  }
}

void sub_10003F3B4()
{
  v1 = v0;
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100102500);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIconContent: presentRMViCloudEnable", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_opt_self() alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v28 = sub_100047468;
  v29 = v13;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10003DFD0;
  v27 = &unk_1000EF780;
  v14 = _Block_copy(&v24);
  v15 = v1;

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v12 style:2 handler:v14];
  _Block_release(v14);

  [v10 addAction:v17];
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v28 = sub_100047488;
  v29 = v20;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10003DFD0;
  v27 = &unk_1000EF7D0;
  v21 = _Block_copy(&v24);
  v22 = v15;

  v23 = [v16 actionWithTitle:v19 style:0 handler:v21];
  _Block_release(v21);

  [v10 addAction:v23];
  [v10 setPreferredAction:v23];
  [v22 presentViewController:v10 animated:1 completion:0];
}

void sub_10003F820(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = String._bridgeToObjectiveC()();
  [v4 showActivityIndicatorWithStatus:v8];

  sub_10000E6C4(&qword_1001025D8, &qword_1000BD3D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD310;
  v10 = AATermsEntryiCloud;
  *(inited + 32) = AATermsEntryiCloud;
  v11 = AATermsEntryiTunes;
  v12 = AATermsEntryHomePodSLA;
  *(inited + 40) = AATermsEntryiTunes;
  *(inited + 48) = v12;
  v13 = AATermsEntryWarranty;
  *(inited + 56) = AATermsEntryWarranty;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  sub_100045648(inited);
  swift_setDeallocating();
  type metadata accessor for AATermsEntry(0);
  swift_arrayDestroy();
  v18 = [objc_opt_self() defaultStore];
  v19 = objc_allocWithZone(AAUIGenericTermsRemoteUI);
  sub_100046C70(&qword_1001025E0, type metadata accessor for AATermsEntry, &unk_1000BCB34);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v21 = [v19 initWithAccount:a1 inStore:v18 termsEntries:isa];

  if (v21)
  {
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100012AAC(v22, qword_100102500);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000B08A0(a2, a3, &v41);
      _os_log_impl(&_mh_execute_header, v23, v24, "T&Cs show: info=%s", v25, 0xCu);
      sub_10000E70C(v26);
    }

    v27 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsUI;
    v28 = *&v4[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsUI];
    *&v4[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsUI] = v21;
    v29 = v21;

    sub_10000E6C4(&qword_1001019C8, &unk_1000BD3E0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1000BB8E0;
    v41 = 0xD00000000000001BLL;
    v42[0] = 0x80000001000C3C40;
    AnyHashable.init<A>(_:)();
    *(v30 + 96) = &type metadata for String;
    strcpy((v30 + 72), "PreProxSetup");
    *(v30 + 85) = 0;
    *(v30 + 86) = -5120;
    v41 = 0xD000000000000019;
    v42[0] = 0x80000001000C3C60;
    AnyHashable.init<A>(_:)();
    *(v30 + 168) = &type metadata for String;
    *(v30 + 144) = a2;
    *(v30 + 152) = a3;

    sub_10000D8A8(v30);
    swift_setDeallocating();
    sub_10000E6C4(&qword_100101970, &unk_1000BC240);
    swift_arrayDestroy();
    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 setAdditionalHeaders:v31];

    v4[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsInProgress] = 1;
    v32 = *&v4[v27];
    if (v32)
    {
      [v32 setDelegate:v4];
      v33 = *&v4[v27];
      if (v33)
      {
        v34 = v33;
        [v34 presentFromViewController:v4 modal:0];
      }
    }
  }

  else
  {
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100012AAC(v35, qword_100102500);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "T&Cs: AAUIGenericTermsRemoteUI failed", v38, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      memset(v42, 0, sizeof(v42));
      LOBYTE(v41) = 9;
      sub_100012DA0(v39, v42, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v41);
      swift_unknownObjectRelease();
      sub_100012E08(&v41);
    }
  }
}

void sub_10003FDE8()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for FBKFeedbackForm.Question();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v10 = FBKFeedbackForm.init(identifier:)();
  v11 = *(v6 + 104);
  v11(v8, enum case for FBKFeedbackForm.Question.title(_:), v5);
  dispatch thunk of FBKFeedbackForm.prefill(question:answer:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  *v8 = 0x65725F657079743ALL;
  v8[1] = 0xE900000000000071;
  v11(v8, enum case for FBKFeedbackForm.Question.custom(_:), v5);
  dispatch thunk of FBKFeedbackForm.prefill(question:answer:)();
  v12(v8, v5);
  v13 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  v14 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v14 - 8) + 48))(v4, 1, v14))
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
  }

  else
  {
    v15 = *&v4[*(v14 + 196) + 8];

    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (v15)
    {
      sub_10000E6C4(&unk_100102640, &qword_1000BD408);
      type metadata accessor for URL();
      *(swift_allocObject() + 16) = xmmword_1000BD050;
      URL.init(fileURLWithPath:)();

      dispatch thunk of FBKFeedbackForm.attachments.setter();
    }
  }

  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100012AAC(v16, qword_100102500);
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    dispatch thunk of FBKFeedbackForm.attachments.getter();
    type metadata accessor for URL();
    v22 = Array.description.getter();
    v24 = v23;

    v25 = sub_1000B08A0(v22, v24, &v29);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Presenting Feedback Form with attachments %s", v20, 0xCu);
    sub_10000E70C(v21);
  }

  v26 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v27 = v17;
  v28 = FBKFeedbackDraftViewController.init(feedbackForm:)();
  swift_unknownObjectRetain();
  dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();
  [v1 presentViewController:v28 animated:1 completion:0];
}

void sub_1000402F8()
{
  v1 = v0;
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100102500);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIconContent: presentRMViCloudEnable", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_opt_self() alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v28 = sub_1000474A8;
  v29 = v13;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10003DFD0;
  v27 = &unk_1000EF820;
  v14 = _Block_copy(&v24);
  v15 = v1;

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v12 style:0 handler:v14];
  _Block_release(v14);

  [v10 addAction:v17];
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v28 = sub_1000474C8;
  v29 = v20;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10003DFD0;
  v27 = &unk_1000EF870;
  v21 = _Block_copy(&v24);
  v22 = v15;

  v23 = [v16 actionWithTitle:v19 style:1 handler:v21];
  _Block_release(v21);

  [v10 addAction:v23];
  [v10 setPreferredAction:v17];
  [v22 presentViewController:v10 animated:1 completion:0];
}

void sub_10004075C()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v48 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v9, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100102500);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "HomePodSetupIconContent: presentCancelSUAcknowledgement skipped since viewmodel is nil", v13, 2u);
    }
  }

  else
  {
    sub_100047340(v4, v8, type metadata accessor for HomePodSetupViewModel);
    if (v8[*(v5 + 140)] == 1)
    {
      if (qword_100101610 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100012AAC(v14, qword_100102500);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupIconContent: addButtonActions cancel tapped when SUBS finished", v17, 2u);
      }

      v18 = String._bridgeToObjectiveC()();
      v19 = sub_100006658(v18);

      if (!v19)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = String._bridgeToObjectiveC()();
      }

      v20 = String._bridgeToObjectiveC()();
      v21 = sub_100006658(v20);

      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      v22 = [objc_opt_self() alertControllerWithTitle:v19 message:v21 preferredStyle:1];

      v23 = String._bridgeToObjectiveC()();
      v24 = sub_100006658(v23);

      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      v53 = sub_1000477B0;
      v54 = v25;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003DFD0;
      v52 = &unk_1000EF960;
      v26 = _Block_copy(&aBlock);
      v27 = v22;

      v28 = [objc_opt_self() actionWithTitle:v24 style:0 handler:v26];
      _Block_release(v26);

      [v27 addAction:v28];
      [v27 setPreferredAction:v28];
      [v1 presentViewController:v27 animated:1 completion:0];
    }

    else
    {
      if (qword_100101610 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100012AAC(v29, qword_100102500);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "HomePodSetupIconContent: addButtonActions cancel tapped, presenting confirmation alert", v32, 2u);
      }

      v33 = String._bridgeToObjectiveC()();
      v34 = sub_100006658(v33);

      if (!v34)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = String._bridgeToObjectiveC()();
      }

      v35 = String._bridgeToObjectiveC()();
      v36 = sub_100006658(v35);

      if (!v36)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = String._bridgeToObjectiveC()();
      }

      v37 = [objc_opt_self() alertControllerWithTitle:v34 message:v36 preferredStyle:1];

      v38 = String._bridgeToObjectiveC()();
      v39 = sub_100006658(v38);

      if (!v39)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = String._bridgeToObjectiveC()();
      }

      v40 = swift_allocObject();
      *(v40 + 16) = v1;
      v53 = sub_1000474E8;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003DFD0;
      v52 = &unk_1000EF8C0;
      v41 = _Block_copy(&aBlock);
      v48 = v1;

      v42 = objc_opt_self();
      v43 = [v42 actionWithTitle:v39 style:0 handler:v41];
      _Block_release(v41);

      [v37 addAction:v43];
      v44 = String._bridgeToObjectiveC()();
      v45 = sub_100006658(v44);

      if (!v45)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = String._bridgeToObjectiveC()();
      }

      v46 = swift_allocObject();
      *(v46 + 16) = v37;
      v53 = sub_1000477B0;
      v54 = v46;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003DFD0;
      v52 = &unk_1000EF910;
      v47 = _Block_copy(&aBlock);
      v28 = v37;

      v27 = [v42 actionWithTitle:v45 style:1 handler:v47];
      _Block_release(v47);

      [v28 addAction:v27];
      [v28 setPreferredAction:v43];
      [v48 presentViewController:v28 animated:1 completion:0];
    }

    sub_100047508(v8, type metadata accessor for HomePodSetupViewModel);
  }
}

uint64_t sub_100041150(char a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v10, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
  }

  sub_100047340(v5, v9, type metadata accessor for HomePodSetupViewModel);
  if (v9[*(v6 + 168)] == 1)
  {
    sub_10000E6C4(&unk_1001036E0, &unk_1000BD410);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000BD050;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD000000000000010;
    *(v12 + 40) = 0x80000001000C4000;
    v13 = objc_allocWithZone(UIActivityViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v13 initWithActivityItems:isa applicationActivities:0];

    v16 = [v15 popoverPresentationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 view];
      [v17 setSourceView:v18];
    }

    v19 = v1;
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100102500);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupIconContent: showing sharesheet", v23, 2u);
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v15;
    aBlock[4] = sub_100047568;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000EF9B0;
    v25 = _Block_copy(aBlock);
    v26 = v15;

    v1 = v19;
    [v19 presentViewController:v26 animated:0 completion:v25];
    _Block_release(v25);
  }

  v27 = type metadata accessor for HomePodSetupIconContentViewController(0);
  v30.receiver = v1;
  v30.super_class = v27;
  objc_msgSendSuper2(&v30, "viewWillDisappear:", a1 & 1);
  return sub_100047508(v9, type metadata accessor for HomePodSetupViewModel);
}

void sub_1000415B4(void *a1)
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100102500);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIconContent: dismissing sharesheet", v5, 2u);
  }

  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100091194;
  v7[3] = &unk_1000EF9D8;
  v6 = _Block_copy(v7);
  [a1 dismissViewControllerAnimated:0 completion:v6];
  _Block_release(v6);
}

void sub_100041770(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HomePodSetupIconContentViewController(0);
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100102500);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupIconContent: viewDidDisappear", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView;
  [*&v2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView] stop];
  v9 = *&v2[v8];
  *&v2[v8] = 0;
}

int *sub_1000418F0(uint64_t a1)
{
  v2 = v1;
  result = type metadata accessor for HomePodSetupViewModel(0);
  if (!*(a1 + result[24] + 8))
  {
    return result;
  }

  v5 = (a1 + result[25]);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_100046DBC;
  }

  else
  {
    v11 = (a1 + result[26]);
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v8 = swift_allocObject();
      v8[2] = v13;
      v8[3] = v12;

      v10 = sub_100046D74;
    }

    else
    {
      if (*(a1 + result[50]) != 1)
      {
        v15 = nullsub_1;
        v8 = 0;
        goto LABEL_9;
      }

      v8 = swift_allocObject();
      v8[2] = v1;
      v14 = v1;
      v10 = sub_100046D34;
    }
  }

  v15 = v10;

LABEL_9:
  sub_10003AE18(0, &qword_100102628, UIButton_ptr);
  sub_10003AE18(0, &unk_100102630, UIAction_ptr);

  v27.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v27).super.super.super.super.isa;
  [(objc_class *)v16.super.super.super.super.isa setTranslatesAutoresizingMaskIntoConstraints:0, 0, 0, 0, v15, v8];
  v17 = [(objc_class *)v16.super.super.super.super.isa titleLabel];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v20 = [v19 fontDescriptorWithSymbolicTraits:2];

    sub_10000E6C4(&qword_1001023E0, &qword_1000BD400);
    Optional.unwrap(_:file:line:)();

    v21 = v26;
    [v21 pointSize];
    v23 = [objc_opt_self() fontWithDescriptor:v21 size:v22];

    [v18 setFont:v23];
    [v18 setAdjustsFontForContentSizeCategory:1];
    [v18 setNumberOfLines:0];
  }

  v24 = *&v2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView];
  v25 = v16.super.super.super.super.isa;
  sub_100047AFC(v16.super.super.super.super.isa);
}

void sub_100041C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v5];

  if (v6)
  {
    [v6 setPresentingViewController:a4];
    [v6 setDisplayDeviceType:6];
    [v6 present];
  }
}

id sub_100041D50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    sub_10000F25C(v10, v8, &qword_100101F08, &unk_1000BD100);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    v16 = 0;
    if ((*(v14 + 48))(v8, 1, v13) != 1)
    {
      URL._bridgeToObjectiveC()(v15);
      v16 = v17;
      (*(v14 + 8))(v8, v13);
    }

    sub_10000DC20(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v12 openURL:v16 withOptions:isa];

    if ((v19 & 1) == 0)
    {
      if (qword_100101610 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100012AAC(v20, qword_100102500);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1000B08A0(a2, a3, &v26);
        _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupIconContent: unable to open URL %s", v23, 0xCu);
        sub_10000E70C(v24);
      }
    }

    return sub_10000EBA4(v10, &qword_100101F08, &unk_1000BD100);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100042068(uint64_t a1, void *a2)
{
  type metadata accessor for HomePodPrivacyConsentViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a2 presentViewController:v3 animated:1 completion:0];
}

void sub_1000420E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for AdjustedImage(0);
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for AdjustedMovie(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = String._bridgeToObjectiveC()();
  [v2 setTitle:v16];

  v17 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v17];

  v18 = type metadata accessor for HomePodSetupViewModel(0);
  v19 = *(a1 + v18[56]);
  if (v19)
  {
    v20 = v19;
    sub_100043FE0(v20);
  }

  v21 = (a1 + v18[7]);
  v22 = *v21;
  v23 = v21[1];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v25 = (a1 + v18[8]);
  v22 = *v25;
  v23 = v25[1];
  v26 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
LABEL_9:
    sub_100043C7C(v22, v23);
  }

  sub_10000F25C(a1 + v18[6], v11, &unk_100101FB0, &qword_1000BD128);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_100047340(v11, v15, type metadata accessor for AdjustedMovie);
    if ((v2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_loadedMovie] & 1) == 0)
    {
      v2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_loadedMovie] = 1;
      sub_1000429D8(v15);
      sub_100042F60(v15);
    }

    v32 = type metadata accessor for AdjustedMovie;
    goto LABEL_21;
  }

  sub_10000EBA4(v11, &unk_100101FB0, &qword_1000BD128);
  v27 = *(a1 + v18[11]);
  if (v27 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    sub_10000F25C(a1 + v18[28], v6, &unk_100102610, &unk_1000BD130);
    if ((*(v59 + 48))(v6, 1, v60) == 1)
    {
      sub_10000EBA4(v6, &unk_100102610, &unk_1000BD130);
      goto LABEL_22;
    }

    v15 = v58;
    sub_100047340(v6, v58, type metadata accessor for AdjustedImage);
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100012AAC(v47, qword_100102500);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "HomePodSetupIconContent: iconImages empty, prodImage used", v50, 2u);
    }

    v51 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v15];
    sub_100083828(v15 + *(v60 + 20));
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = *&v2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView];
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000BCE00;
    *(v53 + 32) = v51;
    v54 = *&v52[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
    *&v52[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = v53;
    v55 = v52;
    v56 = v51;
    sub_10004781C(v54);

    v32 = type metadata accessor for AdjustedImage;
LABEL_21:
    sub_100047508(v15, v32);
    goto LABEL_22;
  }

LABEL_13:
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100012AAC(v28, qword_100102500);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "HomePodSetupIconContent: iconImages used", v31, 2u);
  }

  sub_100043938(v27);
LABEL_22:
  v33 = *(a1 + v18[23]);
  if (v33)
  {
    v34 = v33;
    if ([v34 length] >= 1)
    {
      v35 = [objc_allocWithZone(UILabel) init];
      v36 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
      v37 = [v36 fontDescriptorWithSymbolicTraits:2];

      v61 = v37;
      sub_10000E6C4(&qword_1001023E0, &qword_1000BD400);
      Optional.unwrap(_:file:line:)();

      v38 = v62;
      [v38 pointSize];
      v40 = [objc_opt_self() fontWithDescriptor:v38 size:v39];

      [v35 setFont:v40];
      v41 = [objc_opt_self() labelColor];
      [v35 setTextColor:v41];

      [v35 setTextAlignment:1];
      [v35 setNumberOfLines:0];
      [v35 setAttributedText:v34];
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v42 = *&v2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView];
      v43 = *&v42[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabel];
      *&v42[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabel] = v35;
      v44 = v35;
      v45 = v42;
      sub_100047A0C(v43);

      v34 = v43;
    }
  }

  if (*(a1 + v18[57]) == 1)
  {
    [v2 setDismissalType:*(a1 + v18[19])];
  }

  if (*(a1 + v18[39]) == 1)
  {
    v46 = String._bridgeToObjectiveC()();
    [v2 showActivityIndicatorWithStatus:v46];
  }
}

void sub_1000429D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILayoutGuide) init];
  v3 = [v1 contentView];
  [v3 addLayoutGuide:v2];

  v4 = [objc_allocWithZone(SFMediaPlayerView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview:v4];

    v7 = [v1 contentView];
    v42 = [v7 mainContentGuide];

    v40 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000BD320;
    v9 = [v2 topAnchor];
    v10 = [v42 topAnchor];
    v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];

    *(v8 + 32) = v11;
    v12 = [v2 bottomAnchor];
    v13 = [v42 bottomAnchor];
    v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

    *(v8 + 40) = v14;
    v15 = [v2 centerYAnchor];
    v16 = [v42 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v8 + 48) = v17;
    v18 = [v2 leadingAnchor];
    v19 = [v42 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v8 + 56) = v20;
    v21 = [v2 trailingAnchor];
    v22 = [v42 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v8 + 64) = v23;
    v24 = [v2 heightAnchor];
    v25 = type metadata accessor for AdjustedMovie(0);
    v26 = [v24 constraintEqualToConstant:*(a1 + v25[8])];

    *(v8 + 72) = v26;
    v27 = [v4 centerYAnchor];
    v28 = [v2 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v8 + 80) = v29;
    v30 = [v4 centerXAnchor];
    v31 = [v2 centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v8 + 88) = v32;
    v33 = [v4 heightAnchor];
    v34 = [v33 constraintEqualToConstant:*(a1 + v25[7])];

    *(v8 + 96) = v34;
    v35 = [v4 widthAnchor];

    v36 = [v35 constraintEqualToConstant:*(a1 + v25[6])];
    *(v8 + 104) = v36;
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints:isa];

    v38 = *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView];
    *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView] = v4;
    v39 = v4;

    [v39 setUserInteractionEnabled:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100042F60(uint64_t *a1)
{
  v3 = type metadata accessor for AdjustedMovie(0);
  v4 = __chkstk_darwin(v3);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = (&v51 - v7);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView];
  if (v13)
  {
    v54 = v1;
    v52 = v13;
    v53 = v12;
    URL.init(fileURLWithPath:isDirectory:)();
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v51 = v3;
    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100102500);
    sub_100046CC4(a1, v8, type metadata accessor for AdjustedMovie);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = v10;
      v20 = v9;
      v22 = *v8;
      v21 = v8[1];

      sub_100047508(v8, type metadata accessor for AdjustedMovie);
      v23 = sub_1000B08A0(v22, v21, aBlock);

      *(v17 + 4) = v23;
      v9 = v20;
      v10 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupIconContent: playMovie:movieName %s", v17, 0xCu);
      sub_10000E70C(v18);
    }

    else
    {

      sub_100047508(v8, type metadata accessor for AdjustedMovie);
    }

    v32 = v54;
    v33 = v52;
    [v52 setPausesAfterEachItem:1];
    v34 = objc_allocWithZone(SFMediaPlayerItem);
    v35 = v53;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v39 = [v34 initWithURL:v37];

    [v33 addMovieItem:v39];
    [v33 play];
    [v33 setHidden:0];
    v40 = [objc_opt_self() currentTraitCollection];
    v41 = [v40 userInterfaceStyle];

    if (v41 == 2)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    URL._bridgeToObjectiveC()(*(v51 + 20));
    v44 = v43;
    [v33 updateViewForAssetType:v42 adjustmentsURL:v43];

    v45 = [v32 contentView];
    v46 = [v45 titleView];

    if (v46)
    {
      [v46 setAlpha:0.0];
    }

    sub_10006F468(0.0);
    v47 = objc_opt_self();
    v48 = swift_allocObject();
    *(v48 + 16) = v32;
    aBlock[4] = sub_100046D2C;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000EF618;
    v49 = _Block_copy(aBlock);
    v50 = v32;

    [v47 animateWithDuration:65538 delay:v49 options:0 animations:1.5 completion:0.7];
    _Block_release(v49);

    (*(v10 + 8))(v35, v9);
  }

  else
  {
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100012AAC(v24, qword_100102500);
    sub_100046CC4(a1, v6, type metadata accessor for AdjustedMovie);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = *v6;
      v30 = v6[1];

      sub_100047508(v6, type metadata accessor for AdjustedMovie);
      v31 = sub_1000B08A0(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "HomePodSetupIconContent: playMovie:movieName %s but movieView is nil", v27, 0xCu);
      sub_10000E70C(v28);
    }

    else
    {

      sub_100047508(v6, type metadata accessor for AdjustedMovie);
    }
  }
}

void sub_100043618()
{
  v1 = v0;
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100102500);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIconContent: presentCancelSUSkipped called", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_opt_self() alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v17[4] = sub_100012D88;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10003DFD0;
  v17[3] = &unk_1000EF528;
  v14 = _Block_copy(v17);
  v15 = v10;

  v16 = [objc_opt_self() actionWithTitle:v12 style:1 handler:v14];
  _Block_release(v14);

  [v15 addAction:v16];
  [v1 presentViewController:v15 animated:1 completion:0];
}

id sub_100043938(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_images;

  v5 = sub_100093610(v4, a1);

  if ((v5 & 1) == 0)
  {
    *&v1[v3] = a1;

    result = [v1 isViewLoaded];
    if (result)
    {
      v12 = _swiftEmptyArrayStorage;
      v7 = v1;

      sub_100045548(v8, v7, &v12);

      v9 = *&v7[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView];
      v10 = *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
      *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = v12;
      v11 = v9;

      sub_10004781C(v10);
    }
  }

  return result;
}

void sub_100043A54(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = [objc_allocWithZone(PRXImageView) initWithStyle:*(a2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_style)];
  [v10 setImage:v9];
  v11 = v10;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(a2 + v12, v8, &qword_100103420, &unk_1000BCE90);
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13))
  {

    sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
  }

  else
  {
    v14 = &v8[*(v13 + 128)];
    v15 = *v14;
    v16 = v14[8];
    sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
    if (v16 != 1)
    {
      [v11 setContentMode:v15];
    }
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_100043C7C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = (v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_bodyText);
  v9 = *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_bodyText) == a1 && *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_bodyText + 8) == a2;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *v8 = a1;
    v8[1] = a2;

    v10 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v11 = String._bridgeToObjectiveC()();
    [v10 setText:v11];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
    swift_beginAccess();
    sub_10000F25C(v2 + v12, v7, &qword_100103420, &unk_1000BCE90);
    v13 = type metadata accessor for HomePodSetupViewModel(0);
    if ((*(*(v13 - 8) + 48))(v7, 1, v13))
    {
      sub_10000EBA4(v7, &qword_100103420, &unk_1000BCE90);
    }

    else
    {
      v14 = &v7[*(v13 + 32)];
      v16 = *v14;
      v15 = *(v14 + 1);

      sub_10000EBA4(v7, &qword_100103420, &unk_1000BCE90);

      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = [objc_allocWithZone(PRXTextStyleDefinition) initWithStyle:3];
        v19 = v10;
        v20 = [v18 textColor];
        [v19 setTextColor:v20];

        v21 = [v18 font];
        [v19 setFont:v21];

        [v19 setTextAlignment:{objc_msgSend(v18, "textAlignment")}];
        v22 = v19;
        [v22 setAccessibilityTraits:{objc_msgSend(v18, "accessibilityTraits")}];

        [v22 setNumberOfLines:{objc_msgSend(v18, "numberOfLines")}];
      }
    }

    v23 = *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView);
    v24 = *&v23[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabel];
    *&v23[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabel] = v10;
    v25 = v10;
    v26 = v23;
    sub_100047A20(v24);
  }
}

void sub_100043FE0(uint64_t a1)
{
  v3 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  [v3 setAttributedText:a1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView);
  v7 = *&v4[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelView];
  *&v4[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelView] = v3;
  v5 = v3;
  v6 = v4;
  sub_100047808(v7);
}

id sub_1000440B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupIconContentViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupIconContentViewController(uint64_t a1)
{
  result = qword_100102550;
  if (!qword_100102550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000441F0(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000442D4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_100044328()
{
  v1 = objc_opt_self();
  v2 = [v1 sysDropBuildMode] == 2 || objc_msgSend(v1, "sysDropBuildMode") == 3;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = v0;
  v5 = String._bridgeToObjectiveC()();
  v8[4] = sub_1000475A8;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10003DFD0;
  v8[3] = &unk_1000EFA28;
  v6 = _Block_copy(v8);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  [v4 setDismissButtonAction:v7];
}

void sub_10004448C(uint64_t a1, char a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v6 message:v9 preferredStyle:1];

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v34 = sub_1000475B4;
  v35 = v13;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EFA78;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v12 style:0 handler:v14];
  _Block_release(v14);

  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v34 = sub_1000475D4;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EFAC8;
  v21 = _Block_copy(&aBlock);
  v22 = v15;

  v23 = [v16 actionWithTitle:v19 style:0 handler:v21];
  _Block_release(v21);

  v24 = String._bridgeToObjectiveC()();
  v25 = sub_100006658(v24);

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v10;
  v34 = sub_1000477B0;
  v35 = v26;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EFB18;
  v27 = _Block_copy(&aBlock);
  v28 = v10;

  v29 = [v16 actionWithTitle:v25 style:1 handler:v27];
  _Block_release(v27);

  [v28 addAction:v17];
  if ((a2 & 1) == 0)
  {
    [v28 addAction:v23];
  }

  [v28 addAction:v29];
  [v28 setPreferredAction:v17];
  [v22 presentViewController:v28 animated:1 completion:0];
}

uint64_t sub_100044998(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    memset(v8, 0, sizeof(v8));
    v7[0] = a3;
    sub_100012DA0(v5, v8, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v7);
    swift_unknownObjectRelease();
    return sub_100012E08(v7);
  }

  return result;
}

void sub_100044A28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  v18 = a3;

  v19 = String._bridgeToObjectiveC()();

  v34 = sub_10004770C;
  v35 = v17;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EFBB8;
  v20 = _Block_copy(&v30);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v14 addAction:v22];
  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100006658(v23);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  v26 = v18;
  v27 = String._bridgeToObjectiveC()();

  v34 = sub_10004771C;
  v35 = v25;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003DFD0;
  v33 = &unk_1000EFC08;
  v28 = _Block_copy(&v30);

  v29 = [v21 actionWithTitle:v27 style:1 handler:v28];
  _Block_release(v28);

  [v14 addAction:v29];
  [v14 setPreferredAction:v22];
  [v26 presentViewController:v14 animated:1 completion:0];
}

uint64_t sub_100044DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    memset(v11, 0, sizeof(v11));
    v10[0] = a6;
    sub_100012DA0(v8, v11, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v10);
    swift_unknownObjectRelease();
    return sub_100012E08(v10);
  }

  return result;
}

void sub_100044E30(int a1, id a2)
{
  v2 = [a2 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100044EA0(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 titleView];

  if (v2)
  {
    [v2 setAlpha:1.0];
  }

  sub_10006F468(1.0);
}

id sub_100045000(char a1, _BYTE *a2)
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100102500);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "T&Cs success=%{BOOL}d", v7, 8u);
  }

  a2[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsInProgress] = 0;
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      memset(v12, 0, sizeof(v12));
      v11[0] = 8;
      sub_100012DA0(v9, v12, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(v11);
      swift_unknownObjectRelease();
      return sub_100012E08(v11);
    }
  }

  else
  {

    return [a2 hideActivityIndicator];
  }

  return result;
}

uint64_t sub_10004521C(uint64_t a1, unint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsInProgress) = 0;
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100102500);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    if (!a2)
    {
      sub_10000D8A8(_swiftEmptyArrayStorage);
    }

    v8 = Dictionary.description.getter();
    v10 = v9;

    v11 = sub_1000B08A0(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "T&Cs info %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    memset(v16, 0, sizeof(v16));
    LOBYTE(v15) = 8;
    sub_100012DA0(v13, v16, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(&v15);
    swift_unknownObjectRelease();
    return sub_100012E08(&v15);
  }

  return result;
}

void sub_100045548(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100043A54(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void *sub_100045648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E6C4(&qword_1001025E8, &unk_1000BD3F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10004583C(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100102500);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupIconContent: presenter:didUpdate viewModel", v9, 2u);
  }

  sub_100046CC4(a1, v5, type metadata accessor for HomePodSetupViewModel);
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v5, v1 + v11, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if (*(a1 + *(v10 + 136)) == 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "HomePodSetupIconContent: presentCancelSUSkipped", v14, 2u);
    }

    sub_100043618();
  }

  else if ([v1 isViewLoaded])
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupIconContent: configureUI", v17, 2u);
    }

    sub_1000420E0(a1);
  }
}

uint64_t sub_100045B38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100045F60()
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100102500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000B08A0(0xD000000000000038, 0x80000001000C3CC0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E70C(v3);
  }
}

void sub_1000461F0(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsInProgress) == 1)
  {
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = a1 & 1;
    *(v12 + 24) = v1;
    aBlock[4] = sub_100046CB8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000EF5C8;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100046C70(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100012AAC(v15, qword_100102500);
    v20 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v20, v16, "T&Cs Not In progress", v17, 2u);
    }

    v18 = v20;
  }
}

void sub_1000465B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsInProgress) == 1)
  {
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v20 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = a1;
    aBlock[4] = sub_100046C68;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000EF578;
    v12 = _Block_copy(aBlock);

    v13 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100046C70(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (qword_100101610 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100012AAC(v15, qword_100102500);
    v20 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v20, v16, "T&Cs Not In progress", v17, 2u);
    }

    v18 = v20;
  }
}

uint64_t sub_100046980()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v17 - v5;
  if (*(v0 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsRetried))
  {
    goto LABEL_5;
  }

  *(v0 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_termsRetried) = 1;
  v7 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v0 + v7, v6, &qword_100103420, &unk_1000BCE90);
  v8 = type metadata accessor for HomePodSetupViewModel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8))
  {
    v10 = v6;
LABEL_4:
    sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
    goto LABEL_5;
  }

  v12 = *&v6[*(v8 + 208)];
  v13 = v12;
  sub_10000EBA4(v6, &qword_100103420, &unk_1000BCE90);
  if (v12)
  {
    sub_10000F25C(v0 + v7, v4, &qword_100103420, &unk_1000BCE90);
    if (v9(v4, 1, v8))
    {

      v10 = v4;
      goto LABEL_4;
    }

    v14 = &v4[*(v8 + 212)];
    v16 = *v14;
    v15 = v14[1];

    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (v15)
    {
      sub_10003F820(v13, v16, v15);
    }
  }

LABEL_5:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    memset(v20, 0, sizeof(v20));
    v19[0] = 37;
    sub_100012DA0(v17, v20, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v19);
    swift_unknownObjectRelease();
    return sub_100012E08(v19);
  }

  return result;
}

uint64_t sub_100046C28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100046CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046D3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046D7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046DC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046E00()
{
  v1 = v0;
  v2 = type metadata accessor for HomePodSetupViewModel(0);
  v26 = *(*(v2 - 1) + 80);
  v24 = *(*(v2 - 1) + 64);

  v25 = (v26 + 24) & ~v26;
  v3 = v0 + v25;

  v4 = v0 + v25 + v2[6];
  v5 = type metadata accessor for AdjustedMovie(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 20);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = (v3 + v2[14]);
  if (v8[3])
  {
    sub_10000E70C(v8);
  }

  if (*(v3 + v2[20] + 8))
  {
  }

  if (*(v3 + v2[21] + 8))
  {
  }

  v9 = (v3 + v2[28]);
  v10 = type metadata accessor for AdjustedImage(0);
  v11 = *(*(v10 - 8) + 48);
  if (!v11(v9, 1, v10))
  {

    v12 = *(v10 + 20);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v9 + v12, 1, v13))
    {
      (*(v14 + 8))(v9 + v12, v13);
    }
  }

  v15 = (v3 + v2[58]);
  v16 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {

    v17 = *(v10 + 20);
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (!v20(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }

    v21 = (v15 + *(v16 + 20));
    if (!v11(v21, 1, v10))
    {

      v22 = *(v10 + 20);
      if (!v20(v21 + v22, 1, v18))
      {
        (*(v19 + 8))(v21 + v22, v18);
      }
    }
  }

  return _swift_deallocObject(v1, v25 + v24, v26 | 7);
}

uint64_t sub_100047340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000473A8(char *a1)
{
  v3 = *(type metadata accessor for HomePodSetupViewModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10003EDCC(a1, v4, v5);
}

uint64_t sub_10004741C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100047508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100047570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047650()
{

  return _swift_deallocObject(v0, 129, 7);
}

uint64_t sub_1000476CC()
{

  return _swift_deallocObject(v0, 49, 7);
}

void sub_10004781C(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewConstraints] = 0;

  if (a1)
  {
    if (a1 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v5 removeFromSuperview];

        ++v4;
        if (v7 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

LABEL_15:
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_33;
    }

    for (j = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!j)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v1 addSubview:v12];

        ++v10;
        if (v13 == j)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_27:

    [v1 setNeedsUpdateConstraints];
  }
}

void sub_100047A34(void *a1, void *a2, void *a3)
{
  *&v3[*a2] = 0;

  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v6 = *&v3[*a3];
  if (v6)
  {
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v7];
    [v3 setNeedsUpdateConstraints];
  }
}

void sub_100047AFC(void *a1)
{
  v2 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreInfoButton;
  v6 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreInfoButton];
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreInfoButton] = a1;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreButtonConstraints] = 0;
  v3 = a1;

  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsUpdateConstraints];
  }
}

char *sub_100047BC4(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewGuideConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabelConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreButtonConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabelConstraints] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewsGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelView] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabel] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabel] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreInfoButton] = 0;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for HomePodSetupIconContentView();
  v4 = objc_msgSendSuper2(&v28, "initWithCardStyle:", a1);
  v5 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewsGuide;
  v6 = *&v4[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewsGuide];
  v7 = v4;
  [v7 addLayoutGuide:v6];
  v8 = [v7 mainContentGuide];
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD420;
  v10 = [*&v4[v5] topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] leadingAnchor];
  v14 = [v8 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v4[v5] trailingAnchor];
  v17 = [v8 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v4[v5] centerXAnchor];
  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [*&v4[v5] bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  v25 = objc_opt_self();
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v25 activateConstraints:isa];

  *&v7[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewGuideConstraints] = v9;

  return v7;
}

void sub_100047FCC(uint64_t a1)
{
  v2 = v1;
  v120.receiver = v1;
  v120.super_class = type metadata accessor for HomePodSetupIconContentView();
  objc_msgSendSuper2(&v120, "updateConstraints");
  v3 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelView];
  v119 = v1;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelViewConstraints;
    if (!*&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelViewConstraints])
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1000BD0A0;
      v6 = v3;
      v7 = [v6 leadingAnchor];
      v8 = [v119 mainContentGuide];
      v9 = [v8 leadingAnchor];

      v10 = [v7 constraintEqualToAnchor:v9];
      *(v5 + 32) = v10;
      v11 = [v6 trailingAnchor];
      v12 = [v119 mainContentGuide];
      v13 = [v12 trailingAnchor];

      v14 = [v11 constraintEqualToAnchor:v13];
      v2 = v119;
      *(v5 + 40) = v14;
      v15 = objc_opt_self();
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v15 activateConstraints:isa];

      *&v119[v4] = v5;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v17 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
  if (v17)
  {
    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_46;
      }
    }

    v117 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewConstraints;
    if (!*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewConstraints])
    {
      if (v18 < 1)
      {
        __break(1u);
      }

      else
      {
        v19 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewsGuide];
        v20 = PRXIconToIconMargin;

        v21 = 0;
        v22 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v17 + v21 + 4);
          }

          v24 = v23;
          v25 = [v24 centerYAnchor];
          if (!v22 || (v26 = [v22 centerYAnchor]) == 0)
          {
            v26 = [v19 centerYAnchor];
          }

          v27 = [v25 constraintEqualToAnchor:{v26, v117}];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v28 = [v24 image];

          if (v28)
          {
            [v28 size];
            v30 = v29;
            v32 = v31;
          }

          else
          {
            v30 = 1.0;
            v32 = 1.0;
          }

          if (v30 <= 0.0)
          {
            v33 = 1.0;
          }

          else
          {
            v33 = v32 / v30;
          }

          v34 = [v24 heightAnchor];
          v35 = [v24 widthAnchor];
          v36 = [v34 constraintEqualToAnchor:v35 multiplier:v33];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v37 = [v24 topAnchor];
          v38 = [v19 topAnchor];
          v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = [v24 bottomAnchor];
          v41 = [v19 bottomAnchor];
          v42 = [v40 constraintLessThanOrEqualToAnchor:v41];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v22)
          {
            v43 = [v24 leadingAnchor];
            v44 = [v22 trailingAnchor];
            v45 = [v43 constraintEqualToAnchor:v44 constant:v20];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v46 = [v22 widthAnchor];
            v47 = [v24 widthAnchor];
            v48 = [v46 constraintEqualToAnchor:v47];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
            v49 = [v24 leadingAnchor];
            v50 = [v19 leadingAnchor];
            v51 = [v49 constraintEqualToAnchor:v50];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          ++v21;
          v22 = v24;
        }

        while (v18 != v21);

        v17 = v24;
        v52 = [v17 trailingAnchor];
        v53 = [v19 trailingAnchor];
        v54 = [v52 constraintEqualToAnchor:v53];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_45;
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_45:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v55 = objc_opt_self();
      sub_1000163D8();
      v56 = Array._bridgeToObjectiveC()().super.isa;
      [v55 activateConstraints:v56];

      v2 = v119;
      *&v119[v117] = _swiftEmptyArrayStorage;
    }
  }

LABEL_46:
  v57 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabel];
  if (v57)
  {
    v58 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabelConstraints;
    if (!*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabelConstraints])
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1000BD0A0;
      v60 = v57;
      v61 = [v60 leadingAnchor];
      v62 = [v119 mainContentGuide];
      v63 = [v62 leadingAnchor];

      v64 = [v61 constraintEqualToAnchor:v63];
      *(v59 + 32) = v64;
      v65 = [v60 trailingAnchor];
      v66 = [v119 mainContentGuide];
      v67 = [v66 trailingAnchor];

      v68 = [v65 constraintEqualToAnchor:v67];
      v2 = v119;
      *(v59 + 40) = v68;
      v69 = objc_opt_self();
      sub_1000163D8();
      v70 = Array._bridgeToObjectiveC()().super.isa;
      [v69 activateConstraints:v70];

      *&v119[v58] = v59;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v71 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabel];
  if (v71)
  {
    v72 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabelConstraints;
    if (!*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabelConstraints])
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1000BD0A0;
      v71 = v71;
      v74 = [v71 leadingAnchor];
      v75 = [v119 mainContentGuide];
      v76 = [v75 leadingAnchor];

      v77 = [v74 constraintEqualToAnchor:v76];
      *(v73 + 32) = v77;
      v78 = [v71 trailingAnchor];
      v79 = [v119 mainContentGuide];
      v80 = [v79 trailingAnchor];

      v81 = [v78 constraintEqualToAnchor:v80];
      v2 = v119;
      *(v73 + 40) = v81;
      v82 = objc_opt_self();
      sub_1000163D8();
      v83 = Array._bridgeToObjectiveC()().super.isa;
      [v82 activateConstraints:v83];

      *&v119[v72] = v73;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v84 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreInfoButton];
  if (v84)
  {
    v85 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreButtonConstraints;
    if (!*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreButtonConstraints])
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1000BD430;
      v71 = v84;
      v87 = [v71 leadingAnchor];
      v88 = [v119 mainContentGuide];
      v89 = [v88 leadingAnchor];

      v90 = [v87 constraintEqualToAnchor:v89];
      *(v86 + 32) = v90;
      v91 = [v71 trailingAnchor];
      v92 = [v119 mainContentGuide];
      v93 = [v92 trailingAnchor];

      v94 = [v91 constraintEqualToAnchor:v93];
      *(v86 + 40) = v94;
      v95 = [v71 heightAnchor];
      v96 = [v95 constraintEqualToConstant:40.0];

      *(v86 + 48) = v96;
      v97 = objc_opt_self();
      sub_1000163D8();
      v98 = Array._bridgeToObjectiveC()().super.isa;
      [v97 activateConstraints:v98];

      *&v119[v85] = v86;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v99 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v99)
    {
      goto LABEL_63;
    }

LABEL_79:

    v71 = 0;
    goto LABEL_80;
  }

  v99 = _CocoaArrayWrapper.endIndex.getter();
  if (!v99)
  {
    goto LABEL_79;
  }

LABEL_63:
  if (v99 < 1)
  {
    __break(1u);
  }

  else
  {
    v100 = 0;
    v101 = 0;
    v118 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewsGuide;
    v102 = PRXMainContentMargin;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v106 = _swiftEmptyArrayStorage[v101 + 4];
      }

      v107 = v106;
      if (v100)
      {
        v103 = [v106 topAnchor];
        v104 = [v100 bottomAnchor];
        v105 = [v103 constraintEqualToAnchor:v104 constant:v102];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v108 = [v106 topAnchor];
        v109 = [*&v119[v118] bottomAnchor];
        v110 = [v108 constraintEqualToAnchor:v109 constant:v102];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v101;
      v100 = v107;
    }

    while (v99 != v101);

    v71 = v107;
    v111 = [v71 bottomAnchor];
    v112 = [v119 mainContentGuide];
    v113 = [v112 bottomAnchor];

    v114 = [v111 constraintLessThanOrEqualToAnchor:v113];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_77;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_77:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_80:
  v115 = objc_opt_self();
  sub_1000163D8();
  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v115 activateConstraints:v116];
}

id sub_100049370(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomePodSetupIconContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000494B4()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewGuideConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabelConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreButtonConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabelConstraints) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViewsGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_labelView) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_accountLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_bodyLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_moreInfoButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000495BC(uint64_t a1)
{
  v2 = IndexPath.section.getter();
  v3 = *(a1 + 16);
  if (v2 >= v3)
  {
    return 0;
  }

  result = IndexPath.section.getter();
  if (result < 0)
  {
    goto LABEL_18;
  }

  if (!v3)
  {
LABEL_13:
    __break(1u);
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    v9 = *(v8 + 8 * v6);
    result = IndexPath.section.getter();
    if (v6 != result)
    {
      break;
    }

    if (IndexPath.row.getter() >= v9)
    {
      return 0;
    }

    result = IndexPath.row.getter();
    v10 = __OFADD__(v7, result);
    v7 += result;
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v5 == v6)
    {
      return v7;
    }

    if (v3 == ++v6)
    {
      goto LABEL_13;
    }
  }

  v10 = __OFADD__(v7, v9);
  v7 += v9;
  if (!v10)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10004968C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001026E8);
  v1 = sub_100012AAC(v0, qword_1001026E8);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100049754()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100006658(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  qword_100108710 = v2;
  *algn_100108718 = v4;
}

void sub_1000497CC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100006658(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  qword_100108720 = v2;
  *algn_100108728 = v4;
}

id sub_100049844()
{
  v1 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView);
  }

  else
  {
    type metadata accessor for HomePodSetupWiFiInfoTableView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000498BC()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &aBlock[-1] - v9;
  v11 = type metadata accessor for HomePodSetupWiFiErrorViewController(0);
  v34.receiver = v0;
  v34.super_class = v11;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v12 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v0 + v12, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000162A8(v3);
    if (qword_100101618 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100012AAC(v13, qword_1001026E8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupWiFiErrorViewController: viewDidLoad failed because viewModel not set.", v16, 2u);
    }
  }

  else
  {
    v17 = v0;
    sub_100016310(v3, v10);
    if (qword_100101618 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_1001026E8);
    sub_100012AE4(v10, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      v23 = *v8;
      v24 = v8[1];

      sub_100016374(v8);
      v25 = sub_1000B08A0(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupWiFiErrorViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v8);
    }

    if (v10[*(v4 + 108)] == 1)
    {
      if (qword_100101620 != -1)
      {
        swift_once();
      }

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v27 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_10004ACF0;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003DFD0;
      aBlock[3] = &unk_1000EFD48;
      v28 = _Block_copy(aBlock);
      v29 = [objc_opt_self() actionWithTitle:v27 style:1 handler:v28];

      _Block_release(v28);

      v30 = [v17 addAction:v29];
    }

    v31 = sub_100049844();
    [v31 setAlpha:0.0];

    sub_100016374(v10);
  }
}

void sub_100049DE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController_showInfo;
    if (*(Strong + OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController_showInfo) == 1)
    {
      sub_10004A608();
      if (qword_100101628 != -1)
      {
        swift_once();
      }

      v5 = qword_100108720;
      v6 = *algn_100108728;
      if (qword_100101620 != -1)
      {
        v7 = *algn_100108728;
        v9 = qword_100108720;
        swift_once();
        v6 = v7;
        v5 = v9;
      }
    }

    else
    {
      sub_10004A20C();
      if (qword_100101620 != -1)
      {
        swift_once();
      }

      v5 = qword_100108710;
      v6 = *algn_100108718;
      if (qword_100101628 != -1)
      {
        v8 = *algn_100108718;
        v10 = qword_100108710;
        swift_once();
        v6 = v8;
        v5 = v10;
      }
    }

    sub_10004A040(v5, v6);
    v3[v4] = (v3[v4] & 1) == 0;
  }
}

void sub_10004A040(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView) actionButtons];
  sub_10003AE18(0, &qword_100102740, PRXButton_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v6 + 8 * v8 + 32);
      }

      v10 = v11;
      v12 = [v11 titleForState:0];
      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v9 = String._bridgeToObjectiveC()();
      [v10 setTitle:v9 forState:0];

      v10 = v9;
LABEL_7:
      ++v8;

      if (v7 == v8)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
}

void sub_10004A20C()
{
  v1 = v0;
  if (qword_100101618 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001026E8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupWiFiErrorViewController: user tapped on the info button.", v5, 2u);
  }

  v6 = sub_100049844();
  [v6 setSeparatorStyle:0];

  v7 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView;
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView];
  sub_100095AE0();

  sub_10004A78C();
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v16[4] = sub_10004AC48;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100091194;
  v16[3] = &unk_1000EFCF8;
  v11 = _Block_copy(v16);
  v12 = v1;

  [v9 animateWithDuration:v11 animations:0.5];
  _Block_release(v11);
  [*&v1[v7] setHidden:0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = sub_1000A670C(sub_10004ACE8, v13);
    swift_unknownObjectRelease();

    if ((v14 & 1) == 0)
    {
      v15 = String._bridgeToObjectiveC()();
      [v12 showActivityIndicatorWithStatus:v15];
    }
  }
}

void sub_10004A4C4(uint64_t *a1, uint64_t a2)
{
  if (qword_100101618 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_1001026E8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupWiFiErrorViewController: Request for PreAuth completed.", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong hideActivityIndicator];
    sub_10006F468(1.0);
    v9 = sub_100049844();
    sub_100095C9C(a1);
  }
}

void sub_10004A608()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_10004ABD4;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100091194;
  v11 = &unk_1000EFC58;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_10004ABF4;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000A3260;
  v11 = &unk_1000EFCA8;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.5];
  _Block_release(v6);
  _Block_release(v3);
}

void sub_10004A78C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView);
  v3 = sub_100049844();
  [v2 addSubview:v3];

  v4 = [*(v0 + v1) mainContentGuide];
  v5 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000BD460;
  v7 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView;
  v8 = [*(v0 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView) topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v6 + 32) = v10;
  v11 = [*(v0 + v7) bottomAnchor];
  v12 = [v4 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v6 + 40) = v13;
  v14 = [*(v0 + v7) leadingAnchor];
  v15 = [v4 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v6 + 48) = v16;
  v17 = [*(v0 + v7) trailingAnchor];
  v18 = [v4 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v6 + 56) = v19;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_10004AAB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupWiFiErrorViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupWiFiErrorViewController(uint64_t a1)
{
  result = qword_100102730;
  if (!qword_100102730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004AB9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004ABDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10004ABF4()
{
  v0 = sub_100049844();
  [v0 setHidden:1];
}

void sub_10004AC50(double a1)
{
  v2 = sub_100049844();
  [v2 setAlpha:a1];
}

uint64_t sub_10004ACB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AD18()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100102748);
  v1 = sub_100012AAC(v0, qword_100102748);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10004ADE0(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      result = 1818845510;
      break;
    case 2:
      result = 1701080899;
      break;
    case 3:
      result = 0x694669576F6ELL;
      break;
    case 4:
      result = 0x69466957646142;
      break;
    case 5:
      result = 0x64756F6C43696F6ELL;
      break;
    case 6:
      result = 0x324153486F6ELL;
      break;
    case 7:
      result = 0x73656E7554696F6ELL;
      break;
    case 8:
      result = 0x656D6F486F6ELL;
      break;
    case 9:
      result = 0x61686379654B6F6ELL;
      break;
    case 10:
      result = 0x6C70536572616873;
      break;
    case 11:
      result = 0x6F69647561;
      break;
    case 12:
      result = 1769105779;
      break;
    case 13:
      result = 0x73754D656C707061;
      break;
    case 14:
      result = 0x65746E4569666977;
      break;
    case 15:
      result = 0x6974616D6F747541;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10004AFD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1000BD744[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10004B058(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1000BD744[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10004B0A4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000514BC(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10004B0F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8);
  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16);
  v4 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24);
  v5 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32);
  v6 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40);
  if (v2)
  {
    v7 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 48);
  }

  else
  {
    LOWORD(v7) = 0;
  }

  sub_1000146EC(*(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40));
  sub_10001466C(v1, v2, v3, v4, v5, v6);
  v8 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService);
  if ((v7 & 0x1000) != 0)
  {
    v8 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return (v7 & 0x800) == 0;
    }

    return 1;
  }

  return v8 != 0;
}

uint64_t sub_10004B1D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_1001031C0, &unk_1000BD6F0);
  v5 = __chkstk_darwin(v4 - 8);
  v141 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v139 = &v138 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v138 - v13;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 72) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 64) = 0;
  v15 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_defaultRoomIndexPath;
  v16 = type metadata accessor for IndexPath();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  v17 = v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType;
  *v17 = 0;
  *(v17 + 4) = 1;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = 0;
  v18 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_movieName);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_rssi;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = *(v9 + 56);
  v140 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sessionUUID;
  v24(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sessionUUID, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) = 1;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor) = SFDeviceColorCodeUnknown;
  v142 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_viewAppearedTicks;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_viewAppearedTicks) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableSiriLanguages) = _swiftEmptyArrayStorage;
  v25 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableAccessories) = _swiftEmptyArrayStorage;
  v27 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDialogInfo) = 0;
  v143 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceActionType;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceActionType) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_allowsRandomVoiceSelection) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession) = 0;
  v29 = v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundles) = &_swiftEmptyDictionarySingleton;
  v30 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImage;
  v31 = type metadata accessor for AdjustedImage(0);
  (*(*(v31 - 8) + 56))(v2 + v30, 1, 1, v31);
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImageflags) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods) = 0;
  v32 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_userEnabledLocationForHomePod) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showHomepodSoftwareUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homePodProductVersion) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_isHomeInHH2) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_jsEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_forcedADPSoftwareUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showCannotCancelSU) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_airDropStatus) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_voiceRecognitionEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorCardType) = 0;
  v33 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sameLocationHomeName);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sysdropPath);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSSID);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showPickerOption) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_wifiOptions) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_didUsePhonesNetwork) = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsAccount) = 0;
  v38 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsInfo);
  *v38 = 0;
  v38[1] = 0;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_namingIssue) = 0;
  v145 = 0xD000000000000010;
  v146 = 0x80000001000C3910;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v39 = sub_100053B3C(v148), (v40 & 1) == 0))
  {
    sub_10000EA04(v148);
    goto LABEL_8;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v39, &v149);
  sub_10000EA04(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    UUID.init()();
    v12 = v14;
    goto LABEL_9;
  }

  v41 = v139;
  UUID.init(uuidString:)();

  v42 = *(v9 + 48);
  if (v42(v41, 1, v8) == 1)
  {
    UUID.init()();
    if (v42(v41, 1, v8) != 1)
    {
      sub_10000EBA4(v41, &qword_1001031C0, &unk_1000BD6F0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v41, v8);
  }

LABEL_9:
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceIdentifier, v12, v8);
  v149 = 0x6F6973726556736FLL;
  v150 = 0xE90000000000006ELL;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v43 = sub_100053B3C(v148), (v44 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v43, &v149);
    sub_10000EA04(v148);
    if (swift_dynamicCast())
    {
      v45 = v145;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    sub_10000EA04(v148);
    v45 = 0;
  }

  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_osVersion) = v45;
  v145 = 0x556E6F6973736573;
  v146 = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v46 = sub_100053B3C(v148), (v47 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v46, &v149);
    sub_10000EA04(v148);
    if (swift_dynamicCast())
    {
      v48 = v141;
      UUID.init(uuidString:)();

      v49 = v140;
      swift_beginAccess();
      sub_100012DA0(v48, v2 + v49, &qword_1001031C0, &unk_1000BD6F0);
      swift_endAccess();
    }
  }

  else
  {
    sub_10000EA04(v148);
  }

  v149 = 1769173874;
  v150 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v50 = sub_100053B3C(v148), (v51 & 1) == 0))
  {
    sub_10000EA04(v148);
    goto LABEL_24;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v50, &v149);
  sub_10000EA04(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v52 = 0;
    goto LABEL_25;
  }

  v52 = v145;
LABEL_25:
  *v23 = v52;
  *(v23 + 4) = 0;
  v149 = 0x5372656767697274;
  v150 = 0xEB00000000736365;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v53 = sub_100053B3C(v148), (v54 & 1) == 0))
  {
    sub_10000EA04(v148);
    goto LABEL_30;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v53, &v149);
  sub_10000EA04(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v55 = 0;
    goto LABEL_31;
  }

  v55 = v145;
LABEL_31:
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_triggerSeconds) = v55;
  v149 = 0xD000000000000010;
  v150 = 0x80000001000C47C0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v56 = sub_100053B3C(v148), (v57 & 1) == 0))
  {
    sub_10000EA04(v148);
    goto LABEL_36;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v56, &v149);
  sub_10000EA04(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v58 = 0;
    goto LABEL_37;
  }

  v58 = v145;
LABEL_37:
  *(v2 + v143) = v58;
  v149 = 0x6F4D656369766564;
  v150 = 0xEF65646F436C6564;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v59 = sub_100053B3C(v148), (v60 & 1) == 0))
  {
    sub_10000EA04(v148);
    goto LABEL_42;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v59, &v149);
  sub_10000EA04(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v61 = 0;
    goto LABEL_43;
  }

  v61 = v145;
LABEL_43:
  v62 = &unk_100108000;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) = v61;
  v149 = 0x646F43726F6C6F63;
  v150 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v63 = sub_100053B3C(v148), (v64 & 1) == 0))
  {
    sub_10000EA04(v148);
    goto LABEL_48;
  }

  sub_10000EA58(*(a1 + 56) + 32 * v63, &v149);
  sub_10000EA04(v148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v65 = 2;
    goto LABEL_49;
  }

  v65 = v145;
LABEL_49:
  v66 = &unk_100108000;
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode) = v65;
  v149 = 0x6C43656369766564;
  v150 = 0xEF65646F43737361;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v67 = sub_100053B3C(v148), (v68 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v67, &v149);
    sub_10000EA04(v148);
    if (swift_dynamicCast())
    {
      v69 = v145;
      goto LABEL_55;
    }
  }

  else
  {
    sub_10000EA04(v148);
  }

  v69 = 0;
LABEL_55:
  v70 = sub_100006620(v69);
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = [objc_opt_self() sharedConnection];
  if (!v74)
  {
    __break(1u);
  }

  v75 = v74;
  v76 = [v74 effectiveBoolValueForSetting:MCFeatureCameraAllowed];

  *(v2 + 68) = v76 != 2;
  v77 = String._bridgeToObjectiveC()();
  v78 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressDetail) = Int64 != 0;
  *(v2 + v142) = mach_absolute_time();
  *(v2 + 69) = sub_1000065B8();
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = 0;
  v80 = objc_allocWithZone(NSRegularExpression);
  v81 = sub_100050D30(0xD000000000000010, 0x80000001000C4D00, 1);
  v145 = 0x6172615074736574;
  v146 = 0xEA0000000000736DLL;
  AnyHashable.init<A>(_:)();
  v82 = &unk_100101000;
  if (*(a1 + 16) && (v83 = sub_100053B3C(v148), (v84 & 1) != 0))
  {
    sub_10000EA58(*(a1 + 56) + 32 * v83, &v149);
    sub_10000EA04(v148);
    if (swift_dynamicCast())
    {
      v143 = v71;
      v86 = v145;
      v85 = v146;
      v87 = String._bridgeToObjectiveC()();
      v149 = 15;
      v148[0] = v86;
      v148[1] = v85;

      sub_10000E6C4(&qword_1001024D8, &unk_1000BD2F0);
      sub_10003DEBC();
      sub_10003DF20();
      v88 = _NSRange.init<A, B>(_:in:)();
      v90 = [v81 firstMatchInString:v87 options:0 range:{v88, v89}];

      if (!v90)
      {

        v107 = &unk_100108000;
        v71 = v143;
        v62 = &unk_100108000;
        v66 = &unk_100108000;
LABEL_87:
        v82 = &unk_100101000;
        goto LABEL_72;
      }

      [v90 rangeAtIndex:1];
      Range<>.init(_:in:)();
      if (v91)
      {
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v92 = String.subscript.getter();
      v94 = v93;
      v96 = v95;
      v98 = v97;

      if ((v92 ^ v94) >> 14)
      {
        v99 = sub_1000513EC(v92, v94, v96, v98, 10);
        if ((v99 & 0x10000) != 0)
        {
          LOWORD(v99) = sub_100050E0C(v92, v94, v96, v98, 10);
        }

        v100 = v99;

        v101 = &unk_100108000;
        v71 = v143;
        v66 = &unk_100108000;
        if ((v100 & 0x100) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {

        v101 = &unk_100108000;
        v71 = v143;
        v66 = &unk_100108000;
      }

      LOBYTE(v100) = 0;
LABEL_66:
      v102 = v101[249];
      *(v2 + v102) = v100;
      if (qword_100101630 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      sub_100012AAC(v103, qword_100102748);

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 16777472;
        v106[4] = *(v2 + v102);

        _os_log_impl(&_mh_execute_header, v104, v105, "HomePodSetupModel: stereoCounterpartColor =  %hhu", v106, 5u);
      }

      else
      {
      }

      v107 = &unk_100108000;
      v62 = &unk_100108000;
      goto LABEL_87;
    }
  }

  else
  {

    sub_10000EA04(v148);
  }

  v107 = &unk_100108000;
LABEL_72:
  sub_1000514DC();
  v148[0] = NSString.init(stringLiteral:)();
  v149 = NSString.init(stringLiteral:)();
  v145 = NSString.init(stringLiteral:)();
  v108 = [objc_allocWithZone(NSBundle) init];
  v109 = *(v2 + v62[241]);
  v144 = v108;
  if (v109 <= 1)
  {
    v110 = 1;
  }

  else
  {
    v110 = v109;
  }

  sub_100006EE4(v110, *(v2 + v66[240]), 13, &v149, 0, &v145, 0, v148, 0, 0, &v144);
  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v112 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_movieName);
  *v112 = v111;
  v112[1] = v113;

  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = (v2 + v107[236]);
  *v115 = v114;
  v115[1] = v116;

  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName);
  *v118 = v117;
  v118[1] = v119;

  v120 = v144;
  v121 = *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle);
  *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle) = v144;
  v122 = v120;

  v123 = sub_10004C690();
  v125 = v124;
  if (v82[198] != -1)
  {
    swift_once();
  }

  v126 = type metadata accessor for Logger();
  sub_100012AAC(v126, qword_100102748);

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = v71;
    v130 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *v130 = 136315650;
    v131 = sub_1000B08A0(v129, v73, &v147);

    *(v130 + 4) = v131;
    *(v130 + 12) = 2080;
    v132 = sub_1000B08A0(v123, v125, &v147);

    *(v130 + 14) = v132;
    *(v130 + 22) = 2080;

    v133 = sub_10004C690();
    v135 = v134;

    v136 = sub_1000B08A0(v133, v135, &v147);

    *(v130 + 24) = v136;
    _os_log_impl(&_mh_execute_header, v127, v128, "HomePodSetupModel: Created running on %s=%s info: %s", v130, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v2;
}

uint64_t sub_10004C690()
{
  v1 = v0;
  v298 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  v2 = __chkstk_darwin(v298);
  v297 = &v293 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v296 = &v293 - v4;
  v295 = sub_10000E6C4(&qword_1001031C0, &unk_1000BD6F0);
  v5 = __chkstk_darwin(v295);
  v294 = &v293 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v293 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v293 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v293 - v14;
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v300 = 0xD000000000000011;
  v301[0] = 0xD000000000000011;
  v301[1] = 0x80000001000C4B40;
  v16 = *(v10 + 16);
  v16(v15, v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceIdentifier, v9);
  v16(v13, v15, v9);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  (*(v10 + 8))(v15, v9);
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v301[0];
  v23 = v301[1];
  v299 = 0xD000000000000013;
  v301[0] = 0xD000000000000013;
  v301[1] = 0x80000001000C4B20;
  v22._object = v23;
  String.append(_:)(v22);

  v25 = v301[0];
  v24 = v301[1];
  strcpy(v301, "appleId=");
  BYTE1(v301[1]) = 0;
  WORD1(v301[1]) = 0;
  HIDWORD(v301[1]) = -402653184;
  v26 = *(v0 + 24);
  v306 = *(v0 + 16);
  v307 = v26;

  sub_10000E6C4(&unk_100102370, qword_1000BD248);
  v27._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29 = v301[0];
  v30 = v301[1];
  v301[0] = v25;
  v301[1] = v24;

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  v33 = v301[0];
  v32 = v301[1];
  strcpy(v301, "iCloudId=");
  WORD1(v301[1]) = 0;
  HIDWORD(v301[1]) = -385875968;
  v34 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId + 8);
  v306 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iCloudId);
  v307 = v34;

  v35._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37 = v301[0];
  v38 = v301[1];
  v301[0] = v33;
  v301[1] = v32;

  v39._countAndFlagsBits = v37;
  v39._object = v38;
  String.append(_:)(v39);

  v41 = v301[0];
  v40 = v301[1];
  strcpy(v301, "iTunesId=");
  WORD1(v301[1]) = 0;
  HIDWORD(v301[1]) = -385875968;
  v42 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId + 8);
  v306 = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_iTunesId);
  v307 = v42;

  v43._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 32;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45 = v301[0];
  v46 = v301[1];
  v301[0] = v41;
  v301[1] = v40;

  v47._countAndFlagsBits = v45;
  v47._object = v46;
  String.append(_:)(v47);

  v49 = v301[0];
  v48 = v301[1];
  strcpy(v301, "osVersion=");
  BYTE3(v301[1]) = 0;
  HIDWORD(v301[1]) = -369098752;
  LOBYTE(v306) = *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_osVersion);
  type metadata accessor for SFOSVersion(0);
  v50._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 32;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52 = v301[0];
  v53 = v301[1];
  v301[0] = v49;
  v301[1] = v48;

  v54._countAndFlagsBits = v52;
  v54._object = v53;
  String.append(_:)(v54);

  v56 = v301[0];
  v55 = v301[1];
  strcpy(v301, "sessionUUID=");
  BYTE5(v301[1]) = 0;
  HIWORD(v301[1]) = -5120;
  v57 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sessionUUID;
  swift_beginAccess();
  sub_10000F25C(v1 + v57, v8, &qword_1001031C0, &unk_1000BD6F0);
  sub_10000F25C(v8, v294, &qword_1001031C0, &unk_1000BD6F0);
  v58 = String.init<A>(reflecting:)();
  v60 = v59;
  sub_10000EBA4(v8, &qword_1001031C0, &unk_1000BD6F0);
  v61._countAndFlagsBits = v58;
  v61._object = v60;
  String.append(_:)(v61);

  v62._countAndFlagsBits = 32;
  v62._object = 0xE100000000000000;
  String.append(_:)(v62);
  v63 = v301[0];
  v64 = v301[1];
  v301[0] = v56;
  v301[1] = v55;

  v65._countAndFlagsBits = v63;
  v65._object = v64;
  String.append(_:)(v65);

  v67 = v301[0];
  v66 = v301[1];
  v301[0] = 0x3D69737372;
  v301[1] = 0xE500000000000000;
  v68 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_rssi + 4);
  LODWORD(v304) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_rssi);
  BYTE4(v304) = v68;
  sub_10000E6C4(&qword_1001031C8, &qword_1000BD700);
  v69._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v69);

  v70._countAndFlagsBits = 32;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v71 = v301[0];
  v72 = v301[1];
  v301[0] = v67;
  v301[1] = v66;

  v73._countAndFlagsBits = v71;
  v73._object = v72;
  String.append(_:)(v73);

  v75 = v301[0];
  v74 = v301[1];
  strcpy(v301, "badPINCount=");
  BYTE5(v301[1]) = 0;
  HIWORD(v301[1]) = -5120;
  LODWORD(v304) = *(v1 + 64);
  v76._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v76);

  v77._countAndFlagsBits = 32;
  v77._object = 0xE100000000000000;
  String.append(_:)(v77);
  v78 = v301[0];
  v79 = v301[1];
  v301[0] = v75;
  v301[1] = v74;

  v80._countAndFlagsBits = v78;
  v80._object = v79;
  String.append(_:)(v80);

  v82 = v301[0];
  v81 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v301[0] = 0xD000000000000012;
  v301[1] = 0x80000001000C4B60;
  v304 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_viewAppearedTicks);
  v83._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v83);

  v84._countAndFlagsBits = 32;
  v84._object = 0xE100000000000000;
  String.append(_:)(v84);
  v85 = v301[0];
  v86 = v301[1];
  v301[0] = v82;
  v301[1] = v81;

  v87._countAndFlagsBits = v85;
  v87._object = v86;
  String.append(_:)(v87);

  v89 = v301[0];
  v88 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v301[0] = 0xD000000000000014;
  v301[1] = 0x80000001000C4B80;
  v90 = *(v1 + 36);
  LODWORD(v304) = *(v1 + 32);
  BYTE4(v304) = v90;
  sub_10000E6C4(&qword_1001031D0, &qword_1000BD708);
  v91._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v91);

  v92._countAndFlagsBits = 32;
  v92._object = 0xE100000000000000;
  String.append(_:)(v92);
  v93 = v301[0];
  v94 = v301[1];
  v301[0] = v89;
  v301[1] = v88;

  v95._countAndFlagsBits = v93;
  v95._object = v94;
  String.append(_:)(v95);

  v97 = v301[0];
  v96 = v301[1];
  strcpy(v301, "dismissType=");
  BYTE5(v301[1]) = 0;
  HIWORD(v301[1]) = -5120;
  v98 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType + 4);
  LODWORD(v304) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType);
  BYTE4(v304) = v98;
  sub_10000E6C4(&qword_1001031D8, &qword_1000BD710);
  v99._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v99);

  v100._countAndFlagsBits = 32;
  v100._object = 0xE100000000000000;
  String.append(_:)(v100);
  v101 = v301[0];
  v102 = v301[1];
  v301[0] = v97;
  v301[1] = v96;

  v103._countAndFlagsBits = v101;
  v103._object = v102;
  String.append(_:)(v103);

  v105 = v301[0];
  v104 = v301[1];
  v301[0] = 0x3D726F727265;
  v301[1] = 0xE600000000000000;
  v304 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
  v106 = v304;
  sub_10000E6C4(&qword_1001031E0, &qword_1000BD718);
  v107._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v107);

  v108._countAndFlagsBits = 32;
  v108._object = 0xE100000000000000;
  String.append(_:)(v108);
  v109 = v301[0];
  v110 = v301[1];
  v301[0] = v105;
  v301[1] = v104;

  v111._countAndFlagsBits = v109;
  v111._object = v110;
  String.append(_:)(v111);

  v113 = v301[0];
  v112 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v301[0] = 0xD000000000000016;
  v301[1] = 0x80000001000C4BA0;
  LOBYTE(v304) = *(v1 + 69);
  v114._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v114);

  v115._countAndFlagsBits = 32;
  v115._object = 0xE100000000000000;
  String.append(_:)(v115);
  v116 = v301[0];
  v117 = v301[1];
  v301[0] = v113;
  v301[1] = v112;

  v118._countAndFlagsBits = v116;
  v118._object = v117;
  String.append(_:)(v118);

  v120 = v301[0];
  v119 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v301[0] = 0xD000000000000015;
  v301[1] = 0x80000001000C4BC0;
  sub_1000503B4(*(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode));
  v121._countAndFlagsBits = String.init(cString:)();
  String.append(_:)(v121);

  v122._countAndFlagsBits = 32;
  v122._object = 0xE100000000000000;
  String.append(_:)(v122);
  v123 = v301[0];
  v124 = v301[1];
  v301[0] = v120;
  v301[1] = v119;

  v125._countAndFlagsBits = v123;
  v125._object = v124;
  String.append(_:)(v125);

  v127 = v301[0];
  v126 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v301[0] = 0xD000000000000015;
  v301[1] = 0x80000001000C4BE0;
  LOBYTE(v304) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode);
  v128._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v128);

  v129._countAndFlagsBits = 32;
  v129._object = 0xE100000000000000;
  String.append(_:)(v129);
  v130 = v301[0];
  v131 = v301[1];
  v301[0] = v127;
  v301[1] = v126;

  v132._countAndFlagsBits = v130;
  v132._object = v131;
  String.append(_:)(v132);

  v134 = v301[0];
  v133 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v301[0] = 0x5372656767697274;
  v301[1] = 0xEF3D73646E6F6365;
  LODWORD(v304) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_triggerSeconds);
  v135._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v135);

  v136._countAndFlagsBits = 32;
  v136._object = 0xE100000000000000;
  String.append(_:)(v136);
  v137 = v301[0];
  v138 = v301[1];
  v301[0] = v134;
  v301[1] = v133;

  v139._countAndFlagsBits = v137;
  v139._object = v138;
  String.append(_:)(v139);

  v141 = v301[0];
  v140 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v301[0] = 0x73736572676F7270;
  v301[1] = 0xEF3D6C6961746544;
  LOBYTE(v304) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressDetail);
  v142._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v142);

  v143._countAndFlagsBits = 32;
  v143._object = 0xE100000000000000;
  String.append(_:)(v143);
  v144 = v301[0];
  v145 = v301[1];
  v301[0] = v141;
  v301[1] = v140;

  v146._countAndFlagsBits = v144;
  v146._object = v145;
  String.append(_:)(v146);

  v148 = v301[0];
  v147 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v301, "progressEvent=");
  HIBYTE(v301[1]) = -18;
  sub_100050478(*(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent));
  v304 = String.init(cString:)();
  v305 = v149;
  v150._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v150);

  v151._countAndFlagsBits = 32;
  v151._object = 0xE100000000000000;
  String.append(_:)(v151);
  v152 = v301[0];
  v153 = v301[1];
  v301[0] = v148;
  v301[1] = v147;

  v154._countAndFlagsBits = v152;
  v154._object = v153;
  String.append(_:)(v154);

  v156 = v301[0];
  v155 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v301, "cameraAllowed=");
  HIBYTE(v301[1]) = -18;
  LOBYTE(v304) = *(v1 + 68);
  v157._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v157);

  v158._countAndFlagsBits = 32;
  v158._object = 0xE100000000000000;
  String.append(_:)(v158);
  v159 = v301[0];
  v160 = v301[1];
  v301[0] = v156;
  v301[1] = v155;

  v161._countAndFlagsBits = v159;
  v161._object = v160;
  String.append(_:)(v161);

  v163 = v301[0];
  v162 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v301[0] = 0x6C62616C69617661;
  v301[1] = 0xEF3D73656D6F4865;
  v304 = *(v1 + 40);

  sub_10000E6C4(&qword_1001031E8, &qword_1000BD720);
  v164._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v164);

  v165._countAndFlagsBits = 32;
  v165._object = 0xE100000000000000;
  String.append(_:)(v165);
  v166 = v301[0];
  v167 = v301[1];
  v301[0] = v163;
  v301[1] = v162;

  v168._countAndFlagsBits = v166;
  v168._object = v167;
  String.append(_:)(v168);

  v170 = v301[0];
  v169 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v301[0] = v300;
  v301[1] = 0x80000001000C4C00;
  v304 = *(v1 + 72);
  v171._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v171);

  v172._countAndFlagsBits = 32;
  v172._object = 0xE100000000000000;
  String.append(_:)(v172);
  v173 = v301[0];
  v174 = v301[1];
  v301[0] = v170;
  v301[1] = v169;

  v175._countAndFlagsBits = v173;
  v175._object = v174;
  String.append(_:)(v175);

  v177 = v301[0];
  v176 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v301, "existingRooms=");
  HIBYTE(v301[1]) = -18;
  v304 = *(v1 + 48);

  sub_10000E6C4(&qword_1001031F0, &qword_1000BD728);
  v178._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v178);

  v179._countAndFlagsBits = 32;
  v179._object = 0xE100000000000000;
  String.append(_:)(v179);
  v180 = v301[0];
  v181 = v301[1];
  v301[0] = v177;
  v301[1] = v176;

  v182._countAndFlagsBits = v180;
  v182._object = v181;
  String.append(_:)(v182);

  v184 = v301[0];
  v183 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v301[0] = 0xD000000000000015;
  v301[1] = 0x80000001000C4C20;
  v185 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_defaultRoomIndexPath;
  swift_beginAccess();
  v186 = v296;
  sub_10000F25C(v1 + v185, v296, &unk_100104950, &qword_1000BD280);
  sub_10000F25C(v186, v297, &unk_100104950, &qword_1000BD280);
  v187 = String.init<A>(reflecting:)();
  v189 = v188;
  sub_10000EBA4(v186, &unk_100104950, &qword_1000BD280);
  v190._countAndFlagsBits = v187;
  v190._object = v189;
  String.append(_:)(v190);

  v191._countAndFlagsBits = 32;
  v191._object = 0xE100000000000000;
  String.append(_:)(v191);
  v192 = v301[0];
  v193 = v301[1];
  v301[0] = v184;
  v301[1] = v183;

  v194._countAndFlagsBits = v192;
  v194._object = v193;
  String.append(_:)(v194);

  v196 = v301[0];
  v195 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v301[0] = 0x6574736567677573;
  v301[1] = 0xEF3D736D6F6F5264;
  v302 = *(v1 + 56);

  v197._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v197);

  v198._countAndFlagsBits = 32;
  v198._object = 0xE100000000000000;
  String.append(_:)(v198);
  v199 = v301[0];
  v200 = v301[1];
  v301[0] = v196;
  v301[1] = v195;

  v201._countAndFlagsBits = v199;
  v201._object = v200;
  String.append(_:)(v201);

  v203 = v301[0];
  v202 = v301[1];
  strcpy(v301, "movieName=");
  BYTE3(v301[1]) = 0;
  HIDWORD(v301[1]) = -369098752;
  v204 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_movieName + 8);
  v302 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_movieName);
  v303 = v204;

  v205._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v205);

  v206._countAndFlagsBits = 32;
  v206._object = 0xE100000000000000;
  String.append(_:)(v206);
  v207 = v301[0];
  v208 = v301[1];
  v301[0] = v203;
  v301[1] = v202;

  v209._countAndFlagsBits = v207;
  v209._object = v208;
  String.append(_:)(v209);

  v211 = v301[0];
  v210 = v301[1];
  strcpy(v301, "imageName=");
  BYTE3(v301[1]) = 0;
  HIDWORD(v301[1]) = -369098752;
  v212 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName + 8);
  v302 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName);
  v303 = v212;

  v213._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v213);

  v214._countAndFlagsBits = 32;
  v214._object = 0xE100000000000000;
  String.append(_:)(v214);
  v215 = v301[0];
  v216 = v301[1];
  v301[0] = v211;
  v301[1] = v210;

  v217._countAndFlagsBits = v215;
  v217._object = v216;
  String.append(_:)(v217);

  v219 = v301[0];
  v218 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v301[0] = v300;
  v301[1] = 0x80000001000C4C40;
  LOBYTE(v302) = sub_10004B0F0();
  v220._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v220);

  v221._countAndFlagsBits = 32;
  v221._object = 0xE100000000000000;
  String.append(_:)(v221);
  v222 = v301[0];
  v223 = v301[1];
  v301[0] = v219;
  v301[1] = v218;

  v224._countAndFlagsBits = v222;
  v224._object = v223;
  String.append(_:)(v224);

  v226 = v301[0];
  v225 = v301[1];
  strcpy(v301, "productName=");
  BYTE5(v301[1]) = 0;
  HIWORD(v301[1]) = -5120;
  v227 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName + 8);
  v302 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName);
  v303 = v227;

  v228._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v228);

  v229._countAndFlagsBits = 32;
  v229._object = 0xE100000000000000;
  String.append(_:)(v229);
  v230 = v301[0];
  v231 = v301[1];
  v301[0] = v226;
  v301[1] = v225;

  v232._countAndFlagsBits = v230;
  v232._object = v231;
  String.append(_:)(v232);

  v234 = v301[0];
  v233 = v301[1];
  strcpy(v301, "stereoRole=");
  HIDWORD(v301[1]) = -352321536;
  sub_100050D0C(*(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole));
  v235._countAndFlagsBits = String.init(cString:)();
  String.append(_:)(v235);

  v236._countAndFlagsBits = 32;
  v236._object = 0xE100000000000000;
  String.append(_:)(v236);
  v237 = v301[0];
  v238 = v301[1];
  v301[0] = v234;
  v301[1] = v233;

  v239._countAndFlagsBits = v237;
  v239._object = v238;
  String.append(_:)(v239);

  v241 = v301[0];
  v240 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v301[0] = 0xD000000000000017;
  v301[1] = 0x80000001000C4C60;
  LOBYTE(v302) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor);
  v242._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v242);

  v243._countAndFlagsBits = 32;
  v243._object = 0xE100000000000000;
  String.append(_:)(v243);
  v244 = v301[0];
  v245 = v301[1];
  v301[0] = v241;
  v301[1] = v240;

  v246._countAndFlagsBits = v244;
  v246._object = v245;
  String.append(_:)(v246);

  v248 = v301[0];
  v247 = v301[1];
  strcpy(v301, "deviceGUID=");
  HIDWORD(v301[1]) = -352321536;
  v249 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID + 8);
  v302 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
  v303 = v249;

  v250._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v250);

  v251._countAndFlagsBits = 32;
  v251._object = 0xE100000000000000;
  String.append(_:)(v251);
  v252 = v301[0];
  v253 = v301[1];
  v301[0] = v248;
  v301[1] = v247;

  v254._countAndFlagsBits = v252;
  v254._object = v253;
  String.append(_:)(v254);

  v256 = v301[0];
  v255 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v257 = v299;
  v301[0] = v299;
  v301[1] = 0x80000001000C4C80;
  v258 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber + 8);
  v302 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
  v303 = v258;

  v259._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v259);

  v260._countAndFlagsBits = 32;
  v260._object = 0xE100000000000000;
  String.append(_:)(v260);
  v261 = v301[0];
  v262 = v301[1];
  v301[0] = v256;
  v301[1] = v255;

  v263._countAndFlagsBits = v261;
  v263._object = v262;
  String.append(_:)(v263);

  v265 = v301[0];
  v264 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v301[0] = 0xD000000000000015;
  v301[1] = 0x80000001000C4CA0;
  v302 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableAccessories);

  sub_10000E6C4(&qword_1001031F8, &qword_1000BD730);
  v266._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v266);

  v267._countAndFlagsBits = 32;
  v267._object = 0xE100000000000000;
  String.append(_:)(v267);
  v268 = v301[0];
  v269 = v301[1];
  v301[0] = v265;
  v301[1] = v264;

  v270._countAndFlagsBits = v268;
  v270._object = v269;
  String.append(_:)(v270);

  v272 = v301[0];
  v271 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v302 = v257;
  v303 = 0x80000001000C4CC0;
  v273 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8);
  v274 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16);
  v275 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24);
  v276 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32);
  v277 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40);
  v278 = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 48);
  v301[0] = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
  v301[1] = v273;
  v301[2] = v274;
  v301[3] = v275;
  v301[4] = v276;
  v301[5] = v277;
  v301[6] = v278;
  sub_1000146EC(v301[0], v273, v274, v275, v276, v277);
  sub_10000E6C4(&qword_100103200, &qword_1000BD738);
  v279._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v279);

  v280._countAndFlagsBits = 32;
  v280._object = 0xE100000000000000;
  String.append(_:)(v280);
  v281 = v302;
  v282 = v303;
  v301[0] = v272;
  v301[1] = v271;

  v283._countAndFlagsBits = v281;
  v283._object = v282;
  String.append(_:)(v283);

  v285 = v301[0];
  v284 = v301[1];
  v301[0] = 0;
  v301[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v301[0] = 0xD000000000000019;
  v301[1] = 0x80000001000C4CE0;
  LOBYTE(v302) = *(v1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService);
  v286._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v286);

  v287._countAndFlagsBits = 32;
  v287._object = 0xE100000000000000;
  String.append(_:)(v287);
  v288 = v301[0];
  v289 = v301[1];
  v301[0] = v285;
  v301[1] = v284;

  v290._countAndFlagsBits = v288;
  v290._object = v289;
  String.append(_:)(v290);

  v291._countAndFlagsBits = 62;
  v291._object = 0xE100000000000000;
  String.append(_:)(v291);

  return v301[0];
}