uint64_t sub_100180240()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1001802D8, 0, 0);
}

uint64_t sub_1001802D8(uint64_t a1)
{
  *(v1 + 840) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100180364, v3, v2);
}

uint64_t sub_100180364()
{

  v1 = swift_task_alloc();
  *(v0 + 848) = v1;
  *v1 = v0;
  v1[1] = sub_100180410;
  v2 = *(v0 + 752);

  return PlaybackController.add(_:route:)(v2, 0);
}

uint64_t sub_100180410()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_100180998;
  }

  else
  {
    v2 = sub_100180524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100180524()
{
  v25 = v0;
  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101182BC8);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 816);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136446722;
    IntentParameter.wrappedValue.getter();
    v8 = sub_1000105AC(*(v0 + 624), *(v0 + 632), &v24);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    *(v0 + 656) = *(v0 + 640);
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, &v24);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2082;
    v12 = [v6 playActivityFeatureName];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    *(v0 + 672) = v14;
    *(v0 + 680) = v16;
    v17 = String.init<A>(describing:)();
    v19 = sub_1000105AC(v17, v18, &v24);

    *(v7 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "Added new playback intent for item: %{public}s, container: %{public}s, playActivityFeatureName: %{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 816);
  v21 = *(v0 + 752);
  static IntentResult.result<>()();

  sub_100188CDC(v21);
  sub_1000095E8(v0 + 136, &qword_101182C40, &unk_100EBE7C0);
  sub_1000095E8(v0 + 256, &qword_101182C38, &unk_100ECB2A0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100180858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001808E4()
{
  sub_1000095E8(v0 + 136, &qword_101182C40, &unk_100EBE7C0);
  sub_1000095E8(v0 + 256, &qword_101182C38, &unk_100ECB2A0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100180998()
{
  v14 = v0;
  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101182BC8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v4 = 136446466;
    IntentParameter.wrappedValue.getter();
    v5 = sub_1000105AC(*(v0 + 592), *(v0 + 600), v13);

    *(v4 + 4) = v5;
    *(v4 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    *(v0 + 608) = *(v0 + 688);
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add new playback intent for item: %{public}s, container: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 816);
  v10 = *(v0 + 752);
  swift_willThrow();

  sub_100188CDC(v10);
  sub_1000095E8(v0 + 136, &qword_101182C40, &unk_100EBE7C0);
  sub_1000095E8(v0 + 256, &qword_101182C38, &unk_100ECB2A0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100180C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[66] = a3;
  v3[65] = a2;
  v3[64] = a1;
  v4 = sub_10010FC20(&unk_101192980, &unk_100ECFEC0);
  v3[67] = v4;
  v3[68] = *(v4 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101181AB8, &unk_100EBD560);
  v3[71] = v5;
  v3[72] = *(v5 - 8);
  v3[73] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181AC0, &unk_100EC9240);
  v3[74] = v6;
  v3[75] = *(v6 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_101181AC8, &qword_100EBD570);
  v3[78] = v7;
  v3[79] = *(v7 - 8);
  v3[80] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011929A0, &unk_100ECBC80);
  v3[81] = v8;
  v3[82] = *(v8 - 8);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_101181B20, &qword_100EBD5E0);
  v3[85] = v9;
  v3[86] = *(v9 - 8);
  v3[87] = swift_task_alloc();
  v10 = type metadata accessor for MusicSiriRepresentation.Kind();
  v3[88] = v10;
  v3[89] = *(v10 - 8);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  sub_10010FC20(&unk_1011838C0, &qword_100EBD688);
  v3[95] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_10118C190, &qword_100EBD690);
  v3[96] = v11;
  v3[97] = *(v11 - 8);
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_101181BA8, &qword_100EBD698);
  v3[100] = v12;
  v3[101] = *(v12 - 8);
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_101181BB0, &unk_100EBD6A0);
  v3[104] = v13;
  v3[105] = *(v13 - 8);
  v3[106] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v14 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v3[109] = v14;
  v3[110] = *(v14 - 8);
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v15 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  v3[114] = v15;
  v3[115] = *(v15 - 8);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v16 = sub_10010FC20(&unk_10118A310, &qword_100EBD6C0);
  v3[118] = v16;
  v3[119] = *(v16 - 8);
  v3[120] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v17 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v3[123] = v17;
  v3[124] = *(v17 - 8);
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v18 = sub_10010FC20(&unk_1011A4990, &unk_100EE5070);
  v3[128] = v18;
  v3[129] = *(v18 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();
  v19 = sub_10010FC20(&qword_101181BF0, &unk_100EBD720);
  v3[132] = v19;
  v3[133] = *(v19 - 8);
  v3[134] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();
  v20 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v3[137] = v20;
  v3[138] = *(v20 - 8);
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v21 = sub_10010FC20(&qword_101181C50, &qword_100EBD7B8);
  v3[142] = v21;
  v3[143] = *(v21 - 8);
  v3[144] = swift_task_alloc();
  v3[145] = swift_task_alloc();
  v22 = type metadata accessor for MusicDataRequest.Source();
  v3[146] = v22;
  v3[147] = *(v22 - 8);
  v3[148] = swift_task_alloc();
  v23 = sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
  v3[149] = v23;
  v3[150] = *(v23 - 8);
  v3[151] = swift_task_alloc();
  v24 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifier();
  v3[152] = v24;
  v3[153] = *(v24 - 8);
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();

  return _swift_task_switch(sub_100181708, 0, 0);
}

uint64_t sub_100181708()
{
  v149 = v0;
  static MusicSiriRepresentation.parse(_:)();
  v1 = v0[156];
  v3 = v0[153];
  v4 = v0[152];
  v5 = *(v3 + 16);
  v5(v1, v0[157], v4);
  v6 = (*(v3 + 88))(v1, v4);
  if (v6 == enum case for MusicSiriRepresentation.ParsedIdentifier.catalog(_:))
  {
    v7 = v0[156];
    (*(v0[153] + 96))(v7, v0[152]);
    v9 = *v7;
    v8 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    if (qword_10117F288 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v0[158] = sub_1000060E4(v12, qword_101182BC8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v144 = v9;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v15 = 136446466;

      v16 = MusicItemID.description.getter();
      v17 = v10;
      v18 = v11;
      v20 = v19;

      v21 = sub_1000105AC(v16, v20, v148);
      v11 = v18;
      v10 = v17;

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1000105AC(v11, v17, v148);
      _os_log_impl(&_mh_execute_header, v13, v14, "Parsed to catalog id: %{public}s %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    if (v11 == 0x736D75626C61 && v10 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v22 = v0[148];
      v23 = v0[147];
      v24 = v0[146];
      swift_getKeyPath();
      v0[59] = v144;
      v0[60] = v8;
      v0[159] = type metadata accessor for Album();
      sub_100188D38(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v23 + 104))(v22, enum case for MusicDataRequest.Source.widgets(_:), v24);
      MusicCatalogResourceRequest.source.setter();
      v25 = swift_task_alloc();
      v0[160] = v25;
      *v25 = v0;
      v25[1] = sub_100182FA0;
      v26 = v0[149];
      v27 = v0[145];
LABEL_14:

      return MusicCatalogResourceRequest.response()(v27, v26);
    }

    if (v11 == 0x7473696C79616C70 && v10 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v74 = v0[148];
      v75 = v0[147];
      v76 = v0[146];
      swift_getKeyPath();
      v0[57] = v144;
      v0[58] = v8;
      v0[162] = type metadata accessor for Playlist();
      sub_100188D38(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v75 + 104))(v74, enum case for MusicDataRequest.Source.widgets(_:), v76);
      MusicCatalogResourceRequest.source.setter();
      v77 = swift_task_alloc();
      v0[163] = v77;
      *v77 = v0;
      v77[1] = sub_100183830;
      v26 = v0[132];
      v27 = v0[131];
      goto LABEL_14;
    }

    if (v11 == 0x73676E6F73 && v10 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v98 = v0[148];
      v99 = v0[147];
      v100 = v0[146];
      swift_getKeyPath();
      v0[55] = v144;
      v0[56] = v8;
      v0[165] = type metadata accessor for Song();
      sub_100188D38(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v99 + 104))(v98, enum case for MusicDataRequest.Source.widgets(_:), v100);
      MusicCatalogResourceRequest.source.setter();
      v101 = swift_task_alloc();
      v0[166] = v101;
      *v101 = v0;
      v101[1] = sub_1001840C0;
      v26 = v0[118];
      v27 = v0[117];
      goto LABEL_14;
    }

    if (v11 == 0x736E6F6974617473 && v10 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v122 = v0[148];
      v123 = v0[147];
      v124 = v0[146];
      swift_getKeyPath();
      v0[53] = v144;
      v0[54] = v8;
      v0[168] = type metadata accessor for Station();
      sub_100188D38(&qword_101181CD0, &type metadata accessor for Station, &protocol conformance descriptor for Station);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v123 + 104))(v122, enum case for MusicDataRequest.Source.widgets(_:), v124);
      MusicCatalogResourceRequest.source.setter();
      v125 = swift_task_alloc();
      v0[169] = v125;
      *v125 = v0;
      v125[1] = sub_100184950;
      v26 = v0[104];
      v27 = v0[103];
      goto LABEL_14;
    }

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();

    v128 = os_log_type_enabled(v126, v127);
    v129 = v0[157];
    v130 = v0[153];
    v131 = v0[152];
    if (v128)
    {
      v132 = v11;
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v148[0] = v134;
      *v133 = 136446210;
      v135 = sub_1000105AC(v132, v10, v148);

      *(v133 + 4) = v135;
      _os_log_impl(&_mh_execute_header, v126, v127, "Unsupported catalog type: %{public}s", v133, 0xCu);
      sub_10000959C(v134);
    }

    else
    {
    }

    (*(v130 + 8))(v129, v131);
    v136 = v0[64];
    *(v136 + 32) = 0;
    *v136 = 0u;
    *(v136 + 16) = 0u;
    goto LABEL_35;
  }

  if (v6 != enum case for MusicSiriRepresentation.ParsedIdentifier.library(_:))
  {
    if (qword_10117F288 != -1)
    {
      swift_once();
    }

    v56 = v0[157];
    v57 = v0[155];
    v58 = v0[152];
    v59 = type metadata accessor for Logger();
    sub_1000060E4(v59, qword_101182BC8);
    v5(v57, v56, v58);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[157];
    v64 = v0[155];
    if (v62)
    {
      v65 = v0[154];
      v66 = v0[153];
      v142 = v61;
      v67 = v0[152];
      v146 = v0[157];
      v68 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v148[0] = v140;
      *v68 = 136446210;
      v5(v65, v64, v67);
      v69 = String.init<A>(describing:)();
      v71 = v70;
      v72 = *(v66 + 8);
      v72(v64, v67);
      v73 = sub_1000105AC(v69, v71, v148);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v60, v142, "Unknown parsed id type: %{public}s", v68, 0xCu);
      sub_10000959C(v140);

      v72(v146, v67);
    }

    else
    {
      v88 = v0[153];
      v89 = v0[152];

      v72 = *(v88 + 8);
      v72(v64, v89);
      v72(v63, v89);
    }

    v90 = v0[156];
    v91 = v0[152];
    v92 = v0[64];
    *(v92 + 32) = 0;
    *v92 = 0u;
    *(v92 + 16) = 0u;
    v72(v90, v91);
    goto LABEL_35;
  }

  v28 = v0[156];
  v29 = v0[94];
  v30 = v0[89];
  v31 = v0[88];
  (*(v0[153] + 96))(v28, v0[152]);
  v32 = *v28;

  v33 = sub_10010FC20(&qword_101181C58, &qword_100EBD7C8);
  (*(v30 + 32))(v29, &v28[*(v33 + 64)], v31);
  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v34 = v0[94];
  v35 = v0[93];
  v36 = v0[89];
  v37 = v0[88];
  v38 = type metadata accessor for Logger();
  v0[171] = sub_1000060E4(v38, qword_101182BC8);
  v39 = *(v36 + 16);
  v39(v35, v34, v37);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[93];
  v145 = v32;
  if (v42)
  {
    v139 = v39;
    v44 = v0[92];
    v45 = v0[89];
    v46 = v0[88];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v148[0] = v48;
    *v47 = 134349314;
    *(v47 + 4) = v32;
    *(v47 + 12) = 2082;
    v139(v44, v43, v46);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    v52 = v46;
    v53 = *(v45 + 8);
    v53(v43, v52);
    v54 = v49;
    v39 = v139;
    v55 = sub_1000105AC(v54, v51, v148);

    *(v47 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v40, v41, "Parsed to library id: %{public}lld %{public}s", v47, 0x16u);
    sub_10000959C(v48);
  }

  else
  {
    v78 = v0[89];
    v79 = v0[88];

    v53 = *(v78 + 8);
    v53(v43, v79);
  }

  v0[172] = v53;
  v80 = v0[91];
  v81 = v0[89];
  v82 = v0[88];
  v39(v80, v0[94], v82);
  v83 = (*(v81 + 88))(v80, v82);
  if (v83 != enum case for MusicSiriRepresentation.Kind.album(_:))
  {
    if (v83 == enum case for MusicSiriRepresentation.Kind.playlist(_:))
    {
      v0[176] = type metadata accessor for Playlist();
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[62] = v145;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[49] = MusicItemID.init(_:)();
      v0[50] = v94;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v95 = swift_task_alloc();
      v0[177] = v95;
      *v95 = v0;
      v95[1] = sub_100185AC8;
      v86 = v0[78];
      v87 = v0[77];
      goto LABEL_40;
    }

    if (v83 == enum case for MusicSiriRepresentation.Kind.song(_:))
    {
      v0[179] = type metadata accessor for Song();
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[61] = v145;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[47] = MusicItemID.init(_:)();
      v0[48] = v96;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v97 = swift_task_alloc();
      v0[180] = v97;
      *v97 = v0;
      v97[1] = sub_1001863B0;
      v86 = v0[71];
      v87 = v0[70];
      goto LABEL_40;
    }

    v39(v0[90], v0[94], v0[88]);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v0[157];
    v106 = v0[152];
    v143 = v0[153];
    v147 = v0[94];
    if (v104)
    {
      v138 = v0[152];
      v107 = v0[92];
      v137 = v103;
      v108 = v0[90];
      v109 = v0[88];
      v110 = v39;
      v111 = swift_slowAlloc();
      v141 = v53;
      v112 = swift_slowAlloc();
      v148[0] = v112;
      *v111 = 136446210;
      v110(v107, v108, v109);
      v113 = String.init<A>(describing:)();
      v115 = v114;
      v141(v108, v109);
      v116 = sub_1000105AC(v113, v115, v148);

      *(v111 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v102, v137, "Unsupported library kind: %{public}s", v111, 0xCu);
      sub_10000959C(v112);
      v53 = v141;

      v141(v147, v109);
      (*(v143 + 8))(v105, v138);
    }

    else
    {
      v117 = v0[90];
      v118 = v0[88];

      v53(v117, v118);
      v53(v147, v118);
      (*(v143 + 8))(v105, v106);
    }

    v119 = v0[91];
    v120 = v0[88];
    v121 = v0[64];
    *(v121 + 32) = 0;
    *v121 = 0u;
    *(v121 + 16) = 0u;
    v53(v119, v120);
LABEL_35:

    v93 = v0[1];

    return v93();
  }

  v0[173] = type metadata accessor for Album();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v0[63] = v145;
  dispatch thunk of CustomStringConvertible.description.getter();
  v0[51] = MusicItemID.init(_:)();
  v0[52] = v84;
  MusicLibraryRequest.filter<A>(matching:equalTo:)();

  v85 = swift_task_alloc();
  v0[174] = v85;
  *v85 = v0;
  v85[1] = sub_1001851E8;
  v86 = v0[85];
  v87 = v0[84];
LABEL_40:

  return MusicLibraryRequest.response()(v87, v86);
}

uint64_t sub_100182FA0()
{
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v2 = sub_100186C98;
  }

  else
  {
    v2 = sub_1001830B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001830B4()
{
  v48 = v0;
  (*(*(v0 + 1144) + 16))(*(v0 + 1152), *(v0 + 1160), *(v0 + 1136));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1136);
  if (v3)
  {
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1104);
    v9 = *(v0 + 1096);
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v43 = 136446210;
    v44 = v2;
    MusicCatalogResourceResponse.items.getter();
    sub_100020674(&qword_101182C68, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v8 + 8))(v7, v9);
    v13 = *(v5 + 8);
    v13(v4, v6);
    v14 = sub_1000105AC(v10, v12, &v47);

    *(v43 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v44, "Found catalog albums: %{public}s", v43, 0xCu);
    sub_10000959C(v45);
  }

  else
  {

    v13 = *(v5 + 8);
    v13(v4, v6);
  }

  v15 = *(v0 + 1272);
  v16 = *(v0 + 1120);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1088);
  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v19);
  (*(v17 + 8))(v16, v18);
  v20 = *(v15 - 8);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    v21 = *(v0 + 1208);
    v22 = *(v0 + 1200);
    v23 = *(v0 + 1192);
    v24 = *(v0 + 1088);
    v13(*(v0 + 1160), *(v0 + 1136));
    (*(v22 + 8))(v21, v23);
    sub_1000095E8(v24, &unk_101184730, &unk_100ECB920);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0;
  }

  else
  {
    v25 = *(v0 + 1272);
    v46 = *(v0 + 1208);
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1192);
    v28 = *(v0 + 1160);
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1088);
    *(v0 + 360) = v25;
    *(v0 + 368) = &protocol witness table for Album;
    v31 = sub_10001C8B8((v0 + 336));
    (*(v20 + 32))(v31, v30, v25);
    v13(v28, v29);
    (*(v26 + 8))(v46, v27);
  }

  v32 = *(v0 + 352);
  *(v0 + 16) = *(v0 + 336);
  *(v0 + 32) = v32;
  *(v0 + 48) = *(v0 + 368);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v33 = *(v0 + 120);
  v34 = *(v0 + 1256);
  v35 = *(v0 + 1224);
  v36 = *(v0 + 1216);
  v37 = *(v0 + 512);
  if (v33)
  {
    v38 = *(v0 + 128);
    v39 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v37 + 24) = v33;
    *(v37 + 32) = *(v38 + 8);
    v40 = sub_10001C8B8(v37);
    (*(*(v33 - 8) + 16))(v40, v39, v33);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v35 + 8))(v34, v36);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v35 + 8))(v34, v36);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0;
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100183830()
{
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v2 = sub_100186FF4;
  }

  else
  {
    v2 = sub_100183944;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100183944()
{
  v50 = v0;
  (*(*(v0 + 1032) + 16))(*(v0 + 1040), *(v0 + 1048), *(v0 + 1024));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1024);
  if (v3)
  {
    v7 = *(v0 + 1016);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v44 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v44 = 136446210;
    v45 = v2;
    MusicCatalogResourceResponse.items.getter();
    sub_100020674(&qword_101182C60, &qword_101181BE8, &unk_100EBD710, &protocol conformance descriptor for MusicItemCollection<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v8 + 8))(v7, v9);
    v13 = *(v5 + 8);
    v13(v4, v6);
    v14 = sub_1000105AC(v10, v12, &v49);

    *(v44 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v45, "Found catalog playlists: %{public}s", v44, 0xCu);
    sub_10000959C(v47);
  }

  else
  {

    v13 = *(v5 + 8);
    v13(v4, v6);
  }

  v15 = (v0 + 296);
  v16 = *(v0 + 1296);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 992);
  v19 = *(v0 + 984);
  v20 = *(v0 + 976);
  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v20);
  (*(v18 + 8))(v17, v19);
  v21 = *(v16 - 8);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    v22 = *(v0 + 1072);
    v23 = *(v0 + 1064);
    v24 = *(v0 + 1056);
    v25 = *(v0 + 976);
    v13(*(v0 + 1048), *(v0 + 1024));
    (*(v23 + 8))(v22, v24);
    sub_1000095E8(v25, &unk_1011814D0, &qword_100EC12A0);
    *v15 = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  else
  {
    v26 = *(v0 + 1296);
    v27 = v13;
    v28 = *(v0 + 1064);
    v46 = *(v0 + 1056);
    v48 = *(v0 + 1072);
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1024);
    v31 = *(v0 + 976);
    *(v0 + 320) = v26;
    *(v0 + 328) = &protocol witness table for Playlist;
    v32 = sub_10001C8B8((v0 + 296));
    (*(v21 + 32))(v32, v31, v26);
    v27(v29, v30);
    (*(v28 + 8))(v48, v46);
  }

  v33 = *(v0 + 312);
  *(v0 + 16) = *v15;
  *(v0 + 32) = v33;
  *(v0 + 48) = *(v0 + 328);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v34 = *(v0 + 120);
  v35 = *(v0 + 1256);
  v36 = *(v0 + 1224);
  v37 = *(v0 + 1216);
  v38 = *(v0 + 512);
  if (v34)
  {
    v39 = *(v0 + 128);
    v40 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v38 + 24) = v34;
    *(v38 + 32) = *(v39 + 8);
    v41 = sub_10001C8B8(v38);
    (*(*(v34 - 8) + 16))(v41, v40, v34);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v36 + 8))(v35, v37);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v36 + 8))(v35, v37);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0;
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1001840C0()
{
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v2 = sub_100187350;
  }

  else
  {
    v2 = sub_1001841D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001841D4()
{
  v48 = v0;
  (*(*(v0 + 920) + 16))(*(v0 + 928), *(v0 + 936), *(v0 + 912));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  if (v3)
  {
    v7 = *(v0 + 904);
    v8 = *(v0 + 880);
    v9 = *(v0 + 872);
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v43 = 136446210;
    v44 = v2;
    MusicCatalogResourceResponse.items.getter();
    sub_100020674(&qword_101182C58, &qword_10118D1A0, &qword_100EBD6B0, &protocol conformance descriptor for MusicItemCollection<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v8 + 8))(v7, v9);
    v13 = *(v5 + 8);
    v13(v4, v6);
    v14 = sub_1000105AC(v10, v12, &v47);

    *(v43 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v44, "Found catalog songs: %{public}s", v43, 0xCu);
    sub_10000959C(v45);
  }

  else
  {

    v13 = *(v5 + 8);
    v13(v4, v6);
  }

  v15 = *(v0 + 1320);
  v16 = *(v0 + 896);
  v17 = *(v0 + 880);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v19);
  (*(v17 + 8))(v16, v18);
  v20 = *(v15 - 8);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    v21 = *(v0 + 960);
    v22 = *(v0 + 952);
    v23 = *(v0 + 944);
    v24 = *(v0 + 864);
    v13(*(v0 + 936), *(v0 + 912));
    (*(v22 + 8))(v21, v23);
    sub_1000095E8(v24, &unk_101183960, &unk_100EBCF90);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
  }

  else
  {
    v25 = *(v0 + 1320);
    v46 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 944);
    v28 = *(v0 + 936);
    v29 = *(v0 + 912);
    v30 = *(v0 + 864);
    *(v0 + 280) = v25;
    *(v0 + 288) = &protocol witness table for Song;
    v31 = sub_10001C8B8((v0 + 256));
    (*(v20 + 32))(v31, v30, v25);
    v13(v28, v29);
    (*(v26 + 8))(v46, v27);
  }

  v32 = *(v0 + 272);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 32) = v32;
  *(v0 + 48) = *(v0 + 288);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v33 = *(v0 + 120);
  v34 = *(v0 + 1256);
  v35 = *(v0 + 1224);
  v36 = *(v0 + 1216);
  v37 = *(v0 + 512);
  if (v33)
  {
    v38 = *(v0 + 128);
    v39 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v37 + 24) = v33;
    *(v37 + 32) = *(v38 + 8);
    v40 = sub_10001C8B8(v37);
    (*(*(v33 - 8) + 16))(v40, v39, v33);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v35 + 8))(v34, v36);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v35 + 8))(v34, v36);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0;
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100184950()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2 = sub_1001876AC;
  }

  else
  {
    v2 = sub_100184A64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100184A64()
{
  v48 = v0;
  (*(*(v0 + 808) + 16))(*(v0 + 816), *(v0 + 824), *(v0 + 800));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  if (v3)
  {
    v7 = *(v0 + 792);
    v8 = *(v0 + 776);
    v9 = *(v0 + 768);
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v43 = 136446210;
    v44 = v2;
    MusicCatalogResourceResponse.items.getter();
    sub_100020674(&unk_101182C70, &qword_10118C190, &qword_100EBD690, &protocol conformance descriptor for MusicItemCollection<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v8 + 8))(v7, v9);
    v13 = *(v5 + 8);
    v13(v4, v6);
    v14 = sub_1000105AC(v10, v12, &v47);

    *(v43 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v44, "Found catalog stations: %{public}s", v43, 0xCu);
    sub_10000959C(v45);
  }

  else
  {

    v13 = *(v5 + 8);
    v13(v4, v6);
  }

  v15 = *(v0 + 1344);
  v16 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v19 = *(v0 + 760);
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD9C(v19);
  (*(v17 + 8))(v16, v18);
  v20 = *(v15 - 8);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    v21 = *(v0 + 848);
    v22 = *(v0 + 840);
    v23 = *(v0 + 832);
    v24 = *(v0 + 760);
    v13(*(v0 + 824), *(v0 + 800));
    (*(v22 + 8))(v21, v23);
    sub_1000095E8(v24, &unk_1011838C0, &qword_100EBD688);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
  }

  else
  {
    v25 = *(v0 + 1344);
    v46 = *(v0 + 848);
    v26 = *(v0 + 840);
    v27 = *(v0 + 832);
    v28 = *(v0 + 824);
    v29 = *(v0 + 800);
    v30 = *(v0 + 760);
    *(v0 + 240) = v25;
    *(v0 + 248) = &protocol witness table for Station;
    v31 = sub_10001C8B8((v0 + 216));
    (*(v20 + 32))(v31, v30, v25);
    v13(v28, v29);
    (*(v26 + 8))(v46, v27);
  }

  v32 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 216);
  *(v0 + 32) = v32;
  *(v0 + 48) = *(v0 + 248);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v33 = *(v0 + 120);
  v34 = *(v0 + 1256);
  v35 = *(v0 + 1224);
  v36 = *(v0 + 1216);
  v37 = *(v0 + 512);
  if (v33)
  {
    v38 = *(v0 + 128);
    v39 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v37 + 24) = v33;
    *(v37 + 32) = *(v38 + 8);
    v40 = sub_10001C8B8(v37);
    (*(*(v33 - 8) + 16))(v40, v39, v33);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v35 + 8))(v34, v36);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v35 + 8))(v34, v36);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0;
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1001851E8()
{
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v2 = sub_100187A08;
  }

  else
  {
    v2 = sub_1001852FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001852FC()
{
  v55 = v0;
  (*(*(v0 + 656) + 16))(*(v0 + 664), *(v0 + 672), *(v0 + 648));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1128);
    v4 = *(v0 + 1104);
    v5 = *(v0 + 1096);
    v6 = *(v0 + 656);
    v48 = *(v0 + 664);
    v50 = *(v0 + 648);
    v7 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v7 = 136446210;
    MusicLibraryResponse.items.getter();
    sub_100020674(&qword_101182C68, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = *(v6 + 8);
    v11(v48, v50);
    v12 = sub_1000105AC(v8, v10, &v54);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Found library albums: %{public}s", v7, 0xCu);
    sub_10000959C(v52);
  }

  else
  {
    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);

    v11 = *(v14 + 8);
    v11(v13, v15);
  }

  v16 = *(v0 + 1384);
  v17 = *(v0 + 1112);
  v18 = *(v0 + 1104);
  v19 = *(v0 + 1096);
  v20 = *(v0 + 1080);
  MusicLibraryResponse.items.getter();
  sub_10034DA18(v20);
  (*(v18 + 8))(v17, v19);
  v21 = *(v16 - 8);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    v22 = *(v0 + 1376);
    v23 = *(v0 + 1080);
    v24 = *(v0 + 752);
    v25 = *(v0 + 704);
    v26 = *(v0 + 696);
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v11(*(v0 + 672), *(v0 + 648));
    (*(v27 + 8))(v26, v28);
    v22(v24, v25);
    sub_1000095E8(v23, &unk_101184730, &unk_100ECB920);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  else
  {
    v29 = *(v0 + 1384);
    v30 = *(v0 + 1080);
    v51 = *(v0 + 752);
    v53 = *(v0 + 1376);
    v49 = *(v0 + 704);
    v47 = *(v0 + 696);
    v31 = *(v0 + 688);
    v32 = *(v0 + 680);
    v33 = *(v0 + 672);
    v34 = *(v0 + 648);
    *(v0 + 200) = v29;
    *(v0 + 208) = &protocol witness table for Album;
    v35 = sub_10001C8B8((v0 + 176));
    (*(v21 + 32))(v35, v30, v29);
    v11(v33, v34);
    (*(v31 + 8))(v47, v32);
    v53(v51, v49);
  }

  v36 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v36;
  *(v0 + 48) = *(v0 + 208);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v37 = *(v0 + 120);
  v38 = *(v0 + 1256);
  v39 = *(v0 + 1224);
  v40 = *(v0 + 1216);
  v41 = *(v0 + 512);
  if (v37)
  {
    v42 = *(v0 + 128);
    v43 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v41 + 24) = v37;
    *(v41 + 32) = *(v42 + 8);
    v44 = sub_10001C8B8(v41);
    (*(*(v37 - 8) + 16))(v44, v43, v37);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v39 + 8))(v38, v40);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v39 + 8))(v38, v40);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0;
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100185AC8()
{
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v2 = sub_100187D8C;
  }

  else
  {
    v2 = sub_100185BDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100185BDC()
{
  v55 = v0;
  (*(*(v0 + 600) + 16))(*(v0 + 608), *(v0 + 616), *(v0 + 592));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1016);
    v4 = *(v0 + 992);
    v5 = *(v0 + 984);
    v6 = *(v0 + 600);
    v48 = *(v0 + 608);
    v50 = *(v0 + 592);
    v7 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v7 = 136446210;
    MusicLibraryResponse.items.getter();
    sub_100020674(&qword_101182C60, &qword_101181BE8, &unk_100EBD710, &protocol conformance descriptor for MusicItemCollection<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = *(v6 + 8);
    v11(v48, v50);
    v12 = sub_1000105AC(v8, v10, &v54);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Found library playlists: %{public}s", v7, 0xCu);
    sub_10000959C(v52);
  }

  else
  {
    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);

    v11 = *(v14 + 8);
    v11(v13, v15);
  }

  v16 = *(v0 + 1408);
  v17 = *(v0 + 1000);
  v18 = *(v0 + 992);
  v19 = *(v0 + 984);
  v20 = *(v0 + 968);
  MusicLibraryResponse.items.getter();
  sub_10034DCDC(v20);
  (*(v18 + 8))(v17, v19);
  v21 = *(v16 - 8);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    v22 = *(v0 + 1376);
    v23 = *(v0 + 968);
    v24 = *(v0 + 752);
    v25 = *(v0 + 704);
    v26 = *(v0 + 640);
    v27 = *(v0 + 632);
    v28 = *(v0 + 624);
    v11(*(v0 + 616), *(v0 + 592));
    (*(v27 + 8))(v26, v28);
    v22(v24, v25);
    sub_1000095E8(v23, &unk_1011814D0, &qword_100EC12A0);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
  }

  else
  {
    v29 = *(v0 + 1408);
    v30 = *(v0 + 968);
    v51 = *(v0 + 752);
    v53 = *(v0 + 1376);
    v49 = *(v0 + 704);
    v47 = *(v0 + 640);
    v31 = *(v0 + 632);
    v32 = *(v0 + 624);
    v33 = *(v0 + 616);
    v34 = *(v0 + 592);
    *(v0 + 160) = v29;
    *(v0 + 168) = &protocol witness table for Playlist;
    v35 = sub_10001C8B8((v0 + 136));
    (*(v21 + 32))(v35, v30, v29);
    v11(v33, v34);
    (*(v31 + 8))(v47, v32);
    v53(v51, v49);
  }

  v36 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v36;
  *(v0 + 48) = *(v0 + 168);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v37 = *(v0 + 120);
  v38 = *(v0 + 1256);
  v39 = *(v0 + 1224);
  v40 = *(v0 + 1216);
  v41 = *(v0 + 512);
  if (v37)
  {
    v42 = *(v0 + 128);
    v43 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v41 + 24) = v37;
    *(v41 + 32) = *(v42 + 8);
    v44 = sub_10001C8B8(v41);
    (*(*(v37 - 8) + 16))(v44, v43, v37);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v39 + 8))(v38, v40);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v39 + 8))(v38, v40);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0;
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1001863B0()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_100188110;
  }

  else
  {
    v2 = sub_1001864C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001864C4()
{
  v55 = v0;
  (*(*(v0 + 544) + 16))(*(v0 + 552), *(v0 + 560), *(v0 + 536));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 880);
    v5 = *(v0 + 872);
    v6 = *(v0 + 544);
    v48 = *(v0 + 552);
    v50 = *(v0 + 536);
    v7 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v7 = 136446210;
    MusicLibraryResponse.items.getter();
    sub_100020674(&qword_101182C58, &qword_10118D1A0, &qword_100EBD6B0, &protocol conformance descriptor for MusicItemCollection<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = *(v6 + 8);
    v11(v48, v50);
    v12 = sub_1000105AC(v8, v10, &v54);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Found library songs: %{public}s", v7, 0xCu);
    sub_10000959C(v52);
  }

  else
  {
    v13 = *(v0 + 552);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);

    v11 = *(v14 + 8);
    v11(v13, v15);
  }

  v16 = *(v0 + 1432);
  v17 = *(v0 + 888);
  v18 = *(v0 + 880);
  v19 = *(v0 + 872);
  v20 = *(v0 + 856);
  MusicLibraryResponse.items.getter();
  sub_10034DD6C(v20);
  (*(v18 + 8))(v17, v19);
  v21 = *(v16 - 8);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    v22 = *(v0 + 1376);
    v23 = *(v0 + 856);
    v24 = *(v0 + 752);
    v25 = *(v0 + 704);
    v26 = *(v0 + 584);
    v27 = *(v0 + 576);
    v28 = *(v0 + 568);
    v11(*(v0 + 560), *(v0 + 536));
    (*(v27 + 8))(v26, v28);
    v22(v24, v25);
    sub_1000095E8(v23, &unk_101183960, &unk_100EBCF90);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    v29 = *(v0 + 1432);
    v30 = *(v0 + 856);
    v51 = *(v0 + 752);
    v53 = *(v0 + 1376);
    v49 = *(v0 + 704);
    v47 = *(v0 + 584);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v33 = *(v0 + 560);
    v34 = *(v0 + 536);
    *(v0 + 80) = v29;
    *(v0 + 88) = &protocol witness table for Song;
    v35 = sub_10001C8B8((v0 + 56));
    (*(v21 + 32))(v35, v30, v29);
    v11(v33, v34);
    (*(v31 + 8))(v47, v32);
    v53(v51, v49);
  }

  v36 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v36;
  *(v0 + 48) = *(v0 + 88);
  sub_1000089F8(v0 + 16, v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  v37 = *(v0 + 120);
  v38 = *(v0 + 1256);
  v39 = *(v0 + 1224);
  v40 = *(v0 + 1216);
  v41 = *(v0 + 512);
  if (v37)
  {
    v42 = *(v0 + 128);
    v43 = sub_10000954C((v0 + 96), *(v0 + 120));
    *(v41 + 24) = v37;
    *(v41 + 32) = *(v42 + 8);
    v44 = sub_10001C8B8(v41);
    (*(*(v37 - 8) + 16))(v44, v43, v37);
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v39 + 8))(v38, v40);
    sub_10000959C((v0 + 96));
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_101182C38, &unk_100ECB2A0);
    (*(v39 + 8))(v38, v40);
    sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0;
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100186C98()
{
  v1 = v0[157];
  v2 = v0[153];
  v3 = v0[152];
  (*(v0[150] + 8))(v0[151], v0[149]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100186FF4()
{
  v1 = v0[157];
  v2 = v0[153];
  v3 = v0[152];
  (*(v0[133] + 8))(v0[134], v0[132]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100187350()
{
  v1 = v0[157];
  v2 = v0[153];
  v3 = v0[152];
  (*(v0[119] + 8))(v0[120], v0[118]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001876AC()
{
  v1 = v0[157];
  v2 = v0[153];
  v3 = v0[152];
  (*(v0[105] + 8))(v0[106], v0[104]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100187A08()
{
  v1 = v0[172];
  v2 = v0[157];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[94];
  v6 = v0[88];
  (*(v0[86] + 8))(v0[87], v0[85]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100187D8C()
{
  v1 = v0[172];
  v2 = v0[157];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[94];
  v6 = v0[88];
  (*(v0[79] + 8))(v0[80], v0[78]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100188110()
{
  v1 = v0[172];
  v2 = v0[157];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[94];
  v6 = v0[88];
  (*(v0[72] + 8))(v0[73], v0[71]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100188494@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000060E4(v2, qword_101218700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100188558(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10017ED90(a1, v4, v5, v6);
}

uint64_t sub_10018860C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100188770();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100188638(uint64_t a1)
{
  v2 = sub_10017EBBC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100188674(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001886BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018870C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101182BC8);
  sub_1000060E4(v0, qword_101182BC8);
  return static Logger.music(_:)(0xD000000000000016, 0x8000000100EBE730);
}

uint64_t sub_100188770()
{
  v34 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v34 - 8);
  __chkstk_darwin();
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101182C10, &qword_100EBE770);
  __chkstk_darwin();
  v4 = v20 - v3;
  sub_10010FC20(&qword_101182C18, &qword_100EBE778);
  __chkstk_darwin();
  v6 = v20 - v5;
  sub_10010FC20(&qword_101182C20, &qword_100EBE780);
  __chkstk_darwin();
  v8 = v20 - v7;
  v9 = type metadata accessor for LocalizedStringResource();
  v25 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin();
  sub_10010FC20(&qword_101182C28, &qword_100EBE788);
  LocalizedStringResource.init(stringLiteral:)();
  v11 = *(v10 + 56);
  v23 = v10 + 56;
  v27 = v11;
  v11(v8, 1, 1, v9);
  v26 = type metadata accessor for String.IntentInputOptions();
  v35 = 0;
  v36 = 0;
  v12 = *(v26 - 8);
  v33 = *(v12 + 56);
  v22 = v12 + 56;
  v33(v6, 1, 1, v26);
  v31 = type metadata accessor for IntentDialog();
  v13 = *(v31 - 8);
  v30 = *(v13 + 56);
  v32 = v13 + 56;
  v20[0] = v4;
  v30(v4, 1, 1, v31);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v0 + 104);
  v28 = v0 + 104;
  v14 = v34;
  v21(v2);
  v15 = v2;
  v24 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10010FC20(&qword_101182C30, &qword_100EBE790);
  LocalizedStringResource.init(stringLiteral:)();
  v27(v8, 1, 1, v25);
  v35 = 0;
  v36 = 0;
  v33(v6, 1, 1, v26);
  v16 = v20[0];
  v30(v20[0], 1, 1, v31);
  v17 = v14;
  v18 = v21;
  (v21)(v15, v29, v17);
  v20[1] = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v27(v8, 1, 1, v25);
  v35 = 0;
  v36 = 0;
  v33(v6, 1, 1, v26);
  v30(v16, 1, 1, v31);
  (v18)(v15, v29, v34);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  return v24;
}

unint64_t sub_100188C90()
{
  result = qword_10118AB70;
  if (!qword_10118AB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118AB70);
  }

  return result;
}

uint64_t sub_100188CDC(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100188D38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100188D84(uint64_t a1, char *a2)
{
  v4 = &a2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  if (a2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56] == (*(a1 + 56) & 1))
  {
    v5 = [a2 _indexPathsForPreparedItems];
    type metadata accessor for IndexPath();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v6 + 16);

    if (v7)
    {
      isa = [a2 _indexPathsForPreparedItems];
      if (!isa)
      {
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      [a2 reconfigureItemsAtIndexPaths:isa];

      v9 = [a2 collectionViewLayout];
      [v9 invalidateLayout];
    }
  }

  v10 = *&a2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  if (v10)
  {
    v11 = *&a2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
    v12 = *(v4 + 1);
    v13[0] = *v4;
    v13[1] = v12;
    v14[0] = *(v4 + 2);
    *(v14 + 9) = *(v4 + 41);

    v10(a1, v13);

    sub_100020438(v10, v11);
  }
}

id sub_100188F30(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView____lazy_storage___artworkMetricsProvider];
  *v10 = 0;
  *(v10 + 1) = 0;
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(v6, v5, 0, v18, 0.0);
  v11 = &v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v12 = v18[1];
  *v11 = v18[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v19[0];
  *(v11 + 41) = *(v19 + 9);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:collectionViewLayout:", a1, 0.0, 0.0, 0.0, 0.0);
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v14 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v15 = v13;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

void sub_1001891B4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v31.receiver = v5;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, "frame");
  if (Width != CGRectGetWidth(v38))
  {
    v30.receiver = v5;
    v30.super_class = ObjectType;
    objc_msgSendSuper2(&v30, "frame");
    v12 = CGRectGetWidth(v39);
    [v5 safeAreaInsets];
    UIEdgeInsets.horizontal.getter();
    v14 = v12 - v13;
    v15 = &v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
    v16 = v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26];
    v17 = v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 25];
    v18 = [v5 traitCollection];
    v19 = UITraitCollection.isAccessibilitySizeCategory.getter();

    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(v17, v16, v19 & 1, v32, v14);
    v20 = *(v15 + 1);
    v34 = *v15;
    v35 = v20;
    v36[0] = *(v15 + 2);
    *(v36 + 9) = *(v15 + 41);
    v21 = v32[1];
    *v15 = v32[0];
    *(v15 + 1) = v21;
    *(v15 + 2) = v33[0];
    *(v15 + 41) = *(v33 + 9);
    if ((static HI.Grid.Metrics.__derived_struct_equals(_:_:)(&v34, v32) & 1) == 0)
    {
      v22 = objc_opt_self();
      v23 = swift_allocObject();
      v24 = v35;
      *(v23 + 16) = v34;
      *(v23 + 32) = v24;
      *(v23 + 48) = v36[0];
      *(v23 + 57) = *(v36 + 9);
      *(v23 + 80) = v5;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100189AA0;
      *(v25 + 24) = v23;
      v29[4] = sub_100029B94;
      v29[5] = v25;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 1107296256;
      v29[2] = sub_100029B9C;
      v29[3] = &unk_10109E290;
      v26 = _Block_copy(v29);
      v27 = v5;

      [v22 performWithoutAnimation:v26];
      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void sub_100189464()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "safeAreaInsetsDidChange");
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "frame");
  Width = CGRectGetWidth(v28);
  [v1 safeAreaInsets];
  UIEdgeInsets.horizontal.getter();
  v5 = Width - v4;
  v6 = &v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v7 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26];
  v8 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 25];
  v9 = [v1 traitCollection];
  v10 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(v8, v7, v10 & 1, v23, v5);
  v11 = *(v6 + 1);
  v25 = *v6;
  v26 = v11;
  v27[0] = *(v6 + 2);
  *(v27 + 9) = *(v6 + 41);
  v12 = v23[1];
  *v6 = v23[0];
  *(v6 + 1) = v12;
  *(v6 + 2) = v24[0];
  *(v6 + 41) = *(v24 + 9);
  if ((static HI.Grid.Metrics.__derived_struct_equals(_:_:)(&v25, v23) & 1) == 0)
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    v15 = v26;
    *(v14 + 16) = v25;
    *(v14 + 32) = v15;
    *(v14 + 48) = v27[0];
    *(v14 + 57) = *(v27 + 9);
    *(v14 + 80) = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10018A030;
    *(v16 + 24) = v14;
    v20[4] = sub_10018A020;
    v20[5] = v16;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100029B9C;
    v20[3] = &unk_10109E420;
    v17 = _Block_copy(v20);
    v18 = v1;

    [v13 performWithoutAnimation:v17];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100189724(void *a1, uint64_t a2)
{
  [a1 setCollectionViewLayout:a2];
  v3 = [a1 indexPathsForVisibleItems];
  if (!v3)
  {
    type metadata accessor for IndexPath();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v3 = isa;
  }

  v5 = v3;
  [a1 reloadItemsAtIndexPaths:?];
}

double (*sub_100189858())(uint64_t a1, uint64_t a2)
{
  v1 = (v0 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView____lazy_storage___artworkMetricsProvider);
  v2 = *(v0 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView____lazy_storage___artworkMetricsProvider);
  v3 = *(v0 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView____lazy_storage___artworkMetricsProvider + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView____lazy_storage___artworkMetricsProvider);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_10018A00C;
    *v1 = sub_10018A00C;
    v1[1] = v5;

    sub_100020438(v6, v7);
  }

  sub_100030444(v2, v3);
  return v4;
}

double sub_100189914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48);
  if ([objc_opt_self() isMainThread])
  {
    v6 = [v4 traitCollection];
  }

  else
  {
    v6 = [objc_opt_self() currentTraitCollection];
  }

  v7 = v6;
  [v7 displayScale];

  return v5;
}

uint64_t sub_100189AAC()
{
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v1 = &v5 - v0;
  v2 = type metadata accessor for UICellAccessory.MultiselectOptions();
  sub_100006080(v2, qword_101218718);
  sub_1000060E4(v2, qword_101218718);
  v3 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  return UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
}

void sub_100189BA8(char *a1)
{
  v20.receiver = a1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "frame");
  Width = CGRectGetWidth(v26);
  [a1 safeAreaInsets];
  UIEdgeInsets.horizontal.getter();
  v4 = Width - v3;
  v5 = &a1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v6 = a1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26];
  v7 = a1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 25];
  v8 = [a1 traitCollection];
  v9 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(v7, v6, v9 & 1, v21, v4);
  v10 = *(v5 + 1);
  v23 = *v5;
  v24 = v10;
  v25[0] = *(v5 + 2);
  *(v25 + 9) = *(v5 + 41);
  v11 = v21[1];
  *v5 = v21[0];
  *(v5 + 1) = v11;
  *(v5 + 2) = v22[0];
  *(v5 + 41) = *(v22 + 9);
  if ((static HI.Grid.Metrics.__derived_struct_equals(_:_:)(&v23, v21) & 1) == 0)
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    v14 = v24;
    *(v13 + 16) = v23;
    *(v13 + 32) = v14;
    *(v13 + 48) = v25[0];
    *(v13 + 57) = *(v25 + 9);
    *(v13 + 80) = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10018A030;
    *(v15 + 24) = v13;
    v19[4] = sub_10018A020;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100029B9C;
    v19[3] = &unk_10109E308;
    v16 = _Block_copy(v19);
    v17 = a1;

    [v12 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100189E04(void *a1)
{
  v2 = v1;
  v4 = [v1 collectionViewLayout];
  sub_100189FB8();
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10018A004;
    *(v8 + 24) = v7;
    v13[4] = sub_10018A020;
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100029B9C;
    v13[3] = &unk_10109E380;
    v9 = _Block_copy(v13);
    v10 = v2;
    v11 = a1;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

unint64_t sub_100189FB8()
{
  result = qword_101182D90;
  if (!qword_101182D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101182D90);
  }

  return result;
}

id sub_10018A034()
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v6 = ObjectType;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010E5A8(_swiftEmptyArrayStorage);
      v2 = v7;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    ObjectType = v6;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR___CarPlayTabBarController_observers] = v2;
  *&v0[OBJC_IVAR___CarPlayTabBarController_tabIdentifiers] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___CarPlayTabBarController_canRestoreLastSelectedTab] = 1;
  *&v0[OBJC_IVAR___CarPlayTabBarController_tabRestorationTimeout] = 0;
  *&v0[OBJC_IVAR___CarPlayTabBarController_accessoryView] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
  [v3 setDelegate:v3];
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  ApplicationCapabilities.Controller.capabilities.getter(v9);

  v4 = v9[13];

  sub_100014984(v9);

  ApplicationCapabilities.Controller.capabilities.getter(v10);

  sub_100014984(v10);
  sub_10018C244(v4, v11);

  return v3;
}

void sub_10018A200()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v69 = *(v71 - 8);
  __chkstk_darwin();
  v67 = &v57 - v3;
  v74 = sub_10010FC20(&qword_101182EB0, &qword_100EBE990);
  v72 = *(v74 - 8);
  __chkstk_darwin();
  v66 = &v57 - v4;
  v75 = sub_10010FC20(&qword_101182EB8, &qword_100EBE998);
  v73 = *(v75 - 8);
  __chkstk_darwin();
  v68 = &v57 - v5;
  v6 = sub_10010FC20(&qword_101182EC0, &qword_100EBE9A0);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin();
  v70 = &v57 - v7;
  v8 = sub_10010FC20(&qword_101182EC8, &qword_100EBE9A8);
  v79 = *(v8 - 8);
  v80 = v8;
  __chkstk_darwin();
  v78 = &v57 - v9;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v63 = &v57 - v10;
  v11 = sub_10010FC20(&qword_1011897D0, &qword_100EC9750);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v57 - v13;
  v58 = sub_10010FC20(&qword_101182ED0, &qword_100EBE9B0);
  v59 = *(v58 - 8);
  __chkstk_darwin();
  v16 = &v57 - v15;
  v62 = sub_10010FC20(&qword_101182ED8, &qword_100EBE9B8);
  v61 = *(v62 - 8);
  __chkstk_darwin();
  v18 = &v57 - v17;
  v65 = sub_10010FC20(&unk_101182EE0, &unk_100EBE9C0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v60 = &v57 - v19;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v57 - v21;
  v82.receiver = v1;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "viewDidLoad", v20);
  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() clearColor];
    [v24 setBackgroundColor:v25];

    v26 = [v1 tabBar];
    v27 = String._bridgeToObjectiveC()();
    [v26 setAccessibilityIdentifier:v27];

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = objc_allocWithZone(type metadata accessor for AccessoryView());
    v30 = sub_10018BA70(0, sub_10018D2F4, v28);
    v31 = *&v1[OBJC_IVAR___CarPlayTabBarController_accessoryView];
    *&v1[OBJC_IVAR___CarPlayTabBarController_accessoryView] = v30;
    v32 = v30;

    [v1 _setAccessoryView:v32];
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_100EBE9D8;
    *(v35 + 24) = v34;
    v36 = static Task<>.delayed(by:priority:task:)(v22, &unk_100EBE9E0, v35, (&type metadata for () + 1), 1.0);

    sub_1000095E8(v22, &unk_101181520, &qword_100EBCC60);
    v37 = *&v1[OBJC_IVAR___CarPlayTabBarController_tabRestorationTimeout];
    *&v1[OBJC_IVAR___CarPlayTabBarController_tabRestorationTimeout] = v36;
    if (v37)
    {

      sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
      Task.cancel()();
    }

    ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    ApplicationCapabilities.Controller.$capabilities.getter();

    sub_10010FC20(&unk_101182EF0, &qword_100EBE9E8);
    sub_100020674(&qword_101182BB0, &qword_1011897D0, &qword_100EC9750, &protocol conformance descriptor for Published<A>.Publisher);
    Publisher.map<A>(_:)();
    (*(v12 + 8))(v14, v11);
    sub_100020674(&unk_101182F00, &qword_101182ED0, &qword_100EBE9B0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v38 = v58;
    Publisher.removeDuplicates(by:)();
    (*(v59 + 8))(v16, v38);
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    v81 = v39;
    v40 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v41 = v63;
    v59 = *(*(v40 - 8) + 56);
    (v59)(v63, 1, 1, v40);
    sub_100020674(&unk_101182F10, &qword_101182ED8, &qword_100EBE9B8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v42 = sub_1000206BC();
    v43 = v60;
    v44 = v62;
    v58 = v42;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v41, &qword_101182140, &unk_100EBD2A0);

    (*(v61 + 8))(v18, v44);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101182F20, &unk_101182EE0, &unk_100EBE9C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v45 = v65;
    Publisher<>.sink(receiveValue:)();

    (*(v64 + 8))(v43, v45);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v46 = v67;
    (*(*qword_101218AC8 + 456))();
    sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
    v47 = v66;
    v48 = v71;
    Publisher.filter(_:)();
    (*(v69 + 8))(v46, v48);
    sub_100020674(&qword_101182F30, &qword_101182EB0, &qword_100EBE990, &protocol conformance descriptor for Publishers.Filter<A>);
    v49 = v68;
    v50 = v74;
    Publisher.map<A>(_:)();
    (*(v72 + 8))(v47, v50);
    sub_100020674(&qword_101182F38, &qword_101182EB8, &qword_100EBE998, &protocol conformance descriptor for Publishers.Map<A, B>);
    v51 = v70;
    v52 = v75;
    Publisher<>.removeDuplicates()();
    (*(v73 + 8))(v49, v52);
    v53 = static OS_dispatch_queue.main.getter();
    v81 = v53;
    (v59)(v41, 1, 1, v40);
    sub_100020674(&qword_101182F40, &qword_101182EC0, &qword_100EBE9A0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v55 = v77;
    v54 = v78;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v41, &qword_101182140, &unk_100EBD2A0);

    (*(v76 + 8))(v51, v55);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_101182F48, &qword_101182EC8, &qword_100EBE9A8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v56 = v80;
    Publisher<>.sink(receiveValue:)();

    (*(v79 + 8))(v54, v56);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_10018B0F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CarPlayRootNavigationController();
      if (swift_dynamicCastClass())
      {
        sub_1001D3268(0, 1);
        v5 = v4;
      }

      else
      {
        v5 = v2;
        v2 = v4;
      }
    }
  }
}

uint64_t sub_10018B1A4(uint64_t a1)
{
  *(v1 + 64) = a1;
  type metadata accessor for MainActor();
  *(v1 + 72) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10018B23C, v3, v2);
}

uint64_t sub_10018B23C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___CarPlayTabBarController_canRestoreLastSelectedTab] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR___CarPlayTabBarController_tabRestorationTimeout);
    *(v2 + OBJC_IVAR___CarPlayTabBarController_tabRestorationTimeout) = 0;
    if (v4)
    {
      sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
      Task.cancel()();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10018B348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  *a2 = *(a1 + 104);
  *(a2 + 8) = v2;
}

uint64_t sub_10018B35C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  v4 = sub_10001F358(*a1, *a2);
  return v4 & sub_10001F1F4(v3, v2) & 1;
}

void sub_10018B3B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10018C244(v2, v3);
  }
}

id sub_10018B424(void **a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 playerPath];
  v3 = [v2 isLocalDevice];

  return v3;
}

void sub_10018B480(void **a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 tracklist], v5 = objc_msgSend(v4, "playingItem"), v4, v5))
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_10018B4FC(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10018B558(v2);
  }
}

void sub_10018B558(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating Tab Bar Accessory View", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(v2 + OBJC_IVAR___CarPlayTabBarController_accessoryView);
  if (v11)
  {
    v11[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_displaysNowPlaying] = a1 & 1;
    v12 = *&v11[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_nowPlayingButton];
    v13 = v11;
    [v12 setHidden:(a1 & 1) == 0];
    [v13 invalidateIntrinsicContentSize];
    [v13 setNeedsLayout];
    v14 = [v13 superview];
    [v14 setNeedsLayout];
  }
}

id sub_10018B934(uint64_t a1, uint64_t a2)
{
  result = sub_100647294(a2);
  if (!result)
  {
    v3 = objc_allocWithZone(UIViewController);

    return [v3 init];
  }

  return result;
}

id sub_10018BA70(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_siriActionSource;
  *&v3[v8] = [objc_allocWithZone(SiriDirectActionSource) initWithDelegate:0];
  v3[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_displaysNowPlaying] = a1;
  v9 = sub_1007D5164(0x697966696E67616DLL, 0xEF7373616C67676ELL);
  *&v3[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_searchButton] = v9;
  v10 = objc_allocWithZone(CPUINowPlayingButton);
  v11 = v9;
  v12 = [v10 initForUseInTabBar:1];
  [v12 setHidden:(a1 & 1) == 0];
  *&v3[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_nowPlayingButton] = v12;
  v13 = &v3[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_nowPlayingButtonHandler];
  *v13 = a2;
  v13[1] = a3;
  v14 = v12;

  [v11 frame];
  v16 = v15;
  v18 = v17;
  [v14 frame];
  v20 = v19;
  v22 = v21;

  if (a1)
  {
    v23 = v16 + 8.0 + v20;
  }

  else
  {
    v23 = v16;
  }

  if ((a1 & 1 & (v18 <= v22)) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v18;
  }

  v29.receiver = v3;
  v29.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, v23, v24);
  [v14 addTarget:v25 action:"nowPlayingButtonAction" forControlEvents:64];
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v11 addAction:v27 forControlEvents:{64, 0, 0, 0, sub_10018D45C, v26}];

  [v25 addSubview:v11];
  [v25 addSubview:v14];

  return v25;
}

void sub_10018BD28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_siriActionSource);

    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 musicSearchDirectActionWithAppBundleId:v6];

    [v4 activateWithContext:v7];
  }
}

id sub_10018BEF0()
{
  v12[0].receiver = v0;
  v12[0].super_class = swift_getObjectType();
  [(objc_super *)v12 layoutSubviews];
  v1 = *&v0[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_nowPlayingButton];
  [v1 intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  MaxX = CGRectGetMaxX(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v3;
  v15.size.height = v5;
  v7 = MaxX - CGRectGetWidth(v15);
  CGRect.centeringAlong(axes:in:)(v7, 0.0, v3, v5);
  memset(&v12[1], 0, 32);
  v13 = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  [v1 setFrame:?];
  if (v0[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_displaysNowPlaying] == 1)
  {
    v16.origin.y = 0.0;
    v16.origin.x = v7;
    v16.size.width = v3;
    v16.size.height = v5;
    v8 = CGRectGetMinX(v16) + -8.0;
  }

  else
  {
    [v0 bounds];
    v8 = CGRectGetMaxX(v17);
  }

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = 36.0;
  v18.size.height = 36.0;
  Width = CGRectGetWidth(v18);
  v10 = *&v0[OBJC_IVAR____TtC5MusicP33_970F256D4ED42E4F4DDE3661975CA32C13AccessoryView_searchButton];
  CGRect.centeringAlong(axes:in:)(v8 - Width, 0.0, 36.0, 36.0);
  CGRect.applyingLayoutDirection(in:bounds:)();
  return [v10 setFrame:?];
}

void sub_10018C244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v82 = &v73 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    LODWORD(v85) = v4;
    v4 = v13;
    v14 = swift_slowAlloc();
    v84 = v7;
    v15 = v14;
    v90 = v14;
    *v4 = 136446210;
    v16 = Array.description.getter();
    v18 = v3;
    v19 = sub_1000105AC(v16, v17, &v90);

    *(v4 + 4) = v19;
    v3 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating Tabs & View Controllers identifiers=%{public}s", v4, 0xCu);
    sub_10000959C(v15);

    LOBYTE(v4) = v85;

    (*(v8 + 8))(v10, v84);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v20 = sub_100647198(v4, a1);
  v21 = v20[2];
  if (v21)
  {
    v74 = v3;
    v99 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v81 = objc_opt_self();
    v80 = 0x8000000100E3E560;
    v79 = 0x8000000100E3E610;
    v78 = 0x8000000100E3E630;
    v75 = v88;
    v85 = v21 - 1;
    v22 = 32;
    v77 = 0xD000000000000012;
    for (i = v20; ; v20 = i)
    {
      v83 = v22;
      v23 = *(v20 + v22);
      v24 = 0x7473696C79616C70;
      if (v23 == 5)
      {
        v24 = 0x736F65646976;
        v25 = 0xE600000000000000;
      }

      else
      {
        v25 = 0xE900000000000073;
      }

      v26 = 0x686372616573;
      if (v23 == 3)
      {
        v26 = 0x6F69646172;
      }

      v27 = 0xE500000000000000;
      if (v23 != 3)
      {
        v27 = 0xE600000000000000;
      }

      if (v23 <= 4)
      {
        v24 = v26;
        v25 = v27;
      }

      v28 = 0xE900000000000077;
      v29 = 0x6F4E6E657473696CLL;
      if (v23 != 1)
      {
        v29 = 0x6573776F7262;
        v28 = 0xE600000000000000;
      }

      if (!v23)
      {
        v29 = 0x7972617262696CLL;
        v28 = 0xE700000000000000;
      }

      v30 = v23 <= 2 ? v29 : v24;
      v31 = v23 <= 2 ? v28 : v25;
      v32 = v80;
      v90 = 0xD000000000000014;
      v91 = v80;
      v33 = v31;
      String.append(_:)(*&v30);

      v35 = v90;
      v34 = v91;
      v84 = sub_100035AC8(v23);
      v37 = v36;
      v38 = String._bridgeToObjectiveC()();

      v39 = [v81 _systemImageNamed:v38];

      v40 = swift_allocObject();
      *(v40 + 16) = v23;
      v90 = v35;
      v91 = v34;
      aBlock = 0xD000000000000014;
      v87 = v32;
      v41 = type metadata accessor for Locale();
      v42 = v32;
      v43 = v82;
      (*(*(v41 - 8) + 56))(v82, 1, 1, v41);
      sub_100009838();
      StringProtocol.range<A>(of:options:range:locale:)();
      v45 = v44;
      v47 = v46;
      sub_1000095E8(v43, &unk_101182EA0, &unk_100EBE980);
      if (v47)
      {
        v90 = 0xD000000000000014;
        v91 = v42;
        v48._countAndFlagsBits = v35;
        v48._object = v34;
        String.append(_:)(v48);
        v49 = v90;
        v50 = v91;
      }

      else
      {
        v51 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v51 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v51 < v45 >> 14)
        {
          __break(1u);
          return;
        }

        String.subscript.getter();

        v52 = static String._fromSubstring(_:)();
        v54 = v53;

        v49 = v35;
        v50 = v34;
        v35 = v52;
        v34 = v54;
      }

      v90 = v49;
      v91 = v50;
      v92 = v35;
      v93 = v34;
      v94 = v84;
      v95 = v37;
      v96 = v39;
      v97 = sub_10018D454;
      v98 = v40;
      v55 = type metadata accessor for MusicTab();
      v56 = objc_allocWithZone(v55);
      v57 = String._bridgeToObjectiveC()();
      v58 = String._bridgeToObjectiveC()();
      if (v97)
      {
        v88[2] = v97;
        v88[3] = v98;
        aBlock = _NSConcreteStackBlock;
        v87 = 1107296256;
        v88[0] = sub_10003640C;
        v88[1] = &unk_10109E4C0;
        v59 = _Block_copy(&aBlock);
      }

      else
      {
        v59 = 0;
      }

      v89.receiver = v56;
      v89.super_class = v55;
      objc_msgSendSuper2(&v89, "initWithTitle:image:identifier:viewControllerProvider:", v57, v96, v58, v59);
      _Block_release(v59);

      sub_100036360(&v90);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v85)
      {
        break;
      }

      --v85;
      v22 = v83 + 1;
    }

    v3 = v74;
    if (v99 >> 62)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_45:
      sub_100009F78(0, &qword_101181F70, UITab_ptr);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_38;
    }
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
LABEL_38:

  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setTabs:isa];

  if (*(v3 + OBJC_IVAR___CarPlayTabBarController_canRestoreLastSelectedTab))
  {
    v61 = [objc_opt_self() standardUserDefaults];
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 stringForKey:v62];

    if (v63)
    {
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v100._countAndFlagsBits = v64;
      v100._object = v66;
      v67 = sub_10003F3A8(v100);
      if (v67 > 3)
      {
        if (v67 > 5)
        {
          if (v67 != 6)
          {
            return;
          }

          v68 = 0x7473696C79616C70;
          v69 = 0xE900000000000073;
        }

        else
        {
          v69 = 0xE600000000000000;
          if (v67 == 4)
          {
            v68 = 0x686372616573;
          }

          else
          {
            v68 = 0x736F65646976;
          }
        }
      }

      else if (v67 > 1)
      {
        if (v67 == 2)
        {
          v69 = 0xE600000000000000;
          v68 = 0x6573776F7262;
        }

        else
        {
          v69 = 0xE500000000000000;
          v68 = 0x6F69646172;
        }
      }

      else if (v67)
      {
        v68 = 0x6F4E6E657473696CLL;
        v69 = 0xE900000000000077;
      }

      else
      {
        v68 = 0x7972617262696CLL;
        v69 = 0xE700000000000000;
      }

      v90 = 0xD000000000000014;
      v91 = 0x8000000100E3E560;
      v70 = v69;
      String.append(_:)(*&v68);

      v71 = String._bridgeToObjectiveC()();

      v72 = [v3 tabForIdentifier:v71];

      [v3 setSelectedTab:v72];
    }
  }
}

void sub_10018CDB0()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR___CarPlayTabBarController_observers) = v1;
  *(v0 + OBJC_IVAR___CarPlayTabBarController_tabIdentifiers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___CarPlayTabBarController_canRestoreLastSelectedTab) = 1;
  *(v0 + OBJC_IVAR___CarPlayTabBarController_tabRestorationTimeout) = 0;
  *(v0 + OBJC_IVAR___CarPlayTabBarController_accessoryView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10018CE88(void *a1, void *a2)
{
  v3 = [a1 selectedTab];
  if (v3)
  {
    v4 = v3;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v5 = a2;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = [v5 viewController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 view];

        if (v9)
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            [v10 _scrollToTopIfPossible:1];
          }
        }
      }
    }
  }

  return 1;
}

void sub_10018CF7C(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v24 - v5;
  v7 = [a1 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v24[2] = v8;
  v24[3] = v10;
  v24[0] = 0xD000000000000014;
  v24[1] = 0x8000000100E3E560;
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v13 = v12;
  v15 = v14;
  sub_1000095E8(v6, &unk_101182EA0, &unk_100EBE980);
  if (v15)
  {
  }

  else
  {
    v16 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v16 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v16 < v13 >> 14)
    {
      __break(1u);
    }

    else
    {
      String.subscript.getter();

      v17 = static String._fromSubstring(_:)();
      v19 = v18;

      v25._countAndFlagsBits = v17;
      v25._object = v19;
      LODWORD(v17) = sub_10003F3A8(v25);
      if (v17 != 7 && a2 != 0)
      {
        v21 = [objc_opt_self() standardUserDefaults];
        v22 = String._bridgeToObjectiveC()();

        v23 = String._bridgeToObjectiveC()();
        [v21 setObject:v22 forKey:v23];
      }
    }
  }
}

uint64_t sub_10018D2FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002F3F4;

  return sub_10018B1A4(v0);
}

uint64_t sub_10018D38C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1006B9D38(a1, v4);
}

void sub_10018D4CC(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    sub_10018D5A0();
    if (v2 <= 0x3F)
    {
      _s9PlaylistsV5ScopeVMa(319);
      if (v3 <= 0x3F)
      {
        sub_10018D5F0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10018D5A0()
{
  if (!qword_101182FB8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101182FB8);
    }
  }
}

void sub_10018D5F0(uint64_t a1)
{
  if (!qword_101182FC0)
  {
    sub_10018D64C();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_101182FC0);
    }
  }
}

unint64_t sub_10018D64C()
{
  result = qword_101182FC8;
  if (!qword_101182FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182FC8);
  }

  return result;
}

void sub_10018D6C8(uint64_t a1)
{
  sub_10018D754(319);
  if (v1 <= 0x3F)
  {
    sub_10005BAFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10018D754(uint64_t a1)
{
  if (!qword_101183078)
  {
    type metadata accessor for Playlist.Variant();
    sub_100190B48(&unk_101180200, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_101183078);
    }
  }
}

void *sub_10018D7E8(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10066C85C(0, v9, 0);
    v10 = v20;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_10066C85C((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_10003D17C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, &unk_10119EF50, &unk_100EDDF70);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_10018DA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10066C960(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_10010FC20(&unk_10118A3F0, &qword_100ECDA70);
      sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10066C960((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10018DB5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      sub_10010FC20(&qword_101183210, &qword_100EBED68);
      sub_100009F78(0, &qword_101197A30, NSObject_ptr);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_10018DC74(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10066CA24(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007E9704(i, a1);
        sub_100009F78(0, &qword_101183218, CAFilter_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10066CA24((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100016270(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100009F78(0, &qword_101183218, CAFilter_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10066CA24((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100016270(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10018DE70(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10066CCD4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007E97F0(i, a1);
        type metadata accessor for ImpressionTracker();
        sub_10010FC20(&qword_1011831E0, &qword_100EBED50);
        swift_dynamicCast();
        v5 = v12;
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          sub_10066CCD4((v6 > 1), v7 + 1, 1);
          v5 = v12;
        }

        _swiftEmptyArrayStorage[2] = v7 + 1;
        *&_swiftEmptyArrayStorage[2 * v7 + 4] = v5;
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for ImpressionTracker();
      do
      {

        sub_10010FC20(&qword_1011831E0, &qword_100EBED50);
        swift_dynamicCast();
        v9 = v12;
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10066CCD4((v10 > 1), v11 + 1, 1);
          v9 = v12;
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        *&_swiftEmptyArrayStorage[2 * v11 + 4] = v9;
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_10018E070(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_10066CA24(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007E99E0(i, a1);
        type metadata accessor for GridView.Base.ViewModel();
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10066CA24((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_100016270(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for GridView.Base.ViewModel();
      do
      {

        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_10066CA24((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_100016270(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10018E23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10066CD14(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      sub_10010FC20(&unk_1011815B0, &unk_100EBD030);
      sub_10010FC20(&qword_101183238, &qword_100EBED70);
      swift_dynamicCast();
      v5 = v9;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_10066CD14((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *&_swiftEmptyArrayStorage[2 * v7 + 4] = v5;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10018E378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10066CD14(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      swift_unknownObjectRetain();
      sub_10010FC20(&qword_101183230, &qword_100ECF1B0);
      sub_10010FC20(&qword_101183238, &qword_100EBED70);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10066CD14((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10018E4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10066CE68(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_10010FC20(&qword_101183268, &qword_100EBED98);
      sub_10010FC20(&unk_101183270, &qword_100ECF310);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10066CE68((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10018E5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10066CE28(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_10010FC20(&unk_101183270, &qword_100ECF310);
      sub_10010FC20(&qword_101183268, &qword_100EBED98);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10066CE28((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double sub_10018E714(uint64_t a1)
{
  v32 = a1;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v29 - v3;
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Variant();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v14 = _s9PlaylistsVMa(0);
  v15 = *(v14 + 36);
  v16 = (v1 + *(v14 + 32));
  v17 = *v16;
  v34 = *v16;
  v18 = *(v1 + v15 + 8);
  v19 = *(v1 + v15) & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    (*(v9 + 104))(v11, enum case for Playlist.Variant.folder(_:), v8);

    sub_100194B88(v11, v13);
    (*(v9 + 8))(v11, v8);
    sub_1000095E8(v13, &unk_10119EF50, &unk_100EDDF70);
    v17 = v34;
  }

  else
  {
  }

  swift_getKeyPath();
  v21 = *(v17 + 16);
  if (v21)
  {
    v22 = sub_1003ADCE4(*(v17 + 16), 0);
    sub_100198044(&v33, &v22[(*(v9 + 80) + 32) & ~*(v9 + 80)], v21, v17, &type metadata accessor for Playlist.Variant);
    v24 = v23;
    sub_10005C9F8(v33);
    if (v24 == v21)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_10018D7E8(v22);

  sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  sub_100190B48(&qword_1011831D8, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  sub_100190B48(&qword_10118A3C0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  MusicLibrarySectionedRequest<>.filterItems<A>(matching:memberOf:)();

  v25 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v16 + *(v25 + 20), v4, &unk_10118F670, &unk_100EC89B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10118F670, &unk_100EC89B0);
  }

  else
  {
    v27 = v30;
    (*(v6 + 32))(v30, v4, v5);
    swift_getKeyPath();
    v28 = v31;
    (*(v6 + 16))(v31, v27, v5);
    (*(v6 + 56))(v28, 0, 1, v5);
    sub_100190B48(&qword_1011831C0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();

    sub_1000095E8(v28, &unk_10118F670, &unk_100EC89B0);
    (*(v6 + 8))(v27, v5);
  }

  if (*(v16 + *(v25 + 24)) == 1)
  {
    swift_getKeyPath();
    LOBYTE(v33) = 1;
    MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();
  }

  return result;
}

void sub_10018ECCC()
{
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + *(v1 + 44));
  if (v4 <= 4)
  {
    if (v4 != 1 && v4 != 4)
    {
LABEL_14:
      v5 = v1;
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000060E4(v6, static Logger.libraryView);
      sub_100198D00(v0, v3, _s9PlaylistsVMa);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16 = v10;
        *v9 = 136446210;
        v15[7] = v3[*(v5 + 44)];
        v11 = String.init<A>(describing:)();
        v13 = v12;
        sub_100198AA8(v3);
        v14 = sub_1000105AC(v11, v13, &v16);

        *(v9 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v7, v8, "Tried to apply unhandled sortOption=%{public}s to playlists request.", v9, 0xCu);
        sub_10000959C(v10);
      }

      else
      {

        sub_100198AA8(v3);
      }

      return;
    }

    goto LABEL_10;
  }

  if (v4 != 5)
  {
    if (v4 != 6)
    {
      if (v4 == 7)
      {
        return;
      }

      goto LABEL_14;
    }

LABEL_10:
    swift_getKeyPath();
    sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  sub_100190B48(&qword_1011831D8, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
LABEL_11:
}

uint64_t sub_10018EFFC()
{
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v2 = &v17 - v1;
  result = _s9PlaylistsVMa(0);
  v4 = *(v0 + *(result + 40));
  if (*(v4 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v5 = v4 + 56;
    v6 = -1 << *(v4 + 32);
    v7 = result & ~v6;
    if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (!*(*(v4 + 48) + v7) || *(*(v4 + 48) + v7) == 2)
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_10;
        }

        v7 = (v7 + 1) & v8;
        if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v10 = enum case for MusicFavoriteStatus.favorited(_:);
      v11 = type metadata accessor for MusicFavoriteStatus();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v2, v10, v11);
      (*(v12 + 56))(v2, 0, 1, v11);
      sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
      sub_100190B48(&qword_1011831D8, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
      sub_100190B48(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      result = sub_1000095E8(v2, &qword_1011831D0, &unk_100EC4CD0);
    }

LABEL_11:
    if (*(v4 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      if ((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        v15 = ~v13;
        while (!*(*(v4 + 48) + v14) || *(*(v4 + 48) + v14) == 1)
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
            goto LABEL_20;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            return result;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
        return MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }

  return result;
}

unint64_t sub_10018F3F4()
{
  v1 = *(_s9PlaylistsVMa(0) + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v2 = _s9PlaylistsV5ScopeVMa(0);
  v3 = sub_1000060E4(v2, qword_101218730);
  if (sub_1001982EC((v0 + v1), v3))
  {
    v4 = 6;
  }

  else
  {
    v4 = 8;
  }

  v5 = sub_100190B90(v4);
  if (v5 == 3)
  {
    v6 = sub_1001982EC((v0 + v1), v3);
    v7 = [objc_opt_self() standardUserDefaults];
    if (v6)
    {
      v5 = 3;
      Library.SortConfiguration.storageKey.getter(3u);
      v8 = String._bridgeToObjectiveC()();

      v9 = [v7 stringForKey:v8];

      if (!v9)
      {
        return v5;
      }
    }

    else
    {
      Library.SortConfiguration.storageKey.getter(5u);
      v10 = String._bridgeToObjectiveC()();

      v9 = [v7 stringForKey:v10];

      if (!v9)
      {
        return 3;
      }
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    v15 = _findStringSwitchCase(cases:string:)(&off_101098E28, v14);

    if (v15 >= 3)
    {
      return 3;
    }

    else
    {
      return v15;
    }
  }

  return v5;
}

void *sub_10018F5B8()
{
  if (*(v0 + 9))
  {
    return _swiftEmptyArrayStorage;
  }

  if (*(v0 + 8))
  {
    return &off_101098F58;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = &off_101098F58;
  if (v3 != 6)
  {
    type metadata accessor for MusicLibrary();

    static MusicLibrary.shared.getter();
    sub_100190B48(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v4)
    {
      return &off_101098F80;
    }

    else
    {
      return &off_101098F58;
    }
  }

  return result;
}

uint64_t sub_10018F6EC(uint64_t a1)
{
  v3 = _s9PlaylistsVMa(0);
  v4 = *(v1 + *(v3 + 40));
  result = sub_10018FCA0(v4, a1);
  if ((result & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v12[3] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    v12[4] = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    v12[5] = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    v12[0] = v4;
    v7 = *(v3 + 32);
    v8 = qword_10117F298;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = _s9PlaylistsV5ScopeVMa(0);
    v10 = sub_1000060E4(v9, qword_101218730);
    sub_1001982EC((v1 + v7), v10);

    v11._countAndFlagsBits = 0x704F7265746C6946;
    v11._object = 0xEC0000006E6F6974;
    String.append(_:)(v11);

    NSUserDefaults.encodeValue(_:forKey:)(v12);

    return sub_10000959C(v12);
  }

  return result;
}

void sub_10018F8E4(uint64_t a1)
{
  v2 = a1;
  v3 = _s9PlaylistsVMa(0);
  v4 = (v1 + *(v3 + 44));
  v5 = *v4;
  v6 = v4[1];
  if ((sub_1006B8B0C(*v4, v2) & 1) == 0 || ((((v2 & 0x100) == 0) ^ v6) & 1) == 0)
  {
    v7 = objc_opt_self();
    v8 = [v7 standardUserDefaults];
    v23[3] = &_s11ContentSortVN;
    v23[4] = sub_100110448();
    v23[5] = sub_10011049C();
    LOBYTE(v23[0]) = v5;
    BYTE1(v23[0]) = v6;
    v9 = *(v3 + 32);
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v10 = _s9PlaylistsV5ScopeVMa(0);
    v11 = sub_1000060E4(v10, qword_101218730);
    v12 = sub_1001982EC((v1 + v9), v11);
    v13 = "LibraryPlaylists";
    v14 = 0xD000000000000010;
    if (v12)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = "v32@0:8@16@24";
    }

    v21 = v14;
    v22 = v13 | 0x8000000000000000;

    v15._countAndFlagsBits = 0x53746E65746E6F43;
    v15._object = 0xEB0000000074726FLL;
    v16 = v1;
    String.append(_:)(v15);

    NSUserDefaults.encodeValue(_:forKey:)(v23);

    sub_10000959C(v23);
    v17 = [v7 standardUserDefaults];
    if (v6)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_10045E2D4(v18 | v5);
    v20 = sub_1001982EC((v16 + v9), v11);
    NSUserDefaults.setSortType(_:for:keyDomain:)(v19, v20 & 1 | 0xFFFFFF80, 0, 0);
  }
}

uint64_t sub_10018FAF8()
{
  v0 = _s9PlaylistsV5ScopeVMa(0);
  sub_100006080(v0, qword_101218730);
  v1 = sub_1000060E4(v0, qword_101218730);
  sub_10010FC20(&unk_101182940, &qword_100EBE250);
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 104))(v5 + v4, enum case for Playlist.Variant.personalMix(_:), v2);
  v6 = sub_10010DF7C(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = *(v0 + 20);
  v8 = type metadata accessor for Playlist.Folder();
  result = (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *v1 = v6;
  v1[*(v0 + 24)] = 0;
  return result;
}

uint64_t sub_10018FCA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v21 = 0xE300000000000000;
      v20 = 7105633;
      if (v15)
      {
        goto LABEL_23;
      }

LABEL_19:
      v22 = 0xE300000000000000;
      if (v20 == 7105633)
      {
        goto LABEL_27;
      }

LABEL_28:
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_32;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0x657469726F766166;
    }

    else
    {
      v20 = 0x64616F6C6E776F64;
    }

    v21 = 0xE900000000000073;
    if (!v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v15 == 1)
    {
      v23 = 0x657469726F766166;
    }

    else
    {
      v23 = 0x64616F6C6E776F64;
    }

    v22 = 0xE900000000000073;
    if (v20 != v23)
    {
      goto LABEL_28;
    }

LABEL_27:
    if (v21 != v22)
    {
      goto LABEL_28;
    }

LABEL_32:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10018FF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v31 - v8;
  v10 = __chkstk_darwin();
  v11 = &v31 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v12 = 0;
    v13 = *(a1 + 56);
    v31 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v38 = v5 + 32;
    v40 = a2 + 56;
    v41 = v5 + 16;
    v18 = (v5 + 8);
    v32 = v17;
    v33 = &v31 - v9;
    v34 = v5;
    v35 = a1;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_13:
        v22 = *(a1 + 48);
        v39 = *(v5 + 72);
        v23 = *(v5 + 16);
        v23(v11, v22 + v39 * (v19 | (v12 << 6)), v4, v10);
        (*(v5 + 32))(v42, v11, v4);
        sub_100190B48(&unk_101180200, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v25 = -1 << *(a2 + 32);
        v26 = v24 & ~v25;
        if (((*(v40 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          break;
        }

        v36 = v18 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27 = a2;
        v28 = ~v25;
        while (1)
        {
          (v23)(v7, *(v27 + 48) + v26 * v39, v4);
          sub_100190B48(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          v30 = *v18;
          (*v18)(v7, v4);
          if (v29)
          {
            break;
          }

          v26 = (v26 + 1) & v28;
          if (((*(v40 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            v30(v42, v4);
            return;
          }
        }

        v30(v42, v4);
        a2 = v27;
        v5 = v34;
        a1 = v35;
        v17 = v32;
        v11 = v33;
        v16 = v37;
        if (!v37)
        {
          goto LABEL_8;
        }
      }

      (*v18)(v42, v4);
    }

    else
    {
LABEL_8:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {
          return;
        }

        v21 = *(v31 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v37 = (v21 - 1) & v21;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

Swift::Int sub_100190304(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100190474(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(0);
    result = Hasher._finalize()();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100190588(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001906F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1001908B0(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v9 = &v11 - v8;
  sub_10010B284(a1, *v2);
  v10 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v2 + *(v10 + 20), v9, &unk_10118F670, &unk_100EC89B0);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v9, v4);
    Hasher._combine(_:)(1u);
    sub_100190B48(&qword_101183200, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  Hasher._combine(_:)(*(v2 + *(v10 + 24)));
}

uint64_t sub_100190B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100190B90(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_opt_self() standardUserDefaults];
  _StringGuts.grow(_:)(33);

  v3._countAndFlagsBits = sub_100482418(v1);
  String.append(_:)(v3);

  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 stringForKey:{v4, 0xD00000000000001FLL, 0x8000000100E3E650}];

  v6 = 3;
  if (v5)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    v11 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v10);

    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100190CC8(void *a1)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for MusicFavoriteStatus();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin();
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist.Variant();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v12 = &v59 - v11;
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Entry();
  MusicLibrarySectionedRequest.init()();

  v13 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v64 = v13;
  MusicLibrarySectionedRequest.filterSections<>(text:)();
  v68 = *(v1 + v5[8]);
  (*(v8 + 104))(v10, enum case for Playlist.Variant.folder(_:), v7);

  sub_100194B88(v10, v12);
  (*(v8 + 8))(v10, v7);
  sub_1000095E8(v12, &unk_10119EF50, &unk_100EDDF70);
  swift_getKeyPath();
  v14 = v68;
  v15 = *(v68 + 16);
  if (v15)
  {
    v16 = sub_1003ADCE4(*(v68 + 16), 0);
    sub_100198044(&v67, &v16[(*(v8 + 80) + 32) & ~*(v8 + 80)], v15, v14, &type metadata accessor for Playlist.Variant);
    v18 = v17;
    sub_10005C9F8(v67);
    if (v18 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  sub_100190B48(&qword_10118A3C0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  MusicLibrarySectionedRequest<>.filterSections<A>(matching:memberOf:)();

  v19 = *(v2 + v5[11]);
  v20 = v63;
  if (v19 > 4)
  {
    if (v19 != 5)
    {
      if (v19 != 6)
      {
        if (v19 == 7)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.sortSections<A>(by:ascending:)();
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortSections<A>(by:ascending:)();
    goto LABEL_16;
  }

  if (v19 == 1 || v19 == 4)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000060E4(v28, static Logger.libraryView);
  sub_100198D00(v2, v20, _s9PlaylistsVMa);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v67 = v32;
    *v31 = 136446210;
    v66 = *(v20 + v5[11]);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    sub_100198AA8(v20);
    v36 = sub_1000105AC(v33, v35, &v67);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Tried to apply unhandled sortOption=%{public}s to playlists playback request.", v31, 0xCu);
    sub_10000959C(v32);
  }

  else
  {

    sub_100198AA8(v20);
  }

LABEL_17:
  v21 = *(v2 + v5[10]);
  if (!*(v21 + 16))
  {
    return;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v22 = Hasher._finalize()();
  v23 = v21 + 56;
  v24 = -1 << *(v21 + 32);
  v25 = v22 & ~v24;
  if (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_39:
    if (!*(v21 + 16))
    {
      return;
    }

    goto LABEL_40;
  }

  v26 = ~v24;
  while (!*(*(v21 + 48) + v25) || *(*(v21 + 48) + v25) == 2)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_31;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_31:
  if (!v65[2] || (v37 = v65, Hasher.init(_seed:)(), String.hash(into:)(), v38 = Hasher._finalize()(), v39 = v37 + 7, v40 = -1 << *(v37 + 32), v41 = v38 & ~v40, ((*(v37 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41) & 1) == 0))
  {
LABEL_38:
    swift_getKeyPath();
    v45 = v60;
    v44 = v61;
    v46 = v62;
    (*(v61 + 104))(v60, enum case for MusicFavoriteStatus.favorited(_:), v62);
    sub_100190B48(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
    MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)();

    (*(v44 + 8))(v45, v46);
    goto LABEL_39;
  }

  v42 = ~v40;
  while (!*(v65[6] + v41) || *(v65[6] + v41) == 2)
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_39;
    }

    v41 = (v41 + 1) & v42;
    if (((*(v39 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (*(v21 + 16))
  {
LABEL_40:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v47 = Hasher._finalize()();
    v48 = -1 << *(v21 + 32);
    v49 = v47 & ~v48;
    if ((*(v23 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
    {
      v50 = ~v48;
      while (!*(*(v21 + 48) + v49) || *(*(v21 + 48) + v49) == 1)
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v51)
        {
          goto LABEL_48;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v23 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          return;
        }
      }

LABEL_48:
      if (v65[2] && (v52 = v65, Hasher.init(_seed:)(), String.hash(into:)(), v53 = Hasher._finalize()(), v54 = v52 + 7, v55 = -1 << *(v52 + 32), v56 = v53 & ~v55, ((*(v52 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v56) & 1) != 0))
      {
        v57 = ~v55;
        while (!*(v65[6] + v56) || *(v65[6] + v56) == 1)
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v58)
          {
            return;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v54 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
LABEL_56:
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }
}

uint64_t sub_10019179C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_1001917EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v34 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v30 - v4;
  v5 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin();
  v7 = &v30 - v6;
  v8 = type metadata accessor for Playlist();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin();
  v42 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v30 - v13;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v39 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v30 - v16;
  v18 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v20(v17, 1, 1, v18);
  v22 = *(v11 + 16);
  v36 = a1;
  v35 = v22;
  v22(v14, a1, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for Playlist.Folder.Item.playlist(_:))
  {
    v30 = v21;
    v31 = v20;
    v32 = v18;
    (*(v11 + 96))(v14, v10);
    v23 = v42;
    (*(v43 + 32))(v42, v14, v44);
    v24 = sub_10010E83C(&off_1010995C0);
    sub_100190CC8(v24);

    v25 = v41;
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    type metadata accessor for PlaylistSortingController(0);
    static PlaylistSortingController.apply(for:to:)(v23, v7);
    v49[3] = v25;
    v49[4] = sub_100198A44();
    v26 = sub_10001C8B8(v49);
    v27 = v40;
    (*(v40 + 16))(v26, v7, v25);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v28 = v39;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v27 + 8))(v7, v25);
    (*(v43 + 8))(v42, v44);
    sub_1000095E8(v17, &unk_10118CDB0, &unk_100EC0360);
    v31(v28, 0, 1, v32);
    sub_10003D17C(v28, v17, &unk_10118CDB0, &unk_100EC0360);
  }

  else
  {
    sub_1000095E8(v17, &unk_10118CDB0, &unk_100EC0360);
    v20(v17, 1, 1, v18);
    (*(v11 + 8))(v14, v10);
  }

  return sub_10003D17C(v17, v45, &unk_10118CDB0, &unk_100EC0360);
}

uint64_t sub_1001920C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v71 = a1;
  v74 = a3;
  v60[3] = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v60[2] = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = v60 - v5;
  v63 = type metadata accessor for Playlist();
  v62 = *(v63 - 8);
  __chkstk_darwin();
  v73 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v67 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = v60 - v8;
  __chkstk_darwin();
  v72 = v60 - v9;
  __chkstk_darwin();
  v70 = v60 - v10;
  __chkstk_darwin();
  v75 = v60 - v11;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v69 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v60 - v13;
  __chkstk_darwin();
  v78 = v60 - v14;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v16 = v60 - v15;
  v17 = type metadata accessor for Playlist.Folder();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v76 = *(v21 - 8);
  __chkstk_darwin();
  v60[1] = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v60 - v23;
  v25 = sub_10010E83C(&off_1010995E8);
  v66 = v3;
  sub_100190CC8(v25);

  sub_1000089F8(v71, v16, &unk_10118F670, &unk_100EC89B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000095E8(v16, &unk_10118F670, &unk_100EC89B0);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    swift_getKeyPath();
    sub_100190B48(&qword_1011831C0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)();

    (*(v18 + 8))(v20, v17);
  }

  v26 = v21;
  v27 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v71 = v28 + 56;
  v29(v78, 1, 1, v27);
  v30 = v75;
  sub_1000089F8(v77, v75, &qword_1011831B0, &qword_100ED2570);
  v31 = type metadata accessor for Playlist.Folder.Item();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v30, 1, v31);
  v35 = v72;
  v34 = v73;
  v36 = v70;
  if (v33 == 1)
  {
    v83 = v26;
    v84 = sub_100198A44();
    v37 = sub_10001C8B8(v82);
    v38 = v76;
    (*(v76 + 16))(v37, v24, v26);
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v39 = v69;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    v58 = v78;
    sub_1000095E8(v78, &unk_10118CDB0, &unk_100EC0360);
    v29(v39, 0, 1, v27);
    sub_10003D17C(v39, v58, &unk_10118CDB0, &unk_100EC0360);
  }

  else
  {
    sub_1000089F8(v30, v70, &qword_1011831B0, &qword_100ED2570);
    if ((*(v32 + 88))(v36, v31) == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v32 + 96))(v36, v31);
      v40 = v62;
      v41 = v63;
      (*(v62 + 32))(v34, v36, v63);
      v83 = v26;
      v84 = sub_100198A44();
      v42 = sub_10001C8B8(v82);
      v38 = v76;
      v43 = *(v76 + 16);
      v70 = v24;
      v72 = v43;
      (v43)(v42, v24, v26);
      *(&v80 + 1) = v41;
      v81 = &protocol witness table for Playlist;
      v44 = sub_10001C8B8(&v79);
      (*(v40 + 16))(v44, v34, v41);
      v45 = v61;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      (*(v40 + 8))(v34, v41);
      v58 = v78;
      sub_1000095E8(v78, &unk_10118CDB0, &unk_100EC0360);
      v29(v45, 0, 1, v27);
      sub_10003D17C(v45, v58, &unk_10118CDB0, &unk_100EC0360);
      v24 = v70;
    }

    else
    {
      (*(v32 + 8))(v36, v31);
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000060E4(v46, static Logger.libraryView);
      sub_1000089F8(v77, v35, &qword_1011831B0, &qword_100ED2570);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v82[0] = v50;
        *v49 = 136315138;
        v77 = v27;
        sub_1000089F8(v35, v64, &qword_1011831B0, &qword_100ED2570);
        v51 = v29;
        v52 = String.init<A>(describing:)();
        v53 = v24;
        v55 = v54;
        sub_1000095E8(v35, &qword_1011831B0, &qword_100ED2570);
        v56 = v52;
        v29 = v51;
        v57 = sub_1000105AC(v56, v55, v82);
        v24 = v53;

        *(v49 + 4) = v57;
        v27 = v77;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unsupported startItem=%s to play back for playlists", v49, 0xCu);
        sub_10000959C(v50);
        v30 = v75;
      }

      else
      {

        sub_1000095E8(v35, &qword_1011831B0, &qword_100ED2570);
      }

      v58 = v78;
      sub_1000095E8(v78, &unk_10118CDB0, &unk_100EC0360);
      v38 = v76;
      v29(v58, 1, 1, v27);
    }
  }

  sub_1000095E8(v30, &qword_1011831B0, &qword_100ED2570);
  sub_10003D17C(v58, v74, &unk_10118CDB0, &unk_100EC0360);
  return (*(v38 + 8))(v24, v26);
}

void sub_100192FD4(__int128 *a1)
{
  v3 = type metadata accessor for Playlist.Folder();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v8 = v14 - v7;
  v14[1] = *v1;
  type metadata accessor for MusicLibrary();
  sub_100190B48(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 8));
  Hasher._combine(_:)(*(v1 + 9));
  if (*(v1 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
  }

  v10 = _s9PlaylistsVMa(0);
  v11 = (v1 + v10[8]);
  sub_10010B284(a1, *v11);
  v12 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v11 + *(v12 + 20), v8, &unk_10118F670, &unk_100EC89B0);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v8, v3);
    Hasher._combine(_:)(1u);
    sub_100190B48(&qword_101183200, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  Hasher._combine(_:)(*(v11 + *(v12 + 24)));
  String.hash(into:)();
  sub_10010B100(a1, *(v1 + v10[10]));
  v13 = *(v1 + v10[11] + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v13);
}

uint64_t sub_100193400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TitledSection();
  type metadata accessor for Playlist.Folder.Item();
  sub_100190B48(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  MusicLibrarySectionedRequest.init()();
  sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(a2);
  sub_10018ECCC();
  sub_10018EFFC();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v2 + *(a1 + 36)));
  return MusicLibrarySectionedRequest.limit.setter();
}

Swift::Int sub_100193548(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1001935AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100193684(uint64_t a1)
{
  result = sub_100190B48(&qword_1011831A0, _s9PlaylistsVMa, &unk_100EBEA98);
  *(a1 + 8) = result;
  return result;
}

void sub_10019372C()
{
  v1 = v0;
  sub_10010FC20(&qword_10118D160, &qword_100EC8EA0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 96 * (v14 | (v8 << 6));
        sub_100198BF4(*(v2 + 48) + v17, v18);
        sub_100198C50(v18, *(v4 + 48) + v17);
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
}

void sub_1001938AC()
{
  v1 = v0;
  sub_10010FC20(&qword_101183258, &qword_100EBED90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1001939EC()
{
  v1 = v0;
  sub_10010FC20(&qword_101180270, &qword_100EBA5A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_100193B5C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183250, &qword_100EBED88);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v2 + 72) * (v17 | (v11 << 6));
        sub_100198D00(*(v5 + 48) + v20, v4, type metadata accessor for Lyrics.TextLine);
        sub_100198D68(v4, *(v7 + 48) + v20, type metadata accessor for Lyrics.TextLine);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v7;
  }
}

void sub_100193DA4()
{
  v1 = v0;
  sub_10010FC20(&qword_101183208, &unk_100EC8F10);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100193EE4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011831F0, &qword_100EC8BB0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_100194068(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26 - v9;
  sub_10010FC20(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1001942A0()
{
  v1 = v0;
  sub_10010FC20(&qword_101180260, &qword_100EBA598);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }
}

void sub_1001943D4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100194504()
{
  v1 = v0;
  v2 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D410, &unk_100EC9170);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v2 + 72) * (v17 | (v11 << 6));
        sub_100198D00(*(v5 + 48) + v20, v4, _s23QueueSnapshotIdentifierOMa);
        sub_100198D68(v4, *(v7 + 48) + v20, _s23QueueSnapshotIdentifierOMa);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v7;
  }
}

void sub_100194724()
{
  v1 = v0;
  sub_10010FC20(&qword_101180550, &qword_100EBA798);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = *v18;
        v21 = v18[1];
        *v19 = *v18;
        v19[1] = v21;
        sub_100198BAC(v20, *(&v20 + 1), v21, *(&v21 + 1));
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
}

void sub_1001948B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100194A48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_100194B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Playlist.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100190B48(&unk_101180200, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100190B48(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100194068(&type metadata accessor for Playlist.Variant, &qword_1011801F8, &unk_100EBA540);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100196564(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100194E54(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 3;
  }

  v19 = v1;
  v8 = ~v6;
  while (!*(*(v4 + 48) + v7))
  {
    v10 = 0xE300000000000000;
    v9 = 7105633;
    v11 = a1;
    if (a1)
    {
      goto LABEL_11;
    }

LABEL_7:
    v12 = 0xE300000000000000;
    if (v9 == 7105633)
    {
      goto LABEL_15;
    }

LABEL_16:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_20;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 3;
    }
  }

  if (*(*(v4 + 48) + v7) == 1)
  {
    v9 = 0x657469726F766166;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  v10 = 0xE900000000000073;
  v11 = a1;
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v11 == 1)
  {
    v13 = 0x657469726F766166;
  }

  else
  {
    v13 = 0x64616F6C6E776F64;
  }

  v12 = 0xE900000000000073;
  if (v9 != v13)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (v10 != v12)
  {
    goto LABEL_16;
  }

LABEL_20:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001943D4(&qword_1011801F0, &qword_100EBA538);
    v17 = v20;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_10019686C(v7);
  *v19 = v20;
  return v15;
}

uint64_t sub_100195094(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1001963CC(v4, v5, sub_10066EE70, &qword_10118D430, NSString_ptr);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100009F78(0, &qword_10118D430, NSString_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100194A48(&qword_101183260, &qword_100EC9190);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10019745C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

void sub_100195260(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = *a1;
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_54:
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return;
  }

  v9 = ~v7;
  while (1)
  {
    sub_100198BF4(*(v4 + 48) + 96 * v8, v26);
    if (v26[0] > 3u)
    {
      if (v26[0] > 5u)
      {
        if (v26[0] == 6)
        {
          v13 = 0xD00000000000003BLL;
          v14 = "ansliterationSing";
          if (v5 <= 3)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v13 = 0xD000000000000027;
          v14 = "anslationAndTransliteration";
          if (v5 <= 3)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        if (v26[0] == 4)
        {
          v13 = 0xD00000000000002DLL;
        }

        else
        {
          v13 = 0xD000000000000031;
        }

        v14 = "Tooltip.LyricsTranslation";
        if (v26[0] != 4)
        {
          v14 = "Tooltip.LyricsTransliteration";
        }

        if (v5 <= 3)
        {
LABEL_43:
          if (v5 > 1)
          {
            v20 = "com.apple.Music.Tooltip.Sing";
            if (v5 != 2)
            {
              v20 = "Tooltip.SharePlayTogether";
            }

            v19 = 0xD000000000000029;
          }

          else if (v5)
          {
            v19 = 0xD00000000000001CLL;
            v20 = "Tooltip.FavoritingNowPlaying";
          }

          else
          {
            v19 = 0xD00000000000002CLL;
            v20 = "llPlaylists";
          }

          goto LABEL_50;
        }
      }
    }

    else
    {
      v10 = 0xD00000000000002CLL;
      v11 = "com.apple.Music.Tooltip.Sing";
      if (v26[0] != 2)
      {
        v11 = "Tooltip.SharePlayTogether";
      }

      if (v26[0])
      {
        v10 = 0xD00000000000001CLL;
      }

      v12 = "llPlaylists";
      if (v26[0])
      {
        v12 = "Tooltip.FavoritingNowPlaying";
      }

      if (v26[0] <= 1u)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xD000000000000029;
      }

      if (v26[0] <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      if (v5 <= 3)
      {
        goto LABEL_43;
      }
    }

    v15 = 0xD00000000000003BLL;
    if (v5 != 6)
    {
      v15 = 0xD000000000000027;
    }

    v16 = "ansliterationSing";
    if (v5 != 6)
    {
      v16 = "anslationAndTransliteration";
    }

    v17 = 0xD00000000000002DLL;
    if (v5 != 4)
    {
      v17 = 0xD000000000000031;
    }

    v18 = "Tooltip.LyricsTranslation";
    if (v5 != 4)
    {
      v18 = "Tooltip.LyricsTransliteration";
    }

    v19 = v5 <= 5 ? v17 : v15;
    v20 = v5 <= 5 ? v18 : v16;
LABEL_50:
    if (v13 == v19 && (v14 | 0x8000000000000000) == (v20 | 0x8000000000000000))
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100198CAC(v26);
    if (v21)
    {
      goto LABEL_56;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  sub_100198CAC(v26);
LABEL_56:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v24;
  *v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019372C();
    v23 = *v26;
  }

  sub_100198C50(*(v23 + 48) + 96 * v8, a2);
  sub_100196A74(v8);
  *v24 = *v26;
}

uint64_t sub_1001955F0(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1001961F0(v4, a1);

      return v6;
    }

    return 0;
  }

  type metadata accessor for AnyCancellable();
  sub_100190B48(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_100190B48(&qword_101180450, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001948B8(&unk_101180440, &unk_100EC9180);
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_100196D80(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_100195800(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 4;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 4;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001943D4(&unk_10118D110, &qword_100EBA710);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_100196F6C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_100195918(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100193DA4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_100197114(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_100195A08(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
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
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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
    sub_100193EE4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100197298(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100195B58(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1001963CC(v4, v5, sub_10066F294, &qword_1011839F0, UIScene_ptr);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100194A48(&qword_101183248, &qword_100EBED80);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10019745C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100195D24(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1001963CC(v4, v5, sub_10066F688, &qword_101183D40, UIViewController_ptr);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100194A48(&unk_101180280, &unk_100EC8BC0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10019745C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100195F04(char a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 2;
  }

  v11 = ~v9;
  while (*(*(v7 + 48) + v10) != (a1 & 1))
  {
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v16 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001943D4(a2, a3);
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + v10);
  sub_100196F6C(v10);
  result = v15;
  *v3 = v16;
  return result;
}

uint64_t sub_100196024(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1001963CC(v4, v5, sub_10066F878, &qword_101181F70, UITab_ptr);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100194A48(&unk_101180380, &unk_100EBA660);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10019745C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1001961F0(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10066F060(v4, v3);
  v12 = v5;
  type metadata accessor for AnyCancellable();
  sub_100190B48(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100190B48(&qword_101180450, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_100196D80(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001963CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = NSObject._rawHashValue(seed:)(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    sub_100009F78(0, a4, a5);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  sub_10019745C(v16);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100196564(int64_t a1)
{
  v3 = type metadata accessor for Playlist.Variant();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100190B48(&unk_101180200, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_10019686C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_100196A74(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        sub_100198BF4(*(v3 + 48) + 96 * v6, v15);
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()();
        sub_100198CAC(v15);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          break;
        }

        if (v11 < v9)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 96 * v2 >= *(v3 + 48) + 96 * v6 + 96)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {

          goto LABEL_19;
        }
      }

      if (v11 < v9)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v11)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_19:
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v12 = *(v3 + 16);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v14;
    ++*(v3 + 36);
  }
}

void sub_100196D80(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for AnyCancellable();
      sub_100190B48(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_100196F6C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_100197114(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_100197298(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 16 * v2);
          v13 = (v11 + 16 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_10019745C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void *sub_100197614(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10019776C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 56) + 16 * v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v14);
      *(a2 + 8) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100197870(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ImpressionTracker();
    sub_100190B48(&qword_1011831E8, type metadata accessor for ImpressionTracker, &unk_100ECEA04);
    Set.Iterator.init(_cocoa:)();
    v4 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  if (!a3)
  {
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v21 = v9;
  v22 = a1;
  v12 = (v9 + 64) >> 6;
  a1 = 1;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    type metadata accessor for ImpressionTracker();
    swift_dynamicCast();
    v15 = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = v15;
    if (a1 == a3)
    {
      goto LABEL_29;
    }

    ++a2;
    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v13 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v10 = v14;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v12;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  a1 = v22;
LABEL_30:
  *a1 = v4;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
}

void sub_100197A9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
  v38 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v35 - v9;
  v10 = a4 + 64;
  v11 = -1 << *(a4 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a4 + 64);
  v42 = a2;
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v10;
    a1[2] = ~v11;
    a1[3] = v20;
    a1[4] = v13;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = v11;
    v36 = a1;
    v14 = 0;
    v15 = (63 - v11) >> 6;
    v16 = 1;
    v37 = a3;
    while (v13)
    {
LABEL_14:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v14;
      v21 = v19 | (v14 << 6);
      v22 = *(a4 + 56);
      v23 = a4;
      v24 = (*(a4 + 48) + 16 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v22 + *(*(type metadata accessor for Cache.Entry(0) - 8) + 72) * v21;
      v28 = v40;
      sub_100198D00(v27, &v40[*(v41 + 48)], type metadata accessor for Cache.Entry);
      *v28 = v25;
      v28[1] = v26;
      v29 = v28;
      v30 = v39;
      sub_10003D17C(v29, v39, &unk_10118D180, &qword_100EC8EC0);
      v31 = v30;
      v32 = v42;
      sub_10003D17C(v31, v42, &unk_10118D180, &qword_100EC8EC0);
      if (v16 == v37)
      {

        a1 = v36;
        a4 = v23;
        goto LABEL_23;
      }

      a1 = (v32 + *(v38 + 72));
      v42 = a1;

      v33 = __OFADD__(v16++, 1);
      a4 = v23;
      v14 = v20;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v17 = v14;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v15)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v14 = v18;
        goto LABEL_14;
      }
    }

    v13 = 0;
    if (v15 <= v14 + 1)
    {
      v34 = v14 + 1;
    }

    else
    {
      v34 = v15;
    }

    v20 = v34 - 1;
    a1 = v36;
LABEL_23:
    v11 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_100197D6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100198BF4(*(a4 + 48) + 96 * (v17 | (v12 << 6)), v20);
      sub_100198C50(v20, v21);
      sub_100198C50(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 96;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_100197ED8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100198044(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v40 = a5(0);
  v42 = *(v40 - 8);
  __chkstk_darwin();
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1001982EC(uint64_t *a1, uint64_t *a2)
{
  v46 = type metadata accessor for Playlist.Folder();
  v4 = *(v46 - 8);
  __chkstk_darwin();
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v37 - v6;
  __chkstk_darwin();
  v39 = &v37 - v7;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v37 - v9;
  v11 = sub_10010FC20(&qword_1011831A8, &unk_100ED2590);
  __chkstk_darwin();
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v37 - v13;
  sub_10018FF54(*a1, *a2);
  if (v15)
  {
    v16 = _s9PlaylistsV5ScopeVMa(0);
    v45 = *(a1 + *(v16 + 24)) ^ *(a2 + *(v16 + 24)) ^ 1;
  }

  else
  {
    v45 = 0;
  }

  v17 = *(_s9PlaylistsV5ScopeVMa(0) + 20);
  v18 = *(v11 + 48);
  v41 = a1;
  sub_1000089F8(a1 + v17, v14, &unk_10118F670, &unk_100EC89B0);
  v42 = a2;
  sub_1000089F8(a2 + v17, &v14[v18], &unk_10118F670, &unk_100EC89B0);
  v44 = v4;
  v19 = *(v4 + 48);
  v20 = v46;
  if (v19(v14, 1, v46) == 1)
  {
LABEL_7:
    if (v45)
    {
      v21 = *(v11 + 48);
      v22 = v43;
      sub_1000089F8(v41 + v17, v43, &unk_10118F670, &unk_100EC89B0);
      v23 = v46;
      sub_1000089F8(v42 + v17, v22 + v21, &unk_10118F670, &unk_100EC89B0);
      if (v19(v22, 1, v23) == 1)
      {
        if (v19(v22 + v21, 1, v23) == 1)
        {
          sub_1000095E8(v22, &unk_10118F670, &unk_100EC89B0);
          v24 = 1;
LABEL_20:
          v31 = &qword_1011831A8;
          v32 = &unk_100ED2590;
          goto LABEL_21;
        }
      }

      else
      {
        v29 = v38;
        sub_1000089F8(v22, v38, &unk_10118F670, &unk_100EC89B0);
        if (v19(v22 + v21, 1, v23) != 1)
        {
          v33 = v44;
          v34 = v37;
          (*(v44 + 32))(v37, v22 + v21, v23);
          sub_100190B48(&unk_1011828D0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
          v24 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *(v33 + 8);
          v35(v34, v23);
          v35(v29, v23);
          sub_1000095E8(v22, &unk_10118F670, &unk_100EC89B0);
          goto LABEL_20;
        }

        (*(v44 + 8))(v29, v23);
      }

      sub_1000095E8(v22, &qword_1011831A8, &unk_100ED2590);
      v24 = 0;
      goto LABEL_20;
    }

    v24 = 0;
    goto LABEL_20;
  }

  sub_1000089F8(v14, v10, &unk_10118F670, &unk_100EC89B0);
  if (v19(&v14[v18], 1, v20) == 1)
  {
    (*(v44 + 8))(v10, v20);
    goto LABEL_7;
  }

  v25 = v44;
  v26 = *(v44 + 32);
  v27 = v39;
  v26(v39, v10, v20);
  v28 = v40;
  v26(v40, &v14[v18], v20);
  if (v45)
  {
    sub_100190B48(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    sub_100190B48(&unk_1011828D0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v24 = static MusicItem<>.==~ infix(_:_:)();
  }

  else
  {
    v24 = 0;
  }

  v30 = *(v25 + 8);
  v30(v28, v20);
  v30(v27, v20);
  v31 = &unk_10118F670;
  v32 = &unk_100EC89B0;
LABEL_21:
  sub_1000095E8(v14, v31, v32);
  return v24 & 1;
}

uint64_t sub_10019891C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) != 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9))
  {
    v4 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return v4 & 1;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v4 = 1;
      }

      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = _s9PlaylistsVMa(0);
    if (sub_1001982EC((a1 + v6[8]), (a2 + v6[8])))
    {
      v7 = v6[9];
      v8 = *(a1 + v7);
      v9 = *(a1 + v7 + 8);
      v10 = (a2 + v7);
      v11 = v8 == *v10 && v9 == v10[1];
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10018FCA0(*(a1 + v6[10]), *(a2 + v6[10])))
      {
        v12 = v6[11];
        v13 = (a1 + v12);
        v14 = *(a1 + v12 + 1);
        v15 = (a2 + v12);
        v16 = v15[1];
        v4 = sub_1006B8B0C(*v13, *v15) & (v14 ^ v16 ^ 1);
        return v4 & 1;
      }
    }
  }

LABEL_4:
  v4 = 0;
  return v4 & 1;
}

unint64_t sub_100198A44()
{
  result = qword_1011831B8;
  if (!qword_1011831B8)
  {
    sub_1001109D0(&qword_10118A3B0, &qword_100EE4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011831B8);
  }

  return result;
}

uint64_t sub_100198AA8(uint64_t a1)
{
  v2 = _s9PlaylistsVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100198B04@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_100198B5C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

void sub_100198BAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }
}

uint64_t sub_100198D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100198D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100198E18(uint64_t a1)
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_100198E90(void *a1)
{
  v2 = v1;
  v256 = type metadata accessor for IndexPath();
  v255 = *(v256 - 8);
  __chkstk_darwin();
  v257 = v253 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253[1] = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v253[2] = v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
  v7 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (!v7)
  {
    v258 = sub_1001A8B04();
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [v7 tracklist];
  v9 = [v8 playingItem];

  v258 = sub_1001A8B04();
  if (!v9)
  {
LABEL_6:
    v12 = 9;
    LODWORD(v264) = 1;
    goto LABEL_7;
  }

  v10 = [v9 nowPlayingAudioFormat];
  if (v10)
  {
    v11 = v10;
    v12 = sub_10019B33C();

    LODWORD(v264) = 0;
  }

  else
  {
    LODWORD(v264) = 0;
    v12 = 9;
  }

LABEL_7:
  v13 = *&v2[v6];
  if (v13 && (v14 = [v13 tracklist], v15 = objc_msgSend(v14, "vocalsControlCommand"), v14, v15))
  {
    LODWORD(v259) = [v15 isActive];
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v259) = 0;
  }

  LODWORD(v260) = v12;
  if (v264)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = [v9 contentItemIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v19;
  }

  v261 = v6;
  if (a1)
  {
    v20 = [a1 tracklist];
    v21 = [v20 playingItem];

    if (v21)
    {
      v22 = [v21 contentItemIdentifier];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v24;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    v21 = 0;
  }

  v263 = v7;
  v262 = a1;
  if (v17)
  {
    if (v21)
    {
      if (v16 == v23 && v17 == v21)
      {

LABEL_26:
        v25 = 1;
        v26 = &selRef_objectAtIndexedSubscript_;
        goto LABEL_38;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_26;
    }

    v25 = 0;
  }

  if ((v264 | v25))
  {
    v26 = &selRef_objectAtIndexedSubscript_;
  }

  else
  {
    v27 = qword_10117F938;
    v28 = v9;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000060E4(v29, qword_1012190C8);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v254 = v9;
      v35 = v34;
      *&aBlock = v34;
      *v33 = 136446210;
      v36 = [v30 contentItemIdentifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = v37;
      a1 = v262;
      v41 = sub_1000105AC(v40, v39, &aBlock);

      *(v33 + 4) = v41;
      v7 = v263;
      _os_log_impl(&_mh_execute_header, v31, v32, "Switched to playing item=%{public}s", v33, 0xCu);
      sub_10000959C(v35);
      v9 = v254;
    }

    v26 = &selRef_objectAtIndexedSubscript_;
    v42 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction];
    if (v42)
    {
      v43 = v42;
      dispatch thunk of ReactionEffectInteraction.clearReactions()();
    }

    sub_1001A6F20();
  }

LABEL_38:
  sub_1001C30CC();
  sub_1001C36E8();
  sub_1001C3DB8();
  v44 = sub_1001AA510();
  if (v7 && (v45 = [v7 tracklist], v46 = objc_msgSend(v45, v26[44]), v45, v46))
  {

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = v260;
  v49 = &selRef_objectAtIndexedSubscript_;
  [v44 setHidden:v47];

  v50 = OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation;
  swift_beginAccess();
  sub_10019B380(v7, a1);
  swift_endAccess();
  if ((v264 & 1) == 0)
  {
    [v9 duration];
    if ((v25 | BYTE2(v276)))
    {
      if (v259)
      {
        goto LABEL_54;
      }

      if ((v25 ^ 1 | BYTE2(v276)))
      {
        sub_1001A8CA0(9);
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_retain_n();
        sub_1001C527C();
        v52 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
        if (!v52)
        {
          goto LABEL_230;
        }

        [v52 alpha];
        if (v53 == 0.0)
        {
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          v55 = v261;
          if (Strong)
          {
            v56 = Strong;
            sub_1001C5A2C();
          }

          else
          {
          }

          LOBYTE(v79) = 0;
          v7 = v263;
          goto LABEL_97;
        }

        sub_100009F78(0, &qword_101181620, UIView_ptr);
        if (qword_10117F2D8 != -1)
        {
          swift_once();
        }

        v246 = qword_1011832A8;
        v247 = swift_allocObject();
        *(v247 + 16) = v2;
        v248 = v2;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v246, 0, sub_1001D3198, v247, 0, 0, 0.0);

        if (qword_10117F2E8 != -1)
        {
          swift_once();
        }

        v249 = qword_1011832E0;
        v250 = swift_allocObject();
        *(v250 + 16) = v248;
        v251 = swift_allocObject();
        *(v251 + 16) = sub_1001D278C;
        *(v251 + 24) = v51;
        v252 = v248;

        static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v249, 0, sub_1001D3164, v250, sub_1001D3238, v251, 0.25, 0.0);

        goto LABEL_86;
      }

      goto LABEL_62;
    }

LABEL_53:
    sub_1001AF484(0.0);
    if (v259)
    {
      goto LABEL_54;
    }

LABEL_62:
    v71 = v264;
    if (v48 != 9)
    {
      v71 = 1;
    }

    if (v258 == 9)
    {
      goto LABEL_73;
    }

    if (v71)
    {
      goto LABEL_73;
    }

    v72 = [v9 metadataObject];
    if (!v72)
    {
      goto LABEL_73;
    }

    v73 = v72;
    v74 = [v72 innermostModelObject];

    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (v75 = sub_10065B254(), v76 = sub_100503C9C(v258, v75), , (v76 & 1) == 0))
    {

LABEL_73:
      v80 = swift_allocObject();
      *(v80 + 16) = v2;
      *(v80 + 24) = v48;
      v50 = v2;
      sub_1001AF484(10.0);
      v81 = OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView;
      v82 = *(v50 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView);
      if (v82)
      {
        v83 = v82;

        if (*(v83 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle) == 1)
        {
          v254 = v9;

          v84 = *(v50 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
          if (!v84)
          {
            goto LABEL_228;
          }

          v85 = *(v84 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
          v86 = *((swift_isaMask & *v85) + 0x2F8);
          v87 = v85;
          v86();

          v88 = swift_allocObject();
          v88[2] = v50;
          v88[3] = sub_1001D267C;
          v88[4] = v80;
          v89 = v50;

          [v83 alpha];
          if (v90 == 0.0)
          {
            v91 = *(v50 + v81);
            *(v50 + v81) = 0;
            if (v91)
            {
              v92 = [v91 layer];
              [v92 removeAllAnimations];

              v93 = sub_10062781C();
              v94 = [v93 layer];

              [v94 removeAllAnimations];
              [v91 removeFromSuperview];
            }

            *&v89[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints] = _swiftEmptyArrayStorage;

            *&v89[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints] = _swiftEmptyArrayStorage;

            sub_1001A8CA0(v260);
            if (sub_1001A8B04() == 9 || (sub_1001A8B04() - 3) >= 7u)
            {

LABEL_95:

              LOBYTE(v79) = 0;
              v9 = v254;
              v7 = v263;
              a1 = v262;
              goto LABEL_96;
            }

            sub_1001C4B54([v89 updatePlayingItemAudioTraitButton]);
          }

          else
          {
            sub_100009F78(0, &qword_101181620, UIView_ptr);
            if (qword_10117F980 != -1)
            {
              swift_once();
            }

            v99 = qword_101219130;
            v100 = swift_allocObject();
            *(v100 + 16) = v83;
            v101 = swift_allocObject();
            *(v101 + 16) = sub_1001D2778;
            *(v101 + 24) = v88;
            v102 = v83;

            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v99, 0, sub_1001D3178, v100, sub_100029B6C, v101, 0.65, 0.0);
          }

          goto LABEL_95;
        }
      }

      else
      {
        sub_1001A8CA0(v48);
      }

      goto LABEL_85;
    }

    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v275 = sub_1001D2784;
    *(&v275 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v273 = sub_10002BC98;
    v274 = COERCE_DOUBLE(&unk_10109FBC8);
    *&v264 = _Block_copy(&aBlock);
    v266 = _swiftEmptyArrayStorage;
    sub_1001CF0F0(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    v7 = v263;
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    a1 = v262;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v78 = DispatchWorkItem.init(flags:block:)();

    sub_1001BFC28(v78);

    LOBYTE(v79) = 1;
LABEL_96:
    v55 = v261;
    goto LABEL_97;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((v259 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_54:
  sub_1001A8CA0(9);
  sub_1001AF484(10.0);
  v57 = OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView;
  v58 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView];
  if (!v58)
  {
    LOBYTE(v79) = 0;
    goto LABEL_96;
  }

  v55 = v261;
  if (*(v58 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle) == 1)
  {
    v59 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
    if (!v59)
    {
      goto LABEL_227;
    }

    v60 = *(v59 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
    v61 = *((swift_isaMask & *v60) + 0x2F8);
    v62 = v58;
    v63 = v60;
    v61();

    v64 = swift_allocObject();
    v64[3] = 0;
    v64[4] = 0;
    v64[2] = v2;
    v65 = v2;
    [v62 alpha];
    if (v66 == 0.0)
    {
      v67 = *&v2[v57];
      *&v2[v57] = 0;
      if (v67)
      {
        v68 = [v67 layer];
        [v68 removeAllAnimations];

        v69 = sub_10062781C();
        v70 = [v69 layer];

        a1 = v262;
        [v70 removeAllAnimations];

        [v67 removeFromSuperview];
      }

      *&v65[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints] = _swiftEmptyArrayStorage;

      *&v65[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints] = _swiftEmptyArrayStorage;

      goto LABEL_86;
    }

    sub_100009F78(0, &qword_101181620, UIView_ptr);
    if (qword_10117F980 != -1)
    {
      swift_once();
    }

    v95 = qword_101219130;
    v96 = swift_allocObject();
    *(v96 + 16) = v62;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_1001D3264;
    *(v97 + 24) = v64;
    v98 = v62;

    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v95, 0, sub_1001D3178, v96, sub_1001D3174, v97, 0.65, 0.0);

LABEL_85:

LABEL_86:
    LOBYTE(v79) = 0;
    v7 = v263;
    goto LABEL_96;
  }

  LOBYTE(v79) = 0;
LABEL_97:
  LOBYTE(aBlock) = 0;
  v103 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v103) & 1) == 0)
  {
    goto LABEL_103;
  }

  if (v7)
  {
    v104 = [v7 isSharedListeningSession] ^ 1;
  }

  else
  {
    LOBYTE(v104) = 1;
  }

  if (qword_10117F600 != -1)
  {
    goto LABEL_219;
  }

  while (1)
  {
    v105 = GroupActivitiesManager.hasJoined.getter();
    v106 = sub_1001BEF94();
    [v106 v49[261]];

LABEL_103:
    sub_1001C2200();
    v107 = *&v2[v55];
    if (v107)
    {
      v108 = &selRef_trackNumber;
      v109 = [v107 tracklist];
      v110 = [v109 vocalsControlCommand];

      if (!a1)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v110 = 0;
      v108 = &selRef_trackNumber;
      if (!a1)
      {
        goto LABEL_110;
      }
    }

    v111 = [a1 tracklist];
    v112 = [v111 vocalsControlCommand];

    if (v112)
    {
      v113 = [v112 isActive];
      swift_unknownObjectRelease();
      if (!v110)
      {
        goto LABEL_109;
      }

      goto LABEL_111;
    }

LABEL_110:
    v113 = 2;
    if (!v110)
    {
LABEL_109:
      v114 = 2;
      goto LABEL_112;
    }

LABEL_111:
    v114 = [v110 isActive];
LABEL_112:
    v260 = v110;
    if (v113 != 2 && (v113 & 1) != 0)
    {
      goto LABEL_122;
    }

    if (v114 != 2 && (v114 & 1) != 0)
    {
      v115 = swift_allocObject();
      *(v115 + 16) = v2;
      v50 = v2;
      sub_1001C527C();
      v116 = *(v50 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
      if (!v116)
      {
        goto LABEL_226;
      }

      [v116 alpha];
      if (v117 == 0.0)
      {
        [v50 updatePlayingItemAudioTraitButton];
        sub_1001C54B8();
      }

      else
      {
        sub_100009F78(0, &qword_101181620, UIView_ptr);
        if (qword_10117F2D8 != -1)
        {
          swift_once();
        }

        v162 = qword_1011832A8;
        v163 = swift_allocObject();
        *(v163 + 16) = v50;
        v164 = v50;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v162, 0, sub_1001D3198, v163, 0, 0, 0.0);

        if (qword_10117F2E8 != -1)
        {
          swift_once();
        }

        v165 = qword_1011832E0;
        v166 = swift_allocObject();
        *(v166 + 16) = v164;
        v167 = swift_allocObject();
        *(v167 + 16) = sub_1001D2744;
        *(v167 + 24) = v115;
        v50 = v164;

        static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v165, 0, sub_1001D3164, v166, sub_1001D3238, v167, 0.25, 0.0);
      }

LABEL_153:

      v7 = v263;
      v118 = 0uLL;
      if (!v263)
      {
        goto LABEL_154;
      }

      goto LABEL_126;
    }

    if (v113 != 2 && (v113 & 1) != 0)
    {
LABEL_122:
      if (v114 == 2 || (v114 & 1) == 0)
      {
        v132 = swift_allocObject();
        *(v132 + 16) = v2;
        v133 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView];
        if (v133)
        {
          sub_100009F78(0, &qword_101181620, UIView_ptr);
          v134 = qword_10117F2D8;
          v135 = v2;
          v136 = v133;
          if (v134 != -1)
          {
            swift_once();
          }

          v137 = qword_1011832A8;
          v138 = swift_allocObject();
          *(v138 + 16) = v136;
          v139 = v136;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v137, 0, sub_1001D271C, v138, 0, 0, 0.0);

          if (qword_10117F2E8 != -1)
          {
            swift_once();
          }

          v140 = qword_1011832E0;
          v141 = swift_allocObject();
          *(v141 + 16) = v139;
          v142 = swift_allocObject();
          v142[2] = v139;
          v142[3] = v135;
          v142[4] = sub_1001D26E8;
          v142[5] = v132;
          v143 = v139;
          v144 = v135;
          v145 = v143;

          static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v140, 0, sub_1001D2724, v141, sub_1001D2738, v142, 0.25, 0.0);
        }

        else
        {
          v157 = v2;
          sub_1001C4B54([v157 updatePlayingItemAudioTraitButton]);
        }

        goto LABEL_153;
      }
    }

    if ((v79 & 1) == 0)
    {
      sub_1001C4474(v258);
    }

    v118 = 0uLL;
    if (!v7)
    {
LABEL_154:
      v50 = 0;
      v146 = 0;
      v147 = 0.0;
      LODWORD(v261) = 0;
      v148 = 0uLL;
      v149 = 2;
      goto LABEL_155;
    }

LABEL_126:
    v119 = [v7 tracklist];
    v120 = [v119 playingItem];

    if (v120)
    {
      [v120 duration];
      v121 = *&aBlock;
      v122 = v274;
      v123 = *&v275;
      v124 = *(&v275 + 2);
      static Date.timeIntervalSinceReferenceDate.getter();
      v126 = v123 + (v125 - v121) * v124;
      if (v126 >= v122)
      {
        v126 = v122;
      }

      v127 = fmax(v126, 0.0);
      [v120 duration];
      v128 = v274;
      if (v274 <= v127)
      {
        v131 = 1;
      }

      else
      {
        v129 = [v263 tracklist];
        v130 = [v129 lastChangeDirection];

        v131 = v130 == 5;
      }

      LODWORD(v261) = v131;
      [v120 duration];
      v264 = aBlock;
      v146 = v273;
      v150 = v274;
      v259 = v275;
      v149 = v276;
      v50 = MPCPlayerResponseItem.isLiveContent.getter();
      if (v150 <= 0.0 || (v151 = COERCE_DOUBLE(sub_100344EF4()), (v152 & 1) != 0))
      {
        v153 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
        if (!v153)
        {
          goto LABEL_223;
        }

        v154 = *(v153 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
        v155 = *((swift_isaMask & *v154) + 0x288);
        v156 = v154;
        v155(0, 1);
      }

      else
      {
        v158 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
        if (!v158)
        {
          goto LABEL_229;
        }

        v159 = *(v158 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
        v160 = v151 / v150;
        v161 = *((swift_isaMask & *v159) + 0x288);
        v156 = v159;
        v161(*&v160, 0);
        v108 = &selRef_trackNumber;
      }

      v147 = v150;
      v50 = v50 ^ 1;

      v7 = v263;
      v118 = v264;
      v148 = v259;
    }

    else
    {
      v50 = 0;
      v146 = 0;
      v147 = 0.0;
      LODWORD(v261) = 0;
      v148 = 0uLL;
      v149 = 2;
      v7 = v263;
      v118 = 0uLL;
    }

LABEL_155:
    aBlock = v118;
    v273 = v146;
    v274 = v147;
    v275 = v148;
    v276 = v149;
    v168 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
    v169 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
    if (!v169)
    {
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    [v169 setEnabled:v50 & 1];
    v170 = *&v2[v168];
    if (!v170)
    {
      goto LABEL_221;
    }

    v171 = v170;
    sub_10030FEA8(&aBlock);

    if (v7)
    {
      v172 = [v7 v108[2]];
      if (v172)
      {
        v50 = v172;
        v173 = [v172 playingItemIndexPath];
        if (v173)
        {
          v174 = v257;
          v175 = v173;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v176 = [v2 view];
          if (!v176)
          {
            goto LABEL_225;
          }

          v177 = v176;
          v178 = [v176 window];

          v179 = [v178 windowScene];
          v180 = sub_1003CA2B4(v174, v179);
          v182 = v181;
          v184 = v183;

          v185 = &v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle];
          v186 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle];
          v146 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle + 8];
          *v185 = v180;
          *(v185 + 1) = v182;
          v187 = v185[16];
          v185[16] = v184;
          sub_1001D26C0(v180, v182, v184);
          sub_1001D2688(v186, v146, v187);
          sub_1001BEC34();

          v188 = sub_1001D2688(v180, v182, v184);
          (*(v255 + 8))(v174, v256, v188);
          v7 = v263;
          goto LABEL_164;
        }
      }
    }

    v189 = &v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle];
    v190 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle];
    v191 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle + 8];
    *v189 = 0;
    *(v189 + 1) = 0;
    v192 = v189[16];
    v189[16] = -1;
    sub_1001D2688(v190, v191, v192);
    sub_1001BEC34();
    if (!v7)
    {
      v55 = 0;
      v193 = qword_10117F000;
      goto LABEL_170;
    }

LABEL_164:
    v193 = qword_10117F000;
    v194 = [v7 videoOutput];
    if (v194)
    {
      [v194 setShowsPlaybackControls:v2[OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo]];
      swift_unknownObjectRelease();
    }

    v195 = [v7 videoOutput];
    if (v195)
    {

      swift_unknownObjectRelease();
      v55 = 1;
    }

    else
    {
      v55 = 0;
    }

LABEL_170:
    if (v193[295] != -1)
    {
      swift_once();
    }

    v196 = type metadata accessor for Logger();
    v197 = sub_1000060E4(v196, qword_1012190C8);
    v198 = v7;
    *&v259 = v197;
    v199 = Logger.logObject.getter();
    v200 = static os_log_type_t.default.getter();
    *&v264 = v198;

    if (!os_log_type_enabled(v199, v200))
    {

      if (!v55)
      {
        goto LABEL_191;
      }

      goto LABEL_187;
    }

    v201 = v7;
    v202 = v9;
    v203 = swift_slowAlloc();
    v204 = swift_slowAlloc();
    v266 = v204;
    *v203 = 67240706;
    *(v203 + 4) = v55;
    *(v203 + 8) = 1026;
    *(v203 + 10) = v261;
    *(v203 + 14) = 2082;
    if (!v201)
    {
      goto LABEL_184;
    }

    v205 = [v264 state];
    if (v205 <= 2)
    {
      if (v205)
      {
        if (v205 == 1)
        {
          v146 = @"MPCPlayerStateStopped";
        }

        else
        {
          if (v205 != 2)
          {
            goto LABEL_186;
          }

          v146 = @"MPCPlayerStatePlaying";
        }
      }

      else
      {
LABEL_184:
        v146 = @"MPCPlayerStateUnknown";
      }

LABEL_185:
      v206 = v146;
      goto LABEL_186;
    }

    if (v205 <= 4)
    {
      if (v205 == 3)
      {
        v146 = @"MPCPlayerStateBuffering";
      }

      else
      {
        v146 = @"MPCPlayerStatePaused";
      }

      goto LABEL_185;
    }

    if (v205 == 5)
    {
      v146 = @"MPCPlayerStateSeeking";
      goto LABEL_185;
    }

    if (v205 == 6)
    {
      v146 = @"MPCPlayerStateInterrupted";
      goto LABEL_185;
    }

LABEL_186:
    v207 = v146;
    v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v208;

    v210 = sub_1000105AC(v146, v209, &v266);

    *(v203 + 16) = v210;
    _os_log_impl(&_mh_execute_header, v199, v200, "Updating UI with new response: isVideo=%{BOOL,public}d, didReachEnd=%{BOOL,public}d, state=%{public}s", v203, 0x18u);
    sub_10000959C(v204);

    v9 = v202;
    v7 = v263;
    if (!v55)
    {
      goto LABEL_191;
    }

LABEL_187:
    if (v7)
    {
      v211 = [v264 state] != 2;
      if ((v211 & v261 & 1) == 0)
      {
        goto LABEL_194;
      }
    }

    else if (!v261)
    {
      goto LABEL_194;
    }

LABEL_191:
    v55 = OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput;
    v50 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput];
    if (v50)
    {
      v212 = [swift_unknownObjectRetain() playerViewController];
      v213 = [v212 view];

      if (!v213)
      {
        goto LABEL_222;
      }

      [v213 layoutIfNeeded];

      v214 = swift_allocObject();
      *(v214 + 16) = v2;
      v270 = sub_1001D26B8;
      v271 = v214;
      v266 = _NSConcreteStackBlock;
      v267 = 1107296256;
      v268 = sub_10002BC98;
      v269 = &unk_10109F9E8;
      v215 = _Block_copy(&v266);
      v216 = v2;

      [v50 exitFullScreenWithCompletion:v215];
      swift_unknownObjectRelease();
      _Block_release(v215);
      v216[OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo] = 0;
      *&v2[v55] = 0;
      swift_unknownObjectRelease();
    }

LABEL_194:
    sub_1001C6204();
    v217 = objc_opt_self();
    a1 = swift_allocObject();
    v218 = v262;
    a1[2] = v2;
    a1[3] = v218;
    v219 = swift_allocObject();
    LOBYTE(v104) = v219;
    *(v219 + 16) = sub_1001D26B0;
    *(v219 + 24) = a1;
    v270 = sub_10018A020;
    v271 = v219;
    v266 = _NSConcreteStackBlock;
    v267 = 1107296256;
    v268 = sub_100029B9C;
    v269 = &unk_10109F998;
    v79 = _Block_copy(&v266);
    v49 = v271;
    v220 = v218;
    v221 = v2;

    [v217 performWithoutEnforcement:v79];
    _Block_release(v79);
    LOBYTE(v217) = swift_isEscapingClosureAtFileLocation();

    if ((v217 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_219:
    swift_once();
  }

  v269 = &_s18NowPlayingUISourceON;
  v270 = &off_10109D788;
  LOBYTE(v266) = 0;

  sub_100069390(v7, &v266);

  sub_1000095E8(&v266, &unk_101183910, &unk_100EBDD00);
  v222 = *&v221[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  if (v222)
  {
    v223 = v222;
    sub_1001B5B98(v223);
  }

  if (![v221 isViewLoaded])
  {

LABEL_203:

    goto LABEL_204;
  }

  v146 = v221;
  v224 = Logger.logObject.getter();
  v225 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v224, v225))
  {

    goto LABEL_203;
  }

  v254 = v9;
  v50 = swift_slowAlloc();
  v265 = swift_slowAlloc();
  *v50 = 136446466;
  [*(&v146->isa + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton) frame];
  v266 = v226;
  v267 = v227;
  v268 = v228;
  v269 = v229;
  type metadata accessor for CGRect(0);
  v230 = String.init<A>(describing:)();
  v232 = sub_1000105AC(v230, v231, &v265);

  *(v50 + 4) = v232;
  *(v50 + 12) = 2082;
  v233 = *(&v146->isa + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (v233)
  {
    v234 = v233;

    [v234 frame];
    v236 = v235;
    v238 = v237;
    v240 = v239;
    v242 = v241;

    v266 = v236;
    v267 = v238;
    v268 = v240;
    v269 = v242;
    v243 = String.init<A>(describing:)();
    v245 = sub_1000105AC(v243, v244, &v265);

    *(v50 + 14) = v245;
    _os_log_impl(&_mh_execute_header, v224, v225, "Updating UI with new response: contextButton frame %{public}s topContainerView frame %{public}s", v50, 0x16u);
    swift_arrayDestroy();

LABEL_204:
    swift_unknownObjectRelease();
    return;
  }

LABEL_224:

  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:

  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:

  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:

  __break(1u);
}