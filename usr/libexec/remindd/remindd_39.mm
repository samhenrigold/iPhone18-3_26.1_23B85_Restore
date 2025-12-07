BOOL sub_1003A68DC(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 objectID];
  v10 = [v9 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v4 + 8))(v8, v3);
  return (v11 & 1) == 0;
}

void sub_1003A6A50(unint64_t a1, _TtC7remindd19RDXPCStorePerformer **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v280 = a5;
  v268 = a4;
  v279 = a3;
  v293 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  __chkstk_darwin(v293, v9);
  v278 = v264 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v277 = v264 - v13;
  v14 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v14 - 8, v15);
  v284 = v264 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = v264 - v19;
  __chkstk_darwin(v21, v22);
  v24 = v264 - v23;
  __chkstk_darwin(v25, v26);
  v292 = v264 - v27;
  __chkstk_darwin(v28, v29);
  v283 = v264 - v30;
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31, v33);
  v276 = v264 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v285 = v264 - v37;
  __chkstk_darwin(v38, v39);
  v295 = v264 - v40;
  if (a1 >> 62)
  {
    goto LABEL_86;
  }

  v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  if (v41)
  {
    v275 = a1 & 0xC000000000000001;
    v274 = a1 & 0xFFFFFFFFFFFFFF8;
    v297 = (v32 + 8);
    v290 = (v32 + 56);
    v291 = (v32 + 16);
    v43 = (v32 + 48);
    v266 = (v32 + 32);
    v32 = 0;
    v265 = "mismatches ckZoneOwnerName";
    v264[1] = "fferent in child[";
    *&v42 = 136315138;
    v281 = v42;
    v273 = a6;
    v272 = a2;
    v282 = v20;
    v267 = v24;
    v270 = v41;
    v271 = a1;
    v299 = v31;
    v286 = v43;
    while (1)
    {
      if (v275)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v45 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v32 >= *(v274 + 16))
        {
          goto LABEL_85;
        }

        v44 = *(a1 + 8 * v32 + 32);
        v45 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v41 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v288 = v45;
      v289 = v32;
      v46 = v44;
      v47 = [v46 objectID];
      v48 = [v47 URIRepresentation];

      v49 = v295;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = *a2;

      LOBYTE(v48) = sub_100241240(v49, v50);
      v50, v51, v52, v53, v54, v55, v56, v57;
      if (v48)
      {

        (*v297)(v49, v299);
        return;
      }

      v58 = *v291;
      v59 = v276;
      v60 = v299;
      (*v291)(v276, v49, v299);
      swift_beginAccess();
      v61 = v285;
      sub_10037DD44(v285, v59);
      swift_endAccess();
      v296 = *v297;
      v296(v61, v60);
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      v63 = sub_100006654(v62, qword_1009441D0);
      v64 = v46;
      v294 = v63;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v292;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v302 = v70;
        *v69 = v281;
        v71 = [v64 remObjectID];
        v300 = v71;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v72 = Optional.descriptionOrNil.getter();
        v74 = v73;

        v75 = sub_10000668C(v72, v74, &v302);
        v74, v76, v77, v78, v79, v80, v81, v82;
        *(v69 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v65, v66, "validateAndFixupReminderTree: ...Going to update child. {objectID: %s}", v69, 0xCu);
        sub_10000607C(v70);

        v68 = v292;
      }

      v83 = v286;
      v84 = [v64 parentReminder];
      if (v84)
      {
        v85 = v84;
        v86 = [v84 objectID];
        v87 = [v86 URIRepresentation];

        v88 = v283;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = 0;
      }

      else
      {
        v89 = 1;
        v88 = v283;
      }

      v90 = *v290;
      v31 = v299;
      (*v290)(v88, v89, 1, v299);
      v58(v68, v279, v31);
      v287 = v90;
      v90(v68, 0, 1, v31);
      v91 = *(v293 + 48);
      v92 = v277;
      sub_100010364(v88, v277, &unk_1009441F0, &qword_100795760);
      sub_100010364(v68, v92 + v91, &unk_1009441F0, &qword_100795760);
      v93 = *v83;
      v94 = (*v83)(v92, 1, v31);
      v298 = v64;
      if (v94 == 1)
      {
        break;
      }

      v95 = v267;
      sub_100010364(v92, v267, &unk_1009441F0, &qword_100795760);
      v269 = v93;
      if (v93(v92 + v91, 1, v31) == 1)
      {
        sub_1000050A4(v292, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v88, &unk_1009441F0, &qword_100795760);
        v296(v95, v31);
        v93 = v269;
        goto LABEL_24;
      }

      v131 = v285;
      (*v266)(v285, v92 + v91, v31);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v132 = dispatch thunk of static Equatable.== infix(_:_:)();
      v133 = v296;
      v296(v131, v31);
      sub_1000050A4(v292, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v283, &unk_1009441F0, &qword_100795760);
      v133(v95, v31);
      v64 = v298;
      sub_1000050A4(v92, &unk_1009441F0, &qword_100795760);
      v20 = v282;
      v93 = v269;
      if ((v132 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_29:
      v114 = [v64 list];
      if (v114)
      {
        v115 = v114;
        v116 = [v114 objectID];
        v117 = [v116 URIRepresentation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v299;
        v118 = 0;
      }

      else
      {
        v118 = 1;
      }

      a6 = v284;
      v287(v20, v118, 1, v31);
      v119 = *(v293 + 48);
      v24 = v278;
      sub_100010364(v20, v278, &unk_1009441F0, &qword_100795760);
      sub_100010364(v280, &v24[v119], &unk_1009441F0, &qword_100795760);
      if (v93(v24, 1, v31) == 1)
      {
        sub_1000050A4(v20, &unk_1009441F0, &qword_100795760);
        v120 = v93(&v24[v119], 1, v31);
        v121 = v273;
        a1 = v271;
        if (v120 == 1)
        {
          v122 = v298;

          sub_1000050A4(v24, &unk_1009441F0, &qword_100795760);
LABEL_47:
          a2 = v272;
          v130 = v295;
          goto LABEL_7;
        }

        goto LABEL_37;
      }

      sub_100010364(v24, a6, &unk_1009441F0, &qword_100795760);
      v123 = v93(&v24[v119], 1, v31);
      v121 = v273;
      if (v123 == 1)
      {
        sub_1000050A4(v20, &unk_1009441F0, &qword_100795760);
        v296(a6, v31);
        a1 = v271;
LABEL_37:
        sub_1000050A4(v24, &unk_100944250, &qword_1007957B0);
        goto LABEL_38;
      }

      v134 = v285;
      (*v266)(v285, &v24[v119], v31);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v135 = dispatch thunk of static Equatable.== infix(_:_:)();
      v136 = v134;
      v137 = v296;
      a6 = v297;
      v296(v136, v31);
      sub_1000050A4(v20, &unk_1009441F0, &qword_100795760);
      v137(v284, v31);
      sub_1000050A4(v24, &unk_1009441F0, &qword_100795760);
      a1 = v271;
      if (v135)
      {
        v138 = v298;

        goto LABEL_47;
      }

LABEL_38:
      v20 = v121;
      a6 = v294;
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();

      v126 = os_log_type_enabled(v124, v125);
      v24 = v298;
      if (v126)
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v302 = v128;
        *v127 = v281;
        if (v121)
        {
          v129 = [v20 remObjectID];
        }

        else
        {
          v129 = 0;
        }

        v300 = v129;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v139 = Optional.descriptionOrNil.getter();
        v141 = v140;

        a6 = sub_10000668C(v139, v141, &v302);
        v141, v142, v143, v144, v145, v146, v147, v148;
        *(v127 + 4) = a6;
        _os_log_impl(&_mh_execute_header, v124, v125, "validateAndFixupReminderTree: ......Updated {child.list: %s}", v127, 0xCu);
        sub_10000607C(v128);

        v24 = v298;
        v31 = v299;
        v130 = v295;
        if (v121)
        {
LABEL_50:
          v149 = v20;
          v150 = [v24 ckZoneOwnerName];
          if (v150)
          {
            v151 = v150;
            a6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v153 = v152;

            v24 = v298;
          }

          else
          {
            a6 = 0;
            v153 = 0;
          }

          v154 = v149;
          v155 = [v154 ckZoneOwnerName];
          a2 = v272;
          if (v155)
          {
            v163 = v155;
            v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v166 = v165;

            if (v153)
            {
              v24 = v298;
              if (!v166)
              {
                goto LABEL_60;
              }

              if (a6 == v164 && v153 == v166)
              {

                v153, v167, v168, v169, v170, v171, v172, v173;
                v166, v174, v175, v176, v177, v178, v179, v180;
LABEL_78:
                v31 = v299;
                v130 = v295;
                goto LABEL_6;
              }

              a6 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v153, v250, v251, v252, v253, v254, v255, v256;
              v166, v257, v258, v259, v260, v261, v262, v263;
              if ((a6 & 1) == 0)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v24 = v298;
              if (v166)
              {
                goto LABEL_62;
              }
            }
          }

          else if (v153)
          {
LABEL_60:
            v166 = v153;
LABEL_62:
            v166, v156, v157, v158, v159, v160, v161, v162;
LABEL_63:
            v302 = 0;
            v303 = 0xE000000000000000;
            _StringGuts.grow(_:)(100);
            v181._countAndFlagsBits = 0xD000000000000031;
            v181._object = (v265 | 0x8000000000000000);
            String.append(_:)(v181);
            v182 = [v24 remObjectID];
            if (v182)
            {
              v183 = v182;
              v184 = [v182 description];

              v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v187 = v186;
            }

            else
            {
              v187 = 0xE300000000000000;
              v185 = 7104878;
            }

            v188._countAndFlagsBits = v185;
            v188._object = v187;
            String.append(_:)(v188);
            v187, v189, v190, v191, v192, v193, v194, v195;
            v196._countAndFlagsBits = 0x4E72656E776F205DLL;
            v196._object = 0xEE00203D20656D61;
            String.append(_:)(v196);
            v197 = [v24 ckZoneOwnerName];

            if (v197)
            {
              v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v200 = v199;
            }

            else
            {
              v198 = 0;
              v200 = 0;
            }

            v300 = v198;
            v301 = v200;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v201._countAndFlagsBits = String.init<A>(describing:)();
            object = v201._object;
            String.append(_:)(v201);
            object, v203, v204, v205, v206, v207, v208, v209;
            v210._countAndFlagsBits = 0x6E6572727563202CLL;
            v210._object = 0xEE005B7473694C74;
            String.append(_:)(v210);
            v211 = [v154 remObjectID];
            if (v211)
            {
              v212 = v211;
              v213 = [v211 description];

              v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v216 = v215;
            }

            else
            {
              v216 = 0xE300000000000000;
              v214 = 7104878;
            }

            v217._countAndFlagsBits = v214;
            v217._object = v216;
            String.append(_:)(v217);
            v216, v218, v219, v220, v221, v222, v223, v224;
            v225._countAndFlagsBits = 0x72656E6E776F205DLL;
            v225._object = 0xEF203D20656D614ELL;
            String.append(_:)(v225);
            v226 = [v154 ckZoneOwnerName];

            if (v226)
            {
              v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v229 = v228;
            }

            else
            {
              v227 = 0;
              v229 = 0;
            }

            v300 = v227;
            v301 = v229;
            v230._countAndFlagsBits = String.init<A>(describing:)();
            v231 = v230._object;
            String.append(_:)(v230);
            v231, v232, v233, v234, v235, v236, v237, v238;
            a6 = v303;
            v239 = objc_opt_self();
            v240 = String._bridgeToObjectiveC()();
            v241 = String._bridgeToObjectiveC()();
            v242 = String._bridgeToObjectiveC()();
            a6, v243, v244, v245, v246, v247, v248, v249;
            [v239 faultAndPromptToFileRadarWithICTap2RadarType:4 title:v240 description:v241 logMessage:v242];

            v24 = v298;
            v31 = v299;
            v130 = v295;
            goto LABEL_6;
          }

          goto LABEL_78;
        }
      }

      else
      {

        v130 = v295;
        if (v121)
        {
          goto LABEL_50;
        }
      }

      a2 = v272;
LABEL_6:
      [v24 setList:v20];

LABEL_7:
      v296(v130, v31);
      v32 = v289 + 1;
      if (v288 == v270)
      {
        return;
      }
    }

    sub_1000050A4(v68, &unk_1009441F0, &qword_100795760);
    sub_1000050A4(v88, &unk_1009441F0, &qword_100795760);
    if (v93(v92 + v91, 1, v31) == 1)
    {
      sub_1000050A4(v92, &unk_1009441F0, &qword_100795760);
    }

    else
    {
LABEL_24:
      sub_1000050A4(v92, &unk_100944250, &qword_1007957B0);
LABEL_25:
      v96 = v268;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v302 = v100;
        *v99 = v281;
        v101 = [v96 remObjectID];
        v300 = v101;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v102 = Optional.descriptionOrNil.getter();
        v104 = v103;

        v105 = sub_10000668C(v102, v104, &v302);
        v106 = v104;
        v64 = v298;
        v106, v107, v108, v109, v110, v111, v112, v113;
        *(v99 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v97, v98, "validateAndFixupReminderTree: ......Updated {child.parent: %s}", v99, 0xCu);
        sub_10000607C(v100);
      }

      [v64 setParentReminder:v96];
      v31 = v299;
    }

    v20 = v282;
    goto LABEL_29;
  }
}

uint64_t sub_1003A7E20(void **a1, _TtC7remindd19RDXPCStorePerformer **a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v94 = a3;
  v97 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  __chkstk_darwin(v97, v6);
  v92 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v95 = &v82[-v10];
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v11 - 8, v12);
  v88 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v91 = &v82[-v16];
  __chkstk_darwin(v17, v18);
  v93 = &v82[-v19];
  __chkstk_darwin(v20, v21);
  v23 = &v82[-v22];
  __chkstk_darwin(v24, v25);
  v98 = &v82[-v26];
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v31 = &v82[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *a1;
  swift_beginAccess();
  v33 = *a2;

  v34 = [v32 objectID];
  v35 = [v34 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v35) = sub_100241240(v31, v33);
  v33, v36, v37, v38, v39, v40, v41, v42;
  v96 = v28;
  v45 = *(v28 + 8);
  v44 = v28 + 8;
  v43 = v45;
  v89 = v31;
  v45(v31, v27);
  if (v35)
  {
    goto LABEL_12;
  }

  v87 = v43;
  v46 = [v32 parentReminder];
  v86 = v32;
  if (v46)
  {
    v47 = v46;
    v48 = [v46 objectID];
    v49 = [v48 URIRepresentation];

    v50 = v98;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
    v52 = v95;
  }

  else
  {
    v51 = 1;
    v52 = v95;
    v50 = v98;
  }

  v53 = v96;
  v54 = v96 + 56;
  v55 = *(v96 + 56);
  v55(v50, v51, 1, v27);
  (*(v53 + 16))(v23, v94, v27);
  v94 = v54;
  v85 = v55;
  v55(v23, 0, 1, v27);
  v56 = *(v97 + 48);
  sub_100010364(v50, v52, &unk_1009441F0, &qword_100795760);
  sub_100010364(v23, v52 + v56, &unk_1009441F0, &qword_100795760);
  v57 = *(v53 + 48);
  if (v57(v52, 1, v27) == 1)
  {
    v95 = v57;
    sub_1000050A4(v23, &unk_1009441F0, &qword_100795760);
    sub_1000050A4(v50, &unk_1009441F0, &qword_100795760);
    if (v95(v52 + v56, 1, v27) == 1)
    {
      sub_1000050A4(v52, &unk_1009441F0, &qword_100795760);
      v58 = v86;
      goto LABEL_15;
    }
  }

  else
  {
    v59 = v93;
    sub_100010364(v52, v93, &unk_1009441F0, &qword_100795760);
    if (v57(v52 + v56, 1, v27) != 1)
    {
      v95 = v57;
      v65 = v89;
      (*(v96 + 32))(v89, v52 + v56, v27);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = v65;
      v67 = v87;
      v87(v66, v27);
      sub_1000050A4(v23, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v98, &unk_1009441F0, &qword_100795760);
      v67(v59, v27);
      v58 = v86;
      sub_1000050A4(v52, &unk_1009441F0, &qword_100795760);
      if ((v83 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_15:
      v68 = [v58 list];
      v84 = v44;
      if (v68)
      {
        v69 = v68;
        v70 = [v68 objectID];
        v71 = [v70 URIRepresentation];

        v72 = v91;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = 0;
      }

      else
      {
        v73 = 1;
        v72 = v91;
      }

      v74 = v92;
      v85(v72, v73, 1, v27);
      v75 = *(v97 + 48);
      sub_100010364(v72, v74, &unk_1009441F0, &qword_100795760);
      sub_100010364(v90, v74 + v75, &unk_1009441F0, &qword_100795760);
      v76 = v95;
      if (v95(v74, 1, v27) == 1)
      {
        sub_1000050A4(v72, &unk_1009441F0, &qword_100795760);
        if (v76(v74 + v75, 1, v27) == 1)
        {
          v60 = &unk_1009441F0;
          v61 = &qword_100795760;
          v62 = v74;
          goto LABEL_11;
        }
      }

      else
      {
        v77 = v88;
        sub_100010364(v74, v88, &unk_1009441F0, &qword_100795760);
        if (v76(v74 + v75, 1, v27) != 1)
        {
          v78 = v74 + v75;
          v79 = v89;
          (*(v96 + 32))(v89, v78, v27);
          sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v80 = dispatch thunk of static Equatable.== infix(_:_:)();
          v81 = v87;
          v87(v79, v27);
          sub_1000050A4(v72, &unk_1009441F0, &qword_100795760);
          v81(v77, v27);
          sub_1000050A4(v74, &unk_1009441F0, &qword_100795760);
          v63 = v80 ^ 1;
          return v63 & 1;
        }

        sub_1000050A4(v72, &unk_1009441F0, &qword_100795760);
        v87(v77, v27);
      }

      sub_1000050A4(v74, &unk_100944250, &qword_1007957B0);
      v63 = 1;
      return v63 & 1;
    }

    sub_1000050A4(v23, &unk_1009441F0, &qword_100795760);
    sub_1000050A4(v98, &unk_1009441F0, &qword_100795760);
    v87(v59, v27);
  }

  v60 = &unk_100944250;
  v61 = &qword_1007957B0;
  v62 = v52;
LABEL_11:
  sub_1000050A4(v62, v60, v61);
LABEL_12:
  v63 = 0;
  return v63 & 1;
}

void sub_1003A8724(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = [v15 ckParentReminderIdentifier];
    if (v16)
    {
      v42 = v16;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v25;
      v41 = v24;

      v26 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v26)
      {
        sub_10036A8F0(v26 + 1, 1);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = &_swiftEmptyDictionarySingleton[8];
      v29 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v30 = v27 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~_swiftEmptyDictionarySingleton[(v30 >> 6) + 8]) == 0)
      {
        v33 = 0;
        v34 = (63 - v29) >> 6;
        while (++v31 != v34 || (v33 & 1) == 0)
        {
          v35 = v31 == v34;
          if (v31 == v34)
          {
            v31 = 0;
          }

          v33 |= v35;
          v36 = v28[v31];
          if (v36 != -1)
          {
            v32 = __clz(__rbit64(~v36)) + (v31 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~_swiftEmptyDictionarySingleton[(v30 >> 6) + 8])) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v37 = 16 * v32;
      v38 = (_swiftEmptyDictionarySingleton[6] + v37);
      *v38 = v13;
      v38[1] = v12;
      v39 = (_swiftEmptyDictionarySingleton[7] + v37);
      *v39 = v41;
      v39[1] = v40;
      ++_swiftEmptyDictionarySingleton[2];
    }

    else
    {
      v12, v17, v18, v19, v20, v21, v22, v23;
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1003A898C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_1009441D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  a2, v13, v14, v15, v16, v17, v18, v19;
  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v125[0] = swift_slowAlloc();
    v21 = v125[0];
    *v20 = 136446210;
    *(v20 + 4) = sub_10000668C(a1, a2, v125);
    _os_log_impl(&_mh_execute_header, v11, v12, "findReminderRoot BEGIN {id: %{public}s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  v22 = *a4;
  if (*(*a4 + 16))
  {
    v23 = sub_100005F4C(a1, a2);
    if (v24)
    {
      v25 = (*(v22 + 56) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      swift_bridgeObjectRetain_n();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v27, v30, v31, v32, v33, v34, v35, v36;
      a2, v37, v38, v39, v40, v41, v42, v43;
      if (os_log_type_enabled(v28, v29))
      {
        v44 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v44 = 136446466;
        *(v44 + 4) = sub_10000668C(a1, a2, v125);
        *(v44 + 12) = 2082;
        *(v44 + 14) = sub_10000668C(v26, v27, v125);
        _os_log_impl(&_mh_execute_header, v28, v29, "findReminderRoot: Root already computed. {%{public}s => %{public}s}", v44, 0x16u);
        swift_arrayDestroy();
      }

LABEL_18:

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      a2, v103, v104, v105, v106, v107, v108, v109;
      if (os_log_type_enabled(v101, v102))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v125[0] = v111;
        *v110 = 136446210;
        *(v110 + 4) = sub_10000668C(a1, a2, v125);
        _os_log_impl(&_mh_execute_header, v101, v102, "findReminderRoot END {id: %{public}s}", v110, 0xCu);
        sub_10000607C(v111);
      }

      return v26;
    }
  }

  if (sub_100240BDC(a1, a2, *a5))
  {

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    a2, v47, v48, v49, v50, v51, v52, v53;
    if (os_log_type_enabled(v45, v46))
    {
      v54 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v54 = 136446466;
      *(v54 + 4) = sub_10000668C(a1, a2, v125);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_10000668C(a1, a2, v125);
      v55 = "findReminderRoot: Already visited this reminder. There is a loop. Assuming root is self. {%{public}s => %{public}s}";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v45, v46, v55, v54, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {

    sub_100378434(v125, a1, a2);
    v125[1], v56, v57, v58, v59, v60, v61, v62;
    if (*(a3 + 16))
    {
      v63 = sub_100005F4C(a1, a2);
      if (v64)
      {
        v65 = (*(a3 + 56) + 16 * v63);
        v66 = *v65;
        v67 = v65[1];

        v26 = sub_1003A898C(v66, v67, a3, a4, a5);
        v69 = v68;
        v67, v68, v70, v71, v72, v73, v74, v75;

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        v69, v78, v79, v80, v81, v82, v83, v84;
        a2, v85, v86, v87, v88, v89, v90, v91;
        if (os_log_type_enabled(v76, v77))
        {
          v92 = swift_slowAlloc();
          v125[0] = swift_slowAlloc();
          *v92 = 136446466;
          *(v92 + 4) = sub_10000668C(a1, a2, v125);
          *(v92 + 12) = 2082;
          *(v92 + 14) = sub_10000668C(v26, v69, v125);
          _os_log_impl(&_mh_execute_header, v76, v77, "findReminderRoot: Recursively found the root. {%{public}s => %{public}s}", v92, 0x16u);
          swift_arrayDestroy();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = *a4;
        sub_1002C72CC(v26, v69, a1, a2, isUniquelyReferenced_nonNull_native);
        a2, v94, v95, v96, v97, v98, v99, v100;
        *a4 = v125[0];
        goto LABEL_18;
      }
    }

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    a2, v112, v113, v114, v115, v116, v117, v118;
    if (os_log_type_enabled(v45, v46))
    {
      v54 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v54 = 136446466;
      *(v54 + 4) = sub_10000668C(a1, a2, v125);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_10000668C(a1, a2, v125);
      v55 = "findReminderRoot: This reminder has no parent. The root is self. {%{public}s => %{public}s}";
      goto LABEL_23;
    }
  }

  v119 = swift_isUniquelyReferenced_nonNull_native();
  v125[0] = *a4;
  sub_1002C72CC(a1, a2, a1, a2, v119);
  *a4 = v125[0];

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v125[0] = v123;
    *v122 = 136446210;
    *(v122 + 4) = sub_10000668C(a1, a2, v125);
    _os_log_impl(&_mh_execute_header, v120, v121, "findReminderRoot END {id: %{public}s}", v122, 0xCu);
    sub_10000607C(v123);
  }

  return a1;
}

void sub_1003A9190(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();
  v13 = v5 + 56;
  v14 = -1 << *(v5 + 32);
  v15 = v6 & ~v14;
  v16 = v15 >> 6;
  v17 = *(v5 + 56 + 8 * (v15 >> 6));
  v18 = 1 << v15;
  if (((1 << v15) & v17) != 0)
  {
    v19 = ~v14;
    v20 = *(v5 + 48);
    do
    {
      v21 = (v20 + 16 * v15);
      v22 = v21[1];
      if (v22)
      {
        if (a2)
        {
          if (*v21 == a1 && v22 == a2)
          {
            goto LABEL_20;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v22 = v21[1];
            goto LABEL_20;
          }
        }
      }

      else if (!a2)
      {
        v22 = 0;
LABEL_20:
        *v21 = a1;
        v21[1] = a2;

        v22, v22, v7, v8, v9, v10, v11, v12;
        return;
      }

      v15 = (v15 + 1) & v19;
      v16 = v15 >> 6;
      v17 = *(v13 + 8 * (v15 >> 6));
      v18 = 1 << v15;
    }

    while ((v17 & (1 << v15)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v13 + 8 * v16) = v17 | v18;
    v24 = (*(v5 + 48) + 16 * v15);
    *v24 = a1;
    v24[1] = a2;
    v25 = *(v5 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      *(v5 + 16) = v27;
      return;
    }
  }

  __break(1u);
}

void sub_1003A932C(uint64_t a1, unint64_t *a2, void *a3)
{
  v7 = *v3;
  v8 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v9 = v7 + 56;
  v10 = -1 << *(v7 + 32);
  v11 = v8 & ~v10;
  v12 = v11 >> 6;
  v13 = *(v7 + 56 + 8 * (v11 >> 6));
  v14 = 1 << v11;
  if (((1 << v11) & v13) != 0)
  {
    v15 = ~v10;
    sub_1000060C8(0, a2, a3);
    while (1)
    {
      v16 = *(*(v7 + 48) + 8 * v11);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v15;
      v12 = v11 >> 6;
      v13 = *(v9 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = *(v7 + 48);
    v20 = *(v19 + 8 * v11);
    *(v19 + 8 * v11) = a1;
  }

  else
  {
LABEL_5:
    v18 = *(v7 + 16);
    if (v18 >= *(v7 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v9 + 8 * v12) = v14 | v13;
      *(*(v7 + 48) + 8 * v11) = a1;
      *(v7 + 16) = v18 + 1;
    }
  }
}

unint64_t *sub_1003A946C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003A9534(v11, a2, a3, a4, a5, a6);
    v13 = v12;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

void sub_1003A9534(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  v44 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = v13 | (v7 << 6);
    if (*(a4 + 16))
    {
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = *(*(a3 + 56) + 8 * v16);
      v20 = *v17;
      v19 = v17[1];

      v21 = v18;
      v22 = sub_100005F4C(v20, v19);
      if (v23)
      {
        v30 = (*(a4 + 56) + 16 * v22);
        v31 = v30[1];
        if (*v30 == a5 && v31 == a6)
        {
          v19, v31, a5, a6, v26, v27, v28, v29;

LABEL_21:
          *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          if (__OFADD__(v44++, 1))
          {
            __break(1u);
LABEL_24:
            sub_10055B320(a1, a2, v44, a3);
            return;
          }
        }

        else
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19, v34, v35, v36, v37, v38, v39, v40;

          if (v33)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v19, v23, v24, v25, v26, v27, v28, v29;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_24;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_1003A96EC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, char *a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v60 = swift_slowAlloc();

      v16 = sub_1003A946C(v60, v11, a1, a2, a3, a4);

      a4, v61, v62, v63, v64, v65, v66, v67;
      a2, v68, v69, v70, v71, v72, v73, v74;
      goto LABEL_6;
    }
  }

  __chkstk_darwin(v13, v14);
  bzero(&v75 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  sub_1003A9534((&v75 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a2, a3, a4);
  v16 = v15;
  a2, v17, v18, v19, v20, v21, v22, v23;
  a4, v24, v25, v26, v27, v28, v29, v30;
  if (v4)
  {
    swift_willThrow();
  }

  a4, v31, v32, v33, v34, v35, v36, v37;
  a2, v38, v39, v40, v41, v42, v43, v44;
LABEL_6:
  a4, v45, v46, v47, v48, v49, v50, v51;
  a2, v52, v53, v54, v55, v56, v57, v58;
  return v16;
}

unint64_t sub_1003A991C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003A9970()
{
  result = qword_100944200;
  if (!qword_100944200)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944200);
  }

  return result;
}

uint64_t sub_1003A99EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s6FieldsOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003A9BE8(uint64_t a1)
{
  result = sub_1003A9C10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003A9C10()
{
  result = qword_100944268;
  if (!qword_100944268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944268);
  }

  return result;
}

unint64_t sub_1003A9C64(uint64_t a1)
{
  result = sub_1003A9C8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003A9C8C()
{
  result = qword_100944270;
  if (!qword_100944270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944270);
  }

  return result;
}

unint64_t sub_1003A9CE4()
{
  result = qword_100944278;
  if (!qword_100944278)
  {
    sub_1000F514C(&qword_100944280, &qword_1007A4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944278);
  }

  return result;
}

unint64_t sub_1003A9D4C()
{
  result = qword_100944288;
  if (!qword_100944288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944288);
  }

  return result;
}

void sub_1003A9DBC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v55 - v9;
  v11 = sub_1000F5104(&qword_1009442A8, &unk_1007A4C80);
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v55 - v15;
  if (!a1)
  {
    goto LABEL_16;
  }

  v56 = a2;
  v17 = a1;
  if (![v17 inactive])
  {
    v57 = v3;

    v29 = v17;
    v30 = [v29 remObjectID];
    if (v30)
    {
      v31 = v30;
      v32 = [v29 objectID];
      if ([v32 isTemporaryID])
      {
        v33 = v31;
        if (qword_100935F40 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_100006654(v34, qword_100944290);
        v35 = v31;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138543362;
          *(v38 + 4) = v35;
          *v39 = v33;
          v40 = v35;
          _os_log_impl(&_mh_execute_header, v36, v37, "primaryActiveCloudKitAccountOptimized: Unexpectedly the primaryActiveCloudKitAccount.objectID() isTemporary, current design is to defer setting the account NSManagedObjectID cache until after saved {remObjectID: %{public}@}", v38, 0xCu);
          sub_100039860(v39);
        }

        else
        {
        }
      }

      else
      {
        (*(v12 + 104))(v16, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v11);
        v43 = swift_allocObject();
        *(v43 + 16) = v32;
        *(v43 + 24) = v31;
        v44 = v32;
        v45 = v31;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v12 + 8))(v16, v11);
      }

      goto LABEL_27;
    }

    v3 = v57;
LABEL_16:
    v57 = v3;
    v41 = enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:);
    (*(v12 + 104))(v16, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v11, v14);
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();
    (*(v12 + 8))(v16, v11);
    (*(v7 + 104))(v10, v41, v6);
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();
    (*(v7 + 8))(v10, v6);
    if (!a1)
    {
      v42 = 0;
LABEL_28:
      [v57 updateInMemoryPrimaryActiveCKAccountREMObjectIDIfNecessary:v42];

      return;
    }

    v29 = a1;
LABEL_27:
    v42 = [v29 remObjectID];
    goto LABEL_28;
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100944290);
  v55 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58 = v22;
    *v21 = 136446210;
    v23 = [v55 remObjectID];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 description];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v46 = sub_10000668C(v26, v28, &v58);
    v28, v47, v48, v49, v50, v51, v52, v53;
    *(v21 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v19, v20, "updatePrimaryActiveCloudKitAccount: ATTENTION Someone is trying to inactivate an existing CK account {remObjectID: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);
  }

  else
  {
  }

  sub_1003A9DBC(0, v56);
  v54 = v55;
}

uint64_t sub_1003AA440()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944290);
  v1 = sub_100006654(v0, qword_100944290);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003AA508(void *a1)
{
  v3 = [a1 accountTypeHost];
  v4 = [v3 isPrimaryCloudKit];

  if (v4)
  {
    if (([a1 markedForRemoval] & 1) != 0 || objc_msgSend(a1, "inactive"))
    {
      v49 = [a1 remObjectID];
      v5 = [v1 inMemoryPrimaryActiveCKAccountREMObjectID];
      if (v5)
      {
        v6 = v5;
        sub_10003980C();
        v7 = v49;
        v8 = v6;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          if (qword_100935F40 != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          sub_100006654(v10, qword_100944290);
          v49 = v7;
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            *v13 = 138543362;
            *(v13 + 4) = v49;
            *v14 = v49;
            v15 = v49;
            _os_log_impl(&_mh_execute_header, v11, v12, "primaryCloudKitAccountDidDisable: Primary CloudKit account removed or deactivated, unsetting both inMemoryPrimaryActiveCKAccountREMObjectID and clear its NSManagedObjectID cache {removing: %{public}@}", v13, 0xCu);
            sub_100039860(v14);
          }

          if (qword_1009367D8 != -1)
          {
            swift_once();
          }

          v16 = qword_1009752E8;
          if (qword_1009367E0 != -1)
          {
            v47 = qword_1009752E8;
            swift_once();
            v16 = v47;
          }

          sub_1003A9DBC(0, v16);
        }

        else
        {
          if (qword_100935F40 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_100006654(v29, qword_100944290);
          v30 = v7;
          v8 = v8;
          v49 = Logger.logObject.getter();
          v31 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v49, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v50 = v34;
            *v32 = 136446466;
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v35 = Optional.descriptionOrNil.getter();
            v37 = v36;
            v38 = sub_10000668C(v35, v36, &v50);
            v37, v39, v40, v41, v42, v43, v44, v45;
            *(v32 + 4) = v38;
            *(v32 + 12) = 2114;
            *(v32 + 14) = v30;
            *v33 = v30;
            v46 = v30;
            _os_log_impl(&_mh_execute_header, v49, v31, "primaryCloudKitAccountDidDisable: A different primary active CloudKit account already exists (inMemoryPrimaryActiveCKAccountREMObjectID != nil) when we are removing or deactivating another different CloudKit account, not updating the in-memory value in this case {currentAccountID: %{public}s, removedAccountID: %{public}@}", v32, 0x16u);
            sub_100039860(v33);

            sub_10000607C(v34);

            return;
          }
        }
      }

      goto LABEL_31;
    }

    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100944290);
    v24 = a1;
    v49 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v49, v25))
    {
LABEL_31:
      v22 = v49;
      goto LABEL_32;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138543362;
    v28 = [v24 remObjectID];
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v49, v25, "primaryCloudKitAccountDidDisable: Passed in an account storage that is neither markedForRemoval nor inactive {remObjectID: %{public}@}", v26, 0xCu);
    sub_100039860(v27);

LABEL_19:

    goto LABEL_31;
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100944290);
  v48 = a1;
  v49 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v49, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543618;
    v21 = [v48 remObjectID];
    *(v19 + 4) = v21;
    *v20 = v21;
    *(v19 + 12) = 2048;
    *(v19 + 14) = [v48 type];

    _os_log_impl(&_mh_execute_header, v49, v18, "primaryCloudKitAccountDidDisable: Passed in an account storage that is not .primaryCloudKit {remObjectID: %{public}@, type: %ld}", v19, 0x16u);
    sub_100039860(v20);

    goto LABEL_19;
  }

  v22 = v48;
LABEL_32:
}

void sub_1003AAB98(void *a1)
{
  v3 = [a1 accountTypeHost];
  v4 = [v3 isPrimaryCloudKit];

  if (!v4)
  {
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100944290);
    v49 = a1;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(oslog, v12))
    {

      v16 = v49;
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543618;
    v15 = [v49 remObjectID];
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2048;
    *(v13 + 14) = [v49 type];

    _os_log_impl(&_mh_execute_header, oslog, v12, "primaryCloudKitAccountDidEnable: Passed in an account storage that is not .primaryCloudKit {remObjectID: %{public}@, type: %ld}", v13, 0x16u);
    sub_100039860(v14);

    goto LABEL_12;
  }

  if ([a1 markedForRemoval] & 1) != 0 || (objc_msgSend(a1, "inactive"))
  {
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100944290);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = [v6 remObjectID];
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, oslog, v7, "primaryCloudKitAccountDidEnable: Passed in an account storage that is markedForRemoval or inactive {remObjectID: %{public}@}", v8, 0xCu);
    sub_100039860(v9);

LABEL_12:

LABEL_13:
    v16 = oslog;
LABEL_15:

    return;
  }

  v17 = [a1 remObjectID];
  osloga = v1;
  v18 = [v1 inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v18)
  {
    sub_10003980C();
    v19 = v17;
    v20 = v18;
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      if (qword_100935F40 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100944290);
      v23 = v19;
      v24 = v20;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v52 = v29;
        *v27 = 136446466;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v30 = Optional.descriptionOrNil.getter();
        v32 = v31;
        v33 = sub_10000668C(v30, v31, &v52);
        v32, v34, v35, v36, v37, v38, v39, v40;
        *(v27 + 4) = v33;
        *(v27 + 12) = 2114;
        *(v27 + 14) = v23;
        *v28 = v23;
        v41 = v23;
        _os_log_impl(&_mh_execute_header, v25, v26, "primaryCloudKitAccountDidEnable: A primary active CloudKit account already exists (inMemoryPrimaryActiveCKAccountREMObjectID != nil) when we are adding or activating another different CloudKit account, we will still update the in-memory value {currentAccountID: %{public}s, newAccountID: %{public}@}", v27, 0x16u);
        sub_100039860(v28);

        sub_10000607C(v29);
      }
    }
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100006654(v42, qword_100944290);
  v43 = v17;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138543362;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "primaryCloudKitAccountDidEnable: Primary CloudKit account added or activated, setting inMemoryPrimaryActiveCKAccountREMObjectID {newAccountID: %{public}@}", v46, 0xCu);
    sub_100039860(v47);
  }

  [osloga updateInMemoryPrimaryActiveCKAccountREMObjectIDIfNecessary:v43];
}

void sub_1003AB1AC(uint64_t a1, void *a2, void *a3)
{
  REMCacheContext.setObject(_:forKey:)();
  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100944290);
  v6 = a3;
  v7 = a2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v7;
    *v10 = v6;
    v10[1] = a2;
    v11 = v6;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v8, "updatePrimaryActiveCloudKitAccount: Writing RDPrimaryActiveCloudKitAccountManagedObjectIDCache with updated CD account {remObjectID: %{public}@, mid: %{public}@}", v9, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
  }
}

void sub_1003AB354(uint64_t a1, const char *a2)
{
  REMCacheContext.clearAll()();
  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100944290);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

NSString sub_1003AB44C()
{
  result = String._bridgeToObjectiveC()();
  qword_100974D60 = result;
  return result;
}

void sub_1003AB484(char a1)
{
  v2 = v1;
  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100944290);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446210;
    if (a1)
    {
      v9 = 0x64656C62616E65;
    }

    else
    {
      v9 = 0x64656C6261736964;
    }

    if (a1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_10000668C(v9, v10, &v29);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "cloudKitAccountsDidChange(cloudKitAccountsChange: %{public}s)", v7, 0xCu);
    sub_10000607C(v8);
  }

  v19 = [objc_opt_self() sharedInstance];
  [v19 invalidateICloudACAccounts];

  if ([objc_opt_self() clearAppleCloudKitTable])
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Released all cached CloudKit REMCD accounts", v22, 2u);
    }
  }

  v23 = [v2 cloudContext];
  v24 = v23;
  v25 = &selRef_accountsDidEnable;
  if ((a1 & 1) == 0)
  {
    v25 = &selRef_accountsDidDisable;
  }

  [v23 *v25];

  v26 = [objc_opt_self() defaultCenter];
  v27 = v26;
  if (qword_100935F48 != -1)
  {
    swift_once();
    v26 = v27;
  }

  [v26 postNotificationName:qword_100974D60 object:{0, v27, v29}];
}

void sub_1003AB788(void **a1, uint64_t a2)
{
  v3 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:a2];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 remObjectID];
  }

  else
  {
    v5 = 0;
  }

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1003AB82C(uint64_t a1)
{
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v2)
  {
    _StringGuts.grow(_:)(46);
    v3._object = 0x80000001007EC120;
    v3._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v3);
    type metadata accessor for PartialKeyPath();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AB92C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009442B0);
  v1 = sub_100006654(v0, qword_1009442B0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003AB9F4(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((a1 & 2) != 0)
  {
    v9._countAndFlagsBits = 99;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  if ((a1 & 4) != 0)
  {
    v10._countAndFlagsBits = 100;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  0xE000000000000000, a2, a3, a4, a5, a6, a7, a8;
  return 0;
}

BOOL sub_1003ABAF4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1003ABB24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1003ABB50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_1003ABC28(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10072A708(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

void **sub_1003ABC78(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **sub_1003ABCBC(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1003ABCF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003ABD4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003ABDB8()
{
  result = qword_100944348;
  if (!qword_100944348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944348);
  }

  return result;
}

unint64_t sub_1003ABE10()
{
  result = qword_100944350;
  if (!qword_100944350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944350);
  }

  return result;
}

unint64_t sub_1003ABE68()
{
  result = qword_100944358;
  if (!qword_100944358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944358);
  }

  return result;
}

unint64_t sub_1003ABEC0()
{
  result = qword_100944360;
  if (!qword_100944360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944360);
  }

  return result;
}

uint64_t sub_1003ABF18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944368);
  v1 = sub_100006654(v0, qword_100944368);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1003ABFEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  if (v1)
  {
    v2 = 0xEC00000065746144;
  }

  if (v1 <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1003AC0A8(uint64_t a1)
{
  v2 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0xEC00000065746144;
  }

  if (*v1 <= 1u)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1003AC150(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  if (v2)
  {
    v3 = 0xEC00000065746144;
  }

  if (v2 <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1003AC208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AC46C(*a1);
  *a2 = result;
  return result;
}

void sub_1003AC238(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 1701667182;
  if (*v1 != 2)
  {
    v4 = 1701869940;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461657263;
    v2 = 0xEC00000065746144;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1003AC2C0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AC46C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003AC2E8()
{
  v1 = 0x44497463656A626FLL;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1003AC35C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008DEE10, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1003AC3CC(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008DEE10, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

unint64_t sub_1003AC46C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DEE60, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1003AC4B8(void *a1, char a2)
{
  v4 = type metadata accessor for Date();
  v139 = *(v4 - 8);
  v140 = v4;
  __chkstk_darwin(v4, v5);
  v141 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = (&v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v17);
  v19 = &v136 - v18;
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v143 = &v136 - v23;
  v144 = 0;
  v142 = [a1 remObjectIDWithError:{&v144, v22}];
  if (v142)
  {
    v24 = v144;
    v138 = v11;
    if ((a2 & 1) == 0 || ([a1 markedForDeletion] & 1) == 0)
    {
      v25 = [a1 sharedToMeReminderCKIdentifier];
      if (!v25)
      {
        v30 = [a1 reminder];
        if (v30 && (v31 = v30, v32 = [v30 remObjectID], v31, v32))
        {
          v33 = [v32 uuid];

          v34 = v143;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = v8;
          (*(v8 + 56))(v34, 0, 1, v7);
        }

        else
        {
          v35 = v8;
          (*(v8 + 56))(v143, 1, 1, v7);
        }

        v37 = 0;
LABEL_16:
        v38 = [a1 account];
        if (!v38 || (v39 = v38, v40 = [v38 remObjectID], v39, !v40))
        {
LABEL_20:
          v42 = [a1 account];
          if (v42)
          {
            v15 = 0xE900000000000029;
            v43 = v142;

            if (v37)
            {
LABEL_22:
              v15, v44, v45, v46, v47, v48, v49, v50;
              if (qword_100935F58 != -1)
              {
                swift_once();
              }

              v51 = type metadata accessor for Logger();
              sub_100006654(v51, qword_100944368);
              v52 = v43;
              v53 = a1;
              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                *v56 = 138543874;
                *(v56 + 4) = v52;
                *v57 = v43;
                *(v56 + 12) = 2082;
                v58 = v52;
                [v53 markedForDeletion];
                v59 = Bool.yesno.getter();
                v61 = v60;
                v62 = sub_10000668C(v59, v60, &v144);
                v61, v63, v64, v65, v66, v67, v68, v69;
                *(v56 + 14) = v62;
                *(v56 + 22) = 2082;
                v70 = [v53 sharedToMeReminderCKIdentifier];
                if (v70)
                {
                  v71 = v70;
                  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v74 = v73;
                }

                else
                {
                  v74 = 0xE300000000000000;
                  v72 = 7104878;
                }

                v113 = sub_10000668C(v72, v74, &v144);
                v74, v114, v115, v116, v117, v118, v119, v120;
                *(v56 + 24) = v113;
                _os_log_impl(&_mh_execute_header, v54, v55, "REMHashtagCDIngestor: cdHashtag.reminderIdentifier is nil {cdHashtag.remObjectID: %{public}@, markedForDeletion: %{public}s, cdHashtag.sharedToMeReminderCKIdentifier: %{public}s}", v56, 0x20u);
                sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v43 = v142;
              }

              else
              {
              }

              v15 = 0x80000001007EA710;
LABEL_46:
              v121 = objc_opt_self();
              sub_1003AD0D4();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v123 = String._bridgeToObjectiveC()();
              v15, v124, v125, v126, v127, v128, v129, v130;
              [v121 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v123];

              swift_willThrow();
LABEL_47:
              sub_1000050A4(v143, &unk_100939D90, "8\n\r");
              return v15;
            }
          }

          else
          {
            v43 = v142;
            if (qword_100935F58 != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            sub_100006654(v75, qword_100944368);
            v76 = v43;
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              *v79 = 138543362;
              *(v79 + 4) = v76;
              *v80 = v43;
              v81 = v76;
              _os_log_impl(&_mh_execute_header, v77, v78, "REMHashtagCDIngestor: cdHashtag.account is nil {cdHashtag.remObjectID: %{public}@}", v79, 0xCu);
              sub_1000050A4(v80, &unk_100938E70, &unk_100797230);
            }

            v15 = 0xE700000000000000;

            if (v37)
            {
              goto LABEL_22;
            }
          }

          v82 = [a1 reminder];
          if (v82)
          {
          }

          else
          {
            v15, v83, v84, v85, v86, v87, v88, v89;
            if (qword_100935F58 != -1)
            {
              swift_once();
            }

            v106 = type metadata accessor for Logger();
            sub_100006654(v106, qword_100944368);
            v107 = v43;
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              *v110 = 138412290;
              *(v110 + 4) = v107;
              *v111 = v43;
              v112 = v107;
              _os_log_impl(&_mh_execute_header, v108, v109, "REMHashtagCDIngestor: cdHashtag.reminder is nil when nil reminder reference is not legit {cdHashtag.remObjectID: %@}", v110, 0xCu);
              sub_1000050A4(v111, &unk_100938E70, &unk_100797230);
            }

            v15 = 0xE800000000000000;
          }

          goto LABEL_46;
        }

        sub_10018E470(v143, v15);
        v41 = v35;
        if ((*(v35 + 48))(v15, 1, v7) == 1)
        {

          sub_1000050A4(v15, &unk_100939D90, "8\n\r");
          goto LABEL_20;
        }

        v90 = *(v35 + 32);
        v91 = v138;
        v90(v138, v15, v7);
        v92 = [a1 name];
        v93 = v41;
        if (v92)
        {
          v94 = v92;
          v95 = [a1 creationDate];
          if (v95)
          {
            v96 = v95;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v97 = objc_opt_self();
            v137 = v41;
            v98 = v97;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v100 = [v98 objectIDWithUUID:isa];

            v136 = [a1 type];
            v101 = objc_allocWithZone(REMHashtag);
            v102 = v141;
            v103 = Date._bridgeToObjectiveC()().super.isa;
            v104 = v101;
            v105 = v142;
            v15 = [v104 initWithObjectID:v142 accountID:v40 reminderID:v100 type:v136 name:v94 creationDate:v103];

            (*(v139 + 8))(v102, v140);
            (*(v137 + 8))(v138, v7);
            sub_1000050A4(v143, &unk_100939D90, "8\n\r");
            return v15;
          }

          v15 = objc_opt_self();
          sub_1003AD0D4();
          v135 = swift_getObjCClassFromMetadata();
          v133 = String._bridgeToObjectiveC()();
          v134 = [(RDXPCStorePerformer *)v15 unexpectedNilPropertyWithClass:v135 property:v133];
        }

        else
        {
          v15 = objc_opt_self();
          sub_1003AD0D4();
          v132 = swift_getObjCClassFromMetadata();
          v133 = String._bridgeToObjectiveC()();
          v134 = [(RDXPCStorePerformer *)v15 unexpectedNilPropertyWithClass:v132 property:v133];
        }

        v134;

        swift_willThrow();
        (*(v93 + 8))(v91, v7);
        goto LABEL_47;
      }
    }

    v26 = [a1 reminderIdentifier];
    if (v26)
    {
      v27 = v26;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v35 = v8;
    v36 = *(v8 + 56);
    v37 = 1;
    v36(v19, v28, 1, v7);
    sub_100100FB4(v19, v143);
    goto LABEL_16;
  }

  v29 = v144;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return v15;
}

unint64_t sub_1003AD0D4()
{
  result = qword_10093CFE0;
  if (!qword_10093CFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093CFE0);
  }

  return result;
}

unint64_t sub_1003AD174()
{
  result = qword_100944580;
  if (!qword_100944580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944580);
  }

  return result;
}

unint64_t sub_1003AD1FC()
{
  result = qword_100944598;
  if (!qword_100944598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944598);
  }

  return result;
}

uint64_t *RDSynchronizedKeyValueStore.default.unsafeMutableAddressor()
{
  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  return &static RDSynchronizedKeyValueStore.default;
}

uint64_t sub_1003AD2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1003AD378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v51 = &v43 - v10;
  v11 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v11, v12);
  v14 = &v43 - v13;
  v50 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  __chkstk_darwin(v50, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v22 = &v43 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v49 = (v5 + 48);
  v43 = (v5 + 32);
  v44 = v17;
  v45 = (v5 + 8);
  v47 = *(v20 + 72);
  v52 = &v43 - v21;
  while (1)
  {
    sub_1003B0928(v25, v22, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    sub_1003B0928(v26, v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    v27 = *(v11 + 48);
    sub_10012F78C(v22, v14);
    sub_10012F78C(v17, &v14[v27]);
    v28 = *v49;
    if ((*v49)(v14, 1, v4) != 1)
    {
      break;
    }

    if (v28(&v14[v27], 1, v4) != 1)
    {
      goto LABEL_22;
    }

    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    v22 = v52;
LABEL_12:
    v35 = *(v50 + 20);
    v36 = &v22[v35];
    v37 = *&v22[v35 + 8];
    v38 = &v17[v35];
    v39 = *(v38 + 1);
    v40 = v39 == 0;
    if (!v37)
    {
      goto LABEL_5;
    }

    if (!v39)
    {
      goto LABEL_23;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_5:
      sub_1003B0990(v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
      v22 = v52;
      sub_1003B0990(v52, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

    sub_1003B0990(v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    sub_1003B0990(v22, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
LABEL_6:
    v26 += v47;
    v25 += v47;
    if (!--v23)
    {
      return 1;
    }
  }

  sub_10012F78C(v14, v51);
  if (v28(&v14[v27], 1, v4) != 1)
  {
    v29 = v11;
    v30 = v51;
    v31 = v48;
    (*v43)(v48, &v14[v27], v4);
    sub_1003B09F0(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v45;
    v33 = v31;
    v34 = v30;
    v11 = v29;
    v17 = v44;
    (*v45)(v33, v4);
    v32(v34, v4);
    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    v22 = v52;
    if ((v46 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  (*v45)(v51, v4);
LABEL_22:
  sub_1000050A4(v14, &qword_100938C18, &qword_1007957A0);
  v22 = v52;
LABEL_23:
  sub_1003B0990(v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  sub_1003B0990(v22, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  return 0;
}

void sub_1003AD8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v89 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &i - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &i - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = 0;
    v14 = a1 + 32;
    v15 = a2 + 32;
    v86 = v12;
    v85 = v14;
    for (i = v15; ; v15 = i)
    {
      v16 = (v14 + (v13 << 6));
      v17 = v16[1];
      *v91 = *v16;
      *&v91[16] = v17;
      v18 = v16[3];
      v92 = v16[2];
      v93 = v18;
      v19 = (v15 + (v13 << 6));
      v20 = v19[1];
      *v94 = *v19;
      *&v94[16] = v20;
      v21 = v19[3];
      v95 = v19[2];
      v96 = v21;
      if (v91[0] == 2)
      {
        if (v94[0] != 2)
        {
          return;
        }
      }

      else if (v94[0] == 2 || ((v94[0] ^ v91[0]) & 1) != 0)
      {
        return;
      }

      if (v91[1] == 2)
      {
        if (v94[1] != 2)
        {
          return;
        }
      }

      else if (v94[1] == 2 || ((v94[1] ^ v91[1]) & 1) != 0)
      {
        return;
      }

      if (*&v91[16])
      {
        if (!*&v94[16] || *&v91[8] != *&v94[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return;
        }
      }

      else if (*&v94[16])
      {
        return;
      }

      v88 = v13;
      v22 = *&v91[24];
      v24 = v92;
      v23 = v93;
      v25 = *&v94[24];
      v27 = v95;
      v26 = v96;
      if (*&v91[24])
      {
        if (!*&v94[24])
        {
          goto LABEL_40;
        }

        v87 = sub_100286700(*&v91[24], v92, *(&v92 + 1), v93, *&v94[24], v95, *(&v95 + 1), v96);
        sub_1002865B0(v91, v90);
        sub_1002865B0(v94, v90);
        sub_10028D090(v25, v27, *(&v27 + 1), v26);
        sub_10028D090(v22, v24, *(&v24 + 1), v23);
        v26, v28, v29, v30, v31, v32, v33, v34;
        v25, v35, v36, v37, v38, v39, v40, v41;
        sub_100286618(v22, v24, *(&v24 + 1), v23, v42, v43, v44, v45);
        if ((v87 & 1) == 0)
        {
LABEL_38:
          sub_1002865E8(v94, v46, v47, v48, v49, v50, v51, v52);
          sub_1002865E8(v91, v69, v70, v71, v72, v73, v74, v75);
          return;
        }
      }

      else
      {
        if (*&v94[24])
        {
LABEL_40:
          sub_10028D090(*&v94[24], v95, *(&v95 + 1), v96);
          sub_10028D090(v22, v24, *(&v24 + 1), v23);
          sub_100286618(v22, v24, *(&v24 + 1), v23, v76, v77, v78, v79);
          sub_100286618(v25, v27, *(&v27 + 1), v26, v80, v81, v82, v83);
          return;
        }

        sub_1002865B0(v91, v90);
        sub_1002865B0(v94, v90);
      }

      v53 = *(&v93 + 1);
      v54 = *(&v96 + 1);
      v55 = *(*(&v93 + 1) + 16);
      if (v55 != *(*(&v96 + 1) + 16))
      {
        goto LABEL_38;
      }

      if (v55 && *(&v93 + 1) != *(&v96 + 1))
      {
        break;
      }

LABEL_35:
      v13 = v88 + 1;
      sub_1002865E8(v94, v46, v47, v48, v49, v50, v51, v52);
      sub_1002865E8(v91, v62, v63, v64, v65, v66, v67, v68);
      if (v13 == v86)
      {
        return;
      }

      v14 = v85;
    }

    v56 = 0;
    v57 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v58 = *(&v93 + 1) + v57;
    v59 = *(&v96 + 1) + v57;
    while (v56 < *(v53 + 16))
    {
      v60 = *(v89 + 72) * v56;
      sub_1003B0928(v58 + v60, v11, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
      if (v56 >= *(v54 + 16))
      {
        goto LABEL_42;
      }

      sub_1003B0928(v59 + v60, v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
      v61 = sub_1002844C4();
      sub_1003B0990(v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
      sub_1003B0990(v11, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
      if ((v61 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (v55 == ++v56)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_1003ADD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0) - 8;
  __chkstk_darwin(v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1003B0928(v15, v12, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        sub_1003B0928(v16, v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        v18 = sub_1002844C4();
        sub_1003B0990(v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        sub_1003B0990(v12, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_1003ADEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v212 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v195 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = 0;
    v14 = a1 + 32;
    v15 = a2 + 32;
    v199 = v14;
    v198 = a2 + 32;
    while (v13 != v12)
    {
      v16 = (v14 + 24 * v13);
      v18 = v16[1];
      v17 = v16[2];
      v19 = (v15 + 24 * v13);
      v20 = v19[1];
      v21 = v19[2];
      if (v18)
      {
        if (!v20)
        {
          return;
        }

        v22 = *v16 == *v19 && v18 == v20;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return;
        }
      }

      else if (v20)
      {
        return;
      }

      v23 = *(v17 + 16);
      if (v23 != *v21->clientIdentity)
      {
        return;
      }

      if (v23 && v17 != v21)
      {
        v202 = *(v17 + 16);
        v200 = v20;

        if (*(v17 + 16))
        {
          v31 = 0;
          v32 = v17 + 32;
          v208 = &v21->clientIdentity[16];
          v33 = 1;
          v196 = v13;
          v201 = v17 + 32;
          v206 = v17;
          v210 = v18;
          v211 = v21;
          v197 = v12;
          do
          {
            v34 = v33;
            v35 = (v32 + (v31 << 6));
            v36 = v35[3];
            v38 = *v35;
            v37 = v35[1];
            *v215 = v35[2];
            *&v215[16] = v36;
            *v214 = v38;
            *&v214[16] = v37;
            if (v31 >= *v21->clientIdentity)
            {
              goto LABEL_87;
            }

            v39 = &v208[64 * v31];
            v40 = *(v39 + 3);
            v42 = *v39;
            v41 = *(v39 + 1);
            *v217 = *(v39 + 2);
            *&v217[16] = v40;
            *v216 = v42;
            *&v216[16] = v41;
            if (v214[0] == 2)
            {
              if (v42 != 2)
              {
                goto LABEL_75;
              }
            }

            else if (v42 == 2 || ((v42 ^ v214[0]) & 1) != 0)
            {
LABEL_75:
              v173 = v21;
              goto LABEL_79;
            }

            if (v214[1] == 2)
            {
              if (v216[1] != 2)
              {
                goto LABEL_75;
              }
            }

            else if (v216[1] == 2 || ((v216[1] ^ v214[1]) & 1) != 0)
            {
              goto LABEL_75;
            }

            v24 = *&v214[16];
            v26 = *&v216[16];
            if (*&v214[16])
            {
              if (!*&v216[16] || *&v214[8] != *&v216[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_75;
              }
            }

            else if (*&v216[16])
            {
              goto LABEL_75;
            }

            v43 = *&v214[24];
            v44 = *&v215[8];
            v45 = *&v215[16];
            v46 = *&v217[8];
            v47 = *&v217[16];
            v209 = v34;
            if (*&v214[24])
            {
              if (!*&v216[24])
              {
                goto LABEL_76;
              }

              v207 = *&v216[24];
              v205 = *v215;
              v204 = *v217;
              if (*v215 == *v217 && (*&v215[8] == *&v217[8] || (v48 = v17, v49 = *&v217[16], v50 = *&v217[8], v51 = _stringCompareWithSmolCheck(_:_:expecting:)(), v46 = v50, v47 = v49, v17 = v48, (v51 & 1) != 0)))
              {
                v52 = *(v43 + 16);
                if (v52)
                {
                  v53 = 0;
                  v54 = *(v207 + 16);
                  while (v53 != v54)
                  {
                    if (v53 >= v54)
                    {
                      goto LABEL_88;
                    }

                    v63 = v53;
                    v64 = 0;
                    v65 = *(v43 + 32 + 8 * v53++);
                    v66 = *(v207 + 32 + 8 * v63);
                    v67 = *(v65 + 16);
                    v68 = v65 + 32;
                    while (v67 != v64)
                    {
                      v69 = *(v66 + 16);
                      if (v64 == v69)
                      {
                        break;
                      }

                      if (v64 >= v69)
                      {
                        goto LABEL_85;
                      }

                      v70 = vabdd_f64(*(v68 + 8 * v64), *(v66 + 32 + 8 * v64));
                      ++v64;
                      if (v70 >= 2.22044605e-16)
                      {
                        goto LABEL_54;
                      }
                    }

                    v62 = 1;
                    if (v53 == v52)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                v62 = 1;
              }

              else
              {
LABEL_54:
                v62 = 0;
              }

LABEL_55:
              v203 = v62;
              v71 = v17;
              v72 = v47;
              v73 = v46;
              sub_1002865B0(v214, v213);
              sub_1002865B0(v216, v213);
              v74 = v207;
              sub_10028D090(v207, v204, v73, v72);
              v75 = v205;
              sub_10028D090(v43, v205, v44, v45);
              v76 = v72;
              v17 = v71;
              v76, v77, v78, v79, v80, v81, v82, v83;
              v74, v84, v85, v86, v87, v88, v89, v90;
              sub_100286618(v43, v75, v44, v45, v91, v92, v93, v94);
              v18 = v210;
              if ((v203 & 1) == 0)
              {
                sub_1002865E8(v216, v55, v56, v57, v58, v59, v60, v61);
                sub_1002865E8(v214, v174, v175, v176, v177, v178, v179, v180);
LABEL_78:
                v173 = v211;
LABEL_79:
                v173, v24, v25, v26, v27, v28, v29, v30;
LABEL_80:
                v18, v147, v148, v149, v150, v151, v152, v153;
                v200, v181, v182, v183, v184, v185, v186, v187;
                v17, v188, v189, v190, v191, v192, v193, v194;
                return;
              }
            }

            else
            {
              if (*&v216[24])
              {
LABEL_76:
                v154 = *&v216[24];
                v155 = *v215;
                v156 = *&v217[16];
                v157 = *v217;
                sub_10028D090(*&v216[24], *v217, *&v217[8], *&v217[16]);
                sub_10028D090(v43, v155, v44, v45);
                sub_100286618(v43, v155, v44, v45, v158, v159, v160, v161);
                sub_100286618(v154, v157, *(&v157 + 1), v156, v162, v163, v164, v165);
                goto LABEL_78;
              }

              sub_1002865B0(v214, v213);
              sub_1002865B0(v216, v213);
            }

            v95 = *&v215[24];
            v96 = *&v217[24];
            v97 = *(*&v215[24] + 16);
            v98 = v211;
            if (v97 != *(*&v217[24] + 16))
            {
              sub_1002865E8(v216, v55, v56, v57, v58, v59, v60, v61);
              sub_1002865E8(v214, v166, v167, v168, v169, v170, v171, v172);
              v173 = v98;
              goto LABEL_79;
            }

            if (v97 && *&v215[24] != *&v217[24])
            {
              v99 = 0;
              v100 = (*(v212 + 80) + 32) & ~*(v212 + 80);
              v101 = *&v215[24] + v100;
              v102 = *&v217[24] + v100;
              while (v99 < *(v95 + 16))
              {
                v103 = *(v212 + 72) * v99;
                sub_1003B0928(v101 + v103, v11, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                if (v99 >= *(v96 + 16))
                {
                  goto LABEL_84;
                }

                sub_1003B0928(v102 + v103, v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                v104 = sub_100286D98(v11, v7);
                sub_1003B0990(v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                sub_1003B0990(v11, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
                if ((v104 & 1) == 0)
                {
                  sub_1002865E8(v216, v55, v56, v57, v58, v59, v60, v61);
                  sub_1002865E8(v214, v133, v134, v135, v136, v137, v138, v139);
                  v211, v140, v141, v142, v143, v144, v145, v146;
                  v17 = v206;
                  v18 = v210;
                  goto LABEL_80;
                }

                if (v97 == ++v99)
                {
                  goto LABEL_65;
                }
              }

              goto LABEL_83;
            }

LABEL_65:
            sub_1002865E8(v216, v55, v56, v57, v58, v59, v60, v61);
            sub_1002865E8(v214, v105, v106, v107, v108, v109, v110, v111);
            if (v209 == v202)
            {
              v211, v24, v25, v26, v27, v28, v29, v30;
              v210, v119, v120, v121, v122, v123, v124, v125;
              v200, v126, v127, v128, v129, v130, v131, v132;
              v17 = v206;
              v12 = v197;
              v13 = v196;
              v14 = v199;
              v15 = v198;
              goto LABEL_70;
            }

            v33 = v209 + 1;
            v17 = v206;
            v31 = v209;
            v18 = v210;
            v21 = v211;
            v32 = v201;
          }

          while (v209 < *(v206 + 16));
        }

        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        break;
      }

LABEL_70:
      ++v13;
      v17, v112, v113, v114, v115, v116, v117, v118;
      if (v13 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }
}

uint64_t sub_1003AE66C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AE6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[7];
        v16[6] = v3[6];
        v16[7] = v5;
        v16[8] = v3[8];
        v6 = v3[3];
        v16[2] = v3[2];
        v16[3] = v6;
        v7 = v3[5];
        v16[4] = v3[4];
        v16[5] = v7;
        v8 = v3[1];
        v16[0] = *v3;
        v16[1] = v8;
        v9 = v4[7];
        v17[6] = v4[6];
        v17[7] = v9;
        v17[8] = v4[8];
        v10 = v4[3];
        v17[2] = v4[2];
        v17[3] = v10;
        v11 = v4[5];
        v17[4] = v4[4];
        v17[5] = v11;
        v12 = v4[1];
        v17[0] = *v4;
        v17[1] = v12;
        sub_1000FE280(v16, v15);
        sub_1000FE280(v17, v15);
        v13 = sub_100151354(v16, v17);
        sub_1000FE2DC(v17);
        sub_1000FE2DC(v16);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v3 += 9;
        v4 += 9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1003AE7E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AE884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    v28 = 0;
    return v28 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v23 = *(v9 + 16);
  v22 = v9 + 16;
  v24 = (v22 - 8);
  v32 = *(v22 + 56);
  v33 = v23;
  while (1)
  {
    v25 = v33;
    result = (v33)(v17, v20, v8, v15);
    if (!v18)
    {
      break;
    }

    v27 = v22;
    v25(v12, v21, v8);
    sub_1003B09F0(v34, v35, v36);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *v24;
    (*v24)(v12, v8);
    v29(v17, v8);
    if (v28)
    {
      v21 += v32;
      v20 += v32;
      v30 = v18-- == 1;
      v22 = v27;
      if (!v30)
      {
        continue;
      }
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AEA7C(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for RDSavedURLAttachment(0);
  __chkstk_darwin(v58, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v11 = &v52 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    v56 = 0;
    v57 = v16;
    while (1)
    {
      sub_1003B0928(v14, v11, type metadata accessor for RDSavedURLAttachment);
      sub_1003B0928(v15, v6, type metadata accessor for RDSavedURLAttachment);
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
LABEL_73:
        sub_1003B0990(v6, type metadata accessor for RDSavedURLAttachment);
        sub_1003B0990(v11, type metadata accessor for RDSavedURLAttachment);
        return 0;
      }

      v19 = *(v58 + 20);
      v20 = *&v11[v19];
      v21 = *&v11[v19 + 8];
      v22 = &v6[v19];
      v23 = *v22;
      v24 = v22[1];
      if (v21 >> 60 == 15)
      {
        break;
      }

      if (v24 >> 60 == 15)
      {
LABEL_70:
        sub_1001CB4B8(v20, v21);
        sub_1001CB4B8(v23, v24);
        sub_100031A14(v20, v21);
        v50 = v23;
        v51 = v24;
LABEL_72:
        sub_100031A14(v50, v51);
        goto LABEL_73;
      }

      v25 = v21 >> 62;
      v26 = v24 >> 62;
      if (v21 >> 62 != 3)
      {
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v37 = *(v20 + 16);
            v36 = *(v20 + 24);
            v34 = __OFSUB__(v36, v37);
            v28 = v36 - v37;
            if (v34)
            {
              goto LABEL_77;
            }

LABEL_35:
            if (v26 <= 1)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v28 = 0;
            if (v26 <= 1)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          if (!v25)
          {
            v28 = BYTE6(v21);
            if (v26 > 1)
            {
              goto LABEL_29;
            }

LABEL_36:
            if (v26)
            {
              LODWORD(v35) = HIDWORD(v23) - v23;
              if (__OFSUB__(HIDWORD(v23), v23))
              {
                __break(1u);
LABEL_76:
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
LABEL_82:
                __break(1u);
              }

              v35 = v35;
            }

            else
            {
              v35 = BYTE6(v24);
            }

LABEL_42:
            if (v28 != v35)
            {
LABEL_71:
              sub_1001CB4B8(v20, v21);
              sub_1001CB4B8(v23, v24);
              sub_100031A14(v23, v24);
              v50 = v20;
              v51 = v21;
              goto LABEL_72;
            }

            if (v28 >= 1)
            {
              if (v25 > 1)
              {
                if (v25 != 2)
                {
                  memset(v60, 0, 14);
                  sub_1001CB4B8(v20, v21);
                  sub_1001CB4B8(v23, v24);
                  sub_1001CB4B8(v23, v24);
                  goto LABEL_6;
                }

                v38 = *(v20 + 16);
                v53 = *(v20 + 24);
                v54 = v38;
                sub_1001CB4B8(v20, v21);
                sub_1001CB4B8(v23, v24);
                v55 = v23;
                sub_1001CB4B8(v23, v24);
                v39 = __DataStorage._bytes.getter();
                if (v39)
                {
                  v40 = v39;
                  v41 = __DataStorage._offset.getter();
                  v42 = v54;
                  if (__OFSUB__(v54, v41))
                  {
                    goto LABEL_81;
                  }

                  v52 = v54 - v41 + v40;
                }

                else
                {
                  v52 = 0;
                  v42 = v54;
                }

                if (__OFSUB__(v53, v42))
                {
                  goto LABEL_80;
                }

                __DataStorage._length.getter();
                v46 = v52;
              }

              else
              {
                if (!v25)
                {
                  v60[0] = v20;
                  LOWORD(v60[1]) = v21;
                  BYTE2(v60[1]) = BYTE2(v21);
                  BYTE3(v60[1]) = BYTE3(v21);
                  BYTE4(v60[1]) = BYTE4(v21);
                  BYTE5(v60[1]) = BYTE5(v21);
                  sub_1001CB4B8(v20, v21);
                  sub_1001CB4B8(v23, v24);
                  sub_1001CB4B8(v23, v24);
LABEL_6:
                  v17 = v56;
                  sub_1001CA174(v60, v23, v24, &v59);
                  v56 = v17;
                  sub_100031A14(v23, v24);
                  sub_100031A14(v23, v24);
                  v18 = v59;
LABEL_7:
                  sub_100031A14(v20, v21);
                  sub_1003B0990(v6, type metadata accessor for RDSavedURLAttachment);
                  sub_1003B0990(v11, type metadata accessor for RDSavedURLAttachment);
                  if ((v18 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_8;
                }

                v54 = (v20 >> 32) - v20;
                if (v20 >> 32 < v20)
                {
                  goto LABEL_79;
                }

                sub_1001CB4B8(v20, v21);
                sub_1001CB4B8(v23, v24);
                v55 = v23;
                sub_1001CB4B8(v23, v24);
                v43 = __DataStorage._bytes.getter();
                if (v43)
                {
                  v53 = v43;
                  v44 = __DataStorage._offset.getter();
                  if (__OFSUB__(v20, v44))
                  {
                    goto LABEL_82;
                  }

                  v45 = v20 - v44 + v53;
                }

                else
                {
                  v45 = 0;
                }

                __DataStorage._length.getter();
                v46 = v45;
              }

              v47 = v55;
              v48 = v56;
              sub_1001CA174(v46, v55, v24, v60);
              v56 = v48;
              sub_100031A14(v47, v24);
              sub_100031A14(v47, v24);
              v18 = v60[0];
              goto LABEL_7;
            }

            goto LABEL_47;
          }

          LODWORD(v28) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_78;
          }

          v28 = v28;
          if (v26 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_29:
        if (v26 == 2)
        {
          v33 = *(v23 + 16);
          v32 = *(v23 + 24);
          v34 = __OFSUB__(v32, v33);
          v35 = v32 - v33;
          if (v34)
          {
            goto LABEL_76;
          }

          goto LABEL_42;
        }

        if (v28)
        {
          goto LABEL_71;
        }

LABEL_47:
        sub_1001CB4B8(v20, v21);
        sub_1001CB4B8(v23, v24);
        sub_100031A14(v23, v24);
LABEL_48:
        v30 = v20;
        v31 = v21;
        goto LABEL_49;
      }

      if (v20)
      {
        v27 = 0;
      }

      else
      {
        v27 = v21 == 0xC000000000000000;
      }

      v28 = 0;
      v29 = v27 && v24 >> 62 == 3;
      if (!v29 || v23 || v24 != 0xC000000000000000)
      {
        goto LABEL_35;
      }

      sub_1001CB4B8(0, 0xC000000000000000);
      sub_1001CB4B8(0, 0xC000000000000000);
      sub_100031A14(0, 0xC000000000000000);
      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_49:
      sub_100031A14(v30, v31);
      sub_1003B0990(v6, type metadata accessor for RDSavedURLAttachment);
      sub_1003B0990(v11, type metadata accessor for RDSavedURLAttachment);
LABEL_8:
      v15 += v57;
      v14 += v57;
      if (!--v12)
      {
        return 1;
      }
    }

    if (v24 >> 60 != 15)
    {
      goto LABEL_70;
    }

    sub_1001CB4B8(v20, v21);
    sub_1001CB4B8(v23, v24);
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_1003AF178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4); i += 5)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1003AF258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 48);
        v11[2] = *(v3 + 32);
        v11[3] = v5;
        v11[4] = *(v3 + 64);
        v12 = *(v3 + 80);
        v6 = *(v3 + 16);
        v11[0] = *v3;
        v11[1] = v6;
        v7 = *(v4 + 48);
        v13[2] = *(v4 + 32);
        v13[3] = v7;
        v13[4] = *(v4 + 64);
        v14 = *(v4 + 80);
        v8 = *(v4 + 16);
        v13[0] = *v4;
        v13[1] = v8;
        v9 = sub_1004AF488(v11, v13);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 88;
        v4 += 88;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1003AF32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 40);
      v8 = *(a2 + v5 + 32);
      v9 = *(a2 + v5 + 40);
      v10 = *(a2 + v5 + 48);
      v11 = *(a1 + v5 + 32);
      v12 = v8;
      if ((static NSObject.== infix(_:_:)() & 1) == 0 || v7 != v9)
      {
        break;
      }

      result = v6 == v10;
      if (v6 == v10)
      {
        v5 += 24;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t sub_1003AF444(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1003AF694()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009445A0);
  v1 = sub_100006654(v0, qword_1009445A0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003AF75C()
{
  type metadata accessor for RDSynchronizedKeyValueStore();
  v0 = swift_allocObject();
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v1 = qword_100974CC8;
  v0[5] = qword_100974CC8;
  v2 = REMUniversalAppBundleIdentifier;
  v3 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v4 = v1;
  v0[2] = [v3 initWithStoreIdentifier:v2 type:2];
  type metadata accessor for RDNotifydEventStream();
  swift_allocObject();
  v5 = sub_10028F604(v4, 1);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = sub_1003AF8C8;
  *(v5 + 24) = 0;
  result = sub_1000FDA80(v6, v7);
  v0[3] = v5;
  v0[4] = &off_1008EC760;
  static RDSynchronizedKeyValueStore.default = v0;
  return result;
}

uint64_t static RDSynchronizedKeyValueStore.default.getter()
{
  if (qword_100935F68 != -1)
  {
    swift_once();
  }
}

void sub_1003AF8C8()
{
  if (qword_100935F60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009445A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "RDSynchronizedKeyValueStore.ubkvsEventStream: received .ubiquitousKeyValueStoreDidChangeNotification", v2, 2u);
  }
}

uint64_t RDSynchronizedKeyValueStore.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RDSynchronizedKeyValueStore.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int RDSynchronizedKeyValueStore.ChangeEvent.Reason.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1003AFB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1003AD2E8(*a1, *a2) & (v2 == v3);
}

uint64_t RDSynchronizedKeyValueStore.storeDidChangeExternally(label:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = sub_1000F5104(&qword_1009445B8, &qword_1007A5120);
  v3 = *(v24 - 8);
  __chkstk_darwin(v24, v4);
  v6 = &v22 - v5;
  v25 = sub_1000F5104(&qword_1009445C0, &qword_1007A5128);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for NSNotificationCenter.Publisher();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  *(v17 + 24) = a2;
  sub_1003B09F0(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);

  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  sub_10000CB48(&qword_1009445C8, &qword_1009445B8, &qword_1007A5120, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v18 = v24;
  Publisher.compactMap<A>(_:)();
  (*(v3 + 8))(v6, v18);
  sub_10000CB48(&qword_1009445D0, &qword_1009445C0, &qword_1007A5128, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v19 = v25;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v10, v19);
  (*(v12 + 8))(v15, v11);
  return v20;
}

void sub_1003AFF10(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  sub_1003B05E8();
  v5 = 0x80000001007F6520;
  if (v4 == 2)
  {
    v6 = 0xD00000000000002DLL;
  }

  else
  {
    v6 = 0xD000000000000026;
  }

  if (v4 != 2)
  {
    v5 = 0x80000001007F64F0;
  }

  v7 = 0xD000000000000025;
  v8 = 0x80000001007F6580;
  if (v4)
  {
    v7 = 0xD00000000000002ALL;
    v8 = 0x80000001007F6550;
  }

  if (v4 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (qword_100935F60 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_1009445A0);

  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v10, v13, v14, v15, v16, v17, v18, v19;
  a3, v20, v21, v22, v23, v24, v25, v26;
  if (os_log_type_enabled(oslog, v12))
  {
    v34 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v34 = 136446466;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v35 = Optional.descriptionOrNil.getter();
    v37 = v36;
    v38 = sub_10000668C(v35, v36, v55);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v46 = sub_10000668C(v9, v10, v55);
    v10, v47, v48, v49, v50, v51, v52, v53;
    *(v34 + 14) = v46;
    _os_log_impl(&_mh_execute_header, oslog, v12, "RDSynchronizedKeyValueStore.storeDidChangeExternally[%{public}s]: Received notification {reason: %{public}s}", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v10, v27, v28, v29, v30, v31, v32, v33;
  }
}

void sub_1003B01DC(uint64_t a1@<X8>)
{
  sub_1003B05E8();
  v3 = v2;
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  *&v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v36 + 1) = v6;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v14 = sub_10001B0D8(v35), (v7 & 1) == 0))
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
    sub_10001B2CC(v35);
LABEL_9:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_10;
  }

  sub_100005EF0(*(v5 + 56) + 32 * v14, &v36);
  sub_10001B2CC(v35);
  v5, v15, v16, v17, v18, v19, v20, v21;
  if (!*(&v37 + 1))
  {
LABEL_10:
    sub_1000050A4(&v36, &qword_100939ED0, &qword_100791B10);
    v22 = 0;
    goto LABEL_11;
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  if (swift_dynamicCast())
  {
    v22 = v35[0];
  }

  else
  {
    v22 = 0;
  }

LABEL_11:
  if (v3 >= 2u)
  {
    if (v3 == 2)
    {
      if (qword_100935F60 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_1009445A0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "RDSynchronizedKeyValueStore.storeDidChangeExternally: Received NSUbiquitousKeyValueStoreQuotaViolationChange but remindd doesn't currently handle it", v26, 2u);
      }
    }

    v34 = &_swiftEmptyArrayStorage;
    if (v22)
    {
      v34 = v22;
    }
  }

  else
  {
    *&v36 = v22;
    sub_1000F5104(&qword_1009446A8, &qword_1007A5228);
    Optional.tryUnwrap(_:file:line:)();
    v22, v27, v28, v29, v30, v31, v32, v33;
    v34 = v35[0];
  }

  *a1 = v34;
  *(a1 + 8) = v3;
}

unint64_t _s7remindd27RDSynchronizedKeyValueStoreC11ChangeEventV6ReasonO05ubkvsfhC0AGSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1003B05E8()
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  *&v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v46 + 1) = v3;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v11 = sub_10001B0D8(&v44), (v4 & 1) == 0))
  {
    v2, v4, v5, v6, v7, v8, v9, v10;
    sub_10001B2CC(&v44);
LABEL_9:
    v46 = 0u;
    v47 = 0u;
    goto LABEL_10;
  }

  sub_100005EF0(*(v2 + 56) + 32 * v11, &v46);
  sub_10001B2CC(&v44);
  v2, v12, v13, v14, v15, v16, v17, v18;
  if (!*(&v47 + 1))
  {
LABEL_10:
    sub_1000050A4(&v46, &qword_100939ED0, &qword_100791B10);
    v19 = 0;
    goto LABEL_11;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v19 = v44;
  }

  else
  {
    v19 = 0;
  }

LABEL_11:
  v44 = v19;
  sub_1000F5104(&qword_100944698, &qword_1007A5218);
  Optional.tryUnwrap(_:file:line:)();

  if (!v0)
  {
    v20 = v48;
    v21 = [v48 integerValue];
    v22 = 4;
    if (v21 < 4)
    {
      v22 = v21;
    }

    LOBYTE(v48) = v22;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v23._countAndFlagsBits = 0xD00000000000003DLL;
    v23._object = 0x80000001007F6460;
    String.append(_:)(v23);
    v24 = [v20 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);
    v27, v29, v30, v31, v32, v33, v34, v35;
    v36 = v45;
    sub_1000F5104(&qword_1009446A0, &qword_1007A5220);
    Optional.tryUnwrap(_:file:line:)();
    v36, v37, v38, v39, v40, v41, v42, v43;
  }
}

unint64_t sub_1003B0890()
{
  result = qword_1009445D8;
  if (!qword_1009445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009445D8);
  }

  return result;
}

uint64_t sub_1003B0928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B0990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003B09F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003B0A3C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009446B0);
  v1 = sub_100006654(v0, qword_1009446B0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B0B0C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xD00000000000001DLL;
  v10 = 0x80000001007E9100;
  v11 = 0xE800000000000000;
  if (v8 == 1)
  {
    v11 = 0x80000001007E9100;
  }

  else
  {
    v9 = 0x6574616C706D6574;
  }

  if (*a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x617461646174656DLL;
  }

  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14 = 0xD00000000000001DLL;
  if (*a2 != 1)
  {
    v14 = 0x6574616C706D6574;
    v10 = 0xE800000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x617461646174656DLL;
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_1003B0C08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0x80000001007E9100;
  if (v1 != 1)
  {
    v2 = 0xE800000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1003B0CB0(uint64_t a1)
{
  v2 = 0x80000001007E9100;
  if (*v1 != 1)
  {
    v2 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1003B0D44(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0x80000001007E9100;
  if (v2 != 1)
  {
    v3 = 0xE800000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1003B0DE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003B346C(*a1);
  *a2 = result;
  return result;
}

void sub_1003B0E18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001007E9100;
  v5 = 0xD00000000000001DLL;
  if (v2 != 1)
  {
    v5 = 0x6574616C706D6574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x617461646174656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static REMCDSavedReminder.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDSavedReminder();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSavedReminder.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      [v22 setAccount:a2];
      [v22 mergeDataFromRecord:a1 accountID:v21];

      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935F70 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_1009446B0);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDSavedReminder.recordType()()
{
  v0 = 0x6D65526465766153;
  v1 = 0xED00007265646E69;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDSavedReminder.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v28.receiver = v2;
  v28.super_class = type metadata accessor for REMCDSavedReminder();
  objc_msgSendSuper2(&v28, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v6 = String._bridgeToObjectiveC()();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = [v2 ckIdentifierFromRecordName:v6];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v16 = String._bridgeToObjectiveC()();
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  [v2 setCkIdentifier:v16];

  [v2 mergeDataRevertedLocallyMarkedForDeletion];
  [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v26 = v2;
  v27 = from.super.isa;
  sub_1004E6754(v27, v26, v26, v27);
}

void sub_1003B15B4(_BYTE *a1, void *a2, void *a3)
{
  v77 = a2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v74 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v74 - v21;
  v23 = type metadata accessor for RDSavedReminder(0);
  *&v27 = __chkstk_darwin(v23, v24).n128_u64[0];
  if (!*a1)
  {
    v75 = v18;
    v76 = v25;
    v37 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = [a3 encryptedValues];
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.getter();
    swift_unknownObjectRelease();
    v39 = v79;
    if (v79 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v43 = v78;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(v43, v39);
    }

    v44 = v77;
    [v77 setMetadata:isa];

    v45 = [v44 metadata];
    if (v45)
    {
      v46 = v45;
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1003B37A8(&qword_100940528, type metadata accessor for RDSavedReminder, &unk_100798E28);
      v77 = v49;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v74 = v47;

      sub_10012F78C(v37, v22);
      v53 = v14;
      if ((*(v15 + 48))(v22, 1, v14) == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = Date._bridgeToObjectiveC()().super.isa;
        (*(v15 + 8))(v22, v14);
      }

      v56 = v75;
      [v44 setCreationDate:v54];

      v57 = v76;
      v58 = String._bridgeToObjectiveC()();
      [v44 setTitle:v58];

      if (*&v37[*(v57 + 44)] >= 0x7FFFuLL)
      {
        v59 = 0x7FFFLL;
      }

      else
      {
        v59 = *&v37[*(v57 + 44)];
      }

      v60 = [objc_allocWithZone(NSNumber) initWithShort:v59];
      [v44 setPriority:v60];

      v61 = sub_1001C7758();
      if (v61)
      {
        v62 = v61;
        v63 = [v61 date];

        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v64.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v15 + 8))(v56, v53);
      }

      else
      {
        v64.super.isa = 0;
      }

      v65 = v74;
      [v44 setDisplayDateDate:v64.super.isa];

      v66 = sub_1001C7758();
      if (v66)
      {
        v67 = v66;
        v68 = [v66 isAllDay];
      }

      else
      {
        v68 = 0;
      }

      v69 = v77;
      [v44 setDisplayDateIsAllDay:v68];
      v70 = *&v37[*(v76 + 36)];
      if (v70)
      {
        v71 = *(v70 + 16) != 0;
      }

      else
      {
        v71 = 0;
      }

      [v44 setHasHashtags:v71];
      v72 = &v37[*(v76 + 20)];
      if (*v72)
      {
        if (*(*(v72 + 1) + 16))
        {
          v73 = 1;
        }

        else
        {
          v73 = *(*(v72 + 3) + 16) != 0;
        }
      }

      else
      {
        v73 = 0;
      }

      [v44 setHasLocationTriggersOrVehicleEventTriggers:v73];
      sub_10001BBA0(v65, v69);
      sub_1001CB574(v37);
    }

    else
    {
      [v44 setCreationDate:0];
      [v44 setTitle:0];
      [v44 setPriority:0];
      [v44 setDisplayDateDate:0];
      [v44 setDisplayDateIsAllDay:0];
      [v44 setHasHashtags:0];
      [v44 setHasLocationTriggersOrVehicleEventTriggers:0];
    }

    return;
  }

  if (*a1 != 1)
  {
    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      v42 = v77;
      if (!v41)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v41 = 0;
      v42 = v77;
    }

    v50 = sub_1001287F0(v41);

    if (v50)
    {
      type metadata accessor for REMCDTemplate();
      v51 = swift_dynamicCastClass();
      if (v51)
      {
LABEL_22:
        v77 = v51;
        [v42 setTemplate:?];
        v52 = v77;

        return;
      }
    }

    v51 = 0;
    goto LABEL_22;
  }

  v28 = CKRecord.subscript.getter();
  if (!v28)
  {
    goto LABEL_7;
  }

  v80 = v28;
  sub_1000F5104(&qword_100938860, &unk_1007A4830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v29 = v79;
  UUID.init(uuidString:)();
  v29, v30, v31, v32, v33, v34, v35, v36;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1001A4F9C(v8);
LABEL_7:
    [v77 setParentSavedReminderIdentifier:0];
    return;
  }

  (*(v10 + 32))(v13, v8, v9);
  v55 = UUID._bridgeToObjectiveC()().super.isa;
  [v77 setParentSavedReminderIdentifier:v55];

  (*(v10 + 8))(v13, v9);
}

CKRecord_optional __swiftcall REMCDSavedReminder.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v100 - v14;
  if ([v1 isOwnedByCurrentUser])
  {
    v16 = type metadata accessor for REMCDSavedReminder();
    v116.receiver = v1;
    v116.super_class = v16;
    v17 = objc_msgSendSuper2(&v116, "newlyCreatedRecord");
    v20 = v17;
    if (v17)
    {
      v21 = 0;
      v111 = (v3 + 56);
      v112 = "alueStoreServerChange";
      v110 = (v3 + 48);
      v106 = (v3 + 8);
      v107 = (v3 + 16);
      *&v19 = 136446210;
      v104 = v19;
      v105 = v10;
      v108 = v15;
      v109 = v17;
      v103 = v1;
      do
      {
        if (*(&off_1008E2E98 + v21 + 32))
        {
          if (*(&off_1008E2E98 + v21 + 32) == 1)
          {
            v25 = [v1 parentSavedReminderIdentifier];
            if (v25)
            {
              v26 = v25;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = 0;
            }

            else
            {
              v27 = 1;
            }

            (*v111)(v10, v27, 1, v2);
            sub_100100FB4(v10, v15);
            if ((*v110)(v15, 1, v2))
            {
              sub_1001A4F9C(v15);
              v113 = 0u;
              v114 = 0u;
              v115 = 0;
            }

            else
            {
              (*v107)(v6, v15, v2);
              sub_1001A4F9C(v15);
              v22 = UUID.uuidString.getter();
              v24 = v23;
              (*v106)(v6, v2);
              *(&v114 + 1) = &type metadata for String;
              v115 = &protocol witness table for String;
              *&v113 = v22;
              *(&v113 + 1) = v24;
            }

            sub_10018E134();
            CKRecordKeyValueSetting.subscript.setter();
          }

          else if ([v1 markedForDeletion])
          {
            if (qword_100935F70 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for Logger();
            sub_100006654(v34, qword_1009446B0);
            v35 = v1;
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              *&v113 = v39;
              *v38 = v104;
              v40 = [v35 remObjectID];
              if (v40)
              {
                v41 = v40;
                v42 = v6;
                v43 = v2;
                v44 = [v40 description];

                v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v47 = v46;

                v2 = v43;
                v6 = v42;
                v1 = v103;
              }

              else
              {
                v47 = 0xE300000000000000;
                v45 = 7104878;
              }

              v63 = sub_10000668C(v45, v47, &v113);
              v47, v64, v65, v66, v67, v68, v69, v70;
              *(v38 + 4) = v63;
              _os_log_impl(&_mh_execute_header, v36, v37, "REMCDSavedReminder+CloudKit: newlyCreatedRecord() (key=.template) unsetting template CK reference as the saved reminder is markedForDeletion {savedReminder: %{public}s}", v38, 0xCu);
              sub_10000607C(v39);

              v10 = v105;
              v20 = v109;
            }

            else
            {
            }

            CKRecord.subscript.setter();
            v15 = v108;
          }

          else
          {
            v48 = [v1 template];
            if (v48)
            {
              v49 = v48;
              v50 = [v48 recordID];
              v51 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v50];

              CKRecord.subscript.setter();
            }

            else
            {
              if (qword_100935F70 != -1)
              {
                swift_once();
              }

              v52 = type metadata accessor for Logger();
              sub_100006654(v52, qword_1009446B0);
              v53 = v1;
              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v54, v55))
              {
                v102 = v55;
                v56 = swift_slowAlloc();
                v101 = swift_slowAlloc();
                *&v113 = v101;
                *v56 = v104;
                v57 = [v53 remObjectID];
                if (v57)
                {
                  v58 = v57;
                  v59 = [v57 description];

                  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v62 = v61;

                  v15 = v108;
                }

                else
                {
                  v62 = 0xE300000000000000;
                  v60 = 7104878;
                }

                v71 = sub_10000668C(v60, v62, &v113);
                v62, v72, v73, v74, v75, v76, v77, v78;
                *(v56 + 4) = v71;
                _os_log_impl(&_mh_execute_header, v54, v102, "REMCDSavedReminder+CloudKit: Unexpectedly got cdSavedReminder.template == nil in newlyCreatedRecord() (key=.template) {savedReminder: %{public}s}", v56, 0xCu);
                sub_10000607C(v101);

                v10 = v105;
                v20 = v109;
              }

              else
              {
              }
            }
          }
        }

        else
        {
          v28 = [v20 encryptedValues];
          v29 = [v1 metadata];
          if (v29)
          {
            v30 = v29;
            v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            *(&v114 + 1) = &type metadata for Data;
            v115 = &protocol witness table for Data;
            *&v113 = v31;
            *(&v113 + 1) = v33;
            v20 = v109;
          }

          else
          {
            v115 = 0;
            v113 = 0u;
            v114 = 0u;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
        }

        ++v21;
      }

      while (v21 != 3);
    }
  }

  else
  {
    if (qword_100935F70 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_100006654(v79, qword_1009446B0);
    v80 = v1;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v113 = v84;
      *v83 = 136446210;
      v85 = [v80 remObjectID];
      if (v85)
      {
        v86 = v85;
        v87 = [v85 description];

        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;
      }

      else
      {
        v88 = 7104878;
        v90 = 0xE300000000000000;
      }

      v91 = sub_10000668C(v88, v90, &v113);
      v90, v92, v93, v94, v95, v96, v97, v98;
      *(v83 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v81, v82, "REMCDSavedReminder will not be used to represent a reminder in a public template, which is fetched from a template's public link, and is not expected to be shared. It shouldn't be uploaded for non-owner (savedReminderID: %{public}s)", v83, 0xCu);
      sub_10000607C(v84);
    }

    v20 = 0;
  }

  v99 = v20;
  result.value.super.isa = v99;
  result.is_nil = v18;
  return result;
}

Swift::Void __swiftcall REMCDSavedReminder.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_1009446B0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 template];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for saved reminder {savedReminderID: %{public}s, templateID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 template];
  if (!v38)
  {
    return;
  }

  v74 = v38;
  if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v39 = v4;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {
LABEL_28:

      [v39 markForDeletion];
      goto LABEL_29;
    }

    v42 = 7104878;
    v43 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v43 = 136446466;
    v44 = [v39 remObjectID];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 description];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v42 = 7104878;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v50 = sub_10000668C(v47, v49, &v75);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v43 + 4) = v50;
    *(v43 + 12) = 2082;
    v58 = [v39 template];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 remObjectID];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 description];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

LABEL_27:
        v65 = sub_10000668C(v42, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v40, v41, "Template is marked for deletion but saved reminder is not {savedReminderID: %{public}s, templateID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v64 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v74 forcePushToCloud];
}

Swift::Void __swiftcall REMCDSavedReminder.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009446B0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

_TtC7remindd19RDXPCStorePerformer *REMCDSavedReminder.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 attachments];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for REMCDSavedAttachment();
    sub_1003B37A8(&unk_10093F780, type metadata accessor for REMCDSavedAttachment, &protocol conformance descriptor for NSObject);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100278AE4(v3);
    v3, v5, v6, v7, v8, v9, v10, v11;
    v12 = sub_100271294(v4);

    sub_100271468(v12);
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_1003B346C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E2DA8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd18REMCDSavedReminderC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009446B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd18REMCDSavedReminderC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935F70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009446B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1003B37A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003B3800(uint64_t a1)
{
  result = sub_1003B3828();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B3828()
{
  result = qword_1009446D0;
  if (!qword_1009446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446D0);
  }

  return result;
}

unint64_t sub_1003B387C(uint64_t a1)
{
  result = sub_1003B38A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B38A4()
{
  result = qword_1009446D8;
  if (!qword_1009446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446D8);
  }

  return result;
}

unint64_t sub_1003B38FC()
{
  result = qword_1009446E0;
  if (!qword_1009446E0)
  {
    sub_1000F514C(&qword_1009446E8, &qword_1007A5278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446E0);
  }

  return result;
}

unint64_t sub_1003B3964()
{
  result = qword_1009446F0;
  if (!qword_1009446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009446F0);
  }

  return result;
}

void sub_1003B39D8(void *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {
    a2, 0xEB00000000656D61, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_1003B3A64(uint64_t a1)
{
  v2 = sub_1003B4058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003B3AA0(uint64_t a1)
{
  v2 = sub_1003B4058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003B3ADC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100944708, &qword_1007A5430);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1003B4058();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = sub_10000607C(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1003B3C58(void *a1)
{
  v2 = sub_1000F5104(&qword_100944718, &qword_1007A5438);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000F61C(a1, a1[3]);
  sub_1003B4058();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int sub_1003B3D94()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1003B3E04(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1003B3E7C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1003B3EE8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for RDSavedTemplateSection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedTemplateSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1003B4004()
{
  result = qword_100944700;
  if (!qword_100944700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944700);
  }

  return result;
}

unint64_t sub_1003B4058()
{
  result = qword_100944710;
  if (!qword_100944710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944710);
  }

  return result;
}

unint64_t sub_1003B40C0()
{
  result = qword_100944720;
  if (!qword_100944720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944720);
  }

  return result;
}

unint64_t sub_1003B4118()
{
  result = qword_100944728;
  if (!qword_100944728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944728);
  }

  return result;
}

unint64_t sub_1003B4170()
{
  result = qword_100944730;
  if (!qword_100944730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944730);
  }

  return result;
}

uint64_t sub_1003B41C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944738);
  v1 = sub_100006654(v0, qword_100944738);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B428C(id a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v167 = a2;
  v168 = a3;
  v6 = *v3;
  v7 = type metadata accessor for RDPublicTemplate(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = (&v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for UUID();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166, v11);
  v173 = (&v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Date();
  v176 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v159 = &v157 - v19;
  __chkstk_darwin(v20, v21);
  v174 = &v157 - v22;
  __chkstk_darwin(v23, v24);
  v177 = &v157 - v25;
  __chkstk_darwin(v26, v27);
  v175 = &v157 - v28;
  if (qword_100935F78 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100006654(v29, qword_100944738);
  swift_retain_n();
  v164 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v161 = v10;
  v169 = v6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v160 = a1;
    v37 = v36;
    v178 = v36;
    v179 = v6;
    *v34 = 136446978;
    swift_getMetatypeMetadata();
    v38 = String.init<A>(describing:)();
    v39 = v16;
    v41 = v40;
    v42 = v13;
    v43 = v4;
    v44 = sub_10000668C(v38, v40, &v178);
    v41, v45, v46, v47, v48, v49, v50, v51;
    *(v34 + 4) = v44;
    v4 = v43;
    v13 = v42;
    *(v34 + 12) = 2114;
    v52 = *(v4 + 16);
    v53 = *(v4 + 24);
    *(v34 + 14) = v52;
    *(v34 + 22) = 2114;
    *(v34 + 24) = v53;
    *v35 = v52;
    v35[1] = v53;
    *(v34 + 32) = 2048;
    v54 = v52;
    v55 = v53;
    v16 = v39;

    *(v34 + 34) = 1000;

    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s: Start execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld}", v34, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v37);
    a1 = v160;
  }

  else
  {
  }

  v56 = v175;
  Date.init()();
  v57 = *(v4 + 16);
  v172 = *(v4 + 24);
  v58 = v174;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v59 = v58;
  v60 = v57;
  v170 = v176[1];
  v171 = v176 + 1;
  v170(v59, v13);
  v61 = [v57 uuid];
  v62 = v173;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = sub_10041621C(v62, a1);
  v163 = v4;
  v158 = v63;
  v64 = objc_autoreleasePoolPush();
  v65 = sub_10034B568();
  v157 = v60;
  v66 = sub_10034AE0C(v60, a1, v65, 0);
  v160 = a1;
  v162 = v16;
  v65, v67, v68, v69, v70, v71, v72, v73;
  v74 = v161;
  v75 = v173;
  sub_100531140(v173, v177, v172, 1000, v161);

  objc_autoreleasePoolPop(v64);
  v116 = v158;
  sub_1006E8AFC(v74);
  v117 = sub_1006E8E28();
  if (v117)
  {
    v118 = v117;
    v179 = 0;
    v119 = [v160 save:&v179];
    v120 = v179;
    v121 = v162;
    if (v119)
    {
      v122 = v159;
      (v176[2])(v159, v56, v13);
      v123 = v120;
      v124 = v118;
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v162 = v128;
        v176 = swift_slowAlloc();
        v179 = v176;
        *v127 = 136446722;
        v129 = sub_1001424F8(v169);
        LODWORD(v164) = v126;
        v131 = v130;
        v132 = v13;
        v133 = v4;
        v134 = sub_10000668C(v129, v130, &v179);
        v131, v135, v136, v137, v138, v139, v140, v141;
        *(v127 + 4) = v134;
        v4 = v133;
        v13 = v132;
        v56 = v175;
        *(v127 + 12) = 2114;
        *(v127 + 14) = v124;
        *v128 = v118;
        *(v127 + 22) = 2048;
        v142 = v124;
        v143 = v174;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v145 = v144;
        v146 = v118;
        v147 = v170;
        v170(v143, v13);
        v147(v122, v13);
        v118 = v146;
        *(v127 + 24) = v145;
        _os_log_impl(&_mh_execute_header, v125, v164, "%{public}s: Saved preview in cache {previewObjectID: %{public}@, elapsedSeconds: %f}", v127, 0x20u);
        sub_100039860(v162);

        sub_10000607C(v176);

        v75 = v173;
      }

      else
      {

        v170(v122, v13);
      }

      v154 = v169;
      v155 = v157;
      v156 = v124;
      sub_1003B4EFC(v118, 0, v155, v172, v4, v56, v167, v168, v154);

      sub_1003B52F4(v161);
      (*(v165 + 8))(v75, v166);
      v114 = v170;
      v170(v177, v13);
      return v114(v56, v13);
    }

    v153 = v179;
    v152 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1003B52F4(v161);
  }

  else
  {
    v148 = v116;
    type metadata accessor for REMCDPublicTemplate();
    v149 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v151 = String._bridgeToObjectiveC()();
    v152 = [v149 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v151];

    swift_willThrow();
    sub_1003B52F4(v161);
    v121 = v162;
  }

  v76 = v157;
  (*(v165 + 8))(v75, v166);
  (v176[2])(v121, v56, v13);
  v77 = v76;
  swift_errorRetain();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v162 = v121;
    v81 = v80;
    v82 = swift_slowAlloc();
    v173 = v82;
    v83 = swift_slowAlloc();
    v176 = v83;
    *v81 = 136446978;
    v84 = v169;
    v178 = v83;
    v179 = v169;
    swift_getMetatypeMetadata();
    v85 = String.init<A>(describing:)();
    v87 = v86;
    v88 = sub_10000668C(v85, v86, &v178);
    v87, v89, v90, v91, v92, v93, v94, v95;
    *(v81 + 4) = v88;
    *(v81 + 12) = 2114;
    *(v81 + 14) = v77;
    *v82 = v77;
    *(v81 + 22) = 2082;
    swift_getErrorValue();
    v96 = v13;
    v97 = v77;
    v98 = Error.rem_errorDescription.getter();
    v100 = v99;
    v101 = sub_10000668C(v98, v99, &v178);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v81 + 24) = v101;
    v13 = v96;
    *(v81 + 32) = 2048;
    v109 = v174;
    Date.init()();
    v110 = v162;
    Date.timeIntervalSince(_:)();
    v112 = v111;
    v113 = v109;
    v114 = v170;
    v170(v113, v96);
    v114(v110, v96);
    *(v81 + 34) = v112;
    _os_log_impl(&_mh_execute_header, v78, v79, "%{public}s: Failed to create preview of template's public content. {templateObjectID: %{public}@, privacy: .public), error: %{public}s, elapsedSeconds: %f}", v81, 0x2Au);
    sub_100039860(v173);

    swift_arrayDestroy();
  }

  else
  {

    v114 = v170;
    v170(v121, v13);
    v84 = v169;
  }

  swift_errorRetain();
  v56 = v175;
  sub_1003B4EFC(v152, 1, v77, v172, v163, v175, v167, v168, v84);

  v114(v177, v13);
  return v114(v56, v13);
}

uint64_t sub_1003B4EFC(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void), uint64_t a8, uint64_t a9)
{
  v53 = a8;
  v54 = a7;
  v51 = a2;
  v52 = a1;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v47 - v18;
  if (qword_100935F78 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100944738);
  (*(v13 + 16))(v19, a6, v12);
  swift_retain_n();
  v21 = a3;
  v22 = a4;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v48 = v24;
    v25 = swift_slowAlloc();
    v47 = v23;
    v26 = v25;
    v27 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55[0] = v49;
    v55[1] = a9;
    *v26 = 136447234;
    swift_getMetatypeMetadata();
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = sub_10000668C(v28, v29, v55);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v26 + 4) = v31;
    *(v26 + 12) = 2114;
    *(v26 + 14) = v21;
    *(v26 + 22) = 2114;
    *(v26 + 24) = v22;
    *v27 = v21;
    v27[1] = v22;
    *(v26 + 32) = 2048;
    v39 = v21;
    v40 = v22;

    *(v26 + 34) = 1000;

    *(v26 + 42) = 2048;
    v41 = v50;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v43 = v42;
    v44 = *(v13 + 8);
    v44(v41, v12);
    v44(v19, v12);
    *(v26 + 44) = v43;
    v45 = v47;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: Finished execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld, elapsedSeconds: %f}", v26, 0x34u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v49);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  return v54(v52, v51 & 1);
}

uint64_t sub_1003B5290()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003B52F4(uint64_t a1)
{
  v2 = type metadata accessor for RDPublicTemplate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_1003B5350(void *a1)
{
  v4 = *v1;
  v82 = 0;
  v5 = [a1 remObjectIDWithError:&v82];
  if (v5)
  {
    v6 = v5;
    v7 = v82;
    v8 = [a1 account];
    if (v8 && (v9 = v8, v10 = [v8 remObjectID], v9, v10))
    {
      v11 = [a1 displayName];
      if (v11)
      {
        v4 = v11;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = sub_1003B67D4(a1, v6, v10, v12);
        if (v2)
        {

          v14, v23, v24, v25, v26, v27, v28, v29;
        }

        else
        {
          v73 = v15;
          v14, v16, v17, v18, v19, v20, v21, v22;
          v74 = [a1 canonicalName];
          [v73 setCanonicalName:v74];

          v4 = v73;
          [v4 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          [v4 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
          [v4 setResolutionTokenMap:0];
          v75 = [a1 resolutionTokenMapData];
          if (v75)
          {
            v76 = v75;
            v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v79 = v78;

            v80.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v77, v79);
          }

          else
          {
            v80.super.isa = 0;
          }

          [v4 setResolutionTokenMapData:v80.super.isa];
        }
      }

      else
      {
        if (qword_100935F88 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_100944820);
        v54 = v6;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v82 = v4;
          v83 = v81;
          *v57 = 136315394;
          swift_getMetatypeMetadata();
          v59 = String.init<A>(describing:)();
          v61 = v60;
          v62 = sub_10000668C(v59, v60, &v83);
          v61, v63, v64, v65, v66, v67, v68, v69;
          *(v57 + 4) = v62;
          *(v57 + 12) = 2112;
          *(v57 + 14) = v54;
          *v58 = v6;
          v70 = v54;
          _os_log_impl(&_mh_execute_header, v55, v56, "%s: cdListSection.displayName is nil {cdListSection.remObjectID: %@}", v57, 0x16u);
          sub_1000050A4(v58, &unk_100938E70, &unk_100797230);

          sub_10000607C(v81);
        }

        v71 = objc_opt_self();
        type metadata accessor for REMCDListSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = String._bridgeToObjectiveC()();
        [v71 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100935F88 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_100944820);
      v31 = v6;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v82 = v4;
        v83 = v36;
        *v34 = 136315394;
        swift_getMetatypeMetadata();
        v37 = String.init<A>(describing:)();
        v39 = v38;
        v40 = sub_10000668C(v37, v38, &v83);
        v39, v41, v42, v43, v44, v45, v46, v47;
        *(v34 + 4) = v40;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v31;
        *v35 = v6;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s: cdListSection.account is nil {cdListSection.remObjectID: %@}", v34, 0x16u);
        sub_1000050A4(v35, &unk_100938E70, &unk_100797230);

        sub_10000607C(v36);
      }

      v49 = objc_opt_self();
      type metadata accessor for REMCDListSection();
      v50 = swift_getObjCClassFromMetadata();
      v4 = String._bridgeToObjectiveC()();
      [v49 unexpectedNilPropertyWithClass:v50 property:v4];

      swift_willThrow();
    }
  }

  else
  {
    v51 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

Swift::Int sub_1003B5A48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000656D61;
  if (v1 != 3)
  {
    v4 = 0xED0000656D614E6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0x80000001007E8C60;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

double sub_1003B5B4C(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  v5 = 0xEB00000000656D61;
  if (v2 != 3)
  {
    v5 = 0xED0000656D614E6CLL;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0x80000001007E8C60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();

  v6, v7, v8, v9, v10, v11, v12, v13;
  return result;
}

Swift::Int sub_1003B5C3C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  v5 = 0xEB00000000656D61;
  if (v2 != 3)
  {
    v5 = 0xED0000656D614E6CLL;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0x80000001007E8C60;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

unint64_t sub_1003B5D3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003B6C54(*a1);
  *a2 = result;
  return result;
}

void sub_1003B5D6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xEC00000065746144;
  v6 = 0x6E6F697461657263;
  v7 = 0xEB00000000656D61;
  v8 = 0x4E79616C70736964;
  if (v2 != 3)
  {
    v8 = 0x6163696E6F6E6163;
    v7 = 0xED0000656D614E6CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x80000001007E8C60;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1003B5E3C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003B6C54(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003B5E64()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x6E6F697461657263;
  v4 = 0x4E79616C70736964;
  if (v1 != 3)
  {
    v4 = 0x6163696E6F6E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003B5F20(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x4449746E65726170;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (v8)
  {
    v10 = 0xE900000000000044;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (*a2)
  {
    v11 = 0x4449746E65726170;
  }

  else
  {
    v11 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE900000000000044;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1003B5FCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1003B6054(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1003B60C8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1003B614C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1A38, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1003B61AC(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x4449746E65726170;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1003B6200(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1A38, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_1003B6264()
{
  if (*v0)
  {
    return 0x4449746E65726170;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

unint64_t sub_1003B62A4()
{
  result = sub_1003B62C4();
  qword_100974D70 = result;
  return result;
}

unint64_t sub_1003B62C4()
{
  v1 = 0;
  v2 = 0x80000001007E8C60;
  v3 = 0x6163696E6F6E6163;
  v4 = &off_1008E2258;
  do
  {
    while (1)
    {
      v14 = &off_1008E2258 + v1++;
      v15 = v14[32];
      v16 = 0x4E79616C70736964;
      if (v15 != 3)
      {
        v16 = 0x6163696E6F6E6163;
      }

      v17 = 0xEB00000000656D61;
      if (v15 != 3)
      {
        v17 = 0xED0000656D614E6CLL;
      }

      if (v15 == 2)
      {
        v16 = 0x6E6F697461657263;
        v17 = 0xEC00000065746144;
      }

      v18 = 0x44497463656A626FLL;
      if (v15)
      {
        v18 = 0xD000000000000017;
      }

      v19 = 0xE800000000000000;
      if (v15)
      {
        v19 = 0x80000001007E8C60;
      }

      if (v15 <= 1)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v15 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(v20, v21);
      v31 = _swiftEmptyDictionarySingleton[2];
      v32 = (v24 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v0 = v24;
      if (_swiftEmptyDictionarySingleton[3] >= v34)
      {
        break;
      }

      sub_10036A8F0(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100005F4C(v20, v21);
      if ((v0 & 1) != (v24 & 1))
      {
        goto LABEL_45;
      }

LABEL_24:
      if ((v0 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_2:
      v0 = result;
      v21, v24, v25, v26, v27, v28, v29, v30;
      v5 = (_swiftEmptyDictionarySingleton[7] + 16 * v0);
      v6 = v5[1];
      *v5 = v20;
      v5[1] = v21;
      v6, v7, v8, v9, v10, v11, v12, v13;
      if (v1 == 5)
      {
        goto LABEL_30;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = result;
    sub_100373664();
    result = isUniquelyReferenced_nonNull_native;
    if (v0)
    {
      goto LABEL_2;
    }

LABEL_25:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v35 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v35 = v20;
    v35[1] = v21;
    v36 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
    *v36 = v20;
    v36[1] = v21;
    v37 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v33)
    {
      goto LABEL_38;
    }

    _swiftEmptyDictionarySingleton[2] = v38;
  }

  while (v1 != 5);
LABEL_30:
  v21 = 0xE900000000000044;
  v20 = 0x49746E756F636361;
  v4 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  isUniquelyReferenced_nonNull_native = 0x49746E756F636361;
  v0 = 0xE900000000000044;
  v1 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  v46 = _swiftEmptyDictionarySingleton[2];
  v47 = (v39 & 1) == 0;
  v33 = __OFADD__(v46, v47);
  v48 = v46 + v47;
  if (v33)
  {
    goto LABEL_49;
  }

  v2 = v39;
  if (_swiftEmptyDictionarySingleton[3] >= v48)
  {
    if (v1)
    {
LABEL_35:
      if (v2)
      {
LABEL_36:
        v49 = result;
        v0, v39, v40, v41, v42, v43, v44, v45;
        v50 = (_swiftEmptyDictionarySingleton[7] + 16 * v49);
        v51 = v50[1];
        *v50 = v3;
        v50[1] = v4;
        v51, v52, v53, v54, v55, v56, v57, v58;
        goto LABEL_42;
      }

LABEL_40:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v60 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v60 = isUniquelyReferenced_nonNull_native;
      v60[1] = v0;
      v61 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
      *v61 = v3;
      v61[1] = v4;
      v62 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v33)
      {
        goto LABEL_54;
      }

      _swiftEmptyDictionarySingleton[2] = v63;
LABEL_42:
      v2 = 0xE400000000000000;
      v21 = 0xE800000000000000;
      v20 = 0x4449746E65726170;
      v1 = 1953720684;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
      v71 = _swiftEmptyDictionarySingleton[2];
      v72 = (v64 & 1) == 0;
      v33 = __OFADD__(v71, v72);
      v73 = v71 + v72;
      if (!v33)
      {
        LOBYTE(v0) = v64;
        if (_swiftEmptyDictionarySingleton[3] >= v73)
        {
          goto LABEL_46;
        }

        sub_10036A8F0(v73, isUniquelyReferenced_nonNull_native);
        result = sub_100005F4C(0x4449746E65726170, 0xE800000000000000);
        if ((v0 & 1) != (v64 & 1))
        {
          goto LABEL_45;
        }

LABEL_47:
        if ((v0 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_39:
    v59 = result;
    sub_100373664();
    result = v59;
    if (v2)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  sub_10036A8F0(v48, v1);
  result = sub_100005F4C(0x49746E756F636361, 0xE900000000000044);
  if ((v2 & 1) == (v39 & 1))
  {
    goto LABEL_35;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_46:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_47;
  }

LABEL_50:
  v84 = result;
  sub_100373664();
  result = v84;
  if (v0)
  {
LABEL_48:
    v74 = result;
    v21, v64, v65, v66, v67, v68, v69, v70;
    v75 = (_swiftEmptyDictionarySingleton[7] + 16 * v74);
    v76 = v75[1];
    *v75 = v1;
    v75[1] = v2;
    v76, v77, v78, v79, v80, v81, v82, v83;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_51:
  _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
  v85 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
  *v85 = v20;
  v85[1] = v21;
  v86 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
  *v86 = v1;
  v86[1] = v2;
  v87 = _swiftEmptyDictionarySingleton[2];
  v33 = __OFADD__(v87, 1);
  v88 = v87 + 1;
  if (!v33)
  {
    _swiftEmptyDictionarySingleton[2] = v88;
    return _swiftEmptyDictionarySingleton;
  }

LABEL_54:
  __break(1u);
  return result;
}

void *sub_1003B67D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v50 = *v7;
  v51 = a4;
  v11 = type metadata accessor for Date();
  v49 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 list];
  if (v16 && (v17 = v16, v6 = [v16 remObjectID], v17, v6))
  {
    v50 = v5;
    v18 = a3;
    v19 = objc_allocWithZone(REMListSectionStorage);
    v20 = v6;
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 initWithObjectID:a2 accountID:v18 parentID:v20 displayName:v21];

    v6 = v22;
    v23 = [a1 creationDate];
    if (v23)
    {
      v24 = v23;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v49 + 8))(v15, v11);
    }

    else
    {
      v25.super.isa = 0;
    }

    [v6 setCreationDate:{v25.super.isa, v49}];

    v47 = [a1 canonicalName];
    [v6 setCanonicalName:v47];
  }

  else
  {
    if (qword_100935F88 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100944820);
    v27 = a2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52[0] = v31;
      *v30 = 136315394;
      v52[2] = v50;
      swift_getMetatypeMetadata();
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = sub_10000668C(v32, v33, v52);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v6 = v27;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: cdListSection.list is nil {cdListSection.remObjectID: %@}", v30, 0x16u);
      sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

      sub_10000607C(v31);
    }

    v44 = objc_opt_self();
    type metadata accessor for REMCDListSection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = String._bridgeToObjectiveC()();
    [v44 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v46];

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1003B6C54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0FF8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1003B6CA0(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 parentID];
    v7 = v2;
    v3 = &_swiftEmptyArrayStorage;
    if (v2)
    {
      v4 = v2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = &_swiftEmptyArrayStorage;
    }

    sub_1000050A4(&v7, &unk_10093AF40, &unk_100795790);
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *v3->clientIdentity = xmmword_1007953F0;
    *&v3->clientIdentity[16] = [a1 accountID];
  }

  return v3;
}

void sub_1003B6DCC(void *a1, void *a2, uint64_t a3)
{
  v8 = *v3;
  v153 = type metadata accessor for Date();
  v9 = *(v153 - 8);
  __chkstk_darwin(v153, v10);
  v152 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for UUID();
  v12 = *(v154 - 1);
  *&v14 = __chkstk_darwin(v154, v13).n128_u64[0];
  v16 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = [a2 createResolutionTokenMapIfNecessary];
  v17 = [a1 resolutionTokenMap];
  if (v17)
  {
    v18 = v17;
    v26 = sub_100695D94(v17, a3);
    v27 = a3;
    v28 = *(a3 + 16);
    if (!v28)
    {

      goto LABEL_54;
    }

    v149 = v18;
    v150 = v4;
    v29 = (v27 + 32);
    v151 = (v9 + 8);
    v30 = (v12 + 8);
    while (1)
    {
      v35 = *v29++;
      v34 = v35;
      if (v35 <= 1)
      {
        if (v34)
        {
          sub_100693EE4(1u, v19, v20, v21, v22, v23, v24, v25);
          v56 = v55;
          v57 = String._bridgeToObjectiveC()();
          v56, v58, v59, v60, v61, v62, v63, v64;
          LODWORD(v56) = [v155 mergeWithMap:v26 forKey:v57];

          if (v56)
          {
            [a2 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          }

          goto LABEL_6;
        }

        v31 = [a1 objectID];
        v32 = [v31 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v30)(v16, v154);
        [a2 setIdentifier:{v33.super.isa, v149}];
      }

      else if (v34 == 2)
      {
        sub_100693EE4(2u, v19, v20, v21, v22, v23, v24, v25);
        v66 = v65;
        v67 = String._bridgeToObjectiveC()();
        v66, v68, v69, v70, v71, v72, v73, v74;
        LODWORD(v66) = [v155 mergeWithMap:v26 forKey:v67];

        if (!v66)
        {
          goto LABEL_6;
        }

        v75 = [a1 creationDate];
        if (v75)
        {
          v76 = v152;
          v77 = v75;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v33.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v151)(v76, v153);
        }

        else
        {
          v33.super.isa = 0;
        }

        [a2 setCreationDate:{v33.super.isa, v149}];
      }

      else if (v34 == 3)
      {
        sub_100693EE4(3u, v19, v20, v21, v22, v23, v24, v25);
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();
        v37, v39, v40, v41, v42, v43, v44, v45;
        LODWORD(v37) = [v155 mergeWithMap:v26 forKey:v38];

        if (!v37)
        {
          goto LABEL_6;
        }

        v33.super.isa = [a1 displayName];
        if (!v33.super.isa)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;
          v33.super.isa = String._bridgeToObjectiveC()();
          v47, v48, v49, v50, v51, v52, v53, v54;
        }

        [a2 setDisplayName:{v33.super.isa, v149}];
      }

      else
      {
        sub_100693EE4(4u, v19, v20, v21, v22, v23, v24, v25);
        v79 = v78;
        v80 = String._bridgeToObjectiveC()();
        v79, v81, v82, v83, v84, v85, v86, v87;
        LODWORD(v79) = [v155 mergeWithMap:v26 forKey:v80];

        if (!v79)
        {
          goto LABEL_6;
        }

        v33.super.isa = [a1 canonicalName];
        [a2 setCanonicalName:{v33.super.isa, v149}];
      }

LABEL_6:
      if (!--v28)
      {

        goto LABEL_54;
      }
    }
  }

  if (qword_100935F80 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  sub_100006654(v88, qword_100944808);
  v89 = a1;

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.fault.getter();
  a3, v92, v93, v94, v95, v96, v97, v98;

  if (os_log_type_enabled(v90, v91))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v156 = v101;
    *v99 = 136315650;
    v157 = v8;
    swift_getMetatypeMetadata();
    v102 = String.init<A>(describing:)();
    v104 = v103;
    v105 = sub_10000668C(v102, v103, &v156);
    v104, v106, v107, v108, v109, v110, v111, v112;
    *(v99 + 4) = v105;
    *(v99 + 12) = 2114;
    v113 = [v89 objectID];
    *(v99 + 14) = v113;
    v154 = v100;
    *v100 = v113;
    *(v99 + 22) = 2082;
    v114 = *(a3 + 16);
    v115 = &_swiftEmptyArrayStorage;
    if (v114)
    {
      v150 = v101;
      LODWORD(v151) = v91;
      v152 = v99;
      v153 = v90;
      v157 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v114, 0);
      v115 = v157;
      v116 = (a3 + 32);
      do
      {
        v118 = *v116++;
        v117 = v118;
        v119 = v118 == 3;
        if (v118 == 3)
        {
          v120 = 0x4E79616C70736964;
        }

        else
        {
          v120 = 0x6163696E6F6E6163;
        }

        if (v119)
        {
          v121 = 0xEB00000000656D61;
        }

        else
        {
          v121 = 0xED0000656D614E6CLL;
        }

        if (v117 == 2)
        {
          v120 = 0x6E6F697461657263;
          v121 = 0xEC00000065746144;
        }

        v122 = 0xD000000000000017;
        if (v117)
        {
          v123 = 0x80000001007E8C60;
        }

        else
        {
          v122 = 0x44497463656A626FLL;
          v123 = 0xE800000000000000;
        }

        if (v117 <= 1)
        {
          v124 = v122;
        }

        else
        {
          v124 = v120;
        }

        if (v117 <= 1)
        {
          v125 = v123;
        }

        else
        {
          v125 = v121;
        }

        v157 = v115;
        v127 = *v115->clientIdentity;
        v126 = *&v115->clientIdentity[8];
        if (v127 >= v126 >> 1)
        {
          sub_100026EF4((v126 > 1), v127 + 1, 1);
          v115 = v157;
        }

        *v115->clientIdentity = v127 + 1;
        v128 = v115 + 16 * v127;
        *(v128 + 4) = v124;
        *(v128 + 5) = v125;
        --v114;
      }

      while (v114);
      v99 = v152;
      v90 = v153;
      LOBYTE(v91) = v151;
    }

    v129 = Array.description.getter();
    v131 = v130;
    v115, v130, v132, v133, v134, v135, v136, v137;
    v138 = sub_10000668C(v129, v131, &v156);
    v131, v139, v140, v141, v142, v143, v144, v145;
    *(v99 + 24) = v138;
    _os_log_impl(&_mh_execute_header, v90, v91, "%s: merge(storage:into cdSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v99, 0x20u);
    sub_1000050A4(v154, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v146 = objc_opt_self();
  sub_1003B7F3C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v148 = String._bridgeToObjectiveC()();
  [v146 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v148];

  swift_willThrow();
LABEL_54:
}

void sub_1003B769C(id a1, id a2, char a3, uint64_t a4)
{
  v6 = v4;
  if ((a3 & 1) == 0)
  {
    v11 = [a1 accountID];
    sub_100688B58(0, v11, a4);
    if (!v5)
    {
      v37 = qword_100935F80;
      v38 = v36;
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100944808);
      v40 = v38;
      v41 = a2;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v44 = 136446466;
        v45 = [v41 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v120 = v43;
        v46 = Optional.descriptionOrNil.getter();
        v123 = v41;
        v48 = v47;

        v49 = sub_10000668C(v46, v48, &v126);
        v48, v50, v51, v52, v53, v54, v55, v56;
        *(v44 + 4) = v49;
        *(v44 + 12) = 2082;
        v125 = [v40 remObjectID];
        v57 = Optional.descriptionOrNil.getter();
        v59 = v58;

        v41 = v123;
        v60 = sub_10000668C(v57, v59, &v126);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v44 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v42, v120, "Updating cdListSection.account {cdListSection: %{public}s, account: %{public}s}", v44, 0x16u);
        swift_arrayDestroy();
      }

      [v41 setAccount:v40];
      return;
    }

LABEL_18:

    return;
  }

  v10 = *v6;
  v11 = [a2 createResolutionTokenMapIfNecessary];
  v12 = [a1 resolutionTokenMap];
  if (!v12)
  {
    if (qword_100935F80 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_100944808);
    v69 = a1;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v72 = 136315650;
      v126 = v10;
      swift_getMetatypeMetadata();
      v74 = String.init<A>(describing:)();
      v76 = v75;
      v77 = sub_10000668C(v74, v75, &v125);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v72 + 4) = v77;
      *(v72 + 12) = 2114;
      v85 = [v69 objectID];
      *(v72 + 14) = v85;
      *v73 = v85;
      *(v72 + 22) = 2082;
      *(v72 + 24) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v125);
      _os_log_impl(&_mh_execute_header, v70, v71, "%s: establishRelationship(onStorage:into cdListSection:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v72, 0x20u);
      sub_1000050A4(v73, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v86 = objc_opt_self();
    sub_1003B7F3C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v88 = String._bridgeToObjectiveC()();
    [v86 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v88];

    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v12;
  sub_1000F5104(&qword_1009434A8, &qword_1007A3E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 1;
  v15 = sub_100695FBC(v13, inited);
  swift_setDeallocating();
  v16 = [a1 listID];
  sub_10069429C(1, v17, v18, v19, v20, v21, v22, v23);
  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v25, v27, v28, v29, v30, v31, v32, v33;
  LODWORD(v25) = [v11 mergeWithMap:v15 forKey:v26];

  if (v25)
  {
    if (v16)
    {
      v34 = v16;
      sub_100688B88(1, v34, a4);
      if (v5)
      {

        return;
      }

      v89 = v35;
    }

    else
    {
      v89 = 0;
    }

    if (qword_100935F80 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_100944808);
    v124 = v89;
    v91 = v89;
    v92 = a2;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v118 = v94;
      log = v93;
      v122 = v91;
      v95 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v95 = 136446466;
      v121 = v92;
      v125 = [v92 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v96 = Optional.descriptionOrNil.getter();
      v98 = v97;

      v99 = sub_10000668C(v96, v98, &v126);
      v98, v100, v101, v102, v103, v104, v105, v106;
      *(v95 + 4) = v99;
      *(v95 + 12) = 2082;
      if (v124)
      {
        v125 = [v91 remObjectID];
        v107 = Optional.descriptionOrNil.getter();
        v109 = v108;
      }

      else
      {
        v109 = 0xE90000000000003ELL;
        v107 = 0x7473696C206F6E3CLL;
      }

      v110 = sub_10000668C(v107, v109, &v126);
      v109, v111, v112, v113, v114, v115, v116, v117;
      *(v95 + 14) = v110;
      _os_log_impl(&_mh_execute_header, log, v118, "Updating cdListSection.list {cdListSection: %{public}s, list: %{public}s}", v95, 0x16u);
      swift_arrayDestroy();

      v92 = v121;
      v91 = v122;
    }

    else
    {
    }

    [v92 setList:v91];
  }
}

unint64_t sub_1003B7F3C()
{
  result = qword_100939BD0;
  if (!qword_100939BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939BD0);
  }

  return result;
}

unint64_t sub_1003B7FDC()
{
  result = qword_1009449E8;
  if (!qword_1009449E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009449E8);
  }

  return result;
}

unint64_t sub_1003B8064()
{
  result = qword_100944A00;
  if (!qword_100944A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944A00);
  }

  return result;
}

uint64_t sub_1003B80B8(uint64_t a1)
{
  v2 = v1;
  v49 = type metadata accessor for RDXPCEventStream.Alarm(0);
  __chkstk_darwin(v49, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Date();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[2];
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11, v14);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if (v19)
  {
    if (qword_100935F98 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100944A08);
  v21 = v7;
  v22 = v10;
  v46 = *(v7 + 16);
  v47 = a1;
  v23 = v48;
  v46(v10, a1, v48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v22;
    v28 = swift_slowAlloc();
    v50 = v28;
    *v26 = 136446210;
    v44 = Date.description.getter();
    v45 = v2;
    v30 = v29;
    (*(v21 + 8))(v27, v23);
    v31 = sub_10000668C(v44, v30, &v50);
    v32 = v30;
    v2 = v45;
    v32, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Adding XPC time event {date: %{public}s}", v26, 0xCu);
    sub_10000607C(v28);
  }

  else
  {

    (*(v21 + 8))(v10, v23);
  }

  v40 = v2[3];
  v41 = v2[4];
  v46(&v6[*(v49 + 24)], v47, v23);
  *v6 = v40;
  *(v6 + 1) = v41;
  v6[16] = 1;

  sub_10025E654(v6);
  return sub_1003B98CC(v6, type metadata accessor for RDXPCEventStream.Alarm);
}

uint64_t sub_1003B848C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = (v2 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler);
  v10 = *(v2 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler);
  v11 = *(v2 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler + 8);
  *v9 = a1;
  v9[1] = a2;
  sub_10014D92C(a1, a2);
  sub_1000FDA80(v10, v11);
  sub_1003B87C0();
  v12 = *v9;
  if (*v9)
  {
    v13 = v9[1];

    sub_1003B8BFC(v12, v13, v8);
    sub_1000FDA80(a1, a2);
    sub_1000FDA80(v12, v13);
    v14 = type metadata accessor for RDXPCEventStream.Token(0);
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    v15 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
    swift_beginAccess();
    sub_1003B912C(v8, v2 + v15);
    return swift_endAccess();
  }

  else
  {

    return sub_1000FDA80(a1, a2);
  }
}

uint64_t sub_1003B862C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944A08);
  v1 = sub_100006654(v0, qword_100944A08);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B86F4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1003B8724()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003B8778(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003B87C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for RDXPCEventStream.Token(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v17 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v29 - v20;
  v22 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
  swift_beginAccess();
  sub_1003B96A0(v0 + v22, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1003B9710(v12);
  }

  sub_1003B9778(v12, v21);
  v24 = *(v0 + 40);
  sub_1003B97DC(v21, v17);
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  sub_1003B9778(v17, v26 + v25);
  *(v26 + ((v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1003B9840;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EF7A0;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v28 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v31 + 8))(v4, v28);
  (*(v29 + 8))(v8, v30);
  sub_1003B98CC(v21, type metadata accessor for RDXPCEventStream.Token);
}

uint64_t sub_1003B8BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[2];
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v16)
  {
    if (qword_100935F98 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100944A08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Registering Time Event Handler", v20, 2u);
  }

  v21 = v4[3];
  v22 = v4[4];
  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = a1;
  v23[4] = a2;
  v24 = v15;

  sub_10025E178(v21, v22, sub_1003B93F8, v23, a3);
}

uint64_t sub_1003B8E40()
{
  sub_1003B87C0();

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  sub_1003B9710(v0 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken);
  sub_1000FDA80(*(v0 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler), *(v0 + OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDXPCActivityTimeEventStream(uint64_t a1)
{
  result = qword_100944A50;
  if (!qword_100944A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B8F28(uint64_t a1)
{
  sub_1003B8FE8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003B8FE8(uint64_t a1)
{
  if (!qword_100944A60)
  {
    type metadata accessor for RDXPCEventStream.Token(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100944A60);
    }
  }
}

uint64_t getEnumTagSinglePayload for RDXPCActivityTimeEventStream.Name(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RDXPCActivityTimeEventStream.Name(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1003B90D8()
{
  result = qword_100944B00;
  if (!qword_100944B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B00);
  }

  return result;
}

uint64_t sub_1003B912C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B919C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a4;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v14 = a4;
  LOBYTE(a4) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (a4)
  {
    xpc_copy_description(a3);
    if (qword_100935F98 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100944A08);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    v20 = String.init(cString:)();
    v22 = v21;
    v23 = sub_10000668C(v20, v21, &v34);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "XPCActivityTimeEventStream received event {xpc_event: %s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  return a5(v31);
}

uint64_t sub_1003B9404(uint64_t a1)
{
  v2 = type metadata accessor for RDXPCEventStream.Token(0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935F98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100944A08);
  sub_1003B97DC(a1, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v10;
    _StringGuts.grow(_:)(26);
    v41, v11, v12, v13, v14, v15, v16, v17;
    v40 = 0xD000000000000017;
    v41 = 0x80000001007F28E0;
    type metadata accessor for UUID();
    sub_100054694(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v18._object;
    String.append(_:)(v18);
    object, v20, v21, v22, v23, v24, v25, v26;
    v27._countAndFlagsBits = 62;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28 = v40;
    v29 = v41;
    sub_1003B98CC(v5, type metadata accessor for RDXPCEventStream.Token);
    v30 = sub_10000668C(v28, v29, &v42);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v9 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unregistering xpcEventStreamToken {xpcEventStreamToken: %s}", v9, 0xCu);
    sub_10000607C(v10);
  }

  else
  {

    sub_1003B98CC(v5, type metadata accessor for RDXPCEventStream.Token);
  }

  return sub_10025E480(a1);
}

uint64_t sub_1003B96A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B9710(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100944B08, &qword_1007A58D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B9778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDXPCEventStream.Token(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B97DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDXPCEventStream.Token(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B9840()
{
  v1 = *(type metadata accessor for RDXPCEventStream.Token(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1003B9404(v2);
}

uint64_t sub_1003B98CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003B992C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944B10);
  v1 = sub_100006654(v0, qword_100944B10);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003B99F4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v280 = a1;
  v283 = *v1;
  v274 = type metadata accessor for RDPublicTemplate(0);
  __chkstk_darwin(v274, v5);
  v277 = &v261 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v279 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v278 = (&v261 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Date();
  v282 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v271 = &v261 - v16;
  __chkstk_darwin(v17, v18);
  v20 = (&v261 - v19);
  __chkstk_darwin(v21, v22);
  v273 = &v261 - v23;
  __chkstk_darwin(v24, v25);
  v275 = (&v261 - v26);
  __chkstk_darwin(v27, v28);
  v284 = (&v261 - v29);
  if (qword_100935FA0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100006654(v30, qword_100944B10);
  swift_retain_n();
  v276 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v281 = v10;
  v272 = v13;
  v270 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    v286 = v269;
    *v35 = 136446978;
    v287[0] = v283;
    swift_getMetatypeMetadata();
    v37 = String.init<A>(describing:)();
    v38 = v4;
    v40 = v39;
    v41 = sub_10000668C(v37, v39, &v286);
    v42 = v40;
    v4 = v38;
    v3 = v2;
    v42, v43, v44, v45, v46, v47, v48, v49;
    *(v35 + 4) = v41;
    *(v35 + 12) = 2114;
    v50 = v4[3];
    v51 = v4[4];
    *(v35 + 14) = v50;
    *(v35 + 22) = 2114;
    *(v35 + 24) = v51;
    *v36 = v50;
    v36[1] = v51;
    *(v35 + 32) = 2048;
    v52 = v50;
    v53 = v51;

    *(v35 + 34) = 50;

    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Start execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld}", v35, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v269);
  }

  else
  {
  }

  v54 = v284;
  Date.init()();
  v55 = objc_autoreleasePoolPush();
  v56 = v4[3];
  v57 = sub_100415C08();
  v58 = [(RDXPCStorePerformer *)v56 uuid];
  v59 = v278;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v59;
  v62 = sub_100415DE4(v59, v61, v280, v57);
  if (v3)
  {
    v57, v63, v64, v65, v66, v67, v68, v69;
    (*(v279 + 8))(v59, v7);
    v70 = v282;
    v73 = v281;
    objc_autoreleasePoolPop(v55);

    (*(v70 + 8))(v54, v73);
    return;
  }

  v71 = v62;
  v267 = v56;
  v57, v63, v64, v65, v66, v67, v68, v69;
  (*(v279 + 8))(v60, v7);
  v269 = [v71 objectID];
  v72 = v277;
  sub_1006E8FC0(v277);
  v279 = 0;

  v74 = &v72[*(v274 + 40)];
  v75 = *(v74 + 1);
  v288[0] = *v74;
  v288[1] = v75;
  v76 = *(v74 + 3);
  v289 = *(v74 + 2);
  v290 = v76;
  sub_10013FD6C(v288, v287);
  sub_1003BD550(v72, type metadata accessor for RDPublicTemplate);
  objc_autoreleasePoolPop(v55);
  v77 = v282;
  v78 = *(v282 + 16);
  v79 = v275;
  v80 = v281;
  v266 = v282 + 16;
  v265 = v78;
  v78(v275, v54, v281);
  sub_10013FD6C(v288, v287);

  sub_10013FD6C(v288, v287);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v278 = swift_slowAlloc();
    v286 = v278;
    *v83 = 136446978;
    v287[0] = v283;
    swift_getMetatypeMetadata();
    v85 = String.init<A>(describing:)();
    v87 = v86;
    v88 = v4;
    v89 = sub_10000668C(v85, v86, &v286);
    v87, v90, v91, v92, v93, v94, v95, v96;
    *(v83 + 4) = v89;
    *(v83 + 12) = 2114;
    v97 = v267;
    *(v83 + 14) = v267;
    *v84 = v97;
    *(v83 + 22) = 2048;
    v98 = *(*&v288[0] + 16);
    v99 = v97;
    sub_10013FE1C(v288);
    *(v83 + 24) = v98;
    v4 = v88;
    sub_10013FE1C(v288);
    *(v83 + 32) = 2048;
    v100 = v273;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v102 = v101;
    v103 = *(v282 + 8);
    v104 = v100;
    v80 = v281;
    v103(v104, v281);
    v274 = v103;
    v103(v79, v80);
    *(v83 + 34) = v102;
    _os_log_impl(&_mh_execute_header, v81, v82, "%{public}s: Fetched saved reminders in public template {templateObjectID: %{public}@, topLevelRemindersCount: %ld, elapsedSeconds: %f}", v83, 0x2Au);
    sub_1000050A4(v84, &unk_100938E70, &unk_100797230);
    v54 = v284;

    sub_10000607C(v278);
  }

  else
  {
    sub_10013FE1C(v288);
    sub_10013FE1C(v288);

    v274 = *(v77 + 8);
    (v274)(v79, v80);
  }

  v106 = v4[4];
  v105 = v4[5];
  v287[0] = 0;
  v107 = [(RDXPCStorePerformer *)v105 fetchListWithObjectID:v106 error:v287];
  v108 = v287[0];
  if (!v107)
  {
    v126 = v287[0];
    sub_10013FE1C(v288);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (v274)(v54, v80);
    return;
  }

  v263 = v106;
  v109 = v107;
  v110 = objc_allocWithZone(REMSaveRequest);
  v111 = v108;
  v112 = [v110 initWithStore:v105];
  v113 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v287[0] = v113;
  v278 = v109;
  v264 = [v112 updateList:v109];
  v114 = [v264 sectionsContextChangeItem];
  v268 = v4;
  if (v114)
  {
    v115 = v289;
    v291 = v289;
    if (v289 && (v116 = *(&v289 + 1), (v292 = *(&v289 + 1)) != 0))
    {
      v117 = v114;
      sub_100010364(&v291, &v286, &qword_100944BE8, &qword_1007A5960);
      sub_100010364(&v292, &v286, &qword_100944BF0, &qword_1007A5968);
      v118 = sub_1003BC55C(v115, v116, v112, v117);

      sub_1000050A4(&v291, &qword_100944BE8, &qword_1007A5960);
      sub_1000050A4(&v292, &qword_100944BF0, &qword_1007A5968);
      v113, v119, v120, v121, v122, v123, v124, v125;
      v287[0] = v118;
      v113 = v118;
    }

    else
    {
    }
  }

  v127 = *(v113 + 16);
  if (v127 && !*(*&v288[0] + 16))
  {
    v286 = 0;
    v188 = [v112 saveSynchronouslyWithError:&v286];
    v189 = v286;
    if (!v188)
    {
      v218 = v286;
      sub_10013FE1C(v288);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (v274)(v54, v281);
      v113, v219, v220, v221, v222, v223, v224, v225;
      return;
    }

    v277 = v112;
    v190 = v270;
    v191 = v54;
    v192 = v281;
    v265(v270, v191, v281);
    swift_retain_n();
    v193 = v189;
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *v196 = 134349826;
      *(v196 + 4) = v127;
      *(v196 + 12) = 2114;
      v198 = v267;
      *(v196 + 14) = v267;
      *(v196 + 22) = 2114;
      v275 = v194;
      v199 = v263;
      *(v196 + 24) = v263;
      *v197 = v198;
      v197[1] = v199;
      *(v196 + 32) = 2048;
      v200 = v198;
      v201 = v199;
      v202 = v273;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v204 = v203;
      v205 = v202;
      v206 = v274;
      (v274)(v205, v192);
      v206(v190, v192);
      *(v196 + 34) = v204;
      v207 = v195;
      v208 = v275;
      _os_log_impl(&_mh_execute_header, v275, v207, "RDTemplateOperationCopyRemindersFromPublicTemplateToREMList: Copied %{public}ld sections to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v196, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      (v274)(v190, v192);
    }

    LODWORD(v275) = 0;
  }

  else
  {
    v277 = v112;
    LODWORD(v275) = 1;
  }

  v270 = v113;
  v286 = *&v288[0];
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_1003BC4F8();
  v128 = BidirectionalCollection<>.slices(by:)();
  v129 = v128;
  v286 = 0;
  v130 = *(v128 + 16);
  if (v130)
  {
    v131 = 0;
    v132 = (v128 + 56);
    while (1)
    {
      if (v131 >= *(v129 + 16))
      {
        __break(1u);
      }

      v134 = *(v132 - 1);
      v133 = *v132;
      v135 = *(v132 - 3);
      v136 = *(v132 - 2);
      swift_unknownObjectRetain();
      v137 = objc_autoreleasePoolPush();
      v138 = v279;
      sub_1003BB00C(v275, v131, v277, v268, v278, v135, v136, v134, v133, v288, &v286, v287, v284, v283, &v285);
      v279 = v138;
      if (v138)
      {
        break;
      }

      ++v131;
      objc_autoreleasePoolPop(v137);
      swift_unknownObjectRelease();
      v132 += 4;
      if (v130 == v131)
      {
        goto LABEL_26;
      }
    }

    v129, v139, v140, v141, v142, v143, v144, v145;
    sub_10013FE1C(v288);
    objc_autoreleasePoolPop(v137);

    swift_unknownObjectRelease();
    v186 = v284;
    v187 = v281;
    goto LABEL_38;
  }

LABEL_26:
  sub_10013FE1C(v288);
  v129, v146, v147, v148, v149, v150, v151, v152;
  v153 = v281;
  v154 = v284;
  if (v269)
  {
    v285 = 0;
    v155 = v269;
    v156 = v280;
    v157 = [v280 existingObjectWithID:v155 error:&v285];
    if (v157)
    {
      v158 = v157;
      v159 = v285;
      [v156 deleteObject:v158];
      v285 = 0;
      if ([v156 save:&v285])
      {
        v160 = v285;
        [v156 reset];
        v161 = v271;
        v265(v271, v154, v153);

        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          LODWORD(v275) = v163;
          v165 = v164;
          v166 = swift_slowAlloc();
          v262 = v166;
          v280 = swift_slowAlloc();
          v285 = v280;
          *v165 = 136446722;
          v167 = sub_1001424F8(v283);
          v169 = v168;
          v170 = sub_10000668C(v167, v168, &v285);
          v169, v171, v172, v173, v174, v175, v176, v177;
          *(v165 + 4) = v170;
          *(v165 + 12) = 2114;
          v178 = v267;
          *(v165 + 14) = v267;
          *v166 = v178;
          *(v165 + 22) = 2048;
          v179 = v178;
          v180 = v161;
          v181 = v273;
          Date.init()();
          Date.timeIntervalSince(_:)();
          v183 = v182;
          v184 = v181;
          v185 = v274;
          (v274)(v184, v153);
          v185(v180, v153);
          *(v165 + 24) = v183;
          _os_log_impl(&_mh_execute_header, v162, v275, "%{public}s: Deleted REMCDPublicTemplate in Core Data store {templateObjectID: %{public}@, elapsedSeconds: %f}", v165, 0x20u);
          sub_1000050A4(v262, &unk_100938E70, &unk_100797230);
          v154 = v284;

          sub_10000607C(v280);
        }

        else
        {

          (v274)(v161, v153);
        }

        goto LABEL_41;
      }

      v210 = v285;

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }

    else
    {
      v209 = v285;

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }

    v186 = v154;
    v187 = v153;
LABEL_38:
    (v274)(v186, v187);
    v270, v211, v212, v213, v214, v215, v216, v217;
    return;
  }

LABEL_41:
  v226 = v272;
  v265(v272, v154, v153);
  swift_retain_n();
  v227 = Logger.logObject.getter();
  v228 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v285 = v231;
    *v229 = 136447234;
    v232 = sub_1001424F8(v283);
    v234 = v233;
    v235 = sub_10000668C(v232, v233, &v285);
    v234, v236, v237, v238, v239, v240, v241, v242;
    *(v229 + 4) = v235;
    *(v229 + 12) = 2114;
    v243 = v267;
    *(v229 + 14) = v267;
    *(v229 + 22) = 2114;
    v244 = v263;
    *(v229 + 24) = v263;
    *v230 = v243;
    v230[1] = v244;
    *(v229 + 32) = 2048;
    v245 = v243;
    v246 = v244;

    *(v229 + 34) = 50;

    *(v229 + 42) = 2048;
    v247 = v273;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v249 = v248;
    v250 = v247;
    v251 = v281;
    v252 = v274;
    (v274)(v250, v281);
    v252(v226, v251);
    *(v229 + 44) = v249;
    _os_log_impl(&_mh_execute_header, v227, v228, "%{public}s: Finished execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld, elapsedSeconds: %f}", v229, 0x34u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v231);

    v252(v284, v251);
  }

  else
  {

    v260 = v274;
    (v274)(v226, v153);
    v260(v154, v153);
  }

  v270, v253, v254, v255, v256, v257, v258, v259;
}

void sub_1003BB00C(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t *a10, void *a11, _TtC7remindd19RDXPCStorePerformer **a12, SEL *a13, _TtC7remindd19RDXPCStorePerformer *a14, void *a15)
{
  v16 = v15;
  v287 = a7;
  v267 = a11;
  v281 = a10;
  v254 = type metadata accessor for URL();
  v290 = *(v254 - 8);
  __chkstk_darwin(v254, v23);
  v253 = &v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RDSavedURLAttachment(0);
  v252 = *(v25 - 8);
  __chkstk_darwin(v25 - 8, v26);
  v251 = &v243 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for RDSavedReminder(0);
  v266 = *(v276 - 8);
  __chkstk_darwin(v276, v28);
  v262 = &v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v273 = &v243 - v32;
  __chkstk_darwin(v33, v34);
  v265 = &v243 - v35;
  __chkstk_darwin(v36, v37);
  v278 = &v243 - v38;
  v270 = type metadata accessor for UUID();
  v288 = *(v270 - 8);
  __chkstk_darwin(v270, v39);
  v268 = &v243 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v42);
  v264 = &v243 - v43;
  __chkstk_darwin(v44, v45);
  v47 = &v243 - v46;
  v257 = type metadata accessor for Date();
  v259 = *(v257 - 8);
  __chkstk_darwin(v257, v48);
  v250 = &v243 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v51);
  v256 = &v243 - v52;
  v255 = a4;
  if ((a1 & 1) == 0 || a2)
  {
    v53 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(a4 + 40)];
  }

  else
  {
    v53 = a3;
  }

  v280 = v53;
  v54 = [v53 updateList:a5];
  v261 = [(SEL *)v54 sectionsContextChangeItem];
  v62 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v63 = a9 >> 1;
  v64 = v270;
  v260 = v54;
  if (a9 >> 1 != a8)
  {
    v75 = v281[2];
    swift_beginAccess();
    v291 = (v288 + 16);
    v76 = (v288 + 8);
    v263 = a9 >> 1;
    v269 = v47;
    v274 = (v288 + 8);
    v292 = v75;
    v248 = (v290 + 16);
    v247 = (v290 + 8);
    while (a8 < v63)
    {
      v77 = *(v288 + 72);
      v289 = *(v288 + 16);
      v290 = v77;
      v289(v47, v287 + v77 * a8, v64);
      if (*(v75 + 16) && (v78 = sub_100363F20(v47), v75 = v292, (v79 & 1) != 0))
      {
        v80 = v62;
        v81 = *(v292 + 56);
        v272 = *(v266 + 72);
        v82 = v265;
        sub_10013FED4(v81 + v272 * v78, v265, type metadata accessor for RDSavedReminder);
        v83 = v278;
        sub_10013FE70(v82, v278);
        v271 = objc_opt_self();
        v84 = [v271 newObjectID];
        v85 = String._bridgeToObjectiveC()();
        v86 = [v280 addReminderWithTitle:v85 toListChangeItem:v54 reminderObjectID:v84];

        sub_10052EA40(v83, v86);
        if (v16)
        {

          (*v274)(v269, v64);
          sub_1003BD550(v278, type metadata accessor for RDSavedReminder);
          v80, v216, v217, v218, v219, v220, v221, v222;
          goto LABEL_59;
        }

        v87 = v281[3];
        v88 = v80;
        v279 = v87;
        if (v87)
        {
          v89 = v86;
          v76 = v274;
          if (*(v87 + 16))
          {
            v90 = v54;
            v91 = sub_100363F20(v269);
            if (v92)
            {
              v93 = *(*(v87 + 56) + 8 * v91);

              sub_1003BCB08(v94, v89);
              v277 = 0;
              v93, v95, v96, v97, v98, v99, v100, v101;
            }

            else
            {
              v277 = 0;
            }
          }

          else
          {
            v277 = 0;
            v90 = v54;
          }
        }

        else
        {
          v277 = 0;
          v89 = v86;
          v90 = v54;
          v76 = v274;
        }

        v102 = v89;
        v103 = [v89 objectID];
        v104 = [v103 uuid];

        v105 = v264;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v294 = v88;
        v47 = v269;
        sub_1002C81B4(v105, v269, isUniquelyReferenced_nonNull_native);
        v62 = v294;
        v54 = v90;
        [(SEL *)v90 insertReminderChangeItem:v102 afterReminderChangeItem:0];
        v107 = v281[1];
        if (*(v107 + 16) && (v108 = sub_100363F20(v47), (v109 & 1) != 0))
        {
          v258 = v62;
          v110 = *(*(v107 + 56) + 8 * v108);

          v111 = [v102 subtaskContext];
          v63 = v263;
          v275 = v111;
          if (v111)
          {
            v249 = v102;
            v75 = v292;
            v119 = v110;
            v284 = *(v110 + 16);
            if (v284)
            {
              v47 = 0;
              v282 = v110 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
              v120 = v268;
              v54 = &selRef_isEmpty;
              v16 = v277;
              v283 = v119;
              while (1)
              {
                if (v47 >= *v119->clientIdentity)
                {
                  goto LABEL_66;
                }

                v289(v120, v282 + v47 * v290, v64);
                if (*(v75 + 16) && (v128 = sub_100363F20(v120), v75 = v292, (v129 & 1) != 0))
                {
                  v130 = v262;
                  sub_10013FED4(*(v292 + 56) + v128 * v272, v262, type metadata accessor for RDSavedReminder);
                  v131 = v273;
                  sub_10013FE70(v130, v273);
                  v132 = [v271 newObjectID];
                  v133 = String._bridgeToObjectiveC()();
                  v134 = [v280 v54[265]];

                  sub_10052EA40(v131, v134);
                  if (v16)
                  {

                    v283, v223, v224, v225, v226, v227, v228, v229;
                    v230 = *v274;
                    v231 = v270;
                    (*v274)(v268, v270);
                    v230(v269, v231);
LABEL_63:
                    sub_1003BD550(v273, type metadata accessor for RDSavedReminder);
                    sub_1003BD550(v278, type metadata accessor for RDSavedReminder);

                    goto LABEL_59;
                  }

                  v64 = v270;
                  v76 = v274;
                  if (v279)
                  {
                    if (*(v279 + 16))
                    {
                      v135 = sub_100363F20(v268);
                      if (v136)
                      {
                        v277 = 0;
                        v137 = *(*(v279 + 56) + 8 * v135);

                        v138 = [v134 attachmentContext];
                        if (!v138)
                        {
                          v137, v139, v140, v141, v142, v143, v144, v145;
                          v283, v232, v233, v234, v235, v236, v237, v238;
                          v239 = objc_opt_self();
                          sub_1000060C8(0, &qword_100944BF8, REMReminderChangeItem_ptr);
                          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                          v241 = String._bridgeToObjectiveC()();
                          v16 = [v239 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v241];

                          swift_willThrow();
                          v242 = *v76;
                          (*v76)(v268, v64);
                          v242(v269, v64);
                          goto LABEL_63;
                        }

                        v146 = *(v137 + 16);
                        if (v146)
                        {
                          v245 = v134;
                          v246 = a8;
                          v147 = (*(v252 + 80) + 32) & ~*(v252 + 80);
                          v244 = v137;
                          v148 = v137 + v147;
                          v285 = *(v252 + 72);
                          v149 = v254;
                          v150 = v253;
                          v151 = v251;
                          v152 = v248;
                          v153 = v247;
                          v286 = v138;
                          do
                          {
                            sub_10013FED4(v148, v151, type metadata accessor for RDSavedURLAttachment);
                            (*v152)(v150, v151, v149);
                            sub_1003BD550(v151, type metadata accessor for RDSavedURLAttachment);
                            URL._bridgeToObjectiveC()(v154);
                            v156 = v155;
                            (*v153)(v150, v149);

                            v148 += v285;
                            --v146;
                          }

                          while (v146);

                          v244, v157, v158, v159, v160, v161, v162, v163;
                          v16 = v277;
                          v64 = v270;
                          a8 = v246;
                          v76 = v274;
                          v63 = v263;
                          v54 = &selRef_isEmpty;
                          v134 = v245;
                        }

                        else
                        {

                          v137, v164, v165, v166, v167, v168, v169, v170;
                          v16 = v277;
                          v64 = v270;
                        }
                      }
                    }
                  }

                  [v275 insertReminderChangeItem:v134 afterReminderChangeItem:0];

                  v120 = v268;
                  (*v76)(v268, v64);
                  sub_1003BD550(v273, type metadata accessor for RDSavedReminder);
                  v75 = v292;
                }

                else
                {
                  (*v76)(v120, v64);
                }

                ++v47;
                v119 = v283;
                if (v47 == v284)
                {
                  v283, v121, v122, v123, v124, v125, v126, v127;
                  v54 = v260;
                  v62 = v258;
                  v47 = v269;
                  goto LABEL_52;
                }
              }
            }

            v110, v112, v113, v114, v115, v116, v117, v118;
            v16 = v277;
            v62 = v258;
LABEL_52:

            (*v76)(v47, v64);
          }

          else
          {
            (*v76)(v47, v64);
            v110, v171, v172, v173, v174, v175, v176, v177;

            v75 = v292;
            v16 = v277;
            v62 = v258;
          }
        }

        else
        {
          (*v76)(v47, v64);

          v63 = v263;
          v75 = v292;
          v16 = v277;
        }

        sub_1003BD550(v278, type metadata accessor for RDSavedReminder);
        if (__OFADD__(*v267, 1))
        {
          goto LABEL_67;
        }

        ++*v267;
      }

      else
      {
        (*v76)(v47, v64);
      }

      if (++a8 == v63)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
LABEL_56:
    v180 = type metadata accessor for Logger();
    sub_100006654(v180, qword_100944B10);
    v181 = v256;
    v182 = v257;
    (*(a8 + 16))(v256, v54, v257);
    v183 = v281;
    sub_10013FD6C(v281, &v294);
    sub_10013FD6C(v183, &v294);
    v184 = v255;

    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();

    LODWORD(v292) = v186;
    if (os_log_type_enabled(v185, v186))
    {
      v291 = v185;
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v293 = v189;
      v294 = a14;
      *v187 = 136447490;
      swift_getMetatypeMetadata();
      v190 = String.init<A>(describing:)();
      v192 = v191;
      v193 = sub_10000668C(v190, v191, &v293);
      v192, v194, v195, v196, v197, v198, v199, v200;
      *(v187 + 4) = v193;
      *(v187 + 12) = 2048;
      v201 = v267;
      swift_beginAccess();
      *(v187 + 14) = *v201;
      *(v187 + 22) = 2048;
      v202 = *(*v183 + 16);
      sub_10013FE1C(v183);
      *(v187 + 24) = v202;
      sub_10013FE1C(v183);
      *(v187 + 32) = 2114;
      v203 = *(v184 + 24);
      v204 = *(v184 + 32);
      *(v187 + 34) = v203;
      *(v187 + 42) = 2114;
      *(v187 + 44) = v204;
      *v188 = v203;
      v188[1] = v204;
      *(v187 + 52) = 2048;
      v205 = v203;
      v206 = v204;
      v207 = v250;
      Date.init()();
      v208 = v256;
      Date.timeIntervalSince(_:)();
      v210 = v209;
      v211 = *(a8 + 8);
      v212 = v207;
      v213 = v257;
      v211(v212, v257);
      v211(v208, v213);
      *(v187 + 54) = v210;
      v214 = v291;
      _os_log_impl(&_mh_execute_header, v291, v292, "%{public}s: Copied %ld out of %ld top-level reminders to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v187, 0x3Eu);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v189);
    }

    else
    {
      sub_10013FE1C(v183);

      sub_10013FE1C(v183);
      (*(a8 + 8))(v181, v182);
    }

    return;
  }

LABEL_6:
  v65 = v281[6];
  if (v65)
  {
    v66 = *a12;
    a8 = v259;
    v67 = v280;
    v47 = v261;
    if (*(*a12)->clientIdentity && *v62->clientIdentity)
    {

      sub_1003BCDD0(v65, v66, v62, v47);
      v66, v68, v69, v70, v71, v72, v73, v74;
    }

    v62, v55, v56, v57, v58, v59, v60, v61;
  }

  else
  {
    v62, v55, v56, v57, v58, v59, v60, v61;
    a8 = v259;
    v67 = v280;
    v47 = v261;
  }

  v294 = 0;
  if ([v67 saveSynchronouslyWithError:&v294])
  {
    v54 = a13;
    v178 = qword_100935FA0;
    v179 = v294;
    if (v178 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_68;
  }

  v215 = v294;
  v16 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_59:
  *a15 = v16;
}