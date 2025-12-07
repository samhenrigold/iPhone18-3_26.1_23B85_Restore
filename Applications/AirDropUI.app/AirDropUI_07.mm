uint64_t sub_1000BD8CC(uint64_t a1)
{
  v2 = v1;
  v49 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v45 - v5;
  v7 = type metadata accessor for AirDropAskRequestView(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v48 = a1;
  if (sub_1000C3F50(a1, &qword_100176C78, &qword_10011F1A0) == 0xD000000000000010 && 0x8000000100124D20 == v12)
  {
    v12, v12, v13, 0x8000000100124D20, v14, v15, v16, v17;
  }

  else
  {
    v18 = v12;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18, v20, v21, v22, v23, v24, v25, v26;
    if ((v19 & 1) == 0)
    {
LABEL_6:
      if (qword_100172220 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100007D20(v27, qword_100176610);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "User accepted AirDrop", v30, 2u);
      }

      v31 = type metadata accessor for TaskPriority();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
      v32 = v49;
      (*(v4 + 16))(v6, v48, v49);
      v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v34 = swift_allocObject();
      (*(v4 + 32))(v34 + v33, v6, v32);
      goto LABEL_16;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    goto LABEL_6;
  }

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100007D20(v35, qword_100176610);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "User chose to show sensitive content", v38, 2u);
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
  v40 = v47;
  sub_1000C83E8(v2, v47);
  v41 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v42 = swift_allocObject();
  sub_1000C8DD8(v40, v42 + v41, type metadata accessor for AirDropAskRequestView);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_10011F1D0;
  *(v43 + 24) = v42;
LABEL_16:
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
}

__n128 sub_1000BDE6C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a4;
  v8 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v117 = *(v8 - 8);
  v118 = v8;
  __chkstk_darwin(v8);
  v10 = (&v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000C3F50(a1, a2, a3);
  v20 = v14;
  if (v13 == 0xD000000000000010 && 0x8000000100124D20 == v14)
  {
    v14, v14, v15, 0x8000000100124D20, v16, v17, v18, v19;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v22, v23, v24, v25, v26, v27, v28;
    if ((v21 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  type metadata accessor for AirDropAskRequestView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v139.n128_u8[0] != 1)
  {
LABEL_7:
    sub_1000077C8(a2, a3);
    SFAirDrop.AcceptAction.Single.buttonConfiguration.getter();
    v35 = v117;
    v34 = v118;
    v36 = (*(v117 + 88))(v10, v118);
    if (v36 == enum case for SFAirDrop.ButtonConfiguration.text(_:))
    {
      (*(v35 + 96))(v10, v34);
      v37 = v10[1];
      v139.n128_u64[0] = *v10;
      v139.n128_u64[1] = v37;
      sub_10004BB74();
      v38 = Text.init<A>(_:)();
      v40 = v39;
      v42 = v41;
      v120.n128_u64[0] = v38;
      v120.n128_u64[1] = v39;
      v44 = (v43 & 1);
      v121.n128_u64[0] = v44;
      v121.n128_u64[1] = v41;
      LOBYTE(v122) = 0;
      sub_100078974(v38, v39, v43 & 1);

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v125) = v141[0];
      LOBYTE(v127[0]) = 0;
      *&v141[1] = v129;
      *&v141[17] = v130;
      v141[33] = 0;
      sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
      sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
      sub_1000C8960();
      sub_1000C89E4();
      _ConditionalContent<>.init(storage:)();
      v50 = v38;
      v51 = v40;
      v52 = v44;
    }

    else
    {
      if (v36 == enum case for SFAirDrop.ButtonConfiguration.symbol(_:))
      {
        (*(v35 + 96))(v10, v34);
        v120 = Image.init(systemName:)();
        v121 = 0uLL;
        LOBYTE(v122) = 1;

        _ConditionalContent<>.init(storage:)();
        LOBYTE(v125) = v141[0];
        LOBYTE(v127[0]) = 0;
        *&v141[1] = v129;
        *&v141[17] = v130;
        v141[33] = 0;
        sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
        sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
        sub_1000C8960();
        sub_1000C89E4();
        _ConditionalContent<>.init(storage:)();

        goto LABEL_12;
      }

      if (v36 != enum case for SFAirDrop.ButtonConfiguration.symbolText(_:))
      {
        LocalizedStringKey.init(stringLiteral:)();
        v98 = Text.init(_:tableName:bundle:comment:)();
        v100 = v99;
        v102 = v101;
        v104 = (v103 & 1);
        v128 = v103 & 1;
        v124 = 1;
        v139.n128_u64[0] = v98;
        v139.n128_u64[1] = v99;
        v140.n128_u8[0] = v103 & 1;
        *(v140.n128_u32 + 1) = v127[0];
        v140.n128_u32[1] = *(v127 + 3);
        v140.n128_u64[1] = v101;
        *v141 = v125;
        *&v141[16] = v126;
        v141[32] = 1;
        sub_100078974(v98, v99, v103 & 1);

        sub_1000077C8(&qword_100175378, &qword_10011EF60);
        sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60, &protocol conformance descriptor for HStack<A>);
        _ConditionalContent<>.init(storage:)();
        *v141 = v131;
        *&v141[16] = v132;
        v141[32] = v133;
        v139 = v129;
        v140 = v130;
        v134 = 1;
        v141[33] = 1;
        sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
        sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
        sub_1000C8960();
        sub_1000C89E4();
        _ConditionalContent<>.init(storage:)();
        sub_10004BBC8(v98, v100, v104, v105, v106, v107, v108, v109);
        v102, v110, v111, v112, v113, v114, v115, v116;
        *v141 = v122;
        *&v141[16] = *v123;
        *&v141[32] = *&v123[16];
        v139 = v120;
        v140 = v121;
        sub_100007BA4(&v139, &v120, &qword_100176AE0, &qword_10011EF70);
        (*(v117 + 8))(v10, v118);
        goto LABEL_13;
      }

      (*(v35 + 96))(v10, v34);
      v63 = v10[1];
      v64 = v10[2];
      v65 = v10[3];
      v117 = static VerticalAlignment.center.getter();

      v66 = Image.init(systemName:)();
      v139.n128_u64[0] = v64;
      v139.n128_u64[1] = v65;
      sub_10004BB74();

      v67 = Text.init<A>(_:)();
      v69 = v68;
      LOBYTE(v64) = v70;
      v42 = v71;

      sub_100078974(v67, v69, v64 & 1);

      sub_10004BBC8(v67, v69, (v64 & 1), v72, v73, v74, v75, v76);
      v65, v77, v78, v79, v80, v81, v82, v83;
      v63, v84, v85, v86, v87, v88, v89, v90;

      v42, v91, v92, v93, v94, v95, v96, v97;
      v134 = 1;
      v128 = v64 & 1;
      LOBYTE(v127[0]) = 0;
      v139 = v117;
      v140.n128_u8[0] = 1;
      v118 = v66;
      v140.n128_u64[1] = v66;
      *v141 = v67;
      *&v141[8] = v69;
      v141[16] = v64 & 1;
      *&v141[24] = v42;
      v141[32] = 0;

      sub_100078974(v67, v69, v64 & 1);

      sub_1000077C8(&qword_100175378, &qword_10011EF60);
      sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      *v141 = v131;
      *&v141[16] = v132;
      v141[32] = v133;
      v139 = v129;
      v140 = v130;
      LOBYTE(v125) = 1;
      v141[33] = 1;
      sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
      sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
      sub_1000C8960();
      sub_1000C89E4();
      _ConditionalContent<>.init(storage:)();

      v50 = v67;
      v51 = v69;
      v52 = (v64 & 1);
    }

    sub_10004BBC8(v50, v51, v52, v45, v46, v47, v48, v49);
    v42, v53, v54, v55, v56, v57, v58, v59;
LABEL_12:
    *v141 = v122;
    *&v141[16] = *v123;
    *&v141[32] = *&v123[16];
    v139 = v120;
    v140 = v121;
    sub_100007BA4(&v139, &v120, &qword_100176AE0, &qword_10011EF70);
LABEL_13:
    v135[2] = *v141;
    v135[3] = *&v141[16];
    v136 = *&v141[32];
    v135[0] = v139;
    v135[1] = v140;
    v137[2] = *v141;
    v137[3] = *&v141[16];
    v138 = *&v141[32];
    v137[0] = v139;
    v137[1] = v140;
    v129.n128_u8[0] = 1;
    v141[34] = 1;
    sub_100007BA4(v135, &v120, &qword_100176AE0, &qword_10011EF70);
    sub_1000077C8(&qword_100176AB0, &qword_10011EF48);
    sub_1000C88D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v137, &qword_100176AE0, &qword_10011EF70);
    sub_1000159AC(v135, &qword_100176AB0, &qword_10011EF48);
    *v141 = v122;
    *&v141[16] = *v123;
    *&v141[31] = *&v123[15];
    v139 = v120;
    v140 = v121;
    goto LABEL_14;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v139.n128_u64[0] = String.init(localized:table:bundle:locale:comment:)();
  v139.n128_u64[1] = v29;
  sub_10004BB74();
  v30 = Text.init<A>(_:)();
  v137[0].n128_u8[0] = v31 & 1;
  LOBYTE(v135[0]) = 0;
  v120.n128_u64[0] = v30;
  v120.n128_u64[1] = v32;
  v121.n128_u8[0] = v31 & 1;
  v121.n128_u64[1] = v33;
  v123[18] = 0;
  sub_1000077C8(&qword_100176AB0, &qword_10011EF48);
  sub_1000C88D4();
  _ConditionalContent<>.init(storage:)();
LABEL_14:
  result = v140;
  v61 = *&v141[16];
  v62 = v119;
  *(v119 + 32) = *v141;
  *(v62 + 48) = v61;
  *(v62 + 63) = *&v141[31];
  *v62 = v139;
  *(v62 + 16) = result;
  return result;
}

uint64_t sub_1000BE958@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for AirDropUIButtonStyle.Style();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AirDropUIButtonStyle();
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AirDropAskRequestView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = sub_1000077C8(&qword_100175340, &qword_10011CF70);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000C83E8(v2, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_1000C8DD8(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AirDropAskRequestView);
  Button.init(action:label:)();
  if (*(v2 + *(v10 + 32)))
  {
    v19 = &enum case for AirDropUIButtonStyle.Style.jindoAlert(_:);
  }

  else
  {
    v19 = &enum case for AirDropUIButtonStyle.Style.nonJindoAlert(_:);
  }

  (*(v23 + 104))(v22, *v19, v24);
  AirDropUIButtonStyle.init(style:)();
  sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70, &protocol conformance descriptor for Button<A>);
  sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
  v20 = v25;
  View.buttonStyle<A>(_:)();
  (*(v26 + 8))(v8, v20);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1000BED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v69 = a2;
  v5 = sub_1000077C8(&qword_100176D88, &qword_10011F2B8);
  __chkstk_darwin(v5 - 8);
  v68 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = (&v51 - v8);
  v9 = type metadata accessor for AirDropUIButtonStyle.Style();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AirDropUIButtonStyle();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AirDropAskRequestView(0);
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v55 = *(v20 - 8);
  v56 = v20;
  __chkstk_darwin(v20);
  v54 = &v51 - v21;
  v65 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v22 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = &v51 - v23;
  v24 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  __chkstk_darwin(v24 - 8);
  v64 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v51 - v27;
  v29 = a1;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v22 + 56))(v28, 1, 1, v65);
    v30 = v69;
  }

  else
  {
    sub_1000C83E8(v69, &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = (v18 + *(v14 + 80) + v31) & ~*(v14 + 80);
    v33 = swift_allocObject();
    sub_1000C8DD8(v19, v33 + v31, type metadata accessor for AirDropAskRequestView);
    v34 = (*(v14 + 32))(v33 + v32, v16, v13);
    __chkstk_darwin(v34);
    *(&v51 - 2) = v29;
    v35 = v54;
    Button.init(action:label:)();
    v36 = v69;
    if (*(v69 + *(v52 + 24)))
    {
      v37 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v37 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v58 + 104))(v57, *v37, v59);
    v38 = v60;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v39 = v53;
    v40 = v56;
    v41 = v62;
    View.buttonStyle<A>(_:)();
    (*(v61 + 8))(v38, v41);
    (*(v55 + 8))(v35, v40);
    v42 = v65;
    (*(v22 + 32))(v28, v39, v65);
    (*(v22 + 56))(v28, 0, 1, v42);
    v30 = v36;
  }

  v43 = static VerticalAlignment.center.getter();
  v44 = v63;
  *v63 = v43;
  *(v44 + 8) = 0x4024000000000000;
  *(v44 + 16) = 0;
  v45 = sub_1000077C8(&qword_100176D90, &qword_10011F2C0);
  sub_1000C05E4(v66, v30, (v44 + *(v45 + 44)));
  v46 = v64;
  sub_100007BA4(v28, v64, &qword_1001769D0, &unk_10011EE38);
  v47 = v68;
  sub_100007BA4(v44, v68, &qword_100176D88, &qword_10011F2B8);
  v48 = v67;
  sub_100007BA4(v46, v67, &qword_1001769D0, &unk_10011EE38);
  v49 = sub_1000077C8(&qword_100176D98, &qword_10011F2C8);
  sub_100007BA4(v47, v48 + *(v49 + 48), &qword_100176D88, &qword_10011F2B8);
  sub_1000159AC(v44, &qword_100176D88, &qword_10011F2B8);
  sub_1000159AC(v28, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v47, &qword_100176D88, &qword_10011F2B8);
  return sub_1000159AC(v46, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000BF50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v69 = a2;
  v5 = sub_1000077C8(&qword_1001769C0, &unk_10011EE20);
  __chkstk_darwin(v5 - 8);
  v68 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = (&v51 - v8);
  v9 = type metadata accessor for AirDropUIButtonStyle.Style();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AirDropUIButtonStyle();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AirDropAskRequestView(0);
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v55 = *(v20 - 8);
  v56 = v20;
  __chkstk_darwin(v20);
  v54 = &v51 - v21;
  v65 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v22 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = &v51 - v23;
  v24 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  __chkstk_darwin(v24 - 8);
  v64 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v51 - v27;
  v29 = a1;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v22 + 56))(v28, 1, 1, v65);
    v30 = v69;
  }

  else
  {
    sub_1000C83E8(v69, &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = (v18 + *(v14 + 80) + v31) & ~*(v14 + 80);
    v33 = swift_allocObject();
    sub_1000C8DD8(v19, v33 + v31, type metadata accessor for AirDropAskRequestView);
    v34 = (*(v14 + 32))(v33 + v32, v16, v13);
    __chkstk_darwin(v34);
    *(&v51 - 2) = v29;
    v35 = v54;
    Button.init(action:label:)();
    v36 = v69;
    if (*(v69 + *(v52 + 24)))
    {
      v37 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v37 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v58 + 104))(v57, *v37, v59);
    v38 = v60;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v39 = v53;
    v40 = v56;
    v41 = v62;
    View.buttonStyle<A>(_:)();
    (*(v61 + 8))(v38, v41);
    (*(v55 + 8))(v35, v40);
    v42 = v65;
    (*(v22 + 32))(v28, v39, v65);
    (*(v22 + 56))(v28, 0, 1, v42);
    v30 = v36;
  }

  v43 = static VerticalAlignment.center.getter();
  v44 = v63;
  *v63 = v43;
  *(v44 + 8) = 0x4024000000000000;
  *(v44 + 16) = 0;
  v45 = sub_1000077C8(&qword_1001769D8, &qword_10011EE48);
  sub_1000C0AE4(v66, v30, (v44 + *(v45 + 44)));
  v46 = v64;
  sub_100007BA4(v28, v64, &qword_1001769D0, &unk_10011EE38);
  v47 = v68;
  sub_100007BA4(v44, v68, &qword_1001769C0, &unk_10011EE20);
  v48 = v67;
  sub_100007BA4(v46, v67, &qword_1001769D0, &unk_10011EE38);
  v49 = sub_1000077C8(&qword_1001769E0, &qword_10011EE50);
  sub_100007BA4(v47, v48 + *(v49 + 48), &qword_1001769C0, &unk_10011EE20);
  sub_1000159AC(v44, &qword_1001769C0, &unk_10011EE20);
  sub_1000159AC(v28, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v47, &qword_1001769C0, &unk_10011EE20);
  return sub_1000159AC(v46, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000BFCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v69 = a2;
  v5 = sub_1000077C8(&qword_100176C30, &qword_10011F168);
  __chkstk_darwin(v5 - 8);
  v68 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = (&v51 - v8);
  v9 = type metadata accessor for AirDropUIButtonStyle.Style();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AirDropUIButtonStyle();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AirDropAskRequestView(0);
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v55 = *(v20 - 8);
  v56 = v20;
  __chkstk_darwin(v20);
  v54 = &v51 - v21;
  v65 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v22 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = &v51 - v23;
  v24 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  __chkstk_darwin(v24 - 8);
  v64 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v51 - v27;
  v29 = a1;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v22 + 56))(v28, 1, 1, v65);
    v30 = v69;
  }

  else
  {
    sub_1000C83E8(v69, &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = (v18 + *(v14 + 80) + v31) & ~*(v14 + 80);
    v33 = swift_allocObject();
    sub_1000C8DD8(v19, v33 + v31, type metadata accessor for AirDropAskRequestView);
    v34 = (*(v14 + 32))(v33 + v32, v16, v13);
    __chkstk_darwin(v34);
    *(&v51 - 2) = v29;
    v35 = v54;
    Button.init(action:label:)();
    v36 = v69;
    if (*(v69 + *(v52 + 24)))
    {
      v37 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v37 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v58 + 104))(v57, *v37, v59);
    v38 = v60;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v39 = v53;
    v40 = v56;
    v41 = v62;
    View.buttonStyle<A>(_:)();
    (*(v61 + 8))(v38, v41);
    (*(v55 + 8))(v35, v40);
    v42 = v65;
    (*(v22 + 32))(v28, v39, v65);
    (*(v22 + 56))(v28, 0, 1, v42);
    v30 = v36;
  }

  v43 = static VerticalAlignment.center.getter();
  v44 = v63;
  *v63 = v43;
  *(v44 + 8) = 0x4024000000000000;
  *(v44 + 16) = 0;
  v45 = sub_1000077C8(&qword_100176C38, &qword_10011F170);
  sub_1000C0FE4(v66, v30, (v44 + *(v45 + 44)));
  v46 = v64;
  sub_100007BA4(v28, v64, &qword_1001769D0, &unk_10011EE38);
  v47 = v68;
  sub_100007BA4(v44, v68, &qword_100176C30, &qword_10011F168);
  v48 = v67;
  sub_100007BA4(v46, v67, &qword_1001769D0, &unk_10011EE38);
  v49 = sub_1000077C8(&qword_100176C40, &qword_10011F178);
  sub_100007BA4(v47, v48 + *(v49 + 48), &qword_100176C30, &qword_10011F168);
  sub_1000159AC(v44, &qword_100176C30, &qword_10011F168);
  sub_1000159AC(v28, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v47, &qword_100176C30, &qword_10011F168);
  return sub_1000159AC(v46, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000C04D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDrop.DeclineAction.buttonConfiguration.getter();
  v7 = SFAirDrop.ButtonConfiguration.localizedTitle.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v14[0] = v7;
  v14[1] = v9;
  sub_10004BB74();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1000C05E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v5 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - v6;
  v7 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  __chkstk_darwin(v7 - 8);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = type metadata accessor for AirDropAskRequestView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000077C8(&qword_100176DA0, &qword_10011F2D0);
  v15 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v55 = a1;
  sub_1000C83E8(a2, v14);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  sub_1000C8DD8(v14, v21 + v20, type metadata accessor for AirDropAskRequestView);

  v22 = sub_1000077C8(&qword_100176DA8, &unk_10011F2D8);
  v23 = type metadata accessor for UUID();
  v24 = sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  v25 = sub_1000199C8(&qword_100176DB0, &qword_100176DA8, &unk_10011F2D8, &protocol conformance descriptor for [A]);
  v26 = sub_1000C8488();
  v27 = sub_1000199C8(&qword_100176DB8, &unk_100172F90, &qword_100118CE0, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>);
  v28 = v19;
  ForEach<>.init(_:content:)(&v55, sub_1000C930C, v21, v22, v23, v24, v25, v26, v27);
  if (sub_1000ACDD0())
  {
    v29 = v47;
    sub_1000BE958(v47);
    v31 = v50;
    v30 = v51;
    v32 = v29;
    v33 = v52;
    (*(v51 + 32))(v50, v32, v52);
    v34 = 0;
    v35 = v33;
    v36 = v30;
  }

  else
  {
    v34 = 1;
    v36 = v51;
    v35 = v52;
    v31 = v50;
  }

  (*(v36 + 56))(v31, v34, 1, v35);
  v37 = v15;
  v38 = *(v15 + 16);
  v39 = v48;
  v40 = v49;
  v38(v49, v28, v48);
  v41 = v53;
  sub_100007BA4(v31, v53, &qword_1001769F0, &qword_10011EE60);
  v42 = v54;
  v38(v54, v40, v39);
  v43 = sub_1000077C8(&qword_100176DC0, &qword_10011F2E8);
  sub_100007BA4(v41, &v42[*(v43 + 48)], &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v31, &qword_1001769F0, &qword_10011EE60);
  v44 = *(v37 + 8);
  v44(v28, v39);
  sub_1000159AC(v41, &qword_1001769F0, &qword_10011EE60);
  return (v44)(v40, v39);
}

uint64_t sub_1000C0AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v5 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - v6;
  v7 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  __chkstk_darwin(v7 - 8);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = type metadata accessor for AirDropAskRequestView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000077C8(&qword_1001769F8, &qword_10011EE68);
  v15 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v55 = a1;
  sub_1000C83E8(a2, v14);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  sub_1000C8DD8(v14, v21 + v20, type metadata accessor for AirDropAskRequestView);

  v22 = sub_1000077C8(&qword_100176A00, &qword_10011EE70);
  v23 = type metadata accessor for UUID();
  v24 = sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  v25 = sub_1000199C8(&qword_100176A10, &qword_100176A00, &qword_10011EE70, &protocol conformance descriptor for [A]);
  v26 = sub_1000C8488();
  v27 = sub_1000199C8(&qword_100176A40, &qword_100176A48, &qword_10011EE90, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>);
  v28 = v19;
  ForEach<>.init(_:content:)(&v55, sub_1000C8470, v21, v22, v23, v24, v25, v26, v27);
  if (sub_1000ACDD0())
  {
    v29 = v47;
    sub_1000BE958(v47);
    v31 = v50;
    v30 = v51;
    v32 = v29;
    v33 = v52;
    (*(v51 + 32))(v50, v32, v52);
    v34 = 0;
    v35 = v33;
    v36 = v30;
  }

  else
  {
    v34 = 1;
    v36 = v51;
    v35 = v52;
    v31 = v50;
  }

  (*(v36 + 56))(v31, v34, 1, v35);
  v37 = v15;
  v38 = *(v15 + 16);
  v39 = v48;
  v40 = v49;
  v38(v49, v28, v48);
  v41 = v53;
  sub_100007BA4(v31, v53, &qword_1001769F0, &qword_10011EE60);
  v42 = v54;
  v38(v54, v40, v39);
  v43 = sub_1000077C8(&qword_100176A50, &qword_10011EE98);
  sub_100007BA4(v41, &v42[*(v43 + 48)], &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v31, &qword_1001769F0, &qword_10011EE60);
  v44 = *(v37 + 8);
  v44(v28, v39);
  sub_1000159AC(v41, &qword_1001769F0, &qword_10011EE60);
  return (v44)(v40, v39);
}

uint64_t sub_1000C0FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v5 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - v6;
  v7 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  __chkstk_darwin(v7 - 8);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = type metadata accessor for AirDropAskRequestView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000077C8(&qword_100176C48, &qword_10011F180);
  v15 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v55 = a1;
  sub_1000C83E8(a2, v14);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  sub_1000C8DD8(v14, v21 + v20, type metadata accessor for AirDropAskRequestView);

  v22 = sub_1000077C8(&qword_100176C50, &qword_10011F188);
  v23 = type metadata accessor for UUID();
  v24 = sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  v25 = sub_1000199C8(&qword_100176C58, &qword_100176C50, &qword_10011F188, &protocol conformance descriptor for [A]);
  v26 = sub_1000C8488();
  v27 = sub_1000199C8(&qword_100176C60, &qword_100176C68, &qword_10011F190, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>);
  v28 = v19;
  ForEach<>.init(_:content:)(&v55, sub_1000C9080, v21, v22, v23, v24, v25, v26, v27);
  if (sub_1000ACDD0())
  {
    v29 = v47;
    sub_1000BE958(v47);
    v31 = v50;
    v30 = v51;
    v32 = v29;
    v33 = v52;
    (*(v51 + 32))(v50, v32, v52);
    v34 = 0;
    v35 = v33;
    v36 = v30;
  }

  else
  {
    v34 = 1;
    v36 = v51;
    v35 = v52;
    v31 = v50;
  }

  (*(v36 + 56))(v31, v34, 1, v35);
  v37 = v15;
  v38 = *(v15 + 16);
  v39 = v48;
  v40 = v49;
  v38(v49, v28, v48);
  v41 = v53;
  sub_100007BA4(v31, v53, &qword_1001769F0, &qword_10011EE60);
  v42 = v54;
  v38(v54, v40, v39);
  v43 = sub_1000077C8(&qword_100176C70, &qword_10011F198);
  sub_100007BA4(v41, &v42[*(v43 + 48)], &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v31, &qword_1001769F0, &qword_10011EE60);
  v44 = *(v37 + 8);
  v44(v28, v39);
  sub_1000159AC(v41, &qword_1001769F0, &qword_10011EE60);
  return (v44)(v40, v39);
}

uint64_t sub_1000C14E4@<X0>(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a1;
  v141 = a2;
  v146 = a3;
  v144 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  __chkstk_darwin(v144);
  v145 = (&v120 - v3);
  v138 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  __chkstk_darwin(v138);
  v5 = (&v120 - v4);
  v143 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  __chkstk_darwin(v143);
  v139 = &v120 - v6;
  v130 = type metadata accessor for AirDropUIButtonStyle.Style();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AirDropUIButtonStyle();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AirDropAskRequestView(0);
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v129 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v120 - v10;
  v137 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v120 - v11;
  v13 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  (*(v20 + 16))(&v120 - v22, v140, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  v142 = v23;
  if (v24 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v122 = v12;
    v140 = v5;
    (*(v20 + 96))(v23, v19);
    v25 = v14[4];
    v25(v18, v23, v13);
    v26 = v125;
    sub_1000C83E8(v141, v125);
    v121 = v14;
    v28 = v14 + 2;
    v27 = v14[2];
    v29 = v123;
    v27(v123, v18, v13);
    v30 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v31 = (v9 + v30 + *(v28 + 64)) & ~*(v28 + 64);
    v32 = swift_allocObject();
    sub_1000C8DD8(v26, v32 + v30, type metadata accessor for AirDropAskRequestView);
    v33 = (v25)(v32 + v31, v29, v13);
    __chkstk_darwin(v33);
    v34 = v141;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v35 = v126;
    Button.init(action:label:)();
    v36 = *(v34 + *(v127 + 24));
    v37 = (v128 + 104);
    v120 = v18;
    if (v36)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v37)(v131, *v38, v130);
    }

    else
    {
      (*v37)(v131, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v130);
    }

    v109 = v140;
    v110 = v122;
    v141 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
    v111 = v132;
    AirDropUIButtonStyle.init(style:)();
    v112 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v113 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v115 = v135;
    v114 = v136;
    View.buttonStyle<A>(_:)();
    (*(v133 + 8))(v111, v114);
    (*(v129 + 8))(v35, v115);
    v116 = v134;
    v117 = v137;
    (*(v134 + 16))(v109, v110, v137);
    swift_storeEnumTagMultiPayload();
    v147 = v115;
    v148 = v114;
    v149 = v112;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v118, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v118, &qword_100176A28, &qword_10011EE80);
    (*(v116 + 8))(v110, v117);
    (v121[1])(v120, v13);
    v119 = type metadata accessor for UUID();
    return (*(*(v119 - 8) + 8))(&v142[v141], v119);
  }

  else if (v24 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v20 + 96))(v23, v19);
    v141 = *(sub_1000077C8(&qword_100175310, &qword_10011CF58) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v41 = v40;
    v42 = v5;
    v44 = v43;
    v46 = v45;
    v147 = static Color.red.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10004BBC8(v39, v41, (v44 & 1), v52, v54, v55, v56, v57);

    v46, v58, v59, v60, v61, v62, v63, v64;
    v42->super.isa = v47;
    *v42->listener = v49;
    v42->connection[0] = v51 & 1;
    *v42->airdropClient = v53;
    v140 = v53;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v47, v49, v51 & 1);
    v65 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v66 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);

    v147 = v135;
    v148 = v136;
    v149 = v65;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v67, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v47, v49, (v51 & 1), v68, v69, v70, v71, v72);
    v140, v73, v74, v75, v76, v77, v78, v79;
    sub_1000159AC(v67, &qword_100176A28, &qword_10011EE80);
    v80 = type metadata accessor for UUID();
    v81 = v142;
    (*(*(v80 - 8) + 8))(&v142[v141], v80);
    v82 = sub_1000077C8(&qword_100175278, &unk_10011F2F0);
    return (*(*(v82 - 8) + 8))(v81, v82);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v147 = static Color.red.getter();
    v91 = Text.foregroundStyle<A>(_:)();
    v93 = v92;
    v95 = v94;
    v141 = v96;
    sub_10004BBC8(v84, v86, (v88 & 1), v96, v97, v98, v99, v100);

    v90, v101, v102, v103, v104, v105, v106, v107;
    v108 = v145;
    *v145 = v91;
    v108[1] = v93;
    *(v108 + 16) = v95 & 1;
    v108[3] = v141;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v142, v19);
  }
}

uint64_t sub_1000C2308@<X0>(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a1;
  v141 = a2;
  v146 = a3;
  v144 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  __chkstk_darwin(v144);
  v145 = (&v120 - v3);
  v138 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  __chkstk_darwin(v138);
  v5 = (&v120 - v4);
  v143 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  __chkstk_darwin(v143);
  v139 = &v120 - v6;
  v130 = type metadata accessor for AirDropUIButtonStyle.Style();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AirDropUIButtonStyle();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AirDropAskRequestView(0);
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v129 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v120 - v10;
  v137 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v120 - v11;
  v13 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_1000077C8(&qword_100176A48, &qword_10011EE90);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  (*(v20 + 16))(&v120 - v22, v140, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  v142 = v23;
  if (v24 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v122 = v12;
    v140 = v5;
    (*(v20 + 96))(v23, v19);
    v25 = v14[4];
    v25(v18, v23, v13);
    v26 = v125;
    sub_1000C83E8(v141, v125);
    v121 = v14;
    v28 = v14 + 2;
    v27 = v14[2];
    v29 = v123;
    v27(v123, v18, v13);
    v30 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v31 = (v9 + v30 + *(v28 + 64)) & ~*(v28 + 64);
    v32 = swift_allocObject();
    sub_1000C8DD8(v26, v32 + v30, type metadata accessor for AirDropAskRequestView);
    v33 = (v25)(v32 + v31, v29, v13);
    __chkstk_darwin(v33);
    v34 = v141;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v35 = v126;
    Button.init(action:label:)();
    v36 = *(v34 + *(v127 + 24));
    v37 = (v128 + 104);
    v120 = v18;
    if (v36)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v37)(v131, *v38, v130);
    }

    else
    {
      (*v37)(v131, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v130);
    }

    v109 = v140;
    v110 = v122;
    v141 = *(sub_1000077C8(&qword_100176AD8, &qword_10011EF68) + 48);
    v111 = v132;
    AirDropUIButtonStyle.init(style:)();
    v112 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v113 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v115 = v135;
    v114 = v136;
    View.buttonStyle<A>(_:)();
    (*(v133 + 8))(v111, v114);
    (*(v129 + 8))(v35, v115);
    v116 = v134;
    v117 = v137;
    (*(v134 + 16))(v109, v110, v137);
    swift_storeEnumTagMultiPayload();
    v147 = v115;
    v148 = v114;
    v149 = v112;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v118, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v118, &qword_100176A28, &qword_10011EE80);
    (*(v116 + 8))(v110, v117);
    (v121[1])(v120, v13);
    v119 = type metadata accessor for UUID();
    return (*(*(v119 - 8) + 8))(&v142[v141], v119);
  }

  else if (v24 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v20 + 96))(v23, v19);
    v141 = *(sub_1000077C8(&qword_100176A88, &qword_10011EF30) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v41 = v40;
    v42 = v5;
    v44 = v43;
    v46 = v45;
    v147 = static Color.red.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10004BBC8(v39, v41, (v44 & 1), v52, v54, v55, v56, v57);

    v46, v58, v59, v60, v61, v62, v63, v64;
    v42->super.isa = v47;
    *v42->listener = v49;
    v42->connection[0] = v51 & 1;
    *v42->airdropClient = v53;
    v140 = v53;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v47, v49, v51 & 1);
    v65 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v66 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);

    v147 = v135;
    v148 = v136;
    v149 = v65;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v67, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v47, v49, (v51 & 1), v68, v69, v70, v71, v72);
    v140, v73, v74, v75, v76, v77, v78, v79;
    sub_1000159AC(v67, &qword_100176A28, &qword_10011EE80);
    v80 = type metadata accessor for UUID();
    v81 = v142;
    (*(*(v80 - 8) + 8))(&v142[v141], v80);
    v82 = sub_1000077C8(&qword_100176A90, &qword_10011EF38);
    return (*(*(v82 - 8) + 8))(v81, v82);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v147 = static Color.red.getter();
    v91 = Text.foregroundStyle<A>(_:)();
    v93 = v92;
    v95 = v94;
    v141 = v96;
    sub_10004BBC8(v84, v86, (v88 & 1), v96, v97, v98, v99, v100);

    v90, v101, v102, v103, v104, v105, v106, v107;
    v108 = v145;
    *v145 = v91;
    v108[1] = v93;
    *(v108 + 16) = v95 & 1;
    v108[3] = v141;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v142, v19);
  }
}

uint64_t sub_1000C312C@<X0>(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a1;
  v141 = a2;
  v146 = a3;
  v144 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  __chkstk_darwin(v144);
  v145 = (&v120 - v3);
  v138 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  __chkstk_darwin(v138);
  v5 = (&v120 - v4);
  v143 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  __chkstk_darwin(v143);
  v139 = &v120 - v6;
  v130 = type metadata accessor for AirDropUIButtonStyle.Style();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AirDropUIButtonStyle();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AirDropAskRequestView(0);
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v129 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v120 - v10;
  v137 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v120 - v11;
  v13 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_1000077C8(&qword_100176C68, &qword_10011F190);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  (*(v20 + 16))(&v120 - v22, v140, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  v142 = v23;
  if (v24 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v122 = v12;
    v140 = v5;
    (*(v20 + 96))(v23, v19);
    v25 = v14[4];
    v25(v18, v23, v13);
    v26 = v125;
    sub_1000C83E8(v141, v125);
    v121 = v14;
    v28 = v14 + 2;
    v27 = v14[2];
    v29 = v123;
    v27(v123, v18, v13);
    v30 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v31 = (v9 + v30 + *(v28 + 64)) & ~*(v28 + 64);
    v32 = swift_allocObject();
    sub_1000C8DD8(v26, v32 + v30, type metadata accessor for AirDropAskRequestView);
    v33 = (v25)(v32 + v31, v29, v13);
    __chkstk_darwin(v33);
    v34 = v141;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v35 = v126;
    Button.init(action:label:)();
    v36 = *(v34 + *(v127 + 24));
    v37 = (v128 + 104);
    v120 = v18;
    if (v36)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v37)(v131, *v38, v130);
    }

    else
    {
      (*v37)(v131, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v130);
    }

    v109 = v140;
    v110 = v122;
    v141 = *(sub_1000077C8(&qword_100176C90, &qword_10011F1B8) + 48);
    v111 = v132;
    AirDropUIButtonStyle.init(style:)();
    v112 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v113 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v115 = v135;
    v114 = v136;
    View.buttonStyle<A>(_:)();
    (*(v133 + 8))(v111, v114);
    (*(v129 + 8))(v35, v115);
    v116 = v134;
    v117 = v137;
    (*(v134 + 16))(v109, v110, v137);
    swift_storeEnumTagMultiPayload();
    v147 = v115;
    v148 = v114;
    v149 = v112;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v118, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v118, &qword_100176A28, &qword_10011EE80);
    (*(v116 + 8))(v110, v117);
    (v121[1])(v120, v13);
    v119 = type metadata accessor for UUID();
    return (*(*(v119 - 8) + 8))(&v142[v141], v119);
  }

  else if (v24 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v20 + 96))(v23, v19);
    v141 = *(sub_1000077C8(&qword_100176C80, &qword_10011F1A8) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v41 = v40;
    v42 = v5;
    v44 = v43;
    v46 = v45;
    v147 = static Color.red.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10004BBC8(v39, v41, (v44 & 1), v52, v54, v55, v56, v57);

    v46, v58, v59, v60, v61, v62, v63, v64;
    v42->super.isa = v47;
    *v42->listener = v49;
    v42->connection[0] = v51 & 1;
    *v42->airdropClient = v53;
    v140 = v53;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v47, v49, v51 & 1);
    v65 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v66 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);

    v147 = v135;
    v148 = v136;
    v149 = v65;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v67, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v47, v49, (v51 & 1), v68, v69, v70, v71, v72);
    v140, v73, v74, v75, v76, v77, v78, v79;
    sub_1000159AC(v67, &qword_100176A28, &qword_10011EE80);
    v80 = type metadata accessor for UUID();
    v81 = v142;
    (*(*(v80 - 8) + 8))(&v142[v141], v80);
    v82 = sub_1000077C8(&qword_100176C88, &qword_10011F1B0);
    return (*(*(v82 - 8) + 8))(v81, v82);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v147 = static Color.red.getter();
    v91 = Text.foregroundStyle<A>(_:)();
    v93 = v92;
    v95 = v94;
    v141 = v96;
    sub_10004BBC8(v84, v86, (v88 & 1), v96, v97, v98, v99, v100);

    v90, v101, v102, v103, v104, v105, v106, v107;
    v108 = v145;
    *v145 = v91;
    v108[1] = v93;
    *(v108 + 16) = v95 & 1;
    v108[3] = v141;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v142, v19);
  }
}

uint64_t sub_1000C3F50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000077C8(a2, a3);
  SFAirDrop.AcceptAction.Single.id.getter();
  v4 = v3;
  sub_10004BB74();
  v5 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v20 = *v5->connection;
  if (v20)
  {
    v21 = *&v5->airdropClient[32 * v20];

    v5, v22, v23, v24, v25, v26, v27, v28;
    v29 = static String._fromSubstring(_:)();
    v21, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v5, v13, v14, v15, v16, v17, v18, v19;
    return 0x72616C75676552;
  }

  return v29;
}

uint64_t sub_1000C4044(uint64_t a1)
{
  v2 = type metadata accessor for AirDropAskRequestView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1000C83E8(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000C8DD8(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AirDropAskRequestView);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v7, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000C421C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v2[6] = swift_task_alloc();
  sub_1000077C8(&qword_100176A58, &qword_10011EEB0);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C4380, v5, v4);
}

uint64_t sub_1000C4380()
{

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching 'Ways to Get Help' URL", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  type metadata accessor for AirDropAskRequestView(0);
  sub_1000807A4();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v8 + 8))(v6, v7);
  v9 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1000159AC(v0[6], &qword_100173D50, &unk_10011D120);
  }

  else
  {
    v11 = v0[6];
    v12 = v0[7];
    SFAirDrop.PermissionRequest.telemetryData.getter();
    (*(v10 + 8))(v11, v9);
    v13 = sub_1000077C8(&qword_100176A60, &unk_10011EEB8);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    v16 = v0[7];
    if (v15 == 1)
    {
      sub_1000159AC(v0[7], &qword_100176A58, &qword_10011EEB0);
    }

    else
    {
      v17 = SFAirDrop.PermissionRequest.TelemetryData.items.getter();
      (*(v14 + 8))(v16, v13);
      v18 = objc_opt_self();
      v19 = sub_1000C46FC(v17);
      v17, v20, v21, v22, v23, v24, v25, v26;
      [v18 waysToGetHelpTappedWithContentType:v19 isBlurred:sub_10007A24C() & 1];
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000C46FC(_TtC9AirDropUI33AirDropTransferSessionsController *a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v71 - v7;
  nearbySharingInteractionCoordinator = a1->nearbySharingInteractionCoordinator;
  v9 = 1 << a1->airDropClient[0];
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *a1->nearbySharingInteractionCoordinator;
  v12 = (v9 + 63) >> 6;
  v75 = v3 + 32;
  v76 = v3 + 16;
  v74 = (v3 + 8);

  v72 = 0;
  v13 = 0;
  v14 = 0;
LABEL_4:
  v15 = v14;
  if (!v11)
  {
    goto LABEL_6;
  }

  do
  {
    v73 = v13;
    v14 = v15;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = a1;
    v18 = v77;
    (*(v3 + 16))(v77, *a1->interventionTasks + *(v3 + 72) * (v16 | (v14 << 6)), v2);
    (*(v3 + 32))(v5, v18, v2);
    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();
    v20, v22, v23, v24, v25, v26, v27, v28;
    LOBYTE(v20) = SFIsImage();

    if ((v20 & 1) == 0)
    {
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v30 = v29;
      v31 = String._bridgeToObjectiveC()();
      v30, v32, v33, v34, v35, v36, v37, v38;
      LODWORD(v30) = SFIsVideo();

      (*v74)(v5, v2);
      v72 |= v30;
      a1 = v17;
      v13 = v73;
      goto LABEL_4;
    }

    (*v74)(v5, v2);
    v13 = 1;
    v15 = v14;
    a1 = v17;
  }

  while (v11);
  while (1)
  {
LABEL_6:
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_21;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *&nearbySharingInteractionCoordinator[8 * v14];
    ++v15;
    if (v11)
    {
      v73 = v13;
      goto LABEL_10;
    }
  }

  if (v13)
  {
    if (v72)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  if (v72)
  {
    return 2;
  }

  if (qword_100172220 != -1)
  {
    goto LABEL_25;
  }

LABEL_21:
  v40 = type metadata accessor for Logger();
  sub_100007D20(v40, qword_100176610);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  a1, v43, v44, v45, v46, v47, v48, v49;
  if (os_log_type_enabled(v41, v42))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v78 = v51;
    *v50 = 136315138;
    sub_1000AC810(a1);
    v53 = v52;
    v54 = Array.description.getter();
    v56 = v55;
    v53, v55, v57, v58, v59, v60, v61, v62;
    v63 = sub_10003E81C(v54, v56, &v78);
    v56, v64, v65, v66, v67, v68, v69, v70;
    *(v50 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v41, v42, "Found no images or videos in AirDrop with file types %s - falling back to type .none", v50, 0xCu);
    sub_100007920(v51);
  }

  return 0;
}

uint64_t sub_1000C4B00@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

void sub_1000C4B40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100176DD0, &qword_10011F328);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = *(a1 + *(type metadata accessor for AirDropAskRequestView(0) + 24));
  if (v10 == 1)
  {
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = 0;
    v34 = v38;
    v31 = v42;
    v32 = v40;
    v30 = v43;
    v37 = 1;
    v36 = v39;
    v35 = v41;
    v11 = 1;
    v28 = v39;
    v29 = v41;
    LOBYTE(v44) = 0;
  }

  else
  {
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v11 = 0;
    v33 = 1;
  }

  type metadata accessor for AirDropTransferSession(0);
  sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);

  v12 = ObservedObject.init(wrappedValue:)();
  v14 = v13;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = sub_1000077C8(&qword_100176DD8, &qword_10011F330);
  sub_1000C4E8C(a1, &v9[*(v15 + 44)]);
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v9[*(v4 + 36)];
  v17 = v45;
  *v16 = v44;
  *(v16 + 1) = v17;
  *(v16 + 2) = v46;
  sub_100007BA4(v9, v6, &qword_100176DD0, &qword_10011F328);
  *a2 = 0;
  *(a2 + 8) = v11;
  v18 = v28;
  *(a2 + 16) = v34;
  *(a2 + 24) = v18;
  v19 = v29;
  *(a2 + 32) = v32;
  *(a2 + 40) = v19;
  v20 = v30;
  *(a2 + 48) = v31;
  *(a2 + 56) = v20;
  *(a2 + 64) = v33;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = v10;
  *(a2 + 96) = xmmword_100117C60;
  *(a2 + 112) = 1;
  v21 = sub_1000077C8(&qword_100176DE0, &qword_10011F338);
  sub_100007BA4(v6, a2 + *(v21 + 64), &qword_100176DD0, &qword_10011F328);

  sub_10004DC90(0, 1);
  sub_1000159AC(v9, &qword_100176DD0, &qword_10011F328);
  sub_1000159AC(v6, &qword_100176DD0, &qword_10011F328);

  sub_10004DCF4(0, 1, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1000C4E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100176DE8, &qword_10011F340);
  __chkstk_darwin(v4 - 8);
  v56 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v44 = type metadata accessor for Font.TextStyle();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AirDropDescriptionView(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  __chkstk_darwin(v50);
  v55 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v43 = &v40 - v16;
  __chkstk_darwin(v17);
  v54 = &v40 - v18;
  v19 = type metadata accessor for AirDropAskRequestView(0);
  if (*(a1 + *(v19 + 24)) == 1)
  {
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v52 = 0;
    v53 = v60;
    v51 = v62;
    v49 = v64;
    v48 = v65;
    v59 = 1;
    v58 = v61;
    v57 = v63;
    v45 = 1;
    v46 = v61;
    v47 = v63;
    LOBYTE(v66) = 0;
  }

  else
  {
    v53 = 0;
    v51 = 0;
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v46 = 0;
    v45 = 0;
    v52 = 1;
  }

  v20 = *(a1 + *(v19 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = a1;
  static Published.subscript.getter();

  v21 = v66;
  v23 = *(v20 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v22 = *(v20 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  *&v66 = 0x402C000000000000;
  (*(v42 + 104))(v10, enum case for Font.TextStyle.subheadline(_:), v44);
  sub_10004A578();

  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v13[v11[5]] = v21;
  v24 = &v13[v11[6]];
  *v24 = v23;
  *(v24 + 1) = v22;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v24[32] = 64;
  *&v13[v11[7]] = 0x3FE0000000000000;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v25 = v43;
  sub_1000C8DD8(v13, v43, type metadata accessor for AirDropDescriptionView);
  v26 = (v25 + *(v50 + 36));
  v27 = v71;
  v26[4] = v70;
  v26[5] = v27;
  v26[6] = v72;
  v28 = v67;
  *v26 = v66;
  v26[1] = v28;
  v29 = v69;
  v26[2] = v68;
  v26[3] = v29;
  v30 = v54;
  sub_100021A84(v25, v54, &qword_100174138, &unk_10011AE80);
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v31 = sub_1000077C8(&qword_100176DF0, &qword_10011F390);
  sub_1000C5524(v41, &v8[*(v31 + 44)]);
  v32 = v55;
  sub_100007BA4(v30, v55, &qword_100174138, &unk_10011AE80);
  v33 = v56;
  sub_100007BA4(v8, v56, &qword_100176DE8, &qword_10011F340);
  v34 = v45;
  *a2 = 0;
  *(a2 + 8) = v34;
  v35 = v46;
  *(a2 + 16) = v53;
  *(a2 + 24) = v35;
  v36 = v47;
  *(a2 + 32) = v51;
  *(a2 + 40) = v36;
  v37 = v48;
  *(a2 + 48) = v49;
  *(a2 + 56) = v37;
  *(a2 + 64) = v52;
  v38 = sub_1000077C8(&qword_100176DF8, &qword_10011F398);
  sub_100007BA4(v32, a2 + *(v38 + 48), &qword_100174138, &unk_10011AE80);
  sub_100007BA4(v33, a2 + *(v38 + 64), &qword_100176DE8, &qword_10011F340);
  sub_1000159AC(v8, &qword_100176DE8, &qword_10011F340);
  sub_1000159AC(v30, &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v33, &qword_100176DE8, &qword_10011F340);
  return sub_1000159AC(v32, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_1000C5524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v89 = a2;
  v81 = type metadata accessor for BorderedProminentButtonStyle();
  v97 = *(v81 - 8);
  __chkstk_darwin(v81);
  v91 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AirDropAskRequestView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v77 = v6;
  v94 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v95 = *(v94 - 8);
  __chkstk_darwin(v94);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = &v69 - v9;
  v90 = sub_1000077C8(&qword_100176E00, &qword_10011F3A0);
  __chkstk_darwin(v90);
  v86 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v69 - v12;
  v80 = sub_1000077C8(&qword_100176E08, &qword_10011F3A8);
  v96 = *(v80 - 8);
  __chkstk_darwin(v80);
  v85 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v69 - v16;
  v93 = sub_1000077C8(&qword_100176E10, &qword_10011F3B0) - 8;
  __chkstk_darwin(v93);
  v88 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v87 = &v69 - v19;
  __chkstk_darwin(v20);
  v82 = &v69 - v21;
  __chkstk_darwin(v22);
  v83 = &v69 - v23;
  __chkstk_darwin(v24);
  v26 = &v69 - v25;
  __chkstk_darwin(v27);
  v92 = &v69 - v28;
  LocalizedStringKey.init(stringLiteral:)();
  v72 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C83E8(a1, v72);
  v74 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = v74;
  v30 = swift_allocObject();
  v76 = type metadata accessor for AirDropAskRequestView;
  sub_1000C8DD8(&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for AirDropAskRequestView);
  v31 = v73;
  Button<>.init(_:action:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v32 = *(v95 + 32);
  v95 += 32;
  v75 = v32;
  v32(v13, v31, v94);
  v33 = &v13[*(v90 + 36)];
  v34 = v103;
  *(v33 + 4) = v102;
  *(v33 + 5) = v34;
  *(v33 + 6) = v104;
  v35 = v99;
  *v33 = v98;
  *(v33 + 1) = v35;
  v36 = v101;
  *(v33 + 2) = v100;
  *(v33 + 3) = v36;
  v37 = v91;
  BorderedProminentButtonStyle.init()();
  v73 = sub_1000C99F4();
  v71 = sub_1000C9AAC(&qword_100176E20, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v38 = v79;
  v39 = v81;
  View.buttonStyle<A>(_:)();
  v40 = *(v97 + 8);
  v97 += 8;
  v70 = v40;
  v40(v37, v39);
  sub_1000159AC(v13, &qword_100176E00, &qword_10011F3A0);
  v41 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v43 = *(v96 + 32);
  v96 += 32;
  v69 = v43;
  v44 = v80;
  v43(v26, v38, v80);
  v45 = &v26[*(v93 + 44)];
  *v45 = KeyPath;
  v45[1] = v41;
  sub_100021A84(v26, v92, &qword_100176E10, &qword_10011F3B0);
  LocalizedStringKey.init(stringLiteral:)();
  v46 = v72;
  sub_1000C83E8(v78, v72);
  v47 = v74;
  v48 = swift_allocObject();
  sub_1000C8DD8(v46, v48 + v47, v76);
  v49 = v84;
  Button<>.init(_:action:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v50 = v86;
  v75(v86, v49, v94);
  v51 = &v50[*(v90 + 36)];
  v52 = v50;
  v53 = v110;
  *(v51 + 4) = v109;
  *(v51 + 5) = v53;
  *(v51 + 6) = v111;
  v54 = v106;
  *v51 = v105;
  *(v51 + 1) = v54;
  v55 = v108;
  *(v51 + 2) = v107;
  *(v51 + 3) = v55;
  v56 = v91;
  BorderedProminentButtonStyle.init()();
  v57 = v85;
  View.buttonStyle<A>(_:)();
  v70(v56, v39);
  sub_1000159AC(v52, &qword_100176E00, &qword_10011F3A0);
  v58 = static Color.blue.getter();
  v59 = swift_getKeyPath();
  v60 = v82;
  v69(v82, v57, v44);
  v61 = (v60 + *(v93 + 44));
  *v61 = v59;
  v61[1] = v58;
  v62 = v83;
  sub_100021A84(v60, v83, &qword_100176E10, &qword_10011F3B0);
  v63 = v92;
  v64 = v87;
  sub_100007BA4(v92, v87, &qword_100176E10, &qword_10011F3B0);
  v65 = v88;
  sub_100007BA4(v62, v88, &qword_100176E10, &qword_10011F3B0);
  v66 = v89;
  sub_100007BA4(v64, v89, &qword_100176E10, &qword_10011F3B0);
  v67 = sub_1000077C8(&qword_100176E28, &qword_10011F3E8);
  sub_100007BA4(v65, v66 + *(v67 + 48), &qword_100176E10, &qword_10011F3B0);
  sub_1000159AC(v62, &qword_100176E10, &qword_10011F3B0);
  sub_1000159AC(v63, &qword_100176E10, &qword_10011F3B0);
  sub_1000159AC(v65, &qword_100176E10, &qword_10011F3B0);
  return sub_1000159AC(v64, &qword_100176E10, &qword_10011F3B0);
}

uint64_t sub_1000C5FC0(uint64_t a1, const char *a2, uint64_t (*a3)(void))
{
  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100176610);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
  }

  type metadata accessor for AirDropAskRequestView(0);
  return a3();
}

uint64_t sub_1000C60C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C615C, v3, v2);
}

uint64_t sub_1000C615C()
{

  type metadata accessor for AirDropAskRequestView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  static Published.subscript.setter();
  if (sub_100079F8C())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 32) = 1;
    static Published.subscript.setter();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C6268(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_1000C635C, v5, v4);
}

uint64_t sub_1000C635C()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1000C642C;
  v3 = *(v0 + 72);

  return SFAirDrop.AcceptAction.Single.accept(with:)(v3, v1);
}

uint64_t sub_1000C642C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_1000C66E8;
  }

  else
  {
    v8 = sub_1000C65C4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000C65C4()
{

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "permissionRequest accepted", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C66E8()
{
  v20 = v0;

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    v9 = sub_10003E81C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "permissionRequest accept failed {error: %s}", v4, 0xCu);
    sub_100007920(v5);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000C68B8(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1000C6950, v4, v3);
}

uint64_t sub_1000C6950()
{
  v1 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1000C6A14;

  return SFAirDrop.AcceptAction.Single.accept(with:)(v0 + 96, v1);
}

uint64_t sub_1000C6A14()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1000C6C44;
  }

  else
  {
    v5 = sub_1000C6B28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000C6B28()
{

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "permissionRequest accepted", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C6C44()
{
  v20 = v0;

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    v9 = sub_10003E81C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "permissionRequest accept failed {error: %s}", v4, 0xCu);
    sub_100007920(v5);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000C6E0C(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for SFAirDrop.ContactRequest();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_1000C6F00, v5, v4);
}

uint64_t sub_1000C6F00()
{
  v1 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1000C6FD0;
  v3 = *(v0 + 72);

  return SFAirDrop.AcceptAction.Single.accept(with:)(v3, v1);
}

uint64_t sub_1000C6FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_1000C9DB0;
  }

  else
  {
    v8 = sub_1000C9D38;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000C7168()
{
  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1000C7218;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_1000C7218()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1000C7490;
  }

  else
  {
    v4 = sub_1000C7374;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000C7374()
{

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "permissionRequest declined", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C7490()
{
  v20 = v0;

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100176610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    v9 = sub_10003E81C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "permissionRequest decline failed {error: %s}", v4, 0xCu);
    sub_100007920(v5);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000C765C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1000077C8(&qword_100176E38, &qword_10011F468);
  v23 = *(v3 - 8);
  v4 = v23;
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_1000077C8(&qword_100176E40, &qword_10011F470);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v10;
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  static Axis.Set.vertical.getter();
  v25 = a1;
  sub_1000199C8(&qword_100176E48, &qword_100176E38, &qword_10011F468, &protocol conformance descriptor for _ViewModifier_Content<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v14 = *(v4 + 16);
  v14(v6, a1, v3);
  v15 = *(v8 + 16);
  v15(v10, v13, v7);
  v16 = v24;
  v14(v24, v6, v3);
  v17 = &v16[*(sub_1000077C8(&qword_100176E50, &qword_10011F478) + 48)];
  v18 = v22;
  v15(v17, v22, v7);
  v19 = *(v8 + 8);
  v19(v13, v7);
  v19(v18, v7);
  return (*(v23 + 8))(v6, v3);
}

uint64_t sub_1000C7918@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = static Axis.Set.vertical.getter();
  v5 = sub_1000077C8(&qword_100176E30, &qword_10011F460);
  return sub_1000C765C(a1, &a2[*(v5 + 44)]);
}

unint64_t sub_1000C7978()
{
  result = qword_100176770;
  if (!qword_100176770)
  {
    sub_100007CCC(&qword_100176720, &qword_10011EB78);
    sub_1000C7A04();
    sub_1000C7EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176770);
  }

  return result;
}

unint64_t sub_1000C7A04()
{
  result = qword_100176778;
  if (!qword_100176778)
  {
    sub_100007CCC(&qword_100176718, &qword_10011EB70);
    sub_1000C7ABC();
    sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176778);
  }

  return result;
}

unint64_t sub_1000C7ABC()
{
  result = qword_100176780;
  if (!qword_100176780)
  {
    sub_100007CCC(&qword_100176758, &unk_10011EBC0);
    sub_1000C7B48();
    sub_1000C7DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176780);
  }

  return result;
}

unint64_t sub_1000C7B48()
{
  result = qword_100176788;
  if (!qword_100176788)
  {
    sub_100007CCC(&qword_100176748, &qword_10011EBA8);
    sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
    sub_1000C7F9C(&qword_1001767C8, &qword_100176730, &unk_10011EB88, sub_1000C7D14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176788);
  }

  return result;
}

unint64_t sub_1000C7C5C()
{
  result = qword_1001767A8;
  if (!qword_1001767A8)
  {
    sub_100007CCC(&qword_1001767B0, &qword_10011EC78);
    sub_1000199C8(&qword_1001767B8, &qword_1001767C0, &qword_10011EC80, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001767A8);
  }

  return result;
}

unint64_t sub_1000C7D44()
{
  result = qword_1001767E0;
  if (!qword_1001767E0)
  {
    sub_100007CCC(&qword_1001767E8, &qword_10011EC90);
    sub_1000199C8(&qword_1001767F0, &qword_1001767F8, &qword_10011EC98, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001767E0);
  }

  return result;
}

unint64_t sub_1000C7DFC()
{
  result = qword_100176800;
  if (!qword_100176800)
  {
    sub_100007CCC(&qword_100176728, &qword_10011EB80);
    sub_1000199C8(&qword_100176808, &qword_100176810, &qword_10011ECA0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176800);
  }

  return result;
}

unint64_t sub_1000C7EB4()
{
  result = qword_100176818;
  if (!qword_100176818)
  {
    sub_100007CCC(&qword_1001766F8, &qword_10011EB50);
    sub_1000C7F9C(&qword_100176820, &qword_100176700, &qword_10011EB58, sub_1000C7F6C);
    sub_1000C80D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176818);
  }

  return result;
}

uint64_t sub_1000C7F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C8020()
{
  result = qword_100176838;
  if (!qword_100176838)
  {
    sub_100007CCC(&qword_100176840, &qword_10011ECB0);
    sub_1000199C8(&qword_100176848, &qword_100176850, &qword_10011ECB8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176838);
  }

  return result;
}

unint64_t sub_1000C80D8()
{
  result = qword_100176858;
  if (!qword_100176858)
  {
    sub_100007CCC(&qword_1001766E8, &qword_10011EB40);
    sub_1000199C8(&qword_100176860, &qword_1001766E0, &qword_10011EB38, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176858);
  }

  return result;
}

unint64_t sub_1000C8190()
{
  result = qword_100176868;
  if (!qword_100176868)
  {
    sub_100007CCC(&qword_100176760, &qword_10011EBD0);
    sub_1000C7978();
    sub_1000C7DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176868);
  }

  return result;
}

unint64_t sub_1000C821C()
{
  result = qword_100176918;
  if (!qword_100176918)
  {
    sub_100007CCC(&qword_1001768D0, &qword_10011ED30);
    sub_1000199C8(&qword_100176920, &qword_100176928, &qword_10011ED78, &protocol conformance descriptor for HStack<A>);
    sub_1000C82D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176918);
  }

  return result;
}

unint64_t sub_1000C82D4()
{
  result = qword_100176930;
  if (!qword_100176930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176930);
  }

  return result;
}

unint64_t sub_1000C8330()
{
  result = qword_100176960;
  if (!qword_100176960)
  {
    sub_100007CCC(&qword_1001768E0, &qword_10011ED40);
    sub_1000199C8(&qword_100176968, &qword_100176890, &qword_10011ECF0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176960);
  }

  return result;
}

uint64_t sub_1000C83E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropAskRequestView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C8488()
{
  result = qword_100176A18;
  if (!qword_100176A18)
  {
    sub_100007CCC(&qword_100176A08, &qword_10011EE78);
    sub_1000C8514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176A18);
  }

  return result;
}

unint64_t sub_1000C8514()
{
  result = qword_100176A20;
  if (!qword_100176A20)
  {
    sub_100007CCC(&qword_100176A28, &qword_10011EE80);
    sub_100007CCC(&qword_100176A30, &qword_10011EE88);
    type metadata accessor for AirDropUIButtonStyle();
    sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176A20);
  }

  return result;
}

uint64_t sub_1000C8660()
{
  v1 = *(type metadata accessor for AirDropAskRequestView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000C4044(v2);
}

uint64_t sub_1000C86C0(uint64_t a1)
{
  v4 = *(type metadata accessor for AirDropAskRequestView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_1000C421C(a1, v1 + v5);
}

__n128 sub_1000C87E0@<Q0>(uint64_t a1@<X8>)
{
  sub_1000BDE6C(*(v2 + 24), &qword_100176A80, &qword_10011EF28, v6);
  v4 = *v7;
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 63) = *&v7[15];
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C8848()
{
  result = qword_100176AA0;
  if (!qword_100176AA0)
  {
    sub_100007CCC(&qword_100176A98, &qword_10011EF40);
    sub_1000C88D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AA0);
  }

  return result;
}

unint64_t sub_1000C88D4()
{
  result = qword_100176AA8;
  if (!qword_100176AA8)
  {
    sub_100007CCC(&qword_100176AB0, &qword_10011EF48);
    sub_1000C8960();
    sub_1000C89E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AA8);
  }

  return result;
}

unint64_t sub_1000C8960()
{
  result = qword_100176AB8;
  if (!qword_100176AB8)
  {
    sub_100007CCC(&qword_100176AC0, &qword_10011EF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AB8);
  }

  return result;
}

unint64_t sub_1000C89E4()
{
  result = qword_100176AC8;
  if (!qword_100176AC8)
  {
    sub_100007CCC(&qword_100176AD0, &qword_10011EF58);
    sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AC8);
  }

  return result;
}

uint64_t sub_1000C8AB8(uint64_t a1)
{
  v4 = *(sub_1000077C8(&qword_100176A80, &qword_10011EF28) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000C68B8(a1, v1 + v5);
}

uint64_t sub_1000C8BA0()
{
  v2 = *(type metadata accessor for AirDropAskRequestView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000167E4;

  return sub_1000C60C4(v0 + v3);
}

uint64_t sub_1000C8C6C()
{
  v1 = type metadata accessor for SFAirDrop.DeclineAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C8CF4()
{
  type metadata accessor for SFAirDrop.DeclineAction();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000167E4;

  return sub_1000C7168();
}

uint64_t sub_1000C8DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C8E58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AirDropAskRequestView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000C8EEC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t))
{
  v7 = *(type metadata accessor for AirDropAskRequestView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1000077C8(a1, a2) - 8);
  return a3(v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));
}

unint64_t sub_1000C8FC8()
{
  result = qword_100176BD8;
  if (!qword_100176BD8)
  {
    sub_100007CCC(&qword_100176B88, &qword_10011F0E8);
    sub_1000199C8(&qword_100176BE0, &qword_100176B50, &qword_10011F0B0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176BD8);
  }

  return result;
}

__n128 sub_1000C90C0@<Q0>(uint64_t a1@<X8>)
{
  sub_1000BDE6C(*(v2 + 24), &qword_100176C78, &qword_10011F1A0, v6);
  v4 = *v7;
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 63) = *&v7[15];
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C913C(uint64_t a1)
{
  v4 = *(sub_1000077C8(&qword_100176C78, &qword_10011F1A0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000C6E0C(a1, v1 + v5);
}

unint64_t sub_1000C9254()
{
  result = qword_100176D30;
  if (!qword_100176D30)
  {
    sub_100007CCC(&qword_100176CF0, &qword_10011F238);
    sub_1000199C8(&qword_100176D38, &qword_100176CB8, &qword_10011F200, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D30);
  }

  return result;
}

__n128 sub_1000C9360@<Q0>(uint64_t a1@<X8>)
{
  sub_1000BDE6C(*(v2 + 24), &unk_100173C98, &unk_10011A300, v6);
  v4 = *v7;
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 63) = *&v7[15];
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C93DC(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000C6268(a1, v1 + v5);
}

uint64_t sub_1000C94C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C94FC()
{
  v1 = type metadata accessor for AirDropAskRequestView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for SFAirDrop.DeclineAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  sub_1000077C8(&qword_100173070, &qword_100118EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_1000C96B8()
{
  v1 = *(type metadata accessor for AirDropAskRequestView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  return sub_1000BA074(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_1000C9790(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for AirDropAskRequestView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = sub_1000077C8(a1, a2);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = v2 + v7;
  sub_1000077C8(&qword_100173070, &qword_100118EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DynamicTypeSize();
    (*(*(v14 - 8) + 8))(v2 + v7, v14);
  }

  else
  {
  }

  v15 = (v7 + v8 + v11) & ~v11;

  (*(v10 + 8))(v2 + v15, v9);

  return _swift_deallocObject(v2, v15 + v12, v6 | v11 | 7);
}

unint64_t sub_1000C99F4()
{
  result = qword_100176E18;
  if (!qword_100176E18)
  {
    sub_100007CCC(&qword_100176E00, &qword_10011F3A0);
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176E18);
  }

  return result;
}

uint64_t sub_1000C9AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C9AFC()
{
  v1 = type metadata accessor for AirDropAskRequestView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1000077C8(&qword_100173070, &qword_100118EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C9C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1000077C8(&qword_100176E38, &qword_10011F468);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1000C9DB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100176E70);
  v1 = sub_100007D20(v0, qword_100176E70);
  if (qword_1001721F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000C9E80(void *a1)
{
  v2 = v1;
  if (qword_100172228 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100176E70);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "App delegate did finish launching: %@", v8, 0xCu);
    sub_1000CA3B0(v9);
  }

  NameDropIdentity.shared.unsafeMutableAddressor();
  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v2 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
}

id sub_1000CA258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  exit(v4);
}

uint64_t sub_1000CA3B0(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100172EB0, &qword_100119410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000CA418()
{
  result = qword_100176F28;
  if (!qword_100176F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100176F28);
  }

  return result;
}

unint64_t sub_1000CA464()
{
  result = qword_100176F30;
  if (!qword_100176F30)
  {
    sub_1000CA418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176F30);
  }

  return result;
}

void sub_1000CA4BC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000CA418();
    sub_1000CA464();
    Set.Iterator.init(_cocoa:)();
    v1 = v100;
    v2 = v101;
    v3 = v102;
    v4 = v103;
    v5 = v104;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v97 = v3;
  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v4;
  v11 = v5;
  v12 = v4;
  if (v5)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14)
    {
      while (1)
      {
        v98 = v13;
        v15 = v1;
        v16 = [v14 role];
        v17 = static UISceneSessionRole.activityListItem.getter();
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
        if (v18 == v21 && v20 == v22)
        {

          v20, v40, v41, v42, v43, v44, v45, v46;
          v23, v47, v48, v49, v50, v51, v52, v53;
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v20, v26, v27, v28, v29, v30, v31, v32;
          v23, v33, v34, v35, v36, v37, v38, v39;
          if ((v25 & 1) == 0)
          {
            sub_100026860(v15);

            return;
          }
        }

        v54 = [v14 persistentIdentifier];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v99 = v55;
        sub_10004BB74();
        v58 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
        v57, v59, v60, v61, v62, v63, v64, v65;
        v1 = v15;
        if (*v58->connection < 2uLL)
        {
          break;
        }

        v66 = *v58->appCornerIconProvider;

        v58, v67, v68, v69, v70, v71, v72, v73;
        v74 = static String._fromSubstring(_:)();
        v76 = v75;
        v66, v75, v77, v78, v79, v80, v81, v82;
        if (qword_100172150 != -1)
        {
          swift_once();
        }

        sub_100037940(v74, v76);

        v76, v83, v84, v85, v86, v87, v88, v89;
        v4 = v12;
        v5 = v98;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          sub_1000CA418();
          swift_dynamicCast();
          v14 = v99;
          v12 = v4;
          v13 = v5;
          if (v99)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      sub_100026860(v15);

      v58, v90, v91, v92, v93, v94, v95, v96;
    }

    else
    {
LABEL_28:
      sub_100026860(v1);
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_28;
      }

      v11 = *(v2 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000CA860()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100176F40);
  v1 = sub_100007D20(v0, qword_100176F40);
  if (qword_1001721F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000CAAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000CAB64(void *a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = qword_100172230;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_100176F40);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v15 = 136315138;
      v16 = [v8 description];
      v17 = v6;
      v18 = v2;
      v19 = v12;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v20;
      v12 = v19;
      v2 = v18;
      v6 = v17;
      v24 = sub_10003E81C(v23, v22, v53);
      v22, v25, v26, v27, v28, v29, v30, v31;
      *(v15 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "DefaultSceneDelegate: Received windowScene: %s. Hosting debugging UI for AirDropUI Launch Angel.", v15, 0xCu);
      sub_100007920(v52);
    }

    v32 = [objc_allocWithZone(type metadata accessor for SFSecureWindow()) initWithWindowScene:v8];
    v33 = objc_allocWithZone(sub_1000077C8(&unk_100176F90, &qword_10011F4D0));
    v34 = UIHostingController.init(rootView:)();
    v35 = v32;
    [v35 setRootViewController:v34];
    [v35 makeKeyAndVisible];
    v36 = *(v2 + OBJC_IVAR____TtC9AirDropUI20DefaultSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC9AirDropUI20DefaultSceneDelegate_window) = v35;

    if (qword_100172150 != -1)
    {
      swift_once();
    }

    v37 = qword_10017F1E0;
    sub_100083E84();
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = static Published.subscript.modify();
    v40 = v39;
    *v39, v39, v41, v42, v43, v44, v45, v46;
    *v40 = &_swiftEmptyDictionarySingleton;
    v38(v53, 0);

    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    v48 = swift_allocObject();
    *(v48 + 16) = v37;
    v49 = swift_allocObject();
    *(v49 + 16) = &unk_10011F520;
    *(v49 + 24) = v48;
    v50 = v37;
    static Task<>.noThrow(priority:operation:)();

    sub_1000CB188(v6);
  }
}

void sub_1000CAF8C(const char *a1)
{
  if (qword_100172230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100176F40);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_1000CB084()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CB0BC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BCF0;

  return sub_10002861C(v2);
}

uint64_t sub_1000CB150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CB188(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CB2D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&unk_100177BF0, &unk_100120630);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v36[-v8];
  v10 = a1[1];
  if (a1[9] >> 62)
  {
    v13 = a1[3];
    v12 = a1[4];
    v14 = a1[2];
    sub_1000E1814(a1, v49);
    v12, v15, v16, v17, v18, v19, v20, v21;
    v10, v22, v23, v24, v25, v26, v27, v28;
    LOBYTE(v42[0]) = 1;
    *&v44 = v14;
    *(&v44 + 1) = v13;
    *&v45 = 0x4051000000000000;
    v48 = 1;
  }

  else
  {
    v11 = *a1;

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v37) = v52;
    v36[8] = v54;
    LOBYTE(v42[0]) = 0;
    *&v44 = v11;
    *(&v44 + 1) = v10;
    *&v45 = v51;
    BYTE8(v45) = v52;
    *&v46 = v53;
    BYTE8(v46) = v54;
    v47 = v55;
    v48 = 0;
  }

  sub_1000077C8(&qword_100178250, &unk_100121070);
  sub_1000E184C();
  sub_100063CDC();
  _ConditionalContent<>.init(storage:)();
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v29 = sub_1000077C8(&qword_100177C18, &qword_100120640);
  sub_1000CB5DC(a1, &v9[*(v29 + 44)]);
  v39 = v49[2];
  v40 = v49[3];
  v41 = v50;
  v37 = v49[0];
  v38 = v49[1];
  sub_100007BA4(v9, v6, &unk_100177BF0, &unk_100120630);
  v30 = v40;
  v42[3] = v40;
  v31 = v41;
  v43 = v41;
  v33 = v37;
  v32 = v38;
  v42[1] = v38;
  v42[2] = v39;
  v42[0] = v37;
  *(a2 + 32) = v39;
  *(a2 + 48) = v30;
  *(a2 + 64) = v31;
  *a2 = v33;
  *(a2 + 16) = v32;
  v34 = sub_1000077C8(&qword_100177C20, &qword_100120648);
  sub_100007BA4(v6, a2 + *(v34 + 48), &unk_100177BF0, &unk_100120630);
  sub_100007BA4(v42, &v44, &qword_100177C28, &qword_100120650);
  sub_1000159AC(v9, &unk_100177BF0, &unk_100120630);
  sub_1000159AC(v6, &unk_100177BF0, &unk_100120630);
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v44 = v37;
  v45 = v38;
  return sub_1000159AC(&v44, &qword_100177C28, &qword_100120650);
}

uint64_t sub_1000CB5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v66 = sub_1000077C8(&qword_100177478, &qword_10011FCC8) - 8;
  __chkstk_darwin(v66);
  v67 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v64 - v5;
  v7 = sub_1000077C8(&qword_100177C30, &qword_100120658);
  __chkstk_darwin(v7 - 8);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v64 - v10;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v64 = v11;
  v12 = sub_1000077C8(&qword_100177C38, &qword_100120660);
  sub_1000CB990(a1, &v11[*(v12 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  static Font.headline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10004BBC8(v13, v15, (v17 & 1), v27, v28, v29, v30, v31);
  v19, v32, v33, v34, v35, v36, v37, v38;
  v69 = static Color.white.getter();
  v39 = Text.foregroundStyle<A>(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_10004BBC8(v20, v22, (v24 & 1), v44, v46, v47, v48, v49);

  v26, v50, v51, v52, v53, v54, v55, v56;
  v57 = *(v66 + 44);
  *&v6[v57] = swift_getKeyPath();
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  *v6 = v39;
  *(v6 + 1) = v41;
  v6[16] = v43 & 1;
  *(v6 + 3) = v45;
  v59 = v64;
  v58 = v65;
  sub_100007BA4(v64, v65, &qword_100177C30, &qword_100120658);
  v60 = v67;
  sub_100007BA4(v6, v67, &qword_100177478, &qword_10011FCC8);
  v61 = v68;
  sub_100007BA4(v58, v68, &qword_100177C30, &qword_100120658);
  v62 = sub_1000077C8(&qword_100177C40, &qword_100120668);
  sub_100007BA4(v60, v61 + *(v62 + 48), &qword_100177478, &qword_10011FCC8);
  sub_1000159AC(v6, &qword_100177478, &qword_10011FCC8);
  sub_1000159AC(v59, &qword_100177C30, &qword_100120658);
  sub_1000159AC(v60, &qword_100177478, &qword_10011FCC8);
  return sub_1000159AC(v58, &qword_100177C30, &qword_100120658);
}

void sub_1000CB990(uint64_t a1@<X0>, void *a2@<X8>)
{
  v186 = a2;
  v183 = sub_1000077C8(&qword_100177C48, &qword_100120670);
  __chkstk_darwin(v183);
  v185 = (&v177 - v3);
  v184 = sub_1000077C8(&qword_100177C50, &qword_100120678);
  __chkstk_darwin(v184);
  v5 = &v177 - v4;
  sub_1000077C8(&qword_100177C58, &qword_100120680);
  __chkstk_darwin(a1);
  __chkstk_darwin(v6);
  v11 = (&v177 - v10);
  v12 = *(a1 + 32);
  if (v7[9] >> 62)
  {
    v95 = v7[3];
    v96 = v7[1];
    v187[13] = *v7;
    v187[14] = v96;
    sub_1000E1814(v7, v187);
    sub_10004BB74();
    v97 = Text.init<A>(_:)();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v12, v98, v100, v102, v104, v105, v106, v107;
    v95, v108, v109, v110, v111, v112, v113, v114;
    LODWORD(v187[0]) = static HierarchicalShapeStyle.primary.getter();
    v115 = Text.foregroundStyle<A>(_:)();
    v117 = v116;
    v119 = v118;
    v121 = v120;
    sub_10004BBC8(v97, v99, (v101 & 1), v120, v122, v123, v124, v125);
    v103, v126, v127, v128, v129, v130, v131, v132;
    static Font.title2.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v133 = Text.font(_:)();
    v135 = v134;
    v137 = v136;
    v139 = v138;

    sub_10004BBC8(v115, v117, (v119 & 1), v140, v141, v142, v143, v144);
    v121, v145, v146, v147, v148, v149, v150, v151;
    sub_100078974(v133, v135, v137 & 1);

    sub_100078974(v133, v135, v137 & 1);

    sub_10004BBC8(v133, v135, (v137 & 1), v152, v153, v154, v155, v156);
    v139, v157, v158, v159, v160, v161, v162, v163;
    v164 = v185;
    *v185 = v133;
    v164[1] = v135;
    *(v164 + 16) = v137 & 1;
    v164[3] = v139;
    v164[4] = 0;
    *(v164 + 40) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100177C60, &qword_100120688);
    sub_1000199C8(&qword_100177C68, &qword_100177C50, &qword_100120678, &protocol conformance descriptor for TupleView<A>);
    sub_1000199C8(&qword_100177C70, &qword_100177C60, &qword_100120688, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v133, v135, (v137 & 1), v165, v166, v167, v168, v169);
    v139, v170, v171, v172, v173, v174, v175, v176;
  }

  else
  {
    v13 = v7[5];
    v187[0] = v12;
    v187[1] = v13;
    v182 = v8;
    v181 = v9;
    sub_10004BB74();

    v14 = Text.init<A>(_:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    LODWORD(v187[0]) = static HierarchicalShapeStyle.primary.getter();
    v21 = Text.foregroundStyle<A>(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_10004BBC8(v14, v16, (v18 & 1), v26, v28, v29, v30, v31);
    v20, v32, v33, v34, v35, v36, v37, v38;
    static Font.title2.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v39 = Text.font(_:)();
    v41 = v40;
    LOBYTE(v14) = v42;
    v180 = v43;

    sub_10004BBC8(v21, v23, (v25 & 1), v44, v45, v46, v47, v48);
    v27, v49, v50, v51, v52, v53, v54, v55;
    v56 = Image.init(systemName:)();
    v57 = (v11 + *(sub_1000077C8(&unk_1001778C0, &qword_100120038) + 36));
    v58 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
    v59 = enum case for Image.Scale.large(_:);
    v60 = type metadata accessor for Image.Scale();
    (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
    *v57 = swift_getKeyPath();
    *v11 = v56;
    v61 = (v11 + *(sub_1000077C8(&qword_100177B30, &qword_100120588) + 36));
    v62 = *(sub_1000077C8(&qword_100177B50, &qword_100120590) + 28);
    static SymbolRenderingMode.monochrome.getter();
    v63 = type metadata accessor for SymbolRenderingMode();
    (*(*(v63 - 8) + 56))(v61 + v62, 0, 1, v63);
    *v61 = swift_getKeyPath();
    v64 = static Color.white.getter();
    *(v11 + *(sub_1000077C8(&qword_100177C78, &qword_100120690) + 36)) = v64;
    v65 = *(v181 + 9);
    *(v11 + v65) = swift_getKeyPath();
    sub_1000077C8(&qword_100174C00, &qword_10011BD80);
    swift_storeEnumTagMultiPayload();
    v66 = v182;
    sub_100007BA4(v11, v182, &qword_100177C58, &qword_100120680);
    *v5 = v39;
    *(v5 + 1) = v41;
    v67 = v41;
    v68 = (v14 & 1);
    v5[16] = v68;
    v69 = v180;
    *(v5 + 3) = v180;
    *(v5 + 4) = 0;
    v5[40] = 1;
    v70 = sub_1000077C8(&qword_100177C80, &qword_100120698);
    sub_100007BA4(v66, &v5[*(v70 + 64)], &qword_100177C58, &qword_100120680);
    sub_100078974(v39, v67, v68);

    v181 = v11;
    v178 = v39;
    v179 = v67;
    sub_100078974(v39, v67, v68);

    sub_1000159AC(v66, &qword_100177C58, &qword_100120680);
    sub_10004BBC8(v39, v67, v68, v71, v72, v73, v74, v75);
    v69, v76, v77, v78, v79, v80, v81, v82;
    sub_100007BA4(v5, v185, &qword_100177C50, &qword_100120678);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100177C60, &qword_100120688);
    sub_1000199C8(&qword_100177C68, &qword_100177C50, &qword_100120678, &protocol conformance descriptor for TupleView<A>);
    sub_1000199C8(&qword_100177C70, &qword_100177C60, &qword_100120688, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v178, v179, v68, v83, v84, v85, v86, v87);
    v69, v88, v89, v90, v91, v92, v93, v94;
    sub_1000159AC(v5, &qword_100177C50, &qword_100120678);
    sub_1000159AC(v181, &qword_100177C58, &qword_100120680);
  }
}

uint64_t sub_1000CC208@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  v9[4] = *(v2 + 64);
  v9[5] = v4;
  v10 = *(v2 + 96);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v6 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v6;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  v7 = sub_1000077C8(&qword_100177BE0, &qword_100120620);
  sub_1000CB2D4(v9, a2 + *(v7 + 44));
  result = sub_1000077C8(&qword_100177BE8, &qword_100120628);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000CC2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100177B80, &qword_1001205D8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v81 - v9;
  v11 = sub_1000077C8(&qword_100177B70, &qword_1001205D0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v84 = &v81 - v14;
  (*(v4 + 16))(v6, a1, v3, v13);
  v15 = Text.init(_:)();
  v17 = v16;
  LOBYTE(a1) = v18;
  v20 = v19;
  static Font.headline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v21 = Text.font(_:)();
  v82 = v22;
  v83 = v21;
  LOBYTE(v6) = v23;
  v81 = v24;

  sub_10004BBC8(v15, v17, (a1 & 1), v25, v26, v27, v28, v29);
  v20, v30, v31, v32, v33, v34, v35, v36;
  LOBYTE(v15) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  LOBYTE(v20) = v6 & 1;
  v87 = v6 & 1;
  v86 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v88[3] + 7) = *(&v88[10] + 8);
  *(&v88[4] + 7) = *(&v88[11] + 8);
  *(&v88[5] + 7) = *(&v88[12] + 8);
  *(&v88[6] + 7) = *(&v88[13] + 8);
  *(v88 + 7) = *(&v88[7] + 8);
  *(&v88[1] + 7) = *(&v88[8] + 8);
  v45 = &v10[*(v8 + 44)];
  *(&v88[2] + 7) = *(&v88[9] + 8);
  v46 = *(type metadata accessor for RoundedRectangle() + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #30.0 }

  *v45 = _Q0;
  v54 = static Color.white.getter();
  v55 = sub_1000077C8(&qword_100177BB8, &qword_1001205F8);
  *&v45[*(v55 + 52)] = v54;
  *&v45[*(v55 + 56)] = 256;
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = &v45[*(sub_1000077C8(&qword_100177BB0, &qword_1001205F0) + 36)];
  *v59 = v56;
  v59[1] = v58;
  v60 = v82;
  *v10 = v83;
  *(v10 + 1) = v60;
  v10[16] = v20;
  *(v10 + 3) = v81;
  v10[32] = v15;
  *(v10 + 5) = v38;
  *(v10 + 6) = v40;
  *(v10 + 7) = v42;
  *(v10 + 8) = v44;
  v10[72] = 0;
  v61 = v88[2];
  *(v10 + 121) = v88[3];
  *(v10 + 105) = v61;
  v62 = v88[0];
  *(v10 + 89) = v88[1];
  *(v10 + 73) = v62;
  *(v10 + 23) = *(&v88[6] + 15);
  v63 = v88[5];
  *(v10 + 169) = v88[6];
  v64 = v88[4];
  *(v10 + 153) = v63;
  *(v10 + 137) = v64;
  LOBYTE(v56) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v84;
  sub_100021A84(v10, v84, &qword_100177B80, &qword_1001205D8);
  v74 = v73 + *(v12 + 44);
  *v74 = v56;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  static Color.black.getter();
  v75 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v77 = v73;
  v78 = v85;
  sub_100021A84(v77, v85, &qword_100177B70, &qword_1001205D0);
  result = sub_1000077C8(&qword_100177B58, &qword_1001205C8);
  v80 = (v78 + *(result + 36));
  *v80 = KeyPath;
  v80[1] = v75;
  return result;
}

uint64_t sub_1000CC754(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000DDA5C(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShareableContentActionButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1000DDBAC(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for ShareableContentActionButton);
  v8 = v1;
  sub_1000077C8(&qword_100177B58, &qword_1001205C8);
  sub_1000E1508();
  return Button.init(action:label:)();
}

uint64_t sub_1000CC8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v40 = enum case for Image.ResizingMode.stretch(_:);
  v39 = *(v5 + 104);
  v39(v7);
  v44 = Image.resizable(capInsets:resizingMode:)();

  v38 = *(v5 + 8);
  v38(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v60) = 1;
  *&v49[3] = *&v49[27];
  *&v49[11] = *&v49[35];
  *&v49[19] = *&v49[43];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v60 = String.init(localized:table:bundle:locale:comment:)();
  v61 = v8;
  sub_10004BB74();
  v9 = Text.init<A>(_:)();
  v42 = v10;
  v43 = v11;
  v41 = v12;
  Image.init(systemName:)();
  (v39)(v7, v40, v4);
  v13 = Image.resizable(capInsets:resizingMode:)();

  v38(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v48[6] = *&v49[51];
  *&v48[22] = *&v49[59];
  *&v48[38] = v50;
  v51[0] = v44;
  v51[1] = 0;
  *v52 = 1;
  *&v52[48] = *&v49[23];
  v53[0] = v13;
  *&v52[34] = *&v49[16];
  *&v52[18] = *&v49[8];
  *&v52[2] = *v49;
  v53[1] = 0;
  *v54 = 1;
  *&v54[48] = *(&v50 + 1);
  v14 = *&v48[32];
  *&v54[34] = *&v48[32];
  v15 = *&v48[16];
  *&v54[18] = *&v48[16];
  v16 = *v48;
  *&v54[2] = *v48;
  *(v45 + 7) = v13;
  *(&v45[4] + 7) = *&v54[48];
  *(&v45[3] + 7) = *&v54[32];
  *(&v45[2] + 7) = *&v54[16];
  *(&v45[1] + 7) = *v54;
  v17 = v44;
  v18 = *v52;
  v19 = *&v52[32];
  *(a1 + 32) = *&v52[16];
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  v20 = v45[1];
  *(a1 + 113) = v45[0];
  *(a1 + 176) = *(&v45[3] + 15);
  v21 = v45[2];
  *(a1 + 161) = v45[3];
  *(a1 + 145) = v21;
  LOBYTE(v60) = 1;
  v22 = (v41 & 1);
  v47 = v41 & 1;
  v46 = 1;
  *(a1 + 64) = *&v52[48];
  *(a1 + 72) = v9;
  v24 = v42;
  v23 = v43;
  *(a1 + 80) = v42;
  *(a1 + 88) = v22;
  *(a1 + 96) = v23;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 129) = v20;
  v55[0] = v13;
  v55[1] = 0;
  v56 = 1;
  *&v59[14] = *&v48[46];
  *v59 = v14;
  v58 = v15;
  v57 = v16;
  sub_100007BA4(v51, &v60, &qword_100173590, &unk_100119660);
  sub_100078974(v9, v24, v22);

  sub_100007BA4(v53, &v60, &qword_100173590, &unk_100119660);
  sub_1000159AC(v55, &qword_100173590, &unk_100119660);
  sub_10004BBC8(v9, v24, v22, v25, v26, v27, v28, v29);
  v23, v30, v31, v32, v33, v34, v35, v36;
  v60 = v44;
  v61 = 0;
  v62 = 1;
  v63 = *v49;
  v64 = *&v49[8];
  *v65 = *&v49[16];
  *&v65[14] = *&v49[23];
  return sub_1000159AC(&v60, &qword_100173590, &unk_100119660);
}

double sub_1000CCE4C@<D0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v49 = 1;
  a1(&v36);
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v55 = v40;
  v56 = v41;
  v57 = v42;
  v58 = v43;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v63[8] = v44;
  v63[9] = v45;
  v63[10] = v46;
  v63[11] = v47;
  v63[4] = v40;
  v63[5] = v41;
  v63[6] = v42;
  v63[7] = v43;
  v63[0] = v36;
  v63[1] = v37;
  v63[2] = v38;
  v63[3] = v39;
  sub_100007BA4(&v51, v35, &qword_100177BC0, &qword_100120600);
  sub_1000159AC(v63, &qword_100177BC0, &qword_100120600);
  *&v48[135] = v59;
  *&v48[151] = v60;
  *&v48[167] = v61;
  *&v48[183] = v62;
  *&v48[71] = v55;
  *&v48[87] = v56;
  *&v48[103] = v57;
  *&v48[119] = v58;
  *&v48[7] = v51;
  *&v48[23] = v52;
  *&v48[39] = v53;
  *&v48[55] = v54;
  v5 = v49;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v50 = 0;
  v14 = (a2 + *(sub_1000077C8(&qword_100177BC8, &qword_100120608) + 36));
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #30.0 }

  *v14 = _Q0;
  v14[*(sub_1000077C8(&unk_100177BD0, &unk_100120610) + 36)] = 0;
  v23 = *&v48[128];
  *(a2 + 161) = *&v48[144];
  v24 = *&v48[176];
  *(a2 + 177) = *&v48[160];
  *(a2 + 193) = v24;
  v25 = *&v48[64];
  *(a2 + 97) = *&v48[80];
  v26 = *&v48[112];
  *(a2 + 113) = *&v48[96];
  *(a2 + 129) = v26;
  *(a2 + 145) = v23;
  v27 = *v48;
  *(a2 + 33) = *&v48[16];
  v28 = *&v48[48];
  *(a2 + 49) = *&v48[32];
  *(a2 + 65) = v28;
  *(a2 + 81) = v25;
  *(a2 + 17) = v27;
  v29 = v40;
  v30 = v41;
  v31 = v38;
  *(a2 + 264) = v39;
  *(a2 + 280) = v29;
  v32 = v42;
  *(a2 + 296) = v30;
  *(a2 + 312) = v32;
  result = *&v36;
  v34 = v37;
  *(a2 + 216) = v36;
  *(a2 + 232) = v34;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 208) = *&v48[191];
  *(a2 + 248) = v31;
  *(a2 + 328) = a1;
  *(a2 + 332) = *(v35 + 3);
  *(a2 + 329) = v35[0];
  *(a2 + 336) = v7;
  *(a2 + 344) = v9;
  *(a2 + 352) = v11;
  *(a2 + 360) = v13;
  *(a2 + 368) = 0;
  return result;
}

uint64_t sub_1000CD240@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v40 = enum case for Image.ResizingMode.stretch(_:);
  v39 = *(v5 + 104);
  v39(v7);
  v44 = Image.resizable(capInsets:resizingMode:)();

  v38 = *(v5 + 8);
  v38(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v60) = 1;
  *&v49[3] = *&v49[27];
  *&v49[11] = *&v49[35];
  *&v49[19] = *&v49[43];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v60 = String.init(localized:table:bundle:locale:comment:)();
  v61 = v8;
  sub_10004BB74();
  v9 = Text.init<A>(_:)();
  v42 = v10;
  v43 = v11;
  v41 = v12;
  Image.init(systemName:)();
  (v39)(v7, v40, v4);
  v13 = Image.resizable(capInsets:resizingMode:)();

  v38(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v48[6] = *&v49[51];
  *&v48[22] = *&v49[59];
  *&v48[38] = v50;
  v51[0] = v44;
  v51[1] = 0;
  *v52 = 1;
  *&v52[48] = *&v49[23];
  v53[0] = v13;
  *&v52[34] = *&v49[16];
  *&v52[18] = *&v49[8];
  *&v52[2] = *v49;
  v53[1] = 0;
  *v54 = 1;
  *&v54[48] = *(&v50 + 1);
  v14 = *&v48[32];
  *&v54[34] = *&v48[32];
  v15 = *&v48[16];
  *&v54[18] = *&v48[16];
  v16 = *v48;
  *&v54[2] = *v48;
  *(v45 + 7) = v13;
  *(&v45[4] + 7) = *&v54[48];
  *(&v45[3] + 7) = *&v54[32];
  *(&v45[2] + 7) = *&v54[16];
  *(&v45[1] + 7) = *v54;
  v17 = v44;
  v18 = *v52;
  v19 = *&v52[32];
  *(a1 + 32) = *&v52[16];
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  v20 = v45[1];
  *(a1 + 113) = v45[0];
  *(a1 + 176) = *(&v45[3] + 15);
  v21 = v45[2];
  *(a1 + 161) = v45[3];
  *(a1 + 145) = v21;
  LOBYTE(v60) = 1;
  v22 = (v41 & 1);
  v47 = v41 & 1;
  v46 = 1;
  *(a1 + 64) = *&v52[48];
  *(a1 + 72) = v9;
  v24 = v42;
  v23 = v43;
  *(a1 + 80) = v42;
  *(a1 + 88) = v22;
  *(a1 + 96) = v23;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 129) = v20;
  v55[0] = v13;
  v55[1] = 0;
  v56 = 1;
  *&v59[14] = *&v48[46];
  *v59 = v14;
  v58 = v15;
  v57 = v16;
  sub_100007BA4(v51, &v60, &qword_100173590, &unk_100119660);
  sub_100078974(v9, v24, v22);

  sub_100007BA4(v53, &v60, &qword_100173590, &unk_100119660);
  sub_1000159AC(v55, &qword_100173590, &unk_100119660);
  sub_10004BBC8(v9, v24, v22, v25, v26, v27, v28, v29);
  v23, v30, v31, v32, v33, v34, v35, v36;
  v60 = v44;
  v61 = 0;
  v62 = 1;
  v63 = *v49;
  v64 = *&v49[8];
  *v65 = *&v49[16];
  *&v65[14] = *&v49[23];
  return sub_1000159AC(&v60, &qword_100173590, &unk_100119660);
}

uint64_t sub_1000CD794@<X0>(void *a1@<X8>)
{
  v40[1] = a1;
  v40[0] = sub_1000077C8(&qword_1001779F0, &qword_1001204B0);
  __chkstk_darwin(v40[0]);
  v3 = (v40 - v2);
  v4 = sub_1000077C8(&qword_1001779F8, &qword_1001204B8);
  __chkstk_darwin(v4);
  v6 = v40 - v5;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000077C8(&qword_100177A00, &qword_1001204C0);
  __chkstk_darwin(v11);
  v13 = v40 - v12;
  v14 = v1[6];
  if (v14)
  {
    v15 = v14;
    Image.init(uiImage:)();
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v16 = Image.resizable(capInsets:resizingMode:)();

    (*(v8 + 8))(v10, v7);
    v17 = &v13[*(sub_1000077C8(&unk_100177A30, &qword_1001204D8) + 36)];
    v18 = *(type metadata accessor for RoundedRectangle() + 20);
    v19 = enum case for RoundedCornerStyle.continuous(_:);
    v20 = type metadata accessor for RoundedCornerStyle();
    (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
    __asm { FMOV            V0.2D, #15.0 }

    *v17 = _Q0;
    *&v17[*(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)] = 256;
    *v13 = v16;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    LOBYTE(v19) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v13[*(sub_1000077C8(&qword_100177A20, &qword_1001204D0) + 36)];
    *v34 = v19;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    static Color.black.getter();
    v35 = Color.opacity(_:)();

    v36 = &v13[*(v11 + 36)];
    *v36 = v35;
    *(v36 + 8) = xmmword_10011F540;
    *(v36 + 3) = 0x4010000000000000;
    sub_100007BA4(v13, v6, &qword_100177A00, &qword_1001204C0);
    swift_storeEnumTagMultiPayload();
    sub_1000E0C94();
    sub_1000199C8(&qword_100177A48, &qword_1001779F0, &qword_1001204B0, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();

    return sub_1000159AC(v13, &qword_100177A00, &qword_1001204C0);
  }

  else
  {
    *v3 = static Alignment.center.getter();
    v3[1] = v38;
    v39 = sub_1000077C8(&qword_100177A08, &qword_1001204C8);
    sub_1000CDC68(v1, v3 + *(v39 + 44));
    sub_100007BA4(v3, v6, &qword_1001779F0, &qword_1001204B0);
    swift_storeEnumTagMultiPayload();
    sub_1000E0C94();
    sub_1000199C8(&qword_100177A48, &qword_1001779F0, &qword_1001204B0, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000159AC(v3, &qword_1001779F0, &qword_1001204B0);
  }
}

uint64_t sub_1000CDC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v172 = a2;
  v168 = sub_1000077C8(&qword_100177A50, &unk_100121550);
  __chkstk_darwin(v168);
  v153 = (&v153 - v2);
  v161 = sub_1000077C8(&qword_100177A58, &qword_1001204F0);
  __chkstk_darwin(v161);
  v162 = (&v153 - v3);
  v157 = sub_1000077C8(&qword_100177A60, &qword_1001204F8);
  __chkstk_darwin(v157);
  v156 = &v153 - v4;
  v160 = sub_1000077C8(&qword_100177A68, &unk_100120500);
  __chkstk_darwin(v160);
  v159 = &v153 - v5;
  v6 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  __chkstk_darwin(v6 - 8);
  v167 = &v153 - v7;
  v158 = sub_1000077C8(&qword_100177A78, &qword_100120510);
  __chkstk_darwin(v158);
  v155 = (&v153 - v8);
  v9 = sub_1000077C8(&qword_100177A80, &qword_100120518);
  __chkstk_darwin(v9 - 8);
  v171 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v170 = &v153 - v12;
  v13 = type metadata accessor for RoundedRectangle();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1000077C8(&qword_100177A88, &qword_100120520) - 8;
  __chkstk_darwin(v165);
  v169 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v153 - v19;
  v21 = *(v14 + 28);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v164) = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  v24 = *(*(v23 - 8) + 104);
  v24(&v16[v21], v22, v23);
  __asm { FMOV            V0.2D, #15.0 }

  v163 = _Q0;
  *v16 = _Q0;
  v154 = objc_opt_self();
  v30 = [v154 tertiaryLabelColor];
  Color.init(_:)();
  v31 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_1000DDA5C(v16, v20, &type metadata accessor for RoundedRectangle);
  v32 = *&v173 * 0.5;
  v33 = &v20[*(sub_1000077C8(&qword_100177A90, &qword_100120528) + 68)];
  sub_1000DDA5C(v16, v33, &type metadata accessor for RoundedRectangle);
  *(v33 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v32;
  v34 = v33 + *(sub_1000077C8(&qword_100177A98, &qword_100120530) + 36);
  v35 = v174;
  *v34 = v173;
  *(v34 + 16) = v35;
  *(v34 + 32) = v175;
  v36 = sub_1000077C8(&qword_100177AA0, &qword_100120538);
  *(v33 + *(v36 + 52)) = v31;
  *(v33 + *(v36 + 56)) = 256;
  v37 = static Alignment.center.getter();
  v39 = v38;
  sub_1000E0E64(v16, &type metadata accessor for RoundedRectangle);
  v40 = (v33 + *(sub_1000077C8(&qword_100177AA8, &qword_100120540) + 36));
  *v40 = v37;
  v40[1] = v39;
  v41 = v20;
  v42 = &v20[*(sub_1000077C8(&qword_100177AB0, &qword_100120548) + 36)];
  v24(&v42[*(v14 + 28)], v164, v23);
  *v42 = v163;
  v43 = &v42[*(sub_1000077C8(&qword_100177858, &qword_10011FFF0) + 36)];
  v184[0] = xmmword_10011F550;
  v184[1] = xmmword_10011F560;
  v184[2] = xmmword_10011F570;
  v184[3] = xmmword_10011F580;
  v164 = xmmword_10011F590;
  v184[4] = xmmword_10011F590;
  View._colorMatrix(_:)();
  v44 = &v43[*(sub_1000077C8(&qword_100177860, &qword_10011FFF8) + 36)];
  *v44 = 0x4069000000000000;
  v44[8] = 0;
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = &v42[*(sub_1000077C8(&qword_100177720, &qword_10011FF08) + 36)];
  *v48 = v45;
  v48[1] = v47;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = &v20[*(sub_1000077C8(&qword_100177AB8, &qword_100120550) + 36)];
  v50 = v177;
  *v49 = v176;
  *(v49 + 1) = v50;
  *(v49 + 2) = v178;
  static Color.black.getter();
  v51 = Color.opacity(_:)();

  v52 = &v20[*(v165 + 44)];
  *v52 = v51;
  v53 = v166;
  *(v52 + 8) = xmmword_10011F540;
  *(v52 + 3) = 0x4010000000000000;
  v54 = v53[3];
  sub_1000078DC(v53, v54);
  if (sub_10008C9EC(v54))
  {
    v55 = Image.init(systemName:)();
    sub_1000077C8(&qword_100177AE8, &unk_100120568);
    v179 = xmmword_10011F5A0;
    v180 = xmmword_10011F5B0;
    v181 = xmmword_10011F5C0;
    v182 = xmmword_10011F5D0;
    v183 = v164;
    v56 = v155;
    View._colorMatrix(_:)();
    *v56 = v55;
    static Font.Weight.medium.getter();
    v57 = enum case for Font.Design.default(_:);
    v58 = type metadata accessor for Font.Design();
    v59 = *(v58 - 8);
    v60 = v167;
    (*(v59 + 104))(v167, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = static Font.system(size:weight:design:)();
    sub_1000159AC(v60, &qword_100177A70, &qword_10011AC50);
    KeyPath = swift_getKeyPath();
    v63 = (v56 + *(v158 + 36));
    *v63 = KeyPath;
    v63[1] = v61;
    sub_100007BA4(v56, v156, &qword_100177A78, &qword_100120510);
    swift_storeEnumTagMultiPayload();
    sub_1000E0F50();
    sub_1000E10C0();
    v64 = v159;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v64, v162, &qword_100177A68, &unk_100120500);
    swift_storeEnumTagMultiPayload();
    sub_1000E0EC4();
    v65 = v170;
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v64, &qword_100177A68, &unk_100120500);
    sub_1000159AC(v56, &qword_100177A78, &qword_100120510);
    v66 = 0;
    v67 = v65;
  }

  else
  {
    v68 = v167;
    v69 = v168;
    v70 = v53[3];
    v71 = v53[4];
    sub_1000078DC(v53, v70);
    sub_10008B7C8(v70, v71);
    if (v72)
    {
      v73 = Image.init(systemName:)();
      v74 = sub_1000077C8(&unk_1001778C0, &qword_100120038);
      v75 = v153;
      v76 = (v153 + *(v74 + 36));
      v77 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
      v78 = enum case for Image.Scale.large(_:);
      v79 = type metadata accessor for Image.Scale();
      (*(*(v79 - 8) + 104))(v76 + v77, v78, v79);
      *v76 = swift_getKeyPath();
      *v75 = v73;
      v80 = (v75 + *(sub_1000077C8(&qword_100177B30, &qword_100120588) + 36));
      v81 = *(sub_1000077C8(&qword_100177B50, &qword_100120590) + 28);
      static SymbolRenderingMode.monochrome.getter();
      v82 = type metadata accessor for SymbolRenderingMode();
      (*(*(v82 - 8) + 56))(v80 + v81, 0, 1, v82);
      *v80 = swift_getKeyPath();
      static Font.Weight.medium.getter();
      v83 = enum case for Font.Design.default(_:);
      v84 = type metadata accessor for Font.Design();
      v85 = *(v84 - 8);
      (*(v85 + 104))(v68, v83, v84);
      (*(v85 + 56))(v68, 0, 1, v84);
      v86 = static Font.system(size:weight:design:)();
      sub_1000159AC(v68, &qword_100177A70, &qword_10011AC50);
      v87 = swift_getKeyPath();
      v88 = (v75 + *(sub_1000077C8(&qword_100177B20, &qword_100120580) + 36));
      *v88 = v87;
      v88[1] = v86;
      v89 = [v154 quaternaryLabelColor];
      v90 = Color.init(_:)();
      v91 = swift_getKeyPath();
      v92 = (v75 + *(v69 + 36));
      *v92 = v91;
      v92[1] = v90;
      sub_100007BA4(v75, v156, &qword_100177A50, &unk_100121550);
      swift_storeEnumTagMultiPayload();
      sub_1000E0F50();
      sub_1000E10C0();
      v93 = v159;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v93, v162, &qword_100177A68, &unk_100120500);
      swift_storeEnumTagMultiPayload();
      sub_1000E0EC4();
      v67 = v170;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v93, &qword_100177A68, &unk_100120500);
      sub_1000159AC(v75, &qword_100177A50, &unk_100121550);
    }

    else
    {
      v94 = v53[3];
      v95 = v53[4];
      sub_1000078DC(v53, v94);
      v96 = sub_10008BC30(v94, v95);
      if (!v97)
      {
        v66 = 1;
        v67 = v170;
        goto LABEL_8;
      }

      *&v179 = v96;
      *(&v179 + 1) = v97;
      sub_10004BB74();
      v98 = Text.init<A>(_:)();
      v165 = v99;
      v166 = v98;
      v101 = v100;
      v103 = v102;
      static Font.Weight.medium.getter();
      v104 = enum case for Font.Design.default(_:);
      v105 = type metadata accessor for Font.Design();
      v106 = *(v105 - 8);
      (*(v106 + 104))(v68, v104, v105);
      (*(v106 + 56))(v68, 0, 1, v105);
      static Font.system(size:weight:design:)();
      v168 = v41;
      sub_1000159AC(v68, &qword_100177A70, &qword_10011AC50);
      v107 = v165;
      v108 = v166;
      v109 = Text.font(_:)();
      v111 = v110;
      LOBYTE(v106) = v112;
      v114 = v113;

      sub_10004BBC8(v108, v101, (v103 & 1), v115, v116, v117, v118, v119);
      v107, v120, v121, v122, v123, v124, v125, v126;
      v127 = [v154 quaternaryLabelColor];
      Color.init(_:)();
      v128 = Text.foregroundColor(_:)();
      v130 = v129;
      LOBYTE(v101) = v131;
      v133 = v132;

      sub_10004BBC8(v109, v111, (v106 & 1), v134, v135, v136, v137, v138);
      v114, v139, v140, v141, v142, v143, v144, v145;
      v146 = v162;
      *v162 = v128;
      v146[1] = v130;
      *(v146 + 16) = v101 & 1;
      v146[3] = v133;
      v41 = v168;
      swift_storeEnumTagMultiPayload();
      sub_1000E0EC4();
      v67 = v170;
      _ConditionalContent<>.init(storage:)();
    }

    v66 = 0;
  }

LABEL_8:
  v147 = sub_1000077C8(&qword_100177AC0, &qword_100120558);
  (*(*(v147 - 8) + 56))(v67, v66, 1, v147);
  v148 = v169;
  sub_100007BA4(v41, v169, &qword_100177A88, &qword_100120520);
  v149 = v171;
  sub_100007BA4(v67, v171, &qword_100177A80, &qword_100120518);
  v150 = v172;
  sub_100007BA4(v148, v172, &qword_100177A88, &qword_100120520);
  v151 = sub_1000077C8(&qword_100177AC8, &qword_100120560);
  sub_100007BA4(v149, v150 + *(v151 + 48), &qword_100177A80, &qword_100120518);
  sub_1000159AC(v67, &qword_100177A80, &qword_100120518);
  sub_1000159AC(v41, &qword_100177A88, &qword_100120520);
  sub_1000159AC(v149, &qword_100177A80, &qword_100120518);
  return sub_1000159AC(v148, &qword_100177A88, &qword_100120520);
}

Swift::Int sub_1000CECA0@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  result = Hasher._finalize()();
  *a1 = result;
  return result;
}

BOOL sub_1000CECF8()
{
  v1 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2];
  v4 = *(v0 + 176);
  v8[16] = *(v0 + 168);
  v9 = v4;
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  if (v8[15] != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) == 1;
  sub_1000159AC(v3, &qword_100174328, &qword_10011AF08);
  return v6;
}

void sub_1000CEE60()
{
  v1 = sub_1000077C8(&qword_1001778E8, &qword_1001200C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2 - 8];
  v4 = *(v0 + 160);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      sub_100007878(v7, v10);
      sub_1000077C8(&unk_1001778F0, &qword_10011E000);
      started = type metadata accessor for StartCollaborationAction(0);
      if (swift_dynamicCast())
      {
        (*(*(started - 8) + 56))(v3, 0, 1, started);
        sub_1000159AC(v3, &qword_1001778E8, &qword_1001200C0);
        return;
      }

      ++v6;
      (*(*(started - 8) + 56))(v3, 1, 1, started);
      sub_1000159AC(v3, &qword_1001778E8, &qword_1001200C0);
      v7 += 40;
      if (v5 == v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000CF028()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 && (v2 = [v6 createCollaborationFooterViewModel], swift_unknownObjectRelease(), v2) && (v3 = objc_msgSend(v2, "optionsSummary"), v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_1000CF1EC()
{
  v1 = sub_1000077C8(&qword_1001778E0, &qword_1001200B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v6 = &v21[-v5 - 8];
  v7 = type metadata accessor for PersonNameComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100007878(v0 + 120, v21);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_7:
    sub_1000159AC(v6, &qword_1001778E0, &qword_1001200B8);
    return 0;
  }

  v11 = v20;
  v12 = [v20 content];

  v13 = [v12 initiatorNameComponents];
  if (v13)
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v8 + 56))(v3, v14, 1, v7);
  sub_100021A84(v3, v6, &qword_1001778E0, &qword_1001200B8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_7;
  }

  (*(v8 + 32))(v10, v6, v7);
  v16 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v18 = [v16 stringFromPersonNameComponents:isa];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v8 + 8))(v10, v7);
  return v19;
}

uint64_t sub_1000CF51C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_1000077C8(&qword_100177228, &qword_10011FAC8);
  __chkstk_darwin(v2);
  v4 = (&v17 - v3);
  *v4 = static Alignment.center.getter();
  v4[1] = v5;
  v6 = sub_1000077C8(&qword_100177230, &qword_10011FAD0);
  sub_1000CF780(v1, v4 + *(v6 + 44));
  v7 = *(v1 + 208);
  LOBYTE(v33) = *(v1 + 200);
  *(&v33 + 1) = v7;
  sub_1000077C8(&qword_100177238, &qword_10011FAD8);
  State.projectedValue.getter();
  v33 = v18;
  v34 = v19;
  sub_1000DDCDC(v1, &v18);
  v8 = swift_allocObject();
  v9 = v31;
  *(v8 + 208) = v30;
  *(v8 + 224) = v9;
  *(v8 + 240) = v32;
  v10 = v27;
  *(v8 + 144) = v26;
  *(v8 + 160) = v10;
  v11 = v29;
  *(v8 + 176) = v28;
  *(v8 + 192) = v11;
  v12 = v23;
  *(v8 + 80) = v22;
  *(v8 + 96) = v12;
  v13 = v25;
  *(v8 + 112) = v24;
  *(v8 + 128) = v13;
  v14 = v19;
  *(v8 + 16) = v18;
  *(v8 + 32) = v14;
  v15 = v21;
  *(v8 + 48) = v20;
  *(v8 + 64) = v15;
  sub_1000077C8(&qword_100177240, &qword_10011FAE0);
  sub_1000199C8(&qword_100177248, &qword_100177228, &qword_10011FAC8, &protocol conformance descriptor for ZStack<A>);
  sub_1000DDD1C();
  sub_1000DDD70();
  View.sheet<A, B>(item:onDismiss:content:)();

  return sub_1000159AC(v4, &qword_100177228, &qword_10011FAC8);
}

uint64_t sub_1000CF780@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = sub_1000077C8(&qword_1001772D0, &qword_10011FB70);
  __chkstk_darwin(v3);
  v5 = &v77 - v4;
  v82 = sub_1000077C8(&qword_1001772D8, &qword_10011FB78);
  v86 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v77 - v8;
  v9 = sub_1000077C8(&qword_1001772E0, &qword_10011FB80);
  v79 = *(v9 - 8);
  v10 = v79;
  v80 = v9;
  __chkstk_darwin(v9);
  v84 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v77 - v13;
  v103 = sub_1000CECF8();
  sub_1000DDCDC(a1, &v88);
  v15 = swift_allocObject();
  v16 = v101;
  *(v15 + 208) = v100;
  *(v15 + 224) = v16;
  *(v15 + 240) = v102;
  v17 = v97;
  *(v15 + 144) = v96;
  *(v15 + 160) = v17;
  v18 = v99;
  *(v15 + 176) = v98;
  *(v15 + 192) = v18;
  v19 = v93;
  *(v15 + 80) = v92;
  *(v15 + 96) = v19;
  v20 = v95;
  *(v15 + 112) = v94;
  *(v15 + 128) = v20;
  v21 = v89;
  *(v15 + 16) = v88;
  *(v15 + 32) = v21;
  v22 = v91;
  *(v15 + 48) = v90;
  *(v15 + 64) = v22;
  sub_1000DDF80();
  v78 = v14;
  View.onTapGesture(count:perform:)();

  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v23 = sub_1000077C8(&qword_1001772F0, &qword_10011FB88);
  sub_1000D0238(a1, &v5[*(v23 + 44)]);
  v24 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v5[*(sub_1000077C8(&qword_1001772F8, &qword_10011FB90) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v5[*(sub_1000077C8(&qword_100177300, &qword_10011FB98) + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = &v5[*(sub_1000077C8(&qword_100177308, &qword_10011FBA0) + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_1000DDCDC(a1, &v88);
  v54 = swift_allocObject();
  v55 = v101;
  *(v54 + 208) = v100;
  *(v54 + 224) = v55;
  *(v54 + 240) = v102;
  v56 = v97;
  *(v54 + 144) = v96;
  *(v54 + 160) = v56;
  v57 = v99;
  *(v54 + 176) = v98;
  *(v54 + 192) = v57;
  v58 = v93;
  *(v54 + 80) = v92;
  *(v54 + 96) = v58;
  v59 = v95;
  *(v54 + 112) = v94;
  *(v54 + 128) = v59;
  v60 = v89;
  *(v54 + 16) = v88;
  *(v54 + 32) = v60;
  v61 = v91;
  *(v54 + 48) = v90;
  *(v54 + 64) = v61;
  v62 = &v5[*(v3 + 36)];
  *v62 = sub_1000DDFD4;
  v62[1] = v54;
  v62[2] = 0;
  v62[3] = 0;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v87 = a1;
  sub_1000077C8(&qword_100177310, &qword_10011FBA8);
  sub_1000DDFE4();
  sub_1000DE240();
  v63 = v85;
  View.animation<A>(_:body:)();

  sub_1000159AC(v5, &qword_1001772D0, &qword_10011FB70);
  v64 = *(v10 + 16);
  v65 = v84;
  v66 = v14;
  v67 = v80;
  v64(v84, v66, v80);
  v68 = *(v86 + 16);
  v69 = v81;
  v70 = v63;
  v71 = v82;
  v68(v81, v70, v82);
  v72 = v83;
  v64(v83, v65, v67);
  v73 = sub_1000077C8(&unk_100177380, &qword_10011FBD0);
  v68(&v72[*(v73 + 48)], v69, v71);
  v74 = *(v86 + 8);
  v74(v85, v71);
  v75 = *(v79 + 8);
  v75(v78, v67);
  v74(v69, v71);
  return (v75)(v84, v67);
}

uint64_t sub_1000CFDE0(uint64_t a1)
{
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v30 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 176);
  LOBYTE(v36[0]) = *(a1 + 168);
  *(&v36[0] + 1) = v14;
  LOBYTE(v35[0]) = 0;
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.setter();
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v8 + 8);
  v29(v10, v7);
  sub_1000DDCDC(a1, v36);
  v15 = swift_allocObject();
  v16 = v36[13];
  *(v15 + 208) = v36[12];
  *(v15 + 224) = v16;
  *(v15 + 240) = v37;
  v17 = v36[9];
  *(v15 + 144) = v36[8];
  *(v15 + 160) = v17;
  v18 = v36[11];
  *(v15 + 176) = v36[10];
  *(v15 + 192) = v18;
  v19 = v36[5];
  *(v15 + 80) = v36[4];
  *(v15 + 96) = v19;
  v20 = v36[7];
  *(v15 + 112) = v36[6];
  *(v15 + 128) = v20;
  v21 = v36[1];
  *(v15 + 16) = v36[0];
  *(v15 + 32) = v21;
  v22 = v36[3];
  *(v15 + 48) = v36[2];
  *(v15 + 64) = v22;
  v35[4] = sub_1000E0654;
  v35[5] = v15;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_100106B40;
  v35[3] = &unk_100160DE0;
  v23 = _Block_copy(v35);

  static DispatchQoS.unspecified.getter();
  *&v36[0] = &_swiftEmptyArrayStorage;
  sub_1000DC14C(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000077C8(&unk_100176420, &unk_10011D928);
  sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928, &protocol conformance descriptor for [A]);
  v24 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v34 + 8))(v3, v24);
  (*(v32 + 8))(v6, v33);
  return (v29)(v13, v30);
}

uint64_t sub_1000D0238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v922 = a2;
  v921 = sub_1000077C8(&qword_100177390, &qword_10011FBE0);
  __chkstk_darwin(v921);
  v907 = &v822 - v3;
  v4 = sub_1000077C8(&qword_100177398, &qword_10011FBE8);
  __chkstk_darwin(v4 - 8);
  v874 = (&v822 - v5);
  v873 = sub_1000077C8(&qword_1001773A0, &qword_10011FBF0);
  __chkstk_darwin(v873);
  v876 = &v822 - v6;
  v875 = sub_1000077C8(&qword_1001773A8, &qword_10011FBF8);
  __chkstk_darwin(v875);
  v878 = &v822 - v7;
  v906 = sub_1000077C8(&qword_1001773B0, &qword_10011FC00);
  __chkstk_darwin(v906);
  v877 = &v822 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v879 = &v822 - v10;
  v904 = sub_1000077C8(&qword_1001773B8, &qword_10011FC08);
  __chkstk_darwin(v904);
  v905 = &v822 - v11;
  v884 = sub_1000077C8(&qword_1001773C0, &qword_10011FC10);
  v845 = *(v884 - 8);
  __chkstk_darwin(v884);
  v844 = &v822 - v12;
  v881 = sub_1000077C8(&qword_1001773C8, &qword_10011FC18);
  __chkstk_darwin(v881);
  v883 = &v822 - v13;
  v882 = sub_1000077C8(&qword_1001773D0, &qword_10011FC20);
  __chkstk_darwin(v882);
  v853 = &v822 - v14;
  v846 = sub_1000077C8(&qword_1001773D8, &qword_10011FC28);
  __chkstk_darwin(v846);
  v849 = &v822 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v847 = &v822 - v17;
  __chkstk_darwin(v18);
  v852 = &v822 - v19;
  v20 = sub_1000077C8(&qword_1001773E0, &qword_10011FC30);
  v850 = *(v20 - 8);
  v851 = v20;
  __chkstk_darwin(v20);
  v848 = &v822 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v885 = &v822 - v23;
  v901 = sub_1000077C8(&qword_1001773E8, &qword_10011FC38);
  __chkstk_darwin(v901);
  v880 = &v822 - v24;
  v25 = sub_1000077C8(&qword_1001773F0, &qword_10011FC40);
  __chkstk_darwin(v25 - 8);
  v902 = &v822 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v903 = &v822 - v28;
  v899 = sub_1000077C8(&qword_1001773F8, &qword_10011FC48);
  v898 = *(v899 - 8);
  __chkstk_darwin(v899);
  v872 = &v822 - v29;
  v30 = sub_1000077C8(&qword_100177400, &qword_10011FC50);
  __chkstk_darwin(v30 - 8);
  v871 = &v822 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v870 = &v822 - v33;
  v864 = sub_1000077C8(&qword_100177408, &qword_10011FC58);
  __chkstk_darwin(v864);
  v865 = (&v822 - v34);
  v829 = sub_1000077C8(&qword_100177410, &qword_10011FC60);
  __chkstk_darwin(v829);
  v832 = &v822 - v35;
  v830 = sub_1000077C8(&qword_100177418, &qword_10011FC68);
  __chkstk_darwin(v830);
  v835 = &v822 - v36;
  v834 = sub_1000077C8(&qword_100177420, &qword_10011FC70);
  __chkstk_darwin(v834);
  v837 = &v822 - v37;
  v836 = sub_1000077C8(&qword_100177428, &qword_10011FC78);
  __chkstk_darwin(v836);
  v839 = &v822 - v38;
  v860 = sub_1000077C8(&qword_100177430, &qword_10011FC80);
  __chkstk_darwin(v860);
  v838 = &v822 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v840 = &v822 - v41;
  v42 = sub_1000077C8(&qword_100177438, &qword_10011FC88);
  __chkstk_darwin(v42 - 8);
  v869 = &v822 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v893 = &v822 - v45;
  v46 = sub_1000077C8(&qword_100177440, &qword_10011FC90);
  __chkstk_darwin(v46 - 8);
  v900 = &v822 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v925 = &v822 - v49;
  v918 = sub_1000077C8(&qword_100177448, &qword_10011FC98);
  __chkstk_darwin(v918);
  v920 = &v822 - v50;
  v919 = sub_1000077C8(&qword_100177450, &qword_10011FCA0);
  __chkstk_darwin(v919);
  v897 = (&v822 - v51);
  v895 = sub_1000077C8(&qword_100177458, &qword_10011FCA8);
  __chkstk_darwin(v895);
  v896 = &v822 - v52;
  v859 = sub_1000077C8(&qword_100177460, &qword_10011FCB0);
  __chkstk_darwin(v859);
  v863 = &v822 - v53;
  v862 = sub_1000077C8(&qword_100177468, &qword_10011FCB8);
  __chkstk_darwin(v862);
  v833 = &v822 - v54;
  v826 = sub_1000077C8(&qword_100177470, &qword_10011FCC0);
  __chkstk_darwin(v826);
  v828 = &v822 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v827 = &v822 - v57;
  __chkstk_darwin(v58);
  v831 = &v822 - v59;
  v908 = sub_1000077C8(&qword_100177478, &qword_10011FCC8);
  __chkstk_darwin(v908);
  v890 = &v822 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v858 = &v822 - v62;
  v891 = sub_1000077C8(&qword_100177480, &qword_10011FCD0);
  __chkstk_darwin(v891);
  v861 = &v822 - v63;
  v64 = sub_1000077C8(&qword_100177488, &qword_10011FCD8);
  __chkstk_darwin(v64 - 8);
  v892 = &v822 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v894 = &v822 - v67;
  v68 = sub_1000077C8(&qword_100177490, &qword_10011FCE0);
  __chkstk_darwin(v68 - 8);
  v931 = &v822 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v822 - v71;
  v73 = type metadata accessor for Locale();
  __chkstk_darwin(v73 - 8);
  v924 = &v822 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v75 - 8);
  v923 = &v822 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v926 = sub_1000077C8(&qword_100177498, &qword_10011FCE8);
  v917 = *(v926 - 8);
  __chkstk_darwin(v926);
  v857 = &v822 - v77;
  v78 = sub_1000077C8(&qword_1001774A0, &qword_10011FCF0);
  __chkstk_darwin(v78 - 8);
  v930 = &v822 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v933 = &v822 - v81;
  v82 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v82 - 8);
  v868 = &v822 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84);
  v867 = &v822 - v85;
  __chkstk_darwin(v86);
  v866 = &v822 - v87;
  __chkstk_darwin(v88);
  v843 = &v822 - v89;
  __chkstk_darwin(v90);
  v842 = &v822 - v91;
  __chkstk_darwin(v92);
  v841 = &v822 - v93;
  __chkstk_darwin(v94);
  v825 = &v822 - v95;
  __chkstk_darwin(v96);
  v824 = &v822 - v97;
  __chkstk_darwin(v98);
  v823 = &v822 - v99;
  __chkstk_darwin(v100);
  v912 = &v822 - v101;
  __chkstk_darwin(v102);
  v914 = &v822 - v103;
  __chkstk_darwin(v104);
  v913 = &v822 - v105;
  __chkstk_darwin(v106);
  v928 = &v822 - v107;
  __chkstk_darwin(v108);
  v927 = &v822 - v109;
  __chkstk_darwin(v110);
  v856 = &v822 - v111;
  __chkstk_darwin(v112);
  v855 = &v822 - v113;
  __chkstk_darwin(v114);
  v854 = &v822 - v115;
  __chkstk_darwin(v116);
  v911 = (&v822 - v117);
  __chkstk_darwin(v118);
  *&v889 = &v822 - v119;
  __chkstk_darwin(v120);
  v122 = &v822 - v121;
  *&v888 = sub_1000077C8(&qword_1001774A8, &qword_10011FCF8);
  v123 = *(v888 - 8);
  __chkstk_darwin(v888);
  v125 = &v822 - v124;
  v886 = sub_1000077C8(&qword_1001774B0, &qword_10011FD00);
  __chkstk_darwin(v886);
  v127 = &v822 - v126;
  *&v909 = sub_1000077C8(&qword_1001774B8, &qword_10011FD08);
  __chkstk_darwin(v909);
  v887 = &v822 - v128;
  v916 = sub_1000077C8(&qword_1001774C0, &qword_10011FD10);
  *&v915 = *(v916 - 1);
  __chkstk_darwin(v916);
  v910 = &v822 - v129;
  v130 = sub_1000077C8(&qword_1001774C8, &qword_10011FD18);
  __chkstk_darwin(v130 - 8);
  v929 = &v822 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v132);
  v134 = *(a1 + 8);
  v135 = *(v134 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_includeRemotePersonDetails);
  v936 = a1;
  v935 = v134;
  v934 = v72;
  v932 = &v822 - v133;
  if (v135 == 1)
  {
    v136 = *(a1 + 64);
    v137 = *(a1 + 96);
    *&v981[64] = *(a1 + 80);
    *&v981[80] = v137;
    v138 = *(a1 + 32);
    *v981 = *(a1 + 16);
    *&v981[16] = v138;
    v139 = *(a1 + 64);
    v141 = *(a1 + 16);
    v140 = *(a1 + 32);
    *&v981[32] = *(a1 + 48);
    *&v981[48] = v139;
    v142 = *(a1 + 96);
    v970[2] = *&v981[64];
    v971 = v142;
    v968 = v141;
    v969 = v140;
    *&v981[96] = *(a1 + 112);
    LODWORD(v972) = *(a1 + 112);
    v970[0] = *&v981[32];
    v970[1] = v136;
    sub_1000DDCDC(a1, v983);
    v143 = swift_allocObject();
    v144 = *&v983[176];
    v145 = *&v983[208];
    *(v143 + 208) = *&v983[192];
    *(v143 + 224) = v145;
    *(v143 + 240) = *&v983[224];
    v146 = *&v983[112];
    v147 = *&v983[144];
    *(v143 + 144) = *&v983[128];
    *(v143 + 160) = v147;
    *(v143 + 176) = *&v983[160];
    *(v143 + 192) = v144;
    v148 = *&v983[48];
    v149 = *&v983[80];
    *(v143 + 80) = *&v983[64];
    *(v143 + 96) = v149;
    *(v143 + 112) = *&v983[96];
    *(v143 + 128) = v146;
    v150 = *&v983[16];
    *(v143 + 16) = *v983;
    *(v143 + 32) = v150;
    *(v143 + 48) = *&v983[32];
    *(v143 + 64) = v148;
    sub_1000555B0(v981, &v941);
    sub_1000DFDE8();
    View.onTapGesture(count:perform:)();

    *&v943[32] = v970[2];
    v944 = v971;
    LODWORD(v945) = v972;
    v941 = v968;
    v942 = v969;
    *v943 = v970[0];
    *&v943[16] = v970[1];
    sub_1000DFE3C(&v941);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v151 = type metadata accessor for ContinuousClock.Instant();
    v152 = *(*(v151 - 8) + 48);
    v153 = 0.0;
    if (v152(v122, 1, v151) == 1)
    {
      v154 = 0.0;
    }

    else
    {
      v154 = 10.0;
    }

    sub_1000159AC(v122, &qword_100174328, &qword_10011AF08);
    (*(v123 + 32))(v127, v125, v888);
    v155 = &v127[*(v886 + 36)];
    *v155 = v154;
    v155[8] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v156 = v889;
    static Published.subscript.getter();

    if (v152(v156, 1, v151) == 1)
    {
      v153 = 1.0;
    }

    sub_1000159AC(v156, &qword_100174328, &qword_10011AF08);
    v157 = v127;
    v158 = v887;
    sub_100021A84(v157, v887, &qword_1001774B0, &qword_10011FD00);
    *(v158 + *(v909 + 36)) = v153;
    v159 = static Animation.spring(response:dampingFraction:blendDuration:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v160 = v911;
    static Published.subscript.getter();

    v161 = v152(v160, 1, v151);
    a1 = v936;
    v162 = v161 != 1;
    sub_1000159AC(v160, &qword_100174328, &qword_10011AF08);
    v163 = v158;
    v164 = v910;
    sub_100021A84(v163, v910, &qword_1001774B8, &qword_10011FD08);
    v165 = v916;
    v166 = &v164[v916[9]];
    *v166 = v159;
    v166[8] = v162;
    v167 = v932;
    sub_100021A84(v164, v932, &qword_1001774C0, &qword_10011FD10);
    (*(v915 + 56))(v167, 0, 1, v165);
  }

  else
  {
    (*(v915 + 56))(&v822 - v133, 1, 1, v916);
  }

  sub_1000CEE60();
  if (v168 & 1) == 0 || (v169 = *(a1 + 224), v983[0] = *(a1 + 216), *&v983[8] = v169, sub_1000077C8(&qword_100178430, &qword_10011FBD8), State.wrappedValue.getter(), (v941))
  {
    (*(v917 + 56))(v933, 1, 1, v926);
    goto LABEL_23;
  }

  v170 = *(a1 + 32);
  *v983 = *(a1 + 16);
  *&v983[16] = v170;
  v171 = *(a1 + 64);
  *&v983[32] = *(a1 + 48);
  v172 = *(a1 + 96);
  *&v983[64] = *(a1 + 80);
  *&v983[48] = v171;
  *&v983[80] = v172;
  *&v983[96] = *(a1 + 112);
  v173 = a1;
  v174 = *v983;
  v175 = *&v983[8];
  v176 = *&v983[16];
  v177 = *&v983[24];
  v178 = *&v983[32];
  if (*&v983[72] >> 62)
  {
    v186 = v173[18];
    v187 = v173[19];
    sub_1000078DC(v173 + 15, v186);
    v996 = v174;
    v997 = v175;
    v998 = v176;
    v999 = v177;
    v1000 = v178;
    v1003 = 0x8000000000000000;
    sub_1000555B0(v983, &v941);
    v183 = sub_10008AFCC(&v996, v186, v187);
    v185 = v188;
    v178, v188, v189, v190, v191, v192, v193, v194;
    v177, v195, v196, v197, v198, v199, v200, v201;
    v175, v202, v203, v204, v205, v206, v207, v208;
    if (!v185)
    {
LABEL_16:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v183 = String.init(localized:table:bundle:locale:comment:)();
      v185 = v209;
    }
  }

  else
  {
    LODWORD(v910) = *&v983[96];
    v179 = *&v983[88];
    v180 = *&v983[80];
    v181 = v173[19];
    *&v915 = v173[18];
    v916 = v181;
    v182 = *&v983[72];
    v909 = *&v983[40];
    v889 = *&v983[56];
    v911 = sub_1000078DC(v173 + 15, v915);
    v996 = v174;
    v997 = v175;
    v998 = v176;
    v999 = v177;
    v1002 = v889;
    v1001 = v909;
    v1000 = v178;
    v1003 = v182;
    v1004 = v180;
    v1005 = v179;
    v1006 = v910;
    *&v943[32] = *&v983[64];
    v944 = *&v983[80];
    LODWORD(v945) = *&v983[96];
    v941 = *v983;
    v942 = *&v983[16];
    *v943 = *&v983[32];
    *&v943[16] = *&v983[48];
    *&v943[40] = *&v983[72] & 0x3FFFFFFFFFFFFFFFLL;
    sub_100070BB4(&v941, v981);
    v183 = sub_10008AFCC(&v996, v915, v916);
    v185 = v184;
    sub_100056DB4(v983);
    if (!v185)
    {
      goto LABEL_16;
    }
  }

  *&v941 = v183;
  *(&v941 + 1) = v185;
  sub_10004BB74();
  v210 = Text.init<A>(_:)();
  v212 = v211;
  v214 = v213;
  v216 = v215;
  static Font.subheadline.getter();
  v916 = Text.font(_:)();
  *&v915 = v217;
  v219 = v218;
  v911 = v220;

  sub_10004BBC8(v210, v212, (v214 & 1), v221, v222, v223, v224, v225);
  v216, v226, v227, v228, v229, v230, v231, v232;
  LODWORD(v910) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v234 = v233;
  v236 = v235;
  v238 = v237;
  v240 = v239;
  LODWORD(v889) = v219 & 1;
  LOBYTE(v941) = v219 & 1;
  v981[0] = 0;
  LODWORD(v909) = static HierarchicalShapeStyle.primary.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v241 = v854;
  static Published.subscript.getter();

  v242 = type metadata accessor for ContinuousClock.Instant();
  v243 = *(*(v242 - 8) + 48);
  v244 = 0.0;
  if (v243(v241, 1, v242) == 1)
  {
    v245 = 0.0;
  }

  else
  {
    v245 = 10.0;
  }

  sub_1000159AC(v241, &qword_100174328, &qword_10011AF08);
  swift_getKeyPath();
  swift_getKeyPath();
  v246 = v855;
  static Published.subscript.getter();

  if (v243(v246, 1, v242) == 1)
  {
    v244 = 1.0;
  }

  sub_1000159AC(v246, &qword_100174328, &qword_10011AF08);
  v247 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v248 = v856;
  static Published.subscript.getter();

  v249 = v243(v248, 1, v242) != 1;
  sub_1000159AC(v248, &qword_100174328, &qword_10011AF08);
  v250 = v926;
  v251 = *(v926 + 36);
  KeyPath = swift_getKeyPath();
  v253 = v857;
  *&v857[v251] = KeyPath;
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  v254 = v915;
  *v253 = v916;
  *(v253 + 8) = v254;
  *(v253 + 16) = v889;
  *(v253 + 24) = v911;
  *(v253 + 32) = v910;
  *(v253 + 40) = v234;
  *(v253 + 48) = v236;
  *(v253 + 56) = v238;
  *(v253 + 64) = v240;
  *(v253 + 72) = 0;
  *(v253 + 76) = v909;
  *(v253 + 80) = v245;
  *(v253 + 88) = 0;
  *(v253 + 96) = v244;
  *(v253 + 104) = v247;
  *(v253 + 112) = v249;
  v255 = v933;
  sub_100021A84(v253, v933, &qword_100177498, &qword_10011FCE8);
  (*(v917 + 56))(v255, 0, 1, v250);
  a1 = v936;
LABEL_23:
  sub_1000DC0F0(a1 + 120, &v968);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v970[1] = *v983;
  *(&v970[1] + 1) = 0x3FF0000000000000;
  v256 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v970[2]) = v256;
  *(&v970[2] + 1) = v257;
  *&v971 = v258;
  *(&v971 + 1) = v259;
  v972 = v260;
  v973 = 0;
  v261 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v974 = v261;
  v975 = v262;
  v976 = v263;
  v977 = v264;
  v978 = v265;
  v979 = 0;
  v266 = *(a1 + 160);
  v267 = *(v266 + 16);
  *&v889 = v266;
  if (v267 && (sub_100007878(v266 + 40 * v267 - 8, v983), v268 = *&v983[24], v269 = *&v983[32], sub_1000078DC(v983, *&v983[24]), v270 = (*(v269 + 16))(v268, v269), sub_100007920(v983), (v270 & 1) == 0))
  {
    sub_1000D5604(&v968, a1, v981);
    sub_100007BA4(v981, &v941, &qword_1001774D0, &qword_10011FD68);
    v954 = 0;
    sub_1000077C8(&qword_1001774D0, &qword_10011FD68);
    sub_1000077C8(&qword_1001774D8, &qword_10011FD70);
    sub_1000DE418();
    sub_1000DE4A4();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v981, &qword_1001774D0, &qword_10011FD68);
  }

  else
  {
    sub_100007BA4(&v968, &v941, &qword_1001774D8, &qword_10011FD70);
    v954 = 1;
    sub_1000077C8(&qword_1001774D0, &qword_10011FD68);
    sub_1000077C8(&qword_1001774D8, &qword_10011FD70);
    sub_1000DE418();
    sub_1000DE4A4();
    _ConditionalContent<>.init(storage:)();
  }

  sub_1000159AC(&v968, &qword_1001774D8, &qword_10011FD70);
  swift_getKeyPath();
  swift_getKeyPath();
  v271 = v927;
  static Published.subscript.getter();

  v272 = type metadata accessor for ContinuousClock.Instant();
  v273 = *(v272 - 8);
  v274 = *(v273 + 48);
  v275 = v273 + 48;
  LODWORD(v917) = v274(v271, 1, v272) != 1;
  sub_1000159AC(v271, &qword_100174328, &qword_10011AF08);
  memcpy(v981, v983, 0x112uLL);
  v276 = *(v936 + 168);
  v277 = *(v936 + 176);
  v983[0] = v276;
  *&v983[8] = v277;
  v278 = sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  if (v941)
  {
    v279 = 1.0;
  }

  else
  {
    v279 = 0.25;
  }

  static UnitPoint.center.getter();
  v281 = v280;
  v283 = v282;
  v980[0] = *v983;
  *(v980 + 3) = *&v983[3];
  v927 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v983[0] = v276;
  *&v983[8] = v277;
  v926 = v278;
  State.wrappedValue.getter();
  v284 = v941;
  v285 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v286 = v928;
  static Published.subscript.getter();

  v911 = v272;
  v910 = v274;
  *&v909 = v275;
  v287 = v274(v286, 1, v272) != 1;
  sub_1000159AC(v286, &qword_100174328, &qword_10011AF08);
  memcpy(v983, v981, sizeof(v983));
  *v985 = v980[0];
  *&v985[3] = *(v980 + 3);
  v984 = v917;
  v986 = 0x4059000000000000;
  v987 = v279;
  v988 = v279;
  v989 = v281;
  v990 = v283;
  v991 = v927;
  v992 = v284;
  v288 = v936;
  *v993 = *v982;
  *&v993[3] = *&v982[3];
  v994 = v285;
  v995 = v287;
  sub_1000CEE60();
  if (v289)
  {
    v917 = 0;
    v916 = 0;
    *&v915 = 0;
    v928 = 0;
    v912 = 0;
    v914 = 0;
    LODWORD(v913) = 0;
    v927 = 0;
    v290 = v925;
    goto LABEL_42;
  }

  v291 = *(v288 + 32);
  v941 = *(v288 + 16);
  v942 = v291;
  v292 = *(v288 + 64);
  *v943 = *(v288 + 48);
  *&v943[16] = v292;
  v293 = *(v288 + 96);
  *&v943[32] = *(v288 + 80);
  v944 = v293;
  LODWORD(v945) = *(v288 + 112);
  v294 = v941;
  v295 = v942;
  v296 = *v943;
  if (*&v943[40] >> 62)
  {
    v304 = *(v288 + 144);
    v305 = *(v288 + 152);
    sub_1000078DC((v288 + 120), v304);
    v968 = v294;
    v969 = v295;
    *&v970[0] = v296;
    *(&v970[2] + 1) = 0x8000000000000000;
    sub_1000555B0(&v941, &v961);
    v301 = sub_10008AFCC(&v968, v304, v305);
    v303 = v306;
    v296, v306, v307, v308, v309, v310, v311, v312;
    *(&v295 + 1), v313, v314, v315, v316, v317, v318, v319;
    *(&v294 + 1), v320, v321, v322, v323, v324, v325, v326;
    if (!v303)
    {
LABEL_36:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v301 = String.init(localized:table:bundle:locale:comment:)();
      v303 = v327;
    }
  }

  else
  {
    LODWORD(v916) = v945;
    v297 = *(&v944 + 1);
    v298 = v944;
    v299 = *(v288 + 152);
    v927 = *(v288 + 144);
    v928 = v299;
    v300 = *&v943[40];
    v915 = *&v943[8];
    v888 = *&v943[24];
    v917 = sub_1000078DC((v288 + 120), v927);
    v968 = v294;
    v969 = v295;
    *(&v970[1] + 8) = v888;
    *(v970 + 8) = v915;
    *&v970[0] = v296;
    *(&v970[2] + 1) = v300;
    v971 = __PAIR128__(v297, v298);
    LODWORD(v972) = v916;
    *&v965 = *&v943[32];
    v966 = v944;
    v967 = v945;
    v961 = v941;
    v962 = v942;
    v963 = *v943;
    v964 = *&v943[16];
    *(&v965 + 1) = *&v943[40] & 0x3FFFFFFFFFFFFFFFLL;
    sub_100070BB4(&v961, v937);
    v301 = sub_10008AFCC(&v968, v927, v928);
    v303 = v302;
    sub_100056DB4(&v941);
    if (!v303)
    {
      goto LABEL_36;
    }
  }

  *&v961 = v301;
  *(&v961 + 1) = v303;
  sub_10004BB74();
  v328 = Text.init<A>(_:)();
  v330 = v329;
  v332 = v331;
  v334 = v333;
  static Font.headline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v335 = Text.font(_:)();
  v337 = v336;
  v339 = v338;
  v341 = v340;

  sub_10004BBC8(v328, v330, (v332 & 1), v342, v343, v344, v345, v346);
  v334, v347, v348, v349, v350, v351, v352, v353;
  LODWORD(v961) = static HierarchicalShapeStyle.primary.getter();
  v917 = Text.foregroundStyle<A>(_:)();
  v916 = v354;
  LODWORD(v928) = v355;
  *&v915 = v356;
  sub_10004BBC8(v335, v337, (v339 & 1), v356, v357, v358, v359, v360);
  v341, v361, v362, v363, v364, v365, v366, v367;
  swift_getKeyPath();
  swift_getKeyPath();
  v368 = v913;
  static Published.subscript.getter();

  v369 = v911;
  v370 = v910;
  LODWORD(v888) = (v910)(v368, 1, v911);
  sub_1000159AC(v368, &qword_100174328, &qword_10011AF08);
  swift_getKeyPath();
  swift_getKeyPath();
  v371 = v914;
  static Published.subscript.getter();

  v372 = (v370)(v371, 1, v369);
  sub_1000159AC(v371, &qword_100174328, &qword_10011AF08);
  v914 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v373 = v912;
  static Published.subscript.getter();

  LODWORD(v913) = (v370)(v373, 1, v369) != 1;
  sub_1000159AC(v373, &qword_100174328, &qword_10011AF08);
  LOBYTE(v961) = v928 & 1;
  v927 = (v928 & 1);
  v374 = 0x4024000000000000;
  if (v888 == 1)
  {
    v374 = 0;
  }

  v928 = v374;
  v375 = 0x3FF0000000000000;
  if (v372 != 1)
  {
    v375 = 0;
  }

  v912 = v375;
  v290 = v925;
  v288 = v936;
LABEL_42:
  v376 = *(v288 + 224);
  LOBYTE(v941) = *(v288 + 216);
  *(&v941 + 1) = v376;
  State.wrappedValue.getter();
  v377 = v961;
  sub_1000CEE60();
  if (v377 != 1)
  {
    if ((v378 & 1) == 0)
    {
      v545 = 1;
      goto LABEL_74;
    }

    v442 = *(v288 + 144);
    v443 = *(v288 + 152);
    sub_1000078DC((v288 + 120), v442);
    sub_10008CB60(v442, v443);
    if (v444)
    {
      __chkstk_darwin(v444);
      __chkstk_darwin(v445);
      sub_1000077C8(&qword_100177828, &qword_10011FFB0);
      sub_1000077C8(&qword_100177830, &qword_10011FFB8);
      sub_1000DFAE0();
      sub_1000199C8(&qword_100177850, &qword_100177830, &qword_10011FFB8, &protocol conformance descriptor for TupleView<A>);
      v446 = v832;
      Menu.init(content:label:)();
      v288 = v936;
      v447 = static Color.primary.getter();
      v448 = swift_getKeyPath();
      v449 = &v446[*(sub_1000077C8(&qword_1001776E0, &qword_10011FEF8) + 36)];
      *v449 = v448;
      v449[1] = v447;
      v450 = &v446[*(sub_1000077C8(&qword_1001776D0, &qword_10011FEF0) + 36)];
      v451 = v446;
      v452 = type metadata accessor for RoundedRectangle();
      v453 = *(v452 + 20);
      v454 = enum case for RoundedCornerStyle.continuous(_:);
      v455 = type metadata accessor for RoundedCornerStyle();
      v456 = *(*(v455 - 8) + 104);
      v456(&v450[v453], v454, v455);
      __asm { FMOV            V0.2D, #15.0 }

      *v450 = _Q0;
      *&v450[*(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)] = 256;
      v462 = (v451 + *(sub_1000077C8(&qword_1001776C0, &qword_10011FEE8) + 36));
      v456(&v462[*(v452 + 20)], v454, v455);
      __asm { FMOV            V0.2D, #30.0 }

      *v462 = _Q0;
      v464 = &v462[*(sub_1000077C8(&qword_100177858, &qword_10011FFF0) + 36)];
      v961 = xmmword_10011F550;
      v962 = xmmword_10011F560;
      v963 = xmmword_10011F570;
      v964 = xmmword_10011F580;
      v965 = xmmword_10011F590;
      View._colorMatrix(_:)();
      v465 = &v464[*(sub_1000077C8(&qword_100177860, &qword_10011FFF8) + 36)];
      *v465 = 0x4069000000000000;
      v465[8] = 0;
      v466 = static Alignment.center.getter();
      v468 = v467;
      v469 = &v462[*(sub_1000077C8(&qword_100177720, &qword_10011FF08) + 36)];
      *v469 = v466;
      v469[1] = v468;
      LOBYTE(v466) = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v470 = v451 + *(v829 + 36);
      *v470 = v466;
      *(v470 + 8) = v471;
      *(v470 + 16) = v472;
      *(v470 + 24) = v473;
      *(v470 + 32) = v474;
      *(v470 + 40) = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      v475 = v823;
      static Published.subscript.getter();

      v476 = v911;
      v477 = v910;
      v478 = 0.0;
      if ((v910)(v475, 1, v911) == 1)
      {
        v479 = 0.0;
      }

      else
      {
        v479 = 10.0;
      }

      sub_1000159AC(v475, &qword_100174328, &qword_10011AF08);
      v480 = v835;
      sub_100021A84(v451, v835, &qword_100177410, &qword_10011FC60);
      v481 = v480 + *(v830 + 36);
      *v481 = v479;
      *(v481 + 8) = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      v482 = v824;
      static Published.subscript.getter();

      if ((v477)(v482, 1, v476) == 1)
      {
        v478 = 1.0;
      }

      sub_1000159AC(v482, &qword_100174328, &qword_10011AF08);
      v483 = v837;
      sub_100021A84(v480, v837, &qword_100177418, &qword_10011FC68);
      *(v483 + *(v834 + 36)) = v478;
      v484 = static Animation.spring(response:dampingFraction:blendDuration:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v485 = v825;
      static Published.subscript.getter();

      v486 = (v477)(v485, 1, v476) != 1;
      sub_1000159AC(v485, &qword_100174328, &qword_10011AF08);
      v487 = v839;
      sub_100021A84(v483, v839, &qword_100177420, &qword_10011FC70);
      v488 = v487 + *(v836 + 36);
      *v488 = v484;
      *(v488 + 8) = v486;
      v489 = *(v860 + 36);
      v490 = swift_getKeyPath();
      v491 = v838;
      *&v838[v489] = v490;
      sub_1000077C8(&qword_100174C00, &qword_10011BD80);
      swift_storeEnumTagMultiPayload();
      sub_100021A84(v487, v491, &qword_100177428, &qword_10011FC78);
      v492 = v840;
      sub_100021A84(v491, v840, &qword_100177430, &qword_10011FC80);
      sub_100007BA4(v492, v865, &qword_100177430, &qword_10011FC80);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100177688, &qword_10011FEE0);
      sub_1000DF174(&qword_100177690, &qword_100177430, &qword_10011FC80, sub_1000DF228);
      sub_1000DF6D8();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v492, &qword_100177430, &qword_10011FC80);
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v596 = v961;
      v597 = BYTE8(v961);
      v598 = v962;
      v599 = BYTE8(v962);
      LOBYTE(v941) = 1;
      LOBYTE(v937[0]) = BYTE8(v961);
      LOBYTE(v955) = BYTE8(v962);
      v600 = v865;
      *v865 = 0;
      *(v600 + 8) = 1;
      v600[2] = v596;
      *(v600 + 24) = v597;
      v600[4] = v598;
      *(v600 + 40) = v599;
      *(v600 + 3) = v963;
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100177688, &qword_10011FEE0);
      sub_1000DF174(&qword_100177690, &qword_100177430, &qword_10011FC80, sub_1000DF228);
      sub_1000DF6D8();
      _ConditionalContent<>.init(storage:)();
    }

    v601 = v870;
    v602 = *(v288 + 192);
    LOBYTE(v941) = *(v288 + 184);
    *(&v941 + 1) = v602;
    State.wrappedValue.getter();
    if (LOBYTE(v937[0]) != 1)
    {
      goto LABEL_65;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v941)
    {
      v939 = &OBJC_PROTOCOL___SFCollaborationCKShareItem;
      v603 = swift_dynamicCastObjCProtocolConditional();
      if (v603)
      {
        v604 = [v603 isServiceManatee];
        swift_unknownObjectRelease();
        if (v604)
        {
LABEL_65:
          v605 = 1;
LABEL_73:
          v670 = sub_1000077C8(&qword_100177738, &qword_10011FF10);
          (*(*(v670 - 8) + 56))(v601, v605, 1, v670);
          v671 = v893;
          v672 = v869;
          sub_100007BA4(v893, v869, &qword_100177438, &qword_10011FC88);
          v673 = v871;
          sub_100007BA4(v601, v871, &qword_100177400, &qword_10011FC50);
          v674 = v872;
          sub_100007BA4(v672, v872, &qword_100177438, &qword_10011FC88);
          v675 = sub_1000077C8(&qword_100177740, &unk_10011FF18);
          sub_100007BA4(v673, v674 + *(v675 + 48), &qword_100177400, &qword_10011FC50);
          sub_1000159AC(v601, &qword_100177400, &qword_10011FC50);
          sub_1000159AC(v671, &qword_100177438, &qword_10011FC88);
          sub_1000159AC(v673, &qword_100177400, &qword_10011FC50);
          sub_1000159AC(v672, &qword_100177438, &qword_10011FC88);
          v290 = v925;
          sub_100021A84(v674, v925, &qword_1001773F8, &qword_10011FC48);
          v545 = 0;
LABEL_74:
          (*(v898 + 56))(v290, v545, 1, v899);
          sub_1000CEE60();
          if ((v676 & 1) == 0)
          {
            v700 = static VerticalAlignment.center.getter();
            v701 = v874;
            *v874 = v700;
            v701[1] = 0;
            *(v701 + 16) = 1;
            sub_1000077C8(&unk_100177530, &qword_10011FD90);
            v937[0] = v889;
            swift_getKeyPath();
            sub_1000DDCDC(v288, &v941);
            v702 = swift_allocObject();
            v703 = v952;
            *(v702 + 208) = v951;
            *(v702 + 224) = v703;
            *(v702 + 240) = v953;
            v704 = v948;
            *(v702 + 144) = v947;
            *(v702 + 160) = v704;
            v705 = v950;
            *(v702 + 176) = v949;
            *(v702 + 192) = v705;
            v706 = v944;
            *(v702 + 80) = *&v943[32];
            *(v702 + 96) = v706;
            v707 = v946;
            *(v702 + 112) = v945;
            *(v702 + 128) = v707;
            v708 = v942;
            *(v702 + 16) = v941;
            *(v702 + 32) = v708;
            v709 = *&v943[16];
            *(v702 + 48) = *v943;
            *(v702 + 64) = v709;

            sub_1000077C8(&unk_100178470, &qword_10011FDC0);
            type metadata accessor for ShareableContentActionButton(0);
            sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0, &protocol conformance descriptor for [A]);
            sub_1000DC14C(&qword_100177548, type metadata accessor for ShareableContentActionButton, &unk_100120410);
            ForEach<>.init(_:id:content:)();
            swift_getKeyPath();
            swift_getKeyPath();
            v710 = v866;
            static Published.subscript.getter();

            v711 = v911;
            v712 = v910;
            v713 = 0.0;
            if ((v910)(v710, 1, v911) == 1)
            {
              v714 = 0.0;
            }

            else
            {
              v714 = 10.0;
            }

            sub_1000159AC(v710, &qword_100174328, &qword_10011AF08);
            v715 = v701;
            v716 = v876;
            sub_100021A84(v715, v876, &qword_100177398, &qword_10011FBE8);
            v717 = v716 + *(v873 + 36);
            *v717 = v714;
            *(v717 + 8) = 0;
            swift_getKeyPath();
            swift_getKeyPath();
            v718 = v867;
            static Published.subscript.getter();

            if ((v712)(v718, 1, v711) == 1)
            {
              v713 = 1.0;
            }

            sub_1000159AC(v718, &qword_100174328, &qword_10011AF08);
            v719 = v878;
            sub_100021A84(v716, v878, &qword_1001773A0, &qword_10011FBF0);
            *(v719 + *(v875 + 36)) = v713;
            v720 = static Animation.spring(response:dampingFraction:blendDuration:)();
            swift_getKeyPath();
            swift_getKeyPath();
            v721 = v868;
            static Published.subscript.getter();

            v722 = (v712)(v721, 1, v711);
            v290 = v925;
            v723 = v722 != 1;
            sub_1000159AC(v721, &qword_100174328, &qword_10011AF08);
            v724 = v877;
            sub_100021A84(v719, v877, &qword_1001773A8, &qword_10011FBF8);
            v725 = v724 + *(v906 + 36);
            *v725 = v720;
            *(v725 + 8) = v723;
            v726 = &qword_1001773B0;
            v727 = &qword_10011FC00;
            v728 = v879;
            sub_100021A84(v724, v879, &qword_1001773B0, &qword_10011FC00);
            sub_100007BA4(v728, v905, &qword_1001773B0, &qword_10011FC00);
            swift_storeEnumTagMultiPayload();
            sub_1000DE790();
            sub_1000DEAB4();
            v729 = v903;
            _ConditionalContent<>.init(storage:)();
            v730 = v728;
            goto LABEL_96;
          }

          v677 = *(v288 + 192);
          LOBYTE(v941) = *(v288 + 184);
          *(&v941 + 1) = v677;
          State.wrappedValue.getter();
          if (LOBYTE(v937[0]) != 1)
          {
            v937[0] = v889;
            swift_getKeyPath();
            sub_1000DDCDC(v288, &v941);
            v731 = swift_allocObject();
            v732 = v952;
            *(v731 + 208) = v951;
            *(v731 + 224) = v732;
            *(v731 + 240) = v953;
            v733 = v948;
            *(v731 + 144) = v947;
            *(v731 + 160) = v733;
            v734 = v950;
            *(v731 + 176) = v949;
            *(v731 + 192) = v734;
            v735 = v944;
            *(v731 + 80) = *&v943[32];
            *(v731 + 96) = v735;
            v736 = v946;
            *(v731 + 112) = v945;
            *(v731 + 128) = v736;
            v737 = v942;
            *(v731 + 16) = v941;
            *(v731 + 32) = v737;
            v738 = *&v943[16];
            *(v731 + 48) = *v943;
            *(v731 + 64) = v738;

            sub_1000077C8(&unk_100178470, &qword_10011FDC0);
            sub_1000077C8(&qword_100177570, &qword_10011FDC8);
            sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0, &protocol conformance descriptor for [A]);
            sub_1000DE8CC();
            v739 = v844;
            ForEach<>.init(_:id:content:)();
            v740 = v845;
            v741 = v884;
            (*(v845 + 16))(v883, v739, v884);
            swift_storeEnumTagMultiPayload();
            sub_1000199C8(&qword_100177558, &qword_1001773D0, &qword_10011FC20, &protocol conformance descriptor for TupleView<A>);
            sub_1000DE848();
            v742 = v880;
            _ConditionalContent<>.init(storage:)();
            (*(v740 + 8))(v739, v741);
LABEL_95:
            v726 = &qword_1001773E8;
            v727 = &qword_10011FC38;
            sub_100007BA4(v742, v905, &qword_1001773E8, &qword_10011FC38);
            swift_storeEnumTagMultiPayload();
            sub_1000DE790();
            sub_1000DEAB4();
            v729 = v903;
            _ConditionalContent<>.init(storage:)();
            v730 = v742;
LABEL_96:
            sub_1000159AC(v730, v726, v727);
            v800 = v900;
            sub_100007BA4(v290, v900, &qword_100177440, &qword_10011FC90);
            v801 = v902;
            sub_100007BA4(v729, v902, &qword_1001773F0, &qword_10011FC40);
            v802 = v907;
            sub_100007BA4(v800, v907, &qword_100177440, &qword_10011FC90);
            v803 = sub_1000077C8(&qword_1001775D8, &qword_10011FDF0);
            v804 = v802 + *(v803 + 48);
            *v804 = 0x4040000000000000;
            *(v804 + 8) = 0;
            sub_100007BA4(v801, v802 + *(v803 + 64), &qword_1001773F0, &qword_10011FC40);
            sub_1000159AC(v801, &qword_1001773F0, &qword_10011FC40);
            sub_1000159AC(v800, &qword_100177440, &qword_10011FC90);
            sub_100007BA4(v802, v920, &qword_100177390, &qword_10011FBE0);
            swift_storeEnumTagMultiPayload();
            sub_1000199C8(&qword_1001775E0, &qword_100177450, &qword_10011FCA0, &protocol conformance descriptor for TupleView<A>);
            sub_1000199C8(&qword_1001775E8, &qword_100177390, &qword_10011FBE0, &protocol conformance descriptor for TupleView<A>);
            _ConditionalContent<>.init(storage:)();
            sub_1000159AC(v802, &qword_100177390, &qword_10011FBE0);
            sub_1000159AC(v729, &qword_1001773F0, &qword_10011FC40);
            sub_1000159AC(v290, &qword_100177440, &qword_10011FC90);
            goto LABEL_97;
          }

          v937[0] = v889;
          swift_getKeyPath();
          sub_1000DDCDC(v288, &v941);
          v678 = swift_allocObject();
          v679 = v952;
          *(v678 + 208) = v951;
          *(v678 + 224) = v679;
          *(v678 + 240) = v953;
          v680 = v948;
          *(v678 + 144) = v947;
          *(v678 + 160) = v680;
          v681 = v950;
          *(v678 + 176) = v949;
          *(v678 + 192) = v681;
          v682 = v944;
          *(v678 + 80) = *&v943[32];
          *(v678 + 96) = v682;
          v683 = v946;
          *(v678 + 112) = v945;
          *(v678 + 128) = v683;
          v684 = v942;
          *(v678 + 16) = v941;
          *(v678 + 32) = v684;
          v685 = *&v943[16];
          *(v678 + 48) = *v943;
          *(v678 + 64) = v685;

          sub_1000077C8(&unk_100178470, &qword_10011FDC0);
          sub_1000077C8(&qword_100177608, &qword_10011FE10);
          sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0, &protocol conformance descriptor for [A]);
          sub_1000DECC0();
          ForEach<>.init(_:id:content:)();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v687 = v686;
          sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
          v688 = swift_allocObject();
          *(v688 + 16) = xmmword_10011F5E0;
          v689 = sub_1000CF1EC();
          v691 = v690;
          *(v688 + 56) = &type metadata for String;
          v692 = sub_10004C144();
          *(v688 + 64) = v692;
          *(v688 + 32) = v689;
          *(v688 + 40) = v691;
          sub_100007878(v288 + 120, &v941);
          sub_1000077C8(&qword_100172E68, &qword_100118B30);
          sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
          if ((swift_dynamicCast() & 1) != 0 && (v693 = v937[0], v694 = [v937[0] content], v693, v695 = objc_msgSend(v694, "initiatorHandle"), v694, v695))
          {
            v696 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v698 = v697;

            v699 = (v688 + 72);
            *(v688 + 96) = &type metadata for String;
            *(v688 + 104) = v692;
            if (v698)
            {
              *v699 = v696;
LABEL_89:
              *(v688 + 80) = v698;
              v743 = static String.localizedStringWithFormat(_:_:)();
              v745 = v744;
              v687, v744, v746, v747, v748, v749, v750, v751;
              v688, v752, v753, v754, v755, v756, v757, v758;
              *&v941 = v743;
              *(&v941 + 1) = v745;
              sub_10004BB74();
              v936 = Text.init<A>(_:)();
              v926 = v759;
              LOBYTE(v743) = v760;
              v924 = v761;
              LODWORD(v923) = static Edge.Set.top.getter();
              EdgeInsets.init(_all:)();
              v908 = v762;
              v899 = v763;
              v765 = v764;
              v767 = v766;
              LODWORD(v897) = v743 & 1;
              LOBYTE(v955) = v743 & 1;
              v940 = 0;
              LODWORD(v898) = static Edge.Set.bottom.getter();
              EdgeInsets.init(_all:)();
              v769 = v768;
              v771 = v770;
              v773 = v772;
              v775 = v774;
              LOBYTE(v937[0]) = 0;
              v896 = static Font.caption.getter();
              v895 = swift_getKeyPath();
              LODWORD(v894) = static HierarchicalShapeStyle.primary.getter();
              v893 = swift_getKeyPath();
              v892 = swift_getKeyPath();
              LOBYTE(v941) = 0;
              swift_getKeyPath();
              swift_getKeyPath();
              v776 = v841;
              static Published.subscript.getter();

              v777 = v911;
              v778 = v910;
              v779 = 0.0;
              if ((v910)(v776, 1, v911) == 1)
              {
                v780 = 0.0;
              }

              else
              {
                v780 = 10.0;
              }

              sub_1000159AC(v776, &qword_100174328, &qword_10011AF08);
              swift_getKeyPath();
              swift_getKeyPath();
              v781 = v842;
              static Published.subscript.getter();

              if ((v778)(v781, 1, v777) == 1)
              {
                v779 = 1.0;
              }

              sub_1000159AC(v781, &qword_100174328, &qword_10011AF08);
              v782 = static Animation.spring(response:dampingFraction:blendDuration:)();
              swift_getKeyPath();
              swift_getKeyPath();
              v783 = v843;
              static Published.subscript.getter();

              v784 = (v778)(v783, 1, v777) != 1;
              sub_1000159AC(v783, &qword_100174328, &qword_10011AF08);
              v785 = *(v846 + 36);
              v786 = swift_getKeyPath();
              v787 = v847;
              *&v847[v785] = v786;
              sub_1000077C8(&qword_100174C00, &qword_10011BD80);
              swift_storeEnumTagMultiPayload();
              v788 = v926;
              *v787 = v936;
              *(v787 + 8) = v788;
              *(v787 + 16) = v897;
              *(v787 + 24) = v924;
              *(v787 + 32) = v923;
              v789 = v899;
              *(v787 + 40) = v908;
              *(v787 + 48) = v789;
              *(v787 + 56) = v765;
              *(v787 + 64) = v767;
              *(v787 + 72) = 0;
              *(v787 + 80) = v898;
              *(v787 + 88) = v769;
              *(v787 + 96) = v771;
              *(v787 + 104) = v773;
              *(v787 + 112) = v775;
              *(v787 + 120) = 0;
              v790 = v896;
              *(v787 + 128) = v895;
              *(v787 + 136) = v790;
              *(v787 + 144) = v894;
              *(v787 + 152) = v893;
              *(v787 + 160) = 1;
              *(v787 + 168) = v892;
              *(v787 + 176) = 2;
              *(v787 + 184) = 0;
              *(v787 + 192) = v780;
              *(v787 + 200) = 0;
              *(v787 + 208) = v779;
              *(v787 + 216) = v782;
              *(v787 + 224) = v784;
              v791 = v852;
              sub_100021A84(v787, v852, &qword_1001773D8, &qword_10011FC28);
              v793 = v850;
              v792 = v851;
              v794 = *(v850 + 16);
              v795 = v848;
              v794(v848, v885, v851);
              v796 = v849;
              sub_100007BA4(v791, v849, &qword_1001773D8, &qword_10011FC28);
              v797 = v853;
              v794(v853, v795, v792);
              v798 = sub_1000077C8(&qword_100177680, &qword_10011FED8);
              sub_100007BA4(v796, v797 + *(v798 + 48), &qword_1001773D8, &qword_10011FC28);
              sub_1000159AC(v796, &qword_1001773D8, &qword_10011FC28);
              v799 = *(v793 + 8);
              v799(v795, v792);
              sub_100007BA4(v797, v883, &qword_1001773D0, &qword_10011FC20);
              swift_storeEnumTagMultiPayload();
              sub_1000199C8(&qword_100177558, &qword_1001773D0, &qword_10011FC20, &protocol conformance descriptor for TupleView<A>);
              sub_1000DE848();
              v742 = v880;
              _ConditionalContent<>.init(storage:)();
              sub_1000159AC(v797, &qword_1001773D0, &qword_10011FC20);
              sub_1000159AC(v791, &qword_1001773D8, &qword_10011FC28);
              v799(v885, v792);
              v290 = v925;
              goto LABEL_95;
            }
          }

          else
          {
            v699 = (v688 + 72);
            *(v688 + 96) = &type metadata for String;
            *(v688 + 104) = v692;
          }

          *v699 = 0;
          v698 = 0xE000000000000000;
          goto LABEL_89;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_1000DDCDC(v288, &v941);
    v662 = swift_allocObject();
    *(v662 + 240) = v953;
    v663 = v952;
    *(v662 + 208) = v951;
    *(v662 + 224) = v663;
    v664 = v948;
    *(v662 + 144) = v947;
    *(v662 + 160) = v664;
    v665 = v950;
    *(v662 + 176) = v949;
    *(v662 + 192) = v665;
    v666 = v944;
    *(v662 + 80) = *&v943[32];
    *(v662 + 96) = v666;
    v667 = v946;
    *(v662 + 112) = v945;
    *(v662 + 128) = v667;
    v668 = v942;
    *(v662 + 16) = v941;
    *(v662 + 32) = v668;
    v669 = *&v943[16];
    *(v662 + 48) = *v943;
    *(v662 + 64) = v669;
    __chkstk_darwin(v662);
    sub_1000077C8(&qword_100177748, &qword_10011FF70);
    sub_1000DF174(&qword_100177750, &qword_100177748, &qword_10011FF70, sub_1000DF790);
    Button.init(action:label:)();
    v605 = 0;
    goto LABEL_73;
  }

  if (v378)
  {
    v379 = *(v288 + 192);
    LOBYTE(v941) = *(v288 + 184);
    *(&v941 + 1) = v379;
    State.wrappedValue.getter();
    if (v961 != 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      *&v941 = String.init(localized:table:bundle:locale:comment:)();
      *(&v941 + 1) = v546;
      sub_10004BB74();
      v547 = Text.init<A>(_:)();
      v549 = v548;
      v551 = v550;
      v553 = v552;
      static Font.headline.getter();
      static Font.Weight.regular.getter();
      Font.weight(_:)();

      v554 = Text.font(_:)();
      v556 = v555;
      v558 = v557;
      v560 = v559;

      sub_10004BBC8(v547, v549, (v551 & 1), v561, v562, v563, v564, v565);
      v553, v566, v567, v568, v569, v570, v571, v572;
      LODWORD(v941) = static HierarchicalShapeStyle.primary.getter();
      v573 = Text.foregroundStyle<A>(_:)();
      v575 = v574;
      v577 = v576;
      v579 = v578;
      sub_10004BBC8(v554, v556, (v558 & 1), v578, v580, v581, v582, v583);
      v560, v584, v585, v586, v587, v588, v589, v590;
      v591 = *(v908 + 36);
      v592 = swift_getKeyPath();
      v593 = v890;
      *(v890 + v591) = v592;
      sub_1000077C8(&qword_100174C00, &qword_10011BD80);
      swift_storeEnumTagMultiPayload();
      *v593 = v573;
      *(v593 + 8) = v575;
      *(v593 + 16) = v577 & 1;
      *(v593 + 24) = v579;
      sub_100007BA4(v593, v863, &qword_100177478, &qword_10011FCC8);
      swift_storeEnumTagMultiPayload();
      sub_1000199C8(&qword_100177870, &qword_100177468, &qword_10011FCB8, &protocol conformance descriptor for TupleView<A>);
      sub_1000DFD24();
      v594 = v861;
      _ConditionalContent<>.init(storage:)();
      v595 = v593;
LABEL_69:
      sub_1000159AC(v595, &qword_100177478, &qword_10011FCC8);
      v541 = &qword_100177480;
      v542 = &qword_10011FCD0;
      sub_100007BA4(v594, v896, &qword_100177480, &qword_10011FCD0);
      swift_storeEnumTagMultiPayload();
      sub_1000DFC6C();
      sub_1000DFD24();
      v543 = v894;
      _ConditionalContent<>.init(storage:)();
      v544 = v594;
      goto LABEL_70;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *&v941 = String.init(localized:table:bundle:locale:comment:)();
    *(&v941 + 1) = v380;
    v935 = sub_10004BB74();
    v381 = Text.init<A>(_:)();
    v383 = v382;
    v385 = v384;
    v387 = v386;
    static Font.headline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v388 = Text.font(_:)();
    v390 = v389;
    v392 = v391;
    v394 = v393;

    sub_10004BBC8(v381, v383, (v385 & 1), v395, v396, v397, v398, v399);
    v387, v400, v401, v402, v403, v404, v405, v406;
    LODWORD(v941) = static HierarchicalShapeStyle.primary.getter();
    v407 = Text.foregroundStyle<A>(_:)();
    v409 = v408;
    LOBYTE(v387) = v410;
    v412 = v411;
    sub_10004BBC8(v388, v390, (v392 & 1), v411, v413, v414, v415, v416);
    v394, v417, v418, v419, v420, v421, v422, v423;
    v424 = *(v908 + 36);
    v425 = swift_getKeyPath();
    v426 = v858;
    *(v858 + v424) = v425;
    v926 = sub_1000077C8(&qword_100174C00, &qword_10011BD80);
    swift_storeEnumTagMultiPayload();
    *v426 = v407;
    *(v426 + 8) = v409;
    *(v426 + 16) = v387 & 1;
    *(v426 + 24) = v412;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v428 = v427;
    sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
    v429 = swift_allocObject();
    *(v429 + 16) = xmmword_10011F5E0;
    v430 = v936;
    v431 = sub_1000CF1EC();
    v433 = v432;
    *(v429 + 56) = &type metadata for String;
    v434 = sub_10004C144();
    *(v429 + 64) = v434;
    *(v429 + 32) = v431;
    *(v429 + 40) = v433;
    sub_100007878(v430 + 120, &v941);
    sub_1000077C8(&qword_100172E68, &qword_100118B30);
    sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
    if ((swift_dynamicCast() & 1) != 0 && (v435 = v961, v436 = [v961 content], v435, v437 = objc_msgSend(v436, "initiatorHandle"), v436, v437))
    {
      v438 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v440 = v439;

      v441 = (v429 + 72);
      *(v429 + 96) = &type metadata for String;
      *(v429 + 104) = v434;
      if (v440)
      {
        *v441 = v438;
LABEL_68:
        *(v429 + 80) = v440;
        v606 = static String.localizedStringWithFormat(_:_:)();
        v608 = v607;
        v428, v607, v609, v610, v611, v612, v613, v614;
        v429, v615, v616, v617, v618, v619, v620, v621;
        *&v941 = v606;
        *(&v941 + 1) = v608;
        v936 = Text.init<A>(_:)();
        v935 = v622;
        v624 = v623;
        v925 = v625;
        LODWORD(v924) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v627 = v626;
        v629 = v628;
        v631 = v630;
        v633 = v632;
        LOBYTE(v608) = v624 & 1;
        LOBYTE(v937[0]) = v624 & 1;
        LOBYTE(v955) = 0;
        v634 = static Edge.Set.bottom.getter();
        EdgeInsets.init(_all:)();
        v636 = v635;
        v638 = v637;
        v640 = v639;
        v642 = v641;
        LOBYTE(v961) = 0;
        v643 = static Font.caption.getter();
        v644 = swift_getKeyPath();
        v645 = static HierarchicalShapeStyle.primary.getter();
        v646 = swift_getKeyPath();
        v647 = swift_getKeyPath();
        LOBYTE(v941) = 0;
        v648 = *(v826 + 36);
        v649 = swift_getKeyPath();
        v650 = v827;
        *&v827[v648] = v649;
        swift_storeEnumTagMultiPayload();
        v651 = v935;
        *v650 = v936;
        *(v650 + 8) = v651;
        *(v650 + 16) = v608;
        *(v650 + 24) = v925;
        *(v650 + 32) = v924;
        *(v650 + 40) = v627;
        *(v650 + 48) = v629;
        *(v650 + 56) = v631;
        *(v650 + 64) = v633;
        *(v650 + 72) = 0;
        *(v650 + 80) = v634;
        *(v650 + 88) = v636;
        *(v650 + 96) = v638;
        *(v650 + 104) = v640;
        *(v650 + 112) = v642;
        *(v650 + 120) = 0;
        *(v650 + 128) = v644;
        *(v650 + 136) = v643;
        *(v650 + 144) = v645;
        *(v650 + 152) = v646;
        *(v650 + 160) = 1;
        *(v650 + 168) = v647;
        *(v650 + 176) = 2;
        *(v650 + 184) = 0;
        v652 = v831;
        sub_100021A84(v650, v831, &qword_100177470, &qword_10011FCC0);
        v653 = v858;
        v654 = v890;
        sub_100007BA4(v858, v890, &qword_100177478, &qword_10011FCC8);
        v655 = v828;
        sub_100007BA4(v652, v828, &qword_100177470, &qword_10011FCC0);
        v656 = v833;
        sub_100007BA4(v654, v833, &qword_100177478, &qword_10011FCC8);
        v657 = sub_1000077C8(&qword_100177888, &qword_100120008);
        sub_100007BA4(v655, v656 + *(v657 + 48), &qword_100177470, &qword_10011FCC0);
        sub_1000159AC(v655, &qword_100177470, &qword_10011FCC0);
        sub_1000159AC(v654, &qword_100177478, &qword_10011FCC8);
        sub_100007BA4(v656, v863, &qword_100177468, &qword_10011FCB8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100177870, &qword_100177468, &qword_10011FCB8, &protocol conformance descriptor for TupleView<A>);
        sub_1000DFD24();
        v658 = v861;
        _ConditionalContent<>.init(storage:)();
        v594 = v658;
        sub_1000159AC(v656, &qword_100177468, &qword_10011FCB8);
        sub_1000159AC(v652, &qword_100177470, &qword_10011FCC0);
        v595 = v653;
        goto LABEL_69;
      }
    }

    else
    {
      v441 = (v429 + 72);
      *(v429 + 96) = &type metadata for String;
      *(v429 + 104) = v434;
    }

    *v441 = 0;
    v440 = 0xE000000000000000;
    goto LABEL_68;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v941 = String.init(localized:table:bundle:locale:comment:)();
  *(&v941 + 1) = v493;
  sub_10004BB74();
  v494 = Text.init<A>(_:)();
  v496 = v495;
  v498 = v497;
  v500 = v499;
  static Font.headline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v501 = Text.font(_:)();
  v503 = v502;
  v505 = v504;
  v507 = v506;

  sub_10004BBC8(v494, v496, (v498 & 1), v508, v509, v510, v511, v512);
  v500, v513, v514, v515, v516, v517, v518, v519;
  LODWORD(v941) = static HierarchicalShapeStyle.primary.getter();
  v520 = Text.foregroundStyle<A>(_:)();
  v522 = v521;
  v524 = v523;
  v526 = v525;
  sub_10004BBC8(v501, v503, (v505 & 1), v525, v527, v528, v529, v530);
  v507, v531, v532, v533, v534, v535, v536, v537;
  v538 = *(v908 + 36);
  v539 = swift_getKeyPath();
  v540 = v890;
  *(v890 + v538) = v539;
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  *v540 = v520;
  *(v540 + 8) = v522;
  *(v540 + 16) = v524 & 1;
  *(v540 + 24) = v526;
  v541 = &qword_100177478;
  v542 = &qword_10011FCC8;
  sub_100007BA4(v540, v896, &qword_100177478, &qword_10011FCC8);
  swift_storeEnumTagMultiPayload();
  sub_1000DFC6C();
  sub_1000DFD24();
  v543 = v894;
  _ConditionalContent<>.init(storage:)();
  v544 = v540;
LABEL_70:
  sub_1000159AC(v544, v541, v542);
  v659 = v892;
  sub_100007BA4(v543, v892, &qword_100177488, &qword_10011FCD8);
  v660 = v897;
  *v897 = 0x4040000000000000;
  *(v660 + 8) = 0;
  v661 = sub_1000077C8(&qword_100177880, &qword_100120000);
  sub_100007BA4(v659, v660 + *(v661 + 48), &qword_100177488, &qword_10011FCD8);
  sub_1000159AC(v659, &qword_100177488, &qword_10011FCD8);
  sub_100007BA4(v660, v920, &qword_100177450, &qword_10011FCA0);
  swift_storeEnumTagMultiPayload();
  sub_1000199C8(&qword_1001775E0, &qword_100177450, &qword_10011FCA0, &protocol conformance descriptor for TupleView<A>);
  sub_1000199C8(&qword_1001775E8, &qword_100177390, &qword_10011FBE0, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();
  sub_1000159AC(v660, &qword_100177450, &qword_10011FCA0);
  sub_1000159AC(v543, &qword_100177488, &qword_10011FCD8);
LABEL_97:
  v805 = v929;
  sub_100007BA4(v932, v929, &qword_1001774C8, &qword_10011FD18);
  v806 = v930;
  sub_100007BA4(v933, v930, &qword_1001774A0, &qword_10011FCF0);
  sub_100007BA4(v983, &v941, &qword_1001775F0, &qword_10011FDF8);
  sub_100007BA4(v934, v931, &qword_100177490, &qword_10011FCE0);
  v807 = v805;
  v808 = v922;
  sub_100007BA4(v807, v922, &qword_1001774C8, &qword_10011FD18);
  v809 = sub_1000077C8(&qword_1001775F8, &qword_10011FE00);
  v810 = v808 + v809[12];
  *v810 = 0x4040000000000000;
  *(v810 + 8) = 0;
  sub_100007BA4(v806, v808 + v809[16], &qword_1001774A0, &qword_10011FCF0);
  sub_100007BA4(&v941, v808 + v809[20], &qword_1001775F0, &qword_10011FDF8);
  v811 = v808 + v809[24];
  v812 = v917;
  *&v955 = v917;
  v813 = v916;
  *(&v955 + 1) = v916;
  *&v956 = v927;
  v814 = v915;
  *(&v956 + 1) = v915;
  v957 = v928;
  v958 = 0;
  v815 = v912;
  *&v959 = v912;
  v816 = v914;
  *(&v959 + 1) = v914;
  v817 = v913;
  v960 = v913;
  v818 = v959;
  *(v811 + 32) = v928;
  *(v811 + 48) = v818;
  *(v811 + 64) = v817;
  v819 = v956;
  *v811 = v955;
  *(v811 + 16) = v819;
  v820 = v931;
  sub_100007BA4(v931, v808 + v809[28], &qword_100177490, &qword_10011FCE0);
  sub_100007BA4(&v955, v937, &qword_100177600, &qword_10011FE08);
  sub_1000159AC(v934, &qword_100177490, &qword_10011FCE0);
  sub_1000159AC(v983, &qword_1001775F0, &qword_10011FDF8);
  sub_1000159AC(v933, &qword_1001774A0, &qword_10011FCF0);
  sub_1000159AC(v932, &qword_1001774C8, &qword_10011FD18);
  sub_1000159AC(v820, &qword_100177490, &qword_10011FCE0);
  v937[0] = v812;
  v937[1] = v813;
  v937[2] = v927;
  v937[3] = v814;
  v937[4] = v928;
  v937[5] = 0;
  v937[6] = v815;
  v937[7] = v816;
  v938 = v817;
  sub_1000159AC(v937, &qword_100177600, &qword_10011FE08);
  sub_1000159AC(&v941, &qword_1001775F0, &qword_10011FDF8);
  sub_1000159AC(v930, &qword_1001774A0, &qword_10011FCF0);
  return sub_1000159AC(v929, &qword_1001774C8, &qword_10011FD18);
}

uint64_t sub_1000D5598(uint64_t result)
{
  if (!(*(result + 88) >> 62))
  {
    sub_1000077C8(&qword_100177238, &qword_10011FAD8);
    return State.wrappedValue.setter();
  }

  return result;
}

__n128 sub_1000D5604@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *(a2 + 216);
  v19 = *(a2 + 224);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.projectedValue.getter();
  static Animation.default.getter();
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  Binding.animation(_:)();

  v6 = v25;
  v7 = v26;
  v8 = v27;
  sub_1000DDCDC(a2, v23);
  v9 = swift_allocObject();
  v10 = v23[13];
  *(v9 + 208) = v23[12];
  *(v9 + 224) = v10;
  *(v9 + 240) = v24;
  v11 = v23[9];
  *(v9 + 144) = v23[8];
  *(v9 + 160) = v11;
  v12 = v23[11];
  *(v9 + 176) = v23[10];
  *(v9 + 192) = v12;
  v13 = v23[5];
  *(v9 + 80) = v23[4];
  *(v9 + 96) = v13;
  v14 = v23[7];
  *(v9 + 112) = v23[6];
  *(v9 + 128) = v14;
  v15 = v23[1];
  *(v9 + 16) = v23[0];
  *(v9 + 32) = v15;
  v16 = v23[3];
  *(v9 + 48) = v23[2];
  *(v9 + 64) = v16;
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  GestureState.init(wrappedValue:resetTransaction:)();
  sub_100007BA4(a1, a3, &qword_1001774D8, &qword_10011FD70);
  *(a3 + 160) = xmmword_10011F5F0;
  *(a3 + 176) = 0x3FD51EB851EB851FLL;
  *(a3 + 184) = 0;
  *(a3 + 192) = sub_1000E064C;
  *(a3 + 200) = v9;
  *(a3 + 208) = v18;
  *(a3 + 216) = v19;
  *(a3 + 224) = v20;
  *(a3 + 232) = v21;
  result = v22;
  *(a3 + 240) = v22;
  *(a3 + 256) = v6;
  *(a3 + 264) = v7;
  *(a3 + 272) = v8;
  return result;
}

double sub_1000D580C(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100007878(v1 + 40 * v2 - 8, v9);
    v4 = *(a1 + 8);
    v5 = v10;
    v6 = v11;
    v7 = sub_1000078DC(v9, v10);
    sub_10005560C(v7, a1 + 120, 0, v4, v5, v6);
    return sub_100007920(v9);
  }

  return result;
}

uint64_t sub_1000D5894@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1000077C8(&qword_100177898, &qword_100120010);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = sub_1000077C8(&qword_1001778A0, &qword_100120018);
  v46 = *(v10 - 8);
  v11 = v46;
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  sub_1000DDCDC(a1, &v48);
  v17 = swift_allocObject();
  v18 = v61;
  *(v17 + 208) = v60;
  *(v17 + 224) = v18;
  *(v17 + 240) = v62;
  v19 = v57;
  *(v17 + 144) = v56;
  *(v17 + 160) = v19;
  v20 = v59;
  *(v17 + 176) = v58;
  *(v17 + 192) = v20;
  v21 = v53;
  *(v17 + 80) = v52;
  *(v17 + 96) = v21;
  v22 = v55;
  *(v17 + 112) = v54;
  *(v17 + 128) = v22;
  v23 = v49;
  *(v17 + 16) = v48;
  *(v17 + 32) = v23;
  v24 = v51;
  *(v17 + 48) = v50;
  *(v17 + 64) = v24;
  sub_1000DFB6C();
  v45 = v16;
  Button.init(action:label:)();
  sub_1000DDCDC(a1, &v48);
  v25 = swift_allocObject();
  v26 = v61;
  *(v25 + 208) = v60;
  *(v25 + 224) = v26;
  *(v25 + 240) = v62;
  v27 = v57;
  *(v25 + 144) = v56;
  *(v25 + 160) = v27;
  v28 = v59;
  *(v25 + 176) = v58;
  *(v25 + 192) = v28;
  v29 = v53;
  *(v25 + 80) = v52;
  *(v25 + 96) = v29;
  v30 = v55;
  *(v25 + 112) = v54;
  *(v25 + 128) = v30;
  v31 = v49;
  *(v25 + 16) = v48;
  *(v25 + 32) = v31;
  v32 = v51;
  *(v25 + 48) = v50;
  *(v25 + 64) = v32;
  sub_1000DFBC0();
  v43 = v9;
  Button.init(action:label:)();
  v33 = *(v11 + 16);
  v44 = v13;
  v33(v13, v16, v10);
  v34 = *(v4 + 16);
  v35 = v9;
  v36 = v3;
  v34(v6, v35, v3);
  v37 = v47;
  v33(v47, v13, v10);
  v38 = &v37[*(sub_1000077C8(&qword_1001778A8, &qword_100120020) + 48)];
  v34(v38, v6, v36);
  v39 = *(v4 + 8);
  v39(v43, v36);
  v40 = *(v46 + 8);
  v40(v45, v10);
  v39(v6, v36);
  return (v40)(v44, v10);
}

void *sub_1000D5D44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 184);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  sub_1000DFB6C();
  sub_1000DFBC0();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v4;
  return result;
}

uint64_t sub_1000D5DF0@<X0>(uint64_t a2@<X8>)
{
  v45 = a2;
  v2 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v2 - 8);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v38 - v5;
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_1000077C8(&qword_100177790, &qword_10011FF90);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = sub_1000077C8(&qword_100177780, &qword_10011FF88);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v40 = sub_1000077C8(&qword_100177770, &qword_10011FF80) - 8;
  __chkstk_darwin(v40);
  v39 = &v38 - v17;
  v43 = sub_1000077C8(&qword_100177760, &qword_10011FF78) - 8;
  __chkstk_darwin(v43);
  v41 = &v38 - v18;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4008000000000000;
  v12[16] = 0;
  v19 = sub_1000077C8(&qword_1001778B0, &qword_100120028);
  sub_1000D6368(&v12[*(v19 + 44)]);
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v12[*(sub_1000077C8(&qword_1001777A0, &qword_10011FF98) + 36)];
  v21 = v47;
  *v20 = v46;
  *(v20 + 1) = v21;
  *(v20 + 2) = v48;
  v12[*(v10 + 44)] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = type metadata accessor for ContinuousClock.Instant();
  v23 = *(*(v22 - 8) + 48);
  v24 = 0.0;
  if (v23(v8, 1, v22) == 1)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 10.0;
  }

  sub_1000159AC(v8, &qword_100174328, &qword_10011AF08);
  sub_100021A84(v12, v16, &qword_100177790, &qword_10011FF90);
  v26 = &v16[*(v14 + 44)];
  *v26 = v25;
  v26[8] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v42;
  static Published.subscript.getter();

  if (v23(v27, 1, v22) == 1)
  {
    v24 = 1.0;
  }

  sub_1000159AC(v27, &qword_100174328, &qword_10011AF08);
  v28 = v39;
  sub_100021A84(v16, v39, &qword_100177780, &qword_10011FF88);
  *(v28 + *(v40 + 44)) = v24;
  v29 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v44;
  static Published.subscript.getter();

  v31 = v23(v30, 1, v22) != 1;
  sub_1000159AC(v30, &qword_100174328, &qword_10011AF08);
  v32 = v41;
  sub_100021A84(v28, v41, &qword_100177770, &qword_10011FF80);
  v33 = v32 + *(v43 + 44);
  *v33 = v29;
  *(v33 + 8) = v31;
  v34 = *(sub_1000077C8(&qword_100177748, &qword_10011FF70) + 36);
  KeyPath = swift_getKeyPath();
  v36 = v45;
  *(v45 + v34) = KeyPath;
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  return sub_100021A84(v32, v36, &qword_100177760, &qword_10011FF78);
}

void sub_1000D6368(uint64_t *a1@<X8>)
{
  v80 = a1;
  v79 = sub_1000077C8(&qword_1001778B8, &qword_100120030) - 8;
  __chkstk_darwin(v79);
  v78 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = (&v77 - v3);
  v81 = sub_1000CF028();
  v82 = v5;
  sub_10004BB74();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  static Font.subheadline.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_10004BBC8(v6, v8, (v10 & 1), v20, v21, v22, v23, v24);
  v12, v25, v26, v27, v28, v29, v30, v31;
  LODWORD(v81) = static HierarchicalShapeStyle.primary.getter();
  v32 = Text.foregroundStyle<A>(_:)();
  v34 = v33;
  LOBYTE(v12) = v35;
  v37 = v36;
  sub_10004BBC8(v13, v15, (v17 & 1), v36, v38, v39, v40, v41);
  v19, v42, v43, v44, v45, v46, v47, v48;
  v49 = Image.init(systemName:)();
  v50 = (v4 + *(sub_1000077C8(&unk_1001778C0, &qword_100120038) + 36));
  v51 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
  v52 = enum case for Image.Scale.small(_:);
  v53 = type metadata accessor for Image.Scale();
  (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
  *v50 = swift_getKeyPath();
  *v4 = v49;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  v54 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v56 = (v4 + *(sub_1000077C8(&qword_1001778D0, &qword_100120078) + 36));
  *v56 = KeyPath;
  v56[1] = v54;
  v57 = [objc_opt_self() tertiaryLabelColor];
  v58 = Color.init(_:)();
  v59 = swift_getKeyPath();
  v60 = v78;
  v61 = (v4 + *(v79 + 44));
  *v61 = v59;
  v61[1] = v58;
  sub_100007BA4(v4, v60, &qword_1001778B8, &qword_100120030);
  v62 = v80;
  *v80 = v32;
  v62[1] = v34;
  *(v62 + 16) = v12 & 1;
  v62[3] = v37;
  v63 = v62;
  v64 = sub_1000077C8(&qword_1001778D8, &qword_1001200B0);
  sub_100007BA4(v60, v63 + *(v64 + 48), &qword_1001778B8, &qword_100120030);
  sub_100078974(v32, v34, v12 & 1);

  sub_1000159AC(v4, &qword_1001778B8, &qword_100120030);
  sub_1000159AC(v60, &qword_1001778B8, &qword_100120030);
  sub_10004BBC8(v32, v34, (v12 & 1), v65, v66, v67, v68, v69);
  v37, v70, v71, v72, v73, v74, v75, v76;
}

uint64_t sub_1000D6704@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  sub_1000078DC(a1, v3);
  result = sub_10000814C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1000D6750@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v88 = a3;
  v4 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v4 - 8);
  v85 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = &v77 - v7;
  __chkstk_darwin(v8);
  v10 = &v77 - v9;
  v77 = sub_1000077C8(&qword_100177650, &qword_10011FE30);
  __chkstk_darwin(v77);
  v12 = &v77 - v11;
  v79 = sub_1000077C8(&qword_100177640, &qword_10011FE28);
  __chkstk_darwin(v79);
  v14 = &v77 - v13;
  v80 = sub_1000077C8(&qword_100177630, &qword_10011FE20);
  __chkstk_darwin(v80);
  v84 = &v77 - v15;
  v86 = sub_1000077C8(&qword_100177620, &qword_10011FE18);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v81 = &v77 - v18;
  v19 = sub_1000077C8(&qword_1001778E8, &qword_1001200C0);
  __chkstk_darwin(v19 - 8);
  v21 = &v77 - v20;
  started = type metadata accessor for StartCollaborationAction(0);
  v23 = *(started - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(started);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v77 - v27;
  sub_100007878(a1, v89);
  sub_1000077C8(&unk_1001778F0, &qword_10011E000);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v30(v21, 0, 1, started);
    sub_1000DDBAC(v21, v28, type metadata accessor for StartCollaborationAction);
    LocalizedStringResource.init(stringLiteral:)();
    sub_1000DDCDC(v78, v89);
    sub_1000DDA5C(v28, v25, type metadata accessor for StartCollaborationAction);
    v31 = (*(v23 + 80) + 248) & ~*(v23 + 80);
    v32 = swift_allocObject();
    v33 = v89[13];
    *(v32 + 208) = v89[12];
    *(v32 + 224) = v33;
    *(v32 + 240) = v90;
    v34 = v89[9];
    *(v32 + 144) = v89[8];
    *(v32 + 160) = v34;
    v35 = v89[11];
    *(v32 + 176) = v89[10];
    *(v32 + 192) = v35;
    v36 = v89[5];
    *(v32 + 80) = v89[4];
    *(v32 + 96) = v36;
    v37 = v89[7];
    *(v32 + 112) = v89[6];
    *(v32 + 128) = v37;
    v38 = v89[1];
    *(v32 + 16) = v89[0];
    *(v32 + 32) = v38;
    v39 = v89[3];
    *(v32 + 48) = v89[2];
    *(v32 + 64) = v39;
    sub_1000DDBAC(v25, v32 + v31, type metadata accessor for StartCollaborationAction);
    v40 = &v12[*(type metadata accessor for ShareableContentActionButton(0) + 20)];
    *v40 = sub_1000E00C8;
    v40[1] = v32;
    LOBYTE(v32) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v12[*(sub_1000077C8(&unk_100177660, &qword_10011FE38) + 36)];
    *v49 = v32;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v32) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v50 = &v12[*(v77 + 36)];
    *v50 = v32;
    *(v50 + 1) = v51;
    *(v50 + 2) = v52;
    *(v50 + 3) = v53;
    *(v50 + 4) = v54;
    v50[40] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = type metadata accessor for ContinuousClock.Instant();
    v56 = *(*(v55 - 8) + 48);
    v57 = 0.0;
    if (v56(v10, 1, v55) == 1)
    {
      v58 = 0.0;
    }

    else
    {
      v58 = 10.0;
    }

    v78 = v28;
    sub_1000159AC(v10, &qword_100174328, &qword_10011AF08);
    sub_100021A84(v12, v14, &qword_100177650, &qword_10011FE30);
    v59 = &v14[*(v79 + 36)];
    *v59 = v58;
    v59[8] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v83;
    static Published.subscript.getter();

    if (v56(v60, 1, v55) == 1)
    {
      v57 = 1.0;
    }

    sub_1000159AC(v60, &qword_100174328, &qword_10011AF08);
    v61 = v14;
    v62 = v84;
    sub_100021A84(v61, v84, &qword_100177640, &qword_10011FE28);
    *(v62 + *(v80 + 36)) = v57;
    v63 = static Animation.spring(response:dampingFraction:blendDuration:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v64 = v85;
    static Published.subscript.getter();

    sub_1000E0E64(v78, type metadata accessor for StartCollaborationAction);
    v65 = v56(v64, 1, v55) != 1;
    sub_1000159AC(v64, &qword_100174328, &qword_10011AF08);
    v66 = v82;
    sub_100021A84(v62, v82, &qword_100177630, &qword_10011FE20);
    v67 = v86;
    v68 = v66 + *(v86 + 36);
    *v68 = v63;
    *(v68 + 8) = v65;
    v69 = v66;
    v70 = v81;
    sub_100021A84(v69, v81, &qword_100177620, &qword_10011FE18);
    v71 = v70;
    v72 = v88;
    sub_100021A84(v71, v88, &qword_100177620, &qword_10011FE18);
    v73 = 0;
    v74 = v72;
    v75 = v67;
  }

  else
  {
    v73 = 1;
    v30(v21, 1, 1, started);
    sub_1000159AC(v21, &qword_1001778E8, &qword_1001200C0);
    v74 = v88;
    v75 = v86;
  }

  return (*(v87 + 56))(v74, v73, 1, v75);
}

uint64_t sub_1000D7078(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartCollaborationAction(0);
  __chkstk_darwin(started - 8);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 8);
  sub_1000DDA5C(a2, v6, type metadata accessor for StartCollaborationAction);
  sub_100007878(a1 + 120, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v10;
  sub_1000DC7D0(v6, v11, v10, v7, type metadata accessor for StartCollaborationAction, &unk_100177900, type metadata accessor for StartCollaborationAction, &unk_100118A28, type metadata accessor for StartCollaborationAction, &unk_100160D00, qword_10011B380);

  sub_100007920(v11);
  return sub_1000E0E64(v6, type metadata accessor for StartCollaborationAction);
}

uint64_t sub_1000D721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v74 = a3;
  v4 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v4 - 8);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v63 - v7;
  __chkstk_darwin(v8);
  v10 = &v63 - v9;
  v63 = type metadata accessor for ShareableContentActionButton(0);
  __chkstk_darwin(v63);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000077C8(&unk_1001775A0, &unk_10011FDE0);
  __chkstk_darwin(v65);
  v14 = &v63 - v13;
  v66 = sub_1000077C8(&qword_100177590, &qword_10011FDD8);
  __chkstk_darwin(v66);
  v70 = &v63 - v15;
  v72 = sub_1000077C8(&qword_100177580, &qword_10011FDD0);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v67 = &v63 - v18;
  v19 = sub_1000077C8(&unk_100177910, &qword_100120160);
  __chkstk_darwin(v19 - 8);
  v21 = &v63 - v20;
  v22 = type metadata accessor for SendOverAirDropAction(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v63 - v27;
  sub_100007878(a1, v75);
  sub_1000077C8(&unk_1001778F0, &qword_10011E000);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v30(v21, 0, 1, v22);
    sub_1000DDBAC(v21, v28, type metadata accessor for SendOverAirDropAction);
    LocalizedStringResource.init(stringLiteral:)();
    sub_1000DDCDC(v64, v75);
    sub_1000DDA5C(v28, v25, type metadata accessor for SendOverAirDropAction);
    v31 = (*(v23 + 80) + 248) & ~*(v23 + 80);
    v32 = swift_allocObject();
    v33 = v75[13];
    *(v32 + 208) = v75[12];
    *(v32 + 224) = v33;
    *(v32 + 240) = v76;
    v34 = v75[9];
    *(v32 + 144) = v75[8];
    *(v32 + 160) = v34;
    v35 = v75[11];
    *(v32 + 176) = v75[10];
    *(v32 + 192) = v35;
    v37 = v75[5];
    v36 = v75[6];
    *(v32 + 80) = v75[4];
    *(v32 + 96) = v37;
    v38 = v75[7];
    *(v32 + 112) = v36;
    *(v32 + 128) = v38;
    v39 = v75[1];
    *(v32 + 16) = v75[0];
    *(v32 + 32) = v39;
    v40 = v75[3];
    *(v32 + 48) = v75[2];
    *(v32 + 64) = v40;
    sub_1000DDBAC(v25, v32 + v31, type metadata accessor for SendOverAirDropAction);
    v41 = &v12[*(v63 + 20)];
    *v41 = sub_1000E0294;
    v41[1] = v32;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v42 = type metadata accessor for ContinuousClock.Instant();
    v43 = *(*(v42 - 8) + 48);
    v44 = 0.0;
    if (v43(v10, 1, v42) == 1)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = 10.0;
    }

    sub_1000159AC(v10, &qword_100174328, &qword_10011AF08);
    sub_1000DDBAC(v12, v14, type metadata accessor for ShareableContentActionButton);
    v46 = &v14[*(v65 + 36)];
    *v46 = v45;
    v46[8] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v69;
    static Published.subscript.getter();

    if (v43(v47, 1, v42) == 1)
    {
      v44 = 1.0;
    }

    sub_1000159AC(v47, &qword_100174328, &qword_10011AF08);
    v48 = v70;
    sub_100021A84(v14, v70, &unk_1001775A0, &unk_10011FDE0);
    *(v48 + *(v66 + 36)) = v44;
    v49 = static Animation.spring(response:dampingFraction:blendDuration:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v71;
    static Published.subscript.getter();

    sub_1000E0E64(v28, type metadata accessor for SendOverAirDropAction);
    v51 = v43(v50, 1, v42) != 1;
    sub_1000159AC(v50, &qword_100174328, &qword_10011AF08);
    v52 = v68;
    sub_100021A84(v48, v68, &qword_100177590, &qword_10011FDD8);
    v53 = v72;
    v54 = v52 + *(v72 + 36);
    *v54 = v49;
    *(v54 + 8) = v51;
    v55 = v52;
    v56 = v67;
    sub_100021A84(v55, v67, &qword_100177580, &qword_10011FDD0);
    v57 = v56;
    v58 = v74;
    sub_100021A84(v57, v74, &qword_100177580, &qword_10011FDD0);
    v59 = 0;
    v60 = v58;
    v61 = v53;
  }

  else
  {
    v59 = 1;
    v30(v21, 1, 1, v22);
    sub_1000159AC(v21, &unk_100177910, &qword_100120160);
    v60 = v74;
    v61 = v72;
  }

  return (*(v73 + 56))(v60, v59, 1, v61);
}

uint64_t sub_1000D7AA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1000078DC(a1, v6);
  (*(v7 + 24))(v6, v7);
  sub_1000DDCDC(a2, v19);
  sub_100007878(a1, v18);
  v8 = swift_allocObject();
  v9 = v19[13];
  *(v8 + 208) = v19[12];
  *(v8 + 224) = v9;
  *(v8 + 240) = v20;
  v10 = v19[9];
  *(v8 + 144) = v19[8];
  *(v8 + 160) = v10;
  v11 = v19[11];
  *(v8 + 176) = v19[10];
  *(v8 + 192) = v11;
  v12 = v19[5];
  *(v8 + 80) = v19[4];
  *(v8 + 96) = v12;
  v13 = v19[7];
  *(v8 + 112) = v19[6];
  *(v8 + 128) = v13;
  v14 = v19[1];
  *(v8 + 16) = v19[0];
  *(v8 + 32) = v14;
  v15 = v19[3];
  *(v8 + 48) = v19[2];
  *(v8 + 64) = v15;
  sub_1000590D8(v18, v8 + 248);
  result = type metadata accessor for ShareableContentActionButton(0);
  v17 = (a3 + *(result + 20));
  *v17 = sub_1000E0640;
  v17[1] = v8;
  return result;
}

double sub_1000D7BC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_1000078DC(a2, v4);

  return sub_10005560C(v6, a1 + 120, 0, v3, v4, v5);
}

uint64_t sub_1000D7C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000077C8(&qword_100177368, &qword_10011FBC0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v27[-v8];
  v10 = sub_1000077C8(&qword_100177358, &qword_10011FBB8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v27[-v12];
  v14 = *(a2 + 168);
  v15 = *(a2 + 176);
  v29 = v14;
  v30 = v15;
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  v16 = 0.0;
  if (v28)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = sub_1000077C8(&qword_100177378, &qword_10011FBC8);
  (*(*(v18 - 8) + 16))(v9, a1, v18);
  *&v9[*(v7 + 44)] = v17;
  v29 = v14;
  v30 = v15;
  State.wrappedValue.getter();
  if (!v28)
  {
    v16 = 10.0;
  }

  sub_100021A84(v9, v13, &qword_100177368, &qword_10011FBC0);
  v19 = &v13[*(v11 + 44)];
  *v19 = v16;
  *(v19 + 8) = 0;
  v29 = v14;
  v30 = v15;
  State.wrappedValue.getter();
  if (v28)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.66;
  }

  static UnitPoint.center.getter();
  v22 = v21;
  v24 = v23;
  sub_100021A84(v13, a3, &qword_100177358, &qword_10011FBB8);
  result = sub_1000077C8(&qword_100177310, &qword_10011FBA8);
  v26 = a3 + *(result + 36);
  *v26 = v20;
  *(v26 + 8) = v20;
  *(v26 + 16) = v22;
  *(v26 + 24) = v24;
  return result;
}

void *sub_1000D7EE4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1000077C8(&qword_100177280, &qword_10011FAF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_1000077C8(&qword_100177288, &qword_10011FAF8);
  __chkstk_darwin(v10);
  v13 = (&v37 - v12);
  LOBYTE(v12) = *a1;
  v43 = a3;
  if (v12)
  {
    v42 = &v37;
    __chkstk_darwin(v11);
    *(&v37 - 2) = a2;
    v41 = v10;
    v40 = sub_1000077C8(&qword_100177290, &qword_10011FB00);
    v14 = sub_100007CCC(&qword_100177298, &qword_10011FB08);
    v15 = sub_100007CCC(&qword_1001772A0, &qword_10011FB10);
    v16 = sub_100007CCC(&qword_1001772A8, &qword_10011FB18);
    v17 = sub_1000199C8(&unk_1001772B0, &qword_1001772A8, &qword_10011FB18, &protocol conformance descriptor for VStack<A>);
    v18 = sub_10004BB74();
    v45 = v16;
    v46 = &type metadata for String;
    v47 = v17;
    v48 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    v45 = v14;
    v46 = v15;
    v47 = OpaqueTypeConformance2;
    v48 = v20;
    swift_getOpaqueTypeConformance2();
    NavigationView.init(content:)();
    (*(v7 + 16))(v13, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&unk_100177268, &qword_10011FAE8);
    sub_1000DDE28();
    sub_1000199C8(&qword_100177278, &qword_100177280, &qword_10011FAF0, &protocol conformance descriptor for NavigationView<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v42 = v6;
    v22 = *(a2 + 88);
    if (v22 >> 62)
    {
      v22 = 0;
      v34 = 0;
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v27 = 0;
      v36 = 0;
      v29 = 0;
      v28 = 0;
      v30 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v35 = 0;
    }

    else
    {
      v23 = *(a2 + 112);
      v25 = *(a2 + 96);
      v24 = *(a2 + 104);
      v40 = *(a2 + 80);
      v38 = *(a2 + 72);
      v26 = *(a2 + 56);
      v37 = *(a2 + 64);
      v39 = v26;
      v27 = *(a2 + 48);
      v41 = *(a2 + 40);
      v28 = *(a2 + 24);
      v29 = *(a2 + 32);
      v30 = *(a2 + 16);
      v45 = v30;
      v46 = v28;
      v47 = v29;
      v48 = v41;
      v49 = v27;
      v50 = v26;
      v51 = v37;
      v52 = v38;
      v53 = v40;
      v54 = v22;
      v55 = v25;
      v56 = v24;
      v57 = v23;
      sub_100070BB4(&v45, v44);
      v31 = v39;
      v32 = v37;
      v33 = v38;
      v34 = v40;
      v35 = sub_1000D8410;
      v36 = v41;
    }

    *v13 = v30;
    v13[1] = v28;
    v13[2] = v29;
    v13[3] = v36;
    v13[4] = v27;
    v13[5] = v31;
    v13[6] = v32;
    v13[7] = v33;
    v13[8] = v34;
    v13[9] = v22;
    v13[10] = v25;
    v13[11] = v24;
    v13[12] = v23;
    v13[13] = v35;
    v13[14] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&unk_100177268, &qword_10011FAE8);
    sub_1000DDE28();
    sub_1000199C8(&qword_100177278, &qword_100177280, &qword_10011FAF0, &protocol conformance descriptor for NavigationView<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000D8424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v47 = a2;
  v2 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  __chkstk_darwin(v2);
  v44 = &v38 - v4;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v41 = sub_1000077C8(&qword_1001772A8, &qword_10011FB18);
  __chkstk_darwin(v41);
  v8 = &v38 - v7;
  v9 = sub_1000077C8(&qword_100177298, &qword_10011FB08);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  __chkstk_darwin(v9);
  v48 = &v38 - v11;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1000077C8(&qword_1001772C8, &qword_10011FB20);
  type metadata accessor for SharingOptionsViewModel();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10004E218();
  SharingOptionsViewModel.__allocating_init(collaborationShareOptions:layoutMargins:userDidChangeOption:contentSizeDidChange:)();
  SharingOptionsView.init(viewModel:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  *&v49 = v12;
  *(&v49 + 1) = v13;
  v39 = sub_1000199C8(&unk_1001772B0, &qword_1001772A8, &qword_10011FB18, &protocol conformance descriptor for VStack<A>);
  v15 = sub_10004BB74();
  v16 = v41;
  View.navigationTitle<A>(_:)();
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1000159AC(v8, &qword_1001772A8, &qword_10011FB18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v64 = String.init(localized:table:bundle:locale:comment:)();
  v65 = v24;
  sub_1000DDCDC(v40, &v49);
  v25 = swift_allocObject();
  v26 = v62;
  *(v25 + 208) = v61;
  *(v25 + 224) = v26;
  *(v25 + 240) = v63;
  v27 = v58;
  *(v25 + 144) = v57;
  *(v25 + 160) = v27;
  v28 = v60;
  *(v25 + 176) = v59;
  *(v25 + 192) = v28;
  v29 = v54;
  *(v25 + 80) = v53;
  *(v25 + 96) = v29;
  v30 = v56;
  *(v25 + 112) = v55;
  *(v25 + 128) = v30;
  v31 = v50;
  *(v25 + 16) = v49;
  *(v25 + 32) = v31;
  v32 = v52;
  *(v25 + 48) = v51;
  *(v25 + 64) = v32;
  v33 = v44;
  Button<>.init<A>(_:action:)();
  *&v49 = v16;
  *(&v49 + 1) = &type metadata for String;
  *&v50 = v39;
  *(&v50 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
  v34 = v42;
  v35 = v45;
  v36 = v48;
  View.navigationBarItems<A>(trailing:)();
  (*(v46 + 8))(v33, v35);
  return (*(v43 + 8))(v36, v34);
}

uint64_t sub_1000D8A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = static Alignment.center.getter();
  a2[1] = v10;
  v11 = a2 + *(sub_1000077C8(&qword_100177200, &qword_10011FA70) + 44);
  (*(v7 + 16))(v9, v2, v6);
  sub_1000DDA5C(v2, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NameDrop);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1000DDBAC(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for NameDrop);
  NameDropView.init(transactionIdentifier:dismissViewAction:)();
  v14 = sub_100060910();
  *&v11[*(sub_1000077C8(&qword_100177208, &qword_10011FA78) + 36)] = v14;
  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(sub_1000077C8(&unk_100177210, &unk_10011FAB0) + 36));
  v17 = *(sub_1000077C8(&qword_1001749A0, &qword_10011B760) + 28);
  v18 = enum case for ColorScheme.light(_:);
  v19 = type metadata accessor for ColorScheme();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  v20 = static Color.black.getter();
  LOBYTE(v18) = static Edge.Set.all.getter();
  result = sub_1000077C8(&qword_100177220, &qword_10011FAC0);
  v22 = a2 + *(result + 36);
  *v22 = v20;
  v22[8] = v18;
  return result;
}

uint64_t sub_1000D8CEC@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v61 = a2;
  v56 = sub_1000077C8(&qword_100177028, &qword_10011F720);
  __chkstk_darwin(v56);
  v4 = &v48 - v3;
  v60 = sub_1000077C8(&qword_100177030, &qword_10011F728);
  __chkstk_darwin(v60);
  v57 = &v48 - v5;
  v55 = sub_1000077C8(&qword_100177038, &qword_10011F730);
  __chkstk_darwin(v55);
  v52 = &v48 - v6;
  v54 = type metadata accessor for UUID();
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000077C8(&qword_100177040, &qword_10011F738);
  __chkstk_darwin(v58);
  v59 = &v48 - v8;
  v9 = type metadata accessor for OpacityTransition();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000077C8(&qword_100177048, &qword_10011F740);
  v50 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  sub_1000522F8(v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v33 = *(v20 + 5);
        v88 = *(v20 + 4);
        v89 = v33;
        v90 = *(v20 + 24);
        v34 = *(v20 + 1);
        v84 = *v20;
        v85 = v34;
        v35 = *(v20 + 3);
        v86 = *(v20 + 2);
        v87 = v35;
        v36 = *(v20 + 120);
        v83[0] = *(v20 + 104);
        v83[1] = v36;
        v83[2] = *(v20 + 136);
        sub_1000DC0F0(v83, v74);
        type metadata accessor for NearbySharingInteractionViewModel(0);
        sub_1000DC14C(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel, &unk_10011AF84);
        v66[0] = ObservedObject.init(wrappedValue:)();
        v66[1] = v37;
        v71 = v88;
        v72 = v89;
        v73 = v90;
        v67 = v84;
        v68 = v85;
        v69 = v86;
        v70 = v87;
        LOBYTE(v62[0]) = 0;
        State.init(wrappedValue:)();
        v74[48] = v64;
        v75 = v65;
        LOBYTE(v62[0]) = 1;
        State.init(wrappedValue:)();
        v76 = v64;
        v77 = v65;
        LOBYTE(v62[0]) = 2;
        sub_1000077C8(&unk_1001770C8, &qword_10011F768);
        State.init(wrappedValue:)();
        v78 = v64;
        v79 = v65;
        LOBYTE(v62[0]) = 0;
        State.init(wrappedValue:)();
        v80 = v64;
        v81 = v65;
        static AnyTransition.identity.getter();
        static AnyTransition.opacity.getter();
        static Animation.default.getter();
        Animation.delay(_:)();

        AnyTransition.animation(_:)();

        v38 = static AnyTransition.asymmetric(insertion:removal:)();

        v82 = v38;
        sub_100007BA4(v66, v62, &qword_1001770A0, &qword_10011F760);
        v63 = 1;
        sub_1000077C8(&qword_100177088, &qword_10011F758);
        sub_1000077C8(&qword_1001770A0, &qword_10011F760);
        sub_1000DBE4C();
        sub_1000DBF04();
        _ConditionalContent<>.init(storage:)();
        sub_100007BA4(&v64, v59, &qword_100177070, &qword_10011F750);
        swift_storeEnumTagMultiPayload();
        sub_1000077C8(&qword_100177070, &qword_10011F750);
        sub_1000DBDC0();
        sub_1000DC010();
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(&v64, &qword_100177070, &qword_10011F750);
        sub_1000159AC(v66, &qword_1001770A0, &qword_10011F760);
        return sub_100056D60(v83);
      }

      goto LABEL_11;
    }

LABEL_8:

    sub_1000E0E64(v20, type metadata accessor for NearbySharingInteractionViewState);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1000DBCB8();
    v47 = v57;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v47, v59, &qword_100177030, &qword_10011F728);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100177070, &qword_10011F750);
    sub_1000DBDC0();
    sub_1000DC010();
    _ConditionalContent<>.init(storage:)();
    v44 = v47;
    v45 = &qword_100177030;
    v46 = &qword_10011F728;
    return sub_1000159AC(v44, v45, v46);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v23 = v51;
      v24 = v53;
      v25 = v20;
      v26 = v54;
      (*(v51 + 32))(v53, v25, v54);
      v27 = v52;
      (*(v23 + 16))(v52, v24, v26);
      *(v27 + *(type metadata accessor for NameDrop(0) + 20)) = v21;
      v28 = [objc_opt_self() currentTraitCollection];
      [v28 displayCornerRadius];
      v30 = v29;

      v64 = v30;
      sub_1000DC09C();
      *(v27 + *(v55 + 36)) = AnyTransition.init<A>(_:)();
      sub_100007BA4(v27, v4, &qword_100177038, &qword_10011F730);
      swift_storeEnumTagMultiPayload();
      sub_1000DBCB8();
      v31 = v57;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v31, v59, &qword_100177030, &qword_10011F728);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100177070, &qword_10011F750);
      sub_1000DBDC0();
      sub_1000DC010();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v31, &qword_100177030, &qword_10011F728);
      sub_1000159AC(v27, &qword_100177038, &qword_10011F730);
      return (*(v23 + 8))(v53, v54);
    }

    goto LABEL_8;
  }

  v57 = *v20;
  type metadata accessor for ShockwaveAnimationCoordinator();
  sub_1000DC14C(&qword_1001744A0, &type metadata accessor for ShockwaveAnimationCoordinator, &protocol conformance descriptor for ShockwaveAnimationCoordinator);

  v56 = ObservedObject.init(wrappedValue:)();
  v40 = v39;
  OpacityTransition.init()();
  static Animation.default.getter();
  Animation.delay(_:)();

  v41 = sub_1000DC14C(&qword_1001770D8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  Transition.animation(_:)();

  (*(v49 + 8))(v11, v9);
  v42 = v50;
  (*(v50 + 16))(v14, v17, v12);
  v64 = v9;
  v65 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = AnyTransition.init<A>(_:)();
  (*(v42 + 8))(v17, v12);
  v62[0] = v56;
  v62[1] = v40;
  v62[2] = v43;
  v63 = 0;

  sub_1000077C8(&qword_100177088, &qword_10011F758);
  sub_1000077C8(&qword_1001770A0, &qword_10011F760);
  sub_1000DBE4C();
  sub_1000DBF04();
  _ConditionalContent<>.init(storage:)();
  sub_100007BA4(&v64, v59, &qword_100177070, &qword_10011F750);
  swift_storeEnumTagMultiPayload();
  sub_1000077C8(&qword_100177070, &qword_10011F750);
  sub_1000DBDC0();
  sub_1000DC010();
  _ConditionalContent<>.init(storage:)();

  v44 = &v64;
  v45 = &qword_100177070;
  v46 = &qword_10011F750;
  return sub_1000159AC(v44, v45, v46);
}

uint64_t sub_1000D98EC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_1000D8CEC(*(v1 + 8), a1);
  sub_1000077C8(&qword_100177008, &qword_10011F700);
  (*(v4 + 104))(v9, enum case for ColorScheme.light(_:), v3);
  (*(v4 + 16))(v6, v9, v3);
  State.init(wrappedValue:)();
  (*(v4 + 8))(v9, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v10 = static SafeAreaRegions.all.getter();
  v11 = a1 + *(sub_1000077C8(&qword_100177010, &qword_10011F708) + 36);
  *v11 = v10;
  v11[8] = v3;
  v12 = static Animation.default.getter();
  v13 = (a1 + *(sub_1000077C8(&qword_100177018, &unk_10011F710) + 36));
  v14 = sub_1000077C8(&qword_100177020, &qword_100120EF0);
  result = sub_1000522F8(v13 + *(v14 + 36));
  *v13 = v12;
  return result;
}

char *sub_1000D9AE4(void *a1)
{
  v3 = sub_1000077C8(&unk_100176430, &qword_10011E550);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v22 = sub_1000077C8(&unk_100177100, &qword_10011E558);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - v7;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000908EC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *(v1 + qword_100176FA8) = v9;
  *(v1 + qword_100176FB0) = 0;
  *(v1 + qword_100176FA0) = a1;
  type metadata accessor for NearbySharingInteractionViewModel(0);
  sub_1000DC14C(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel, &unk_10011AF84);
  v10 = a1;
  v23 = ObservedObject.init(wrappedValue:)();
  v24 = v11;
  v12 = UIHostingController.init(rootView:)();
  result = [v12 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor:v15];

    [v12 setModalPresentationStyle:5];
    v23 = ObservableObject<>.objectWillChange.getter();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v16 = static OS_dispatch_queue.main.getter();
    v25 = v16;
    v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    type metadata accessor for ObservableObjectPublisher();
    sub_1000DD41C();
    Publisher.receive<A>(on:options:)();
    sub_1000159AC(v5, &unk_100176430, &qword_10011E550);

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v19 = swift_allocObject();
    *(v19 + 16) = sub_1000DD4BC;
    *(v19 + 24) = v18;
    sub_1000199C8(&qword_1001764A0, &unk_100177100, &qword_10011E558, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v20 = v22;
    Publisher<>.sink(receiveValue:)();

    (*(v6 + 8))(v8, v20);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1000DB608();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D9F38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000DB608();
  }
}

void sub_1000D9F8C(uint64_t a1)
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000908EC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(a1 + qword_100176FA8) = v2;
  *(a1 + qword_100176FB0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000DA040(int a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v32 - v17;
  v19 = [v3 presentedViewController];
  if (v19)
  {
    v20 = v19;
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100106B40;
      aBlock[3] = &unk_100160880;
      a2 = _Block_copy(aBlock);
    }

    v21 = type metadata accessor for NearbySharingInteractionViewController(0);
    v35.receiver = v4;
    v35.super_class = v21;
    objc_msgSendSuper2(&v35, "dismissViewControllerAnimated:completion:", a1 & 1, a2);
    _Block_release(a2);
  }

  else
  {
    v33 = a1;
    if (a1)
    {
      v22 = type metadata accessor for ContinuousClock.Instant();
      (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    }

    else
    {
      sub_1000542A0(v18);
    }

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    sub_100007BA4(v18, v14, &qword_100174328, &qword_10011AF08);
    type metadata accessor for MainActor();
    sub_1000253F8(a2, a3);
    v32 = v3;
    v24 = static MainActor.shared.getter();
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = a3;
    v28 = (v25 + v13 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_100021A84(v14, v29 + v25, &qword_100174328, &qword_10011AF08);
    v30 = v29 + v26;
    *v30 = v32;
    *(v30 + 8) = v33 & 1;
    v31 = (v29 + v28);
    *v31 = a2;
    v31[1] = v27;
    sub_1000E1D28(0, 0, v10, &unk_10011F778, v29);

    sub_1000159AC(v18, &qword_100174328, &qword_10011AF08);
  }
}

uint64_t sub_1000DA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 129) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  v9 = type metadata accessor for ContinuousClock();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  sub_1000077C8(&qword_100174328, &qword_10011AF08);
  *(v8 + 216) = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock.Instant();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 248) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 256) = v13;
  *(v8 + 264) = v12;

  return _swift_task_switch(sub_1000DA5D4, v13, v12);
}

uint64_t sub_1000DA5D4()
{
  v60 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_100007BA4(*(v0 + 136), v3, &qword_100174328, &qword_10011AF08);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(*(v0 + 216), &qword_100174328, &qword_10011AF08);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_10017F350);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);
      v11 = *(v0 + 192);
      v12 = *(v0 + 144);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v59 = v14;
      *v13 = 136315138;
      (*(v10 + 16))(v9, *(v12 + qword_100176FA0) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id, v11);
      sub_1000DC14C(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v10 + 8))(v9, v11);
      v18 = sub_10003E81C(v15, v17, &v59);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Deferring dismissal until shockwave animation is complete on interaction ID: %s", v13, 0xCu);
      sub_100007920(v14);
    }

    *(v0 + 288) = *(*(*(v0 + 144) + qword_100176FA0) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator);

    v26 = static Duration.seconds(_:)();
    v28 = v27;
    v58 = (&async function pointer to dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:) + async function pointer to dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:));
    v29 = swift_task_alloc();
    *(v0 + 296) = v29;
    *v29 = v0;
    v29[1] = sub_1000DAF78;

    return v58(v26, v28);
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 144);
    v32 = type metadata accessor for Logger();
    sub_100007D20(v32, qword_10017F350);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      v38 = *(v0 + 192);
      v39 = *(v0 + 144);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59 = v41;
      *v40 = 136315138;
      (*(v37 + 16))(v36, *(v39 + qword_100176FA0) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id, v38);
      sub_1000DC14C(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v37 + 8))(v36, v38);
      v45 = sub_10003E81C(v42, v44, &v59);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Deferring dismissal to allow for animations to complete on interaction ID: %s", v40, 0xCu);
      sub_100007920(v41);
    }

    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    static Clock<>.continuous.getter();
    v53 = swift_task_alloc();
    *(v0 + 272) = v53;
    v54 = sub_1000DC14C(&qword_1001770E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    *v53 = v0;
    v53[1] = sub_1000DABA8;
    v55 = *(v0 + 240);
    v56 = *(v0 + 184);
    v57 = *(v0 + 168);

    return static Task<>.sleep<A>(until:tolerance:clock:)(v55, v0 + 112, v56, v57, v54);
  }
}

uint64_t sub_1000DABA8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  *(*v1 + 280) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 256);
  v7 = *(v2 + 264);
  if (v0)
  {
    v8 = sub_1000DB2F8;
  }

  else
  {
    v8 = sub_1000DAD20;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000DAD20()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  if (*(v0 + 129))
  {
    v7 = 0.33;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v0[6] = sub_1000DC4E8;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100106B40;
  v0[5] = &unk_1001608D0;
  v10 = _Block_copy(v0 + 2);
  v11 = v6;

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = v4;
  v0[12] = sub_1000DC538;
  v0[13] = v12;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100005C38;
  v0[11] = &unk_100160920;
  v13 = _Block_copy(v0 + 8);
  v14 = v11;
  sub_1000253F8(v5, v4);

  [v8 animateWithDuration:v10 animations:v13 completion:v7];
  _Block_release(v13);
  _Block_release(v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000DAF78()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_1000DB0BC, v3, v2);
}

uint64_t sub_1000DB0BC()
{

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  if (*(v0 + 129))
  {
    v4 = 0.33;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v0[6] = sub_1000DC4E8;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100106B40;
  v0[5] = &unk_1001608D0;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;

  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v2;
  v9[4] = v1;
  v0[12] = sub_1000DC538;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100005C38;
  v0[11] = &unk_100160920;
  v10 = _Block_copy(v0 + 8);
  v11 = v8;
  sub_1000253F8(v2, v1);

  [v5 animateWithDuration:v7 animations:v10 completion:v4];
  _Block_release(v10);
  _Block_release(v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000DB2F8()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1000DB3B0(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000DB410(int a1, id a2, void *a3, uint64_t a4)
{
  v6 = [a2 presentingViewController];
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8[4] = a3;
      v8[5] = a4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100106B40;
      v8[3] = &unk_100160948;
      a3 = _Block_copy(v8);
    }

    [v7 dismissViewControllerAnimated:0 completion:a3];
    _Block_release(a3);
  }
}

void sub_1000DB4F4(void *a1, int a2, int a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000DC1CC;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  sub_1000DA040(a3, v6, v7);
  sub_10002534C(v6, v7);
}

void sub_1000DB5B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1000DB92C();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for NearbySharingInteractionViewController(0);
  objc_msgSendSuper2(&v5, "viewDidAppear:", a3);
}

void sub_1000DB608()
{
  v1 = v0;
  v2 = sub_1000077C8(&unk_1001770F0, &qword_10011F780);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  sub_1000522F8(&v21 - v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = type metadata accessor for ContinuousClock.Instant();
  v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  sub_1000159AC(v8, &qword_100174328, &qword_10011AF08);
  v17 = *(v3 + 56);
  sub_1000DDBAC(v14, v5, type metadata accessor for NearbySharingInteractionViewState);
  v5[v17] = v16 != 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 4 && (sub_1000DDA5C(v5, v11, type metadata accessor for NearbySharingInteractionViewState), sub_1000588EC(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 4), *(v11 + 5), *(v11 + 6), *(v11 + 7), *(v11 + 8), *(v11 + 9), *(v11 + 10), *(v11 + 11)), sub_100056D60((v11 + 104)), v16 == 1))
  {
    sub_1000E0E64(v5, type metadata accessor for NearbySharingInteractionViewState);
    v20 = *(v1 + qword_100176FB0);
    *(v1 + qword_100176FB0) = 1;
    if ((v20 & 1) == 0)
    {
      sub_1000DB92C();
    }
  }

  else
  {
    v19 = *(v1 + qword_100176FB0);
    *(v1 + qword_100176FB0) = 0;
    if (v19 == 1)
    {
      sub_1000DB92C();
    }

    sub_1000159AC(v5, &unk_1001770F0, &qword_10011F780);
  }
}

void sub_1000DB92C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = [v3 windowScene];

  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_13:
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Cannot update SystemAffordances for namedrop: remoteAlertScene has not been created", v13, 2u);
    }

    goto LABEL_17;
  }

  v6 = qword_100176FB0;
  if (v0[qword_100176FB0])
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  [v5 setDesiredHardwareButtonEvents:v7];
  if (v0[v6])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v8 setDismissalAnimationStyle:v9];
  [v8 setAllowsMenuButtonDismissal:v0[v6]];
  v10 = v0[v6];
  oslog = [objc_opt_self() settingsWithDuration:0.3 delay:0.1];
  [v8 setContentOverlaysStatusBar:(v10 & 1) == 0 animationSettings:?];

LABEL_17:
}

void sub_1000DBB60()
{
  v8 = *(v0 + qword_100176FA8);

  v8, v1, v2, v3, v4, v5, v6, v7;
}

id sub_1000DBBA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySharingInteractionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000DBBD8(uint64_t a1)
{
  v9 = *(a1 + qword_100176FA8);

  v9, v2, v3, v4, v5, v6, v7, v8;
}

unint64_t sub_1000DBCB8()
{
  result = qword_100177050;
  if (!qword_100177050)
  {
    sub_100007CCC(&qword_100177038, &qword_10011F730);
    sub_1000DC14C(&qword_100177058, type metadata accessor for NameDrop, &unk_10011FA20);
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177050);
  }

  return result;
}

unint64_t sub_1000DBDC0()
{
  result = qword_100177078;
  if (!qword_100177078)
  {
    sub_100007CCC(&qword_100177070, &qword_10011F750);
    sub_1000DBE4C();
    sub_1000DBF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177078);
  }

  return result;
}

unint64_t sub_1000DBE4C()
{
  result = qword_100177080;
  if (!qword_100177080)
  {
    sub_100007CCC(&qword_100177088, &qword_10011F758);
    sub_10004A02C();
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177080);
  }

  return result;
}

unint64_t sub_1000DBF04()
{
  result = qword_100177098;
  if (!qword_100177098)
  {
    sub_100007CCC(&qword_1001770A0, &qword_10011F760);
    sub_1000DBFBC();
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177098);
  }

  return result;
}

unint64_t sub_1000DBFBC()
{
  result = qword_1001770A8;
  if (!qword_1001770A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001770A8);
  }

  return result;
}

unint64_t sub_1000DC010()
{
  result = qword_1001770B0;
  if (!qword_1001770B0)
  {
    sub_100007CCC(&qword_100177030, &qword_10011F728);
    sub_1000DBCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001770B0);
  }

  return result;
}

unint64_t sub_1000DC09C()
{
  result = qword_1001770B8;
  if (!qword_1001770B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001770B8);
  }

  return result;
}

uint64_t sub_1000DC14C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DC194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC1DC()
{
  v1 = *(sub_1000077C8(&qword_100174328, &qword_10011AF08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for ContinuousClock.Instant();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v2 | 7);
}

uint64_t sub_1000DC334(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000077C8(&qword_100174328, &qword_10011AF08) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = (v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000BCF0;

  return sub_1000DA3E8(a1, v8, v9, v1 + v6, v11, v12, v14, v15);
}

uint64_t sub_1000DC498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DC4B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC4F0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DC544@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC59C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC5F4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000DC658@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_1000DC7D0(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void, __n128), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t (*a9)(void), uint64_t a10, unint64_t *a11)
{
  v114 = a7;
  v115 = a8;
  v113 = a6;
  v102 = a3;
  v101 = a2;
  v116 = a1;
  v13 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v13 - 8);
  v106 = &v97 - v14;
  v15 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v15 - 8);
  v100 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v97 - v18;
  __chkstk_darwin(v19);
  v105 = &v97 - v20;
  v21 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  __chkstk_darwin(v21 - 8);
  v104 = &v97 - v22;
  v23 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v111 = *(v23 - 8);
  v112 = v23;
  __chkstk_darwin(v23);
  v110 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v109 = &v97 - v26;
  v108 = type metadata accessor for SFNearbySharingInteraction();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v103 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v97 - v33;
  v35 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v98 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v37;
  v39 = __chkstk_darwin(v38);
  v41 = &v97 - v40;
  v119[3] = a5(0, v39);
  v119[4] = sub_1000DC14C(v113, v114, v115);
  v42 = sub_100058F84(v119);
  sub_1000DDA5C(v116, v42, a9);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v30 + 88))(v34, v29) == enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
  {
    (*(v30 + 96))(v34, v29);
    v116 = v36;
    v114 = *(v36 + 4);
    (v114)(v41, v34, v35);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v43 = v109;
    SFNearbySharingInteraction.interactionType.getter();
    (*(v107 + 8))(v28, v108);
    v45 = v111;
    v44 = v112;
    v46 = v110;
    (*(v111 + 13))(v110, enum case for SFNearbySharingInteraction.InteractionType.connect(_:), v112);
    v47 = static SFNearbySharingInteraction.InteractionType.== infix(_:_:)();
    v48 = *(v45 + 1);
    v48(v46, v44);
    v48(v43, v44);
    if ((v47 & 1) != 0 && (v49 = v104, SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter(), v50 = type metadata accessor for UUID(), v51 = (*(*(v50 - 8) + 48))(v49, 1, v50), sub_1000159AC(v49, &qword_100172F08, &unk_10011E530), v51 == 1))
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_100007D20(v52, qword_10017F350);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v116;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Can not share content: we don't have a resolved endpoint.", v57, 2u);
      }

      (*(v56 + 1))(v41, v35);
    }

    else
    {
      v115 = v35;
      swift_getKeyPath();
      swift_getKeyPath();
      v78 = v105;
      static Published.subscript.getter();

      v79 = type metadata accessor for ContinuousClock.Instant();
      v80 = *(v79 - 8);
      if ((*(v80 + 48))(v78, 1, v79) == 1)
      {
        v112 = a10;
        v113 = a11;
        sub_1000159AC(v78, &qword_100174328, &qword_10011AF08);
        v81 = v99;
        static ContinuousClock.Instant.now.getter();
        (*(v80 + 56))(v81, 0, 1, v79);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100007BA4(v81, v100, &qword_100174328, &qword_10011AF08);
        v82 = a4;
        static Published.subscript.setter();
        sub_1000159AC(v81, &qword_100174328, &qword_10011AF08);
        v83 = type metadata accessor for TaskPriority();
        (*(*(v83 - 8) + 56))(v106, 1, 1, v83);
        sub_100007878(v119, v118);
        sub_100007878(v101, v117);
        v84 = v116;
        v85 = *(v116 + 2);
        v86 = v98;
        v87 = v41;
        v111 = v41;
        v88 = v115;
        v85(v98, v87, v115);
        type metadata accessor for MainActor();
        v89 = v102;
        v90 = v102;
        v91 = v82;
        v92 = static MainActor.shared.getter();
        v93 = (*(v84 + 80) + 120) & ~*(v84 + 80);
        v94 = (v97 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
        v95 = swift_allocObject();
        v95[2] = v92;
        v95[3] = &protocol witness table for MainActor;
        sub_1000590D8(v118, (v95 + 4));
        sub_1000590D8(v117, (v95 + 9));
        v95[14] = v89;
        (v114)(v95 + v93, v86, v88);
        *(v95 + v94) = v91;
        sub_1000F9860(0, 0, v106, v113, v95);

        (*(v84 + 1))(v111, v88);
      }

      else
      {
        (*(v116 + 1))(v41, v115);
        sub_1000159AC(v78, &qword_100174328, &qword_10011AF08);
      }
    }
  }

  else
  {
    v58 = a4;
    v59 = *(v30 + 8);
    v59(v34, v29);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100007D20(v60, qword_10017F350);
    v61 = v58;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v118[0] = v65;
      *v64 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      v116 = v59;
      v66 = v103;
      static Published.subscript.getter();

      sub_1000DC14C(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v116(v66, v29);
      v70 = sub_10003E81C(v67, v69, v118);
      v69, v71, v72, v73, v74, v75, v76, v77;
      *(v64 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v62, v63, "Can not share content as the state of the interaction is not connected: %s", v64, 0xCu);
      sub_100007920(v65);
    }
  }

  return sub_100007920(v119);
}

unint64_t sub_1000DD41C()
{
  result = qword_100177110;
  if (!qword_100177110)
  {
    sub_1000165C4(255, &qword_100173D90, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177110);
  }

  return result;
}

uint64_t sub_1000DD484(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000DD4C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_1000DD590(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1000DD5DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1000DD624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DD6B0()
{
  result = qword_1001771B0;
  if (!qword_1001771B0)
  {
    sub_100007CCC(&qword_100177018, &unk_10011F710);
    sub_1000DD768();
    sub_1000199C8(&qword_1001771F0, &qword_100177020, &qword_100120EF0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B0);
  }

  return result;
}

unint64_t sub_1000DD768()
{
  result = qword_1001771B8;
  if (!qword_1001771B8)
  {
    sub_100007CCC(&qword_100177010, &qword_10011F708);
    sub_1000DD7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B8);
  }

  return result;
}

unint64_t sub_1000DD7F4()
{
  result = qword_1001771C0;
  if (!qword_1001771C0)
  {
    sub_100007CCC(&qword_100177008, &qword_10011F700);
    sub_1000DD8B0();
    sub_1000DC14C(&qword_1001771E8, type metadata accessor for LumaTrackingViewModifier, &unk_10011B59C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C0);
  }

  return result;
}

unint64_t sub_1000DD8B0()
{
  result = qword_1001771C8;
  if (!qword_1001771C8)
  {
    sub_100007CCC(&qword_1001771D0, &qword_10011F920);
    sub_1000DD934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C8);
  }

  return result;
}

unint64_t sub_1000DD934()
{
  result = qword_1001771D8;
  if (!qword_1001771D8)
  {
    sub_100007CCC(&qword_1001771E0, &qword_10011F928);
    sub_1000DBDC0();
    sub_1000DC010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771D8);
  }

  return result;
}

unint64_t sub_1000DD9D0()
{
  result = qword_1001771F8;
  if (!qword_1001771F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771F8);
  }

  return result;
}

uint64_t sub_1000DDA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DDAC4()
{
  v1 = (type metadata accessor for NameDrop(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DDBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000DDD1C()
{
  result = qword_100177250;
  if (!qword_100177250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177250);
  }

  return result;
}

unint64_t sub_1000DDD70()
{
  result = qword_100177258;
  if (!qword_100177258)
  {
    sub_100007CCC(&qword_100177240, &qword_10011FAE0);
    sub_1000DDE28();
    sub_1000199C8(&qword_100177278, &qword_100177280, &qword_10011FAF0, &protocol conformance descriptor for NavigationView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177258);
  }

  return result;
}