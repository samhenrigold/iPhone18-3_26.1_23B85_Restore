uint64_t sub_1002DF59C(uint64_t a1, uint64_t a2)
{
  v165 = a2;
  v167 = a1;
  v149 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  __chkstk_darwin(v149);
  v150 = &v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v144 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v151 = &v141 - v7;
  v8 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v8 - 8);
  v155 = &v141 - v9;
  v154 = type metadata accessor for HostedRoutingItem(0);
  v162 = *(v154 - 8);
  v10 = __chkstk_darwin(v154);
  v152 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v161 = (&v141 - v13);
  __chkstk_darwin(v12);
  v153 = &v141 - v14;
  v166 = type metadata accessor for HostedRoutingSession(0);
  v160 = *(v166 - 8);
  v15 = __chkstk_darwin(v166);
  v145 = (&v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v158 = (&v141 - v18);
  v19 = __chkstk_darwin(v17);
  v177 = (&v141 - v20);
  __chkstk_darwin(v19);
  v157 = &v141 - v21;
  v22 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v23 = __chkstk_darwin(v22 - 8);
  v156 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v159 = &v141 - v25;
  v26 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  __chkstk_darwin(v26 - 8);
  v28 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RoutingItem.Action();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v146 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v141 - v33;
  v35 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v35 - 8);
  v37 = &v141 - v36;
  v38 = sub_1001D93CC();
  sub_10001D9AC(v38, v37, &qword_100525C00, &unk_1004511A0);
  v163 = v4;
  v40 = *(v4 + 48);
  v39 = v4 + 48;
  v164 = v3;
  v41 = v40(v37, 1, v3);
  v148 = v29;
  v147 = v30;
  if (v41 == 1)
  {
    sub_1000038A4(v37, &qword_100525C00, &unk_1004511A0);
    v42 = v166;
  }

  else
  {
    (*(v30 + 16))(v34, v167, v29);
    sub_1002D56A8(v165, v28, type metadata accessor for HostedRoutingSessionSnapshot);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      LODWORD(v142) = v44;
      v46 = v45;
      v143 = swift_slowAlloc();
      v170[0] = v143;
      *v46 = 136315650;
      v47 = _typeName(_:qualified:)();
      v49 = sub_10002C9C8(v47, v48, v170);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      sub_1002E798C(&qword_1005259C8, &type metadata accessor for RoutingItem.Action, &protocol conformance descriptor for RoutingItem.Action);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v51;
      (*(v30 + 8))(v34, v29);
      v52 = sub_10002C9C8(v50, v39, v170);

      *(v46 + 14) = v52;
      *(v46 + 22) = 2080;
      v53 = sub_100264AAC();
      v55 = v54;
      sub_1002D5710(v28, type metadata accessor for HostedRoutingSessionSnapshot);
      v56 = sub_10002C9C8(v53, v55, v170);

      *(v46 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v43, v142, "[%s] computeInteractionForItemAction - action: %s in snapshot: %s", v46, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002D5710(v28, type metadata accessor for HostedRoutingSessionSnapshot);
      (*(v30 + 8))(v34, v29);
    }

    (*(v163 + 8))(v37, v164);
    v42 = v166;
  }

  v170[0] = RoutingItem.Action.itemIdentifier.getter();
  v170[1] = v57;
  v168 = 14906;
  v169 = 0xE200000000000000;
  sub_10026983C();
  v58 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();

  if (v58[2] != 2)
  {

    v67 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v69 = v68;
    v70 = &enum case for InternalRoutingError.itemNotFound(_:);
LABEL_16:
    (*(*(v67 - 8) + 104))(v69, *v70, v67);
    swift_willThrow();
    return v67;
  }

  v59 = v58[5];
  v60 = v58[7];

  v61 = static String._fromSubstring(_:)();
  v63 = v62;

  if (v58[2] < 2uLL)
  {
LABEL_55:
    __break(1u);
LABEL_56:

    (*(v39 + 8))(v63, v60);
    v109 = v150;
    v110 = v152;
    v111 = v153;
    v107 = v166;
    v108 = v58;
LABEL_57:
    sub_1002D56A8(v111, v110, type metadata accessor for HostedRoutingItem);
    v138 = v147;
    v139 = v146;
    v140 = v148;
    (*(v147 + 16))(v146, v167, v148);
    v173[0] = v107;
    v173[1] = v108;
    v173[2] = 0;
    v173[3] = 0;
    v174 = 5;
    v134 = v172;
    sub_100272B38(v173, v172);
    v135 = *(sub_1001BC5A8(&qword_100523628, &unk_100457B90) + 48);
    RoutingItem.Action.kind.getter();
    (*(v138 + 8))(v139, v140);
LABEL_53:
    sub_1002D5710(v111, type metadata accessor for HostedRoutingItem);
    sub_1002D5710(v157, type metadata accessor for HostedRoutingSession);
    sub_1002D5640(v152, v109 + v135, type metadata accessor for HostedRoutingItem);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RoutingDecisionEngine.Decision(0);
    v67 = swift_allocObject();
    sub_1002D5640(v109, v67 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
    v136 = v67 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
    v137 = *(v134 + 1);
    *v136 = *v134;
    *(v136 + 16) = v137;
    *(v136 + 32) = *(v134 + 2);
    *(v136 + 48) = v134[48];
    return v67;
  }

  v166 = static String._fromSubstring(_:)();
  v65 = v64;

  if (v61 == static RoutingSession.placeholderSessionIdentifier.getter() && v63 == v66)
  {

LABEL_15:

    v67 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v69 = v72;
    v70 = &enum case for InternalRoutingError.invalidAction(_:);
    goto LABEL_16;
  }

  v143 = v65;
  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {

    goto LABEL_15;
  }

  v74 = v165;
  v142 = sub_1002647C8();
  v75 = v159;
  sub_10001D9AC(v74, v159, &qword_100523620, &unk_1004511D0);
  v76 = v160;
  v39 = v160 + 48;
  v77 = *(v160 + 48);
  if (v77(v75, 1, v42) == 1)
  {

    sub_1000038A4(v75, &qword_100523620, &unk_1004511D0);
    v78 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000038A4(v75, &qword_100523620, &unk_1004511D0);
    sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
    v79 = v42;
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v78 = swift_allocObject();
    *(v78 + 1) = xmmword_10044EC70;
    v81 = v74;
    v82 = v156;
    sub_10001D9AC(v81, v156, &qword_100523620, &unk_1004511D0);
    result = v77(v82, 1, v79);
    if (result == 1)
    {
      goto LABEL_60;
    }

    sub_1002D5640(v82, v78 + v80, type metadata accessor for HostedRoutingSession);
  }

  v170[0] = v142;
  sub_1002E6D98(v78, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v58 = v170[0];
  v60 = *(v170[0] + 16);
  v83 = v160;
  if (!v60)
  {
LABEL_31:

    v67 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v69 = v87;
    v70 = &enum case for InternalRoutingError.sessionNotFound(_:);
    goto LABEL_16;
  }

  v59 = 0;
  while (1)
  {
    if (v59 >= v58[2])
    {
      __break(1u);
      goto LABEL_55;
    }

    v39 = v58 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v84 = *(v83 + 72);
    v85 = v177;
    sub_1002D56A8(v39 + v84 * v59, v177, type metadata accessor for HostedRoutingSession);
    v86 = v85->isa == v61 && v85[1].isa == v63;
    if (v86 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v59;
    sub_1002D5710(v177, type metadata accessor for HostedRoutingSession);
    if (v60 == v59)
    {
      goto LABEL_31;
    }
  }

  v88 = v157;
  sub_1002D5640(v177, v157, type metadata accessor for HostedRoutingSession);
  v89 = sub_100261164();
  __chkstk_darwin(v89);
  *(&v141 - 2) = v167;
  v90 = v155;
  sub_1002E35B4(sub_1002E78A8, v89, v155);

  if ((*(v162 + 48))(v90, 1, v154) == 1)
  {

    sub_1000038A4(v90, &qword_100523C18, &qword_100451AF0);
    v67 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v67 - 8) + 104))(v91, enum case for InternalRoutingError.itemNotFound(_:), v67);
    swift_willThrow();
    sub_1002D5710(v88, type metadata accessor for HostedRoutingSession);
    return v67;
  }

  result = sub_1002D5640(v90, v153, type metadata accessor for HostedRoutingItem);
  v92 = 0;
  while (2)
  {
    if (v92 < v58[2])
    {
      v177 = (v92 + 1);
      sub_1002D56A8(v39 + v92 * v84, v158, type metadata accessor for HostedRoutingSession);
      result = sub_10003AC60();
      v93 = result;
      v94 = 0;
      v95 = *(result + 16);
      while (v95 != v94)
      {
        v96 = v161;
        if (v94 >= *(v93 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        sub_1002D56A8(v93 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v94, v161, type metadata accessor for HostedRoutingItem);
        if (*v96 == v166 && v96[1] == v143)
        {
          sub_1002D5710(v96, type metadata accessor for HostedRoutingItem);
LABEL_49:

          v112 = sub_100028D40();
          v113 = v163;
          v114 = v151;
          v115 = v164;
          (*(v163 + 16))(v151, v112, v164);
          v116 = v145;
          sub_1002D56A8(v158, v145, type metadata accessor for HostedRoutingSession);
          v117 = v143;

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            LODWORD(v177) = v119;
            v121 = v120;
            v170[0] = swift_slowAlloc();
            *v121 = 136315650;
            v122 = _typeName(_:qualified:)();
            v124 = sub_10002C9C8(v122, v123, v170);

            *(v121 + 4) = v124;
            *(v121 + 12) = 2082;
            v125 = sub_10002C9C8(v166, v117, v170);

            *(v121 + 14) = v125;
            *(v121 + 22) = 2082;
            v126 = *v116;
            v127 = v116[1];

            sub_1002D5710(v116, type metadata accessor for HostedRoutingSession);
            v128 = sub_10002C9C8(v126, v127, v170);

            *(v121 + 24) = v128;
            _os_log_impl(&_mh_execute_header, v118, v177, "[%s] computeInteractionForItemAction - item: %{public}s, is picked in session: %{public}s -> .setActiveSession", v121, 0x20u);
            swift_arrayDestroy();

            (*(v113 + 8))(v151, v164);
          }

          else
          {

            sub_1002D5710(v116, type metadata accessor for HostedRoutingSession);
            (*(v113 + 8))(v114, v115);
          }

          v109 = v150;
          v111 = v153;
          sub_1002D56A8(v153, v152, type metadata accessor for HostedRoutingItem);
          v129 = v147;
          v130 = v146;
          v131 = v148;
          (*(v147 + 16))(v146, v167, v148);
          v132 = v158;
          v133 = v158[1];
          v175[0] = *v158;
          v175[1] = v133;
          v175[2] = 0;
          v175[3] = 0;
          v176 = 4;

          v134 = v171;
          sub_100272B38(v175, v171);
          v135 = *(sub_1001BC5A8(&qword_100523628, &unk_100457B90) + 48);
          RoutingItem.Action.kind.getter();
          (*(v129 + 8))(v130, v131);
          sub_1002D5710(v132, type metadata accessor for HostedRoutingSession);
          goto LABEL_53;
        }

        ++v94;
        v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v99 = v96;
        v100 = v98;
        result = sub_1002D5710(v99, type metadata accessor for HostedRoutingItem);
        if (v100)
        {
          goto LABEL_49;
        }
      }

      sub_1002D5710(v158, type metadata accessor for HostedRoutingSession);

      v92 = v177;
      if (v177 != v60)
      {
        continue;
      }

      v101 = sub_100028D40();
      v39 = v163;
      v63 = v144;
      v60 = v164;
      (*(v163 + 16))(v144, v101, v164);
      v58 = v143;

      v59 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v102))
      {
        v103 = swift_slowAlloc();
        v170[0] = swift_slowAlloc();
        *v103 = 136315394;
        v104 = _typeName(_:qualified:)();
        v106 = sub_10002C9C8(v104, v105, v170);

        *(v103 + 4) = v106;
        *(v103 + 12) = 2082;
        v107 = v166;
        *(v103 + 14) = sub_10002C9C8(v166, v58, v170);
        _os_log_impl(&_mh_execute_header, v59, v102, "[%s] computeInteractionForItemAction - item: %{public}s, not found picked in snapshot -> .setActiveItem", v103, 0x16u);
        swift_arrayDestroy();

        v108 = v58;
        (*(v39 + 8))(v144, v164);
        v109 = v150;
        v110 = v152;
        v111 = v153;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    break;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1002E0D6C(_OWORD *a1, uint64_t a2)
{
  v279 = a2;
  v3 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v3 - 8);
  v261 = &v249 - v4;
  v260 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v262 = &v249 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v269 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v258 = &v249 - v11;
  v12 = __chkstk_darwin(v10);
  v257 = &v249 - v13;
  v14 = __chkstk_darwin(v12);
  v253 = &v249 - v15;
  v16 = __chkstk_darwin(v14);
  v252 = &v249 - v17;
  v18 = __chkstk_darwin(v16);
  v254 = &v249 - v19;
  v20 = __chkstk_darwin(v18);
  v278 = &v249 - v21;
  __chkstk_darwin(v20);
  v256 = &v249 - v22;
  v282 = type metadata accessor for HostedRoutingItem(0);
  v283 = *(v282 - 8);
  v23 = __chkstk_darwin(v282);
  v281 = (&v249 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v271 = &v249 - v26;
  v27 = __chkstk_darwin(v25);
  v275 = &v249 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = (&v249 - v30);
  v32 = __chkstk_darwin(v29);
  v34 = (&v249 - v33);
  v35 = __chkstk_darwin(v32);
  v264 = &v249 - v36;
  __chkstk_darwin(v35);
  v266 = &v249 - v37;
  v38 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v39 = __chkstk_darwin(v38 - 8);
  v263 = &v249 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v268 = &v249 - v42;
  __chkstk_darwin(v41);
  v44 = &v249 - v43;
  v45 = type metadata accessor for HostedRoutingSession(0);
  v46 = *(v45 - 8);
  v47 = __chkstk_darwin(v45);
  v255 = (&v249 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __chkstk_darwin(v47);
  v250 = (&v249 - v50);
  v51 = __chkstk_darwin(v49);
  v249 = (&v249 - v52);
  v53 = __chkstk_darwin(v51);
  v251 = (&v249 - v54);
  v55 = __chkstk_darwin(v53);
  v272 = &v249 - v56;
  v57 = __chkstk_darwin(v55);
  v265 = &v249 - v58;
  v59 = __chkstk_darwin(v57);
  v267 = &v249 - v60;
  v61 = __chkstk_darwin(v59);
  v273 = (&v249 - v62);
  v63 = a1[2];
  v290 = a1[1];
  v291 = v63;
  v292 = *(a1 + 48);
  v64 = v292;
  v66 = *(&v290 + 1);
  v65 = v290;
  v270 = v61;
  v274 = v46;
  if ((v292 | 2) == 2)
  {
    v276 = v7;
    v277 = v6;
    v280 = a1;
    v67 = v291;
    v68 = v279;
    sub_10001D9AC(v279, v44, &qword_100523620, &unk_1004511D0);
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {
      v69 = v68;
      sub_1000038A4(v44, &qword_100523620, &unk_1004511D0);
    }

    else
    {
      v72 = v273;
      sub_1002D5640(v44, v273, type metadata accessor for HostedRoutingSession);
      if (*v72 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        result = sub_100261164();
        v74 = result;
        v75 = *(result + 16);
        if (v75)
        {
          v76 = 0;
          while (1)
          {
            if (v76 >= *(v74 + 16))
            {
              goto LABEL_108;
            }

            sub_1002D56A8(v74 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v76, v34, type metadata accessor for HostedRoutingItem);
            v77 = *v34 == v65 && v34[1] == v66;
            if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v76;
            result = sub_1002D5710(v34, type metadata accessor for HostedRoutingItem);
            if (v75 == v76)
            {
              goto LABEL_19;
            }
          }

          v78 = v264;
          sub_1002D5640(v34, v264, type metadata accessor for HostedRoutingItem);
          v79 = v266;
          sub_1002D5640(v78, v266, type metadata accessor for HostedRoutingItem);
          v70 = v278;
          if (*(v79 + *(v282 + 40)))
          {
            v80 = sub_100028D40();
            v81 = v276;
            v82 = v256;
            v83 = v277;
            (*(v276 + 16))(v256, v80, v277);
            v84 = v280;
            v289 = *v280;
            sub_10028BC98(&v289, &v284);
            sub_10026D080(&v290, &v284);
            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.default.getter();
            sub_1001E6204(&v289);
            sub_100238E4C(&v290);
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v288 = swift_slowAlloc();
              *v87 = 136315394;
              v88 = _typeName(_:qualified:)();
              v90 = sub_10002C9C8(v88, v89, &v288);

              *(v87 + 4) = v90;
              *(v87 + 12) = 2082;
              v91 = v84[1];
              v284 = *v84;
              v285 = v91;
              v286 = v84[2];
              v287 = *(v84 + 48);
              sub_1002856A4();
              v92 = dispatch thunk of CustomStringConvertible.description.getter();
              v94 = sub_10002C9C8(v92, v93, &v288);

              *(v87 + 14) = v94;
              _os_log_impl(&_mh_execute_header, v85, v86, "[%s] shouldPresentInterruptionDialog - interaction: %{public}s is pick of item playing in another session -> dialog", v87, 0x16u);
              swift_arrayDestroy();

              v72 = v273;
              (*(v81 + 8))(v82, v83);
              v95 = v266;
            }

            else
            {

              (*(v81 + 8))(v82, v83);
              v95 = v79;
            }

            sub_1002D5710(v95, type metadata accessor for HostedRoutingItem);
            v178 = v72;
            goto LABEL_88;
          }

          v69 = v68;
          sub_1002D5710(v79, type metadata accessor for HostedRoutingItem);
          sub_1002D5710(v72, type metadata accessor for HostedRoutingSession);
          a1 = v280;
          v7 = v276;
LABEL_26:
          v64 = v292;
          v66 = *(&v290 + 1);
          v65 = v290;
          v6 = v277;
          if (v292 <= 4u)
          {
            goto LABEL_27;
          }

LABEL_5:
          if (v64 == 5)
          {
            goto LABEL_29;
          }

          if (v64 == 6)
          {
            v71 = v65 + 32;
            v65 = *(v65 + 32);
            v66 = *(v71 + 8);
            goto LABEL_29;
          }

LABEL_34:
          v109 = sub_100028D40();
          v70 = v269;
          (*(v7 + 16))(v269, v109, v6);
          v289 = *a1;
          sub_10026D080(&v290, &v284);
          sub_10028BC98(&v289, &v284);
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          sub_1001E6204(&v289);
          sub_100238E4C(&v290);
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v288 = swift_slowAlloc();
            *v100 = 136315394;
            v110 = _typeName(_:qualified:)();
            v112 = sub_10002C9C8(v110, v111, &v288);

            *(v100 + 4) = v112;
            *(v100 + 12) = 2082;
            v113 = a1[1];
            v284 = *a1;
            v285 = v113;
            v286 = a1[2];
            v287 = *(a1 + 48);
            sub_1002856A4();
            v114 = dispatch thunk of CustomStringConvertible.description.getter();
            v116 = sub_10002C9C8(v114, v115, &v288);

            *(v100 + 14) = v116;
            v108 = "[%s] shouldPresentInterruptionDialog - interaction: %{public}s has no applicable dialog";
            goto LABEL_36;
          }

LABEL_37:

          (*(v7 + 8))(v70, v6);
          return 0;
        }

LABEL_19:
        v69 = v68;
      }

      else
      {
        v69 = v68;
      }

      sub_1002D5710(v72, type metadata accessor for HostedRoutingSession);
    }

    a1 = v280;
    v7 = v276;
    v70 = v278;
    goto LABEL_26;
  }

  v69 = v279;
  v70 = v278;
  if (v292 > 4u)
  {
    goto LABEL_5;
  }

LABEL_27:
  if (v64 && v64 != 2)
  {
    goto LABEL_34;
  }

LABEL_29:

  v96 = sub_100257FC4();
  if (v65 == *v96 && v66 == v96[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v97 = sub_100028D40();
    (*(v7 + 16))(v70, v97, v6);
    v289 = *a1;
    sub_10026D080(&v290, &v284);
    sub_10028BC98(&v289, &v284);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    sub_1001E6204(&v289);
    sub_100238E4C(&v290);
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      *v100 = 136315394;
      v101 = _typeName(_:qualified:)();
      v103 = sub_10002C9C8(v101, v102, &v288);

      *(v100 + 4) = v103;
      *(v100 + 12) = 2082;
      v104 = a1[1];
      v284 = *a1;
      v285 = v104;
      v286 = a1[2];
      v287 = *(a1 + 48);
      sub_1002856A4();
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = sub_10002C9C8(v105, v106, &v288);

      *(v100 + 14) = v107;
      v108 = "[%s] shouldPresentInterruptionDialog - interaction: %{public}s is handoff to local -> no dialog";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v98, v99, v108, v100, 0x16u);
      swift_arrayDestroy();

      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v279 = v65;
  v277 = v6;
  v276 = v7;
  v280 = a1;
  v117 = v69;
  v278 = sub_1002647C8();
  v118 = v268;
  sub_10001D9AC(v69, v268, &qword_100523620, &unk_1004511D0);
  v119 = v274;
  v120 = v270;
  v273 = *(v274 + 48);
  v121 = (v273)(v118, 1, v270);
  sub_1000038A4(v118, &qword_100523620, &unk_1004511D0);
  if (v121 == 1)
  {
    v122 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
    v123 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v122 = swift_allocObject();
    *(v122 + 1) = xmmword_10044EC70;
    v124 = v117;
    v125 = v263;
    sub_10001D9AC(v124, v263, &qword_100523620, &unk_1004511D0);
    result = (v273)(v125, 1, v120);
    if (result == 1)
    {
      goto LABEL_111;
    }

    sub_1002D5640(v125, v122 + v123, type metadata accessor for HostedRoutingSession);
  }

  v126 = v280;
  v127 = v276;
  *&v284 = v278;
  result = sub_1002E6D98(v122, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v128 = v284;
  v129 = v277;
  v269 = *(v284 + 16);
  if (!v269)
  {
LABEL_61:

    v141 = sub_100028D40();
    v142 = v258;
    (*(v127 + 16))(v258, v141, v129);
    v289 = *v126;
    sub_10026D080(&v290, &v284);
    sub_10028BC98(&v289, &v284);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    sub_1001E6204(&v289);
    sub_100238E4C(&v290);
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      *v145 = 136315394;
      v146 = _typeName(_:qualified:)();
      v148 = sub_10002C9C8(v146, v147, &v288);

      *(v145 + 4) = v148;
      *(v145 + 12) = 2082;
      v149 = v126[1];
      v284 = *v126;
      v285 = v149;
      v286 = v126[2];
      v287 = *(v126 + 48);
      sub_1002856A4();
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = sub_10002C9C8(v150, v151, &v288);

      *(v145 + 14) = v152;
      _os_log_impl(&_mh_execute_header, v143, v144, "[%s] shouldPresentInterruptionDialog - interaction: %{public}s references item not picked in any session -> no dialog", v145, 0x16u);
      swift_arrayDestroy();
    }

    (*(v127 + 8))(v142, v129);
    return 0;
  }

  v130 = 0;
  v131 = v274;
  v273 = (v284 + ((*(v131 + 80) + 32) & ~*(v131 + 80)));
  v132 = v272;
  v268 = v284;
  while (1)
  {
    if (v130 >= *(v128 + 16))
    {
      goto LABEL_110;
    }

    sub_1002D56A8(v273 + *(v131 + 72) * v130, v132, type metadata accessor for HostedRoutingSession);
    result = sub_100261164();
    v133 = result;
    v134 = *(result + 16);
    if (v134)
    {
      break;
    }

    v126 = v280;
LABEL_60:
    ++v130;
    result = sub_1002D5710(v132, type metadata accessor for HostedRoutingSession);
    if (v130 == v269)
    {
      goto LABEL_61;
    }
  }

  v135 = 0;
  v136 = *(v282 + 36);
  v278 = ((*(v283 + 80) + 32) & ~*(v283 + 80));
  v137 = &v278[result];
  while (1)
  {
    if (v135 >= *(v133 + 16))
    {
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v138 = *(v283 + 72);
    sub_1002D56A8(&v137[v138 * v135], v31, type metadata accessor for HostedRoutingItem);
    if (*(v31 + v136) != 1)
    {
      result = sub_1002D5710(v31, type metadata accessor for HostedRoutingItem);
      goto LABEL_49;
    }

    if (*v31 == v279 && v31[1] == v66)
    {
      break;
    }

    v140 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_1002D5710(v31, type metadata accessor for HostedRoutingItem);
    if (v140)
    {
      goto LABEL_65;
    }

LABEL_49:
    if (v134 == ++v135)
    {

      v127 = v276;
      v129 = v277;
      v126 = v280;
      v131 = v274;
      v132 = v272;
      v128 = v268;
      goto LABEL_60;
    }
  }

  sub_1002D5710(v31, type metadata accessor for HostedRoutingItem);
LABEL_65:

  v153 = v265;
  sub_1002D5640(v272, v265, type metadata accessor for HostedRoutingSession);
  v154 = v267;
  sub_1002D5640(v153, v267, type metadata accessor for HostedRoutingSession);
  if (v292 != 5)
  {

    v165 = v276;
    v166 = v277;
    v167 = v280;
    v168 = v270;
LABEL_93:
    v199 = v261;
    sub_10001D9AC(v154 + *(v168 + 28), v261, &qword_100523640, qword_100451520);
    if ((*(v259 + 48))(v199, 1, v260) == 1)
    {
      sub_1000038A4(v199, &qword_100523640, qword_100451520);
      v200 = sub_100028D40();
      v183 = v257;
      (*(v165 + 16))(v257, v200, v166);
      v289 = *v167;
      v184 = v255;
      sub_1002D56A8(v154, v255, type metadata accessor for HostedRoutingSession);
      sub_10026D080(&v290, &v284);
      sub_10028BC98(&v289, &v284);
      v185 = Logger.logObject.getter();
      v186 = v154;
      v201 = static os_log_type_t.default.getter();
      sub_1001E6204(&v289);
      sub_100238E4C(&v290);
      if (os_log_type_enabled(v185, v201))
      {
        v202 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *v202 = 136315650;
        v203 = _typeName(_:qualified:)();
        v205 = sub_10002C9C8(v203, v204, &v288);

        *(v202 + 4) = v205;
        *(v202 + 12) = 2082;
        v206 = v167[1];
        v284 = *v167;
        v285 = v206;
        v286 = v167[2];
        v287 = *(v167 + 48);
        sub_1002856A4();
        v207 = dispatch thunk of CustomStringConvertible.description.getter();
        v209 = sub_10002C9C8(v207, v208, &v288);

        *(v202 + 14) = v209;
        *(v202 + 22) = 2082;
        v210 = *v184;
        v211 = v184[1];

        sub_1002D5710(v184, type metadata accessor for HostedRoutingSession);
        v212 = sub_10002C9C8(v210, v211, &v288);

        *(v202 + 24) = v212;
        _os_log_impl(&_mh_execute_header, v185, v201, "[%s] shouldPresentInterruptionDialog - interaction: %{public}s references item picked in session: %{public}s, no now playing info -> no dialog", v202, 0x20u);
        swift_arrayDestroy();

        (*(v165 + 8))(v257, v277);
        goto LABEL_96;
      }

LABEL_101:

      sub_1002D5710(v184, type metadata accessor for HostedRoutingSession);
      (*(v165 + 8))(v183, v166);
      v213 = v186;
      goto LABEL_104;
    }

    sub_1002D5640(v199, v262, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v214 = sub_1000207E8();
    v215 = sub_100028D40();
    v216 = *(v165 + 16);
    if ((v214 & 1) == 0)
    {
      v233 = v253;
      v216(v253, v215, v166);
      v289 = *v167;
      v234 = v250;
      sub_1002D56A8(v154, v250, type metadata accessor for HostedRoutingSession);
      sub_10026D080(&v290, &v284);
      sub_10028BC98(&v289, &v284);
      v235 = Logger.logObject.getter();
      v236 = v154;
      v237 = static os_log_type_t.default.getter();
      sub_1001E6204(&v289);
      sub_100238E4C(&v290);
      if (os_log_type_enabled(v235, v237))
      {
        v238 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *v238 = 136315650;
        v239 = _typeName(_:qualified:)();
        v241 = sub_10002C9C8(v239, v240, &v288);

        *(v238 + 4) = v241;
        *(v238 + 12) = 2082;
        v242 = v167[1];
        v284 = *v167;
        v285 = v242;
        v286 = v167[2];
        v287 = *(v167 + 48);
        sub_1002856A4();
        v243 = dispatch thunk of CustomStringConvertible.description.getter();
        v245 = sub_10002C9C8(v243, v244, &v288);

        *(v238 + 14) = v245;
        *(v238 + 22) = 2082;
        v246 = *v234;
        v247 = v234[1];

        sub_1002D5710(v234, type metadata accessor for HostedRoutingSession);
        v248 = sub_10002C9C8(v246, v247, &v288);

        *(v238 + 24) = v248;
        _os_log_impl(&_mh_execute_header, v235, v237, "[%s] shouldPresentInterruptionDialog - interaction: %{public}s references item picked in session: %{public}s, session is not playing -> no dialog", v238, 0x20u);
        swift_arrayDestroy();

        (*(v165 + 8))(v253, v166);
        sub_1002D5710(v262, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        v213 = v267;
      }

      else
      {

        sub_1002D5710(v234, type metadata accessor for HostedRoutingSession);
        (*(v165 + 8))(v233, v166);
        sub_1002D5710(v262, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        v213 = v236;
      }

      goto LABEL_104;
    }

    v217 = v252;
    v216(v252, v215, v166);
    v289 = *v167;
    v218 = v249;
    sub_1002D56A8(v154, v249, type metadata accessor for HostedRoutingSession);
    sub_10026D080(&v290, &v284);
    sub_10028BC98(&v289, &v284);
    v219 = Logger.logObject.getter();
    v220 = v154;
    v221 = static os_log_type_t.default.getter();
    sub_1001E6204(&v289);
    sub_100238E4C(&v290);
    if (os_log_type_enabled(v219, v221))
    {
      v222 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      *v222 = 136315650;
      v223 = _typeName(_:qualified:)();
      v225 = sub_10002C9C8(v223, v224, &v288);

      *(v222 + 4) = v225;
      *(v222 + 12) = 2082;
      v226 = v167[1];
      v284 = *v167;
      v285 = v226;
      v286 = v167[2];
      v287 = *(v167 + 48);
      sub_1002856A4();
      v227 = dispatch thunk of CustomStringConvertible.description.getter();
      v229 = sub_10002C9C8(v227, v228, &v288);

      *(v222 + 14) = v229;
      *(v222 + 22) = 2082;
      v230 = *v218;
      v231 = v218[1];

      sub_1002D5710(v218, type metadata accessor for HostedRoutingSession);
      v232 = sub_10002C9C8(v230, v231, &v288);

      *(v222 + 24) = v232;
      _os_log_impl(&_mh_execute_header, v219, v221, "[%s] shouldPresentInterruptionDialog - interaction: %{public}s references item picked in session: %{public}s, session is playing -> dialog", v222, 0x20u);
      swift_arrayDestroy();

      (*(v165 + 8))(v252, v277);
    }

    else
    {

      sub_1002D5710(v218, type metadata accessor for HostedRoutingSession);
      (*(v165 + 8))(v217, v166);
    }

    sub_1002D5710(v262, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v178 = v220;
LABEL_88:
    sub_1002D5710(v178, type metadata accessor for HostedRoutingSession);
    return 1;
  }

  result = sub_100261164();
  v155 = result;
  v156 = *(result + 16);
  v157 = _swiftEmptyArrayStorage;
  if (!v156)
  {
LABEL_78:

    v169 = v157[2];
    if (v169)
    {
      *&v284 = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v169, 0);
      v170 = v284;
      v171 = &v278[v157];
      do
      {
        v172 = v281;
        sub_1002D56A8(v171, v281, type metadata accessor for HostedRoutingItem);
        v174 = *v172;
        v173 = v172[1];

        sub_1002D5710(v172, type metadata accessor for HostedRoutingItem);
        *&v284 = v170;
        v176 = v170[2];
        v175 = v170[3];
        if (v176 >= v175 >> 1)
        {
          sub_1000089FC((v175 > 1), v176 + 1, 1);
          v170 = v284;
        }

        v170[2] = v176 + 1;
        v177 = &v170[2 * v176];
        v177[4] = v174;
        v177[5] = v173;
        v171 += v138;
        --v169;
      }

      while (v169);
    }

    else
    {

      v170 = _swiftEmptyArrayStorage;
    }

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EC70;
    *(inited + 32) = v279;
    v180 = inited + 32;
    *(inited + 40) = v66;
    v181 = sub_100034D74(v170, inited);

    swift_setDeallocating();
    sub_1001E6204(v180);
    v165 = v276;
    v166 = v277;
    v167 = v280;
    v154 = v267;
    v168 = v270;
    if (v181)
    {
      v182 = sub_100028D40();
      v183 = v254;
      (*(v165 + 16))(v254, v182, v166);
      v289 = *v167;
      v184 = v251;
      sub_1002D56A8(v154, v251, type metadata accessor for HostedRoutingSession);
      sub_10026D080(&v290, &v284);
      sub_10028BC98(&v289, &v284);
      v185 = Logger.logObject.getter();
      v186 = v154;
      v187 = static os_log_type_t.default.getter();
      sub_1001E6204(&v289);
      sub_100238E4C(&v290);
      if (os_log_type_enabled(v185, v187))
      {
        v188 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *v188 = 136315650;
        v189 = _typeName(_:qualified:)();
        v191 = sub_10002C9C8(v189, v190, &v288);

        *(v188 + 4) = v191;
        *(v188 + 12) = 2082;
        v192 = v167[1];
        v284 = *v167;
        v285 = v192;
        v286 = v167[2];
        v287 = *(v167 + 48);
        sub_1002856A4();
        v193 = dispatch thunk of CustomStringConvertible.description.getter();
        v195 = sub_10002C9C8(v193, v194, &v288);

        *(v188 + 14) = v195;
        *(v188 + 22) = 2082;
        v196 = *v184;
        v197 = v184[1];

        sub_1002D5710(v184, type metadata accessor for HostedRoutingSession);
        v198 = sub_10002C9C8(v196, v197, &v288);

        *(v188 + 24) = v198;
        _os_log_impl(&_mh_execute_header, v185, v187, "[%s] shouldPresentInterruptionDialog - interaction: %{public}s references item picked in session: %{public}s, sole picked item -> no dialog", v188, 0x20u);
        swift_arrayDestroy();

        (*(v165 + 8))(v254, v277);
LABEL_96:
        v213 = v186;
LABEL_104:
        sub_1002D5710(v213, type metadata accessor for HostedRoutingSession);
        return 0;
      }

      goto LABEL_101;
    }

    goto LABEL_93;
  }

  v158 = 0;
  v159 = &v278[result];
  v160 = v271;
  v161 = v275;
  while (v158 < *(v155 + 16))
  {
    sub_1002D56A8(v159, v161, type metadata accessor for HostedRoutingItem);
    if (*(v161 + *(v282 + 36)) == 1)
    {
      sub_1002D5640(v161, v160, type metadata accessor for HostedRoutingItem);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v284 = v157;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10002A42C(0, v157[2] + 1, 1);
        v160 = v271;
        v157 = v284;
      }

      v164 = v157[2];
      v163 = v157[3];
      if (v164 >= v163 >> 1)
      {
        sub_10002A42C((v163 > 1), v164 + 1, 1);
        v160 = v271;
        v157 = v284;
      }

      v157[2] = v164 + 1;
      result = sub_1002D5640(v160, &v278[v157 + v164 * v138], type metadata accessor for HostedRoutingItem);
      v161 = v275;
    }

    else
    {
      result = sub_1002D5710(v161, type metadata accessor for HostedRoutingItem);
    }

    ++v158;
    v159 += v138;
    if (v156 == v158)
    {
      goto LABEL_78;
    }
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_1002E3040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for HostedRoutingSession(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  if (v13)
  {
    v19[1] = v4;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_1002D56A8(v14, v12, type metadata accessor for HostedRoutingSession);
      v16 = *v12 == a2 && v12[1] == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      sub_1002D5710(v12, type metadata accessor for HostedRoutingSession);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        goto LABEL_12;
      }
    }

    sub_1002D5640(v12, a4, type metadata accessor for HostedRoutingSession);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_12:
  (*(v10 + 56))(a4, v17, 1, v9);
}

uint64_t sub_1002E31F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for HostedRoutingSession(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v20 = a4;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_1002D56A8(v14, v12, type metadata accessor for HostedRoutingSession);
      v16 = sub_1002E6A28(v12, a2, a3);
      if (v4)
      {
        sub_1002D5710(v12, type metadata accessor for HostedRoutingSession);
      }

      if (v16)
      {
        break;
      }

      sub_1002D5710(v12, type metadata accessor for HostedRoutingSession);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a4 = v20;
        goto LABEL_10;
      }
    }

    a4 = v20;
    sub_1002D5640(v12, v20, type metadata accessor for HostedRoutingSession);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_10:
  (*(v10 + 56))(a4, v17, 1, v9);
}

uint64_t sub_1002E33C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for HostedRoutingItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v21 = v11;
    v22 = a4;
    v23 = v4;
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    while (1)
    {
      sub_1002D56A8(v15, v13, type metadata accessor for HostedRoutingItem);
      if (sub_1002587B8() == a2 && v17 == a3)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_10;
      }

      sub_1002D5710(v13, type metadata accessor for HostedRoutingItem);
      v15 += v16;
      if (!--v14)
      {
        v19 = 1;
        a4 = v22;
        goto LABEL_11;
      }
    }

LABEL_10:
    a4 = v22;
    sub_1002D5640(v13, v22, type metadata accessor for HostedRoutingItem);
    v19 = 0;
LABEL_11:
    v11 = v21;
  }

  else
  {
    v19 = 1;
  }

  (*(v10 + 56))(a4, v19, 1, v11);
}

uint64_t sub_1002E35B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1002D56A8(v12, v10, type metadata accessor for HostedRoutingItem);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1002D5710(v10, type metadata accessor for HostedRoutingItem);
      }

      if (v14)
      {
        break;
      }

      sub_1002D5710(v10, type metadata accessor for HostedRoutingItem);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1002D5640(v10, v18, type metadata accessor for HostedRoutingItem);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1002E37AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v345 = a3;
  v342 = a2;
  v338 = type metadata accessor for HostedRoutingItem(0);
  v346 = *(v338 - 8);
  v4 = __chkstk_darwin(v338);
  v343 = (&v320 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v328 = &v320 - v7;
  v8 = __chkstk_darwin(v6);
  v324 = &v320 - v9;
  v10 = __chkstk_darwin(v8);
  v330 = (&v320 - v11);
  v12 = __chkstk_darwin(v10);
  v327 = &v320 - v13;
  v14 = __chkstk_darwin(v12);
  v323 = &v320 - v15;
  v16 = __chkstk_darwin(v14);
  v326 = &v320 - v17;
  v18 = __chkstk_darwin(v16);
  v339 = &v320 - v19;
  v20 = __chkstk_darwin(v18);
  v344 = (&v320 - v21);
  __chkstk_darwin(v20);
  v325 = &v320 - v22;
  v341 = type metadata accessor for HostedRoutingSession(0);
  v340 = *(v341 - 8);
  v23 = __chkstk_darwin(v341);
  v25 = (&v320 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v23);
  v337 = (&v320 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = (&v320 - v29);
  v31 = __chkstk_darwin(v28);
  v329 = &v320 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = (&v320 - v34);
  __chkstk_darwin(v33);
  v335 = (&v320 - v36);
  v37 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v38 = __chkstk_darwin(v37 - 8);
  v333 = (&v320 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __chkstk_darwin(v38);
  v42 = &v320 - v41;
  v43 = __chkstk_darwin(v40);
  v332 = &v320 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v320 - v46;
  v48 = __chkstk_darwin(v45);
  v331 = &v320 - v49;
  __chkstk_darwin(v48);
  v51 = &v320 - v50;
  v52 = type metadata accessor for Logger();
  v53 = *(v52 - 8);
  v54 = __chkstk_darwin(v52);
  v55 = __chkstk_darwin(v54);
  v56 = __chkstk_darwin(v55);
  v57 = __chkstk_darwin(v56);
  v58 = __chkstk_darwin(v57);
  v59 = __chkstk_darwin(v58);
  v60 = __chkstk_darwin(v59);
  v61 = __chkstk_darwin(v60);
  v62 = __chkstk_darwin(v61);
  __chkstk_darwin(v62);
  v64 = __chkstk_darwin(&v320 - v63);
  v75 = &v320 - v74;
  if ((*(v345 + 17) & 1) == 0)
  {
    v83 = sub_100028D40();
    (*(v53 + 16))(v75, v83, v52);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = v53;
    v87 = v52;
    if (os_log_type_enabled(v84, v85))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v347 = v89;
      *v88 = 136315138;
      v90 = _typeName(_:qualified:)();
      v92 = sub_10002C9C8(v90, v91, &v347);

      *(v88 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "[%s] shouldPresentGroupSessionDeactivationDialog - system has no hosted session with remote participants -> no dialog", v88, 0xCu);
      sub_100026A44(v89);
    }

    v93 = *(v86 + 8);
    v94 = v75;
    goto LABEL_10;
  }

  v334 = v52;
  v322 = v53;
  v76 = *(a1 + 32);
  v353[0] = *(a1 + 16);
  v353[1] = v76;
  v321 = a1;
  v354 = *(a1 + 48);
  v345 = *(&v353[0] + 1);
  v336 = *&v353[0];
  v77 = v76;
  if (v354 == 2)
  {
    v343 = v68;
    v335 = v67;
    v337 = v66;
    v102 = v342;
    v344 = sub_1002647C8();
    sub_10001D9AC(v102, v47, &qword_100523620, &unk_1004511D0);
    v103 = v340;
    v339 = *(v340 + 48);
    v104 = (v339)(v47, 1, v341);
    sub_1000038A4(v47, &qword_100523620, &unk_1004511D0);
    if (v104 == 1)
    {
      v105 = _swiftEmptyArrayStorage;
      v106 = v322;
      v107 = v334;
      v108 = v336;
      v109 = v103;
    }

    else
    {
      sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
      v133 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v105 = swift_allocObject();
      *(v105 + 1) = xmmword_10044EC70;
      v134 = v102;
      v135 = v332;
      sub_10001D9AC(v134, v332, &qword_100523620, &unk_1004511D0);
      result = (v339)(v135, 1, v341);
      if (result == 1)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v109 = v103;
      sub_1002D5640(v135, v105 + v133, type metadata accessor for HostedRoutingSession);
      v106 = v322;
      v107 = v334;
      v108 = v336;
    }

    *&v347 = v344;
    result = sub_1002E6D98(v105, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
    v136 = v347;
    v137 = *(v347 + 16);
    if (v137)
    {
      v138 = 0;
      while (1)
      {
        if (v138 >= *(v136 + 16))
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        sub_1002D56A8(v136 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v138, v30, type metadata accessor for HostedRoutingSession);
        v139 = *v30 == v77 && v30[1] == *(&v77 + 1);
        if (v139 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v138;
        result = sub_1002D5710(v30, type metadata accessor for HostedRoutingSession);
        if (v137 == v138)
        {
          goto LABEL_43;
        }
      }

      v170 = v329;
      sub_1002D5640(v30, v329, type metadata accessor for HostedRoutingSession);
      result = sub_100261164();
      v171 = result;
      v172 = *(result + 16);
      v140 = v321;
      v173 = v345;
      v174 = v327;
      if (!v172)
      {
LABEL_78:
        sub_1002D5710(v170, type metadata accessor for HostedRoutingSession);
        goto LABEL_79;
      }

      v175 = 0;
      while (v175 < *(v171 + 16))
      {
        sub_1002D56A8(v171 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v175, v174, type metadata accessor for HostedRoutingItem);
        v176 = *v174 == v108 && v174[1] == v173;
        if (v176 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v238 = v323;
          sub_1002D5640(v174, v323, type metadata accessor for HostedRoutingItem);
          v239 = v238;
          v240 = v326;
          sub_1002D5640(v239, v326, type metadata accessor for HostedRoutingItem);
          v241 = sub_1002562E4(*(v240 + *(v338 + 64)), *(v240 + *(v338 + 64) + 8), *(v240 + *(v338 + 64) + 16));
          v242 = sub_100028D40();
          v243 = *(v106 + 16);
          if (!v241)
          {
            v309 = v335;
            v243(v335, v242, v107);
            v352 = *v140;
            sub_10026D080(v353, &v347);
            sub_10028BC98(&v352, &v347);
            v310 = Logger.logObject.getter();
            v311 = static os_log_type_t.default.getter();
            sub_1001E6204(&v352);
            sub_100238E4C(v353);
            if (os_log_type_enabled(v310, v311))
            {
              v312 = swift_slowAlloc();
              v346 = swift_slowAlloc();
              v351 = v346;
              *v312 = 136315394;
              v313 = _typeName(_:qualified:)();
              v315 = sub_10002C9C8(v313, v314, &v351);

              *(v312 + 4) = v315;
              *(v312 + 12) = 2082;
              v316 = v140[1];
              v347 = *v140;
              v348 = v316;
              v349 = v140[2];
              v350 = *(v140 + 48);
              sub_1002856A4();
              v317 = dispatch thunk of CustomStringConvertible.description.getter();
              v319 = sub_10002C9C8(v317, v318, &v351);

              *(v312 + 14) = v319;
              _os_log_impl(&_mh_execute_header, v310, v311, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s result does not support hosting session -> dialog", v312, 0x16u);
              swift_arrayDestroy();
            }

            (*(v106 + 8))(v309, v107);
            sub_1002D5710(v170, type metadata accessor for HostedRoutingSession);
            v236 = type metadata accessor for HostedRoutingItem;
            v237 = v353;
LABEL_132:
            sub_1002D5710(*(v237 - 32), v236);
            return 1;
          }

          v244 = v337;
          v243(v337, v242, v107);
          v352 = *v140;
          sub_10026D080(v353, &v347);
          sub_10028BC98(&v352, &v347);
          v245 = Logger.logObject.getter();
          v246 = static os_log_type_t.default.getter();
          sub_1001E6204(&v352);
          sub_100238E4C(v353);
          if (os_log_type_enabled(v245, v246))
          {
            v247 = swift_slowAlloc();
            v346 = swift_slowAlloc();
            v351 = v346;
            *v247 = 136315394;
            v248 = _typeName(_:qualified:)();
            v250 = sub_10002C9C8(v248, v249, &v351);

            *(v247 + 4) = v250;
            *(v247 + 12) = 2082;
            v251 = v140[1];
            v347 = *v140;
            v348 = v251;
            v349 = v140[2];
            v350 = *(v140 + 48);
            sub_1002856A4();
            v252 = dispatch thunk of CustomStringConvertible.description.getter();
            v254 = sub_10002C9C8(v252, v253, &v351);

            *(v247 + 14) = v254;
            _os_log_impl(&_mh_execute_header, v245, v246, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s result supports hosting session -> no dialog", v247, 0x16u);
            swift_arrayDestroy();
          }

          (*(v106 + 8))(v244, v107);
          sub_1002D5710(v170, type metadata accessor for HostedRoutingSession);
          v255 = type metadata accessor for HostedRoutingItem;
          v256 = v353;
LABEL_129:
          sub_1002D5710(*(v256 - 32), v255);
          return 0;
        }

        ++v175;
        result = sub_1002D5710(v174, type metadata accessor for HostedRoutingItem);
        if (v172 == v175)
        {
          goto LABEL_78;
        }
      }

      goto LABEL_137;
    }

LABEL_43:
    v140 = v321;
LABEL_79:

    v177 = sub_100028D40();
    v178 = v343;
    (*(v106 + 16))(v343, v177, v107);
    v352 = *v140;
    sub_10026D080(v353, &v347);
    sub_10028BC98(&v352, &v347);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.error.getter();
    sub_1001E6204(&v352);
    sub_100238E4C(v353);
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      *v181 = 136315394;
      v182 = _typeName(_:qualified:)();
      v184 = sub_10002C9C8(v182, v183, &v351);

      *(v181 + 4) = v184;
      *(v181 + 12) = 2082;
      v185 = v140[1];
      v347 = *v140;
      v348 = v185;
      v349 = v140[2];
      v350 = *(v140 + 48);
      sub_1002856A4();
      v186 = dispatch thunk of CustomStringConvertible.description.getter();
      v188 = sub_10002C9C8(v186, v187, &v351);

      *(v181 + 14) = v188;
      _os_log_impl(&_mh_execute_header, v179, v180, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s could not be matched to snapshot -> no dialog", v181, 0x16u);
      swift_arrayDestroy();
    }

    (*(v106 + 8))(v178, v107);
    return 0;
  }

  if (v354 != 1)
  {
    v78 = v342;
    if (!v354)
    {
      v337 = v69;
      v330 = v64;
      v332 = v73;
      v343 = sub_1002647C8();
      sub_10001D9AC(v78, v51, &qword_100523620, &unk_1004511D0);
      v79 = v340;
      v80 = v341;
      v333 = *(v340 + 48);
      v81 = v333(v51, 1, v341);
      sub_1000038A4(v51, &qword_100523620, &unk_1004511D0);
      if (v81 == 1)
      {
        v82 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
        v141 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v82 = swift_allocObject();
        *(v82 + 1) = xmmword_10044EC70;
        v142 = v331;
        sub_10001D9AC(v342, v331, &qword_100523620, &unk_1004511D0);
        result = v333(v142, 1, v80);
        if (result == 1)
        {
LABEL_143:
          __break(1u);
          return result;
        }

        sub_1002D5640(v142, v82 + v141, type metadata accessor for HostedRoutingSession);
      }

      v143 = v334;
      *&v347 = v343;
      result = sub_1002E6D98(v82, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
      v144 = v347;
      v145 = *(v347 + 16);
      if (v145)
      {
        v146 = 0;
        v147 = v340;
        while (v146 < *(v144 + 16))
        {
          sub_1002D56A8(v144 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v146, v35, type metadata accessor for HostedRoutingSession);
          v148 = *v35 == v77 && v35[1] == *(&v77 + 1);
          if (v148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v189 = v335;
            sub_1002D5640(v35, v335, type metadata accessor for HostedRoutingSession);
            result = sub_100261164();
            v190 = result;
            v191 = *(result + 16);
            v149 = v321;
            if (!v191)
            {
LABEL_91:
              sub_1002D5710(v189, type metadata accessor for HostedRoutingSession);
              goto LABEL_92;
            }

            v192 = 0;
            v193 = v344;
            while (v192 < *(v190 + 16))
            {
              v194 = (*(v346 + 80) + 32) & ~*(v346 + 80);
              v195 = *(v346 + 72);
              sub_1002D56A8(v190 + v194 + v195 * v192, v193, type metadata accessor for HostedRoutingItem);
              v196 = *v193 == v336 && v193[1] == v345;
              if (v196 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v257 = v325;
                sub_1002D5640(v344, v325, type metadata accessor for HostedRoutingItem);
                v258 = sub_10003AC60();
                sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
                v259 = swift_allocObject();
                *(v259 + 16) = xmmword_10044EC70;
                sub_1002D56A8(v257, v259 + v194, type metadata accessor for HostedRoutingItem);
                *&v347 = v258;
                sub_1002E6D98(v259, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
                v260 = v347;
                result = v347 + v194;
                v261 = -*(v347 + 16);
                v262 = -1;
                v263 = v338;
                v264 = v339;
                while (v261 + v262 != -1)
                {
                  if (++v262 >= *(v260 + 16))
                  {
                    goto LABEL_140;
                  }

                  v265 = result + v195;
                  sub_1002D56A8(result, v264, type metadata accessor for HostedRoutingItem);
                  v266 = sub_1002562E4(*(v264 + *(v263 + 64)), *(v264 + *(v263 + 64) + 8), *(v264 + *(v263 + 64) + 16));
                  sub_1002D5710(v264, type metadata accessor for HostedRoutingItem);
                  result = v265;
                  if (!v266)
                  {

                    v267 = sub_100028D40();
                    v268 = v322;
                    v269 = v330;
                    (*(v322 + 16))(v330, v267, v334);
                    v352 = *v149;
                    sub_10028BC98(&v352, &v347);
                    sub_10026D080(v353, &v347);
                    v270 = Logger.logObject.getter();
                    v271 = static os_log_type_t.default.getter();
                    sub_1001E6204(&v352);
                    sub_100238E4C(v353);
                    if (os_log_type_enabled(v270, v271))
                    {
                      v272 = v268;
                      v273 = swift_slowAlloc();
                      v351 = swift_slowAlloc();
                      *v273 = 136315394;
                      v274 = _typeName(_:qualified:)();
                      v276 = sub_10002C9C8(v274, v275, &v351);

                      *(v273 + 4) = v276;
                      *(v273 + 12) = 2082;
                      v277 = v149[1];
                      v347 = *v149;
                      v348 = v277;
                      v349 = v149[2];
                      v350 = *(v149 + 48);
                      sub_1002856A4();
                      v278 = dispatch thunk of CustomStringConvertible.description.getter();
                      v280 = sub_10002C9C8(v278, v279, &v351);

                      *(v273 + 14) = v280;
                      _os_log_impl(&_mh_execute_header, v270, v271, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s result does not support hosting session -> dialog", v273, 0x16u);
                      swift_arrayDestroy();

                      (*(v272 + 8))(v269, v334);
                    }

                    else
                    {

                      (*(v268 + 8))(v269, v334);
                    }

                    sub_1002D5710(v325, type metadata accessor for HostedRoutingItem);
                    v236 = type metadata accessor for HostedRoutingSession;
                    v237 = &v355;
                    goto LABEL_132;
                  }
                }

                v295 = sub_100028D40();
                v296 = v322;
                v297 = v332;
                (*(v322 + 16))(v332, v295, v334);
                v352 = *v149;
                sub_10026D080(v353, &v347);
                sub_10028BC98(&v352, &v347);
                v298 = Logger.logObject.getter();
                v299 = static os_log_type_t.default.getter();
                sub_1001E6204(&v352);
                sub_100238E4C(v353);
                if (os_log_type_enabled(v298, v299))
                {
                  v300 = v296;
                  v301 = swift_slowAlloc();
                  v351 = swift_slowAlloc();
                  *v301 = 136315394;
                  v302 = _typeName(_:qualified:)();
                  v304 = sub_10002C9C8(v302, v303, &v351);

                  *(v301 + 4) = v304;
                  *(v301 + 12) = 2082;
                  v305 = v149[1];
                  v347 = *v149;
                  v348 = v305;
                  v349 = v149[2];
                  v350 = *(v149 + 48);
                  sub_1002856A4();
                  v306 = dispatch thunk of CustomStringConvertible.description.getter();
                  v308 = sub_10002C9C8(v306, v307, &v351);

                  *(v301 + 14) = v308;
                  _os_log_impl(&_mh_execute_header, v298, v299, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s result supports hosting session -> no dialog", v301, 0x16u);
                  swift_arrayDestroy();

                  (*(v300 + 8))(v297, v334);
                }

                else
                {

                  (*(v296 + 8))(v297, v334);
                }

                sub_1002D5710(v325, type metadata accessor for HostedRoutingItem);
                v255 = type metadata accessor for HostedRoutingSession;
                v256 = &v355;
                goto LABEL_129;
              }

              ++v192;
              result = sub_1002D5710(v344, type metadata accessor for HostedRoutingItem);
              if (v191 == v192)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_138;
          }

          ++v146;
          result = sub_1002D5710(v35, type metadata accessor for HostedRoutingSession);
          if (v145 == v146)
          {
            goto LABEL_55;
          }
        }

LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

LABEL_55:
      v149 = v321;
LABEL_92:

      v197 = sub_100028D40();
      v198 = v322;
      v199 = v337;
      (*(v322 + 16))(v337, v197, v143);
      v352 = *v149;
      sub_10026D080(v353, &v347);
      sub_10028BC98(&v352, &v347);
      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.error.getter();
      sub_1001E6204(&v352);
      sub_100238E4C(v353);
      if (os_log_type_enabled(v200, v201))
      {
        v202 = v198;
        v203 = swift_slowAlloc();
        v351 = swift_slowAlloc();
        *v203 = 136315394;
        v204 = _typeName(_:qualified:)();
        v206 = sub_10002C9C8(v204, v205, &v351);

        *(v203 + 4) = v206;
        *(v203 + 12) = 2082;
        v207 = v149[1];
        v347 = *v149;
        v348 = v207;
        v349 = v149[2];
        v350 = *(v149 + 48);
        sub_1002856A4();
        v208 = dispatch thunk of CustomStringConvertible.description.getter();
        v210 = sub_10002C9C8(v208, v209, &v351);

        *(v203 + 14) = v210;
        _os_log_impl(&_mh_execute_header, v200, v201, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s could not be matched to snapshot -> no dialog", v203, 0x16u);
        swift_arrayDestroy();

        (*(v202 + 8))(v199, v143);
      }

      else
      {

        (*(v198 + 8))(v199, v143);
      }

      return 0;
    }

    v110 = v70;
    v111 = sub_100028D40();
    v112 = v322;
    v87 = v334;
    (*(v322 + 16))(v110, v111, v334);
    v113 = v321;
    v352 = *v321;
    sub_10026D080(v353, &v347);
    sub_10028BC98(&v352, &v347);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    sub_1001E6204(&v352);
    sub_100238E4C(v353);
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      *v116 = 136315394;
      v117 = _typeName(_:qualified:)();
      v119 = sub_10002C9C8(v117, v118, &v351);

      *(v116 + 4) = v119;
      *(v116 + 12) = 2082;
      v120 = v113[1];
      v347 = *v113;
      v348 = v120;
      v349 = v113[2];
      v350 = *(v113 + 48);
      sub_1002856A4();
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = sub_10002C9C8(v121, v122, &v351);

      *(v116 + 14) = v123;
      _os_log_impl(&_mh_execute_header, v114, v115, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s has no applicable dialog", v116, 0x16u);
      swift_arrayDestroy();
    }

    v93 = *(v112 + 8);
    v94 = v110;
LABEL_10:
    v93(v94, v87);
    return 0;
  }

  v339 = v65;
  v331 = v72;
  v332 = v71;
  v96 = v342;
  v344 = sub_1002647C8();
  sub_10001D9AC(v96, v42, &qword_100523620, &unk_1004511D0);
  v97 = v340;
  v335 = *(v340 + 48);
  v98 = (v335)(v42, 1, v341);
  sub_1000038A4(v42, &qword_100523620, &unk_1004511D0);
  if (v98 == 1)
  {
    v99 = _swiftEmptyArrayStorage;
    v100 = v336;
    v101 = v97;
  }

  else
  {
    sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
    v124 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v99 = swift_allocObject();
    *(v99 + 1) = xmmword_10044EC70;
    v125 = v96;
    v126 = v333;
    sub_10001D9AC(v125, v333, &qword_100523620, &unk_1004511D0);
    result = (v335)(v126, 1, v341);
    if (result == 1)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v101 = v97;
    sub_1002D5640(v126, v99 + v124, type metadata accessor for HostedRoutingSession);
    v100 = v336;
  }

  *&v347 = v344;
  result = sub_1002E6D98(v99, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v127 = v347;
  v128 = *(v347 + 16);
  if (v128)
  {
    v129 = 0;
    while (1)
    {
      if (v129 >= *(v127 + 16))
      {
        __break(1u);
        goto LABEL_134;
      }

      sub_1002D56A8(v127 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v129, v25, type metadata accessor for HostedRoutingSession);
      v130 = *v25 == v77 && v25[1] == *(&v77 + 1);
      if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v129;
      result = sub_1002D5710(v25, type metadata accessor for HostedRoutingSession);
      if (v128 == v129)
      {
        goto LABEL_31;
      }
    }

    sub_1002D5640(v25, v337, type metadata accessor for HostedRoutingSession);
    result = sub_100261164();
    v150 = result;
    v151 = *(result + 16);
    v131 = v322;
    v132 = v334;
    v152 = v328;
    if (!v151)
    {
LABEL_65:
      sub_1002D5710(v337, type metadata accessor for HostedRoutingSession);
      goto LABEL_66;
    }

    v153 = 0;
    while (v153 < *(v150 + 16))
    {
      v154 = (*(v346 + 80) + 32) & ~*(v346 + 80);
      v155 = *(v346 + 72);
      sub_1002D56A8(v150 + v154 + v155 * v153, v152, type metadata accessor for HostedRoutingItem);
      v156 = *v152 == v100 && v152[1] == v345;
      if (v156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v211 = v324;
        sub_1002D5640(v152, v324, type metadata accessor for HostedRoutingItem);
        sub_1002D5640(v211, v330, type metadata accessor for HostedRoutingItem);
        result = sub_10003AC60();
        v212 = result;
        v213 = *(result + 16);
        if (!v213)
        {
LABEL_119:

          v281 = sub_100028D40();
          v282 = v332;
          v283 = v334;
          (*(v131 + 16))(v332, v281, v334);
          v284 = v321;
          v352 = *v321;
          sub_10026D080(v353, &v347);
          sub_10028BC98(&v352, &v347);
          v285 = Logger.logObject.getter();
          v286 = static os_log_type_t.default.getter();
          sub_1001E6204(&v352);
          sub_100238E4C(v353);
          if (os_log_type_enabled(v285, v286))
          {
            v287 = swift_slowAlloc();
            v351 = swift_slowAlloc();
            *v287 = 136315394;
            v288 = _typeName(_:qualified:)();
            v290 = sub_10002C9C8(v288, v289, &v351);

            *(v287 + 4) = v290;
            *(v287 + 12) = 2082;
            v291 = v284[1];
            v347 = *v284;
            v348 = v291;
            v349 = v284[2];
            v350 = *(v284 + 48);
            sub_1002856A4();
            v292 = dispatch thunk of CustomStringConvertible.description.getter();
            v294 = sub_10002C9C8(v292, v293, &v351);

            *(v287 + 14) = v294;
            _os_log_impl(&_mh_execute_header, v285, v286, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s result supports hosting session -> no dialog", v287, 0x16u);
            swift_arrayDestroy();
          }

          (*(v131 + 8))(v282, v283);
          sub_1002D5710(v337, type metadata accessor for HostedRoutingSession);
          v255 = type metadata accessor for HostedRoutingItem;
          v256 = &v354;
          goto LABEL_129;
        }

        v214 = 0;
        v215 = *v330;
        v216 = v330[1];
        v217 = result + v154;
        v218 = v343;
        while (v214 < *(v212 + 16))
        {
          v219 = v343;
          sub_1002D56A8(v217, v343, type metadata accessor for HostedRoutingItem);
          v220 = *v219 == v215 && v219[1] == v216;
          if (v220 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            result = sub_1002D5710(v343, type metadata accessor for HostedRoutingItem);
          }

          else
          {
            v221 = sub_1002562E4(*(v218 + *(v338 + 64)), *(v218 + *(v338 + 64) + 8), *(v218 + *(v338 + 64) + 16));
            result = sub_1002D5710(v218, type metadata accessor for HostedRoutingItem);
            if (!v221)
            {

              v222 = sub_100028D40();
              v223 = v331;
              v224 = v334;
              (*(v131 + 16))(v331, v222, v334);
              v225 = v321;
              v352 = *v321;
              sub_10026D080(v353, &v347);
              sub_10028BC98(&v352, &v347);
              v226 = Logger.logObject.getter();
              v227 = static os_log_type_t.default.getter();
              sub_1001E6204(&v352);
              sub_100238E4C(v353);
              if (os_log_type_enabled(v226, v227))
              {
                v228 = swift_slowAlloc();
                v351 = swift_slowAlloc();
                *v228 = 136315394;
                v229 = _typeName(_:qualified:)();
                v231 = sub_10002C9C8(v229, v230, &v351);

                *(v228 + 4) = v231;
                *(v228 + 12) = 2082;
                v232 = v225[1];
                v347 = *v225;
                v348 = v232;
                v349 = v225[2];
                v350 = *(v225 + 48);
                sub_1002856A4();
                v233 = dispatch thunk of CustomStringConvertible.description.getter();
                v235 = sub_10002C9C8(v233, v234, &v351);

                *(v228 + 14) = v235;
                _os_log_impl(&_mh_execute_header, v226, v227, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s result does not support hosting session -> dialog", v228, 0x16u);
                swift_arrayDestroy();
              }

              (*(v131 + 8))(v223, v224);
              sub_1002D5710(v337, type metadata accessor for HostedRoutingSession);
              v236 = type metadata accessor for HostedRoutingItem;
              v237 = &v354;
              goto LABEL_132;
            }
          }

          ++v214;
          v217 += v155;
          if (v213 == v214)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_139;
      }

      ++v153;
      result = sub_1002D5710(v152, type metadata accessor for HostedRoutingItem);
      if (v151 == v153)
      {
        goto LABEL_65;
      }
    }

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

LABEL_31:
  v131 = v322;
  v132 = v334;
LABEL_66:

  v157 = sub_100028D40();
  v158 = v339;
  (*(v131 + 16))(v339, v157, v132);
  v159 = v321;
  v352 = *v321;
  sub_10026D080(v353, &v347);
  sub_10028BC98(&v352, &v347);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.error.getter();
  sub_1001E6204(&v352);
  sub_100238E4C(v353);
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v351 = swift_slowAlloc();
    *v162 = 136315394;
    v163 = _typeName(_:qualified:)();
    v165 = sub_10002C9C8(v163, v164, &v351);

    *(v162 + 4) = v165;
    *(v162 + 12) = 2082;
    v166 = v159[1];
    v347 = *v159;
    v348 = v166;
    v349 = v159[2];
    v350 = *(v159 + 48);
    sub_1002856A4();
    v167 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = sub_10002C9C8(v167, v168, &v351);

    *(v162 + 14) = v169;
    _os_log_impl(&_mh_execute_header, v160, v161, "[%s] shouldPresentGroupSessionDeactivationDialog - interaction: %{public}s could not be matched to snapshot -> no dialog", v162, 0x16u);
    swift_arrayDestroy();
  }

  (*(v131 + 8))(v158, v132);
  return 0;
}

uint64_t sub_1002E5F94(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v88 = a2;
  v4 = type metadata accessor for Logger();
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for HostedRoutingSession(0);
  v6 = *(v89 - 8);
  v7 = __chkstk_darwin(v89);
  v9 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v81 = &v76 - v10;
  v11 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v11 - 8);
  v85 = &v76 - v12;
  v82 = type metadata accessor for HostedRoutingItem(0);
  v86 = *(v82 - 8);
  v13 = __chkstk_darwin(v82);
  v15 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v80 = &v76 - v16;
  v17 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v76 - v21;
  v23 = type metadata accessor for RoutingSessionConfiguration.Context();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(a1 + 48);
  v27 = a1[1];
  v28 = a1[2];
  v87 = a1;
  v95 = v27;
  v96 = v28;
  if (v97 == 6)
  {
    v30 = *(v95 + 32);
    v29 = *(v95 + 40);

    v31 = sub_100257FC4();
    if (v30 == *v31 && v29 == v31[1])
    {

LABEL_9:
      RoutingSessionConfiguration.context.getter();
      v37 = (*(v24 + 88))(v26, v23);
      v40 = v37 == enum case for RoutingSessionConfiguration.Context.deviceTarget(_:) || v37 == enum case for RoutingSessionConfiguration.Context.platterTarget(_:) || v37 == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:);
      (*(v24 + 8))(v26, v23);
      return v40;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v97 != 3)
  {
    return 0;
  }

  v90 = v4;
  v76 = *(&v95 + 1);
  v77 = v95;
  v32 = v96;
  v33 = v88;
  v79 = sub_1002647C8();
  sub_10001D9AC(v33, v22, &qword_100523620, &unk_1004511D0);
  v78 = *(v6 + 48);
  v34 = v78(v22, 1, v89);
  sub_1000038A4(v22, &qword_100523620, &unk_1004511D0);
  if (v34 == 1)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_21:
    v43 = v90;
    *&v91[0] = v79;
    result = sub_1002E6D98(v35, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
    v44 = *&v91[0];
    v45 = *(*&v91[0] + 16);
    v46 = v87;
    if (v45)
    {
      v47 = 0;
      while (1)
      {
        if (v47 >= *(v44 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        sub_1002D56A8(v44 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v47, v9, type metadata accessor for HostedRoutingSession);
        v48 = *v9 == v32 && v9[1] == *(&v32 + 1);
        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v47;
        result = sub_1002D5710(v9, type metadata accessor for HostedRoutingSession);
        if (v45 == v47)
        {
          goto LABEL_30;
        }
      }

      v52 = v81;
      sub_1002D5640(v9, v81, type metadata accessor for HostedRoutingSession);
      v53 = sub_100261164();
      result = sub_1002D5710(v52, type metadata accessor for HostedRoutingSession);
      v54 = *(v53 + 16);
      v55 = v86;
      v56 = v77;
      v57 = v76;
      if (v54)
      {
        v58 = 0;
        while (v58 < *(v53 + 16))
        {
          sub_1002D56A8(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v58, v15, type metadata accessor for HostedRoutingItem);
          v59 = *v15 == v56 && v15[1] == v57;
          if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v49 = v85;
            sub_1002D5640(v15, v85, type metadata accessor for HostedRoutingItem);
            v60 = 0;
            goto LABEL_42;
          }

          ++v58;
          result = sub_1002D5710(v15, type metadata accessor for HostedRoutingItem);
          if (v54 == v58)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_52;
      }

LABEL_40:

      v60 = 1;
      v49 = v85;
LABEL_42:
      v61 = v82;
      (*(v55 + 56))(v49, v60, 1, v82);
      v62 = (*(v55 + 48))(v49, 1, v61);
      v50 = v84;
      v51 = v83;
      if (v62 != 1)
      {
        v74 = v80;
        sub_1002D5640(v49, v80, type metadata accessor for HostedRoutingItem);
        v75 = sub_100258908();
        sub_1002D5710(v74, type metadata accessor for HostedRoutingItem);
        return v75;
      }
    }

    else
    {
LABEL_30:

      v49 = v85;
      (*(v86 + 56))(v85, 1, 1, v82);
      v50 = v84;
      v51 = v83;
    }

    sub_1000038A4(v49, &qword_100523C18, &qword_100451AF0);
    v63 = sub_100028D40();
    (*(v50 + 16))(v51, v63, v43);
    v94 = *v46;
    sub_10028BC98(&v94, v91);
    sub_10026D080(&v95, v91);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();
    sub_1001E6204(&v94);
    sub_100238E4C(&v95);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v66 = 136315394;
      v67 = _typeName(_:qualified:)();
      v69 = sub_10002C9C8(v67, v68, &v93);

      *(v66 + 4) = v69;
      *(v66 + 12) = 2082;
      v70 = v46[1];
      v91[0] = *v46;
      v91[1] = v70;
      v91[2] = v46[2];
      v92 = *(v46 + 48);
      sub_1002856A4();
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = sub_10002C9C8(v71, v72, &v93);

      *(v66 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%s] shouldRequestDismissalForInteraction - could not find selected item for interaction: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
    }

    (*(v50 + 8))(v51, v43);
    return 0;
  }

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v41 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v35 = swift_allocObject();
  *(v35 + 1) = xmmword_10044EC70;
  sub_10001D9AC(v33, v20, &qword_100523620, &unk_1004511D0);
  result = v78(v20, 1, v89);
  if (result != 1)
  {
    sub_1002D5640(v20, v35 + v41, type metadata accessor for HostedRoutingSession);
    goto LABEL_21;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1002E6A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HostedRoutingItem(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10003AC60();
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  while (1)
  {
    v13 = v11;
    if (v12 == v11)
    {
      goto LABEL_11;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    sub_1002D56A8(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v8, type metadata accessor for HostedRoutingItem);
    if (*v8 == a2 && v8[1] == a3)
    {
      sub_1002D5710(v8, type metadata accessor for HostedRoutingItem);
LABEL_11:

      return v12 != v13;
    }

    ++v11;
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_1002D5710(v8, type metadata accessor for HostedRoutingItem);
    if (v15)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002E6BBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1002E6D98(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1002E6BBC(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1002E6EF4(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingItem(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = *(v6 + 72);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a1 + v18;
  v12 = _swiftEmptyArrayStorage;
  do
  {
    sub_1002D56A8(v11, v8, type metadata accessor for HostedRoutingItem);
    if (v8[*(v2 + 36)] == 1)
    {
      sub_1002D5640(v8, v5, type metadata accessor for HostedRoutingItem);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10002A42C(0, v12[2] + 1, 1);
        v12 = v19;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_10002A42C((v14 > 1), v15 + 1, 1);
        v12 = v19;
      }

      v12[2] = v15 + 1;
      sub_1002D5640(v5, v12 + v18 + v15 * v10, type metadata accessor for HostedRoutingItem);
    }

    else
    {
      sub_1002D5710(v8, type metadata accessor for HostedRoutingItem);
    }

    v11 += v10;
    --v9;
  }

  while (v9);
  return v12;
}

unsigned int *sub_1002E7118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  __chkstk_darwin(v44);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HostedRoutingSession(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = (&v40 - v12);
  v14 = __chkstk_darwin(v11);
  v41 = &v40 - v15;
  __chkstk_darwin(v14);
  v42 = &v40 - v16;
  v17 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v40 - v18);
  sub_10001D9AC(a3, &v40 - v18, &qword_100523620, &unk_1004511D0);
  if ((*(v8 + 48))(v19, 1, v7) != 1)
  {
    v21 = *v19;
    v22 = v19[1];

    sub_1002D5710(v19, type metadata accessor for HostedRoutingSession);
    if (v21 == a1 && v22 == a2)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v26 = &enum case for InternalRoutingError.NOP(_:);
    goto LABEL_16;
  }

  sub_1000038A4(v19, &qword_100523620, &unk_1004511D0);
LABEL_3:
  if (static RoutingSession.placeholderSessionIdentifier.getter() == a1 && v20 == a2)
  {

LABEL_13:
    v26 = &enum case for InternalRoutingError.invalidAction(_:);
    goto LABEL_16;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_13;
  }

  result = sub_1002647C8();
  v30 = result;
  v31 = *(result + 2);
  if (!v31)
  {
LABEL_27:

    v26 = &enum case for InternalRoutingError.sessionNotFound(_:);
LABEL_16:
    v27 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *v26, v27);
    swift_willThrow();
    return v26;
  }

  v32 = 0;
  while (v32 < *(v30 + 16))
  {
    sub_1002D56A8(v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, v13, type metadata accessor for HostedRoutingSession);
    v33 = *v13 == a1 && v13[1] == a2;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v34 = v41;
      sub_1002D5640(v13, v41, type metadata accessor for HostedRoutingSession);
      v35 = v42;
      sub_1002D5640(v34, v42, type metadata accessor for HostedRoutingSession);
      v36 = v43;
      sub_1002D56A8(v35, v43, type metadata accessor for HostedRoutingSession);
      v48[0] = a1;
      v48[1] = a2;
      v48[2] = 0;
      v48[3] = 0;
      v49 = 4;

      sub_100272B38(v48, v46);
      sub_1002D5710(v35, type metadata accessor for HostedRoutingSession);
      v37 = v45;
      sub_1002D5640(v36, v45, type metadata accessor for HostedRoutingSession);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v26 = swift_allocObject();
      sub_1002D5640(v37, v26 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v38 = v26 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v39 = v46[1];
      *v38 = v46[0];
      *(v38 + 1) = v39;
      *(v38 + 2) = v46[2];
      v38[48] = v47;
      return v26;
    }

    ++v32;
    result = sub_1002D5710(v13, type metadata accessor for HostedRoutingSession);
    if (v31 == v32)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E76C4(uint64_t a1)
{
  result = type metadata accessor for RoutingDecisionEngine.Decision.Element(319);
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

void sub_1002E77AC(uint64_t a1)
{
  type metadata accessor for HostedRoutingItem(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HostedRoutingSession(319);
    if (v2 <= 0x3F)
    {
      sub_1002E7834(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1002E7834(uint64_t a1)
{
  if (!qword_100525998)
  {
    type metadata accessor for RoutingItem.Action.Kind();
    type metadata accessor for HostedRoutingItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100525998);
    }
  }
}

uint64_t sub_1002E78A8()
{
  v0 = sub_1002587B8();
  v2 = v1;
  if (v0 == RoutingItem.Action.itemIdentifier.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_1002E7940()
{
  result = qword_100523B90;
  if (!qword_100523B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100523B90);
  }

  return result;
}

uint64_t sub_1002E798C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1002E7A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = type metadata accessor for HostedRoutingItem(0);
  v11 = *(v62 - 8);
  v12 = __chkstk_darwin(v62);
  v68 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = (&v61 - v14);
  *(v5 + 5) = 0;
  v16 = OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_nowPlayingInfo;
  v17 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v18 = *(*(v17 - 8) + 56);
  v63 = v16;
  v18(&v5[v16], 1, 1, v17);
  v5[OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_shouldClearNowPlayingInfo] = 0;
  v5[OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_expectedFavoriteStatus] = 2;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v19 = *(a3 + 16);
  v20 = _swiftEmptyArrayStorage;
  v69 = a3;
  v66 = v5;
  v67 = v11;
  v64 = a5;
  v65 = a4;
  if (v19)
  {
    v70 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v19, 0);
    v20 = v70;
    v21 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v22 = *(v11 + 72);
    do
    {
      sub_1002FBBA0(v21, v15, type metadata accessor for HostedRoutingItem);
      v24 = *v15;
      v23 = v15[1];

      sub_1002FB6F0(v15, type metadata accessor for HostedRoutingItem);
      v70 = v20;
      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        sub_1000089FC((v25 > 1), v26 + 1, 1);
        v20 = v70;
      }

      v20[2] = v26 + 1;
      v27 = &v20[2 * v26];
      v27[4] = v24;
      v27[5] = v23;
      v21 += v22;
      --v19;
    }

    while (v19);
    a4 = v65;
    v5 = v66;
    a3 = v69;
    a5 = v64;
  }

  v28 = sub_100008280(v20);

  *(v5 + 4) = v28;
  v29 = v63;
  swift_beginAccess();
  sub_10026A0EC(a4, &v5[v29]);
  swift_endAccess();
  if ((a5 & 0x100000000) != 0)
  {
    sub_1000038A4(a4, &qword_100523640, qword_100451520);

    return v5;
  }

  v30 = *(a3 + 16);
  if (!v30)
  {
LABEL_30:

    type metadata accessor for VolumeGroup();
    v59 = VolumeGroup.__allocating_init(itemVolumeLevels:groupVolumeLevel:)();
    sub_1000038A4(v65, &qword_100523640, qword_100451520);
    v5 = v66;
    *(v66 + 5) = v59;

    return v5;
  }

  v31 = 0;
  v32 = v67;
  v33 = v68 + *(v62 + 52);
  v34 = a3 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v35 = &_swiftEmptyDictionarySingleton;
  while (v31 < *(a3 + 16))
  {
    v37 = v68;
    sub_1002FBBA0(v34 + *(v32 + 72) * v31, v68, type metadata accessor for HostedRoutingItem);
    v39 = *v37;
    v38 = v37[1];
    v40 = *v33;
    v41 = v33[4];

    sub_1002FB6F0(v37, type metadata accessor for HostedRoutingItem);
    if ((v41 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v35;
      v47 = sub_10000698C(v39, v38);
      v49 = v35[2];
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_33;
      }

      v53 = v48;
      if (v35[3] < v52)
      {
        sub_100267AF4(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_10000698C(v39, v38);
        if ((v53 & 1) != (v54 & 1))
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_24:
        if ((v53 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v58 = v47;
        sub_100267F48();
        v47 = v58;
        if ((v53 & 1) == 0)
        {
LABEL_25:
          v35 = v70;
          v70[(v47 >> 6) + 8] |= 1 << v47;
          v55 = (v35[6] + 16 * v47);
          *v55 = v39;
          v55[1] = v38;
          *(v35[7] + 4 * v47) = v40;
          v56 = v35[2];
          v51 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v51)
          {
            goto LABEL_34;
          }

          v35[2] = v57;
          goto LABEL_11;
        }
      }

      v36 = v47;

      v35 = v70;
      *(v70[7] + 4 * v36) = v40;
      goto LABEL_11;
    }

    v42 = sub_10000698C(v39, v38);
    v44 = v43;

    if (v44)
    {
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v35;
      a3 = v69;
      if (!v45)
      {
        sub_100267F48();
        v35 = v70;
      }

      sub_100267D98(v42, v35);
      goto LABEL_12;
    }

LABEL_11:
    a3 = v69;
LABEL_12:
    v32 = v67;
    if (v30 == ++v31)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1002FB39C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000698C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1002FB518();
        v14 = v16;
      }

      result = sub_1001DEE44(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

char *sub_1002E8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 5) = 0;
  v11 = OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_nowPlayingInfo;
  v12 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v5[OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_shouldClearNowPlayingInfo] = 0;
  v5[OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_expectedFavoriteStatus] = 2;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = a3;
  v14 = inited + 32;
  *(inited + 40) = a4;
  v15 = sub_100008280(inited);
  swift_setDeallocating();
  sub_1001E6204(v14);
  *(v5 + 4) = v15;
  swift_beginAccess();
  sub_10001CECC(a5, &v5[v11], &qword_100523640, qword_100451520);
  swift_endAccess();
  return v5;
}

uint64_t sub_1002E81B4()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v31 = 60;
  v32 = 0xE100000000000000;
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x746E656469202D20;
  v10._object = 0xEF203A7265696669;
  String.append(_:)(v10);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x3A736D657469202CLL;
  v14._object = 0xE900000000000020;
  String.append(_:)(v14);
  swift_beginAccess();

  v15 = Set.description.getter();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x616C50776F6E202CLL;
  v19._object = 0xEE00203A676E6979;
  String.append(_:)(v19);
  v20 = OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_nowPlayingInfo;
  swift_beginAccess();
  sub_10001D9AC(v1 + v20, v8, &qword_100523640, qword_100451520);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000038A4(v8, &qword_100523640, qword_100451520);
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    sub_1002FBBA0(v8, v5, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    sub_1000038A4(v8, &qword_100523640, qword_100451520);
    v23 = sub_1002604F8();
    v21 = v24;
    sub_1002FB6F0(v5, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v22 = v23;
  }

  v25 = v21;
  String.append(_:)(*&v22);

  v26._countAndFlagsBits = 15913;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  return v31;
}

uint64_t sub_1002E8510(uint64_t a1)
{
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);
}

uint64_t sub_1002E8550()
{
  type metadata accessor for RoutingControl();
  sub_1002FBF30(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);
}

uint64_t sub_1002E85E8()
{

  sub_1000038A4(v0 + OBJC_IVAR____TtCC12mediaremoted23RoutingOptimisticEngineP33_137343DE692D6DCED7CF5E29500708C37ItemSet_nowPlayingInfo, &qword_100523640, qword_100451520);

  return swift_deallocClassInstance();
}

void sub_1002FA9D0()
{
  v1 = *(v0 + 8);
  if (v1 == *(v0 + 16))
  {
    if ((sub_1002FB688() & 1) == 0)
    {
      return;
    }

    v1 = *(v0 + 8);
  }

  *(v0 + 8) = v1 + 1;
}

void sub_1002FAA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_10000698C(a1, a2);
    if (v3)
    {
    }
  }
}

unint64_t sub_1002FAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_10000698C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_1002FAACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for HostedRoutingItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  if (v13)
  {
    v19[1] = v4;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_1002FBBA0(v14, v12, type metadata accessor for HostedRoutingItem);
      v16 = *v12 == a2 && v12[1] == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      sub_1002FB6F0(v12, type metadata accessor for HostedRoutingItem);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        goto LABEL_12;
      }
    }

    sub_1002FBF78(v12, a4, type metadata accessor for HostedRoutingItem);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_12:
  (*(v10 + 56))(a4, v17, 1, v9);
}

uint64_t sub_1002FAC84(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002668C(0, v3[2] + 1, 1, v3, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_10002668C((v4 > 1), v5 + 1, 1, v3, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
  }

  v3[2] = v5 + 1;
  v6 = *(type metadata accessor for HostedRoutingItem(0) - 8);
  result = sub_1002FBF78(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, type metadata accessor for HostedRoutingItem);
  *v1 = v3;
  return result;
}

uint64_t sub_1002FADDC(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002668C(0, v3[2] + 1, 1, v3, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_10002668C((v4 > 1), v5 + 1, 1, v3, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession);
  }

  v3[2] = v5 + 1;
  v6 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  result = sub_1002FBF78(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, type metadata accessor for HostedRoutingSourceSession);
  *v1 = v3;
  return result;
}

uint64_t sub_1002FAF34(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  type metadata accessor for RoutingTimeline.Event(0);
  sub_1002FBF30(&qword_100525BE8, type metadata accessor for RoutingTimeline.Event, &unk_100458600);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();

  return v1;
}

uint64_t sub_1002FAFD0(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  type metadata accessor for RoutingOptimisticEngine.ItemSet(0);
  v1 = Array.description.getter();

  return v1;
}

uint64_t sub_1002FB03C(void *(*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  sub_1002FBEDC();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1002488FC(v3, v4, v5);
  return v1;
}

uint64_t type metadata accessor for RoutingOptimisticEngine.ItemSet(uint64_t a1)
{
  result = qword_100533BE8;
  if (!qword_100533BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FB0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&unk_100525BF0, &qword_100457DA0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1002FB39C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1002FB0F4(v16, a4 & 1);
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002FB518();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1002FB518()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100525BF0, &qword_100457DA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1002FB688()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_1002FB6F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE **sub_1002FB750(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

unint64_t sub_1002FB794(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result >= 4)
  {

    return sub_10023DCB0(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1002FB800()
{
  sub_1002488FC(*(v0 + 16), *(v0 + 24), *(v0 + 28));

  return _swift_deallocObject(v0, 29, 7);
}

uint64_t sub_1002FB844@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 28);
  *(a1 + 12) = v4;
  return sub_100248888(v2, v3, v4);
}

void sub_1002FB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v21 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(v5 + 56) + ((v6 << 9) | (8 * v12)));
    swift_beginAccess();
    v14 = *(v13 + 32);
    if (*(v14 + 16))
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(v14 + 48) + 16 * v17);
          v20 = *v19 == a2 && v19[1] == a3;
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = a1;
      }

      else
      {
LABEL_5:

        v5 = a1;
      }
    }
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v21 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1002FBA74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        swift_beginAccess();
        sub_1001C0CA0(a2, a3);
        swift_endAccess();

        ++v6;
        if (v7 == v5)
        {
          return result;
        }
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002FBBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1002FBC08@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

double sub_1002FBC1C@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t sub_1002FBC28()
{
  (*(v0 + 16))(&v3);
  v1 = sub_1002E81B4();

  return v1;
}

uint64_t sub_1002FBC84()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1002FBCB4()
{
  (*(v0 + 16))();

  return _typeName(_:qualified:)();
}

uint64_t sub_1002FBCF0(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))(a1, a2);
  v8 = sub_10002C9C8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void sub_1002FBD54(uint64_t a1)
{
  sub_1002FBE1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FBE1C(uint64_t a1)
{
  if (!qword_100523E28)
  {
    type metadata accessor for HostedRoutingSession.NowPlayingInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100523E28);
    }
  }
}

unint64_t sub_1002FBE88()
{
  result = qword_100533BF8[0];
  if (!qword_100533BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533BF8);
  }

  return result;
}

unint64_t sub_1002FBEDC()
{
  result = qword_100525BE0;
  if (!qword_100525BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525BE0);
  }

  return result;
}

uint64_t sub_1002FBF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002FBF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FC010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v7 = sub_1002FE93C(a2, a3, a4);

  swift_unknownObjectRelease();
  return v7;
}

void *sub_1002FC08C()
{
  result = *(v0 + 40);
  if (result)
  {
    [objc_msgSend(result "recommender")];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002FC0F4(uint64_t a1, uint64_t a2)
{
  v195 = a2;
  v192 = *v2;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v4 - 8);
  v188 = &v175 - v5;
  v204 = type metadata accessor for HostedRoutingItem(0);
  v207 = *(v204 - 8);
  v6 = __chkstk_darwin(v204);
  v206 = (&v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v205 = &v175 - v8;
  v9 = type metadata accessor for HostedRoutingSourceSession(0);
  v189 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v194 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v181 = &v175 - v13;
  v14 = __chkstk_darwin(v12);
  v184 = &v175 - v15;
  v16 = __chkstk_darwin(v14);
  v193 = &v175 - v17;
  v18 = __chkstk_darwin(v16);
  v180 = &v175 - v19;
  v20 = __chkstk_darwin(v18);
  v183 = &v175 - v21;
  v22 = __chkstk_darwin(v20);
  v197 = (&v175 - v23);
  v24 = __chkstk_darwin(v22);
  v179 = &v175 - v25;
  v26 = __chkstk_darwin(v24);
  v182 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v202 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v185 = &v175 - v31;
  __chkstk_darwin(v30);
  v186 = &v175 - v32;
  v33 = type metadata accessor for RoutingEvent(0);
  v34 = __chkstk_darwin(v33);
  v187 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v196 = &v175 - v36;
  v201 = type metadata accessor for Logger();
  v199 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for RoutingSessionConfiguration.Attribution.AttributionType();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v175 - v47;
  v190 = sub_10026D044();
  v50 = v49;
  v191 = v33;
  v51 = *(v33 + 20);
  v52 = *(v39 + 16);
  v200 = a1;
  v52(v41, a1 + v51, v38);
  if ((*(v39 + 88))(v41, v38) != enum case for RoutingSessionConfiguration.Attribution.attributed(_:))
  {

    return (*(v39 + 8))(v41, v38);
  }

  (*(v39 + 96))(v41, v38);
  v43[4](v48, v41, v42);
  v43[2](v46, v48, v42);
  v53 = v42;
  if ((v43[11])(v46, v42) == enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:))
  {
    (v43[12])(v46, v42);
    v54 = *v46;
    v55 = *(v46 + 1);
  }

  else
  {
    (v43[1])(v46, v42);
    v54 = 0;
    v55 = 0;
  }

  v58 = v202;
  v57 = v203;
  v59 = v203[5];
  if (!v59)
  {
    (v43[1])(v48, v42);
  }

  v178 = v50;
  v177 = v48;
  v60 = v59;
  v61 = v200;
  v62 = sub_10026D044();
  v64 = v57[8];
  if (!v64)
  {

    goto LABEL_16;
  }

  if (v62 == v57[7] && v64 == v63)
  {

    goto LABEL_14;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v66 & 1) == 0)
  {
LABEL_16:
    v176 = v53;
    v198 = v43;
    v84 = (*(*v57 + 128))(v65);
    sub_1002FD8A8(v84);
    v86 = v85;
    v88 = v87;

    if (v86)
    {

      v89 = *(v88 + 48);
      v196 = *(v88 + 40);
    }

    else
    {
      v196 = 0;
      v89 = 0;
    }

    sub_10026D074(v209);
    if (v210 <= 3u)
    {
      if (v210 < 3u)
      {
        v175 = v54;
        v197 = v89;
        v90 = v60;
        v92 = v209[2];
        v91 = v209[3];

        sub_100238E4C(v209);
        v93 = *(v195 + 16);
        if (v93)
        {
          v94 = v195 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
          v95 = *(v189 + 72);
          while (1)
          {
            sub_1002FEDBC(v94, v58, type metadata accessor for HostedRoutingSourceSession);
            v96 = *v58 == v92 && v58[1] == v91;
            if (v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            sub_1000218DC(v58, type metadata accessor for HostedRoutingSourceSession);
            v94 += v95;
            if (!--v93)
            {
              goto LABEL_30;
            }
          }

          v111 = v185;
          sub_1002FED58(v58, v185);
          sub_1002FED58(v111, v186);
          sub_100018D7C(0, &qword_100525C08, MRIRRoute_ptr);

          sub_1002492E4(v112, 0, 0);
          v114 = v113;
          if (v55)
          {
            v115 = String._bridgeToObjectiveC()();
          }

          else
          {
            v115 = 0;
          }

          v144 = v199;
          v145 = v188;
          v60 = v90;
          if (v197)
          {
            v146 = String._bridgeToObjectiveC()();
          }

          else
          {
            v146 = 0;
          }

          [v90 donatePickerChoiceFor:v114 bundleIdentifier:v115 contextIdentifier:v146];

          sub_1000218DC(v186, type metadata accessor for HostedRoutingSourceSession);
LABEL_104:
          v156 = sub_100015A78();
          sub_100015B34(v156, v145);
          v157 = (*(v144 + 48))(v145, 1, v201);
          v158 = v187;
          if (v157 == 1)
          {

            sub_1000038A4(v145, &qword_100525C00, &unk_1004511A0);
          }

          else
          {
            v205 = v60;
            sub_1002FEDBC(v61, v187, type metadata accessor for RoutingEvent);

            v159 = Logger.logObject.getter();
            v160 = v178;
            v161 = v159;
            v162 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v208 = swift_slowAlloc();
              *v163 = 136315650;
              v164 = _typeName(_:qualified:)();
              v166 = sub_10002C9C8(v164, v165, &v208);

              *(v163 + 4) = v166;
              *(v163 + 12) = 2080;
              v167 = sub_10002C9C8(v190, v160, &v208);

              *(v163 + 14) = v167;
              *(v163 + 22) = 2080;
              sub_1002FF12C(&qword_100525C10, 255, type metadata accessor for RoutingEvent, &unk_1004552B0);
              v168 = dispatch thunk of CustomStringConvertible.description.getter();
              v170 = v169;
              sub_1000218DC(v158, type metadata accessor for RoutingEvent);
              v171 = sub_10002C9C8(v168, v170, &v208);
              v144 = v199;

              *(v163 + 24) = v171;
              _os_log_impl(&_mh_execute_header, v161, v162, "[%s] donateEvent<%s> - donated event: %s", v163, 0x20u);
              swift_arrayDestroy();
              v145 = v188;
            }

            else
            {

              sub_1000218DC(v158, type metadata accessor for RoutingEvent);
            }

            v60 = v205;
            (*(v144 + 8))(v145, v201);
          }

          v172 = sub_10026D044();
          v174 = v173;

          (*(v198 + 1))(v177, v176);
          v57[7] = v172;
          v57[8] = v174;
        }

LABEL_30:
        (*(v198 + 1))(v177, v176);
      }

      goto LABEL_58;
    }

    v202 = v55;
    v97 = v209[0];
    v98 = v209[1];
    switch(v210)
    {
      case 4u:
        v175 = v54;
        v116 = *(v195 + 16);
        v117 = v197;
        if (v116)
        {
          v118 = v195 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
          v119 = *(v189 + 72);
          while (1)
          {
            sub_1002FEDBC(v118, v117, type metadata accessor for HostedRoutingSourceSession);
            if (*v117 == v97 && v117[1] == v98)
            {
              break;
            }

            v121 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v117 = v197;
            if (v121)
            {
              break;
            }

            sub_1000218DC(v197, type metadata accessor for HostedRoutingSourceSession);
            v118 += v119;
            if (!--v116)
            {
              goto LABEL_58;
            }
          }

          v147 = v179;
          sub_1002FED58(v117, v179);
          sub_1002FED58(v147, v182);
          sub_100018D7C(0, &qword_100525C08, MRIRRoute_ptr);

          sub_1002492E4(v148, 0, 0);
          v150 = v149;
          if (v202)
          {
            v151 = String._bridgeToObjectiveC()();
          }

          else
          {
            v151 = 0;
          }

          v144 = v199;
          v145 = v188;
          if (v89)
          {
            v155 = String._bridgeToObjectiveC()();
          }

          else
          {
            v155 = 0;
          }

          [v60 donatePickerChoiceFor:v150 bundleIdentifier:v151 contextIdentifier:{v155, v175}];

          v153 = &v211;
LABEL_103:
          sub_1000218DC(*(v153 - 32), type metadata accessor for HostedRoutingSourceSession);
          sub_100238E4C(v209);
          goto LABEL_104;
        }

        break;
      case 5u:
        v175 = v54;
        v197 = v89;
        v122 = v60;
        v123 = *(v195 + 16);
        if (v123)
        {
          v124 = 0;
          v206 = (v195 + ((*(v189 + 80) + 32) & ~*(v189 + 80)));
          v195 = *(v189 + 72);
          do
          {
            v125 = v193;
            result = sub_1002FEDBC(v206 + v195 * v124, v193, type metadata accessor for HostedRoutingSourceSession);
            v126 = *(v125 + 32);
            v127 = *(v126 + 16);
            if (v127)
            {
              v128 = 0;
              v129 = v126 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
              do
              {
                if (v128 >= *(v126 + 16))
                {
LABEL_113:
                  __break(1u);
                  return result;
                }

                v131 = v205;
                sub_1002FEDBC(v129 + *(v207 + 72) * v128, v205, type metadata accessor for HostedRoutingItem);
                v132 = *v131 == v97 && v131[1] == v98;
                if (v132 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  v130 = v205[*(v204 + 36)];
                  result = sub_1000218DC(v205, type metadata accessor for HostedRoutingItem);
                  if (v130)
                  {
                    v139 = v180;
                    sub_1002FED58(v193, v180);
                    sub_1002FED58(v139, v183);
                    sub_100018D7C(0, &qword_100525C08, MRIRRoute_ptr);

                    sub_1002492E4(v140, 0, 0);
                    v142 = v141;
                    if (v202)
                    {
                      v143 = String._bridgeToObjectiveC()();
                    }

                    else
                    {
                      v143 = 0;
                    }

                    v144 = v199;
                    v61 = v200;
                    v57 = v203;
                    v145 = v188;
                    v60 = v122;
                    if (v197)
                    {
                      v154 = String._bridgeToObjectiveC()();
                    }

                    else
                    {
                      v154 = 0;
                    }

                    [v60 donatePickerChoiceFor:v142 bundleIdentifier:v143 contextIdentifier:{v154, v175}];

                    v153 = &v212;
                    goto LABEL_103;
                  }
                }

                else
                {
                  result = sub_1000218DC(v205, type metadata accessor for HostedRoutingItem);
                }

                ++v128;
              }

              while (v127 != v128);
            }

            ++v124;
            sub_1000218DC(v193, type metadata accessor for HostedRoutingSourceSession);
          }

          while (v124 != v123);
        }

        goto LABEL_86;
      case 6u:
        v175 = v54;
        v197 = v89;
        v205 = v60;
        v99 = *(v195 + 16);
        if (v99)
        {
          v100 = 0;
          v102 = *(v209[0] + 32);
          v101 = *(v209[0] + 40);
          v195 += (*(v189 + 80) + 32) & ~*(v189 + 80);
          v193 = *(v189 + 72);
          do
          {
            v103 = v194;
            result = sub_1002FEDBC(v195 + v193 * v100, v194, type metadata accessor for HostedRoutingSourceSession);
            v104 = *(v103 + 32);
            v105 = *(v104 + 16);
            if (v105)
            {
              v106 = 0;
              v107 = v104 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
              do
              {
                if (v106 >= *(v104 + 16))
                {
                  __break(1u);
                  goto LABEL_113;
                }

                v109 = v206;
                sub_1002FEDBC(v107 + *(v207 + 72) * v106, v206, type metadata accessor for HostedRoutingItem);
                v110 = *v109 == v102 && v109[1] == v101;
                if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  v108 = *(v206 + *(v204 + 36));
                  result = sub_1000218DC(v206, type metadata accessor for HostedRoutingItem);
                  if (v108)
                  {
                    v133 = v181;
                    sub_1002FED58(v194, v181);
                    sub_1002FED58(v133, v184);
                    sub_100018D7C(0, &qword_100525C08, MRIRRoute_ptr);

                    sub_1002492E4(v134, 0, 0);
                    v136 = v135;
                    v137 = v197;
                    if (v202)
                    {
                      v138 = String._bridgeToObjectiveC()();
                    }

                    else
                    {
                      v138 = 0;
                    }

                    v144 = v199;
                    v57 = v203;
                    v145 = v188;
                    v60 = v205;
                    if (v137)
                    {
                      v152 = String._bridgeToObjectiveC()();
                    }

                    else
                    {
                      v152 = 0;
                    }

                    [v60 donatePickerChoiceFor:v136 bundleIdentifier:v138 contextIdentifier:{v152, v175}];

                    v153 = &v213;
                    goto LABEL_103;
                  }
                }

                else
                {
                  result = sub_1000218DC(v206, type metadata accessor for HostedRoutingItem);
                }

                ++v106;
              }

              while (v105 != v106);
            }

            ++v100;
            sub_1000218DC(v194, type metadata accessor for HostedRoutingSourceSession);
          }

          while (v100 != v99);
        }

LABEL_86:

        (*(v198 + 1))(v177, v176);
        return sub_100238E4C(v209);
    }

LABEL_58:
    (*(v198 + 1))(v177, v176);

    return sub_100238E4C(v209);
  }

LABEL_14:

  v67 = sub_100028D40();
  v69 = v198;
  v68 = v199;
  (*(v199 + 16))(v198, v67, v201);
  v70 = v196;
  sub_1002FEDBC(v61, v196, type metadata accessor for RoutingEvent);
  v71 = v178;

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v205 = v60;
    v75 = v74;
    v209[0] = swift_slowAlloc();
    *v75 = 136315650;
    v76 = _typeName(_:qualified:)();
    v78 = sub_10002C9C8(v76, v77, v209);

    *(v75 + 4) = v78;
    v176 = v53;
    *(v75 + 12) = 2080;
    v79 = sub_10002C9C8(v190, v71, v209);

    *(v75 + 14) = v79;
    *(v75 + 22) = 2080;
    sub_1002FF12C(&qword_100525C10, 255, type metadata accessor for RoutingEvent, &unk_1004552B0);
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    sub_1000218DC(v70, type metadata accessor for RoutingEvent);
    v83 = sub_10002C9C8(v80, v82, v209);

    *(v75 + 24) = v83;
    _os_log_impl(&_mh_execute_header, v72, v73, "[%s] donateEvent<%s> - drop duplicate donation for event: %s", v75, 0x20u);
    swift_arrayDestroy();

    (*(v199 + 8))(v198, v201);
    return (v43[1])(v177, v176);
  }

  else
  {

    sub_1000218DC(v70, type metadata accessor for RoutingEvent);
    (*(v68 + 8))(v69, v201);
    return (v43[1])(v177, v53);
  }
}

void *sub_1002FD8A8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1002FE8A8(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1002FD928(void *a1)
{
  swift_allocObject();
  v2 = sub_1000168B4(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1002FD974()
{

  sub_1001DFBCC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1002FD9D4()
{
  result = (*(*v0 + 128))();
  v2 = result;
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_11:
    v17 = __clz(__rbit64(v7)) | (v3 << 6);
    v18 = (*(v2 + 48) + 16 * v17);
    v9 = *v18;
    v10 = v18[1];
    v19 = *(*(v2 + 56) + 8 * v17);
    v20 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v20 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
    }

    else
    {
      v9 = 0x5453205954504D45;
      v10 = 0xEC000000474E4952;
    }

    v7 &= v7 - 1;

    v11._countAndFlagsBits = v9;
    v11._object = v10;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 540945696;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = (*(*v19 + 144))();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 10;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    String.append(_:)(v15);
  }

  while (1)
  {
    v16 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v16 >= v8)
    {

      return 0xD00000000000002CLL;
    }

    v7 = *(v4 + 8 * v16);
    ++v3;
    if (v7)
    {
      v3 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002FDC00(__int16 a1)
{
  _StringGuts.grow(_:)(19);

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x203A53437369202CLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  if ((a1 & 0x100) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  return 0x203A4154437369;
}

Swift::Int sub_1002FDCF0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1002FDD50()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1002FDD90(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1002FDDEC()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002FDC00(v1 | *v0);
}

uint64_t sub_1002FDE30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      _StringGuts.grow(_:)(19);
      v3 = 0x800000010043FBD0;
      v4 = 0xD000000000000010;
    }

    else
    {
      _StringGuts.grow(_:)(35);
      v5._countAndFlagsBits = 0xD000000000000016;
      v5._object = 0x800000010043FBB0;
      String.append(_:)(v5);
      v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v6);

      v4 = 0x203A6B6E6172202CLL;
      v3 = 0xE800000000000000;
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);
    v4 = 0xD000000000000014;
    v3 = 0x800000010043FBF0;
  }

  String.append(_:)(*&v4);
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

void sub_1002FDFB4(uint64_t a1, Swift::UInt a2, Swift::UInt a3, unsigned __int8 a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = 1;
    }

    else
    {
      Hasher._combine(_:)(2uLL);
      v5 = a2;
      a2 = a3;
    }
  }

  else
  {
    v5 = a4;
  }

  Hasher._combine(_:)(v5);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  Hasher._combine(_:)(v7);
}

BOOL sub_1002FE054(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (a3)
    {
      v6 = 0;
      return v6 >= a3;
    }

    goto LABEL_13;
  }

  if (a6 == 1)
  {
    if (a3 != 1)
    {
      v6 = 1;
      return v6 >= a3;
    }

LABEL_13:
    v9 = *&a4 < *&a1;
    if (*&a4 == *&a1)
    {
      v9 = 0;
    }

    return !v9;
  }

  if (a3 != 2)
  {
    v6 = 2;
    return v6 >= a3;
  }

  v7 = *&a5 < *&a2;
  if (*&a5 == *&a2)
  {
    v7 = 0;
  }

  if (a4 != a1)
  {
    v7 = a4 < a1;
  }

  return !v7;
}

BOOL sub_1002FE104(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a3)
  {
    if (a6)
    {
      v6 = 0;
      return v6 >= a6;
    }

    goto LABEL_13;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      v6 = 1;
      return v6 >= a6;
    }

LABEL_13:
    v9 = *&a1 < *&a4;
    if (*&a1 == *&a4)
    {
      v9 = 0;
    }

    return !v9;
  }

  if (a6 != 2)
  {
    v6 = 2;
    return v6 >= a6;
  }

  v7 = *&a2 < *&a5;
  if (*&a2 == *&a5)
  {
    v7 = 0;
  }

  if (a1 != a4)
  {
    v7 = a1 < a4;
  }

  return !v7;
}

BOOL sub_1002FE1B4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (a3)
    {
      v6 = 0;
      return v6 < a3;
    }

    return *&a4 != *&a1 && *&a4 < *&a1;
  }

  if (a6 == 1)
  {
    if (a3 != 1)
    {
      v6 = 1;
      return v6 < a3;
    }

    return *&a4 != *&a1 && *&a4 < *&a1;
  }

  if (a3 != 2)
  {
    v6 = 2;
    return v6 < a3;
  }

  v7 = *&a5 < *&a2;
  if (*&a5 == *&a2)
  {
    v7 = 0;
  }

  if (a4 == a1)
  {
    return v7;
  }

  else
  {
    return a4 < a1;
  }
}

Swift::Int sub_1002FE240()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1002FDFB4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1002FE2A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_1002FDFB4(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_1002FE358()
{
  _StringGuts.grow(_:)(133);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._object = 0x800000010043FC10;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_1002FDE30(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v5._object = 0x800000010043FC30;
  String.append(_:)(v5);
  if (*(v0 + 33))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x800000010043FC50;
  String.append(_:)(v9);
  if (*(v0 + 35))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11._countAndFlagsBits = sub_1002FDC00(v10 | *(v0 + 34));
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD00000000000001DLL;
  v12._object = 0x800000010043FC70;
  String.append(_:)(v12);
  if (*(v0 + 64))
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000015;
  v16._object = 0x800000010043FC90;
  String.append(_:)(v16);
  String.append(_:)(*(v0 + 40));
  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

Swift::Int sub_1002FE588()
{
  Hasher.init(_seed:)();
  (*(*v0 + 120))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002FE670(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 120))(v3);
  return Hasher._finalize()();
}

void sub_1002FE738()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100525EE8, &qword_100458108);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1002FE8A8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002FE93C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v30 = a2;
  v6 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for NSNotificationCenter.Publisher();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v28 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 72) = a1;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = [v16 server];
  v19 = [v18 routingServer];

  v20 = [v19 recommendationController];
  if (v20)
  {
    v21 = *(v4 + 40);
    *(v4 + 40) = v20;
    v27 = v20;

    v22 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    v31 = v17;
    v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    sub_1002FF12C(&unk_100525F00, 255, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    sub_1002853D8();
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v8, &unk_100524C50, &qword_10044F180);
    (*(v10 + 8))(v12, v9);
    swift_allocObject();
    swift_weakInit();
    sub_1002FF3B4();
    v24 = Publisher<>.sink(receiveValue:)();

    (*(v28 + 8))(v15, v13);
    *(v4 + 48) = v24;
  }

  sub_10001556C();
  *(v4 + 32) = v29;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1002FED58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FEDBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1002FEE24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = *&a1 == *&a4;
    if (a6 != 1)
    {
      v6 = 0;
    }

    v7 = *&a2 == *&a5;
    if (a1 != a4)
    {
      v7 = 0;
    }

    v8 = a6 == 2 && v7;
    if (a3 == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return !a6 && *&a1 == *&a4;
  }
}

BOOL sub_1002FEE98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    return !*(a2 + 32) && v2 == v3;
  }

  if (*(a1 + 32) == 1)
  {
    return v4 == 1 && v2 == v3;
  }

  if (v4 != 2 || *&v2 != *&v3)
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL sub_1002FEF18(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a3)
  {
    if (a6)
    {
      v6 = 0;
      return v6 < a6;
    }

    return *&a1 != *&a4 && *&a1 < *&a4;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      v6 = 1;
      return v6 < a6;
    }

    return *&a1 != *&a4 && *&a1 < *&a4;
  }

  if (a6 != 2)
  {
    v6 = 2;
    return v6 < a6;
  }

  v7 = *&a2 < *&a5;
  if (*&a2 == *&a5)
  {
    v7 = 0;
  }

  if (a1 == a4)
  {
    return v7;
  }

  else
  {
    return a1 < a4;
  }
}

BOOL sub_1002FEFA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      v5 = 0;
      return v5 < v4;
    }

    return v2 != v3 && v2 < v3;
  }

  if (*(a1 + 32) == 1)
  {
    if (v4 != 1)
    {
      v5 = 1;
      return v5 < v4;
    }

    return v2 != v3 && v2 < v3;
  }

  if (v4 != 2)
  {
    v5 = 2;
    return v5 < v4;
  }

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  v8 = v7 < v6;
  if (v7 == v6)
  {
    v8 = 0;
  }

  v9 = *&v2 == *&v3;
  v10 = *&v2 < *&v3;
  if (v9)
  {
    return v8;
  }

  else
  {
    return v10;
  }
}

unint64_t sub_1002FF038()
{
  result = qword_100525C18;
  if (!qword_100525C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525C18);
  }

  return result;
}

unint64_t sub_1002FF08C()
{
  result = qword_100525C20;
  if (!qword_100525C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525C20);
  }

  return result;
}

uint64_t sub_1002FF12C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteRelevance.InteractiveRelevance(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RouteRelevance.InteractiveRelevance(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteRelevance.Classification(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RouteRelevance.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_1002FF3B4()
{
  result = qword_100525F10;
  if (!qword_100525F10)
  {
    sub_1001C2EC8(&unk_100525EF0, &qword_100458110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525F10);
  }

  return result;
}

void sub_1002FF420(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != v3)
  {
    v11 = sub_100028D40();
    (*(v8 + 16))(v10, v11, v7);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v55 = v8;
      v15 = v14;
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315394;
      v18 = *(v2 + 112);
      v17 = *(v2 + 120);

      v19 = sub_10002C9C8(v18, v17, aBlock);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1026;
      *(v15 + 14) = *(v2 + 16);

      _os_log_impl(&_mh_execute_header, v12, v13, "[Client.Context]<%s> setIsPresentingUI - value: %{BOOL,public}d", v15, 0x12u);
      sub_100026A44(v16);

      v8 = v55;
    }

    else
    {
    }

    v20 = *(v8 + 8);
    v20(v10, v7);
    if (*(v2 + 16) == 1)
    {
      if (!*(v2 + 104))
      {
        type metadata accessor for Preferences();
        static Preferences.sessionItemStabilityInterval.getter();
        v22 = v21;
        v23 = *sub_100021264();
        v24 = swift_allocObject();
        swift_weakInit();
        v25 = objc_allocWithZone(MSVTimer);
        aBlock[4] = sub_1003309EC;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004CE220;
        v26 = _Block_copy(aBlock);
        v27 = v23;

        v28 = [v25 initWithInterval:0 repeats:v27 queue:v26 block:v22];
        _Block_release(v26);

        v29 = *(v2 + 104);
        *(v2 + 104) = v28;
      }

      v30 = *(**(v2 + 96) + 416);

      v30(1);

      if (*(*(v2 + 24) + 16))
      {
        v31 = *(**(v2 + 96) + 424);

        v31(v32);
      }
    }

    else
    {
      v33 = *(v2 + 32);
      v34 = *(v2 + 40);
      v35 = *(v2 + 48);
      v36 = *(v2 + 56);
      v37 = *(v2 + 64);
      v38 = *(v2 + 72);
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0u;
      *(v2 + 64) = 0u;
      v39 = *(v2 + 80);
      *(v2 + 80) = 0;
      sub_10028AE60(v33, v34, v35, v36, v37, v38, v39);
      swift_beginAccess();
      *(v2 + 88) = &_swiftEmptySetSingleton;

      *(v2 + 81) = 0;
      sub_1002FFF30();
      v40 = *(v2 + 104);
      if (v40)
      {
        [v40 invalidate];
        v41 = *(v2 + 104);
        *(v2 + 104) = 0;
      }

      v42 = sub_1001D93CC();
      sub_10001D9AC(v42, v6, &qword_100525C00, &unk_1004511A0);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1000038A4(v6, &qword_100525C00, &unk_1004511A0);
      }

      else
      {

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v55 = v8;
          v46 = v45;
          v57 = swift_slowAlloc();
          *v46 = 136315394;
          v47 = *(v2 + 112);
          v48 = *(v2 + 120);

          v49 = sub_10002C9C8(v47, v48, &v57);

          *(v46 + 4) = v49;
          *(v46 + 12) = 2080;
          aBlock[6] = *(v2 + 96);
          type metadata accessor for RoutingClientEventContext(0);
          sub_100004930(&qword_100525F98, type metadata accessor for RoutingClientEventContext, &unk_100450F60);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = sub_10002C9C8(v50, v51, &v57);

          *(v46 + 14) = v52;
          _os_log_impl(&_mh_execute_header, v43, v44, "[Client.Context]<%s> interaction context:\n%s", v46, 0x16u);
          swift_arrayDestroy();
        }

        v20(v6, v7);
      }

      v53 = *(**(v2 + 96) + 416);

      v53(0);
    }
  }
}

uint64_t sub_1002FFAFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 24);

  LOBYTE(a1) = sub_100218144(a1, v8);

  if ((a1 & 1) == 0)
  {
    v10 = sub_100028D40();
    (*(v5 + 16))(v7, v10, v4);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v13 = 136446466;
      v14 = *(v2 + 112);
      v15 = *(v2 + 120);

      v16 = sub_10002C9C8(v14, v15, &v24);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;

      v17 = Set.description.getter();
      v19 = v18;

      v20 = sub_10002C9C8(v17, v19, &v24);

      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Client.Context]<%{public}s> setExpandedSessionIdentifiers - value: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    v21 = *(**(v2 + 96) + 424);

    v21(v22);
  }

  return result;
}

void sub_1002FFDBC(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(a1 + 1);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v9;
  *(v1 + 64) = *(a1 + 2);
  v10 = *(v1 + 80);
  *(v1 + 80) = *(a1 + 48);
  sub_10001D9AC(a1, v19, &qword_1005266C8, &unk_100458470);
  sub_10028AE60(v3, v4, v5, v6, v7, v8, v10);
  v11 = a1[1];
  if (v11)
  {
    v12 = *a1;
    v20 = *(a1 + 48);
    v13 = *(a1 + 2);
    v19[0] = *(a1 + 1);
    v19[1] = v13;
    if (v20 == 6)
    {
      v15 = *(*&v19[0] + 16);
      v14 = *(*&v19[0] + 24);

      v16 = sub_100037234();
      if ((v15 != *v16 || v14 != *(v16 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        swift_beginAccess();
        sub_1001C0CA0(v15, v14);
        swift_endAccess();
      }

      v17 = v12;
      v18 = v11;
      sub_1001E6204(&v17);
      sub_100238E4C(v19);
    }

    else
    {
      v17 = v12;
      v18 = v11;
      sub_1001E6204(&v17);
      sub_100238E4C(v19);
    }
  }
}

uint64_t sub_1002FFF30()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100028D40();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446466;
    v11 = *(v1 + 112);
    v12 = *(v1 + 120);

    v13 = sub_10002C9C8(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1026;
    *(v9 + 14) = *(v1 + 81);

    _os_log_impl(&_mh_execute_header, v7, v8, "[Client.Context]<%{public}s> setRequestsStableItemOrdering - value: %{BOOL,public}d", v9, 0x12u);
    sub_100026A44(v10);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100300128()
{

  sub_10028AE60(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1003001B8()
{
  _StringGuts.grow(_:)(58);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x746E656469202D20;
  v3._object = 0xEF203A7265696669;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_identifier));
  v4._countAndFlagsBits = 0x656C646E7562202CLL;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 0x6769666E6F63202CLL;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  type metadata accessor for RoutingSessionConfiguration();
  sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration, &protocol conformance descriptor for RoutingSessionConfiguration);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x7865746E6F63202CLL;
  v7._object = 0xEB00000000203A74;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_100036EFC();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

uint64_t sub_1003003A8()
{

  v1 = OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_configuration;
  v2 = type metadata accessor for RoutingSessionConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003004C8(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RoutingMode();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  v13 = v5[3];
  v20 = a1;
  v13(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v8, v2 + v11, v4);
  sub_100004930(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = v5[1];
  v14(v8, v4);
  if (a1)
  {
    v15 = v20;
  }

  else
  {
    v16 = *(*(v2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);
    v12(v8, v2 + v11, v4);
    v17 = *(*v16 + 392);

    v17(v8);

    v14(v20, v4);
    v15 = v8;
  }

  v14(v15, v4);
  return (v14)(v10, v4);
}

void *sub_100300764()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100028D40();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier), *(v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8), &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]<%{public}s> deinit", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);

  v13 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration;
  v14 = type metadata accessor for RoutingSessionConfiguration();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  v15 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
  v16 = type metadata accessor for RoutingMode();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_100300A64()
{
  sub_100300764();

  return swift_deallocClassInstance();
}

Swift::Int sub_100300AC8(uint64_t a1, uint64_t a2, void *a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100300B40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100300BC0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  v6 = (*a1 + *a5);
  v7 = *v6;
  v8 = v6[1];
  v9 = (v5 + *a5);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void *sub_100300BF8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 16) = &_swiftEmptySetSingleton;
  }

  return v1;
}

void sub_100300C38()
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100457C30;
  if (!kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  if (!kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  if (!kMRMediaRemoteOriginNowPlayingPlayerDidChange)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  if (!kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  if (!kMROriginNowPlayingPlaybackQueueChangedNotification)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 104) = v5;
  if (!kMROriginPlaybackQueueContentItemsChangedNotification)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v6;
  if (!kMROriginPlaybackQueueContentItemArtworkChangedNotification)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 136) = v7;
  if (!kMRMediaRemoteOriginSupportedCommandsDidChangeNotification)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v8;
  if (kMRMediaRemoteOriginNowPlayingPlayerStateDidChange)
  {
    v9 = kMRMediaRemoteOriginNowPlayingPlayerStateDidChange;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(v0 + 160) = v10;
    *(v0 + 168) = v12;
    qword_100534308 = v0;
    return;
  }

LABEL_19:
  __break(1u);
}

id sub_100300DA8()
{
  sub_1001BC5A8(&qword_1005249C8, &qword_100457080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F530;
  v1 = MRAVEndpointVolumeDidChangeNotification;
  v2 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  *(v0 + 32) = MRAVEndpointVolumeDidChangeNotification;
  *(v0 + 40) = v2;
  v6 = MRAVEndpointDeviceInfoDidChangeNotification;
  *(v0 + 48) = MRAVEndpointDeviceInfoDidChangeNotification;
  qword_100534318 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

void *sub_100300E4C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 40) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t (*sub_100300E8C(void **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100300E4C();
  return sub_100300ED4;
}

void *sub_100300EE4()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 48) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t (*sub_100300F24(void **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100300EE4();
  return sub_100300F6C;
}

void *sub_100300F7C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t (*sub_100300FBC(void **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100300F7C();
  return sub_100301004;
}

void *sub_100301014()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 64) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

void *sub_100301054()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for MusicFavoriteStatusDataSource();
    v3 = *sub_100021264();
    v1 = sub_10024CDB0(v3);
    (*(*v1 + 184))(v2, &off_1004CE030);
    *(v2 + 104) = v1;
  }

  return v1;
}

void *sub_1003010FC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_10030113C()
{
  v0 = swift_allocObject();
  sub_100301174();
  return v0;
}

void *sub_100301174()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 112) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v6 = sub_100028D40();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] init", v9, 0xCu);
    sub_100026A44(v10);
  }

  (*(v3 + 8))(v5, v2);
  sub_100319868();
  return v1;
}

double sub_100301380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void *a6, int a7)
{
  LODWORD(v129) = a7;
  v121 = a4;
  v122 = a6;
  v120 = a3;
  v123 = a2;
  v125 = a1;
  v111 = *v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v9 - 8);
  v128 = v9;
  __chkstk_darwin(v9);
  v117 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchQoS();
  v116 = *(v126 - 1);
  __chkstk_darwin(v126);
  v115 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for RoutingSessionConfiguration.Context();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v119 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v110 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v118 = &v108 - v16;
  v17 = type metadata accessor for RoutingSessionConfiguration();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  __chkstk_darwin(v17);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *sub_100021264();
  if ((v129 & 1) == 0)
  {
    goto LABEL_15;
  }

  v116 = a5;
  v117 = v18;
  a5 = v125;
  v128 = v17;
  v129 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    v18 = v124;
    v27 = sub_10002107C();
    v25 = v27;
    v109 = v13;
    if (!(v27 >> 62))
    {
      v17 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = &unk_100534000;
      if (v17)
      {
LABEL_5:
        v28 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v30 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_14:
              __break(1u);
LABEL_15:
              (*(v18 + 2))(v20, a5, v17);
              v31 = (v18[80] + 56) & ~v18[80];
              v32 = (v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
              v33 = swift_allocObject();
              v34 = v125;
              *(v33 + 2) = v124;
              *(v33 + 3) = v34;
              v35 = v120;
              v36 = v121;
              *(v33 + 4) = v123;
              *(v33 + 5) = v35;
              *(v33 + 6) = v36;
              (*(v18 + 4))(&v33[v31], v20, v17);
              v37 = v122;
              *&v33[v32] = v122;
              v135 = sub_1003295AC;
              v136 = v33;
              aBlock = _NSConcreteStackBlock;
              v132 = 1107296256;
              v133 = sub_100003D98;
              v134 = &unk_1004CD6C8;
              v38 = _Block_copy(&aBlock);
              swift_unknownObjectRetain();

              v39 = v37;
              v40 = v25;

              v41 = v115;
              static DispatchQoS.unspecified.getter();
              v130 = _swiftEmptyArrayStorage;
              sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_1001BC5A8(&unk_100522280, &unk_10044F590);
              sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
              v42 = v117;
              v43 = v128;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v38);

              (*(v127 + 1))(v42, v43);
              (*(v116 + 8))(v41, v126);
              goto LABEL_45;
            }
          }

          else
          {
            if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_21;
            }

            v30 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_14;
            }
          }

          v19 = *(v29 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);

          if (v19 == a5)
          {

            v44 = sub_100028D40();
            v45 = v119;
            v46 = v110;
            v47 = v109;
            (*(v119 + 16))(v110, v44, v109);
            swift_unknownObjectRetain();
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              *v50 = 136315394;
              v51 = _typeName(_:qualified:)();
              v53 = sub_10002C9C8(v51, v52, &v130);

              *(v50 + 4) = v53;
              *(v50 + 12) = 2082;
              aBlock = a5;
              v132 = v123;
              swift_unknownObjectRetain();
              sub_1001BC5A8(&qword_100525F20, &qword_100458118);
              v54 = String.init<A>(describing:)();
              v56 = sub_10002C9C8(v54, v55, &v130);

              *(v50 + 14) = v56;
              _os_log_impl(&_mh_execute_header, v48, v49, "[%s] registerClient - Client already registered: %{public}s", v50, 0x16u);
              swift_arrayDestroy();

              (*(v45 + 8))(v46, v47);
            }

            else
            {

              (*(v45 + 8))(v46, v47);
            }

            return result;
          }

          ++v28;
          if (v30 == v17)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v20 = &unk_100534000;
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_23:

  v58 = v117;
  v59 = v128;
  v126 = *(v117 + 2);
  v127 = v117 + 16;
  v126(v129, v116, v128);
  type metadata accessor for RoutingSessionServer.Client(0);
  v60 = swift_allocObject();
  v61 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
  v62 = enum case for RoutingMode.disabled(_:);
  v63 = type metadata accessor for RoutingMode();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  v64 = (v60 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
  v65 = static String.nanoIDFourChar()();
  v67 = v66;
  *v64 = v65;
  v64[1] = v66;
  type metadata accessor for RoutingSessionServer.Client.Context();
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = &_swiftEmptySetSingleton;
  *(v68 + 32) = 0u;
  *(v68 + 48) = 0u;
  *(v68 + 64) = 0u;
  *(v68 + 80) = 0;
  *(v68 + 88) = &_swiftEmptySetSingleton;
  type metadata accessor for RoutingClientEventContext(0);

  *(v68 + 96) = sub_10023708C();
  *(v68 + 104) = 0;
  *(v60 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) = v68;
  *(v68 + 112) = v65;
  *(v68 + 120) = v67;
  v69 = (v60 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v70 = a5;
  *v69 = a5;
  v71 = v123;
  v69[1] = v123;
  v72 = v121;
  *(v60 + 16) = v120;
  *(v60 + 24) = v72;
  v58[4](v60 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v129, v59);
  v73 = v122;
  *(v60 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue) = v122;
  aBlock = *(v18 + 3);
  swift_unknownObjectRetain();

  v74 = v73;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    *(v18 + 3) = aBlock;

    v75 = sub_100028D40();
    v77 = v118;
    v76 = v119;
    v78 = v109;
    (*(v119 + 16))(v118, v75, v109);
    swift_unknownObjectRetain();

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    v81 = os_log_type_enabled(v79, v80);
    v115 = v60;
    if (v81)
    {
      v82 = v70;
      v70 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v130 = v122;
      *v70 = 136315650;
      v83 = _typeName(_:qualified:)();
      v85 = sub_10002C9C8(v83, v84, &v130);

      *(v70 + 4) = v85;
      *(v70 + 12) = 2082;
      aBlock = v82;
      v132 = v71;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v86 = String.init<A>(describing:)();
      v88 = sub_10002C9C8(v86, v87, &v130);

      *(v70 + 14) = v88;
      *(v70 + 22) = 2082;

      v89 = sub_100036B00();
      v91 = v90;

      v92 = sub_10002C9C8(v89, v91, &v130);

      *(v70 + 24) = v92;
      _os_log_impl(&_mh_execute_header, v79, v80, "[%s] registerClient - client: %{public}s - %{public}s", v70, 0x20u);
      swift_arrayDestroy();

      (*(v119 + 8))(v118, v78);
      v18 = v124;
    }

    else
    {

      (*(v76 + 8))(v77, v78);
    }

    v93 = v112;
    RoutingSessionConfiguration.context.getter();
    v94 = v113;
    v95 = v114;
    v96 = (*(v113 + 88))(v93, v114);
    if (v96 == enum case for RoutingSessionConfiguration.Context.app(_:))
    {
      (*(v94 + 8))(v93, v95);
LABEL_30:
      v97 = sub_1000321BC();
      (*(*v97 + 280))(v97);

      goto LABEL_32;
    }

    if (v96 == enum case for RoutingSessionConfiguration.Context.ui(_:))
    {
      goto LABEL_30;
    }

    (*(v94 + 8))(v93, v95);
LABEL_32:
    v98 = v117;
    v99 = *(v18 + 3);
    aBlock = &_swiftEmptySetSingleton;
    v100 = v99 & 0xFFFFFFFFFFFFFF8;
    v71 = v99 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v71)
    {
      break;
    }

    v101 = 0;
    v125 = v99 & 0xC000000000000001;
    v60 = (v98 + 8);
    v102 = v128;
    while (1)
    {
      if (v125)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v101 >= *(v100 + 16))
        {
          goto LABEL_48;
        }
      }

      v103 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v18 = v99;
      v104 = v100;
      v105 = v129;
      (v126)();
      v70 = sub_10002CC04();
      (*v60)(v105, v102);
      sub_10031B580(v70);
      v100 = v104;
      v99 = v18;

      ++v101;
      if (v103 == v71)
      {
        v106 = aBlock;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v106 = &_swiftEmptySetSingleton;
LABEL_44:

  v107 = *sub_100028BB8();
  (*(v107 + 880))(v106);

  sub_100028D64(v115);
  sub_10031B8F4();
LABEL_45:

  return result;
}

double sub_1003022D4(int64_t a1, uint64_t a2, int a3)
{
  LODWORD(v261) = a3;
  v258 = a2;
  v246 = *v3;
  v234 = type metadata accessor for RoutingMode();
  v248 = *(v234 - 8);
  v5 = __chkstk_darwin(v234);
  v262 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v247 = &v212 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v257 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for DispatchQoS();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v12 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for DispatchTime();
  v231 = *(v233 - 8);
  v13 = __chkstk_darwin(v233);
  v230 = &v212 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v232 = &v212 - v15;
  v226 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v221 = &v212 - v16;
  v17 = sub_1001BC5A8(&qword_100525F30, &qword_100458128);
  v18 = __chkstk_darwin(v17 - 8);
  v220 = &v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v224 = (&v212 - v20);
  v223 = sub_1001BC5A8(&qword_100525F38, &unk_100458130);
  v227 = *(v223 - 8);
  v21 = __chkstk_darwin(v223);
  v229 = &v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v222 = (&v212 - v24);
  v228 = v25;
  __chkstk_darwin(v23);
  v239 = (&v212 - v26);
  v27 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  __chkstk_darwin(v27 - 8);
  v242 = &v212 - v28;
  v241 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v244 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v236 = *(v252 - 8);
  __chkstk_darwin(v252);
  v251 = &v212 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for RoutingSessionConfiguration();
  v245 = *(v264 - 8);
  __chkstk_darwin(v264);
  v263 = &v212 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for ContinuousRoutingControl();
  v253 = *(v250 - 8);
  __chkstk_darwin(v250);
  v249 = &v212 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  __chkstk_darwin(v33 - 8);
  v238 = (&v212 - v34);
  v260 = type metadata accessor for Logger();
  v259 = *(v260 - 1);
  v35 = __chkstk_darwin(v260);
  v37 = &v212 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v235 = &v212 - v39;
  v40 = __chkstk_darwin(v38);
  v237 = (&v212 - v41);
  __chkstk_darwin(v40);
  v243 = &v212 - v42;
  v43 = type metadata accessor for DispatchPredicate();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = (&v212 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100021264();
  v48 = *v47;
  if ((v261 & 1) == 0)
  {
    v70 = swift_allocObject();
    v70[2] = v3;
    v70[3] = a1;
    v70[4] = v258;
    *&v269 = sub_1003296B4;
    *(&v269 + 1) = v70;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v268 = sub_100003D98;
    *(&v268 + 1) = &unk_1004CD718;
    v71 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v72 = v48;

    static DispatchQoS.unspecified.getter();
    v265[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v71);

    (*(v257 + 8))(v10, v8);
    (*(v255 + 8))(v12, v256);
    goto LABEL_75;
  }

  v217 = v47;
  v218 = v12;
  v219 = v10;
  *v46 = v48;
  (*(v44 + 104))(v46, enum case for DispatchPredicate.onQueue(_:), v43);
  v49 = v48;
  v50 = _dispatchPreconditionTest(_:)();
  (*(v44 + 8))(v46, v43);
  if ((v50 & 1) == 0)
  {
    goto LABEL_81;
  }

  v216 = v8;
  v51 = sub_10002107C();
  v8 = v51;
  v254 = v3;
  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_5;
    }

LABEL_13:

    v57 = sub_100028D40();
    v58 = v259;
    v59 = v260;
    (*(v259 + 2))(v37, v57, v260);
    swift_unknownObjectRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v265[0] = swift_slowAlloc();
      *v62 = 136315394;
      v63 = _typeName(_:qualified:)();
      v65 = sub_10002C9C8(v63, v64, v265);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      *&aBlock = a1;
      *(&aBlock + 1) = v258;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v66 = String.init<A>(describing:)();
      v68 = sub_10002C9C8(v66, v67, v265);

      *(v62 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] unregisterClient - No internal client found matching client: %s", v62, 0x16u);
      swift_arrayDestroy();
    }

    (*(v58 + 1))(v37, v59);
    return result;
  }

LABEL_82:
  v52 = _CocoaArrayWrapper.endIndex.getter();
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_5:
  v53 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v53 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }
    }

    v55 = *(v54 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);

    if (v55 == a1)
    {
      break;
    }

    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    ++v53;
    if (v56 == v52)
    {
      goto LABEL_13;
    }
  }

  v73 = v254;
  *&aBlock = v254[3];

  v74 = sub_100304794(v53);
  v73[3] = aBlock;

  v75 = sub_100028D40();
  v76 = v259;
  v77 = *(v259 + 2);
  v78 = v243;
  v79 = v260;
  v215 = v259 + 16;
  v214 = v77;
  v77(v243, v75, v260);

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  v82 = os_log_type_enabled(v80, v81);
  v258 = v74;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v265[0] = v261;
    *v83 = 136315650;
    v84 = _typeName(_:qualified:)();
    v86 = sub_10002C9C8(v84, v85, v265);
    LODWORD(v213) = v81;
    v87 = v86;

    *(v83 + 4) = v87;
    *(v83 + 12) = 2082;
    aBlock = *(v258 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
    swift_unknownObjectRetain();
    sub_1001BC5A8(&qword_100525F20, &qword_100458118);
    v88 = String.init<A>(describing:)();
    v90 = sub_10002C9C8(v88, v89, v265);

    *(v83 + 14) = v90;
    *(v83 + 22) = 2082;

    v91 = sub_100036B00();
    v93 = v92;

    v94 = sub_10002C9C8(v91, v93, v265);

    *(v83 + 24) = v94;
    v74 = v258;
    _os_log_impl(&_mh_execute_header, v80, v213, "[%s] unregisterClient - client: %{public}s - %{public}s", v83, 0x20u);
    swift_arrayDestroy();
  }

  v243 = *(v76 + 1);
  (v243)(v78, v79);
  v95 = v248;
  v96 = v262;
  v8 = v247;
  v97 = v254;
  *&aBlock = sub_100300E4C();
  v37 = sub_10032A4E0(v74, &qword_1005266D8, &qword_100458488);
  v97[5] = aBlock;

  if (v37)
  {
    v98 = v237;
    v261 = v75;
    v99 = v75;
    v100 = v260;
    v214(v237, v99, v260);

    v101 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v101, v8))
    {
      v102 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      *&aBlock = v213;
      *v102 = 136315394;
      v103 = _typeName(_:qualified:)();
      v105 = sub_10002C9C8(v103, v104, &aBlock);

      *(v102 + 4) = v105;
      *(v102 + 12) = 2082;

      v106 = sub_100036B00();
      v108 = v107;

      v109 = sub_10002C9C8(v106, v108, &aBlock);

      *(v102 + 14) = v109;
      _os_log_impl(&_mh_execute_header, v101, v8, "[%s] unregisterClient - cancelling pending dialog interations for client: %{public}s", v102, 0x16u);
      swift_arrayDestroy();
    }

    (v243)(v98, v100);
    v110 = 0;
    v111 = 1 << v37[32];
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & *(v37 + 8);
    a1 = (v111 + 63) >> 6;
    v114 = v238;
    if (v113)
    {
      while (1)
      {
        v115 = v110;
LABEL_30:
        v116 = __clz(__rbit64(v113));
        v113 &= v113 - 1;
        v117 = *(*(v37 + 7) + ((v115 << 10) | (16 * v116)));
        v118 = type metadata accessor for RoutingDialog.Action();
        (*(*(v118 - 8) + 56))(v114, 1, 1, v118);
        sub_10032BA48();
        v8 = swift_allocError();
        *&aBlock = v8;

        v117(v114, &aBlock);

        sub_1000038A4(v114, &qword_100525F40, &qword_100458140);

        v96 = v262;
        if (!v113)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v115 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        goto LABEL_77;
      }

      if (v115 >= a1)
      {
        break;
      }

      v113 = *&v37[8 * v115 + 64];
      ++v110;
      if (v113)
      {
        v110 = v115;
        goto LABEL_30;
      }
    }

    v97 = v254;
    v95 = v248;
    v8 = v247;
    v74 = v258;
    v75 = v261;
  }

  *&aBlock = sub_100300EE4();
  v119 = sub_10032A4E0(v74, &qword_100526700, &unk_1004584C8);
  v97[6] = aBlock;

  v261 = v119;
  if (v119)
  {
    v120 = v235;
    v121 = v260;
    v214(v235, v75, v260);

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v37 = v74;
      v124 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&aBlock = v8;
      *v124 = 136315394;
      v125 = _typeName(_:qualified:)();
      v127 = sub_10002C9C8(v125, v126, &aBlock);

      *(v124 + 4) = v127;
      *(v124 + 12) = 2082;

      v128 = sub_100036B00();
      v130 = v129;

      v131 = sub_10002C9C8(v128, v130, &aBlock);

      *(v124 + 14) = v131;
      _os_log_impl(&_mh_execute_header, v122, v123, "[%s] unregisterClient - ending ongoing continuous controls for client: %{public}s", v124, 0x16u);
      swift_arrayDestroy();
    }

    (v243)(v120, v121);
    a1 = 0;
    v132 = *(v261 + 56);
    v235 = (v261 + 56);
    v133 = 1 << *(v261 + 32);
    v134 = -1;
    if (v133 < 64)
    {
      v134 = ~(-1 << v133);
    }

    v135 = v134 & v132;
    v260 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration;
    v136 = (v133 + 63) >> 6;
    v246 = v253 + 16;
    v243 = (v253 + 32);
    v238 = (v245 + 16);
    v237 = v236 + 1;
    v236 = (v245 + 8);
    v259 = v136;
    v137 = v249;
    for (i = v250; v135; v136 = v259)
    {
      v139 = a1;
LABEL_45:
      v140 = __clz(__rbit64(v135));
      v135 &= v135 - 1;
      v141 = v253;
      (*(v253 + 16))(v137, *(v261 + 48) + *(v253 + 72) * (v140 | (v139 << 6)), i);
      v142 = sub_100028BB8();
      v143 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v144 = swift_allocBox();
      v146 = v145;
      v147 = *(v143 + 48);
      (*(v141 + 32))(v145, v137, i);
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      *(v146 + v147) = sub_1001E789C(0, 0);
      v274[0] = v144;
      memset(&v274[1], 0, 24);
      v275 = 9;
      v148 = sub_100272B38(v274, &aBlock);
      v8 = v263;
      v149 = v264;
      (*v238)(v263, v260 + v258, v264, v148);
      v150 = v251;
      sub_10029BE08(v251);
      (*(*v142 + 912))(&aBlock, v8, v150);
      v37 = v271;
      v273 = aBlock;
      sub_1001E6204(&v273);
      v271[0] = v268;
      v271[1] = v269;
      v272 = v270;
      sub_100238E4C(v271);

      (*v237)(v150, v252);
      (*v236)(v8, v149);
      v96 = v262;
    }

    v74 = v258;
    while (1)
    {
      v139 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_78;
      }

      if (v139 >= v136)
      {
        break;
      }

      v135 = *&v235[8 * v139];
      ++a1;
      if (v135)
      {
        a1 = v139;
        goto LABEL_45;
      }
    }

    v97 = v254;
    v95 = v248;
    v8 = v247;
  }

  v265[0] = sub_100300F7C();

  sub_100304824(0, v74, &qword_1005266F8, &qword_1004584B8);
  v97[7] = v265[0];

  v265[0] = sub_100301014();

  sub_100304824(0, v74, &qword_1005266D0, &qword_100458480);
  v97[8] = v265[0];

  v151 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
  v152 = *(**(*(v74 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 384);

  v152(v153);
  v154 = v258;

  v265[0] = sub_100030790();
  v155 = v242;
  sub_10032A1F0(v154, v242);
  v97[4] = v265[0];

  if ((*(v240 + 48))(v155, 1, v241) == 1)
  {
    sub_1000038A4(v155, &qword_100523C30, &qword_100451B00);
  }

  else
  {
    v261 = v151;
    sub_10002AF68(v155, v244, type metadata accessor for HostedRoutingSessionSnapshot);
    if (MSVDeviceOSIsInternalInstall())
    {
      v156 = *(v154 + 16);
      v157 = *(v154 + 24);
      v158 = v223;
      v159 = *(v223 + 48);
      type metadata accessor for RoutingSessionServer.Client.Descriptor(0);
      v160 = swift_allocObject();
      v160[2] = v156;
      v160[3] = v157;
      v160[4] = *(v154 + v261);
      (*(v245 + 16))(v160 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_configuration, v154 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v264);
      v161 = *(v154 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      v162 = *(v154 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8);
      v163 = (v160 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_identifier);
      *v163 = v161;
      v163[1] = v162;
      v164 = v239;
      *v239 = v160;
      sub_10002ADF8(v244, v164 + v159, type metadata accessor for HostedRoutingSessionSnapshot);
      v165 = v222;
      sub_10001D9AC(v164, v222, &qword_100525F38, &unk_100458130);
      v166 = *(v158 + 48);
      v167 = v226;
      v168 = *(v226 + 48);
      v169 = v224;
      *v224 = *v165;
      sub_10002AF68(v165 + v166, v169 + v168, type metadata accessor for HostedRoutingSessionSnapshot);
      v170 = v225;
      (*(v225 + 56))(v169, 0, 1, v167);
      v171 = sub_1003010FC();
      v265[0] = v171;
      if ((*(v170 + 48))(v169, 1, v167) == 1)
      {
        swift_bridgeObjectRetain_n();

        sub_1000038A4(v169, &qword_100525F30, &qword_100458128);
        v172 = v220;
        v173 = v156;
        sub_10032A358(v156, v157, v220);
        sub_1000038A4(v172, &qword_100525F30, &qword_100458128);
        v174 = &v276;
      }

      else
      {
        v175 = v221;
        sub_10003AEF0(v169, v221, &qword_100525F28, &qword_100458120);
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v266 = v171;
        v173 = v156;
        sub_10032B8D4(v175, v156, v157, isUniquelyReferenced_nonNull_native);
        v174 = &v277;
      }

      v177 = v230;
      v97[14] = *(v174 - 32);

      v259 = *v217;
      static DispatchTime.now()();
      + infix(_:_:)();
      v260 = *(v231 + 8);
      (v260)(v177, v233);
      v178 = swift_allocObject();
      swift_weakInit();
      v179 = v229;
      sub_10001D9AC(v239, v229, &qword_100525F38, &unk_100458130);
      v180 = (*(v227 + 80) + 40) & ~*(v227 + 80);
      v181 = swift_allocObject();
      v181[2] = v178;
      v181[3] = v173;
      v181[4] = v157;
      sub_10003AEF0(v179, v181 + v180, &qword_100525F38, &unk_100458130);
      v265[4] = sub_10032A5AC;
      v265[5] = v181;
      v265[0] = _NSConcreteStackBlock;
      v265[1] = 1107296256;
      v265[2] = sub_100003D98;
      v265[3] = &unk_1004CD790;
      v182 = _Block_copy(v265);

      v183 = v218;
      static DispatchQoS.unspecified.getter();
      v266 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v184 = v219;
      v185 = v216;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v186 = v232;
      v187 = v259;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v182);

      (*(v257 + 8))(v184, v185);
      (*(v255 + 8))(v183, v256);
      (v260)(v186, v233);
      sub_1000038A4(v239, &qword_100525F38, &unk_100458130);

      v95 = v248;
      v96 = v262;
      v8 = v247;
      v154 = v258;
    }

    v188 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
    swift_beginAccess();
    v189 = v234;
    v262 = v95[2];
    (v262)(v8, v154 + v188, v234);
    v260 = v95[13];
    (v260)(v96, enum case for RoutingMode.detailed(_:), v189);
    v190 = static RoutingMode.== infix(_:_:)();
    v191 = v96;
    v192 = v95[1];
    v192(v191, v189);
    v192(v8, v189);
    if (v190 & 1) != 0 || ((v262)(v8, v258 + v188, v189), (v260)(v191, enum case for RoutingMode.localNetwork(_:), v189), v193 = static RoutingMode.== infix(_:_:)(), v192(v191, v189), v192(v8, v189), (v193))
    {
      v194 = v245;
      v195 = v263;
      v196 = v264;
      (*(v245 + 16))(v263, v258 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v264);

      v198 = v244;
      sub_10023BCF8(v197, v244, v195);

      (*(v194 + 8))(v195, v196);
      v199 = v198;
    }

    else
    {
      v199 = v244;
    }

    sub_10002AC54(v199, type metadata accessor for HostedRoutingSessionSnapshot);
  }

  v200 = v97[3];
  v266 = &_swiftEmptySetSingleton;
  v201 = v200 & 0xFFFFFFFFFFFFFF8;
  if (v200 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v37)
  {
    v210 = &_swiftEmptySetSingleton;
    goto LABEL_74;
  }

  a1 = 0;
  v262 = (v200 & 0xC000000000000001);
  v261 = v245 + 16;
  v202 = (v245 + 8);
  while (v262)
  {
    v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v204 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_71;
    }

LABEL_67:
    v205 = v200;
    v206 = v263;
    v207 = v37;
    v208 = v264;
    (*v261)(v263, v203 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v264);
    v8 = sub_10002CC04();
    v209 = v208;
    v37 = v207;
    (*v202)(v206, v209);
    sub_10031B580(v8);
    v200 = v205;

    ++a1;
    if (v204 == v207)
    {
      goto LABEL_72;
    }
  }

  if (a1 >= *(v201 + 16))
  {
    goto LABEL_79;
  }

  v203 = *(v200 + 8 * a1 + 32);

  v204 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  v210 = v266;
LABEL_74:

  v211 = *sub_100028BB8();
  (*(v211 + 880))(v210);

  sub_10031A34C();
  sub_10031B8F4();
LABEL_75:

  return result;
}

unint64_t sub_100304794(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10021C368(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

double sub_100304824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10032C2E4(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100031588(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v7;
      if (!v15)
      {
        sub_10032C9B8(a3, a4);
        v16 = v18;
      }

      sub_10032B714(v14, v16);

      *v7 = v16;
    }

    else
    {
    }
  }

  return result;
}

double sub_10030494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v4 = sub_1001BC5A8(&qword_100525F30, &qword_100458128);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1001BC5A8(&qword_100525F38, &unk_100458130);
  __chkstk_darwin(v7);
  v9 = (&v30 - v8);
  v10 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v30 - v16;
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = sub_1003010FC();
    if (v23[2] && (v24 = sub_10000698C(v32, v33), (v25 & 1) != 0))
    {
      sub_10001D9AC(v23[7] + *(v11 + 72) * v24, v17, &qword_100525F28, &qword_100458120);

      sub_10003AEF0(v17, v19, &qword_100525F28, &qword_100458120);
      sub_10001D9AC(v19, v14, &qword_100525F28, &qword_100458120);
      v26 = *v14;
      v27 = *(v10 + 48);
      sub_10001D9AC(v31, v9, &qword_100525F38, &unk_100458130);
      v28 = *(v7 + 48);
      v29 = sub_100304CC0(v26, v14 + v27, *v9, v9 + v28);

      sub_10002AC54(v9 + v28, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_10002AC54(v14 + v27, type metadata accessor for HostedRoutingSessionSnapshot);
      if (v29)
      {
        v34 = *(v22 + 112);

        sub_10032A358(v32, v33, v6);
        sub_1000038A4(v6, &qword_100525F30, &qword_100458128);
        sub_1000038A4(v19, &qword_100525F28, &qword_100458120);
        *(v22 + 112) = v34;

        return result;
      }

      sub_1000038A4(v19, &qword_100525F28, &qword_100458120);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100304CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001BC5A8(&qword_100525F38, &unk_100458130);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  *(&v18 - v13) = a1;
  sub_10002ADF8(a2, &v18 + *(v9 + 56) - v13, type metadata accessor for HostedRoutingSessionSnapshot);
  *v12 = a3;
  sub_10002ADF8(a4, v12 + *(v9 + 56), type metadata accessor for HostedRoutingSessionSnapshot);
  v15 = *(a1 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_identifier) == *(a3 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_identifier) && *(a1 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_identifier + 8) == *(a3 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_identifier + 8);
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for HostedRoutingSessionSnapshot(0);
    sub_100004930(&qword_100523CE8, type metadata accessor for HostedRoutingSessionSnapshot, &unk_100452930);

    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {

    v16 = 0;
  }

  sub_1000038A4(v12, &qword_100525F38, &unk_100458130);
  sub_1000038A4(v14, &qword_100525F38, &unk_100458130);
  return v16 & 1;
}

void sub_100304EB4(NSObject *a1, uint64_t a2, char *a3, char *a4, int a5)
{
  LODWORD(v206) = a5;
  v204 = a4;
  v208 = a3;
  v207 = a2;
  v205 = a1;
  v196 = *v5;
  v180 = type metadata accessor for InternalRoutingError();
  v170 = *(v180 - 8);
  __chkstk_darwin(v180);
  v179 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for DispatchWorkItemFlags();
  v202 = *(v203 - 1);
  __chkstk_darwin(v203);
  v8 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for DispatchQoS();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v10 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v11 - 8);
  v178 = &v161 - v12;
  v13 = sub_1001BC5A8(&qword_100525F50, &qword_100458148);
  __chkstk_darwin(v13 - 8);
  v175 = &v161 - v14;
  v177 = type metadata accessor for RoutingDialog();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v169 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Logger();
  v197 = *(v199 - 8);
  v16 = __chkstk_darwin(v199);
  v181 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v168 = &v161 - v19;
  v20 = __chkstk_darwin(v18);
  v198 = &v161 - v21;
  v22 = __chkstk_darwin(v20);
  v194 = &v161 - v23;
  __chkstk_darwin(v22);
  v172 = &v161 - v24;
  v191 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v188 = *(v191 - 8);
  v25 = __chkstk_darwin(v191);
  v186 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v184 = &v161 - v28;
  v174 = v29;
  __chkstk_darwin(v27);
  v190 = (&v161 - v30);
  v31 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v192 = *(v31 - 8);
  v32 = __chkstk_darwin(v31 - 8);
  v187 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v183 = &v161 - v35;
  v36 = __chkstk_darwin(v34);
  v189 = &v161 - v37;
  v173 = v38;
  __chkstk_darwin(v36);
  v193 = &v161 - v39;
  v40 = type metadata accessor for RoutingSessionConfiguration();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v185 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v182 = &v161 - v45;
  v171 = v46;
  __chkstk_darwin(v44);
  v48 = &v161 - v47;
  v49 = type metadata accessor for DispatchPredicate();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = (&v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_100021264();
  v54 = *v53;
  if ((v206 & 1) == 0)
  {
LABEL_15:
    v62 = swift_allocObject();
    v63 = v205;
    v62[2] = v5;
    v62[3] = v63;
    v64 = v208;
    v62[4] = v207;
    v62[5] = v64;
    v62[6] = v204;
    *&v214 = sub_10032BA9C;
    *(&v214 + 1) = v62;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v213 = sub_100003D98;
    *(&v213 + 1) = &unk_1004CD7E0;
    v65 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v66 = v54;
    static DispatchQoS.unspecified.getter();
    *&v209[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v67 = v203;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v65);

    (*(v202 + 8))(v8, v67);
    (*(v200 + 8))(v10, v201);

    return;
  }

  v206 = v53;
  v195 = v5;
  v164 = v10;
  v163 = v8;
  *v52 = v54;
  (*(v50 + 104))(v52, enum case for DispatchPredicate.onQueue(_:), v49);
  v55 = v54;
  v5 = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v52, v49);
  if (v5)
  {
    v56 = sub_10002107C();
    v5 = v56;
    v165 = v40;
    v166 = v48;
    v167 = v41;
    if (!(v56 >> 62))
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        goto LABEL_5;
      }

LABEL_31:

      v146 = sub_100028D40();
      v147 = v197;
      v148 = v198;
      v149 = v199;
      (*(v197 + 16))(v198, v146, v199);
      v150 = v207;

      v151 = v208;
      swift_unknownObjectRetain();
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        *&v209[0] = swift_slowAlloc();
        *v154 = 136315650;
        v155 = _typeName(_:qualified:)();
        v157 = sub_10002C9C8(v155, v156, v209);

        *(v154 + 4) = v157;
        *(v154 + 12) = 2082;
        *(v154 + 14) = sub_10002C9C8(v205, v150, v209);
        *(v154 + 22) = 2082;
        *&aBlock = v151;
        *(&aBlock + 1) = v204;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v158 = String.init<A>(describing:)();
        v160 = sub_10002C9C8(v158, v159, v209);

        *(v154 + 24) = v160;
        _os_log_impl(&_mh_execute_header, v152, v153, "[%s] interactWithItem - item: %{public}s, no internal client found matching client: %{public}s", v154, 0x20u);
        swift_arrayDestroy();

        (*(v147 + 8))(v198, v149);
      }

      else
      {

        (*(v147 + 8))(v148, v149);
      }

      return;
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }

  v57 = _CocoaArrayWrapper.endIndex.getter();
  if (!v57)
  {
    goto LABEL_31;
  }

LABEL_5:
  v10 = 0;
  v54 = v208;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v59 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v59 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_14;
      }
    }

    v8 = *(v58 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
    v60 = v58;
    ObjectType = swift_getObjectType();
    if (v8 == v54)
    {
      break;
    }

    ++v10;
    if (v59 == v57)
    {
      goto LABEL_31;
    }
  }

  v198 = ObjectType;

  v68 = *(v167 + 16);
  v69 = v166;
  v70 = v165;
  (v68)(v166, v60 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v165);
  v71 = sub_100030790();
  if (v71[2] && (v72 = sub_100031588(v60), (v73 & 1) != 0))
  {
    v74 = v189;
    sub_10002ADF8(v71[7] + *(v192 + 72) * v72, v189, type metadata accessor for HostedRoutingSessionSnapshot);

    v75 = v74;
    v76 = v193;
    sub_10002AF68(v75, v193, type metadata accessor for HostedRoutingSessionSnapshot);
    type metadata accessor for RoutingDecisionEngine();
    v77 = sub_1002D58C8(v205, v207, v76, v69);
    v204 = v68;
    v162 = v60;
    v93 = *(*v77 + 120);
    v194 = v77;
    v93(&aBlock);
    sub_100266350(v76, v190);
    v94 = *(&aBlock + 1);
    v206 = aBlock;

    v95 = sub_100028D40();
    v96 = v197;
    v97 = v172;
    v98 = v199;
    (*(v197 + 16))(v172, v95, v199);
    v216[0] = v213;
    v216[1] = v214;
    v217 = v215;

    sub_10026D080(v216, v209);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    v208 = v94;

    sub_100238E4C(v216);
    if (os_log_type_enabled(v99, v100))
    {
      v102 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v211 = v203;
      *v102 = 136315906;
      v103 = _typeName(_:qualified:)();
      v105 = sub_10002C9C8(v103, v104, &v211);

      *(v102 + 4) = v105;
      *(v102 + 12) = 2082;
      *(v102 + 14) = sub_10002C9C8(v206, v208, &v211);
      *(v102 + 22) = 2082;
      *(v102 + 24) = sub_10002C9C8(v205, v207, &v211);
      *(v102 + 32) = 2082;
      v76 = v193;
      v209[0] = aBlock;
      v209[1] = v213;
      v209[2] = v214;
      v210 = v215;
      sub_1002856A4();
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v108 = sub_10002C9C8(v106, v107, &v211);

      *(v102 + 34) = v108;
      _os_log_impl(&_mh_execute_header, v99, v100, "[%s] interactWithItem<%{public}s> - item: %{public}s produced interaction: %{public}s", v102, 0x2Au);
      swift_arrayDestroy();
    }

    (*(v96 + 8))(v97, v98);
    v109 = v183;
    sub_10002ADF8(v76, v183, type metadata accessor for HostedRoutingSessionSnapshot);
    v110 = v182;
    v111 = v165;
    v112 = v204;
    (v204)(v182, v166, v165);
    v113 = v188;
    v114 = *(v188 + 16);
    v115 = v184;
    v114(v184, v190, v191);
    sub_10002ADF8(v109, v187, type metadata accessor for HostedRoutingSessionSnapshot);
    (v112)(v185, v110, v111);
    v116 = v191;
    v114(v186, v115, v191);
    v117 = (*(v192 + 80) + 80) & ~*(v192 + 80);
    v118 = v167;
    v119 = (v173 + *(v167 + 80) + v117) & ~*(v167 + 80);
    v204 = ((v171 + v119 + 7) & 0xFFFFFFFFFFFFFFF8);
    v201 = (v204 + 15) & 0xFFFFFFFFFFFFFFF8;
    v120 = (*(v113 + 80) + v201 + 8) & ~*(v113 + 80);
    v121 = (v174 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
    v203 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
    v202 = (v203 + 23) & 0xFFFFFFFFFFFFFFF8;
    v122 = swift_allocObject();
    v123 = v213;
    *(v122 + 16) = aBlock;
    *(v122 + 32) = v123;
    *(v122 + 48) = v214;
    *(v122 + 64) = v215;
    *(v122 + 72) = v162;
    sub_10002AF68(v183, v122 + v117, type metadata accessor for HostedRoutingSessionSnapshot);
    (*(v118 + 32))(v122 + v119, v182, v111);
    *&v204[v122] = v194;
    v124 = v195;
    *(v122 + v201) = v195;
    (*(v113 + 32))(v122 + v120, v184, v116);
    v125 = (v122 + v121);
    v126 = v208;
    *v125 = v206;
    v125[1] = v126;
    v127 = (v203 + v122);
    v128 = v207;
    *v127 = v205;
    v127[1] = v128;
    v129 = v196;
    *(v122 + v202) = v196;
    v130 = *(*v124 + 584);
    swift_bridgeObjectRetain_n();

    sub_10026D080(v216, v209);

    v131 = v175;
    v130(&aBlock, v166, v193);
    v132 = v176;
    v133 = v177;
    if ((*(v176 + 48))(v131, 1, v177) == 1)
    {
      sub_1000038A4(v131, &qword_100525F50, &qword_100458148);
      v134 = v187;
      v135 = v185;
      v136 = v124;
      v137 = v186;
      sub_1003072F4(&aBlock, v162, v187, v185, v194, v136, v186, v206, v208, v205, v128, v129);

      v138 = v137;
      v139 = *(v188 + 8);
      v140 = v191;
      v139(v138, v191);
      v141 = v165;
      v204 = *(v167 + 8);
      (v204)(v135, v165);
      sub_10002AC54(v134, type metadata accessor for HostedRoutingSessionSnapshot);
    }

    else
    {
      v203 = *(v188 + 8);
      (v203)(v186, v191);
      v142 = v165;
      v204 = *(v167 + 8);
      (v204)(v185, v165);
      sub_10002AC54(v187, type metadata accessor for HostedRoutingSessionSnapshot);
      v143 = v169;
      (*(v132 + 32))(v169, v131, v133);
      sub_100309A3C(v143, v206, v208, &aBlock, v195, v162, v205, v128, v122, v129);

      (*(v132 + 8))(v143, v133);
      v141 = v142;
      v139 = v203;
      v140 = v191;
    }

    type metadata accessor for Preferences.Storage();
    v144 = v178;
    static Date.now.getter();
    v145 = type metadata accessor for Date();
    (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
    static Preferences.Storage.lastItemInteraction.setter();

    sub_100238E4C(v216);

    v139(v190, v140);
    sub_10002AC54(v193, type metadata accessor for HostedRoutingSessionSnapshot);
    (v204)(v166, v141);
  }

  else
  {

    v78 = sub_100028D40();
    v79 = v197;
    v80 = v194;
    v81 = v199;
    (*(v197 + 16))(v194, v78, v199);
    v82 = v207;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v85 = 136315650;
      v86 = _typeName(_:qualified:)();
      v88 = sub_10002C9C8(v86, v87, &aBlock);

      *(v85 + 4) = v88;
      *(v85 + 12) = 2082;
      *(v85 + 14) = sub_10002C9C8(v205, v82, &aBlock);
      *(v85 + 22) = 2082;

      v89 = sub_100036B00();
      v91 = v90;

      v92 = sub_10002C9C8(v89, v91, &aBlock);

      *(v85 + 24) = v92;
      _os_log_impl(&_mh_execute_header, v83, v84, "[%s] interactWithItem - item: %{public}s, No snapshot for client: %{public}s", v85, 0x20u);
      swift_arrayDestroy();

      (*(v79 + 8))(v194, v81);
      (*(v167 + 8))(v166, v165);
    }

    else
    {

      (*(v79 + 8))(v80, v81);
      (*(v167 + 8))(v69, v70);
    }
  }
}

double sub_1003072F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v88 = a8;
  v84 = a7;
  v81 = a6;
  v90 = a4;
  v16 = *a1;
  v17 = a1[1];
  v18 = *(a1 + 1);
  v89 = *(a1 + 2);
  v80 = v18;
  v19 = *(a1 + 48);
  v93 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v87 = *(v93 - 8);
  __chkstk_darwin(v93);
  v83 = v20;
  v92 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for RoutingSessionConfiguration();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = v21;
  v91 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for HostedRoutingItem(0);
  __chkstk_darwin(v76);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(a1 + 48);
  v28 = *(a1 + 2);
  v97[0] = *(a1 + 1);
  v97[1] = v28;
  if (v98 - 5 <= 1)
  {
    v99[0] = v16;
    v99[1] = v17;
    v100 = v80;
    v101 = v89;
    v102 = v19;
    v96 = *a1;

    sub_10028BC98(&v96, aBlock);
    sub_10026D080(v97, aBlock);
    sub_1002FFDBC(v99);
  }

  v78 = a12;
  *&v80 = a11;
  v77 = a10;
  v79 = a9;
  type metadata accessor for RoutingDecisionEngine();
  *&v89 = a3;
  v29 = sub_1002E5F94(a1, a3, v90);
  v30 = a2;
  if (v29)
  {
    v31 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v32 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    v33 = v32;
    v34 = *sub_100021264();

    if (v33 == v34)
    {
      v40 = *(v30 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      ObjectType = swift_getObjectType();
      v42 = *(v40 + 48);
      swift_unknownObjectRetain();
      v42(ObjectType, v40);

      swift_unknownObjectRelease();
    }

    else
    {
      v35 = *(v30 + v31);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100330FFC;
      *(v36 + 24) = v30;
      aBlock[4] = sub_1002253D8;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CE478;
      v71 = _Block_copy(aBlock);
      v70 = v35;

      static DispatchQoS.unspecified.getter();
      *&v95 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v37 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v38 = v71;
      v39 = v70;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v74 + 8))(v25, v37);
      (*(v72 + 8))(v27, v73);
    }
  }

  type metadata accessor for RoutingClientEvent(0);

  v44 = sub_10023AF94(v43);
  (*(*a5 + 144))();
  v45 = &v23[*(v76 + 64)];
  v46 = *v45;
  v47 = *(v45 + 1);
  v48 = *(v45 + 8);
  sub_10001DAE0(*v45, v47, *(v45 + 8));
  sub_10002AC54(v23, type metadata accessor for HostedRoutingItem);
  (*(*v44 + 240))(v46, v47, v48);
  v76 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
  v49 = *(**(*(v30 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

  v74 = v44;
  v49(v44);

  v50 = *sub_100028BB8();
  v51 = v90;
  v52 = v84;
  v75 = (*(v50 + 912))(a1, v90, v84);

  sub_10031C6F0(a1, v30);
  v73 = swift_allocObject();
  swift_weakInit();
  v72 = swift_allocObject();
  swift_weakInit();
  v81 = swift_allocObject();
  swift_weakInit();
  v95 = *a1;
  v53 = v85;
  v54 = v86;
  (*(v85 + 16))(v91, v51, v86);
  v55 = v87;
  (*(v87 + 16))(v92, v52, v93);
  v56 = (*(v53 + 80) + 104) & ~*(v53 + 80);
  v57 = *(v55 + 80);
  v90 = v30;
  v58 = (v82 + v57 + v56) & ~v57;
  v59 = (v83 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v72;
  *(v61 + 16) = v73;
  *(v61 + 24) = v62;
  v63 = *(a1 + 1);
  *(v61 + 32) = *a1;
  *(v61 + 48) = v63;
  *(v61 + 64) = *(a1 + 2);
  *(v61 + 80) = *(a1 + 48);
  v64 = v79;
  *(v61 + 88) = v88;
  *(v61 + 96) = v64;
  (*(v53 + 32))(v61 + v56, v91, v54);
  (*(v55 + 32))(v61 + v58, v92, v93);
  v65 = (v61 + v59);
  v66 = v80;
  *v65 = v77;
  v65[1] = v66;
  *(v61 + v60) = v81;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v67 = *(*v75 + 168);
  sub_10026D080(v97, aBlock);
  sub_10028BC98(&v95, aBlock);

  v67(sub_100330ED0, v61);

  v68 = *(*(v90 + v76) + 96);

  sub_10023C084(v74, v68, v89);

  return result;
}

void sub_100307DE8(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v234 = a8;
  v230 = a5;
  v14 = a4;
  v17 = *a4;
  v227 = *(a4 + 1);
  v228 = v17;
  v18 = *(a4 + 2);
  v250 = a4 + 1;
  v19 = *(a4 + 4);
  v225 = *(a4 + 3);
  v226 = v18;
  v223 = *(a4 + 5);
  v224 = v19;
  v222 = *(a4 + 48);
  v20 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v220 = *(v20 - 8);
  __chkstk_darwin(v20 - 8);
  v221 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v243 = *(v22 - 8);
  v244 = v22;
  __chkstk_darwin(v22);
  v241 = &v207 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for DispatchQoS();
  v240 = *(v242 - 8);
  __chkstk_darwin(v242);
  v25 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RoutingControl.RoutingControlType();
  v217 = *(v26 - 8);
  v218 = v26;
  __chkstk_darwin(v26);
  v216 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v239 = *(v233 - 8);
  __chkstk_darwin(v233);
  v215 = &v207 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_1001BC5A8(&qword_100526708, &qword_1004584D8);
  __chkstk_darwin(v231);
  v232 = &v207 - v29;
  v30 = sub_1001BC5A8(&qword_100524248, &unk_100457C10);
  v31 = __chkstk_darwin(v30 - 8);
  v229 = &v207 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v237 = &v207 - v34;
  __chkstk_darwin(v33);
  v238 = &v207 - v35;
  v36 = type metadata accessor for Logger();
  v248 = *(v36 - 8);
  v249 = v36;
  v37 = __chkstk_darwin(v36);
  v219 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v236 = &v207 - v40;
  __chkstk_darwin(v39);
  v42 = &v207 - v41;
  v43 = a1[1];
  v276 = *a1;
  v277 = v43;
  v278 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v45 = v276;
  v246 = v277;
  v247 = *(&v276 + 1);
  v245 = BYTE8(v277);
  v251 = a3;
  v252 = Strong;
  v235 = v14;
  v214 = v25;
  if (v276)
  {
    v209 = a12;
    swift_beginAccess();
    v46 = swift_weakLoadStrong();
    v212 = a6;
    v213 = v45;
    v211 = a7;
    if (v46)
    {
      v208 = v42;
      v47 = *(v46 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
      v48 = *(v47 + 32);
      v49 = *(v47 + 40);
      v51 = *(v47 + 48);
      v50 = *(v47 + 56);
      v53 = *(v47 + 64);
      v52 = *(v47 + 72);
      v54 = *(v47 + 80);
      v275 = *v14;
      v55 = v250[1];
      v273[0] = *v250;
      v273[1] = v55;
      v274 = *(v250 + 32);
      if (v49)
      {
        v228 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
        v210 = v46;
        *&v263 = v48;
        *(&v263 + 1) = v49;
        *&v264 = v51;
        *(&v264 + 1) = v50;
        *&v265 = v53;
        *(&v265 + 1) = v52;
        v266 = v54;
        v56 = v14[1];
        v259 = *v14;
        v260 = v56;
        v261 = v14[2];
        v262 = *(v14 + 48);
        sub_100330C4C(&v276, &v255);
        sub_1003311E4(v48, v49, v51, v50, v53, v52, v54);
        sub_100330C4C(&v276, &v255);
        sub_1003311E4(v48, v49, v51, v50, v53, v52, v54);
        sub_100276B34();
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();

        sub_1002485A4(v264, *(&v264 + 1), v265, *(&v265 + 1), v266);
        sub_10028AE60(v48, v49, v51, v50, v53, v52, v54);
        if (v57)
        {
          v58 = sub_100028D40();
          v60 = v248;
          v59 = v249;
          v61 = v208;
          (*(v248 + 16))(v208, v58, v249);
          sub_10028BC98(&v275, &v263);
          sub_10026D080(v273, &v263);
          v62 = v212;

          v63 = v210;

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          sub_1001E6204(&v275);
          sub_100238E4C(v273);

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v227 = swift_slowAlloc();
            *&v259 = v227;
            *v66 = 136315906;
            v67 = _typeName(_:qualified:)();
            v69 = sub_10002C9C8(v67, v68, &v259);

            *(v66 + 4) = v69;
            *(v66 + 12) = 2082;
            *(v66 + 14) = sub_10002C9C8(v230, v62, &v259);
            *(v66 + 22) = 2082;
            v70 = v235[1];
            v263 = *v235;
            v264 = v70;
            v265 = v235[2];
            v266 = *(v235 + 48);
            sub_1002856A4();
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = sub_10002C9C8(v71, v72, &v259);

            *(v66 + 24) = v73;
            *(v66 + 32) = 2082;

            v74 = sub_100036B00();
            v76 = v75;

            v77 = sub_10002C9C8(v74, v76, &v259);
            v63 = v210;

            *(v66 + 34) = v77;
            _os_log_impl(&_mh_execute_header, v64, v65, "[%s] interactWithItem<%{public}s> - clear failed source hiding interaction: %{public}s for client: %{public}s", v66, 0x2Au);
            swift_arrayDestroy();

            (*(v248 + 8))(v61, v249);
          }

          else
          {

            (*(v60 + 8))(v61, v59);
          }

          v78 = *(v63 + v228);
          v79 = *(v78 + 32);
          v80 = *(v78 + 40);
          v81 = *(v78 + 48);
          v82 = *(v78 + 56);
          v83 = *(v78 + 64);
          v84 = *(v78 + 72);
          *(v78 + 32) = 0u;
          *(v78 + 48) = 0u;
          *(v78 + 64) = 0u;
          v85 = *(v78 + 80);
          *(v78 + 80) = 0;

          v86 = v82;
          v87 = v210;
          sub_10028AE60(v79, v80, v81, v86, v83, v84, v85);

          v88 = *sub_100030F88();
          v14 = v235;
          v89 = (*(v88 + 264))(v235);
          v91 = v90;

          if (v91)
          {
            swift_beginAccess();

            sub_1001C0CA0(v89, v91);
            swift_endAccess();
          }

          sub_100028D64(v87);
        }

        else
        {

          v14 = v235;
        }
      }

      else
      {
        sub_100330C4C(&v276, &v263);
        sub_100330C4C(&v276, &v263);
        sub_10028BC98(&v275, &v263);
        sub_10026D080(v273, &v263);

        sub_10028AE60(v48, 0, v51, v50, v53, v52, v54);
        sub_10028AE60(v228, v227, v226, v225, v224, v223, v222);
      }

      v45 = v213;
    }

    else
    {
      sub_100330C4C(&v276, &v263);
      swift_errorRetain();
      sub_10023DC40(v247, v246, v245);
    }

    if (*(v14 + 48) != 6)
    {

      sub_10023DCB0(v247, v246, v245);
      goto LABEL_42;
    }

    v93 = *(*v250 + 16);
    v92 = *(*v250 + 24);
    v95 = *(*v250 + 32);
    v94 = *(*v250 + 40);
    v96 = *(*v250 + 48);

    v250 = v96;

    v97 = sub_100037234();
    if ((v93 != *v97 || v92 != *(v97 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v136 = v213;

      sub_10023DCB0(v247, v246, v245);

      v45 = v136;
      goto LABEL_42;
    }

    v228 = v97;
    v281[0] = v95;
    v281[1] = v94;
    v281[2] = v93;
    v281[3] = v92;
    v282 = 2;
    sub_100272B38(v281, &v255);
    v98 = sub_100028D40();
    v100 = v248;
    v99 = v249;
    v101 = *(v248 + 16);
    v102 = v236;
    v226 = v98;
    v227 = v248 + 16;
    v225 = v101;
    (v101)(v236);
    v272 = v255;
    v270[0] = v256;
    v270[1] = v257;
    v271 = v258;
    v103 = v212;

    sub_10028BC98(&v272, &v263);
    sub_10026D080(v270, &v263);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    sub_1001E6204(&v272);
    sub_100238E4C(v270);
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *&v259 = swift_slowAlloc();
      *v106 = 136315650;
      v107 = _typeName(_:qualified:)();
      v109 = sub_10002C9C8(v107, v108, &v259);

      *(v106 + 4) = v109;
      *(v106 + 12) = 2082;
      *(v106 + 14) = sub_10002C9C8(v230, v103, &v259);
      *(v106 + 22) = 2082;
      v263 = v255;
      v264 = v256;
      v265 = v257;
      v266 = v258;
      sub_1002856A4();
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = sub_10002C9C8(v110, v111, &v259);

      *(v106 + 24) = v112;
      _os_log_impl(&_mh_execute_header, v104, v105, "[%s] interactWithItem<%{public}s> - replacing with interaction: %{public}s", v106, 0x20u);
      swift_arrayDestroy();

      v113 = *(v100 + 8);
      v114 = v236;
      v115 = v249;
    }

    else
    {

      v113 = *(v100 + 8);
      v114 = v102;
      v115 = v99;
    }

    v236 = v113;
    (v113)(v114, v115);
    v116 = v232;
    swift_beginAccess();
    v117 = swift_weakLoadStrong();
    v118 = v233;
    if (v117)
    {
      sub_10031C6F0(&v255, v117);
    }

    v119 = sub_100028BB8();
    v120 = (*(*v119 + 912))(&v255, v211, v234);

    v121 = swift_allocObject();
    swift_weakInit();
    v122 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v123 = swift_allocObject();
    *(v123 + 16) = v121;
    *(v123 + 24) = v122;
    v124 = v256;
    *(v123 + 32) = v255;
    *(v123 + 48) = v124;
    *(v123 + 64) = v257;
    *(v123 + 80) = v258;
    v125 = *(*v120 + 168);
    sub_10028BC98(&v272, &v263);
    sub_10026D080(v270, &v263);
    v125(sub_10033192C, v123);

    v127 = v238;
    (*(*v250 + 184))(v126);
    v128 = v239;
    v129 = v237;
    (*(v239 + 104))(v237, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v118);
    (*(v128 + 56))(v129, 0, 1, v118);
    v130 = *(v231 + 48);
    sub_10001D9AC(v127, v116, &qword_100524248, &unk_100457C10);
    sub_10001D9AC(v129, v116 + v130, &qword_100524248, &unk_100457C10);
    v131 = *(v128 + 48);
    if (v131(v116, 1, v118) == 1)
    {
      sub_1000038A4(v129, &qword_100524248, &unk_100457C10);
      sub_1000038A4(v127, &qword_100524248, &unk_100457C10);
      v132 = v131(v116 + v130, 1, v118);
      v45 = v213;
      if (v132 == 1)
      {
        sub_1000038A4(v116, &qword_100524248, &unk_100457C10);
LABEL_35:
        v141 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v142 = swift_allocBox();
        v144 = v143;
        v145 = *(v141 + 48);
        (*(v217 + 104))(v216, enum case for RoutingControl.RoutingControlType.play(_:), v218);

        RoutingControl.init(type:sessionIdentifier:)();
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        *(v144 + v145) = sub_1001E789C(0, 0);
        v279[0] = v142;
        memset(&v279[1], 0, 24);
        v280 = 7;
        v146 = sub_100272B38(v279, &v259);
        v147 = v219;
        v148 = v249;
        v225(v219, v226, v249, v146);
        v269 = v259;
        v267[0] = v260;
        v267[1] = v261;
        v268 = v262;
        v149 = v212;

        sub_10028BC98(&v269, &v263);
        sub_10026D080(v267, &v263);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.default.getter();

        sub_1001E6204(&v269);
        sub_100238E4C(v267);
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v254[0] = swift_slowAlloc();
          *v152 = 136315650;
          v153 = _typeName(_:qualified:)();
          v155 = sub_10002C9C8(v153, v154, v254);

          *(v152 + 4) = v155;
          *(v152 + 12) = 2082;
          *(v152 + 14) = sub_10002C9C8(v230, v149, v254);
          *(v152 + 22) = 2082;
          v263 = v259;
          v264 = v260;
          v265 = v261;
          v266 = v262;
          sub_1002856A4();
          v156 = dispatch thunk of CustomStringConvertible.description.getter();
          v158 = sub_10002C9C8(v156, v157, v254);

          *(v152 + 24) = v158;
          _os_log_impl(&_mh_execute_header, v150, v151, "[%s] interactWithItem<%{public}s> - appending resume playback interaction: %{public}s", v152, 0x20u);
          swift_arrayDestroy();
          v45 = v213;

          v159 = v249;
          v160 = v147;
        }

        else
        {

          v160 = v147;
          v159 = v148;
        }

        (v236)(v160, v159);
        v161 = v234;
        swift_beginAccess();
        v162 = swift_weakLoadStrong();
        v163 = v252;
        if (v162)
        {
          sub_10031C6F0(&v259, v162);
        }

        v164 = *(**(v163 + 88) + 912);

        v165 = v164(&v259, v211, v161);

        v166 = swift_allocObject();
        swift_weakInit();

        v167 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v168 = swift_allocObject();
        *(v168 + 16) = v166;
        *(v168 + 24) = v167;
        v169 = v260;
        *(v168 + 32) = v259;
        *(v168 + 48) = v169;
        *(v168 + 64) = v261;
        *(v168 + 80) = v262;
        v170 = *(*v165 + 168);
        sub_10028BC98(&v269, &v263);
        sub_10026D080(v267, &v263);
        v170(sub_10033192C, v168);

        sub_10023DCB0(v247, v246, v245);
        sub_1001E6204(&v272);
        sub_100238E4C(v270);

        sub_1001E6204(&v269);
        v135 = v267;
        goto LABEL_41;
      }
    }

    else
    {
      v133 = v229;
      sub_10001D9AC(v116, v229, &qword_100524248, &unk_100457C10);
      v134 = v131(v116 + v130, 1, v118);
      v45 = v213;
      if (v134 != 1)
      {
        v137 = v239;
        v138 = v215;
        (*(v239 + 32))(v215, v116 + v130, v118);
        sub_100004930(&qword_100526710, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState, &protocol conformance descriptor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState);
        v139 = dispatch thunk of static Equatable.== infix(_:_:)();
        v140 = *(v137 + 8);
        v140(v138, v118);
        sub_1000038A4(v237, &qword_100524248, &unk_100457C10);
        sub_1000038A4(v238, &qword_100524248, &unk_100457C10);
        v140(v229, v118);
        sub_1000038A4(v116, &qword_100524248, &unk_100457C10);
        if (v139)
        {
          goto LABEL_35;
        }

LABEL_32:

        sub_10023DCB0(v247, v246, v245);
        sub_1001E6204(&v272);
        v135 = v270;
LABEL_41:
        sub_100238E4C(v135);
        goto LABEL_42;
      }

      sub_1000038A4(v237, &qword_100524248, &unk_100457C10);
      sub_1000038A4(v238, &qword_100524248, &unk_100457C10);
      (*(v239 + 8))(v133, v118);
    }

    sub_1000038A4(v116, &qword_100526708, &qword_1004584D8);
    goto LABEL_32;
  }

LABEL_42:
  swift_beginAccess();
  v171 = swift_weakLoadStrong();
  if (v171)
  {
    v172 = v171;
    v173 = swift_allocObject();
    *(v173 + 16) = v172;
    *(v173 + 24) = a9;
    *(v173 + 32) = a10;
    v174 = v277;
    *(v173 + 40) = v276;
    *(v173 + 56) = v174;
    *(v173 + 72) = v278;
    v175 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v176 = *(v172 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
    sub_100330C4C(&v276, &v263);

    v177 = v176;
    v178 = *sub_100021264();

    if (v177 == v178)
    {
      v250 = a9;
      v186 = *(v172 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      if (v45)
      {
        sub_1002D3DE8();
        v187 = swift_allocError();
        v188 = v246;
        v189 = v247;
        *v190 = v45;
        *(v190 + 8) = v189;
        *(v190 + 16) = v188;
        *(v190 + 24) = v245;
      }

      else
      {
        v187 = 0;
      }

      ObjectType = swift_getObjectType();
      v192 = *(v186 + 56);
      swift_unknownObjectRetain();
      v192(v250, a10, v187, ObjectType, v186);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100286E38(&v276);
      v179 = *(v172 + v175);
      v180 = swift_allocObject();
      *(v180 + 16) = sub_10033107C;
      *(v180 + 24) = v173;
      *&v265 = sub_1002253D8;
      *(&v265 + 1) = v180;
      *&v263 = _NSConcreteStackBlock;
      *(&v263 + 1) = 1107296256;
      *&v264 = sub_100003D98;
      *(&v264 + 1) = &unk_1004CE4F0;
      v181 = _Block_copy(&v263);
      v250 = v179;

      v182 = v214;
      static DispatchQoS.unspecified.getter();
      v254[0] = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v183 = v241;
      v184 = v244;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v185 = v250;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v181);

      (*(v243 + 8))(v183, v184);
      (*(v240 + 8))(v182, v242);
    }

    v193 = sub_100300FBC(v254);
    v194 = sub_10030D88C(v253, v172);
    v196 = v235;
    if (*v195)
    {
      sub_10032970C(&v263);
      (v194)(v253, 0);
      (v193)(v254, 0);
      if (*(&v263 + 1))
      {
        sub_1000038A4(&v263, &qword_1005266C8, &unk_100458470);
        v197 = *(v196 + 48);
        if (v197 <= 6 && ((1 << v197) & 0x47) != 0)
        {
          sub_10031C9DC(v172);
        }

        goto LABEL_56;
      }
    }

    else
    {
      (v194)(v253, 0);
      (v193)(v254, 0);
    }

    __break(1u);
    return;
  }

  sub_100286E38(&v276);
LABEL_56:
  swift_beginAccess();
  v198 = swift_weakLoadStrong();
  if (v198)
  {
    v199 = v198;
    (*(*v198 + 272))(&v276);
    swift_beginAccess();
    v200 = swift_weakLoadStrong();
    if (v200)
    {
      v201 = v200;
      v202 = sub_100030790();
      if (v202[2])
      {
        v203 = sub_100031588(v201);
        if (v204)
        {
          v205 = v221;
          sub_10002ADF8(v202[7] + *(v220 + 72) * v203, v221, type metadata accessor for HostedRoutingSessionSnapshot);

          v206 = *(*(v201 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

          sub_10023C08C(v199, v206, v205);

          sub_10002AC54(v205, type metadata accessor for HostedRoutingSessionSnapshot);
          return;
        }
      }
    }

    else
    {
    }
  }
}

double sub_100309A3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a7;
  v46 = a6;
  v49 = a5;
  v53 = a2;
  v54 = a10;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = RoutingDialog.identifier.getter();
  v19 = v18;
  v20 = sub_100028D40();
  v48 = v15;
  v21 = *(v15 + 16);
  v50 = v14;
  v21(v17, v20, v14);
  v22 = *(a4 + 16);
  v60[0] = *a4;
  v23 = *(a4 + 32);
  v58[0] = v22;
  v58[1] = v23;
  v59 = *(a4 + 48);

  sub_10028BC98(v60, v55);
  sub_10026D080(v58, v55);
  v47 = v17;
  v24 = v19;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  sub_1001E6204(v60);
  sub_100238E4C(v58);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    HIDWORD(v43) = v26;
    v28 = v27;
    v44 = swift_slowAlloc();
    v57 = v44;
    *v28 = 136315906;
    v29 = _typeName(_:qualified:)();
    v45 = v24;
    v31 = sub_10002C9C8(v29, v30, &v57);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_10002C9C8(v53, a3, &v57);
    *(v28 + 22) = 2082;
    *(v28 + 24) = sub_10002C9C8(v52, v45, &v57);
    *(v28 + 32) = 2082;
    v32 = *(a4 + 16);
    v55[0] = *a4;
    v55[1] = v32;
    v55[2] = *(a4 + 32);
    v56 = *(a4 + 48);
    sub_1002856A4();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_10002C9C8(v33, v34, &v57);
    v24 = v45;

    *(v28 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v25, BYTE4(v43), "[%s] interactWithItem<%{public}s> - present dialog: %{public}s for interaction: %{public}s", v28, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v48 + 8))(v47, v50);
  v36 = swift_allocObject();
  v37 = v46;
  swift_weakInit();
  v38 = swift_allocObject();
  v39 = v52;
  v38[2] = v53;
  v38[3] = a3;
  v38[4] = v39;
  v38[5] = v24;
  v40 = v51;
  v38[6] = v36;
  v38[7] = v40;
  v38[8] = a8;
  v38[9] = sub_10032BBC4;
  v41 = v54;
  v38[10] = a9;
  v38[11] = v41;

  sub_10031BFE0(a1, v37, sub_100330CFC, v38);

  return result;
}