uint64_t sub_1006B0620(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_1000050A4(v8 + 40, &qword_100947E90, &qword_10079B250);

  return swift_deallocClassInstance();
}

Swift::Int sub_1006B069C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (*(v1 + 24))
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

void sub_1006B0718(uint64_t a1)
{
  if (*(*v1 + 24))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1006B0794(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (*(v2 + 24))
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

uint64_t sub_1006B080C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_1006B085C()
{
  result = qword_10094F970;
  if (!qword_10094F970)
  {
    type metadata accessor for RDManualSortIDPersistenceHost();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F970);
  }

  return result;
}

uint64_t sub_1006B08B0(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(REMAccountTypeHost);
  v6 = a1;
  v7 = [v5 initWithType:a2];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1006B10D8;
  *(v8 + 24) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1006B10E0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1006B10D8;
  *(v10 + 24) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1006B1584;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1006B10D8;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1006B1584;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1006B10D8;
  *(v14 + 24) = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1006B1584;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1006B10D8;
  *(v16 + 24) = v4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1006B1584;
  *(v17 + 24) = v16;
  *(swift_allocObject() + 16) = v6;
  swift_retain_n();
  v18 = v6;
  REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

  return v20 & 1;
}

uint64_t sub_1006B0C2C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v3;
  v9 = v6;
  if (v8 == v7 && v5 == v6)
  {
    goto LABEL_14;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v12, v13, v14, v15, v16, v17, v18;
  v9, v19, v20, v21, v22, v23, v24, v25;
  if (v11)
  {
LABEL_6:

    return 1;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v26;
  v9 = v28;
  if (v30 == v29 && v5 == v28)
  {
    goto LABEL_14;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v33, v34, v35, v36, v37, v38, v39;
  v9, v40, v41, v42, v43, v44, v45, v46;
  if (v32)
  {
    goto LABEL_6;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v48;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v47;
  v9 = v49;
  if (v51 == v50 && v5 == v49)
  {
    goto LABEL_14;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v68, v69, v70, v71, v72, v73, v74;
  v9, v75, v76, v77, v78, v79, v80, v81;
  if (v67)
  {
    goto LABEL_6;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v83;
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v82;
  v9 = v84;
  if (v86 == v85 && v5 == v84)
  {
LABEL_14:

    v5, v52, v53, v54, v55, v56, v57, v58;
    v9, v59, v60, v61, v62, v63, v64, v65;
    return 1;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v88, v89, v90, v91, v92, v93, v94;
  v9, v95, v96, v97, v98, v99, v100, v101;
  if (v87)
  {
    goto LABEL_6;
  }

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v112 = v102;
  v113 = v105;
  if (v112 == v106 && v104 == v105)
  {
    v104, v105, v106, v107, v108, v109, v110, v111;
    v113, v114, v115, v116, v117, v118, v119, v120;
LABEL_24:
    v136 = [v2 supportsFlagged];
    goto LABEL_25;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v104, v122, v123, v124, v125, v126, v127, v128;
  v113, v129, v130, v131, v132, v133, v134, v135;
  if (v121)
  {
    goto LABEL_24;
  }

  v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v139;
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v148 = v138;
  v149 = v141;
  if (v148 == v142 && v140 == v141)
  {
    v140, v141, v142, v143, v144, v145, v146, v147;
    v149, v150, v151, v152, v153, v154, v155, v156;
LABEL_30:
    v136 = [v2 supportsAssignments];
    goto LABEL_25;
  }

  v157 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v140, v158, v159, v160, v161, v162, v163, v164;
  v149, v165, v166, v167, v168, v169, v170, v171;
  if (v157)
  {
    goto LABEL_30;
  }

  v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v174 = v173;
  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v177 = v172;
  v178 = v175;
  if (v177 == v176 && v174 == v175)
  {

    v174, v179, v180, v181, v182, v183, v184, v185;
    v178, v186, v187, v188, v189, v190, v191, v192;
    return 0;
  }

  else
  {
    v193 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v174, v194, v195, v196, v197, v198, v199, v200;
    v178, v201, v202, v203, v204, v205, v206, v207;
    if ((v193 & 1) == 0)
    {
      v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v210 = v209;
      v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = v211;
      if (v208 == v212 && v210 == v211)
      {
        v210, v211, v212, v213, v214, v215, v216, v217;
        v218, v219, v220, v221, v222, v223, v224, v225;
      }

      else
      {
        v226 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v210, v227, v228, v229, v230, v231, v232, v233;
        v218, v234, v235, v236, v237, v238, v239, v240;
        if ((v226 & 1) == 0)
        {
          v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v243 = v242;
          v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v251 = v244;
          if (v241 == v245 && v243 == v244)
          {
            v243, v244, v245, v246, v247, v248, v249, v250;
            v251, v252, v253, v254, v255, v256, v257, v258;
          }

          else
          {
            v259 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v243, v260, v261, v262, v263, v264, v265, v266;
            v251, v267, v268, v269, v270, v271, v272, v273;
            if ((v259 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v136 = [v2 supportsHashtags];
          goto LABEL_25;
        }
      }

      v136 = [v2 supportsCustomSmartLists];
LABEL_25:
      v137 = v136;

      return v137;
    }

    return 0;
  }
}

uint64_t sub_1006B112C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1006B1160(char *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v3;
  v14 = v6;
  if (v13 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v17, v18, v19, v20, v21, v22, v23;
  v14, v24, v25, v26, v27, v28, v29, v30;
  if (v16)
  {
    goto LABEL_14;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v32;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v31;
  v14 = v6;
  if (v33 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v36, v37, v38, v39, v40, v41, v42;
  v14, v43, v44, v45, v46, v47, v48, v49;
  if (v35)
  {
    goto LABEL_14;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v51;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v50;
  v14 = v6;
  if (v52 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v62, v63, v64, v65, v66, v67, v68;
  v14, v69, v70, v71, v72, v73, v74, v75;
  if (v61)
  {
    goto LABEL_14;
  }

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v77;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v76;
  v14 = v6;
  if (v78 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v80, v81, v82, v83, v84, v85, v86;
  v14, v87, v88, v89, v90, v91, v92, v93;
  if (v79)
  {
    goto LABEL_14;
  }

  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v95;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v94;
  v14 = v6;
  if (v96 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v98, v99, v100, v101, v102, v103, v104;
  v14, v105, v106, v107, v108, v109, v110, v111;
  if (v97)
  {
    goto LABEL_14;
  }

  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v113;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v112;
  v14 = v6;
  if (v114 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v116, v117, v118, v119, v120, v121, v122;
  v14, v123, v124, v125, v126, v127, v128, v129;
  if (v115)
  {
    goto LABEL_14;
  }

  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v131;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v130;
  v14 = v6;
  if (v132 == v7 && v5 == v6)
  {
    goto LABEL_13;
  }

  v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v134, v135, v136, v137, v138, v139, v140;
  v14, v141, v142, v143, v144, v145, v146, v147;
  if (v133)
  {
    goto LABEL_14;
  }

  v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v149;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v6;
  if (v148 == v7 && v5 == v6)
  {
LABEL_13:
    v5, v6, v7, v8, v9, v10, v11, v12;
    v14, v53, v54, v55, v56, v57, v58, v59;
    goto LABEL_14;
  }

  v150 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5, v151, v152, v153, v154, v155, v156, v157;
  v14, v158, v159, v160, v161, v162, v163, v164;
  if ((v150 & 1) == 0)
  {
    v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v167 = v166;
    v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v175 = v168;
    if (v165 == v169 && v167 == v168)
    {
      v167, v168, v169, v170, v171, v172, v173, v174;
      v175, v176, v177, v178, v179, v180, v181, v182;
      v60 = 1;
      goto LABEL_15;
    }

    v183 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v167, v184, v185, v186, v187, v188, v189, v190;
    v175, v191, v192, v193, v194, v195, v196, v197;
    if (v183)
    {
      v60 = 1;
      goto LABEL_15;
    }
  }

LABEL_14:
  v60 = 0;
LABEL_15:
  *a2 = v60;
}

uint64_t sub_1006B159C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094F978);
  v1 = sub_100006654(v0, qword_10094F978);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006B1664(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1, a2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness, v9);
  v12 = &v15 - v11;
  (*(v4 + 16))(v6, a1, a2, v10);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v13 = v16;
    if (!v16)
    {
      break;
    }

    sub_1006B184C(v16);
  }

  return (*(v8 + 8))(v12, AssociatedTypeWitness);
}

id sub_1006B184C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = &v146 - v15;
  v17 = [a1 ckIdentifier];
  v152 = a1;
  v153 = v1;
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v162 = v19;
    v163 = v21;
    v22 = sub_1006B20F0(v19, v21);
    v31 = v22;
    if (v22 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v33 = 0;
      v151 = v31 & 0xC000000000000001;
      v148 = v31 & 0xFFFFFFFFFFFFFF8;
      v147 = (v31 + 32);
      *&v30 = 136446722;
      v156 = v30;
      v150 = v31;
      v149 = i;
      while (1)
      {
        if (v151)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v148 + 16))
          {
            goto LABEL_42;
          }

          v41 = *&v147[8 * v33];
        }

        v164 = v41;
        v42 = __OFADD__(v33, 1);
        v43 = v33 + 1;
        if (v42)
        {
          break;
        }

        v154 = v43;
        v155 = sub_1006B247C(v164, v162, v163);
        v44 = *v155->clientIdentity;
        if (v44)
        {
          v161 = *(v153 + 16);
          v45 = &v155->clientIdentity[16];
          v160 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
          while (1)
          {
            v51 = *v45;
            v52 = v160;
            v53 = objc_allocWithZone(v160);
            v54 = v163;
            v55 = v164;
            *&v53[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder] = v164;
            v53[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field] = v51;
            v57 = v161;
            v56 = v162;
            *&v53[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext] = v161;
            v58 = &v53[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName];
            *v58 = v56;
            v58[1] = v54;
            v59 = objc_allocWithZone(RDPersistentStoreLookupForREMCDObject);
            v60 = v55;

            v61 = v57;
            v62 = [v59 init:v60];
            *&v53[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup] = v62;
            v169.receiver = v53;
            v169.super_class = v52;
            v63 = objc_msgSendSuper2(&v169, "init");

            v65 = sub_1001B5774();
            v67 = v66;
            v68 = v64;
            v69 = v64;
            if (!(v64 >> 6))
            {
              goto LABEL_18;
            }

            if (v64 >> 6 == 1)
            {
              break;
            }

LABEL_14:
            ++v45;
            if (!--v44)
            {
              goto LABEL_5;
            }
          }

          v69 = v64 & 0x3F;
LABEL_18:
          v159 = v69;
          v165 = v63;
          if (qword_1009366D0 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          sub_100006654(v70, qword_10094F978);
          v71 = v60;
          sub_1001E8F50(v65, v67, v68);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();

          sub_1001E8F6C(v65, v67, v68, v74, v75, v76, v77, v78);
          if (os_log_type_enabled(v72, v73))
          {
            v158 = v73;
            v79 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v168 = v157;
            *v79 = v156;
            if (v51)
            {
              v80 = 0x7365746F6ELL;
            }

            else
            {
              v80 = 0x656C746974;
            }

            v81 = sub_10000668C(v80, 0xE500000000000000, &v168);
            0xE500000000000000, v82, v83, v84, v85, v86, v87, v88;
            *(v79 + 4) = v81;
            *(v79 + 12) = 2082;
            v89 = [v71 remObjectID];
            if (v89)
            {
              v90 = v89;
              v91 = [v89 description];

              v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v94 = v93;
            }

            else
            {
              v94 = 0xE300000000000000;
              v92 = 7104878;
            }

            v95 = sub_10000668C(v92, v94, &v168);
            v94, v96, v97, v98, v99, v100, v101, v102;
            *(v79 + 14) = v95;
            *(v79 + 22) = 2082;
            v166[0] = v65;
            v166[1] = v67;
            v167 = v159;
            sub_1001E8F88();
            v103 = Error.rem_errorDescription.getter();
            v105 = v104;
            v106 = sub_10000668C(v103, v104, &v168);
            v105, v107, v108, v109, v110, v111, v112, v113;
            *(v79 + 24) = v106;
            sub_1001E8F6C(v65, v67, v68, v114, v115, v116, v117, v118);
            _os_log_impl(&_mh_execute_header, v72, v158, "#️⃣ RDUserInitiatedHashtagLabelApprovalTagAutoConvertRunner: Error autoConverting %{public}s on reminder[%{public}s] {error: %{public}s}", v79, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_1001E8F6C(v65, v67, v68, v46, v47, v48, v49, v50);
          }

          goto LABEL_14;
        }

LABEL_5:

        v155, v34, v35, v36, v37, v38, v39, v40;
        v1 = v153;
        v33 = v154;
        a1 = v152;
        v31 = v150;
        if (v154 == v149)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:
    v163, v23, v24, v25, v26, v27, v28, v29;
    v31, v138, v139, v140, v141, v142, v143, v144;
  }

  else
  {
    if (qword_1009366D0 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_100006654(v119, qword_10094F978);
    v120 = a1;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v166[0] = v165;
      *v123 = 136446210;
      v124 = [v120 uuidForChangeTracking];
      if (v124)
      {
        v125 = v124;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 56))(v11, 0, 1, v3);
      }

      else
      {
        (*(v4 + 56))(v11, 1, 1, v3);
      }

      sub_100100FB4(v11, v16);
      if ((*(v4 + 48))(v16, 1, v3))
      {
        sub_1000050A4(v16, &unk_100939D90, "8\n\r");
        v126 = 0xE90000000000003ELL;
        v127 = 0x646975752D6F6E3CLL;
      }

      else
      {
        (*(v4 + 16))(v7, v16, v3);
        sub_1000050A4(v16, &unk_100939D90, "8\n\r");
        v128 = UUID.uuidString.getter();
        v126 = v129;
        (*(v4 + 8))(v7, v3);
        v127 = v128;
      }

      v130 = sub_10000668C(v127, v126, v166);
      v126, v131, v132, v133, v134, v135, v136, v137;
      *(v123 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v121, v122, "#️⃣ RDUserInitiatedHashtagLabelApprovalTagAutoConvertRunner: activity[%{public}s] has nil ckIdentifier. Deleting without further action", v123, 0xCu);
      sub_10000607C(v165);

      a1 = v152;
    }

    else
    {
    }

    v1 = v153;
  }

  return [*(v1 + 16) deleteObject:a1];
}

uint64_t sub_1006B20F0(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa(0);
  __chkstk_darwin(v4, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 1;
  swift_storeEnumTagMultiPayload();

  v7 = sub_100043AA8();
  sub_1000513B4(v6);
  sub_100345DB0();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];

  v10 = NSManagedObjectContext.fetch<A>(_:)();
  return v10;
}

uint64_t sub_1006B23FC()
{

  return swift_deallocClassInstance();
}

_TtC7remindd19RDXPCStorePerformer *sub_1006B247C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  *&v8 = __chkstk_darwin(v6 - 8, v7).n128_u64[0];
  v10 = &v65 - v9;
  v11 = [a1 title];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v68 = v13;
    v69 = v15;
    static Locale.current.getter();
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    sub_10013BCF4();
    v17 = StringProtocol.foldedStringForWriting(locale:)();
    v19 = v18;
    sub_1000050A4(v10, &unk_10093F420, &unk_100797AE0);
    v15, v20, v21, v22, v23, v24, v25, v26;
    v68 = v17;
    v69 = v19;
    v66 = a2;
    v67 = a3;
    LOBYTE(v17) = StringProtocol.contains<A>(_:)();
    v19, v27, v28, v29, v30, v31, v32, v33;
    v34 = &_swiftEmptyArrayStorage;
    if (v17)
    {
      v70 = &_swiftEmptyArrayStorage;
      sub_1002537E0(0, 1, 1);
      v34 = v70;
      v36 = *v70->clientIdentity;
      v35 = *&v70->clientIdentity[8];
      if (v36 >= v35 >> 1)
      {
        sub_1002537E0((v35 > 1), v36 + 1, 1);
        v34 = v70;
      }

      *v34->clientIdentity = v36 + 1;
      v34->clientIdentity[v36 + 16] = 0;
    }
  }

  else
  {
    v34 = &_swiftEmptyArrayStorage;
  }

  v37 = [a1 notes];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v68 = v39;
    v69 = v41;
    static Locale.current.getter();
    v42 = type metadata accessor for Locale();
    (*(*(v42 - 8) + 56))(v10, 0, 1, v42);
    sub_10013BCF4();
    v43 = StringProtocol.foldedStringForWriting(locale:)();
    v45 = v44;
    sub_1000050A4(v10, &unk_10093F420, &unk_100797AE0);
    v41, v46, v47, v48, v49, v50, v51, v52;
    v68 = v43;
    v69 = v45;
    v66 = a2;
    v67 = a3;
    v53 = StringProtocol.contains<A>(_:)();
    v45, v54, v55, v56, v57, v58, v59, v60;
    if (v53)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002537E0(0, *v34->clientIdentity + 1, 1);
        v34 = v70;
      }

      v63 = *v34->clientIdentity;
      v62 = *&v34->clientIdentity[8];
      if (v63 >= v62 >> 1)
      {
        sub_1002537E0((v62 > 1), v63 + 1, 1);
        v34 = v70;
      }

      *v34->clientIdentity = v63 + 1;
      v34->clientIdentity[v63 + 16] = 1;
    }
  }

  return v34;
}

void sub_1006B2804(void **a1)
{
  v2 = *a1;
  sub_10046D62C(*a1);
  if (!v1)
  {
    sub_10046DCC8(v2);
  }
}

void sub_1006B2870(void *a1, void *a2)
{
  sub_1000F5104(&qword_10094FA80, &qword_1007B57E0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  sub_100728FE4(a1, v5, v6, a2);
  v7, v8, v9, v10, v11, v12, v13, v14;
  if (!v2)
  {
    v15 = [objc_opt_self() daemonUserDefaults];
    [v15 deletePreferredDefaultListObjectIDUrl];
  }
}

void sub_1006B2944(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(a4, a5);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  sub_100728FE4(a1, v7, v8, a2);
  v9, v10, v11, v12, v13, v14, v15, v16;
}

id sub_1006B2A38(uint64_t a1)
{
  sub_1000F5104(&qword_10094FA58, &qword_1007B57C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B57B0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x80000001007FE830;
  *(inited + 48) = sub_1006B27E8;
  *(inited + 56) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1006B30D8;
  *(v4 + 24) = v3;
  *(inited + 64) = 0xD00000000000001DLL;
  *(inited + 72) = 0x80000001007FE850;
  *(inited + 80) = sub_1006B310C;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000028;
  *(inited + 104) = 0x80000001007FE870;
  *(inited + 112) = sub_1006B2804;
  *(inited + 120) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1006B3138;
  *(v6 + 24) = v5;
  *(inited + 128) = 0xD000000000000027;
  *(inited + 136) = 0x80000001007FE8A0;
  *(inited + 144) = sub_1006B3208;
  *(inited + 152) = v6;
  *(inited + 160) = 0xD000000000000039;
  *(inited + 168) = 0x80000001007FE8D0;
  *(inited + 176) = sub_1006B2838;
  *(inited + 184) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1006B3154;
  *(v8 + 24) = v7;
  *(inited + 192) = 0xD000000000000038;
  *(inited + 200) = 0x80000001007FE910;
  *(inited + 208) = sub_1006B3208;
  *(inited + 216) = v8;
  *(inited + 224) = 0xD00000000000002CLL;
  *(inited + 232) = 0x80000001007FE950;
  *(inited + 240) = sub_1006B2854;
  *(inited + 248) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1006B3188;
  *(v10 + 24) = v9;
  *(inited + 256) = 0x415F3532303276;
  *(inited + 264) = 0xE700000000000000;
  *(inited + 272) = sub_1006B3208;
  *(inited + 280) = v10;
  swift_bridgeObjectRetain_n();
  v32 = sub_100390BB4(inited);
  swift_setDeallocating();
  sub_1000F5104(&qword_10094FA60, &qword_1007B57C8);
  swift_arrayDestroy();
  sub_1006B31BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v34 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 17, 0);
  v12 = 0x80000001007FE950;
  v13 = 0x80000001007FE910;
  v14 = 0x80000001007FE8D0;
  v15 = 0x61656C65525F3376;
  v16 = 0;
  v17 = &_swiftEmptyArrayStorage;
  do
  {
    v18 = 0x80000001007FE830;
    v19 = 0xD00000000000001ELL;
    switch(*(&off_1008E4190 + v16 + 32))
    {
      case 1:
        v18 = 0xE200000000000000;
        v19 = 12918;
        break;
      case 2:
        v18 = 0xE200000000000000;
        v19 = 13174;
        break;
      case 3:
        v19 = v15;
        v18 = 0xEF313230325F6573;
        break;
      case 4:
        v19 = v15 + 256;
        v18 = 0xEF323230325F6573;
        break;
      case 5:
        break;
      case 6:
        v19 = 0xD00000000000001DLL;
        v18 = 0x80000001007FE850;
        break;
      case 7:
        v18 = 0xE200000000000000;
        v19 = 14198;
        break;
      case 8:
        v18 = 0xE700000000000000;
        v19 = 0x435F3232303276;
        break;
      case 9:
        v18 = 0xE700000000000000;
        v19 = 0x415F3332303276;
        break;
      case 0xA:
        v19 = 0xD000000000000028;
        v18 = 0x80000001007FE870;
        break;
      case 0xB:
        v19 = 0xD000000000000027;
        v18 = 0x80000001007FE8A0;
        break;
      case 0xC:
        v19 = 0x696D5F3432303276;
        v18 = 0xEC00000041726F6ELL;
        break;
      case 0xD:
        v19 = 0xD000000000000039;
        v18 = v14;
        break;
      case 0xE:
        v19 = 0xD000000000000038;
        v18 = v13;
        break;
      case 0xF:
        v19 = 0xD00000000000002CLL;
        v18 = v12;
        break;
      case 0x10:
        v18 = 0xE700000000000000;
        v19 = 0x415F3532303276;
        break;
      default:
        v19 = 0;
        v18 = 0xE000000000000000;
        break;
    }

    v34 = v17;
    v21 = *v17->clientIdentity;
    v20 = *&v17->clientIdentity[8];
    if (v21 >= v20 >> 1)
    {
      v28 = v12;
      v29 = v13;
      v23 = v15;
      v30 = v14;
      sub_100026EF4((v20 > 1), v21 + 1, 1);
      v12 = v28;
      v13 = v29;
      v14 = v30;
      v15 = v23;
      v17 = v34;
    }

    ++v16;
    *v17->clientIdentity = v21 + 1;
    v22 = v17 + 16 * v21;
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
  }

  while (v16 != 17);
  v24 = type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_loadedManagedObjectModelByVersionIdentifier] = _swiftEmptyDictionarySingleton;
  v26 = &v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName];
  strcpy(&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], "ReminderData");
  v26[13] = 0;
  *(v26 + 7) = -5120;
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_bundle] = v31;
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers] = v17;
  *&v25[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier] = v32;
  v33.receiver = v25;
  v33.super_class = v24;
  return objc_msgSendSuper2(&v33, "init");
}

unint64_t sub_1006B31BC()
{
  result = qword_10094FA68;
  if (!qword_10094FA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094FA68);
  }

  return result;
}

uint64_t sub_1006B3298()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FA90);
  v1 = sub_100006654(v0, qword_10094FA90);
  if (qword_100936468 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975080);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006B3360()
{
  result = [objc_opt_self() operationQueue];
  qword_10094FAA8 = result;
  return result;
}

unint64_t sub_1006B339C()
{
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  String.append(_:)(*(v0 + qword_10094FAC8));
  v8._countAndFlagsBits = 0x746973796261622ELL;
  v8._object = 0xEB00000000726574;
  String.append(_:)(v8);
  return 0xD000000000000012;
}

id sub_1006B343C(void *a1)
{
  v1 = a1;
  sub_1006B339C();
  v3 = v2;

  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

void sub_1006B34A4(void *a1, uint64_t a2)
{
  v11 = 0;
  v3 = [a1 existingObjectWithID:a2 error:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = v3;
    type metadata accessor for REMCDOperationQueueItem();
    v6 = swift_dynamicCastClass();
    v7 = v4;
    if (v6)
    {
      [v6 setIsCompleted:1];
      v11 = 0;
      if ([a1 save:&v11])
      {
        v8 = v11;
      }

      else
      {
        v10 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1006B3620(uint64_t a1)
{
  *(a1 + qword_10094FAC8 + 8), v2, v3, v4, v5, v6, v7, v8;
  *(a1 + qword_10094FAD0 + 8), v9, v10, v11, v12, v13, v14, v15;
  *(a1 + qword_10094FAD8), v16, v17, v18, v19, v20, v21, v22;

  return swift_unknownObjectRelease();
}

uint64_t sub_1006B370C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v83) = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v13 - 8);
  v89 = v13;
  __chkstk_darwin(v13, v14);
  v85 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v86 = *(v16 - 8);
  v87 = v16;
  __chkstk_darwin(v16, v17);
  v84 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094FB70);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  a2, v22, v23, v24, v25, v26, v27, v28;
  if (os_log_type_enabled(v20, v21))
  {
    v29 = swift_slowAlloc();
    v30 = a5;
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v29 = 136446210;
    *(v29 + 4) = sub_10000668C(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountUtils: Updating account {accountID: %{public}s}", v29, 0xCu);
    sub_10000607C(v31);
    a5 = v30;
  }

  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v33 = objc_opt_self();

  v34 = a4;
  v35 = [v33 sharedInstance];
  v36 = [v35 accountStore];

  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 accountWithIdentifier:v37];

  if (!v38)
  {
    v45 = objc_opt_self();
    aBlock = 0;
    v92 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v83 = v34;
    v46._object = 0x80000001007FECD0;
    v46._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v46);
    v47._countAndFlagsBits = a1;
    v47._object = a2;
    String.append(_:)(v47);
    v48 = v92;
    v49 = String._bridgeToObjectiveC()();
    v48, v50, v51, v52, v53, v54, v55, v56;
    v57 = [v45 internalErrorWithDebugDescription:v49];

    v58 = swift_allocObject();
    *(v58 + 16) = a5;
    *(v58 + 24) = a6;
    *(v58 + 32) = 0;
    *(v58 + 40) = v57;
    v95 = sub_1006D47E0;
    v96 = v58;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100019200;
    v94 = &unk_1008FBDB0;
    v59 = _Block_copy(&aBlock);

    v60 = v57;
    v61 = v84;
    static DispatchQoS.unspecified.getter();
    v90 = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v62 = v85;
    v63 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v59);

    (*(v88 + 8))(v62, v63);
LABEL_12:
    (*(v86 + 8))(v61, v87);
  }

  v39 = sub_1006B9764();
  if (!v39)
  {
    v64 = objc_opt_self();
    aBlock = 0;
    v92 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v83 = v34;
    v65._countAndFlagsBits = 0xD000000000000044;
    v65._object = 0x80000001007FED20;
    String.append(_:)(v65);
    v66._countAndFlagsBits = a1;
    v66._object = a2;
    String.append(_:)(v66);
    v67 = v92;
    v68 = String._bridgeToObjectiveC()();
    v67, v69, v70, v71, v72, v73, v74, v75;
    v76 = [v64 internalErrorWithDebugDescription:v68];

    v77 = swift_allocObject();
    *(v77 + 16) = a5;
    *(v77 + 24) = a6;
    *(v77 + 32) = 0;
    *(v77 + 40) = v76;
    v95 = sub_1006D5480;
    v96 = v77;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100019200;
    v94 = &unk_1008FBE00;
    v78 = _Block_copy(&aBlock);

    v82 = v76;
    v61 = v84;
    static DispatchQoS.unspecified.getter();
    v90 = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v79 = v85;
    v80 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v78);

    (*(v88 + 8))(v79, v80);
    goto LABEL_12;
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v7;
  v41[3] = v38;
  v41[4] = v40;
  v41[5] = sub_1006D4790;
  v41[6] = v32;

  v42 = v38;
  v43 = v40;

  sub_1006C0C18(v83 & 1, sub_1006D47E4, v41);
}

uint64_t sub_1006B3F80(char a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094FB70);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a2;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDAccountUtils: Updating system accounts", v21, 2u);
    a2 = v34;
  }

  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;

  a2;
  v23 = sub_1006B9764();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v5;
    *(v25 + 24) = v24;
    *(v25 + 32) = sub_1006D48FC;
    *(v25 + 40) = v22;
    *(v25 + 48) = a1 & 1;

    v26 = v24;

    sub_1006C0C18(1, sub_1006D49A0, v25);
  }

  else
  {
    v28 = objc_opt_self();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 internalErrorWithDebugDescription:v29];

    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    *(v31 + 24) = a4;
    *(v31 + 32) = 0;
    *(v31 + 40) = v30;
    aBlock[4] = sub_1006D5480;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FC170;
    v32 = _Block_copy(aBlock);

    v34 = v30;
    static DispatchQoS.unspecified.getter();
    v38 = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v37 + 8))(v13, v10);
    (*(v35 + 8))(v17, v36);
  }
}

void sub_1006B44B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094FB70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDAccountUtils: Remove orphaned accounts", v11, 2u);
  }

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;

  v13 = a1;
  v14 = sub_1006B9764();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = v15;
    v16[4] = sub_1006D198C;
    v16[5] = v12;

    v17 = v15;

    sub_1006C0C18(1, sub_1006D1998, v16);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 internalErrorWithDebugDescription:v19];

    sub_1006BD5EC(0, v20, v13, a2, a3);
  }
}

void sub_1006B4720(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094FB70);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  a2, v12, v13, v14, v15, v16, v17, v18;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v93 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_10000668C(a1, a2, &v93);
    _os_log_impl(&_mh_execute_header, v10, v11, "RDAccountUtils: requestToMergeLocalDataIntoSyncData {acAccountIdentifier: %{public}s}", v19, 0xCu);
    sub_10000607C(v20);
  }

  v21 = sub_1006B9764();
  if (v21)
  {
    v91 = v21;
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 accountStore];

    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 accountWithIdentifier:v24];

    if (!v25)
    {
LABEL_17:

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      a2, v52, v53, v54, v55, v56, v57, v58;
      if (os_log_type_enabled(v50, v51))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v93 = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_10000668C(a1, a2, &v93);
        _os_log_impl(&_mh_execute_header, v50, v51, "RDAccountUtils: requestToMergeLocalDataIntoSyncData: Could not find an Apple ACAccount for {acAccountIdentifier: %{public}s}", v59, 0xCu);
        sub_10000607C(v60);

        return;
      }

      goto LABEL_20;
    }

    v26 = [v25 accountType];
    if (!v26)
    {
      __break(1u);
      return;
    }

    v27 = v26;
    v28 = [v26 identifier];

    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v33;
      if (v31)
      {
        if (v29 == v32 && v31 == v33)
        {
          v31, v33, v32, v35, v36, v37, v38, v39;
          v40, v41, v42, v43, v44, v45, v46, v47;
LABEL_24:

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();
          a2, v78, v79, v80, v81, v82, v83, v84;
          if (os_log_type_enabled(v76, v77))
          {
            v85 = swift_slowAlloc();
            v90 = v23;
            v86 = a4;
            v87 = a5;
            v88 = swift_slowAlloc();
            v93 = v88;
            *v85 = 136446210;
            *(v85 + 4) = sub_10000668C(a1, a2, &v93);
            _os_log_impl(&_mh_execute_header, v76, v77, "RDAccountUtils: requestToMergeLocalDataIntoSyncData: icloud account store already exists, move local data now {acAccountIdentifier: %{public}s}", v85, 0xCu);
            sub_10000607C(v88);
            a5 = v87;
            a4 = v86;
            v23 = v90;
          }

          type metadata accessor for RDAccountUtils.LocalDataToICloudMover();
          *(swift_initStackObject() + 16) = v91;
          v89 = v91;
          sub_1006BECA8(v25);

          sub_1006BF200(0, a3, a4, a5, &unk_1008FB9D8, sub_1006D195C, &unk_1008FB9F0);
          return;
        }

        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v31, v62, v63, v64, v65, v66, v67, v68;
        v40, v69, v70, v71, v72, v73, v74, v75;
        if (v61)
        {
          goto LABEL_24;
        }

        goto LABEL_16;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v33;
    }

    v40, v33, v34, v35, v36, v37, v38, v39;
LABEL_16:

    goto LABEL_17;
  }

  v48 = objc_opt_self();
  v49 = String._bridgeToObjectiveC()();
  v91 = [v48 internalErrorWithDebugDescription:v49];

  sub_1006BF200(v91, a3, a4, a5, &unk_1008FB9D8, sub_1006D195C, &unk_1008FB9F0);
LABEL_20:
}

void sub_1006B5338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006B9764();
  if (v6)
  {
    v7 = v6;
    v73 = a1;
    v8 = [objc_opt_self() localAccountID];
    v75 = 0;
    v9 = [v7 fetchAccountWithObjectID:v8 error:&v75];

    v10 = v75;
    if (v9)
    {
      type metadata accessor for RDAccountDataMover();
      swift_initStackObject();
      v11 = v10;
      v12 = v7;
      sub_1004ED328(v12);
      sub_1004EEEE8(v9);
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100006654(v54, qword_10094FB70);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      log = v55;
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v75 = v58;
        *v57 = 136446210;
        v59 = sub_1004ED21C();
        v61 = v60;
        v62 = a2;
        v63 = a3;
        v64 = sub_10000668C(v59, v60, &v75);
        v61, v65, v66, v67, v68, v69, v70, v71;
        *(v57 + 4) = v64;
        a3 = v63;
        a2 = v62;
        _os_log_impl(&_mh_execute_header, log, v56, "RDAccountUtils: requestToDeleteLocalData: Local account emptied {stats: %{public}s}.", v57, 0xCu);
        sub_10000607C(v58);
      }

      else
      {
      }

      sub_1006BF200(0, v73, a2, a3, &unk_1008FB988, sub_1006D5528, &unk_1008FB9A0);
    }

    else
    {
      v15 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094FB70);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v75 = v20;
        *v19 = 136446210;
        swift_getErrorValue();
        v21 = Error.localizedDescription.getter();
        v23 = v22;
        v24 = sub_10000668C(v21, v22, &v75);
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "RDAccountUtils: requestToDeleteLocalData: Error occurred when trying to delete local data {error: %{public}s}", v19, 0xCu);
        sub_10000607C(v20);
      }

      v32 = objc_opt_self();
      v75 = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v33._object = 0x80000001007FEB10;
      v33._countAndFlagsBits = 0xD000000000000038;
      String.append(_:)(v33);
      swift_getErrorValue();
      v34._countAndFlagsBits = Error.localizedDescription.getter();
      object = v34._object;
      String.append(_:)(v34);
      object, v36, v37, v38, v39, v40, v41, v42;
      v43._countAndFlagsBits = 125;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      v44 = v76;
      v45 = String._bridgeToObjectiveC()();
      v44, v46, v47, v48, v49, v50, v51, v52;
      v53 = [v32 internalErrorWithDebugDescription:v45];

      sub_1006BF200(v53, v73, a2, a3, &unk_1008FB988, sub_1006D5528, &unk_1008FB9A0);
    }
  }

  else
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v74 = [v13 internalErrorWithDebugDescription:v14];

    sub_1006BF200(v74, a1, a2, a3, &unk_1008FB988, sub_1006D5528, &unk_1008FB9A0);
  }
}

uint64_t sub_1006B593C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FB70);
  v1 = sub_100006654(v0, qword_10094FB70);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006B5A04(_BYTE *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*a1)
  {
    v8 = "didChooseToMigrate";
  }

  else
  {
    v8 = "artList";
  }

  v9 = (v8 | 0x8000000000000000);
  if (*a2)
  {
    v10 = "didChooseToMigrate";
  }

  else
  {
    v10 = "artList";
  }

  v11 = (v10 | 0x8000000000000000);
  if (v9 == (v10 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v9, a2, a3, a4, a5, a6, a7, a8;
  v11, v13, v14, v15, v16, v17, v18, v19;
  return v12 & 1;
}

Swift::Int sub_1006B5AA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = "didChooseToMigrate";
  }

  else
  {
    v2 = "artList";
  }

  String.hash(into:)();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_1006B5B20(uint64_t a1)
{
  if (*v1)
  {
    v2 = "didChooseToMigrate";
  }

  else
  {
    v2 = "artList";
  }

  String.hash(into:)();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1006B5B84(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = "didChooseToMigrate";
  }

  else
  {
    v3 = "artList";
  }

  String.hash(into:)();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1006B5BF8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E42A0, v3);
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

void sub_1006B5C58(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "didChooseToMigrate";
  }

  else
  {
    v2 = "artList";
  }

  *a1 = 0xD000000000000012;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1006B5C90()
{
  sub_1000F5104(&qword_10094FE50, &qword_1007B5978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CE0;
  *(inited + 32) = _auto_REMAccountTypeForPrimaryCloudKit();
  *(inited + 40) = xmmword_1007B58D0;
  *(inited + 56) = 4;
  v1 = sub_100393778(inited);
  result = swift_setDeallocating();
  off_10094FB88 = v1;
  return result;
}

void sub_1006B5D18(void *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void (*a5)(uint64_t, void), uint64_t a6, void *a7)
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10094FB70);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  a4, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&aBlock = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000668C(a3, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "Received migration state from user record {accountID: %{public}s}", v22, 0xCu);
    sub_10000607C(v23);
  }

  v24 = objc_opt_self();
  v25 = [v24 sharedInstance];
  v62 = [v25 accountStore];

  v26 = String._bridgeToObjectiveC()();
  v27 = [v62 accountWithIdentifier:v26];

  if (v27)
  {

    v59 = a6;
    if (a1)
    {
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v28 = a1;
      CKRecordKeyValueSetting.subscript.getter();
      HIDWORD(v60) = aBlock;
      CKRecordKeyValueSetting.subscript.getter();

      LOBYTE(v60) = aBlock;
    }

    else
    {

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      a4, v31, v32, v33, v34, v35, v36, v37;
      if (os_log_type_enabled(v29, v30))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&aBlock = v39;
        *v38 = 136446210;
        *(v38 + 4) = sub_10000668C(a3, a4, &aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to fetch user record. Let's assume the account is not migrated {accountID: %{public}s}", v38, 0xCu);
        sub_10000607C(v39);
      }

      v60 = 0;
    }

    LOBYTE(aBlock) = 0;
    v40 = [a7 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v40)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
    }

    aBlock = v68;
    v65 = v69;
    if (*(&v69 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v41 = v63;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v41 = 0;
    }

    LOBYTE(v68) = 1;
    v42 = [a7 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v42)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
    }

    aBlock = v68;
    v65 = v69;
    if (*(&v69 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v43 = v63;
      }

      else
      {
        v43 = 0;
      }

      if (v41 && v43)
      {
        if (((HIDWORD(v60) ^ [v41 BOOLValue]) & 1) == 0 && (v60 & 1) == objc_msgSend(v43, "BOOLValue"))
        {
          a5(1, 0);

          return;
        }

        v43 = v63;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v43 = 0;
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    a4, v46, v47, v48, v49, v50, v51, v52;
    if (os_log_type_enabled(v44, v45))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&aBlock = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_10000668C(a3, a4, &aBlock);
      _os_log_impl(&_mh_execute_header, v44, v45, "Cache migration state in ACAccount object {accountID: %{public}s}", v53, 0xCu);
      sub_10000607C(v54);
    }

    v55 = [v24 sharedInstance];
    v56 = swift_allocObject();
    v56[2] = a3;
    v56[3] = a4;
    v56[4] = a7;
    v56[5] = a5;
    v56[6] = v59;
    v66 = sub_1006D18CC;
    v67 = v56;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v65 = sub_100007688;
    *(&v65 + 1) = &unk_1008FB8D8;
    v57 = _Block_copy(&aBlock);

    v58 = a7;

    [v55 saveDidChooseToMigrate:BYTE4(v60) & 1 didFinishMigration:v60 & 1 toACAccount:v58 inStore:v62 completionHandler:v57];

    _Block_release(v57);
  }

  else
  {
    a5(0, 0);
  }
}

uint64_t sub_1006B64BC(char a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, uint64_t (*a6)(void, uint64_t))
{
  if (a1)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10094FB70);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    a4, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_10000668C(a3, a4, &v45);
      _os_log_impl(&_mh_execute_header, v11, v12, "Migration state cache saved {accountID: %{public}s}", v20, 0xCu);
      sub_10000607C(v21);
    }
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094FB70);
    v24 = a5;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v30 = v24;
        v31 = Error.localizedDescription.getter();
        v33 = v32;
      }

      else
      {
        v34 = v24;
        v33 = 0xE300000000000000;
        v31 = 7104878;
      }

      v35 = sub_10000668C(v31, v33, &v45);
      v33, v36, v37, v38, v39, v40, v41, v42;
      *(v27 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error updating migration flags for ACAccount {acAccount: %@, error: %s}", v27, 0x16u);
      sub_1000050A4(v28, &unk_100938E70, &unk_100797230);

      sub_10000607C(v29);
    }
  }

  return a6(a1 & 1, a2);
}

uint64_t sub_1006B6820(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t a3, char a4, char a5)
{
  if (a1)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FB70);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v12 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = v14;
      v16 = a2;
      v17 = sub_10000668C(v13, v14, &v34);
      v15, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      a2 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "UpdateAccountsWithAccountInfos: Error saving context after adding account {error: %s}", v12, 0xCu);
      sub_10000607C(v33);
    }

    v25 = a4 & 1;
    v26 = a5 & 1;
    v27 = a1;
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094FB70);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "UpdateAccountsWithAccountInfos: Account object changes saved", v31, 2u);
    }

    v25 = a4 & 1;
    v26 = a5 & 1;
    v27 = 0;
  }

  return a2(v25, v26, v27);
}

void sub_1006B6A9C(void *a1, id a2, unsigned __int8 a3, char a4, void (*a5)(void, void, _TtC7remindd19RDXPCStorePerformer *, void), uint64_t a6)
{
  v11 = [a1 displayAccount];
  if (!v11)
  {
    v11 = a1;
  }

  v12 = &selRef_hack_willSaveHandled;
  v13 = [v11 identifier];
  if (!v13)
  {
    __break(1u);
    goto LABEL_175;
  }

  v6 = v13;
  v552 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v11 accountType];
  if (!v16)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v17 = v16;
  v6 = [v16 identifier];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v21;
LABEL_12:
    v28, v21, v22, v23, v24, v25, v26, v27;
    if (([v11 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v19;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v21;
  if (!v12)
  {
    goto LABEL_12;
  }

  if (v18 == v20 && v12 == v21)
  {
    v12, v21, v20, v23, v24, v25, v26, v27;
    v28, v29, v30, v31, v32, v33, v34, v35;
    if (([v11 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_100006654(v86, qword_10094FB70);
      v87 = a1;
      a2 = v11;

      v7 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v88))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      v89 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v89 = 136446722;
      v90 = [v87 identifier];

      v15, v91, v92, v93, v94, v95, v96, v97;
      if (v90)
      {
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v99;

        v100 = sub_10000668C(v98, v12, &aBlock);
        v12, v101, v102, v103, v104, v105, v106, v107;
        *(v89 + 4) = v100;
        *(v89 + 12) = 2082;
        v6 = sub_10000668C(v552, v15, &aBlock);
        v15, v108, v109, v110, v111, v112, v113, v114;
        *(v89 + 14) = v6;
        *(v89 + 22) = 2082;
        v115 = [a2 accountType];
        if (v115)
        {
          v8 = v115;
          v116 = [(RDXPCStorePerformer *)v115 identifier];

          if (v116)
          {
            v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v118;

            v120 = sub_10000668C(v117, v119, &aBlock);
            v119, v121, v122, v123, v124, v125, v126, v127;
            *(v89 + 24) = v120;
            _os_log_impl(&_mh_execute_header, v7, v88, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v89, 0x20u);
            swift_arrayDestroy();

LABEL_32:

            a5(0, 0, &_swiftEmptyArrayStorage, 0);

            return;
          }

          goto LABEL_178;
        }

LABEL_177:

        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

LABEL_176:

      __break(1u);
      goto LABEL_177;
    }

LABEL_23:
    v85 = 1;
    goto LABEL_36;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12, v71, v72, v73, v74, v75, v76, v77;
  v28, v78, v79, v80, v81, v82, v83, v84;
  if (([v11 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v70)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {
    v15, v36, v37, v38, v39, v40, v41, v42;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10094FB70);
    v44 = a1;
    v8 = v11;
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v45 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v45 = 136446466;
      v6 = [v44 identifier];

      if (!v6)
      {
LABEL_180:

        __break(1u);
        goto LABEL_181;
      }

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v6 = sub_10000668C(v46, v48, &aBlock);
      v48, v49, v50, v51, v52, v53, v54, v55;
      *(v45 + 4) = v6;
      *(v45 + 12) = 2082;
      v56 = [(RDXPCStorePerformer *)v8 accountType];
      if (!v56)
      {
LABEL_181:

        __break(1u);
        goto LABEL_182;
      }

      v57 = v56;
      v58 = [v56 identifier];

      if (!v58)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_10000668C(v59, v61, &aBlock);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v45 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v7, v12, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    a5(0, 0, &_swiftEmptyArrayStorage, 0);
    return;
  }

  aBlock = 0u;
  v557 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v85 = 0;
LABEL_36:
  v543 = v7;
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v128 = type metadata accessor for Logger();
  v7 = sub_100006654(v128, qword_10094FB70);
  v8 = v15;

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  v15, v131, v132, v133, v134, v135, v136, v137;
  if (os_log_type_enabled(v129, v130))
  {
    v6 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&aBlock = v138;
    *v6 = 136446210;
    *(v6 + 1) = sub_10000668C(v552, v15, &aBlock);
    _os_log_impl(&_mh_execute_header, v129, v130, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v6, 0xCu);
    sub_10000607C(v138);
  }

  v12 = swift_allocObject();
  v12->clientIdentity[0] = 0;
  v139 = [v11 rem_isEligibleForCloudKitReminders];
  if (!v85)
  {
    v142 = [v11 accountType];
    if (!v142)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v143 = v142;
    v144 = sub_1006C3788(v142);
    v146 = v145;

    v8 = v15;
    if (v146)
    {
      v6 = v11;
      v7 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v147))
      {
        v541 = v12;
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *&aBlock = v149;
        *v148 = 136446210;
        v150 = [v6 accountType];
        if (!v150)
        {
LABEL_183:

          __break(1u);
          goto LABEL_184;
        }

        v12 = v150;
        v151 = [(RDXPCStorePerformer *)v150 identifier];

        if (!v151)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v153;

        v155 = sub_10000668C(v152, v154, &aBlock);
        v154, v156, v157, v158, v159, v160, v161, v162;
        *(v148 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v7, v147, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v148, 0xCu);
        sub_10000607C(v149);

        v163 = &_swiftEmptyArrayStorage;
        goto LABEL_161;
      }
    }

    else
    {

      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.default.getter();
      v15, v203, v204, v205, v206, v207, v208, v209;
      v546 = v144;
      if (os_log_type_enabled(v201, v202))
      {
        v210 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v210 = 136446466;
        *(v210 + 4) = sub_10000668C(v552, v15, &aBlock);
        *(v210 + 12) = 2082;
        v211 = REMAccountType.loggableDescription.getter();
        v213 = v212;
        v214 = v12;
        v215 = sub_10000668C(v211, v212, &aBlock);
        v213, v216, v217, v218, v219, v220, v221, v222;
        *(v210 + 14) = v215;
        v12 = v214;
        _os_log_impl(&_mh_execute_header, v201, v202, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v210, 0x16u);
        swift_arrayDestroy();
      }

      v223 = sub_1006C3CF4(v11);
      if (v224)
      {
        v225 = v223;
        v226 = v224;
        v227 = v11;

        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.default.getter();

        v226, v230, v231, v232, v233, v234, v235, v236;
        if (os_log_type_enabled(v228, v229))
        {
          v237 = v225;
          v238 = swift_slowAlloc();
          v542 = v12;
          v239 = swift_slowAlloc();
          v240 = swift_slowAlloc();
          *&aBlock = v240;
          *v238 = 136446466;
          *(v238 + 4) = sub_10000668C(v237, v226, &aBlock);
          *(v238 + 12) = 2114;
          v241 = [v227 identifier];
          *(v238 + 14) = v241;
          *v239 = v241;
          _os_log_impl(&_mh_execute_header, v228, v229, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v238, 0x16u);
          sub_1000050A4(v239, &unk_100938E70, &unk_100797230);
          v12 = v542;

          sub_10000607C(v240);

          v225 = v237;
        }

        v242 = [objc_opt_self() accountDescriptionWithACAccount:v227];
        if (v242)
        {
          v247 = v242;
          v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v250 = v249;
        }

        else
        {
          v248 = 0;
          v250 = 0xE000000000000000;
        }

        v163 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v243, v244, v245, v246);
        v318 = *v163->clientIdentity;
        v317 = *&v163->clientIdentity[8];
        if (v318 >= v317 >> 1)
        {
          v163 = sub_1003685B8((v317 > 1), v318 + 1, 1, v163, v313, v314, v315, v316);
        }

        *v163->clientIdentity = v318 + 1;
        v319 = v163 + 48 * v318;
        *(v319 + 4) = v225;
        *(v319 + 5) = v226;
        *(v319 + 6) = v248;
        *(v319 + 7) = v250;
        *(v319 + 8) = v546;
        *(v319 + 18) = 33685505;
        v319[76] = 2;
        goto LABEL_162;
      }
    }

LABEL_67:
    v163 = &_swiftEmptyArrayStorage;
LABEL_162:

    sub_1006CFF18(v453, a2, v12, v552, v8, v163, a5, a6);

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    return;
  }

  if ((v139 & 1) == 0)
  {
    v8 = v15;

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.default.getter();
    v15, v166, v167, v168, v169, v170, v171, v172;
    if (os_log_type_enabled(v164, v165))
    {
      v173 = swift_slowAlloc();
      v174 = v12;
      v175 = swift_slowAlloc();
      *&aBlock = v175;
      *v173 = 136446210;
      *(v173 + 4) = sub_10000668C(v552, v15, &aBlock);
      _os_log_impl(&_mh_execute_header, v164, v165, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v173, 0xCu);
      sub_10000607C(v175);
      v12 = v174;
    }

    v176 = sub_1006BFC1C(v11);
    if (v177)
    {
      v178 = v176;
      v179 = v177;

      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.default.getter();
      v179, v182, v183, v184, v185, v186, v187, v188;
      v189 = v12;
      if (os_log_type_enabled(v180, v181))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *&aBlock = v191;
        *v190 = 136446210;
        *(v190 + 4) = sub_10000668C(v178, v179, &aBlock);
        _os_log_impl(&_mh_execute_header, v180, v181, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v190, 0xCu);
        sub_10000607C(v191);
      }

      v192 = [objc_opt_self() accountDescriptionWithACAccount:v11];
      if (v192)
      {
        v197 = v192;
        v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v200 = v199;
      }

      else
      {
        v198 = 0;
        v200 = 0;
      }

      if (v200)
      {
        v305 = v200;
      }

      else
      {
        v198 = 0x64756F6C4369;
        v305 = 0xE600000000000000;
      }

      v163 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v193, v194, v195, v196);
      v311 = *v163->clientIdentity;
      v310 = *&v163->clientIdentity[8];
      if (v311 >= v310 >> 1)
      {
        v163 = sub_1003685B8((v310 > 1), v311 + 1, 1, v163, v306, v307, v308, v309);
      }

      *v163->clientIdentity = v311 + 1;
      v312 = v163 + 48 * v311;
      *(v312 + 4) = v178;
      *(v312 + 5) = v179;
      *(v312 + 6) = v198;
      *(v312 + 7) = v305;
      *(v312 + 8) = 3;
      *(v312 + 18) = 33685505;
      v312[76] = 2;
      v12 = v189;
      goto LABEL_162;
    }

    goto LABEL_67;
  }

  v541 = v12;
  *&v560 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v560 + 1) = v140;
  v141 = [v11 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v141)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v560 = 0u;
    v561 = 0u;
  }

  aBlock = v560;
  v557 = v561;
  if (*(&v561 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      a3 = [v555 BOOLValue];

      goto LABEL_83;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_83:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v279;
    v280 = [v11 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    v8 = v15;
    if (v280)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v560 = 0u;
      v561 = 0u;
    }

    aBlock = v560;
    v557 = v561;
    if (*(&v561 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v281 = v555;
      }

      else
      {
        v281 = 0;
      }

      if (a3)
      {
LABEL_91:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v264 = Strong;
          v290 = sub_1006BF940(v552, v15);
          if (v290)
          {
            v291 = v290;
            sub_10031C72C(v290, v264);
            v293 = v292;

            LODWORD(v291) = *(v293 + 88);

            v548 = v291 ^ 1;
            goto LABEL_96;
          }

          v454 = Logger.logObject.getter();
          v455 = static os_log_type_t.error.getter();
          v15, v456, v457, v458, v459, v460, v461, v462;
          if (os_log_type_enabled(v454, v455))
          {
            v463 = swift_slowAlloc();
            v464 = swift_slowAlloc();
            *&aBlock = v464;
            *v463 = 136315138;
            v465 = sub_10000668C(v552, v15, &aBlock);
            v258 = v281;
            v466 = v465;
            v8, v467, v468, v469, v470, v471, v472, v473;
            *(v463 + 4) = v466;
            _os_log_impl(&_mh_execute_header, v454, v455, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v463, 0xCu);
            sub_10000607C(v464);

LABEL_165:
            return;
          }

          v15, v474, v475, v476, v477, v478, v479, v480;
        }

        else
        {
          v15, v283, v284, v285, v286, v287, v288, v289;
          v344 = Logger.logObject.getter();
          v345 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v344, v345))
          {
            v346 = swift_slowAlloc();
            *v346 = 0;
            _os_log_impl(&_mh_execute_header, v344, v345, "Store controller missing for checking whether migration has failed", v346, 2u);
          }
        }

        goto LABEL_173;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v281 = 0;
      if (a3)
      {
        goto LABEL_91;
      }
    }

    v548 = 0;
LABEL_96:
    if (v281 && (v548 & [v281 BOOLValue] & 1) != 0)
    {
      v12->clientIdentity[0] = 1;

      v294 = Logger.logObject.getter();
      v295 = static os_log_type_t.default.getter();
      v15, v296, v297, v298, v299, v300, v301, v302;
      if (os_log_type_enabled(v294, v295))
      {
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        *&aBlock = v304;
        *v303 = 136446210;
        *(v303 + 4) = sub_10000668C(v552, v15, &aBlock);
        _os_log_impl(&_mh_execute_header, v294, v295, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v303, 0xCu);
        sub_10000607C(v304);
      }
    }

    if ([v11 aa_isAccountClass:AAAccountClassPrimary])
    {
      v540 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v540 = 6;
    }

    v320 = v281;

    v321 = Logger.logObject.getter();
    v322 = static os_log_type_t.default.getter();
    v544 = v320;

    v8, v323, v324, v325, v326, v327, v328, v329;
    if (os_log_type_enabled(v321, v322))
    {
      v330 = v281;
      v331 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v331 = 136447234;
      *(v331 + 4) = sub_10000668C(v552, v8, &aBlock);
      *(v331 + 12) = 2082;
      v332 = REMAccountType.loggableDescription.getter();
      v334 = v333;
      v335 = sub_10000668C(v332, v333, &aBlock);
      v334, v336, v337, v338, v339, v340, v341, v342;
      *(v331 + 14) = v335;
      *(v331 + 22) = 1024;
      *(v331 + 24) = a3 & 1;
      *(v331 + 28) = 1024;
      *(v331 + 30) = v548 & 1;
      *(v331 + 34) = 2082;
      if (v330)
      {
        v343 = [v544 BOOLValue];
      }

      else
      {
        v343 = 2;
      }

      LOBYTE(v560) = v343;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v393 = String.init<A>(describing:)();
      v395 = v394;
      v396 = sub_10000668C(v393, v394, &aBlock);
      v395, v397, v398, v399, v400, v401, v402, v403;
      *(v331 + 36) = v396;
      _os_log_impl(&_mh_execute_header, v321, v322, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v331, 0x2Cu);
      swift_arrayDestroy();

      v281 = v330;
    }

    else
    {
    }

    v539 = objc_opt_self();
    v404 = [v539 accountDescriptionWithACAccount:v11];
    if (v404)
    {
      v405 = v404;
      v406 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v408 = v407;
    }

    else
    {
      v406 = 0;
      v408 = 0;
    }

    if (v281)
    {
      v409 = [v544 BOOLValue];
    }

    else
    {
      v409 = 2;
    }

    v538 = a3;
    v410 = [v11 aa_isAccountClass:AAAccountClassBasic];
    if (v408)
    {
      v411 = v406;
    }

    else
    {
      v411 = 0x64756F6C4369;
    }

    if (v408)
    {
      v412 = v408;
    }

    else
    {
      v412 = 0xE600000000000000;
    }

    v163 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v413, v414, v415, v416);
    v422 = *v163->clientIdentity;
    v421 = *&v163->clientIdentity[8];
    if (v422 >= v421 >> 1)
    {
      v163 = sub_1003685B8((v421 > 1), v422 + 1, 1, v163, v417, v418, v419, v420);
    }

    *v163->clientIdentity = v422 + 1;
    v423 = v163 + 48 * v422;
    *(v423 + 4) = v552;
    *(v423 + 5) = v8;
    *(v423 + 6) = v411;
    *(v423 + 7) = v412;
    *(v423 + 8) = v540;
    v423[72] = v548 & 1;
    v423[73] = 0;
    v423[74] = a3 & 1;
    v423[75] = v409;
    v423[76] = v410;
    v424 = sub_1006BFC1C(v11);
    if (v425)
    {
      v426 = v424;
      v427 = v425;

      v428 = Logger.logObject.getter();
      v429 = static os_log_type_t.default.getter();
      v427, v430, v431, v432, v433, v434, v435, v436;
      if (os_log_type_enabled(v428, v429))
      {
        v437 = swift_slowAlloc();
        v438 = swift_slowAlloc();
        *&aBlock = v438;
        *v437 = 136446466;
        *(v437 + 4) = sub_10000668C(v426, v427, &aBlock);
        *(v437 + 12) = 1024;
        *(v437 + 14) = v538 & 1;
        _os_log_impl(&_mh_execute_header, v428, v429, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v437, 0x12u);
        sub_10000607C(v438);
      }

      v439 = [v539 accountDescriptionWithACAccount:v11];
      if (v439)
      {
        v444 = v439;
        v445 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v447 = v446;
      }

      else
      {
        v445 = 0;
        v447 = 0;
      }

      if (v447)
      {
        v448 = v445;
      }

      else
      {
        v448 = 0x64756F6C4369;
      }

      if (v447)
      {
        v449 = v447;
      }

      else
      {
        v449 = 0xE600000000000000;
      }

      v451 = *v163->clientIdentity;
      v450 = *&v163->clientIdentity[8];
      if (v451 >= v450 >> 1)
      {
        v163 = sub_1003685B8((v450 > 1), v451 + 1, 1, v163, v440, v441, v442, v443);
      }

      *v163->clientIdentity = v451 + 1;
      v452 = v163 + 48 * v451;
      *(v452 + 4) = v426;
      *(v452 + 5) = v427;
      *(v452 + 6) = v448;
      *(v452 + 7) = v449;
      *(v452 + 8) = 3;
      v452[72] = (v548 & 1) == 0;
      *(v452 + 73) = 33686016;
    }

    else
    {
    }

LABEL_161:
    v12 = v541;
    goto LABEL_162;
  }

  v251 = swift_unknownObjectWeakLoadStrong();
  v252 = a4;
  v8 = v15;
  if (v251)
  {
    v253 = v251;
    if ([v251 hasPassedBuddyAndSystemDataMigrator])
    {

      if (a4)
      {
        v254 = swift_allocObject();
        *(v254 + 16) = v552;
        *(v254 + 24) = v15;
        *(v254 + 32) = v543;
        *(v254 + 40) = v11;
        *(v254 + 48) = a2;
        *(v254 + 56) = 1;
        *(v254 + 64) = a5;
        *(v254 + 72) = a6;
        v255 = v11;
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v256 = a2;
        swift_retain_n();
        v12 = v255;
        v7 = v256;
        v257 = [(RDXPCStorePerformer *)v12 identifier];
        if (!v257)
        {
LABEL_185:

          v8, v531, v532, v533, v534, v535, v536, v537;
          __break(1u);
          return;
        }

        v258 = v257;
        v259 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v261 = v260;
        v262 = swift_unknownObjectWeakLoadStrong();
        v551 = v7;
        if (v262)
        {
          v263 = v262;
          v264 = [v262 cloudContext];

          if (v264)
          {

            v265 = Logger.logObject.getter();
            v266 = static os_log_type_t.default.getter();
            v261, v267, v268, v269, v270, v271, v272, v273;
            if (os_log_type_enabled(v265, v266))
            {
              v274 = swift_slowAlloc();
              v547 = v12;
              v275 = swift_slowAlloc();
              *&aBlock = v275;
              *v274 = 136446210;
              *(v274 + 4) = sub_10000668C(v259, v261, &aBlock);
              _os_log_impl(&_mh_execute_header, v265, v266, "Fetch migration state from user record {accountID: %{public}s}", v274, 0xCu);
              sub_10000607C(v275);
              v12 = v547;
            }

            v276 = swift_allocObject();
            v276[2] = v259;
            v276[3] = v261;
            v276[4] = sub_1006D18C4;
            v276[5] = v254;
            v276[6] = v12;
            v558 = sub_1006D18C8;
            v559 = v276;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v557 = sub_10016AC08;
            *(&v557 + 1) = &unk_1008FB888;
            v277 = _Block_copy(&aBlock);
            v278 = v12;

            [v264 fetchUserRecordWithAccountID:v258 completionHandler:v277];
            _Block_release(v277);

            swift_bridgeObjectRelease_n();

            goto LABEL_165;
          }
        }

        v549 = v12;

        v481 = Logger.logObject.getter();
        v482 = static os_log_type_t.error.getter();
        v261, v483, v484, v485, v486, v487, v488, v489;
        if (os_log_type_enabled(v481, v482))
        {
          v497 = swift_slowAlloc();
          v498 = swift_slowAlloc();
          *&aBlock = v498;
          *v497 = 136446210;
          v499 = sub_10000668C(v259, v261, &aBlock);
          v261, v500, v501, v502, v503, v504, v505, v506;
          *(v497 + 4) = v499;
          _os_log_impl(&_mh_execute_header, v481, v482, "Missing cloud context for fetching migration state {accountID: %{public}s}", v497, 0xCu);
          sub_10000607C(v498);
        }

        else
        {
          v261, v490, v491, v492, v493, v494, v495, v496;
        }

        v507 = objc_opt_self();
        v508 = String._bridgeToObjectiveC()();
        v509 = [v507 internalErrorWithDebugDescription:v508];

        v281 = v509;
        v510 = Logger.logObject.getter();
        v511 = static os_log_type_t.error.getter();
        v8, v512, v513, v514, v515, v516, v517, v518;

        if (os_log_type_enabled(v510, v511))
        {
          v519 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v519 = 136315394;
          swift_getErrorValue();
          v520 = Error.localizedDescription.getter();
          v522 = v521;
          v523 = sub_10000668C(v520, v521, &aBlock);
          v522, v524, v525, v526, v527, v528, v529, v530;
          *(v519 + 4) = v523;
          *(v519 + 12) = 2082;
          *(v519 + 14) = sub_10000668C(v552, v8, &aBlock);
          _os_log_impl(&_mh_execute_header, v510, v511, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v519, 0x16u);
          swift_arrayDestroy();
        }

        sub_1006B6A9C(v549, v551, 0, 1, a5, a6);

        swift_bridgeObjectRelease_n();

LABEL_173:

        return;
      }
    }

    else
    {

      v347 = Logger.logObject.getter();
      v348 = static os_log_type_t.default.getter();
      v15, v349, v350, v351, v352, v353, v354, v355;
      if (os_log_type_enabled(v347, v348))
      {
        v356 = swift_slowAlloc();
        v357 = swift_slowAlloc();
        *&aBlock = v357;
        *v356 = 136446210;
        *(v356 + 4) = sub_10000668C(v552, v15, &aBlock);
        _os_log_impl(&_mh_execute_header, v347, v348, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v356, 0xCu);
        sub_10000607C(v357);
        v252 = a4;
      }
    }
  }

  v358 = Logger.logObject.getter();
  v359 = static os_log_type_t.default.getter();
  v15, v360, v361, v362, v363, v364, v365, v366;
  if (os_log_type_enabled(v358, v359))
  {
    v374 = swift_slowAlloc();
    v375 = swift_slowAlloc();
    *&aBlock = v375;
    *v374 = 136446210;
    v376 = v252;
    v377 = sub_10000668C(v552, v15, &aBlock);
    v15, v378, v379, v380, v381, v382, v383, v384;
    *(v374 + 4) = v377;
    v252 = v376;
    _os_log_impl(&_mh_execute_header, v358, v359, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v374, 0xCu);
    sub_10000607C(v375);
  }

  else
  {
    v15, v367, v368, v369, v370, v371, v372, v373;
  }

  v385 = objc_opt_self();
  v386 = [v385 sharedInstance];
  v387 = [v386 accountStore];

  v388 = [v385 sharedInstance];
  v389 = swift_allocObject();
  *(v389 + 16) = v11;
  *(v389 + 24) = v543;
  *(v389 + 32) = a2;
  *(v389 + 40) = v252 & 1;
  *(v389 + 48) = a5;
  *(v389 + 56) = a6;
  v558 = sub_1006D18C0;
  v559 = v389;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v557 = sub_100007688;
  *(&v557 + 1) = &unk_1008FB810;
  v390 = _Block_copy(&aBlock);
  v391 = v11;

  v392 = a2;

  [v388 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v391 inStore:v387 completionHandler:v390];

  _Block_release(v390);
}

void sub_1006B8DBC(char a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5, void *a6, void *a7, char a8, void (*a9)(void, void, _TtC7remindd19RDXPCStorePerformer *, void), uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v16 = a9;
  v15 = a10;
  if (a1)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10094FB70);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    a4, v22, v23, v24, v25, v26, v27, v28;
    if (os_log_type_enabled(v20, v21))
    {
      v29 = a3;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_10000668C(v29, a4, &v58);
      _os_log_impl(&_mh_execute_header, v20, v21, "UpdateAccountWithACAccount: Migration state fetched {accountID: %{public}s}", v30, 0xCu);
      sub_10000607C(v31);
    }

    v10 = a8;
    v12 = a6;
    v15 = a10;
    v16 = a9;
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_10094FB70);

    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    a4, v36, v37, v38, v39, v40, v41, v42;
    if (os_log_type_enabled(v34, v35))
    {
      v55 = v10;
      v43 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v43 = 136315394;
      if (a2)
      {
        swift_getErrorValue();
        v44 = Error.localizedDescription.getter();
        v46 = v45;
      }

      else
      {
        v46 = 0xE300000000000000;
        v44 = 7104878;
      }

      v47 = sub_10000668C(v44, v46, &v58);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_10000668C(a3, a4, &v58);
      _os_log_impl(&_mh_execute_header, v34, v35, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v43, 0x16u);
      swift_arrayDestroy();

      v11 = a7;
      v10 = v55;
    }

    else
    {

      v11 = a7;
    }
  }

  sub_1006B6A9C(v12, v11, 0, v10 & 1, v16, v15);
}

void sub_1006B9110(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6, void (*a7)(void, void, _TtC7remindd19RDXPCStorePerformer *, void), uint64_t a8)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FB70);
    v15 = a3;
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v35 = v17;
      log = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v18 = 138543618;
      *(v18 + 4) = v15;
      v33 = v19;
      *v19 = v15;
      *(v18 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = v15;
        v21 = Error.localizedDescription.getter();
        v23 = v22;
      }

      else
      {
        v24 = v15;
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = sub_10000668C(v21, v23, &v37);
      v23, v26, v27, v28, v29, v30, v31, v32;
      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, log, v35, "UpdateAccountWithACAccount: Error updating migration flags for ACAccount {acAccount: %{public}@, error: %s}", v18, 0x16u);
      sub_1000050A4(v33, &unk_100938E70, &unk_100797230);

      sub_10000607C(v34);
    }

    else
    {
    }
  }

  sub_1006B6A9C(a3, a5, 0, a6 & 1, a7, a8);
}

void sub_1006B9394(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, uint64_t a7, void (*a8)(void, void, void, void))
{
  v13 = a2;
  v14 = a1;
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(a4 + 16) != 1)
  {
    goto LABEL_16;
  }

  v16 = a5;
  v78 = v14;
  v17 = objc_opt_self();
  v18 = [v17 daemonUserDefaults];
  v19 = [v18 acAccountIdentifiersToMigrateInactivatedCalDavData];

  if (v19)
  {
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = &_swiftEmptyArrayStorage;
  }

  v21 = sub_1001A5660(v20);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v81 = v21;

  sub_100378434(v80, v16, a6);
  v80[1], v29, v30, v31, v32, v33, v34, v35;
  v43 = [v17 daemonUserDefaults];
  v44 = v81;
  v45 = *(v81 + 16);
  if (!v45)
  {
    goto LABEL_10;
  }

  v46 = sub_1003689CC(*(v81 + 16), 0);
  v44 = sub_1002791DC(v80, &v46->clientIdentity[16], v45, v44);
  sub_10001B860(v80[0]);
  if (v44 != v45)
  {
    __break(1u);
LABEL_10:
    v44, v36, v37, v38, v39, v40, v41, v42;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100006654(v48, qword_10094FB70);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  a6, v51, v52, v53, v54, v55, v56, v57;
  if (os_log_type_enabled(v49, v50))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v80[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_10000668C(v16, a6, v80);
    _os_log_impl(&_mh_execute_header, v49, v50, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v58, 0xCu);
    sub_10000607C(v59);
  }

  v14 = v78;
LABEL_16:
  v60 = *(a7 + 16);
  v61 = &_swiftEmptyArrayStorage;
  if (v60)
  {
    v79 = v14;
    v76 = v13;
    v77 = a3;
    v62 = a8;
    v80[0] = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v60, 0);
    v61 = v80[0];
    v63 = (a7 + 40);
    do
    {
      v64 = *(v63 - 1);
      v65 = *v63;
      v80[0] = v61;
      v67 = *v61->clientIdentity;
      v66 = *&v61->clientIdentity[8];

      if (v67 >= v66 >> 1)
      {
        sub_100026EF4((v66 > 1), v67 + 1, 1);
        v61 = v80[0];
      }

      *v61->clientIdentity = v67 + 1;
      v68 = v61 + 16 * v67;
      *(v68 + 4) = v64;
      *(v68 + 5) = v65;
      v63 += 6;
      --v60;
    }

    while (v60);
    a8 = v62;
    a3 = v77;
    v13 = v76;
    v14 = v79;
  }

  a8(v14 & 1, v13 & 1, v61, a3);
  v61, v69, v70, v71, v72, v73, v74, v75;
}

id sub_1006B9764()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong supportsAccountUtils];

      if (v4)
      {
        v5 = type metadata accessor for RDDaemonController();
        v22 = xmmword_1007B58E0;
        v24 = 0;
        *&v25 = 0;
        v23 = 0;
        *(&v25 + 6) = 0;
        v6 = *(v0 + 40);
        ObjectType = swift_getObjectType();
        v8 = v6;
        v9 = swift_unknownObjectRetain();
        v10 = sub_1005564D4(v9, &v22, v6, v5, ObjectType, v1);
        v11 = objc_allocWithZone(REMStore);
        v12 = [v11 initWithDaemonController:{v10, v22, v23, v24, v25}];
        swift_unknownObjectRelease();

        return v12;
      }
    }

    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FB70);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create store because storeController does not support accountUtils", v17, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094FB70);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create store because the XPC daemon is gone", v21, 2u);
    }
  }

  return 0;
}

void sub_1006B99DC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v54, v10, v11, v12, v13, v14, v15, v16;
  v53 = 0x203A656D616E3CLL;
  v54 = 0xE700000000000000;
  v17 = [v9 name];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29._countAndFlagsBits = 0x6E756F636361202CLL;
  v29._object = 0xED0000203A444974;
  String.append(_:)(v29);
  v30 = [v9 objectID];
  v31 = [v30 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100054694(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v32._object;
  String.append(_:)(v32);
  object, v34, v35, v36, v37, v38, v39, v40;
  (*(v5 + 8))(v8, v4);
  v41._countAndFlagsBits = 0x203A65707974202CLL;
  v41._object = 0xE800000000000000;
  String.append(_:)(v41);
  v55 = [v9 type];
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v42._object;
  String.append(_:)(v42);
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51._countAndFlagsBits = 62;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52 = v54;
  *a2 = v53;
  a2[1] = v52;
}

uint64_t sub_1006B9C6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094FB70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Orphaned accounts removed", v7, 2u);
  }

  return a2(1, a1);
}

void sub_1006B9D6C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  isa = v27[-1].isa;
  __chkstk_darwin(v27, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v26 = v7;
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v25 = qword_100974CB0;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v16;
    v17[4] = a2;
    v17[5] = a3;
    aBlock[4] = sub_1006C0C0C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FB798;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    v20 = v16;

    static DispatchQoS.unspecified.getter();
    v28 = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v26 + 8))(v10, v6);
    (*(isa + 1))(v14, v27);
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10094FB70);
    v27 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v27, v22, "RDAccountUtils: _initializeAllAccounts: Missing store controller.", v23, 2u);
    }

    v24 = v27;
  }
}

uint64_t sub_1006BA188(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094FB70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDAccountUtils: _initializeAllAccounts: Calling RDAccountInitializer.initializeAllAccounts()", v9, 2u);
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [objc_opt_self() daemonUserDefaults];
  v12 = type metadata accessor for RDAccountInitializer();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store] = a1;
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] = a2;
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] = v10;
  *&v13[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults] = v11;
  v23.receiver = v13;
  v23.super_class = v12;
  v14 = a1;
  v15 = a2;
  v16 = objc_msgSendSuper2(&v23, "init");
  sub_100455ED0();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "RDAccountUtils: _initializeAllAccounts: RDAccountInitializer.initializeAllAccounts() finished, calling completion.", v19, 2u);
  }

  return a3(v20, v21);
}

void sub_1006BA3CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10094FB70);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "RDAccountUtils: Missing store controller, can't start ICCC.", v9, 2u);
    }

    goto LABEL_12;
  }

  v1 = Strong;
  v2 = [Strong cloudContext];
  if (v2)
  {
    oslog = v2;
    [v2 setDisabled:0];
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094FB70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDAccountUtils: Enabled ICCC", v6, 2u);
    }

LABEL_12:
    v10 = oslog;
    goto LABEL_18;
  }

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094FB70);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountUtils: Missing ICCC, can't start ICCC.", v14, 2u);
  }

  v10 = v1;
LABEL_18:
}

void sub_1006BA670(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v5 = [Strong cloudContext];
    if (v5)
    {
      v6 = v5;
      [v5 setDisabled:1];
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
      aBlock[4] = sub_1006C0C04;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008FB748;
      v8 = _Block_copy(aBlock);

      [v6 cancelEverythingWithCompletionHandler:v8];
      _Block_release(v8);

      return;
    }

    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094FB70);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "RDAccountUtils: Missing ICCC, can't stop ICCC.", v15, 2u);
    }
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FB70);
    v16 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v16, v10, "RDAccountUtils: Missing store controller, can't stop ICCC.", v11, 2u);
    }
  }
}

uint64_t sub_1006BA928(uint64_t (*a1)(void))
{
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FB70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDAccountUtils: Disabled ICCC", v5, 2u);
  }

  return a1();
}

void sub_1006BAA1C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  [v2 enableMonitoringAgentsWithToken:a1];
}

uint64_t sub_1006BAA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() sharedManager];
  v14 = [v19 disableMonitoringAgents];
  swift_beginAccess();
  *(a1 + 16) = v14;
  *(a1 + 24) = 0;
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1006D19E4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FBB58;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_1006BADFC()
{
  sub_1000536E0(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1006BAE68(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8 & 1;
  *(v17 + 40) = a9;
  *(v17 + 48) = a10;
  *(v17 + 56) = a1;
  *(v17 + 57) = a2;
  *(v17 + 64) = a4;

  swift_errorRetain();
  sub_1006B9D6C(a6, sub_1006D5484, v17);
}

uint64_t sub_1006BAF48(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a8;
  v30 = a4;
  v28 = a9;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v18 = *(v29 - 8);
  __chkstk_darwin(v29, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v26;
  *(v22 + 24) = a6;
  *(v22 + 32) = a1;
  *(v22 + 33) = a2;
  *(v22 + 40) = a3;
  aBlock[4] = v23;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v28;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v14 + 8))(v17, v13);
  (*(v18 + 8))(v21, v29);
}

uint64_t sub_1006BB230(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2 & 1;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;

  v15 = a4;

  sub_1006BA670(sub_1006D49B4, v14);
}

uint64_t sub_1006BB2F8(uint64_t a1, void *a2, NSObject *a3, NSObject *a4, unint64_t a5, unint64_t a6, int a7)
{
  v73 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71, v16);
  v68 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  v75 = a3;
  *(v20 + 48) = a3;
  v21 = a4;
  *(v20 + 56) = a4 & 1;
  v22 = a5;
  *(v20 + 64) = a5;
  *(v20 + 72) = a6;
  v23 = objc_opt_self();

  v76 = a2;
  v77 = a1;

  v78 = v19;

  v79 = v18;

  v24 = [v23 sharedInstance];
  v25 = [v24 accountStore];

  v26 = [v25 aa_accountsEnabledForDataclass:kAccountDataclassReminders];
  if (v26)
  {
    v27 = v26;
    v66 = v13;
    v67 = v20;
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = dispatch_group_create();
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v65 = v25;
    if (v22 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_4:
        if (v35 >= 1)
        {
          v36 = 0;
          v37 = &selRef_attachmentRepresentationAndReturnError_;
          v38 = v74;
          do
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v39 = *(v22 + 8 * v36 + 32);
            }

            v40 = v39;
            if ([v39 v37[271]])
            {
              v41 = v75;
              dispatch_group_enter(v75);
              v42 = v78;

              v43 = v79;

              v44 = v35;
              v45 = v40;
              v46 = v41;
              sub_1006C8E98(v45, v76, 2u, v73 & 1, v77, v45, v38, v43, v42, v46);

              v37 = &selRef_attachmentRepresentationAndReturnError_;

              v35 = v44;
            }

            ++v36;
          }

          while (v35 != v36);
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

LABEL_19:
    v22, v28, v29, v30, v31, v32, v33, v34;
    if (qword_100935D30 != -1)
    {
      swift_once();
    }

    v77 = qword_100974CC8;
    v58 = swift_allocObject();
    v58[2] = v74;
    v58[3] = sub_1006D49CC;
    v58[4] = v67;
    aBlock[4] = sub_1006D4A04;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FC260;
    v59 = _Block_copy(aBlock);

    v60 = v68;
    static DispatchQoS.unspecified.getter();
    v80 = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v61 = v70;
    v62 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v63 = v75;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v59);

    (*(v72 + 8))(v61, v62);
    (*(v69 + 8))(v60, v71);
  }

  v19 = a6;
  a6 = v22;
  LOBYTE(v22) = v21;
  v21 = v75;
  if (qword_1009366E8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v47 = v25;
  v48 = type metadata accessor for Logger();
  sub_100006654(v48, qword_10094FB70);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "RDAccountUtils: No reminders accounts is found", v51, 2u);
  }

  v52 = v76;
  v53 = v77;

  v54 = v19;
  v55 = v78;

  v56 = v79;

  sub_1006D1A54(v52, v56, v55, 0, v53, v52, v21, v22 & 1, a6, v54);
}

uint64_t sub_1006BBAC0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, unint64_t a9)
{

  swift_errorRetain();

  v17 = a3;

  sub_1006D1A54(v17, a4, a5, a1, a2, v17, a6, a7 & 1, a8, a9);
}

uint64_t sub_1006BBBB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v19 = a11;
  swift_beginAccess();
  v20 = *(a3 + 16) | a1;
  swift_beginAccess();
  *(a3 + 16) = v20 & 1;
  swift_beginAccess();
  v21 = *(a4 + 16) | a1;
  swift_beginAccess();
  *(a4 + 16) = v21 & 1;
  v22 = swift_allocObject();
  v23 = v22;
  *(v22 + 16) = a2;
  if (!a5)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    *(v22 + 16) = a5;
LABEL_6:
    swift_errorRetain();
    goto LABEL_7;
  }

  v38 = objc_opt_self();
  sub_1000F5104(&qword_10094FE58, &unk_1007B5980);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100791340;
  *(v24 + 32) = a5;
  *(v24 + 40) = a2;
  swift_errorRetain();
  swift_errorRetain();
  swift_errorRetain();
  swift_errorRetain();
  swift_errorRetain();
  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  v25 = a8;
  v26 = a7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24, v28, v29, v30, v31, v32, v33, v34;
  v35 = [v38 errorFromErrors:isa];

  a7 = v26;
  a8 = v25;
  v19 = a11;
  *(v23 + 16) = v35;

LABEL_7:
  v36 = swift_allocObject();
  *(v36 + 16) = a6;
  *(v36 + 24) = a8;
  *(v36 + 32) = a9 & 1;
  *(v36 + 40) = a3;
  *(v36 + 48) = a4;
  *(v36 + 56) = v23;
  *(v36 + 64) = a10;
  *(v36 + 72) = v19;

  sub_1006B9D6C(a7, sub_1006D548C, v36);
}

uint64_t sub_1006BBE58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void))
{
  sub_1006BA3CC();
  if (a3)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094FB70);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to restart DA monitoring agents", v16, 2u);
    }
  }

  else
  {
    sub_1006D4308(a2);
  }

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094FB70);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = a7;
    v22 = swift_slowAlloc();
    v38[0] = v22;
    *v20 = 67109634;
    swift_beginAccess();
    *(v20 + 4) = *(a4 + 16);

    *(v20 + 8) = 1024;
    swift_beginAccess();
    *(v20 + 10) = *(a5 + 16);

    *(v20 + 14) = 2080;
    swift_beginAccess();
    swift_errorRetain();
    sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v26 = sub_10000668C(v23, v24, v38);
    v25, v27, v28, v29, v30, v31, v32, v33;
    *(v20 + 16) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDAccountUtils: Completed updating system accounts, calling updateAccountsAndFetchMigrationState completion {didAddOrRemoveAccounts: %{BOOL}d, didUpdateAccounts: %{BOOL}d, error: %s}", v20, 0x18u);
    sub_10000607C(v22);
    a7 = v21;
  }

  else
  {
  }

  swift_beginAccess();
  v34 = *(a4 + 16);
  swift_beginAccess();
  v35 = *(a5 + 16);
  swift_beginAccess();
  v36 = *(a6 + 16);
  swift_errorRetain();
  a7(v34, v35, v36);
}

void sub_1006BC1D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, NSObject *a7)
{
  if (a1)
  {
    swift_beginAccess();
    if (!*(a2 + 16))
    {
      swift_beginAccess();
      *(a2 + 16) = a1;
      swift_errorRetain();
    }
  }

  swift_beginAccess();
  v14 = *(a3 + 16) | a4;
  swift_beginAccess();
  *(a3 + 16) = v14 & 1;
  swift_beginAccess();
  v15 = *(a5 + 16) | a6;
  swift_beginAccess();
  *(a5 + 16) = v15 & 1;
  dispatch_group_leave(a7);
}

uint64_t sub_1006BC2E4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_errorRetain();
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_10094FB70);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22[0] = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v10;
      v12 = sub_10000668C(v9, v10, v22);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "RDAccountUtils: Failed to update some or all of the system accounts {error: %s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_errorRetain();
  a2(v20);
}

void sub_1006BC500(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = v188 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = v188 - v15;
  v17 = sub_1006B9764();
  if (!v17)
  {
    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();
    v21 = [v22 internalErrorWithDebugDescription:v23];

    swift_willThrow();
    goto LABEL_5;
  }

  v18 = v17;
  v195 = 0;
  v19 = [v17 fetchDefaultListWithError:&v195];
  v20 = v19;
  if (v195)
  {
    v21 = v195;

    swift_willThrow();
LABEL_5:
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10094FB70);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v195 = v28;
      *v27 = 136315138;
      v194[0] = v21;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, &v195);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Can't migrate default list ID {error: %s}", v27, 0xCu);
      sub_10000607C(v28);
    }

    else
    {
    }

    return;
  }

  if (!v19)
  {
LABEL_27:

    return;
  }

  v193 = v12;
  v40 = [v19 account];
  v41 = v9;
  v42 = [v40 objectID];

  v43 = [v42 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = UUID.uuidString.getter();
  v46 = v45;
  v192 = v41;
  v48 = *(v41 + 8);
  v47 = v41 + 8;
  v191 = v48;
  v48(v16, v8);
  if (v44 == a1 && v46 == a2)
  {
    v46, v49, v50, v51, v52, v53, v54, v55;
    goto LABEL_15;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v46, v57, v58, v59, v60, v61, v62, v63;
  if ((v56 & 1) == 0)
  {

    goto LABEL_27;
  }

LABEL_15:
  v64 = [v20 externalIdentifier];
  v65 = v20;
  if (!v64)
  {
    v154 = objc_opt_self();
    v155 = String._bridgeToObjectiveC()();
    v21 = [v154 internalErrorWithDebugDescription:v155];

    swift_willThrow();
    goto LABEL_5;
  }

  v188[1] = v47;
  v189 = v20;
  v190 = v18;
  v66 = v64;
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = sub_1006C1AFC(1, v67, v69);
  v72 = v71;
  v74 = v73;
  v69, v71, v75, v73, v76, v77, v78, v79;
  v80 = v72;
  v81 = v193;
  while (1)
  {
    if ((v80 ^ v70) < 0x4000)
    {
      v156 = objc_opt_self();
      v195 = 0;
      v196 = 0xE000000000000000;
      _StringGuts.grow(_:)(91);
      v157._countAndFlagsBits = 0xD000000000000058;
      v157._object = 0x80000001007FEE90;
      String.append(_:)(v157);
      v158 = static String._fromSubstring(_:)();
      v160 = v159;
      v74, v159, v161, v162, v163, v164, v165, v166;
      v167._countAndFlagsBits = v158;
      v167._object = v160;
      String.append(_:)(v167);
      v160, v168, v169, v170, v171, v172, v173, v174;
      v175._countAndFlagsBits = 125;
      v175._object = 0xE100000000000000;
      String.append(_:)(v175);
      v176 = v196;
      v145 = String._bridgeToObjectiveC()();
      v176, v177, v178, v179, v180, v181, v182, v183;
      v153 = [v156 internalErrorWithDebugDescription:v145];
      goto LABEL_29;
    }

    v80 = Substring.index(before:)();
    v90 = Substring.subscript.getter();
    v98 = v91;
    if (v90 == 47 && v91 == 0xE100000000000000)
    {
      break;
    }

    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v98, v83, v84, v85, v86, v87, v88, v89;
    if (v82)
    {
      goto LABEL_22;
    }
  }

  0xE100000000000000, 0xE100000000000000, v92, v93, v94, v95, v96, v97;
LABEL_22:
  if (v72 >> 14 < Substring.index(_:offsetBy:)() >> 14)
  {
    __break(1u);
  }

  Substring.subscript.getter();
  v100 = v99;
  static String._fromSubstring(_:)();
  v102 = v101;
  v100, v101, v103, v104, v105, v106, v107, v108;
  UUID.init(uuidString:)();
  v102, v109, v110, v111, v112, v113, v114, v115;
  v116 = v192;
  if ((*(v192 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    v124 = objc_opt_self();
    v195 = 0;
    v196 = 0xE000000000000000;
    _StringGuts.grow(_:)(90);
    v125._countAndFlagsBits = 0xD000000000000057;
    v125._object = 0x80000001007FEE30;
    String.append(_:)(v125);
    v126 = static String._fromSubstring(_:)();
    v128 = v127;
    v74, v127, v129, v130, v131, v132, v133, v134;
    v135._countAndFlagsBits = v126;
    v135._object = v128;
    String.append(_:)(v135);
    v128, v136, v137, v138, v139, v140, v141, v142;
    v143._countAndFlagsBits = 125;
    v143._object = 0xE100000000000000;
    String.append(_:)(v143);
    v144 = v196;
    v145 = String._bridgeToObjectiveC()();
    v144, v146, v147, v148, v149, v150, v151, v152;
    v153 = [v124 internalErrorWithDebugDescription:v145];
LABEL_29:
    v21 = v153;

    swift_willThrow();
    goto LABEL_5;
  }

  v74, v117, v118, v119, v120, v121, v122, v123;
  (*(v116 + 32))(v81, v7, v8);
  v184 = [objc_opt_self() daemonUserDefaults];
  v185 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v187 = [v185 objectIDWithUUID:isa];

  [v184 setPreferredDefaultListID:v187];
  v191(v81, v8);
}

void sub_1006BCDEC(char a1, uint64_t a2, void *a3, char a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094FB70);
    v43 = a3;
    v14 = a3;
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v42 = a5;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      v41 = v18;
      *v18 = v14;
      *(v17 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = v14;
        v21 = Error.localizedDescription.getter();
        v23 = v22;
      }

      else
      {
        v24 = v14;
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = sub_10000668C(v21, v23, &v44);
      v23, v26, v27, v28, v29, v30, v31, v32;
      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDAccountUtils: Error updating migration flags for ACAccount {acAccount: %@, error: %s}", v17, 0x16u);
      sub_1000050A4(v41, &unk_100938E70, &unk_100797230);

      sub_10000607C(v19);

      a5 = v42;
    }

    else
    {
    }

    a3 = v43;
  }

  if (a4)
  {
    v33 = sub_1006B9764();
    if (v33)
    {
      v34 = v33;
      v35 = swift_allocObject();
      v35[2] = a5;
      v35[3] = a3;
      v35[4] = v34;
      v35[5] = a6;
      v35[6] = a7;
      v36 = a3;

      v37 = v34;

      sub_1006C0C18(1, sub_1006D4C84, v35);
    }

    else
    {
      v38 = objc_opt_self();
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 internalErrorWithDebugDescription:v39];

      a6(v40);
    }
  }

  else
  {
    (a6)(0, a2);
  }
}

uint64_t sub_1006BD148(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2 & 1;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;

  v17 = a4;
  v18 = a5;

  sub_1006BA670(a9, v16);
}

uint64_t sub_1006BD208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, id, uint64_t, uint64_t, uint64_t, uint64_t, id, uint64_t, char, uint64_t, uint64_t))
{
  v16 = a5 & 1;

  v17 = a3;

  v19 = v16;
  a9(a2, v17, 2, a8, a1, a1, v17, a4, v19, a6, a7);
}

uint64_t sub_1006BD2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a7;
  *(v15 + 32) = a8 & 1;
  *(v15 + 40) = a9;
  *(v15 + 48) = a10;
  *(v15 + 56) = a4;

  swift_errorRetain();
  sub_1006B9D6C(a6, sub_1006D5490, v15);
}

void sub_1006BD39C(char a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10094FB70);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 7104878;
      }

      v15 = sub_10000668C(v12, v14, v23);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error saving ACAccount {error: %s}", v10, 0xCu);
      sub_10000607C(v11);
    }
  }

  if (a2)
  {
    swift_beginAccess();
    if (!*(a3 + 16))
    {
      swift_beginAccess();
      *(a3 + 16) = a2;
      swift_errorRetain();
    }
  }

  dispatch_group_leave(group);
}

uint64_t sub_1006BD580(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_1006BD5EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  aBlock[4] = sub_1006D475C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FBD38;
  v19 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_1006BD8D4(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;

  v13 = a4;

  sub_1006BA670(sub_1006D1A40, v12);
}

uint64_t sub_1006BD994(char **a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3, char a4, _TtC7remindd19RDXPCStorePerformer *a5, _TtC7remindd19RDXPCStorePerformer *a6)
{

  v12 = a2;

  sub_1006D30BC(v12, a1, v12, a3, a4 & 1, a5, a6);
}

uint64_t sub_1006BDA2C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6 & 1;
  *(v16 + 40) = a7;
  *(v16 + 48) = a8;
  *(v16 + 56) = a1;
  *(v16 + 64) = a2;

  swift_errorRetain();
  sub_1006B9D6C(a4, sub_1006D547C, v16);
}

void sub_1006BDB08(_TtC7remindd19RDXPCStorePerformer *a1, int a2)
{
  v4 = a1;
  v5 = *(v2 + 16);
  v6 = sub_1006BFECC(a1, v5);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 accountTypeHost];
  v9 = [v8 isCloudKit];

  if (!v9)
  {

LABEL_14:
    sub_1006C06E8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  if (![v7 didChooseToMigrate])
  {
    sub_1006C073C();
LABEL_17:
    swift_allocError();
    swift_willThrow();
LABEL_18:

    return;
  }

  v10 = sub_1006C0790(v4, v5);
  if (!v10)
  {
    sub_1006C0BB0();
    goto LABEL_17;
  }

  v11 = v10;
  v12 = REMAccount.isConsideredEmpty()();
  if (v13)
  {
LABEL_11:

LABEL_12:
    return;
  }

  if (v12)
  {
    if (qword_1009366E8 == -1)
    {
LABEL_8:
      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10094FB70);
      v15 = v11;
      v16 = v4;
      v11 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543618;
        v20 = [(RDXPCStorePerformer *)v15 objectID];
        *(v18 + 4) = v20;
        *v19 = v20;
        *(v18 + 12) = 2114;
        v21 = [(RDXPCStorePerformer *)v16 identifier];
        *(v18 + 14) = v21;
        v19[1] = v21;
        _os_log_impl(&_mh_execute_header, v11, v17, "RDAccountUtils.InactivatedICloudCalDavDataMover: Found an inactivated iCloud CalDAV account but it is empty, we're done {remObjectID: %{public}@, acAccountIdentifier: %{public}@}", v18, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      goto LABEL_11;
    }

LABEL_58:
    swift_once();
    goto LABEL_8;
  }

  v141 = 0;
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100006654(v22, qword_10094FB70);
  v24 = v11;
  v25 = v4;
  v133[5] = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v135 = v25;

  v136 = v24;
  v134 = a2;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543618;
    v30 = [(RDXPCStorePerformer *)v136 objectID];
    *(v28 + 4) = v30;
    *v29 = v30;
    *(v28 + 12) = 2114;
    v31 = [(RDXPCStorePerformer *)v135 identifier];
    *(v28 + 14) = v31;
    v29[1] = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "RDAccountUtils.InactivatedICloudCalDavDataMover: Found an inactivated non-empy iCloud CalDAV account, now going to perform data move... {remObjectID: %{public}@, acAccountIdentifier: %{public}@}", v28, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v24 = v136;
  }

  v144[0] = 0;
  v32 = [(RDXPCStorePerformer *)v24 fetchListsWithError:v144];
  v11 = v144[0];
  if (!v32)
  {
    v72 = v144[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_18;
  }

  v4 = v32;
  sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v11;

  v42 = v33;
  v143 = &_swiftEmptyArrayStorage;
  if (v33 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v33;
  }

  else
  {
    v43 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43)
  {
    v44 = 0;
    v139 = v42 & 0xFFFFFFFFFFFFFF8;
    v140 = v42 & 0xC000000000000001;
    v137 = v43;
    v138 = v42;
    while (1)
    {
      if (v140)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= *(v139 + 16))
        {
          goto LABEL_55;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v4 = v45;
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v47 = [(RDXPCStorePerformer *)v45 name];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v144[0] = v48;
      v144[1] = v50;
      __chkstk_darwin(v51, v52);
      v133[2] = v144;
      v53 = v141;
      LOBYTE(v47) = sub_100040A74(sub_100040B20, v133, &off_1008DC8D0);
      v141 = v53;
      v50, v54, v55, v56, v57, v58, v59, v60;
      if (v47 & 1) != 0 || (v61 = [(RDXPCStorePerformer *)v4 name], static String._unconditionallyBridgeFromObjectiveC(_:)(), v63 = v62, v61, v64._countAndFlagsBits = 0x8FB8EFA09AE220, v64._object = 0xA700000000000000, v11 = String.hasSuffix(_:)(v64), v63, v65, v66, v67, v68, v69, v70, v71, (v11))
      {
        v11 = &v143;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v44;
      v42 = v138;
      if (v46 == v137)
      {
        v11 = v143;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = &_swiftEmptyArrayStorage;
LABEL_41:
  v42, v35, v36, v37, v38, v39, v40, v41;
  v144[0] = &_swiftEmptyArrayStorage;
  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
    if (v73)
    {
LABEL_44:
      v74 = 0;
      v4 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v74 >= *(v11 + 16))
          {
            goto LABEL_57;
          }

          v75 = *(v11 + 8 * v74 + 32);
        }

        v76 = v75;
        v77 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        v143 = v75;
        v78 = v141;
        sub_1006BE63C(v144, &v143, &v142);
        v141 = v78;
        if (v78)
        {
          v4, v79, v80, v81, v82, v83, v84, v85;

          return;
        }

        v4, v79, v80, v81, v82, v83, v84, v85;

        v4 = v142;
        v144[0] = v142;
        ++v74;
        if (v77 == v73)
        {
          goto LABEL_62;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  else
  {
    v73 = *(v11 + 16);
    if (v73)
    {
      goto LABEL_44;
    }
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_62:

  type metadata accessor for RDAccountDataMover();
  swift_initStackObject();
  v86 = sub_1004ED328(v5);
  v87 = *(v86 + 72);
  *(v86 + 72) = v4;
  v87, v88, v89, v90, v91, v92, v93, v94;
  if (v134)
  {
    *(v86 + 80) = 1;
  }

  v95 = v136;
  v96 = v141;
  sub_1004ED390(v136, v7);
  if (!v96)
  {
    v97 = v135;
    v98 = v7;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();

    v101 = os_log_type_enabled(v99, v100);
    v141 = v98;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v144[0] = v104;
      *v102 = 138543874;
      v105 = [v98 objectID];
      *(v102 + 4) = v105;
      *v103 = v105;
      *(v102 + 12) = 2114;
      v106 = [(RDXPCStorePerformer *)v97 identifier];
      *(v102 + 14) = v106;
      v103[1] = v106;
      *(v102 + 22) = 2082;
      v107 = sub_1004ED21C();
      v109 = v108;
      v110 = sub_10000668C(v107, v108, v144);
      v109, v111, v112, v113, v114, v115, v116, v117;
      *(v102 + 24) = v110;
      _os_log_impl(&_mh_execute_header, v99, v100, "RDAccountUtils.InactivatedICloudCalDavDataMover: Completed moving data from the inactivated iCloud CalDAV account to CloudKit {ckAccount: %{public}@, acAccountIdentifier: %{public}@, stats: %{public}s}", v102, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v95 = v136;

      sub_10000607C(v104);
    }

    sub_1004EEEE8(v95);

    v11 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v144[0] = v120;
      *v119 = 136446210;
      v121 = sub_1004ED21C();
      v123 = v122;
      v124 = v95;
      v125 = sub_10000668C(v121, v122, v144);
      v123, v126, v127, v128, v129, v130, v131, v132;
      *(v119 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v11, v118, "RDAccountUtils.InactivatedICloudCalDavDataMover: The inactivated CalDAV account is now emptied after the data move {stats: %{public}s}.", v119, 0xCu);
      sub_10000607C(v120);
    }

    else
    {
    }

    goto LABEL_12;
  }
}

void sub_1006BE63C(_TtC7remindd19RDXPCStorePerformer **a1@<X0>, void **a2@<X1>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v86 = 0;
  v7 = [v6 fetchRemindersWithError:&v86];
  v8 = v86;
  if (!v7)
  {
    v56 = v86;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v9 = v7;
  v82 = a3;
  v85 = v3;
  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  v88 = &_swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v80 = v6;
    v81 = v5;
    v20 = 0;
    v83 = v10;
    v84 = v10 & 0xC000000000000001;
    v6 = (v10 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v84)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= v6[2])
        {
          goto LABEL_33;
        }

        v21 = *(v10 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v24 = [v21 titleAsString];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v27;

        v86 = v26;
        v87 = v5;
        __chkstk_darwin(v28, v29);
        v78 = &v86;
        v30 = v85;
        LOBYTE(v25) = sub_100040A74(sub_1002CB9B8, v77, &off_1008DCAE0);
        v85 = v30;
        v5, v31, v32, v33, v34, v35, v36, v37;
        if (v25)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v10 = v83;
      }

      else
      {
      }

      ++v20;
    }

    while (v23 != i);
    v38 = 0;
    v79 = v88;
    v88 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v84)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= v6[2])
        {
          goto LABEL_35;
        }

        v39 = *(v10 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v42 = [v39 titleAsString];
      if (v42)
      {
        v43 = v42;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v86 = v5;
        v87 = v45;
        __chkstk_darwin(v46, v47);
        v78 = &v86;
        v48 = v85;
        LOBYTE(v43) = sub_100040A74(sub_1002CB9B8, v77, &off_1008DCD30);
        v85 = v48;
        v45, v49, v50, v51, v52, v53, v54, v55;
        if (v43)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v10 = v83;
      }

      else
      {
      }

      ++v38;
      if (v41 == i)
      {
        v57 = v88;
        v6 = v80;
        v5 = v81;
        v58 = v79;
        goto LABEL_38;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v58 = &_swiftEmptyArrayStorage;
  v57 = &_swiftEmptyArrayStorage;
LABEL_38:
  v10, v12, v13, v14, v15, v16, v17, v18;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = [v6 objectID];
  v86 = v5;

  sub_100271578(inited);
  v60 = v86;
  v61 = v58;
  if ((v58 & 0x8000000000000000) != 0 || (v58 & 0x4000000000000000) != 0)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
    v61 = v58;
    if (v62)
    {
      goto LABEL_41;
    }

LABEL_49:

    v69 = &_swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v62 = *(v58 + 16);
  if (!v62)
  {
    goto LABEL_49;
  }

LABEL_41:
  v63 = v61;
  v86 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v84 = v60;
  v64 = 0;
  v65 = v63;
  do
  {
    if ((v63 & 0xC000000000000001) != 0)
    {
      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v66 = *(v65 + 8 * v64 + 32);
    }

    v67 = v66;
    ++v64;
    v68 = [v66 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v65 = v63;
  }

  while (v62 != v64);

  v69 = v86;
  v60 = v84;
LABEL_50:
  v86 = v60;
  sub_100271578(v69);
  v70 = v86;
  if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
  {
    v71 = _CocoaArrayWrapper.endIndex.getter();
    if (v71)
    {
LABEL_53:
      v86 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v71 & 0x8000000000000000) == 0)
      {
        v72 = 0;
        do
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v73 = *&v57->clientIdentity[8 * v72 + 16];
          }

          v74 = v73;
          ++v72;
          v75 = [v73 objectID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v71 != v72);

        v76 = v86;
        goto LABEL_62;
      }

LABEL_64:
      __break(1u);
    }
  }

  else
  {
    v71 = *v57->clientIdentity;
    if (v71)
    {
      goto LABEL_53;
    }
  }

  v76 = &_swiftEmptyArrayStorage;
LABEL_62:
  v86 = v70;
  sub_100271578(v76);
  *v82 = v86;
}

void sub_1006BECA8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() localAccountID];
  v53 = 0;
  v5 = [v3 fetchAccountWithObjectID:v4 error:&v53];

  if (!v5)
  {
    v9 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v6 = v53;
  v7 = REMAccount.isConsideredEmpty()();
  if (v8)
  {

    return;
  }

  if (v7)
  {
    sub_1006C0694();
LABEL_12:
    swift_allocError();
    swift_willThrow();

    return;
  }

  v10 = sub_1006BFECC(a1, v3);
  if (!v10)
  {
    sub_1006C05EC();
    goto LABEL_12;
  }

  v11 = v10;
  v12 = REMAccount.isConsideredEmpty()();
  if (v13)
  {
    goto LABEL_14;
  }

  if (!v12)
  {
    v14 = [v11 objectID];
    sub_1006C0640();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
LABEL_14:

    return;
  }

  type metadata accessor for RDAccountDataMover();
  swift_initStackObject();
  sub_1004ED328(v3);
  sub_1004ED92C(v5, v11);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10094FB70);
  v17 = v11;
  v18 = a1;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v52 = v17;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v21 = 138543874;
    v23 = [v17 objectID];
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 2114;
    v24 = [v18 identifier];
    *(v21 + 14) = v24;
    v22[1] = v24;
    *(v21 + 22) = 2082;
    v25 = sub_1004ED21C();
    v27 = v26;
    v28 = sub_10000668C(v25, v26, &v53);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDAccountUtils.LocalDataToICloudMover: Completed moving data from local to iCloud {target: %{public}@, acAccountIdentifier: %{public}@, stats: %{public}s}", v21, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v51);
  }

  sub_1004EEEE8(v5);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 136446210;
    v40 = sub_1004ED21C();
    v42 = v41;
    v43 = sub_10000668C(v40, v41, &v53);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "RDAccountUtils.LocalDataToICloudMover: Local account emptied {stats: %{public}s}.", v38, 0xCu);
    sub_10000607C(v39);
  }

  else
  {
  }
}

uint64_t sub_1006BF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v16 = *(v23 - 8);
  __chkstk_darwin(v23, v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = a7;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v24 + 8))(v15, v12);
  (*(v16 + 8))(v19, v23);
}

id sub_1006BF4D4(void *a1)
{
  v2 = [a1 displayAccount];
  if (!v2)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_10094FB70);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      v41 = [v36 identifier];
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "RDAccountUtils.fetchAccountWithAppleAccount: Failed to get the display account {accountIdentifier: %{public}@}.", v39, 0xCu);
      sub_1000050A4(v40, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_29;
  }

  v3 = v2;
  result = [v2 accountType];
  if (result)
  {
    v5 = result;
    v6 = [result identifier];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v11;
      if (v9)
      {
        if (v7 == v10 && v9 == v11)
        {
          v9, v11, v10, v13, v14, v15, v16, v17;
          v18, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_23;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v9, v21, v22, v23, v24, v25, v26, v27;
        v18, v28, v29, v30, v31, v32, v33, v34;
        if (v20)
        {
LABEL_23:
          if ([v3 isEnabledForDataclass:ACAccountDataclassReminders])
          {
            return v3;
          }

          if (qword_1009366E8 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_100006654(v56, qword_10094FB70);
          v37 = v3;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 138543362;
            v57 = [v37 identifier];
            *(v45 + 4) = v57;
            *v46 = v57;
            v48 = "RDAccountUtils.fetchAccountWithAppleAccount: Reminders is not enabled for the given ACAccount {accountIdentifier: %{public}@}.";
            goto LABEL_21;
          }

          goto LABEL_28;
        }

LABEL_17:
        if (qword_1009366E8 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100006654(v42, qword_10094FB70);
        v37 = v3;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138543362;
          v47 = [v37 identifier];
          *(v45 + 4) = v47;
          *v46 = v47;
          v48 = "RDAccountUtils.fetchAccountWithAppleAccount: Given ACAccount is not Apple account {accountIdentifier: %{public}@}.";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v43, v44, v48, v45, 0xCu);
          sub_1000050A4(v46, &unk_100938E70, &unk_100797230);

LABEL_29:
          return 0;
        }

LABEL_28:

        v37 = v43;
        goto LABEL_29;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v11;
    }

    v18, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1006BF940(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094FB70);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (os_log_type_enabled(v14, v15))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10000668C(a1, a2, &v30);
      _os_log_impl(&_mh_execute_header, v14, v15, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v23, 0xCu);
      sub_10000607C(v24);
    }

    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v26 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v28 = [v26 objectIDWithUUID:isa];

    (*(v9 + 8))(v12, v8);
    return v28;
  }
}

uint64_t sub_1006BFC1C(void *a1)
{
  v2 = [a1 displayAccount];
  if (v2)
  {
    v3 = v2;
    v4 = ACAccount.rem_childCalDAVAccountEnabledForReminders.getter();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 identifier];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v7;
      }
    }
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FB70);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = [v10 identifier];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "childCalDAVIdentifierEnabledForReminders: Can't get display account from input {input: %{public}@}", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  return 0;
}

id sub_1006BFDE8(void *a1, void *a2)
{
  v3 = sub_1006BFC1C(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1006BF940(v3, v4);
    v5, v7, v8, v9, v10, v11, v12, v13;
    if (v6)
    {
      v18 = 0;
      v14 = [a2 fetchAccountWithObjectID:v6 error:&v18];
      v15 = v18;
      if (v14)
      {

        return v14;
      }

      v17 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return 0;
}

id sub_1006BFECC(void *a1, void *a2)
{
  v3 = sub_1006BF4D4(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  result = [v3 identifier];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_1006BF940(v7, v9);
    v9, v11, v12, v13, v14, v15, v16, v17;
    if (!v10)
    {

      return 0;
    }

    v58 = 0;
    v18 = [a2 fetchAccountWithObjectID:v10 error:&v58];
    if (v18)
    {
      v19 = v18;
      v20 = v58;
      if (([v19 inactive] & 1) == 0)
      {
        v34 = qword_1009366E8;
        v35 = v19;
        if (v34 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100006654(v36, qword_10094FB70);
        v37 = v35;
        v38 = v4;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v39, v40))
        {

          return v19;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543618;
        v43 = [v37 objectID];

        *(v41 + 4) = v43;
        *v42 = v43;
        *(v41 + 12) = 2114;
        v44 = [v38 identifier];
        *(v41 + 14) = v44;
        v42[1] = v44;
        _os_log_impl(&_mh_execute_header, v39, v40, "RDAccountUtils.fetchAccountWithAppleAccount: Found an active CloudKit REMAccount {objectID: %{public}@, accountIdentifier: %{public}@}.", v41, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

LABEL_27:

        return v19;
      }
    }

    else
    {
      v21 = v58;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v22 = sub_1006BFDE8(v4, a2);
    if (!v22)
    {
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_10094FB70);
      v27 = v4;
      v28 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v28, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138543362;
        v49 = [v27 identifier];
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&_mh_execute_header, v28, v46, "RDAccountUtils.fetchAccountWithAppleAccount: No .calDav iCloud REMAccount found at all {accountIdentifier: %{public}@}", v47, 0xCu);
        sub_1000050A4(v48, &unk_100938E70, &unk_100797230);

        return 0;
      }

      goto LABEL_30;
    }

    v19 = v22;
    v23 = [v22 inactive];
    v24 = qword_1009366E8;
    if (v23)
    {
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_10094FB70);
      v26 = v4;
      v27 = v19;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543618;
        v32 = [v27 objectID];
        *(v30 + 4) = v32;
        *v31 = v32;
        *(v30 + 12) = 2114;
        v33 = [v26 identifier];
        *(v30 + 14) = v33;
        v31[1] = v33;
        _os_log_impl(&_mh_execute_header, v28, v29, "RDAccountUtils.fetchAccountWithAppleAccount: Found a .calDav iCloud REMAccount but it is inactive {objectID: %{public}@, accountIdentifier: %{public}@}", v30, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        return 0;
      }

LABEL_30:
      return 0;
    }

    v50 = v19;
    if (v24 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_10094FB70);
    v38 = v4;
    v52 = v50;
    v39 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v39, v53))
    {

      return v19;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138543618;
    v56 = [v52 objectID];

    *(v54 + 4) = v56;
    *v55 = v56;
    *(v54 + 12) = 2114;
    v57 = [v38 identifier];
    *(v54 + 14) = v57;
    v55[1] = v57;
    _os_log_impl(&_mh_execute_header, v39, v53, "RDAccountUtils.fetchAccountWithAppleAccount: Found an active .calDav iCloud REMAccount {objectID: %{public}@, accountIdentifier: %{public}@}.", v54, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_1006C05EC()
{
  result = qword_10094FE20;
  if (!qword_10094FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE20);
  }

  return result;
}

unint64_t sub_1006C0640()
{
  result = qword_10094FE28;
  if (!qword_10094FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE28);
  }

  return result;
}

unint64_t sub_1006C0694()
{
  result = qword_10094FE30;
  if (!qword_10094FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE30);
  }

  return result;
}

unint64_t sub_1006C06E8()
{
  result = qword_10094FE38;
  if (!qword_10094FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE38);
  }

  return result;
}

unint64_t sub_1006C073C()
{
  result = qword_10094FE40;
  if (!qword_10094FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE40);
  }

  return result;
}

id sub_1006C0790(void *a1, void *a2)
{
  result = sub_1006BF4D4(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = [result identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_1006BFDE8(v4, a2);
  if (!v9)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_10094FB70);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v8, v41, v42, v43, v44, v45, v46, v47;
    if (os_log_type_enabled(v39, v40))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v92 = v56;
      *v55 = 136446210;
      v57 = sub_10000668C(v6, v8, &v92);
      v8, v58, v59, v60, v61, v62, v63, v64;
      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v39, v40, "RDAccountUtils.fetchInactiveCalDavAccount: Didn't find any .calDav iCloud REMAccount {appleACAccountID: %{public}s}", v55, 0xCu);
      sub_10000607C(v56);
    }

    else
    {
      v8, v48, v49, v50, v51, v52, v53, v54;
    }

    return 0;
  }

  v10 = v9;
  if (![v9 inactive])
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100006654(v65, qword_10094FB70);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    v8, v68, v69, v70, v71, v72, v73, v74;
    if (os_log_type_enabled(v66, v67))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v92 = v83;
      *v82 = 136446210;
      v84 = sub_10000668C(v6, v8, &v92);
      v8, v85, v86, v87, v88, v89, v90, v91;
      *(v82 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v66, v67, "RDAccountUtils.fetchInactiveCalDavAccount: Didn't find an inactve .calDav iCloud REMAccount but found an active one {appleACAccountID: %{public}s}", v82, 0xCu);
      sub_10000607C(v83);
    }

    else
    {
      v8, v75, v76, v77, v78, v79, v80, v81;
    }

    return 0;
  }

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094FB70);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v8, v14, v15, v16, v17, v18, v19, v20;
  if (os_log_type_enabled(v12, v13))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v92 = v29;
    *v28 = 136446210;
    v30 = sub_10000668C(v6, v8, &v92);
    v8, v31, v32, v33, v34, v35, v36, v37;
    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountUtils.fetchInactiveCalDavAccount: Found an inactive .calDav iCloud REMAccount {appleACAccountID: %{public}s}", v28, 0xCu);
    sub_10000607C(v29);
  }

  else
  {
    v8, v21, v22, v23, v24, v25, v26, v27;
  }

  return v10;
}

unint64_t sub_1006C0BB0()
{
  result = qword_10094FE48;
  if (!qword_10094FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE48);
  }

  return result;
}

uint64_t sub_1006C0C18(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if (byte_1009753A9 == 1 && byte_1009753A8 == 1 && gDADOperationQueue)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    v29 = sub_1006D19D8;
    v30 = v15;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100019200;
    v28 = &unk_1008FBB08;
    v16 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v23 + 8))(v9, v6);
    (*(v10 + 8))(v13, v22);
  }

  else
  {
LABEL_8:
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v29 = sub_1006D19A8;
    v30 = v18;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100019200;
    v28 = &unk_1008FBA90;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v23 + 8))(v9, v6);
    (*(v10 + 8))(v13, v22);
  }
}

id sub_1006C1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v125 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v123 = *(v9 - 8);
  v124 = v9;
  __chkstk_darwin(v9, v10);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10094FB70);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Purge ACAccount migration state cache", v16, 2u);
  }

  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 accountStore];

  v126 = dispatch_group_create();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = String._bridgeToObjectiveC()();
  v127 = v18;
  v21 = [v18 accountWithIdentifier:v20];

  v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  if (!v21)
  {
    goto LABEL_28;
  }

  result = [v21 accountType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result identifier];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v30;
    if (v28)
    {
      if (v26 == v29 && v28 == v30)
      {
        v28, v30, v29, v32, v33, v34, v35, v36;
        v37, v38, v39, v40, v41, v42, v43, v44;
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v28, v46, v47, v48, v49, v50, v51, v52;
        v37, v53, v54, v55, v56, v57, v58, v59;
        if ((v45 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if ([v21 isActive])
      {
        *&v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v128 + 1) = v60;
        *&v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v129 + 1) = v61;
        v62 = *(&v128 + 1);
        aBlock = v128;
        swift_bridgeObjectRetain_n();
        v63 = [v21 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v63)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
          v71 = String._bridgeToObjectiveC()();
          v62, v72, v73, v74, v75, v76, v77, v78;
          [v21 setAccountProperty:0 forKey:v71];

          goto LABEL_19;
        }

        v121 = 0;
        v62, v64, v65, v66, v67, v68, v69, v70;
        aBlock = 0u;
        v132 = 0u;
        sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
        v96 = *(&v129 + 1);
        aBlock = v129;
        swift_bridgeObjectRetain_n();
        v97 = [v21 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v97)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
          v105 = String._bridgeToObjectiveC()();
          v96, v106, v107, v108, v109, v110, v111, v112;
          [v21 setAccountProperty:0 forKey:v105];

          if (!v121)
          {
LABEL_25:
            swift_arrayDestroy();
            v113 = v126;
            dispatch_group_enter(v126);
            v114 = swift_allocObject();
            *(v114 + 16) = v19;
            *(v114 + 24) = v113;
            v133 = sub_1006D4C2C;
            v134 = v114;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v132 = sub_100007688;
            *(&v132 + 1) = &unk_1008FC6C0;
            v115 = _Block_copy(&aBlock);
            v116 = v21;

            v117 = v113;
            v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;

            [v127 saveAccount:v116 withCompletionHandler:v115];

            _Block_release(v115);
            goto LABEL_28;
          }

LABEL_19:
          v79 = *(&v129 + 1);
          aBlock = v129;
          swift_bridgeObjectRetain_n();
          v80 = [v21 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v80)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
            v88 = String._bridgeToObjectiveC()();
            v79, v89, v90, v91, v92, v93, v94, v95;
            [v21 setAccountProperty:0 forKey:v88];
          }

          else
          {
            v79, v81, v82, v83, v84, v85, v86, v87;
            aBlock = 0u;
            v132 = 0u;
            sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
          }

          goto LABEL_25;
        }

        v96, v98, v99, v100, v101, v102, v103, v104;
        aBlock = 0u;
        v132 = 0u;
        sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
        swift_arrayDestroy();
      }

LABEL_27:

      v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
      goto LABEL_28;
    }

    v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v30;
  }

  v37, v30, v31, v32, v33, v34, v35, v36;

LABEL_28:
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v118 = swift_allocObject();
  v118[2] = v122;
  v118[3] = a4;
  v118[4] = v19;
  v133 = sub_1006D4C20;
  v134 = v118;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = v22[87];
  *&v132 = sub_100019200;
  *(&v132 + 1) = &unk_1008FC670;
  v119 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v130 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v120 = v126;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v119);

  (*(v125 + 8))(v8, v5);
  (*(v123 + 8))(v12, v124);
}

uint64_t sub_1006C1AFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

void sub_1006C1BC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v553 = a6;
  v556 = a5;
  v562 = a2;
  v573 = a1;
  v557 = 0;
  v16 = a12;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17 - 8, v18);
  v568 = &v539 - v19;
  v569 = type metadata accessor for UUID();
  v20 = *(v569 - 8);
  __chkstk_darwin(v569, v21);
  v565 = &v539 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  v544 = a9;
  *(v23 + 32) = a9;
  v545 = a10;
  v24 = v556;
  v25 = v553;
  *(v23 + 40) = a10 & 1;
  v546 = a11;
  *(v23 + 48) = a11;
  *(v23 + 56) = a12;
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v543 = a4;
  v26[4] = v24;
  v26[5] = v25;
  v26[6] = sub_1006D5470;
  v26[7] = v23;
  v549 = v26;
  v27 = objc_allocWithZone(REMSaveRequest);

  v552 = a8;

  v550 = v23;

  v560 = [v27 initWithStore:v562];
  v29 = *(v573 + 16);
  v551 = a3;
  v548 = a7;
  v547 = a12;
  if (!v29)
  {
    v459 = 0;
    v460 = 0;
    v461 = a7;
    goto LABEL_79;
  }

  LODWORD(v559) = 0;
  v558 = 0;
  v561 = 0;
  v30 = (v573 + 32);
  v567 = (v20 + 48);
  v564 = (v20 + 32);
  v563 = (v20 + 8);
  v540 = 20250728;
  v31 = 1 - v29;
  *&v28 = 136446210;
  v570 = v28;
  *&v28 = 136315650;
  v554 = v28;
  *&v28 = 136446722;
  v541 = v28;
  *&v28 = 136315906;
  v542 = v28;
  v32 = v569;
  while (1)
  {
    *&v582[13] = *(v30 + 29);
    v33 = v30[1];
    v581 = *v30;
    *v582 = v33;
    LODWORD(v571) = v582[24];
    v25 = *(&v33 + 1);
    v572 = *&v582[16];
    v34 = *(&v581 + 1);
    v35 = v33;
    v36 = v581;
    sub_1006D18E0(&v581, &aBlock);
    v37 = qword_1009366E8;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    v39 = sub_100006654(v38, qword_10094FB70);

    v573 = v39;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v34, v42, v43, v44, v45, v46, v47, v48;
    if (os_log_type_enabled(v40, v41))
    {
      v24 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v24 = v570;
      *(v24 + 4) = sub_10000668C(v36, v34, &aBlock);
      _os_log_impl(&_mh_execute_header, v40, v41, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v24, 0xCu);
      sub_10000607C(v49);
      v32 = v569;
    }

    v50 = v568;
    UUID.init(uuidString:)();
    if ((*v567)(v50, 1, v32) == 1)
    {
      break;
    }

    v24 = v565;
    (*v564)(v565, v50, v32);
    v68 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v70 = [v68 objectIDWithUUID:isa];

    (*v563)(v24, v32);
    if (!v70)
    {
      goto LABEL_19;
    }

    aBlock = 0;
    v24 = [v562 fetchAccountWithObjectID:v70 error:&aBlock];
    v566 = v70;
    if (v24)
    {
      v71 = aBlock;
      if (v582[25])
      {
        sub_1006D1918(&v581, v72, v73, v74, v75, v76, v77, v78);

        v79 = v24;
        v80 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        v34, v81, v82, v83, v84, v85, v86, v87;
        v25, v88, v89, v90, v91, v92, v93, v94;
        if (os_log_type_enabled(v80, v24))
        {
          v102 = swift_slowAlloc();
          v572 = swift_slowAlloc();
          aBlock = v572;
          *v102 = v554;
          v103 = sub_10000668C(v35, v25, &aBlock);
          v25, v104, v105, v106, v107, v108, v109, v110;
          *(v102 + 4) = v103;
          *(v102 + 12) = 2082;
          v111 = sub_10000668C(v36, v34, &aBlock);
          v34, v112, v113, v114, v115, v116, v117, v118;
          *(v102 + 14) = v111;
          *(v102 + 22) = 2048;
          *(v102 + 24) = [v79 type];

          _os_log_impl(&_mh_execute_header, v80, v24, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v102, 0x20u);
          swift_arrayDestroy();

          v32 = v569;
        }

        else
        {
          v34, v95, v96, v97, v98, v99, v100, v101;
          v25, v233, v234, v235, v236, v237, v238, v239;
        }

        v240 = [v560 updateAccount:v79];
        [v240 removeFromStore];

        v241 = 1;
        if (!v31)
        {
          LODWORD(v559) = 1;
          v450 = &v583 + 4;
          goto LABEL_72;
        }

        v561 = 1;
        v558 = 1;
        LODWORD(v559) = 1;
        goto LABEL_5;
      }

      v172 = v24;
      v173 = [v172 type];
      if (v173 == v572)
      {

        v559 = v172;
        v174 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();
        v34, v176, v177, v178, v179, v180, v181, v182;
        v25, v183, v184, v185, v186, v187, v188, v189;
        if (os_log_type_enabled(v174, v175))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v555 = v24;
          v539 = v191;
          aBlock = v191;
          *v190 = v554;
          *(v190 + 4) = sub_10000668C(v35, v25, &aBlock);
          *(v190 + 12) = 2082;
          *(v190 + 14) = sub_10000668C(v36, v34, &aBlock);
          *(v190 + 22) = 2048;
          v192 = v559;
          *(v190 + 24) = [(RDXPCStorePerformer *)v559 type];

          _os_log_impl(&_mh_execute_header, v174, v175, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v190, 0x20u);
          swift_arrayDestroy();
          v24 = v555;

          v32 = v569;
        }

        else
        {
        }

        v289 = v559;
        v290 = [v560 updateAccount:v559];
        v291 = String._bridgeToObjectiveC()();
        v25, v292, v293, v294, v295, v296, v297, v298;
        [v290 setName:v291];

LABEL_45:
        LODWORD(v80) = [v290 inactive];

        if (v571 == v80)
        {
          v333 = v571;
          v555 = v24;
          v334 = v290;
          [v334 setInactive:v333 ^ 1u];

          v80 = Logger.logObject.getter();
          v335 = static os_log_type_t.default.getter();
          v34, v336, v337, v338, v339, v340, v341, v342;

          if (os_log_type_enabled(v80, v335))
          {
            v25 = swift_slowAlloc();
            v571 = swift_slowAlloc();
            aBlock = v571;
            *v25 = v541;
            [v334 inactive];
            v350 = Bool.yesno.getter();
            v352 = v351;
            v353 = sub_10000668C(v350, v351, &aBlock);
            v352, v354, v355, v356, v357, v358, v359, v360;
            *(v25 + 4) = v353;
            v32 = v569;
            *(v25 + 12) = 2082;
            v361 = sub_10000668C(v36, v34, &aBlock);
            v34, v362, v363, v364, v365, v366, v367, v368;
            *(v25 + 14) = v361;
            *(v25 + 22) = 2082;
            v369 = REMAccountType.loggableDescription.getter();
            v371 = v370;
            v372 = sub_10000668C(v369, v370, &aBlock);
            v371, v373, v374, v375, v376, v377, v378, v379;
            *(v25 + 24) = v372;
            swift_arrayDestroy();
          }

          else
          {
            v34, v343, v344, v345, v346, v347, v348, v349;
          }

          v24 = v555;
        }

        else
        {
          v34, v319, v320, v321, v322, v323, v324, v325;
        }

        v380 = v582[26];
        if (v582[26] != 2)
        {
          if ([v290 didChooseToMigrateLocally])
          {
            v381 = [v290 didChooseToMigrate];
            if ((v380 & 1) == 0)
            {
              if (v381)
              {
                [v290 setDidChooseToMigrateLocally:0];
              }
            }
          }

          [v290 setDidChooseToMigrate:v380 & 1];
        }

        v382 = v582[28];
        if (v582[27] != 2)
        {
          [v290 setDidFinishMigration:v582[27] & 1];
        }

        sub_1006D1918(&v581, v326, v327, v328, v329, v330, v331, v332);
        if (v382 != 2)
        {
          [v290 setDebugSyncDisabled:v382 & 1];
        }

        if (v561)
        {

          LODWORD(v559) = 1;
          v561 = 1;
          if (!v31)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v383 = [v290 changedKeys];
          v80 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v384 = *(v80 + 16);
          v80, v385, v386, v387, v388, v389, v390, v391;
          LODWORD(v559) = v384 != 0;
          v561 = v559;
          if (!v31)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v581, v242, v243, v244, v245, v246, v247, v248);

      v24 = v172;
      v80 = Logger.logObject.getter();
      v249 = static os_log_type_t.error.getter();
      v34, v250, v251, v252, v253, v254, v255, v256;
      v25, v257, v258, v259, v260, v261, v262, v263;
      if (os_log_type_enabled(v80, v249))
      {
        v271 = swift_slowAlloc();
        v571 = v80;
        v80 = v271;
        aBlock = swift_slowAlloc();
        *v80 = v542;
        v272 = sub_10000668C(v35, v25, &aBlock);
        v25, v273, v274, v275, v276, v277, v278, v279;
        *(v80 + 4) = v272;
        *(v80 + 12) = 2082;
        v280 = sub_10000668C(v36, v34, &aBlock);
        v34, v281, v282, v283, v284, v285, v286, v287;
        *(v80 + 14) = v280;
        *(v80 + 22) = 2048;
        *(v80 + 24) = [v24 type];

        *(v80 + 32) = 2048;
        p_super = &v571->super;
        *(v80 + 34) = v572;
        _os_log_impl(&_mh_execute_header, p_super, v249, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v80, 0x2Au);
        swift_arrayDestroy();
        v32 = v569;

        goto LABEL_69;
      }

      v34, v264, v265, v266, v267, v268, v269, v270;
      v25, v299, v300, v301, v302, v303, v304, v305;

      if (!v31)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v150 = aBlock;
      LOBYTE(v80) = _convertNSErrorToError(_:)();

      swift_willThrow();
      v557 = 0;

      if (v582[25] != 1)
      {
        if ((v571 & 1) != 0 || (v193 = objc_allocWithZone(REMAccountTypeHost), v194 = [v193 initWithType:v572], v195 = objc_msgSend(v194, "isCloudKit"), v194, v195))
        {

          v203 = Logger.logObject.getter();
          v204 = static os_log_type_t.default.getter();
          v34, v205, v206, v207, v208, v209, v210, v211;
          v25, v212, v213, v214, v215, v216, v217, v218;
          if (os_log_type_enabled(v203, v204))
          {
            v219 = swift_slowAlloc();
            v559 = swift_slowAlloc();
            aBlock = v559;
            *v219 = v554;
            *(v219 + 4) = sub_10000668C(v35, v25, &aBlock);
            v558 = v204;
            *(v219 + 12) = 2082;
            *(v219 + 14) = sub_10000668C(v36, v34, &aBlock);
            *(v219 + 22) = 2082;
            v220 = REMAccountType.loggableDescription.getter();
            v555 = v203;
            v222 = v221;
            v223 = sub_10000668C(v220, v221, &aBlock);
            v224 = v222;
            v24 = 0;
            v224, v225, v226, v227, v228, v229, v230, v231;
            *(v219 + 24) = v223;
            v232 = v555;
            _os_log_impl(&_mh_execute_header, v555, v558, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v219, 0x20u);
            swift_arrayDestroy();

            v32 = v569;
          }

          else
          {
          }

          v306 = String._bridgeToObjectiveC()();
          v25, v307, v308, v309, v310, v311, v312, v313;
          v25 = v572;
          v314 = [v560 __addAccountWithType:v572 name:v306];

          [v314 setObjectID:v566];
          v315 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v25];
          v316 = [v315 isCloudKit];

          v317 = v314;
          v290 = v317;
          if (v316)
          {
            [v317 setPersistenceCloudSchemaVersion:v540];
          }

          else
          {
            v318 = String._bridgeToObjectiveC()();
            [v290 setExternalIdentifier:v318];
          }

          v558 = 1;
          goto LABEL_45;
        }

        sub_1006D1918(&v581, v196, v197, v198, v199, v200, v201, v202);

        v80 = Logger.logObject.getter();
        v392 = static os_log_type_t.info.getter();
        v34, v393, v394, v395, v396, v397, v398, v399;
        v25, v400, v401, v402, v403, v404, v405, v406;
        if (os_log_type_enabled(v80, v392))
        {
          v414 = swift_slowAlloc();
          v571 = v80;
          v80 = v414;
          aBlock = swift_slowAlloc();
          *v80 = v554;
          v415 = sub_10000668C(v35, v25, &aBlock);
          v25, v416, v417, v418, v419, v420, v421, v422;
          *(v80 + 4) = v415;
          v24 = 2082;
          *(v80 + 12) = 2082;
          v423 = sub_10000668C(v36, v34, &aBlock);
          v34, v424, v425, v426, v427, v428, v429, v430;
          *(v80 + 14) = v423;
          *(v80 + 22) = 2082;
          v431 = REMAccountType.loggableDescription.getter();
          v433 = v432;
          v434 = sub_10000668C(v431, v432, &aBlock);
          v433, v435, v436, v437, v438, v439, v440, v441;
          *(v80 + 24) = v434;
          v442 = &v571->super;
          _os_log_impl(&_mh_execute_header, &v571->super, v392, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v80, 0x20u);
          swift_arrayDestroy();
          v32 = v569;
        }

        else
        {
          v34, v407, v408, v409, v410, v411, v412, v413;
          v25, v443, v444, v445, v446, v447, v448, v449;
        }

LABEL_69:

        if (!v31)
        {
          goto LABEL_70;
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v581, v151, v152, v153, v154, v155, v156, v157);

      v25, v158, v159, v160, v161, v162, v163, v164;
      v34, v165, v166, v167, v168, v169, v170, v171;
      if (!v31)
      {
        goto LABEL_70;
      }
    }

LABEL_5:
    ++v31;
    v30 += 3;
    if (v31 == 1)
    {
      __break(1u);
      goto LABEL_104;
    }
  }

  sub_1000050A4(v50, &unk_100939D90, "8\n\r");

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v34, v53, v54, v55, v56, v57, v58, v59;
  if (os_log_type_enabled(v51, v52))
  {
    v60 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v60 = v570;
    *(v60 + 4) = sub_10000668C(v36, v34, &aBlock);
    _os_log_impl(&_mh_execute_header, v51, v52, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v60, 0xCu);
    sub_10000607C(v24);
  }

LABEL_19:
  sub_1006D1918(&v581, v61, v62, v63, v64, v65, v66, v67);
  v25, v119, v120, v121, v122, v123, v124, v125;

  v80 = Logger.logObject.getter();
  v126 = static os_log_type_t.error.getter();
  v34, v127, v128, v129, v130, v131, v132, v133;
  if (os_log_type_enabled(v80, v126))
  {
    v141 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v141 = v570;
    v142 = sub_10000668C(v36, v34, &aBlock);
    v34, v143, v144, v145, v146, v147, v148, v149;
    *(v141 + 4) = v142;
    v32 = v569;
    _os_log_impl(&_mh_execute_header, v80, v126, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v141, 0xCu);
    sub_10000607C(v24);
  }

  else
  {
    v34, v134, v135, v136, v137, v138, v139, v140;
  }

  if (v31)
  {
    goto LABEL_5;
  }

LABEL_70:
  if (v559)
  {
    v241 = v561;
    v450 = &v584;
LABEL_72:
    *(v450 - 64) = v241;
LABEL_73:
    v451 = Logger.logObject.getter();
    v452 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v451, v452))
    {
      v453 = swift_slowAlloc();
      *v453 = 0;
      _os_log_impl(&_mh_execute_header, v451, v452, "UpdateAccountsWithAccountInfos: Saving account object changes", v453, 2u);
    }

    v24 = v556;
    v25 = v553;
    LOBYTE(v80) = v558;
    if (qword_100935D30 == -1)
    {
LABEL_76:
      v454 = qword_100974CC8;
      v455 = swift_allocObject();
      v456 = v549;
      *(v455 + 16) = sub_1006D546C;
      *(v455 + 24) = v456;
      *(v455 + 32) = v80 & 1;
      *(v455 + 33) = v559 & 1;
      v579 = sub_1006D5468;
      v580 = v455;
      aBlock = _NSConcreteStackBlock;
      v576 = 1107296256;
      v577 = sub_100042968;
      v578 = &unk_1008FC080;
      v457 = _Block_copy(&aBlock);

      v458 = v560;
      [v560 saveWithQueue:v454 completion:v457];

      _Block_release(v457);

      goto LABEL_102;
    }

LABEL_104:
    swift_once();
    goto LABEL_76;
  }

  v24 = v556;
  v25 = v553;
  a3 = v551;
  v461 = v548;
  v16 = v547;
  v459 = v561;
  v460 = v558;
  if (v558)
  {
LABEL_80:
    swift_beginAccess();
    if (*(a3 + 16) != 1)
    {
      goto LABEL_83;
    }

    v561 = v459;
    v462 = objc_opt_self();

    v463 = v552;

    v464 = [v462 daemonUserDefaults];
    v465 = [v464 acAccountIdentifiersToMigrateInactivatedCalDavData];

    if (v465)
    {
      v466 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v466 = &_swiftEmptyArrayStorage;
    }

    v468 = sub_1001A5660(v466);
    v466, v469, v470, v471, v472, v473, v474, v475;
    v574 = v468;

    sub_100378434(&aBlock, v543, v24);
    v576, v476, v477, v478, v479, v480, v481, v482;
    v490 = [v462 daemonUserDefaults];
    v491 = v574;
    v492 = *(v574 + 16);
    if (v492)
    {
      v493 = sub_1003689CC(*(v574 + 16), 0);
      v491 = sub_1002791DC(&aBlock, &v493->clientIdentity[16], v492, v491);
      sub_10001B860(aBlock);
      if (v491 == v492)
      {
LABEL_90:
        v494 = Array._bridgeToObjectiveC()().super.isa;

        [v490 setAcAccountIdentifiersToMigrateInactivatedCalDavData:v494];

        if (qword_1009366E8 != -1)
        {
          swift_once();
        }

        v495 = type metadata accessor for Logger();
        sub_100006654(v495, qword_10094FB70);

        v496 = Logger.logObject.getter();
        v497 = static os_log_type_t.default.getter();
        v24, v498, v499, v500, v501, v502, v503, v504;
        if (os_log_type_enabled(v496, v497))
        {
          v505 = swift_slowAlloc();
          v506 = swift_slowAlloc();
          aBlock = v506;
          *v505 = 136446210;
          *(v505 + 4) = sub_10000668C(v543, v24, &aBlock);
          _os_log_impl(&_mh_execute_header, v496, v497, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v505, 0xCu);
          sub_10000607C(v506);
        }

        v459 = v561;
        goto LABEL_95;
      }

      __break(1u);
    }

    v491, v483, v484, v485, v486, v487, v488, v489;
    goto LABEL_90;
  }

LABEL_79:
  if (v459)
  {
    goto LABEL_80;
  }

LABEL_83:

  v467 = v552;

LABEL_95:
  v507 = *(v25 + 16);
  v508 = &_swiftEmptyArrayStorage;
  if (v507)
  {
    v558 = v460;
    v561 = v459;
    aBlock = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v507, 0);
    v508 = aBlock;
    v509 = (v25 + 40);
    do
    {
      v511 = *(v509 - 1);
      v510 = *v509;
      aBlock = v508;
      v513 = *v508->clientIdentity;
      v512 = *&v508->clientIdentity[8];

      if (v513 >= v512 >> 1)
      {
        sub_100026EF4((v512 > 1), v513 + 1, 1);
        v508 = aBlock;
      }

      *v508->clientIdentity = v513 + 1;
      v514 = v508 + 16 * v513;
      *(v514 + 4) = v511;
      *(v514 + 5) = v510;
      v509 += 6;
      --v507;
    }

    while (v507);
    v461 = v548;
    v16 = v547;
    LOBYTE(v459) = v561;
    LOBYTE(v460) = v558;
    v24 = v556;
  }

  v515 = swift_allocObject();
  v516 = v544;
  *(v515 + 16) = v461;
  *(v515 + 24) = v516;
  *(v515 + 32) = v545 & 1;
  *(v515 + 40) = v546;
  *(v515 + 48) = v16;
  *(v515 + 56) = v460 & 1;
  *(v515 + 57) = v459 & 1;
  *(v515 + 64) = 0;

  v517 = v552;
  sub_1006B9D6C(v552, sub_1006D5484, v515);

  v508, v518, v519, v520, v521, v522, v523, v524;
LABEL_102:

  v25, v525, v526, v527, v528, v529, v530, v531;
  v24, v532, v533, v534, v535, v536, v537, v538;
}

uint64_t sub_1006C3788(void *a1)
{
  v1 = [a1 identifier];
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v5 == v4)
    {
      v5, v5, v6, v7, v8, v9, v10, v11;
    }

    else
    {
      v13 = v5;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v13, v15, v16, v17, v18, v19, v20, v21;
      if ((v14 & 1) == 0)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v23;
        if (v22 == v2 && v23 == v4)
        {
          goto LABEL_27;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30, v33, v34, v35, v36, v37, v38, v39;
        if (v32)
        {
LABEL_12:
          v47 = v4;
LABEL_28:
          v47, v40, v41, v42, v43, v44, v45, v46;
          return 3;
        }

        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v23;
        if (v80 == v2 && v23 == v4)
        {
          goto LABEL_27;
        }

        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30, v82, v83, v84, v85, v86, v87, v88;
        if (v81)
        {
          goto LABEL_12;
        }

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v23;
        if (v89 == v2 && v23 == v4)
        {
LABEL_27:
          v4, v23, v24, v25, v26, v27, v28, v29;
          v47 = v30;
          goto LABEL_28;
        }

        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30, v91, v92, v93, v94, v95, v96, v97;
        if (v90)
        {
          goto LABEL_12;
        }

        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v99;
        if (v98 == v2 && v99 == v4)
        {
          goto LABEL_36;
        }

        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v106, v116, v117, v118, v119, v120, v121, v122;
        if ((v115 & 1) == 0)
        {
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v99;
          if (v123 == v2 && v99 == v4)
          {
LABEL_36:
            v4, v99, v100, v101, v102, v103, v104, v105;
            v114 = v106;
LABEL_39:
            v114, v107, v108, v109, v110, v111, v112, v113;
            return 4;
          }

          v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v106, v125, v126, v127, v128, v129, v130, v131;
          if ((v124 & 1) == 0)
          {
            if (qword_1009366E8 != -1)
            {
              swift_once();
            }

            v132 = type metadata accessor for Logger();
            sub_100006654(v132, qword_10094FB70);

            v133 = Logger.logObject.getter();
            v134 = static os_log_type_t.error.getter();
            v4, v135, v136, v137, v138, v139, v140, v141;
            if (os_log_type_enabled(v133, v134))
            {
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              v159 = v150;
              *v149 = 136315138;
              v151 = sub_10000668C(v2, v4, &v159);
              v4, v152, v153, v154, v155, v156, v157, v158;
              *(v149 + 4) = v151;
              _os_log_impl(&_mh_execute_header, v133, v134, "ACAccount type not allowlisted, assume it's CalDAV {typeIdentifier: %s}", v149, 0xCu);
              sub_10000607C(v150);
            }

            else
            {
              v4, v142, v143, v144, v145, v146, v147, v148;
            }

            return 3;
          }
        }

        v114 = v4;
        goto LABEL_39;
      }
    }

    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_10094FB70);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    v4, v56, v57, v58, v59, v60, v61, v62;
    if (os_log_type_enabled(v54, v55))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v159 = v71;
      *v70 = 136446210;
      v72 = sub_10000668C(v2, v4, &v159);
      v4, v73, v74, v75, v76, v77, v78, v79;
      *(v70 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v54, v55, "RDAccountUtils: Unexpected call to remAccountType(from:) with ACAccountTypeIdentifierAppleAccount {AC-identifier: %{public}s}", v70, 0xCu);
      sub_10000607C(v71);
    }

    else
    {
      v4, v63, v64, v65, v66, v67, v68, v69;
    }

    return _auto_REMAccountTypeForPrimaryCloudKit();
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_10094FB70);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Found ACAccount without identifier", v51, 2u);
    }

    return 0;
  }
}

id sub_1006C3CF4(void *a1)
{
  v2 = [a1 displayAccount];
  if (!v2)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_10094FB70);
    v36 = a1;
    v3 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      v40 = [v36 identifier];
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v3, v37, "nonCloudKitAccountIdentifierEnabledForReminders: Can't get display account from input {input: %{public}@}", v38, 0xCu);
      sub_1000050A4(v39, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_23;
  }

  v3 = v2;
  result = [v2 accountType];
  if (result)
  {
    v5 = result;
    v6 = [result identifier];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v11;
      if (v9)
      {
        if (v7 == v10 && v9 == v11)
        {
          v9, v11, v10, v13, v14, v15, v16, v17;
          v18, v44, v45, v46, v47, v48, v49, v50;
          goto LABEL_20;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v9, v21, v22, v23, v24, v25, v26, v27;
        v18, v28, v29, v30, v31, v32, v33, v34;
        if (v20)
        {
LABEL_20:
          if ([v3 isEnabledForDataclass:ACAccountDataclassReminders])
          {
            result = [v3 identifier];
            if (result)
            {
              v51 = result;
              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();

              return v52;
            }

            goto LABEL_25;
          }

LABEL_23:

          return 0;
        }

LABEL_17:
        v41 = sub_1006BFC1C(v3);
        if (v42)
        {
          v43 = v41;

          return v43;
        }

        goto LABEL_20;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v11;
    }

    v18, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1006C3FCC(void *a1, id a2, id a3, int a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10, _TtC7remindd19RDXPCStorePerformer *a11)
{
  LODWORD(v601) = a4;
  v17 = a11;
  v18 = a9;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v613 = a8;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9 & 1;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  v615 = v19;
  swift_retain_n();
  v20 = a7;
  swift_retain_n();
  v21 = v20;
  v22 = [a1 displayAccount];
  if (!v22)
  {
    v22 = a1;
  }

  v23 = &selRef_hack_willSaveHandled;
  v24 = [v22 identifier];
  if (!v24)
  {

    __break(1u);
    goto LABEL_177;
  }

  v25 = v24;
  v612 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v616 = v26;

  v27 = [v22 accountType];
  if (!v27)
  {
LABEL_177:

    __break(1u);
    goto LABEL_178;
  }

  v28 = v27;
  v29 = [v27 identifier];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v34;
LABEL_12:
    v23 = v616;
    v41, v34, v35, v36, v37, v38, v39, v40;
    if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v34;
  if (!v32)
  {
    goto LABEL_12;
  }

  v23 = v616;
  if (v30 == v33 && v32 == v34)
  {
    v32, v34, v33, v36, v37, v38, v39, v40;
    v41, v42, v43, v44, v45, v46, v47, v48;
    if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      sub_100006654(v98, qword_10094FB70);
      v18 = a1;
      a3 = v22;

      v99 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v99, v11))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      v604 = a6;
      v596 = v21;
      v100 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v100 = 136446722;
      v101 = v23;
      v23 = [v18 identifier];

      v101, v102, v103, v104, v105, v106, v107, v108;
      if (v23)
      {
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v110;

        v111 = sub_10000668C(v109, v18, &aBlock);
        v18, v112, v113, v114, v115, v116, v117, v118;
        *(v100 + 4) = v111;
        v23 = 2082;
        *(v100 + 12) = 2082;
        v21 = sub_10000668C(v612, v101, &aBlock);
        v101, v119, v120, v121, v122, v123, v124, v125;
        *(v100 + 14) = v21;
        *(v100 + 22) = 2082;
        v126 = [a3 accountType];
        if (v126)
        {
          v18 = v126;
          v23 = [v126 identifier];

          if (v23)
          {
            v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v129 = v128;

            v130 = sub_10000668C(v127, v129, &aBlock);
            v129, v131, v132, v133, v134, v135, v136, v137;
            *(v100 + 24) = v130;
            _os_log_impl(&_mh_execute_header, v99, v11, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v100, 0x20u);
            swift_arrayDestroy();

            v21 = v596;
            a6 = v604;
LABEL_32:
            v138 = swift_allocObject();
            *(v138 + 16) = a6;
            *(v138 + 24) = v613;
            *(v138 + 32) = a9 & 1;
            *(v138 + 40) = a10;
            *(v138 + 48) = a11;
            *(v138 + 56) = 0;
            *(v138 + 64) = 0;

            sub_1006B9D6C(v21, sub_1006D4838, v138);

LABEL_50:

LABEL_165:

            return;
          }

          goto LABEL_180;
        }

LABEL_179:

        __break(1u);
LABEL_180:

        v17 = v596;

        __break(1u);
        goto LABEL_181;
      }

LABEL_178:

      __break(1u);
      goto LABEL_179;
    }

LABEL_23:
    v11 = v21;
    v21 = 1;
    goto LABEL_34;
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v32, v84, v85, v86, v87, v88, v89, v90;
  v41, v91, v92, v93, v94, v95, v96, v97;
  if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v83)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {
    v23, v49, v50, v51, v52, v53, v54, v55;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_10094FB70);
    v18 = a1;
    v23 = v22;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v17 = v21;
      v59 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v59 = 136446466;
      v60 = [v18 identifier];

      if (!v60)
      {
LABEL_182:

        __break(1u);
        goto LABEL_183;
      }

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v62;

      v18 = sub_10000668C(v61, v21, &aBlock);
      v21, v63, v64, v65, v66, v67, v68, v69;
      *(v59 + 4) = v18;
      *(v59 + 12) = 2082;
      v70 = [v23 accountType];
      if (!v70)
      {
LABEL_183:

        __break(1u);
        goto LABEL_184;
      }

      v71 = v70;
      v18 = [v70 identifier];

      if (!v18)
      {
LABEL_184:

        __break(1u);
        goto LABEL_185;
      }

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_10000668C(v72, v74, &aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v59 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v57, v58, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v59, 0x16u);
      swift_arrayDestroy();

      v21 = v17;
      v17 = a11;
    }

    else
    {
    }

    v176 = swift_allocObject();
    *(v176 + 16) = a6;
    *(v176 + 24) = v613;
    *(v176 + 32) = a9 & 1;
    *(v176 + 40) = a10;
    *(v176 + 48) = v17;
    *(v176 + 56) = 0;
    *(v176 + 64) = 0;

    sub_1006B9D6C(v21, sub_1006D5484, v176);

    goto LABEL_50;
  }

  v11 = v21;
  aBlock = 0u;
  v620 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v21 = 0;
LABEL_34:
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v139 = type metadata accessor for Logger();
  sub_100006654(v139, qword_10094FB70);

  v140 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v23, v141, v142, v143, v144, v145, v146, v147;
  if (os_log_type_enabled(v140, v18))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&aBlock = v149;
    *v148 = 136446210;
    *(v148 + 4) = sub_10000668C(v612, v616, &aBlock);
    _os_log_impl(&_mh_execute_header, v140, v18, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v148, 0xCu);
    sub_10000607C(v149);
    v23 = v616;
  }

  v598 = swift_allocObject();
  *(v598 + 16) = 0;
  v150 = [v22 rem_isEligibleForCloudKitReminders];
  if (!v21)
  {
    v153 = [v22 accountType];
    if (!v153)
    {
LABEL_181:

      __break(1u);
      goto LABEL_182;
    }

    v154 = v153;
    v155 = sub_1006C3788(v153);
    v157 = v156;

    v21 = v11;
    if (v157)
    {
      v18 = v22;
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v608 = swift_slowAlloc();
        *&aBlock = v608;
        *v160 = 136446210;
        v161 = [v18 accountType];
        if (!v161)
        {
LABEL_185:

          __break(1u);
          goto LABEL_186;
        }

        v162 = v161;
        v163 = [v161 identifier];

        if (!v163)
        {
LABEL_186:

          __break(1u);
          goto LABEL_187;
        }

        v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v166 = v165;

        v167 = sub_10000668C(v164, v166, &aBlock);
        v166, v168, v169, v170, v171, v172, v173, v174;
        *(v160 + 4) = v167;
        _os_log_impl(&_mh_execute_header, v158, v159, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v160, 0xCu);
        sub_10000607C(v608);

        v175 = &_swiftEmptyArrayStorage;
        goto LABEL_163;
      }
    }

    else
    {

      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.default.getter();
      v23, v216, v217, v218, v219, v220, v221, v222;
      v609 = v155;
      if (os_log_type_enabled(v214, v215))
      {
        v223 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v223 = 136446466;
        *(v223 + 4) = sub_10000668C(v612, v23, &aBlock);
        *(v223 + 12) = 2082;
        v224 = REMAccountType.loggableDescription.getter();
        v226 = v225;
        v227 = sub_10000668C(v224, v225, &aBlock);
        v226, v228, v229, v230, v231, v232, v233, v234;
        *(v223 + 14) = v227;
        v23 = v616;
        _os_log_impl(&_mh_execute_header, v214, v215, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v223, 0x16u);
        swift_arrayDestroy();
      }

      v235 = sub_1006C3CF4(v22);
      if (v236)
      {
        v237 = v235;
        v238 = v236;
        v239 = v22;

        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.default.getter();

        v238, v242, v243, v244, v245, v246, v247, v248;
        v602 = v237;
        if (os_log_type_enabled(v240, v241))
        {
          v599 = v239;
          v249 = swift_slowAlloc();
          v590 = swift_slowAlloc();
          v594 = swift_slowAlloc();
          *&aBlock = v594;
          *v249 = 136446466;
          *(v249 + 4) = sub_10000668C(v237, v238, &aBlock);
          *(v249 + 12) = 2114;
          v250 = [v599 identifier];
          *(v249 + 14) = v250;
          *v590 = v250;
          _os_log_impl(&_mh_execute_header, v240, v241, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v249, 0x16u);
          sub_1000050A4(v590, &unk_100938E70, &unk_100797230);

          sub_10000607C(v594);

          v239 = v599;
        }

        v251 = [objc_opt_self() accountDescriptionWithACAccount:v239];
        if (v251)
        {
          v256 = v251;
          v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v259 = v258;

          v23 = v616;
        }

        else
        {
          v257 = 0;
          v259 = 0xE000000000000000;
        }

        v175 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v252, v253, v254, v255);
        v342 = *v175->clientIdentity;
        v341 = *&v175->clientIdentity[8];
        if (v342 >= v341 >> 1)
        {
          v175 = sub_1003685B8((v341 > 1), v342 + 1, 1, v175, v337, v338, v339, v340);
        }

        *v175->clientIdentity = v342 + 1;
        v343 = v175 + 48 * v342;
        *(v343 + 4) = v602;
        *(v343 + 5) = v238;
        *(v343 + 6) = v257;
        *(v343 + 7) = v259;
        *(v343 + 8) = v609;
        *(v343 + 18) = 33685505;
        v343[76] = 2;
        v17 = a11;
        goto LABEL_164;
      }
    }

LABEL_66:
    v175 = &_swiftEmptyArrayStorage;
LABEL_164:
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v477 = v21;

    sub_1006C1BC8(v175, a2, v598, v612, v23, v175, a6, v477, v613, a9 & 1, a10, v17);

    swift_bridgeObjectRelease_n();
    v23, v478, v479, v480, v481, v482, v483, v484;

    goto LABEL_165;
  }

  if ((v150 & 1) == 0)
  {

    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();
    v23, v179, v180, v181, v182, v183, v184, v185;
    v21 = v11;
    if (os_log_type_enabled(v177, v178))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&aBlock = v187;
      *v186 = 136446210;
      *(v186 + 4) = sub_10000668C(v612, v616, &aBlock);
      _os_log_impl(&_mh_execute_header, v177, v178, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v186, 0xCu);
      sub_10000607C(v187);
      v23 = v616;
    }

    v188 = sub_1006BFC1C(v22);
    if (v189)
    {
      v190 = v188;
      v191 = v189;

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      v191, v194, v195, v196, v197, v198, v199, v200;
      if (os_log_type_enabled(v192, v193))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *&aBlock = v202;
        *v201 = 136446210;
        *(v201 + 4) = sub_10000668C(v190, v191, &aBlock);
        _os_log_impl(&_mh_execute_header, v192, v193, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v201, 0xCu);
        sub_10000607C(v202);
      }

      v606 = a6;
      v203 = [objc_opt_self() accountDescriptionWithACAccount:v22];
      v208 = v190;
      v209 = v21;
      if (v203)
      {
        v210 = v203;
        v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v213 = v212;
      }

      else
      {
        v211 = 0;
        v213 = 0;
      }

      v23 = v616;
      if (v213)
      {
        v329 = v211;
      }

      else
      {
        v329 = 0x64756F6C4369;
      }

      if (!v213)
      {
        v213 = 0xE600000000000000;
      }

      v175 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v204, v205, v206, v207);
      v335 = *v175->clientIdentity;
      v334 = *&v175->clientIdentity[8];
      if (v335 >= v334 >> 1)
      {
        v175 = sub_1003685B8((v334 > 1), v335 + 1, 1, v175, v330, v331, v332, v333);
      }

      *v175->clientIdentity = v335 + 1;
      v336 = v175 + 48 * v335;
      *(v336 + 4) = v208;
      *(v336 + 5) = v191;
      *(v336 + 6) = v329;
      *(v336 + 7) = v213;
      *(v336 + 8) = 3;
      *(v336 + 18) = 33685505;
      v336[76] = 2;
      v21 = v209;
      v17 = a11;
      a6 = v606;
      goto LABEL_164;
    }

    goto LABEL_66;
  }

  v605 = a6;
  *&v623 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v623 + 1) = v151;
  v152 = [v22 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v21 = v11;
  if (v152)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v623 = 0u;
    v624 = 0u;
  }

  v260 = a3;
  aBlock = v623;
  v620 = v624;
  if (*(&v624 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v260 = [v618 BOOLValue];

      goto LABEL_82;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_82:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v302;
    v303 = [v22 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v303)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v623 = 0u;
      v624 = 0u;
    }

    aBlock = v623;
    v620 = v624;
    if (*(&v624 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v304 = v618;
      }

      else
      {
        v304 = 0;
      }

      if (v260)
      {
        goto LABEL_90;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v304 = 0;
      if (v260)
      {
LABEL_90:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          v23, v306, v307, v308, v309, v310, v311, v312;
          v367 = Logger.logObject.getter();
          v368 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v367, v368))
          {
            v369 = swift_slowAlloc();
            *v369 = 0;
            _os_log_impl(&_mh_execute_header, v367, v368, "Store controller missing for checking whether migration has failed", v369, 2u);
          }

          goto LABEL_165;
        }

        v313 = Strong;
        v314 = sub_1006BF940(v612, v23);
        if (!v314)
        {

          v485 = Logger.logObject.getter();
          v486 = static os_log_type_t.error.getter();
          v23, v487, v488, v489, v490, v491, v492, v493;
          if (os_log_type_enabled(v485, v486))
          {
            v494 = v23;
            v495 = swift_slowAlloc();
            v496 = swift_slowAlloc();
            *&aBlock = v496;
            *v495 = 136315138;
            v617 = v304;
            v497 = sub_10000668C(v612, v494, &aBlock);
            v494, v498, v499, v500, v501, v502, v503, v504;
            *(v495 + 4) = v497;
            _os_log_impl(&_mh_execute_header, v485, v486, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v495, 0xCu);
            sub_10000607C(v496);
          }

          else
          {

            v23, v505, v506, v507, v508, v509, v510, v511;
          }

          goto LABEL_165;
        }

        v315 = v314;
        sub_10031C72C(v314, v313);
        v317 = v316;

        LODWORD(v315) = *(v317 + 88);

        v610 = v315 ^ 1;
        goto LABEL_95;
      }
    }

    v610 = 0;
LABEL_95:
    if (v304 && (v610 & [v304 BOOLValue] & 1) != 0)
    {
      *(v598 + 16) = 1;

      v318 = Logger.logObject.getter();
      v319 = static os_log_type_t.default.getter();
      v23, v320, v321, v322, v323, v324, v325, v326;
      if (os_log_type_enabled(v318, v319))
      {
        v327 = swift_slowAlloc();
        v328 = swift_slowAlloc();
        *&aBlock = v328;
        *v327 = 136446210;
        *(v327 + 4) = sub_10000668C(v612, v616, &aBlock);
        _os_log_impl(&_mh_execute_header, v318, v319, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v327, 0xCu);
        sub_10000607C(v328);
        v23 = v616;
      }
    }

    if ([v22 aa_isAccountClass:AAAccountClassPrimary])
    {
      v595 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v595 = 6;
    }

    v344 = v304;

    v345 = Logger.logObject.getter();
    v346 = static os_log_type_t.default.getter();
    v603 = v344;

    v23, v347, v348, v349, v350, v351, v352, v353;
    if (os_log_type_enabled(v345, v346))
    {
      v591 = v346;
      v354 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v354 = 136447234;
      *(v354 + 4) = sub_10000668C(v612, v23, &aBlock);
      *(v354 + 12) = 2082;
      v355 = REMAccountType.loggableDescription.getter();
      v357 = v356;
      v358 = sub_10000668C(v355, v356, &aBlock);
      v357, v359, v360, v361, v362, v363, v364, v365;
      *(v354 + 14) = v358;
      *(v354 + 22) = 1024;
      *(v354 + 24) = v260 & 1;
      *(v354 + 28) = 1024;
      *(v354 + 30) = v610 & 1;
      *(v354 + 34) = 2082;
      if (v304)
      {
        v366 = [v603 BOOLValue];
      }

      else
      {
        v366 = 2;
      }

      LOBYTE(v623) = v366;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v416 = String.init<A>(describing:)();
      v418 = v417;
      v419 = sub_10000668C(v416, v417, &aBlock);
      v418, v420, v421, v422, v423, v424, v425, v426;
      *(v354 + 36) = v419;
      _os_log_impl(&_mh_execute_header, v345, v591, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v354, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    v589 = objc_opt_self();
    v427 = [v589 accountDescriptionWithACAccount:v22];
    if (v427)
    {
      v428 = v427;
      v429 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v431 = v430;
    }

    else
    {
      v429 = 0;
      v431 = 0;
    }

    v592 = v260;
    v597 = v21;
    if (v304)
    {
      v432 = [v603 BOOLValue];
    }

    else
    {
      v432 = 2;
    }

    v433 = [v22 aa_isAccountClass:AAAccountClassBasic];
    if (v431)
    {
      v434 = v429;
    }

    else
    {
      v434 = 0x64756F6C4369;
    }

    if (v431)
    {
      v435 = v431;
    }

    else
    {
      v435 = 0xE600000000000000;
    }

    v175 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v436, v437, v438, v439);
    v445 = *v175->clientIdentity;
    v444 = *&v175->clientIdentity[8];
    if (v445 >= v444 >> 1)
    {
      v175 = sub_1003685B8((v444 > 1), v445 + 1, 1, v175, v440, v441, v442, v443);
    }

    *v175->clientIdentity = v445 + 1;
    v446 = v175 + 48 * v445;
    *(v446 + 4) = v612;
    *(v446 + 5) = v616;
    *(v446 + 6) = v434;
    *(v446 + 7) = v435;
    *(v446 + 8) = v595;
    v446[72] = v610 & 1;
    v446[73] = 0;
    v446[74] = v592 & 1;
    v446[75] = v432;
    v446[76] = v433;
    v447 = sub_1006BFC1C(v22);
    if (v448)
    {
      v449 = v447;
      v450 = v448;

      v451 = Logger.logObject.getter();
      v452 = static os_log_type_t.default.getter();
      v450, v453, v454, v455, v456, v457, v458, v459;
      if (os_log_type_enabled(v451, v452))
      {
        v460 = swift_slowAlloc();
        v461 = swift_slowAlloc();
        *&aBlock = v461;
        *v460 = 136446466;
        *(v460 + 4) = sub_10000668C(v449, v450, &aBlock);
        *(v460 + 12) = 1024;
        *(v460 + 14) = v592 & 1;
        _os_log_impl(&_mh_execute_header, v451, v452, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v460, 0x12u);
        sub_10000607C(v461);
      }

      v462 = [v589 accountDescriptionWithACAccount:v22];
      v467 = v450;
      if (v462)
      {
        v468 = v462;
        v469 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v471 = v470;
      }

      else
      {
        v469 = 0;
        v471 = 0;
      }

      if (v471)
      {
        v472 = v469;
      }

      else
      {
        v472 = 0x64756F6C4369;
      }

      if (v471)
      {
        v473 = v471;
      }

      else
      {
        v473 = 0xE600000000000000;
      }

      v475 = *v175->clientIdentity;
      v474 = *&v175->clientIdentity[8];
      if (v475 >= v474 >> 1)
      {
        v175 = sub_1003685B8((v474 > 1), v475 + 1, 1, v175, v463, v464, v465, v466);
      }

      *v175->clientIdentity = v475 + 1;
      v476 = v175 + 48 * v475;
      *(v476 + 4) = v449;
      *(v476 + 5) = v467;
      *(v476 + 6) = v472;
      *(v476 + 7) = v473;
      *(v476 + 8) = 3;
      v476[72] = (v610 & 1) == 0;
      *(v476 + 73) = 33686016;
    }

    else
    {
    }

    v17 = a11;
    v21 = v597;
    a6 = v605;
LABEL_163:
    v23 = v616;
    goto LABEL_164;
  }

  v261 = swift_unknownObjectWeakLoadStrong();
  if (!v261)
  {
    goto LABEL_126;
  }

  v262 = v261;
  if (![v261 hasPassedBuddyAndSystemDataMigrator])
  {

    v370 = Logger.logObject.getter();
    v371 = static os_log_type_t.default.getter();
    v23, v372, v373, v374, v375, v376, v377, v378;
    if (os_log_type_enabled(v370, v371))
    {
      v379 = swift_slowAlloc();
      v380 = swift_slowAlloc();
      *&aBlock = v380;
      *v379 = 136446210;
      *(v379 + 4) = sub_10000668C(v612, v616, &aBlock);
      _os_log_impl(&_mh_execute_header, v370, v371, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v379, 0xCu);
      sub_10000607C(v380);
      v23 = v616;
    }

    goto LABEL_126;
  }

  if ((v601 & 1) == 0)
  {
LABEL_126:

    v381 = Logger.logObject.getter();
    v382 = static os_log_type_t.default.getter();
    v23, v383, v384, v385, v386, v387, v388, v389;
    if (os_log_type_enabled(v381, v382))
    {
      v397 = v23;
      v398 = swift_slowAlloc();
      v399 = swift_slowAlloc();
      *&aBlock = v399;
      *v398 = 136446210;
      v400 = sub_10000668C(v612, v397, &aBlock);
      v397, v401, v402, v403, v404, v405, v406, v407;
      *(v398 + 4) = v400;
      _os_log_impl(&_mh_execute_header, v381, v382, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v398, 0xCu);
      sub_10000607C(v399);
    }

    else
    {
      v23, v390, v391, v392, v393, v394, v395, v396;
    }

    v408 = objc_opt_self();
    v409 = [v408 sharedInstance];
    v410 = [v409 accountStore];

    v411 = [v408 sharedInstance];
    v412 = swift_allocObject();
    *(v412 + 16) = v22;
    *(v412 + 24) = a5;
    *(v412 + 32) = a2;
    *(v412 + 40) = v601 & 1;
    *(v412 + 48) = sub_1006D4820;
    *(v412 + 56) = v615;
    v621 = sub_1006D5518;
    v622 = v412;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v620 = sub_100007688;
    *(&v620 + 1) = &unk_1008FBEF0;
    v413 = _Block_copy(&aBlock);
    v414 = v22;

    v415 = a2;

    [v411 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v414 inStore:v410 completionHandler:v413];

    _Block_release(v413);

    goto LABEL_165;
  }

  v263 = swift_allocObject();
  *(v263 + 16) = v605;
  *(v263 + 24) = v11;
  *(v263 + 32) = v613;
  *(v263 + 40) = a9 & 1;
  *(v263 + 48) = a10;
  *(v263 + 56) = a11;
  v264 = swift_allocObject();
  *(v264 + 16) = v612;
  *(v264 + 24) = v23;
  *(v264 + 32) = a5;
  *(v264 + 40) = v22;
  *(v264 + 48) = a2;
  *(v264 + 56) = 1;
  *(v264 + 64) = sub_1006D5470;
  *(v264 + 72) = v263;
  swift_retain_n();
  v265 = v21;
  swift_retain_n();
  v266 = v22;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v267 = a2;
  a2 = v265;
  v268 = v266;

  v593 = v267;

  v601 = v268;
  v269 = [v268 identifier];
  if (v269)
  {
    v270 = v269;
    v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v273 = v272;
    v274 = swift_unknownObjectWeakLoadStrong();
    if (v274 && (v275 = v274, v276 = [v274 cloudContext], v275, v276))
    {
      v614 = v276;
      v277 = v271;

      v278 = Logger.logObject.getter();
      v279 = static os_log_type_t.default.getter();
      v273, v280, v281, v282, v283, v284, v285, v286;
      if (os_log_type_enabled(v278, v279))
      {
        v287 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *&aBlock = v288;
        *v287 = 136446210;
        *(v287 + 4) = sub_10000668C(v277, v273, &aBlock);
        _os_log_impl(&_mh_execute_header, v278, v279, "Fetch migration state from user record {accountID: %{public}s}", v287, 0xCu);
        sub_10000607C(v288);
      }

      v289 = v616;
      v290 = swift_allocObject();
      v290[2] = v277;
      v290[3] = v273;
      v290[4] = sub_1006D551C;
      v290[5] = v264;
      v291 = v601;
      v290[6] = v601;
      v621 = sub_1006D5520;
      v622 = v290;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v620 = sub_10016AC08;
      *(&v620 + 1) = &unk_1008FBF90;
      v292 = _Block_copy(&aBlock);
      v293 = v601;

      [v614 fetchUserRecordWithAccountID:v270 completionHandler:v292];
      _Block_release(v292);
      v616, v294, v295, v296, v297, v298, v299, v300;

      v301 = v593;
    }

    else
    {
      v512 = v271;

      v513 = Logger.logObject.getter();
      v514 = static os_log_type_t.error.getter();
      v273, v515, v516, v517, v518, v519, v520, v521;
      if (os_log_type_enabled(v513, v514))
      {
        v529 = swift_slowAlloc();
        v530 = swift_slowAlloc();
        *&aBlock = v530;
        *v529 = 136446210;
        v531 = sub_10000668C(v512, v273, &aBlock);
        v273, v532, v533, v534, v535, v536, v537, v538;
        *(v529 + 4) = v531;
        _os_log_impl(&_mh_execute_header, v513, v514, "Missing cloud context for fetching migration state {accountID: %{public}s}", v529, 0xCu);
        sub_10000607C(v530);
      }

      else
      {
        v273, v522, v523, v524, v525, v526, v527, v528;
      }

      v289 = v616;
      v539 = objc_opt_self();
      v540 = String._bridgeToObjectiveC()();
      v541 = [v539 internalErrorWithDebugDescription:v540];

      v542 = v605;
      swift_retain_n();
      v543 = a2;
      swift_retain_n();
      v544 = v543;

      v545 = v541;
      v546 = Logger.logObject.getter();
      v547 = static os_log_type_t.error.getter();
      v616, v548, v549, v550, v551, v552, v553, v554;

      if (os_log_type_enabled(v546, v547))
      {
        v600 = v544;
        v555 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v555 = 136315394;
        swift_getErrorValue();
        v556 = Error.localizedDescription.getter();
        v558 = v557;
        v559 = sub_10000668C(v556, v557, &aBlock);
        v558, v560, v561, v562, v563, v564, v565, v566;
        *(v555 + 4) = v559;
        v289 = v616;
        *(v555 + 12) = 2082;
        *(v555 + 14) = sub_10000668C(v612, v616, &aBlock);
        _os_log_impl(&_mh_execute_header, v546, v547, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v555, 0x16u);
        swift_arrayDestroy();
        v542 = v605;

        v544 = v600;
      }

      v567 = v544;

      v291 = v601;
      v301 = v593;
      sub_1006C3FCC(v601, v593, 0, 1, a5, v542, v567, v613, a9 & 1, a10, a11);
      v289, v568, v569, v570, v571, v572, v573, v574;
    }

    v289, v575, v576, v577, v578, v579, v580, v581;

    goto LABEL_165;
  }

LABEL_187:

  v616, v582, v583, v584, v585, v586, v587, v588;
  __break(1u);
}

void sub_1006C6898(char a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v46 = a6;
  v47 = a7;
  v45 = a5;
  v53 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12, v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094FB70);
  v19 = a4;
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v44 = a8;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v22 = 138544130;
    v25 = [v19 identifier];
    *(v22 + 4) = v25;
    *v23 = v25;
    *(v22 + 12) = 1024;
    *(v22 + 14) = a1 & 1;
    *(v22 + 18) = 1024;
    *(v22 + 20) = v53 & 1;
    *(v22 + 24) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v26 = Error.rem_errorDescription.getter();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_10000668C(v26, v28, aBlock);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v22 + 26) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountUtils: Finished updating account {accountID: %{public}@, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, error: %s}", v22, 0x22u);
    sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

    sub_10000607C(v24);

    a8 = v44;
    if (a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (a1)
    {
      goto LABEL_13;
    }
  }

  if ((v53 & 1) == 0 && !a3)
  {
    dispatch_group_leave(a8);
    return;
  }

LABEL_13:
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v37 = swift_allocObject();
  v39 = v45;
  v38 = v46;
  *(v37 + 16) = a3;
  *(v37 + 24) = v39;
  *(v37 + 32) = v38;
  *(v37 + 40) = a1 & 1;
  *(v37 + 48) = v47;
  *(v37 + 56) = v53 & 1;
  *(v37 + 64) = a8;
  aBlock[4] = sub_1006D5488;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FC4B8;
  v40 = _Block_copy(aBlock);
  swift_errorRetain();

  v41 = a8;
  static DispatchQoS.unspecified.getter();
  v54 = &_swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v42 = v49;
  v43 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);
  (*(v51 + 8))(v42, v43);
  (*(v48 + 8))(v17, v50);
}

void sub_1006C6E08(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, _TtC7remindd19RDXPCStorePerformer *a6, void *a7, uint64_t a8, uint64_t a9, char *a10, void *a11)
{
  v610 = a5;
  v620 = a2;
  v631 = a1;
  v614 = 0;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17 - 8, v18);
  v626 = &v592 - v19;
  v20 = type metadata accessor for UUID();
  v629 = *(v20 - 8);
  v630 = v20;
  __chkstk_darwin(v20, v21);
  v623 = &v592 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v602 = type metadata accessor for DispatchWorkItemFlags();
  v601 = *(v602 - 8);
  __chkstk_darwin(v602, v23);
  v599 = &v592 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = type metadata accessor for DispatchQoS();
  v598 = *(v600 - 8);
  __chkstk_darwin(v600, v25);
  v597 = &v592 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v27[2] = a7;
  v27[3] = a8;
  v27[4] = a9;
  v27[5] = a10;
  v27[6] = a11;
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v596 = a4;
  v28[4] = a5;
  v28[5] = a6;
  v28[6] = sub_1006D5474;
  v28[7] = v27;
  v604 = v28;
  v29 = objc_allocWithZone(REMSaveRequest);
  v606 = a7;
  v609 = a8;
  v30 = a10;

  v608 = a9;

  v607 = a11;
  v611 = a3;

  v605 = v27;

  v618 = [v29 initWithStore:v620];
  v32 = *(v631 + 2);
  v612 = a6;
  v603 = a10;
  if (!v32)
  {
    v488 = 0;
LABEL_83:
    v619 = v32;
    v616 = v488;
    LOBYTE(v34) = v488 | v32;
    if (((v488 | v32) & 1) == 0 || (v489 = v611, swift_beginAccess(), *(v489 + 16) != 1))
    {
      v496 = v606;

      v497 = v607;
LABEL_99:
      v539 = *a6->clientIdentity;
      v38 = &_swiftEmptyArrayStorage;
      if (v539)
      {
        v540 = v30;
        aBlock = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v539, 0);
        v38 = aBlock;
        v541 = &a6->clientIdentity[24];
        do
        {
          v543 = *(v541 - 1);
          v542 = *v541;
          aBlock = v38;
          v545 = *v38->clientIdentity;
          v544 = *&v38->clientIdentity[8];

          if (v545 >= v544 >> 1)
          {
            sub_100026EF4((v544 > 1), v545 + 1, 1);
            v38 = aBlock;
          }

          *v38->clientIdentity = v545 + 1;
          v546 = v38 + 16 * v545;
          *(v546 + 4) = v543;
          *(v546 + 5) = v542;
          v541 += 48;
          --v539;
        }

        while (v539);
        v30 = v540;
      }

      if (qword_1009366E8 != -1)
      {
LABEL_115:
        swift_once();
      }

      v547 = type metadata accessor for Logger();
      sub_100006654(v547, qword_10094FB70);
      v548 = v606;
      v549 = Logger.logObject.getter();
      v550 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v549, v550))
      {
        v551 = swift_slowAlloc();
        v552 = swift_slowAlloc();
        v553 = swift_slowAlloc();
        aBlock = v553;
        *v551 = 138544130;
        v554 = [v548 identifier];
        *(v551 + 4) = v554;
        *v552 = v554;
        *(v551 + 12) = 1024;
        *(v551 + 14) = v616 & 1;
        *(v551 + 18) = 1024;
        *(v551 + 20) = v619 & 1;
        *(v551 + 24) = 2080;
        *(v551 + 26) = sub_10000668C(7104878, 0xE300000000000000, &aBlock);
        _os_log_impl(&_mh_execute_header, v549, v550, "RDAccountUtils: Finished updating account {accountID: %{public}@, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, error: %s}", v551, 0x22u);
        sub_1000050A4(v552, &unk_100938E70, &unk_100797230);

        sub_10000607C(v553);
      }

      v482 = v612;
      if (v34)
      {
        v631 = v548;
        v555 = v30;
        if (qword_100935D30 != -1)
        {
          swift_once();
        }

        v630 = qword_100974CC8;
        v556 = swift_allocObject();
        v557 = v609;
        *(v556 + 16) = 0;
        *(v556 + 24) = v557;
        *(v556 + 32) = v608;
        *(v556 + 40) = v616 & 1;
        *(v556 + 48) = v555;
        *(v556 + 56) = v619 & 1;
        v558 = v607;
        *(v556 + 64) = v607;
        v637 = sub_1006D4A80;
        v638 = v556;
        aBlock = _NSConcreteStackBlock;
        v634 = 1107296256;
        v635 = sub_100019200;
        v636 = &unk_1008FC418;
        v559 = _Block_copy(&aBlock);

        v629 = v558;
        v560 = v597;
        static DispatchQoS.unspecified.getter();
        v632 = &_swiftEmptyArrayStorage;
        sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
        v561 = v599;
        v562 = v602;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v559);
        (*(v601 + 8))(v561, v562);
        (*(v598 + 8))(v560, v600);

        v38, v563, v564, v565, v566, v567, v568, v569;

        v482 = v612;
      }

      else
      {
        v570 = v607;
        dispatch_group_leave(v607);

        v38, v571, v572, v573, v574, v575, v576, v577;
      }

      v481 = v610;
      goto LABEL_114;
    }

    v490 = objc_opt_self();
    v491 = v606;

    v492 = v607;
    v493 = [v490 daemonUserDefaults];
    v494 = [v493 acAccountIdentifiersToMigrateInactivatedCalDavData];

    if (v494)
    {
      v495 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v495 = &_swiftEmptyArrayStorage;
    }

    v498 = sub_1001A5660(v495);
    v495, v499, v500, v501, v502, v503, v504, v505;
    v632 = v498;
    v506 = v610;

    sub_100378434(&aBlock, v596, v506);
    v634, v507, v508, v509, v510, v511, v512, v513;
    v521 = [v490 daemonUserDefaults];
    v522 = v632;
    v523 = *v632->clientIdentity;
    if (v523)
    {
      v524 = sub_1003689CC(*v632->clientIdentity, 0);
      v522 = sub_1002791DC(&aBlock, &v524->clientIdentity[16], v523, v522);
      sub_10001B860(aBlock);
      if (v522 == v523)
      {
LABEL_94:
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v521 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

        if (qword_1009366E8 != -1)
        {
          swift_once();
        }

        v526 = type metadata accessor for Logger();
        sub_100006654(v526, qword_10094FB70);
        v527 = v610;

        v528 = Logger.logObject.getter();
        v529 = static os_log_type_t.default.getter();
        v527, v530, v531, v532, v533, v534, v535, v536;
        if (os_log_type_enabled(v528, v529))
        {
          v537 = swift_slowAlloc();
          v538 = swift_slowAlloc();
          aBlock = v538;
          *v537 = 136446210;
          *(v537 + 4) = sub_10000668C(v596, v527, &aBlock);
          _os_log_impl(&_mh_execute_header, v528, v529, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v537, 0xCu);
          sub_10000607C(v538);
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    v522, v514, v515, v516, v517, v518, v519, v520;
    goto LABEL_94;
  }

  LODWORD(v617) = 0;
  v616 = 0;
  v619 = 0;
  v33 = v631 + 2;
  v625 = &v629->clientIdentity[32];
  v622 = &v629->clientIdentity[16];
  storeController = v629->storeController;
  v593 = 20250728;
  v34 = 1 - v32;
  *&v31 = 136446210;
  v627 = v31;
  *&v31 = 136315650;
  v613 = v31;
  *&v31 = 136446722;
  v594 = v31;
  *&v31 = 136315906;
  v595 = v31;
  v35 = v630;
  while (1)
  {
    *&v640[13] = *(v33 + 29);
    v36 = v33[1];
    v639 = *v33;
    *v640 = v36;
    v37 = v640[24];
    v30 = *(&v36 + 1);
    v38 = *(&v639 + 1);
    v628 = v36;
    v629 = *&v640[16];
    v39 = v639;
    sub_1006D18E0(&v639, &aBlock);
    v40 = qword_1009366E8;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_100006654(v41, qword_10094FB70);

    v631 = v42;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v38, v45, v46, v47, v48, v49, v50, v51;
    if (os_log_type_enabled(v43, v44))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock = v53;
      *v52 = v627;
      *(v52 + 4) = sub_10000668C(v39, v38, &aBlock);
      _os_log_impl(&_mh_execute_header, v43, v44, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v52, 0xCu);
      sub_10000607C(v53);
      v35 = v630;
    }

    v54 = v626;
    UUID.init(uuidString:)();
    if ((*v625)(v54, 1, v35) == 1)
    {
      sub_1000050A4(v54, &unk_100939D90, "8\n\r");

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      v38, v57, v58, v59, v60, v61, v62, v63;
      if (os_log_type_enabled(v55, v56))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        aBlock = v65;
        *v64 = v627;
        *(v64 + 4) = sub_10000668C(v39, v38, &aBlock);
        _os_log_impl(&_mh_execute_header, v55, v56, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v64, 0xCu);
        sub_10000607C(v65);
        v35 = v630;
      }

      sub_1006D1918(&v639, v66, v67, v68, v69, v70, v71, v72);
      v30, v73, v74, v75, v76, v77, v78, v79;
LABEL_19:

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.error.getter();
      v38, v151, v152, v153, v154, v155, v156, v157;
      if (os_log_type_enabled(v149, v150))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        aBlock = v166;
        *v165 = v627;
        v167 = sub_10000668C(v39, v38, &aBlock);
        v38, v168, v169, v170, v171, v172, v173, v174;
        *(v165 + 4) = v167;
        _os_log_impl(&_mh_execute_header, v149, v150, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v165, 0xCu);
        sub_10000607C(v166);
        v35 = v630;

        if (!v34)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v38, v158, v159, v160, v161, v162, v163, v164;

        if (!v34)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_71;
    }

    v80 = v623;
    (*v622)(v623, v54, v35);
    v81 = objc_opt_self();
    v82 = UUID._bridgeToObjectiveC()().super.isa;
    v83 = [v81 objectIDWithUUID:v82];

    (*storeController)(v80, v35);
    if (!v83)
    {
      sub_1006D1918(&v639, v84, v85, v86, v87, v88, v89, v90);
      v30, v142, v143, v144, v145, v146, v147, v148;
      goto LABEL_19;
    }

    aBlock = 0;
    v91 = [v620 fetchAccountWithObjectID:v83 error:&aBlock];
    v624 = v83;
    if (!v91)
    {
      break;
    }

    v92 = aBlock;
    if (v640[25])
    {
      sub_1006D1918(&v639, v93, v94, v95, v96, v97, v98, v99);

      v100 = v91;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      v38, v103, v104, v105, v106, v107, v108, v109;
      v30, v110, v111, v112, v113, v114, v115, v116;
      if (os_log_type_enabled(v101, v102))
      {
        v124 = swift_slowAlloc();
        v629 = swift_slowAlloc();
        aBlock = v629;
        *v124 = v613;
        v125 = v100;
        v126 = sub_10000668C(v628, v30, &aBlock);
        v30, v127, v128, v129, v130, v131, v132, v133;
        *(v124 + 4) = v126;
        v100 = v125;
        *(v124 + 12) = 2082;
        v134 = sub_10000668C(v39, v38, &aBlock);
        v38, v135, v136, v137, v138, v139, v140, v141;
        *(v124 + 14) = v134;
        *(v124 + 22) = 2048;
        *(v124 + 24) = [v125 type];

        _os_log_impl(&_mh_execute_header, v101, v102, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v124, 0x20u);
        swift_arrayDestroy();

        v35 = v630;
      }

      else
      {
        v38, v117, v118, v119, v120, v121, v122, v123;
        v30, v257, v258, v259, v260, v261, v262, v263;
      }

      v38 = [v618 updateAccount:v100];
      [(RDXPCStorePerformer *)v38 removeFromStore];

      v264 = 1;
      if (!v34)
      {
        LODWORD(v617) = 1;
        v477 = &v641;
        goto LABEL_75;
      }

      v619 = 1;
      v616 = 1;
      LODWORD(v617) = 1;
      goto LABEL_71;
    }

    v197 = v91;
    v198 = [v197 type];
    if (v198 == v629)
    {

      v617 = v197;
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.default.getter();
      v38, v201, v202, v203, v204, v205, v206, v207;
      v30, v208, v209, v210, v211, v212, v213, v214;
      v215 = os_log_type_enabled(v199, v200);
      v615 = v91;
      if (v215)
      {
        v216 = swift_slowAlloc();
        v592 = swift_slowAlloc();
        aBlock = v592;
        *v216 = v613;
        *(v216 + 4) = sub_10000668C(v628, v30, &aBlock);
        *(v216 + 12) = 2082;
        *(v216 + 14) = sub_10000668C(v39, v38, &aBlock);
        *(v216 + 22) = 2048;
        v217 = v617;
        *(v216 + 24) = [(RDXPCStorePerformer *)v617 type];

        _os_log_impl(&_mh_execute_header, v199, v200, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v216, 0x20u);
        swift_arrayDestroy();

        v35 = v630;
      }

      else
      {
      }

      v316 = v617;
      v317 = [v618 updateAccount:v617];
      v318 = String._bridgeToObjectiveC()();
      v30, v319, v320, v321, v322, v323, v324, v325;
      [v317 setName:v318];

      goto LABEL_45;
    }

    sub_1006D1918(&v639, v265, v266, v267, v268, v269, v270, v271);

    v272 = v197;
    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.error.getter();
    v38, v275, v276, v277, v278, v279, v280, v281;
    v30, v282, v283, v284, v285, v286, v287, v288;
    if (os_log_type_enabled(v273, v274))
    {
      v296 = swift_slowAlloc();
      v615 = v273;
      v297 = v296;
      aBlock = swift_slowAlloc();
      *v297 = v595;
      v298 = sub_10000668C(v628, v30, &aBlock);
      v628 = v272;
      v299 = v298;
      v30, v300, v301, v302, v303, v304, v305, v306;
      *(v297 + 4) = v299;
      *(v297 + 12) = 2082;
      v307 = sub_10000668C(v39, v38, &aBlock);
      v38, v308, v309, v310, v311, v312, v313, v314;
      *(v297 + 14) = v307;
      *(v297 + 22) = 2048;
      v315 = v628;
      *(v297 + 24) = [v628 type];

      *(v297 + 32) = 2048;
      *(v297 + 34) = v629;
      v38 = v615;
      _os_log_impl(&_mh_execute_header, v615, v274, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v297, 0x2Au);
      swift_arrayDestroy();
      v35 = v630;

      goto LABEL_69;
    }

    v38, v289, v290, v291, v292, v293, v294, v295;
    v30, v326, v327, v328, v329, v330, v331, v332;

    if (!v34)
    {
      goto LABEL_73;
    }

LABEL_71:
    ++v34;
    v33 += 3;
    if (v34 == 1)
    {
      __break(1u);
      goto LABEL_115;
    }
  }

  v175 = aBlock;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v614 = 0;

  if (v640[25] == 1)
  {
    sub_1006D1918(&v639, v176, v177, v178, v179, v180, v181, v182);

    v30, v183, v184, v185, v186, v187, v188, v189;
    v38, v190, v191, v192, v193, v194, v195, v196;
    if (!v34)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  if ((v37 & 1) != 0 || (v218 = objc_allocWithZone(REMAccountTypeHost), v219 = [v218 initWithType:v629], v220 = objc_msgSend(v219, "isCloudKit"), v219, v220))
  {

    v228 = Logger.logObject.getter();
    v229 = static os_log_type_t.default.getter();
    v38, v230, v231, v232, v233, v234, v235, v236;
    v30, v237, v238, v239, v240, v241, v242, v243;
    v244 = os_log_type_enabled(v228, v229);
    v615 = 0;
    if (v244)
    {
      v245 = swift_slowAlloc();
      v617 = swift_slowAlloc();
      aBlock = v617;
      *v245 = v613;
      *(v245 + 4) = sub_10000668C(v628, v30, &aBlock);
      v616 = v229;
      *(v245 + 12) = 2082;
      *(v245 + 14) = sub_10000668C(v39, v38, &aBlock);
      *(v245 + 22) = 2082;
      v246 = REMAccountType.loggableDescription.getter();
      v248 = v247;
      v249 = sub_10000668C(v246, v247, &aBlock);
      v248, v250, v251, v252, v253, v254, v255, v256;
      *(v245 + 24) = v249;
      _os_log_impl(&_mh_execute_header, v228, v616, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v245, 0x20u);
      swift_arrayDestroy();

      v35 = v630;
    }

    v333 = String._bridgeToObjectiveC()();
    v30, v334, v335, v336, v337, v338, v339, v340;
    v30 = v629;
    v341 = [v618 __addAccountWithType:v629 name:v333];

    [v341 setObjectID:v624];
    v342 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v30];
    v343 = [v342 isCloudKit];

    v344 = v341;
    v317 = v344;
    if (v343)
    {
      [v344 setPersistenceCloudSchemaVersion:v593];
    }

    else
    {
      v345 = String._bridgeToObjectiveC()();
      [v317 setExternalIdentifier:v345];
    }

    v616 = 1;
LABEL_45:
    v346 = [v317 inactive];

    if (v37 == v346)
    {
      v361 = v317;
      [v361 setInactive:v37 ^ 1u];

      v362 = Logger.logObject.getter();
      v363 = static os_log_type_t.default.getter();
      v38, v364, v365, v366, v367, v368, v369, v370;

      if (os_log_type_enabled(v362, v363))
      {
        v30 = swift_slowAlloc();
        v628 = swift_slowAlloc();
        aBlock = v628;
        *v30 = v594;
        [v361 inactive];
        v378 = Bool.yesno.getter();
        v380 = v379;
        v381 = sub_10000668C(v378, v379, &aBlock);
        v380, v382, v383, v384, v385, v386, v387, v388;
        *(v30 + 4) = v381;
        v35 = v630;
        *(v30 + 6) = 2082;
        v389 = sub_10000668C(v39, v38, &aBlock);
        v38, v390, v391, v392, v393, v394, v395, v396;
        *(v30 + 14) = v389;
        *(v30 + 11) = 2082;
        v397 = REMAccountType.loggableDescription.getter();
        v399 = v398;
        v400 = sub_10000668C(v397, v398, &aBlock);
        v399, v401, v402, v403, v404, v405, v406, v407;
        *(v30 + 3) = v400;
        swift_arrayDestroy();
      }

      else
      {
        v38, v371, v372, v373, v374, v375, v376, v377;
      }
    }

    else
    {
      v38, v347, v348, v349, v350, v351, v352, v353;
    }

    v408 = v640[26];
    if (v640[26] != 2)
    {
      if ([v317 didChooseToMigrateLocally])
      {
        v409 = [v317 didChooseToMigrate];
        if ((v408 & 1) == 0)
        {
          if (v409)
          {
            [v317 setDidChooseToMigrateLocally:0];
          }
        }
      }

      [v317 setDidChooseToMigrate:v408 & 1];
    }

    v38 = v640[28];
    if (v640[27] != 2)
    {
      [v317 setDidFinishMigration:v640[27] & 1];
    }

    sub_1006D1918(&v639, v354, v355, v356, v357, v358, v359, v360);
    if (v38 != 2)
    {
      [v317 setDebugSyncDisabled:v38 & 1];
    }

    if (v619)
    {

      LODWORD(v617) = 1;
      v619 = 1;
      if (!v34)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v410 = [v317 changedKeys];
      v411 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = *(v411 + 16);
      v411, v412, v413, v414, v415, v416, v417, v418;
      LODWORD(v617) = v38 != 0;
      v619 = v617;
      if (!v34)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_71;
  }

  sub_1006D1918(&v639, v221, v222, v223, v224, v225, v226, v227);

  v315 = Logger.logObject.getter();
  v419 = static os_log_type_t.info.getter();
  v38, v420, v421, v422, v423, v424, v425, v426;
  v30, v427, v428, v429, v430, v431, v432, v433;
  if (os_log_type_enabled(v315, v419))
  {
    v441 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v441 = v613;
    v442 = sub_10000668C(v628, v30, &aBlock);
    v628 = v315;
    v443 = v442;
    v30, v444, v445, v446, v447, v448, v449, v450;
    *(v441 + 4) = v443;
    *(v441 + 12) = 2082;
    v451 = sub_10000668C(v39, v38, &aBlock);
    v38, v452, v453, v454, v455, v456, v457, v458;
    *(v441 + 14) = v451;
    *(v441 + 22) = 2082;
    v459 = REMAccountType.loggableDescription.getter();
    v461 = v460;
    v462 = sub_10000668C(v459, v460, &aBlock);
    v461, v463, v464, v465, v466, v467, v468, v469;
    *(v441 + 24) = v462;
    v38 = v628;
    _os_log_impl(&_mh_execute_header, v628, v419, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v441, 0x20u);
    swift_arrayDestroy();
    v35 = v630;

    goto LABEL_70;
  }

  v38, v434, v435, v436, v437, v438, v439, v440;
  v30, v470, v471, v472, v473, v474, v475, v476;
LABEL_69:

LABEL_70:
  if (v34)
  {
    goto LABEL_71;
  }

LABEL_73:
  if ((v617 & 1) == 0)
  {
    a6 = v612;
    v30 = v603;
    LODWORD(v32) = v619;
    v488 = v616;
    goto LABEL_83;
  }

  v264 = v619;
  v477 = &v642;
LABEL_75:
  *(v477 - 64) = v264;
LABEL_76:
  v478 = Logger.logObject.getter();
  v479 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v478, v479))
  {
    v480 = swift_slowAlloc();
    *v480 = 0;
    _os_log_impl(&_mh_execute_header, v478, v479, "UpdateAccountsWithAccountInfos: Saving account object changes", v480, 2u);
  }

  v481 = v610;
  v482 = v612;
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v483 = qword_100974CC8;
  v484 = swift_allocObject();
  v485 = v604;
  *(v484 + 16) = sub_1006D546C;
  *(v484 + 24) = v485;
  *(v484 + 32) = v616 & 1;
  *(v484 + 33) = v617 & 1;
  v637 = sub_1006D5468;
  v638 = v484;
  aBlock = _NSConcreteStackBlock;
  v634 = 1107296256;
  v635 = sub_100042968;
  v636 = &unk_1008FC468;
  v486 = _Block_copy(&aBlock);

  v487 = v618;
  [v618 saveWithQueue:v483 completion:v486];

  _Block_release(v486);

LABEL_114:

  v482, v578, v579, v580, v581, v582, v583, v584;
  v481, v585, v586, v587, v588, v589, v590, v591;
}