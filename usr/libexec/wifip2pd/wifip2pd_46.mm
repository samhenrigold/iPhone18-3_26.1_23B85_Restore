uint64_t sub_1003B0638()
{
  (*(v0 + 320))(*(v0 + 184), *(v0 + 192), *(v0 + 296));

  return _swift_task_switch(sub_1003B06B4, 0, 0);
}

uint64_t sub_1003B06B4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 160) = v4;
  *(v0 + 168) = v5;
  swift_beginAccess();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  (*(v3 + 8))(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1003B07F4(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v228 = a3;
  v221 = a2;
  v220 = a1;
  v5 = *v4;
  v227 = type metadata accessor for ConnectedSession(0);
  v209 = *(v227 - 8);
  __chkstk_darwin();
  v225 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = &v193 - v7;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v231 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v230 = &v193 - v9;
  v203 = type metadata accessor for DispatchWorkItemFlags();
  v234 = *(v203 - 8);
  __chkstk_darwin();
  v202 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for DispatchQoS();
  v229 = *(v201 - 8);
  __chkstk_darwin();
  v200 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for WAError.ErrorCode();
  v226 = *(v207 - 8);
  __chkstk_darwin();
  v206 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v15;
  __chkstk_darwin();
  v233 = &v193 - v17;
  v18 = *(v5 + 80);
  v224 = *(v5 + 88);
  type metadata accessor for NANAgentHandler.Client(255, v18, v224, v19);
  v238 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v219 = type metadata accessor for Optional();
  v21 = *(v219 - 8);
  __chkstk_darwin();
  v218 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v217 = &v193 - v23;
  swift_beginAccess();
  v24 = v4[7];
  v27 = *(v24 + 64);
  v26 = v24 + 64;
  v25 = v27;
  v28 = 1 << *(v4[7] + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v213 = v4[7];

  swift_beginAccess();
  v237 = v4;
  swift_beginAccess();
  v31 = 0;
  v212 = 0;
  v32 = (v28 + 63) >> 6;
  v223 = TupleTypeMetadata2;
  v216 = TupleTypeMetadata2 - 8;
  v33 = v16;
  v232 = v14 + 16;
  v236 = (v14 + 32);
  v215 = (v21 + 32);
  v195 = enum case for WAError.ErrorCode.deviceNoLongerAvailable(_:);
  v205 = (v226 + 104);
  v204 = (v226 + 8);
  v198 = &v242;
  v197 = (v234 + 1);
  v196 = (v229 + 1);
  v235 = v14;
  v34 = (v14 + 8);
  v35 = v18;
  v234 = v34;
  v226 = v16;
  v222 = v18;
  v214 = v26;
  for (i = v32; ; v32 = i)
  {
    if (v30)
    {
      v36 = v31;
      v37 = v231;
      v38 = v230;
      goto LABEL_17;
    }

    v39 = v32 <= v31 + 1 ? v31 + 1 : v32;
    v40 = v39 - 1;
    v37 = v231;
    v38 = v230;
    v41 = v223;
    do
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      if (v36 >= v32)
      {
        v52 = *(v223 - 8);
        v51 = v218;
        (*(v52 + 56))(v218, 1, 1, v223);
        v30 = 0;
        v31 = v40;
        goto LABEL_18;
      }

      v30 = *(v26 + 8 * v36);
      ++v31;
    }

    while (!v30);
    v31 = v36;
LABEL_17:
    v42 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v43 = v42 | (v36 << 6);
    v44 = v213;
    v45 = v235;
    v46 = v233;
    v47 = v238;
    (*(v235 + 16))(v233, *(v213 + 48) + *(v235 + 72) * v43, v238);
    v48 = *(*(v44 + 56) + 8 * v43);
    v49 = *(v223 + 48);
    v50 = *(v45 + 32);
    v41 = v223;
    v51 = v218;
    v50(v218, v46, v47);
    *&v51[v49] = v48;
    v52 = *(v41 - 8);
    (*(v52 + 56))(v51, 0, 1, v41);
    v53 = v48;
    v33 = v226;
    v35 = v222;
LABEL_18:
    v54 = v217;
    (*v215)(v217, v51, v219);
    if ((*(v52 + 48))(v54, 1, v41) == 1)
    {

      v167 = v237;
      swift_beginAccess();
      v168 = v167[10];
      v169 = (v168 + 64);
      v170 = 1 << *(v168 + 32);
      v171 = -1;
      if (v170 < 64)
      {
        v171 = ~(-1 << v170);
      }

      v172 = v171 & *(v168 + 64);
      v223 = (v170 + 63) >> 6;
      LODWORD(v224) = enum case for WAError.ErrorCode.connectionTerminated(_:);
      v229 = v168;

      v173 = 0;
      v174 = v225;
      v226 = v169;
      while (v172)
      {
        v175 = v173;
LABEL_95:
        v178 = __clz(__rbit64(v172));
        v172 &= v172 - 1;
        v179 = v178 | (v175 << 6);
        v180 = v229;
        v181 = v235;
        v182 = v233;
        v183 = v238;
        (*(v235 + 16))(v233, v229[6] + *(v235 + 72) * v179, v238);
        v184 = v208;
        sub_1003E8CDC(v180[7] + *(v209 + 72) * v179, v208, type metadata accessor for ConnectedSession);
        v185 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        v186 = *(v185 + 48);
        v37 = v231;
        (*(v181 + 32))(v231, v182, v183);
        sub_100046A08(v184, v37 + v186, type metadata accessor for ConnectedSession);
        (*(*(v185 - 8) + 56))(v37, 0, 1, v185);
        v174 = v225;
        v38 = v230;
        v169 = v226;
LABEL_96:
        sub_10001CEA8(v37, v38, &unk_1005989C0, &unk_1004B28C0);
        v187 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        if ((*(*(v187 - 8) + 48))(v38, 1, v187) == 1)
        {

          return;
        }

        sub_100046A08(v38 + *(v187 + 48), v174, type metadata accessor for ConnectedSession);
        if (*(v174 + *(v227 + 24)) == v228)
        {
          v188 = *(v174 + *(v227 + 40));
          v189 = v206;
          v190 = v207;
          (*v205)(v206, v224, v207);
          v191 = WAError.ErrorCode.rawValue.getter();
          (*v204)(v189, v190);
          if (v191 < -32768)
          {
            goto LABEL_107;
          }

          if (v191 >= 0x8000)
          {
            goto LABEL_108;
          }

          NANAgentHandler.stopConnectionSession(_:notifyClient:error:)(v188, 1, v191);
          v174 = v225;
        }

        sub_1003E8ED4(v174, type metadata accessor for ConnectedSession);
        (*v234)(v38, v238);
      }

      if (v223 <= v173 + 1)
      {
        v176 = v173 + 1;
      }

      else
      {
        v176 = v223;
      }

      v177 = v176 - 1;
      while (1)
      {
        v175 = v173 + 1;
        if (__OFADD__(v173, 1))
        {
          goto LABEL_106;
        }

        if (v175 >= v223)
        {
          v192 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
          (*(*(v192 - 8) + 56))(v37, 1, 1, v192);
          v172 = 0;
          v173 = v177;
          goto LABEL_96;
        }

        v172 = *&v169[8 * v175];
        ++v173;
        if (v172)
        {
          v173 = v175;
          goto LABEL_95;
        }
      }
    }

    v55 = *&v54[*(v41 + 48)];
    v56 = *v236;
    v57 = v33;
    (*v236)(v33, v54, v238);
    v58 = v224;
    type metadata accessor for NANAgentHandler.SubscriberClient(0, v35, v224, v59);
    v60 = swift_dynamicCastClass();
    if (v60)
    {
      break;
    }

    type metadata accessor for NANAgentHandler.PublisherClient(0, v35, v58, v61);
    v71 = swift_dynamicCastClass();
    v26 = v214;
    if (!v71)
    {

      v33 = v57;
      (*v234)(v57, v238);
      continue;
    }

    v229 = v55;
    v72 = v237[6];
    v33 = v57;
    if (!*(v72 + 16))
    {
LABEL_80:

      goto LABEL_104;
    }

    v73 = v71;

    v74 = sub_10002A440(v57);
    if ((v75 & 1) == 0)
    {
      goto LABEL_79;
    }

    v76 = *(*(v72 + 56) + 8 * v74);

    v78 = *(v76 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier);
    v77 = *(v76 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier + 8);

    if (v78 == v220 && v77 == v221)
    {
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v80 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    v112 = v237[6];
    if (!*(v112 + 16))
    {
      goto LABEL_80;
    }

    v113 = sub_10002A440(v33);
    if ((v114 & 1) == 0)
    {
      goto LABEL_79;
    }

    v210 = v56;
    v115 = *(*(v112 + 56) + 8 * v113);

    v116 = *(v115 + 16);

    v118 = *(v116 + 48);
    v117 = *(v116 + 56);

    v119 = *(v73 + qword_100598DC0);
    if (!v119)
    {
      goto LABEL_114;
    }

    v120 = [v119 allowedDeviceIDs];
    if (!v120)
    {
      goto LABEL_4;
    }

    v121 = v120;
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100388B0C();
    v122 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v123 = v212;
    sub_1003370E4(v122);
    v125 = v124;
    v212 = v123;

    v126 = *(v125 + 16);
    v127 = 32;
    do
    {
      if (!v126)
      {
LABEL_67:

        goto LABEL_5;
      }

      v128 = *(v125 + v127);
      v127 += 8;
      --v126;
    }

    while (v128 != v228);

    v129 = v237[6];
    if (!*(v129 + 16))
    {
      goto LABEL_77;
    }

    v130 = sub_10002A440(v33);
    if ((v131 & 1) == 0)
    {

      goto LABEL_77;
    }

    v132 = *(*(v129 + 56) + 8 * v130);

    v133 = *(v132 + 16);

    if (!v237[2])
    {
      goto LABEL_76;
    }

    v193 = v133;
    v134 = v206;
    v135 = v207;
    (*v205)(v206, v195, v207);

    v136 = WAError.ErrorCode.rawValue.getter();
    (*v204)(v134, v135);
    if (v136 < 0xFFFFFFFF80000000)
    {
      goto LABEL_111;
    }

    v35 = v222;
    if (v136 > 0x7FFFFFFF)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    sub_1003F97C8(v193, v136);

LABEL_76:

LABEL_77:
    v153 = v118;
    v154 = v237;
    sub_1003AF9F0(v220, v221, v153, v117, 1);

    swift_beginAccess();
    sub_1003AD75C(v33, sub_10047710C, sub_10046D8D8);
    swift_endAccess();

    v155 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v156 = v235;
    v157 = v233;
    v158 = v238;
    (*(v235 + 16))(v233, v226, v238);
    v159 = (*(v156 + 80) + 40) & ~*(v156 + 80);
    v160 = swift_allocObject();
    v161 = v224;
    *(v160 + 2) = v35;
    *(v160 + 3) = v161;
    *(v160 + 4) = v154;
    v210(&v160[v159], v157, v158);
    v244 = sub_1003EAB28;
    v245 = v160;
    aBlock = _NSConcreteStackBlock;
    v241 = 1107296256;
    v242 = sub_10000C8B8;
    v243 = &unk_100579440;
    v151 = _Block_copy(&aBlock);

    v152 = v155;
LABEL_78:
    v162 = v200;
    static DispatchQoS.unspecified.getter();
    v239 = _swiftEmptyArrayStorage;
    sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    v163 = v202;
    v164 = v203;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v151);

    v165 = v163;
    v33 = v226;
    (*v197)(v165, v164);
    v166 = v162;
    v35 = v222;
    (*v196)(v166, v201);
    (*(v235 + 8))(v33, v238);

LABEL_6:
    ;
  }

  v229 = v55;
  v62 = v237[4];
  v26 = v214;
  if (!*(v62 + 16))
  {

    v33 = v57;
    goto LABEL_104;
  }

  v63 = v60;

  v33 = v57;
  v64 = sub_10002A440(v57);
  if ((v65 & 1) == 0)
  {
    goto LABEL_79;
  }

  v210 = v56;
  v66 = *(*(v62 + 56) + 8 * v64);

  v68 = *(v66 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
  v67 = *(v66 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);

  if (v68 == v220 && v67 == v221)
  {
  }

  else
  {
    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v70 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v81 = v237[4];
  if (!*(v81 + 16))
  {
    goto LABEL_80;
  }

  v82 = sub_10002A440(v57);
  if ((v83 & 1) == 0)
  {
LABEL_79:

LABEL_104:
    (*v234)(v33, v238);
    return;
  }

  v84 = *(*(v81 + 56) + 8 * v82);

  v85 = *(v84 + 16);

  v87 = *(v85 + 48);
  v86 = *(v85 + 56);

  v88 = *(v63 + qword_100598D10);
  if (v88)
  {
    v89 = [v88 allowedDeviceIDs];
    if (v89)
    {
      v90 = v89;
      sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
      sub_100388B0C();
      v91 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v92 = v212;
      sub_1003370E4(v91);
      v94 = v93;
      v212 = v92;

      v95 = *(v94 + 16);
      v96 = 32;
      do
      {
        if (!v95)
        {
          goto LABEL_67;
        }

        v97 = *(v94 + v96);
        v96 += 8;
        --v95;
      }

      while (v97 != v228);

      v98 = v237[4];
      if (!*(v98 + 16))
      {
        goto LABEL_70;
      }

      v99 = sub_10002A440(v33);
      if ((v100 & 1) == 0)
      {

        goto LABEL_70;
      }

      v101 = *(*(v98 + 56) + 8 * v99);

      v102 = *(v101 + 16);

      if (!v237[2])
      {
        goto LABEL_69;
      }

      v193 = v102;
      v103 = v206;
      v104 = v207;
      (*v205)(v206, v195, v207);

      v105 = WAError.ErrorCode.rawValue.getter();
      (*v204)(v103, v104);
      if (v105 < 0xFFFFFFFF80000000)
      {
        goto LABEL_109;
      }

      v35 = v222;
      if (v105 <= 0x7FFFFFFF)
      {
        sub_1003F978C(v193, v105, v106, v107, v108, v109, v110, v111, v193, v194);

LABEL_69:

LABEL_70:
        v137 = v237;
        sub_1003AF9F0(v220, v221, v87, v86, 0);

        v138 = v137[4];
        if (*(v138 + 16))
        {

          v139 = sub_10002A440(v33);
          if (v140)
          {
            v141 = *(*(v138 + 56) + 8 * v139);

            v142 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
            swift_beginAccess();
            *(v141 + v142) = &_swiftEmptyDictionarySingleton;
          }
        }

        v143 = v237;
        swift_beginAccess();
        sub_1003AD75C(v33, sub_10047710C, sub_10046D8EC);
        swift_endAccess();

        v144 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v145 = v235;
        v146 = v233;
        v147 = v238;
        (*(v235 + 16))(v233, v226, v238);
        v148 = (*(v145 + 80) + 40) & ~*(v145 + 80);
        v149 = swift_allocObject();
        v150 = v224;
        *(v149 + 2) = v35;
        *(v149 + 3) = v150;
        *(v149 + 4) = v143;
        v210(&v149[v148], v146, v147);
        v244 = sub_1003E9F14;
        v245 = v149;
        aBlock = _NSConcreteStackBlock;
        v241 = 1107296256;
        v242 = sub_10000C8B8;
        v243 = &unk_100579490;
        v151 = _Block_copy(&aBlock);
        v152 = v144;

        goto LABEL_78;
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_4:

LABEL_5:

    (*v234)(v33, v238);
    goto LABEL_6;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
}

void sub_1003B2218(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for UUID();
  type metadata accessor for NANAgentHandler.Client(0, *(v2 + 80), *(v2 + 88), v3);
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  Dictionary.subscript.getter();

  if (v5)
  {
    (*((swift_isaMask & *v5) + 0x98))(v4);
  }

  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

void sub_1003B23A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v74 = a2;
  v78 = a1;
  v72 = type metadata accessor for ConnectedSession(0);
  v75 = *(v72 - 8);
  __chkstk_darwin();
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v69 - v6;
  __chkstk_darwin();
  v77 = &v69 - v7;
  __chkstk_darwin();
  v79 = &v69 - v8;
  v73 = type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Preferences(0, AssociatedTypeWitness, v12, v13);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v69 - v16;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v69 - v20;
  v76 = v3;
  v22 = *(v3 + 24);
  swift_unownedRetainStrong();
  (*(v19 + 16))(v21, v22 + *(*v22 + 112), v18);

  (*(AssociatedConformanceWitness + 120))(v18, AssociatedConformanceWitness);
  (*(v19 + 8))(v21, v18);
  v23 = Preferences.disableNanMaxCapabilityCheck.getter(v14);
  (*(v15 + 8))(v17, v14);
  if ((v23 & 1) == 0)
  {
    v24 = swift_unownedRetainStrong();
    v28 = sub_10040CAE8(v24, v25, v26, v27);

    v29 = *(v28 + *(*v28 + 304));
    swift_unownedRetainStrong();

    v30 = *(*v29 + 736);
    swift_beginAccess();
    v31 = v71;
    sub_1003E8CDC(v29 + v30, v71, type metadata accessor for NANDriverCapabilities);

    v32 = *(v31 + *(v73 + 11));
    sub_1003E8ED4(v31, type metadata accessor for NANDriverCapabilities);
    v33 = v32 / 3;
    if (v32 < 12)
    {
      v33 = 4;
    }

    if (v33 >= v32)
    {
      v33 = v32;
    }

    v71 = v33;
    v34 = v76;
    swift_beginAccess();
    v35 = *(v34 + 80);
    v38 = *(v35 + 64);
    v37 = v35 + 64;
    v36 = v38;
    v39 = 1 << *(*(v34 + 80) + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v36;
    v42 = (v39 + 63) >> 6;
    v76 = *(v34 + 80);

    v43 = 0;
    v73 = _swiftEmptyArrayStorage;
    v44 = v74;
    v45 = v72;
LABEL_9:
    v46 = v43;
    v47 = v75;
    if (!v41)
    {
      goto LABEL_11;
    }

    do
    {
      v43 = v46;
LABEL_14:
      v48 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v49 = v77;
      v50 = *(v47 + 72);
      sub_1003E8CDC(*(v76 + 56) + v50 * (v48 | (v43 << 6)), v77, type metadata accessor for ConnectedSession);
      v51 = v49;
      v52 = v79;
      sub_100046A08(v51, v79, type metadata accessor for ConnectedSession);
      v53 = *(v52 + *(v45 + 40));
      v54 = *(v53 + 72) == v78 && *(v53 + 80) == v44;
      if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100046A08(v79, v70, type metadata accessor for ConnectedSession);
        v55 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003679C8(0, v55[2] + 1, 1);
          v44 = v74;
          v55 = v80;
        }

        v58 = v55[2];
        v57 = v55[3];
        v59 = v58 + 1;
        if (v58 >= v57 >> 1)
        {
          sub_1003679C8((v57 > 1), v58 + 1, 1);
          v59 = v58 + 1;
          v44 = v74;
          v55 = v80;
        }

        v55[2] = v59;
        v60 = *(v75 + 80);
        v73 = v55;
        sub_100046A08(v70, v55 + ((v60 + 32) & ~v60) + v58 * v50, type metadata accessor for ConnectedSession);
        goto LABEL_9;
      }

      sub_1003E8ED4(v79, type metadata accessor for ConnectedSession);
      v46 = v43;
    }

    while (v41);
    while (1)
    {
LABEL_11:
      v43 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        return;
      }

      if (v43 >= v42)
      {
        break;
      }

      v41 = *(v37 + 8 * v43);
      ++v46;
      if (v41)
      {
        goto LABEL_14;
      }
    }

    v61 = v73;
    v62 = v73[2];
    if (v62)
    {
      v80 = _swiftEmptyArrayStorage;
      sub_10002D838(0, v62, 0);
      v63 = v80;
      v64 = v61 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v65 = *(v47 + 72);
      do
      {
        sub_1003E8CDC(v64, v5, type metadata accessor for ConnectedSession);
        v66 = v5[*(v45 + 20)];
        sub_1003E8ED4(v5, type metadata accessor for ConnectedSession);
        v80 = v63;
        v68 = v63[2];
        v67 = v63[3];
        if (v68 >= v67 >> 1)
        {
          sub_10002D838((v67 > 1), v68 + 1, 1);
          v63 = v80;
        }

        v63[2] = v68 + 1;
        *(v63 + v68 + 32) = v66;
        v64 += v65;
        --v62;
      }

      while (v62);
    }

    else
    {

      v63 = _swiftEmptyArrayStorage;
    }

    sub_100475CC8(v63);
  }
}

void sub_1003B2BC8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100002320(a1, a2, &v19);
    *(v15 + 12) = 2048;
    *(v15 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v12, v13, "#### Paired device Deleted for bundleId: %s deviceID: %llu", v15, 0x16u);
    sub_100002A00(v16);
  }

  v17.n128_f64[0] = (*(v9 + 8))(v11, v8);
  sub_1003B07F4(a1, a2, a3, v17);
}

void sub_1003B2DCC(void *a1, uint64_t a2)
{
  v3 = v2;
  v186 = a2;
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v155 = &v152 - v5;
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v174 = &v152 - v6;
  v185 = type metadata accessor for WAError.ErrorCode();
  v204 = *(v185 - 8);
  __chkstk_darwin();
  v176 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v167 = &v152 - v8;
  v9 = type metadata accessor for ConnectedSession(0);
  v200 = *(v9 - 8);
  __chkstk_darwin();
  v179 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v178 = &v152 - v11;
  __chkstk_darwin();
  v202 = &v152 - v12;
  __chkstk_darwin();
  v191 = &v152 - v13;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v199 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v152 - v15;
  v157 = *(type metadata accessor for ListenInBoundConnection(0) - 8);
  __chkstk_darwin();
  v156 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for UUID();
  v195 = *(v207 - 8);
  __chkstk_darwin();
  v206 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v164 = &v152 - v19;
  __chkstk_darwin();
  v193 = &v152 - v20;
  sub_10005DC58(&qword_1005989B8, &qword_1004B28B8);
  __chkstk_darwin();
  v22 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v152 - v23;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v184 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v152 - v27;
  v177 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v29 = a1;
  v30 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.default.getter();

  LODWORD(v205) = a1;
  v31 = os_log_type_enabled(v30, a1);
  v182 = v3;
  v32 = v186;
  v203 = v9;
  v198 = v16;
  v180 = v24;
  v197 = v29;
  if (!v31)
  {

    v39 = *(v25 + 8);
    v181 = v25 + 8;
    v175 = v39;
    v39(v28, v24);
    v40 = v199;
    v41 = v200;
    v42 = v3;
    v43 = v9;
    goto LABEL_16;
  }

  v181 = v25;
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v211 = v35;
  *v33 = 138412546;
  *(v33 + 4) = v29;
  *v34 = v29;
  *(v33 + 12) = 2080;
  v36 = v29;
  if (v32 <= 1)
  {
    if (v32 == -1)
    {
      v37 = 0x80000001004BA5E0;
      v38 = 0xD000000000000011;
      goto LABEL_15;
    }

    if (v32 == 1)
    {
      v37 = 0xE900000000000074;
      v38 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v37 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (v32 == 2)
  {
    v37 = 0xEE00646574736575;
    v38 = 0x7165522072657355;
    goto LABEL_15;
  }

  if (v32 == 3)
  {
    v37 = 0xEC0000006572756CLL;
    v38 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (v32 != 4)
  {
    goto LABEL_14;
  }

  v37 = 0x80000001004BA540;
  v38 = 0xD000000000000018;
LABEL_15:
  v44 = v205;
  v45 = v36;
  v46 = sub_100002320(v38, v37, &v211);

  *(v33 + 14) = v46;
  _os_log_impl(&_mh_execute_header, v30, v44, "#### Responder DataPath terminated for handle: %@ reason: %s", v33, 0x16u);
  sub_100016290(v34, &qword_10058B780, &qword_100480AC0);

  sub_100002A00(v35);

  v47 = *(v181 + 8);
  v181 += 8;
  v175 = v47;
  v47(v28, v180);
  v42 = v182;
  v43 = v203;
  v40 = v199;
  v41 = v200;
  v16 = v198;
LABEL_16:
  swift_beginAccess();
  v48 = *(v42 + 72);
  v49 = *(v48 + 64);
  v154 = v48 + 64;
  v50 = 1 << *(v48 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & v49;
  v158 = v48;

  swift_beginAccess();
  v53 = 0;
  v153 = (v50 + 63) >> 6;
  v192 = v195 + 16;
  v205 = (v195 + 32);
  v201 = (v195 + 8);
  v183 = (v204 + 8);
  v169 = enum case for WAError.ErrorCode.error(_:);
  v188 = (v204 + 104);
  v165 = enum case for WAError.ErrorCode.connectionFailed(_:);
  v168 = enum case for WAError.ErrorCode.connectionTerminated(_:);
  v160 = enum case for WAError.ErrorCode.connectionIdleTimeout(_:);
  v173 = (v41 + 56);
  *&v54 = 136315906;
  v166 = v54;
  v162 = v22;
  while (1)
  {
    if (v52)
    {
      v57 = v53;
LABEL_31:
      v163 = (v52 - 1) & v52;
      v60 = __clz(__rbit64(v52)) | (v57 << 6);
      v61 = v158;
      v62 = v195;
      v63 = v193;
      v64 = v207;
      (*(v195 + 16))(v193, *(v158 + 48) + *(v195 + 72) * v60, v207);
      v65 = v156;
      sub_1003E8CDC(*(v61 + 56) + *(v157 + 72) * v60, v156, type metadata accessor for ListenInBoundConnection);
      v66 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      v67 = *(v66 + 48);
      v68 = *(v62 + 32);
      v22 = v162;
      v68(v162, v63, v64);
      sub_100046A08(v65, &v22[v67], type metadata accessor for ListenInBoundConnection);
      (*(*(v66 - 8) + 56))(v22, 0, 1, v66);
      v59 = v57;
    }

    else
    {
      v58 = v153 <= v53 + 1 ? v53 + 1 : v153;
      v59 = v58 - 1;
      while (1)
      {
        v57 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          return;
        }

        if (v57 >= v153)
        {
          break;
        }

        v52 = *(v154 + 8 * v57);
        ++v53;
        if (v52)
        {
          goto LABEL_31;
        }
      }

      v151 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      (*(*(v151 - 8) + 56))(v22, 1, 1, v151);
      v163 = 0;
    }

    v69 = v159;
    sub_10001CEA8(v22, v159, &qword_1005989B8, &qword_1004B28B8);
    v70 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
      goto LABEL_81;
    }

    v71 = *(v70 + 48);
    v204 = *v205;
    (v204)(v164, v69, v207);
    v72 = *(v69 + v71);
    v73 = v69;
    v74 = v72;
    sub_1003E8ED4(v73 + v71, type metadata accessor for ListenInBoundConnection);
    v75 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    v77 = v76;

    v78 = [v197 initiatorDataAddress];
    v79 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    v81 = v80;

    v189 = v75;
    if (v79 == v75 && v81 == v77)
    {
      break;
    }

    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v82 = v202;
    if (v83)
    {
      goto LABEL_37;
    }

    (*v201)(v164, v207);

    v53 = v59;
LABEL_21:
    v52 = v163;
  }

  v82 = v202;
LABEL_37:
  v190 = v77;
  v161 = v59;
  v84 = *(v182 + 80);
  v85 = v84 + 64;
  v86 = 1 << *(v84 + 32);
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  else
  {
    v87 = -1;
  }

  v88 = v87 & *(v84 + 64);
  v187 = (v86 + 63) >> 6;
  v194 = v84;

  v89 = 0;
  v90 = v200;
  v196 = v85;
  while (v88)
  {
    v93 = v89;
LABEL_54:
    v96 = __clz(__rbit64(v88));
    v88 &= v88 - 1;
    v97 = v96 | (v93 << 6);
    v98 = v194;
    v99 = v193;
    v100 = v207;
    (*(v195 + 16))(v193, *(v194 + 48) + *(v195 + 72) * v97, v207);
    v101 = v191;
    sub_1003E8CDC(*(v98 + 56) + *(v90 + 72) * v97, v191, type metadata accessor for ConnectedSession);
    v102 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
    v103 = *(v102 + 48);
    v40 = v199;
    (v204)(v199, v99, v100);
    sub_100046A08(v101, v40 + v103, type metadata accessor for ConnectedSession);
    (*(*(v102 - 8) + 56))(v40, 0, 1, v102);
    v16 = v198;
    v82 = v202;
    v43 = v203;
    v90 = v200;
LABEL_55:
    sub_10001CEA8(v40, v16, &unk_1005989C0, &unk_1004B28C0);
    v104 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
    if ((*(*(v104 - 8) + 48))(v16, 1, v104) == 1)
    {

      swift_beginAccess();
      v55 = v155;
      v56 = v164;
      sub_1003AD998(v164, type metadata accessor for ListenInBoundConnection, type metadata accessor for ListenInBoundConnection, sub_100469704, sub_10046D130, v155);
      sub_100016290(v55, &qword_100597588, &qword_1004B1870);
      swift_endAccess();
      (*v201)(v56, v207);
      v53 = v161;
      v22 = v162;
      goto LABEL_21;
    }

    v105 = *(v104 + 48);
    (v204)(v206, v16, v207);
    sub_100046A08(&v16[v105], v82, type metadata accessor for ConnectedSession);
    LODWORD(v105) = *(v82 + v43[5]);
    if (v105 == [v197 datapathID])
    {
      v106 = (v82 + v43[11]);
      v108 = *v106;
      v107 = v106[1];
      v210[0] = v108;
      v210[1] = v107;
      v208 = v189;
      v209 = v190;
      sub_10005E2E4();
      if (StringProtocol.contains<A>(_:)())
      {
        v109 = v82;
        v110 = v184;
        Logger.init(subsystem:category:)();
        v111 = v178;
        sub_1003E8CDC(v109, v178, type metadata accessor for ConnectedSession);
        v112 = v109;
        v113 = v179;
        sub_1003E8CDC(v109, v179, type metadata accessor for ConnectedSession);
        v114 = v190;

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v171 = v116;
          v172 = v115;
          v117 = v43;
          v118 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v210[0] = v170;
          *v118 = v166;
          *(v118 + 4) = sub_100002320(v189, v114, v210);
          *(v118 + 12) = 2080;
          v119 = (v111 + v43[11]);
          v120 = v113;
          v121 = *v119;
          v122 = v119[1];

          sub_1003E8ED4(v111, type metadata accessor for ConnectedSession);
          v123 = sub_100002320(v121, v122, v210);

          *(v118 + 14) = v123;
          *(v118 + 22) = 2080;
          v124 = (v120 + v117[11]);
          v125 = *v124;
          v126 = v124[1];

          sub_1003E8ED4(v120, type metadata accessor for ConnectedSession);
          v127 = sub_100002320(v125, v126, v210);

          *(v118 + 24) = v127;
          *(v118 + 32) = 512;
          v128 = v167;
          sub_1003AE074(2u, v186, v167);
          v129 = WAError.ErrorCode.rawValue.getter();
          (*v183)(v128, v185);
          if (v129 < -32768)
          {
            goto LABEL_85;
          }

          if (v129 >= 0x8000)
          {
            goto LABEL_86;
          }

          *(v118 + 34) = v129;
          v130 = v172;
          _os_log_impl(&_mh_execute_header, v172, v171, "#### Terminated InBoundConnection %s datapath:id: %s connectedSession RemoteAddress %s error: %hd", v118, 0x24u);
          swift_arrayDestroy();

          v175(v184, v180);
          v131 = v186;
          v112 = v202;
          v43 = v203;
        }

        else
        {

          sub_1003E8ED4(v113, type metadata accessor for ConnectedSession);
          sub_1003E8ED4(v111, type metadata accessor for ConnectedSession);
          v175(v110, v180);
          v131 = v186;
        }

        v133 = *&v112[v43[10]];
        v134 = *(v133 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
        if (v131 <= 1)
        {
          v135 = v169;
          if (v131 != -1)
          {
            v135 = v160;
            if (v131 != 1)
            {
LABEL_71:
              v135 = v169;
            }
          }
        }

        else
        {
          v135 = v168;
          if (v131 != 2)
          {
            v135 = v165;
            if (v131 != 3)
            {
              v135 = v169;
              if (v131 != 4)
              {
                goto LABEL_71;
              }
            }
          }
        }

        v136 = v176;
        v137 = v185;
        (*v188)(v176, v135, v185);

        v138 = WAError.ErrorCode.rawValue.getter();
        (*v183)(v136, v137);
        if (v138 < -32768)
        {
          goto LABEL_83;
        }

        if (v138 >= 0x8000)
        {
          goto LABEL_84;
        }

        v134(0, 0, 0, 0, 0, 0, 0, 0, 0, v138);

        v139 = *(v133 + 72);
        v140 = *(v133 + 80);

        v141 = v202;
        v142 = WASubscribableService.name.getter();
        v143 = v182;
        sub_1003AF9F0(v139, v140, v142, v144, 2);

        v145 = v143;

        swift_beginAccess();
        v146 = sub_10002A440(v206);
        if (v147)
        {
          v148 = v146;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150 = *(v143 + 80);
          v208 = *(v145 + 80);
          *(v145 + 80) = 0x8000000000000000;
          v92 = v174;
          v40 = v199;
          v90 = v200;
          v16 = v198;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10046D5AC();
            v150 = v208;
          }

          (*(v195 + 8))(*(v150 + 48) + *(v195 + 72) * v148, v207);
          sub_100046A08(*(v150 + 56) + *(v90 + 72) * v148, v92, type metadata accessor for ConnectedSession);
          sub_100469890(v148, v150);
          *(v145 + 80) = v150;

          v91 = 0;
        }

        else
        {
          v91 = 1;
          v92 = v174;
          v40 = v199;
          v90 = v200;
          v16 = v198;
        }

        v43 = v203;
        (*v173)(v92, v91, 1, v203);
        sub_100016290(v92, &qword_100597578, &qword_1004B1860);
        swift_endAccess();
        v82 = v141;
      }
    }

    (*v201)(v206, v207);
    sub_1003E8ED4(v82, type metadata accessor for ConnectedSession);
    v85 = v196;
  }

  if (v187 <= v89 + 1)
  {
    v94 = v89 + 1;
  }

  else
  {
    v94 = v187;
  }

  v95 = v94 - 1;
  while (1)
  {
    v93 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v93 >= v187)
    {
      v132 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
      (*(*(v132 - 8) + 56))(v40, 1, 1, v132);
      v88 = 0;
      v89 = v95;
      goto LABEL_55;
    }

    v88 = *(v85 + 8 * v93);
    ++v89;
    if (v88)
    {
      v89 = v93;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_81:
}

uint64_t NANAgentHandler.startBrowserSession(_:)(uint64_t a1)
{
  v144 = *v1;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v145 = &v139 - v3;
  v149 = type metadata accessor for WAError.ErrorCode();
  v148 = *(v149 - 8);
  __chkstk_darwin();
  v147 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent();
  v157 = *(v5 - 8);
  v158 = v5;
  __chkstk_darwin();
  v142 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v6;
  __chkstk_darwin();
  v153 = &v139 - v7;
  v8 = type metadata accessor for Logger();
  v160 = *(v8 - 8);
  v161 = v8;
  __chkstk_darwin();
  v155 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v139 - v10;
  __chkstk_darwin();
  v146 = &v139 - v11;
  __chkstk_darwin();
  v143 = &v139 - v12;
  __chkstk_darwin();
  v140 = &v139 - v13;
  __chkstk_darwin();
  v15 = &v139 - v14;
  sub_10005DC58(&qword_100598958, &qword_1004B2858);
  __chkstk_darwin();
  v152 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v156 = &v139 - v17;
  __chkstk_darwin();
  v164 = &v139 - v18;
  v19 = type metadata accessor for Data.Deallocator();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = 0;
  v23 = sub_1003F39A8();
  v25 = v24;
  v26 = objc_allocWithZone(NSRegularExpression);
  v27 = sub_1003E0818(0xD000000000000021, 0x80000001004C0A50, 0);
  v159 = a1;
  v28 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v28 = v23;
  }

  v29 = 7;
  if (((v25 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
  {
    v29 = 11;
  }

  v167 = 15;
  v168 = v29 | (v28 << 16);
  v165[0] = v23;
  v165[1] = v25;
  v163 = 0;
  v30 = v27;

  sub_10005DC58(&qword_100598968, &qword_1004B2870);
  sub_10000CADC(&qword_100598970, &qword_100598968, &qword_1004B2870, &protocol conformance descriptor for Range<A>);
  sub_10005E2E4();
  v31 = _NSRange.init<A, B>(_:in:)();
  v33 = v32;
  v34 = String._bridgeToObjectiveC()();
  v35 = [v30 firstMatchInString:v34 options:0 range:{v31, v33}];

  v36 = v163;

  v154 = v35 != 0;
  v37 = nw_browse_descriptor_copy_custom_service();
  v38 = v166;
  (*(v20 + 104))(v22, enum case for Data.Deallocator.free(_:), v19);
  Data.Deallocator._deallocator.getter();
  if (v38)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v39 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    v162 = sub_100003020(v39, v38);
    v163 = v40;
  }

  else
  {
    v41 = Data.Deallocator._deallocator.getter();
    v41(v37, 0);

    v162 = 0;
    v163 = 0xC000000000000000;
  }

  (*(v20 + 8))(v22, v19);
  v42 = v157;
  v43 = v158;
  v44 = *(v157 + 56);
  v44(v164, 1, 1, v158);
  Logger.init(subsystem:category:)();
  v45 = v159;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v167 = v49;
    *v48 = 136315394;
    *(v48 + 4) = sub_100002320(*(v45 + 72), *(v45 + 80), &v167);
    *(v48 + 12) = 1024;
    *(v48 + 14) = v154;
    _os_log_impl(&_mh_execute_header, v46, v47, "#### startBrowserSession: bundleId: %s, DDUIBrowse: %{BOOL}d", v48, 0x12u);
    sub_100002A00(v49);
    v43 = v158;

    v42 = v157;
  }

  v50 = *(v160 + 8);
  v50(v15, v161);
  v51 = v156;
  static WABrowserAgentInterface.DescriptorToAgent.decode(from:)();
  if (!v36)
  {
    v59 = v164;
    sub_100016290(v164, &qword_100598958, &qword_1004B2858);
    v44(v51, 0, 1, v43);
    sub_10001CEA8(v51, v59, &qword_100598958, &qword_1004B2858);
    v60 = v59;
    v61 = v152;
    sub_100012400(v60, v152, &qword_100598958, &qword_1004B2858);
    if ((*(v42 + 48))(v61, 1, v43) == 1)
    {
      sub_100016290(v61, &qword_100598958, &qword_1004B2858);
      v62 = v150;
      Logger.init(subsystem:category:)();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "#### WABrowserIPC.Descriptor2Agent nil ", v65, 2u);
      }

      sub_1000124C8(v162, v163);

      v58 = v62;
      goto LABEL_18;
    }

    v68 = *(v42 + 32);
    v68(v153, v61, v43);
    v69 = v159;
    v70 = *(v159 + 64);
    v71._countAndFlagsBits = 0x6269726373627553;
    v72._countAndFlagsBits = 0xD00000000000001ELL;
    v72._object = 0x80000001004B8650;
    v71._object = 0xE900000000000065;
    if (Int32.checkEntitlement(for_:capabilities:)(v72, v71))
    {
      v66 = v69[9];
      v73 = v69[10];
      v167 = v66;
      v168 = v73;
      strcpy(v165, "wifiawaretool");
      HIWORD(v165[1]) = -4864;
      sub_10005E2E4();
      if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v74 = v69[6], v75 = v69[7], (static LaunchServiceRecord.isSubscribableServiceValid(for:serviceName:)(v70, v74, v75)))
      {
        v76 = v151;
        if (sub_1003E67A8(v66, v73, 0))
        {
          v77 = type metadata accessor for TaskPriority();
          (*(*(v77 - 8) + 56))(v145, 1, 1, v77);
          v78 = v157;
          v79 = v158;
          v80 = v142;
          (*(v157 + 16))(v142, v153, v158);
          v81 = (*(v78 + 80) + 56) & ~*(v78 + 80);
          v82 = (v141 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = swift_allocObject();
          *(v83 + 2) = 0;
          *(v83 + 3) = 0;
          v84 = v144;
          *(v83 + 4) = *(v144 + 80);
          v85 = v159;
          *(v83 + 5) = *(v84 + 88);
          *(v83 + 6) = v85;
          v68(&v83[v81], v80, v79);
          v86 = &v83[v82];
          *v86 = v76;
          v86[8] = v154;

          sub_1003AD150(0, 0, v145, &unk_1004B2868, v83);
          sub_1000124C8(v162, v163);

          (*(v78 + 8))(v153, v79);
          sub_100016290(v164, &qword_100598958, &qword_1004B2858);
          return 0;
        }

        v104 = v143;
        Logger.init(subsystem:category:)();

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v167 = v108;
          *v107 = 136315138;
          *(v107 + 4) = sub_100002320(v66, v73, &v167);
          _os_log_impl(&_mh_execute_header, v105, v106, "#### Client %s reached max allowed services", v107, 0xCu);
          sub_100002A00(v108);
        }

        v50(v104, v161);
        v109 = v149;
        v110 = v148;
        v111 = v147;
        v112 = enum case for WAError.ErrorCode.noRadioResources(_:);
        if (*(v151 + 16))
        {
          v113 = *(v148 + 104);
          v113(v147, enum case for WAError.ErrorCode.noRadioResources(_:), v149);

          v114 = WAError.ErrorCode.rawValue.getter();
          (*(v110 + 8))(v111, v109);
          if (v114 < 0xFFFFFFFF80000000)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (v114 > 0x7FFFFFFF)
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          sub_1003F978C(v159, v114, v115, v116, v117, v118, v119, v120, v139, v140);
        }

        else
        {
          v113 = *(v148 + 104);
        }

        v113(v111, v112, v109);
        v66 = WAError.ErrorCode.rawValue.getter();
        sub_1000124C8(v162, v163);
        (*(v110 + 8))(v111, v109);
        (*(v157 + 8))(v153, v158);
        sub_100016290(v164, &qword_100598958, &qword_1004B2858);
        if (v66 >= 0xFFFFFFFF80000000)
        {
          if (v66 <= 0x7FFFFFFF)
          {
            return v66;
          }

          goto LABEL_59;
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v87 = v146;
      Logger.init(subsystem:category:)();

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v167 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_100002320(v69[9], v69[10], &v167);
        _os_log_impl(&_mh_execute_header, v88, v89, "#### No Browse Entitlement for bundleId: %s", v90, 0xCu);
        sub_100002A00(v91);
      }

      v50(v87, v161);
      v92 = v149;
      v93 = v148;
      v94 = v147;
      v73 = *(v151 + 16);
      v95 = enum case for WAError.ErrorCode.entitlementMissing(_:);
      if (v73)
      {
        v96 = *(v148 + 104);
        v96(v147, enum case for WAError.ErrorCode.entitlementMissing(_:), v149);

        v97 = WAError.ErrorCode.rawValue.getter();
        (*(v93 + 8))(v94, v92);
        if (v97 < 0xFFFFFFFF80000000)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v97 > 0x7FFFFFFF)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        sub_1003F978C(v159, v97, v98, v99, v100, v101, v102, v103, v139, v140);
      }

      else
      {
        v96 = *(v148 + 104);
      }

      v96(v94, v95, v92);
      v74 = v94;
      v66 = WAError.ErrorCode.rawValue.getter();
      sub_1000124C8(v162, v163);
      v121 = *(v93 + 8);
      v75 = v93 + 8;
      v121(v94, v92);
      (*(v157 + 8))(v153, v158);
      sub_100016290(v164, &qword_100598958, &qword_1004B2858);
      if (v66 < 0xFFFFFFFF80000000)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v66 <= 0x7FFFFFFF)
      {
        return v66;
      }

      __break(1u);
    }

    v156 = v75;
    v122 = v74;
    v123 = v140;
    Logger.init(subsystem:category:)();

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *v126 = 136315394;
      *(v126 + 4) = sub_100002320(v66, v73, &v167);
      *(v126 + 12) = 2080;
      *(v126 + 14) = sub_100002320(v122, v156, &v167);
      _os_log_impl(&_mh_execute_header, v124, v125, "#### Client %s has no service %s in plist", v126, 0x16u);
      swift_arrayDestroy();
    }

    v50(v123, v161);
    v127 = v149;
    v128 = v148;
    v129 = v147;
    v130 = enum case for WAError.ErrorCode.serviceNotDeclared(_:);
    if (*(v151 + 16))
    {
      v131 = *(v148 + 104);
      v131(v147, enum case for WAError.ErrorCode.serviceNotDeclared(_:), v149);

      v132 = WAError.ErrorCode.rawValue.getter();
      (*(v128 + 8))(v129, v127);
      if (v132 < 0xFFFFFFFF80000000)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v132 > 0x7FFFFFFF)
      {
        goto LABEL_64;
      }

      sub_1003F978C(v159, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    }

    else
    {
      v131 = *(v148 + 104);
    }

    v131(v129, v130, v127);
    v66 = WAError.ErrorCode.rawValue.getter();
    sub_1000124C8(v162, v163);
    (*(v128 + 8))(v129, v127);
    (*(v157 + 8))(v153, v158);
    sub_100016290(v164, &qword_100598958, &qword_1004B2858);
    if (v66 < 0xFFFFFFFF80000000)
    {
      goto LABEL_60;
    }

    if (v66 <= 0x7FFFFFFF)
    {
      return v66;
    }

    __break(1u);
    goto LABEL_55;
  }

  v52 = v155;
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    swift_errorRetain();
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&_mh_execute_header, v53, v54, "#### WABrowserIPC.Descriptor2Agent decode Error: %@", v55, 0xCu);
    sub_100016290(v56, &qword_10058B780, &qword_100480AC0);
  }

  sub_1000124C8(v162, v163);

  v58 = v52;
LABEL_18:
  v50(v58, v161);
  sub_100016290(v164, &qword_100598958, &qword_1004B2858);
  return 255;
}

uint64_t sub_1003B5B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7)
{
  *(v7 + 472) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a1;
  *(v7 + 80) = a4;
  v8 = *a6;
  v9 = type metadata accessor for WAError.ErrorCode();
  *(v7 + 104) = v9;
  *(v7 + 112) = *(v9 - 8);
  *(v7 + 120) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v7 + 128) = v10;
  *(v7 + 136) = *(v10 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v11 = type metadata accessor for WADevicesAgentInterface.Devices();
  *(v7 + 184) = v11;
  *(v7 + 192) = *(v11 - 8);
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = *(v8 + 88);
  *(v7 + 224) = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  *(v7 + 232) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  *(v7 + 240) = v15;
  *(v7 + 248) = *(v15 - 8);
  *(v7 + 256) = swift_task_alloc();
  v16 = swift_checkMetadataState();
  *(v7 + 264) = v16;
  *(v7 + 272) = *(v16 - 8);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v17 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent();
  *(v7 + 296) = v17;
  *(v7 + 304) = *(v17 - 8);
  *(v7 + 312) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v7 + 320) = v18;
  v19 = *(v18 - 8);
  *(v7 + 328) = v19;
  *(v7 + 336) = *(v19 + 64);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1003B5FA4, 0, 0);
}

unint64_t sub_1003B5FA4(uint64_t a1)
{
  v115 = v1;
  v108 = *(v1 + 368);
  v3 = *(v1 + 304);
  v2 = *(v1 + 312);
  v4 = *(v1 + 296);
  v5 = *(v1 + 88);
  v103 = v2;
  v106 = *(v1 + 96);
  v6 = *(v1 + 80);
  UUID.init()();
  v7 = *(v3 + 16);
  v7(v2, v5, v4);
  v8 = v6[9];
  *(v1 + 376) = v8;
  v9 = v6[10];
  *(v1 + 384) = v9;
  type metadata accessor for WifiAwareBrowser(0);
  v10 = swift_allocObject();
  *(v1 + 392) = v10;
  v11 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
  *(v10 + v11) = sub_1002DEBA4(_swiftEmptyArrayStorage);
  *(v10 + 16) = v6;
  v12 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor;
  v7(v10 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_wifiAwareDescriptor, v103, v4);
  (*(v3 + 56))(v10 + v12, 0, 1, v4);
  v13 = *(v3 + 8);

  v13(v103, v4);
  v14 = (v10 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
  v104 = v8;
  *v14 = v8;
  v14[1] = v9;
  v98 = v9;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114[0] = *(v106 + 32);
  *(v106 + 32) = 0x8000000000000000;
  sub_1003E263C(v10, v108, isUniquelyReferenced_nonNull_native, sub_10046D8EC, sub_100313B98, sub_1002E01C4);
  *(v106 + 32) = v114[0];
  swift_endAccess();
  *(v1 + 400) = v6[6];
  *(v1 + 408) = v6[7];
  v16 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithServiceName:v17];
  *(v1 + 416) = v18;

  WABrowserAgentInterface.DescriptorToAgent.requestedDuration.getter();
  result = Duration.components.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    __break(1u);
    return result;
  }

  v20 = result;
  if (*(v1 + 472) == 1)
  {
    if (!result)
    {
      v39 = v18;
      [v39 setTimeoutAfterSeconds:600];
      [v39 setAuthenticationType:0];

      goto LABEL_13;
    }

    v21 = 600;
  }

  else
  {
    v22 = *(v1 + 288);
    v24 = *(v1 + 264);
    v23 = *(v1 + 272);
    v26 = *(v1 + 248);
    v25 = *(v1 + 256);
    v27 = *(v1 + 232);
    v111 = *(v1 + 240);
    v28 = *(*(v1 + 96) + 24);
    swift_unownedRetainStrong();
    (*(v23 + 16))(v22, v28 + *(*v28 + 112), v24);

    (*(v27 + 120))(v24, v27);
    (*(v23 + 8))(v22, v24);
    LODWORD(v21) = Preferences.nanServiceTimeout.getter(v111);
    (*(v26 + 8))(v25, v111);
    v21 = v21;
    if (!v20)
    {
      goto LABEL_8;
    }
  }

  if (v21 >= v20)
  {
    v21 = v20;
  }

LABEL_8:
  v29 = *(v1 + 472);
  v30 = v18;
  [v30 setTimeoutAfterSeconds:v21];
  [v30 setAuthenticationType:0];

  if ((v29 & 1) == 0)
  {
    v32 = *(v1 + 272);
    v31 = *(v1 + 280);
    v33 = *(v1 + 264);
    v34 = *(v1 + 232);
    v35 = *(v1 + 96);
    WABrowserAgentInterface.DescriptorToAgent.devices.getter();
    v36 = *(v35 + 24);
    swift_unownedRetainStrong();
    (*(v32 + 16))(v31, v36 + *(*v36 + 112), v33);

    v37 = (*(v34 + 136))(v33, v34);
    *(v1 + 424) = v37;
    (*(v32 + 8))(v31, v33);
    v38 = swift_task_alloc();
    *(v1 + 432) = v38;
    *v38 = v1;
    v38[1] = sub_1003B6BF0;

    return sub_1002BCA00(v37, v104, v98);
  }

LABEL_13:
  [*(v1 + 416) setDiscoveryMode:3];
  Logger.init(subsystem:category:)();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v112 = *(v1 + 160);
    v43 = *(v1 + 128);
    v42 = *(v1 + 136);
    v44 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v44 = 136315394;
    v45 = sub_1003F39A8();
    v47 = sub_100002320(v45, v46, v114);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v48 = sub_1003AE2C0();
    v50 = sub_100002320(v48, v49, v114);

    *(v44 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "#### Starting a browser session:%s with custom service:%s", v44, 0x16u);
    swift_arrayDestroy();

    v51 = *(v42 + 8);
    v52 = v112;
    v53 = v43;
  }

  else
  {
    v54 = *(v1 + 160);
    v55 = *(v1 + 128);
    v56 = *(v1 + 136);

    v51 = *(v56 + 8);
    v52 = v54;
    v53 = v55;
  }

  v88 = v51;
  v51(v52, v53);
  v113 = *(v1 + 416);
  v96 = *(v1 + 392);
  v101 = *(v1 + 384);
  v57 = *(v1 + 368);
  v109 = *(v1 + 376);
  v58 = *(v1 + 360);
  v105 = v58;
  v59 = *(v1 + 328);
  v60 = *(v1 + 320);
  v92 = *(v1 + 224);
  v91 = *(v1 + 216);
  v94 = *(v1 + 472);
  v89 = *(v1 + 352);
  v90 = *(v1 + 96);
  v61 = *(v1 + 80);
  type metadata accessor for NANAgentHandler.SubscriberClient(0, v92, v91, v62);
  v63 = *(v59 + 16);
  v63(v58, v57, v60);
  v99 = *(v61 + 64);
  v64 = swift_allocObject();
  swift_weakInit();
  v87 = v63;
  v63(v89, v57, v60);
  v65 = (*(v59 + 80) + 64) & ~*(v59 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v92;
  *(v66 + 24) = v91;
  *(v66 + 32) = v64;
  *(v66 + 40) = v61;
  *(v66 + 48) = v94;
  *(v66 + 56) = v96;
  (*(v59 + 32))(v66 + v65, v89, v60);

  LOBYTE(v114[0]) = 0;
  v67 = sub_1003BDE24(v90, v105, v113, v109, v101, v99, sub_1003EA7F8, v66);
  v68 = *(v1 + 416);
  v110 = v67;

  Logger.init(subsystem:category:)();
  v69 = v68;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = *(v1 + 416);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138412290;
    *(v73 + 4) = v72;
    *v74 = v72;
    v75 = v72;
    _os_log_impl(&_mh_execute_header, v70, v71, "#### Started NAN Subscriber session:%@", v73, 0xCu);
    sub_100016290(v74, &qword_10058B780, &qword_100480AC0);
  }

  v76 = *(v1 + 400);
  v107 = *(v1 + 416);
  v77 = v70;
  v78 = *(v1 + 376);
  v79 = *(v1 + 384);
  v93 = *(v1 + 408);
  v95 = *(v1 + 368);
  v80 = *(v1 + 344);
  v81 = *(v1 + 320);
  v100 = *(v1 + 224);
  v102 = *(v1 + 328);
  v97 = *(v1 + 216);
  v82 = *(v1 + 152);
  v83 = *(v1 + 128);

  v88(v82, v83);
  sub_1003AE988(v78, v79, v76, v93, 0);
  v87(v80, v95, v81);
  *(v1 + 64) = v110;
  swift_beginAccess();
  type metadata accessor for NANAgentHandler.Client(255, v100, v97, v84);
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  type metadata accessor for Dictionary();
  v85 = v110;
  Dictionary.subscript.setter();
  swift_endAccess();

  (*(v102 + 8))(v95, v81);
  **(v1 + 72) = 0;

  v86 = *(v1 + 8);

  return v86();
}

uint64_t sub_1003B6BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v5 = v3[26];
  v6 = v3[24];
  v7 = v3[23];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);

    v11 = sub_1003B7CF8;
  }

  else
  {
    v4[57] = v9;
    v4[58] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v11 = sub_1003B6DA4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1003B6DA4()
{
  v161 = v0;
  v1 = *(v0 + 440);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    WABrowserAgentInterface.DescriptorToAgent.devices.getter();
    v5 = (*(v3 + 88))(v2, v4);
    v6 = *(v0 + 184);
    if (v5 == enum case for WADevicesAgentInterface.Devices.selected(_:))
    {
      v7 = *(v0 + 448);
      v8 = *(v0 + 200);
      (*(*(v0 + 192) + 96))(v8, v6);
      v9 = sub_1003AC920(*v8);

      v10 = sub_100475D3C(v9);

      v12 = sub_100475D3C(v11);

      v13 = sub_1003E111C(v10, v12);

      if ((v13 & 1) == 0)
      {

        Logger.init(subsystem:category:)();

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v17 = *(v0 + 376);
          v16 = *(v0 + 384);
          v18 = *(v0 + 168);
          v19 = *(v0 + 128);
          v20 = *(v0 + 136);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v160[0] = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_100002320(v17, v16, v160);
          _os_log_impl(&_mh_execute_header, v14, v15, "#### BrowserClient:%s Invalid Paired Devices", v21, 0xCu);
          sub_100002A00(v22);

          (*(v20 + 8))(v18, v19);
          goto LABEL_38;
        }

LABEL_37:
        v109 = *(v0 + 168);
        v110 = *(v0 + 128);
        v111 = *(v0 + 136);

        (*(v111 + 8))(v109, v110);
LABEL_38:
        v112 = enum case for WAError.ErrorCode.deviceInvalid(_:);
        if (*(*(v0 + 96) + 16))
        {
          v114 = *(v0 + 112);
          v113 = *(v0 + 120);
          v115 = *(v0 + 104);
          v116 = *(v114 + 104);
          v117 = enum case for WAError.ErrorCode.deviceInvalid(_:);
          v116(v113);

          v118 = WAError.ErrorCode.rawValue.getter();
          result = (*(v114 + 8))(v113, v115);
          if (v118 < 0xFFFFFFFF80000000)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if (v118 > 0x7FFFFFFF)
          {
LABEL_57:
            __break(1u);
            return result;
          }

          sub_1003F978C(*(v0 + 80), v118, v119, v120, v121, v122, v123, v124, v132, v133);

          v125 = *(v0 + 112);
          v112 = v117;
        }

        else
        {
          v125 = *(v0 + 112);
          v116 = *(v125 + 104);
        }

        v126 = *(v0 + 416);
        v158 = *(v0 + 368);
        v128 = *(v0 + 320);
        v127 = *(v0 + 328);
        v129 = *(v0 + 120);
        v130 = *(v0 + 104);
        (v116)(v129, v112, v130);
        v70 = WAError.ErrorCode.rawValue.getter();

        (*(v125 + 8))(v129, v130);
        result = (*(v127 + 8))(v158, v128);
        if (v70 >= 0xFFFFFFFF80000000)
        {
          if (v70 <= 0x7FFFFFFF)
          {
            goto LABEL_45;
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      (*(v0 + 456))(*(v0 + 200), v6);
      v7 = *(v0 + 448);
    }

    v155 = v7;
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100476378(_swiftEmptyArrayStorage);
    }

    v32 = *(v0 + 416);
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100388B0C();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v32 setAllowedDeviceIDs:isa];

    v34 = *(v1 + 16);
    if (v34)
    {
      v35 = *(v0 + 440) + 32;
      do
      {
        while (1)
        {
          v35 += 8;
          v36 = [*(v0 + 416) allowedDeviceIDs];
          if (v36)
          {
            break;
          }

          [*(v0 + 416) setAllowedDeviceIDs:0];
          if (!--v34)
          {
            goto LABEL_18;
          }
        }

        v37 = v36;
        v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v160[0] = v38;
        v39.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        sub_10046F988(&v159, v39.super.super.isa);

        if (v160[0])
        {
          v40.super.isa = Set._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v40.super.isa = 0;
        }

        [*(v0 + 416) setAllowedDeviceIDs:v40.super.isa];

        --v34;
      }

      while (v34);
    }

LABEL_18:

    [*(v0 + 416) setDiscoveryMode:2];
    Logger.init(subsystem:category:)();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v151 = *(v0 + 160);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);
      v45 = swift_slowAlloc();
      v160[0] = swift_slowAlloc();
      *v45 = 136315394;
      v46 = sub_1003F39A8();
      v48 = sub_100002320(v46, v47, v160);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = sub_1003AE2C0();
      v51 = sub_100002320(v49, v50, v160);

      *(v45 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "#### Starting a browser session:%s with custom service:%s", v45, 0x16u);
      swift_arrayDestroy();

      v134 = *(v43 + 8);
      v134(v151, v44);
    }

    else
    {
      v53 = *(v0 + 160);
      v54 = *(v0 + 128);
      v55 = *(v0 + 136);

      v134 = *(v55 + 8);
      v134(v53, v54);
    }

    v152 = *(v0 + 416);
    v141 = *(v0 + 392);
    v56 = *(v0 + 368);
    v149 = *(v0 + 376);
    v57 = *(v0 + 360);
    v145 = *(v0 + 384);
    v147 = v57;
    v58 = *(v0 + 328);
    v59 = *(v0 + 320);
    v138 = *(v0 + 224);
    v137 = *(v0 + 216);
    v139 = *(v0 + 472);
    v135 = *(v0 + 352);
    v136 = *(v0 + 96);
    v60 = *(v0 + 80);
    type metadata accessor for NANAgentHandler.SubscriberClient(0, v138, v137, v52);
    v61 = *(v58 + 16);
    v61(v57, v56, v59);
    v143 = *(v60 + 64);
    v62 = swift_allocObject();
    swift_weakInit();
    v133 = v61;
    v61(v135, v56, v59);
    v63 = (*(v58 + 80) + 64) & ~*(v58 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v138;
    *(v64 + 24) = v137;
    *(v64 + 32) = v62;
    *(v64 + 40) = v60;
    *(v64 + 48) = v139;
    *(v64 + 56) = v141;
    (*(v58 + 32))(v64 + v63, v135, v59);

    LOBYTE(v160[0]) = 0;
    v65 = sub_1003BDE24(v136, v147, v152, v149, v145, v143, sub_1003EA7F8, v64);
    v66 = *(v0 + 416);
    if (!v155)
    {
      v154 = v65;

      Logger.init(subsystem:category:)();
      v89 = v66;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = *(v0 + 416);
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138412290;
        *(v93 + 4) = v92;
        *v94 = v92;
        v95 = v92;
        _os_log_impl(&_mh_execute_header, v90, v91, "#### Started NAN Subscriber session:%@", v93, 0xCu);
        sub_100016290(v94, &qword_10058B780, &qword_100480AC0);
      }

      v96 = *(v0 + 400);
      v150 = *(v0 + 416);
      v97 = v90;
      v98 = *(v0 + 376);
      v99 = *(v0 + 384);
      v140 = *(v0 + 408);
      v142 = *(v0 + 368);
      v100 = *(v0 + 344);
      v101 = *(v0 + 320);
      v146 = *(v0 + 224);
      v148 = *(v0 + 328);
      v144 = *(v0 + 216);
      v70 = *(v0 + 152);
      v102 = *(v0 + 128);

      v134(v70, v102);
      sub_1003AE988(v98, v99, v96, v140, 0);
      v133(v100, v142, v101);
      *(v0 + 64) = v154;
      swift_beginAccess();
      type metadata accessor for NANAgentHandler.Client(255, v146, v144, v103);
      sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      type metadata accessor for Dictionary();
      v104 = v154;
      Dictionary.subscript.setter();
      swift_endAccess();

      (*(v148 + 8))(v142, v101);
      LODWORD(v70) = 0;
      goto LABEL_45;
    }

    v67 = *(v0 + 328);
    v153 = *(v0 + 320);
    v156 = *(v0 + 368);
    v68 = *(v0 + 112);
    v23 = *(v0 + 120);
    v69 = *(v0 + 104);

    (*(v68 + 104))(v23, enum case for WAError.ErrorCode.error(_:), v69);
    v70 = WAError.ErrorCode.rawValue.getter();

    (*(v68 + 8))(v23, v69);
    result = (*(v67 + 8))(v156, v153);
    if (v70 < 0xFFFFFFFF80000000)
    {
      goto LABEL_51;
    }

    if (v70 <= 0x7FFFFFFF)
    {
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {

    Logger.init(subsystem:category:)();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 376);
      v25 = *(v0 + 384);
      v27 = *(v0 + 176);
      v28 = *(v0 + 128);
      v29 = *(v0 + 136);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v160[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100002320(v26, v25, v160);
      _os_log_impl(&_mh_execute_header, v23, v24, "#### BrowserClient:%s has no Paired Devices", v30, 0xCu);
      sub_100002A00(v31);

      (*(v29 + 8))(v27, v28);
      goto LABEL_26;
    }
  }

  v72 = *(v0 + 176);
  v73 = *(v0 + 128);
  v74 = *(v0 + 136);

  (*(v74 + 8))(v72, v73);
LABEL_26:
  v75 = enum case for WAError.ErrorCode.noPairedDevices(_:);
  if (*(*(v0 + 96) + 16))
  {
    v77 = *(v0 + 112);
    v76 = *(v0 + 120);
    v78 = *(v0 + 104);
    v79 = *(v77 + 104);
    v80 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    v79(v76);

    v81 = WAError.ErrorCode.rawValue.getter();
    result = (*(v77 + 8))(v76, v78);
    if (v81 < 0xFFFFFFFF80000000)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v81 > 0x7FFFFFFF)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1003F978C(*(v0 + 80), v81, v82, v83, v84, v85, v86, v87, v132, v133);

    v88 = *(v0 + 112);
    v75 = v80;
  }

  else
  {
    v88 = *(v0 + 112);
    v79 = *(v88 + 104);
  }

  v105 = *(v0 + 416);
  v157 = *(v0 + 368);
  v107 = *(v0 + 320);
  v106 = *(v0 + 328);
  v14 = *(v0 + 120);
  v108 = *(v0 + 104);
  (v79)(v14, v75, v108);
  v70 = WAError.ErrorCode.rawValue.getter();

  (*(v88 + 8))(v14, v108);
  result = (*(v106 + 8))(v157, v107);
  if (v70 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v70 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_45:
  **(v0 + 72) = v70;

  v131 = *(v0 + 8);

  return v131();
}

uint64_t sub_1003B7CF8()
{
  v40 = v0;
  Logger.init(subsystem:category:)();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 376);
    v3 = *(v0 + 384);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100002320(v4, v3, &v39);
    _os_log_impl(&_mh_execute_header, v1, v2, "#### BrowserClient:%s failed to get Paired Devices", v8, 0xCu);
    sub_100002A00(v9);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);

    (*(v11 + 8))(v10, v12);
  }

  v13 = enum case for WAError.ErrorCode.noPairedDevices(_:);
  if (*(*(v0 + 96) + 16))
  {
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
    v17 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    v18 = *(v14 + 104);
    v18(v15);

    v19 = WAError.ErrorCode.rawValue.getter();
    result = (*(v14 + 8))(v15, v16);
    if (v19 < 0xFFFFFFFF80000000)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v19 > 0x7FFFFFFF)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    sub_1003F978C(*(v0 + 80), v19, v21, v22, v23, v24, v25, v26, v35, v36);

    v27 = *(v0 + 112);
    v13 = v17;
    v28 = v18;
  }

  else
  {
    v27 = *(v0 + 112);
    v28 = *(v27 + 104);
  }

  v29 = *(v0 + 416);
  v30 = *(v0 + 328);
  v37 = *(v0 + 320);
  v38 = *(v0 + 368);
  v31 = *(v0 + 120);
  v32 = *(v0 + 104);
  v28(v31, v13, v32);
  v33 = WAError.ErrorCode.rawValue.getter();

  (*(v27 + 8))(v31, v32);
  result = (*(v30 + 8))(v38, v37);
  if (v33 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v33 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  **(v0 + 72) = v33;

  v34 = *(v0 + 8);

  return v34();
}

double sub_1003B80D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v48 = a6;
  v44 = a4;
  v45 = a7;
  v43 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v46 = v13;
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for sessionStatus(0) - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v18 = &v38 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = a9;
    v41 = Strong;
    v21 = type metadata accessor for TaskPriority();
    v22 = *(*(v21 - 8) + 56);
    v42 = v18;
    v22(v18, 1, 1, v21);
    v23 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1003E8CDC(v43, v23, type metadata accessor for sessionStatus);
    v24 = *(v12 + 16);
    v39 = v14;
    v24(v14, v45, v11);
    v25 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    LODWORD(v45) = a5;
    v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v12 + 80);
    v43 = v11;
    v30 = v48;
    v31 = (v29 + v28 + 8) & ~v29;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v40;
    *(v32 + 4) = v47;
    *(v32 + 5) = v33;
    sub_100046A08(v23, &v32[v25], type metadata accessor for sessionStatus);
    *&v32[v26] = v41;
    *&v32[v27] = a1;
    v34 = v39;
    v35 = &v32[v38];
    v36 = v43;
    *v35 = v44;
    v35[8] = v45 & 1;
    *&v32[v28] = v30;
    (*(v12 + 32))(&v32[v31], v34, v36);
    v37 = a1;

    sub_1003ACB3C(0, 0, v42, &unk_1004B2E80, v32);
  }

  return result;
}

uint64_t sub_1003B844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 504) = v24;
  *(v8 + 512) = v25;
  *(v8 + 1208) = a8;
  *(v8 + 488) = a6;
  *(v8 + 496) = a7;
  *(v8 + 472) = a4;
  *(v8 + 480) = a5;
  v9 = *a5;
  v10 = type metadata accessor for WAError.ErrorCode();
  *(v8 + 520) = v10;
  *(v8 + 528) = *(v10 - 8);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  sub_10005DC58(&qword_1005994A0, &qword_1004B2E08);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  *(v8 + 592) = swift_task_alloc();
  sub_10005DC58(qword_100597590, &qword_1004B1878);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v11 = type metadata accessor for WABrowserAgentInterface.AgentToEndpoint();
  *(v8 + 616) = v11;
  v12 = *(v11 - 8);
  *(v8 + 624) = v12;
  *(v8 + 632) = *(v12 + 64);
  *(v8 + 640) = swift_task_alloc();
  v13 = type metadata accessor for WAPairedDevice();
  *(v8 + 648) = v13;
  *(v8 + 656) = *(v13 - 8);
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v14 = type metadata accessor for WASubscribableService();
  *(v8 + 680) = v14;
  *(v8 + 688) = *(v14 - 8);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  v15 = type metadata accessor for NWEndpoint();
  *(v8 + 712) = v15;
  *(v8 + 720) = *(v15 - 8);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  v16 = type metadata accessor for BrowseEndpoints(0);
  *(v8 + 752) = v16;
  *(v8 + 760) = *(v16 - 8);
  *(v8 + 768) = swift_task_alloc();
  v17 = type metadata accessor for String.Encoding();
  *(v8 + 776) = v17;
  *(v8 + 784) = *(v17 - 8);
  *(v8 + 792) = swift_task_alloc();
  sub_10005DC58(&qword_100594A30, &qword_1004B2E00);
  *(v8 + 800) = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  *(v8 + 808) = v18;
  *(v8 + 816) = *(v18 - 8);
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  *(v8 + 912) = v19;
  *(v8 + 920) = *(v19 - 8);
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  sub_10005DC58(&qword_1005989E8, &qword_1004B28E8);
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  sub_10005DC58(&qword_1005989F0, &qword_1004B28F0);
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = swift_task_alloc();
  v20 = *(v9 + 88);
  *(v8 + 1016) = v20;
  *(v8 + 1024) = *(v20 + 8);
  *(v8 + 1032) = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 1040) = AssociatedTypeWitness;
  *(v8 + 1048) = *(AssociatedTypeWitness - 8);
  *(v8 + 1056) = swift_task_alloc();
  type metadata accessor for sessionStatus(0);
  *(v8 + 1064) = swift_task_alloc();

  return _swift_task_switch(sub_1003B8BB4, 0, 0);
}

uint64_t sub_1003B8BB4()
{
  v375 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1003E8CDC(*(v0 + 472), v1, type metadata accessor for sessionStatus);
  v373 = v0;
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    v45 = *(v0 + 552);
    v46 = *(v0 + 544);
    v47 = *(v0 + 528);
    v48 = *(v0 + 520);
    (*(v47 + 32))(v45, *(v0 + 1064), v48);
    v49 = *(v47 + 16);
    v49(v46, v45, v48);
    v50 = (*(v47 + 88))(v46, v48);
    if (v50 == enum case for WAError.ErrorCode.error(_:))
    {
      v51 = *(v0 + 488);
      if (!v51)
      {
        (*(*(v0 + 528) + 8))(*(v0 + 552), *(v0 + 520));
        goto LABEL_137;
      }

      v52 = *(v0 + 504);
      v340 = v51;
      v53 = [v340 signature];
      v54 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
      swift_beginAccess();
      v55 = *(v52 + v54);
      if (*(v55 + 16) && (v56 = sub_100085268(v53), (v57 & 1) != 0))
      {
        v58 = *(v0 + 760);
        v59 = *(v0 + 752);
        v60 = *(v0 + 600);
        sub_1003E8CDC(*(v55 + 56) + *(v58 + 72) * v56, v60, type metadata accessor for BrowseEndpoints);
        (*(v58 + 56))(v60, 0, 1, v59);
        sub_100016290(v60, qword_100597590, &qword_1004B1878);
        Logger.init(subsystem:category:)();
        v61 = v340;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 134217984;
          *(v64 + 4) = [v61 signature];

          _os_log_impl(&_mh_execute_header, v62, v63, "#### browseEndpoints remove for :%ld", v64, 0xCu);
        }

        else
        {
        }

        v173 = *(v0 + 608);
        (*(*(v0 + 816) + 8))(*(v0 + 864), *(v0 + 808));
        v174 = [v61 signature];
        swift_beginAccess();
        sub_1003AD83C(v174, v173);
        sub_100016290(v173, qword_100597590, &qword_1004B1878);
        swift_endAccess();
      }

      else
      {
        v116 = *(v0 + 600);
        (*(*(v0 + 760) + 56))(v116, 1, 1, *(v0 + 752));
        sub_100016290(v116, qword_100597590, &qword_1004B1878);
      }

      v342 = *(v0 + 760);
      v175 = *(v52 + v54);
      v178 = *(v175 + 64);
      v177 = v175 + 64;
      v176 = v178;
      v179 = -1;
      v180 = -1 << *(*(v52 + v54) + 32);
      if (-v180 < 64)
      {
        v179 = ~(-1 << -v180);
      }

      v113 = v179 & v176;
      v181 = (63 - v180) >> 6;
      v356 = (*(v0 + 720) + 16);
      v362 = *(v0 + 720);
      v346 = *(v52 + v54);

      v114 = 0;
      for (i = _swiftEmptyArrayStorage; ; (*(v362 + 32))(i + ((*(v362 + 80) + 32) & ~*(v362 + 80)) + *(v362 + 72) * v198, v199, v200))
      {
        v15 = &unk_1004B2E10;
        v369 = i;
        if (v113)
        {
          v183 = v114;
          goto LABEL_84;
        }

        if (v181 <= (v114 + 1))
        {
          v184 = v114 + 1;
        }

        else
        {
          v184 = v181;
        }

        v185 = v184 - 1;
        do
        {
          v183 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            __break(1u);
            goto LABEL_97;
          }

          if (v183 >= v181)
          {
            v201 = *(v0 + 560);
            v202 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
            (*(*(v202 - 8) + 56))(v201, 1, 1, v202);
            v113 = 0;
            v114 = v185;
            goto LABEL_85;
          }

          v113 = *(v177 + 8 * v183);
          ++v114;
        }

        while (!v113);
        v114 = v183;
LABEL_84:
        v186 = *(v0 + 768);
        v187 = *(v373 + 560);
        v188 = __clz(__rbit64(v113));
        v113 &= v113 - 1;
        v189 = v188 | (v183 << 6);
        v190 = *(*(v346 + 48) + 8 * v189);
        sub_1003E8CDC(*(v346 + 56) + *(v342 + 72) * v189, v186, type metadata accessor for BrowseEndpoints);
        v191 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        v192 = *(v191 + 48);
        *v187 = v190;
        sub_100046A08(v186, v187 + v192, type metadata accessor for BrowseEndpoints);
        v0 = v373;
        (*(*(v191 - 8) + 56))(v187, 0, 1, v191);
LABEL_85:
        v193 = *(v0 + 568);
        sub_10001CEA8(*(v0 + 560), v193, &qword_1005994A0, &qword_1004B2E08);
        v194 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        if ((*(*(v194 - 8) + 48))(v193, 1, v194) == 1)
        {
          v203 = *(v0 + 480);

          v204 = *(v0 + 552);
          v205 = *(v0 + 528);
          v206 = *(v0 + 520);
          if (*(v203 + 16))
          {
            v207 = *(v0 + 496);

            sub_1003F90B4(v207, v369);

            (*(v205 + 8))(v204, v206);
          }

          else
          {

            (*(v205 + 8))(v204, v206);
          }

          goto LABEL_137;
        }

        v195 = *(v0 + 568);
        v196 = *(v194 + 48);
        (*v356)(*(v0 + 728), v195 + v196, *(v0 + 712));
        sub_1003E8ED4(v195 + v196, type metadata accessor for BrowseEndpoints);
        i = v369;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_1003A7D74(0, v369[2] + 1, 1, v369);
        }

        v198 = i[2];
        v197 = i[3];
        if (v198 >= v197 >> 1)
        {
          i = sub_1003A7D74((v197 > 1), v198 + 1, 1, i);
        }

        v199 = *(v0 + 728);
        v200 = *(v0 + 712);
        i[2] = v198 + 1;
      }
    }

    if (v50 != enum case for WAError.ErrorCode.subscriberTimeout(_:))
    {
      v89 = *(v0 + 552);
      v90 = *(v0 + 536);
      v91 = *(v0 + 520);
      Logger.init(subsystem:category:)();
      v49(v90, v89, v91);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      v94 = os_log_type_enabled(v92, v93);
      v95 = *(v0 + 536);
      v96 = *(v0 + 528);
      v97 = *(v0 + 520);
      if (v94)
      {
        v98 = swift_slowAlloc();
        *v98 = 134217984;
        v99 = WAError.ErrorCode.rawValue.getter();
        v100 = *(v96 + 8);
        v100(v95, v97);
        *(v98 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "#### error %ld", v98, 0xCu);
      }

      else
      {
        v100 = *(v96 + 8);
        v100(*(v0 + 536), *(v0 + 520));
      }

      v121 = *(v0 + 848);
      v122 = *(v0 + 816);
      v123 = *(v0 + 808);
      v124 = *(v0 + 496);
      v125 = *(v0 + 480);

      (*(v122 + 8))(v121, v123);
      sub_1003AF9F0(*(v124 + 72), *(v124 + 80), *(v124 + 48), *(v124 + 56), 0);
      if (*(v125 + 16))
      {

        v126 = WAError.ErrorCode.rawValue.getter();
        if (v126 < 0xFFFFFFFF80000000)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v126 > 0x7FFFFFFF)
        {
          goto LABEL_145;
        }

        sub_1003F978C(*(v0 + 496), v126, v127, v128, v129, v130, v131, v132, v335, v336);
      }

      v366 = v100;
      v133 = *(v0 + 480);
      swift_beginAccess();
      v134 = *(v133 + 32);
      if (*(v134 + 16))
      {
        v135 = *(v0 + 512);

        v136 = sub_10002A440(v135);
        if (v137)
        {
          v138 = *(*(v134 + 56) + 8 * v136);

          v139 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
          swift_beginAccess();
          *(v138 + v139) = &_swiftEmptyDictionarySingleton;
        }

        else
        {
        }
      }

      v156 = *(v0 + 1032);
      v157 = *(v0 + 1016);
      v355 = *(v0 + 552);
      v360 = *(v0 + 544);
      v158 = *(v0 + 520);
      v159 = *(v0 + 512);
      swift_beginAccess();
      sub_1003AD75C(v159, sub_10047710C, sub_10046D8EC);
      swift_endAccess();

      swift_beginAccess();
      type metadata accessor for NANAgentHandler.Client(255, v156, v157, v160);
      sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();

      v366(v355, v158);
      v366(v360, v158);
      goto LABEL_137;
    }

    Logger.init(subsystem:category:)();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "#### subcriberTimeout", v67, 2u);
    }

    v68 = *(v0 + 856);
    v69 = *(v0 + 816);
    v70 = *(v0 + 808);
    v71 = *(v0 + 496);
    v72 = *(v0 + 480);

    (*(v69 + 8))(v68, v70);
    sub_1003AF9F0(*(v71 + 72), *(v71 + 80), *(v71 + 48), *(v71 + 56), 0);
    if (*(v72 + 16))
    {

      v73 = WAError.ErrorCode.rawValue.getter();
      if (v73 < 0xFFFFFFFF80000000)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v73 > 0x7FFFFFFF)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
      }

      sub_1003F978C(*(v0 + 496), v73, v74, v75, v76, v77, v78, v79, v335, v336);
    }

    v80 = *(v0 + 480);
    swift_beginAccess();
    v81 = *(v80 + 32);
    if (*(v81 + 16))
    {
      v82 = *(v0 + 512);

      v83 = sub_10002A440(v82);
      if (v84)
      {
        v85 = *(*(v81 + 56) + 8 * v83);

        v86 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
        swift_beginAccess();
        *(v85 + v86) = &_swiftEmptyDictionarySingleton;
      }

      else
      {
      }
    }

    v150 = *(v0 + 1032);
    v151 = *(v0 + 1016);
    v368 = *(v0 + 552);
    v152 = *(v0 + 528);
    v153 = *(v0 + 520);
    v154 = *(v0 + 512);
    swift_beginAccess();
    sub_1003AD75C(v154, sub_10047710C, sub_10046D8EC);
    swift_endAccess();

    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client(255, v150, v151, v155);
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    (*(v152 + 8))(v368, v153);
    goto LABEL_137;
  }

  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v350 = *(v0 + 1008);
  v353 = *(v0 + 984);
  v7 = *(v0 + 688);
  v8 = *(v0 + 656);
  v9 = *(v0 + 648);
  v359 = *(v0 + 488);
  v364 = *(v0 + 680);
  v10 = *(*(v0 + 480) + 24);
  swift_unownedRetainStrong();
  (*(v5 + 16))(v4, v10 + *(*v10 + 112), v6);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 136))(v6, AssociatedConformanceWitness);
  *(v0 + 1072) = v12;
  (*(v5 + 8))(v4, v6);
  v13 = *(v8 + 56);
  *(v0 + 1080) = v13;
  *(v0 + 1088) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v350, 1, 1, v9);
  v14 = *(v7 + 56);
  *(v0 + 1096) = v14;
  *(v0 + 1104) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v353, 1, 1, v364);
  if (!v359)
  {
    v87 = *(v0 + 1008);
    v88 = *(v0 + 984);

    sub_100016290(v88, &qword_1005989E8, &qword_1004B28E8);
    sub_100016290(v87, &qword_1005989F0, &qword_1004B28F0);
    goto LABEL_137;
  }

  v15 = *(v0 + 488);
  v16 = [v15 pairedUUID];
  if (v16)
  {
    v17 = *(v0 + 960);
    v18 = *(v0 + 952);
    v19 = *(v0 + 944);
    v20 = *(v0 + 920);
    v21 = *(v0 + 912);
    v22 = v16;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v20 + 32))(v17, v18, v21);
    Logger.init(subsystem:category:)();
    v23 = *(v20 + 16);
    *(v0 + 1112) = v23;
    *(v0 + 1120) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v19, v17, v21);
    v24 = v15;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 944);
    v29 = *(v0 + 920);
    v30 = *(v0 + 912);
    if (v27)
    {
      v365 = v25;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v374[0] = swift_slowAlloc();
      *v31 = 138412802;
      v33 = [v24 publisherAddress];
      *(v31 + 4) = v33;
      v354 = v32;
      *v32 = v33;
      *(v31 + 12) = 2080;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v24;
      v37 = v36;
      v38 = *(v29 + 8);
      v38(v28, v30);
      v39 = sub_100002320(v34, v37, v374);
      v24 = v35;

      *(v31 + 14) = v39;
      *(v31 + 22) = 2080;
      v40 = [v35 pairedDeviceName];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {
        v42 = 0;
        v44 = 0;
      }

      v0 = v373;
      v161 = *(v373 + 816);
      v345 = *(v373 + 808);
      v351 = *(v373 + 904);
      *(v373 + 424) = v42;
      *(v373 + 432) = v44;
      sub_10005DC58(&unk_100599FD0, &qword_100482530);
      v162 = String.init<A>(describing:)();
      v164 = sub_100002320(v162, v163, v374);

      *(v31 + 24) = v164;
      _os_log_impl(&_mh_execute_header, v365, v26, "#### paired peer: %@, UUID: %s, DeviceName: %s", v31, 0x20u);
      sub_100016290(v354, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      v120 = *(v161 + 8);
      v120(v351, v345);
    }

    else
    {
      v117 = *(v0 + 904);
      v118 = *(v0 + 816);
      v119 = *(v0 + 808);

      v38 = *(v29 + 8);
      v38(v28, v30);
      v120 = *(v118 + 8);
      v120(v117, v119);
    }

    *(v0 + 1136) = v38;
    *(v0 + 1128) = v120;
    v165 = [v24 pairedDeviceName];
    if (v165)
    {
      v166 = v165;
      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v168;
    }

    else
    {
      v167 = 0;
      v169 = 0;
    }

    *(v0 + 1152) = v169;
    *(v0 + 1144) = v167;
    v170 = *(v0 + 496);
    *(v0 + 1160) = *(v170 + 72);
    *(v0 + 1168) = *(v170 + 80);
    v171 = *v12;
    *(v0 + 1176) = *(*v12 + 416);
    *(v0 + 1184) = (v171 + 416) & 0xFFFFFFFFFFFFLL | 0x6DFD000000000000;

    return _swift_task_switch(sub_1003BB2F4, v12, 0);
  }

  if (*(v0 + 1208))
  {
    v101 = [v15 serviceSpecificInfo];
    if (v101)
    {
      v102 = v101;
      v103 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();

      v104 = -1;
      v105 = -1 << *(v103 + 32);
      if (-v105 < 64)
      {
        v104 = ~(-1 << -v105);
      }

      v106 = v104 & *(v103 + 64);
      v107 = (63 - v105) >> 6;

      v108 = 0;
      if (v106)
      {
        while (1)
        {
          v109 = v108;
LABEL_35:
          v110 = (v109 << 10) | (16 * __clz(__rbit64(v106)));
          v111 = (*(v103 + 48) + v110);
          v112 = (*(v103 + 56) + v110);
          v113 = *v112;
          v114 = v112[1];
          v115 = *v111 == 0x4E676E6972696170 && v111[1] == 0xEB00000000656D61;
          if (v115 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v106 &= v106 - 1;

          sub_10000AB0C(v113, v114);

          sub_1000124C8(v113, v114);
          v108 = v109;
          if (!v106)
          {
            goto LABEL_32;
          }
        }

LABEL_97:
        v0 = v373;

        sub_10000AB0C(v113, v114);

        static String.Encoding.utf8.getter();
        v361 = String.init(data:encoding:)();
        v172 = v208;
        sub_1000124C8(v113, v114);
      }

      else
      {
        while (1)
        {
LABEL_32:
          v109 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_141;
          }

          if (v109 >= v107)
          {
            break;
          }

          v106 = *(v103 + 64 + 8 * v109);
          ++v108;
          if (v106)
          {
            goto LABEL_35;
          }
        }

        v361 = 0;
        v172 = 0;
      }
    }

    else
    {
      v361 = 0;
      v172 = 0;
    }

    Logger.init(subsystem:category:)();
    v209 = v15;
    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.default.getter();

    v370 = v172;
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v374[0] = v213;
      *v212 = 136315138;
      v214 = [v209 serviceSpecificInfo];
      if (v214)
      {
        v215 = v214;
        v216 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();
      }

      else
      {
        v216 = 0;
      }

      v319 = *(v373 + 896);
      v320 = *(v373 + 816);
      v321 = *(v373 + 808);
      *(v373 + 464) = v216;
      sub_10005DC58(&unk_100595C60, &unk_1004AFD30);
      v322 = String.init<A>(describing:)();
      v324 = sub_100002320(v322, v323, v374);

      *(v212 + 4) = v324;
      _os_log_impl(&_mh_execute_header, v210, v211, "#### Unpaired Device. Fetch DeviceName from SSI: %s", v212, 0xCu);
      sub_100002A00(v213);

      v220 = *(v320 + 8);
      v220(v319, v321);
      v172 = v370;
      if (!v370)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v217 = *(v0 + 896);
      v218 = *(v0 + 816);
      v219 = *(v0 + 808);

      v220 = *(v218 + 8);
      v220(v217, v219);
      if (!v172)
      {
LABEL_134:
        Logger.init(subsystem:category:)();
        v325 = Logger.logObject.getter();
        v326 = static os_log_type_t.default.getter();
        v327 = os_log_type_enabled(v325, v326);
        v328 = *(v373 + 1008);
        v372 = *(v373 + 984);
        v329 = *(v373 + 872);
        v330 = *(v373 + 808);
        v331 = *(v373 + 488);
        if (v327)
        {
          v332 = swift_slowAlloc();
          *v332 = 0;
          _os_log_impl(&_mh_execute_header, v325, v326, "#### DeviceName unknown", v332, 2u);
        }

        v220(v329, v330);
        sub_100016290(v372, &qword_1005989E8, &qword_1004B28E8);
        sub_100016290(v328, &qword_1005989F0, &qword_1004B28F0);
        goto LABEL_137;
      }
    }

    v221 = v373;
    v222 = *(v373 + 504);
    v223 = *(v373 + 488);
    v224 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
    swift_beginAccess();
    v225 = v223;

    v227 = sub_1003E37EC(v226, v225);
    v229 = v228;
    v231 = v230;
    v232 = ~v230;

    if (v232)
    {
      v233 = *(v373 + 768);
      swift_beginAccess();
      sub_10046EB1C(v233, v227, v229);
      sub_1003E8ED4(v233, type metadata accessor for BrowseEndpoints);
      swift_endAccess();
      sub_100085170(v227, v229, v231);
    }

    v234 = *(v373 + 744);
    v235 = *(v373 + 720);
    v236 = *(v373 + 712);
    v237 = *(v373 + 488);
    sub_10005DC58(qword_1005994E0, &qword_1004B2E90);
    v357 = v222;
    *v234 = v361;
    v234[1] = v172;

    v238 = [v237 serviceName];
    v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v241 = v240;

    *(v373 + 376) = v239;
    *(v373 + 384) = v241;
    v234[2] = String.init<A>(_:)();
    v234[3] = v242;
    v234[4] = 0x6C61636F6CLL;
    v234[5] = 0xE500000000000000;
    NWInterface.init(_:)();
    (*(v235 + 104))(v234, enum case for NWEndpoint.service(_:), v236);
    *(v373 + 456) = [v237 signature];
    v243 = sub_1002AAFAC((v373 + 456), 8uLL);
    v245 = v244;
    static WABrowserAgentInterface.browseResultSignatureKey.getter();
    sub_10000AB0C(v243, v245);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    v337 = v243;
    v338 = v245;
    sub_1000124C8(v243, v245);

    v246 = *(v373 + 1096);
    v339 = *(v373 + 1080);
    v343 = *(v373 + 760);
    v247 = *(v373 + 752);
    v248 = *(v373 + 744);
    v249 = *(v373 + 720);
    v250 = *(v373 + 712);
    v251 = *(v373 + 680);
    v252 = *(v373 + 648);
    v253 = *(v373 + 608);
    v352 = v224;
    v254 = *(v373 + 488);
    v347 = [v254 signature];
    (*(v249 + 16))(v253, v248, v250);
    v246(v253 + v247[5], 1, 1, v251);
    v339(v253 + v247[6], 1, 1, v252);

    v255 = [v254 serviceName];
    v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v258 = v257;

    *(v373 + 392) = v256;
    *(v373 + 400) = v258;
    v259 = String.init<A>(_:)();
    v260 = (v253 + v247[7]);
    *v260 = v361;
    v260[1] = v370;
    v261 = (v253 + v247[8]);
    *v261 = v259;
    v261[1] = v262;
    (*(v343 + 56))(v253, 0, 1, v247);
    swift_beginAccess();
    sub_10033869C(v253, v347);
    swift_endAccess();
    v263 = *(v373 + 792);
    v264 = *(v373 + 784);
    v348 = *(v373 + 776);
    v265 = *(v373 + 480);
    static WABrowserAgentInterface.browseResultIsPairedKey.getter();
    v266 = sub_10002D874(&off_1005730E8);
    v268 = v267;
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_1000124C8(v266, v268);

    static WABrowserAgentInterface.browseResultDeviceNameKey.getter();
    static String.Encoding.utf8.getter();
    v269 = String.data(using:allowLossyConversion:)();
    v271 = v270;

    (*(v264 + 8))(v263, v348);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_100017554(v269, v271);

    v341 = v265;
    v272 = *(v265 + 16);
    if (v272)
    {
      v273 = *(v373 + 920);
      v274 = *(v373 + 912);
      v275 = *(v373 + 592);
      v276 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
      swift_beginAccess();
      (*(v273 + 16))(v275, v272 + v276, v274);
      v277 = 0;
    }

    else
    {
      v277 = 1;
    }

    v344 = *(v373 + 760);
    v278 = *(v373 + 720);
    (*(*(v373 + 920) + 56))(*(v373 + 592), v277, 1, *(v373 + 912));
    NWEndpoint.preferredAgentIdentifier.setter();
    v279 = *(v357 + v352);
    v280 = v279 + 64;
    v281 = -1;
    v282 = -1 << *(v279 + 32);
    if (-v282 < 64)
    {
      v281 = ~(-1 << -v282);
    }

    v283 = v281 & *(v279 + 64);
    v284 = (63 - v282) >> 6;
    v358 = (v278 + 16);
    v363 = v278;
    v349 = v279;

    v285 = 0;
    v286 = _swiftEmptyArrayStorage;
    v287 = &qword_1005994A8;
    if (v283)
    {
      goto LABEL_110;
    }

LABEL_111:
    if (v284 <= v285 + 1)
    {
      v289 = v285 + 1;
    }

    else
    {
      v289 = v284;
    }

    v290 = v289 - 1;
    while (1)
    {
      v288 = v285 + 1;
      if (__OFADD__(v285, 1))
      {
        break;
      }

      if (v288 >= v284)
      {
        v309 = v221[72];
        v310 = sub_10005DC58(v287, &unk_1004B2E10);
        (*(*(v310 - 8) + 56))(v309, 1, 1, v310);
        v283 = 0;
        v285 = v290;
        goto LABEL_120;
      }

      v283 = *(v280 + 8 * v288);
      ++v285;
      if (v283)
      {
        v371 = v286;
        v285 = v288;
        while (2)
        {
          v291 = v221[96];
          v292 = v221[72];
          v293 = __clz(__rbit64(v283));
          v283 &= v283 - 1;
          v294 = v293 | (v288 << 6);
          v295 = *(*(v349 + 48) + 8 * v294);
          sub_1003E8CDC(*(v349 + 56) + *(v344 + 72) * v294, v291, type metadata accessor for BrowseEndpoints);
          v296 = v287;
          v297 = sub_10005DC58(v287, &unk_1004B2E10);
          v298 = *(v297 + 48);
          *v292 = v295;
          sub_100046A08(v291, v292 + v298, type metadata accessor for BrowseEndpoints);
          v299 = *(*(v297 - 8) + 56);
          v300 = v297;
          v287 = v296;
          v221 = v373;
          v299(v292, 0, 1, v300);
          v286 = v371;
LABEL_120:
          v301 = v221[73];
          sub_10001CEA8(v221[72], v301, &qword_1005994A0, &qword_1004B2E08);
          v302 = sub_10005DC58(v287, &unk_1004B2E10);
          if ((*(*(v302 - 8) + 48))(v301, 1, v302) != 1)
          {
            v303 = v221[73];
            v304 = *(v302 + 48);
            (*v358)(v221[92], v303 + v304, v221[89]);
            sub_1003E8ED4(v303 + v304, type metadata accessor for BrowseEndpoints);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v286 = sub_1003A7D74(0, v286[2] + 1, 1, v286);
            }

            v306 = v286[2];
            v305 = v286[3];
            if (v306 >= v305 >> 1)
            {
              v286 = sub_1003A7D74((v305 > 1), v306 + 1, 1, v286);
            }

            v307 = v221[92];
            v308 = v221[89];
            v286[2] = v306 + 1;
            (*(v363 + 32))(v286 + ((*(v363 + 80) + 32) & ~*(v363 + 80)) + *(v363 + 72) * v306, v307, v308);
            if (!v283)
            {
              goto LABEL_111;
            }

LABEL_110:
            v371 = v286;
            v288 = v285;
            continue;
          }

          break;
        }

        v311 = v221[126];
        v312 = v221[123];
        v313 = v221[93];
        v314 = v221[90];
        v315 = v221[89];
        if (*(v341 + 16))
        {
          v367 = v221[126];
          v317 = v221[61];
          v316 = v221[62];

          sub_1003F90B4(v316, v286);

          sub_1000124C8(v337, v338);

          (*(v314 + 8))(v313, v315);
          v149 = v312;
LABEL_130:
          sub_100016290(v149, &qword_1005989E8, &qword_1004B28E8);
          sub_100016290(v367, &qword_1005989F0, &qword_1004B28F0);
        }

        else
        {
          v318 = v221[61];

          sub_1000124C8(v337, v338);

          (*(v314 + 8))(v313, v315);
          sub_100016290(v312, &qword_1005989E8, &qword_1004B28E8);
          sub_100016290(v311, &qword_1005989F0, &qword_1004B28F0);
        }

        goto LABEL_137;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  Logger.init(subsystem:category:)();
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.default.getter();
  v142 = os_log_type_enabled(v140, v141);
  v143 = *(v0 + 1008);
  v144 = *(v0 + 984);
  v145 = *(v0 + 888);
  v146 = *(v0 + 816);
  v147 = *(v0 + 808);
  if (v142)
  {
    v148 = swift_slowAlloc();
    v367 = v143;
    *v148 = 0;
    _os_log_impl(&_mh_execute_header, v140, v141, "#### Unpaired Device. Dropping the result", v148, 2u);

    (*(v146 + 8))(v145, v147);
    v149 = v144;
    goto LABEL_130;
  }

  (*(v146 + 8))(v145, v147);
  sub_100016290(v144, &qword_1005989E8, &qword_1004B28E8);
  sub_100016290(v143, &qword_1005989F0, &qword_1004B28F0);
LABEL_137:

  v333 = *(v373 + 8);

  return v333();
}

uint64_t sub_1003BB2F4()
{
  *(v0 + 1192) = (*(v0 + 1176))(*(v0 + 1160), *(v0 + 1168), 1, *(v0 + 960));
  *(v0 + 1200) = 0;

  return _swift_task_switch(sub_1003BB3C8, 0, 0);
}

uint64_t sub_1003BB3C8()
{
  v1 = v0[149];
  [v1 deviceID];
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v192 = v0[142];
  v197 = v0[137];
  v171 = v0[135];
  v168 = v0[126];
  v4 = v0[125];
  v185 = v0[120];
  v187 = v0[123];
  v179 = v0[122];
  v183 = v0[114];
  v200 = v0;
  v5 = v0[100];
  v195 = v0[85];
  v170 = v0[81];
  v173 = v0[61];
  v6 = v0[149];
  v7 = [v6 pairingName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [v6 vendorName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v6 modelName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
  v10 = type metadata accessor for WAPairedDevice.PairingInfo();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = v200;
  WAPairedDevice.init(id:name:pairingInfo:)();
  sub_100016290(v168, &qword_1005989F0, &qword_1004B28F0);
  v171(v4, 0, 1, v170);
  sub_10001CEA8(v4, v168, &qword_1005989F0, &qword_1004B28F0);
  v12 = [v173 serviceName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  WASubscribableService.init(name:)();
  v192(v185, v183);
  sub_100016290(v187, &qword_1005989E8, &qword_1004B28E8);
  v197(v179, 0, 1, v195);
  sub_10001CEA8(v179, v187, &qword_1005989E8, &qword_1004B28E8);
  v13 = v200[141];
  v201 = v200[144];
  if (v201)
  {
    v188 = v200[141];
    v198 = v200[143];
    v14 = v200[150];
    v15 = v200[63];
    v16 = v200[61];
    v17 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
    swift_beginAccess();
    v18 = v16;

    v20 = sub_1003E37EC(v19, v18);
    v22 = v21;
    v24 = v23;
    v178 = v14;
    LODWORD(v14) = ~v23;

    if (v14)
    {
      v25 = v200[96];
      swift_beginAccess();
      sub_10046EB1C(v25, v20, v22);
      sub_1003E8ED4(v25, type metadata accessor for BrowseEndpoints);
      swift_endAccess();
      sub_100085170(v20, v22, v24);
    }

    v193 = v17;
    v196 = v15;
    v26 = v200[93];
    v27 = v200[90];
    v28 = v200[89];
    v29 = v200[61];
    sub_10005DC58(qword_1005994E0, &qword_1004B2E90);
    *v26 = v198;
    v26[1] = v201;

    v30 = [v29 serviceName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v200[47] = v31;
    v200[48] = v33;
    v26[2] = String.init<A>(_:)();
    v26[3] = v34;
    v26[4] = 0x6C61636F6CLL;
    v26[5] = 0xE500000000000000;
    NWInterface.init(_:)();
    (*(v27 + 104))(v26, enum case for NWEndpoint.service(_:), v28);
    v200[57] = [v29 signature];
    v35 = sub_1002AAFAC(v200 + 456, 8uLL);
    v37 = v36;
    static WABrowserAgentInterface.browseResultSignatureKey.getter();
    sub_10000AB0C(v35, v37);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    v182 = v35;
    v184 = v37;
    sub_1000124C8(v35, v37);

    v38 = v200[121];
    v39 = v200[86];
    v40 = v200[85];
    sub_100012400(v200[123], v38, &qword_1005989E8, &qword_1004B28E8);
    if ((*(v39 + 48))(v38, 1, v40) == 1)
    {
      sub_100016290(v200[121], &qword_1005989E8, &qword_1004B28E8);
    }

    else
    {
      v50 = v200[126];
      v51 = v200[124];
      v52 = v200[82];
      v53 = v200[81];
      (*(v200[86] + 32))(v200[88], v200[121], v200[85]);
      sub_100012400(v50, v51, &qword_1005989F0, &qword_1004B28F0);
      v54 = (*(v52 + 48))(v51, 1, v53);
      v55 = v200[124];
      if (v54 == 1)
      {
        (*(v200[86] + 8))(v200[88], v200[85]);
        sub_100016290(v55, &qword_1005989F0, &qword_1004B28F0);
      }

      else
      {
        v57 = v200[88];
        v58 = v200[87];
        v59 = v200[86];
        v60 = v200[85];
        v61 = v200[84];
        v62 = v200[83];
        v63 = v200[82];
        v64 = v200[81];
        (*(v63 + 32))(v61, v55, v64);
        v177 = *(v59 + 16);
        v177(v58, v57, v60);
        v180 = *(v63 + 16);
        v180(v62, v61, v64);
        WABrowserAgentInterface.AgentToEndpoint.init(service:device:)();
        Logger.init(subsystem:category:)();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = v200[79];
          v68 = swift_slowAlloc();
          *v68 = 134217984;
          *(v68 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v65, v66, "#### resultDescriptor: %ld", v68, 0xCu);
        }

        v69 = v200[110];
        v70 = v200[101];

        v188(v69, v70);
        v71 = WABrowserAgentInterface.AgentToEndpoint.encode()();
        if (v178)
        {
          Logger.init(subsystem:category:)();
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          v75 = os_log_type_enabled(v73, v74);
          v76 = v200[103];
          v77 = v200[101];
          if (v75)
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&_mh_execute_header, v73, v74, "#### Encode failed", v78, 2u);
          }

          v188(v76, v77);
        }

        else
        {
          v79 = v71;
          v80 = v72;
          static WABrowserAgentInterface.browseResultKey.getter();
          NWEndpoint.setCustomMetadataForKey(key:metadata:)();

          sub_1000124C8(v79, v80);
        }

        v164 = v200[137];
        v165 = v200[135];
        v166 = v200[95];
        v81 = v200[94];
        v82 = v200[93];
        v83 = v200[90];
        v84 = v200[89];
        v85 = v200[88];
        v189 = v200[86];
        v86 = v200[85];
        v87 = v200[84];
        v176 = v200[82];
        v88 = v200[81];
        v175 = v200[80];
        v172 = v200[78];
        v174 = v200[77];
        v89 = v200[76];
        v90 = v200[61];
        v167 = [v90 signature];
        (*(v83 + 16))(v89, v82, v84);
        v91 = v81[5];
        v169 = v86;
        v177(v89 + v91, v85, v86);
        v164(v89 + v91, 0, 1, v86);
        v11 = v200;
        v92 = v81[6];
        v180(v89 + v92, v87, v88);
        v165(v89 + v92, 0, 1, v88);

        v93 = [v90 serviceName];
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        v200[51] = v94;
        v200[52] = v96;
        v97 = String.init<A>(_:)();
        v98 = (v89 + v81[7]);
        *v98 = v198;
        v98[1] = v201;
        v99 = (v89 + v81[8]);
        *v99 = v97;
        v99[1] = v100;
        (*(v166 + 56))(v89, 0, 1, v81);
        swift_beginAccess();
        sub_10033869C(v89, v167);
        swift_endAccess();
        (*(v172 + 8))(v175, v174);
        (*(v176 + 8))(v87, v88);
        (*(v189 + 8))(v85, v169);
      }
    }

    v101 = v11[99];
    v102 = v11[98];
    v190 = v11[97];
    v103 = v11[60];
    static WABrowserAgentInterface.browseResultIsPairedKey.getter();
    v104 = sub_10002D874(&off_1005730C0);
    v106 = v105;
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_1000124C8(v104, v106);

    static WABrowserAgentInterface.browseResultDeviceNameKey.getter();
    static String.Encoding.utf8.getter();
    v107 = String.data(using:allowLossyConversion:)();
    v109 = v108;

    (*(v102 + 8))(v101, v190);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_100017554(v107, v109);

    v181 = v103;
    v110 = *(v103 + 16);
    if (v110)
    {
      v111 = v11[115];
      v112 = v11[114];
      v113 = v11[74];
      v114 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
      swift_beginAccess();
      (*(v111 + 16))(v113, v110 + v114, v112);
      v115 = 0;
    }

    else
    {
      v115 = 1;
    }

    v186 = v11[95];
    v116 = v11[90];
    (*(v11[115] + 56))(v11[74], v115, 1, v11[114]);
    NWEndpoint.preferredAgentIdentifier.setter();
    v117 = *(v196 + v193);
    v120 = *(v117 + 64);
    v119 = v117 + 64;
    v118 = v120;
    v121 = -1;
    v122 = -1 << *(*(v196 + v193) + 32);
    if (-v122 < 64)
    {
      v121 = ~(-1 << -v122);
    }

    v123 = v121 & v118;
    v124 = (63 - v122) >> 6;
    v191 = *(v196 + v193);
    v194 = v116;
    v199 = (v116 + 16);

    v125 = 0;
    v126 = _swiftEmptyArrayStorage;
    v127 = &qword_1005994A8;
    v128 = &unk_1004B2E10;
    if (!v123)
    {
      goto LABEL_28;
    }

LABEL_27:
    v202 = v126;
    v129 = v125;
LABEL_36:
    v132 = v11[96];
    v133 = v11[72];
    v134 = __clz(__rbit64(v123));
    v123 &= v123 - 1;
    v135 = v134 | (v129 << 6);
    v136 = *(*(v191 + 48) + 8 * v135);
    sub_1003E8CDC(*(v191 + 56) + *(v186 + 72) * v135, v132, type metadata accessor for BrowseEndpoints);
    v137 = sub_10005DC58(v127, v128);
    v138 = v128;
    v139 = v127;
    v140 = v137;
    v141 = *(v137 + 48);
    *v133 = v136;
    v11 = v200;
    sub_100046A08(v132, v133 + v141, type metadata accessor for BrowseEndpoints);
    v142 = *(*(v140 - 8) + 56);
    v143 = v140;
    v127 = v139;
    v128 = v138;
    v142(v133, 0, 1, v143);
    v126 = v202;
    while (1)
    {
      v144 = v11[73];
      sub_10001CEA8(v11[72], v144, &qword_1005994A0, &qword_1004B2E08);
      v145 = sub_10005DC58(v127, v128);
      if ((*(*(v145 - 8) + 48))(v144, 1, v145) == 1)
      {
        break;
      }

      v146 = v11[73];
      v147 = *(v145 + 48);
      (*v199)(v11[92], v146 + v147, v11[89]);
      sub_1003E8ED4(v146 + v147, type metadata accessor for BrowseEndpoints);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = sub_1003A7D74(0, v126[2] + 1, 1, v126);
      }

      v149 = v126[2];
      v148 = v126[3];
      if (v149 >= v148 >> 1)
      {
        v126 = sub_1003A7D74((v148 > 1), v149 + 1, 1, v126);
      }

      v150 = v11[92];
      v151 = v11[89];
      v126[2] = v149 + 1;
      (*(v194 + 32))(v126 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v149, v150, v151);
      if (v123)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v124 <= v125 + 1)
      {
        v130 = v125 + 1;
      }

      else
      {
        v130 = v124;
      }

      v131 = v130 - 1;
      while (1)
      {
        v129 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          __break(1u);
        }

        if (v129 >= v124)
        {
          break;
        }

        v123 = *(v119 + 8 * v129);
        ++v125;
        if (v123)
        {
          v202 = v126;
          v125 = v129;
          goto LABEL_36;
        }
      }

      v152 = v11[72];
      v153 = sub_10005DC58(v127, v128);
      (*(*(v153 - 8) + 56))(v152, 1, 1, v153);
      v123 = 0;
      v125 = v131;
    }

    v56 = v11;
    v154 = v11[126];
    v155 = v11[123];
    v156 = v11[93];
    v157 = v11[90];
    v158 = v11[89];
    if (*(v181 + 16))
    {
      v203 = v11[126];
      v160 = v11[61];
      v159 = v11[62];

      sub_1003F90B4(v159, v126);

      sub_1000124C8(v182, v184);

      (*(v157 + 8))(v156, v158);
      sub_100016290(v155, &qword_1005989E8, &qword_1004B28E8);
      sub_100016290(v203, &qword_1005989F0, &qword_1004B28F0);
    }

    else
    {
      v161 = v11[61];

      sub_1000124C8(v182, v184);

      (*(v157 + 8))(v156, v158);
      sub_100016290(v155, &qword_1005989E8, &qword_1004B28E8);
      sub_100016290(v154, &qword_1005989F0, &qword_1004B28F0);
    }
  }

  else
  {
    Logger.init(subsystem:category:)();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v200[126];
    v45 = v200[123];
    v46 = v200[109];
    v47 = v200[101];
    v48 = v200[61];
    if (v43)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "#### DeviceName unknown", v49, 2u);
    }

    v13(v46, v47);
    sub_100016290(v45, &qword_1005989E8, &qword_1004B28E8);
    sub_100016290(v44, &qword_1005989F0, &qword_1004B28F0);
    v56 = v200;
  }

  v162 = v56[1];

  return v162();
}

uint64_t sub_1003BC970()
{
  v193 = v0;
  if ((*(v0 + 1208) & 1) == 0)
  {
    v15 = *(v0 + 1112);
    v16 = *(v0 + 960);
    v17 = *(v0 + 928);
    v18 = *(v0 + 912);

    Logger.init(subsystem:category:)();
    v15(v17, v16, v18);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v156 = v191[145];
      v157 = v191[146];
      v155 = v191[142];
      v184 = v191[126];
      v176 = v191[141];
      v180 = v191[123];
      v21 = v191[116];
      v22 = v191[114];
      v166 = v191[104];
      v170 = v191[120];
      v164 = v191[101];
      v161 = v191[61];
      v23 = swift_slowAlloc();
      v192[0] = swift_slowAlloc();
      *v23 = 136315394;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v155(v21, v22);
      v27 = sub_100002320(v24, v26, v192);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_100002320(v156, v157, v192);
      _os_log_impl(&_mh_execute_header, v19, v20, "#### Device %s not paired for %s. Dropping the result", v23, 0x16u);
      swift_arrayDestroy();

      v176(v166, v164);
      v155(v170, v22);
    }

    else
    {
      v93 = v191[142];
      v184 = v191[126];
      v178 = v191[141];
      v180 = v191[123];
      v173 = v191[120];
      v94 = v191[116];
      v95 = v191[114];
      v96 = v191[104];
      v97 = v191[101];
      v98 = v191[61];

      v93(v94, v95);
      v178(v96, v97);
      v93(v173, v95);
    }

    sub_100016290(v180, &qword_1005989E8, &qword_1004B28E8);
    v99 = v184;
    goto LABEL_41;
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 960);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  Logger.init(subsystem:category:)();
  v1(v3, v2, v4);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v162 = *(v0 + 1168);
    v159 = *(v0 + 1160);
    v7 = *(v0 + 1136);
    v179 = *(v0 + 1128);
    v183 = *(v0 + 960);
    v8 = *(v0 + 936);
    v9 = *(v0 + 912);
    v169 = *(v0 + 808);
    v175 = *(v0 + 840);
    v10 = swift_slowAlloc();
    v192[0] = swift_slowAlloc();
    *v10 = 136315394;
    sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v7(v8, v9);
    v14 = sub_100002320(v11, v13, v192);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100002320(v159, v162, v192);
    _os_log_impl(&_mh_execute_header, v5, v6, "#### Device %s not paired for %s. Allowing for DDUI browsing", v10, 0x16u);
    swift_arrayDestroy();

    v179(v175, v169);
    v7(v183, v9);
  }

  else
  {
    v28 = *(v0 + 1136);
    v29 = *(v0 + 1128);
    v185 = *(v0 + 960);
    v30 = *(v0 + 936);
    v31 = *(v0 + 912);
    v32 = *(v0 + 840);
    v33 = *(v0 + 808);

    v28(v30, v31);
    v29(v32, v33);
    v28(v185, v31);
  }

  v34 = v0;
  if (!*(v0 + 1152))
  {
    v100 = *(v0 + 1128);
    Logger.init(subsystem:category:)();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    v103 = os_log_type_enabled(v101, v102);
    v189 = v34[126];
    v104 = v34[123];
    v105 = v34[109];
    v106 = v34[101];
    v107 = v34[61];
    if (v103)
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "#### DeviceName unknown", v108, 2u);
    }

    v100(v105, v106);
    sub_100016290(v104, &qword_1005989E8, &qword_1004B28E8);
    v99 = v189;
    goto LABEL_41;
  }

  v177 = *(v0 + 1152);
  v188 = *(v0 + 1144);
  v35 = *(v0 + 504);
  v36 = *(v0 + 488);
  v37 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
  swift_beginAccess();
  v38 = v36;

  v40 = sub_1003E37EC(v39, v38);
  v42 = v41;
  v44 = v43;
  v45 = ~v43;

  if (v45)
  {
    v46 = *(v0 + 768);
    swift_beginAccess();
    sub_10046EB1C(v46, v40, v42);
    sub_1003E8ED4(v46, type metadata accessor for BrowseEndpoints);
    swift_endAccess();
    sub_100085170(v40, v42, v44);
  }

  v47 = *(v0 + 744);
  v48 = *(v0 + 720);
  v49 = *(v0 + 712);
  v50 = *(v0 + 488);
  sub_10005DC58(qword_1005994E0, &qword_1004B2E90);
  *v47 = v188;
  v47[1] = v177;

  v51 = [v50 serviceName];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v181 = v37;
  v54 = v53;

  *(v0 + 376) = v52;
  *(v0 + 384) = v54;
  v47[2] = String.init<A>(_:)();
  v47[3] = v55;
  v47[4] = 0x6C61636F6CLL;
  v47[5] = 0xE500000000000000;
  NWInterface.init(_:)();
  (*(v48 + 104))(v47, enum case for NWEndpoint.service(_:), v49);
  *(v0 + 456) = [v50 signature];
  v56 = sub_1002AAFAC((v0 + 456), 8uLL);
  v186 = v35;
  v58 = v57;
  static WABrowserAgentInterface.browseResultSignatureKey.getter();
  sub_10000AB0C(v56, v58);
  NWEndpoint.setCustomMetadataForKey(key:metadata:)();
  v158 = v56;
  v160 = v58;
  sub_1000124C8(v56, v58);

  v59 = *(v0 + 1096);
  v163 = *(v0 + 1080);
  v167 = *(v0 + 760);
  v60 = *(v0 + 752);
  v61 = *(v0 + 744);
  v62 = *(v0 + 720);
  v63 = *(v0 + 712);
  v64 = *(v0 + 680);
  v65 = *(v0 + 648);
  v66 = *(v0 + 608);
  v67 = *(v0 + 488);
  v171 = [v67 signature];
  (*(v62 + 16))(v66, v61, v63);
  v59(v66 + v60[5], 1, 1, v64);
  v163(v66 + v60[6], 1, 1, v65);

  v68 = [v67 serviceName];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  *(v0 + 392) = v69;
  *(v0 + 400) = v71;
  v72 = String.init<A>(_:)();
  v73 = (v66 + v60[7]);
  *v73 = v188;
  v73[1] = v177;
  v74 = (v66 + v60[8]);
  *v74 = v72;
  v74[1] = v75;
  (*(v167 + 56))(v66, 0, 1, v60);
  swift_beginAccess();
  sub_10033869C(v66, v171);
  swift_endAccess();
  v76 = *(v0 + 792);
  v77 = *(v0 + 784);
  v172 = *(v0 + 776);
  v78 = *(v0 + 480);
  static WABrowserAgentInterface.browseResultIsPairedKey.getter();
  v79 = sub_10002D874(&off_1005730E8);
  v81 = v80;
  NWEndpoint.setCustomMetadataForKey(key:metadata:)();
  sub_1000124C8(v79, v81);

  static WABrowserAgentInterface.browseResultDeviceNameKey.getter();
  static String.Encoding.utf8.getter();
  v82 = String.data(using:allowLossyConversion:)();
  v84 = v83;

  (*(v77 + 8))(v76, v172);
  NWEndpoint.setCustomMetadataForKey(key:metadata:)();
  sub_100017554(v82, v84);

  v165 = v78;
  v85 = *(v78 + 16);
  if (v85)
  {
    v86 = *(v0 + 920);
    v87 = *(v0 + 912);
    v88 = *(v0 + 592);
    v89 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
    swift_beginAccess();
    (*(v86 + 16))(v88, v85 + v89, v87);
    v90 = v186;
    v91 = 0;
    v92 = v0;
  }

  else
  {
    v92 = v0;
    v90 = v186;
    v91 = 1;
  }

  v168 = v92[95];
  v109 = v92[90];
  (*(v92[115] + 56))(v92[74], v91, 1, v92[114]);
  NWEndpoint.preferredAgentIdentifier.setter();
  v110 = *(v90 + v181);
  v111 = v110 + 64;
  v112 = -1;
  v113 = -1 << *(v110 + 32);
  if (-v113 < 64)
  {
    v112 = ~(-1 << -v113);
  }

  v114 = v112 & *(v110 + 64);
  v115 = (63 - v113) >> 6;
  v182 = (v109 + 16);
  v187 = v109;
  v174 = v110;

  v116 = 0;
  v117 = _swiftEmptyArrayStorage;
  v118 = &qword_1005994A8;
  v119 = &unk_1004B2E10;
  if (!v114)
  {
    goto LABEL_22;
  }

LABEL_21:
  v190 = v117;
  v120 = v116;
LABEL_30:
  v123 = v92[96];
  v124 = v92[72];
  v125 = __clz(__rbit64(v114));
  v114 &= v114 - 1;
  v126 = v125 | (v120 << 6);
  v127 = *(*(v174 + 48) + 8 * v126);
  sub_1003E8CDC(*(v174 + 56) + *(v168 + 72) * v126, v123, type metadata accessor for BrowseEndpoints);
  v128 = sub_10005DC58(v118, v119);
  v129 = v119;
  v130 = v118;
  v131 = v128;
  v132 = *(v128 + 48);
  *v124 = v127;
  v92 = v191;
  sub_100046A08(v123, v124 + v132, type metadata accessor for BrowseEndpoints);
  v133 = *(*(v131 - 8) + 56);
  v134 = v131;
  v118 = v130;
  v119 = v129;
  v133(v124, 0, 1, v134);
  v117 = v190;
  while (1)
  {
    v135 = v92[73];
    sub_10001CEA8(v92[72], v135, &qword_1005994A0, &qword_1004B2E08);
    v136 = sub_10005DC58(v118, v119);
    if ((*(*(v136 - 8) + 48))(v135, 1, v136) == 1)
    {
      break;
    }

    v137 = v92[73];
    v138 = *(v136 + 48);
    (*v182)(v92[92], v137 + v138, v92[89]);
    sub_1003E8ED4(v137 + v138, type metadata accessor for BrowseEndpoints);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_1003A7D74(0, v117[2] + 1, 1, v117);
    }

    v140 = v117[2];
    v139 = v117[3];
    if (v140 >= v139 >> 1)
    {
      v117 = sub_1003A7D74((v139 > 1), v140 + 1, 1, v117);
    }

    v141 = v92[92];
    v142 = v92[89];
    v117[2] = v140 + 1;
    (*(v187 + 32))(v117 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v140, v141, v142);
    if (v114)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v115 <= v116 + 1)
    {
      v121 = v116 + 1;
    }

    else
    {
      v121 = v115;
    }

    v122 = v121 - 1;
    while (1)
    {
      v120 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        __break(1u);
      }

      if (v120 >= v115)
      {
        break;
      }

      v114 = *(v111 + 8 * v120);
      ++v116;
      if (v114)
      {
        v190 = v117;
        v116 = v120;
        goto LABEL_30;
      }
    }

    v143 = v92[72];
    v144 = sub_10005DC58(v118, v119);
    (*(*(v144 - 8) + 56))(v143, 1, 1, v144);
    v114 = 0;
    v116 = v122;
  }

  v145 = v92[126];
  v146 = v92[123];
  v147 = v92[93];
  v148 = v92[90];
  v149 = v92[89];
  if (*(v165 + 16))
  {
    v150 = v191[62];
    v151 = v191[61];

    sub_1003F90B4(v150, v117);

    sub_1000124C8(v158, v160);

    (*(v148 + 8))(v147, v149);
    sub_100016290(v146, &qword_1005989E8, &qword_1004B28E8);
    v99 = v145;
LABEL_41:
    sub_100016290(v99, &qword_1005989F0, &qword_1004B28F0);
    goto LABEL_42;
  }

  v154 = v92[61];

  sub_1000124C8(v158, v160);

  (*(v148 + 8))(v147, v149);
  sub_100016290(v146, &qword_1005989E8, &qword_1004B28E8);
  sub_100016290(v145, &qword_1005989F0, &qword_1004B28F0);

LABEL_42:

  v152 = v191[1];

  return v152();
}

void sub_1003BDE58()
{
  v1 = v0;
  v64 = *v0;
  v63 = type metadata accessor for Logger();
  v2 = *(v63 - 8);
  __chkstk_darwin();
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UUID();
  v5 = *(v72 - 8);
  __chkstk_darwin();
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v54 - v7;
  sub_10005DC58(&qword_100598978, &qword_1004B2878);
  __chkstk_darwin();
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v54 - v9;
  swift_beginAccess();
  v10 = v1[5];
  v11 = *(v10 + 64);
  v66 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v58 = v10;

  v69 = v1;
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  v55 = v5 + 16;
  v68 = (v5 + 32);
  v61 = &unk_1004B4EC0;
  v60 = (v2 + 8);
  v57 = v5;
  v59 = (v5 + 8);
  *&v17 = 136315138;
  v54 = v17;
  v70 = v4;
  v62 = v16;
  while (v14)
  {
    v20 = v15;
LABEL_15:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = v24 | (v20 << 6);
    v26 = v58;
    v27 = v57;
    v28 = v56;
    v29 = v72;
    (*(v57 + 16))(v56, *(v58 + 48) + *(v57 + 72) * v25, v72);
    v30 = *(*(v26 + 56) + 8 * v25);
    v31 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    v32 = *(v31 + 48);
    v33 = *(v27 + 32);
    v23 = v67;
    v33(v67, v28, v29);
    *(v23 + v32) = v30;
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

    v4 = v70;
LABEL_16:
    v34 = v65;
    sub_10001CEA8(v23, v65, &qword_100598978, &qword_1004B2878);
    v35 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {

      v69[13] = 0;

      return;
    }

    v36 = *(v34 + *(v35 + 48));
    (*v68)(v71, v34, v72);
    Logger.init(subsystem:category:)();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v74[0] = v40;
      *v39 = v54;
      v41 = sub_1003AE2C0();
      v43 = sub_100002320(v41, v42, v74);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "#### Stop browser session(Defer timeout) :%s", v39, 0xCu);
      sub_100002A00(v40);

      (*v60)(v70, v63);
    }

    else
    {

      (*v60)(v4, v63);
    }

    v44 = *(v36 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
    v45 = *(v36 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);
    v46 = *(v36 + 16);
    v47 = *(v46 + 48);
    v48 = *(v46 + 56);

    sub_1003AF9F0(v44, v45, v47, v48, 0);

    v49 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
    swift_beginAccess();
    *(v36 + v49) = &_swiftEmptyDictionarySingleton;

    swift_beginAccess();
    sub_1003AD75C(v71, sub_10047710C, sub_10046D8EC);
    swift_endAccess();

    type metadata accessor for NANAgentHandler.Client(0, *(v64 + 80), *(v64 + 88), v50);
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    Dictionary.subscript.getter();

    v52 = v74[0];
    if (v74[0])
    {
      (*((swift_isaMask & *v74[0]) + 0x98))(v51);
    }

    swift_beginAccess();
    v18 = v72;
    type metadata accessor for Dictionary();
    v19 = v71;
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    (*v59)(v19, v18);
    v4 = v70;
    v16 = v62;
  }

  if (v16 <= v15 + 1)
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = v16;
  }

  v22 = v21 - 1;
  v23 = v67;
  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      v53 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      (*(*(v53 - 8) + 56))(v23, 1, 1, v53);
      v14 = 0;
      v15 = v22;
      goto LABEL_16;
    }

    v14 = *(v66 + 8 * v20);
    ++v15;
    if (v14)
    {
      v15 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void NANAgentHandler.stopBrowserSession(_:deferred:)(void *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchTimeInterval();
  v121 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v117 - v10;
  __chkstk_darwin();
  v13 = &v117 - v12;
  v14 = type metadata accessor for UUID();
  v132 = *(v14 - 8);
  __chkstk_darwin();
  v126 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v117 - v16;
  __chkstk_darwin();
  v130 = &v117 - v17;
  sub_10005DC58(&qword_100598978, &qword_1004B2878);
  __chkstk_darwin();
  v125 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v117 - v19;
  __chkstk_darwin();
  v124 = &v117 - v20;
  __chkstk_darwin();
  v128 = &v117 - v21;
  v131 = type metadata accessor for Logger();
  v22 = *(v131 - 1);
  __chkstk_darwin();
  __chkstk_darwin();
  v133 = v14;
  v134 = a1;
  v123 = v3;
  v122 = v6;
  if (a2)
  {
    v117 = v7;
    v25 = &v117 - v24;
    Logger.init(subsystem:category:)();

    v129 = v25;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v119 = v9;
    v118 = v11;
    v120 = v13;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v138[0] = v30;
      *v29 = 67109378;
      *(v29 + 4) = 1;
      *(v29 + 8) = 2080;
      v31 = sub_1003F39A8();
      v33 = sub_100002320(v31, v32, v138);

      *(v29 + 10) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "#### Defer(%{BOOL}d) stopping browser session:%s", v29, 0x12u);
      sub_100002A00(v30);
    }

    (*(v22 + 8))(v129, v131);
    swift_beginAccess();
    v34 = v3[4];
    v35 = v34 + 64;
    v36 = 1 << v34[32];
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v34 + 8);
    v39 = (v36 + 63) >> 6;
    v125 = (v132 + 16);
    v131 = (v132 + 32);
    v129 = (v132 + 8);
    v126 = v34;

    v40 = 0;
    v41 = v127;
    v42 = v124;
    if (v38)
    {
      while (1)
      {
        v43 = v40;
LABEL_15:
        v46 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v47 = v46 | (v43 << 6);
        v48 = v126;
        v49 = v132;
        v50 = v130;
        (*(v132 + 16))(v130, *(v126 + 6) + *(v132 + 72) * v47, v14);
        v51 = *(*(v48 + 7) + 8 * v47);
        v52 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        v53 = v14;
        v54 = *(v52 + 48);
        v55 = *(v49 + 32);
        v42 = v124;
        v55(v124, v50, v53);
        *(v42 + v54) = v51;
        (*(*(v52 - 8) + 56))(v42, 0, 1, v52);

        v45 = v43;
        v41 = v127;
LABEL_16:
        v56 = v128;
        sub_10001CEA8(v42, v128, &qword_100598978, &qword_1004B2878);
        v57 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
        v59 = v134;
        if (v58 == 1)
        {
          break;
        }

        v60 = *&v56[*(v57 + 48)];
        v61 = v56;
        v14 = v133;
        (*v131)(v41, v61, v133);
        if (*(v60 + 16) == v59)
        {
          v95 = v123;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v95[5];
          v95[5] = 0x8000000000000000;
          sub_1003E263C(v60, v41, isUniquelyReferenced_nonNull_native, sub_10046D8EC, sub_100313B98, sub_1002E01C4);
          v95[5] = v137;
          swift_endAccess();
          swift_beginAccess();
          sub_1003AD75C(v41, sub_10047710C, sub_10046D8EC);
          swift_endAccess();

          if (v95[13])
          {

            (*v129)(v41, v14);
            return;
          }

          *v120 = 5;
          v106 = enum case for DispatchTimeInterval.seconds(_:);
          v107 = *(v121 + 104);
          v108 = v117;
          v107();
          v134 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
          v109 = v118;
          *v118 = 5;
          (v107)(v109, v106, v108);
          v110 = swift_allocObject();
          swift_weakInit();
          v111 = swift_allocObject();
          v112 = v122;
          v111[2] = *(v122 + 80);
          v111[3] = *(v112 + 88);
          v111[4] = v110;
          v113 = v119;
          *v119 = 100;
          (v107)(v113, enum case for DispatchTimeInterval.milliseconds(_:), v108);
          type metadata accessor for P2PTimer(0);
          swift_allocObject();
          v114 = v14;
          v115 = v134;

          v116 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v120, v115, v109, v113, sub_1003E7AC4, v111);

          (*v129)(v127, v114);

          v95[13] = v116;
          break;
        }

        (*v129)(v41, v14);

        v40 = v45;
        if (!v38)
        {
          goto LABEL_8;
        }
      }

LABEL_48:

      return;
    }

LABEL_8:
    if (v39 <= v40 + 1)
    {
      v44 = v40 + 1;
    }

    else
    {
      v44 = v39;
    }

    v45 = v44 - 1;
    while (1)
    {
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v43 >= v39)
      {
        v62 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        (*(*(v62 - 8) + 56))(v42, 1, 1, v62);
        v38 = 0;
        goto LABEL_16;
      }

      v38 = *&v35[8 * v43];
      ++v40;
      if (v38)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v63 = v23;
    Logger.init(subsystem:category:)();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v138[0] = v67;
      *v66 = 136315138;
      v68 = sub_1003F39A8();
      v70 = sub_100002320(v68, v69, v138);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "#### Stopped a browser session:%s", v66, 0xCu);
      sub_100002A00(v67);
    }

    (*(v22 + 8))(v63, v131);
    v71 = v126;
    v72 = v125;
    swift_beginAccess();
    v73 = v3[4];
    v74 = v73 + 64;
    v75 = 1 << v73[32];
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v73 + 8);
    v78 = (v75 + 63) >> 6;
    v124 = (v132 + 16);
    v131 = (v132 + 32);
    v127 = v73;
    v128 = (v132 + 8);

    for (i = 0; v77; i = v82)
    {
      v80 = i;
LABEL_34:
      v83 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v84 = v83 | (v80 << 6);
      v85 = v127;
      v86 = v132;
      (*(v132 + 16))(v130, *(v127 + 6) + *(v132 + 72) * v84, v14);
      v87 = *(*(v85 + 7) + 8 * v84);
      v88 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      v89 = *(v88 + 48);
      v72 = v125;
      (*(v86 + 32))();
      *(v72 + v89) = v87;
      (*(*(v88 - 8) + 56))(v72, 0, 1, v88);

      v82 = v80;
      v71 = v126;
LABEL_35:
      v90 = v129;
      sub_10001CEA8(v72, v129, &qword_100598978, &qword_1004B2878);
      v91 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      if ((*(*(v91 - 8) + 48))(v90, 1, v91) == 1)
      {
        goto LABEL_48;
      }

      v92 = *&v90[*(v91 + 48)];
      v14 = v133;
      (*v131)(v71, v90, v133);
      v93 = *(v92 + 16);
      if (v93 == v134)
      {
        v97 = *(v92 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
        v98 = *(v92 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);
        v99 = v93[6];
        v100 = v93[7];

        sub_1003AF9F0(v97, v98, v99, v100, 0);

        v101 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
        swift_beginAccess();
        *(v92 + v101) = &_swiftEmptyDictionarySingleton;

        swift_beginAccess();
        sub_1003AD75C(v71, sub_10047710C, sub_10046D8EC);
        swift_endAccess();

        swift_beginAccess();
        type metadata accessor for NANAgentHandler.Client(0, *(v122 + 80), *(v122 + 88), v102);
        sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        Dictionary.subscript.getter();

        v104 = v135;
        if (v135)
        {
          (*((swift_isaMask & *v135) + 0x98))(v103);
        }

        swift_beginAccess();
        v105 = v133;
        type metadata accessor for Dictionary();
        Dictionary.removeValue(forKey:)();
        swift_endAccess();

        (*v128)(v71, v105);
        return;
      }

      (*v128)(v71, v14);
    }

    if (v78 <= i + 1)
    {
      v81 = i + 1;
    }

    else
    {
      v81 = v78;
    }

    v82 = v81 - 1;
    while (1)
    {
      v80 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v80 >= v78)
      {
        v94 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        (*(*(v94 - 8) + 56))(v72, 1, 1, v94);
        v77 = 0;
        goto LABEL_35;
      }

      v77 = *&v74[8 * v80];
      ++i;
      if (v77)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

uint64_t NANAgentHandler.startListenerSession(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v118 = v2;
  v112 = v4;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v113 = &v108 - v5;
  v116 = type metadata accessor for WAError.ErrorCode();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v120 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v123 = v7;
  v124 = v8;
  __chkstk_darwin();
  v122 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v108 - v10;
  __chkstk_darwin();
  v114 = &v108 - v11;
  __chkstk_darwin();
  v111 = &v108 - v12;
  __chkstk_darwin();
  v108 = &v108 - v13;
  v14 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent();
  v15 = *(v14 - 8);
  v128 = v14;
  v129 = v15;
  __chkstk_darwin();
  v110 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v16;
  __chkstk_darwin();
  v121 = &v108 - v17;
  sub_10005DC58(&qword_100598990, &qword_1004B2888);
  __chkstk_darwin();
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v108 - v20;
  __chkstk_darwin();
  v127 = &v108 - v22;
  v23 = type metadata accessor for Data.Deallocator();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = 0;
  v119 = a1;
  v27 = nw_advertise_descriptor_copy_custom_service();
  v28 = v131;
  (*(v24 + 104))(v26, enum case for Data.Deallocator.free(_:), v23);
  Data.Deallocator._deallocator.getter();
  if (v28)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v29 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    if (v28 <= 14)
    {
      v30 = v127;
      if (v28 < 0)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(0, v35))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v34 -= v35;
      }

      v36 = __DataStorage._length.getter();
      if (v36 >= v28)
      {
        v37 = v28;
      }

      else
      {
        v37 = v36;
      }

      v38 = &v34[v37];
      if (v34)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = sub_10000AD84(v34, v39);
      v42 = v41;

      v43 = v26;
      v31 = v40;
      (*(v24 + 8))(v43, v23);
      v32 = v42 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      (*(v24 + 8))(v26, v23);

      v30 = v127;
      if (v28 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = v28;
        v32 = v29 | 0x8000000000000000;
      }

      else
      {
        v31 = v28 << 32;
        v32 = v29 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v33 = Data.Deallocator._deallocator.getter();
    v33(v27, 0);

    (*(v24 + 8))(v26, v23);
    v31 = 0;
    v32 = 0xC000000000000000;
    v30 = v127;
  }

  v44 = v128;
  v45 = *(v129 + 56);
  v45(v30, 1, 1, v128);
  v125 = v32;
  v126 = v31;
  static WAListenerAgentInterface.DescriptorToAgent.decode(from:)();
  sub_100016290(v30, &qword_100598990, &qword_1004B2888);
  v45(v21, 0, 1, v44);
  sub_10001CEA8(v21, v30, &qword_100598990, &qword_1004B2888);
  v46 = v129;
  sub_100012400(v30, v19, &qword_100598990, &qword_1004B2888);
  if ((*(v46 + 48))(v19, 1, v44) != 1)
  {
    v53 = v44;
    v54 = *(v46 + 32);
    v54(v121, v19, v53);
    v55 = v119;
    v56 = *(v119 + 64);
    v57._countAndFlagsBits = 0x6873696C627550;
    v58._countAndFlagsBits = 0xD00000000000001ELL;
    v58._object = 0x80000001004B8650;
    v57._object = 0xE700000000000000;
    if (Int32.checkEntitlement(for_:capabilities:)(v58, v57))
    {
      v59 = *(v55 + 72);
      v60 = *(v55 + 80);
      v132[0] = v59;
      v132[1] = v60;
      strcpy(v130, "wifiawaretool");
      v130[7] = -4864;
      sub_10005E2E4();
      if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v61 = *(v55 + 48), v30 = *(v55 + 56), (static LaunchServiceRecord.isPublishableServiceValid(for:serviceName:)(v56, v61, v30)))
      {
        v62 = v118;
        if (sub_1003E67A8(v59, v60, 1))
        {
          v63 = type metadata accessor for TaskPriority();
          (*(*(v63 - 8) + 56))(v113, 1, 1, v63);
          v64 = v128;
          v65 = v129;
          v66 = v110;
          (*(v129 + 16))(v110, v121, v128);
          v67 = (*(v65 + 80) + 56) & ~*(v65 + 80);
          v68 = (v109 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
          v69 = swift_allocObject();
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          v70 = v112;
          *(v69 + 4) = *(v112 + 80);
          *(v69 + 5) = *(v70 + 88);
          *(v69 + 6) = v55;
          v54(&v69[v67], v66, v64);
          *&v69[v68] = v62;

          sub_1003AD150(0, 0, v113, &unk_1004B2898, v69);
          sub_1000124C8(v126, v125);

          (*(v65 + 8))(v121, v64);
          sub_100016290(v127, &qword_100598990, &qword_1004B2888);
          return 0;
        }

        v80 = v111;
        Logger.init(subsystem:category:)();

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v132[0] = v84;
          *v83 = 136315138;
          *(v83 + 4) = sub_100002320(v59, v60, v132);
          _os_log_impl(&_mh_execute_header, v81, v82, "#### Client %s reached max allowed services", v83, 0xCu);
          sub_100002A00(v84);
        }

        (*(v124 + 8))(v80, v123);
        v85 = v128;
        v86 = v116;
        v87 = v115;
        v88 = enum case for WAError.ErrorCode.noRadioResources(_:);
        if (v118[2])
        {
          v89 = *(v115 + 104);
          v90 = v120;
          v89(v120, enum case for WAError.ErrorCode.noRadioResources(_:), v116);

          v91 = WAError.ErrorCode.rawValue.getter();
          (*(v87 + 8))(v90, v86);
          if (v91 < 0xFFFFFFFF80000000)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (v91 > 0x7FFFFFFF)
          {
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          sub_1003F97C8(v55, v91);
        }

        else
        {
          v89 = *(v115 + 104);
        }

        v106 = v120;
        v89(v120, v88, v86);
        v51 = WAError.ErrorCode.rawValue.getter();
        sub_1000124C8(v126, v125);
        (*(v87 + 8))(v106, v86);
        (*(v129 + 8))(v121, v85);
        sub_100016290(v127, &qword_100598990, &qword_1004B2888);
        if (v51 >= 0xFFFFFFFF80000000)
        {
          if (v51 <= 0x7FFFFFFF)
          {
            return v51;
          }

          goto LABEL_64;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      v71 = v114;
      Logger.init(subsystem:category:)();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v132[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_100002320(*(v55 + 72), *(v55 + 80), v132);
        _os_log_impl(&_mh_execute_header, v72, v73, "#### No Publish Entitlement for bundleId: %s", v74, 0xCu);
        sub_100002A00(v75);
      }

      (*(v124 + 8))(v71, v123);
      v61 = v128;
      v76 = v116;
      v77 = v115;
      v59 = v118[2];
      v78 = enum case for WAError.ErrorCode.entitlementMissing(_:);
      if (v59)
      {
        v60 = *(v115 + 104);
        v79 = v120;
        v60(v120, enum case for WAError.ErrorCode.entitlementMissing(_:), v116);

        v55 = WAError.ErrorCode.rawValue.getter();
        (*(v77 + 8))(v79, v76);
        if (v55 < 0xFFFFFFFF80000000)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v55 > 0x7FFFFFFF)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        sub_1003F97C8(v119, v55);
      }

      else
      {
        v60 = *(v115 + 104);
      }

      v92 = v120;
      v60(v120, v78, v76);
      v51 = WAError.ErrorCode.rawValue.getter();
      sub_1000124C8(v126, v125);
      (*(v77 + 8))(v92, v76);
      (*(v129 + 8))(v121, v61);
      sub_100016290(v30, &qword_100598990, &qword_1004B2888);
      if (v51 < 0xFFFFFFFF80000000)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v51 <= 0x7FFFFFFF)
      {
        return v51;
      }

      __break(1u);
    }

    v93 = v108;
    Logger.init(subsystem:category:)();

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v96 = 136315394;
      *(v96 + 4) = sub_100002320(v59, v60, v132);
      *(v96 + 12) = 2080;
      *(v96 + 14) = sub_100002320(v61, v30, v132);
      _os_log_impl(&_mh_execute_header, v94, v95, "#### Client %s has no service %s in plist", v96, 0x16u);
      swift_arrayDestroy();
    }

    (*(v124 + 8))(v93, v123);
    v97 = v127;
    v98 = v128;
    v99 = v116;
    v100 = v115;
    v101 = enum case for WAError.ErrorCode.serviceNotDeclared(_:);
    if (v118[2])
    {
      v102 = v128;
      v103 = *(v115 + 104);
      v104 = v120;
      v103(v120, enum case for WAError.ErrorCode.serviceNotDeclared(_:), v116);

      v105 = WAError.ErrorCode.rawValue.getter();
      (*(v100 + 8))(v104, v99);
      if (v105 < 0xFFFFFFFF80000000)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

      if (v105 > 0x7FFFFFFF)
      {
        goto LABEL_69;
      }

      sub_1003F97C8(v55, v105);

      v98 = v102;
      v97 = v127;
    }

    else
    {
      v103 = *(v115 + 104);
    }

    v107 = v120;
    v103(v120, v101, v99);
    v51 = WAError.ErrorCode.rawValue.getter();
    sub_1000124C8(v126, v125);
    (*(v100 + 8))(v107, v99);
    (*(v129 + 8))(v121, v98);
    sub_100016290(v97, &qword_100598990, &qword_1004B2888);
    if (v51 < 0xFFFFFFFF80000000)
    {
      goto LABEL_65;
    }

    if (v51 <= 0x7FFFFFFF)
    {
      return v51;
    }

    __break(1u);
    goto LABEL_58;
  }

  sub_100016290(v19, &qword_100598990, &qword_1004B2888);
  v47 = v117;
  Logger.init(subsystem:category:)();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "#### WAListenerIPC.Descriptor2Agent nil", v50, 2u);
  }

  sub_1000124C8(v126, v125);

  (*(v124 + 8))(v47, v123);
  sub_100016290(v30, &qword_100598990, &qword_1004B2888);
  return 255;
}

uint64_t sub_1003C0AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a1;
  v6[10] = a4;
  v7 = *a6;
  v6[13] = *(*a6 + 88);
  v6[14] = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  v6[15] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v6[16] = v11;
  v6[17] = *(v11 - 8);
  v6[18] = swift_task_alloc();
  v12 = type metadata accessor for WAPerformanceMode();
  v6[19] = v12;
  v6[20] = *(v12 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = sub_10005DC58(&qword_1005994B8, &qword_1004B2E38);
  v6[23] = swift_task_alloc();
  sub_10005DC58(&unk_1005994C0, &unk_1004B2E40);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  sub_10005DC58(&unk_1005989A8, &qword_1004B28B0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v13 = type metadata accessor for WAError.ErrorCode();
  v6[29] = v13;
  v6[30] = *(v13 - 8);
  v6[31] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v6[32] = v14;
  v6[33] = *(v14 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v15 = swift_checkMetadataState();
  v6[39] = v15;
  v6[40] = *(v15 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v16 = type metadata accessor for WADevicesAgentInterface.Devices();
  v6[43] = v16;
  v6[44] = *(v16 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v17 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent();
  v6[47] = v17;
  v6[48] = *(v17 - 8);
  v6[49] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v6[50] = v18;
  v19 = *(v18 - 8);
  v6[51] = v19;
  v6[52] = *(v19 + 64);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return _swift_task_switch(sub_1003C103C, 0, 0);
}

uint64_t sub_1003C103C(uint64_t a1)
{
  v3 = v1[48];
  v2 = v1[49];
  v4 = v1[47];
  v27 = v1[40];
  v28 = v1[39];
  v29 = v1[42];
  v30 = v1[15];
  v5 = v1[11];
  v6 = v1[12];
  v26 = v1[56];
  v7 = v1[10];
  UUID.init()();
  v8 = *(v3 + 16);
  v8(v2, v5, v4);
  v25 = v7[9];
  v1[57] = v25;
  v24 = v7[10];
  v1[58] = v24;
  type metadata accessor for WifiAwareListener(0);
  v9 = swift_allocObject();
  v1[59] = v9;
  *(v9 + 16) = v7;
  v10 = OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor;
  v8(v9 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor, v2, v4);
  (*(v3 + 56))(v9 + v10, 0, 1, v4);
  v11 = *(v3 + 8);

  v11(v2, v4);
  v12 = (v9 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier);
  *v12 = v25;
  v12[1] = v24;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v6 + 48);
  *(v6 + 48) = 0x8000000000000000;
  sub_1003E263C(v9, v26, isUniquelyReferenced_nonNull_native, sub_10046D8D8, sub_100313B84, sub_1002E01C4);
  *(v6 + 48) = v31;
  swift_endAccess();
  v1[60] = v7[6];
  v1[61] = v7[7];
  v14 = objc_allocWithZone(WiFiAwarePublishConfiguration);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithServiceName:v15];
  v1[62] = v16;

  [v16 setAuthenticationType:0];
  WAListenerAgentInterface.DescriptorToAgent.devices.getter();
  v17 = *(v6 + 24);
  v1[63] = v17;
  swift_unownedRetainStrong();
  v18 = *(*v17 + 112);
  v19 = *(v27 + 16);
  v1[64] = v19;
  v1[65] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v29, v17 + v18, v28);

  v20 = (*(v30 + 136))(v28);
  v1[66] = v20;
  v21 = *(v27 + 8);
  v1[67] = v21;
  v1[68] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v29, v28);
  v22 = swift_task_alloc();
  v1[69] = v22;
  *v22 = v1;
  v22[1] = sub_1003C13CC;

  return sub_1002BCA00(v20, v25, v24);
}

uint64_t sub_1003C13CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v5 = v3[46];
  v6 = v3[44];
  v7 = v3[43];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);

    v11 = sub_1003C2BF4;
  }

  else
  {
    v4[72] = v9;
    v4[73] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);

    v11 = sub_1003C1588;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1003C1588(uint64_t a1)
{
  v211 = v1;
  v2 = *(v1 + 560);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 352);
    v3 = *(v1 + 360);
    v5 = *(v1 + 344);
    WAListenerAgentInterface.DescriptorToAgent.devices.getter();
    v6 = (*(v4 + 88))(v3, v5);
    v7 = *(v1 + 344);
    if (v6 == enum case for WADevicesAgentInterface.Devices.selected(_:))
    {
      v8 = *(v1 + 568);
      v9 = *(v1 + 360);
      (*(*(v1 + 352) + 96))(v9, v7);
      v10 = sub_1003AC920(*v9);

      v11 = sub_100475D3C(v10);

      v13 = sub_100475D3C(v12);

      v14 = sub_1003E111C(v11, v13);

      if ((v14 & 1) == 0)
      {

        Logger.init(subsystem:category:)();

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v18 = *(v1 + 456);
          v17 = *(v1 + 464);
          v19 = *(v1 + 296);
          v20 = *(v1 + 256);
          v21 = *(v1 + 264);
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v210[0] = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_100002320(v18, v17, v210);
          _os_log_impl(&_mh_execute_header, v15, v16, "#### ListenerClient:%s Invalid Paired Devices", v22, 0xCu);
          sub_100002A00(v23);

          (*(v21 + 8))(v19, v20);
        }

        else
        {
          v167 = *(v1 + 296);
          v168 = *(v1 + 256);
          v169 = *(v1 + 264);

          (*(v169 + 8))(v167, v168);
        }

        v170 = enum case for WAError.ErrorCode.deviceInvalid(_:);
        if (*(*(v1 + 96) + 16))
        {
          v171 = *(v1 + 240);
          v172 = *(v1 + 248);
          v173 = *(v1 + 232);
          v174 = *(v171 + 104);
          v175 = enum case for WAError.ErrorCode.deviceInvalid(_:);
          v174(v172);

          v176 = WAError.ErrorCode.rawValue.getter();
          result = (*(v171 + 8))(v172, v173);
          if (v176 < 0xFFFFFFFF80000000)
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          if (v176 > 0x7FFFFFFF)
          {
LABEL_72:
            __break(1u);
            return result;
          }

          sub_1003F97C8(*(v1 + 80), v176);

          v177 = *(v1 + 240);
          v170 = v175;
        }

        else
        {
          v177 = *(v1 + 240);
          v174 = *(v177 + 104);
        }

        v178 = *(v1 + 496);
        v208 = *(v1 + 448);
        v180 = *(v1 + 400);
        v179 = *(v1 + 408);
        v181 = *(v1 + 248);
        v182 = *(v1 + 232);
        (v174)(v181, v170, v182);
        v89 = WAError.ErrorCode.rawValue.getter();

        (*(v177 + 8))(v181, v182);
        result = (*(v179 + 8))(v208, v180);
        if (v89 >= 0xFFFFFFFF80000000)
        {
          if (v89 <= 0x7FFFFFFF)
          {
            goto LABEL_59;
          }

          goto LABEL_70;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {
      (*(v1 + 576))(*(v1 + 360), v7);
      v8 = *(v1 + 568);
    }

    v204 = v8;
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100476378(_swiftEmptyArrayStorage);
    }

    v33 = *(v1 + 496);
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100388B0C();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v33 setAllowedDeviceIDs:isa];

    v35 = *(v2 + 16);
    if (v35)
    {
      v36 = *(v1 + 560) + 32;
      do
      {
        while (1)
        {
          v36 += 8;
          v37 = [*(v1 + 496) allowedDeviceIDs];
          if (v37)
          {
            break;
          }

          [*(v1 + 496) setAllowedDeviceIDs:0];
          if (!--v35)
          {
            goto LABEL_18;
          }
        }

        v38 = v37;
        v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v210[0] = v39;
        v40.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        sub_10046F988(&v209, v40.super.super.isa);

        if (v210[0])
        {
          v41.super.isa = Set._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v41.super.isa = 0;
        }

        [*(v1 + 496) setAllowedDeviceIDs:v41.super.isa];

        --v35;
      }

      while (v35);
    }

LABEL_18:
    v42 = *(v1 + 496);
    v43 = *(v1 + 216);
    v44 = *(v1 + 224);

    sub_1003ADDD0(v44);
    v45 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
    [v42 setServiceSpecificInfo:v45];
    sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1004B1170;
    *(v46 + 32) = Int._bridgeToObjectiveC()();
    v47 = objc_allocWithZone(WiFiAwarePairingConfiguration);
    v48 = Array._bridgeToObjectiveC()().super.isa;

    v49 = [v47 initWithSupportedPairSetupMethods:v48 pairingCachingEnabled:1];

    v50 = [objc_allocWithZone(WiFiAwarePublishDatapathSecurityConfiguration) initWithPairingConfiguration:v49 usingPairingDelegate:0];
    sub_100012400(v44, v43, &unk_1005989A8, &qword_1004B28B0);
    v51 = type metadata accessor for WAParametersAgentInterface.Parameters();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v43, 1, v51);
    v54 = *(v1 + 216);
    v206 = v45;
    v203 = v49;
    if (v53 == 1)
    {
      sub_100016290(v54, &unk_1005989A8, &qword_1004B28B0);
      v55 = 1;
    }

    else
    {
      WAParametersAgentInterface.Parameters.performanceMode.getter();
      (*(v52 + 8))(v54, v51);
      v55 = 0;
    }

    v57 = *(v1 + 200);
    v56 = *(v1 + 208);
    v59 = *(v1 + 176);
    v58 = *(v1 + 184);
    v60 = *(v1 + 152);
    v61 = *(v1 + 160);
    v62 = *(v61 + 56);
    v62(v56, v55, 1, v60);
    (*(v61 + 104))(v57, enum case for WAPerformanceMode.realtime(_:), v60);
    v62(v57, 0, 1, v60);
    v63 = *(v59 + 48);
    sub_100012400(v56, v58, &unk_1005994C0, &unk_1004B2E40);
    sub_100012400(v57, &v63[v58], &unk_1005994C0, &unk_1004B2E40);
    v64 = *(v61 + 48);
    v207 = v50;
    if (v64(v58, 1, v60) == 1)
    {
      v65 = *(v1 + 208);
      v66 = *(v1 + 152);
      sub_100016290(*(v1 + 200), &unk_1005994C0, &unk_1004B2E40);
      sub_100016290(v65, &unk_1005994C0, &unk_1004B2E40);
      if (v64(&v63[v58], 1, v66) == 1)
      {
        sub_100016290(*(v1 + 184), &unk_1005994C0, &unk_1004B2E40);
        v67 = 1;
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    v68 = *(v1 + 152);
    sub_100012400(*(v1 + 184), *(v1 + 192), &unk_1005994C0, &unk_1004B2E40);
    v69 = v64(&v63[v58], 1, v68);
    v71 = *(v1 + 200);
    v70 = *(v1 + 208);
    v72 = *(v1 + 192);
    if (v69 == 1)
    {
      v73 = *(v1 + 152);
      v74 = *(v1 + 160);
      sub_100016290(*(v1 + 200), &unk_1005994C0, &unk_1004B2E40);
      sub_100016290(v70, &unk_1005994C0, &unk_1004B2E40);
      (*(v74 + 8))(v72, v73);
LABEL_26:
      sub_100016290(*(v1 + 184), &qword_1005994B8, &qword_1004B2E38);
      v67 = 0;
      goto LABEL_37;
    }
  }

  else
  {

    Logger.init(subsystem:category:)();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v1 + 456);
      v26 = *(v1 + 464);
      v28 = *(v1 + 304);
      v29 = *(v1 + 256);
      v30 = *(v1 + 264);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v210[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100002320(v27, v26, v210);
      _os_log_impl(&_mh_execute_header, v24, v25, "#### ListenerClient:%s has no Paired Devices", v31, 0xCu);
      sub_100002A00(v32);

      (*(v30 + 8))(v28, v29);
    }

    else
    {
      v75 = *(v1 + 304);
      v76 = *(v1 + 256);
      v77 = *(v1 + 264);

      (*(v77 + 8))(v75, v76);
    }

    v78 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    if (*(*(v1 + 96) + 16))
    {
      v79 = *(v1 + 240);
      v80 = *(v1 + 248);
      v81 = *(v1 + 232);
      v82 = *(v79 + 104);
      v83 = enum case for WAError.ErrorCode.noPairedDevices(_:);
      v82(v80);

      v84 = WAError.ErrorCode.rawValue.getter();
      result = (*(v79 + 8))(v80, v81);
      if (v84 < 0xFFFFFFFF80000000)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v84 > 0x7FFFFFFF)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_1003F97C8(*(v1 + 80), v84);

      v86 = *(v1 + 240);
      v78 = v83;
    }

    else
    {
      v86 = *(v1 + 240);
      v82 = *(v86 + 104);
    }

    v63 = *(v1 + 496);
    v207 = *(v1 + 448);
    v71 = *(v1 + 400);
    v87 = *(v1 + 408);
    v58 = *(v1 + 248);
    v88 = *(v1 + 232);
    (v82)(v58, v78, v88);
    v89 = WAError.ErrorCode.rawValue.getter();

    v90 = *(v86 + 8);
    v72 = v86 + 8;
    v90(v58, v88);
    v91 = *(v87 + 8);
    v70 = v87 + 8;
    result = v91(v207, v71);
    if (v89 < 0xFFFFFFFF80000000)
    {
      goto LABEL_65;
    }

    if (v89 <= 0x7FFFFFFF)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  v201 = *(v1 + 184);
  v93 = *(v1 + 160);
  v92 = *(v1 + 168);
  v94 = *(v1 + 152);
  (*(v93 + 32))(v92, &v63[v58], v94);
  sub_10001ADA4(&unk_1005994D0, &type metadata accessor for WAPerformanceMode, &protocol conformance descriptor for WAPerformanceMode);
  v95 = dispatch thunk of static Equatable.== infix(_:_:)();
  v96 = *(v93 + 8);
  v96(v92, v94);
  sub_100016290(v71, &unk_1005994C0, &unk_1004B2E40);
  sub_100016290(v70, &unk_1005994C0, &unk_1004B2E40);
  v96(v72, v94);
  v50 = v207;
  sub_100016290(v201, &unk_1005994C0, &unk_1004B2E40);
  v67 = v95 & 1;
LABEL_37:
  v97 = *(v1 + 496);
  v98 = *(v1 + 80);
  v99 = [objc_allocWithZone(WiFiAwarePublishDatapathConfiguration) initWithServiceType:v67 securityConfiguration:v50];
  v100 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:*(v98 + 90) == 17 servicePort:*(v98 + 88)];
  [v99 setServiceSpecificInfo:v100];
  [v99 setConnectionMode:1];
  [v97 setDatapathConfiguration:v99];
  WAListenerAgentInterface.DescriptorToAgent.requestedDuration.getter();
  result = Duration.components.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v101 = result;
  v200 = v100;
  v202 = v99;
  v189 = *(v1 + 536);
  v102 = *(v1 + 504);
  v103 = *(v1 + 512);
  v104 = *(v1 + 328);
  v105 = *(v1 + 312);
  v192 = *(v1 + 496);
  v106 = *(v1 + 136);
  v107 = *(v1 + 144);
  v108 = *(v1 + 120);
  v109 = *(v1 + 128);
  swift_unownedRetainStrong();
  v103(v104, v102 + *(*v102 + 112), v105);

  (*(v108 + 120))(v105, v108);
  v189(v104, v105);
  v110 = Preferences.nanServiceTimeout.getter(v109);
  (*(v106 + 8))(v107, v109);
  if (v101 - 1 >= v110)
  {
    v111 = v110;
  }

  else
  {
    v111 = v101;
  }

  [v192 setTimeoutAfterSeconds:v111];
  Logger.init(subsystem:category:)();

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v196 = *(v1 + 288);
    v114 = *(v1 + 256);
    v115 = *(v1 + 264);
    v116 = swift_slowAlloc();
    v210[0] = swift_slowAlloc();
    *v116 = 136315394;
    v117 = sub_1003F3D58();
    v119 = sub_100002320(v117, v118, v210);

    *(v116 + 4) = v119;
    *(v116 + 12) = 2080;
    v120 = sub_1003AE604();
    v122 = sub_100002320(v120, v121, v210);

    *(v116 + 14) = v122;
    _os_log_impl(&_mh_execute_header, v112, v113, "#### Starting a Listener session:%s with custom service:%s", v116, 0x16u);
    swift_arrayDestroy();

    v185 = *(v115 + 8);
    v185(v196, v114);
  }

  else
  {
    v124 = *(v1 + 288);
    v125 = *(v1 + 256);
    v126 = *(v1 + 264);

    v185 = *(v126 + 8);
    v185(v124, v125);
  }

  v191 = *(v1 + 464);
  v197 = *(v1 + 456);
  v128 = *(v1 + 440);
  v127 = *(v1 + 448);
  v193 = v128;
  v194 = *(v1 + 496);
  v129 = *(v1 + 408);
  v130 = *(v1 + 400);
  v131 = *(v1 + 104);
  v187 = *(v1 + 432);
  v188 = *(v1 + 112);
  v186 = *(v1 + 96);
  v132 = *(v1 + 80);
  type metadata accessor for NANAgentHandler.PublisherClient(0, v188, v131, v123);
  v133 = *(v129 + 16);
  v133(v128, v127, v130);
  v190 = *(v132 + 64);
  v134 = swift_allocObject();
  swift_weakInit();
  v184 = v133;
  v133(v187, v127, v130);
  v135 = (*(v129 + 80) + 48) & ~*(v129 + 80);
  v136 = swift_allocObject();
  *(v136 + 2) = v188;
  *(v136 + 3) = v131;
  *(v136 + 4) = v134;
  *(v136 + 5) = v132;
  (*(v129 + 32))(&v136[v135], v187, v130);

  v137 = v194;

  LOBYTE(v210[0]) = 0;
  v138 = v204;
  result = sub_1003C52B0(v186, v193, v137, v197, v191, v190, sub_1003EA5E0, v136);
  v205 = *(v1 + 496);
  if (!v138)
  {
    goto LABEL_48;
  }

  v139 = *(v1 + 448);
  v140 = *(v1 + 400);
  v141 = *(v1 + 408);
  v143 = *(v1 + 240);
  v142 = *(v1 + 248);
  v144 = *(v1 + 224);
  v145 = *(v1 + 232);

  (*(v143 + 104))(v142, enum case for WAError.ErrorCode.error(_:), v145);
  v89 = WAError.ErrorCode.rawValue.getter();

  (*(v143 + 8))(v142, v145);
  sub_100016290(v144, &unk_1005989A8, &qword_1004B28B0);
  result = (*(v141 + 8))(v139, v140);
  if (v89 < 0xFFFFFFFF80000000)
  {
    goto LABEL_66;
  }

  if (v89 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_48:
    v146 = *(v1 + 480);
    v147 = *(v1 + 488);
    v148 = *(v1 + 456);
    v149 = *(v1 + 464);
    v150 = *(v1 + 448);
    v151 = *(v1 + 424);
    v152 = *(v1 + 400);
    v198 = *(v1 + 112);
    v195 = *(v1 + 104);
    v153 = result;

    sub_1003AE988(v148, v149, v146, v147, 1);
    v184(v151, v150, v152);
    *(v1 + 64) = v153;
    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client(255, v198, v195, v154);
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    type metadata accessor for Dictionary();
    v199 = v153;
    Dictionary.subscript.setter();
    swift_endAccess();
    Logger.init(subsystem:category:)();
    v155 = v205;
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = *(v1 + 496);
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v159 = 138412290;
      *(v159 + 4) = v158;
      *v160 = v158;
      v161 = v158;
      _os_log_impl(&_mh_execute_header, v156, v157, "#### Started NAN Publish session:%@", v159, 0xCu);
      sub_100016290(v160, &qword_10058B780, &qword_100480AC0);
    }

    v162 = *(v1 + 448);
    v163 = *(v1 + 400);
    v89 = *(v1 + 408);
    v164 = *(v1 + 280);
    v165 = *(v1 + 256);
    v166 = *(v1 + 224);

    v185(v164, v165);
    sub_100016290(v166, &unk_1005989A8, &qword_1004B28B0);
    (*(v89 + 8))(v162, v163);
    LODWORD(v89) = 0;
  }

LABEL_59:
  **(v1 + 72) = v89;

  v183 = *(v1 + 8);

  return v183();
}

uint64_t sub_1003C2BF4()
{
  v31 = v0;
  Logger.init(subsystem:category:)();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 456);
    v3 = *(v0 + 464);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100002320(v4, v3, &v30);
    _os_log_impl(&_mh_execute_header, v1, v2, "#### ListenerClient:%s failed to get Paired Devices", v8, 0xCu);
    sub_100002A00(v9);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 256);

    (*(v11 + 8))(v10, v12);
  }

  v13 = enum case for WAError.ErrorCode.noPairedDevices(_:);
  if (*(*(v0 + 96) + 16))
  {
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = *(v15 + 104);
    v18 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    v17(v14);

    v19 = WAError.ErrorCode.rawValue.getter();
    result = (*(v15 + 8))(v14, v16);
    if (v19 < 0xFFFFFFFF80000000)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v19 > 0x7FFFFFFF)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    sub_1003F97C8(*(v0 + 80), v19);

    v21 = *(v0 + 240);
    v13 = v18;
  }

  else
  {
    v21 = *(v0 + 240);
    v17 = *(v21 + 104);
  }

  v22 = *(v0 + 496);
  v29 = *(v0 + 448);
  v23 = *(v0 + 408);
  v28 = *(v0 + 400);
  v24 = *(v0 + 248);
  v25 = *(v0 + 232);
  (v17)(v24, v13, v25);
  v26 = WAError.ErrorCode.rawValue.getter();

  (*(v21 + 8))(v24, v25);
  result = (*(v23 + 8))(v29, v28);
  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  **(v0 + 72) = v26;

  v27 = *(v0 + 8);

  return v27();
}

void sub_1003C302C(void (**a1)(uint64_t, uint64_t), uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v228 = a7;
  v223 = a6;
  v229 = a5;
  v230 = a4;
  v242 = a2;
  v234 = a1;
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v218 = &v195 - v7;
  v244 = type metadata accessor for ConnectedSession(0);
  v236 = *(v244 - 8);
  __chkstk_darwin();
  v226 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v225 = &v195 - v9;
  __chkstk_darwin();
  v243 = &v195 - v10;
  __chkstk_darwin();
  v232 = &v195 - v11;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v245 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v239 = &v195 - v13;
  sub_10005DC58(&qword_1005989B8, &qword_1004B28B8);
  __chkstk_darwin();
  v209 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v212 = &v195 - v15;
  v233 = type metadata accessor for WAError.ErrorCode();
  v16 = *(v233 - 8);
  __chkstk_darwin();
  v208 = (&v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v220 = &v195 - v18;
  __chkstk_darwin();
  v231 = &v195 - v19;
  __chkstk_darwin();
  v227 = &v195 - v20;
  v222 = type metadata accessor for UUID();
  v237 = *(v222 - 8);
  __chkstk_darwin();
  v240 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v215 = &v195 - v22;
  __chkstk_darwin();
  v216 = &v195 - v23;
  __chkstk_darwin();
  v235 = &v195 - v24;
  v221 = type metadata accessor for Logger();
  v241 = *(v221 - 8);
  __chkstk_darwin();
  v207 = &v195 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v195 - v26;
  __chkstk_darwin();
  v219 = &v195 - v28;
  __chkstk_darwin();
  v206 = (&v195 - v29);
  __chkstk_darwin();
  v31 = &v195 - v30;
  __chkstk_darwin();
  v33 = &v195 - v32;
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v35 = &v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v211 = &v195 - v36;
  __chkstk_darwin();
  v38 = &v195 - v37;
  v39 = type metadata accessor for ListenInBoundConnection(0);
  v217 = *(v39 - 8);
  __chkstk_darwin();
  v210 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v238 = &v195 - v41;
  __chkstk_darwin();
  v43 = &v195 - v42;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v45 = &v195 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  sub_1003E8CDC(v242, v45, type metadata accessor for sessionStatus);
  if ((*(v16 + 48))(v45, 1, v233) != 1)
  {
    v50 = v227;
    v51 = v233;
    (*(v16 + 32))(v227, v45, v233);
    v52 = *(v16 + 16);
    v53 = v231;
    v214 = v16 + 16;
    v213 = v52;
    v52(v231, v50, v51);
    v54 = (*(v16 + 88))(v53, v51);
    v55 = v221;
    if (v54 == enum case for WAError.ErrorCode.publisherTimeout(_:))
    {
      Logger.init(subsystem:category:)();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = Strong;
      if (v58)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "#### Publisher Timeout", v60, 2u);
      }

      (*(v241 + 8))(v27, v55);
      v61 = v230;
      sub_1003AF9F0(*(v230 + 72), *(v230 + 80), *(v230 + 48), *(v230 + 56), 1);
      if (!*(v59 + 16))
      {
        goto LABEL_14;
      }

      v62 = WAError.ErrorCode.rawValue.getter();
      if (v62 >= 0xFFFFFFFF80000000)
      {
        if (v62 <= 0x7FFFFFFF)
        {
          sub_1003F97C8(v61, v62);

LABEL_14:
          swift_beginAccess();
          sub_1003AD75C(v229, sub_10047710C, sub_10046D8D8);
          swift_endAccess();

          swift_beginAccess();
          type metadata accessor for NANAgentHandler.Client(255, v223, v228, v63);
          sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          type metadata accessor for Dictionary();
          Dictionary.removeValue(forKey:)();
          swift_endAccess();

          (*(v16 + 8))(v50, v233);
          return;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v72 = Strong;
    if (v54 == enum case for WAError.ErrorCode.connectionFailed(_:))
    {
      Logger.init(subsystem:category:)();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "#### Connection Failed", v75, 2u);
      }

      (*(v241 + 8))(v31, v55);
    }

    else
    {
      if (v54 != enum case for WAError.ErrorCode.connectionIdleTimeout(_:) && v54 != enum case for WAError.ErrorCode.connectionTerminated(_:))
      {
        v76 = v207;
        Logger.init(subsystem:category:)();
        v77 = v208;
        v213(v208, v227, v233);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 134217984;
          v81 = WAError.ErrorCode.rawValue.getter();
          v82 = *(v16 + 8);
          v82(v77, v233);
          *(v80 + 4) = v81;
          _os_log_impl(&_mh_execute_header, v78, v79, "#### Publisher error %ld", v80, 0xCu);
        }

        else
        {
          v82 = *(v16 + 8);
          v82(v77, v233);
        }

        v190 = v241;

        (*(v190 + 8))(v76, v221);
        v191 = v230;
        sub_1003AF9F0(*(v230 + 72), *(v230 + 80), *(v230 + 48), *(v230 + 56), 1);
        if (*(v72 + 16))
        {

          v192 = WAError.ErrorCode.rawValue.getter();
          if (v192 < 0xFFFFFFFF80000000)
          {
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (v192 > 0x7FFFFFFF)
          {
LABEL_101:
            __break(1u);
            return;
          }

          sub_1003F97C8(v191, v192);
        }

        swift_beginAccess();
        sub_1003AD75C(v229, sub_10047710C, sub_10046D8D8);
        swift_endAccess();

        swift_beginAccess();
        type metadata accessor for NANAgentHandler.Client(255, v223, v228, v193);
        sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        type metadata accessor for Dictionary();
        Dictionary.removeValue(forKey:)();
        swift_endAccess();

        v194 = v233;
        v82(v227, v233);
        v82(v53, v194);
        return;
      }

      sub_100012400(v234, v35, &qword_100597588, &qword_1004B1870);
      if ((*(v217 + 48))(v35, 1, v39) != 1)
      {
        sub_100046A08(v35, v238, type metadata accessor for ListenInBoundConnection);
        swift_beginAccess();
        v87 = *(v72 + 72);
        v88 = *(v87 + 64);
        v196 = v87 + 64;
        v89 = 1 << *(v87 + 32);
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        else
        {
          v90 = -1;
        }

        v91 = v90 & v88;
        v197 = v87;

        swift_beginAccess();
        v92 = 0;
        v93 = (v89 + 63) >> 6;
        v230 = v237 + 16;
        v242 = (v237 + 32);
        v234 = (v237 + 8);
        v207 = &unk_1004B4EC0;
        v208 = (v16 + 8);
        v206 = (v241 + 8);
        v205 = (v236 + 56);
        *&v94 = 136315906;
        v201 = v94;
        v95 = v222;
        v96 = v239;
        v97 = v209;
        v98 = v212;
        v198 = v93;
        while (v91)
        {
          v101 = v97;
          v102 = v92;
LABEL_46:
          v200 = (v91 - 1) & v91;
          v105 = __clz(__rbit64(v91)) | (v102 << 6);
          v106 = v197;
          v107 = v237;
          v108 = v235;
          (*(v237 + 16))(v235, *(v197 + 48) + *(v237 + 72) * v105, v95);
          v109 = v210;
          sub_1003E8CDC(*(v106 + 56) + *(v217 + 72) * v105, v210, type metadata accessor for ListenInBoundConnection);
          v110 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
          v111 = *(v110 + 48);
          v112 = v108;
          v97 = v101;
          (*(v107 + 32))(v101, v112, v95);
          sub_100046A08(v109, v101 + v111, type metadata accessor for ListenInBoundConnection);
          (*(*(v110 - 8) + 56))(v101, 0, 1, v110);
          v104 = v102;
          v98 = v212;
LABEL_47:
          sub_10001CEA8(v97, v98, &qword_1005989B8, &qword_1004B28B8);
          v113 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
          if ((*(*(v113 - 8) + 48))(v98, 1, v113) == 1)
          {
            goto LABEL_94;
          }

          v114 = *(v113 + 48);
          v241 = *v242;
          (v241)(v215, v98, v95);
          v115 = *(v98 + v114);
          sub_1003E8ED4(v98 + v114, type metadata accessor for ListenInBoundConnection);
          v116 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
          v118 = v117;

          if (WiFiMACAddress.ipv6LinkLocalAddressString.getter() == v116 && v119 == v118)
          {

            v122 = v245;
LABEL_55:
            v223 = v116;
            v228 = v118;
            v199 = v104;
            v124 = *(Strong + 80);
            v127 = *(v124 + 64);
            v126 = v124 + 64;
            v125 = v127;
            v128 = 1 << *(*(Strong + 80) + 32);
            if (v128 < 64)
            {
              v129 = ~(-1 << v128);
            }

            else
            {
              v129 = -1;
            }

            v130 = v129 & v125;
            v131 = (v128 + 63) >> 6;
            v231 = *(Strong + 80);

            v132 = 0;
            v133 = v240;
            v95 = v222;
            v229 = v126;
            while (v130)
            {
              v137 = v132;
LABEL_72:
              v140 = __clz(__rbit64(v130));
              v130 &= v130 - 1;
              v141 = v140 | (v137 << 6);
              v142 = v231;
              v143 = v235;
              (*(v237 + 16))(v235, *(v231 + 6) + *(v237 + 72) * v141, v95);
              v144 = *(v142 + 7) + *(v236 + 72) * v141;
              v145 = v232;
              sub_1003E8CDC(v144, v232, type metadata accessor for ConnectedSession);
              v146 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
              v147 = *(v146 + 48);
              v148 = v245;
              (v241)(v245, v143, v95);
              v149 = &v148[v147];
              v122 = v148;
              sub_100046A08(v145, v149, type metadata accessor for ConnectedSession);
              (*(*(v146 - 8) + 56))(v148, 0, 1, v146);
              v96 = v239;
              v133 = v240;
              v126 = v229;
LABEL_73:
              sub_10001CEA8(v122, v96, &unk_1005989C0, &unk_1004B28C0);
              v150 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
              if ((*(*(v150 - 8) + 48))(v96, 1, v150) == 1)
              {

                swift_beginAccess();
                v99 = v211;
                v100 = v215;
                sub_1003AD998(v215, type metadata accessor for ListenInBoundConnection, type metadata accessor for ListenInBoundConnection, sub_100469704, sub_10046D130, v211);
                sub_100016290(v99, &qword_100597588, &qword_1004B1870);
                swift_endAccess();
                (*v234)(v100, v95);
                v92 = v199;
                v97 = v209;
                v98 = v212;
                goto LABEL_35;
              }

              v151 = *(v150 + 48);
              (v241)(v133, v96, v95);
              v152 = v96 + v151;
              v136 = v243;
              sub_100046A08(v152, v243, type metadata accessor for ConnectedSession);
              if (*(v136 + *(v244 + 20)) == *(v238 + 8))
              {
                v153 = (v136 + *(v244 + 44));
                v155 = *v153;
                v154 = v153[1];
                v248[0] = v155;
                v248[1] = v154;
                v246 = v223;
                v247 = v228;
                sub_10005E2E4();
                if (StringProtocol.contains<A>(_:)())
                {
                  v156 = v219;
                  Logger.init(subsystem:category:)();
                  sub_1003E8CDC(v136, v225, type metadata accessor for ConnectedSession);
                  sub_1003E8CDC(v136, v226, type metadata accessor for ConnectedSession);
                  v157 = v220;
                  v213(v220, v227, v233);
                  v158 = v228;

                  v159 = Logger.logObject.getter();
                  v160 = static os_log_type_t.default.getter();

                  LODWORD(v216) = v160;
                  if (os_log_type_enabled(v159, v160))
                  {
                    v161 = swift_slowAlloc();
                    v204 = swift_slowAlloc();
                    v248[0] = v204;
                    *v161 = v201;
                    *(v161 + 4) = sub_100002320(v223, v158, v248);
                    *(v161 + 12) = 2080;
                    v162 = v244;
                    v163 = (v225 + *(v244 + 44));
                    v203 = v159;
                    v164 = v163[1];
                    v202 = *v163;
                    v165 = v225;
                    v166 = v226;

                    sub_1003E8ED4(v165, type metadata accessor for ConnectedSession);
                    v167 = sub_100002320(v202, v164, v248);

                    *(v161 + 14) = v167;
                    *(v161 + 22) = 2080;
                    v168 = (v166 + *(v162 + 44));
                    v169 = *v168;
                    v170 = v168[1];

                    sub_1003E8ED4(v166, type metadata accessor for ConnectedSession);
                    v171 = sub_100002320(v169, v170, v248);

                    *(v161 + 24) = v171;
                    *(v161 + 32) = 2048;
                    v172 = v220;
                    v173 = WAError.ErrorCode.rawValue.getter();
                    (*v208)(v172, v233);
                    *(v161 + 34) = v173;
                    v174 = v203;
                    _os_log_impl(&_mh_execute_header, v203, v216, "#### Terminated InBoundConnection %s datapath:id: %s connectedSession RemoteAddress %s error: %ld", v161, 0x2Au);
                    swift_arrayDestroy();

                    (*v206)(v219, v221);
                  }

                  else
                  {
                    (*v208)(v157, v233);

                    sub_1003E8ED4(v226, type metadata accessor for ConnectedSession);
                    sub_1003E8ED4(v225, type metadata accessor for ConnectedSession);
                    (*v206)(v156, v221);
                    v162 = v244;
                  }

                  v176 = *(v243 + *(v162 + 40));
                  v177 = *(v176 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);

                  v178 = WAError.ErrorCode.rawValue.getter();
                  v179 = Strong;
                  if (v178 < -32768)
                  {
                    goto LABEL_96;
                  }

                  if (v178 >= 0x8000)
                  {
                    goto LABEL_97;
                  }

                  v177(0, 0, 0, 0, 0, 0, 0, 0, 0, v178);

                  v180 = *(v176 + 72);
                  v181 = *(v176 + 80);

                  v182 = WASubscribableService.name.getter();
                  sub_1003AF9F0(v180, v181, v182, v183, 2);

                  swift_beginAccess();
                  v133 = v240;
                  v184 = sub_10002A440(v240);
                  if (v185)
                  {
                    v186 = v184;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v188 = *(v179 + 80);
                    v246 = v188;
                    *(v179 + 80) = 0x8000000000000000;
                    v95 = v222;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      sub_10046D5AC();
                      v188 = v246;
                    }

                    (*(v237 + 8))(*(v188 + 48) + *(v237 + 72) * v186, v95);
                    v135 = v218;
                    sub_100046A08(*(v188 + 56) + *(v236 + 72) * v186, v218, type metadata accessor for ConnectedSession);
                    sub_100469890(v186, v188);
                    *(v179 + 80) = v188;

                    v134 = 0;
                  }

                  else
                  {
                    v134 = 1;
                    v95 = v222;
                    v135 = v218;
                  }

                  (*v205)(v135, v134, 1, v244);
                  sub_100016290(v135, &qword_100597578, &qword_1004B1860);
                  swift_endAccess();
                  v136 = v243;
                  v96 = v239;
                }
              }

              (*v234)(v133, v95);
              sub_1003E8ED4(v136, type metadata accessor for ConnectedSession);
              v122 = v245;
            }

            if (v131 <= v132 + 1)
            {
              v138 = v132 + 1;
            }

            else
            {
              v138 = v131;
            }

            v139 = v138 - 1;
            while (1)
            {
              v137 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                break;
              }

              if (v137 >= v131)
              {
                v132 = v139;
                v175 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
                (*(*(v175 - 8) + 56))(v122, 1, 1, v175);
                v130 = 0;
                goto LABEL_73;
              }

              v130 = *(v126 + 8 * v137);
              ++v132;
              if (v130)
              {
                v132 = v137;
                goto LABEL_72;
              }
            }

            __break(1u);
LABEL_94:
            (*v208)(v227, v233);

            sub_1003E8ED4(v238, type metadata accessor for ListenInBoundConnection);
            return;
          }

          v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v122 = v245;
          if (v121)
          {
            goto LABEL_55;
          }

          v123 = v222;
          (*v234)(v215, v222);
          v95 = v123;

          v92 = v104;
LABEL_35:
          v93 = v198;
          v91 = v200;
        }

        if (v93 <= v92 + 1)
        {
          v103 = v92 + 1;
        }

        else
        {
          v103 = v93;
        }

        v104 = v103 - 1;
        while (1)
        {
          v102 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            break;
          }

          if (v102 >= v93)
          {
            v189 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
            (*(*(v189 - 8) + 56))(v97, 1, 1, v189);
            v200 = 0;
            goto LABEL_47;
          }

          v91 = *(v196 + 8 * v102);
          ++v92;
          if (v91)
          {
            v101 = v97;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      sub_100016290(v35, &qword_100597588, &qword_1004B1870);
      v83 = v206;
      Logger.init(subsystem:category:)();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v84, v85, "#### Listener DataPath terminated error (nil)", v86, 2u);
      }

      (*(v241 + 8))(v83, v55);
    }

    (*(v16 + 8))(v227, v233);
    return;
  }

  sub_100012400(v234, v38, &qword_100597588, &qword_1004B1870);
  v46 = v217;
  if ((*(v217 + 48))(v38, 1, v39) == 1)
  {
    sub_100016290(v38, &qword_100597588, &qword_1004B1870);
    Logger.init(subsystem:category:)();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "#### Listener Received InBound Connection error (nil)", v49, 2u);
    }

    (*(v241 + 8))(v33, v221);
  }

  else
  {
    sub_100046A08(v38, v43, type metadata accessor for ListenInBoundConnection);
    v64 = v235;
    UUID.init()();
    v65 = v237;
    v66 = v216;
    v67 = v222;
    (*(v237 + 16))(v216, v64, v222);
    v68 = v211;
    sub_1003E8CDC(v43, v211, type metadata accessor for ListenInBoundConnection);
    (*(v46 + 56))(v68, 0, 1, v39);
    v69 = Strong;
    swift_beginAccess();
    sub_1003388F0(v68, v66);
    swift_endAccess();
    v70 = v43[8];
    swift_beginAccess();
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v249 = *(v69 + 88);
    *(v69 + 88) = 0x8000000000000000;
    sub_1003E282C(1, v70, v71);
    *(v69 + 88) = v249;
    swift_endAccess();

    (*(v65 + 8))(v64, v67);
    sub_1003E8ED4(v43, type metadata accessor for ListenInBoundConnection);
  }
}

void NANAgentHandler.stopListenerSession(_:)(uint64_t a1)
{
  v2 = v1;
  v58 = *v1;
  v4 = type metadata accessor for UUID();
  v66 = *(v4 - 8);
  __chkstk_darwin();
  v70 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v57 - v6;
  sub_10005DC58(&qword_100598998, &qword_1004B28A0);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v57 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  LODWORD(v71) = v16;
  v17 = os_log_type_enabled(v15, v16);
  v68 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v74[0] = v67;
    *v18 = 136315138;
    v69 = v11;
    v19 = sub_1003F3D58();
    v21 = sub_100002320(v19, v20, v74);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v71, "#### Stopped a listener session:%s", v18, 0xCu);
    sub_100002A00(v67);

    (*(v12 + 8))(v14, v69);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  swift_beginAccess();
  v59 = v2;
  v22 = v2[6];
  v23 = *(v22 + 64);
  v60 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v61 = v66 + 16;
  v71 = (v66 + 32);
  v67 = (v66 + 8);
  v65 = v22;

  v28 = 0;
  v69 = v4;
  v62 = v10;
  v63 = v8;
  if (v26)
  {
    while (1)
    {
      v29 = v28;
LABEL_15:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v65;
      v35 = v66;
      v36 = v64;
      (*(v66 + 16))(v64, *(v65 + 48) + *(v66 + 72) * v33, v4);
      v37 = *(*(v34 + 56) + 8 * v33);
      v38 = sub_10005DC58(&qword_1005989A0, &qword_1004B28A8);
      v39 = v4;
      v40 = *(v38 + 48);
      v41 = *(v35 + 32);
      v8 = v63;
      v41(v63, v36, v39);
      *&v8[v40] = v37;
      (*(*(v38 - 8) + 56))(v8, 0, 1, v38);

      v31 = v29;
      v10 = v62;
LABEL_16:
      sub_10001CEA8(v8, v10, &qword_100598998, &qword_1004B28A0);
      v42 = sub_10005DC58(&qword_1005989A0, &qword_1004B28A8);
      v43 = (*(*(v42 - 8) + 48))(v10, 1, v42);
      v44 = v70;
      if (v43 == 1)
      {

        return;
      }

      v45 = *&v10[*(v42 + 48)];
      v4 = v69;
      (*v71)(v70, v10, v69);
      v46 = *(v45 + 16);
      if (v46 == v68)
      {
        break;
      }

      (*v67)(v44, v4);

      v28 = v31;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

    v48 = *(v45 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier);
    v49 = *(v45 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier + 8);
    v50 = *(v46 + 48);
    v51 = *(v46 + 56);

    sub_1003AF9F0(v48, v49, v50, v51, 1);
    v52 = v70;

    swift_beginAccess();
    sub_1003AD75C(v52, sub_10047710C, sub_10046D8D8);
    swift_endAccess();

    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client(0, *(v58 + 80), *(v58 + 88), v53);
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    Dictionary.subscript.getter();

    v55 = v72;
    if (v72)
    {
      (*((swift_isaMask & *v72) + 0x98))(v54);
    }

    swift_beginAccess();
    v56 = v69;
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    (*v67)(v52, v56);
  }

  else
  {
LABEL_8:
    if (v27 <= v28 + 1)
    {
      v30 = v28 + 1;
    }

    else
    {
      v30 = v27;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
        v47 = sub_10005DC58(&qword_1005989A0, &qword_1004B28A8);
        (*(*(v47 - 8) + 56))(v8, 1, 1, v47);
        v26 = 0;
        goto LABEL_16;
      }

      v26 = *(v60 + 8 * v29);
      ++v28;
      if (v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void sub_1003C5BD0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = swift_isaMask;
  *(a1 + qword_100598E98) = 0;
  sub_1003E6710();
  swift_beginAccess();
  type metadata accessor for UUID();
  type metadata accessor for NANAgentHandler.Client(255, *((v4 & v3) + 0xA0), *((v4 & v3) + 0xA8), v5);
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

void sub_1003C5CF0()
{
  v1 = v0;
  sub_10005DC58(&qword_100597580, &qword_1004B1868);
  __chkstk_darwin();
  v3 = v59 - v2;
  v75 = type metadata accessor for ConnectedEndpoints(0);
  v72 = *(v75 - 8);
  __chkstk_darwin();
  v62 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v71 = *(v5 - 8);
  __chkstk_darwin();
  v74 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v59 - v7;
  sub_10005DC58(&qword_1005989D8, &qword_1004B28D8);
  __chkstk_darwin();
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = v59 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v59 - v15;
  swift_beginAccess();
  if (*(*(v0 + 64) + 16))
  {
    Logger.init(subsystem:category:)();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v68 = v3;
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *(*(v1 + 64) + 16);

      _os_log_impl(&_mh_execute_header, v17, v18, "#### Monitoring endpoints: %ld", v20, 0xCu);
    }

    else
    {
    }

    (*(v12 + 8))(v14, v11);
    v69 = v1;
    v24 = *(v1 + 64);
    v25 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v59[0] = (v26 + 63) >> 6;
    v59[1] = v71 + 16;
    v73 = (v71 + 32);
    v65 = (v71 + 8);
    v66 = (v72 + 56);
    v63 = v24;

    v29 = 0;
    v67 = v5;
    v60 = v9;
    v64 = v25;
    while (v28)
    {
      v35 = v29;
LABEL_23:
      v38 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v63;
      v41 = v71;
      (*(v71 + 16))(v61, *(v63 + 48) + *(v71 + 72) * v39, v5);
      v42 = v62;
      sub_1003E8CDC(*(v40 + 56) + *(v72 + 72) * v39, v62, type metadata accessor for ConnectedEndpoints);
      v43 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      v44 = *(v43 + 48);
      v9 = v60;
      (*(v41 + 32))();
      sub_100046A08(v42, &v9[v44], type metadata accessor for ConnectedEndpoints);
      (*(*(v43 - 8) + 56))(v9, 0, 1, v43);
LABEL_24:
      v45 = v70;
      sub_10001CEA8(v9, v70, &qword_1005989D8, &qword_1004B28D8);
      v46 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {

        *(v69 + 96) = 0;

        return;
      }

      v47 = v45 + *(v46 + 48);
      v48 = v74;
      v49 = v67;
      (*v73)(v74, v45, v67);
      v50 = *(v47 + *(v75 + 20));
      sub_1003E8ED4(v47, type metadata accessor for ConnectedEndpoints);
      v51 = v69;
      sub_1003E42AC(v50, v52);
      swift_beginAccess();
      v53 = sub_10002A440(v48);
      if (v54)
      {
        v55 = v53;
        v30 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v51 + 64);
        v76 = v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10046DDAC();
          v57 = v76;
        }

        v34 = v65;
        (*(v71 + 8))(*(v57 + 48) + *(v71 + 72) * v55, v49);
        v32 = v49;
        v33 = v68;
        sub_100046A08(*(v57 + 56) + *(v72 + 72) * v55, v68, type metadata accessor for ConnectedEndpoints);
        sub_100469D74(v55, v57);
        v31 = 0;
        *(v51 + 64) = v57;
      }

      else
      {
        v30 = v9;
        v31 = 1;
        v32 = v49;
        v33 = v68;
        v34 = v65;
      }

      (*v66)(v33, v31, 1, v75);
      sub_100016290(v33, &qword_100597580, &qword_1004B1868);
      swift_endAccess();
      (*v34)(v74, v32);
      v5 = v32;
      v9 = v30;
      v25 = v64;
    }

    if (v59[0] <= v29 + 1)
    {
      v36 = v29 + 1;
    }

    else
    {
      v36 = v59[0];
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v59[0])
      {
        v58 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
        (*(*(v58 - 8) + 56))(v9, 1, 1, v58);
        v28 = 0;
        v29 = v37;
        goto LABEL_24;
      }

      v28 = *(v25 + 8 * v35);
      ++v29;
      if (v28)
      {
        v29 = v35;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    *(v0 + 96) = 0;

    Logger.init(subsystem:category:)();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "#### All endpoints connected, timer stopped.", v23, 2u);
    }

    (*(v12 + 8))(v16, v11);
  }
}

double sub_1003C6608()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  __chkstk_darwin();
  v10 = &v15 - v9;
  v1[12] = 0;

  *v10 = 5;
  v11 = *(v4 + 104);
  v11(v10, enum case for DispatchTimeInterval.seconds(_:), v3);
  v16 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = *(v2 + 80);
  v13[3] = *(v2 + 88);
  v13[4] = v12;
  v11(v8, enum case for DispatchTimeInterval.never(_:), v3);
  *v6 = 100;
  v11(v6, enum case for DispatchTimeInterval.milliseconds(_:), v3);
  type metadata accessor for P2PTimer(0);
  swift_allocObject();
  v1[12] = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v10, v16, v8, v6, sub_1003E9EE0, v13);

  return result;
}

double sub_1003C6864(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4();
  }

  return result;
}

uint64_t sub_1003C68C4(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for UUID();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for NANAgentHandler.Client(0, v3, v4, v5);
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  Dictionary.subscript.getter();

  if (!v10)
  {
    return 0;
  }

  type metadata accessor for NANAgentHandler.DataSessionClient(0, v3, v4, v6);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    return 0;
  }

  v8 = *(v7 + qword_100598E70);

  return v8;
}

BOOL sub_1003C6A1C(uint64_t a1, void *a2)
{
  v116 = a2;
  v110 = a1;
  v3 = *v2;
  sub_10005DC58(&qword_1005989F0, &qword_1004B28F0);
  __chkstk_darwin();
  v100 = &v93 - v4;
  sub_10005DC58(&qword_1005989E8, &qword_1004B28E8);
  __chkstk_darwin();
  v99 = &v93 - v5;
  sub_10005DC58(&qword_100597580, &qword_1004B1868);
  __chkstk_darwin();
  v93 = &v93 - v6;
  sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  __chkstk_darwin();
  v115 = &v93 - v7;
  v111 = type metadata accessor for NWEndpoint();
  v102 = *(v111 - 8);
  __chkstk_darwin();
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v93 - v9;
  __chkstk_darwin();
  v101 = &v93 - v10;
  v109 = type metadata accessor for Logger();
  v127 = *(v109 - 8);
  __chkstk_darwin();
  v95 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v93 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 1);
  __chkstk_darwin();
  v98 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v93 - v16;
  v17 = *(v3 + 80);
  v125 = *(v3 + 88);
  v126 = v17;
  type metadata accessor for NANAgentHandler.Client(255, v17, v125, v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v131 = type metadata accessor for Optional();
  v20 = *(v131 - 1);
  __chkstk_darwin();
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v93 - v23;
  swift_beginAccess();
  v96 = v2;
  v25 = v2[7];
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  v30 = (v27 + 63) >> 6;
  v118 = v14 + 32;
  v119 = v14 + 16;
  v129 = (v20 + 32);
  v130 = TupleTypeMetadata2 - 8;
  v107 = &unk_1004B4EC0;
  v108 = (v127 + 1);
  v106 = (v102 + 48);
  v123 = v14;
  v124 = v25;
  v127 = (v14 + 8);

  v31 = 0;
  *&v32 = 136315138;
  v103 = v32;
  v120 = v22;
  v121 = TupleTypeMetadata2;
  v105 = v13;
  for (i = v24; ; (*v127)(i, v13))
  {
    if (!v29)
    {
      if (v30 <= (v31 + 1))
      {
        v34 = (v31 + 1);
      }

      else
      {
        v34 = v30;
      }

      v35 = (v34 - 1);
      while (1)
      {
        v33 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= v30)
        {
          v43 = *(TupleTypeMetadata2 - 8);
          (*(v43 + 56))(v22, 1, 1, TupleTypeMetadata2);
          v29 = 0;
          v31 = v35;
          goto LABEL_17;
        }

        v29 = *(v26 + 8 * v33);
        ++v31;
        if (v29)
        {
          v31 = v33;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v33 = v31;
LABEL_16:
    v36 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v37 = v36 | (v33 << 6);
    v39 = v123;
    v38 = v124;
    (*(v123 + 16))(v122, *(v124 + 48) + *(v123 + 72) * v37, v13);
    v40 = *(*(v38 + 56) + 8 * v37);
    v41 = *(v121 + 48);
    v42 = *(v39 + 32);
    TupleTypeMetadata2 = v121;
    v22 = v120;
    v42();
    *&v22[v41] = v40;
    v43 = *(TupleTypeMetadata2 - 8);
    (*(v43 + 56))(v22, 0, 1, TupleTypeMetadata2);
    v44 = v40;
LABEL_17:
    (*v129)(v24, v22, v131);
    v45 = (*(v43 + 48))(v24, 1, TupleTypeMetadata2);
    v47 = v24;
    LODWORD(v24) = v45;
    if (v45 == 1)
    {

      return v24 != 1;
    }

    v48 = *&v47[*(TupleTypeMetadata2 + 48)];
    type metadata accessor for NANAgentHandler.DataSessionClient(0, v126, v125, v46);
    v49 = swift_dynamicCastClass();
    if (!v49 || (v50 = v49, *(v49 + qword_100598E98) != 1))
    {

      goto LABEL_5;
    }

    v117 = v48;
    if ((sub_1003DE264(v116) & 1) == 0)
    {

      goto LABEL_5;
    }

    v113 = v24;
    Logger.init(subsystem:category:)();
    v51 = v110;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v112 = v53;
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v104 = v52;
      v55 = v54;
      v56 = swift_slowAlloc();
      v133 = v56;
      *v55 = v103;
      *(v55 + 4) = sub_100002320(*(v51 + 72), *(v51 + 80), &v133);
      v57 = v104;
      _os_log_impl(&_mh_execute_header, v104, v112, "#### Data path already active for %s", v55, 0xCu);
      sub_100002A00(v56);
    }

    else
    {
    }

    v13 = *v108;
    (*v108)(v114, v109);
    sub_1003DDEB4(v115);
    v58 = v115;
    v59 = (*v106)(v115, 1, v111);
    LODWORD(v24) = v113;
    if (v59 != 1)
    {
      break;
    }

    sub_100016290(v58, &qword_1005989E0, &qword_1004B28E0);
    v13 = v105;
LABEL_5:
    v24 = i;
  }

  v61 = v102;
  TupleTypeMetadata2 = *(v102 + 32);
  v62 = v101;
  v63 = v58;
  v64 = v111;
  (TupleTypeMetadata2)(v101, v63, v111);
  UUID.init()();
  v131 = *(v61 + 16);
  v131(v97, v62, v64);
  LODWORD(v130) = *(v50 + qword_100598E70);
  v29 = *(v50 + qword_100598E88);

  v65 = v99;
  WASubscribableService.init(name:)();
  v66 = type metadata accessor for WASubscribableService();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = type metadata accessor for WAPairedDevice();
  (*(*(v67 - 8) + 56))(v100, 1, 1, v67);
  v35 = *(v50 + qword_100598E90);
  if (v35)
  {
    v68 = v35;
    goto LABEL_34;
  }

LABEL_33:
  v68 = [objc_opt_self() zeroAddress];
LABEL_34:
  v69 = v93;
  v70 = v111;
  (TupleTypeMetadata2)(v93, v97, v111);
  v71 = v70;
  v72 = type metadata accessor for ConnectedEndpoints(0);
  *(v69 + v72[5]) = v130;
  *(v69 + v72[6]) = v29;
  sub_10001CEA8(v99, v69 + v72[7], &qword_1005989E8, &qword_1004B28E8);
  sub_10001CEA8(v100, v69 + v72[8], &qword_1005989F0, &qword_1004B28F0);
  *(v69 + v72[9]) = v68;
  (*(*(v72 - 1) + 56))(v69, 0, 1, v72);
  v73 = v96;
  swift_beginAccess();
  v74 = v35;
  sub_100338B10(v69, v98);
  swift_endAccess();
  v75 = nw_array_create();
  v76 = v101;
  v129 = NWEndpoint.nw.getter();
  nw_array_append();
  v77 = v110;
  v78 = *(v110 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve);
  v130 = v75;
  v78(v75);
  v79 = v95;
  Logger.init(subsystem:category:)();
  v80 = v94;
  v131(v94, v76, v71);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = v80;
    v84 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v133 = v131;
    *v84 = v103;
    v132 = NWEndpoint.nw.getter();
    sub_10005DC58(&qword_1005994B0, &qword_1004B2E20);
    v85 = Optional.debugDescription.getter();
    v87 = v86;
    v88 = *(v102 + 8);
    v88(v83, v111);
    v73 = v96;
    swift_unknownObjectRelease();
    v89 = sub_100002320(v85, v87, &v133);
    v71 = v111;

    *(v84 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v81, v82, "####Existing Endpoint Resolved. %s", v84, 0xCu);
    sub_100002A00(v131);
    v77 = v110;

    v90 = v88;

    v91 = v95;
  }

  else
  {

    v90 = *(v102 + 8);
    v90(v80, v71);
    v91 = v79;
  }

  (v13)(v91, v109);
  v92 = v105;
  if (v73[2])
  {

    sub_1003FCA7C(v77);
  }

  sub_1003C6608();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v90(v101, v71);
  (*v127)(i, v92);
  return v24 != 1;
}

uint64_t sub_1003C7948(uint64_t a1)
{
  v2 = type metadata accessor for WAError.ErrorCode();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin();
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v34 = &v33 - v8;
  v9 = type metadata accessor for WAPerformanceMode();
  v33 = *(v9 - 1);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v33 - v12;
  sub_10005DC58(&unk_1005989A8, &qword_1004B28B0);
  __chkstk_darwin();
  v15 = &v33 - v14;
  v16 = type metadata accessor for WAParametersAgentInterface.Parameters();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20._countAndFlagsBits = 0x6269726373627553;
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = 0x80000001004B8650;
  v20._object = 0xE900000000000065;
  if (Int32.checkEntitlement(for_:capabilities:)(v21, v20))
  {
    v4 = swift_allocObject();
    v4[16] = 0;
    sub_1003ADDD0(v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_100016290(v15, &unk_1005989A8, &qword_1004B28B0);
LABEL_11:
      v29 = type metadata accessor for TaskPriority();
      v30 = v34;
      (*(*(v29 - 8) + 56))(v34, 1, 1, v29);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v32 = v39;
      v31[4] = a1;
      v31[5] = v32;
      v31[6] = v4;

      sub_1003587D4(0, 0, v30, &unk_1004B2E30, v31);

      return 0;
    }

LABEL_9:
    (*(v17 + 32))(v19, v15, v16);
    WAParametersAgentInterface.Parameters.performanceMode.getter();
    v27 = v33;
    (*(v33 + 104))(v11, enum case for WAPerformanceMode.realtime(_:), v9);
    LODWORD(v38) = static WAPerformanceMode.== infix(_:_:)();
    v28 = *(v27 + 8);
    v28(v11, v9);
    v28(v13, v9);
    (*(v17 + 8))(v19, v16);
    if (v38)
    {
      v4[16] = 1;
    }

    goto LABEL_11;
  }

  Logger.init(subsystem:category:)();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v15 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(*(a1 + 72), *(a1 + 80), &v40);
    _os_log_impl(&_mh_execute_header, v22, v23, "#### No Browse Entitlement for bundleId: %s", v15, 0xCu);
    sub_100002A00(v9);
  }

  (*(v35 + 8))(v7, v36);
  v24 = v37;
  v17 = v38;
  (*(v37 + 104))(v4, enum case for WAError.ErrorCode.entitlementMissing(_:), v38);
  v19 = v4;
  a1 = WAError.ErrorCode.rawValue.getter();
  v25 = *(v24 + 8);
  v16 = v24 + 8;
  result = v25(v4, v17);
  if (a1 >= 0xFFFFFFFF80000000)
  {
    if (a1 <= 0x7FFFFFFF)
    {
      return a1;
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C7FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *a5;
  v8 = type metadata accessor for WAError.ErrorCode();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = *(v7 + 88);
  v6[12] = v9;
  v6[13] = *(v9 + 8);
  v6[14] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[18] = v11;
  v6[19] = *(v11 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v12 = type metadata accessor for WAPairedDevice();
  v6[25] = v12;
  v6[26] = *(v12 - 8);
  v6[27] = swift_task_alloc();
  v13 = type metadata accessor for WABrowserAgentInterface.AgentToEndpoint();
  v6[28] = v13;
  v6[29] = *(v13 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v6[32] = v14;
  v15 = *(v14 - 8);
  v6[33] = v15;
  v6[34] = *(v15 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003C8328, 0, 0);
}

uint64_t sub_1003C8328(uint64_t a1)
{
  v37 = v1;
  UUID.init()();
  v2 = swift_allocObject();
  v1[40] = v2;
  *(v2 + 16) = 0;
  Logger.init(subsystem:category:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[24];
  v8 = v1[18];
  v7 = v1[19];
  if (v5)
  {
    v9 = v1[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100002320(*(v9 + 72), *(v9 + 80), &v36);
    _os_log_impl(&_mh_execute_header, v3, v4, "#### startBrowserSession: bundleId: %s", v10, 0xCu);
    sub_100002A00(v11);
  }

  v12 = *(v7 + 8);
  v12(v6, v8);
  v1[41] = v12;
  static WABrowserAgentInterface.browseResultKey.getter();
  v13 = NWEndpoint.customMetadataForKey(key:)();
  v15 = v14;

  v1[42] = v13;
  v1[43] = v15;
  if (v15 >> 60 == 15)
  {
    Logger.init(subsystem:category:)();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[39];
    v21 = v1[32];
    v20 = v1[33];
    v22 = v1[23];
    v23 = v1[18];
    if (v18)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch WABrowseResult in resolve endpoint", v24, 2u);
    }

    v12(v22, v23);
    (*(v20 + 8))(v19, v21);

    v34 = v1[1];

    return v34();
  }

  else
  {
    static WABrowserAgentInterface.AgentToEndpoint.decode(from:)();
    v1[44] = 0;
    v26 = v1[16];
    v25 = v1[17];
    v27 = v1[15];
    v28 = v1[6];
    v29 = v1[7];
    (*(v1[29] + 32))(v1[31], v1[30], v1[28]);
    WABrowserAgentInterface.AgentToEndpoint.device.getter();
    v1[45] = swift_allocObject();
    v30 = *(v29 + 24);
    swift_unownedRetainStrong();
    (*(v26 + 16))(v25, v30 + *(*v30 + 112), v27);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 136))(v27, AssociatedConformanceWitness);
    v1[46] = v32;
    (*(v26 + 8))(v25, v27);
    v1[47] = *(v28 + 72);
    v1[48] = *(v28 + 80);
    v33 = *v32;
    v1[49] = *(v33 + 408);
    v1[50] = (v33 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;

    return _swift_task_switch(sub_1003C8A20, v32, 0);
  }
}

uint64_t sub_1003C8A20()
{
  v1 = *(v0 + 352);
  *(v0 + 408) = (*(v0 + 392))(*(v0 + 376), *(v0 + 384), 1);
  *(v0 + 416) = v1;

  if (v1)
  {
    v2 = sub_1003C97F4;
  }

  else
  {
    v2 = sub_1003C8AC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1003C8AC0()
{
  v126 = v0;
  v1 = v0[45];
  *(v1 + 16) = v0[51];
  v2 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithServiceName:v3];

  [v4 setAuthenticationType:0];
  v5 = *(v1 + 16);
  if (!(v5 >> 62))
  {
    v121 = v4;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_33:
    Logger.init(subsystem:category:)();

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v71 = v0[47];
      v70 = v0[48];
      v120 = v0[41];
      v72 = v0[22];
      v73 = v0[18];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v125[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_100002320(v71, v70, v125);
      _os_log_impl(&_mh_execute_header, v68, v69, "#### BrowserClient:%s has no Paired Devices", v74, 0xCu);
      sub_100002A00(v75);

      v120(v72, v73);
    }

    else
    {
      v76 = v0[41];
      v77 = v0[22];
      v78 = v0[18];

      v76(v77, v78);
    }

    if (*(v0[7] + 16))
    {
      v79 = v0[10];
      v80 = v0[11];
      v81 = v0[9];
      (*(v79 + 104))(v80, enum case for WAError.ErrorCode.deviceInvalid(_:), v81);

      v82 = WAError.ErrorCode.rawValue.getter();
      (*(v79 + 8))(v80, v81);
      if (v82 < 0xFFFFFFFF80000000)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v82 > 0x7FFFFFFF)
      {
LABEL_54:
        __break(1u);
        return;
      }

      v84 = v0[42];
      v83 = v0[43];
      sub_1003F99E8(v0[6], v82);
      sub_100017554(v84, v83);
    }

    else
    {
      sub_100017554(v0[42], v0[43]);
    }

    goto LABEL_42;
  }

  v121 = v4;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_33;
  }

LABEL_3:
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100476378(_swiftEmptyArrayStorage);
  }

  v6 = v0[45];
  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  sub_100388B0C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = v121;
  [v121 setAllowedDeviceIDs:isa];

  v9 = *(v6 + 16);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
LABEL_6:
    if (v10 >= 1)
    {
      v11 = v9 & 0xC000000000000001;

      v12 = 0;
      v114 = v0;
      v115 = v9;
      while (1)
      {
        if (v11)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 deviceID];
        if (v15 == WAPairedDevice.id.getter())
        {
          v16 = [v121 allowedDeviceIDs];
          if (v16)
          {
            v17 = v16;
            v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v125[0] = v18;
            [v14 deviceID];
            v19.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            sub_10046F988(&v124, v19.super.super.isa);

            if (v125[0])
            {
              v20.super.isa = Set._bridgeToObjectiveC()().super.isa;
            }

            else
            {
              v20.super.isa = 0;
            }

            [v121 setAllowedDeviceIDs:v20.super.isa];

            v0 = v114;
            v9 = v115;
            goto LABEL_10;
          }

          [v121 setAllowedDeviceIDs:0];
        }

LABEL_10:
        if (v10 == ++v12)
        {

          v8 = v121;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_21:
  v117 = v0[48];
  v118 = v0[47];
  v122 = v0[52];
  v21 = v0[39];
  v22 = v0[38];
  v110 = v22;
  v112 = v0[45];
  v23 = v0[33];
  v98 = v0[37];
  v100 = v0[34];
  v24 = v8;
  v25 = v0[32];
  v26 = v0[14];
  v27 = v0[12];
  v96 = v26;
  v105 = v0[8];
  v108 = v0[40];
  v28 = v0[6];
  v93 = v0[7];
  v94 = v28;
  v95 = v24;
  [v95 setDiscoveryMode:2];
  [v95 setTimeoutAfterSeconds:120];
  type metadata accessor for NANAgentHandler.SubscriberClient(0, v26, v27, v29);
  v30 = *(v23 + 16);
  v30(v22, v21, v25);
  v102 = *(v28 + 64);
  v31 = swift_allocObject();
  swift_weakInit();
  v92 = v30;
  v30(v98, v21, v25);
  v32 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = v96;
  *(v33 + 3) = v27;
  *(v33 + 4) = v31;
  *(v33 + 5) = v108;
  *(v33 + 6) = v105;
  *(v33 + 7) = v94;
  (*(v23 + 32))(&v33[v32], v98, v25);
  *&v33[(v100 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = v112;

  LOBYTE(v125[0]) = 0;
  v34 = sub_1003BDE24(v93, v110, v95, v118, v117, v102, sub_1003EA324, v33);
  if (!v122)
  {
    v123 = v34;
    v42 = v0[39];
    v43 = v0[36];
    v44 = v0[32];

    Logger.init(subsystem:category:)();
    v30(v43, v42, v44);
    v45 = v95;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[41];
    v50 = v0[36];
    v51 = v0[32];
    v52 = v0[33];
    v111 = v0[18];
    v113 = v0[21];
    v116 = v45;
    if (v48)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v125[0] = v103;
      *v53 = 138412546;
      *(v53 + 4) = v45;
      *v54 = v45;
      *(v53 + 12) = 2080;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v106 = v49;
      v55 = v45;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v119 = *(v52 + 8);
      v119(v50, v51);
      v59 = sub_100002320(v56, v58, v125);

      *(v53 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v46, v47, "#### BrowserClient for :%@ ID: %s", v53, 0x16u);
      sub_100016290(v54, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v103);

      v106(v113, v111);
    }

    else
    {

      v119 = *(v52 + 8);
      v119(v50, v51);
      v49(v113, v111);
    }

    v97 = v0[42];
    v99 = v0[43];
    v60 = v0[39];
    v61 = v0[32];
    v62 = v0[29];
    v107 = v0[28];
    v109 = v0[31];
    v63 = v0[26];
    v101 = v0[25];
    v104 = v0[27];
    v64 = v0[14];
    v65 = v0[12];
    v92(v0[35], v60, v61);
    v0[5] = v123;
    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client(255, v64, v65, v66);
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    type metadata accessor for Dictionary();
    v67 = v123;
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_100017554(v97, v99);

    (*(v63 + 8))(v104, v101);
    (*(v62 + 8))(v109, v107);
    v119(v60, v61);

    goto LABEL_43;
  }

  v35 = v0[7];

  if (*(v35 + 16))
  {
    v36 = v0[10];
    v37 = v0[11];
    v38 = v0[9];
    (*(v36 + 104))(v37, enum case for WAError.ErrorCode.connectionFailed(_:), v38);

    v39 = WAError.ErrorCode.rawValue.getter();
    (*(v36 + 8))(v37, v38);
    if (v39 < 0xFFFFFFFF80000000)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v39 > 0x7FFFFFFF)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v41 = v0[42];
    v40 = v0[43];
    sub_1003F99E8(v0[6], v39);
    sub_100017554(v41, v40);
  }

  else
  {
    sub_100017554(v0[42], v0[43]);
  }

LABEL_42:
  v85 = v0[39];
  v86 = v0[32];
  v87 = v0[33];
  v88 = v0[31];
  v89 = v0[28];
  v90 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v90 + 8))(v88, v89);
  (*(v87 + 8))(v85, v86);

LABEL_43:

  v91 = v0[1];

  v91();
}

uint64_t sub_1003C97F4()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  sub_100017554(v0[42], v0[43]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  swift_deallocUninitializedObject();

  v10 = v0[1];

  return v10();
}

void sub_1003C99A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, char *a7, uint64_t a8, NSObject *a9, uint64_t a10)
{
  v155 = a8;
  v162 = a7;
  v160 = a6;
  v157 = a5;
  v153 = type metadata accessor for DispatchWorkItemFlags();
  v152 = *(v153 - 1);
  __chkstk_darwin();
  v150 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for DispatchQoS();
  v148 = *(v151 - 8);
  __chkstk_darwin();
  v147 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for UUID();
  v167 = *(v164 - 8);
  v15 = *(v167 + 64);
  __chkstk_darwin();
  v149 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = &v134 - v16;
  __chkstk_darwin();
  v158 = &v134 - v17;
  __chkstk_darwin();
  v19 = &v134 - v18;
  __chkstk_darwin();
  v159 = &v134 - v20;
  __chkstk_darwin();
  v161 = &v134 - v21;
  __chkstk_darwin();
  v156 = &v134 - v22;
  __chkstk_darwin();
  v24 = &v134 - v23;
  __chkstk_darwin();
  v163 = &v134 - v25;
  v166 = type metadata accessor for Logger();
  v165 = *(v166 - 8);
  __chkstk_darwin();
  v154 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v134 - v27;
  __chkstk_darwin();
  v29 = &v134 - v28;
  __chkstk_darwin();
  v31 = &v134 - v30;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v33 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    sub_1003E8CDC(a2, v33, type metadata accessor for sessionStatus);
    v36 = type metadata accessor for WAError.ErrorCode();
    if ((*(*(v36 - 8) + 48))(v33, 1, v36) == 1)
    {
      if (a1)
      {
        swift_beginAccess();
        if (*(a4 + 16))
        {
          v37 = a1;
          Logger.init(subsystem:category:)();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Ignore result: Datapath inprogress", v40, 2u);
          }

          else
          {
          }

          (*(v165 + 8))(v31, v166);
        }

        else
        {
          swift_beginAccess();
          *(a4 + 16) = 1;
          v41 = a1;
          v42 = [v41 pairedUUID];
          if (v42)
          {
            v43 = v163;
            v44 = v42;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v137 = &unk_1004B4EC0;
            Logger.init(subsystem:category:)();
            v45 = v167;
            v46 = v167 + 16;
            v141 = *(v167 + 16);
            v141(v24, v43, v164);
            v47 = v41;
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();
            v144 = v47;

            LODWORD(v143) = v49;
            v50 = os_log_type_enabled(v48, v49);
            v139 = v35;
            v140 = v46;
            if (v50)
            {
              v142 = v48;
              v51 = v45;
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v176 = v136;
              *v52 = 138412802;
              v54 = v144;
              v55 = [v144 publisherAddress];
              *(v52 + 4) = v55;
              v135 = v53;
              *v53 = v55;
              *(v52 + 12) = 2080;
              sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v56 = v164;
              v57 = dispatch thunk of CustomStringConvertible.description.getter();
              v59 = v58;
              v138 = *(v51 + 8);
              v138(v24, v56);
              v60 = sub_100002320(v57, v59, &v176);

              *(v52 + 14) = v60;
              *(v52 + 22) = 2080;
              v61 = [v54 pairedDeviceName];
              if (v61)
              {
                v62 = v61;
                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;
              }

              else
              {
                v63 = 0;
                v65 = 0;
              }

              v35 = v139;
              aBlock = v63;
              v170 = v65;
              sub_10005DC58(&unk_100599FD0, &qword_100482530);
              v68 = String.init<A>(describing:)();
              v70 = sub_100002320(v68, v69, &v176);

              *(v52 + 24) = v70;
              v71 = v142;
              _os_log_impl(&_mh_execute_header, v142, v143, "#### paired peer: %@, UUID: %s, DeviceName: %s", v52, 0x20u);
              sub_100016290(v135, &qword_10058B780, &qword_100480AC0);

              swift_arrayDestroy();

              v67 = *(v165 + 8);
              v67(v29, v166);
              v66 = v164;
            }

            else
            {

              v66 = v164;
              v138 = *(v45 + 8);
              (v138)(v24);
              v67 = *(v165 + 8);
              v67(v29, v166);
            }

            v143 = a10;
            v142 = a9;
            v72 = v157;
            swift_beginAccess();
            v73 = v72[16];
            v74 = objc_allocWithZone(WiFiAwareDatapathConfiguration);
            LOBYTE(v133) = 1;
            v75 = [v74 initWithDiscoveryResult:v144 serviceType:v73 passphrase:0 pmk:0 pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:0 pairingMethod:2 pairingCachingEnabled:v133 pairSetupServiceSpecificInfo:0 connectionMode:1 pairingMetadata:0];
            v76 = v160;
            LOBYTE(v73) = sub_1003C6A1C(v160, v75);
            v157 = v75;

            v77 = v162;
            v78 = v141;
            if (v73)
            {
              swift_beginAccess();
              type metadata accessor for NANAgentHandler.Client(0, v142, v143, v79);
              sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

              Dictionary.subscript.getter();

              if (aBlock)
              {

                v80 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
                v81 = v156;
                v141(v156, v77, v66);
                v82 = v167;
                v83 = (*(v167 + 80) + 40) & ~*(v167 + 80);
                v84 = swift_allocObject();
                v85 = v143;
                *(v84 + 2) = v142;
                *(v84 + 3) = v85;
                *(v84 + 4) = v35;
                v86 = *(v82 + 32);
                v167 = v82 + 32;
                v86(&v84[v83], v81, v66);
                v173 = sub_1003EAB2C;
                v174 = v84;
                aBlock = _NSConcreteStackBlock;
                v170 = 1107296256;
                v171 = sub_10000C8B8;
                v172 = &unk_100579698;
                v87 = _Block_copy(&aBlock);
                v88 = v80;

                v89 = v147;
                static DispatchQoS.unspecified.getter();
                v168 = _swiftEmptyArrayStorage;
                sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_10005DC58(&unk_100595270, &unk_1004AEC80);
                sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
                v90 = v150;
                v91 = v153;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v87);

                (*(v152 + 1))(v90, v91);
                (*(v148 + 8))(v89, v151);

                sub_1003AF9F0(*(v76 + 9), *(v76 + 10), *(v76 + 6), *(v76 + 7), 0);

                v92 = v163;
                v93 = v164;
              }

              else
              {

                v92 = v163;
                v93 = v66;
              }

              v138(v92, v93);
            }

            else
            {
              v153 = v67;
              v94 = v161;
              UUID.init()();
              v152 = type metadata accessor for NANAgentHandler.DataSessionClient(0, v142, v143, v95);
              v78(v159, v94, v66);
              v151 = swift_allocObject();
              swift_weakInit();
              v78(v19, v94, v66);
              v78(v158, v77, v66);
              v96 = *(v167 + 80);
              v97 = (v96 + 56) & ~v96;
              v98 = (v15 + v96 + v97) & ~v96;
              v99 = v167;
              v100 = swift_allocObject();
              v101 = v143;
              *(v100 + 2) = v142;
              *(v100 + 3) = v101;
              v102 = v155;
              *(v100 + 4) = v151;
              *(v100 + 5) = v102;
              *(v100 + 6) = v76;
              v103 = v76;
              v104 = v66;
              v105 = *(v99 + 32);
              v105(&v100[v97], v19, v104);
              v106 = &v100[v98];
              v107 = v139;
              v105(v106, v158, v104);
              swift_retain_n();
              v108 = v157;

              v109 = objc_allocWithZone(v152);
              v110 = sub_1003DD950(v103, v107, v159, v108, sub_1003EA3E4, v100);

              v111 = v104;
              v112 = v161;
              v113 = v141;
              v141(v156, v161, v111);
              v175 = v110;
              swift_beginAccess();
              type metadata accessor for NANAgentHandler.Client(255, v142, v143, v114);
              sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              type metadata accessor for Dictionary();
              v160 = v110;
              Dictionary.subscript.setter();
              swift_endAccess();
              v115 = v146;
              Logger.init(subsystem:category:)();
              v116 = v145;
              v113(v145, v162, v111);
              v117 = Logger.logObject.getter();
              v118 = static os_log_type_t.default.getter();
              v119 = os_log_type_enabled(v117, v118);
              v120 = v111;
              v121 = v112;
              v122 = v144;
              if (v119)
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                aBlock = v124;
                *v123 = 136315138;
                sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v125 = dispatch thunk of CustomStringConvertible.description.getter();
                v162 = v108;
                v127 = v126;
                v128 = v116;
                v129 = v138;
                v138(v128, v120);
                v130 = sub_100002320(v125, v127, &aBlock);

                *(v123 + 4) = v130;
                _os_log_impl(&_mh_execute_header, v117, v118, "#### DataPath for:%s success", v123, 0xCu);
                sub_100002A00(v124);

                (v153)(v146, v166);
                v129(v161, v120);
                v129(v163, v120);
              }

              else
              {

                v131 = v116;
                v132 = v138;
                v138(v131, v111);
                (v153)(v115, v166);
                v132(v121, v111);
                v132(v163, v111);
              }
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1003E8ED4(v33, type metadata accessor for sessionStatus);
    }
  }
}

void sub_1003CB0F8(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, unint64_t a4, void (**a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v186 = a8;
  v185 = a7;
  v167 = a6;
  v181 = a5;
  *&v166 = a4;
  v194 = a2;
  v180 = a1;
  v179 = type metadata accessor for DispatchWorkItemFlags();
  v178 = *(v179 - 8);
  __chkstk_darwin();
  v176 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for DispatchQoS();
  v175 = *(v177 - 8);
  __chkstk_darwin();
  v174 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v187 = &v160 - v11;
  v203 = type metadata accessor for ConnectedSession(0);
  v193 = *(v203 - 1);
  __chkstk_darwin();
  v201 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v160 - v13;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v200 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v199 = &v160 - v15;
  v16 = type metadata accessor for WAError.ErrorCode();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v189 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v160 - v19;
  __chkstk_darwin();
  v202 = &v160 - v21;
  __chkstk_darwin();
  v161 = &v160 - v22;
  sub_10005DC58(&qword_100597580, &qword_1004B1868);
  __chkstk_darwin();
  v164 = &v160 - v23;
  v204 = type metadata accessor for UUID();
  v196 = *(v204 - 8);
  __chkstk_darwin();
  v198 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v24;
  __chkstk_darwin();
  v197 = &v160 - v25;
  v172 = type metadata accessor for WASubscribableService();
  v171 = *(v172 - 8);
  __chkstk_darwin();
  v170 = (&v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005DC58(&qword_100594A30, &qword_1004B2E00);
  __chkstk_darwin();
  v162 = &v160 - v27;
  v165 = type metadata accessor for WAPairedDevice();
  v169 = *(v165 - 8);
  __chkstk_darwin();
  v168 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for Logger();
  v182 = *(v191 - 8);
  __chkstk_darwin();
  v188 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v160 - v30;
  __chkstk_darwin();
  v33 = &v160 - v32;
  __chkstk_darwin();
  v163 = &v160 - v34;
  __chkstk_darwin();
  v36 = &v160 - v35;
  sub_10005DC58(&unk_100599448, &unk_1004B2D90);
  __chkstk_darwin();
  v38 = &v160 - v37;
  v184 = type metadata accessor for ResolvedSession(0);
  v39 = *(v184 - 8);
  __chkstk_darwin();
  v183 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v42 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  sub_1003E8CDC(v194, v42, type metadata accessor for sessionStatus);
  v43 = (*(v17 + 48))(v42, 1, v16);
  v190 = v16;
  if (v43 == 1)
  {
    sub_100012400(v180, v38, &unk_100599448, &unk_1004B2D90);
    if ((*(v39 + 48))(v38, 1, v184) == 1)
    {

      sub_100016290(v38, &unk_100599448, &unk_1004B2D90);
      return;
    }

    v55 = v183;
    sub_100046A08(v38, v183, type metadata accessor for ResolvedSession);
    v56 = v166;
    swift_beginAccess();
    v57 = *(v56 + 16);
    __chkstk_darwin();
    v159 = v55;

    v58 = sub_1002C8014(sub_1003EA584, (&v160 - 4), v57);

    if (v58)
    {
      v59 = v58;
      v60 = [v59 deviceID];
      v61 = [v59 name];
      v202 = v60;
      if (v61)
      {
        v62 = v61;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v116 = v162;
      v117 = [v59 pairingName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = [v59 vendorName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v119 = [v59 modelName];
      v203 = v59;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
      v120 = type metadata accessor for WAPairedDevice.PairingInfo();
      (*(*(v120 - 8) + 56))(v116, 0, 1, v120);
      v121 = v168;
      WAPairedDevice.init(id:name:pairingInfo:)();

      v122 = v170;
      WASubscribableService.init(name:)();
      (*(v196 + 16))(v197, v167, v204);
      v123 = type metadata accessor for NWEndpoint();
      v124 = v164;
      v125 = v183;
      (*(*(v123 - 8) + 16))(v164, v183, v123);
      v126 = v184;
      v127 = *(v125 + *(v184 + 24));
      v128 = *(v125 + *(v184 + 20));
      v129 = type metadata accessor for ConnectedEndpoints(0);
      v130 = v129[7];
      v131 = v171;
      v132 = v122;
      v133 = v172;
      (v171)[2](v124 + v130, v132, v172);
      (v131[7])(v124 + v130, 0, 1, v133);
      v134 = v129[8];
      v135 = v169;
      v136 = v165;
      (v169[2])(v124 + v134, v121, v165);
      v135[7](v124 + v134, 0, 1, v136);
      v137 = *(v125 + *(v126 + 28));
      *(v124 + v129[5]) = v128;
      *(v124 + v129[6]) = v127;
      *(v124 + v129[9]) = v137;
      (*(*(v129 - 1) + 56))(v124, 0, 1, v129);
      v52 = Strong;
      swift_beginAccess();
      v138 = v137;
      sub_100338B10(v124, v197);
      swift_endAccess();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v207 = v52[11];
      v52[11] = 0x8000000000000000;
      sub_1003E282C(0, v128, isUniquelyReferenced_nonNull_native);
      v52[11] = v207;
      swift_endAccess();
      v140 = nw_array_create();
      NWEndpoint.nw.getter();
      nw_array_append();
      (*(v181 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve))(v140);
      v141 = v163;
      Logger.init(subsystem:category:)();
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&_mh_execute_header, v142, v143, "#### Endpoint Resolved.", v144, 2u);
      }

      (*(v182 + 8))(v141, v191);
      v50 = v186;
      v51 = v185;
      if (v52[2])
      {

        sub_1003FCA7C(v181);
      }

      sub_1003C6608();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (v171[1])(v170, v172);
      (v169[1])(v168, v136);
      sub_1003E8ED4(v183, type metadata accessor for ResolvedSession);
      goto LABEL_60;
    }

    Logger.init(subsystem:category:)();
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    v107 = os_log_type_enabled(v105, v106);
    v108 = Strong;
    if (v107)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "#### DeviceID not match", v109, 2u);
    }

    (*(v182 + 8))(v36, v191);
    if (!*(v108 + 16))
    {
LABEL_50:

      sub_1003E8ED4(v183, type metadata accessor for ResolvedSession);
      return;
    }

    v110 = v161;
    v111 = v190;
    (*(v17 + 104))(v161, enum case for WAError.ErrorCode.deviceInvalid(_:), v190);

    v112 = WAError.ErrorCode.rawValue.getter();
    (*(v17 + 8))(v110, v111);
    if (v112 >= 0xFFFFFFFF80000000)
    {
      if (v112 <= 0x7FFFFFFF)
      {
        sub_1003F99E8(v181, v112);

        goto LABEL_50;
      }

LABEL_71:
      __break(1u);
      return;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v44 = v202;
  (*(v17 + 32))(v202, v42, v16);
  v45 = *(v17 + 16);
  v172 = v17 + 16;
  v171 = v45;
  (v45)(v20, v44, v16);
  v46 = (*(v17 + 88))(v20, v16);
  if (v46 == enum case for WAError.ErrorCode.connectionFailed(_:))
  {
    Logger.init(subsystem:category:)();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v186;
    v51 = v185;
    v52 = Strong;
    if (v49)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "#### Connection failed", v53, 2u);
      v16 = v190;
    }

    (*(v182 + 8))(v33, v191);
    if (!v52[2])
    {
      goto LABEL_12;
    }

    v54 = WAError.ErrorCode.rawValue.getter();
    if (v54 >= 0xFFFFFFFF80000000)
    {
      if (v54 <= 0x7FFFFFFF)
      {
        sub_1003F99E8(v181, v54);

LABEL_12:
        (*(v17 + 8))(v202, v16);
LABEL_60:
        swift_beginAccess();
        type metadata accessor for NANAgentHandler.Client(0, v50, a9, v145);
        sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        Dictionary.subscript.getter();

        if (aBlock[0])
        {

          v146 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
          v147 = v204;
          v148 = v51;
          v149 = v50;
          v150 = v196;
          v151 = v197;
          (*(v196 + 16))(v197, v148, v204);
          v152 = (*(v150 + 80) + 40) & ~*(v150 + 80);
          v153 = swift_allocObject();
          *(v153 + 2) = v149;
          *(v153 + 3) = a9;
          *(v153 + 4) = v52;
          (*(v150 + 32))(&v153[v152], v151, v147);
          aBlock[4] = sub_1003EA56C;
          aBlock[5] = v153;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10000C8B8;
          aBlock[3] = &unk_1005796E8;
          v154 = _Block_copy(aBlock);
          v155 = v146;

          v156 = v174;
          static DispatchQoS.unspecified.getter();
          v205 = _swiftEmptyArrayStorage;
          sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10005DC58(&unk_100595270, &unk_1004AEC80);
          sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
          v157 = v176;
          v158 = v179;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v154);

          (*(v178 + 8))(v157, v158);
          (*(v175 + 8))(v156, v177);
        }

        return;
      }

LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v50 = v186;
  v51 = v185;
  v52 = Strong;
  if (v46 != enum case for WAError.ErrorCode.connectionIdleTimeout(_:) && v46 != enum case for WAError.ErrorCode.connectionTerminated(_:))
  {
    v63 = *(v17 + 8);
    v63(v202, v16);
    v63(v20, v16);
    goto LABEL_60;
  }

  v184 = sub_1003C68C4(v167);
  if ((v184 & 0x100000000) == 0)
  {
    swift_beginAccess();
    v64 = v52[10];
    v65 = *(v64 + 64);
    v183 = v64 + 64;
    v66 = 1 << *(v64 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & v65;
    v167 = (v66 + 63) >> 6;
    v180 = v196 + 16;
    v194 = (v196 + 32);
    v181 = (v196 + 8);
    v169 = &unk_1004B4EC0;
    v170 = (v17 + 8);
    v168 = (v182 + 8);
    v182 = v64;

    v69 = 0;
    *&v70 = 134217984;
    v166 = v70;
    v71 = v201;
    v72 = v200;
    v73 = v199;
    v74 = v198;
    while (v68)
    {
      v75 = v69;
LABEL_34:
      v78 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v79 = v78 | (v75 << 6);
      v80 = v182;
      v81 = v196;
      (*(v196 + 16))(v197, *(v182 + 48) + *(v196 + 72) * v79, v204);
      v82 = v192;
      sub_1003E8CDC(*(v80 + 56) + *(v193 + 72) * v79, v192, type metadata accessor for ConnectedSession);
      v83 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
      v84 = *(v83 + 48);
      v72 = v200;
      (*(v81 + 32))();
      sub_100046A08(v82, v72 + v84, type metadata accessor for ConnectedSession);
      (*(*(v83 - 8) + 56))(v72, 0, 1, v83);
      v16 = v190;
      v71 = v201;
      v73 = v199;
      v74 = v198;
LABEL_35:
      sub_10001CEA8(v72, v73, &unk_1005989C0, &unk_1004B28C0);
      v85 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
      if ((*(*(v85 - 8) + 48))(v73, 1, v85) == 1)
      {
        (*v170)(v202, v16);

        v50 = v186;
        v51 = v185;
        v52 = Strong;
        goto LABEL_60;
      }

      v86 = *(v85 + 48);
      v87 = v204;
      (*v194)(v74, v73, v204);
      sub_100046A08(v73 + v86, v71, type metadata accessor for ConnectedSession);
      if (*(v71 + v203[5]) == v184)
      {
        v88 = v188;
        Logger.init(subsystem:category:)();
        v89 = v189;
        (v171)(v189, v202, v16);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = v166;
          v93 = WAError.ErrorCode.rawValue.getter();
          (*v170)(v89, v16);
          *(v92 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v90, v91, "#### Connection Terminated error:%ld", v92, 0xCu);
          v71 = v201;
        }

        else
        {
          (*v170)(v89, v16);
        }

        (*v168)(v88, v191);
        v94 = *(v71 + v203[10]);
        v95 = *(v94 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);

        v96 = WAError.ErrorCode.rawValue.getter();
        if (v96 < -32768)
        {
          goto LABEL_66;
        }

        if (v96 >= 0x8000)
        {
          goto LABEL_67;
        }

        v95(0, 0, 0, 0, 0, 0, 0, 0, 0, v96);

        v97 = *(v94 + 72);
        v98 = *(v94 + 80);

        v99 = v16;
        v100 = v201;
        v101 = WASubscribableService.name.getter();
        sub_1003AF9F0(v97, v98, v101, v102, 2);

        v71 = v100;
        v16 = v99;
        v74 = v198;
        v72 = v200;

        swift_beginAccess();
        v103 = v187;
        sub_1003AD998(v74, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v187);
        sub_100016290(v103, &qword_100597578, &qword_1004B1860);
        swift_endAccess();
        v87 = v204;
        v73 = v199;
      }

      (*v181)(v74, v87);
      sub_1003E8ED4(v71, type metadata accessor for ConnectedSession);
    }

    if (v167 <= v69 + 1)
    {
      v76 = v69 + 1;
    }

    else
    {
      v76 = v167;
    }

    v77 = v76 - 1;
    while (1)
    {
      v75 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v75 >= v167)
      {
        v104 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        (*(*(v104 - 8) + 56))(v72, 1, 1, v104);
        v68 = 0;
        v69 = v77;
        goto LABEL_35;
      }

      v68 = *(v183 + 8 * v75);
      ++v69;
      if (v68)
      {
        v69 = v75;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  Logger.init(subsystem:category:)();
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&_mh_execute_header, v113, v114, "#### Failure", v115, 2u);
  }

  (*(v182 + 8))(v31, v191);
  (*(v17 + 8))(v202, v16);
}