uint64_t sub_1001C7190(uint64_t a1)
{
  v23 = v1;
  v2 = v1[90];
  swift_willThrow();
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v3 = v1[74];
  v4 = sub_1001CA464();
  sub_1001CA4A0(v4, qword_1003F26C8);
  sub_1001CA388(v2, (v1 + 10));
  swift_errorRetain();
  v5 = v3;
  Logger.logObject.getter();
  sub_1001461BC();
  sub_10013B618();
  (*(v6 + 8))(v3);
  v7 = static os_log_type_t.error.getter();
  sub_1001CA3C0(v2);

  if (os_log_type_enabled(v3, v7))
  {
    v8 = v1[88];
    v9 = v1[87];
    v10 = v1[68];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = sub_1001CA470();
    v22[0] = v13;
    *v11 = 136446978;
    *(v11 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v22);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_100080210(*(v10 + 40), *(v10 + 48), v22);
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_100080210(v9, v8, v22);
    *(v11 + 32) = 2112;
    v14 = _convertErrorToNSError(_:)();
    *(v11 + 34) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v5, v7, "[%{public}s][%{public}s]: Lookup for %{public}s completed with error: %@", v11, 0x2Au);
    sub_10013B1E8(v12, &qword_1003D18D0, &qword_1002F7FE0);
    sub_100081C28(v12);
    swift_arrayDestroy();
    sub_100081C28(v13);
    sub_100081C28(v11);
  }

  v15 = v1[89];
  v16 = v1[86];
  v17 = v1[85];
  v18 = v1[83];
  v19 = v1[82];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_1001CA488(v19);
  sub_1001CA488(v18);

  v20 = v1[1];

  return v20();
}

uint64_t sub_1001C74D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v6);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001CA1A0(a1);
  if (!v10)
  {
    return 0;
  }

  if (v9 == 0x6169726F74696465 && v10 == 0xED00006D6574496CLL)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v23 = 0x6C63697472417369;
  v24 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v22, v13, &v25);
  sub_10008E550(v22);
  if (v26)
  {
    if (swift_dynamicCast() & 1) != 0 && (v23)
    {
      return 1;
    }
  }

  else
  {
    sub_10013B1E8(&v25, &unk_1003CCB70, &unk_1002ED050);
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v15 = sub_10007EDA4(v6, qword_1003F26C8);
  sub_10007EDDC(v15, v8, v16);
  sub_1001CA388(v4, v22);
  v17 = Logger.logObject.getter();
  v18 = type metadata accessor for Logger();
  (*(*(v18 - 8) + 8))(v8, v18);
  v19 = static os_log_type_t.error.getter();
  sub_1001CA3C0(v4);
  if (os_log_type_enabled(v17, v19))
  {
    v20 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v22);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100080210(v4[5], v4[6], v22);
    _os_log_impl(&_mh_execute_header, v17, v19, "[%{public}s][%{public}s]: Lookup item indicates editorial item, but parameters did not indicate article preference", v20, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t sub_1001C77E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v126 = a4;
  v134 = type metadata accessor for SKLogger(0);
  v6 = __chkstk_darwin(v134);
  v131 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v107 - v8;
  v9 = sub_100080FB4(&qword_1003D15C0, &unk_1002F94A0);
  __chkstk_darwin(v9 - 8);
  v116 = &v107 - v10;
  v117 = type metadata accessor for URLQueryItem();
  v11 = *(v117 - 8);
  v12 = __chkstk_darwin(v117);
  v115 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v107 - v14;
  v15 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  __chkstk_darwin(v15 - 8);
  v120 = &v107 - v16;
  v17 = type metadata accessor for URL();
  v123 = *(v17 - 8);
  v124 = v17;
  v18 = __chkstk_darwin(v17);
  v122 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v107 - v20;
  v21 = sub_100080FB4(&qword_1003CEDE0, &unk_1002EF7F0);
  v22 = __chkstk_darwin(v21 - 8);
  v121 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v128 = &v107 - v24;
  v125 = a1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v25 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 64);
  v29 = (v26 + 63) >> 6;
  v130 = &unk_1002F9450;
  v112 = v11;
  v113 = (v11 + 32);
  v110 = v11 + 8;
  v111 = (v11 + 16);

  v30 = 0;
  v119 = 0;
  v127 = _swiftEmptyArrayStorage;
  v31 = &qword_1003CE658;
  v32 = &unk_1002F94B0;
  *&v33 = 136446722;
  v129 = v33;
  v135 = a2;
  v132 = a2 + 64;
  v133 = v29;
  if (v28)
  {
    while (1)
    {
LABEL_8:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v30 << 6);
      v37 = v135;
      sub_1001060C4(*(v135 + 48) + 40 * v36, v149);
      sub_100080F58(*(v37 + 56) + 32 * v36, v151);
      v146[0] = v149[0];
      v146[1] = v149[1];
      v147 = v150;
      sub_10008B5D0(v151, v148);
      sub_10008B634(v146, v144, &qword_1003CE658, v32);
      if (swift_dynamicCast())
      {
        v53 = v138[0];
        v54 = sub_100080F0C(v145);
        v108 = v53;
        *v144 = v53;
        v136 = *(&v53 + 1);
        __chkstk_darwin(v54);
        *(&v107 - 2) = v144;
        v55 = v119;
        v56 = sub_100178848(sub_1001CA3F0, (&v107 - 4), &off_100383D40);
        v119 = v55;
        if (!v56 && (*(v137 + 64) & 1) == 0)
        {
          v68 = v32;
          if (qword_1003CBE58 != -1)
          {
            swift_once();
          }

          v69 = sub_10007EDA4(v134, qword_1003F26C8);
          v70 = v109;
          sub_10007EDDC(v69, v109, v71);
          v72 = v137;
          sub_1001CA388(v137, v144);
          v73 = v136;

          v74 = Logger.logObject.getter();
          v75 = type metadata accessor for Logger();
          (*(*(v75 - 8) + 8))(v70, v75);
          v76 = static os_log_type_t.error.getter();
          v77 = v72;
          v78 = v73;
          sub_1001CA3C0(v77);

          if (os_log_type_enabled(v74, v76))
          {
            v79 = swift_slowAlloc();
            v144[0] = swift_slowAlloc();
            *v79 = v129;
            *(v79 + 4) = sub_100080210(0xD000000000000011, v130 | 0x8000000000000000, v144);
            *(v79 + 12) = 2082;
            *(v79 + 14) = sub_100080210(*(v137 + 40), *(v137 + 48), v144);
            *(v79 + 22) = 2080;
            v80 = sub_100080210(v108, v78, v144);

            *(v79 + 24) = v80;
            _os_log_impl(&_mh_execute_header, v74, v76, "[%{public}s][%{public}s]: Ignoring query parameter for unentitled client: %s", v79, 0x20u);
            swift_arrayDestroy();
            v25 = v132;
          }

          else
          {
          }

          v31 = &qword_1003CE658;
          v32 = v68;
          sub_10013B1E8(v146, &qword_1003CE658, v68);
          goto LABEL_16;
        }

        v57 = v116;
        sub_1001C97C4(v108, v136, v148, v116);
        v58 = v57;

        v59 = v57;
        v60 = v117;
        if (sub_100081D0C(v59, 1, v117) == 1)
        {
          v31 = &qword_1003CE658;
          sub_10013B1E8(v146, &qword_1003CE658, v32);
          sub_10013B1E8(v58, &qword_1003D15C0, &unk_1002F94A0);
          goto LABEL_16;
        }

        v61 = v114;
        v62 = *v113;
        (*v113)(v114, v58, v60);
        (*v111)(v115, v61, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001D9D58();
          v127 = v81;
        }

        v63 = *(v127 + 2);
        if (v63 >= *(v127 + 3) >> 1)
        {
          sub_1001D9D58();
          v127 = v82;
        }

        v64 = v112;
        v65 = v117;
        (*(v112 + 8))(v114, v117);
        sub_10013B1E8(v146, &qword_1003CE658, v32);
        v66 = v127;
        *(v127 + 2) = v63 + 1;
        v67 = v65;
        v31 = &qword_1003CE658;
        v62(&v66[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63], v115, v67);
      }

      else
      {
        sub_100080F0C(v145);
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v38 = sub_10007EDA4(v134, qword_1003F26C8);
        v39 = v131;
        sub_10007EDDC(v38, v131, v40);
        sub_10008B634(v146, v144, &qword_1003CE658, v32);
        v41 = v137;
        sub_1001CA388(v137, v138);
        v42 = Logger.logObject.getter();
        v43 = type metadata accessor for Logger();
        (*(*(v43 - 8) + 8))(v39, v43);
        v44 = static os_log_type_t.error.getter();
        sub_1001CA3C0(v41);
        v136 = v42;
        if (os_log_type_enabled(v42, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = v137;
          v143 = v46;
          *v45 = v129;
          *(v45 + 4) = sub_100080210(0xD000000000000011, v130 | 0x8000000000000000, &v143);
          *(v45 + 12) = 2082;
          *(v45 + 14) = sub_100080210(*(v47 + 40), *(v47 + 48), &v143);
          *(v45 + 22) = 2080;
          sub_10008B634(v144, v138, &qword_1003CE658, v32);
          v141[0] = v138[0];
          v141[1] = v138[1];
          v142 = v139;
          sub_100080F0C(v140);
          v48 = AnyHashable.description.getter();
          v50 = v49;
          sub_10008E550(v141);
          sub_10013B1E8(v144, &qword_1003CE658, v32);
          v51 = sub_100080210(v48, v50, &v143);

          *(v45 + 24) = v51;
          v52 = v136;
          _os_log_impl(&_mh_execute_header, v136, v44, "[%{public}s][%{public}s]: Invalid key format: %s", v45, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10013B1E8(v144, &qword_1003CE658, v32);
        }

        sub_10013B1E8(v146, &qword_1003CE658, v32);
      }

      v25 = v132;
LABEL_16:
      v29 = v133;
      if (!v28)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v34 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v34);
    ++v30;
    if (v28)
    {
      v30 = v34;
      goto LABEL_8;
    }
  }

  v83 = v121;
  sub_10008B634(v128, v121, &qword_1003CEDE0, &unk_1002EF7F0);
  v84 = type metadata accessor for URLComponents();
  if (sub_100081D0C(v83, 1, v84) == 1)
  {
    sub_10013B1E8(v83, &qword_1003CEDE0, &unk_1002EF7F0);
    v85 = v125;
    v86 = v126;
    v25 = v123;
    v31 = v124;
LABEL_37:
    (*(v25 + 16))(v86, v85, v31);
    goto LABEL_39;
  }

  v87 = v120;
  URLComponents.url.getter();
  (*(*(v84 - 8) + 8))(v83, v84);
  v31 = v124;
  v88 = sub_100081D0C(v87, 1, v124);
  v85 = v125;
  v86 = v126;
  v25 = v123;
  if (v88 == 1)
  {
    sub_10013B1E8(v87, &unk_1003D0540, &unk_1002EDD50);
    goto LABEL_37;
  }

  v89 = v118;
  URL.appending(queryItems:)();
  (*(v25 + 8))(v87, v31);
  (*(v25 + 32))(v86, v89, v31);
LABEL_39:

  if (qword_1003CBE58 == -1)
  {
    goto LABEL_40;
  }

LABEL_45:
  swift_once();
LABEL_40:
  sub_10007EDA4(v134, qword_1003F26C8);
  *&v149[0] = 0;
  *(&v149[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  strcpy(v149, "Original URL: ");
  HIBYTE(v149[0]) = -18;
  v90._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v90);

  v91._countAndFlagsBits = 0x3A736D6172617020;
  v91._object = 0xE900000000000020;
  String.append(_:)(v91);
  v92._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v92);

  v93._countAndFlagsBits = 0x4C52552077654E0ALL;
  v93._object = 0xEA0000000000203ALL;
  String.append(_:)(v93);
  v94 = v122;
  URL.absoluteURL.getter();
  sub_10017EABC();
  v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v95);

  (*(v25 + 8))(v94, v31);
  v96 = v149[0];
  v97 = *(v137 + 40);
  v98 = *(v137 + 48);
  v99 = static os_log_type_t.debug.getter();

  v100 = Logger.logObject.getter();

  if (os_log_type_enabled(v100, v99))
  {
    v101 = swift_slowAlloc();
    *&v146[0] = swift_slowAlloc();
    *v101 = 136446466;
    *&v149[0] = 91;
    *(&v149[0] + 1) = 0xE100000000000000;
    v102._countAndFlagsBits = v97;
    v102._object = v98;
    String.append(_:)(v102);
    v103._countAndFlagsBits = 8285;
    v103._object = 0xE200000000000000;
    String.append(_:)(v103);
    v104 = sub_100080210(*&v149[0], *(&v149[0] + 1), v146);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2082;
    v105 = sub_100080210(v96, *(&v96 + 1), v146);

    *(v101 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v100, v99, "%{public}s%{public}s", v101, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_10013B1E8(v128, &qword_1003CEDE0, &unk_1002EF7F0);
}

void *sub_1001C873C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SKLogger(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v97 - v10;
  __chkstk_darwin(v9);
  v13 = &v97 - v12;
  v112 = sub_1001CA1A0(a1);
  v110 = v14;
  if (!v14)
  {
    return v112;
  }

  v106 = v3;
  v98 = v13;
  sub_100080FB4(&unk_1003CEE30, qword_1002F28C0);
  inited = swift_initStackObject();
  v103 = xmmword_1002ED290;
  *(inited + 16) = xmmword_1002ED290;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x800000010031D6D0;
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = objc_opt_self();
  sub_100223A50(v17);
  v121[0] = 0;
  v20 = sub_1001CA204(v19, v121, v18);
  v21 = v121[0];
  if (!v20)
  {
    v65 = v121[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v66 = sub_10007EDA4(v5, qword_1003F26C8);
    sub_10007EDDC(v66, v8, v67);
    v31 = v106;
    sub_1001CA388(v106, v121);
    swift_errorRetain();
    v68 = Logger.logObject.getter();
    v69 = type metadata accessor for Logger();
    (*(*(v69 - 8) + 8))(v8, v69);
    v70 = static os_log_type_t.info.getter();
    sub_1001CA3C0(v31);

    if (os_log_type_enabled(v68, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v121[0] = swift_slowAlloc();
      v26 = &unk_1002F8000;
      *v71 = 136446722;
      *(v71 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v121);
      *(v71 + 12) = 2082;
      *(v71 + 14) = sub_100080210(*(v31 + 40), *(v31 + 48), v121);
      *(v71 + 22) = 2112;
      v73 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v73;
      *v72 = v73;
      _os_log_impl(&_mh_execute_header, v68, v70, "[%{public}s][%{public}s]: Error retriving extension list: %@", v71, 0x20u);
      sub_10013B1E8(v72, &qword_1003D18D0, &qword_1002F7FE0);

      swift_arrayDestroy();
    }

    else
    {

LABEL_68:
      v26 = &unk_1002F8000;
    }

    if (qword_1003CBE58 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_70;
  }

  v22 = v20;
  v97 = v11;
  v99 = v5;
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v21;

  v25 = sub_1001C9C84(v23);

  if (!v25)
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v117 = sub_1000AFC90(v25);
  v26 = 0;
  v109 = 0;
  v116 = v25 & 0xC000000000000001;
  v115 = v25 & 0xFFFFFFFFFFFFFF8;
  v100 = v25;
  v114 = v25 + 32;
  v113 = 0x800000010031D6F0;
  v102 = 0x800000010031D720;
  v28 = v112 == 0xD000000000000015 && v110 == 0x800000010031D720;
  v105 = v28;
  v30 = v112 == 0x6572617774666F73 && v110 == 0xED00006E4F646441;
  v101 = v30;
  v11 = &type metadata for String;
  v104 = 0x800000010031D740;
  v107 = a1;
  v5 = 0xD000000000000011;
  v108 = v17;
  v31 = v106;
  while (1)
  {
LABEL_18:
    if (v26 == v117)
    {

      goto LABEL_64;
    }

    if (v116)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v115 + 16))
      {
        goto LABEL_85;
      }

      v32 = *(v114 + 8 * v26);
    }

    v33 = v32;
    if (__OFADD__(v26++, 1))
    {
      break;
    }

    v35 = sub_1001CA28C(v32);
    if (!v35)
    {
      __break(1u);
    }

    v36 = v35;
    v118 = 0xD000000000000028;
    v119 = v113;
    AnyHashable.init<A>(_:)();
    if (*(v36 + 16) && (v37 = sub_100212CF4(v121), (v38 & 1) != 0))
    {
      sub_100080F58(*(v36 + 56) + 32 * v37, v120);
      sub_10008E550(v121);

      sub_100080F58(v120, v121);
      sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
      if (swift_dynamicCast())
      {
        v39 = v118;
        v40 = v109;
      }

      else
      {
        v41 = swift_dynamicCast();
        v40 = v109;
        if (v41)
        {
          v42 = v118;
          v43 = v119;
          sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
          v39 = swift_allocObject();
          *(v39 + 1) = v103;
          v39[4] = v42;
          v39[5] = v43;
        }

        else
        {
          v39 = _swiftEmptyArrayStorage;
        }
      }

      v44 = sub_100080F0C(v121);
      v121[0] = v112;
      v121[1] = v110;
      __chkstk_darwin(v44);
      *(&v97 - 2) = v121;
      v45 = sub_100178848(sub_1001CA3F0, (&v97 - 4), v39);

      if (v45)
      {

        v84 = [v33 identifier];
        if (v84)
        {
          v85 = v84;
          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v86;

          sub_100080F0C(v120);
          goto LABEL_76;
        }

        sub_100080F0C(v120);

LABEL_64:
        v5 = v99;
        v11 = v97;
        goto LABEL_68;
      }

      v109 = v40;
      sub_100080F0C(v120);
      a1 = v107;
    }

    else
    {

      sub_10008E550(v121);
    }

    v46 = [a1 itemDictionary];
    v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v118 = 0x6D614E726566666FLL;
    v119 = 0xE900000000000065;
    AnyHashable.init<A>(_:)();
    if (*(v47 + 16) && (v48 = sub_100212CF4(v121), (v49 & 1) != 0))
    {
      sub_100080F58(*(v47 + 56) + 32 * v48, v120);
      sub_10008E550(v121);

      if (swift_dynamicCast())
      {
        v111 = v118;
        if (v105 || ((_stringCompareWithSmolCheck(_:_:expecting:)() | v101) & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          result = sub_1001CA28C(v33);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v51 = result;
          v118 = 0xD00000000000002CLL;
          v119 = v104;
          AnyHashable.init<A>(_:)();
          if (v51[2])
          {
            v52 = sub_100212CF4(v121);
            if (v53)
            {
              sub_100080F58(v51[7] + 32 * v52, v120);
              sub_10008E550(v121);

              sub_100080F58(v120, v121);
              sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
              if (swift_dynamicCast())
              {
                v54 = v118;
              }

              else if (swift_dynamicCast())
              {
                v55 = v118;
                v56 = v119;
                sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
                v54 = swift_allocObject();
                *(v54 + 1) = v103;
                v54[4] = v55;
                v54[5] = v56;
              }

              else
              {
                v54 = _swiftEmptyArrayStorage;
              }

              sub_100080F0C(v121);
              v57 = (v54 + 5);
              v58 = -v54[2];
              v59 = -1;
              do
              {
                if (v58 + v59 == -1)
                {

                  sub_100080F0C(v120);
                  v31 = v106;
                  a1 = v107;
                  goto LABEL_18;
                }

                if (++v59 >= v54[2])
                {
                  goto LABEL_86;
                }

                v60 = v57 + 2;
                v61 = v11;
                v62 = *(v57 - 1);
                v63 = *v57;

                v64._countAndFlagsBits = v62;
                v64._object = v63;
                v31 = String.hasPrefix(_:)(v64);
                v11 = v61;

                v57 = v60;
                v5 = 0xD000000000000011;
              }

              while ((v31 & 1) == 0);

              v74 = [v33 identifier];
              if (v74)
              {
                v75 = v74;
                v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v77 = v76;

                sub_100080F0C(v120);
                v31 = v106;
LABEL_76:
                v87 = v99;
                v88 = qword_1003CBE58;

                if (v88 != -1)
                {
                  swift_once();
                }

                v89 = sub_10007EDA4(v87, qword_1003F26C8);
                v90 = v98;
                sub_10007EDDC(v89, v98, v91);

                sub_1001CA388(v31, v121);
                v92 = Logger.logObject.getter();
                v93 = type metadata accessor for Logger();
                (*(*(v93 - 8) + 8))(v90, v93);
                v94 = static os_log_type_t.info.getter();
                sub_1001CA3C0(v31);

                if (os_log_type_enabled(v92, v94))
                {
                  v95 = swift_slowAlloc();
                  v121[0] = swift_slowAlloc();
                  *v95 = 136446979;
                  *(v95 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v121);
                  *(v95 + 12) = 2082;
                  *(v95 + 14) = sub_100080210(*(v31 + 40), *(v31 + 48), v121);
                  *(v95 + 22) = 2080;
                  *(v95 + 24) = sub_100080210(*(v31 + 8), *(v31 + 16), v121);
                  *(v95 + 32) = 2081;
                  v96 = sub_100080210(v112, v77, v121);

                  *(v95 + 34) = v96;
                  _os_log_impl(&_mh_execute_header, v92, v94, "[%{public}s][%{public}s]: Found extension for %s: %{private}s", v95, 0x2Au);
                  swift_arrayDestroy();
                }

                else
                {
                }

                return v112;
              }

              sub_100080F0C(v120);

              v31 = v106;
              goto LABEL_64;
            }
          }

          sub_10008E550(v121);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_10008E550(v121);
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_70:
  v78 = sub_10007EDA4(v5, qword_1003F26C8);
  sub_10007EDDC(v78, v11, v79);
  sub_1001CA388(v31, v121);
  v80 = Logger.logObject.getter();
  v81 = type metadata accessor for Logger();
  (*(*(v81 - 8) + 8))(v11, v81);
  v82 = static os_log_type_t.default.getter();
  sub_1001CA3C0(v31);
  if (os_log_type_enabled(v80, v82))
  {
    v83 = swift_slowAlloc();
    v121[0] = swift_slowAlloc();
    *v83 = *(v26 + 672);
    *(v83 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v121);
    *(v83 + 12) = 2082;
    *(v83 + 14) = sub_100080210(*(v31 + 40), *(v31 + 48), v121);
    *(v83 + 22) = 2080;
    *(v83 + 24) = sub_100080210(*(v31 + 8), *(v31 + 16), v121);
    _os_log_impl(&_mh_execute_header, v80, v82, "[%{public}s][%{public}s]: No extension found for %s", v83, 0x20u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t sub_1001C97C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v10);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001C9B1C(a3);
  if (v13)
  {
    URLQueryItem.init(name:value:)();

    v14 = type metadata accessor for URLQueryItem();

    return sub_100081DFC(a4, 0, 1, v14);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v16 = sub_10007EDA4(v10, qword_1003F26C8);
    sub_10007EDDC(v16, v12, v17);
    sub_100080F58(a3, v29);
    sub_1001CA388(v4, v28);

    v18 = Logger.logObject.getter();
    v19 = type metadata accessor for Logger();
    (*(*(v19 - 8) + 8))(v12, v19);
    v20 = static os_log_type_t.error.getter();
    sub_1001CA3C0(v5);

    if (os_log_type_enabled(v18, v20))
    {
      v21 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v21 = 136446978;
      *(v21 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, &v27);
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_100080210(*(v5 + 40), *(v5 + 48), &v27);
      *(v21 + 22) = 2080;
      sub_100080F58(v29, v28);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      sub_100080F0C(v29);
      v25 = sub_100080210(v22, v24, &v27);

      *(v21 + 24) = v25;
      *(v21 + 32) = 2080;
      *(v21 + 34) = sub_100080210(a1, a2, &v27);
      _os_log_impl(&_mh_execute_header, v18, v20, "[%{public}s][%{public}s]: Unhandled value: %s for key: %s", v21, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100080F0C(v29);
    }

    v26 = type metadata accessor for URLQueryItem();
    return sub_100081DFC(a4, 1, 1, v26);
  }
}

uint64_t sub_1001C9B1C(uint64_t a1)
{
  sub_100080F58(a1, v5);
  if (swift_dynamicCast())
  {
    v1 = v4;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_9:
    v1 = v2;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v2 = Double.description.getter();
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v2 = Float.description.getter();
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    if (v4)
    {
      v1 = 1702195828;
    }

    else
    {
      v1 = 0x65736C6166;
    }
  }

  else
  {
    v1 = 0;
  }

LABEL_10:
  sub_100080F0C(v5);
  return v1;
}

void *sub_1001C9C84(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_100080F58(v3, v5);
    sub_10008E5A4(0, &qword_1003D15C8, NSExtension_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1001C9D90(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10021340C(0, v2, 0);
  v3 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  if (v2)
  {
    while (1)
    {

      sub_100080FB4(&unk_1003CE640, &unk_1002F94C0);
      sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10021340C(v5 > 1, v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      v3 += 8;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

id sub_1001C9ED0(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = [v1 initWithBag:a1 caller:v3 keyProfile:v4];
  swift_unknownObjectRelease();

  return v5;
}

id sub_1001C9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8)
{
  HIDWORD(v25) = a5;
  if (a1)
  {
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (a3)
    {
LABEL_3:
      v14 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v13.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = type metadata accessor for URL();
  v17 = 0;
  if (sub_100081D0C(a4, 1, v15) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  if (a6)
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  if (sub_100081D0C(a7, 1, v15) == 1)
  {
    v21 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  LOBYTE(v25) = a8 & 1;
  v23 = [v26 initWithResult:v13.super.isa extensionID:v14 productURL:v17 isEntitled:BYTE4(v25) & 1 parameters:v19.super.isa deepLinkURL:v21 hasPresentationEntitlement:v25];

  return v23;
}

void *sub_1001CA17C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001CA1A0(void *a1)
{
  v1 = [a1 itemKind];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1001CA204(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 extensionsWithMatchingAttributes:isa error:a2];

  return v6;
}

uint64_t sub_1001CA28C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1001CA2F8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a3 performLookupWithBundleIdentifiers:a1 itemIdentifiers:isa];

  return v6;
}

unint64_t sub_1001CA40C@<X0>(uint64_t a1@<X8>)
{

  return sub_100080210(0xD000000000000011, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

id sub_1001CA430()
{

  return sub_100212920(v1, v0, 512, 0);
}

uint64_t sub_1001CA470()
{

  return swift_slowAlloc();
}

uint64_t sub_1001CA488(uint64_t a1)
{

  return sub_10013B1E8(a1, v1, v2);
}

uint64_t sub_1001CA4A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EDA4(a1, a2);

  return sub_10007EDDC(v3, v2, v4);
}

uint64_t sub_1001CA4DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100081D0C(a1, a2, v4);
}

uint64_t sub_1001CA538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100081DFC(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SKLogger(uint64_t a1)
{
  result = qword_1003D1628;
  if (!qword_1003D1628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CA5D0(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001CA63C()
{
  v0 = 8;
  sub_100213374(0, 8, 0);
  do
  {
    swift_stdlib_random();
    sub_1001CA904();
    v1 = String.init<A>(_:radix:uppercase:)();
    v3 = v2;
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_100213374(v4 > 1, v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    v6 = &_swiftEmptyArrayStorage[2 * v5];
    v6[4] = v1;
    v6[5] = v3;
    --v0;
  }

  while (v0);
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage[5];
  v9 = v5 + 1;
  while (1)
  {
    if (v9 == v7)
    {

      return;
    }

    if (v7 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v7;

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();

    v8 += 2;
  }

  __break(1u);
}

uint64_t sub_1001CA7F8()
{
  v0 = type metadata accessor for SKLogger(0);
  sub_1001C52C4(v0, qword_1003F26C8);
  sub_10007EDA4(v0, qword_1003F26C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001CA870(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  String.append(_:)(*&a1);
  v2._countAndFlagsBits = 8285;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  return 91;
}

unint64_t sub_1001CA904()
{
  result = qword_1003D1660;
  if (!qword_1003D1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1660);
  }

  return result;
}

uint64_t sub_1001CA978(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383E40, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CA9CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100080FB4(&qword_1003D1668, &qword_1002F9630);
  sub_1000890DC();
  v8 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_100086D24(a1, a1[3]);
  sub_1001CB458();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100080FB4(&qword_1003D1678, &qword_1002F9638);
    sub_1001CB554(&qword_1003D1680, sub_1001CB4AC, &protocol conformance descriptor for <A> [A]);
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1001CAB88(void *a1)
{
  sub_100080FB4(&qword_1003D16A8, &qword_1002F9650);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_1001CB458();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100080FB4(&qword_1003D1678, &qword_1002F9638);
    sub_1001CB554(&qword_1003D16B0, sub_1001CB5CC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_1000E3F18();
    v7(v6);
  }

  sub_100080F0C(a1);
  return v4;
}

uint64_t sub_1001CADB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CA978(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001CADE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E1890(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001CAE14@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CA978(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CAE3C(uint64_t a1)
{
  v2 = sub_1001CB458();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CAE78(uint64_t a1)
{
  v2 = sub_1001CB458();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CAEB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CAB88(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1001CAF04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383E90, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001CAF50(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D16A0, &qword_1002F9648);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001CB500();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001CB0C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100080FB4(&qword_1003D1690, &qword_1002F9640);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100086D24(a1, a1[3]);
  sub_1001CB500();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v7;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = sub_10008BD1C();
  v11(v10);
  result = sub_100080F0C(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v9;
  return result;
}

unint64_t sub_1001CB2FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CAF04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CB32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E0FDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001CB358@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CAF04(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CB380(uint64_t a1)
{
  v2 = sub_1001CB500();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CB3BC(uint64_t a1)
{
  v2 = sub_1001CB500();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001CB3F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CB0C0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1001CB458()
{
  result = qword_1003D1670;
  if (!qword_1003D1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1670);
  }

  return result;
}

unint64_t sub_1001CB4AC()
{
  result = qword_1003D1688;
  if (!qword_1003D1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1688);
  }

  return result;
}

unint64_t sub_1001CB500()
{
  result = qword_1003D1698;
  if (!qword_1003D1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1698);
  }

  return result;
}

uint64_t sub_1001CB554(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&qword_1003D1678, &qword_1002F9638);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CB5CC()
{
  result = qword_1003D16B8;
  if (!qword_1003D16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001CB6ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionGroupStatusInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001CB7F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CB82C()
{
  result = qword_1003D16C0;
  if (!qword_1003D16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16C0);
  }

  return result;
}

unint64_t sub_1001CB884()
{
  result = qword_1003D16C8;
  if (!qword_1003D16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16C8);
  }

  return result;
}

unint64_t sub_1001CB8DC()
{
  result = qword_1003D16D0;
  if (!qword_1003D16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16D0);
  }

  return result;
}

unint64_t sub_1001CB934()
{
  result = qword_1003D16D8;
  if (!qword_1003D16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16D8);
  }

  return result;
}

unint64_t sub_1001CB98C()
{
  result = qword_1003D16E0;
  if (!qword_1003D16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16E0);
  }

  return result;
}

unint64_t sub_1001CB9E4()
{
  result = qword_1003D16E8;
  if (!qword_1003D16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16E8);
  }

  return result;
}

id sub_1001CBB68(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  String._bridgeToObjectiveC()();
  sub_1001CCD58();

  return a1;
}

id sub_1001CBBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v19 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_groupID];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_bundleID];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_storefrontID];
  *v21 = a5;
  *(v21 + 1) = a6;
  if (!a8)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v22 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v22, qword_1003F26C8);
    sub_1001CA63C();
    a7 = v23;
    a8 = v24;
  }

  v25 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_logKey];
  *v25 = a7;
  *(v25 + 1) = a8;
  v27.receiver = v9;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_1001CBDAC(uint64_t a1)
{
  v3 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v3);
  v5 = v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return -1;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v6, v7, a1, &v128);

  if (!v129)
  {
    sub_10008105C(&v128);
    return -1;
  }

  sub_100080FB4(&qword_1003CEDD8, qword_1002F9920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return -1;
  }

  v123 = v5;
  v8 = v126;
  v9 = v126[2];
  if (!v9)
  {

    return -1;
  }

  v124 = v1;
  v122 = v3;
  v10 = 0;
  v11 = @"status";
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v9 == v10)
    {

      v24 = v124;
      v25 = *(v124 + OBJC_IVAR___IntroOfferEligibilityCheck_storefrontID + 8);
      v121 = *(v124 + OBJC_IVAR___IntroOfferEligibilityCheck_storefrontID);
      v26 = &off_1002EA000;
      v10 = v122;
      v125 = v25;
      if (!v25)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v1 = sub_10007EDA4(v10, qword_1003F26C8);
        v27 = v24 + OBJC_IVAR___IntroOfferEligibilityCheck_logKey;
        v28 = *(v24 + OBJC_IVAR___IntroOfferEligibilityCheck_logKey);
        v29 = *(v27 + 8);
        v30 = static os_log_type_t.info.getter();

        v31 = Logger.logObject.getter();

        if (os_log_type_enabled(v31, v30))
        {
          v32 = sub_10008E688();
          v33 = sub_10008E670();
          v126 = v33;
          *v32 = 136446466;
          sub_1001CCD70();
          v34._countAndFlagsBits = v28;
          v34._object = v29;
          String.append(_:)(v34);
          sub_10009F134();
          sub_1001CCD3C();
          sub_1001CCD58();
          *(v32 + 4) = v1;
          *(v32 + 12) = 2082;
          v10 = v122;
          *(v32 + 14) = sub_100080210(0xD00000000000002DLL, 0x800000010031D7E0, &v126);
          _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
          swift_arrayDestroy();
          v35 = v33;
          v26 = &off_1002EA000;
          sub_100081C28(v35);
          sub_100081C28(v32);
        }

        v24 = v124;
      }

      v36 = v12[2];
      v9 = v123;
      if (v36)
      {
        v37 = 0;
        v119 = (v24 + OBJC_IVAR___IntroOfferEligibilityCheck_logKey);
        v11 = @"signedTransactionInfo";
        v114 = "e is an active transaction in '";
        v113 = "status with storefront '";
        v116 = @"inAppOwnershipType";
        v110[1] = @"PURCHASED";
        v112 = "ive status in any storefront.";
        *(&v38 + 1) = 1;
        v120 = xmmword_1002F0E20;
        *&v38 = *(v26 + 175);
        v115 = v38;
        v118 = @"signedTransactionInfo";
        while (1)
        {
          if (v37 >= v12[2])
          {
            goto LABEL_72;
          }

          v1 = v12[v37 + 4];
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;
          if (*(v1 + 16))
          {
            v42 = v39;

            v43 = sub_1000B6328(v42, v41);
            v45 = v44;

            if (v45)
            {
              break;
            }
          }

LABEL_48:
          if (v36 == ++v37)
          {
            goto LABEL_68;
          }
        }

        sub_100080F58(*(v1 + 56) + 32 * v43, &v128);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        String._bridgeToObjectiveC()();
        sub_1001CCD58();
        v46 = sub_100027B30(v1, 0);

        if (!v46)
        {
          goto LABEL_48;
        }

        v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = swift_allocObject();
        v11 = v47;
        *(v47 + 16) = v120;
        v124 = v47;
        if (v125)
        {
          v48 = sub_1001CCA64(v47, v1);
          if (!v49 || (v50 = String.hasPrefix(_:)(*&v48), , !v50))
          {

            if (qword_1003CBE58 != -1)
            {
              sub_1000B7CD0();
              swift_once();
            }

            v62 = sub_10007EDA4(v10, qword_1003F26C8);
            sub_10007EDDC(v62, v9, v63);
            sub_1001CCD84();
            v64._countAndFlagsBits = 0xD000000000000028;
            v64._object = (v114 | 0x8000000000000000);
            String.append(_:)(v64);
            data = v11->data;
            if (v11->length)
            {
              length = v11->length;
            }

            else
            {
              sub_1001CCD14(v11->data, 0);
              length = 0xE300000000000000;
              data = 7104878;
            }

            v76._countAndFlagsBits = data;
            v76._object = length;
            String.append(_:)(v76);

            v77._object = (v113 | 0x8000000000000000);
            v77._countAndFlagsBits = 0xD000000000000025;
            String.append(_:)(v77);
            v78._countAndFlagsBits = v121;
            v78._object = v125;
            String.append(_:)(v78);
            v79._countAndFlagsBits = 11815;
            v79._object = 0xE200000000000000;
            String.append(_:)(v79);
            v80 = *(&v128 + 1);
            v117 = v128;
            v81 = *v119;
            v82 = v119[1];
            v83 = static os_log_type_t.info.getter();
            v1 = v9;
            v84 = Logger.logObject.getter();
            if (os_log_type_enabled(v84, v83))
            {
              v85 = sub_10008E688();
              v111 = sub_10008E670();
              v126 = v111;
              *v85 = v115;
              sub_100106448();
              v86._countAndFlagsBits = v81;
              v86._object = v82;
              String.append(_:)(v86);
              sub_10009F134();
              sub_1001CCD3C();
              sub_1001CCD58();
              *(v85 + 4) = v1;
              *(v85 + 12) = 2082;
              v87 = sub_100080210(v117, v80, &v126);

              *(v85 + 14) = v87;
              _os_log_impl(&_mh_execute_header, v84, v83, "%{public}s%{public}s", v85, 0x16u);
              v88 = v111;
              swift_arrayDestroy();
              sub_100081C28(v88);
              v89 = v85;
              v9 = v123;
              sub_100081C28(v89);
            }

            else
            {
            }

            sub_100080130(v9, v90, v91);

            v10 = v122;
            goto LABEL_67;
          }
        }

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v1 + 16))
        {
          v53 = sub_1000B6328(v51, v52);
          v55 = v54;

          if (v55)
          {
            sub_100080F58(*(v1 + 56) + 32 * v53, &v128);
            if (swift_dynamicCast())
            {

              v9 = String._bridgeToObjectiveC()();
              swift_bridgeObjectRelease_n();
              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;
              if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
              {
                goto LABEL_73;
              }

              v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v117 = v9;

              if (v61)
              {
                goto LABEL_74;
              }

              v9 = v123;
              goto LABEL_57;
            }
          }
        }

        else
        {
        }

        v117 = 0;
LABEL_57:
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v1 = sub_10007EDA4(v10, qword_1003F26C8);
        v68 = *v119;
        v67 = v119[1];
        v69 = static os_log_type_t.info.getter();

        v70 = Logger.logObject.getter();

        if (os_log_type_enabled(v70, v69))
        {
          v71 = sub_10008E688();
          v72 = sub_10008E670();
          v126 = v72;
          *v71 = v115;
          sub_100106448();
          v73._countAndFlagsBits = v68;
          v73._object = v67;
          String.append(_:)(v73);
          sub_10009F134();
          sub_1001CCD3C();
          sub_1001CCD58();
          *(v71 + 4) = v1;
          *(v71 + 12) = 2082;
          *(v71 + 14) = sub_100080210(0xD000000000000045, v112 | 0x8000000000000000, &v126);
          _os_log_impl(&_mh_execute_header, v70, v69, "%{public}s%{public}s", v71, 0x16u);
          swift_arrayDestroy();
          v74 = v72;
          v9 = v123;
          sub_100081C28(v74);
          v75 = v71;
          v10 = v122;
          sub_100081C28(v75);
        }

LABEL_67:
        v11 = v118;
        goto LABEL_48;
      }

LABEL_68:

      return -1;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v13 = *(v8 + 8 * v10 + 32);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (*(v13 + 16) && (v17 = v14, , v1 = sub_1000B6328(v17, v16), v19 = v18, , (v19 & 1) != 0) && (sub_100080F58(*(v13 + 56) + 32 * v1, &v128), (swift_dynamicCast() & 1) != 0) && (v127 != 1 ? (v20 = v127 == 4) : (v20 = 1), v20))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v1 = &v126;
        sub_10021340C(0, v12[2] + 1, 1);
        v12 = v126;
      }

      v23 = v12[2];
      v22 = v12[3];
      if (v23 >= v22 >> 1)
      {
        v1 = &v126;
        sub_10021340C(v22 > 1, v23 + 1, 1);
        v12 = v126;
      }

      ++v10;
      v12[2] = v23 + 1;
      v12[v23 + 4] = v13;
    }

    else
    {

      ++v10;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:

LABEL_74:

  if (v125)
  {
  }

  else
  {
    v93 = sub_1001CCA64(v11, v1);
    v95 = v94;

    if (v95)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      sub_10007EDA4(v10, qword_1003F26C8);
      sub_1001CCD84();
      v96._countAndFlagsBits = 0xD00000000000004FLL;
      v96._object = 0x800000010031D860;
      String.append(_:)(v96);
      v97._countAndFlagsBits = v93;
      v97._object = v95;
      String.append(_:)(v97);

      v98._countAndFlagsBits = 11815;
      v98._object = 0xE200000000000000;
      String.append(_:)(v98);
      v99 = v128;
      v100 = *v119;
      v101 = v119[1];
      v102 = static os_log_type_t.default.getter();

      v103 = Logger.logObject.getter();

      if (os_log_type_enabled(v103, v102))
      {
        v104 = sub_10008E688();
        v105 = sub_10008E670();
        v125 = v9;
        v126 = v105;
        v106 = v105;
        *v104 = v115;
        sub_1001CCD70();
        v107._countAndFlagsBits = v100;
        v107._object = v101;
        String.append(_:)(v107);
        sub_10009F134();
        v108 = sub_100080210(v128, *(&v128 + 1), &v126);

        *(v104 + 4) = v108;
        *(v104 + 12) = 2082;
        v109 = sub_100080210(v99, *(&v99 + 1), &v126);

        *(v104 + 14) = v109;
        _os_log_impl(&_mh_execute_header, v103, v102, "%{public}s%{public}s", v104, 0x16u);
        swift_arrayDestroy();
        sub_100081C28(v106);
        sub_100081C28(v104);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1001CCA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v2;
  if (v3 == 1)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001DA990(v7, v8, a2, &v15);

    if (v16)
    {
      if (swift_dynamicCast())
      {
        v4 = v13;
        v9 = v14;
LABEL_7:
        swift_beginAccess();
        v10 = *(a1 + 16);
        v11 = *(a1 + 24);
        *(a1 + 16) = v4;
        *(a1 + 24) = v9;

        sub_1001CCD14(v10, v11);
        goto LABEL_8;
      }
    }

    else
    {
      sub_10008105C(&v15);
    }

    v4 = 0;
    v9 = 0;
    goto LABEL_7;
  }

LABEL_8:
  sub_1001CCD28(v2, v3);
  return v4;
}

uint64_t sub_1001CCCD4()
{
  if (*(v0 + 24) != 1)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CCD14(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001CCD28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1001CCD3C()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_100080210(v2, v3, (v0 - 144));
}

uint64_t sub_1001CCD58()
{
}

void sub_1001CCD84()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  _StringGuts.grow(_:)(83);
}

uint64_t sub_1001CCDA4()
{
  sub_10008BE9C();
  v1[87] = v0;
  v2 = sub_100080FB4(&qword_1003D18E0, &qword_1002F9A68);
  v1[88] = v2;
  v1[89] = *(v2 - 8);
  v1[90] = swift_task_alloc();
  v3 = sub_100080FB4(&qword_1003D18E8, &qword_1002F9A78);
  v1[91] = v3;
  v1[92] = *(v3 - 8);
  v1[93] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v1[94] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001CCF28()
{
  v82 = v0;
  v1 = *(v0 + 696);
  v2 = OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logger;
  *(v0 + 760) = OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logger;
  _StringGuts.grow(_:)(36);

  v77 = 0xD000000000000022;
  v79 = 0x800000010031DA90;
  v74 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_client);
  v3 = (v74 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v4 = *(v74 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v5 = *(v74 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey;
  v75 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey);
  *(v0 + 768) = v75;
  v8 = *(v7 + 8);
  *(v0 + 776) = v8;
  v9 = static os_log_type_t.default.getter();

  v72 = v2;
  v73 = v1;
  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_10008E688();
    v71 = 0xD000000000000022;
    v12 = sub_10008E670();
    *v11 = 136446466;
    sub_10009F0F8();
    v77 = v13;
    v79 = v15;
    v81[0] = v14;
    v16._countAndFlagsBits = v75;
    v16._object = v8;
    String.append(_:)(v16);
    sub_10009F134();
    v17 = sub_100080210(v77, v79, v81);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v18 = sub_100080210(0xD000000000000022, 0x800000010031DA90, v81);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    sub_100081C28(v12);
    sub_100081C28(v11);
  }

  else
  {
  }

  v19 = *(v0 + 752);
  v20 = *(v0 + 696);
  sub_100080FB4(&unk_1003D18F0, &qword_1002F9A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002F0B70;
  *(v0 + 584) = 0x4449656C646E7562;
  *(v0 + 592) = 0xE800000000000000;
  sub_1001CF460();
  v23 = *v3;
  v22 = v3[1];
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v23;
  *(inited + 80) = v22;
  *(v0 + 600) = 0x49746375646F7270;
  *(v0 + 608) = 0xE900000000000044;

  sub_1001CF460();
  v24 = v20 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer;
  v26 = *(v20 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer);
  v25 = *(v20 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer + 8);
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v26;
  *(inited + 152) = v25;
  *(v0 + 616) = 0x4449726566666FLL;
  *(v0 + 624) = 0xE700000000000000;

  sub_1001CF460();
  v28 = *(v24 + 16);
  v27 = *(v24 + 24);
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v28;
  *(inited + 224) = v27;
  *(v0 + 632) = 0x79654B676F6CLL;
  *(v0 + 640) = 0xE600000000000000;

  sub_1001CF460();
  *(inited + 312) = &type metadata for String;
  v29 = v75;
  *(inited + 288) = v75;
  *(inited + 296) = v8;
  *(v0 + 648) = 0x546567617373656DLL;
  *(v0 + 656) = 0xEB00000000657079;

  sub_1001CF460();
  v30 = *(v20 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_messageType);
  *(inited + 384) = &type metadata for Int;
  *(inited + 360) = v30;
  *(v0 + 664) = 0x726576726573;
  *(v0 + 672) = 0xE600000000000000;
  v31 = sub_1001CF460();
  v32 = v74;
  sub_1001A7E5C(v31, v33, v34, v35, v36, v37, v38, v39, v71, v72, v73, v74, v75, v77, v79, v81[0], v81[1], v81[2], v81[3], v81[4]);
  v41 = sub_1001AA77C(v40);
  sub_1001CF344(v19, type metadata accessor for Client.Server);
  *(inited + 456) = &type metadata for Int8;
  *(inited + 432) = v41;
  v42 = Dictionary.init(dictionaryLiteral:)();
  v43 = (v32 + OBJC_IVAR____TtC9storekitd6Client_auditToken);
  if (*(v32 + OBJC_IVAR____TtC9storekitd6Client_auditToken + 32))
  {

    v44 = static os_log_type_t.error.getter();

    v45 = Logger.logObject.getter();

    if (os_log_type_enabled(v45, v44))
    {
      v46 = sub_10008E688();
      v47 = sub_10008E670();
      *v46 = 136446466;
      sub_10009F0F8();
      v78 = v48;
      v80 = v50;
      v81[0] = v49;
      v51._countAndFlagsBits = v29;
      v51._object = v8;
      String.append(_:)(v51);
      sub_10009F134();
      v52 = sub_100080210(v78, v80, v81);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_100080210(0xD000000000000029, 0x800000010031DAC0, v81);
      _os_log_impl(&_mh_execute_header, v45, v44, "%{public}s%{public}s", v46, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v47);
      sub_100081C28(v46);
    }

    sub_100098AC4();

    return v53();
  }

  else
  {
    v76 = *(v0 + 696);
    v56 = v43[2];
    v55 = v43[3];
    v58 = *v43;
    v57 = v43[1];
    v59 = HIDWORD(*v43);
    *(v0 + 680) = 0xD000000000000010;
    *(v0 + 688) = 0x800000010031DAF0;
    AnyHashable.init<A>(_:)();
    *(v0 + 808) = v58;
    *(v0 + 812) = v59;
    *(v0 + 816) = v57;
    *(v0 + 824) = v56;
    *(v0 + 832) = v55;
    v60 = Data.init(bytes:count:)();
    *(v0 + 544) = &type metadata for Data;
    *(v0 + 520) = v60;
    *(v0 + 528) = v61;
    sub_10008B5D0((v0 + 520), (v0 + 552));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10023EE74(v0 + 552, v0 + 480, isUniquelyReferenced_nonNull_native);
    v63 = v42;
    v64 = sub_10008E550(v0 + 480);
    sub_1001CE290(v64);
    v65 = objc_allocWithZone(RemoteAlertWrapper);
    v66 = sub_1001CF2BC();
    *(v0 + 784) = v66;
    [v66 setObserver:v76];
    v67 = *(v76 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_connection);
    if (*(v76 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_sceneID + 8))
    {
      v68 = String._bridgeToObjectiveC()();
    }

    else
    {
      v68 = 0;
    }

    v69 = *(v0 + 696);
    sub_1001CF39C(v67, v68, 1, v63, v66);

    v70 = *(v69 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_alertActor);
    *(v0 + 792) = v70;

    return _swift_task_switch(sub_1001CD710, v70, 0);
  }
}

uint64_t sub_1001CD710()
{
  sub_10008BE9C();
  (*(v0[89] + 16))(v0[90], v0[99] + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_stream, v0[88]);
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001CD7C0()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_1001CD8C8;
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)(v5);
}

uint64_t sub_1001CD8C8()
{
  sub_10008BE9C();

  sub_100098AD0();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001CD9E8(uint64_t a1)
{
  v27 = v1;
  if (*(v1 + 840))
  {
    v2 = *(v1 + 784);
    (*(*(v1 + 736) + 8))(*(v1 + 744), *(v1 + 728));
  }

  else
  {
    v3 = static os_log_type_t.default.getter();

    v4 = Logger.logObject.getter();

    v5 = os_log_type_enabled(v4, v3);
    v6 = *(v1 + 784);
    if (v5)
    {
      v7 = *(v1 + 776);
      v8 = *(v1 + 768);
      v9 = *(v1 + 736);
      v22 = *(v1 + 728);
      v23 = *(v1 + 744);
      v10 = sub_10008E688();
      v11 = sub_10008E670();
      *v10 = 136446466;
      sub_10009F0F8();
      v24 = v12;
      v25 = v14;
      v26 = v13;
      v15._countAndFlagsBits = v8;
      v15._object = v7;
      String.append(_:)(v15);
      sub_10009F134();
      v16 = sub_100080210(v24, v25, &v26);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_100080210(0xD000000000000021, 0x800000010031DB60, &v26);
      _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v11);
      sub_100081C28(v10);

      (*(v9 + 8))(v23, v22);
    }

    else
    {
      v17 = *(v1 + 744);
      v18 = *(v1 + 736);
      v19 = *(v1 + 728);

      (*(v18 + 8))(v17, v19);
    }
  }

  sub_100098AC4();

  return v20();
}

uint64_t sub_1001CDC60()
{
  v1 = sub_100080FB4(qword_1003D1900, qword_1002F9A88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_100080FB4(&qword_1003D18D8, &qword_1002F9A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = sub_100080FB4(&qword_1003D18E0, &qword_1002F9A68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  swift_defaultActor_initialize();
  (*(v2 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_stream, v12, v9);
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_continuation, v8, v5);
  return v0;
}

uint64_t sub_1001CDED4()
{
  v1 = OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_stream;
  v2 = sub_100080FB4(&qword_1003D18E0, &qword_1002F9A68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_continuation;
  v4 = sub_100080FB4(&qword_1003D18D8, &qword_1002F9A60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1001CDFCC(uint64_t a1)
{
  sub_1001CE0D8(319, &qword_1003D1788, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_1001CE0D8(319, &unk_1003D1790, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001CE0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[1]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1001CE134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v18 = OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_alertActor;
  type metadata accessor for SubscriptionOfferRemoteAlertActor(0);
  swift_allocObject();
  *&v12[v18] = sub_1001CDC60();
  *&v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_client] = a1;
  v19 = &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer];
  *v19 = a2;
  *(v19 + 1) = a3;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *&v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_connection] = a6;
  *&v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_messageType] = a7;
  v20 = &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey];
  *v20 = a8;
  *(v20 + 1) = a9;
  v21 = &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_sceneID];
  *v21 = a10;
  *(v21 + 1) = a11;
  sub_10007EDDC(a12, &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logger], v22);
  v30.receiver = v12;
  v30.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v30, "init");
  sub_1001CF448();
  sub_1001CF344(a12, v24);
  return v23;
}

void sub_1001CE290(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001A81B0(a1);
  v4 = [v3 ams_DSID];

  if (sub_1001A79F8())
  {
    sub_10018884C();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

    v4 = isa;
  }

  else if (!v4)
  {
    return;
  }

  v6 = v4;
  v7 = [objc_opt_self() sharedManager];

  v8 = String._bridgeToObjectiveC()();

  v9 = *(v2 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_messageType);
  v10 = String._bridgeToObjectiveC()();
}

uint64_t sub_1001CE53C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_1001CE614()
{
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v1 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v1, qword_1003F26C8);
  v2 = *(v0 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey);
  v3 = *(v0 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8);
  v4 = static os_log_type_t.default.getter();

  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_10008E688();
    v6 = sub_10008E670();
    *v5 = 136446466;
    sub_10009F0F8();
    v13 = v7;
    v14 = v9;
    v15 = v8;
    v10._countAndFlagsBits = v2;
    v10._object = v3;
    String.append(_:)(v10);
    sub_10009F134();
    v11 = sub_100080210(v13, v14, &v15);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031DA40, &v15);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
    sub_100081C28(v6);
    sub_100081C28(v5);
  }
}

id sub_1001CE818(void *a1)
{
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v3, qword_1003F26C8);
  v4 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey);
  v5 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8);
  v6 = static os_log_type_t.default.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = sub_10008E688();
    v9 = sub_10008E670();
    *v8 = 136446466;
    sub_10009F0F8();
    v16 = v10;
    v17 = v12;
    v18 = v11;
    v13._countAndFlagsBits = v4;
    v13._object = v5;
    String.append(_:)(v13);
    sub_10009F134();
    v14 = sub_100080210(v16, v17, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031DA20, &v18);
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    sub_100081C28(v9);
    sub_100081C28(v8);
  }

  return [a1 invalidate];
}

uint64_t sub_1001CEA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v12 = sub_10007EDA4(v8, qword_1003F26C8);
    sub_10007EDDC(v12, v11, v13);
    swift_errorRetain();
    v14 = v3;
    v15 = Logger.logObject.getter();
    type metadata accessor for Logger();
    sub_100098B7C();
    (*(v16 + 8))(v11);
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_10008E688();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_100080210(*&v14[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey], *&v14[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8], &v38);
      *(v18 + 12) = 2114;
      v21 = _convertErrorToNSError(_:)();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v15, v17, "[%{public}s] Offer remote handle invalidated with error: %{public}@", v18, 0x16u);
      sub_1001A1BB8(v19);
      sub_100081C28(v19);
      sub_100080F0C(v20);
      sub_100081C28(v20);
      sub_100081C28(v18);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    sub_10007EDA4(v8, qword_1003F26C8);
    v22 = *&v3[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey];
    v23 = *&v3[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8];
    v24 = static os_log_type_t.default.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = sub_10008E688();
      v27 = sub_10008E670();
      *v26 = 136446466;
      sub_10009F0F8();
      v38 = v28;
      v39 = v30;
      v40 = v29;
      v31._countAndFlagsBits = v22;
      v31._object = v23;
      String.append(_:)(v31);
      sub_10009F134();
      v32 = sub_100080210(v38, v39, &v40);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031DA00, &v40);
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v27);
      sub_100081C28(v26);
    }
  }

  v33 = type metadata accessor for TaskPriority();
  sub_100081DFC(v7, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v3;
  v35 = v3;
  sub_1001661A4();
}

uint64_t sub_1001CEE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_100080FB4(&qword_1003D18D8, &qword_1002F9A60);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001CEF28, 0, 0);
}

uint64_t sub_1001CEF28()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_alertActor);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1001CEF54, v1, 0);
}

uint64_t sub_1001CEF54()
{
  sub_10008BE9C();
  (*(v0[5] + 16))(v0[6], v0[7] + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_continuation, v0[4]);
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001CEFD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v1, v3);

  sub_100098AC4();

  return v4();
}

uint64_t sub_1001CF0DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CF11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001CF1D0;

  return sub_1001CEE5C(a1, v4, v5, v6);
}

uint64_t sub_1001CF1D0()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

id sub_1001CF2BC()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithServiceName:v1 viewControllerClassName:v2];

  return v3;
}

uint64_t sub_1001CF344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1001CF39C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a5 activateForTargetXPCConnection:a1 sceneID:a2 shouldDismissOnUILock:a3 & 1 userInfo:isa];
}

void *sub_1001CF460()
{

  return AnyHashable.init<A>(_:)();
}

void sub_1001CF480(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000B784C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001CF508(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1001CF64CLL);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return sub_100081D0C(a1, v5, v4);
  }

  v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_1001CF660(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1001CF83CLL);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v7 < 0x7FFFFFFE)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v17 = 0;
            v17[1] = 0;
            *v17 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v17[1] = a2;
          }
        }

        else
        {

          sub_100081DFC(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_1001CF890(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1001CF92C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PurchaseIntentInternal(uint64_t a1)
{
  result = qword_1003D19E8;
  if (!qword_1003D19E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CF9F8(uint64_t a1)
{
  sub_1000B784C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = type metadata accessor for Date();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1001CFA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x800000010031DB90 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001CFC9C(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x4449656C646E7562;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001CFD80(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1A40, &qword_1002F9B90);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001D04D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1001D0790();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_1001D0790();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_1001D0790();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    sub_1001D0790();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for PurchaseIntentInternal(0);
    v10[11] = 4;
    type metadata accessor for Date();
    sub_1001D052C(&qword_1003CD7D8, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[10] = 5;
    sub_1001D0790();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001CFF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = type metadata accessor for Date();
  sub_1000890DC();
  v33 = v4;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080FB4(&qword_1003D1A30, &qword_1002F9B88);
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  v34 = type metadata accessor for PurchaseIntentInternal(0);
  __chkstk_darwin(v34);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v36 = a1;
  sub_100086D24(a1, v13);
  sub_1001D04D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(v36);
  }

  v30 = v7;
  v31 = v9;
  v42 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v14;
  v41 = 1;
  sub_1001D07A0();
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v15;
  v40 = 2;
  sub_1001D07A0();
  v12[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[5] = v16;
  v39 = 3;
  sub_1001D07A0();
  v12[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[7] = v17;
  v38 = 4;
  sub_1001D052C(&qword_1003CD800, &protocol conformance descriptor for Date);
  v18 = v30;
  v19 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v34;
  (*(v33 + 32))(v12 + *(v34 + 32), v18, v19);
  v37 = 5;
  sub_1001D07A0();
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v22;
  v23 = v21;
  v24 = sub_1001D077C();
  v25(v24);
  v26 = (v12 + *(v20 + 36));
  v27 = v30;
  *v26 = v23;
  v26[1] = v27;
  sub_1001439E0(v12, v32);
  sub_100080F0C(v36);
  return sub_100143A44(v12);
}

uint64_t sub_1001D0408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001CFA9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D0430(uint64_t a1)
{
  v2 = sub_1001D04D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D046C(uint64_t a1)
{
  v2 = sub_1001D04D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D04D8()
{
  result = qword_1003D1A38;
  if (!qword_1003D1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1A38);
  }

  return result;
}

uint64_t sub_1001D052C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseIntentInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D063CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D0678()
{
  result = qword_1003D1A48;
  if (!qword_1003D1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1A48);
  }

  return result;
}

unint64_t sub_1001D06D0()
{
  result = qword_1003D1A50;
  if (!qword_1003D1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1A50);
  }

  return result;
}

unint64_t sub_1001D0728()
{
  result = qword_1003D1A58[0];
  if (!qword_1003D1A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003D1A58);
  }

  return result;
}

uint64_t sub_1001D07B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001D0880(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

Swift::Int sub_1001D08F0()
{
  Hasher.init(_seed:)();
  sub_100085944(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1001D0950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D07B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D09B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100083EBC();
  *a1 = result;
  return result;
}

uint64_t sub_1001D09E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001D0A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001D0AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012496C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001D0B44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100082638();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001D0B7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001D0BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_1001D0C24(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v7, a2[2], a2[3], a2[4]);
  return Hasher._finalize()();
}

uint64_t sub_1001D0CA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001D0CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001D0D4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v6 = a2[2];
  v7 = a2[3];
  sub_1001D2058();
  v12 = _s13CodableResultO17FailureCodingKeysOMa(v8, v9, v10, v11);
  sub_1001D2004();
  swift_getWitnessTable();
  sub_1001D20A4();
  v70 = v12;
  v68 = v13;
  type metadata accessor for KeyedEncodingContainer();
  sub_1000890DC();
  v72 = v15;
  v73 = v14;
  sub_100089118();
  __chkstk_darwin(v16);
  sub_1000891AC();
  v69 = v17;
  sub_100156444();
  v71 = v18;
  __chkstk_darwin(v19);
  sub_100093D40();
  v67 = v21 - v20;
  sub_1001D2058();
  v26 = _s13CodableResultO17SuccessCodingKeysOMa(v22, v23, v24, v25);
  sub_1001D1FEC();
  swift_getWitnessTable();
  sub_1001D20A4();
  v63 = v26;
  v61 = v27;
  type metadata accessor for KeyedEncodingContainer();
  sub_1000890DC();
  v65 = v29;
  v66 = v28;
  sub_100089118();
  __chkstk_darwin(v30);
  sub_1000891AC();
  v62 = v31;
  sub_100156444();
  v64 = v32;
  __chkstk_darwin(v33);
  sub_100093D40();
  v60 = v35 - v34;
  sub_100156444();
  v37 = v36;
  __chkstk_darwin(v38);
  sub_100093D40();
  v41 = v40 - v39;
  v76 = v7;
  v77 = v6;
  sub_1001D2058();
  v46 = _s13CodableResultO10CodingKeysOMa(v42, v43, v44, v45);
  v47 = sub_1001D201C(v46);
  sub_1001D20B0();
  v78 = type metadata accessor for KeyedEncodingContainer();
  sub_1000890DC();
  v80 = v48;
  sub_100089118();
  __chkstk_darwin(v49);
  v51 = &v59 - v50;
  sub_100086D24(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v37 + 16))(v41, v79, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = v71;
    v53 = v67;
    v54 = v76;
    (*(v71 + 32))(v67, v41, v76);
    v82 = 1;
    v55 = v69;
    sub_1001D2090();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v56 = v73;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v57 = v72;
  }

  else
  {
    v52 = v64;
    v53 = v60;
    v54 = v77;
    (*(v64 + 32))(v60, v41, v77);
    v81 = 0;
    v55 = v62;
    sub_1001D2090();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v56 = v66;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v57 = v65;
  }

  (*(v57 + 8))(v55, v56);
  (*(v52 + 8))(v53, v54);
  return (*(v80 + 8))(v51, v47);
}

uint64_t sub_1001D11F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v85 = a5;
  v84 = a4;
  v77 = a7;
  v11 = _s13CodableResultO17FailureCodingKeysOMa(255, a2, a3, a6);
  sub_1001D2004();
  swift_getWitnessTable();
  sub_1001D20A4();
  v89 = v12;
  v90 = v11;
  v81 = type metadata accessor for KeyedDecodingContainer();
  sub_1000890DC();
  v80 = v13;
  sub_100089118();
  __chkstk_darwin(v14);
  sub_1000891AC();
  v91 = v15;
  v16 = sub_1001D2078();
  v20 = _s13CodableResultO17SuccessCodingKeysOMa(v16, v17, v18, v19);
  sub_1001D1FEC();
  swift_getWitnessTable();
  sub_1001D20A4();
  v86 = v21;
  v87 = v20;
  v79 = type metadata accessor for KeyedDecodingContainer();
  sub_1000890DC();
  v78 = v22;
  sub_100089118();
  __chkstk_darwin(v23);
  sub_1000891AC();
  v88 = v24;
  v25 = sub_1001D2078();
  v29 = _s13CodableResultO10CodingKeysOMa(v25, v26, v27, v28);
  v95 = sub_1001D201C(v29);
  sub_1001D20B0();
  type metadata accessor for KeyedDecodingContainer();
  sub_1000890DC();
  v93 = v30;
  v94 = v31;
  sub_100089118();
  __chkstk_darwin(v32);
  v34 = &v75 - v33;
  v82 = a2;
  v83 = a3;
  v35 = _s13CodableResultOMa(0, a2, a3, a6);
  sub_1000890DC();
  v92 = v36;
  v38 = __chkstk_darwin(v37);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = &v75 - v42;
  __chkstk_darwin(v41);
  v45 = &v75 - v44;
  v46 = a1[3];
  v101 = a1;
  sub_100086D24(a1, v46);
  v47 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v47)
  {
    v95 = v40;
    v96 = v43;
    v76 = v45;
    v48 = v93;
    v49 = v34;
    *&v97 = KeyedDecodingContainer.allKeys.getter();
    sub_1001D20B0();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v99 = ArraySlice.init<A>(_:)();
    *(&v99 + 1) = v50;
    *&v100 = v51;
    *(&v100 + 1) = v52;
    sub_1001D20B0();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v53 = v97;
    if (v97 == 2 || (v75 = v99, v97 = v99, v98 = v100, (Collection.isEmpty.getter() & 1) == 0))
    {
      v56 = type metadata accessor for DecodingError();
      swift_allocError();
      v58 = v57;
      sub_100080FB4(&qword_1003CC798, &qword_1002EBEF0);
      *v58 = v35;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v56 - 8) + 104))(v58, enum case for DecodingError.typeMismatch(_:), v56);
      swift_willThrow();
      (*(v94 + 8))(v49, v48);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v53)
      {
        LOBYTE(v97) = 1;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v95;
        v55 = v81;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v61 = sub_1001D2048();
        v62(v61, v55);
        v63 = sub_10017069C();
        v64(v63);
        sub_1001D2068();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v65 = v54;
        v66 = v92;
        v67 = v77;
      }

      else
      {
        LOBYTE(v97) = 0;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v66 = v92;
        v59 = v79;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v68 = sub_1001D2048();
        v69(v68, v59);
        v70 = sub_10017069C();
        v71(v70);
        sub_1001D2068();
        swift_unknownObjectRelease();
        v72 = v96;
        swift_storeEnumTagMultiPayload();
        v67 = v77;
        v65 = v72;
      }

      v73 = *(v66 + 32);
      v74 = v76;
      v73(v76, v65, v35);
      v73(v67, v74, v35);
    }
  }

  return sub_100080F0C(v101);
}

_BYTE *sub_1001D195C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D1A28);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001D1A54(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001D1AF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D1B20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D1B9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1001D1CE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x1001D1EB4);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1001D201C(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1001D20BC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 && a1)
  {
    *a1 = _convertErrorToNSError(_:)();
  }
}

uint64_t sub_1001D2114(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a3;
  }

  if (a1)
  {
    *a1 = _convertErrorToNSError(_:)();
  }

  return a2;
}

void *sub_1001D215C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1001D2934();
  v5 = v4[2];
  if (v5)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithInteger:v4[v6] >> 9];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v6;
      --v5;
    }

    while (v5);
  }

  sub_1001D2404(_swiftEmptyArrayStorage);
  sub_1001D20BC(a3, 0, v7, 0);
  v8 = sub_1000C44AC();
  sub_1001D3E20(v8, 0);
  return a3;
}

void *sub_1001D2298(uint64_t a1, uint64_t a2, void *a3)
{
  Hasher.init()();
  sub_1001D24F0(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  v6 = Hasher.finalize()();
  v7 = NSNotFound.getter();
  sub_1001D2114(a3, v7, v6, 0);
  v8 = sub_1000C44AC();
  sub_1001D2B9C(v8, 0);
  return a3;
}

uint64_t sub_1001D2344(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10011EDC4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1001D2404(unint64_t a1)
{
  sub_1000AED9C(a1);
  sub_10018884C();
  sub_10012310C();
  v5[1] = Set.init(minimumCapacity:)();
  v2 = sub_1000AFC90(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10011EF0C(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001D24F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v30 = 0;
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100027B30(v4, &v30);

  if (v5)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  if (v30)
  {
    v7 = v30;

    *&v30 = v7;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    return swift_willThrowTypedImpl();
  }

  else if (v6)
  {
    sub_1001D2EAC(v6, 0);
    v9 = 0;
    v23 = v6;
    v10 = v6;
    do
    {
      v11 = *(&off_100383840 + v9 + 32);
      if (*(&off_100383840 + v9 + 32))
      {
        if (v11 == 1)
        {
          v12 = 0xD000000000000012;
        }

        else
        {
          v12 = 0xD000000000000017;
        }

        if (v11 == 1)
        {
          v13 = 0x8000000100313E30;
        }

        else
        {
          v13 = 0x800000010031DBB0;
        }
      }

      else
      {
        v13 = 0xEA00000000006574;
        v12 = 0x614464656E676973;
      }

      v14 = sub_1000B6328(v12, v13);
      v16 = v15;

      if (v16)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v27 = v10;
        v18 = *(v10 + 24);
        sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);

        sub_10008B5D0((*(v10 + 56) + 32 * v14), &v30);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v30 = 0u;
        v31[0] = 0u;
      }

      ++v9;
      sub_10008B69C(&v30, &unk_1003CCB70, &unk_1002ED050);
    }

    while (v9 != 3);
    *&v30 = sub_1001D2EB8(v10);
    sub_1001D2F74(&v30);
    if (v3)
    {

      __break(1u);
    }

    else
    {

      v19 = 0;
      v20 = v30;
      v21 = *(v30 + 16);
      while (1)
      {
        if (v19 == v21)
        {
          v28 = 0u;
          v29 = 0u;
          v19 = v21;
          v27 = 0u;
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_34:
            __break(1u);
          }

          if (v19 >= *(v20 + 16))
          {
            goto LABEL_34;
          }

          sub_1001D2FE0(v20 + 32 + 48 * v19++, &v27);
        }

        v30 = v27;
        v31[0] = v28;
        v31[1] = v29;
        if (!*(&v27 + 1))
        {
          break;
        }

        sub_10008B5D0(v31, &v26);
        sub_100080FB4(&qword_1003D1C68, &qword_1002FA0F8);
        if (swift_dynamicCast())
        {
          sub_1000F2C78(v24, &v27);
          sub_100086D24(&v27, *(&v28 + 1));
          dispatch thunk of Hashable.hash(into:)();
          sub_100080F0C(&v27);
        }

        else
        {
          v25 = 0;
          memset(v24, 0, sizeof(v24));
          sub_10008B69C(v24, &qword_1003D1C70, qword_1002FA100);
        }
      }

      sub_1001D3E20(v23, 0);
    }
  }

  else
  {
    sub_1001D2E58();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return sub_1001D3E20(0, 0);
  }

  return result;
}

void *sub_1001D2934()
{
  v1 = v0;
  v16 = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = sub_100028E90(isa, &v16);

  if (v3)
  {
    sub_100080FB4(&unk_1003CE640, &unk_1002F94C0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  if (v16)
  {
    v5 = v16;

    v16 = v5;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    swift_willThrowTypedImpl();
  }

  else if (v4)
  {
    v7 = *(v4 + 16);
    if (v7)
    {
      v16 = _swiftEmptyArrayStorage;
      sub_1002134AC(0, v7, 0);
      v8 = 0;
      v3 = v16;
      while (1)
      {
        if (v8 >= *(v4 + 16))
        {
          __break(1u);
        }

        v14 = *(v4 + 32 + 8 * v8);

        sub_1001D2BA8(&v14, &v13, &v15);
        if (v1)
        {
          break;
        }

        v1 = 0;

        v9 = v15;
        v16 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1002134AC((v10 > 1), v11 + 1, 1);
          v3 = v16;
        }

        ++v8;
        v3[2] = v11 + 1;
        v3[v11 + 4] = v9;
        if (v7 == v8)
        {
          sub_1001D3E20(v4, 0);
          return v3;
        }
      }

      sub_1001D3E20(v4, 0);
    }

    else
    {
      sub_1001D3E20(v4, 0);
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_1001D2E58();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1001D2B9C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1001D2BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  Hasher.init()();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v12, v6, v13);
  sub_10008E550(v12);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      Hasher._combine(_:)(v9);
    }
  }

  else
  {
    sub_10008B69C(v13, &unk_1003CCB70, &unk_1002ED050);
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v7;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v12, v6, v13);
  sub_10008E550(v12);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      sub_1001D24F0(v10, v11, __src);

      if (v3)
      {
        *a2 = v3;
        return result;
      }
    }
  }

  else
  {
    sub_10008B69C(v13, &unk_1003CCB70, &unk_1002ED050);
  }

  memcpy(__dst, __src, sizeof(__dst));
  result = Hasher.finalize()();
  *a3 = result;
  return result;
}

void *sub_1001D2D6C(uint64_t a1, void *a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001D2298(v3, v4, a2);
  sub_1000C44AC();

  return a2;
}

Class sub_1001D2DA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1001D215C(v4, v6, a2);
  v7 = sub_1000C44AC();
  sub_10008E168(v7, v6);
  if (a2)
  {
    sub_10018884C();
    sub_10012310C();
    v8.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

unint64_t sub_1001D2E58()
{
  result = qword_1003D1C60;
  if (!qword_1003D1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1C60);
  }

  return result;
}

uint64_t sub_1001D2EAC(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

void *sub_1001D2EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1001DA654(*(a1 + 16), 0);
  v4 = sub_1001D3C84(&v7, v3 + 2, v1, a1);
  v5 = v7;

  sub_100123174(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

Swift::Int sub_1001D2F74(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10013B23C(v2);
    v2 = v3;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_1001D3050(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1001D2FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003D0A88, &unk_1002F77B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1001D3050(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100080FB4(&qword_1003D0A88, &unk_1002F77B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1001D32A8(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001D3154(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001D3154(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
    while (2)
    {
      v20 = a3;
      v7 = v6;
      v8 = v5;
      while (1)
      {
        sub_1001D2FE0(v8, v19);
        v9 = v8 - 3;
        sub_1001D2FE0((v8 - 3), v18);
        if (v19[0] == v18[0] && v19[1] == v18[1])
        {
          break;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10008B69C(v18, &qword_1003D0A88, &unk_1002F77B0);
        result = sub_10008B69C(v19, &qword_1003D0A88, &unk_1002F77B0);
        if (v11)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v13 = v8[1];
          v12 = v8[2];
          v14 = *v8;
          v15 = *(v8 - 2);
          *v8 = *v9;
          v8[1] = v15;
          v8[2] = *(v8 - 1);
          *v9 = v14;
          *(v8 - 2) = v13;
          v8 -= 3;
          v9[2] = v12;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_10008B69C(v18, &qword_1003D0A88, &unk_1002F77B0);
      result = sub_10008B69C(v19, &qword_1003D0A88, &unk_1002F77B0);
LABEL_14:
      a3 = v20 + 1;
      v5 += 48;
      --v6;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1001D32A8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_107:
    v114 = *result;
    if (!*result)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_145;
        }

        v99 = v6;
        v100 = &v6[16 * v98];
        v6 = *v100;
        v101 = &v97[2 * v98];
        v102 = *(v101 + 1);
        v103 = v120;
        sub_1001D39C4((*a3 + 48 * *v100), (*a3 + 48 * *v101), (*a3 + 48 * v102), v114);
        v120 = v103;
        if (v103)
        {
          break;
        }

        if (v102 < v6)
        {
          goto LABEL_133;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_134;
        }

        *v100 = v6;
        *(v100 + 1) = v102;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_135;
        }

        v98 = *v97 - 1;
        sub_10013A098(v101 + 16, v104, v101);
        *v97 = v98;
        v6 = v99;
      }

LABEL_117:

      return;
    }

LABEL_142:
    v6 = sub_10013A084(v6);
    goto LABEL_109;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = &qword_1003D0A88;
  v8 = &unk_1002F77B0;
  while (1)
  {
    v9 = v5;
    v10 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v106 = v6;
      v11 = *a3;
      sub_1001D2FE0(*a3 + 48 * v10, &v118);
      sub_1001D2FE0(v11 + 48 * v9, &v116);
      if (v118 == v116 && v119 == v117)
      {
        LODWORD(v114) = 0;
      }

      else
      {
        LODWORD(v114) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10008B69C(&v116, v7, v8);
      sub_10008B69C(&v118, v7, v8);
      v13 = v9 + 2;
      v109 = v9;
      v14 = v11 + 48 * v9;
      v15 = 48 * v9;
      v16 = v14 + 96;
      v17 = v15 + 48;
      v18 = v10;
      do
      {
        v10 = v13;
        v19 = v18;
        v20 = v17;
        if (v13 >= v4)
        {
          break;
        }

        v6 = v4;
        sub_1001D2FE0(v16, &v118);
        sub_1001D2FE0(v16 - 48, &v116);
        v21 = v118 == v116 && v119 == v117;
        v22 = v21 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10008B69C(&v116, v7, v8);
        sub_10008B69C(&v118, v7, v8);
        v23 = v114 ^ v22;
        v13 = v10 + 1;
        v16 += 48;
        v18 = v19 + 1;
        v17 = v20 + 48;
        v4 = v6;
      }

      while ((v23 & 1) == 0);
      if (v114)
      {
        v24 = v109;
        if (v10 < v109)
        {
          goto LABEL_139;
        }

        if (v109 >= v10)
        {
          v6 = v106;
          v9 = v109;
          goto LABEL_31;
        }

        v6 = v106;
        do
        {
          if (v24 != v19)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v26 = (v25 + v15);
            v27 = (v25 + v20);
            v28 = *v26;
            v29 = v26[1];
            v30 = v26[2];
            v32 = v27[1];
            v31 = v27[2];
            *v26 = *v27;
            v26[1] = v32;
            v26[2] = v31;
            v27[1] = v29;
            v27[2] = v30;
            *v27 = v28;
          }

          ++v24;
          v20 -= 48;
          v15 += 48;
          v33 = v24 < v19--;
        }

        while (v33);
      }

      else
      {
        v6 = v106;
      }

      v9 = v109;
    }

LABEL_31:
    v34 = a3[1];
    if (v10 < v34)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_138;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v10 < v9)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001D9FA8();
      v6 = v95;
    }

    v50 = *(v6 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v6 + 3) >> 1)
    {
      sub_1001D9FA8();
      v6 = v96;
    }

    *(v6 + 2) = v51;
    v52 = v6 + 32;
    v53 = &v6[16 * v50 + 32];
    *v53 = v9;
    *(v53 + 1) = v10;
    v113 = *result;
    if (!*result)
    {
      goto LABEL_147;
    }

    v114 = v10;
    if (v50)
    {
      v111 = v6 + 32;
      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v6[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v6 + 4);
          v58 = *(v6 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_75:
          if (v60)
          {
            goto LABEL_124;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_127;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_132;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v51 < 2)
        {
          goto LABEL_126;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_90:
        if (v75)
        {
          goto LABEL_129;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_131;
        }

        if (v82 < v74)
        {
          goto LABEL_104;
        }

LABEL_97:
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v86 = &v52[16 * v54 - 16];
        v87 = *v86;
        v88 = v54;
        v89 = &v52[16 * v54];
        v90 = *(v89 + 1);
        v91 = v120;
        sub_1001D39C4((*a3 + 48 * *v86), (*a3 + 48 * *v89), (*a3 + 48 * v90), v113);
        v120 = v91;
        if (v91)
        {
          goto LABEL_117;
        }

        if (v90 < v87)
        {
          goto LABEL_119;
        }

        v92 = v8;
        v93 = v7;
        v94 = v6;
        v6 = *(v6 + 2);
        if (v88 > v6)
        {
          goto LABEL_120;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v6)
        {
          goto LABEL_121;
        }

        v51 = (v6 - 1);
        sub_10013A098(v89 + 16, &v6[-v88 - 1], v89);
        *(v94 + 2) = v6 - 1;
        v33 = v6 > 2;
        v6 = v94;
        v7 = v93;
        v8 = v92;
        v52 = v111;
        if (!v33)
        {
          goto LABEL_104;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_122;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_123;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_125;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_128;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_136;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_75;
    }

LABEL_104:
    v5 = v114;
    v4 = a3[1];
    if (v114 >= v4)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_140;
  }

  if (v9 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v9 + a4;
  }

  if (v35 < v9)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v10 == v35)
  {
    goto LABEL_54;
  }

  v107 = v6;
  v36 = *a3;
  v37 = v9;
  v38 = *a3 + 48 * v10;
  v112 = v35;
  v114 = v10;
  v110 = v37;
  v39 = v37 - v10;
LABEL_41:
  v40 = v39;
  v41 = v38;
  while (1)
  {
    sub_1001D2FE0(v41, &v118);
    v42 = v41 - 3;
    sub_1001D2FE0((v41 - 3), &v116);
    if (v118 == v116 && v119 == v117)
    {
      sub_10008B69C(&v116, v7, v8);
      sub_10008B69C(&v118, v7, v8);
LABEL_52:
      v38 += 48;
      --v39;
      if (++v114 == v112)
      {
        v10 = v112;
        v6 = v107;
        v9 = v110;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10008B69C(&v116, v7, v8);
    sub_10008B69C(&v118, v7, v8);
    if ((v44 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v36)
    {
      break;
    }

    v46 = v41[1];
    v45 = v41[2];
    v47 = *v41;
    v48 = *(v41 - 2);
    *v41 = *v42;
    v41[1] = v48;
    v41[2] = *(v41 - 1);
    *v42 = v47;
    *(v41 - 2) = v46;
    v41 -= 3;
    v42[2] = v45;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

uint64_t sub_1001D39C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_100212BD4(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      sub_1001D2FE0(v6, &v33);
      sub_1001D2FE0(v4, &v31);
      v12 = v33 == v31 && v34 == v32;
      if (v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10008B69C(&v31, &qword_1003D0A88, &unk_1002F77B0);
      sub_10008B69C(&v33, &qword_1003D0A88, &unk_1002F77B0);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 48;
    }

    sub_10008B69C(&v31, &qword_1003D0A88, &unk_1002F77B0);
    sub_10008B69C(&v33, &qword_1003D0A88, &unk_1002F77B0);
LABEL_16:
    v14 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v14;
    v16 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_18;
  }

  sub_100212BD4(a2, (a3 - a2) / 48, a4);
  v17 = &v4[48 * v9];
  v35 = v4;
LABEL_20:
  v18 = (v6 - 48);
  v5 -= 48;
  v19 = v17 - 48;
  while (1)
  {
    v10 = v19 + 48;
    if (v19 + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    v21 = v6;
    sub_1001D2FE0(v19, &v33);
    v6 = v18;
    sub_1001D2FE0(v18, &v31);
    if (v33 == v31 && v34 == v32)
    {
      v23 = 0;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10008B69C(&v31, &qword_1003D0A88, &unk_1002F77B0);
    sub_10008B69C(&v33, &qword_1003D0A88, &unk_1002F77B0);
    if (v23)
    {
      v17 = v19 + 48;
      v12 = v5 + 48 == v21;
      v4 = v35;
      if (!v12)
      {
        v26 = *v6;
        v27 = *(v6 + 2);
        *(v5 + 1) = *(v6 + 1);
        *(v5 + 2) = v27;
        *v5 = v26;
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 48)
    {
      v24 = *v19;
      v25 = *(v19 + 2);
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v25;
      *v5 = v24;
    }

    v5 -= 48;
    v19 -= 48;
    v18 = v6;
    v6 = v21;
    v4 = v35;
  }

LABEL_39:
  v28 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v28])
  {
    memmove(v6, v4, 48 * v28);
  }

  return 1;
}

void *sub_1001D3C84(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_100080F58(*(a4 + 56) + 32 * v16, &v26);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      v22 = v26;
      v21 = v27;
      v29 = v26;
      v30 = v27;
      v28 = v25;
      *v9 = v25;
      v9[1] = v22;
      v9[2] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 3;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001D3E20(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_BYTE *storeEnumTagSinglePayload for AnalyticsUtilityError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D3EF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D3F34()
{
  result = qword_1003D1C78;
  if (!qword_1003D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1C78);
  }

  return result;
}

void sub_1001D3F88(uint64_t a1)
{
  v4 = sub_1001D4F54(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001D4EB8(v4, 1, sub_1001D9B00);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001D4F6C();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100080FB4(&unk_1003D1CC0, &unk_1002F1EA0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001D4058(uint64_t a1)
{
  v4 = sub_1001D4F54(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001D4EB8(v4, 1, sub_1001D9EE8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001D4F6C();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1001D4110(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1001D4EB8(*(*v3 + 16) + 1, 1, sub_1001DA2B8);
  v8 = *v3;
  v9 = *(*v3 + 16);
  v10 = (*(*v3 + 24) >> 1) - v9;
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = a3 & 1;
  v13 = 24 * v9 + 32;
  do
  {
    if ((v10 & ~(v10 >> 63)) == v11)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v12 == -1)
    {
      goto LABEL_7;
    }

    v14 = v8 + v13;
    ++v11;
    v13 += 24;
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = v12 & 1;
    v12 = -1;
    a1 = 0;
    a2 = 0;
  }

  while (v10 != v11);
  v11 = v10;
LABEL_7:
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v8 + 16) = v17;
  if (v11 != v10)
  {
    result = sub_1001D4F30(0, 0, 255);
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001D4220(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1001D4EB8(result, 1, sub_1001DA2B8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1001D42F8()
{
  sub_1001D4F48();
  sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002ED290;
  *(v3 + 32) = v2;
  *(v3 + 40) = v0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 initWithKeyPath:isa];

  return v5;
}

uint64_t sub_1001D43B8()
{
  v1 = sub_1001D4F94();
  sub_100080FB4(&unk_1003D1CB0, &qword_1002FA298);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002ED290;
  *(v2 + 32) = v0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  objc_msgSendSuper2(&v5, "init");
  sub_1001D4F94();
  swift_deallocPartialClassInstance();
  return v0;
}

id sub_1001D4494(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = ObjectType;
  v4 = *(a1 + 16);
  if (v4)
  {
    v15 = ObjectType;
    v17 = _swiftEmptyArrayStorage;
    sub_1002134CC(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v17 = v5;
      v10 = v5[2];
      v9 = v5[3];

      if (v10 >= v9 >> 1)
      {
        sub_1002134CC((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      v5[2] = v10 + 1;
      v11 = &v5[3 * v10];
      v11[4] = v8;
      v11[5] = v7;
      *(v11 + 48) = 0;
      v6 += 2;
      --v4;
    }

    while (v4);

    v3 = v15;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v12 = objc_allocWithZone(v3);
  *&v12[OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath] = v5;
  v16.receiver = v12;
  v16.super_class = v3;
  v13 = objc_msgSendSuper2(&v16, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id sub_1001D4624()
{
  sub_1001D4F48();
  v1 = objc_allocWithZone(v0);

  sub_100093DD0();
  return sub_1001D42F8();
}

id sub_1001D46DC()
{
  sub_1001D4F48();
  ObjectType = swift_getObjectType();
  v7 = *(v0 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath);

  v2 = sub_100093DD0();
  sub_1001D4110(v2, v3, 0);
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath] = v7;
  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001D47E8(uint64_t a1)
{
  sub_1001D4F94();
  v7 = sub_1001D4F80();

  sub_1001D4110(v1, 0, 1);
  v4 = objc_allocWithZone(v2);
  *&v4[*(v3 + 3200)] = v7;
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001D48AC(uint64_t a1)
{
  sub_1001D4F94();
  v7 = sub_1001D4F80();

  sub_1001D4220(v3);
  v4 = objc_allocWithZone(v1);
  *&v4[*(v2 + 3200)] = v7;
  v6.receiver = v4;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1001D49F8()
{
  sub_1001D4F48();
  if (*(*(v0 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath) + 16))
  {
    v1._countAndFlagsBits = sub_100093DD0();
    String.append(_:)(v1);
    v2._countAndFlagsBits = 0x293F203E3E2D20;
    v2._object = 0xE700000000000000;
    String.append(_:)(v2);
  }

  else
  {
  }

  return sub_100093DD0();
}

uint64_t sub_1001D4B14()
{
  result = 36;
  v2 = *(v0 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 48);
    do
    {
      v5 = *(v4 - 2);
      if (*v4)
      {
        v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v6);

        v7._countAndFlagsBits = 93;
        v7._object = 0xE100000000000000;
        String.append(_:)(v7);
        v8._countAndFlagsBits = 91;
        v8._object = 0xE100000000000000;
        String.append(_:)(v8);
      }

      else
      {
        v9 = *(v4 - 1);

        v10._countAndFlagsBits = v5;
        v10._object = v9;
        String.append(_:)(v10);
        v11._countAndFlagsBits = 46;
        v11._object = 0xE100000000000000;
        String.append(_:)(v11);
        sub_1001D4E78(v5, v9, 0);
      }

      v4 += 24;
      --v3;
    }

    while (v3);
    return 36;
  }

  return result;
}

void sub_1001D4C4C()
{
  if (*(*(v1 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath) + 16))
  {
    sub_1001D4F48();
    if (v4 == 1)
    {
      v5 = *(v3 + 32);
      if (*(v3 + 48))
      {
        [v2 bindInt64:v5 atPosition:*v0];
      }

      else
      {
        v7 = *(v3 + 40);

        v8 = String._bridgeToObjectiveC()();
        [v2 bindStringCopy:v8 atPosition:*v0];
        sub_1001D4E78(v5, v7, 0);
      }
    }

    else
    {
      sub_1001D4B14();
      v6 = String._bridgeToObjectiveC()();

      [v2 bindStringCopy:v6 atPosition:*v0];
    }

    if (__OFADD__(*v0, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v0;
    }
  }
}

uint64_t sub_1001D4DD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D4E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001D4E78(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1001D4EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1001D4F30(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001D4E78(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001D4F94()
{

  return swift_getObjectType();
}

uint64_t sub_1001D4FCC()
{
  v18 = v0;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v1, qword_1003F26C8);
  _StringGuts.grow(_:)(32);

  v16 = 0xD00000000000001ELL;
  v17 = 0x800000010031DC90;
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v4 = v0[2];
  v3 = v0[3];
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v15 = v8;
    v16 = 91;
    v17 = 0xE100000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v3;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 8285;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = sub_100080210(91, 0xE100000000000000, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_100080210(0xD00000000000001ELL, 0x800000010031DC90, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_1003CBE60 != -1)
  {
    swift_once();
  }

  v13 = qword_1003D1CD0;
  v0[5] = qword_1003D1CD0;

  return _swift_task_switch(sub_1001D52D4, v13, 0);
}

uint64_t sub_1001D52D4()
{
  *(v0 + 48) = sub_10019D99C();

  return _swift_task_switch(sub_1001D5340, 0, 0);
}

uint64_t sub_1001D5340()
{
  v1 = *(v0 + 32);
  v2 = v1[2];
  *(v0 + 56) = v2;
  if (v2)
  {
    *(v0 + 64) = 0;
    v4 = v1[4];
    v3 = v1[5];
    v5 = swift_allocObject();
    *(v0 + 72) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;

    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    sub_1001D597C(v6);

    return sub_1001D5E3C(v7, v5);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1001D5440()
{

  return _swift_task_switch(sub_1001D5558, 0, 0);
}

uint64_t sub_1001D5558()
{
  v1 = *(v0 + 64) + 1;
  if (v1 == *(v0 + 56))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 64) = v1;
    v4 = *(v0 + 32) + 16 * v1;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = swift_allocObject();
    *(v0 + 72) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;

    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    sub_1001D597C(v8);

    return sub_1001D5E3C(v9, v7);
  }
}

uint64_t sub_1001D5660()
{
  sub_100080FB4(qword_1003D1D80, &unk_1002FA310);
  swift_allocObject();
  result = sub_10019D9C0(sub_10018F144, 0);
  qword_1003D1CD0 = result;
  return result;
}

void sub_1001D56C4(void *a1, uint64_t a2, uint64_t a3)
{
  _s16AppReceiptEntityCMa();
  v17 = _swiftEmptyArrayStorage;
  v6 = 1;
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1001D5938();
  v16[3] = &type metadata for String;
  v16[0] = a2;
  v16[1] = a3;

  v7 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, v16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [a1 connection];
  v10 = [ObjCClassFromMetadata queryOnConnection:v9 predicate:v7];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v11 = v17;
  v12 = sub_1000AFC90(v17);
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v11 + 16))
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v6)
    {
      v6 = [v14 deleteAllEntities];
    }

    else
    {
      v6 = 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1001D589C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001D58F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001D5938()
{
  result = qword_1003CCBB8;
  if (!qword_1003CCBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003CCBB8);
  }

  return result;
}

void *sub_1001D59F8()
{
  v1 = v0;
  v3 = *v0;
  v2 = (v0 + 2);
  v4 = v3;
  if (os_unfair_lock_trylock(v2))
  {
    v7 = *(v4 + 80);
    sub_1001D5AB0(v1 + 3);
    type metadata accessor for ExportedObjectTaskTracker.State(0, v7, v8, v9);
    os_unfair_lock_unlock(v2);
  }

  else
  {
    v7 = *(v4 + 80);
  }

  type metadata accessor for ExportedObjectTaskTracker.State(255, v7, v5, v6);
  v10 = type metadata accessor for _Cell();
  sub_1001D5CF0(v10);
  return v1;
}

uint64_t sub_1001D5AB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v11 = (v2 + 63) >> 6;

  v6 = 0;
  v13 = result;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(*(result + 56) + ((v6 << 9) | (8 * v8))) + 16);
    if (v9)
    {

      v10 = 32;
      do
      {

        Task.cancel()();

        v10 += 8;
        --v9;
      }

      while (v9);

      result = v13;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
    }

    v4 = *(v12 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D5BF8()
{
  sub_1001D59F8();

  return _swift_deallocClassInstance(v0);
}

void *sub_1001D5C44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for ()[1];
  }

  type metadata accessor for ExportedObjectTaskTracker.State(255, *a1, a3, a4);
  return type metadata accessor for Mutex();
}

uint64_t sub_1001D5CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001D5D00(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = swift_getObjectType();

  return _swift_task_switch(sub_1001D5D74, 0, 0);
}

uint64_t sub_1001D5D74()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10018BE54;
  v1 = swift_continuation_init();
  sub_1001D68B4(v1, v2, v3, v4, v5, &unk_10038F4F0, v6, &unk_10038F508);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001D5E3C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = swift_getObjectType();

  return _swift_task_switch(sub_1001D5EB0, 0, 0);
}

uint64_t sub_1001D5EB0()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10018ECC4;
  v1 = swift_continuation_init();
  sub_1001D68B4(v1, v2, v3, v4, v5, &unk_10038F450, v6, &unk_10038F468);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001D5F78()
{
  result = sub_1001D5F98();
  qword_1003D1E88 = result;
  return result;
}

uint64_t sub_1001D5F98()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10014B724();
  static DispatchQoS.default.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CF260, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100080FB4(&qword_1003CF268, &qword_1002F2928);
  sub_10014B7B0(&qword_1003CF270, &qword_1003CF268, &qword_1002F2928);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  return OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_1001D61E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_1001D686C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001D6310;
  v10[3] = &unk_10038F558;
  v8 = _Block_copy(v10);

  [a1 readUsingSession:v8];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return swift_continuation_throwingResume();
  }

  __break(1u);
  return result;
}

void sub_1001D6310(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1001D635C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000890DC();
  v32 = v13;
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  sub_1000890DC();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE68 != -1)
  {
    swift_once();
  }

  v22 = qword_1003D1E88;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a1;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = a2;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60, &qword_1002EEE70);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60, &qword_1002EEE70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v32 + 8))(v16, v12);
  (*(v18 + 8))(v21, v31);
}

uint64_t sub_1001D6648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_1001D67A0;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001D67CC;
  v10[3] = &unk_10038F4B8;
  v8 = _Block_copy(v10);

  [a1 modifyUsingTransaction:v8];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return swift_continuation_throwingResume();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D6788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D67CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1001D6810()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D68B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1001D635C(a1, v10, v12, v11, v9, a6, v8, a8);
}

uint64_t sub_1001D68E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746369727473 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1001D6A3C(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x746E756F636361;
      break;
    case 2:
      result = 0x4449656C646E7562;
      break;
    case 3:
      result = 0x746369727473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D6AC4(void *a1, uint64_t a2)
{
  v41 = a2;
  sub_100080FB4(&qword_1003D1EE8, &qword_1002FA500);
  sub_1000890DC();
  v39 = v4;
  v40 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v38 = v6;
  sub_100080FB4(&qword_1003D1EF0, &qword_1002FA508);
  sub_1000890DC();
  v36 = v8;
  v37 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v35 = v10;
  sub_100080FB4(&qword_1003D1EF8, &qword_1002FA510);
  sub_1000890DC();
  v33 = v12;
  v34 = v11;
  sub_100089118();
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_100080FB4(&qword_1003D1F00, &qword_1002FA518);
  sub_1000890DC();
  v32 = v17;
  sub_100089118();
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v21 = sub_100080FB4(&qword_1003D1F08, &qword_1002FA520);
  sub_1000890DC();
  v23 = v22;
  sub_100089118();
  __chkstk_darwin(v24);
  v26 = &v31 - v25;
  sub_100086D24(a1, a1[3]);
  sub_1001D77C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v41)
  {
    case 1:
      v43 = 1;
      sub_1001D78BC();
      sub_100089184(&type metadata for ClientFilter.AccountCodingKeys);
      (*(v33 + 8))(v15, v34);
      break;
    case 2:
      v44 = 2;
      sub_1001D7868();
      v27 = v35;
      sub_100089184(&type metadata for ClientFilter.BundleIDCodingKeys);
      v29 = v36;
      v28 = v37;
      goto LABEL_5;
    case 3:
      v45 = 3;
      sub_1001D7814();
      v27 = v38;
      sub_100089184(&type metadata for ClientFilter.StrictCodingKeys);
      v29 = v39;
      v28 = v40;
LABEL_5:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1001D7910();
      sub_100089184(&type metadata for ClientFilter.NoneCodingKeys);
      (*(v32 + 8))(v20, v16);
      break;
  }

  return (*(v23 + 8))(v26, v21);
}

uint64_t sub_1001D6E9C(void *a1)
{
  v73 = sub_100080FB4(&qword_1003D1E98, &qword_1002FA4D0);
  sub_1000890DC();
  v70 = v2;
  sub_100089118();
  __chkstk_darwin(v3);
  sub_1000891AC();
  v72 = v4;
  sub_100080FB4(&qword_1003D1EA0, &qword_1002FA4D8);
  sub_1000890DC();
  v67 = v6;
  v68 = v5;
  sub_100089118();
  __chkstk_darwin(v7);
  sub_1000891AC();
  v69 = v8;
  sub_100080FB4(&qword_1003D1EA8, &qword_1002FA4E0);
  sub_1000890DC();
  v65 = v10;
  v66 = v9;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_100080FB4(&qword_1003D1EB0, &qword_1002FA4E8);
  sub_1000890DC();
  v64 = v15;
  sub_100089118();
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  v19 = sub_100080FB4(&qword_1003D1EB8, &unk_1002FA4F0);
  sub_1000890DC();
  v71 = v20;
  sub_100089118();
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_100086D24(a1, a1[3]);
  sub_1001D77C0();
  v24 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100080F0C(a1);
  }

  v61 = v14;
  v62 = v18;
  v63 = v13;
  v25 = v72;
  v26 = v73;
  v74 = a1;
  v27 = v23;
  v28 = KeyedDecodingContainer.allKeys.getter();
  sub_100162698(v28, 0);
  if (v30 == v31 >> 1)
  {
    goto LABEL_8;
  }

  v60 = 0;
  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1001D7488);
  }

  v32 = *(v29 + v30);
  sub_100162694(v30 + 1);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_8:
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    sub_100080FB4(&qword_1003CC798, &qword_1002EBEF0);
    *v47 = &type metadata for ClientFilter;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v27, v19);
    a1 = v74;
    return sub_100080F0C(a1);
  }

  v37 = v32;
  v38 = v32;
  v40 = v70;
  v39 = v71;
  switch(v38)
  {
    case 1:
      v76 = 1;
      v56 = sub_1001D78BC();
      v50 = v63;
      sub_1001D7E78(&type metadata for ClientFilter.AccountCodingKeys, &v76, v57, v58, v56);
      swift_unknownObjectRelease();
      v54 = v65;
      v53 = v66;
      goto LABEL_18;
    case 2:
      v77[0] = 2;
      v49 = sub_1001D7868();
      v50 = v69;
      sub_1001D7E78(&type metadata for ClientFilter.BundleIDCodingKeys, v77, v51, v52, v49);
      swift_unknownObjectRelease();
      v54 = v67;
      v53 = v68;
LABEL_18:
      (*(v54 + 8))(v50, v53);
      goto LABEL_19;
    case 3:
      v77[1] = 3;
      sub_1001D7814();
      v55 = v60;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v55)
      {
        (*(v39 + 8))(v27, v19);
        swift_unknownObjectRelease();
        a1 = v74;
        return sub_100080F0C(a1);
      }

      swift_unknownObjectRelease();
      (*(v40 + 8))(v25, v26);
LABEL_19:
      (*(v39 + 8))(v27, v19);
      sub_100080F0C(v74);
      result = v37;
      break;
    default:
      v75 = 0;
      v41 = sub_1001D7910();
      v42 = v62;
      sub_1001D7E78(&type metadata for ClientFilter.NoneCodingKeys, &v75, v43, v44, v41);
      swift_unknownObjectRelease();
      (*(v64 + 8))(v42, v61);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D7498(uint64_t a1)
{
  v2 = sub_1001D78BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D74D4(uint64_t a1)
{
  v2 = sub_1001D78BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7510(uint64_t a1)
{
  v2 = sub_1001D7868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D754C(uint64_t a1)
{
  v2 = sub_1001D7868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D68E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D75B8(uint64_t a1)
{
  v2 = sub_1001D77C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D75F4(uint64_t a1)
{
  v2 = sub_1001D77C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7630(uint64_t a1)
{
  v2 = sub_1001D7910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D766C(uint64_t a1)
{
  v2 = sub_1001D7910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D76A8(uint64_t a1)
{
  v2 = sub_1001D7814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D76E4(uint64_t a1)
{
  v2 = sub_1001D7814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7720@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D6E9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001D776C()
{
  result = qword_1003D1E90;
  if (!qword_1003D1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1E90);
  }

  return result;
}

unint64_t sub_1001D77C0()
{
  result = qword_1003D1EC0;
  if (!qword_1003D1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1EC0);
  }

  return result;
}

unint64_t sub_1001D7814()
{
  result = qword_1003D1EC8;
  if (!qword_1003D1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1EC8);
  }

  return result;
}

unint64_t sub_1001D7868()
{
  result = qword_1003D1ED0;
  if (!qword_1003D1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1ED0);
  }

  return result;
}

unint64_t sub_1001D78BC()
{
  result = qword_1003D1ED8;
  if (!qword_1003D1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1ED8);
  }

  return result;
}

unint64_t sub_1001D7910()
{
  result = qword_1003D1EE0;
  if (!qword_1003D1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1EE0);
  }

  return result;
}

_BYTE *sub_1001D7968(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D7A34);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D7AB0()
{
  result = qword_1003D1F10;
  if (!qword_1003D1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F10);
  }

  return result;
}

unint64_t sub_1001D7B08()
{
  result = qword_1003D1F18;
  if (!qword_1003D1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F18);
  }

  return result;
}

unint64_t sub_1001D7B60()
{
  result = qword_1003D1F20;
  if (!qword_1003D1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F20);
  }

  return result;
}

unint64_t sub_1001D7BB8()
{
  result = qword_1003D1F28;
  if (!qword_1003D1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F28);
  }

  return result;
}

unint64_t sub_1001D7C10()
{
  result = qword_1003D1F30;
  if (!qword_1003D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F30);
  }

  return result;
}

unint64_t sub_1001D7C68()
{
  result = qword_1003D1F38;
  if (!qword_1003D1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F38);
  }

  return result;
}

unint64_t sub_1001D7CC0()
{
  result = qword_1003D1F40;
  if (!qword_1003D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F40);
  }

  return result;
}

unint64_t sub_1001D7D18()
{
  result = qword_1003D1F48;
  if (!qword_1003D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F48);
  }

  return result;
}

unint64_t sub_1001D7D70()
{
  result = qword_1003D1F50;
  if (!qword_1003D1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F50);
  }

  return result;
}

unint64_t sub_1001D7DC8()
{
  result = qword_1003D1F58;
  if (!qword_1003D1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F58);
  }

  return result;
}

unint64_t sub_1001D7E20()
{
  result = qword_1003D1F60;
  if (!qword_1003D1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F60);
  }

  return result;
}

uint64_t sub_1001D7E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1001D7E98(char a1)
{
  result = 0x695F656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x765F656C646E7562;
      break;
    case 2:
      result = 0x74706965636572;
      break;
    case 3:
      result = 0x6E656B6F74;
      break;
    case 4:
      result = 0x6470755F7473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001D7F5C()
{
  _StringGuts.grow(_:)(128);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x656365725F707061;
  v1._object = 0xEC00000073747069;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xA2C5458455420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x765F656C646E7562;
  v5._object = 0xEE006E6F69737265;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x74706965636572;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._object = 0x8000000100314AE0;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6E656B6F74;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6470755F7473616CLL;
  v11._object = 0xEC00000064657461;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x800000010031DE60;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x695F656C646E7562;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100316F60;
  String.append(_:)(v14);
  qword_1003D1F68 = 0;
  unk_1003D1F70 = 0xE000000000000000;
}

void sub_1001D8184(void *a1)
{
  if (qword_1003CBE70 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];
}

BOOL sub_1001D8218(void *a1, __n128 a2)
{
  v83 = v94;
  v90 = "igration function for ";
  a2.n128_u64[0] = 136446466;
  v85 = a2;
  while (1)
  {
    v3 = sub_1000DC8F8();
    if (v3 > 18399)
    {
      return v3 > 18399;
    }

    v4 = sub_1000DC8F8();
    if (v4 != 18400)
    {
      if (v4)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v34 = type metadata accessor for SKLogger(0);
        sub_10007EDA4(v34, qword_1003F26C8);
        sub_1001D8E9C();
        _StringGuts.grow(_:)(65);
        sub_1001D8E3C();
        v35._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v35);

        v36._countAndFlagsBits = 0xD000000000000036;
        v36._object = 0x800000010031DDF0;
        String.append(_:)(v36);
        v95 = sub_1000DC8F8();
        v37._countAndFlagsBits = sub_1001D8E80();
        String.append(_:)(v37);

        sub_1001D8E60();
        v95 = 18400;
        v38._countAndFlagsBits = sub_1001D8E80();
        String.append(_:)(v38);

        v40 = aBlock;
        v39 = v93;
        v41 = static os_log_type_t.error.getter();

        v42 = Logger.logObject.getter();

        if (os_log_type_enabled(v42, v41))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock = v44;
          *v43 = v85.n128_u32[0];
          *(v43 + 4) = sub_1001D8EAC(v44, v45, v46, v47, v48, v49, v50, v51, v81, v83, v85.n128_i64[0], v85.n128_i64[1], v88, v90);
          *(v43 + 12) = 2082;
          v52 = sub_100080210(v40, v39, &aBlock);

          *(v43 + 14) = v52;
          _os_log_impl(&_mh_execute_header, v42, v41, "%{public}s%{public}s", v43, 0x16u);
          swift_arrayDestroy();
          sub_100081C28(v44);
          sub_100081C28(v43);
        }

        else
        {
        }

LABEL_16:
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v53 = type metadata accessor for SKLogger(0);
        sub_10007EDA4(v53, qword_1003F26C8);
        sub_1001D8E9C();
        _StringGuts.grow(_:)(59);
        sub_1001D8E3C();
        v54._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v54);

        sub_1001D8EC8(v55, v56, v57, v58, v59, v60, v61, v62, v81, v83, v85.n128_i64[0], v85.n128_i64[1], v88, v90);
        v95 = sub_1000DC8F8();
        v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v63);

        sub_1001D8E60();
        v95 = 18400;
        v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0x4C49414620;
        v65._object = 0xE500000000000000;
        String.append(_:)(v65);
        v67 = aBlock;
        v66 = v93;
        v68 = static os_log_type_t.error.getter();

        v69 = Logger.logObject.getter();

        if (os_log_type_enabled(v69, v68))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          aBlock = v71;
          *v70 = v86;
          *(v70 + 4) = sub_1001D8EAC(v71, v72, v73, v74, v75, v76, v77, v78, v82, v84, v86, v87, v89, v91);
          *(v70 + 12) = 2082;
          v79 = sub_100080210(v67, v66, &aBlock);

          *(v70 + 14) = v79;
          _os_log_impl(&_mh_execute_header, v69, v68, "%{public}s%{public}s", v70, 0x16u);
          swift_arrayDestroy();
          sub_100081C28(v71);
          sub_100081C28(v70);
        }

        else
        {
        }

        return v3 > 18399;
      }

      v94[2] = sub_1001D8184;
      v94[3] = 0;
      aBlock = _NSConcreteStackBlock;
      v93 = 1107296256;
      v94[0] = sub_100224D90;
      v94[1] = &unk_10038F720;
      v5 = _Block_copy(&aBlock);

      v6 = [a1 migrateToVersion:18400 usingBlock:v5];
      _Block_release(v5);
      if ((v6 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v7 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v7, qword_1003F26C8);
    sub_1001D8E9C();
    _StringGuts.grow(_:)(62);
    sub_1001D8E3C();
    v8._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v8);

    sub_1001D8EC8(v9, v10, v11, v12, v13, v14, v15, v16, v81, v83, v85.n128_i64[0], v85.n128_i64[1], v88, v90);
    v95 = sub_1000DC8F8();
    v17._countAndFlagsBits = sub_1001D8E80();
    String.append(_:)(v17);

    sub_1001D8E60();
    v95 = 18400;
    v18._countAndFlagsBits = sub_1001D8E80();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x5353454343555320;
    v19._object = 0xE800000000000000;
    String.append(_:)(v19);
    v20 = aBlock;
    v21 = v93;
    v22 = static os_log_type_t.default.getter();

    v23 = Logger.logObject.getter();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = v85.n128_u32[0];
      *(v24 + 4) = sub_1001D8EAC(v25, v26, v27, v28, v29, v30, v31, v32, v81, v83, v85.n128_i64[0], v85.n128_i64[1], v88, v90);
      *(v24 + 12) = 2082;
      v33 = sub_100080210(v20, v21, &aBlock);

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v25);
      sub_100081C28(v24);
    }

    else
    {
    }
  }
}

id sub_1001D8960()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0, off_10037DC98);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8, off_10037DCA0);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

id sub_1001D8A34(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s19AppTransactionStoreCMa();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

id sub_1001D8B9C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = _s16AppReceiptEntityCMa();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_1001D8C94(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = _s16AppReceiptEntityCMa();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_1001D8D40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1001D8DC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D8E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D8E3C()
{
  v1 = 91;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

void sub_1001D8E60()
{
  v1 = 540949792;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1001D8E80()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

unint64_t sub_1001D8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_100080210(0, 0xE000000000000000, va);
}

void sub_1001D8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = 0xD00000000000002BLL;

  v15 = a14 | 0x8000000000000000;
  String.append(_:)(*&v16);
}

uint64_t sub_1001D8EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DA3C8();
  v10 = v9;
  v32 = a4;
  sub_1000DCFE0();
  v11 = String.init<A>(_:radix:uppercase:)();
  v19 = v11;
  v20 = v12;
  v21 = *(v10 + 16);
  if (v21 >= *(v10 + 24) >> 1)
  {
    sub_1001DA3C8();
    v10 = v11;
  }

  *(v10 + 16) = v21 + 1;
  v22 = v10 + 24 * v21;
  *(v22 + 32) = 1;
  *(v22 + 40) = v19;
  *(v22 + 48) = v20;
  sub_1001A7E5C(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
  v23 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  v24 = sub_100081D0C(v8, 2, v23);
  sub_100094BEC(v8);
  if (v24 == 2)
  {
    if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
    {
      v25 = 0x67696C6674736574;
    }

    else
    {
      v25 = 0x786F62646E6173;
    }

    if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
    {
      v26 = 0xEA00000000007468;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    v27 = *(v10 + 16);
    if (v27 >= *(v10 + 24) >> 1)
    {
      sub_1001DA3C8();
      v10 = v30;
    }

    *(v10 + 16) = v27 + 1;
    v28 = v10 + 24 * v27;
    *(v28 + 32) = 0;
    *(v28 + 40) = v25;
    *(v28 + 48) = v26;
  }

  return v10;
}

id sub_1001D90D4()
{
  if (qword_1003CC040 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F28A8;
  qword_1003F26E0 = qword_1003F28A8;

  return v1;
}

uint64_t sub_1001D9138(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383EF8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D918C(char a1)
{
  if (a1)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 7761509;
  }
}

uint64_t sub_1001D91EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D9138(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D921C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D918C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RefundRequestEngagementDestination.QueryParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D9324);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D9360()
{
  result = qword_1003D2030;
  if (!qword_1003D2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2030);
  }

  return result;
}

unint64_t sub_1001D93B8()
{
  result = qword_1003D2038;
  if (!qword_1003D2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2038);
  }

  return result;
}

uint64_t sub_1001D940C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v24[0] = 46;
  v24[1] = 0xE100000000000000;
  v23 = v24;
  v4 = sub_1001D95E4(3, 1, sub_1001060A4, v22, a1, a2);
  if (v4[2] == 3)
  {
    v20 = v4[5];
    v21 = v4[4];
    v5 = v4[7];
    v6 = v4[9];
    v18 = v4[8];
    v19 = v4[6];
    v8 = v4[10];
    v7 = v4[11];
    v9 = v4[12];
    v10 = v4[13];
    v12 = v4[14];
    v11 = v4[15];

    v15 = v18;
    v14 = v19;
    v17 = v20;
    v16 = v21;
  }

  else
  {

    v16 = 0;
    v17 = 0;
    v14 = 0;
    v5 = 0;
    v15 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  *a3 = v16;
  a3[1] = v17;
  a3[2] = v14;
  a3[3] = v5;
  a3[4] = v15;
  a3[5] = v6;
  a3[6] = v8;
  a3[7] = v7;
  a3[8] = v9;
  a3[9] = v10;
  a3[10] = v12;
  a3[11] = v11;
  return result;
}

uint64_t sub_1001D9544()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1001D95BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D9544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1001D95E4(uint64_t isUniquelyReferenced_nonNull_native, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v42 = a3;
  if (isUniquelyReferenced_nonNull_native < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!isUniquelyReferenced_nonNull_native || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    String.subscript.getter();
    sub_1001DA8EC();
    sub_1001DA788();
    sub_1001D9C88();
    v16 = v28;
    v9 = *(v28 + 16);
    v29 = *(v28 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v29 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v30 = (v16 + 32 * v9);
      v30[4] = v7;
      v30[5] = v11;
      v30[6] = v12;
      v30[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1001DA788();
    sub_1001D9C88();
    v16 = v31;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v40 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v38 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v38;
        goto LABEL_30;
      }

      sub_1001DA8B8();
      v41[0] = String.subscript.getter();
      v41[1] = v18;
      v19 = v42(v41);
      if (v8)
      {

        return v16;
      }

      v12 = v19;

      if (v12)
      {
        break;
      }

      sub_1001DA8B8();
      v17 = String.index(after:)();
    }

    v21 = (v38 >> 14 == v13) & a2;
    if (v21)
    {
      goto LABEL_20;
    }

    if (v13 < v38 >> 14)
    {
      break;
    }

    v39 = String.subscript.getter();
    v34 = v23;
    v35 = v22;
    v33 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001DA788();
      sub_1001D9C88();
      v40 = v26;
    }

    v13 = v40[2];
    v12 = v13 + 1;
    if (v13 >= v40[3] >> 1)
    {
      sub_1001D9C88();
      v40 = v27;
    }

    v40[2] = v12;
    v25 = &v40[4 * v13];
    v25[4] = v39;
    v25[5] = v35;
    v25[6] = v34;
    v25[7] = v33;
LABEL_20:
    sub_1001DA8B8();
    v17 = String.index(after:)();
    if ((v21 & 1) == 0 && v40[2] == isUniquelyReferenced_nonNull_native)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v40;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        String.subscript.getter();
        sub_1001DA8EC();
        v16 = v40;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v29 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_1001DA788();
      sub_1001D9C88();
      v16 = v32;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1001D9A40()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&unk_1003CEE20, &qword_1002F1E98);
      v6 = sub_1001DA944();
      sub_1001DA884(v6);
      sub_1001DA860(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100219228(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
    sub_1001DA840(v11);
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001D9B00()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&qword_1003D20A8, &qword_1002FAAB8);
      v6 = sub_1001DA944();
      sub_1001DA884(v6);
      sub_1001DA860(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100219228(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_100080FB4(&unk_1003D1CC0, &unk_1002F1EA0);
    sub_1001DA840(v11);
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001D9BC0()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D0560, &unk_1002F6858);
  sub_1001DA8D4();
  type metadata accessor for URL();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B4C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001D9C88()
{
  sub_1001DA95C();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_1001DA7B0();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_100080FB4(v4, v5);
      v12 = sub_1001DA944();
      v13 = j__malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_1001DA970();
    goto LABEL_15;
  }

  sub_1001DA8A0();
  if (!v8)
  {
    sub_1001DA7A0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001D9D58()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D27E0, &unk_1002ED040);
  sub_1001DA8D4();
  type metadata accessor for URLQueryItem();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B34(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001D9E20()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D20B0, &qword_1002FAAC0);
  v8 = sub_1001DA8D4();
  type metadata accessor for LoadProductsTask(v8);
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v10 = sub_1001DA7E0(v9);
    sub_100212B64(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001D9EE8()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
      v6 = sub_1001DA944();
      sub_1001DA884(v6);
      sub_1001DA860(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100212AD0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001D9FA8()
{
  sub_1001DA8AC();
  if ((v4 & 1) == 0 || (sub_1001DA7B0(), v5 == v6))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v3)
    {
      sub_100080FB4(&qword_1003CEDB8, &qword_1002F1DE0);
      v7 = sub_1001DA944();
      sub_1001DA884(v7);
      sub_1001DA860(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_1001DA7C0();
        sub_100212AD0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v5)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DA060()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D2098, &qword_1002FAAA8);
  v8 = sub_1001DA8D4();
  type metadata accessor for PurchaseIntentInternal(v8);
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v10 = sub_1001DA7E0(v9);
    sub_100212B7C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001DA128()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D20A0, &qword_1002FAAB0);
  v8 = sub_1001DA8D4();
  type metadata accessor for LegacyTransactionInternal(v8);
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v10 = sub_1001DA7E0(v9);
    sub_100212B94(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001DA1F0()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      v6 = sub_100080FB4(&qword_1003D20D0, &qword_1002FAAE0);
      v7 = sub_1001DA910(v6);
      v8 = j__malloc_size(v7);
      sub_1001DA870(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_1001DA7C0();
        sub_100212BAC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_100080FB4(&qword_1003D20D8, &qword_1002FAAE8);
    sub_1001DA840(v12);
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}