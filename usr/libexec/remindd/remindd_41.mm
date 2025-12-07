uint64_t sub_1003D3C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1003D3C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = *(a1 + v7 + 8);
  if (v10 >> 60 != 15)
  {
    v11 = v9[1];
    if (v11 >> 60 != 15)
    {
      v12 = *v8;
      *v8 = *v9;
      v8[1] = v11;
      sub_10001BBA0(v12, v10);
      return a1;
    }

    sub_1001531B8(v8);
  }

  *v8 = *v9;
  return a1;
}

uint64_t type metadata accessor for RDSavedURLAttachment(uint64_t a1)
{
  result = qword_1009455C8;
  if (!qword_1009455C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D3DC4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1003D3E58(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100945618, &qword_1007A64E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v13[-v8];
  sub_10000F61C(a1, a1[3]);
  sub_1003D465C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for URL();
  sub_1003D4770(&qword_100945620, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for RDSavedURLAttachment(0) + 20));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 1;
    sub_1001CB4B8(v14, v11);
    sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003D4024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for URL();
  v27 = *(v30 - 8);
  __chkstk_darwin(v30, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100945600, &qword_1007A64D8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  __chkstk_darwin(v7, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for RDSavedURLAttachment(0);
  __chkstk_darwin(v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F61C(a1, a1[3]);
  sub_1003D465C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v25 = v12;
  v16 = v15;
  v17 = v27;
  LOBYTE(v31) = 0;
  sub_1003D4770(&qword_100945610, &protocol conformance descriptor for URL);
  v18 = v30;
  v19 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v17 + 32);
  v24 = v16;
  v20(v16, v6, v18);
  v32 = 1;
  sub_1000318F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 8))(v11, v19);
  v21 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_1003D46B0(v21, v26);
  sub_10000607C(a1);
  return sub_1003D4714(v21);
}

uint64_t sub_1003D4370()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 7107189;
  }
}

void sub_1003D43A4(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1003D4480(uint64_t a1)
{
  v2 = sub_1003D465C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003D44BC(uint64_t a1)
{
  v2 = sub_1003D465C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1003D452C(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for RDSavedURLAttachment(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_1001CB4B8(v6, v5);
      sub_1001CB4B8(v9, v8);
      sub_100031A14(v6, v5);
      return 1;
    }

    goto LABEL_6;
  }

  if (v8 >> 60 == 15)
  {
LABEL_6:
    sub_1001CB4B8(v6, v5);
    sub_1001CB4B8(v9, v8);
    sub_100031A14(v6, v5);
    sub_100031A14(v9, v8);
    return 0;
  }

  sub_1001CB4B8(v6, v5);
  sub_1001CB4B8(v9, v8);
  v11 = sub_1001CA5EC(v6, v5, v9, v8);
  sub_100031A14(v9, v8);
  sub_100031A14(v6, v5);
  return v11;
}

unint64_t sub_1003D465C()
{
  result = qword_100945608;
  if (!qword_100945608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945608);
  }

  return result;
}

uint64_t sub_1003D46B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedURLAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D4714(uint64_t a1)
{
  v2 = type metadata accessor for RDSavedURLAttachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D4770(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003D47C8()
{
  result = qword_100945628;
  if (!qword_100945628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945628);
  }

  return result;
}

unint64_t sub_1003D4820()
{
  result = qword_100945630;
  if (!qword_100945630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945630);
  }

  return result;
}

unint64_t sub_1003D4878()
{
  result = qword_100945638;
  if (!qword_100945638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945638);
  }

  return result;
}

uint64_t sub_1003D48CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945640);
  v1 = sub_100006654(v0, qword_100945640);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003D4994(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3, v4);
  if (!*(*(v1 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier) + 16))
  {
    return 0;
  }

  v5 = sub_1003D4C88(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1003D4D74(v5, v6);
  v9 = v8;
  v7, v8, v10, v11, v12, v13, v14, v15;
  if (!v9)
  {
    return 0;
  }

  v9, v16, v17, v18, v19, v20, v21, v22;
  return 1;
}

NSObject *sub_1003D4C88(uint64_t a1)
{
  result = sub_1003D6E54(a1);
  if (!v1)
  {
    v3 = result;
    v4 = [result versionIdentifiers];
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10031ECC4(v5, v14);
    v5, v6, v7, v8, v9, v10, v11, v12;

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1000050A4(v14, &qword_100945728, &unk_1007A6670);
      return 0;
    }
  }

  return result;
}

void sub_1003D4D74(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers);
  v4 = *(v3 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v30 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier;
    v9 = (v3 + 40);
    v10 = v4 - 1;
    while (1)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      if (v8)
      {
        v13 = *(v31 + v30);
        if (*(v13 + 16))
        {

          sub_100005F4C(v11, v12);
          v15 = v14;
          v13, v14, v16, v17, v18, v19, v20, v21;
          if (v15)
          {
            return;
          }

          v12, v22, v23, v24, v25, v26, v27, v28;
        }
      }

      else
      {
        v29 = v11 == a1 && v12 == a2;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v10 == v7)
          {
            return;
          }

          v8 = 0;
          goto LABEL_3;
        }
      }

      if (v10 == v7)
      {
        return;
      }

      v8 = 1;
LABEL_3:
      ++v7;
      v9 += 2;
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }
    }
  }
}

void sub_1003D4FA8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char *a3, NSObject *a4)
{
  v263 = a3;
  v264 = a4;
  v269 = a2;
  ObjectType = swift_getObjectType();
  v272 = type metadata accessor for Date();
  v268 = *(v272 - 8);
  __chkstk_darwin(v272, v6);
  v265 = v251 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v267 = v251 - v10;
  __chkstk_darwin(v11, v12);
  v270 = v251 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v266 = (v251 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18, v19);
  v21 = v251 - v20;
  v24 = __chkstk_darwin(v22, v23);
  v26 = v251 - v25;
  v27 = v15 + 16;
  v28 = *(v15 + 16);
  v273 = a1;
  v28(v251 - v25, a1, v14, v24);
  v29 = type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator.BabysitTarget(0);
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtCC7remindd47RDStagedLightweightCoreDataMigrationCoordinatorP33_D88389F778BE955B340162F613733C4913BabysitTarget_crashDetectedAnalyticsEventName];
  *v31 = 0xD00000000000004FLL;
  *(v31 + 1) = 0x80000001007F7260;
  (v28)(&v30[OBJC_IVAR____TtCC7remindd47RDStagedLightweightCoreDataMigrationCoordinatorP33_D88389F778BE955B340162F613733C4913BabysitTarget_storeURL], v26, v14);
  v279.receiver = v30;
  v279.super_class = v29;
  v32 = objc_msgSendSuper2(&v279, "init");
  v35 = *(v15 + 8);
  v33 = v15 + 8;
  v34 = v35;
  v35(v26, v14);
  v36 = sub_1003D856C();

  if (v4)
  {
    return;
  }

  v37 = v21;
  v256 = v28;
  v257 = v27;
  v258 = v34;
  v259 = v33;
  v39 = v272;
  v38 = v273;
  v40 = sub_1003D4C88(v273);
  v42 = v41;
  if (!v41)
  {

    return;
  }

  v255 = v40;
  v254 = 0;
  if (qword_100936000 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = sub_100006654(v43, qword_100945640);
  v45 = v37;
  v256(v37, v38, v14);
  v46 = v269;

  v47 = v271;

  v251[1] = v44;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v46, v50, v51, v52, v53, v54, v55, v56;
  v42, v57, v58, v59, v60, v61, v62, v63;
  v261 = v47;

  LODWORD(v260) = v49;
  v271 = v48;
  v64 = os_log_type_enabled(v48, v49);
  v65 = v270;
  v66 = v258;
  if (v64)
  {
    v67 = v14;
    v68 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    v277 = v252;
    *v68 = 136446978;
    sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v66(v45, v67);
    v72 = sub_10000668C(v69, v71, &v277);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v68 + 4) = v72;
    *(v68 + 12) = 2082;
    v80 = v261;
    *(v68 + 14) = sub_10000668C(*&v261[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], *&v261[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8], &v277);
    *(v68 + 22) = 2082;
    v81 = v255;
    *(v68 + 24) = sub_10000668C(v255, v42, &v277);
    *(v68 + 32) = 2080;
    p_super = &v269->super;
    sub_1000F5104(&unk_100945700, &qword_1007A6660);
    v82 = Optional.descriptionOrNil.getter();
    v84 = v83;
    v85 = sub_10000668C(v82, v83, &v277);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v68 + 34) = v85;
    v65 = v270;
    v93 = v271;
    _os_log_impl(&_mh_execute_header, v271, v260, "Will perform staged lightweight migration {storeURL: %{public}s, modelName: %{public}s, initialVersionIdentifier: %{public}s, persistentStoreDescriptionOptionsOverride: %s}", v68, 0x2Au);
    swift_arrayDestroy();

    v14 = v67;
    v39 = v272;
  }

  else
  {

    v66(v45, v14);
    v81 = v255;
    v80 = v261;
  }

  Date.init()();
  v277 = v81;
  v278 = v42;
  v94 = *&v80[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers];
  v96 = (v94 + 16);
  v95 = *(v94 + 16);
  v252 = v36;
  v260 = (v94 + 16);
  v253 = v14;
  if (!v95)
  {
    v149 = v266;
    v147 = v39;
    v256(v266, v273, v14);
LABEL_41:
    v151 = v267;
    v150 = v268;
    (*(v268 + 16))(v267, v65, v147);
    v152 = v261;
    v153 = v65;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();
    v271 = v152;

    LODWORD(v273) = v155;
    if (os_log_type_enabled(v154, v155))
    {
      v269 = v154;
      v266 = v42;
      v156 = swift_slowAlloc();
      v157 = v253;
      v158 = v156;
      v274 = swift_slowAlloc();
      *v158 = 136446978;
      sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v258(v149, v157);
      v162 = sub_10000668C(v159, v161, &v274);
      v161, v163, v164, v165, v166, v167, v168, v169;
      *(v158 + 4) = v162;
      *(v158 + 12) = 2082;
      *(v158 + 14) = sub_10000668C(*(&v271->isa + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName), *(&v271[1].isa + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName), &v274);
      *(v158 + 22) = 2082;
      if (*v260)
      {
        v170 = &v260[2 * *v260];
        v171 = *v170;
        v172 = v170[1];
      }

      else
      {
        v171 = 0;
        v172 = 0;
      }

      v182 = v265;
      v183 = v273;
      p_super = v171;
      v276 = v172;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v184 = Optional.descriptionOrNil.getter();
      v186 = v185;
      v172, v185, v187, v188, v189, v190, v191, v192;
      v193 = sub_10000668C(v184, v186, &v274);
      v186, v194, v195, v196, v197, v198, v199, v200;
      *(v158 + 24) = v193;
      *(v158 + 32) = 2048;
      Date.init()();
      v201 = v267;
      Date.timeIntervalSince(_:)();
      v203 = v202;
      v204 = *(v268 + 8);
      v204(v182, v147);
      v204(v201, v147);
      *(v158 + 34) = v203;
      v205 = v183;
      v206 = &v269->super;
      _os_log_impl(&_mh_execute_header, &v269->super, v205, "Did perform staged lightweight migration {storeURL: %{public}s, modelName: %{public}s, finalVersionIdentifier: %{public}s, elapsedSeconds: %f}", v158, 0x2Au);
      swift_arrayDestroy();

      v204(v270, v147);
      v181 = v266;
    }

    else
    {

      v173 = *(v150 + 8);
      v173(v151, v147);
      v258(v149, v253);
      v173(v153, v147);
      v181 = v42;
    }

    goto LABEL_47;
  }

  v97 = v80;
  v271 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier;

  v105 = v255;
  v106 = (v94 + 40);
  v107 = v42;
  v251[0] = v94 + 40;
  while (2)
  {
    v108 = 0;
    v109 = 0;
    v110 = v95 - 1;
    v42 = v106;
    v111 = v105;
    v112 = v107;
    v113 = v97;
    while (1)
    {
      v114 = *&v42[-1].shareRecordIDToRootRecordIDLock[2];
      isa = v42->super.isa;
      if (v109)
      {
        break;
      }

      if (v114 != v105 || isa != v107)
      {
        v133 = v113;
        v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v113 = v133;
        v107 = v112;
        v105 = v111;
        if ((v134 & 1) == 0)
        {
          if (v110 == v108)
          {
LABEL_29:
            v42 = v107;
            v114 = v105;
            goto LABEL_30;
          }

          v109 = 0;
          goto LABEL_12;
        }
      }

LABEL_22:
      if (v110 == v108)
      {
        goto LABEL_29;
      }

      v109 = 1;
LABEL_12:
      ++v108;
      v42 = (v42 + 16);
      if (v108 >= *v96)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

    v116 = *(&v271->isa + v113);
    if (!*(v116 + 16))
    {
      goto LABEL_22;
    }

    sub_100005F4C(v114, isa);
    v118 = v117;
    v116, v117, v119, v120, v121, v122, v123, v124;
    if ((v118 & 1) == 0)
    {
      isa, v125, v126, v127, v128, v129, v130, v131;
      v96 = v260;
      v113 = v261;
      v105 = v111;
      v107 = v112;
      goto LABEL_22;
    }

    v112, v125, v126, v127, v128, v129, v130, v131;
    v111 = objc_autoreleasePoolPush();
    v97 = v261;
    v135 = v254;
    sub_1003D5D6C(v261, v114, isa, v273, v269, v263, v264, &v277, ObjectType, &p_super);
    v42 = isa;
    if (v135)
    {
LABEL_56:
      v42, v98, v99, v100, v101, v102, v103, v104;
      objc_autoreleasePoolPop(v111);

      (*(v268 + 8))(v270, v272);
      v112, v244, v245, v246, v247, v248, v249, v250;
      return;
    }

    v254 = 0;
    objc_autoreleasePoolPop(v111);

    v112, v136, v137, v138, v139, v140, v141, v142;
    v277 = v114;
    v278 = isa;
    v105 = v114;
    v107 = isa;
    v96 = v260;
    v95 = *v260;
    v106 = v251[0];
    if (*v260)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v42, v98, v99, v100, v101, v102, v103, v104;
  if (!*v96)
  {
    v147 = v272;
    v65 = v270;
    goto LABEL_39;
  }

  v143 = &v96[2 * *v96];
  v144 = *v143;
  v145 = v143[1];
  v146 = v114 == *v143 && v42 == v145;
  v147 = v272;
  v65 = v270;
  if (v146 || (v148 = v42, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_39:
    v149 = v266;
LABEL_40:
    v256(v149, v273, v253);
    goto LABEL_41;
  }

  v207 = objc_autoreleasePoolPush();
  v208 = v261;
  v209 = sub_1003D6B24(v144, v145);
  if (v209)
  {
    v217 = v209;
    v145, v210, v211, v212, v213, v214, v215, v216;
    v218 = v254;
    sub_1003D8770(v273, v217, v269);
    v254 = v218;
    v220 = v252;
    if (!v218)
    {
      v243 = v219;

      objc_autoreleasePoolPop(v207);
      v149 = v266;
      v65 = v270;
      goto LABEL_40;
    }
  }

  else
  {
    v221 = objc_opt_self();
    p_super = 0;
    v276 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v222._countAndFlagsBits = 0xD00000000000002CLL;
    v222._object = 0x80000001007F72B0;
    String.append(_:)(v222);
    String.append(_:)(*&v208[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName]);
    v223._object = 0x80000001007F72E0;
    v223._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v223);
    v224._countAndFlagsBits = v144;
    v224._object = v145;
    String.append(_:)(v224);
    v145, v225, v226, v227, v228, v229, v230, v231;
    v232._countAndFlagsBits = 125;
    v232._object = 0xE100000000000000;
    String.append(_:)(v232);
    v233 = v276;
    v234 = String._bridgeToObjectiveC()();
    v233, v235, v236, v237, v238, v239, v240, v241;
    v147 = v272;
    v242 = [v221 internalErrorWithDebugDescription:v234];

    v254 = v242;
    swift_willThrow();
    v220 = v252;
  }

  objc_autoreleasePoolPop(v207);

  (*(v268 + 8))(v270, v147);
  v181 = v148;
LABEL_47:
  v181, v174, v175, v176, v177, v178, v179, v180;
}

void sub_1003D5D6C(char *a1, id a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, uint64_t a5, char *a6, NSObject *a7, uint64_t *a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v196 = a8;
  v197 = a6;
  v199 = a7;
  v17 = type metadata accessor for Date();
  v200 = *(v17 - 8);
  v201 = v17;
  __chkstk_darwin(v17, v18);
  v198 = (&v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20, v21);
  v202 = &v184 - v22;
  v203 = type metadata accessor for URL();
  v205 = *(v203 - 8);
  __chkstk_darwin(v203, v23);
  v204 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v28 = (&v184 - v27);
  __chkstk_darwin(v29, v30);
  v32 = (&v184 - v31);
  v33 = sub_1003D6B24(a2, a3);
  if (!v33)
  {
    v36 = objc_opt_self();
    v206 = 0;
    v207 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v37._countAndFlagsBits = 0xD00000000000002CLL;
    v37._object = 0x80000001007F72B0;
    String.append(_:)(v37);
    String.append(_:)(*&a1[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName]);
    v38._object = 0x80000001007F72E0;
    v38._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v38);
    v39._countAndFlagsBits = a2;
    v39._object = a3;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 125;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41 = v207;
    v42 = String._bridgeToObjectiveC()();
    v41, v43, v44, v45, v46, v47, v48, v49;
    v11 = [v36 internalErrorWithDebugDescription:v42];

    swift_willThrow();
    goto LABEL_5;
  }

  v34 = v33;
  sub_1003D8770(a4, v33, a5);
  if (v10)
  {

LABEL_5:
    *a10 = v11;
    return;
  }

  v50 = v35;
  v194 = a4;
  v195 = v34;
  v51 = *&a1[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier];
  if (!*(v51 + 16))
  {
LABEL_12:
    a1 = v204;
    goto LABEL_13;
  }

  v193 = v35;
  v52 = sub_100005F4C(a2, a3);
  if ((v53 & 1) == 0)
  {
    v50 = v193;
    goto LABEL_12;
  }

  v54 = v52;
  v55 = *(v51 + 56);
  v56 = swift_allocObject();
  v57 = *(v55 + 16 * v54);
  v192 = v56;
  *(v56 + 16) = v57;
  v58 = qword_100936000;

  if (v58 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v59 = type metadata accessor for Logger();
    v60 = sub_100006654(v59, qword_100945640);
    v61 = *(v205 + 16);
    v62 = v203;
    v189 = v205 + 16;
    v187 = v61;
    v61(v32, v194, v203);
    v63 = a1;

    v190 = v60;
    v64 = v63;
    v65 = Logger.logObject.getter();
    LODWORD(v63) = static os_log_type_t.default.getter();
    a3, v66, v67, v68, v69, v70, v71, v72;

    v191 = v63;
    v73 = os_log_type_enabled(v65, v63);
    v186 = v64;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v184 = v65;
      v75 = v74;
      v185 = swift_slowAlloc();
      v206 = v185;
      *v75 = 136446722;
      sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
      v76 = v64;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v62;
      v80 = v79;
      v188 = *(v205 + 8);
      v188(v32, v78);
      v81 = sub_10000668C(v77, v80, &v206);
      v80, v82, v83, v84, v85, v86, v87, v88;
      *(v75 + 4) = v81;
      *(v75 + 12) = 2082;
      *(v75 + 14) = sub_10000668C(*&v76[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], *&v76[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8], &v206);
      *(v75 + 22) = 2082;
      *(v75 + 24) = sub_10000668C(a2, a3, &v206);
      v89 = v184;
      _os_log_impl(&_mh_execute_header, v184, v191, "Will perform post-migration data update {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s}", v75, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v188 = *(v205 + 8);
      v188(v32, v62);
    }

    v140 = v192;
    v50 = v193;
    Date.init()();
    v141 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v141 setPersistentStoreCoordinator:v50];
    v142 = v199 ? String._bridgeToObjectiveC()() : 0;
    [v141 setTransactionAuthor:v142];

    __chkstk_darwin(v143, v144);
    *(&v184 - 4) = sub_1003D9980;
    *(&v184 - 3) = v140;
    *(&v184 - 2) = v141;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v199 = v141;
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v146 = v145;
    v147 = v203;
    v187(v28, v194, v203);
    v148 = v186;

    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();
    a3, v151, v152, v153, v154, v155, v156, v157;

    if (os_log_type_enabled(v149, v150))
    {
      v158 = swift_slowAlloc();
      v190 = v148;
      v159 = v158;
      v197 = swift_slowAlloc();
      v206 = v197;
      *v159 = 136446978;
      sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
      v191 = v150;
      v160 = dispatch thunk of CustomStringConvertible.description.getter();
      v162 = v161;
      v188(v28, v147);
      v163 = sub_10000668C(v160, v162, &v206);
      v164 = v162;
      v50 = v193;
      v164, v165, v166, v167, v168, v169, v170, v171;
      *(v159 + 4) = v163;
      *(v159 + 12) = 2082;
      *(v159 + 14) = sub_10000668C(*&v190[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], *&v190[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8], &v206);
      *(v159 + 22) = 2082;
      *(v159 + 24) = sub_10000668C(a2, a3, &v206);
      *(v159 + 32) = 2048;
      *(v159 + 34) = v146;
      _os_log_impl(&_mh_execute_header, v149, v191, "Did perform post-migration data update {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s, elapsedSeconds: %f}", v159, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v188(v28, v147);
    }

    a1 = v204;
    v172 = objc_autoreleasePoolPush();
    v173 = *v196;
    v28 = v196[1];

    v32 = v198;
    v174.n128_u64[0] = v146;
    sub_1003D8A70(v194, v173, v28, a2, a3, v198, v174);
    v28, v175, v176, v177, v178, v179, v180, v181;
    objc_autoreleasePoolPop(v172);

    v182 = v201;
    v183 = *(v200 + 8);
    v183(v32, v201);
    v183(v202, v182);
LABEL_13:
    a2 = [v50 persistentStores];
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v90 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    a3 = v205;
    if (v90 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_34:
        v90, v91, v92, v93, v94, v95, v96, v97;

        goto LABEL_35;
      }
    }

    else if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    if ((v90 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v98 = *(v90 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
  v106 = v98;
  v90, v99, v100, v101, v102, v103, v104, v105;
  v206 = 0;
  if ([v50 removePersistentStore:v106 error:&v206])
  {
    v107 = v206;

LABEL_35:
    return;
  }

  v108 = v206;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100936000 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_100006654(v109, qword_100945640);
  v110 = a1;
  v111 = a1;
  v112 = v203;
  (*a3->clientIdentity)(v110, v194, v203);
  swift_errorRetain();
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v193 = v50;
    v116 = v115;
    v204 = swift_slowAlloc();
    v206 = v204;
    *v116 = 136446466;
    sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = a3;
    v120 = v119;
    (*(v118 + 8))(v111, v112);
    v121 = sub_10000668C(v117, v120, &v206);
    v120, v122, v123, v124, v125, v126, v127, v128;
    *(v116 + 4) = v121;
    *(v116 + 12) = 2082;
    swift_getErrorValue();
    v129 = Error.rem_errorDescription.getter();
    v131 = v130;
    v132 = sub_10000668C(v129, v130, &v206);
    v131, v133, v134, v135, v136, v137, v138, v139;
    *(v116 + 14) = v132;
    _os_log_impl(&_mh_execute_header, v113, v114, "Failed to remove persistent store from persistent store coordinator after staged migration {storeURL: %{public}s, error: %{public}s}", v116, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*a3->storeController)(v111, v112);
  }
}

void *sub_1003D6B24(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_loadedManagedObjectModelByVersionIdentifier;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_100005F4C(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10;
  }

  else
  {
    swift_endAccess();
    sub_1000060C8(0, &qword_100945720, NSManagedObjectModel_ptr);
    v10 = static NSManagedObjectModel.rem_loadManagedObjectModel(withModelName:versionIdentifier:from:)();
    swift_beginAccess();
    v12 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1002C9444(v10, a1, a2, isUniquelyReferenced_nonNull_native);
    a2, v14, v15, v16, v17, v18, v19, v20;
    *(v3 + v6) = v22;
    swift_endAccess();
  }

  return v10;
}

NSObject *sub_1003D6E54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v269 = *(v4 - 8);
  v270 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v265 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v274 = &v265 - v10;
  __chkstk_darwin(v11, v12);
  v14 = &v265 - v13;
  v15 = type metadata accessor for NSPersistentStore.StoreType();
  isa = v15[-1].isa;
  __chkstk_darwin(v15, v17);
  v19 = &v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_100945710, NSPersistentStoreCoordinator_ptr);
  static NSPersistentStore.StoreType.sqlite.getter();
  v20 = a1;
  v21 = v282;
  v22 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  v273 = v21;
  if (v21)
  {
    return (*(isa + 1))(v19, v15);
  }

  v24 = v22;
  v267 = v14;
  v266 = v7;
  v268 = a1;
  (*(isa + 1))(v19, v15);
  v282 = *&v2[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers];
  v32 = *(v282 + 16);
  v33 = v24;
  if (v32)
  {
    v34 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_loadedManagedObjectModelByVersionIdentifier;
    v278 = &v2[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName];
    v277 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_bundle;
    v281 = v282 + 32;
    v276 = NSStoreModelVersionIdentifiersKey;
    v279 = v24;
    while (1)
    {
      if (v32 > *(v282 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:

        (*(v34 + 8))(v20, v7);
        goto LABEL_57;
      }

      --v32;
      v42 = (v281 + 16 * v32);
      v7 = *v42;
      v20 = v42[1];
      swift_beginAccess();
      v43 = *&v2[v34];
      v44 = *(v43 + 16);

      if (v44 && (v45 = sub_100005F4C(v7, v20), (v46 & 1) != 0))
      {
        v15 = *(*(v43 + 56) + 8 * v45);
        swift_endAccess();
        v47 = v15;
        if (!v15)
        {
          goto LABEL_7;
        }

LABEL_25:
        a1 = Dictionary._bridgeToObjectiveC()().super.isa;
        v70 = [v15 isConfiguration:0 compatibleWithStoreMetadata:a1];

        if (v70)
        {
          v280 = v15;
          v33, v71, v72, v73, v74, v75, v76, v77;
          a1 = v267;
          if (qword_100936000 == -1)
          {
LABEL_40:
            v145 = type metadata accessor for Logger();
            sub_100006654(v145, qword_100945640);
            v146 = v269;
            v147 = v270;
            (*(v269 + 16))(a1, v268, v270);

            v148 = v2;
            v149 = Logger.logObject.getter();
            v150 = static os_log_type_t.default.getter();
            v20, v151, v152, v153, v154, v155, v156, v157;

            if (os_log_type_enabled(v149, v150))
            {
              v158 = swift_slowAlloc();
              v282 = swift_slowAlloc();
              *&v285[0] = v282;
              *v158 = 136446722;
              sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
              v159 = dispatch thunk of CustomStringConvertible.description.getter();
              v271 = v7;
              v161 = v160;
              (*(v146 + 8))(a1, v147);
              v162 = sub_10000668C(v159, v161, v285);
              v161, v163, v164, v165, v166, v167, v168, v169;
              *(v158 + 4) = v162;
              *(v158 + 12) = 2082;
              *(v158 + 14) = sub_10000668C(*v278, v278[1], v285);
              *(v158 + 22) = 2082;
              v170 = sub_10000668C(v271, v20, v285);
              v20, v171, v172, v173, v174, v175, v176, v177;
              *(v158 + 24) = v170;
              _os_log_impl(&_mh_execute_header, v149, v150, "Found compatible managed object model of store {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s}", v158, 0x20u);
              goto LABEL_42;
            }

            v20, v178, v179, v180, v181, v182, v183, v184;
            (*(v146 + 8))(a1, v147);
            return v280;
          }

LABEL_59:
          swift_once();
          goto LABEL_40;
        }

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(v33 + 16))
        {
          v79, v79, v80, v81, v82, v83, v84, v85;
LABEL_6:

          goto LABEL_7;
        }

        v280 = v15;
        v86 = v79;
        a1 = sub_100005F4C(v78, v79);
        v88 = v87;
        v89 = v86;
        v15 = v280;
        v89, v87, v90, v91, v92, v93, v94, v95;
        if ((v88 & 1) == 0)
        {
          goto LABEL_6;
        }

        sub_100005EF0(*(v33 + 56) + 32 * a1, v285);
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        if (swift_dynamicCast())
        {
          v271 = v7;
          v103 = v283;
          v104 = [v15 versionIdentifiers];
          v275 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v112 = v103[2];
          if (v112)
          {
            v287 = &_swiftEmptyArrayStorage;
            sub_100253B74(0, v112, 0);
            v113 = v287;
            v272 = v103;
            v114 = v103 + 5;
            do
            {
              v115 = *v114;
              v283 = *(v114 - 1);
              v284 = v115;

              swift_dynamicCast();
              v287 = v113;
              v124 = *v113->clientIdentity;
              v123 = *&v113->clientIdentity[8];
              if (v124 >= v123 >> 1)
              {
                sub_100253B74((v123 > 1), v124 + 1, 1);
                v113 = v287;
              }

              *v113->clientIdentity = v124 + 1;
              v125 = v113 + 40 * v124;
              v126 = v285[0];
              v127 = v285[1];
              *(v125 + 8) = v286;
              *(v125 + 2) = v126;
              *(v125 + 3) = v127;
              v114 += 2;
              --v112;
            }

            while (v112);
            v272, v116, v117, v118, v119, v120, v121, v122;
            v33 = v279;
            v15 = v280;
          }

          else
          {
            v103, v105, v106, v107, v108, v109, v110, v111;
            v113 = &_swiftEmptyArrayStorage;
          }

          v128 = v275;
          a1 = sub_1003D82EC(v113, v275);
          v113, v129, v130, v131, v132, v133, v134, v135;
          v128, v136, v137, v138, v139, v140, v141, v142;
          v7 = v274;
          if ((a1 & 1) == 0)
          {
            v33, v96, v97, v98, v99, v100, v101, v102;
            if (qword_100936000 != -1)
            {
              swift_once();
            }

            v185 = type metadata accessor for Logger();
            sub_100006654(v185, qword_100945640);
            v186 = v269;
            v187 = v270;
            (*(v269 + 16))(v7, v268, v270);

            v188 = v2;
            v149 = Logger.logObject.getter();
            v189 = static os_log_type_t.default.getter();
            v20, v190, v191, v192, v193, v194, v195, v196;

            if (os_log_type_enabled(v149, v189))
            {
              v197 = swift_slowAlloc();
              *&v285[0] = swift_slowAlloc();
              *v197 = 136446722;
              sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
              v198 = dispatch thunk of CustomStringConvertible.description.getter();
              v199 = v7;
              v201 = v200;
              (*(v186 + 8))(v199, v187);
              v202 = sub_10000668C(v198, v201, v285);
              v201, v203, v204, v205, v206, v207, v208, v209;
              *(v197 + 4) = v202;
              *(v197 + 12) = 2082;
              *(v197 + 14) = sub_10000668C(*v278, v278[1], v285);
              *(v197 + 22) = 2082;
              v210 = sub_10000668C(v271, v20, v285);
              v20, v211, v212, v213, v214, v215, v216, v217;
              *(v197 + 24) = v210;
              _os_log_impl(&_mh_execute_header, v149, v189, "Found managed object model with matching version identifier {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s}", v197, 0x20u);
LABEL_42:
              swift_arrayDestroy();
            }

            else
            {

              v20, v218, v219, v220, v221, v222, v223, v224;
              (*(v186 + 8))(v7, v187);
            }

            return v280;
          }
        }

        v20, v96, v97, v98, v99, v100, v101, v102;

        if (!v32)
        {
          break;
        }
      }

      else
      {
        swift_endAccess();
        sub_1000060C8(0, &qword_100945720, NSManagedObjectModel_ptr);
        v15 = static NSManagedObjectModel.rem_loadManagedObjectModel(withModelName:versionIdentifier:from:)();
        swift_beginAccess();
        v48 = v15;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v7;
        v7 = isUniquelyReferenced_nonNull_native;
        v283 = *&v2[v34];
        v51 = v283;
        *&v2[v34] = 0x8000000000000000;
        v52 = v50;
        v53 = sub_100005F4C(v50, v20);
        v61 = v51[2];
        v62 = (v54 & 1) == 0;
        v63 = __OFADD__(v61, v62);
        v64 = v61 + v62;
        if (v63)
        {
          goto LABEL_55;
        }

        a1 = v54;
        if (v51[3] >= v64)
        {
          if ((v7 & 1) == 0)
          {
            v143 = v15;
            v144 = v53;
            sub_100376114();
            v53 = v144;
            v15 = v143;
          }

          v7 = v52;
        }

        else
        {
          sub_10036F7DC(v64, v7);
          v7 = v52;
          v53 = sub_100005F4C(v52, v20);
          if ((a1 & 1) != (v54 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        v33 = v279;
        v65 = v283;
        if (a1)
        {
          v66 = v283[7];
          a1 = *(v66 + 8 * v53);
          *(v66 + 8 * v53) = v15;
          v20, v54, v55, v56, v57, v58, v59, v60;
        }

        else
        {
          v283[(v53 >> 6) + 8] |= 1 << v53;
          v67 = (v65[6] + 16 * v53);
          *v67 = v7;
          v67[1] = v20;
          *(v65[7] + 8 * v53) = v15;
          v68 = v65[2];
          v63 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v63)
          {
            __break(1u);
            goto LABEL_59;
          }

          v65[2] = v69;
        }

        *&v2[v34] = v65;
        swift_endAccess();
        if (v15)
        {
          goto LABEL_25;
        }

LABEL_7:
        v20, v35, v36, v37, v38, v39, v40, v41;
        if (!v32)
        {
          break;
        }
      }
    }
  }

  v33, v25, v26, v27, v28, v29, v30, v31;
  v20 = v266;
  if (qword_100936000 != -1)
  {
    swift_once();
  }

  v225 = type metadata accessor for Logger();
  sub_100006654(v225, qword_100945640);
  v34 = v269;
  v7 = v270;
  (*(v269 + 16))(v20, v268, v270);
  a1 = v2;
  v15 = Logger.logObject.getter();
  v226 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v15, v226))
  {
    goto LABEL_56;
  }

  v227 = swift_slowAlloc();
  v228 = v20;
  v282 = swift_slowAlloc();
  *&v285[0] = v282;
  *v227 = 136446466;
  sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
  v229 = a1;
  v230 = dispatch thunk of CustomStringConvertible.description.getter();
  v232 = v231;
  (*(v34 + 8))(v228, v7);
  v233 = v230;
  a1 = v229;
  v234 = sub_10000668C(v233, v232, v285);
  v232, v235, v236, v237, v238, v239, v240, v241;
  *(v227 + 4) = v234;
  *(v227 + 12) = 2082;
  *(v227 + 14) = sub_10000668C(*(v229 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName), *(v229 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8), v285);
  _os_log_impl(&_mh_execute_header, v15, v226, "Failed to find managed object model with matching version identifier {storeURL: %{public}s, modelName: %{public}s}", v227, 0x16u);
  swift_arrayDestroy();

LABEL_57:
  v242 = objc_opt_self();
  *&v285[0] = 0;
  *(&v285[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(99);
  v243._countAndFlagsBits = 0xD000000000000045;
  v243._object = 0x80000001007F7410;
  String.append(_:)(v243);
  sub_1003D4770(&qword_1009456F0, &protocol conformance descriptor for URL);
  v244._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v244._object;
  String.append(_:)(v244);
  object, v246, v247, v248, v249, v250, v251, v252;
  v253._object = 0x80000001007F7460;
  v253._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v253);
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName));
  v254._countAndFlagsBits = 125;
  v254._object = 0xE100000000000000;
  String.append(_:)(v254);
  v255 = *(&v285[0] + 1);
  v256 = String._bridgeToObjectiveC()();
  v255, v257, v258, v259, v260, v261, v262, v263;
  v264 = [v242 invalidParameterErrorWithDescription:v256];

  v273 = v264;
  return swift_willThrow();
}

uint64_t sub_1003D7F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();
}

id sub_1003D8074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator.BabysitTarget(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator.BabysitTarget(uint64_t a1)
{
  result = qword_1009456E0;
  if (!qword_1009456E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D8254(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1003D82EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    sub_10001B270(v5 + 40 * v4, v14);
    if (*(a2 + 16))
    {
      v7 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      v8 = -1 << *(a2 + 32);
      v9 = v7 & ~v8;
      if ((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        break;
      }
    }

LABEL_4:
    ++v4;
    sub_10001B2CC(v14);
    if (v4 == v2)
    {
      return 1;
    }
  }

  v10 = ~v8;
  while (1)
  {
    sub_10001B270(*(a2 + 48) + 40 * v9, v13);
    v11 = static AnyHashable.== infix(_:_:)();
    sub_10001B2CC(v13);
    if (v11)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  sub_10001B2CC(v14);
  return 0;
}

uint64_t sub_1003D8420(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v10 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v10 & ~v18;
    if ((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      break;
    }

LABEL_4:
    v8, v11, v12, v13, v14, v15, v16, v17;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v20 = ~v18;
  while (1)
  {
    v21 = (*(a2 + 48) + 16 * v19);
    v11 = v21[1];
    v22 = *v21 == v9 && v11 == v8;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v8, v11, v12, v13, v14, v15, v16, v17;
  return 0;
}

id sub_1003D856C()
{
  result = [objc_opt_self() sharedBabysitter];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 tokenByRegisteringAccount:v0 forOperationWithName:v3];

    if (!v4)
    {
      sub_1000F5104(&unk_10093D030, &unk_10079C950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      *(inited + 48) = String._bridgeToObjectiveC()();
      v6 = sub_10038D9FC(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
      v7 = objc_opt_self();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 babySatErrorWithOperationName:v8];

      type metadata accessor for Analytics();
      v10 = sub_1004646CC();
      v6, v11, v12, v13, v14, v15, v16, v17;
      v18 = v9;
      static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
      v10, v19, v20, v21, v22, v23, v24, v25;

      swift_willThrow();
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D8770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = [v5 initWithURL:v7];

  [v9 setType:NSSQLiteStoreType];
  [v9 setShouldMigrateStoreAutomatically:1];
  [v9 setShouldInferMappingModelAutomatically:1];
  [v9 setShouldAddStoreAsynchronously:0];
  if (a3)
  {
    v33 = a2;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(a3 + 48) + 16 * v17 + 8);
      v19 = *(*(a3 + 56) + 8 * v17);

      v20 = v19;
      v21 = String._bridgeToObjectiveC()();
      [v9 setOption:v20 forKey:v21];

      v18, v22, v23, v24, v25, v26, v27, v28;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        a2 = v33;
        goto LABEL_13;
      }

      v12 = *(a3 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v29 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:a2];
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = (v30 + 16);
    aBlock[4] = sub_1003D99E0;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003CEB94;
    aBlock[3] = &unk_1008F0200;
    v32 = _Block_copy(aBlock);

    [v29 addPersistentStoreWithDescription:v9 completionHandler:v32];
    _Block_release(v32);
    swift_beginAccess();
    if (*v31)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
    }
  }
}

uint64_t sub_1003D8A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = a7.n128_u64[0];
  v51 = a5;
  v52 = a6;
  v49 = a3;
  v50 = a4;
  v11 = type metadata accessor for NSPersistentStore.StoreType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v42 - v18;
  v20 = sub_1000060C8(0, &qword_100945710, NSPersistentStoreCoordinator_ptr);
  static NSPersistentStore.StoreType.sqlite.getter();
  v21 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  v53 = v7;
  if (v7)
  {
    return (*(v12 + 8))(v19, v11);
  }

  v23 = v21;
  v46 = v20;
  v24 = *(v12 + 8);
  v42 = v11;
  v45 = v24;
  v24(v19, v11);
  v25 = *(v23 + 16);
  v26 = v49;
  v47 = v15;
  v48 = a1;
  v43 = "sionIdentifier: ";
  v44 = v23;
  if (v25 && (v27 = sub_100005F4C(0xD000000000000056, 0x80000001007F7310), (v28 & 1) != 0) && (sub_100005EF0(*(v23 + 56) + 32 * v27, &v56), sub_1000F5104(&qword_100945718, &qword_1007A6668), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *&v55[0];
  }

  else
  {
    v29 = &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_100792CE0;
  *(inited + 40) = 0x80000001007F7370;
  *(inited + 48) = a2;
  *(inited + 56) = v26;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001CLL;
  v31 = v50;
  v32 = v51;
  *(inited + 88) = 0x80000001007F7390;
  *(inited + 96) = v31;
  *(inited + 104) = v32;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "completionDate");
  *(inited + 143) = -18;
  v33 = type metadata accessor for Date();
  *(inited + 168) = v33;
  v34 = sub_1000103CC((inited + 144));
  (*(*(v33 - 8) + 16))(v34, v52, v33);
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000001007F73B0;
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v8;

  v35 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_100366374(0, (*v29->clientIdentity + 1), 1, v29);
  }

  v36 = v42;
  v38 = *v29->clientIdentity;
  v37 = *&v29->clientIdentity[8];
  if (v38 >= v37 >> 1)
  {
    v29 = sub_100366374((v37 > 1), (v38 + 1), 1, v29);
  }

  *v29->clientIdentity = v38 + 1;
  *&v29->clientIdentity[8 * v38 + 16] = v35;
  v57 = sub_1000F5104(&qword_100945718, &qword_1007A6668);
  *&v56 = v29;
  sub_100005EE0(&v56, v55);
  v39 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v39;
  sub_1002C88F0(v55, 0xD000000000000056, v43 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  v41 = v47;
  static NSPersistentStore.StoreType.sqlite.getter();
  static NSPersistentStoreCoordinator.setMetadata(_:type:at:options:)();
  v45(v41, v36);
}

void sub_1003D8F04(uint64_t a1, uint64_t a2)
{
  v248 = a2;
  v2 = type metadata accessor for URL();
  v246 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v245 = &v242 - v8;
  __chkstk_darwin(v9, v10);
  v12 = &v242 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v242 - v15;
  v17 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  v19, v21, v22, v23, v24, v25, v26, v27;
  LODWORD(v19) = [v17 fileExistsAtPath:v20];

  if (!v19)
  {
    v35 = objc_opt_self();
    v249 = 0;
    v250 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v36._countAndFlagsBits = 0xD000000000000032;
    v36._object = 0x80000001007F70C0;
    String.append(_:)(v36);
    v37._countAndFlagsBits = URL.path.getter();
    object = v37._object;
    String.append(_:)(v37);
    object, v39, v40, v41, v42, v43, v44, v45;
    v46._countAndFlagsBits = 125;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47 = v250;
    v48 = String._bridgeToObjectiveC()();
    v47, v49, v50, v51, v52, v53, v54, v55;
    v56 = [v35 invalidParameterErrorWithDescription:v48];
LABEL_6:
    v56;

    swift_willThrow();
    return;
  }

  v247 = v17;
  if (URL.pathExtension.getter() == 0x6574696C7173 && v28 == 0xE600000000000000)
  {
    0xE600000000000000, 0xE600000000000000, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v57 = v28;
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v57, v59, v60, v61, v62, v63, v64, v65;
    if ((v58 & 1) == 0)
    {
      v106 = objc_opt_self();
      v249 = 0;
      v250 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v107._countAndFlagsBits = 0xD000000000000042;
      v107._object = 0x80000001007F7100;
      String.append(_:)(v107);
      v108._countAndFlagsBits = URL.path.getter();
      v109 = v108._object;
      String.append(_:)(v108);
      v109, v110, v111, v112, v113, v114, v115, v116;
      v117._countAndFlagsBits = 125;
      v117._object = 0xE100000000000000;
      String.append(_:)(v117);
      v118 = v250;
      v89 = String._bridgeToObjectiveC()();
      v118, v119, v120, v121, v122, v123, v124, v125;
      v97 = [v106 invalidParameterErrorWithDescription:v89];
      goto LABEL_17;
    }
  }

  sub_1003D4770(&unk_100944080, &protocol conformance descriptor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v66 = objc_opt_self();
    v249 = 0;
    v250 = 0xE000000000000000;
    _StringGuts.grow(_:)(104);
    v67._object = 0x80000001007F71F0;
    v67._countAndFlagsBits = 0xD00000000000004CLL;
    String.append(_:)(v67);
    v68._countAndFlagsBits = URL.path.getter();
    v69 = v68._object;
    String.append(_:)(v68);
    v69, v70, v71, v72, v73, v74, v75, v76;
    v77._countAndFlagsBits = 0xD000000000000017;
    v77._object = 0x80000001007F7240;
    String.append(_:)(v77);
    v78._countAndFlagsBits = URL.path.getter();
    v79 = v78._object;
    String.append(_:)(v78);
    v79, v80, v81, v82, v83, v84, v85, v86;
    v87._countAndFlagsBits = 125;
    v87._object = 0xE100000000000000;
    String.append(_:)(v87);
    v88 = v250;
    v89 = String._bridgeToObjectiveC()();
    v88, v90, v91, v92, v93, v94, v95, v96;
    v97 = [v66 invalidParameterErrorWithDescription:v89];
LABEL_17:
    v97;

    swift_willThrow();
    return;
  }

  v98 = URL.pathExtension.getter();
  v17 = v247;
  if (v98 == 0x6574696C7173 && v99 == 0xE600000000000000)
  {
    0xE600000000000000, 0xE600000000000000, v100, v101, v102, v103, v104, v105;
    goto LABEL_15;
  }

  v126 = v99;
  v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v126, v128, v129, v130, v131, v132, v133, v134;
  if ((v127 & 1) == 0)
  {
    v219 = objc_opt_self();
    v249 = 0;
    v250 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v220._object = 0x80000001007F7150;
    v220._countAndFlagsBits = 0xD00000000000004CLL;
    String.append(_:)(v220);
    v221._countAndFlagsBits = URL.path.getter();
    v222 = v221._object;
    String.append(_:)(v221);
    v222, v223, v224, v225, v226, v227, v228, v229;
    v230._countAndFlagsBits = 125;
    v230._object = 0xE100000000000000;
    String.append(_:)(v230);
    v231 = v250;
    v48 = String._bridgeToObjectiveC()();
    v231, v232, v233, v234, v235, v236, v237, v238;
    v56 = [v219 invalidParameterErrorWithDescription:v48];
    goto LABEL_6;
  }

LABEL_15:
  v244 = v16;
  URL.path.getter();
  v136 = v135;
  v137 = String._bridgeToObjectiveC()();
  v136, v138, v139, v140, v141, v142, v143, v144;
  LOBYTE(v136) = [v17 fileExistsAtPath:v137];

  if (v136)
  {
    v146 = objc_opt_self();
    v249 = 0;
    v250 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v147._countAndFlagsBits = 0xD000000000000043;
    v147._object = 0x80000001007F71A0;
    String.append(_:)(v147);
    v148._countAndFlagsBits = URL.path.getter();
    v149 = v148._object;
    String.append(_:)(v148);
    v149, v150, v151, v152, v153, v154, v155, v156;
    v157._countAndFlagsBits = 125;
    v157._object = 0xE100000000000000;
    String.append(_:)(v157);
    v158 = v250;
    v89 = String._bridgeToObjectiveC()();
    v158, v159, v160, v161, v162, v163, v164, v165;
    v97 = [v146 invalidParameterErrorWithDescription:v89];
    goto LABEL_17;
  }

  URL._bridgeToObjectiveC()(v145);
  v167 = v166;
  URL._bridgeToObjectiveC()(v168);
  v170 = v169;
  v249 = 0;
  v171 = v247;
  v172 = [v247 copyItemAtURL:v167 toURL:v169 error:&v249];

  if (!v172)
  {
    v239 = v249;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v173 = v249;
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v174 = v246 + 8;
  v175 = *(v246 + 8);
  v175(v12, v2);
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v243 = v175;
  v175(v12, v2);
  v176 = v174;
  URL.path.getter();
  v178 = v177;
  v179 = String._bridgeToObjectiveC()();
  v178, v180, v181, v182, v183, v184, v185, v186;
  v187 = v247;
  LODWORD(v178) = [v247 fileExistsAtPath:v179];

  v246 = v176;
  if (v178)
  {
    URL._bridgeToObjectiveC()(v188);
    v190 = v189;
    URL.deletingPathExtension()();
    URL.appendingPathExtension(_:)();
    v191 = v243;
    v243(v5, v2);
    URL._bridgeToObjectiveC()(v192);
    v194 = v193;
    v191(v12, v2);
    v249 = 0;
    v195 = [v187 copyItemAtURL:v190 toURL:v194 error:&v249];

    if (!v195)
    {
      v240 = v249;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v191(v245, v2);
      v191(v244, v2);
      return;
    }

    v196 = v249;
  }

  v197 = v245;
  URL.path.getter();
  v199 = v198;
  v200 = String._bridgeToObjectiveC()();
  v199, v201, v202, v203, v204, v205, v206, v207;
  LODWORD(v199) = [v187 fileExistsAtPath:v200];

  v209 = v197;
  if (!v199)
  {
LABEL_25:

    v218 = v243;
    v243(v209, v2);
    v218(v244, v2);
    return;
  }

  URL._bridgeToObjectiveC()(v208);
  v211 = v210;
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v212 = v243;
  v243(v5, v2);
  URL._bridgeToObjectiveC()(v213);
  v215 = v214;
  v212(v12, v2);
  v249 = 0;
  v216 = [v187 copyItemAtURL:v211 toURL:v215 error:&v249];

  if (v216)
  {
    v217 = v249;
    v209 = v245;
    goto LABEL_25;
  }

  v241 = v249;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v212(v245, v2);
  v212(v244, v2);
}

uint64_t sub_1003D9980(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1003D99E8(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for NSPersistentStore.StoreType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1000060C8(0, &qword_100945710, NSPersistentStoreCoordinator_ptr);
  static NSPersistentStore.StoreType.sqlite.getter();
  v7 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  (*(v3 + 8))(v6, v2);
  if (*(v7 + 16) && (v15 = sub_100005F4C(0xD000000000000056, 0x80000001007F7310), (v8 & 1) != 0))
  {
    sub_100005EF0(*(v7 + 56) + 32 * v15, v25);
    v7, v16, v17, v18, v19, v20, v21, v22;
    sub_1000F5104(&qword_100945718, &qword_1007A6668);
    if (swift_dynamicCast())
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7, v8, v9, v10, v11, v12, v13, v14;
    return 0;
  }
}

void sub_1003D9BA8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003DB43C();
    sub_1003DB488();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1003DB43C(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_10001B860(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1003D9DF4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v28 - v14;
  UUID.init(uuidString:)();
  a2, v16, v17, v18, v19, v20, v21, v22;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1001A4F9C(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
    (*(v8 + 16))(v11, v15, v7);
    v24 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v26 = [v24 objectIDWithUUID:isa];

    v27 = *(v8 + 8);
    v27(v11, v7);
    v27(v15, v7);
    return v26;
  }
}

uint64_t sub_1003DA014()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945730);
  v1 = sub_100006654(v0, qword_100945730);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DA0DC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 56), v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocClassInstance();
}

id sub_1003DA134(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = v3;

  v7 = sub_1003D9DF4(a1, a2);
  if (!v7)
  {
    v29 = objc_opt_self();
    _StringGuts.grow(_:)(100);
    v30._object = 0x80000001007F7750;
    v30._countAndFlagsBits = 0xD000000000000061;
    String.append(_:)(v30);
    v31._countAndFlagsBits = a1;
    v31._object = a2;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 125;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = String._bridgeToObjectiveC()();
    0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;
    [v29 internalErrorWithDebugDescription:v33];

    swift_willThrow();
    return v4;
  }

  v8 = v7;
  swift_beginAccess();
  v9 = *(v2 + 144);
  if (!*(v9 + 16))
  {
LABEL_8:
    v4 = objc_opt_self();
    _StringGuts.grow(_:)(105);
    v41._countAndFlagsBits = 0xD000000000000066;
    v41._object = 0x80000001007F77C0;
    String.append(_:)(v41);
    v42._countAndFlagsBits = a1;
    v42._object = a2;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 125;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v44 = String._bridgeToObjectiveC()();
    0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
    [v4 internalErrorWithDebugDescription:v44];

    swift_willThrow();
    return v4;
  }

  v10 = sub_100005F4C(a1, a2);
  if ((v11 & 1) == 0)
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_8;
  }

  v18 = *(*(v9 + 56) + 8 * v10);

  v9, v19, v20, v21, v22, v23, v24, v25;
  sub_1000F5104(&qword_100943948, &unk_1007A6790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v8;
  v27 = v8;
  v28 = sub_1006666A4(inited, v18);
  if (v3)
  {

    swift_setDeallocating();
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
    swift_arrayDestroy();
  }

  else
  {
    v53 = v28;
    swift_setDeallocating();
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
    swift_arrayDestroy();
    if (*(v53 + 16) && (v54 = sub_100393C74(), (v55 & 1) != 0))
    {
      v4 = *(*(v53 + 56) + 8 * v54);
      v53, v56, v57, v58, v59, v60, v61, v62;
    }

    else
    {

      v53, v63, v64, v65, v66, v67, v68, v69;

      return 0;
    }
  }

  return v4;
}

void sub_1003DA48C()
{
  swift_beginAccess();
  if (*(v0[14] + 16))
  {
    while (1)
    {
      v2 = objc_autoreleasePoolPush();
      swift_beginAccess();
      v3 = v0[14];
      v4 = *v3->clientIdentity;
      if (!v4)
      {
        break;
      }

      v5 = *&v3->clientIdentity[16];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[14] = v3;
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > *&v3->clientIdentity[8] >> 1)
      {
        v3 = sub_100366664(isUniquelyReferenced_nonNull_native, v4, 1, v3);
        v0[14] = v3;
      }

      v7 = *v3->clientIdentity;
      memmove(&v3->clientIdentity[16], &v3->clientIdentity[32], 16 * v7 - 16);
      *v3->clientIdentity = v7 - 1;
      v0[14] = v3;
      v8 = swift_endAccess();
      v5(v8);
      if (v1)
      {
LABEL_23:

        goto LABEL_24;
      }

      objc_autoreleasePoolPop(v2);
      if (!*(v0[14] + 16))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_8:
  swift_beginAccess();
  if (*(v0[15] + 16))
  {
    while (1)
    {
      v2 = objc_autoreleasePoolPush();
      swift_beginAccess();
      v9 = v0[15];
      v10 = *v9->clientIdentity;
      if (!v10)
      {
        break;
      }

      v11 = *&v9->clientIdentity[16];

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v0[15] = v9;
      if (!v12 || (v10 - 1) > *&v9->clientIdentity[8] >> 1)
      {
        v9 = sub_100366664(v12, v10, 1, v9);
        v0[15] = v9;
      }

      v13 = *v9->clientIdentity;
      memmove(&v9->clientIdentity[16], &v9->clientIdentity[32], 16 * v13 - 16);
      *v9->clientIdentity = v13 - 1;
      v0[15] = v9;
      v14 = swift_endAccess();
      v11(v14);
      if (v1)
      {
        goto LABEL_23;
      }

      objc_autoreleasePoolPop(v2);
      if (!*(v0[15] + 16))
      {
        goto LABEL_15;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

LABEL_15:
  swift_beginAccess();
  while (*(v0[16] + 16))
  {
    v2 = objc_autoreleasePoolPush();
    swift_beginAccess();
    v15 = v0[16];
    v16 = *v15->clientIdentity;
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = *&v15->clientIdentity[16];

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v0[16] = v15;
    if (!v18 || (v16 - 1) > *&v15->clientIdentity[8] >> 1)
    {
      v15 = sub_100366664(v18, v16, 1, v15);
      v0[16] = v15;
    }

    v19 = *v15->clientIdentity;
    memmove(&v15->clientIdentity[16], &v15->clientIdentity[32], 16 * v19 - 16);
    *v15->clientIdentity = v19 - 1;
    v0[16] = v15;
    v20 = swift_endAccess();
    v17(v20);
    if (v1)
    {
      goto LABEL_23;
    }

    objc_autoreleasePoolPop(v2);
  }

  v2 = objc_autoreleasePoolPush();
  sub_1003DB064();
LABEL_24:
  objc_autoreleasePoolPop(v2);
}

void sub_1003DA7DC()
{
  v2 = v0;
  swift_beginAccess();
  if (*(*(v0 + 136) + 16))
  {
    while (1)
    {
      v3 = objc_autoreleasePoolPush();
      swift_beginAccess();
      v4 = *(v0 + 136);
      v5 = *v4->clientIdentity;
      if (!v5)
      {
        break;
      }

      v6 = *&v4->clientIdentity[16];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 136) = v4;
      if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *&v4->clientIdentity[8] >> 1)
      {
        v4 = sub_100366664(isUniquelyReferenced_nonNull_native, v5, 1, v4);
        *(v0 + 136) = v4;
      }

      v8 = *v4->clientIdentity;
      memmove(&v4->clientIdentity[16], &v4->clientIdentity[32], 16 * v8 - 16);
      *v4->clientIdentity = v8 - 1;
      *(v0 + 136) = v4;
      v9 = swift_endAccess();
      v6(v9);
      if (v1)
      {

        v19 = v3;
        goto LABEL_10;
      }

      objc_autoreleasePoolPop(v3);
      if (!*(*(v0 + 136) + 16))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v10 = objc_autoreleasePoolPush();
    swift_beginAccess();
    v11 = *(v2 + 144);
    *(v2 + 144) = _swiftEmptyDictionarySingleton;
    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = v10;
LABEL_10:
    objc_autoreleasePoolPop(v19);
  }
}

void sub_1003DA95C(uint64_t a1)
{
  v3 = v1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = v12[1];
      v28[0] = *v12;
      v28[1] = v13;

      sub_1003DAA84(v28, v3);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      v13, v14, v15, v16, v17, v18, v19, v20;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v13, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1003DAA84(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v6 = *(a2 + 144);
  if (!*(v6 + 16) || (, sub_100005F4C(v5, v4), v8 = v7, v6, v7, v9, v10, v11, v12, v13, v14, (v8 & 1) == 0))
  {
    v15 = *(a2 + 80);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 storeForAccountIdentifier:v16];

    if (v17)
    {
      type metadata accessor for CDIngestionCoordinator.IngestionContext();
      v18 = swift_allocObject();

      v19 = v17;
      v18[5] = sub_100390420(&_swiftEmptyArrayStorage);
      v18[6] = sub_100390420(&_swiftEmptyArrayStorage);
      v18[7] = sub_100390448(&_swiftEmptyArrayStorage);
      v18[2] = v5;
      v18[3] = v4;
      v18[4] = v19;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(a2 + 144);
      *(a2 + 144) = 0x8000000000000000;
      sub_1002C95BC(v18, v5, v4, isUniquelyReferenced_nonNull_native);
      v4, v21, v22, v23, v24, v25, v26, v27;
      *(a2 + 144) = v88;
      swift_endAccess();

      v28 = sub_1003D9DF4(v5, v4);
      if (v28)
      {
        v29 = v28;
        sub_1000F5104(&qword_100943948, &unk_1007A6790);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791300;
        *(inited + 32) = v29;
        v31 = v29;
        v32 = sub_1006666A4(inited, v18);
        if (!v2)
        {
          v32, v33, v34, v35, v36, v37, v38, v39;
        }

        swift_setDeallocating();
        sub_1000F5104(&unk_100943950, &unk_1007A4200);
        swift_arrayDestroy();
      }

      else
      {
        if (qword_100936008 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100006654(v63, qword_100945730);

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.fault.getter();
        v4, v66, v67, v68, v69, v70, v71, v72;
        if (os_log_type_enabled(v64, v65))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v89 = v74;
          *v73 = 136446210;
          *(v73 + 4) = sub_10000668C(v5, v4, &v89);
          _os_log_impl(&_mh_execute_header, v64, v65, "Could not convert accountIdentifier to CDObjectID to initializeIngestionContexts {accountIdentifier: %{public}s}", v73, 0xCu);
          sub_10000607C(v74);
        }

        v75 = objc_opt_self();
        v89 = 0;
        v90 = 0xE000000000000000;
        _StringGuts.grow(_:)(104);
        v76._object = 0x80000001007F76E0;
        v76._countAndFlagsBits = 0xD000000000000065;
        String.append(_:)(v76);
        v77._countAndFlagsBits = v5;
        v77._object = v4;
        String.append(_:)(v77);
        v78._countAndFlagsBits = 125;
        v78._object = 0xE100000000000000;
        String.append(_:)(v78);
        v79 = v90;
        v80 = String._bridgeToObjectiveC()();
        v79, v81, v82, v83, v84, v85, v86, v87;
        [v75 internalErrorWithDebugDescription:v80];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936008 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_100945730);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v4, v43, v44, v45, v46, v47, v48, v49;
      if (os_log_type_enabled(v41, v42))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v89 = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_10000668C(v5, v4, &v89);
        _os_log_impl(&_mh_execute_header, v41, v42, "Persistent store not found for some ingestables, the store may have been removed before this save request. Aborting the entire save for integrity. {accountIdentifier: %{public}s}", v50, 0xCu);
        sub_10000607C(v51);
      }

      v52 = objc_opt_self();
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_100791300;
      *(v53 + 32) = v5;
      *(v53 + 40) = v4;

      v54 = sub_1001A5660(v53);
      swift_setDeallocating();
      sub_100034610(v53 + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v54, v56, v57, v58, v59, v60, v61, v62;
      [v52 accountStoreMissingError:isa];

      swift_willThrow();
    }
  }
}

void sub_1003DB064()
{
  v1 = *(v0 + 88);
  v2 = [v1 updatedObjects];
  sub_1003DB43C();
  sub_1003DB488();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 insertedObjects];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1007252C4(v5, v3);
  v7 = v6;
  sub_1003D9BA8(v6);
  v9 = v8;
  v7, v10, v11, v12, v13, v14, v15, v16;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100945730);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v20 = v9 >> 62;
  if (!os_log_type_enabled(v18, v19))
  {

    v9, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_8;
  }

  v21 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v47 = v3;
  *v21 = 136446466;
  *(v21 + 4) = sub_10000668C(0xD000000000000010, 0x80000001007F76C0, &v47);
  *(v21 + 12) = 2048;
  if (v20)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v21 + 14) = i;
    v9, v22, v23, v24, v25, v26, v27, v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] Updated objects to inspect for orphan {count: %ld}", v21, 0x16u);
    sub_10000607C(v3);

LABEL_8:
    v18 = [objc_allocWithZone(NSMutableDictionary) init];
    if (v20)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    if (v21 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_19:
    ;
  }

  for (j = 0; j != v21; ++j)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v45 = *&v9->clientIdentity[8 * j + 16];
    }

    v46 = v45;
    [v45 updateDeletedFlagAccordingToOrphanState:v18];
  }

LABEL_17:
  v9, v37, v38, v39, v40, v41, v42, v43;
}

uint64_t sub_1003DB34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  sub_10000CC4C(*(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64) | (*(v8 + 68) << 32), a7, a8);
  *(v8 + 72), v9, v10, v11, v12, v13, v14, v15;
  swift_unknownObjectRelease();

  *(v8 + 112), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 120), v23, v24, v25, v26, v27, v28, v29;
  *(v8 + 128), v30, v31, v32, v33, v34, v35, v36;
  *(v8 + 136), v37, v38, v39, v40, v41, v42, v43;
  *(v8 + 144), v44, v45, v46, v47, v48, v49, v50;
  return v8;
}

uint64_t sub_1003DB3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  sub_1003DB34C(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

unint64_t sub_1003DB43C()
{
  result = qword_1009388B0;
  if (!qword_1009388B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009388B0);
  }

  return result;
}

unint64_t sub_1003DB488()
{
  result = qword_10093B350;
  if (!qword_10093B350)
  {
    sub_1003DB43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B350);
  }

  return result;
}

uint64_t TantorMigrationAPI.SubmitAllHubbleKpisOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_100010364(a1, v6, &qword_100945A98, &qword_1007A67A8);
  v8 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, &qword_100945A98, &qword_1007A67A8);
  return v8;
}

uint64_t TantorMigrationAPI.SubmitAllHubbleKpisOperation.init(request:)(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  __chkstk_darwin(v2 - 8, v3);
  sub_100010364(a1, &v7 - v4, &qword_100945A98, &qword_1007A67A8);
  v5 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, &qword_100945A98, &qword_1007A67A8);
  return v5;
}

uint64_t sub_1003DB768(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(a2, a3);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v16 - v11;
  v13 = objc_allocWithZone(v5);
  sub_100010364(a1, v12, a2, a3);
  v14 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, a2, a3);
  return v14;
}

uint64_t sub_1003DB874(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F5104(a2, a3);
  __chkstk_darwin(v8 - 8, v9);
  sub_100010364(a1, &v13 - v10, a2, a3);
  v11 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(a1, a2, a3);
  return v11;
}

uint64_t TantorMigrationAPIAsync.ping(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PingRequest(0);
  __chkstk_darwin(v12, v13);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1003DD8A0(&qword_1009377A0, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);
  static Message.with(_:)();
  (*(a6 + 8))(v15, a3, a4, a5, a6);
  return sub_1003DD8E8(v15, type metadata accessor for PingRequest);
}

uint64_t TantorMigrationAPIAsync.submitAllHubbleKpis(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EmptyRequest(0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  (*(a4 + 16))(v11, a1, a2, a3, a4);
  return sub_1003DD8E8(v11, type metadata accessor for EmptyRequest);
}

uint64_t TantorMigrationAPIAsync.startMigration(archivePath:credential:embeddedTestData:disableCache:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v22 = a7;
  started = type metadata accessor for StartMigrationRequest(0);
  __chkstk_darwin(started, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  sub_1003DD8A0(&qword_100937608, type metadata accessor for StartMigrationRequest, &protocol conformance descriptor for StartMigrationRequest);
  static Message.with(_:)();
  (*(a10 + 24))(v19, v22, v23, a9, a10);
  return sub_1003DD8E8(v19, type metadata accessor for StartMigrationRequest);
}

uint64_t TantorMigrationAPIAsync.migrate(user:archivePath:embeddedTestData:options:userInitiated:simulatedError:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a10;
  v28 = a9;
  v26 = a12;
  v20 = type metadata accessor for MigrateRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = BYTE4(a6) & 1;
  v37 = a7;
  v38 = a8;
  v39 = BYTE4(a8) & 1;
  sub_1003DD8A0(&qword_100937680, type metadata accessor for MigrateRequest, &protocol conformance descriptor for MigrateRequest);
  static Message.with(_:)();
  (*(v26 + 32))(v23, v28, v27, v29);
  return sub_1003DD8E8(v23, type metadata accessor for MigrateRequest);
}

uint64_t TantorMigrationAPIAsync.unmigrate(options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UnmigrateRequest(0);
  __chkstk_darwin(v10, v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  v17 = BYTE4(a1) & 1;
  sub_1003DD8A0(&qword_100937710, type metadata accessor for UnmigrateRequest, &protocol conformance descriptor for UnmigrateRequest);
  static Message.with(_:)();
  (*(a5 + 40))(v13, a2, a3, a4, a5);
  return sub_1003DD8E8(v13, type metadata accessor for UnmigrateRequest);
}

uint64_t TantorMigrationAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void TantorMigrationAPIAsyncClient.ping(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F5104(&qword_100945A90, &qword_1007A67A0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v15 - v10;
  sub_1003DD9C8(a1, &v15 - v10, type metadata accessor for PingRequest);
  v12 = type metadata accessor for PingRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.PingOperation(0));
  sub_100010364(v11, v7, &qword_100945A90, &qword_1007A67A0);
  v13 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v11, &qword_100945A90, &qword_1007A67A0);
  v14 = v13;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.submitAllHubbleKpis(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v15 - v10;
  sub_1003DD9C8(a1, &v15 - v10, type metadata accessor for EmptyRequest);
  v12 = type metadata accessor for EmptyRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.SubmitAllHubbleKpisOperation(0));
  sub_100010364(v11, v7, &qword_100945A98, &qword_1007A67A8);
  v13 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v11, &qword_100945A98, &qword_1007A67A8);
  v14 = v13;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.startMigration(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F5104(&qword_100945AA0, &qword_1007A67B0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v15 - v10;
  sub_1003DD9C8(a1, &v15 - v10, type metadata accessor for StartMigrationRequest);
  started = type metadata accessor for StartMigrationRequest(0);
  (*(*(started - 8) + 56))(v11, 0, 1, started);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.StartMigrationOperation(0));
  sub_100010364(v11, v7, &qword_100945AA0, &qword_1007A67B0);
  v13 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v11, &qword_100945AA0, &qword_1007A67B0);
  v14 = v13;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.migrate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F5104(&qword_100945AA8, &qword_1007A67B8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v15 - v10;
  sub_1003DD9C8(a1, &v15 - v10, type metadata accessor for MigrateRequest);
  v12 = type metadata accessor for MigrateRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.MigrateOperation(0));
  sub_100010364(v11, v7, &qword_100945AA8, &qword_1007A67B8);
  v13 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v11, &qword_100945AA8, &qword_1007A67B8);
  v14 = v13;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  CKCodeService.add<A, B>(_:)();
}

void TantorMigrationAPIAsyncClient.unmigrate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F5104(&qword_100945AB0, &qword_1007A67C0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v15 - v10;
  sub_1003DD9C8(a1, &v15 - v10, type metadata accessor for UnmigrateRequest);
  v12 = type metadata accessor for UnmigrateRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.UnmigrateOperation(0));
  sub_100010364(v11, v7, &qword_100945AB0, &qword_1007A67C0);
  v13 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v11, &qword_100945AB0, &qword_1007A67C0);
  v14 = v13;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();

  CKCodeService.add<A, B>(_:)();
}

uint64_t TantorMigrationAPIAsyncOperation.ping(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PingRequest(0);
  __chkstk_darwin(v12, v13);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_1003DD8A0(&qword_1009377A0, type metadata accessor for PingRequest, &protocol conformance descriptor for PingRequest);
  static Message.with(_:)();
  v16 = (*(a6 + 8))(v15, a3, a4, a5, a6);
  sub_1003DD8E8(v15, type metadata accessor for PingRequest);
  return v16;
}

uint64_t TantorMigrationAPIAsyncOperation.submitAllHubbleKpis(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EmptyRequest(0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v12 = (*(a4 + 16))(v11, a1, a2, a3, a4);
  sub_1003DD8E8(v11, type metadata accessor for EmptyRequest);
  return v12;
}

uint64_t TantorMigrationAPIAsyncOperation.startMigration(archivePath:credential:embeddedTestData:disableCache:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v23 = a7;
  started = type metadata accessor for StartMigrationRequest(0);
  __chkstk_darwin(started, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  sub_1003DD8A0(&qword_100937608, type metadata accessor for StartMigrationRequest, &protocol conformance descriptor for StartMigrationRequest);
  static Message.with(_:)();
  v20 = (*(a10 + 24))(v19, v23, v24, a9, a10);
  sub_1003DD8E8(v19, type metadata accessor for StartMigrationRequest);
  return v20;
}

uint64_t sub_1003DCE24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a7;
  v31 = a5;
  v32 = a6;
  v11 = sub_1000F5104(&qword_1009387A0, &qword_100794DC8);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v30 - v13;
  started = type metadata accessor for StartMigrationRequest.Credential(0);
  v16 = *(started - 8);
  __chkstk_darwin(started, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v30 - v22;
  if (a3)
  {

    sub_1000050A4(a1, &qword_1009374E0, &unk_1007A6940);
    *a1 = a2;
    a1[1] = a3;
    v24 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
  }

  sub_100010364(a4, v14, &qword_1009387A0, &qword_100794DC8);
  if ((*(v16 + 48))(v14, 1, started) == 1)
  {
    result = sub_1000050A4(v14, &qword_1009387A0, &qword_100794DC8);
  }

  else
  {
    sub_1003DE560(v14, v23, type metadata accessor for StartMigrationRequest.Credential);
    sub_1003DE560(v23, v19, type metadata accessor for StartMigrationRequest.Credential);
    sub_1000050A4(a1, &qword_1009374E0, &unk_1007A6940);
    sub_1003DE560(v19, a1, type metadata accessor for StartMigrationRequest.Credential);
    v26 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
  }

  v27 = v33;
  v28 = v32;
  if (v32)
  {

    sub_1000050A4(a1, &qword_1009374E0, &unk_1007A6940);
    *a1 = v31;
    a1[1] = v28;
    v29 = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
  }

  if (v27 != 2)
  {
    result = type metadata accessor for StartMigrationRequest(0);
    *(a1 + *(result + 20)) = v27 & 1;
  }

  return result;
}

uint64_t TantorMigrationAPIAsyncOperation.migrate(user:archivePath:embeddedTestData:options:userInitiated:simulatedError:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a10;
  v29 = a9;
  v27 = a12;
  v20 = type metadata accessor for MigrateRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = BYTE4(a6) & 1;
  v38 = a7;
  v39 = a8;
  v40 = BYTE4(a8) & 1;
  sub_1003DD8A0(&qword_100937680, type metadata accessor for MigrateRequest, &protocol conformance descriptor for MigrateRequest);
  static Message.with(_:)();
  v24 = (*(v27 + 32))(v23, v29, v28, v30);
  sub_1003DD8E8(v23, type metadata accessor for MigrateRequest);
  return v24;
}

int *sub_1003DD330(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v37 = a8;
  v35 = a6;
  v36 = a7;
  v33 = a5;
  v34 = a4;
  v32 = a3;
  v11 = sub_1000F5104(&qword_100938778, &qword_100794DA0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MigrateRequest.User(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v32 - v22;
  sub_100010364(a2, v14, &qword_100938778, &qword_100794DA0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_1000050A4(v14, &qword_100938778, &qword_100794DA0);
  }

  else
  {
    sub_1003DE560(v14, v23, type metadata accessor for MigrateRequest.User);
    sub_1003DE560(v23, v19, type metadata accessor for MigrateRequest.User);
    sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
    sub_1003DE560(v19, a1, type metadata accessor for MigrateRequest.User);
    v25 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
  }

  v26 = v37;
  v27 = v36;
  v28 = v34;
  if (v34)
  {

    sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
    *a1 = v32;
    a1[1] = v28;
    v29 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
  }

  v30 = v35;
  if (v35)
  {

    sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
    *a1 = v33;
    a1[1] = v30;
    v31 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v31 - 8) + 56))(a1, 0, 1, v31);
  }

  if ((v27 & 0x100000000) == 0)
  {
    result = type metadata accessor for MigrateRequest(0);
    *(a1 + result[5]) = v27;
  }

  if (v26 != 2)
  {
    result = type metadata accessor for MigrateRequest(0);
    *(a1 + result[6]) = v26 & 1;
  }

  if ((a9 & 0x100000000) == 0)
  {
    result = type metadata accessor for MigrateRequest(0);
    *(a1 + result[7]) = a9;
  }

  return result;
}

uint64_t TantorMigrationAPIAsyncOperation.unmigrate(options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UnmigrateRequest(0);
  __chkstk_darwin(v10, v11);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v18 = BYTE4(a1) & 1;
  sub_1003DD8A0(&qword_100937710, type metadata accessor for UnmigrateRequest, &protocol conformance descriptor for UnmigrateRequest);
  static Message.with(_:)();
  v14 = (*(a5 + 40))(v13, a2, a3, a4, a5);
  sub_1003DD8E8(v13, type metadata accessor for UnmigrateRequest);
  return v14;
}

uint64_t sub_1003DD8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DD8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DD9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1003DDA50(void *a1)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = a1[1];

    v4, v6, v7, v8, v9, v10, v11, v12;
    *a1 = v3;
    a1[1] = v2;
  }
}

_DWORD *sub_1003DDB28(_DWORD *result)
{
  if ((*(v1 + 20) & 1) == 0)
  {
    *result = *(v1 + 16);
  }

  return result;
}

id TantorMigrationAPIAsyncOperationClient.ping(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1000F5104(&qword_100945A90, &qword_1007A67A0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v19 - v12;
  sub_1003DD9C8(a1, &v19 - v12, type metadata accessor for PingRequest);
  v14 = type metadata accessor for PingRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.PingOperation(0));
  sub_100010364(v13, v9, &qword_100945A90, &qword_1007A67A0);
  v15 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v13, &qword_100945A90, &qword_1007A67A0);
  v16 = v15;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v17 = *(v4 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v16;
}

id TantorMigrationAPIAsyncOperationClient.submitAllHubbleKpis(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1000F5104(&qword_100945A98, &qword_1007A67A8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v19 - v12;
  sub_1003DD9C8(a1, &v19 - v12, type metadata accessor for EmptyRequest);
  v14 = type metadata accessor for EmptyRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.SubmitAllHubbleKpisOperation(0));
  sub_100010364(v13, v9, &qword_100945A98, &qword_1007A67A8);
  v15 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v13, &qword_100945A98, &qword_1007A67A8);
  v16 = v15;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v17 = *(v4 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v16;
}

id TantorMigrationAPIAsyncOperationClient.startMigration(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1000F5104(&qword_100945AA0, &qword_1007A67B0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v19 - v12;
  sub_1003DD9C8(a1, &v19 - v12, type metadata accessor for StartMigrationRequest);
  started = type metadata accessor for StartMigrationRequest(0);
  (*(*(started - 8) + 56))(v13, 0, 1, started);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.StartMigrationOperation(0));
  sub_100010364(v13, v9, &qword_100945AA0, &qword_1007A67B0);
  v15 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v13, &qword_100945AA0, &qword_1007A67B0);
  v16 = v15;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v17 = *(v4 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v16;
}

id TantorMigrationAPIAsyncOperationClient.migrate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1000F5104(&qword_100945AA8, &qword_1007A67B8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v19 - v12;
  sub_1003DD9C8(a1, &v19 - v12, type metadata accessor for MigrateRequest);
  v14 = type metadata accessor for MigrateRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.MigrateOperation(0));
  sub_100010364(v13, v9, &qword_100945AA8, &qword_1007A67B8);
  v15 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v13, &qword_100945AA8, &qword_1007A67B8);
  v16 = v15;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v17 = *(v4 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v16;
}

id TantorMigrationAPIAsyncOperationClient.unmigrate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1000F5104(&qword_100945AB0, &qword_1007A67C0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v19 - v12;
  sub_1003DD9C8(a1, &v19 - v12, type metadata accessor for UnmigrateRequest);
  v14 = type metadata accessor for UnmigrateRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for TantorMigrationAPI.UnmigrateOperation(0));
  sub_100010364(v13, v9, &qword_100945AB0, &qword_1007A67C0);
  v15 = CKCodeOperation.init(functionName:request:)();
  sub_1000050A4(v13, &qword_100945AB0, &qword_1007A67C0);
  v16 = v15;

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v17 = *(v4 + 16);
  dispatch thunk of CKCodeOperation.codeService.setter();

  return v16;
}

uint64_t sub_1003DE560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DE68C(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E78, &unk_1007A6A48);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v37 - v8;
  v10 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v39 = &v37 - v16;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v35)
  {
    v18 = 0;
    v44 = a3 & 0xFFFFFFFFFFFFFF8;
    v45 = a3 & 0xC000000000000001;
    v41 = (v40 + 32);
    v42 = (v40 + 48);
    v47 = v15;
    v48 = &_swiftEmptyArrayStorage;
    v37 = a1;
    v38 = a3;
    v43 = i;
    while (1)
    {
      if (v45)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v44 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v18 + 32);
      }

      v19 = v15;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v49 = v15;
      a1(&v49);
      if (v3)
      {
        v48, v21, v22, v23, v24, v25, v26, v27;

        return v48;
      }

      v28 = v47;
      if ((*v42)(v9, 1, v47) == 1)
      {
        v15 = sub_1000050A4(v9, &qword_100945E78, &unk_1007A6A48);
      }

      else
      {
        v29 = *v41;
        v30 = v39;
        (*v41)(v39, v9, v28);
        v29(v46, v30, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_100365A00(0, *v48->clientIdentity + 1, 1, v48);
        }

        v32 = *v48->clientIdentity;
        v31 = *&v48->clientIdentity[8];
        if (v32 >= v31 >> 1)
        {
          v48 = sub_100365A00((v31 > 1), v32 + 1, 1, v48);
        }

        v33 = v47;
        v34 = v48;
        *v48->clientIdentity = v32 + 1;
        v15 = (v29)(v34 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v46, v33);
        a1 = v37;
        a3 = v38;
      }

      ++v18;
      if (v20 == v43)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v35 = v15;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DEA00(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E80, &qword_1007A6A58);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for REMListPickerDataView.Model.Account();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v38 = &v34 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for REMAccountsListDataView.Model.Account() - 8);
  v35 = v11;
  v39 = (v11 + 32);
  v40 = (v11 + 48);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v42 = &_swiftEmptyArrayStorage;
  v36 = v10;
  v37 = a1;
  v34 = v20;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v40)(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &qword_100945E80, &qword_1007A6A58);
    }

    else
    {
      v28 = v38;
      v29 = *v39;
      (*v39)(v38, v9, v10);
      v29(v41, v28, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100365AC4(0, *v42->clientIdentity + 1, 1, v42);
      }

      v31 = *v42->clientIdentity;
      v30 = *&v42->clientIdentity[8];
      if (v31 >= v30 >> 1)
      {
        v42 = sub_100365AC4((v30 > 1), v31 + 1, 1, v42);
      }

      v32 = v42;
      *v42->clientIdentity = v31 + 1;
      v10 = v36;
      v29(v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, v41, v36);
      a1 = v37;
      v20 = v34;
    }

    v19 += v20;
    if (!--v17)
    {
      return v42;
    }
  }

  v42, v21, v22, v23, v24, v25, v26, v27;
  return v42;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DED2C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = (a3 + 40);
  v6 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5;
    v34[0] = *(v5 - 1);
    v34[1] = v8;

    (v35)(&v32, v34);
    if (v3)
    {
      break;
    }

    v8, v9, v10, v11, v12, v13, v14, v15;
    v16 = v33;
    if (v33)
    {
      v17 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100365788(0, *v6->clientIdentity + 1, 1, v6, v18, v19, v20, v21);
      }

      v23 = *v6->clientIdentity;
      v22 = *&v6->clientIdentity[8];
      if (v23 >= v22 >> 1)
      {
        v6 = sub_100365788((v22 > 1), v23 + 1, 1, v6, v18, v19, v20, v21);
      }

      *v6->clientIdentity = v23 + 1;
      v7 = v6 + 16 * v23;
      *(v7 + 4) = v17;
      *(v7 + 5) = v16;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  v6, v9, v10, v11, v12, v13, v14, v15;
  v8, v24, v25, v26, v27, v28, v29, v30;
  return v6;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DEEBC(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E68, &qword_1007A6A30);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v37 - v8;
  v10 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v39 = &v37 - v16;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v35)
  {
    v18 = 0;
    v44 = a3 & 0xFFFFFFFFFFFFFF8;
    v45 = a3 & 0xC000000000000001;
    v41 = (v40 + 32);
    v42 = (v40 + 48);
    v47 = v15;
    v48 = &_swiftEmptyArrayStorage;
    v37 = a1;
    v38 = a3;
    v43 = i;
    while (1)
    {
      if (v45)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v44 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v18 + 32);
      }

      v19 = v15;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v49 = v15;
      a1(&v49);
      if (v3)
      {
        v48, v21, v22, v23, v24, v25, v26, v27;

        return v48;
      }

      v28 = v47;
      if ((*v42)(v9, 1, v47) == 1)
      {
        v15 = sub_1000050A4(v9, &qword_100945E68, &qword_1007A6A30);
      }

      else
      {
        v29 = *v41;
        v30 = v39;
        (*v41)(v39, v9, v28);
        v29(v46, v30, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_100365B3C(0, *v48->clientIdentity + 1, 1, v48);
        }

        v32 = *v48->clientIdentity;
        v31 = *&v48->clientIdentity[8];
        if (v32 >= v31 >> 1)
        {
          v48 = sub_100365B3C((v31 > 1), v32 + 1, 1, v48);
        }

        v33 = v47;
        v34 = v48;
        *v48->clientIdentity = v32 + 1;
        v15 = (v29)(v34 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v46, v33);
        a1 = v37;
        a3 = v38;
      }

      ++v18;
      if (v20 == v43)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v35 = v15;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DF230(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  __chkstk_darwin(v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v40 = &v35 - v18;
  v43 = *(a3 + 16);
  if (!v43)
  {
    return &_swiftEmptyArrayStorage;
  }

  v19 = 0;
  v37 = v17;
  v41 = (v17 + 32);
  v42 = (v17 + 48);
  v20 = &_swiftEmptyArrayStorage;
  v38 = a2;
  v39 = a3;
  v35 = a1;
  v36 = v14;
  while (1)
  {
    v21 = *(sub_1000F5104(&unk_1009430F0, qword_10079DC40) - 8);
    a1(a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19);
    if (v3)
    {
      break;
    }

    if ((*v42)(v10, 1, v11) == 1)
    {
      sub_1000050A4(v10, &qword_100940628, &unk_1007A6A20);
    }

    else
    {
      v29 = v40;
      v30 = *v41;
      (*v41)(v40, v10, v11);
      v30(v14, v29, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100365A24(0, *v20->clientIdentity + 1, 1, v20);
      }

      v32 = *v20->clientIdentity;
      v31 = *&v20->clientIdentity[8];
      if (v32 >= v31 >> 1)
      {
        v20 = sub_100365A24((v31 > 1), v32 + 1, 1, v20);
      }

      *v20->clientIdentity = v32 + 1;
      v33 = v20 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32;
      v14 = v36;
      v30(v33, v36, v11);
      a3 = v39;
      a1 = v35;
    }

    if (v43 == ++v19)
    {
      return v20;
    }
  }

  v20, v22, v23, v24, v25, v26, v27, v28;
  return v20;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DF568(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v4 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v38 - v7;
  v9 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  v10 = v9 - 8;
  v12 = __chkstk_darwin(v9, v11);
  v14 = v38 - v13;
  (*(v5 + 16))(v8, v2, v4, v12);
  sub_1003E44E0(&qword_1009413B0, &protocol conformance descriptor for OrderedSet<A>);
  dispatch thunk of Sequence.makeIterator()();
  v15 = *(v10 + 44);
  sub_1003E44E0(&qword_10093EE00, &protocol conformance descriptor for OrderedSet<A>);
  dispatch thunk of Collection.endIndex.getter();
  v16 = &_swiftEmptyArrayStorage;
  if (*&v14[v15] == v43)
  {
LABEL_2:
    sub_1000050A4(v14, &qword_10094A360, &unk_1007A12E0);
  }

  else
  {
    v38[1] = v4;
    while (1)
    {
      v19 = dispatch thunk of Collection.subscript.read();
      v21 = *v20;
      v19(&v43, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v47 = v21;
      v39(&v43, &v47);
      if (v3)
      {
        break;
      }

      v22 = v44;
      if (v44)
      {
        v23 = v43;
        v41 = v46;
        v42 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100365CC4(0, (*v16->clientIdentity + 1), 1, v16, v24, v25, v26, v27);
        }

        v29 = *v16->clientIdentity;
        v28 = *&v16->clientIdentity[8];
        if (v29 >= v28 >> 1)
        {
          v16 = sub_100365CC4((v28 > 1), (v29 + 1), 1, v16, v24, v25, v26, v27);
        }

        *v16->clientIdentity = v29 + 1;
        v17 = &v16->super.isa + 4 * v29;
        v17[4] = v23;
        v17[5] = v22;
        v18 = v41;
        v17[6] = v42;
        v17[7] = v18;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v14[v15] == v43)
      {
        goto LABEL_2;
      }
    }

    sub_1000050A4(v14, &qword_10094A360, &unk_1007A12E0);
    v16, v30, v31, v32, v33, v34, v35, v36;
  }

  return v16;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DFAC8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100945E88, &qword_1007A6A68);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v40 = &v36 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for RDTimelineEngineDueReminder(0) - 8);
  v37 = v11;
  v19 = (v11 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v41 = *(v18 + 72);
  v21 = &_swiftEmptyArrayStorage;
  v38 = v10;
  v39 = a1;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &qword_100945E88, &qword_1007A6A68);
    }

    else
    {
      v30 = v40;
      sub_1002D61DC(v9, v40, v29);
      sub_1002D61DC(v30, v42, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100367980(0, *v21->clientIdentity + 1, 1, v21);
      }

      v34 = *v21->clientIdentity;
      v33 = *&v21->clientIdentity[8];
      if (v34 >= v33 >> 1)
      {
        v21 = sub_100367980((v33 > 1), v34 + 1, 1, v21);
      }

      *v21->clientIdentity = v34 + 1;
      sub_1002D61DC(v42, v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34, v32);
      v10 = v38;
      a1 = v39;
    }

    v20 += v41;
    if (!--v17)
    {
      return v21;
    }
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  return v21;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003DFE04(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v6 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v33 - v8;
  v38 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  __chkstk_darwin(v38, v10);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v13);
  v36 = &v33 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = a3 + v34;
  v19 = (v14 + 48);
  v20 = &_swiftEmptyArrayStorage;
  v21 = *(v14 + 72);
  v35 = a1;
  v33 = v21;
  while (1)
  {
    a1(v18, v15);
    if (v3)
    {
      break;
    }

    if ((*v19)(v9, 1, v38) == 1)
    {
      sub_1000050A4(v9, &qword_100945E58, &unk_1007ACAD0);
    }

    else
    {
      v29 = v36;
      sub_100031B58(v9, v36, &unk_1009464C0, &qword_10079D360);
      sub_100031B58(v29, v37, &unk_1009464C0, &qword_10079D360);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100367EA4(0, *v20->clientIdentity + 1, 1, v20);
      }

      v31 = *v20->clientIdentity;
      v30 = *&v20->clientIdentity[8];
      if (v31 >= v30 >> 1)
      {
        v20 = sub_100367EA4((v30 > 1), v31 + 1, 1, v20);
      }

      *v20->clientIdentity = v31 + 1;
      v21 = v33;
      sub_100031B58(v37, v20 + v34 + v31 * v33, &unk_1009464C0, &qword_10079D360);
      a1 = v35;
    }

    v18 += v21;
    if (!--v17)
    {
      return v20;
    }
  }

  v20, v22, v23, v24, v25, v26, v27, v28;
  return v20;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E00D4(void (*a1)(void *, double), uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v4 = sub_1000F5104(&qword_1009413C0, &qword_1007A6A60);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v45 - v6;
  v8 = type metadata accessor for REMSuggestedAttributeOutput();
  __chkstk_darwin(v8, v9);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v46 = &v45 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v50 = v7;
  v45 = v13;
  v47 = (v13 + 32);
  v48 = (v13 + 48);
  v16 = (a3 + 80);
  v53 = &_swiftEmptyArrayStorage;
  v49 = v8;
  while (1)
  {
    v54 = v16;
    v55 = v15;
    v17 = *(v16 - 6);
    v18 = *(v16 - 5);
    v19 = *(v16 - 4);
    v20 = *(v16 - 3);
    v21 = *(v16 - 2);
    v22 = *(v16 - 1);
    v23 = *v16;
    v56[0] = v17;
    v56[1] = v18;
    v56[2] = v19;
    v56[3] = v20;
    v56[4] = v21;
    v56[5] = v22;
    v57 = v23;
    v24 = sub_1002F10C8(v17, v18, v19, v20, v21, v22, v23);
    v25 = v50;
    v26 = v58;
    v52(v56, v24);
    v58 = v26;
    if (v26)
    {
      break;
    }

    v28 = sub_1002F115C(v17, v18, v19, v20, v21, v22, v23, v27);
    v29 = v49;
    v30 = (*v48)(v25, 1, v49, v28);
    v31 = v25;
    if (v30 == 1)
    {
      sub_1000050A4(v25, &qword_1009413C0, &qword_1007A6A60);
    }

    else
    {
      v32 = v46;
      v33 = *v47;
      (*v47)(v46, v31, v29);
      v33(v51, v32, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_100368058(0, *v53->clientIdentity + 1, 1, v53);
      }

      v35 = *v53->clientIdentity;
      v34 = *&v53->clientIdentity[8];
      if (v35 >= v34 >> 1)
      {
        v53 = sub_100368058((v34 > 1), v35 + 1, 1, v53);
      }

      v36 = v53;
      *v53->clientIdentity = v35 + 1;
      v33(v36 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35, v51, v29);
    }

    v16 = v54 + 56;
    v15 = v55 - 1;
    if (v55 == 1)
    {
      return v53;
    }
  }

  sub_1002F115C(v17, v18, v19, v20, v21, v22, v23, v27);
  v53, v37, v38, v39, v40, v41, v42, v43;
  return v53;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E041C(void (*a1)(uint64_t *__return_ptr, char *, const char *), const char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = (a3 + 32);
  v6 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v26 = *v5;
    a1(&v24, &v26, a2);
    if (v3)
    {
      break;
    }

    v14 = v25;
    if (v25)
    {
      v15 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100365788(0, *v6->clientIdentity + 1, 1, v6, v16, v17, v18, v19);
      }

      v21 = *v6->clientIdentity;
      v20 = *&v6->clientIdentity[8];
      if (v21 >= v20 >> 1)
      {
        v6 = sub_100365788((v20 > 1), v21 + 1, 1, v6, v16, v17, v18, v19);
      }

      *v6->clientIdentity = v21 + 1;
      v7 = v6 + 16 * v21;
      *(v7 + 4) = v15;
      *(v7 + 5) = v14;
    }

    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  v6, a2, v8, v9, v10, v11, v12, v13;
  return v6;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E0578(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v40 = a2;
  v41 = a1;
  v5 = sub_1000F5104(&qword_100945E70, &unk_1007A6A38);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v32 - v7;
  v39 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
  v34 = *(v39 - 8);
  __chkstk_darwin(v39, v9);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v33 = &v32 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v16 = (v34 + 48);
    v17 = &_swiftEmptyArrayStorage;
    v32 = a3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(a3 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v42 = v18;
      v41(&v42);
      if (v3)
      {
        v17, v21, v22, v23, v24, v25, v26, v27;

        return v17;
      }

      if ((*v16)(v8, 1, v39) == 1)
      {
        sub_1000050A4(v8, &qword_100945E70, &unk_1007A6A38);
      }

      else
      {
        v28 = v33;
        sub_100031B58(v8, v33, &qword_1009431C0, &qword_10079D3E0);
        sub_100031B58(v28, v38, &qword_1009431C0, &qword_10079D3E0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100368744(0, *v17->clientIdentity + 1, 1, v17);
        }

        v30 = *v17->clientIdentity;
        v29 = *&v17->clientIdentity[8];
        if (v30 >= v29 >> 1)
        {
          v17 = sub_100368744((v29 > 1), v30 + 1, 1, v17);
        }

        *v17->clientIdentity = v30 + 1;
        sub_100031B58(v38, v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, &qword_1009431C0, &qword_10079D3E0);
        a3 = v32;
      }

      ++v15;
      if (v20 == v35)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E0928(void (*a1)(void), uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void, __n128), uint64_t (*a7)(BOOL, unint64_t, uint64_t, _TtC7remindd19RDXPCStorePerformer *))
{
  v48 = a4;
  v49 = a5;
  v12 = sub_1000F5104(a4, a5);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v16 = &v43 - v15;
  v17 = a6(0, v14);
  v50 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v56 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v47 = &v43 - v23;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v22 = v41)
  {
    v44 = a7;
    a7 = 0;
    v54 = a3 & 0xFFFFFFFFFFFFFF8;
    v55 = a3 & 0xC000000000000001;
    v51 = (v50 + 32);
    v52 = (v50 + 48);
    v57 = v22;
    v58 = &_swiftEmptyArrayStorage;
    v45 = a1;
    v46 = a3;
    v53 = i;
    while (1)
    {
      if (v55)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a7 >= *(v54 + 16))
        {
          goto LABEL_20;
        }

        v22 = *(a3 + 8 * a7 + 32);
      }

      v25 = v22;
      v26 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        break;
      }

      v59 = v22;
      a1(&v59);
      if (v7)
      {
        v58, v27, v28, v29, v30, v31, v32, v33;

        return v58;
      }

      v34 = v57;
      if ((*v52)(v16, 1, v57) == 1)
      {
        v22 = sub_1000050A4(v16, v48, v49);
      }

      else
      {
        v35 = *v51;
        v36 = v47;
        (*v51)(v47);
        (v35)(v56, v36, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = (v44)(0, *v58->clientIdentity + 1, 1);
        }

        v38 = *v58->clientIdentity;
        v37 = *&v58->clientIdentity[8];
        if (v38 >= v37 >> 1)
        {
          v58 = v44(v37 > 1, v38 + 1, 1, v58);
        }

        v39 = v57;
        v40 = v58;
        *v58->clientIdentity = v38 + 1;
        v22 = (v35)(v40 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v38, v56, v39);
        a1 = v45;
        a3 = v46;
      }

      a7 = (a7 + 1);
      if (v26 == v53)
      {
        return v58;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v41 = v22;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E0E34(void (*a1)(__n128 *__return_ptr, id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t, void *, __n128))
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      v26 = a4;
      v8 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v9 = *(a3 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v30 = v9;
        a1(&v29, &v30);
        if (v4)
        {
          v8, v12, v13, v14, v15, v16, v17, v18;

          return v8;
        }

        if (v29.n128_u64[0])
        {
          v28 = v29;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = (v26)(0, *v8->clientIdentity + 1, 1, v8);
          }

          v20 = *v8->clientIdentity;
          v19 = *&v8->clientIdentity[8];
          v21 = v28;
          if (v20 >= v19 >> 1)
          {
            v22 = v26(v19 > 1, v20 + 1, 1, v8, v28);
            v21 = v28;
            v8 = v22;
          }

          *v8->clientIdentity = v20 + 1;
          *&v8->clientIdentity[16 * v20 + 16] = v21;
        }

        ++v7;
        if (v11 == v6)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v23 = a4;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      a4 = v23;
      v6 = v24;
    }

    while (v24);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1003E1008()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945DD8);
  v1 = sub_100006654(v0, qword_100945DD8);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003E10D0()
{
  result = [objc_opt_self() alarmEngine];
  qword_100945DF0 = result;
  return result;
}

uint64_t sub_1003E11A4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100945DD8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.RDTimeAlarmProducer.reload}", v10, 2u);
  }

  v23[1] = os_transaction_create();
  static os_signpost_type_t.begin.getter();
  if (qword_100936018 != -1)
  {
    swift_once();
  }

  v11 = qword_100945DF0;
  static OSSignpostID.exclusive.getter();
  v23[0] = v11;
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_10000F61C((v1 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_dataSource), *(v1 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_dataSource + 24));
  static os_signpost_type_t.begin.getter();
  if (qword_1009360B0 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);

  v14 = sub_100412834(v13);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_1003E1524(v14);
  sub_1003E1A6C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_1003E4294();
  return swift_unknownObjectRelease();
}

void sub_1003E1524(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  isa = v4[-1].isa;
  __chkstk_darwin(v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started) == 1)
  {
    v50 = v4;
    static os_signpost_type_t.begin.getter();
    if (qword_100936018 != -1)
    {
      swift_once();
    }

    v49 = isa;
    v14 = qword_100945DF0;
    static OSSignpostID.exclusive.getter();
    v48 = v14;
    os_signpost(_:dso:log:name:signpostID:)();
    v47 = *(v10 + 8);
    v47(v13, v9);
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945DD8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDTimeAlarmProducer is firing expired alarms", v18, 2u);
    }

    v19 = Date.init(timeIntervalSinceNow:)();
    __chkstk_darwin(v19, v20);
    *(&v46 - 2) = v8;
    v21 = sub_1003DFE04(sub_1003E4450, (&v46 - 4), a1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *v21->clientIdentity;
      _os_log_impl(&_mh_execute_header, v22, v23, "RDTimeAlarmProducer is firing expired alarms, count = %ld", v24, 0xCu);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    __chkstk_darwin(Strong, v26);
    *(&v46 - 2) = v8;
    v27 = sub_10024D7DC(sub_1003E446C, (&v46 - 4), v21);
    v21, v28, v29, v30, v31, v32, v33, v34;
    sub_1002928F8(v2, v27, Strong);
    v27, v35, v36, v37, v38, v39, v40, v41;
    swift_unknownObjectRelease();
    (*(v49 + 1))(v8, v50);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v47(v13, v9);
  }

  else
  {
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_100945DD8);
    v50 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v50, v43, "RDTimeAlarmProducer.start() must be called before fireExpiredAlarms", v44, 2u);
    }

    v45 = v50;
  }
}

void sub_1003E1A6C(void *a1)
{
  v209 = a1;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v190 - v4;
  v6 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  __chkstk_darwin(v6 - 8, v7);
  v205 = (&v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v10);
  v206 = (&v190 - v11);
  v213 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  isa = v213[-1].isa;
  __chkstk_darwin(v213, v13);
  v200 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v204 = (&v190 - v17);
  __chkstk_darwin(v18, v19);
  v21 = &v190 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v190 - v24;
  __chkstk_darwin(v26, v27);
  v29 = &v190 - v28;
  v211 = type metadata accessor for Date();
  v207 = *(v211 - 8);
  __chkstk_darwin(v211, v30);
  v198 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v199 = &v190 - v34;
  __chkstk_darwin(v35, v36);
  v208 = &v190 - v37;
  __chkstk_darwin(v38, v39);
  v203 = &v190 - v40;
  __chkstk_darwin(v41, v42);
  v212 = &v190 - v43;
  v44 = type metadata accessor for OSSignpostID();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44, v46);
  v48 = &v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v1;
  v49 = &qword_100936000;
  if (*(v1 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started) == 1)
  {
    v201 = v29;
    v192 = v5;
    static os_signpost_type_t.begin.getter();
    if (qword_100936018 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v50 = qword_100945DF0;
      static OSSignpostID.exclusive.getter();
      v194 = v50;
      os_signpost(_:dso:log:name:signpostID:)();
      v52 = v45[1];
      v51 = (v45 + 1);
      v202 = v48;
      v196 = v44;
      v195 = v52;
      v52(v48, v44);
      v53 = v211;
      if (v49[2] != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      v193 = sub_100006654(v54, qword_100945DD8);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "RDTimeAlarmProducer is setting up the timers", v57, 2u);
        v53 = v211;
      }

      v58 = v212;
      v59 = Date.init()();
      __chkstk_darwin(v59, v60);
      *(&v190 - 2) = v58;
      v61 = sub_1003DFE04(sub_1003E437C, (&v190 - 4), v209);
      v44 = v61;
      v49 = *v61->clientIdentity;
      v197 = v51;
      if (!v49)
      {
        break;
      }

      v69 = v210;
      v48 = v61 + ((*(isa + 80) + 32) & ~*(isa + 80));
      sub_1003E4398(v48, v25);
      if (v49 == 1)
      {
LABEL_9:
        v44, v70, v71, v72, v73, v74, v75, v76;
        v77 = v205;
        sub_100031B58(v25, v205, &unk_1009464C0, &qword_10079D360);
        v78 = 0;
        v79 = v69;
        v53 = v211;
        goto LABEL_18;
      }

      v164 = 1;
      v45 = &unk_1009464C0;
      while (v164 < *(v44 + 16))
      {
        sub_1003E4398(&v48[*(isa + 9) * v164], v21);
        if (static Date.< infix(_:_:)())
        {
          sub_1000050A4(v25, &unk_1009464C0, &qword_10079D360);
          sub_100031B58(v21, v25, &unk_1009464C0, &qword_10079D360);
        }

        else
        {
          sub_1000050A4(v21, &unk_1009464C0, &qword_10079D360);
        }

        if (v49 == ++v164)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_49:
      swift_once();
    }

    v61, v62, v63, v64, v65, v66, v67, v68;
    v78 = 1;
    v79 = v210;
    v77 = v205;
LABEL_18:
    v84 = v213;
    (*(isa + 7))(v77, v78, 1, v213);
    v85 = v206;
    sub_100031B58(v77, v206, &qword_100945E58, &unk_1007ACAD0);
    v86 = (*(isa + 6))(v85, 1, v84);
    v87 = v201;
    v88 = v202;
    v89 = v208;
    if (v86 == 1)
    {
      sub_1000050A4(v85, &qword_100945E58, &unk_1007ACAD0);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v207;
      if (v92)
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "No alarm with future fireDate -- Done", v94, 2u);
      }

      v95 = v196;
      if (*(v79 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_beforeFirstUnlockNotificationEngine))
      {
        v96 = v192;
        (*(v93 + 56))(v192, 1, 1, v53);
        sub_10030418C(v96);
        sub_1000050A4(v96, &unk_100938850, qword_100795AE0);
      }

      (*(v93 + 8))(v212, v53);
      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v195(v88, v95);
    }

    else
    {
      sub_100031B58(v85, v201, &unk_1009464C0, &qword_10079D360);
      v97 = v203;
      Date.init()();
      v98 = v207;
      v99 = v212;
      v206 = *(v207 + 8);
      (v206)(v212, v53);
      v100 = *(v98 + 32);
      v100(v99, v97, v53);
      v101 = v204;
      sub_1003E4398(v87, v204);

      v100(v89, v101 + SLODWORD(v84[6].isa), v53);
      if (static Date.> infix(_:_:)())
      {
        sub_1003E4398(v87, v101);
        v102 = *v101;

        (v206)(v101 + SLODWORD(v213[6].isa), v53);
        v103 = (v98 + 16);
        v104 = *(v98 + 16);
        v105 = v199;
        v203 = v103;
        v198 = v104;
        (v104)(v199, v89, v53);
        v106 = v200;
        sub_1003E4398(v87, v200);
        v107 = v102;
        v108 = Logger.logObject.getter();
        LODWORD(v102) = static os_log_type_t.default.getter();
        v209 = v107;

        LODWORD(v193) = v102;
        v205 = v108;
        if (os_log_type_enabled(v108, v102))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v215[0] = v191;
          *v109 = 136447234;
          sub_1003E4408(&qword_100937010, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v112 = v106;
          v114 = v113;
          v115 = v105;
          v116 = v206;
          (v206)(v115, v53);
          v117 = sub_10000668C(v111, v114, v215);
          v114, v118, v119, v120, v121, v122, v123, v124;
          *(v109 + 4) = v117;
          *(v109 + 12) = 2080;
          sub_1003E4398(v112, v101);
          isa_low = SLODWORD(v213[6].isa);
          v214 = *v101;
          v126 = String.init<A>(describing:)();
          v128 = v127;
          sub_1000050A4(v112, &unk_1009464C0, &qword_10079D360);
          v116(v101 + isa_low, v53);
          v129 = sub_10000668C(v126, v128, v215);
          v128, v130, v131, v132, v133, v134, v135, v136;
          *(v109 + 14) = v129;
          *(v109 + 22) = 2114;
          v137 = v209;
          v138 = [v209 objectID];
          *(v109 + 24) = v138;
          v139 = v110;
          *v110 = v138;
          *(v109 + 32) = 2082;
          if ([v137 isRecurrent])
          {
            v140 = 89;
          }

          else
          {
            v140 = 78;
          }

          v141 = sub_10000668C(v140, 0xE100000000000000, v215);
          0xE100000000000000, v142, v143, v144, v145, v146, v147, v148;
          *(v109 + 34) = v141;
          *(v109 + 42) = 2082;
          v87 = v201;
          v149 = v210;
          if ([v137 isOverdue])
          {
            v150 = 89;
          }

          else
          {
            v150 = 78;
          }

          v151 = v211;
          v152 = v202;
          v153 = sub_10000668C(v150, 0xE100000000000000, v215);
          0xE100000000000000, v154, v155, v156, v157, v158, v159, v160;
          *(v109 + 44) = v153;
          v161 = v205;
          _os_log_impl(&_mh_execute_header, v205, v193, "Scheduling next alarm {fireDate: %{public}s, nextAlarm: %s, reminderID: %{public}@, recurrent: %{public}s, overdue: %{public}s}", v109, 0x34u);
          sub_1000050A4(v139, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v89 = v208;

          v162 = v192;
          v163 = v116;
        }

        else
        {

          sub_1000050A4(v106, &unk_1009464C0, &qword_10079D360);
          v151 = v53;
          v163 = v206;
          (v206)(v105, v53);
          v162 = v192;
          v149 = v210;
          v152 = v202;
        }

        v188 = *(v149 + OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_beforeFirstUnlockNotificationEngine);
        v187 = v196;
        if (v188)
        {
          (v198)(v162, v89, v151);
          (*(v207 + 56))(v162, 0, 1, v151);
          sub_10030418C(v162);
          sub_1000050A4(v162, &unk_100938850, qword_100795AE0);
        }

        sub_1003B80B8(v89);

        v163(v89, v151);
        sub_1000050A4(v87, &unk_1009464C0, &qword_10079D360);
        v163(v212, v151);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v189 = v152;
      }

      else
      {
        v165 = v206;
        v166 = v98;
        v167 = v53;
        v168 = v198;
        (*(v166 + 16))(v198, v89, v53);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = v168;
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *&v214 = v173;
          *v172 = 136446210;
          v174 = Date.description.getter();
          v176 = v175;
          v165(v171, v167);
          v177 = sub_10000668C(v174, v176, &v214);
          v178 = v176;
          v89 = v208;
          v178, v179, v180, v181, v182, v183, v184, v185;
          *(v172 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v169, v170, "Next alarm is in the past -- Not adding event {fireDate: %{public}s}", v172, 0xCu);
          sub_10000607C(v173);
          v186 = v202;

          v187 = v196;
        }

        else
        {

          v165(v168, v53);
          v187 = v196;
          v186 = v202;
        }

        sub_1003E1524(v209);
        v165(v89, v167);
        sub_1000050A4(v201, &unk_1009464C0, &qword_10079D360);
        v165(v212, v167);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v189 = v186;
      }

      v195(v189, v187);
    }
  }

  else
  {
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100006654(v80, qword_100945DD8);
    v213 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v213, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v213, v81, "RDTimeAlarmProducer.start() must be called before setupTimers", v82, 2u);
    }

    v83 = v213;
  }
}

uint64_t sub_1003E2B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a3;
  v88 = a2;
  v4 = type metadata accessor for Date();
  v81 = *(v4 - 8);
  v5 = v81;
  __chkstk_darwin(v4, v6);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v80 - v10;
  __chkstk_darwin(v12, v13);
  v87 = &v80 - v14;
  v15 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v16 = v15 - 8;
  __chkstk_darwin(v15, v17);
  v19 = &v80 - v18;
  sub_1003E4398(a1, &v80 - v18);
  v21 = *v19;
  v20 = *(v19 + 1);
  v22 = *(v5 + 8);
  v22(&v19[*(v16 + 56)], v4);
  sub_1003E4398(a1, v19);
  v23 = *v19;
  v24 = v21;
  v25 = v20;
  v26 = v87;
  v83 = v25;

  v27 = *(v16 + 56);
  v28 = v81;
  (*(v81 + 32))(v26, &v19[v27], v4);
  sub_1003E448C();
  static NSDateInterval.remNotificationFireDateGracePeriod.getter();
  Date.addingTimeInterval(_:)();
  v86 = static Date.> infix(_:_:)();
  v84 = v22;
  v88 = v5 + 8;
  v22(v11, v4);
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_100945DD8);
  v30 = v82;
  (*(v28 + 16))(v82, v26, v4);
  v31 = v24;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v80 = v35;
    v81 = swift_slowAlloc();
    v89 = v81;
    *v34 = 138544130;
    v36 = [v31 objectID];
    *(v34 + 4) = v36;
    *v35 = v36;
    *(v34 + 12) = 2082;
    v37 = Date.description.getter();
    v39 = v38;
    v40 = v30;
    v41 = v84;
    v84(v40, v4);
    v42 = sub_10000668C(v37, v39, &v89);
    v39, v43, v44, v45, v46, v47, v48, v49;
    *(v34 + 14) = v42;
    *(v34 + 22) = 2082;
    if (v86)
    {
      v50 = 0x657669746361;
    }

    else
    {
      v50 = 0x65766973736170;
    }

    if (v86)
    {
      v51 = 0xE600000000000000;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    v52 = sub_10000668C(v50, v51, &v89);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v34 + 24) = v52;
    *(v34 + 32) = 2082;
    v26 = v87;
    if ([v31 isRecurrent])
    {
      v60 = 89;
    }

    else
    {
      v60 = 78;
    }

    v61 = sub_10000668C(v60, 0xE100000000000000, &v89);
    0xE100000000000000, v62, v63, v64, v65, v66, v67, v68;
    *(v34 + 34) = v61;
    _os_log_impl(&_mh_execute_header, v32, v33, "RDTimeAlarmProducer expiredAlarm {reminderID: %{public}@, fireDate: %{public}s alarmType: %{public}s, recurrent: %{public}s}", v34, 0x2Au);
    sub_1000050A4(v80, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {

    v69 = v30;
    v41 = v84;
    v84(v69, v4);
  }

  v70 = v83;
  v71 = sub_1007467B8(v83);
  v73 = v72;
  v75 = v74;
  v77 = v76;

  result = v41(v26, v4);
  v79 = v85;
  *v85 = v31;
  v79[1] = v71;
  v79[2] = v73;
  v79[3] = v75;
  *(v79 + 32) = v77;
  *(v79 + 33) = (v86 & 1) == 0;
  *(v79 + 34) = 1;
  return result;
}

void sub_1003E313C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v0[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started])
  {
    if (qword_100936010 == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_100945DD8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "RDTimeAlarmProducer.start() must be called exactly once", v12, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v0[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started] = 1;
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945DD8);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v44 = 60;
    v45 = 0xE100000000000000;
    v46 = v18;
    v19._countAndFlagsBits = sub_100597C80(v14);
    object = v19._object;
    String.append(_:)(v19);
    object, v21, v22, v23, v24, v25, v26, v27;
    v28._countAndFlagsBits = 62;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = v45;
    v30 = sub_10000668C(v44, v45, &v46);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v17 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting time alarm producer {producer: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  v38 = *&v14[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_timeEventStream + 8];
  ObjectType = swift_getObjectType();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = *(v38 + 8);
  v42 = *(v41 + 16);

  v42(sub_1003E44D8, v40, ObjectType, v41);

  sub_1003E11A4();
}

void sub_1003E3504(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100945DD8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received RDTimeEventHandler event on RDTimeAlarmProducer, reloading alarms.", v6, 2u);
    }

    sub_1003E11A4();
  }

  else
  {
    if (qword_100936010 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100945DD8);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v8, "Received RDTimeEventHandler event on deallocated RDTimeAlarmProducer", v9, 2u);
    }
  }
}

uint64_t sub_1003E36C4()
{
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100945DD8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Alarm trigger did change for time alarm producer", v3, 2u);
  }

  return sub_1003E11A4();
}

uint64_t sub_1003E3814@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = type metadata accessor for DateComponents();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v50 - v11;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  *&v20 = __chkstk_darwin(v17, v19).n128_u64[0];
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 dueDateComponents];
  if (v23)
  {
    v51 = v2;
    v24 = a1;
    v25 = v18;
    v26 = v17;
    v27 = a2;
    v28 = v23;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v27;
    v17 = v26;
    v18 = v25;
    a1 = v24;
    v29 = v52;
    (*(v5 + 32))(v12, v8, v52);
    sub_1004F20E4(v16);
    (*(v5 + 8))(v12, v29);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v22, v16, v17);
      [v51 timeInterval];
      Date.addingTimeInterval(_:)();
      (*(v18 + 8))(v22, v17);
      v30 = 0;
      return (*(v18 + 56))(a2, v30, 1, v17);
    }
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100945DD8);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v53 = v36;
    *v35 = 136315138;
    v37 = [v32 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_10000668C(v38, v40, &v53);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Tried to fire timeInterval alarm with nil dueDate {reminder: %s}", v35, 0xCu);
    sub_10000607C(v36);
  }

  v30 = 1;
  return (*(v18 + 56))(a2, v30, 1, v17);
}

uint64_t sub_1003E3C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, char *)@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v25 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v15 + 56);
  v20(v9, 1, 1, v14, v17);
  v26(a1, a2, v9);
  sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000050A4(v13, &unk_100938850, qword_100795AE0);
    v21 = 1;
    v22 = v27;
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    [v25[1] timeInterval];
    v23 = v27;
    Date.addingTimeInterval(_:)();
    (*(v15 + 8))(v19, v14);
    v21 = 0;
    v22 = v23;
  }

  return (v20)(v22, v21, 1, v14);
}

uint64_t sub_1003E3F60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*v1 dateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004F20E4(a1);
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1003E4088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v16 = __chkstk_darwin(v14 - 8, v15).n128_u64[0];
  v18 = &v21 - v17;
  v19 = [*v5 dateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004F20E4(v18);
  (*(v10 + 8))(v13, v9);
  a5(a1, a2, v18);
  return sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
}

uint64_t sub_1003E423C(uint64_t a1, uint64_t a2)
{
  result = sub_1003E4408(&qword_100945E50, a2, type metadata accessor for RDTimeAlarmProducer, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

void sub_1003E4294()
{
  if (qword_100936010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100945DD8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDTimeAlarmProducer.reload}", v2, 2u);
  }
}

uint64_t sub_1003E4398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E4408(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1003E448C()
{
  result = qword_100945E60;
  if (!qword_100945E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100945E60);
  }

  return result;
}

uint64_t sub_1003E44E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093EDF8, &qword_10079D5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003E4560(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDXPCDaemon();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1003E4674()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_indexingPerformer);
  v2 = v1;
  return v1;
}

void *sub_1003E46A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1005D13D0();

    return v2;
  }

  else
  {

    return sub_10038E004(&_swiftEmptyArrayStorage);
  }
}

id sub_1003E470C(void *a1, uint64_t a2, NSObject *a3)
{
  v85 = a3;
  v81 = a2;
  v4 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  __chkstk_darwin(v4 - 8, v5);
  v83 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for UUID();
  v7 = *(v87 - 8);
  __chkstk_darwin(v87, v8);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v15 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = v75 - v18;
  v20 = objc_opt_self();
  v82 = a1;
  v21 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v23 = v22;
  (*(v7 + 8))(v10, v87);
  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  v32 = [v20 urlForIsolatedContainerWithIdentifier:v24];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = 0;
  v33 = v85;
  v34 = *(&v85->isa + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue);
  v35 = *(v12 + 16);
  v86 = v19;
  v36 = v19;
  v37 = v13;
  v80 = v12 + 16;
  v79 = v35;
  v35(v15, v36, v11);
  v38 = *(v12 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = &v93;
  *(v39 + 24) = v33;
  v40 = v33;
  v84 = v12;
  v41 = *(v12 + 32);
  v77 = v15;
  v87 = v11;
  v42 = v11;
  v43 = v39;
  v78 = v41;
  v41(v39 + ((v38 + 32) & ~v38), v15, v42);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1003E55C8;
  *(v44 + 24) = v43;
  *&v92 = sub_100008D30;
  *(&v92 + 1) = v44;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10000F160;
  v91 = &unk_1008F0488;
  v45 = _Block_copy(&aBlock);
  v46 = v40;

  v85 = v34;
  dispatch_sync(v34, v45);
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (v93)
  {
    v47 = *(v84 + 8);
    v48 = v93;
    v47(v86, v87);
    v49 = 0;
    v50 = 0;
LABEL_7:
    v74 = v93;

    sub_1000FDA80(v49, v50);
    return v48;
  }

  v76 = v46;
  v75[1] = v43;
  v34 = ~v38;
  v51 = objc_allocWithZone(RDStoreController);
  v43 = v86;
  URL._bridgeToObjectiveC()(v52);
  v54 = v53;
  v55 = [v51 initWithIsolatedReminderDataContainerURL:v53];

  type metadata accessor for RDAccountUtils();
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v56 + 24) = &off_1008F03B0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v57 = v82;
  *(v56 + 40) = v82;
  v58 = v57;
  [v55 setAccountUtils:v56];

  *&v94 = 0x4014000000000000;
  type metadata accessor for RDStoreControllerNotificationCenter();
  v95 = 0;
  v96 = 0;
  *(&v94 + 1) = 0;
  v97 = 0;
  swift_allocObject();
  v59 = v55;
  v46 = sub_1004417C4(0, 0, v59, &v94);
  v82 = v59;

  if (qword_100935D20 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v60 = v83;
  sub_10043B68C(qword_100974CB8, sub_10016824C, 0, v83);
  sub_1000FBE54(v60);
  v61 = v77;
  v62 = v43;
  v63 = v87;
  v79(v77, v62, v87);
  v64 = (v38 + 16) & v34;
  v65 = (v37 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v78(v50 + v64, v61, v63);
  v67 = v76;
  *(v50 + v65) = v76;
  v68 = v82;
  *(v50 + v66) = v82;
  *(v50 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1003E562C;
  *(v69 + 24) = v50;
  *&v92 = sub_10000F188;
  *(&v92 + 1) = v69;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10000F160;
  v91 = &unk_1008F0500;
  v70 = _Block_copy(&aBlock);
  v71 = v67;
  v48 = v68;

  dispatch_sync(v85, v70);
  _Block_release(v70);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if ((v70 & 1) == 0)
  {
    aBlock = 0xD000000000000025;
    v89 = 0x80000001007F7DE0;
    v91 = 0;
    *&v92 = 0;
    v90 = 0;
    *(&v92 + 6) = 0;
    __chkstk_darwin(result, v73);
    v75[-2] = v48;
    sub_100014A64(&aBlock, sub_1003E56D0, &v75[-4]);
    (*(v84 + 8))(v86, v87);

    v49 = sub_1003E562C;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1003E4F84(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
    v3 = a1;
    v4 = sub_1003E470C(v3, v1, v2);
    v5 = type metadata accessor for RDXPCChangeTrackingPerformer();
    v6 = objc_allocWithZone(v5);
    v7 = type metadata accessor for REMNSPersistentHistoryTracking();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController] = v4;
    v19.receiver = v8;
    v19.super_class = v7;
    v9 = v4;
    *&v6[OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation] = objc_msgSendSuper2(&v19, "init");
    v18.receiver = v6;
    v18.super_class = v5;
    v10 = objc_msgSendSuper2(&v18, "init");

    return v10;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_storeController);
    v13 = type metadata accessor for RDXPCChangeTrackingPerformer();
    v14 = objc_allocWithZone(v13);
    v15 = type metadata accessor for REMNSPersistentHistoryTracking();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController] = v12;
    v21.receiver = v16;
    v21.super_class = v15;
    v17 = v12;
    *&v14[OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation] = objc_msgSendSuper2(&v21, "init");
    v20.receiver = v14;
    v20.super_class = v13;
    return objc_msgSendSuper2(&v20, "init");
  }
}

char *sub_1003E50E0(void *a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v39, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8, v12);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
  }

  v34 = v3;
  v18 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
  v36 = sub_1003E470C(a1, v1, v18);
  v37 = a1;
  v19 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter;
  v38 = v1;
  v20 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager;
  v21 = type metadata accessor for RDXPCDebugPerformer();
  v32 = "Contact Interaction";
  v33 = v21;
  v35 = *(&v18->isa + v20);
  v40 = *(&v18->isa + v19);
  v22 = objc_allocWithZone(v21);
  v30[1] = v10;
  v23 = v22;
  *&v22[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL;
  v31 = v7;
  v25 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v23[v24] = [v25 strongToWeakObjectsMapTable];
  v26 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL;
  *&v23[v26] = [objc_opt_self() strongToStrongObjectsMapTable];
  v30[0] = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue;
  sub_100007F54();
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.utility(_:), v13);
  static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  static DispatchQoS.unspecified.getter();
  v42 = &_swiftEmptyArrayStorage;
  sub_10000D458(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB90(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v23[v30[0]] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater] = 0;
  v27 = v37;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController] = v36;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeContainerToken] = v27;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter] = v40;
  *&v23[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] = v35;
  v41.receiver = v23;
  v41.super_class = v33;
  v28 = objc_msgSendSuper2(&v41, "init");
  *&v28[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8] = &off_1008F03B0;
  swift_unknownObjectWeakAssign();
  return v28;
}

void sub_1003E55C8()
{
  type metadata accessor for URL();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1001681C4(v1, v2);
}

void sub_1003E562C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = (&v2->super.isa + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100168340(v5, v6, v7, v2);
}

uint64_t sub_1003E56EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945F00);
  v1 = sub_100006654(v0, qword_100945F00);
  if (qword_100936480 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E57B4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1003E57EC(unint64_t a1)
{
  if (qword_100936020 != -1)
  {
LABEL_56:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100945F00);

  v76 = v3;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = a1 >> 62;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v7 = 134218242;
    if (v6)
    {
      goto LABEL_64;
    }

    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    *(v7 + 4) = v16;
    a1, v8, v9, v10, v11, v12, v13, v14;
    *(v7 + 6) = 2080;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    v17 = Array.description.getter();
    v19 = v18;
    v20 = sub_10000668C(v17, v18, &aBlock);
    v19, v21, v22, v23, v24, v25, v26, v27;
    *(v7 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing %ld reminderStorages {reminderStorages: %s}", v7, 0x16u);
    sub_10000607C(v15);
  }

  else
  {

    a1, v28, v29, v30, v31, v32, v33, v34;
  }

  v5 = v76;
  if (v6)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_9:
      v36 = 0;
      v83 = 0;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v85 = 0;
      v86 = a1 & 0xC000000000000001;
      v81 = a1 & 0xFFFFFFFFFFFFFF8;
      v82 = a1;
      v84 = v35;
      while (1)
      {
        if (v86)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(v81 + 16))
          {
            goto LABEL_51;
          }

          v38 = *(a1 + 8 * v36 + 32);
        }

        v39 = v38;
        v6 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_50;
        }

        v40 = [v38 siriFoundInAppsData];
        if (v40)
        {
          v41 = v40;
          v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          sub_1000060C8(0, &qword_100945FC8, SGRecordId_ptr);
          v45 = static SGRecordId.createFrom(data:)();
          if (v45)
          {
            v46 = v45;
            v47 = [v39 siriFoundInAppsUserConfirmation];
            if (v47)
            {
              if (v47 == 2)
              {
                a1 = v46;
                v48 = Logger.logObject.getter();
                v49 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v48, v49))
                {
                  log = v48;
                  v50 = swift_slowAlloc();
                  v51 = swift_slowAlloc();
                  *v50 = 138412290;
                  *(v50 + 4) = a1;
                  *v51 = v46;
                  v52 = a1;
                  _os_log_impl(&_mh_execute_header, log, v49, "CoreSuggestions rejectReminder sent {sgRecordID: %@}", v50, 0xCu);
                  sub_100039860(v51);
                  v5 = v76;

                  v48 = log;
                }

                v53 = *(v77 + 16);
                v91 = sub_1003E60D4;
                v92 = 0;
                aBlock = _NSConcreteStackBlock;
                v88 = 1107296256;
                v89 = sub_100042968;
                v90 = &unk_1008F0590;
                v54 = _Block_copy(&aBlock);
                [v53 rejectReminderByRecordId:a1 withCompletion:v54];

                sub_10001BBA0(v42, v44);
                _Block_release(v54);
                if (__OFADD__(v79, 1))
                {
                  goto LABEL_53;
                }

                ++v79;
                a1 = v82;
              }

              else
              {
                if (v47 != 1)
                {
                  v72 = sub_1001F67C8(&_swiftEmptyArrayStorage);
                  v73 = sub_1001F67C8(&_swiftEmptyArrayStorage);
                  sub_10054573C("unknown siriFoundInAppsUserConfirmation", 39, 2, v72, v73);
                  __break(1u);
                  return;
                }

                a1 = v46;
                v59 = Logger.logObject.getter();
                v60 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v59, v60))
                {
                  loga = v59;
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  *v61 = 138412290;
                  *(v61 + 4) = a1;
                  *v62 = v46;
                  v63 = a1;
                  _os_log_impl(&_mh_execute_header, loga, v60, "CoreSuggestions confirmReminder sent {sgRecordID: %@}", v61, 0xCu);
                  sub_100039860(v62);
                  v5 = v76;

                  v59 = loga;
                }

                v64 = *(v77 + 16);
                v91 = sub_1003E60C0;
                v92 = 0;
                aBlock = _NSConcreteStackBlock;
                v88 = 1107296256;
                v89 = sub_100042968;
                v90 = &unk_1008F05B8;
                v65 = _Block_copy(&aBlock);
                [v64 confirmReminderByRecordId:a1 withCompletion:v65];

                sub_10001BBA0(v42, v44);
                _Block_release(v65);
                if (__OFADD__(v78, 1))
                {
                  goto LABEL_55;
                }

                ++v78;
                a1 = v82;
              }
            }

            else
            {

              sub_10001BBA0(v42, v44);
              v37 = __OFADD__(v80++, 1);
              if (v37)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            v7 = v39;
            sub_100029344(v42, v44);
            v4 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v4, v55))
            {
              a1 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              *a1 = 138412546;
              v56 = [v7 objectID];
              *(a1 + 4) = v56;
              *v15 = v56;
              *(a1 + 12) = 2048;
              v57 = v44 >> 62;
              if ((v44 >> 62) > 1)
              {
                if (v57 == 2)
                {
                  v68 = *(v42 + 16);
                  v67 = *(v42 + 24);
                  v37 = __OFSUB__(v67, v68);
                  v58 = v67 - v68;
                  if (v37)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {
                  v58 = 0;
                }
              }

              else if (v57)
              {
                LODWORD(v58) = HIDWORD(v42) - v42;
                if (__OFSUB__(HIDWORD(v42), v42))
                {
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  v16 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_5;
                }

                v58 = v58;
              }

              else
              {
                v58 = BYTE6(v44);
              }

              *(a1 + 14) = v58;
              sub_10001BBA0(v42, v44);
              _os_log_impl(&_mh_execute_header, v4, v55, "Unable to get SGRecordId from siriFoundInAppsData. {reminderID: %@, siriFoundInAppsData.count: %ld}", a1, 0x16u);
              sub_100039860(v15);

              v66 = v4;
              a1 = v82;
            }

            else
            {
              sub_10001BBA0(v42, v44);
              v66 = v7;
              v7 = v4;
            }

            sub_10001BBA0(v42, v44);

            v37 = __OFADD__(v83++, 1);
            if (v37)
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          v35 = v84;
        }

        else
        {

          v37 = __OFADD__(v85++, 1);
          if (v37)
          {
            goto LABEL_52;
          }
        }

        ++v36;
        if (v6 == v35)
        {
          goto LABEL_59;
        }
      }
    }
  }

  v85 = 0;
  v83 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
LABEL_59:
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134219008;
    *(v71 + 4) = v78;
    *(v71 + 12) = 2048;
    *(v71 + 14) = v79;
    *(v71 + 22) = 2048;
    *(v71 + 24) = v80;
    *(v71 + 32) = 2048;
    *(v71 + 34) = v83;
    *(v71 + 42) = 2048;
    *(v71 + 44) = v85;
    _os_log_impl(&_mh_execute_header, v69, v70, "Done processing reminderStorages, counts {confirm: %ld, reject: %ld, none: %ld, error: %ld, irrelevant: %ld}", v71, 0x34u);
  }
}

void sub_1003E60E8(_TtC7remindd19RDXPCStorePerformer *a1)
{
  if (qword_100936020 != -1)
  {
LABEL_50:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100006654(v3, qword_100945F00);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = a1 >> 62;
  if (!os_log_type_enabled(v5, v6))
  {

    a1, v28, v29, v30, v31, v32, v33, v34;
    goto LABEL_7;
  }

  v4 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  aBlock[0] = v1;
  *v4 = 134218242;
  if (v7)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v4 + 4) = i;
    a1, v8, v9, v10, v11, v12, v13, v14;
    *(v4 + 12) = 2080;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    v16 = Array.description.getter();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, aBlock);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v4 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing %ld expiredReminders {reminders: %s}", v4, 0x16u);
    sub_10000607C(v1);

LABEL_7:
    if (v7)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
LABEL_52:
        v35 = 0;
        v80 = 0;
LABEL_53:
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 134218240;
          *(v76 + 4) = v80;
          *(v76 + 12) = 2048;
          *(v76 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v74, v75, "Done processing expiredReminders, counts {expire: %ld, error: %ld}", v76, 0x16u);
        }

        return;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_52;
      }
    }

    if (v7 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_57:
    ;
  }

  v35 = 0;
  v80 = 0;
  v36 = 0;
  v83 = a1 & 0xC000000000000001;
  *&v27 = 138412290;
  v77 = v27;
  v79 = a1;
  v82 = v7;
  while (1)
  {
    v42 = v83 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *&a1->clientIdentity[8 * v36 + 16];
    v43 = v42;
    v44 = [v42 siriFoundInAppsData];
    if (v44)
    {
      break;
    }

    v54 = v43;
    v55 = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v1))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = v77;
      v39 = [v54 objectID];
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v55, v1, "Unable to find siriFoundInAppsData. {reminderID: %@}", v37, 0xCu);
      sub_100039860(v38);

      v7 = v82;

      v40 = v55;
    }

    else
    {
      v40 = v54;
      v54 = v55;
    }

    v41 = __OFADD__(v35++, 1);
    if (v41)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_13:
    if (v7 == ++v36)
    {
      goto LABEL_53;
    }
  }

  v45 = v44;
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v49 = [v43 list];
  v50 = [v49 objectID];

  v1 = [objc_opt_self() siriFoundInAppsListID];
  LOBYTE(v45) = static NSObject.== infix(_:_:)();

  if ((v45 & 1) == 0)
  {
    v81 = v46;
    v56 = v43;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v1 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v1 = 138412546;
      v60 = [v56 objectID];
      *(v1 + 4) = v60;
      *v59 = v60;
      *(v1 + 6) = 2112;
      v61 = [v56 list];
      v62 = [v61 objectID];

      *(v1 + 14) = v62;
      v59[1] = v62;
      _os_log_impl(&_mh_execute_header, v57, v58, "Reminder is not in SiriFoundInApps list {reminderID: %@, listID: %@}", v1, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      a1 = v79;

      v63 = v57;
    }

    else
    {
      v63 = v56;
      v56 = v57;
    }

    sub_10001BBA0(v81, v48);

    v41 = __OFADD__(v35++, 1);
    if (v41)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  sub_1000060C8(0, &qword_100945FC8, SGRecordId_ptr);
  v51 = static SGRecordId.createFrom(data:)();
  if (v51)
  {
    v52 = v51;
    v1 = *(v78 + 16);
    aBlock[4] = sub_1003E6968;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008F0568;
    v53 = _Block_copy(aBlock);
    [v1 reminderAlarmTriggeredForRecordId:v52 withCompletion:v53];

    sub_10001BBA0(v46, v48);
    _Block_release(v53);
    v41 = __OFADD__(v80++, 1);
    if (v41)
    {
      goto LABEL_48;
    }

    goto LABEL_13;
  }

  v64 = v43;
  sub_100029344(v46, v48);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v65, v66))
  {
    sub_10001BBA0(v46, v48);
    v71 = v64;
    v64 = v65;
LABEL_44:
    sub_10001BBA0(v46, v48);

    v41 = __OFADD__(v35++, 1);
    if (v41)
    {
      goto LABEL_49;
    }

LABEL_45:
    v7 = v82;
    goto LABEL_13;
  }

  v67 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  *v67 = 138412546;
  v68 = [v64 objectID];
  *(v67 + 4) = v68;
  *v1 = v68;
  *(v67 + 12) = 2048;
  v69 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (v69)
    {
      LODWORD(v70) = HIDWORD(v46) - v46;
      if (__OFSUB__(HIDWORD(v46), v46))
      {
        goto LABEL_58;
      }

      v70 = v70;
    }

    else
    {
      v70 = BYTE6(v48);
    }

    goto LABEL_43;
  }

  if (v69 != 2)
  {
    v70 = 0;
    goto LABEL_43;
  }

  v73 = *(v46 + 16);
  v72 = *(v46 + 24);
  v41 = __OFSUB__(v72, v73);
  v70 = v72 - v73;
  if (!v41)
  {
LABEL_43:
    *(v67 + 14) = v70;
    sub_10001BBA0(v46, v48);
    _os_log_impl(&_mh_execute_header, v65, v66, "Unable to get SGRecordId from siriFoundInAppsData. {reminderID: %@, siriFoundInAppsData.count: %ld}", v67, 0x16u);
    sub_100039860(v1);

    v71 = v65;
    a1 = v79;
    goto LABEL_44;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1003E697C(uint64_t a1, const char *a2, const char *a3, ...)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100936020 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100945F00);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v10;
      v12 = sub_10000668C(v9, v10, &v25);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936020 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100945F00);
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v22, a3, v23, 2u);
    }
  }
}

uint64_t sub_1003E6C10(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E6C54(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v9 = v26 - v8;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v25)
  {
    v11 = &_swiftEmptyArrayStorage;
    if (!i)
    {
      return v11;
    }

    v12 = v7;
    v29 = &_swiftEmptyArrayStorage;
    result = sub_100253218(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v11 = v29;
    v15 = v12;
    v28 = v12 & 0xC000000000000001;
    v26[1] = v2;
    v27 = v12 & 0xFFFFFFFFFFFFFF8;
    v16 = v12;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v28)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v27 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v15 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = [v18 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);

      v29 = v11;
      v23 = *v11->clientIdentity;
      v22 = *&v11->clientIdentity[8];
      v2 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_100253218((v22 > 1), v23 + 1, 1);
        v11 = v29;
      }

      *v11->clientIdentity = v2;
      sub_100031B58(v9, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, &unk_100939D90, "8\n\r");
      ++v14;
      v15 = v16;
      if (v17 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v24 = v7;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v24;
  }

  __break(1u);
  return result;
}

void sub_1003E6ED0(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v46 = *(v3 - 8);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v40 - v5;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    v53 = &_swiftEmptyArrayStorage;
    sub_100253218(0, v7 & ~(v7 >> 63), 0);
    v8 = v53;
    if (v47)
    {
      v9 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v9 = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v50 = v9;
    v51 = v10;
    v52 = v47 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v44 = v7;
      v45 = v6;
      v11 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v42 = a1 + 56;
      v43 = v12;
      v40 = v1;
      v41 = a1 + 64;
      v48 = a1;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_38;
        }

        v21 = v50;
        v20 = v51;
        v22 = v52;
        sub_100411AE4(v50, v51, v52, a1);
        v24 = v23;
        v25 = [v23 uuid];
        v26 = v45;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 56))(v26, 0, 1, v27);

        v53 = v8;
        v29 = *v8->clientIdentity;
        v28 = *&v8->clientIdentity[8];
        if (v29 >= v28 >> 1)
        {
          sub_100253218((v28 > 1), v29 + 1, 1);
          v8 = v53;
        }

        *v8->clientIdentity = v29 + 1;
        sub_100031B58(v26, v8 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29, &unk_100939D90, "8\n\r");
        if (v47)
        {
          a1 = v48;
          if (!v22)
          {
            goto LABEL_43;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v44;
          sub_1000F5104(&qword_100946070, &qword_1007A7668);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v13(v49, 0);
          if (v11 == v7)
          {
LABEL_35:
            sub_100010E34(v50, v51, v52, v14, v15, v16, v17, v18);
            return;
          }
        }

        else
        {
          a1 = v48;
          if (v22)
          {
            goto LABEL_44;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v30 = (1 << *(v48 + 32));
          if (v21 >= v30)
          {
            goto LABEL_39;
          }

          v31 = v21 >> 6;
          v32 = *(v42 + 8 * (v21 >> 6));
          if (((v32 >> v21) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v48 + 36) != v20)
          {
            goto LABEL_41;
          }

          v33 = v32 & (-2 << (v21 & 0x3F));
          if (v33)
          {
            v30 = (__clz(__rbit64(v33)) | v21 & 0x7FFFFFFFFFFFFFC0);
            v7 = v44;
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v41 + 8 * v31);
            v7 = v44;
            while (v35 < &v30->storeProvider[1] >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_100010E34(v21, v20, 0, v14, v15, v16, v17, v18);
                v30 = (__clz(__rbit64(v37)) + v34);
                goto LABEL_33;
              }
            }

            sub_100010E34(v21, v20, 0, v14, v15, v16, v17, v18);
LABEL_33:
            a1 = v48;
          }

          v39 = *(a1 + 36);
          v50 = v30;
          v51 = v39;
          v52 = 0;
          if (v11 == v7)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E7318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026EF4(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v3 += 4;
      v4 = static String._uncheckedFromUTF8(_:)();
      v7 = *_swiftEmptyArrayStorage.clientIdentity;
      v6 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v7 >= v6 >> 1)
      {
        v10 = v5;
        v11 = v4;
        sub_100026EF4((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v11;
      }

      *_swiftEmptyArrayStorage.clientIdentity = v7 + 1;
      v8 = &_swiftEmptyArrayStorage + 16 * v7;
      *(v8 + 4) = v4;
      *(v8 + 5) = v5;
      --v1;
    }

    while (v1);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003E74A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10025329C(0, v2, 0);
    result = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 >= 0x7FFF)
      {
        v5 = 0x7FFFLL;
      }

      if (v5 <= -32768)
      {
        v7 = 0x8000;
      }

      else
      {
        v7 = v5;
      }

      v11 = result;
      v9 = *result->clientIdentity;
      v8 = *&result->clientIdentity[8];
      if (v9 >= v8 >> 1)
      {
        sub_10025329C((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      *result->clientIdentity = v9 + 1;
      v10 = result + 4 * v9;
      *(v10 + 16) = v7;
      v10[34] = 0;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1003E7588(uint64_t a1, uint64_t (*a2)(_TtC7remindd19RDXPCStorePerformer *, uint64_t, BOOL, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v46 = a3;
  v47 = a4;
  v51 = a2;
  v50 = type metadata accessor for UUID();
  v52 = *(v50 - 8);
  __chkstk_darwin(v50, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (v9)
  {
    v59 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v9 & ~(v9 >> 63), 0);
    v54 = v59;
    if (v53)
    {
      v10 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v10 = _HashTable.startBucket.getter();
      v11 = *(a1 + 36);
    }

    v56 = v10;
    v57 = v11;
    v58 = v53 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v42[1] = v4;
      v12 = 0;
      v48 = v9;
      v49 = v52 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v44 = a1 + 56;
      v45 = v13;
      v43 = a1 + 64;
      while (v12 < v9)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_39;
        }

        v21 = v56;
        v22 = v57;
        v23 = v58;
        v24 = a1;
        v25 = v51(v56, v57, v58, a1);
        v26 = [v25 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = v54;
        v59 = v54;
        v28 = v8;
        v30 = *v54->clientIdentity;
        v29 = *&v54->clientIdentity[8];
        if (v30 >= v29 >> 1)
        {
          sub_100253258((v29 > 1), v30 + 1, 1);
          v27 = v59;
        }

        *v27->clientIdentity = v30 + 1;
        v31 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v54 = v27;
        (*(v52 + 32))(v27 + v31 + *(v52 + 72) * v30, v28, v50);
        v8 = v28;
        if (v53)
        {
          if (!v23)
          {
            goto LABEL_44;
          }

          a1 = v24;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(v46, v47);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v14(v55, 0);
        }

        else
        {
          if (v23)
          {
            goto LABEL_45;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          a1 = v24;
          v32 = (1 << *(v24 + 32));
          if (v21 >= v32)
          {
            goto LABEL_40;
          }

          v33 = v21 >> 6;
          v34 = *(v44 + 8 * (v21 >> 6));
          if (((v34 >> v21) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v24 + 36) != v22)
          {
            goto LABEL_42;
          }

          v35 = v34 & (-2 << (v21 & 0x3F));
          if (v35)
          {
            v32 = (__clz(__rbit64(v35)) | v21 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v36 = v33 << 6;
            v37 = v33 + 1;
            v38 = (v43 + 8 * v33);
            while (v37 < &v32->storeProvider[1] >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                sub_100010E34(v21, v22, 0, v15, v16, v17, v18, v19);
                v32 = (__clz(__rbit64(v39)) + v36);
                goto LABEL_34;
              }
            }

            sub_100010E34(v21, v22, 0, v15, v16, v17, v18, v19);
LABEL_34:
            v8 = v28;
          }

          v41 = *(v24 + 36);
          v56 = v32;
          v57 = v41;
          v58 = 0;
        }

        v9 = v48;
        if (v12 == v48)
        {
          sub_100010E34(v56, v57, v58, v15, v16, v17, v18, v19);
          return;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

id sub_1003E79BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 completed];
  *a2 = result;
  return result;
}

void sub_1003E7A38(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

id sub_1003E7B74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentReminder];
  *a2 = result;
  return result;
}

void sub_1003E7C10(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDisplayDateDate:isa];
}

id sub_1003E7D4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result;
  return result;
}

id sub_1003E7D94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmStorage];
  *a2 = result;
  return result;
}

id sub_1003E7DE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inactive];
  *a2 = result;
  return result;
}

id sub_1003E7E2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recurrenceRules];
  *a2 = result;
  return result;
}

void sub_1003E7EB0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

void sub_1003E7FEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contactHandles];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1003E8054(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = isa;
  [v2 setContactHandles:?];
}

id sub_1003E80CC(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100791340;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000023;
  *(v2 + 40) = 0x80000001007F2430;
  v3 = rem_currentRuntimeVersion();
  *(v2 + 88) = &type metadata for Int;
  *(v2 + 64) = v3;
  v4 = String._bridgeToObjectiveC()();
  v1, v5, v6, v7, v8, v9, v10, v11;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2, v13, v14, v15, v16, v17, v18, v19;
  v20 = [objc_opt_self() predicateWithFormat:v4 argumentArray:isa];

  return v20;
}

id sub_1003E8200()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791300;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000001007A7210;
  v1 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0, v3, v4, v5, v6, v7, v8, v9;
  v10 = [objc_opt_self() predicateWithFormat:v1 argumentArray:isa];

  return v10;
}

uint64_t sub_1003E82F0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945FD0);
  v1 = sub_100006654(v0, qword_100945FD0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E83B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v9, v4);
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 32))(a2, v9, v11);
    _s10PredicatesO19CompletionPredicateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v5 + 96))(v9, v4);
    v12 = *v9;
    sub_100393DD8(v12);
    v14 = v13;
    v12, v15, v16, v17, v18, v19, v20, v21;
    (*(v5 + 8))(a1, v4);
    *a2 = v14;
    _s10PredicatesO19CompletionPredicateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v10 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v10 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    (*(v5 + 8))(a1, v4);
    _s10PredicatesO19CompletionPredicateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003E8654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for Calendar.SearchDirection();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3, v4);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v6 = *(v56 - 8);
  __chkstk_darwin(v56, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar.MatchingPolicy();
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  __chkstk_darwin(v10, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Calendar();
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  __chkstk_darwin(v15, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v20 - 8, v21);
  v55 = &v50 - v22;
  v23 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v23 - 8, v24);
  v26 = &v50 - v25;
  v27 = sub_1000F5104(&qword_100946078, &qword_1007ACC30);
  __chkstk_darwin(v27 - 8, v28);
  v30 = &v50 - v29;
  v31 = type metadata accessor for DateComponents();
  v53 = *(v31 - 8);
  v54 = v31;
  v33 = __chkstk_darwin(v31, v32);
  v61 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 56))(v30, 1, 1, v15, v33);
  v35 = type metadata accessor for TimeZone();
  (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v36 = [objc_opt_self() currentCalendar];
  v37 = v19;
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = a1;
  v39 = v14;
  (*(v63 + 104))(v14, enum case for Calendar.MatchingPolicy.nextTime(_:), v62);
  v40 = v9;
  v41 = v56;
  (*(v6 + 104))(v9, enum case for Calendar.RepeatedTimePolicy.first(_:), v56);
  v43 = v57;
  v42 = v58;
  v44 = v59;
  (*(v58 + 104))(v57, enum case for Calendar.SearchDirection.forward(_:), v59);
  v45 = v55;
  v50 = v38;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v42 + 8))(v43, v44);
  (*(v6 + 8))(v40, v41);
  (*(v63 + 8))(v39, v62);
  (*(v52 + 8))(v37, v51);
  (*(v53 + 8))(v61, v54);
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v45, 1, v46) != 1)
  {
    return (*(v47 + 32))(v60, v45, v46);
  }

  (*(v47 + 16))(v60, v50, v46);
  result = (v48)(v45, 1, v46);
  if (result != 1)
  {
    return sub_1000050A4(v45, &unk_100938850, qword_100795AE0);
  }

  return result;
}

void *sub_1003E8D0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11, v12);
  v15 = &v59 - v14;
  v16 = *(v7 + 16);
  v16(&v59 - v14, v3, v6, v13);
  v17 = (*(v7 + 88))(v15, v6);
  if (v17 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v7 + 8))(v15, v6);
LABEL_14:
    (v16)(v10, v3, v6);
    sub_1003E83B8(v10, a1);
    v57 = a2;
    return a2;
  }

  if (v17 != enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    if (v17 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v17 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      goto LABEL_14;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_12:
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

LABEL_13:
    v15, v18, v19, v20, v21, v22, v23, v24;
    goto LABEL_14;
  }

  (*(v7 + 96))(v15, v6);
  v15 = *v15;
  if ((v15 & 0xC000000000000001) == 0)
  {
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_1003E7588(v15, sub_100411ACC, &unk_10093F490, &qword_1007A7660);
  v26 = v25;
  v15, v27, v28, v29, v30, v31, v32, v33;
  sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  v59 = xmmword_100791340;
  *(inited + 16) = xmmword_100791340;
  v35 = swift_initStackObject();
  *(v35 + 16) = v59;
  *(v35 + 32) = a2;
  KeyPath = swift_getKeyPath();
  v37 = a2;
  v38 = sub_10000E72C(KeyPath, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

  *(v35 + 40) = v38;
  *(inited + 32) = sub_10000C2B0();
  v39 = swift_getKeyPath();
  v40 = sub_10004FAEC(v26);
  v26, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_100016EF8(v39, v40, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

  *(inited + 40) = v48;
  a2 = sub_100024F24(inited, v49, v50, v51, v52, v53, v54, v55);
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  return a2;
}

void sub_1003E908C(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastModifiedDate:isa];
}

void sub_1003E9214(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCompletionDate:isa];
}

id sub_1003E9350@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldCategorizeGroceryItems];
  *a2 = result;
  return result;
}

id sub_1003E93E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentList];
  *a2 = result;
  return result;
}

id sub_1003E9430@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sharingStatus];
  *a2 = result;
  return result;
}

uint64_t sub_1003E9478@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1003E9530(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setBatchCreationID:isa];
}

id sub_1003E966C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsEventOnlyContainer];
  *a2 = result;
  return result;
}

id sub_1003E96B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsNotificationsCollection];
  *a2 = result;
  return result;
}

void sub_1003E9720(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, void *a4@<X5>, unint64_t *a5@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  if (v10)
  {
    v11 = v10;
    sub_1000060C8(0, a3, a4);
    sub_10000CE28(a5, a3, a4);
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
}

void sub_1003E97E4(void *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7, SEL *a8)
{
  v9 = *a2;
  if (*a1)
  {
    sub_1000060C8(0, a5, a6);
    sub_10000CE28(a7, a5, a6);
    v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  isa = v13.super.isa;
  [v9 *a8];
}

uint64_t sub_1003E98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *a4 = result;
  return result;
}

void sub_1003E99AC()
{
  v0 = objc_allocWithZone(NSSortDescriptor);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKey:v1 ascending:1 reverseNullOrder:1];

  qword_100974E18 = v2;
}

id sub_1003E9A5C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  if (qword_100936030 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_100974DE0;
  *(v0 + 32) = qword_100974DE0;
  qword_100974E30 = v0;

  return v1;
}

void sub_1003E9B04(unint64_t a1, id a2, _TtC7remindd19RDXPCStorePerformer *a3, unint64_t a4)
{
  v5 = v4;
  if ([a2 includeDueDateDeltaAlerts])
  {
    if (a4 >> 62)
    {
LABEL_20:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    v28 = a4;
    v29 = a3;
    v30 = v5;
    v11 = 0;
    a3 = (a1 & 0xFFFFFFFFFFFFFF8);
    v5 = &selRef_setPublicLinkLastModifiedDate_;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 = [v12 dueDateDeltaAlertsData];
      if (v14)
      {
        break;
      }

      ++v11;
      if (a4 == v10)
      {
        return;
      }
    }

    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_10001BBA0(v16, v18);
    v19 = sub_100232618(a1, [a2 includeConcealed], v29);
    if (!v30)
    {
      v20 = v19;
      sub_1003E9CCC(v28, v19);
      v20, v21, v22, v23, v24, v25, v26, v27;
    }
  }
}

void sub_1003E9CCC(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = a2;
    v4 = a1;
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      v6 = v4 & 0xC000000000000001;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      v27 = v3;
      v28 = v4;
      while (1)
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v11 = sub_1005E2A38([v8 remObjectID]);
        if (v2)
        {

          return;
        }

        v12 = v11;
        if (*(v3 + 16))
        {
          v13 = sub_100393C74();
          if (v14)
          {
            v15 = *(*(v3 + 56) + 8 * v13);
            sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);

            v16 = v7;
            v17 = v6;
            isa = Array._bridgeToObjectiveC()().super.isa;
            v19 = v15;
            v4 = v28;
            v19, v20, v21, v22, v23, v24, v25, v26;
            [v9 setFetchedDueDateDeltaAlerts:isa];

            v6 = v17;
            v7 = v16;
            v3 = v27;
          }
        }

        ++v5;
        if (v10 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }
}

id sub_1003E9FFC(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EA208(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EA414(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EA64C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EA818(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100938850, qword_100795AE0);
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EAA60(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EAC2C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_1003EAE5C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v38 = a1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v37 - v5;
  v39 = sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  v41 = xmmword_100791340;
  *(inited + 16) = xmmword_100791340;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_100791320;
  KeyPath = swift_getKeyPath();
  v9 = sub_1003EFC70(KeyPath, &unk_100939F10, &qword_100797F30);

  *(v7 + 32) = v9;
  v10 = swift_getKeyPath();
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v6, a1, v11);
  v14 = v13;
  v15 = *(v12 + 56);
  v15(v6, 0, 1, v11);
  v16 = sub_1003EA208(v10, v6);

  *(v7 + 40) = v16;
  v17 = swift_getKeyPath();
  v14(v6, v42, v11);
  v18 = v14;
  v19 = v15;
  v15(v6, 0, 1, v11);
  v20 = sub_1003EA414(v17, v6);

  *(v7 + 48) = v20;
  v21 = sub_10000C2B0();
  v22 = inited;
  *(inited + 32) = v21;
  v23 = swift_initStackObject();
  *(v23 + 16) = v41;
  v24 = swift_getKeyPath();
  v18(v6, v38, v11);
  v19(v6, 0, 1, v11);
  v25 = v19;
  v26 = sub_1003EA208(v24, v6);

  *(v23 + 32) = v26;
  v27 = swift_getKeyPath();
  v18(v6, v42, v11);
  v25(v6, 0, 1, v11);
  v28 = sub_1003EA414(v27, v6);

  *(v23 + 40) = v28;
  v22[5] = sub_10000C2B0();
  return sub_100024F24(v22, v29, v30, v31, v32, v33, v34, v35);
}

id sub_1003EB1AC(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6, uint64_t a7)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;

  v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    if (a7)
    {
      sub_100271468(a7);
    }

    _StringGuts.grow(_:)(32);
    0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
    v24._countAndFlagsBits = a2;
    v24._object = a3;
    String.append(_:)(v24);
    a3, v25, v26, v27, v28, v29, v30, v31;
    v32._countAndFlagsBits = 8236;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = a4;
    v33._object = a5;
    String.append(_:)(v33);
    a5, v34, v35, v36, v37, v38, v39, v40;
    v41._countAndFlagsBits = 0x746E756F63402E29;
    v41._object = 0xEB00000000203E20;
    String.append(_:)(v41);
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v42._object;
    String.append(_:)(v42);
    object, v44, v45, v46, v47, v48, v49, v50;
    v51 = String._bridgeToObjectiveC()();
    0xED0000202C4B2528, v52, v53, v54, v55, v56, v57, v58;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v12, v60, v61, v62, v63, v64, v65, v66;
    v67 = [objc_opt_self() predicateWithFormat:v51 argumentArray:isa];

    return v67;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v69._object = 0x80000001007EC120;
    v69._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v69);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EB48C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EB670(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesO19CompletionPredicateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1003EB8C4(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_1009435E0, &qword_1007A3F10);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003EBAD0()
{
  sub_100026EF4(0, 7, 0);
  v0 = 0;
  v1 = &_swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_1008DD1E8 + v0 + 32);
    if (v2 == 5)
    {
      v3 = 0x656D6E6769737361;
    }

    else
    {
      v3 = 0x7367617468736168;
    }

    if (v2 == 5)
    {
      v4 = 0xEB0000000073746ELL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }

    if (v2 == 3)
    {
      v5 = 0x656D686361747461;
    }

    else
    {
      v5 = 0x6E65727275636572;
    }

    if (v2 == 3)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xEF73656C75526563;
    }

    if (*(&off_1008DD1E8 + v0 + 32) <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 0x6552746E65726170;
    }

    else
    {
      v7 = 0x6F74536D72616C61;
    }

    if (v2 == 1)
    {
      v8 = 0xEE007265646E696DLL;
    }

    else
    {
      v8 = 0xEC00000065676172;
    }

    if (!*(&off_1008DD1E8 + v0 + 32))
    {
      v7 = 1953720684;
      v8 = 0xE400000000000000;
    }

    if (*(&off_1008DD1E8 + v0 + 32) <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (*(&off_1008DD1E8 + v0 + 32) <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v15 = v1;
    v12 = *v1->clientIdentity;
    v11 = *&v1->clientIdentity[8];
    if (v12 >= v11 >> 1)
    {
      sub_100026EF4((v11 > 1), v12 + 1, 1);
      v1 = v15;
    }

    ++v0;
    *v1->clientIdentity = v12 + 1;
    v13 = v1 + 16 * v12;
    *(v13 + 4) = v9;
    *(v13 + 5) = v10;
  }

  while (v0 != 7);
  v16 = v1;
  sub_100271EA8(&off_1008DD210);
  return v16;
}

id sub_1003EBD48(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EBF14(unint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v309 = a3;
  v314 = a2;
  v9 = a1;
  v319 = _swiftEmptySetSingleton;
  v320 = _swiftEmptySetSingleton;
  v317 = &_swiftEmptyArrayStorage;
  v318 = &_swiftEmptyArrayStorage;
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v313 = v9;
    v308 = v10;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v310 = v9 & 0xFFFFFFFFFFFFFF8;
    v311 = &_swiftEmptyArrayStorage;
    v312 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v13)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v310 + 16))
        {
          goto LABEL_62;
        }

        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v314 includeConcealed] & 1) == 0 && objc_msgSend(v15, "isConcealed"))
      {
        goto LABEL_5;
      }

      v16 = [v15 list];
      if (v16)
      {
        v316 = 0;
        v17 = v16;
        v18 = [v17 remObjectIDWithError:&v316];
        v19 = v316;
        if (!v18)
        {
          goto LABEL_36;
        }

        v20 = v18;
        v21 = v316;
        v22 = sub_1005E37C0(v20);
        if (v8)
        {
LABEL_37:

          v319, v97, v98, v99, v100, v101, v102, v103;
          v63 = v320;
LABEL_38:
          v312, v56, v57, v58, v59, v60, v61, v62;
          v311, v104, v105, v106, v107, v108, v109, v110;
          v63, v111, v112, v113, v114, v115, v116, v117;
          return v17;
        }

        v23 = v22;

        sub_100379A60(&v321, v23);
        v24 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v318 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v318 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v312 = v318;
        v9 = v313;
      }

      v25 = [v15 parentReminder];
      if (v25)
      {
        v316 = 0;
        v17 = v25;
        v26 = [v17 remObjectIDWithError:&v316];
        v19 = v316;
        if (!v26)
        {
LABEL_36:
          v68 = v19;

          v319, v69, v70, v71, v72, v73, v74, v75;
          v320, v76, v77, v78, v79, v80, v81, v82;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v312, v83, v84, v85, v86, v87, v88, v89;
          v311, v90, v91, v92, v93, v94, v95, v96;

          return v17;
        }

        v27 = v26;
        v28 = v316;
        v29 = sub_1005E2A38(v27);
        if (v8)
        {
          goto LABEL_37;
        }

        v30 = v29;

        sub_100379A48(&v321, v30);
        v31 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v317 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v311 = v317;
        v9 = v313;
      }

      else
      {
LABEL_5:
      }

      ++v12;
      if (v10 == i)
      {
        while (1)
        {
          v32 = v320;
          v33 = *v320->clientIdentity;
          if (!v33)
          {
            goto LABEL_30;
          }

LABEL_27:
          v34 = sub_100368A08(v33, 0);
          v35 = sub_10027DC58();
          sub_10001B860(v321);
          if (v35 == v33)
          {
            goto LABEL_31;
          }

          __break(1u);
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v32 = _swiftEmptySetSingleton;
  v311 = &_swiftEmptyArrayStorage;
  v312 = &_swiftEmptyArrayStorage;
  v33 = _swiftEmptySetSingleton[2];
  if (v33)
  {
    goto LABEL_27;
  }

LABEL_30:
  v32, a2, a3, a4, a5, a6, a7, a8;
  v34 = &_swiftEmptyArrayStorage;
LABEL_31:
  v310 = v34;
  if (v312 >> 62)
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);

    v36 = _bridgeCocoaArray<A>(_:)();
    v312, v196, v197, v198, v199, v200, v201, v202;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    v36 = v312;
  }

  v321 = v36;
  v37 = sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  v38 = sub_10000CE28(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr);
  v307 = v37;
  v39 = Sequence.compactMapToSet<A>(_:)();
  v40 = sub_10002595C(v39);
  v39, v41, v42, v43, v44, v45, v46, v47;
  v17 = v310;
  sub_1005EC5F0(v310, 0, 1, 0, v40);
  if (v8)
  {
    v36, v49, v50, v51, v52, v53, v54, v55;

    v63 = v319;
    goto LABEL_38;
  }

  v64 = v48;
  v306 = v38;
  v36, v49, v50, v51, v52, v53, v54, v55;

  v321 = _swiftEmptyDictionarySingleton;
  sub_100011D74(&_swiftEmptyArrayStorage, v64, &v321);
  v65 = v64;
  v67 = v66;
  v316 = _swiftEmptyDictionarySingleton;
  sub_10002BE2C(&_swiftEmptyArrayStorage, v64, &v316);
  v304 = v67;
  v310 = v119;
  v316, v120, v121, v122, v123, v124, v125, v126;
  v321, v127, v128, v129, v130, v131, v132, v133;
  if (qword_100936028 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v134 = type metadata accessor for Logger();
    v135 = sub_100006654(v134, qword_100945FD0);
    v305 = &v302;
    v321 = v65;
    __chkstk_darwin(v135, v136);
    v303 = v137;
    v301[2] = v137;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v138 = Sequence.map<A>(skippingError:_:)();
    v65, v139, v140, v141, v142, v143, v144, v145;
    v316 = v138;
    sub_100271FB4(v310);
    v153 = *v319->clientIdentity;
    if (v153)
    {
      break;
    }

    v319, v146, v147, v148, v149, v150, v151, v152;
    v154 = &_swiftEmptyArrayStorage;
    v157 = v311;
LABEL_45:
    if (v157 >> 62)
    {
      v203 = v157;
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);

      v157 = _bridgeCocoaArray<A>(_:)();
      v203, v204, v205, v206, v207, v208, v209, v210;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    }

    v321 = v157;
    v158 = Sequence.compactMapToSet<A>(_:)();
    v159 = sub_10002595C(v158);
    v158, v160, v161, v162, v163, v164, v165, v166;
    sub_1005EC0F4(v154, 0, 1, 0, v159);
    v156 = v167;
    v157, v168, v169, v170, v171, v172, v173, v174;

    if ([v314 includeConcealed])
    {
      v312, v175, v176, v177, v178, v179, v180, v181;
      v311, v182, v183, v184, v185, v186, v187, v188;
      goto LABEL_72;
    }

    v321 = &_swiftEmptyArrayStorage;
    v153 = v311;
    if (v156 >> 62)
    {
      goto LABEL_70;
    }

    v191 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v191)
    {
      goto LABEL_71;
    }

LABEL_51:
    v65 = 0;
    v192 = v156 & 0xFFFFFFFFFFFFFF8;
    v310 = v156 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v156 & 0xC000000000000001) != 0)
      {
        v193 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v65 >= *(v192 + 16))
        {
          goto LABEL_66;
        }

        v193 = *&v156->clientIdentity[8 * v65 + 16];
      }

      v194 = v193;
      v195 = (v65 + 1);
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if ([v193 isConcealed])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v192 = v310;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v153 = v311;
      }

      ++v65;
      if (v195 == v191)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v154 = sub_1003689F4(*v319->clientIdentity, 0);
  v155 = sub_10027DC58();
  sub_10001B860(v321);
  v156 = v306;
  if (v155 == v153)
  {
    v157 = v311;
    goto LABEL_45;
  }

  __break(1u);
LABEL_70:
  v191 = _CocoaArrayWrapper.endIndex.getter();
  if (v191)
  {
    goto LABEL_51;
  }

LABEL_71:
  v312, v175, v176, v177, v178, v179, v180, v181;
  v153, v211, v212, v213, v214, v215, v216, v217;
  v156, v218, v219, v220, v221, v222, v223, v224;
  v156 = v321;
LABEL_72:
  v321 = v156;
  __chkstk_darwin(v189, v190);
  v301[-2] = v303;
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v225 = Sequence.map<A>(skippingError:_:)();
  v226 = v313;
  v17 = v304;
  sub_1003E9B04(v156, v314, v309, v225);
  v156, v227, v228, v229, v230, v231, v232, v233;
  if (v17 >> 62)
  {
    goto LABEL_93;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v17;
  }

  while (1)
  {
    v17, v234, v235, v236, v237, v238, v239, v240;
    if (v308)
    {
      v241 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v241;
    }

    else
    {
      v17 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v243 = &_swiftEmptyArrayStorage;
    if (!v17)
    {
LABEL_88:
      v321 = v243;
      __chkstk_darwin(v241, v242);
      v301[-2] = v303;
      sub_1000F5104(&qword_10094F630, qword_1007A3430);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
      v17 = Sequence.map<A>(skippingError:_:)();
      v243, v294, v295, v296, v297, v298, v299, v300;
      return v17;
    }

    v315 = &_swiftEmptyArrayStorage;
    v226 = &v315;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    v244 = 0;
    v242 = v313;
    v245 = v313 & 0xC000000000000001;
    v314 = (v313 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v246 = v244 + 1;
      if (__OFADD__(v244, 1))
      {
        break;
      }

      if (v245)
      {
        v247 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v244 >= *(v314 + 2))
        {
          goto LABEL_92;
        }

        v247 = *(v242 + 8 * v244 + 32);
      }

      v248 = v247;
      if (![v247 account])
      {
        v256 = v316;
        v225, v249, v250, v251, v252, v253, v254, v255;
        v256, v257, v258, v259, v260, v261, v262, v263;
        v264 = objc_opt_self();
        v321 = 0;
        v322 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v322, v265, v266, v267, v268, v269, v270, v271;
        v321 = 0xD000000000000021;
        v322 = 0x80000001007F7F30;
        v272 = [v248 description];
        v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v275 = v274;

        v276._countAndFlagsBits = v273;
        v276._object = v275;
        String.append(_:)(v276);
        v275, v277, v278, v279, v280, v281, v282, v283;
        v284._countAndFlagsBits = 125;
        v284._object = 0xE100000000000000;
        String.append(_:)(v284);
        v285 = v322;
        v286 = String._bridgeToObjectiveC()();
        v285, v287, v288, v289, v290, v291, v292, v293;
        [v264 internalErrorWithDebugDescription:v286];

        swift_willThrow();

        return v17;
      }

      v226 = &v315;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v241 = specialized ContiguousArray._endMutation()();
      v242 = v313;
      ++v244;
      if (v246 == v17)
      {
        v243 = v315;
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}