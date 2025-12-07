void sub_1003CD060(void *a1, uint64_t a2)
{
  v49 = *a1;
  v50 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v38 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = *(v4 + 16);
  v47 = v8;
  v14 = v8;
  v15 = v50;
  v13(v14, v50, v3);
  v13(v6, v15, v3);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v48 = a1;
  if (v18)
  {
    v41 = v17;
    v43 = v16;
    v44 = v4;
    v42 = v6;
    v45 = v10;
    v46 = v9;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v19 = 138412546;
    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client(0, *(v49 + 80), *(v49 + 88), v20);
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v21 = v47;
    Dictionary.subscript.getter();

    v22 = v51;
    v38 = v12;
    if (v51)
    {
      v23 = v51;
    }

    else
    {
      v23 = 0;
    }

    v25 = v42;
    v26 = v44;
    *(v19 + 4) = v23;
    v27 = v39;
    *v39 = v22;
    v28 = *(v26 + 8);
    v28(v21, v3);
    *(v19 + 12) = 2080;
    sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v3);
    v32 = sub_100002320(v29, v31, v53);

    *(v19 + 14) = v32;
    v33 = v43;
    _os_log_impl(&_mh_execute_header, v43, v41, "#### Terminating BrowserClient for :%@ ID: %s", v19, 0x16u);
    sub_100016290(v27, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v40);

    (*(v45 + 8))(v38, v46);
  }

  else
  {

    v24 = *(v4 + 8);
    v24(v6, v3);
    v24(v47, v3);
    (*(v10 + 8))(v12, v9);
  }

  v34 = v49;
  swift_beginAccess();
  type metadata accessor for NANAgentHandler.Client(0, *(v34 + 80), *(v34 + 88), v35);
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  Dictionary.subscript.getter();

  v37 = v51;
  if (v51)
  {
    (*((swift_isaMask & *v51) + 0x98))(v36);
  }

  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

uint64_t NANAgentHandler.startResolverSession(_:)(uint64_t a1)
{
  v288 = *v1;
  v3 = type metadata accessor for WAError.ErrorCode();
  v286 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v247 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for WAPerformanceMode();
  v274 = *(v275 - 8);
  __chkstk_darwin();
  v273 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v272 = &v247 - v7;
  sub_10005DC58(&unk_1005989A8, &qword_1004B28B0);
  __chkstk_darwin();
  v279 = &v247 - v8;
  v281 = type metadata accessor for WAParametersAgentInterface.Parameters();
  v280 = *(v281 - 8);
  __chkstk_darwin();
  v271 = &v247 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for UUID();
  v298 = *(v304 - 8);
  __chkstk_darwin();
  v266 = &v247 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v263 = (&v247 - v11);
  __chkstk_darwin();
  v268 = &v247 - v12;
  __chkstk_darwin();
  v270 = &v247 - v13;
  __chkstk_darwin();
  v276 = &v247 - v14;
  __chkstk_darwin();
  v284 = &v247 - v15;
  __chkstk_darwin();
  v17 = &v247 - v16;
  v269 = v18;
  __chkstk_darwin();
  v297 = &v247 - v19;
  sub_10005DC58(&qword_100598978, &qword_1004B2878);
  __chkstk_darwin();
  v303 = &v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v302 = &v247 - v21;
  v292 = type metadata accessor for Logger();
  v291 = *(v292 - 8);
  __chkstk_darwin();
  v23 = &v247 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v285 = &v247 - v24;
  __chkstk_darwin();
  v267 = &v247 - v25;
  __chkstk_darwin();
  v265 = &v247 - v26;
  __chkstk_darwin();
  v264 = &v247 - v27;
  __chkstk_darwin();
  v278 = &v247 - v28;
  __chkstk_darwin();
  v283 = &v247 - v29;
  __chkstk_darwin();
  v282 = &v247 - v30;
  __chkstk_darwin();
  v287 = &v247 - v31;
  __chkstk_darwin();
  v277 = &v247 - v32;
  __chkstk_darwin();
  v34 = &v247 - v33;
  __chkstk_darwin();
  v36 = &v247 - v35;
  v37 = OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint;
  static WABrowserAgentInterface.browseResultKey.getter();
  v289 = v37;
  v38 = NWEndpoint.customMetadataForKey(key:)();
  v40 = v39;

  if (v40 >> 60 == 15)
  {
    Logger.init(subsystem:category:)();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "ResolveHandler: Not WiFiAware Endpoint", v43, 2u);
    }

    v291[1](v23, v292);
    return 255;
  }

  v256 = v34;
  v261 = v40;
  Logger.init(subsystem:category:)();

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v258 = v5;
  v301 = a1;
  v257 = v3;
  v262 = v38;
  v259 = &unk_1004B4EC0;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v305 = swift_slowAlloc();
    v307 = v305;
    *v48 = 136315394;
    v300 = sub_1003F3454();
    v5 = v49;
    v308 = 0;
    v309 = 0xE000000000000000;
    v50._countAndFlagsBits = 0x6E696F70646E6520;
    v50._object = 0xEA00000000003A74;
    String.append(_:)(v50);
    type metadata accessor for NWEndpoint();
    _print_unlocked<A, B>(_:_:)();
    v51 = v308;
    v52 = v309;
    v308 = v300;
    v309 = v5;

    v53._countAndFlagsBits = v51;
    v53._object = v52;
    String.append(_:)(v53);

    v54 = sub_100002320(v308, v309, &v307);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_100002320(*(a1 + 48), *(a1 + 56), &v307);
    _os_log_impl(&_mh_execute_header, v45, v46, "#### Started a resolver session:%s serviceName:%s", v48, 0x16u);
    swift_arrayDestroy();
  }

  v260 = v291[1];
  v260(v36, v292);
  v55 = v304;
  v56 = v290;
  swift_beginAccess();
  v57 = *(v56 + 32);
  v58 = v57 + 64;
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 64);
  v62 = ((v59 + 63) >> 6);
  v294 = (v298 + 16);
  v63 = (v298 + 32);
  v300 = (v298 + 8);
  v296 = v57;

  v64 = 0;
  v295 = v17;
  v293 = v63;
  v299 = v58;
  while (1)
  {
    if (v61)
    {
      v65 = v64;
      goto LABEL_22;
    }

    if (v62 <= v64 + 1)
    {
      v66 = (v64 + 1);
    }

    else
    {
      v66 = v62;
    }

    v67 = &v66[-1].isa + 7;
    do
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v65 >= v62)
      {
        v86 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        v76 = v303;
        (*(*(v86 - 8) + 56))(v303, 1, 1, v86);
        v61 = 0;
        v64 = v67;
        goto LABEL_23;
      }

      v61 = *(v58 + 8 * v65);
      ++v64;
    }

    while (!v61);
    v64 = v65;
LABEL_22:
    v68 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v69 = v68 | (v65 << 6);
    v70 = v296;
    v71 = v298;
    v72 = v297;
    (*(v298 + 16))(v297, v296[6].isa + *(v298 + 72) * v69, v55);
    v73 = *(v70[7].isa + v69);
    v5 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    v74 = v55;
    v75 = *(v5 + 12);
    v76 = v303;
    v77 = v72;
    v63 = v293;
    (*(v71 + 32))(v303, v77, v74);
    *&v76[v75] = v73;
    (*(*(v5 - 1) + 56))(v76, 0, 1, v5);

    v17 = v295;
LABEL_23:
    v78 = v76;
    v79 = v302;
    sub_10001CEA8(v78, v302, &qword_100598978, &qword_1004B2878);
    v80 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {

      v58 = v262;
LABEL_42:
      v44 = sub_1003C7948(v301);
      sub_100017554(v58, v261);
      return v44;
    }

    v81 = *(v79 + *(v80 + 48));
    v82 = *v63;
    v83 = v79;
    v55 = v304;
    (*v63)(v17, v83, v304);
    v305 = v81;
    v84 = *(v81 + 16);
    v58 = v299;
    if (*(v84 + 64) == *(v301 + 64))
    {
      v67 = *(v301 + 48);
      v5 = *(v301 + 56);
      if (*(v84 + 48) == v67 && *(v84 + 56) == v5)
      {
        v67 = *(v84 + 48);
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }
    }

    (*v300)(v17, v55);
  }

  v303 = v82;
  swift_beginAccess();
  v87 = v17;
  v88 = v288[10];
  v62 = v288[11];
  v90 = type metadata accessor for NANAgentHandler.Client(0, v88, v62, v89);
  v91 = sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v302 = v91;
  Dictionary.subscript.getter();

  v93 = v308;
  v58 = v262;
  if (!v308)
  {
    (*v300)(v87, v55);

    goto LABEL_42;
  }

  v255 = v88;
  type metadata accessor for NANAgentHandler.SubscriberClient(0, v88, v62, v92);
  v94 = swift_dynamicCastClass();
  if (!v94)
  {

    (*v300)(v295, v55);
    goto LABEL_42;
  }

  v254 = v62;
  v253 = v90;
  v64 = v94;

  v61 = v93;
  static WABrowserAgentInterface.browseResultSignatureKey.getter();
  v299 = NWEndpoint.customMetadataForKey(key:)();
  v96 = v95;

  v288 = v61;
  if (v96 >> 60 == 15)
  {

    v97 = v283;
    Logger.init(subsystem:category:)();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "No metadata found for the specified key", v100, 2u);
    }

LABEL_64:
    v260(v97, v292);
    (*v300)(v295, v304);
    v115 = v257;
    v116 = v286;
    v117 = v258;
LABEL_65:
    v118 = v285;

    Logger.init(subsystem:category:)();
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "#### Failed to find discovery result", v121, 2u);
    }

    v260(v118, v292);
    (*(v116 + 13))(v117, enum case for WAError.ErrorCode.deviceNoLongerAvailable(_:), v115);
    v44 = WAError.ErrorCode.rawValue.getter();

    sub_100017554(v58, v261);

    (*(v116 + 1))(v117, v115);
    if (v44 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v44 <= 0x7FFFFFFF)
    {
      return v44;
    }

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
    goto LABEL_138;
  }

  v289 = v96;
  v65 = v96 >> 62;
  if ((v96 >> 62) <= 1)
  {
    v102 = v256;
    if (!v65)
    {
      v103 = BYTE6(v289);
      goto LABEL_54;
    }

LABEL_52:
    LODWORD(v103) = HIDWORD(v299) - v299;
    if (__OFSUB__(HIDWORD(v299), v299))
    {
      goto LABEL_131;
    }

    v103 = v103;
    goto LABEL_54;
  }

LABEL_48:
  v102 = v256;
  if (v65 != 2)
  {
    goto LABEL_61;
  }

  v105 = *(v299 + 16);
  v104 = *(v299 + 24);
  v106 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v106)
  {
    __break(1u);
    goto LABEL_52;
  }

LABEL_54:
  if (v103 != 8)
  {
LABEL_61:

    v97 = v282;
    Logger.init(subsystem:category:)();
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "Data size does not match expected size for Int", v114, 2u);
    }

    sub_100017554(v299, v289);
    goto LABEL_64;
  }

  v282 = v299;
  if (v65)
  {
    if (v65 == 2)
    {
      v107 = *(v299 + 16);
      v108 = __DataStorage._bytes.getter();
      if (!v108)
      {
        goto LABEL_139;
      }

      v109 = v108;
      v110 = __DataStorage._offset.getter();
      if (__OFSUB__(v107, v110))
      {
        goto LABEL_133;
      }

      v111 = (v107 - v110 + v109);
      __DataStorage._length.getter();
      v102 = v256;
      if (!v111)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v122 = v299;
      if (v299 > v299 >> 32)
      {
        goto LABEL_132;
      }

      v123 = __DataStorage._bytes.getter();
      if (!v123)
      {
        goto LABEL_141;
      }

      v124 = v123;
      v125 = __DataStorage._offset.getter();
      if (__OFSUB__(v122, v125))
      {
        goto LABEL_134;
      }

      v111 = (v122 - v125 + v124);
      result = __DataStorage._length.getter();
      v102 = v256;
      if (!v111)
      {
        goto LABEL_142;
      }
    }

    v282 = *v111;
  }

  Logger.init(subsystem:category:)();
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 134217984;
    *(v128 + 4) = v282;
    _os_log_impl(&_mh_execute_header, v126, v127, "#### Endpoint siganture %ld", v128, 0xCu);
    v102 = v256;
  }

  v256 = (v291 + 1);
  v260(v102, v292);
  v129 = qword_100598D20;
  swift_beginAccess();
  v130 = *(v64 + v129);

  v132 = 0;
  v134 = v130 + 64;
  v133 = *(v130 + 8);
  v283 = v130;
  v135 = 1 << v130[32];
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v137 = v136 & v133;
  v138 = (v135 + 63) >> 6;
  *&v131 = 136315394;
  v247 = v131;
  v139 = v304;
  v140 = v295;
  v251 = v138;
  v252 = v134;
  while (2)
  {
    if (!v137)
    {
      while (1)
      {
        v141 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          break;
        }

        if (v141 >= v138)
        {
          (*v300)(v140, v139);

          sub_100017554(v299, v289);

          v115 = v257;
          v116 = v286;
          v117 = v258;
          v58 = v262;
          goto LABEL_65;
        }

        v137 = v134[v141];
        ++v132;
        if (v137)
        {
          goto LABEL_87;
        }
      }

      __break(1u);
      goto LABEL_114;
    }

    v141 = v132;
LABEL_87:
    v142 = *(*(v283 + 7) + ((v141 << 9) | (8 * __clz(__rbit64(v137)))));
    v143 = [v142 serviceName];
    v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v145;

    if (v144 == v67 && v146 == v5)
    {
    }

    else
    {
      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v148 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v149 = [v142 signature];
    if (v282 != v149)
    {
LABEL_95:
      v137 &= v137 - 1;
      Logger.init(subsystem:category:)();
      v150 = v284;
      v140 = v295;
      v151 = v304;
      (*v294)(v284, v295, v304);
      v152 = v142;
      v127 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v127, v62))
      {
        v153 = swift_slowAlloc();
        v249 = v62;
        v154 = v150;
        v155 = v153;
        v250 = swift_slowAlloc();
        v306[0] = v250;
        *v155 = v247;
        sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v248 = v127;
        v156 = dispatch thunk of CustomStringConvertible.description.getter();
        v158 = v157;
        (*v300)(v154, v151);
        v159 = sub_100002320(v156, v158, v306);

        *(v155 + 4) = v159;
        *(v155 + 12) = 2048;
        v160 = [v152 signature];

        *(v155 + 14) = v160;
        v140 = v295;

        v62 = v248;
        _os_log_impl(&_mh_execute_header, v248, v249, "#### No result for %s  %ld", v155, 0x16u);
        v127 = v250;
        sub_100002A00(v250);
      }

      else
      {

        (*v300)(v150, v151);
      }

      v260(v287, v292);
      v132 = v141;
      v139 = v151;
      v134 = v252;
      v138 = v251;
      continue;
    }

    break;
  }

  v161 = v277;
  Logger.init(subsystem:category:)();
  v162 = v142;
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *v165 = 138412290;
    *(v165 + 4) = v162;
    *v166 = v162;
    v167 = v162;
    _os_log_impl(&_mh_execute_header, v163, v164, "#### Discovered Result%@", v165, 0xCu);
    sub_100016290(v166, &qword_10058B780, &qword_100480AC0);
  }

  v260(v161, v292);
  v168 = v162;
  v291 = [v168 signature];

  sub_100017554(v299, v289);
  v169 = *v300;
  (*v300)(v295, v304);

  v170 = v278;
  Logger.init(subsystem:category:)();
  v134 = v168;
  v171 = Logger.logObject.getter();
  v172 = static os_log_type_t.default.getter();

  v173 = os_log_type_enabled(v171, v172);
  v5 = v286;
  if (v173)
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *v174 = 138412290;
    *(v174 + 4) = v134;
    *v175 = v134;
    v176 = v134;
    _os_log_impl(&_mh_execute_header, v171, v172, "#### Connection to:%@", v174, 0xCu);
    sub_100016290(v175, &qword_10058B780, &qword_100480AC0);
  }

  v260(v170, v292);
  v177 = v279;
  sub_1003ADDD0(v279);
  v178 = v280;
  v62 = v281;
  v179 = (*(v280 + 48))(v177, 1, v281);
  v299 = v169;
  if (v179 == 1)
  {
    sub_100016290(v177, &unk_1005989A8, &qword_1004B28B0);
    v180 = v254;
    goto LABEL_106;
  }

  v181 = v271;
  (*(v178 + 32))(v271, v177, v62);
  v182 = v134;
  v183 = v272;
  WAParametersAgentInterface.Parameters.performanceMode.getter();
  v184 = v274;
  v185 = v273;
  v186 = v275;
  (*(v274 + 104))(v273, enum case for WAPerformanceMode.realtime(_:), v275);
  v187 = static WAPerformanceMode.== infix(_:_:)();
  v188 = *(v184 + 8);
  v188(v185, v186);
  v189 = v183;
  v134 = v182;
  v5 = v286;
  v188(v189, v186);
  (*(v178 + 8))(v181, v62);
  v180 = v254;
  if (v187)
  {
    v190 = 1;
  }

  else
  {
LABEL_106:
    v190 = 0;
  }

  LOBYTE(v246) = 1;
  v140 = [objc_allocWithZone(WiFiAwareDatapathConfiguration) initWithDiscoveryResult:v134 serviceType:v190 passphrase:0 pmk:0 pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:0 pairingMethod:2 pairingCachingEnabled:v246 pairSetupServiceSpecificInfo:0 connectionMode:1 pairingMetadata:0];
  v191 = v301;
  v192 = sub_1003C6A1C(v301, v140);

  if (v192)
  {

    sub_100017554(v262, v261);
    return 255;
  }

  v194 = *(v191 + 72);
  v195 = *(v191 + 80);
  sub_1003B23A4(v194, v195, v193);
  if (v196)
  {
    v295 = v134;
    v197 = v276;
    UUID.init()();
    v289 = type metadata accessor for NANAgentHandler.DataSessionClient(0, v255, v180, v198);
    v199 = v298;
    v200 = *(v298 + 16);
    v201 = v304;
    v200(v270, v197, v304);
    v202 = swift_allocObject();
    swift_weakInit();
    v203 = v268;
    v296 = v200;
    v200(v268, v197, v201);
    v204 = *(v199 + 80);
    v205 = v180;
    v206 = (v204 + 56) & ~v204;
    v207 = (v269 + v206 + 7) & 0xFFFFFFFFFFFFFFF8;
    v208 = swift_allocObject();
    v208[2] = v255;
    v208[3] = v205;
    v209 = v305;
    v208[4] = v202;
    v208[5] = v209;
    v208[6] = v291;
    (v303)(v208 + v206, v203, v201);
    *(v208 + v207) = v191;
    swift_retain_n();

    v210 = v140;
    v211 = v290;

    v212 = objc_allocWithZone(v289);
    v222 = sub_1003DD950(v191, v211, v270, v210, sub_1003E7DC0, v208);
    v303 = v210;

    v44 = v264;
    Logger.init(subsystem:category:)();
    v62 = v263;
    v140 = v276;
    v223 = v201;
    v224 = v296;
    (v296)(v263, v276, v201);
    v225 = Logger.logObject.getter();
    v226 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v225, v226))
    {
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v306[0] = v229;
      *v228 = 136315138;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v230 = dispatch thunk of CustomStringConvertible.description.getter();
      v232 = v231;
      v233 = v201;
      v234 = v299;
      (v299)(v62, v233);
      v235 = sub_100002320(v230, v232, v306);
      v236 = v234;
      v237 = v276;

      *(v228 + 4) = v235;
      _os_log_impl(&_mh_execute_header, v225, v226, "#### DataPath for:%s success", v228, 0xCu);
      sub_100002A00(v229);
      v238 = v296;

      v239 = v264;
LABEL_128:
      v260(v239, v292);
      (v238)(v297, v237, v223);
      v306[3] = v222;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v245 = v222;
      Dictionary.subscript.setter();
      swift_endAccess();

      sub_100017554(v262, v261);

      v236(v237, v223);
      return 0;
    }

LABEL_127:
    v237 = v140;
    v238 = v224;

    v236 = v299;
    (v299)(v62, v223);
    v239 = v44;
    goto LABEL_128;
  }

  v137 = v267;
  Logger.init(subsystem:category:)();

  v127 = Logger.logObject.getter();
  v213 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v127, v213))
  {
    v214 = v137;
    v215 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v306[0] = v62;
    *v215 = 136315138;
    *(v215 + 4) = sub_100002320(v194, v195, v306);
    _os_log_impl(&_mh_execute_header, v127, v213, "#### Client %s reached max allowed services", v215, 0xCu);
    sub_100002A00(v62);
    v216 = v290;

    v260(v214, v292);
    goto LABEL_115;
  }

LABEL_114:

  v260(v137, v292);
  v216 = v290;
LABEL_115:
  v217 = v257;
  v218 = *(v216 + 16);
  v219 = enum case for WAError.ErrorCode.noRadioResources(_:);
  if (!v218)
  {
    v220 = *(v5 + 13);
LABEL_122:
    v240 = v258;
    v220(v258, v219, v217);
    v44 = WAError.ErrorCode.rawValue.getter();

    sub_100017554(v262, v261);

    v242 = *(v5 + 1);
    v241 = v5 + 8;
    v242(v240, v217);
    if (v44 < 0xFFFFFFFF80000000)
    {
      goto LABEL_135;
    }

    if (v44 > 0x7FFFFFFF)
    {
      __break(1u);

      v223 = v299;
      (v299)(v134, v241);
      v260(v62, v292);
      v243 = v286;
      v224 = v258;
      v225 = v257;
      (*(v286 + 13))(v258, enum case for WAError.ErrorCode.connectionFailed(_:), v257);
      v44 = WAError.ErrorCode.rawValue.getter();

      sub_100017554(v262, v261);

      v244 = *(v243 + 1);
      v222 = v243 + 8;
      v244(v224, v225);
      v223(v220, v241);
      if (v44 < 0xFFFFFFFF80000000)
      {
        goto LABEL_137;
      }

      if (v44 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_127;
      }
    }

    return v44;
  }

  v220 = *(v5 + 13);
  v62 = v258;
  v220(v258, enum case for WAError.ErrorCode.noRadioResources(_:), v257);

  v221 = WAError.ErrorCode.rawValue.getter();
  (*(v5 + 1))(v62, v217);
  if (v221 < 0xFFFFFFFF80000000)
  {
    goto LABEL_136;
  }

  if (v221 <= 0x7FFFFFFF)
  {
    sub_1003F99E8(v301, v221);

    goto LABEL_122;
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __DataStorage._length.getter();
LABEL_140:
  __break(1u);
LABEL_141:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

void sub_1003CFF84(uint64_t (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(uint64_t, uint64_t, uint64_t), void *a6, void (**a7)(char *, uint64_t))
{
  v172 = a7;
  v169 = a6;
  v195 = a5;
  *&v167 = a4;
  v177 = a2;
  v170 = a1;
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v175 = &v161 - v7;
  v193 = type metadata accessor for ConnectedSession(0);
  v180 = *(v193 - 8);
  __chkstk_darwin();
  v186 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v161 - v9;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v185 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v184 = &v161 - v11;
  v178 = type metadata accessor for Logger();
  v173 = *(v178 - 8);
  __chkstk_darwin();
  v181 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = &v161 - v13;
  __chkstk_darwin();
  v166 = &v161 - v14;
  __chkstk_darwin();
  v168 = &v161 - v15;
  sub_10005DC58(&qword_100597580, &qword_1004B1868);
  __chkstk_darwin();
  v164 = &v161 - v16;
  v189 = type metadata accessor for UUID();
  v182 = *(v189 - 8);
  __chkstk_darwin();
  v188 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v161 - v18;
  v163 = type metadata accessor for BrowseEndpoints(0);
  v192 = *(v163 - 8);
  __chkstk_darwin();
  v194 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v191 = (&v161 - v20);
  sub_10005DC58(&qword_1005994A0, &qword_1004B2E08);
  __chkstk_darwin();
  v22 = (&v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v24 = (&v161 - v23);
  v25 = type metadata accessor for WAError.ErrorCode();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v176 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v161 - v28;
  __chkstk_darwin();
  v190 = &v161 - v30;
  sub_10005DC58(&unk_100599448, &unk_1004B2D90);
  __chkstk_darwin();
  v32 = &v161 - v31;
  v174 = type metadata accessor for ResolvedSession(0);
  v33 = *(v174 - 8);
  __chkstk_darwin();
  v165 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v161 - v35;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v37 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_1003E8CDC(v177, v37, type metadata accessor for sessionStatus);
    if ((*(v26 + 48))(v37, 1, v25) == 1)
    {
      sub_100012400(v170, v32, &unk_100599448, &unk_1004B2D90);
      if ((*(v33 + 48))(v32, 1, v174) == 1)
      {

        sub_100016290(v32, &unk_100599448, &unk_1004B2D90);
        return;
      }

      v161 = v39;
      sub_100046A08(v32, v171, type metadata accessor for ResolvedSession);
      v49 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
      v50 = v167;
      swift_beginAccess();
      v51 = *(v50 + v49);
      v52 = v51 + 64;
      v53 = 1 << *(v51 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v51 + 64);
      v56 = (v53 + 63) >> 6;
      v193 = v51;

      v57 = 0;
      while (v55)
      {
        v58 = v57;
LABEL_25:
        v61 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        v62 = v61 | (v58 << 6);
        v63 = *(*(v193 + 48) + 8 * v62);
        v64 = v191;
        sub_1003E8CDC(*(v193 + 56) + *(v192 + 72) * v62, v191, type metadata accessor for BrowseEndpoints);
        v65 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        v66 = *(v65 + 48);
        *v22 = v63;
        sub_100046A08(v64, v22 + v66, type metadata accessor for BrowseEndpoints);
        (*(*(v65 - 8) + 56))(v22, 0, 1, v65);
        v60 = v58;
LABEL_26:
        sub_10001CEA8(v22, v24, &qword_1005994A0, &qword_1004B2E08);
        v67 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        if ((*(*(v67 - 8) + 48))(v24, 1, v67) == 1)
        {

          (*(v182 + 16))(v183, v169, v189);
          v118 = type metadata accessor for NWEndpoint();
          v119 = v164;
          v120 = v171;
          (*(*(v118 - 8) + 16))(v164, v171, v118);
          v121 = v174;
          v122 = *(v120 + *(v174 + 20));
          v123 = *(v120 + *(v174 + 24));
          v124 = type metadata accessor for ConnectedEndpoints(0);
          v125 = v124[7];
          v126 = v172;

          WASubscribableService.init(name:)();
          v127 = type metadata accessor for WASubscribableService();
          (*(*(v127 - 8) + 56))(v119 + v125, 0, 1, v127);
          v128 = v124[8];
          v129 = type metadata accessor for WAPairedDevice();
          (*(*(v129 - 8) + 56))(v119 + v128, 1, 1, v129);
          v130 = *(v120 + *(v121 + 28));
          *(v119 + v124[5]) = v122;
          *(v119 + v124[6]) = v123;
          *(v119 + v124[9]) = v130;
          (*(*(v124 - 1) + 56))(v119, 0, 1, v124);
          v131 = v161;
          swift_beginAccess();
          v132 = v130;
          sub_100338B10(v119, v183);
          swift_endAccess();
LABEL_60:
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v196 = *(v131 + 88);
          *(v131 + 88) = 0x8000000000000000;
          sub_1003E282C(0, v122, isUniquelyReferenced_nonNull_native);
          *(v131 + 88) = v196;
          swift_endAccess();
          v146 = nw_array_create();
          NWEndpoint.nw.getter();
          nw_array_append();
          (*(v126 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve))(v146);
          v147 = v168;
          Logger.init(subsystem:category:)();
          v148 = v165;
          sub_1003E8CDC(v120, v165, type metadata accessor for ResolvedSession);
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v197[0] = v152;
            *v151 = 136315138;
            v196 = NWEndpoint.nw.getter();
            sub_10005DC58(&qword_1005994B0, &qword_1004B2E20);
            v153 = Optional.debugDescription.getter();
            v155 = v154;
            sub_1003E8ED4(v148, type metadata accessor for ResolvedSession);
            swift_unknownObjectRelease();
            v156 = sub_100002320(v153, v155, v197);
            v120 = v171;

            *(v151 + 4) = v156;
            _os_log_impl(&_mh_execute_header, v149, v150, "#### Endpoint Resolved. %s", v151, 0xCu);
            sub_100002A00(v152);
            v131 = v161;

            v126 = v172;

            v173[1](v168, v178);
          }

          else
          {

            sub_1003E8ED4(v148, type metadata accessor for ResolvedSession);
            v173[1](v147, v178);
          }

          if (*(v131 + 16))
          {

            sub_1003FCA7C(v126);
          }

          sub_1003C6608();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_1003E8ED4(v120, type metadata accessor for ResolvedSession);
          return;
        }

        v68 = *v24;
        v69 = v24 + *(v67 + 48);
        v70 = v194;
        sub_100046A08(v69, v194, type metadata accessor for BrowseEndpoints);
        if (v68 == v195)
        {
          v133 = v183;
          (*(v182 + 16))(v183, v169, v189);
          v134 = type metadata accessor for NWEndpoint();
          v135 = v164;
          v120 = v171;
          (*(*(v134 - 8) + 16))(v164, v171, v134);
          v136 = v174;
          v137 = v70;
          v122 = *(v120 + *(v174 + 20));
          v138 = *(v120 + *(v174 + 24));
          v139 = v163;
          v140 = *(v163 + 20);
          v141 = type metadata accessor for ConnectedEndpoints(0);
          sub_100012400(v137 + v140, v135 + v141[7], &qword_1005989E8, &qword_1004B28E8);
          sub_100012400(v137 + *(v139 + 24), v135 + v141[8], &qword_1005989F0, &qword_1004B28F0);
          v142 = *(v120 + *(v136 + 28));
          *(v135 + v141[5]) = v122;
          *(v135 + v141[6]) = v138;
          *(v135 + v141[9]) = v142;
          (*(*(v141 - 1) + 56))(v135, 0, 1, v141);
          v143 = v161;
          swift_beginAccess();
          v144 = v142;
          sub_100338B10(v135, v133);
          swift_endAccess();
          v131 = v143;

          sub_1003E8ED4(v137, type metadata accessor for BrowseEndpoints);
          v126 = v172;
          goto LABEL_60;
        }

        sub_1003E8ED4(v70, type metadata accessor for BrowseEndpoints);
        v57 = v60;
      }

      if (v56 <= v57 + 1)
      {
        v59 = v57 + 1;
      }

      else
      {
        v59 = v56;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        if (v58 >= v56)
        {
          v71 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
          (*(*(v71 - 8) + 56))(v22, 1, 1, v71);
          v55 = 0;
          goto LABEL_26;
        }

        v55 = *(v52 + 8 * v58);
        ++v57;
        if (v55)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v40 = v190;
    (*(v26 + 32))(v190, v37, v25);
    v41 = *(v26 + 16);
    v171 = v26 + 16;
    v170 = v41;
    v41(v29, v40, v25);
    v42 = (*(v26 + 88))(v29, v25);
    if (v42 == enum case for WAError.ErrorCode.connectionFailed(_:))
    {
      v43 = v166;
      Logger.init(subsystem:category:)();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "#### Connection failed", v46, 2u);
      }

      v173[1](v43, v178);
      v47 = v172;
      if (*(v39 + 16))
      {

        v48 = WAError.ErrorCode.rawValue.getter();
        if (v48 < 0xFFFFFFFF80000000)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (v48 > 0x7FFFFFFF)
        {
LABEL_77:
          __break(1u);
          return;
        }

        sub_1003F99E8(v47, v48);
      }
    }

    else
    {
      if (v42 != enum case for WAError.ErrorCode.connectionIdleTimeout(_:) && v42 != enum case for WAError.ErrorCode.connectionTerminated(_:))
      {
        v72 = *(v26 + 8);
        v72(v190, v25);

        v72(v29, v25);
        return;
      }

      v194 = sub_1003C68C4(v169);
      if ((v194 & 0x100000000) == 0)
      {
        swift_beginAccess();
        v161 = v39;
        v73 = *(v39 + 80);
        v74 = *(v73 + 64);
        v192 = v73 + 64;
        v75 = 1 << *(v73 + 32);
        v76 = -1;
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        v77 = v76 & v74;
        v168 = ((v75 + 63) >> 6);
        v174 = v182 + 16;
        v195 = (v182 + 32);
        v191 = (v182 + 8);
        v169 = &unk_1004B4EC0;
        v172 = (v26 + 8);
        ++v173;
        v177 = v73;

        v78 = 0;
        *&v79 = 134217984;
        v167 = v79;
        v80 = v189;
        v187 = v25;
        v82 = v185;
        v81 = v186;
        v83 = v184;
        while (v77)
        {
          v84 = v78;
LABEL_48:
          v87 = __clz(__rbit64(v77));
          v77 &= v77 - 1;
          v88 = v87 | (v84 << 6);
          v89 = v177;
          v90 = v182;
          v91 = v183;
          v80 = v189;
          (*(v182 + 16))(v183, *(v177 + 48) + *(v182 + 72) * v88, v189);
          v92 = v179;
          sub_1003E8CDC(*(v89 + 56) + *(v180 + 72) * v88, v179, type metadata accessor for ConnectedSession);
          v93 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
          v94 = *(v93 + 48);
          v95 = *(v90 + 32);
          v96 = v185;
          v95(v185, v91, v80);
          v97 = &v96[v94];
          v82 = v96;
          sub_100046A08(v92, v97, type metadata accessor for ConnectedSession);
          (*(*(v93 - 8) + 56))(v96, 0, 1, v93);
          v81 = v186;
          v25 = v187;
          v83 = v184;
LABEL_49:
          sub_10001CEA8(v82, v83, &unk_1005989C0, &unk_1004B28C0);
          v98 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
          if ((*(*(v98 - 8) + 48))(v83, 1, v98) == 1)
          {
            (*v172)(v190, v25);

            return;
          }

          v99 = *(v98 + 48);
          v100 = v188;
          (*v195)(v188, v83, v80);
          sub_100046A08(v83 + v99, v81, type metadata accessor for ConnectedSession);
          if (*(v81 + *(v193 + 20)) == v194)
          {
            Logger.init(subsystem:category:)();
            v101 = v176;
            v102 = v187;
            v170(v176, v190, v187);
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = v101;
              v106 = swift_slowAlloc();
              *v106 = v167;
              v107 = WAError.ErrorCode.rawValue.getter();
              (*v172)(v105, v102);
              *(v106 + 4) = v107;
              _os_log_impl(&_mh_execute_header, v103, v104, "#### Connection Terminated error:%ld", v106, 0xCu);
            }

            else
            {
              (*v172)(v101, v102);
            }

            (*v173)(v181, v178);
            v108 = *(v81 + *(v193 + 40));
            v109 = *(v108 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);

            v110 = WAError.ErrorCode.rawValue.getter();
            if (v110 < -32768)
            {
              goto LABEL_74;
            }

            if (v110 >= 0x8000)
            {
              goto LABEL_75;
            }

            v109(0, 0, 0, 0, 0, 0, 0, 0, 0, v110);

            v111 = *(v108 + 72);
            v112 = *(v108 + 80);

            v113 = WASubscribableService.name.getter();
            sub_1003AF9F0(v111, v112, v113, v114, 2);

            swift_beginAccess();
            v115 = v175;
            v100 = v188;
            sub_1003AD998(v188, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v175);
            v116 = v115;
            v81 = v186;
            sub_100016290(v116, &qword_100597578, &qword_1004B1860);
            swift_endAccess();
            v80 = v189;
            v82 = v185;
            v83 = v184;
          }

          (*v191)(v100, v80);
          sub_1003E8ED4(v81, type metadata accessor for ConnectedSession);
          v25 = v187;
        }

        if (v168 <= v78 + 1)
        {
          v85 = (v78 + 1);
        }

        else
        {
          v85 = v168;
        }

        v86 = v85 - 1;
        while (1)
        {
          v84 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            break;
          }

          if (v84 >= v168)
          {
            v117 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
            (*(*(v117 - 8) + 56))(v82, 1, 1, v117);
            v77 = 0;
            v78 = v86;
            goto LABEL_49;
          }

          v77 = *(v192 + 8 * v84);
          ++v78;
          if (v77)
          {
            v78 = v84;
            goto LABEL_48;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v157 = v162;
      Logger.init(subsystem:category:)();
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&_mh_execute_header, v158, v159, "#### Failure", v160, 2u);
      }

      v173[1](v157, v178);
    }

    (*(v26 + 8))(v190, v25);
  }
}

void NANAgentHandler.startConnectionSession(_:remote:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v318 = a1;
  v288 = *v3;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v292 = &v277 - v5;
  v296 = type metadata accessor for WAError.ErrorCode();
  v289 = *(v296 - 8);
  __chkstk_darwin();
  v295 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for ListenInBoundConnection(0);
  v320 = *(v302 - 8);
  __chkstk_darwin();
  v338 = &v277 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v319 = &v277 - v8;
  sub_10005DC58(&qword_1005989B8, &qword_1004B28B8);
  __chkstk_darwin();
  v328 = &v277 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v327 = &v277 - v10;
  v283 = type metadata accessor for ConnectedSession(0);
  v308 = *(v283 - 8);
  __chkstk_darwin();
  v333 = &v277 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v307 = &v277 - v12;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v329 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v330 = &v277 - v14;
  sub_10005DC58(&qword_100597580, &qword_1004B1868);
  __chkstk_darwin();
  v285 = &v277 - v15;
  v331 = type metadata accessor for NWEndpoint();
  v294 = *(v331 - 8);
  __chkstk_darwin();
  v299 = &v277 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_10005DC58(&qword_1005989D0, &qword_1004B28D0);
  __chkstk_darwin();
  v316 = &v277 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = &v277 - v18;
  v284 = type metadata accessor for ConnectedEndpoints(0);
  v310 = *(v284 - 8);
  __chkstk_darwin();
  v337 = &v277 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v309 = &v277 - v20;
  v342 = type metadata accessor for UUID();
  v341 = *(v342 - 8);
  __chkstk_darwin();
  v336 = &v277 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v340 = &v277 - v22;
  sub_10005DC58(&qword_1005989D8, &qword_1004B28D8);
  __chkstk_darwin();
  v332 = &v277 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v315 = &v277 - v24;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v277 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v324 = &v277 - v28;
  __chkstk_darwin();
  v282 = &v277 - v29;
  __chkstk_darwin();
  v297 = (&v277 - v30);
  __chkstk_darwin();
  v325 = &v277 - v31;
  __chkstk_darwin();
  v33 = &v277 - v32;
  v286 = *(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8);
  __chkstk_darwin();
  v291 = &v277 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v298 = &v277 - v35;
  __chkstk_darwin();
  v323 = &v277 - v36;
  __chkstk_darwin();
  v311 = &v277 - v37;
  __chkstk_darwin();
  v326 = &v277 - v38;
  v287 = v39;
  __chkstk_darwin();
  v41 = &v277 - v40;
  sub_10005DC58(&qword_1005989E8, &qword_1004B28E8);
  v301 = swift_allocBox();
  v43 = v42;
  v44 = type metadata accessor for WASubscribableService();
  v293 = *(v44 - 8);
  v45 = *(v293 + 56);
  v306 = v43;
  v305 = v44;
  v304 = v293 + 56;
  v303 = v45;
  (v45)(v43, 1, 1);
  sub_10005DC58(&qword_1005989F0, &qword_1004B28F0);
  v300 = swift_allocBox();
  v47 = v46;
  v48 = type metadata accessor for WAPairedDevice();
  v278 = *(v48 - 8);
  v49 = *(v278 + 56);
  v290 = v47;
  v281 = v48;
  v280 = v278 + 56;
  v279 = v49;
  (v49)(v47, 1, 1);
  v322 = swift_allocObject();
  *(v322 + 16) = 0;
  v50 = swift_allocObject();
  v51 = [objc_opt_self() zeroAddress];
  v321 = v50;
  *(v50 + 16) = v51;
  nw_endpoint_copy_address_string(a2);
  v52 = String.init(cString:)();
  v54 = v53;
  swift_unknownObjectRetain();
  v339 = v41;
  NWEndpoint.init(_:)();
  v348 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  v57 = os_log_type_enabled(v55, v56);
  v349 = v52;
  v350 = v54;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v52;
    v61 = v59;
    v357 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_100002320(v60, v54, &v357);
    _os_log_impl(&_mh_execute_header, v55, v56, "#### Start Connection Session to remote:%s", v58, 0xCu);
    sub_100002A00(v61);
  }

  v62 = *(v26 + 8);
  v345 = v26 + 8;
  v347 = v62;
  v62(v33, v25);
  v63 = *(v318 + 72);
  v64 = *(v318 + 80);
  v351 = sub_10005E2E4();
  v65 = 0;
  *&v66 = 138412546;
  v343 = v66;
  v317 = v3;
  v344 = v25;
  v314 = v63;
  v313 = v64;
  do
  {
    v67 = *(&off_100573110 + 2 * v65 + 4);
    v68 = *(&off_100573110 + 2 * v65 + 5);
    v357 = v63;
    v358 = v64;
    v355 = v67;
    v356 = v68;
    if (StringProtocol.contains<A>(_:)())
    {
      v335 = v65;
      v69 = swift_unownedRetainStrong();
      sub_10040CAE8(v69, v70, v71, v72);

      v73 = sub_10033ABB0();

      v352 = v73;
      v74 = v325;
      v346 = *(v73 + 16);
      if (v346)
      {
        v75 = 0;
        v76 = (v352 + 34);
        while (1)
        {
          if (v75 >= *(v352 + 16))
          {
            goto LABEL_114;
          }

          v77 = (*v76 << 16) | (*(v76 - 1) << 8);
          v353 = *(v76 - 2);
          v78 = WiFiAddress.apiAddress.getter(v77 | v353);
          v354 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
          v80 = v79;

          Logger.init(subsystem:category:)();

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v357 = v85;
            *v83 = v343;
            v86 = WiFiAddress.apiAddress.getter(v77 | v353);
            *(v83 + 4) = v86;
            *v84 = v86;
            *(v83 + 12) = 2080;
            v87 = v354;
            *(v83 + 14) = sub_100002320(v354, v80, &v357);
            _os_log_impl(&_mh_execute_header, v81, v82, "#### Current Datapath mac:%@ ipv6: %s", v83, 0x16u);
            sub_100016290(v84, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v85);

            v25 = v344;

            v347(v74, v25);
          }

          else
          {

            v347(v74, v25);
            v87 = v354;
          }

          v357 = v349;
          v358 = v350;
          v355 = v87;
          v356 = v80;
          if (StringProtocol.contains<A>(_:)())
          {
            break;
          }

          ++v75;

          v76 = (v76 + 6);
          if (v346 == v75)
          {
            goto LABEL_4;
          }
        }

        v88 = v87;

        v89 = v297;
        Logger.init(subsystem:category:)();
        v90 = v350;

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = v80;
          v94 = swift_slowAlloc();
          v357 = swift_slowAlloc();
          *v94 = 136315394;
          v95 = sub_100002320(v349, v90, &v357);

          *(v94 + 4) = v95;
          *(v94 + 12) = 2080;
          v96 = sub_100002320(v88, v93, &v357);

          *(v94 + 14) = v96;
          _os_log_impl(&_mh_execute_header, v91, v92, "#### Found matching remote endpoint:%s ipv6: %s", v94, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v347(v89, v25);
        v97 = *(v318 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
        v98 = *(v318 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);

        v99 = nw_interface_create_with_name();
        v100 = String.utf8CString.getter();
        v97(0, v98, 0, v99, v100 + 32, 0, 0, sub_1003D49A0, 0, 0);

        swift_unknownObjectRelease();
        sub_100016290(v339, &qword_1005989E0, &qword_1004B28E0);

LABEL_20:

LABEL_21:

        return;
      }

LABEL_4:

      v3 = v317;
      v63 = v314;
      v64 = v313;
      v65 = v335;
    }

    ++v65;
  }

  while (v65 != 12);
  v101._countAndFlagsBits = 0x6269726373627553;
  v102._countAndFlagsBits = 0xD00000000000001ELL;
  v102._object = 0x80000001004B8650;
  v101._object = 0xE900000000000065;
  if (Int32.checkEntitlement(for_:capabilities:)(v102, v101) || (v103._countAndFlagsBits = 0x6873696C627550, v104._countAndFlagsBits = 0xD00000000000001ELL, v104._object = 0x80000001004B8650, v103._object = 0xE700000000000000, Int32.checkEntitlement(for_:capabilities:)(v104, v103)))
  {
    swift_beginAccess();
    v105 = v3[8];
    v106 = v105 + 64;
    v107 = 1 << *(v105 + 32);
    v108 = -1;
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    v109 = v108 & *(v105 + 64);
    v277 = ((v107 + 63) >> 6);
    v351 = v341 + 16;
    v353 = v341 + 32;
    *&v343 = v294 + 16;
    v335 = (v294 + 56);
    v346 = v294 + 48;
    v297 = (v294 + 32);
    v314 = (v294 + 8);
    v352 = v341 + 8;
    v313 = v105;

    v110 = 0;
    v111 = v342;
    v112 = v331;
    v354 = v106;
    while (1)
    {
      v115 = v332;
      if (v109)
      {
        v116 = v110;
        goto LABEL_40;
      }

      if (v277 <= v110 + 1)
      {
        v117 = (v110 + 1);
      }

      else
      {
        v117 = v277;
      }

      v118 = v117 - 1;
      do
      {
        v116 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_116;
        }

        if (v116 >= v277)
        {
          v147 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
          (*(*(v147 - 8) + 56))(v115, 1, 1, v147);
          v109 = 0;
          v110 = v118;
          goto LABEL_41;
        }

        v109 = *(v106 + 8 * v116);
        ++v110;
      }

      while (!v109);
      v110 = v116;
LABEL_40:
      v119 = __clz(__rbit64(v109));
      v109 &= v109 - 1;
      v120 = v119 | (v116 << 6);
      v121 = v313;
      v122 = v341;
      v123 = v340;
      (*(v341 + 16))(v340, *(v313 + 48) + *(v341 + 72) * v120, v111);
      v124 = v111;
      v125 = v309;
      sub_1003E8CDC(*(v121 + 56) + *(v310 + 72) * v120, v309, type metadata accessor for ConnectedEndpoints);
      v126 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      v127 = *(v126 + 48);
      v128 = *(v122 + 32);
      v129 = v332;
      v128(v332, v123, v124);
      v130 = &v129[v127];
      v115 = v129;
      sub_100046A08(v125, v130, type metadata accessor for ConnectedEndpoints);
      (*(*(v126 - 8) + 56))(v129, 0, 1, v126);
      v112 = v331;
LABEL_41:
      v131 = v115;
      v132 = v315;
      sub_10001CEA8(v131, v315, &qword_1005989D8, &qword_1004B28D8);
      v133 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      v134 = (*(*(v133 - 8) + 48))(v132, 1, v133);
      LODWORD(v325) = v134 != 1;
      v135 = v326;
      if (v134 == 1)
      {

        LODWORD(v332) = 0;
        v148 = v317;
        v111 = v342;
        goto LABEL_56;
      }

      v136 = *(v133 + 48);
      (*v353)(v336, v132, v342);
      v137 = v132 + v136;
      v138 = v337;
      sub_100046A08(v137, v337, type metadata accessor for ConnectedEndpoints);
      (*v343)(v135, v138, v112);
      (*v335)(v135, 0, 1, v112);
      v139 = *(v334 + 48);
      v140 = v312;
      sub_100012400(v135, v312, &qword_1005989E0, &qword_1004B28E0);
      sub_100012400(v339, v140 + v139, &qword_1005989E0, &qword_1004B28E0);
      v141 = *v346;
      if ((*v346)(v140, 1, v112) == 1)
      {
        break;
      }

      v142 = v311;
      sub_100012400(v140, v311, &qword_1005989E0, &qword_1004B28E0);
      if (v141(v140 + v139, 1, v112) == 1)
      {
        sub_100016290(v326, &qword_1005989E0, &qword_1004B28E0);
        (*v314)(v142, v112);
        v114 = v140;
        v106 = v354;
LABEL_28:
        sub_100016290(v114, &qword_1005989D0, &qword_1004B28D0);
        v111 = v342;
        goto LABEL_29;
      }

      v143 = v299;
      (*v297)(v299, v140 + v139, v112);
      sub_10001ADA4(&qword_100598A10, &type metadata accessor for NWEndpoint, &protocol conformance descriptor for NWEndpoint);
      v144 = dispatch thunk of static Equatable.== infix(_:_:)();
      v145 = *v314;
      v146 = v311;
      (*v314)(v143, v112);
      sub_100016290(v326, &qword_1005989E0, &qword_1004B28E0);
      v145(v146, v112);
      sub_100016290(v140, &qword_1005989E0, &qword_1004B28E0);
      v111 = v342;
      v106 = v354;
      if (v144)
      {
        goto LABEL_55;
      }

LABEL_29:
      sub_1003E8ED4(v337, type metadata accessor for ConnectedEndpoints);
      (*v352)(v336, v111);
    }

    sub_100016290(v135, &qword_1005989E0, &qword_1004B28E0);
    v113 = v141(v140 + v139, 1, v112) == 1;
    v114 = v140;
    v106 = v354;
    if (v113)
    {
      sub_100016290(v140, &qword_1005989E0, &qword_1004B28E0);
      v111 = v342;
LABEL_55:
      v158 = v284;
      v159 = v337;
      LODWORD(v332) = *(v337 + *(v284 + 20));
      sub_10036D434(v337 + *(v284 + 28), v306, &qword_1005989E8, &qword_1004B28E8);
      sub_10036D434(v159 + v158[8], v290, &qword_1005989F0, &qword_1004B28F0);
      *(v322 + 16) = *(v159 + v158[6]);
      v148 = v317;
      swift_beginAccess();
      v160 = v285;
      v161 = v336;
      sub_1003AD998(v336, type metadata accessor for ConnectedEndpoints, type metadata accessor for ConnectedEndpoints, sub_100469D74, sub_10046DDAC, v285);
      sub_100016290(v160, &qword_100597580, &qword_1004B1868);
      swift_endAccess();

      (*v352)(v161, v111);
      v162 = *(v159 + v158[9]);
      sub_1003E8ED4(v159, type metadata accessor for ConnectedEndpoints);
      v163 = *(v321 + 16);
      *(v321 + 16) = v162;

LABEL_56:
      swift_beginAccess();
      v164 = v148[10];
      v165 = *(v164 + 64);
      v354 = v164 + 64;
      v166 = 1 << *(v164 + 32);
      v167 = -1;
      if (v166 < 64)
      {
        v167 = ~(-1 << v166);
      }

      v168 = v167 & v165;
      v326 = (v166 + 63) >> 6;
      v337 = v164;

      v169 = 0;
      v170 = v330;
      v171 = v316;
      v172 = v346;
      v173 = v329;
      while (2)
      {
        if (!v168)
        {
          if (v326 <= v169 + 1)
          {
            v176 = v169 + 1;
          }

          else
          {
            v176 = v326;
          }

          v177 = v176 - 1;
          while (1)
          {
            v175 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              goto LABEL_117;
            }

            if (v175 >= v326)
            {
              v201 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
              (*(*(v201 - 8) + 56))(v173, 1, 1, v201);
              v168 = 0;
              v169 = v177;
              goto LABEL_73;
            }

            v168 = *(v354 + 8 * v175);
            ++v169;
            if (v168)
            {
              v169 = v175;
              goto LABEL_72;
            }
          }
        }

        v175 = v169;
LABEL_72:
        v178 = __clz(__rbit64(v168));
        v168 &= v168 - 1;
        v179 = v178 | (v175 << 6);
        v180 = v337;
        v181 = v341;
        v182 = v340;
        (*(v341 + 16))(v340, *(v337 + 48) + *(v341 + 72) * v179, v111);
        v183 = v307;
        sub_1003E8CDC(*(v180 + 56) + *(v308 + 72) * v179, v307, type metadata accessor for ConnectedSession);
        v184 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        v185 = *(v184 + 48);
        v186 = *(v181 + 32);
        v187 = v329;
        v186(v329, v182, v111);
        v188 = &v187[v185];
        v173 = v187;
        sub_100046A08(v183, v188, type metadata accessor for ConnectedSession);
        (*(*(v184 - 8) + 56))(v187, 0, 1, v184);
        v170 = v330;
        v171 = v316;
        v172 = v346;
LABEL_73:
        sub_10001CEA8(v173, v170, &unk_1005989C0, &unk_1004B28C0);
        v189 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        if ((*(*(v189 - 8) + 48))(v170, 1, v189) == 1)
        {

          LODWORD(v343) = 0;
          v202 = v317;
          v203 = v293;
          v111 = v342;
          goto LABEL_85;
        }

        v190 = v170 + *(v189 + 48);
        v191 = v333;
        sub_100046A08(v190, v333, type metadata accessor for ConnectedSession);
        v192 = v323;
        v193 = v331;
        (*v343)(v323, v191, v331);
        (*v335)(v192, 0, 1, v193);
        v194 = *(v334 + 48);
        sub_100012400(v192, v171, &qword_1005989E0, &qword_1004B28E0);
        sub_100012400(v339, v171 + v194, &qword_1005989E0, &qword_1004B28E0);
        v195 = *v172;
        if ((*v172)(v171, 1, v193) == 1)
        {
          sub_100016290(v192, &qword_1005989E0, &qword_1004B28E0);
          v174 = v195(v171 + v194, 1, v193);
          v173 = v329;
          v170 = v330;
          v111 = v342;
          if (v174 == 1)
          {
            sub_100016290(v171, &qword_1005989E0, &qword_1004B28E0);
LABEL_82:
            v204 = v283;
            v205 = v333;
            LODWORD(v332) = *(v333 + *(v283 + 20));
            v206 = v306;
            sub_100016290(v306, &qword_1005989E8, &qword_1004B28E8);
            v203 = v293;
            v207 = v305;
            (*(v293 + 16))(v206, v205 + v204[7], v305);
            v303(v206, 0, 1, v207);
            v208 = v290;
            sub_100016290(v290, &qword_1005989F0, &qword_1004B28F0);
            v209 = v281;
            (*(v278 + 16))(v208, v205 + v204[8], v281);
            v279(v208, 0, 1, v209);
            *(v322 + 16) = *(v205 + v204[6]);
            v210 = v282;
            Logger.init(subsystem:category:)();
            v211 = Logger.logObject.getter();
            v212 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v211, v212))
            {
              v213 = swift_slowAlloc();
              *v213 = 0;
              _os_log_impl(&_mh_execute_header, v211, v212, "#### Connection Ready", v213, 2u);
            }

            v347(v210, v344);
            v214 = v333;
            LODWORD(v343) = *(v333 + v204[9]);
            v215 = *(v333 + v204[12]);
            sub_1003E8ED4(v214, type metadata accessor for ConnectedSession);
            v216 = *(v321 + 16);
            *(v321 + 16) = v215;

            (*v352)(v330, v111);
            LODWORD(v325) = 1;
            v202 = v317;
LABEL_85:
            swift_beginAccess();
            v217 = v202[9];
            v218 = *(v217 + 64);
            v354 = v217 + 64;
            v219 = 1 << *(v217 + 32);
            v220 = -1;
            if (v219 < 64)
            {
              v220 = ~(-1 << v219);
            }

            v221 = v220 & v218;
            v336 = (v219 + 63) >> 6;
            v337 = v203 + 16;
            v346 = v217;

            v222 = 0;
            while (1)
            {
              if (!v221)
              {
                if (v336 <= v222 + 1)
                {
                  v225 = v222 + 1;
                }

                else
                {
                  v225 = v336;
                }

                v226 = v225 - 1;
                while (1)
                {
                  v224 = v222 + 1;
                  if (__OFADD__(v222, 1))
                  {
                    goto LABEL_115;
                  }

                  if (v224 >= v336)
                  {
                    v254 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
                    v236 = v328;
                    (*(*(v254 - 8) + 56))(v328, 1, 1, v254);
                    v221 = 0;
                    v222 = v226;
                    goto LABEL_101;
                  }

                  v221 = *(v354 + 8 * v224);
                  ++v222;
                  if (v221)
                  {
                    v222 = v224;
                    goto LABEL_100;
                  }
                }
              }

              v224 = v222;
LABEL_100:
              v227 = __clz(__rbit64(v221));
              v221 &= v221 - 1;
              v228 = v227 | (v224 << 6);
              v229 = v346;
              v230 = v341;
              v231 = v340;
              (*(v341 + 16))(v340, *(v346 + 48) + *(v341 + 72) * v228, v111);
              v232 = v319;
              sub_1003E8CDC(*(v229 + 56) + *(v320 + 72) * v228, v319, type metadata accessor for ListenInBoundConnection);
              v233 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
              v234 = *(v233 + 48);
              v235 = v111;
              v236 = v328;
              (*(v230 + 32))(v328, v231, v235);
              sub_100046A08(v232, &v236[v234], type metadata accessor for ListenInBoundConnection);
              (*(*(v233 - 8) + 56))(v236, 0, 1, v233);
LABEL_101:
              v237 = v236;
              v238 = v327;
              sub_10001CEA8(v237, v327, &qword_1005989B8, &qword_1004B28B8);
              v239 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
              if ((*(*(v239 - 8) + 48))(v238, 1, v239) == 1)
              {
                break;
              }

              v240 = v338;
              sub_100046A08(v238 + *(v239 + 48), v338, type metadata accessor for ListenInBoundConnection);
              v241 = *v240;
              v242._countAndFlagsBits = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
              v243 = String.hasPrefix(_:)(v242);

              if (v243)
              {
                Logger.init(subsystem:category:)();
                v244 = Logger.logObject.getter();
                v245 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v244, v245))
                {
                  v246 = swift_slowAlloc();
                  *v246 = 0;
                  _os_log_impl(&_mh_execute_header, v244, v245, "#### Found InBoundConnection", v246, 2u);
                }

                v347(v324, v344);
                v247 = v338;
                LODWORD(v332) = *(v338 + 8);
                v248 = v302;
                *(v322 + 16) = *(v338 + *(v302 + 28));
                v249 = v306;
                sub_100016290(v306, &qword_1005989E8, &qword_1004B28E8);
                v250 = v247 + *(v248 + 24);
                v251 = v305;
                (*v337)(v249, v250, v305);
                LODWORD(v343) = 1;
                v303(v249, 0, 1, v251);
                v252 = v241;
                sub_1003E8ED4(v247, type metadata accessor for ListenInBoundConnection);
                v253 = *(v321 + 16);
                *(v321 + 16) = v252;

                LODWORD(v325) = 1;
              }

              else
              {
                sub_1003E8ED4(v240, type metadata accessor for ListenInBoundConnection);
              }

              v223 = v238;
              v111 = v342;
              (*v352)(v223, v342);
            }

            if (v325)
            {
              v255 = type metadata accessor for TaskPriority();
              (*(*(v255 - 8) + 56))(v292, 1, 1, v255);
              sub_100012400(v339, v291, &qword_1005989E0, &qword_1004B28E0);
              v256 = (*(v286 + 80) + 88) & ~*(v286 + 80);
              v257 = v256 + v287;
              v258 = (v256 + v287 + 9) & 0xFFFFFFFFFFFFFFF8;
              v259 = swift_allocObject();
              v259[2] = 0;
              v259[3] = 0;
              v260 = v288;
              v259[4] = *(v288 + 80);
              v261 = v300;
              v259[5] = *(v260 + 88);
              v259[6] = v261;
              v262 = v318;
              v259[7] = v317;
              v259[8] = v262;
              v263 = v301;
              v259[9] = v322;
              v259[10] = v263;
              sub_10001CEA8(v291, v259 + v256, &qword_1005989E0, &qword_1004B28E0);
              v264 = v259 + v257;
              *v264 = v332;
              v264[1] = v343 & 1;
              v265 = (v259 + v258);
              v266 = v350;
              *v265 = v349;
              v265[1] = v266;
              *(v259 + ((v258 + 23) & 0xFFFFFFFFFFFFFFF8)) = v321;

              sub_1003ACB3C(0, 0, v292, &unk_1004B2918, v259);

              sub_100016290(v339, &qword_1005989E0, &qword_1004B28E0);
              goto LABEL_20;
            }

            v267 = *(v318 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
            v268 = v289;
            v269 = *(v289 + 104);
            v270 = v295;
            v271 = v296;
            v269(v295, enum case for WAError.ErrorCode.connectionTerminated(_:), v296);

            v272 = WAError.ErrorCode.rawValue.getter();
            v273 = *(v268 + 8);
            v273(v270, v271);
            if (v272 < -32768)
            {
              goto LABEL_118;
            }

            if (v272 >= 0x8000)
            {
              goto LABEL_119;
            }

            v267(0, 0, 0, 0, 0, 0, 0, 0, 0, v272);

            v274 = v295;
            v275 = v296;
            v269(v295, enum case for WAError.ErrorCode.connectionFailed(_:), v296);
            v276 = WAError.ErrorCode.rawValue.getter();
            v273(v274, v275);
            sub_100016290(v339, &qword_1005989E0, &qword_1004B28E0);

            if (v276 < 0xFFFFFFFF80000000)
            {
              goto LABEL_120;
            }

            if (v276 <= 0x7FFFFFFF)
            {
              goto LABEL_21;
            }

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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

LABEL_60:
          sub_100016290(v171, &qword_1005989D0, &qword_1004B28D0);
        }

        else
        {
          v196 = v298;
          sub_100012400(v171, v298, &qword_1005989E0, &qword_1004B28E0);
          if (v195(v171 + v194, 1, v193) == 1)
          {
            sub_100016290(v323, &qword_1005989E0, &qword_1004B28E0);
            (*v314)(v196, v193);
            v111 = v342;
            v172 = v346;
            v173 = v329;
            v170 = v330;
            goto LABEL_60;
          }

          v197 = v171 + v194;
          v198 = v299;
          (*v297)(v299, v197, v193);
          sub_10001ADA4(&qword_100598A10, &type metadata accessor for NWEndpoint, &protocol conformance descriptor for NWEndpoint);
          LODWORD(v336) = dispatch thunk of static Equatable.== infix(_:_:)();
          v199 = *v314;
          v200 = v198;
          v171 = v316;
          (*v314)(v200, v193);
          sub_100016290(v323, &qword_1005989E0, &qword_1004B28E0);
          v199(v196, v193);
          sub_100016290(v171, &qword_1005989E0, &qword_1004B28E0);
          v111 = v342;
          v172 = v346;
          v173 = v329;
          v170 = v330;
          if (v336)
          {
            goto LABEL_82;
          }
        }

        sub_1003E8ED4(v333, type metadata accessor for ConnectedSession);
        (*v352)(v170, v111);
        continue;
      }
    }

    goto LABEL_28;
  }

  v149 = v277;
  Logger.init(subsystem:category:)();

  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v357 = v153;
    *v152 = 136315138;
    *(v152 + 4) = sub_100002320(v63, v64, &v357);
    _os_log_impl(&_mh_execute_header, v150, v151, "#### No Entitlement for bundleId: %s", v152, 0xCu);
    sub_100002A00(v153);
  }

  v347(v149, v25);
  v154 = v289;
  v155 = v295;
  v156 = v296;
  (*(v289 + 104))(v295, enum case for WAError.ErrorCode.entitlementMissing(_:), v296);
  v157 = WAError.ErrorCode.rawValue.getter();
  (*(v154 + 8))(v155, v156);
  sub_100016290(v339, &qword_1005989E0, &qword_1004B28E0);

  if (v157 < 0xFFFFFFFF80000000)
  {
    goto LABEL_121;
  }

  if (v157 <= 0x7FFFFFFF)
  {
    goto LABEL_21;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_1003D49A0(char a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  sub_1003AE20C(a2, &v24 - v10);
  sub_100012400(v11, v9, &qword_10058F4D0, &qword_100491AB0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_100016290(v9, &qword_10058F4D0, &qword_100491AB0);
    v14 = 0xE100000000000000;
    v15 = 45;
  }

  else
  {
    v15 = UUID.uuidString.getter();
    v14 = v16;
    (*(v13 + 8))(v9, v12);
  }

  Logger.init(subsystem:category:)();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v4;
    v25 = v20;
    v21 = v20;
    *v19 = 67109378;
    *(v19 + 4) = a1 & 1;
    *(v19 + 8) = 2080;
    v22 = sub_100002320(v15, v14, &v25);

    *(v19 + 10) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "#### ASSIGNED FLOW status(%{BOOL}d) flow ID: %s", v19, 0x12u);
    sub_100002A00(v21);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
}

uint64_t sub_1003D4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v24;
  *(v8 + 352) = v25;
  *(v8 + 328) = v21;
  *(v8 + 336) = v23;
  *(v8 + 792) = v22;
  *(v8 + 312) = a6;
  *(v8 + 320) = a7;
  *(v8 + 304) = a5;
  v9 = *a5;
  v10 = type metadata accessor for WAPathAgentInterface.AgentToPath();
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  sub_10005DC58(&unk_100599490, &qword_1004B2DF8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  *(v8 + 400) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 408) = v11;
  v12 = *(v11 - 8);
  *(v8 + 416) = v12;
  *(v8 + 424) = *(v12 + 64);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  v13 = type metadata accessor for WAPairedDevice();
  *(v8 + 448) = v13;
  *(v8 + 456) = *(v13 - 8);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  v14 = type metadata accessor for WASubscribableService();
  *(v8 + 480) = v14;
  *(v8 + 488) = *(v14 - 8);
  *(v8 + 496) = swift_task_alloc();
  sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  *(v8 + 504) = swift_task_alloc();
  v15 = type metadata accessor for NWEndpoint();
  *(v8 + 512) = v15;
  *(v8 + 520) = *(v15 - 8);
  *(v8 + 528) = swift_task_alloc();
  sub_10005DC58(&qword_1005989E8, &qword_1004B28E8);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  sub_10005DC58(&qword_100594A30, &qword_1004B2E00);
  *(v8 + 568) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v8 + 576) = v16;
  *(v8 + 584) = *(v16 - 8);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v17 = *(v9 + 88);
  *(v8 + 632) = v17;
  *(v8 + 640) = *(v17 + 8);
  *(v8 + 648) = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 656) = AssociatedTypeWitness;
  *(v8 + 664) = *(AssociatedTypeWitness - 8);
  *(v8 + 672) = swift_task_alloc();
  sub_10005DC58(&qword_1005989F0, &qword_1004B28F0);
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_projectBox();
  *(v8 + 712) = swift_projectBox();

  return _swift_task_switch(sub_1003D5278, 0, 0);
}

uint64_t sub_1003D5278()
{
  v164 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  swift_beginAccess();
  sub_100012400(v1, v2, &qword_1005989F0, &qword_1004B28F0);
  v5 = *(v4 + 48);
  *(v0 + 720) = v5;
  *(v0 + 728) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v5(v2, 1, v3);
  sub_100016290(v2, &qword_1005989F0, &qword_1004B28F0);
  if (v1 == 1)
  {
    v6 = *(v0 + 672);
    v7 = *(v0 + 664);
    v8 = *(v0 + 656);
    v9 = *(v0 + 312);
    v10 = *(*(v0 + 304) + 24);
    swift_unownedRetainStrong();
    (*(v7 + 16))(v6, v10 + *(*v10 + 112), v8);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 136))(v8, AssociatedConformanceWitness);
    *(v0 + 736) = v12;
    (*(v7 + 8))(v6, v8);
    *(v0 + 744) = *(v9 + 72);
    *(v0 + 752) = *(v9 + 80);
    v13 = *v12;
    *(v0 + 760) = *(*v12 + 408);
    *(v0 + 768) = (v13 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;
    v14 = sub_1003D6534;
    v15 = v12;
    v16 = 0;

    return _swift_task_switch(v14, v15, v16);
  }

  v17 = *(v0 + 712);
  v18 = *(v0 + 560);
  v19 = *(v0 + 480);
  v20 = *(v0 + 488);
  swift_beginAccess();
  sub_100012400(v17, v18, &qword_1005989E8, &qword_1004B28E8);
  v21 = *(v20 + 48);
  LODWORD(v17) = v21(v18, 1, v19);
  sub_100016290(v18, &qword_1005989E8, &qword_1004B28E8);
  if (v17 == 1)
  {
    v22 = *(v0 + 712);
    v23 = *(v0 + 552);
    v24 = *(v0 + 480);
    v25 = *(v0 + 488);

    WASubscribableService.init(name:)();
    (*(v25 + 56))(v23, 0, 1, v24);
    swift_beginAccess();
    sub_1000B1B78(v23, v22, &qword_1005989E8, &qword_1004B28E8);
  }

  v26 = *(v0 + 520);
  v27 = *(v0 + 504);
  v28 = *(v0 + 512);
  sub_100012400(*(v0 + 328), v27, &qword_1005989E0, &qword_1004B28E0);
  if ((*(v26 + 48))(v27, 1, v28) == 1)
  {
    v29 = *(v0 + 504);
    v30 = &qword_1005989E0;
    v31 = &qword_1004B28E0;
LABEL_13:
    sub_100016290(v29, v30, v31);
    v45 = (v0 + 592);
    Logger.init(subsystem:category:)();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "#### Failed to get endpoint", v48, 2u);
    }

    v49 = v0 + 584;
    v50 = (v0 + 576);
    goto LABEL_16;
  }

  v32 = *(v0 + 712);
  v33 = *(v0 + 544);
  v34 = *(v0 + 480);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  swift_beginAccess();
  sub_100012400(v32, v33, &qword_1005989E8, &qword_1004B28E8);
  if (v21(v33, 1, v34) == 1)
  {
    v35 = *(v0 + 544);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v30 = &qword_1005989E8;
    v31 = &qword_1004B28E8;
    v29 = v35;
    goto LABEL_13;
  }

  v36 = *(v0 + 720);
  v37 = *(v0 + 704);
  v38 = *(v0 + 680);
  v39 = *(v0 + 448);
  (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 544), *(v0 + 480));
  swift_beginAccess();
  sub_100012400(v37, v38, &qword_1005989F0, &qword_1004B28F0);
  v40 = v36(v38, 1, v39);
  v41 = *(v0 + 680);
  if (v40 == 1)
  {
    v42 = *(v0 + 528);
    v43 = *(v0 + 520);
    v44 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
    (*(v43 + 8))(v42, v44);
    v30 = &qword_1005989F0;
    v31 = &qword_1004B28F0;
    v29 = v41;
    goto LABEL_13;
  }

  v151 = *(v0 + 536);
  v129 = *(v0 + 528);
  v53 = *(v0 + 520);
  v127 = *(v0 + 512);
  v159 = *(v0 + 496);
  v134 = *(v0 + 488);
  v161 = *(v0 + 480);
  v156 = *(v0 + 472);
  v54 = *(v0 + 456);
  v132 = *(v0 + 448);
  v55 = *(v0 + 432);
  v56 = *(v0 + 440);
  v58 = *(v0 + 408);
  v57 = *(v0 + 416);
  v59 = *(v0 + 400);
  v154 = *(v0 + 392);
  v136 = *(v0 + 352);
  v144 = *(v0 + 336);
  v146 = *(v0 + 344);
  v142 = *(v0 + 793);
  v138 = *(v0 + 792);
  v60 = *(v0 + 320);
  v140 = *(v0 + 312);
  (*(v54 + 32))();
  UUID.init()();
  v126 = *(v57 + 16);
  v126(v55, v56, v58);
  (*(v53 + 16))(v59, v129, v127);
  swift_beginAccess();
  v61 = *(v60 + 16);
  v62 = type metadata accessor for ConnectedSession(0);
  v130 = *(v134 + 16);
  v130(v59 + v62[7], v159, v161);
  v63 = v156;
  v157 = *(v54 + 16);
  v157(v59 + v62[8], v63, v132);
  swift_beginAccess();
  v64 = *(v136 + 16);
  (*(v57 + 56))(v59 + v62[13], 1, 1, v58);
  *(v59 + v62[5]) = v138;
  *(v59 + v62[6]) = v61;
  *(v59 + v62[9]) = v142 & 1;
  *(v59 + v62[10]) = v140;
  v65 = (v59 + v62[11]);
  *v65 = v144;
  v65[1] = v146;
  *(v59 + v62[12]) = v64;
  (*(*(v62 - 1) + 56))(v59, 0, 1, v62);
  swift_beginAccess();

  v66 = v64;

  sub_100338D30(v59, v55);
  swift_endAccess();
  v67 = *(v134 + 56);
  v67(v151, 1, 1, v161);
  v68 = type metadata accessor for WAPublishableService();
  v69 = *(*(v68 - 8) + 56);
  v69(v154, 1, 1, v68);
  if (v142)
  {
    v71 = *(v0 + 384);
    v70 = *(v0 + 392);
    WASubscribableService.name.getter();
    WAPublishableService.init(name:)();
    sub_100016290(v70, &unk_100599490, &qword_1004B2DF8);
    v69(v71, 0, 1, v68);
    sub_10001CEA8(v71, v70, &unk_100599490, &qword_1004B2DF8);
  }

  else
  {
    v72 = *(v0 + 536);
    v73 = *(v0 + 496);
    v74 = *(v0 + 480);
    sub_100016290(v72, &qword_1005989E8, &qword_1004B28E8);
    v130(v72, v73, v74);
    v67(v72, 0, 1, v74);
  }

  v75 = *(v0 + 552);
  v76 = *(v0 + 536);
  v77 = *(v0 + 464);
  v78 = *(v0 + 472);
  v79 = *(v0 + 448);
  v80 = *(v0 + 352);
  sub_100012400(*(v0 + 392), *(v0 + 384), &unk_100599490, &qword_1004B2DF8);
  sub_100012400(v76, v75, &qword_1005989E8, &qword_1004B28E8);
  v157(v77, v78, v79);
  swift_beginAccess();
  v81 = *(v80 + 16);
  v82 = WiFiMACAddress.wifiAddress.getter();

  WiFiAddress.data.getter(v82 & 0xFFFFFFFFFFFFLL);
  WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)();
  v83 = WAPathAgentInterface.AgentToPath.encode()();
  v85 = v84;
  v86 = sub_1003D8BBC(v83, v84);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v83, v85);

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();

  v162 = v86;
  if (!os_log_type_enabled(v87, v88))
  {
    v92 = *(v0 + 608);
    v93 = *(v0 + 584);
    v94 = *(v0 + 576);
    sub_1000124C8(v83, v85);

    (*(v93 + 8))(v92, v94);
    v90 = v85 >> 62;
    goto LABEL_35;
  }

  v89 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v155 = v14;
  v163[0] = v14;
  *v89 = 134218242;
  v90 = v85 >> 62;
  if ((v85 >> 62) > 1)
  {
    if (v90 != 2)
    {
      v91 = 0;
      goto LABEL_34;
    }

    v96 = *(v83 + 16);
    v95 = *(v83 + 24);
    v97 = __OFSUB__(v95, v96);
    v91 = v95 - v96;
    if (!v97)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_31:
    LODWORD(v91) = HIDWORD(v83) - v83;
    if (__OFSUB__(HIDWORD(v83), v83))
    {
      goto LABEL_48;
    }

    v91 = v91;
    goto LABEL_34;
  }

  if (v90)
  {
    goto LABEL_31;
  }

  v91 = BYTE6(v85);
LABEL_34:
  v98 = *(v0 + 584);
  v149 = *(v0 + 576);
  v152 = *(v0 + 608);
  v99 = *(v0 + 352);
  *(v89 + 4) = v91;
  sub_1000124C8(v83, v85);
  *(v89 + 12) = 2080;
  swift_beginAccess();
  v100 = *(v99 + 16);
  v101 = WiFiMACAddress.wifiAddress.getter();

  v102 = WiFiAddress.description.getter(v101 & 0xFFFFFFFFFFFFLL);
  v104 = sub_100002320(v102, v103, v163);

  *(v89 + 14) = v104;
  _os_log_impl(&_mh_execute_header, v87, v88, "#### remote endpoint assigned with nwPathStat length: %ld WiFiAddress %s", v89, 0x16u);
  sub_100002A00(v155);

  (*(v98 + 8))(v152, v149);
LABEL_35:
  v105 = *(v0 + 312);
  v153 = *(v105 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
  v150 = *(v105 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);

  v14 = nw_interface_create_with_name();
  v148 = v14;
  v158 = v85;
  v160 = v83;
  if (v90 <= 1)
  {
    if (!v90)
    {
      v106 = BYTE6(v85);
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v90 != 2)
  {
    v123 = 0;
    goto LABEL_46;
  }

  v108 = *(v83 + 16);
  v107 = *(v83 + 24);
  v97 = __OFSUB__(v107, v108);
  v106 = v107 - v108;
  if (v97)
  {
    __break(1u);
LABEL_42:
    LODWORD(v106) = HIDWORD(v83) - v83;
    if (!__OFSUB__(HIDWORD(v83), v83))
    {
      v106 = v106;
      goto LABEL_44;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return _swift_task_switch(v14, v15, v16);
  }

LABEL_44:
  v123 = v106;
LABEL_46:
  v109 = *(v0 + 648);
  v110 = *(v0 + 632);
  v124 = *(v0 + 496);
  v145 = *(v0 + 488);
  v147 = *(v0 + 480);
  v143 = *(v0 + 472);
  v137 = *(v0 + 536);
  v139 = *(v0 + 456);
  v141 = *(v0 + 448);
  v111 = *(v0 + 432);
  v112 = *(v0 + 416);
  v113 = *(v0 + 408);
  v133 = *(v0 + 392);
  v135 = *(v0 + 440);
  v125 = *(v0 + 368);
  v128 = *(v0 + 360);
  v131 = *(v0 + 376);
  v114 = *(v0 + 304);
  v122 = *(v0 + 312);
  (v126)(v111);
  v115 = (*(v112 + 80) + 40) & ~*(v112 + 80);
  v116 = swift_allocObject();
  *(v116 + 2) = v109;
  *(v116 + 3) = v110;
  *(v116 + 4) = v114;
  (*(v112 + 32))(&v116[v115], v111, v113);
  v117 = String.utf8CString.getter();

  v153(0, v150, 0, v148, v117 + 32, v123, v162, sub_1003EA1D8, v116, 0);
  swift_unknownObjectRelease();

  v118 = *(v122 + 72);
  v119 = *(v122 + 80);
  v120 = WASubscribableService.name.getter();
  sub_1003AE988(v118, v119, v120, v121, 2);

  sub_1000124C8(v160, v158);
  (*(v125 + 8))(v131, v128);
  sub_100016290(v133, &unk_100599490, &qword_1004B2DF8);
  sub_100016290(v137, &qword_1005989E8, &qword_1004B28E8);
  (*(v112 + 8))(v135, v113);
  (*(v139 + 8))(v143, v141);
  (*(v145 + 8))(v124, v147);
  v49 = v0 + 520;
  v45 = (v0 + 528);
  v50 = (v0 + 512);
LABEL_16:
  (*(*v49 + 8))(*v45, *v50);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1003D6534()
{
  *(v0 + 776) = (*(v0 + 760))(*(v0 + 744), *(v0 + 752), 1);
  *(v0 + 784) = 0;

  return _swift_task_switch(sub_1003D65E0, 0, 0);
}

void sub_1003D65E0()
{
  v196 = v0;
  v3 = *(v0 + 776);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v4)
  {
LABEL_13:
    v12 = (v0 + 616);

    Logger.init(subsystem:category:)();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "#### DeviceID not match";
      goto LABEL_27;
    }

LABEL_28:

    v56 = v0 + 584;
    v9 = (v0 + 576);
LABEL_29:
    (*(*v56 + 8))(*v12, *v9);

    v57 = *(v0 + 8);

    v57();
    return;
  }

  v5 = 0;
  v6 = (v3 & 0xC000000000000001);
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = *(v0 + 776) + 32;
  v9 = &unk_100588000;
  while (1)
  {
    if (v6)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_46;
      }

      v10 = *(v8 + 8 * v5);
    }

    v11 = v10;
    v1 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v2 = *(v0 + 320);
    if ([v10 deviceID] == *(v2 + 16))
    {
      break;
    }

    ++v5;
    if (v1 == v4)
    {
      goto LABEL_13;
    }
  }

  v17 = v11;
  [v17 deviceID];
  v18 = [v17 name];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = *(v0 + 688);
  v21 = *(v0 + 568);
  v22 = *(v0 + 456);
  v177 = *(v0 + 448);
  v181 = *(v0 + 704);
  v23 = [v17 pairingName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [v17 vendorName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = [v17 modelName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
  v26 = type metadata accessor for WAPairedDevice.PairingInfo();
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  WAPairedDevice.init(id:name:pairingInfo:)();

  (*(v22 + 56))(v20, 0, 1, v177);
  swift_beginAccess();
  sub_1000B1B78(v20, v181, &qword_1005989F0, &qword_1004B28F0);
  v27 = *(v0 + 784);
  v28 = *(v0 + 712);
  v29 = *(v0 + 560);
  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  swift_beginAccess();
  sub_100012400(v28, v29, &qword_1005989E8, &qword_1004B28E8);
  v32 = *(v31 + 48);
  LODWORD(v28) = v32(v29, 1, v30);
  sub_100016290(v29, &qword_1005989E8, &qword_1004B28E8);
  if (v28 == 1)
  {
    v33 = *(v0 + 712);
    v34 = *(v0 + 552);
    v35 = *(v0 + 480);
    v36 = *(v0 + 488);

    WASubscribableService.init(name:)();
    (*(v36 + 56))(v34, 0, 1, v35);
    swift_beginAccess();
    sub_1000B1B78(v34, v33, &qword_1005989E8, &qword_1004B28E8);
  }

  v37 = *(v0 + 520);
  v38 = *(v0 + 504);
  v39 = *(v0 + 512);
  sub_100012400(*(v0 + 328), v38, &qword_1005989E0, &qword_1004B28E0);
  if ((*(v37 + 48))(v38, 1, v39) == 1)
  {
    v40 = *(v0 + 504);
    v41 = &qword_1005989E0;
    v42 = &qword_1004B28E0;
    goto LABEL_25;
  }

  v43 = *(v0 + 712);
  v44 = *(v0 + 544);
  v45 = *(v0 + 480);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  swift_beginAccess();
  sub_100012400(v43, v44, &qword_1005989E8, &qword_1004B28E8);
  if (v32(v44, 1, v45) == 1)
  {
    v46 = *(v0 + 544);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v41 = &qword_1005989E8;
    v42 = &qword_1004B28E8;
    v40 = v46;
    goto LABEL_25;
  }

  v47 = *(v0 + 720);
  v48 = *(v0 + 704);
  v49 = *(v0 + 680);
  v50 = *(v0 + 448);
  (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 544), *(v0 + 480));
  swift_beginAccess();
  sub_100012400(v48, v49, &qword_1005989F0, &qword_1004B28F0);
  v51 = v47(v49, 1, v50);
  v52 = *(v0 + 680);
  if (v51 == 1)
  {
    v53 = *(v0 + 528);
    v54 = *(v0 + 520);
    v55 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
    (*(v54 + 8))(v53, v55);
    v41 = &qword_1005989F0;
    v42 = &qword_1004B28F0;
    v40 = v52;
LABEL_25:
    sub_100016290(v40, v41, v42);
    v12 = (v0 + 592);
    Logger.init(subsystem:category:)();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_28;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "#### Failed to get endpoint";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

    goto LABEL_28;
  }

  v185 = v27;
  v137 = v0 + 520;
  v168 = *(v0 + 536);
  v9 = (v0 + 512);
  v138 = (v0 + 528);
  v178 = *(v0 + 528);
  v58 = *(v0 + 520);
  v141 = *(v0 + 512);
  v182 = *(v0 + 496);
  v189 = *(v0 + 480);
  v192 = *(v0 + 488);
  v59 = *(v0 + 456);
  v144 = *(v0 + 448);
  v146 = *(v0 + 472);
  v60 = *(v0 + 432);
  v61 = *(v0 + 440);
  v62 = *(v0 + 416);
  v139 = *(v0 + 408);
  v63 = *(v0 + 400);
  v172 = *(v0 + 392);
  v148 = *(v0 + 352);
  v157 = *(v0 + 336);
  v160 = *(v0 + 344);
  v154 = *(v0 + 793);
  v150 = *(v0 + 792);
  v64 = *(v0 + 320);
  v152 = *(v0 + 312);
  (*(v59 + 32))();
  UUID.init()();
  v135 = *(v62 + 16);
  v135(v60, v61, v139);
  (*(v58 + 16))(v63, v178, v141);
  swift_beginAccess();
  v65 = *(v64 + 16);
  v66 = type metadata accessor for ConnectedSession(0);
  v142 = *(v192 + 16);
  v142(v63 + v66[7], v182, v189);
  v179 = *(v59 + 16);
  v179(v63 + v66[8], v146, v144);
  swift_beginAccess();
  v67 = *(v148 + 16);
  (*(v62 + 56))(v63 + v66[13], 1, 1, v139);
  *(v63 + v66[5]) = v150;
  *(v63 + v66[6]) = v65;
  *(v63 + v66[9]) = v154 & 1;
  *(v63 + v66[10]) = v152;
  v68 = (v63 + v66[11]);
  *v68 = v157;
  v68[1] = v160;
  *(v63 + v66[12]) = v67;
  (*(*(v66 - 1) + 56))(v63, 0, 1, v66);
  swift_beginAccess();

  v69 = v67;

  sub_100338D30(v63, v60);
  swift_endAccess();
  v70 = *(v192 + 56);
  v70(v168, 1, 1, v189);
  v71 = type metadata accessor for WAPublishableService();
  v72 = *(*(v71 - 8) + 56);
  v72(v172, 1, 1, v71);
  if (v154)
  {
    v74 = *(v0 + 384);
    v73 = *(v0 + 392);
    WASubscribableService.name.getter();
    WAPublishableService.init(name:)();
    sub_100016290(v73, &unk_100599490, &qword_1004B2DF8);
    v72(v74, 0, 1, v71);
    sub_10001CEA8(v74, v73, &unk_100599490, &qword_1004B2DF8);
  }

  else
  {
    v75 = *(v0 + 536);
    v76 = *(v0 + 496);
    v77 = *(v0 + 480);
    sub_100016290(v75, &qword_1005989E8, &qword_1004B28E8);
    v142(v75, v76, v77);
    v70(v75, 0, 1, v77);
  }

  v78 = *(v0 + 552);
  v79 = *(v0 + 536);
  v80 = *(v0 + 464);
  v81 = *(v0 + 472);
  v82 = *(v0 + 448);
  v83 = *(v0 + 352);
  sub_100012400(*(v0 + 392), *(v0 + 384), &unk_100599490, &qword_1004B2DF8);
  sub_100012400(v79, v78, &qword_1005989E8, &qword_1004B28E8);
  v179(v80, v81, v82);
  swift_beginAccess();
  v84 = *(v83 + 16);
  v85 = WiFiMACAddress.wifiAddress.getter();

  WiFiAddress.data.getter(v85 & 0xFFFFFFFFFFFFLL);
  WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)();
  v86 = WAPathAgentInterface.AgentToPath.encode()();
  if (v185)
  {
    Logger.init(subsystem:category:)();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 584);
    v158 = *(v0 + 576);
    v161 = *(v0 + 600);
    v92 = *(v0 + 488);
    v93 = *(v0 + 496);
    v190 = *(v0 + 456);
    v193 = *(v0 + 480);
    v183 = *(v0 + 448);
    v186 = *(v0 + 472);
    v169 = *(v0 + 536);
    v173 = *(v0 + 440);
    v180 = *(v0 + 416);
    v163 = *(v0 + 392);
    v165 = *(v0 + 408);
    v94 = *(v0 + 368);
    v95 = *(v0 + 376);
    v155 = *(v0 + 360);
    if (v90)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "#### Encode failed", v96, 2u);
    }

    (*(v91 + 8))(v161, v158);
    (*(v94 + 8))(v95, v155);
    sub_100016290(v163, &unk_100599490, &qword_1004B2DF8);
    sub_100016290(v169, &qword_1005989E8, &qword_1004B28E8);
    (*(v180 + 8))(v173, v165);
    (*(v190 + 8))(v186, v183);
    (*(v92 + 8))(v93, v193);
    goto LABEL_67;
  }

  v1 = v86;
  v2 = v87;
  v97 = sub_1003D8BBC(v86, v87);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v1, v2);

  v6 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  v188 = v97;
  if (!os_log_type_enabled(v6, v98))
  {
    v101 = *(v0 + 608);
    v102 = *(v0 + 584);
    v103 = *(v0 + 576);
    sub_1000124C8(v1, v2);

    (*(v102 + 8))(v101, v103);
    v8 = v2 >> 62;
    goto LABEL_55;
  }

  v5 = swift_slowAlloc();
  v99 = swift_slowAlloc();
  v195[0] = v99;
  *v5 = 134218242;
  v8 = v2 >> 62;
  v191 = v98;
  v176 = v99;
  if ((v2 >> 62) > 1)
  {
LABEL_47:
    if (v8 == 2)
    {
      v105 = *(v1 + 16);
      v104 = *(v1 + 24);
      v106 = __OFSUB__(v104, v105);
      v100 = v104 - v105;
      if (v106)
      {
        __break(1u);
        goto LABEL_51;
      }
    }

    else
    {
      v100 = 0;
    }

LABEL_54:
    v174 = *(v0 + 608);
    v166 = *(v0 + 584);
    v170 = *(v0 + 576);
    v107 = *(v0 + 352);
    *(v5 + 4) = v100;
    sub_1000124C8(v1, v2);
    *(v5 + 12) = 2080;
    swift_beginAccess();
    v108 = *(v107 + 16);
    v109 = v2;
    v110 = v1;
    v111 = WiFiMACAddress.wifiAddress.getter();

    v112 = WiFiAddress.description.getter(v111 & 0xFFFFFFFFFFFFLL);
    v114 = sub_100002320(v112, v113, v195);

    *(v5 + 14) = v114;
    v1 = v110;
    v2 = v109;
    _os_log_impl(&_mh_execute_header, v6, v191, "#### remote endpoint assigned with nwPathStat length: %ld WiFiAddress %s", v5, 0x16u);
    sub_100002A00(v176);

    (*(v166 + 8))(v174, v170);
LABEL_55:
    v115 = *(v0 + 312);
    v116 = *(v115 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
    v117 = *(v115 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);

    v184 = v2;
    v187 = v1;
    v175 = v116;
    v171 = v117;
    v167 = nw_interface_create_with_name();
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        v164 = 0;
        goto LABEL_66;
      }

      v120 = *(v1 + 16);
      v119 = *(v1 + 24);
      v106 = __OFSUB__(v119, v120);
      v118 = v119 - v120;
      if (!v106)
      {
LABEL_64:
        v164 = v118;
LABEL_66:
        v133 = *(v0 + 632);
        v134 = *(v0 + 648);
        v149 = *(v0 + 536);
        v194 = *(v0 + 496);
        v159 = *(v0 + 488);
        v162 = *(v0 + 480);
        v151 = *(v0 + 456);
        v153 = *(v0 + 448);
        v156 = *(v0 + 472);
        v121 = *(v0 + 432);
        v122 = *(v0 + 416);
        v123 = *(v0 + 408);
        v145 = *(v0 + 392);
        v147 = *(v0 + 440);
        v136 = *(v0 + 368);
        v140 = *(v0 + 360);
        v143 = *(v0 + 376);
        v124 = *(v0 + 304);
        v125 = *(v0 + 312);
        (v135)(v121);
        v126 = (*(v122 + 80) + 40) & ~*(v122 + 80);
        v127 = swift_allocObject();
        *(v127 + 2) = v134;
        *(v127 + 3) = v133;
        *(v127 + 4) = v124;
        (*(v122 + 32))(&v127[v126], v121, v123);
        v128 = String.utf8CString.getter();

        v175(0, v171, 0, v167, v128 + 32, v164, v188, sub_1003EA1D8, v127, 0);
        swift_unknownObjectRelease();

        v130 = *(v125 + 72);
        v129 = *(v125 + 80);
        v131 = WASubscribableService.name.getter();
        sub_1003AE988(v130, v129, v131, v132, 2);

        sub_1000124C8(v187, v184);
        (*(v136 + 8))(v143, v140);
        sub_100016290(v145, &unk_100599490, &qword_1004B2DF8);
        sub_100016290(v149, &qword_1005989E8, &qword_1004B28E8);
        (*(v122 + 8))(v147, v123);
        (*(v151 + 8))(v156, v153);
        (*(v159 + 8))(v194, v162);
LABEL_67:
        v56 = v137;
        v12 = v138;
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v118 = BYTE6(v2);
      goto LABEL_64;
    }

    LODWORD(v118) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      goto LABEL_70;
    }

    v118 = v118;
    goto LABEL_64;
  }

  if (!v8)
  {
    v100 = BYTE6(v2);
    goto LABEL_54;
  }

LABEL_51:
  LODWORD(v100) = HIDWORD(v1) - v1;
  if (!__OFSUB__(HIDWORD(v1), v1))
  {
    v100 = v100;
    goto LABEL_54;
  }

LABEL_70:
  __break(1u);
}

void *sub_1003D7A08()
{
  v155 = v0;

  Logger.init(subsystem:category:)();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 624);
  v5 = *(v0 + 584);
  v6 = *(v0 + 576);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "#### Failed to get paired device", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 712);
  v9 = *(v0 + 560);
  v10 = *(v0 + 480);
  v11 = *(v0 + 488);
  swift_beginAccess();
  sub_100012400(v8, v9, &qword_1005989E8, &qword_1004B28E8);
  v12 = *(v11 + 48);
  LODWORD(v8) = v12(v9, 1, v10);
  sub_100016290(v9, &qword_1005989E8, &qword_1004B28E8);
  if (v8 == 1)
  {
    v13 = *(v0 + 712);
    v14 = *(v0 + 552);
    v15 = *(v0 + 480);
    v16 = *(v0 + 488);

    WASubscribableService.init(name:)();
    (*(v16 + 56))(v14, 0, 1, v15);
    swift_beginAccess();
    sub_1000B1B78(v14, v13, &qword_1005989E8, &qword_1004B28E8);
  }

  v17 = *(v0 + 520);
  v18 = *(v0 + 504);
  v19 = *(v0 + 512);
  sub_100012400(*(v0 + 328), v18, &qword_1005989E0, &qword_1004B28E0);
  if ((*(v17 + 48))(v18, 1, v19) == 1)
  {
    v20 = *(v0 + 504);
    v21 = &qword_1005989E0;
    v22 = &qword_1004B28E0;
LABEL_11:
    sub_100016290(v20, v21, v22);
    v36 = v0 + 584;
    v37 = (v0 + 576);
    v38 = (v0 + 592);
    Logger.init(subsystem:category:)();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "#### Failed to get endpoint", v41, 2u);
    }

    goto LABEL_14;
  }

  v23 = *(v0 + 712);
  v24 = *(v0 + 544);
  v25 = *(v0 + 480);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  swift_beginAccess();
  sub_100012400(v23, v24, &qword_1005989E8, &qword_1004B28E8);
  if (v12(v24, 1, v25) == 1)
  {
    v26 = *(v0 + 544);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v21 = &qword_1005989E8;
    v22 = &qword_1004B28E8;
    v20 = v26;
    goto LABEL_11;
  }

  v27 = *(v0 + 720);
  v28 = *(v0 + 704);
  v29 = *(v0 + 680);
  v30 = *(v0 + 448);
  (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 544), *(v0 + 480));
  swift_beginAccess();
  sub_100012400(v28, v29, &qword_1005989F0, &qword_1004B28F0);
  v31 = v27(v29, 1, v30);
  v32 = *(v0 + 680);
  if (v31 == 1)
  {
    v33 = *(v0 + 528);
    v34 = *(v0 + 520);
    v35 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
    (*(v34 + 8))(v33, v35);
    v21 = &qword_1005989F0;
    v22 = &qword_1004B28F0;
    v20 = v32;
    goto LABEL_11;
  }

  v142 = *(v0 + 536);
  v44 = *(v0 + 520);
  v118 = *(v0 + 512);
  v120 = *(v0 + 528);
  v150 = *(v0 + 496);
  v125 = *(v0 + 488);
  v152 = *(v0 + 480);
  v147 = *(v0 + 472);
  v45 = *(v0 + 456);
  v123 = *(v0 + 448);
  v46 = *(v0 + 432);
  v47 = *(v0 + 440);
  v48 = *(v0 + 416);
  v116 = *(v0 + 408);
  v49 = *(v0 + 400);
  v145 = *(v0 + 392);
  v127 = *(v0 + 352);
  v135 = *(v0 + 336);
  v137 = *(v0 + 344);
  v133 = *(v0 + 793);
  v129 = *(v0 + 792);
  v50 = *(v0 + 320);
  v131 = *(v0 + 312);
  (*(v45 + 32))();
  UUID.init()();
  v115 = *(v48 + 16);
  v115(v46, v47, v116);
  (*(v44 + 16))(v49, v120, v118);
  swift_beginAccess();
  v51 = *(v50 + 16);
  v52 = type metadata accessor for ConnectedSession(0);
  v121 = *(v125 + 16);
  v121(v49 + v52[7], v150, v152);
  v53 = v147;
  v148 = *(v45 + 16);
  v148(v49 + v52[8], v53, v123);
  swift_beginAccess();
  v54 = *(v127 + 16);
  (*(v48 + 56))(v49 + v52[13], 1, 1, v116);
  *(v49 + v52[5]) = v129;
  *(v49 + v52[6]) = v51;
  *(v49 + v52[9]) = v133 & 1;
  *(v49 + v52[10]) = v131;
  v55 = (v49 + v52[11]);
  *v55 = v135;
  v55[1] = v137;
  *(v49 + v52[12]) = v54;
  (*(*(v52 - 1) + 56))(v49, 0, 1, v52);
  swift_beginAccess();

  v56 = v54;

  sub_100338D30(v49, v46);
  swift_endAccess();
  v57 = *(v125 + 56);
  v57(v142, 1, 1, v152);
  v58 = type metadata accessor for WAPublishableService();
  v59 = *(*(v58 - 8) + 56);
  v59(v145, 1, 1, v58);
  if (v133)
  {
    v61 = *(v0 + 384);
    v60 = *(v0 + 392);
    WASubscribableService.name.getter();
    WAPublishableService.init(name:)();
    sub_100016290(v60, &unk_100599490, &qword_1004B2DF8);
    v59(v61, 0, 1, v58);
    sub_10001CEA8(v61, v60, &unk_100599490, &qword_1004B2DF8);
  }

  else
  {
    v62 = *(v0 + 536);
    v63 = *(v0 + 496);
    v64 = *(v0 + 480);
    sub_100016290(v62, &qword_1005989E8, &qword_1004B28E8);
    v121(v62, v63, v64);
    v57(v62, 0, 1, v64);
  }

  v65 = *(v0 + 552);
  v66 = *(v0 + 536);
  v67 = *(v0 + 464);
  v68 = *(v0 + 472);
  v69 = *(v0 + 448);
  v70 = *(v0 + 352);
  sub_100012400(*(v0 + 392), *(v0 + 384), &unk_100599490, &qword_1004B2DF8);
  sub_100012400(v66, v65, &qword_1005989E8, &qword_1004B28E8);
  v148(v67, v68, v69);
  swift_beginAccess();
  v71 = *(v70 + 16);
  v72 = WiFiMACAddress.wifiAddress.getter();

  WiFiAddress.data.getter(v72 & 0xFFFFFFFFFFFFLL);
  WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)();
  v73 = WAPathAgentInterface.AgentToPath.encode()();
  v75 = v74;
  v76 = sub_1003D8BBC(v73, v74);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v73, v75);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  v153 = v76;
  if (!os_log_type_enabled(v77, v78))
  {
    v82 = *(v0 + 608);
    v83 = *(v0 + 584);
    v84 = *(v0 + 576);
    sub_1000124C8(v73, v75);

    (*(v83 + 8))(v82, v84);
    v80 = v75 >> 62;
    goto LABEL_33;
  }

  v79 = swift_slowAlloc();
  result = swift_slowAlloc();
  v146 = result;
  v154[0] = result;
  *v79 = 134218242;
  v80 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v80 != 2)
    {
      v81 = 0;
      goto LABEL_32;
    }

    v86 = *(v73 + 16);
    v85 = *(v73 + 24);
    v87 = __OFSUB__(v85, v86);
    v81 = v85 - v86;
    if (!v87)
    {
      goto LABEL_32;
    }

    __break(1u);
LABEL_29:
    LODWORD(v81) = HIDWORD(v73) - v73;
    if (__OFSUB__(HIDWORD(v73), v73))
    {
      goto LABEL_46;
    }

    v81 = v81;
    goto LABEL_32;
  }

  if (v80)
  {
    goto LABEL_29;
  }

  v81 = BYTE6(v75);
LABEL_32:
  v88 = *(v0 + 584);
  v140 = *(v0 + 576);
  v143 = *(v0 + 608);
  v89 = *(v0 + 352);
  *(v79 + 4) = v81;
  sub_1000124C8(v73, v75);
  *(v79 + 12) = 2080;
  swift_beginAccess();
  v90 = *(v89 + 16);
  v91 = WiFiMACAddress.wifiAddress.getter();

  v92 = WiFiAddress.description.getter(v91 & 0xFFFFFFFFFFFFLL);
  v94 = sub_100002320(v92, v93, v154);

  *(v79 + 14) = v94;
  _os_log_impl(&_mh_execute_header, v77, v78, "#### remote endpoint assigned with nwPathStat length: %ld WiFiAddress %s", v79, 0x16u);
  sub_100002A00(v146);

  (*(v88 + 8))(v143, v140);
LABEL_33:
  v95 = *(v0 + 312);
  v144 = *(v95 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
  v141 = *(v95 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);

  result = nw_interface_create_with_name();
  v139 = result;
  v149 = v75;
  v151 = v73;
  if (v80 <= 1)
  {
    if (!v80)
    {
      v96 = BYTE6(v75);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v80 != 2)
  {
    v113 = 0;
    goto LABEL_44;
  }

  v98 = *(v73 + 16);
  v97 = *(v73 + 24);
  v87 = __OFSUB__(v97, v98);
  v96 = v97 - v98;
  if (v87)
  {
    __break(1u);
LABEL_40:
    LODWORD(v96) = HIDWORD(v73) - v73;
    if (!__OFSUB__(HIDWORD(v73), v73))
    {
      v96 = v96;
      goto LABEL_42;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_42:
  v113 = v96;
LABEL_44:
  v99 = *(v0 + 648);
  v100 = *(v0 + 632);
  v114 = *(v0 + 496);
  v136 = *(v0 + 488);
  v138 = *(v0 + 480);
  v134 = *(v0 + 472);
  v128 = *(v0 + 536);
  v130 = *(v0 + 456);
  v132 = *(v0 + 448);
  v101 = *(v0 + 432);
  v102 = *(v0 + 416);
  v103 = *(v0 + 408);
  v124 = *(v0 + 392);
  v126 = *(v0 + 440);
  v117 = *(v0 + 368);
  v119 = *(v0 + 360);
  v122 = *(v0 + 376);
  v104 = *(v0 + 304);
  v112 = *(v0 + 312);
  (v115)(v101);
  v105 = (*(v102 + 80) + 40) & ~*(v102 + 80);
  v106 = swift_allocObject();
  *(v106 + 2) = v99;
  *(v106 + 3) = v100;
  *(v106 + 4) = v104;
  (*(v102 + 32))(&v106[v105], v101, v103);
  v107 = String.utf8CString.getter();

  v144(0, v141, 0, v139, v107 + 32, v113, v153, sub_1003EA1D8, v106, 0);
  swift_unknownObjectRelease();

  v108 = *(v112 + 72);
  v109 = *(v112 + 80);
  v110 = WASubscribableService.name.getter();
  sub_1003AE988(v108, v109, v110, v111, 2);

  sub_1000124C8(v151, v149);
  (*(v117 + 8))(v122, v119);
  sub_100016290(v124, &unk_100599490, &qword_1004B2DF8);
  sub_100016290(v128, &qword_1005989E8, &qword_1004B28E8);
  (*(v102 + 8))(v126, v103);
  (*(v130 + 8))(v134, v132);
  (*(v136 + 8))(v114, v138);
  v37 = (v0 + 512);
  v36 = v0 + 520;
  v38 = (v0 + 528);
LABEL_14:
  (*(*v36 + 8))(*v38, *v37);

  v42 = *(v0 + 8);

  return v42();
}

char *sub_1003D8BBC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (!v2)
  {
    return &v8;
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    a1 = __DataStorage._offset.getter();
    v2 = v3 - a1;
    if (!__OFSUB__(v3, a1))
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v6 = __DataStorage._offset.getter();
        v2 = v5 - v6;
        if (!__OFSUB__(v5, v6))
        {
LABEL_11:
          v4 += v2;
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
      }

      goto LABEL_12;
    }

    return &v8;
  }

LABEL_12:
  __DataStorage._length.getter();
  return v4;
}

uint64_t sub_1003D8CA4(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v50 = a1;
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v48 = &v45 - v5;
  v52 = type metadata accessor for ConnectedSession(0);
  v49 = *(v52 - 8);
  __chkstk_darwin();
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 1);
  __chkstk_darwin();
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  sub_1003AE20C(a2, &v45 - v16);
  v53 = v17;
  v18 = v17;
  v19 = v7;
  v20 = v8;
  sub_100012400(v18, v15, &qword_10058F4D0, &qword_100491AB0);
  if ((*(v8 + 48))(v15, 1, v19) == 1)
  {
    sub_100016290(v15, &qword_10058F4D0, &qword_100491AB0);
    v21 = 0xE100000000000000;
    v22 = 45;
  }

  else
  {
    v22 = UUID.uuidString.getter();
    v21 = v23;
    (*(v8 + 8))(v15, v19);
  }

  Logger.init(subsystem:category:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v46 = v8;
    v27 = v26;
    v28 = swift_slowAlloc();
    v57[0] = v28;
    *v27 = 67109378;
    v45 = v10;
    v29 = v50;
    *(v27 + 4) = v50 & 1;
    *(v27 + 8) = 2080;
    v30 = sub_100002320(v22, v21, v57);

    *(v27 + 10) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "#### ASSIGNED FLOW status(%{BOOL}d) flow ID: %s", v27, 0x12u);
    sub_100002A00(v28);

    v20 = v46;

    (*(v11 + 8))(v13, v45);
    v32 = v52;
    v31 = v53;
    v33 = v51;
    if ((v29 & 1) == 0)
    {
LABEL_6:
      swift_beginAccess();
      v34 = v48;
      sub_1003AD998(v54, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v48);
      sub_100016290(v34, &qword_100597578, &qword_1004B1860);
      swift_endAccess();
      return sub_100016290(v31, &qword_10058F4D0, &qword_100491AB0);
    }
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v32 = v52;
    v31 = v53;
    v33 = v51;
    if ((v50 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  (*(v20 + 16))(v33, v54, v19);
  v35 = sub_1003AE938(v57);
  v36 = sub_10040D190(v56);
  v38 = v37;
  if (!(*(v49 + 48))(v37, 1, v32))
  {
    sub_10036D434(v31, v38 + *(v32 + 52), &qword_10058F4D0, &qword_100491AB0);
  }

  (v36)(v56, 0);
  (*(v20 + 8))(v33, v19);
  (v35)(v57, 0);
  v39 = v55;
  swift_beginAccess();
  v40 = *(v39 + 80);
  if (*(v40 + 16))
  {

    v41 = sub_10002A440(v54);
    if (v42)
    {
      v43 = v47;
      sub_1003E8CDC(*(v40 + 56) + *(v49 + 72) * v41, v47, type metadata accessor for ConnectedSession);

      sub_1003E3ADC(v43, "Starting Stats Monitoring for %s DataPathID: %hhu Flow ID: %s", v45, v46, v47);
      sub_1003E8ED4(v43, type metadata accessor for ConnectedSession);
    }

    else
    {
    }
  }

  return sub_100016290(v31, &qword_10058F4D0, &qword_100491AB0);
}

uint64_t NANAgentHandler.stopConnectionSession(_:notifyClient:error:)(uint64_t a1, int a2, int a3)
{
  HIDWORD(v79) = a3;
  v81 = a2;
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v5 = &v77 - v4;
  v6 = type metadata accessor for ConnectedSession(0);
  v93 = *(v6 - 8);
  v94 = v6;
  __chkstk_darwin();
  v77 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v77 - v8;
  v9 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
  v84 = *(v9 - 8);
  __chkstk_darwin();
  v92 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v77 - v11;
  __chkstk_darwin();
  v91 = &v77 - v12;
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v83 = &v77 - v13;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v85 = &v77 - v14;
  v15 = type metadata accessor for UUID();
  v99 = *(v15 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v78 = v5;
  v97 = v9;
  v98 = a1;
  v96 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v100[0] = v25;
    *v24 = 136315138;
    v26 = sub_1003F3454();
    v28 = sub_100002320(v26, v27, v100);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "#### Stopped a connection session:%s", v24, 0xCu);
    sub_100002A00(v25);
  }

  (*(v18 + 8))(v20, v17);
  v29 = v87;
  swift_beginAccess();
  v30 = *(v29 + 80);
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v89 = v99 + 16;
  v95 = (v99 + 8);
  result = swift_bridgeObjectRetain_n();
  v37 = 0;
  v38 = v86;
  v88 = v30 + 64;
  v90 = v30;
  if (v34)
  {
    while (1)
    {
      v39 = v37;
LABEL_10:
      v40 = __clz(__rbit64(v34)) | (v39 << 6);
      v41 = v91;
      v42 = v96;
      (*(v99 + 16))(v91, *(v30 + 48) + *(v99 + 72) * v40, v96);
      v43 = *(v30 + 56) + *(v93 + 72) * v40;
      v44 = v97;
      sub_1003E8CDC(v43, v41 + *(v97 + 48), type metadata accessor for ConnectedSession);
      sub_10001CEA8(v41, v38, &qword_100598A00, &qword_1004B2900);
      v45 = v92;
      sub_100012400(v38, v92, &qword_100598A00, &qword_1004B2900);
      v46 = v45 + *(v44 + 48);
      v47 = v38;
      v48 = *(v46 + *(v94 + 40));

      sub_1003E8ED4(v46, type metadata accessor for ConnectedSession);

      (*(v99 + 8))(v45, v42);
      if (v48 == v98)
      {
        break;
      }

      v34 &= v34 - 1;
      result = sub_100016290(v47, &qword_100598A00, &qword_1004B2900);
      v37 = v39;
      v38 = v47;
      v30 = v90;
      v31 = v88;
      if (!v34)
      {
        goto LABEL_7;
      }
    }

    v51 = v83;
    sub_10001CEA8(v47, v83, &qword_100598A00, &qword_1004B2900);
    v49 = v84;
    v50 = *(v84 + 56);
    v52 = v51;
    v53 = 0;
LABEL_14:
    v54 = v97;
    v50(v52, v53, 1, v97);
    v55 = v98;

    v56 = (*(v49 + 48))(v51, 1, v54);
    v57 = v96;
    v58 = v85;
    if (v56 == 1)
    {
      sub_100016290(v51, &unk_1005989C0, &unk_1004B28C0);
      (*(v99 + 56))(v58, 1, 1, v57);
      return sub_100016290(v58, &qword_10058F4D0, &qword_100491AB0);
    }

    v59 = *(v54 + 48);
    v60 = v99;
    v61 = *(v99 + 32);
    v61(v85, v51, v96);
    (*(v60 + 56))(v58, 0, 1, v57);
    sub_1003E8ED4(v51 + v59, type metadata accessor for ConnectedSession);
    if ((*(v60 + 48))(v58, 1, v57) == 1)
    {
      return sub_100016290(v58, &qword_10058F4D0, &qword_100491AB0);
    }

    v62 = v82;
    v61(v82, v58, v57);
    if (v81)
    {
      v63 = *(v55 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
      v64 = WORD2(v79);

      v63(0, 0, 0, 0, 0, 0, 0, 0, 0, v64);
    }

    v65 = *(v87 + 80);
    if (*(v65 + 16))
    {

      v66 = sub_10002A440(v62);
      if (v67)
      {
        v68 = v77;
        sub_1003E8CDC(*(v65 + 56) + *(v93 + 72) * v66, v77, type metadata accessor for ConnectedSession);

        v69 = v80;
        sub_100046A08(v68, v80, type metadata accessor for ConnectedSession);
        v70 = v94;
        v71 = WASubscribableService.name.getter();
        v73 = v72;
        v74 = *(v69 + *(v70 + 20));
        sub_1003E3ADC(v69, "Stopping Stats Monitoring for %s DataPathID: %hhu Flow ID: %s", v77, v78, v79);
        sub_1003AF9F0(*(v55 + 72), *(v55 + 80), v71, v73, 2);

        swift_beginAccess();
        v75 = v78;
        sub_1003AD998(v62, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v78);
        sub_100016290(v75, &qword_100597578, &qword_1004B1860);
        swift_endAccess();
        if (v74)
        {
          sub_1003E42AC(v74, v76);
        }

        sub_1003E8ED4(v80, type metadata accessor for ConnectedSession);
      }

      else
      {
      }
    }

    return (*v95)(v62, v57);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v35)
      {

        v49 = v84;
        v50 = *(v84 + 56);
        v51 = v83;
        v52 = v83;
        v53 = 1;
        goto LABEL_14;
      }

      v34 = *(v31 + 8 * v39);
      ++v37;
      if (v34)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *NANAgentHandler.deinit()
{

  swift_unownedRelease();

  return v0;
}

uint64_t NANAgentHandler.__deallocating_deinit()
{
  NANAgentHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1003DA028@<X0>(uint64_t *a2@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003DA090(uint64_t a1)
{
  v2 = qword_100598C58;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  swift_weakDestroy();

  return swift_unknownObjectRelease();
}

uint64_t sub_1003DA13C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    sub_100018AB4(0, &unk_100598600, WiFiAwareDiscoveryResult_ptr);

    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = sub_100002320(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "#### Got result%s", v9, 0xCu);
    sub_100002A00(v10);

    return (*(v2 + 8))(v4, v17);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

char *sub_1003DA39C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v54 = a2;
  v45 = a5;
  v46 = a6;
  v42 = a4;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin();
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  __chkstk_darwin();
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v18 = qword_100598D00;
  *(v8 + v18) = sub_1002DEE78(_swiftEmptyArrayStorage);
  v19 = (v8 + qword_100598D08);
  *v19 = 0;
  v19[1] = 0;
  v20 = qword_100598D10;
  *(v8 + qword_100598D10) = 0;
  *(v8 + qword_100598D18) = 0;
  *(v8 + qword_100598D20) = &_swiftEmptyDictionarySingleton;
  swift_weakAssign();
  v21 = *(v8 + v20);
  *(v8 + v20) = a3;
  v22 = a3;

  (*(v15 + 16))(v17, v54, v14);

  v24 = sub_1003E7C40(v23, v17);

  v25 = &v24[qword_100598D08];
  v26 = *&v24[qword_100598D08];
  v27 = *&v24[qword_100598D08 + 8];
  v28 = v52;
  v29 = v53;
  *v25 = v52;
  *(v25 + 1) = v29;
  v30 = v24;
  sub_10001F89C(v28, v29);
  sub_100010520(v26, v27);
  v31 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = a1;
  v33 = v42;
  *(v32 + 32) = v22;
  *(v32 + 40) = v33;
  v34 = v46;
  *(v32 + 48) = v45;
  *(v32 + 56) = v34;
  *(v32 + 60) = BYTE4(v34) & 1;
  aBlock[4] = sub_1003E9E68;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005793C8;
  v35 = _Block_copy(aBlock);
  v46 = v22;

  v36 = v31;
  v37 = v41;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  v38 = v47;
  v39 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  sub_100010520(v52, v53);

  (*(v44 + 8))(v54, v43);
  (*(v51 + 8))(v38, v39);
  (*(v49 + 8))(v37, v50);

  return v30;
}

uint64_t sub_1003DA888()
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();

  sub_100010520(*(v0 + qword_100598D08), *(v0 + qword_100598D08 + 8));
}

uint64_t sub_1003DA954(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();

  sub_100010520(*(a1 + qword_100598D08), *(a1 + qword_100598D08 + 8));
}

void sub_1003DA9F4(void *a1)
{
  v1 = a1;
  sub_1003E8148();
}

uint64_t sub_1003DAA3C(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000011;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v24 = a1;
  if (!v13)
  {

    (*(v8 + 8))(v10, v7);
    goto LABEL_16;
  }

  v23 = v7;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v25 = v15;
  *v14 = 136315138;
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      v16 = 0x80000001004BA5E0;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v16 = 0xE900000000000074;
      v4 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v16 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v16 = 0xEE00646574736575;
    v4 = 0x7165522072657355;
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    v16 = 0xEC0000006572756CLL;
    v4 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v16 = 0x80000001004BA540;
  v4 = 0xD000000000000018;
LABEL_15:
  v17 = sub_100002320(v4, v16, &v25);

  *(v14 + 4) = v17;
  _os_log_impl(&_mh_execute_header, v11, v12, "#### Terminated Reason:%s", v14, 0xCu);
  sub_100002A00(v15);

  (*(v8 + 8))(v10, v23);
LABEL_16:
  swift_unknownObjectWeakAssign();
  *(v2 + qword_100598D18) = 0;
  result = sub_1003E6480();
  v19 = *(v2 + qword_100598D08);
  if (v19)
  {
    v20 = *(v2 + qword_100598D08 + 8);
    sub_1003AE074(0, v24, v6);
    v21 = type metadata accessor for WAError.ErrorCode();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    sub_10001F89C(v19, v20);
    v19(0, v6);
    sub_100010520(v19, v20);
    return sub_1003E8ED4(v6, type metadata accessor for sessionStatus);
  }

  return result;
}

void sub_1003DAE14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DAA3C(a3);
}

uint64_t sub_1003DAE68(uint64_t a1)
{
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  *(v1 + qword_100598D18) = 0;
  result = sub_1003E6480();
  v6 = *(v1 + qword_100598D08);
  if (v6)
  {
    v7 = *(v1 + qword_100598D08 + 8);
    sub_1003ADFE4(a1, v4);
    v8 = type metadata accessor for WAError.ErrorCode();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    sub_10001F89C(v6, v7);
    v6(0, v4);
    sub_100010520(v6, v7);
    return sub_1003E8ED4(v4, type metadata accessor for sessionStatus);
  }

  return result;
}

void sub_1003DAFA4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DAE68(a3);
}

uint64_t sub_1003DAFF8(void *a1)
{
  v2 = v1;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = v5;
    v14 = v13;
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v14 = 136315138;
    v15 = [v10 serviceName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v6;
    v17 = v16;
    v19 = v18;

    v20 = sub_100002320(v17, v19, v35);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "#### Peer service %s", v14, 0xCu);
    sub_100002A00(v31);

    v5 = v33;

    (*(v7 + 8))(v9, v32);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v21 = [v10 signature];
  v22 = qword_100598D20;
  swift_beginAccess();
  v23 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v2 + v22);
  *(v2 + v22) = 0x8000000000000000;
  sub_1003E2EB8(v23, v21, isUniquelyReferenced_nonNull_native);
  *(v2 + v22) = v34;
  swift_endAccess();
  result = sub_1003DA13C();
  v26 = v2 + qword_100598D08;
  v27 = *(v2 + qword_100598D08);
  if (v27)
  {
    v28 = *(v26 + 8);
    v29 = type metadata accessor for WAError.ErrorCode();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_10001F89C(v27, v28);
    v27(v23, v5);
    sub_100010520(v27, v28);
    return sub_1003E8ED4(v5, type metadata accessor for sessionStatus);
  }

  return result;
}

void sub_1003DB380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003DAFF8(v4);
}

void sub_1003DB3E8(int a1, void *a2)
{
  v63 = a1;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Logger();
  v4 = *(v62 - 8);
  __chkstk_darwin();
  v64 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v59 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v65 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v8;
    *v13 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "#### Lost Peer %@", v12, 0xCu);
    sub_100016290(v13, &qword_10058B780, &qword_100480AC0);
  }

  v15 = *(v4 + 8);
  v60 = v4 + 8;
  v58 = v15;
  v15(v7, v62);
  v16 = qword_100598D20;
  v17 = v68;
  swift_beginAccess();
  v18 = *(v17 + v16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v61 = qword_100598D20;
  v23 = (v20 + 63) >> 6;
  v56 = enum case for WAError.ErrorCode.error(_:);
  v67 = v18;

  v24 = 0;
  v25 = &unk_100588000;
  v26.n128_u64[0] = 138412290;
  v55 = v26;
  v27 = v63;
  v28 = v65;
  while (v22)
  {
LABEL_14:
    v30 = (v24 << 9) | (8 * __clz(__rbit64(v22)));
    v31 = *(v67 + 56);
    v66 = *(*(v67 + 48) + v30);
    v32 = *(v31 + v30);
    if ([v32 v25[172]] == v27)
    {
      sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v33 = [v32 publisherAddress];
      v34 = static NSObject.== infix(_:_:)();

      if (v34)
      {
        Logger.init(subsystem:category:)();
        v35 = v28;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = v55.n128_u32[0];
          *(v38 + 4) = v35;
          *v39 = v65;
          v40 = v35;
          _os_log_impl(&_mh_execute_header, v36, v37, "#### Removing result for Lost Peer %@", v38, 0xCu);
          sub_100016290(v39, &qword_10058B780, &qword_100480AC0);
          v25 = &unk_100588000;
        }

        v58(v64, v62);
        v41 = *(v68 + qword_100598D08);
        if (v41)
        {
          v42 = *(v68 + qword_100598D08 + 8);
          v43 = type metadata accessor for WAError.ErrorCode();
          v44 = *(v43 - 8);
          v45 = v57;
          (*(v44 + 104))(v57, v56, v43);
          (*(v44 + 56))(v45, 0, 1, v43);
          v46 = v32;
          sub_10001F89C(v41, v42);
          v41(v32, v45);

          sub_100010520(v41, v42);
          v47 = v45;
          v25 = &unk_100588000;
          sub_1003E8ED4(v47, type metadata accessor for sessionStatus);
        }

        swift_beginAccess();
        v48 = sub_100085268(v66);
        v27 = v63;
        if (v49)
        {
          v50 = v48;
          v51 = v68;
          v52 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = *(v51 + v52);
          v69 = v54;
          *(v51 + v52) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10046E0EC();
            v54 = v69;
          }

          sub_100477108();
          *(v68 + v52) = v54;
          v25 = &unk_100588000;
        }

        swift_endAccess();
        sub_1003DA13C();
        v28 = v65;
      }
    }

    v22 &= v22 - 1;
  }

  while (1)
  {
    v29 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v29 >= v23)
    {

      return;
    }

    v22 = *(v19 + 8 * v29);
    ++v24;
    if (v22)
    {
      v24 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1003DBA50(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_1003DB3E8(a3, v6);
}

void sub_1003DBAC0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v12 = a1;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1000124C8(v9, v11);
}

char *sub_1003DBB7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v51 = a7;
  v52 = a8;
  v53 = a2;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin();
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  __chkstk_darwin();
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v18 = (v8 + qword_100598DB8);
  *v18 = 0;
  v18[1] = 0;
  v19 = qword_100598DC0;
  *(v8 + qword_100598DC0) = 0;
  *(v8 + qword_100598DC8[0]) = 0;
  swift_weakAssign();
  v20 = *(v8 + v19);
  *(v8 + v19) = a3;
  v21 = a3;

  (*(v15 + 16))(v17, v53, v14);

  v23 = sub_1003E7C40(v22, v17);

  v24 = &v23[qword_100598DB8];
  v25 = *&v23[qword_100598DB8];
  v26 = *&v23[qword_100598DB8 + 8];
  v28 = v51;
  v27 = v52;
  *v24 = v51;
  *(v24 + 1) = v27;
  v29 = v23;
  sub_10001F89C(v28, v27);
  sub_100010520(v25, v26);
  v30 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = a1;
  v33 = v41;
  v32 = v42;
  *(v31 + 32) = v21;
  *(v31 + 40) = v33;
  *(v31 + 48) = v32;
  BYTE4(v32) = BYTE4(v43);
  *(v31 + 56) = v43;
  *(v31 + 60) = BYTE4(v32) & 1;
  aBlock[4] = sub_1003E9DE0;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579300;
  v34 = _Block_copy(aBlock);
  v43 = v21;

  v35 = v30;
  v36 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  v37 = v46;
  v38 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  sub_100010520(v51, v52);

  (*(v45 + 8))(v53, v44);
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v36, v49);

  return v29;
}

void sub_1003DC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t), void *a8)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v14 = swift_unownedRetainStrong();
  sub_10040CAE8(v14, v15, v16, v17);

  v18 = a7(a3, a1, a4, a5, a6 | ((HIDWORD(a6) & 1) << 32));

  swift_unknownObjectWeakAssign();
}

void sub_1003DC2FC()
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();
  sub_100010520(*(v0 + qword_100598DB8), *(v0 + qword_100598DB8 + 8));
  v1 = *(v0 + qword_100598DC0);
}

void sub_1003DC3A8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();
  sub_100010520(*(a1 + qword_100598DB8), *(a1 + qword_100598DB8 + 8));
  v2 = *(a1 + qword_100598DC0);
}

uint64_t sub_1003DC428(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v31 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v30 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    v18 = WiFiP2PError.description.getter(a1);
    v20 = sub_100002320(v18, v19, &v32);
    v29 = v8;
    v21 = v2;
    v22 = v5;
    v23 = v20;

    *(v16 + 4) = v23;
    v5 = v22;
    v2 = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "#### Failed to Start with error: %s", v16, 0xCu);
    sub_100002A00(v17);

    (*(v30 + 8))(v11, v29);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  swift_unknownObjectWeakAssign();
  *(v2 + qword_100598DC8[0]) = 0;
  result = sub_1003E6224();
  v25 = *(v2 + qword_100598DB8);
  if (v25)
  {
    v26 = *(v2 + qword_100598DB8 + 8);
    v27 = type metadata accessor for ListenInBoundConnection(0);
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_1003ADFE4(v31, v5);
    v28 = type metadata accessor for WAError.ErrorCode();
    (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
    sub_10001F89C(v25, v26);
    v25(v7, v5);
    sub_100010520(v25, v26);
    sub_1003E8ED4(v5, type metadata accessor for sessionStatus);
    return sub_100016290(v7, &qword_100597588, &qword_1004B1870);
  }

  return result;
}

void sub_1003DC7F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DC428(a3);
}

uint64_t sub_1003DC84C(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000011;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v29 = a1;
  if (!v15)
  {

    (*(v10 + 8))(v12, v9);
    goto LABEL_16;
  }

  v26 = v9;
  v27 = v8;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v30 = v17;
  *v16 = 136315138;
  v28 = v6;
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      v18 = 0x80000001004BA5E0;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v18 = 0xE900000000000074;
      v4 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v18 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v18 = 0xEE00646574736575;
    v4 = 0x7165522072657355;
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    v18 = 0xEC0000006572756CLL;
    v4 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v18 = 0x80000001004BA540;
  v4 = 0xD000000000000018;
LABEL_15:
  v19 = sub_100002320(v4, v18, &v30);

  *(v16 + 4) = v19;
  _os_log_impl(&_mh_execute_header, v13, v14, "#### Publisher Terminated: %s", v16, 0xCu);
  sub_100002A00(v17);

  (*(v10 + 8))(v12, v26);
  v8 = v27;
  v6 = v28;
LABEL_16:
  swift_unknownObjectWeakAssign();
  *(v2 + qword_100598DC8[0]) = 0;
  result = sub_1003E6224();
  v21 = *(v2 + qword_100598DB8);
  if (v21)
  {
    v22 = *(v2 + qword_100598DB8 + 8);
    v23 = type metadata accessor for ListenInBoundConnection(0);
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    sub_1003AE074(1u, v29, v6);
    v24 = type metadata accessor for WAError.ErrorCode();
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
    sub_10001F89C(v21, v22);
    v21(v8, v6);
    sub_100010520(v21, v22);
    sub_1003E8ED4(v6, type metadata accessor for sessionStatus);
    return sub_100016290(v8, &qword_100597588, &qword_1004B1870);
  }

  return result;
}

void sub_1003DCCDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DC84C(a3);
}

double sub_1003DCD30(char *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = a1;
    sub_1002F9B10(a2, sub_1003E9E10, v7);
  }

  return result;
}

double sub_1003DCDDC(void *a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    sub_1003B2DCC(a1, a2);
  }

  return result;
}

uint64_t sub_1003DCE54(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v13 = &v20 - v12;
  if (a6)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  v16 = a3;
  v17 = a5;
  v18 = a1;
  sub_1003E815C(v16, a5, v13, a7);

  return sub_100016290(v13, &qword_10058F4D0, &qword_100491AB0);
}

void *sub_1003DCFC0(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WASubscribableService();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin();
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v10 = &v38 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v16, v42))
  {

    result = (*(v12 + 8))(v14, v11);
    goto LABEL_16;
  }

  v41 = v11;
  v39 = v2;
  v17 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v47 = v40;
  *v17 = 16777986;
  *(v17 + 4) = [v15 datapathID];

  *(v17 + 5) = 2080;
  v18 = [v15 initiatorDataAddress];
  v19 = a2;
  v20 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
  v22 = v21;

  v23 = v20;
  a2 = v19;
  v24 = sub_100002320(v23, v22, &v47);

  *(v17 + 7) = v24;
  *(v17 + 15) = 2080;
  if (v19 <= 1)
  {
    if (v19 == -1)
    {
      v25 = 0x80000001004BA5E0;
      v3 = v39;
      v26 = 0xD000000000000011;
      goto LABEL_15;
    }

    v3 = v39;
    if (a2 == 1)
    {
      v25 = 0xE900000000000074;
      v26 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (v19 == 2)
  {
    v25 = 0xEE00646574736575;
    v26 = 0x7165522072657355;
    v3 = v39;
    goto LABEL_15;
  }

  v3 = v39;
  if (a2 == 3)
  {
    v25 = 0xEC0000006572756CLL;
    v26 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (a2 != 4)
  {
    goto LABEL_14;
  }

  v25 = 0x80000001004BA540;
  v26 = 0xD000000000000018;
LABEL_15:
  v28 = sub_100002320(v26, v25, &v47);

  *(v17 + 17) = v28;
  _os_log_impl(&_mh_execute_header, v16, v42, "#### DataPath terminated With Peer: %hhu %s reason: %s", v17, 0x19u);
  swift_arrayDestroy();

  result = (*(v12 + 8))(v14, v41);
LABEL_16:
  v29 = *(v3 + qword_100598DB8);
  if (v29)
  {
    v30 = *(v3 + qword_100598DB8 + 8);
    sub_10001F89C(*(v3 + qword_100598DB8), v30);
    v31 = [v15 initiatorDataAddress];
    v32 = [v15 datapathID];
    result = *(v3 + qword_100598DC0);
    if (result)
    {
      v33 = [result serviceName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v43;
      WASubscribableService.init(name:)();
      *v10 = v31;
      v10[8] = v32;
      v35 = type metadata accessor for ListenInBoundConnection(0);
      (*(v44 + 32))(&v10[*(v35 + 24)], v34, v45);
      *&v10[*(v35 + 28)] = 0;
      (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
      v36 = v46;
      sub_1003AE074(2u, a2, v46);
      v37 = type metadata accessor for WAError.ErrorCode();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v29(v10, v36);
      sub_100010520(v29, v30);
      sub_1003E8ED4(v36, type metadata accessor for sessionStatus);
      return sub_100016290(v10, &qword_100597588, &qword_1004B1870);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003DD620(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1003DCFC0(v6, a4);
}

void sub_1003DD690(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_1003E89D0(v10, v12, v6, v9);
  sub_1000124C8(v10, v12);
}

void sub_1003DD740(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000124C8(v8, v10);
}

uint64_t sub_1003DD7D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_100598E58);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1003DD7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100598E68;
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_1005989E0, &qword_1004B28E0);
}

uint64_t sub_1003DD85C(uint64_t a1)
{
  v3 = qword_100598E68;
  swift_beginAccess();
  sub_1000B1B78(a1, v1 + v3, &qword_1005989E0, &qword_1004B28E0);
  return swift_endAccess();
}

char *sub_1003DD950(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v45 = a3;
  v37 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v14 = (v6 + qword_100598E58);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v6 + qword_100598E60);
  *v15 = 0;
  v15[1] = 0;
  v16 = qword_100598E68;
  v17 = type metadata accessor for NWEndpoint();
  (*(*(v17 - 8) + 56))(v6 + v16, 1, 1, v17);
  *(v6 + qword_100598E78) = _swiftEmptyArrayStorage;
  *(v6 + qword_100598E80) = 0;
  *(v6 + qword_100598E88) = 0;
  v18 = qword_100598E90;
  *(v6 + qword_100598E90) = 0;
  *(v6 + qword_100598E98) = 0;
  *(v6 + qword_100598EA0) = 0;
  *(v6 + qword_100598E70) = 0;
  *v15 = a5;
  v15[1] = a6;
  *(v6 + v18) = 0;
  v41 = v11;
  v19 = *(v11 + 16);
  v44 = v10;
  v20 = v10;
  v21 = v37;
  v22 = v38;
  v19(v13, v45, v20);
  v40 = a5;
  v42 = a6;
  sub_10001F89C(a5, a6);
  v23 = sub_1003E7C40(a2, v13);
  v43 = a2;
  swift_unownedRetainStrong();
  v24 = v23;
  sub_10040CAE8(v24, v25, v26, v27);

  v28 = *(v21 + 72);
  v29 = *(v21 + 80);
  v30 = *(v21 + 64);

  v46 = 0;
  v31 = v28;
  v32 = v39;
  v33 = sub_1003654A4(v22, v24, v31, v29, v30);
  if (v32)
  {

    sub_100010520(v40, v42);

    (*(v41 + 8))(v45, v44);
  }

  else
  {
    v34 = v33;

    sub_100010520(v40, v42);

    (*(v41 + 8))(v45, v44);
    swift_unknownObjectWeakAssign();
  }

  return v24;
}

void sub_1003DDC80()
{
  swift_unknownObjectWeakDestroy();

  sub_100010520(*(v0 + qword_100598E60), *(v0 + qword_100598E60 + 8));
  sub_100016290(v0 + qword_100598E68, &qword_1005989E0, &qword_1004B28E0);

  v1 = *(v0 + qword_100598EA0);
}

id sub_1003DDD48(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = *v2;
  v4 = swift_isaMask;
  *(v2 + *a1) = 0;
  v5 = a2(0, *((v4 & v3) + 0xA0), *((v4 & v3) + 0xA8));
  v7.receiver = v2;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1003DDDF0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  sub_100010520(*(a1 + qword_100598E60), *(a1 + qword_100598E60 + 8));
  sub_100016290(a1 + qword_100598E68, &qword_1005989E0, &qword_1004B28E0);

  v2 = *(a1 + qword_100598EA0);
}

uint64_t sub_1003DDEB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v5 = &v29 - v4;
  v6 = type metadata accessor for NWEndpoint();
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = *(v1 + qword_100598E90);
  if (v13 && *(v1 + qword_100598E80))
  {
    v29 = v9;
    v14 = v13;
    WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    NWEndpoint.Host.init(_:)();
    NWEndpoint.Port.init(rawValue:)();
    v15 = type metadata accessor for NWEndpoint.Port();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v5, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v18 = sub_10005DC58(&qword_100599458, &qword_1004B2DA0);
      (*(v16 + 32))(&v12[*(v18 + 48)], v5, v15);
      (*(v29 + 104))(v12, enum case for NWEndpoint.hostPort(_:), v6);
      (*(v29 + 16))(v8, v12, v6);
      v19 = qword_100598E78;
      swift_beginAccess();
      v20 = *(v2 + v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v19) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1003A7D74(0, v20[2] + 1, 1, v20);
        *(v2 + v19) = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      v24 = v29;
      if (v23 >= v22 >> 1)
      {
        v28 = sub_1003A7D74((v22 > 1), v23 + 1, 1, v20);
        v24 = v29;
        v20 = v28;
      }

      v20[2] = v23 + 1;
      v25 = v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23;
      v26 = *(v24 + 32);
      v26(v25, v8, v6);
      *(v2 + v19) = v20;
      swift_endAccess();

      v26(a1, v12, v6);
      return (*(v29 + 56))(a1, 0, 1, v6);
    }
  }

  else
  {
    v27 = *(v9 + 56);

    return v27(a1, 1, 1, v6, v10);
  }

  return result;
}

uint64_t sub_1003DE264(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v62 - v6;
  __chkstk_darwin();
  v9 = &v62 - v8;
  __chkstk_darwin();
  v11 = &v62 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Logger.init(subsystem:category:)();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "No active datapath available for configuration validation", v45, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v63 = v3;
  v64 = Strong;
  v13 = [a1 discoveryResult];
  v14 = [v13 serviceName];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    Logger.init(subsystem:category:)();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Invalid configuration: empty service name", v48, 2u);
    }

    (*(v63 + 8))(v7, v2);
    return 0;
  }

  v62 = v2;
  v19 = [a1 discoveryResult];
  v20 = [v19 serviceName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = [a1 discoveryResult];
  LOBYTE(v20) = [v24 publishID];

  v25 = [a1 discoveryResult];
  v26 = [v25 publisherAddress];

  v27 = WiFiMACAddress.wifiAddress.getter();
  v28 = v64;
  LOBYTE(v26) = sub_10032DA28(v21, v23, v20, v27 & 0xFFFFFFFFFFFFLL);

  if ((v26 & 1) == 0)
  {
    Logger.init(subsystem:category:)();
    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v63;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65 = v55;
      *v54 = 136315138;
      v56 = [v49 discoveryResult];
      v57 = [v56 serviceName];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_100002320(v58, v60, &v65);

      *(v54 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v50, v51, "Datapath configuration validation failed for service: %s", v54, 0xCu);
      sub_100002A00(v55);
    }

    (*(v53 + 8))(v9, v62);
    return 0;
  }

  Logger.init(subsystem:category:)();
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v63;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v65 = v35;
    *v34 = 136315138;
    v36 = [v29 discoveryResult];
    v37 = [v36 serviceName];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_100002320(v38, v40, &v65);

    *(v34 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Datapath configuration validation successful for service: %s", v34, 0xCu);
    sub_100002A00(v35);
  }

  (*(v33 + 8))(v11, v62);
  return 1;
}

void sub_1003DE944(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v29 = type metadata accessor for Logger();
  v8 = *(v29 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 176))(a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = &v4[qword_100598E58];
  *v14 = v13;
  v14[1] = v15;

  v4[qword_100598E98] = 1;
  sub_1003E6710();
  v4[qword_100598E70] = a1;
  Logger.init(subsystem:category:)();
  v16 = v4;
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_5;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v30 = v22;
  *v20 = 136315394;
  v23 = &v16[qword_100598E58];
  v24 = *&v16[qword_100598E58 + 8];
  if (v24)
  {
    v25 = v22;
    v26 = *v23;

    v27 = sub_100002320(v26, v24, &v30);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "#### DataPath Started on %s with address %@", v20, 0x16u);
    sub_100016290(v21, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v25);

LABEL_5:
    (*(v8 + 8))(v10, v29);
    return;
  }

  __break(1u);
}

void sub_1003DEC98(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a1;
  sub_1003DE944(a3, v8, a5);
}

uint64_t sub_1003DED10(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100599448, &unk_1004B2D90);
  __chkstk_darwin();
  v10 = &v23 - v9;
  swift_unknownObjectWeakAssign();
  *(v1 + qword_100598E98) = 0;
  sub_1003E6710();
  v11 = *(v1 + qword_100598E60);
  if (v11)
  {
    v12 = *(v1 + qword_100598E60 + 8);
    v13 = type metadata accessor for ResolvedSession(0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    sub_1003ADFE4(a1, v8);
    v14 = type metadata accessor for WAError.ErrorCode();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    sub_10001F89C(v11, v12);
    v11(v10, v8);
    sub_100010520(v11, v12);
    sub_1003E8ED4(v8, type metadata accessor for sessionStatus);
    sub_100016290(v10, &unk_100599448, &unk_1004B2D90);
  }

  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v19 = WiFiP2PError.description.getter(a1);
    v21 = sub_100002320(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "#### DataPath start failed %s", v17, 0xCu);
    sub_100002A00(v18);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1003DF098(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DED10(a3);
}

void sub_1003DF0EC(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100599448, &unk_1004B2D90);
  __chkstk_darwin();
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v35 - v5;
  sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  __chkstk_darwin();
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v35 - v7;
  __chkstk_darwin();
  v10 = &v35 - v9;
  v11 = qword_100598E68;
  swift_beginAccess();
  sub_100012400(v2 + v11, v10, &qword_1005989E0, &qword_1004B28E0);
  v12 = type metadata accessor for NWEndpoint();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  sub_100016290(v10, &qword_1005989E0, &qword_1004B28E0);
  v16 = v2 + qword_100598E60;
  v17 = *(v2 + qword_100598E60);
  if (v15 == 1)
  {
    if (v17)
    {
      v18 = *(v16 + 8);
      v19 = type metadata accessor for ResolvedSession(0);
      v20 = v37;
      (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
      v21 = v40;
      sub_1003AE074(2u, v39, v40);
      v22 = type metadata accessor for WAError.ErrorCode();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      sub_10001F89C(v17, v18);
      v17(v20, v21);
      sub_100010520(v17, v18);
      sub_1003E8ED4(v21, type metadata accessor for sessionStatus);
      sub_100016290(v20, &unk_100599448, &unk_1004B2D90);
    }

    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_10:
    v34 = v38;
    (*(v13 + 56))(v38, 1, 1, v12);
    sub_1003DD85C(v34);
LABEL_11:
    swift_unknownObjectWeakAssign();
    *(v2 + qword_100598E98) = 0;
    sub_1003E6710();
    return;
  }

  v23 = *(v16 + 8);
  v24 = qword_100598E68;
  swift_beginAccess();
  sub_100012400(v2 + v24, v8, &qword_1005989E0, &qword_1004B28E0);
  if (v14(v8, 1, v12) != 1)
  {
    v25 = *(v2 + qword_100598E70);
    v26 = *(v2 + qword_100598E90);
    if (v26)
    {
      sub_10001F89C(v17, v23);
      v27 = v26;
    }

    else
    {
      v28 = objc_opt_self();
      sub_10001F89C(v17, v23);
      v27 = [v28 zeroAddress];
      v26 = 0;
    }

    v29 = v36;
    (*(v13 + 32))(v36, v8, v12);
    v30 = type metadata accessor for ResolvedSession(0);
    *(v29 + v30[5]) = v25;
    *(v29 + v30[6]) = 0;
    *(v29 + v30[7]) = v27;
    (*(*(v30 - 1) + 56))(v29, 0, 1, v30);
    v31 = v40;
    sub_1003AE074(2u, v39, v40);
    v32 = type metadata accessor for WAError.ErrorCode();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    v33 = v26;
    v17(v29, v31);
    sub_100010520(v17, v23);
    sub_1003E8ED4(v31, type metadata accessor for sessionStatus);
    sub_100016290(v29, &unk_100599448, &unk_1004B2D90);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1003DF68C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DF0EC(a3);
}

uint64_t sub_1003DF6F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = a4;
  v8 = type metadata accessor for Logger();
  v77 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v74 = &v66[-v11];
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005DC58(&unk_100599448, &unk_1004B2D90);
  __chkstk_darwin();
  v73 = &v66[-v14];
  sub_10005DC58(&qword_1005989E0, &qword_1004B28E0);
  __chkstk_darwin();
  v16 = &v66[-v15];
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v18 = &v66[-v17];
  v75 = type metadata accessor for NWEndpoint();
  v19 = *(v75 - 8);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 && (v23 = [a2 servicePort], *(v5 + qword_100598E58 + 8)))
  {
    v69 = v13;
    v71 = a2;
    v72 = v8;
    *(v5 + qword_100598E88) = v76;
    v24 = v23;
    WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    NWEndpoint.Host.init(_:)();
    NWEndpoint.Port.init(rawValue:)();
    v25 = type metadata accessor for NWEndpoint.Port();
    v26 = a1;
    v27 = *(v25 - 8);
    result = (*(v27 + 48))(v18, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = sub_10005DC58(&qword_100599458, &qword_1004B2DA0);
      (*(v27 + 32))(&v22[*(v29 + 48)], v18, v25);
      v30 = *(v19 + 104);
      v31 = v19;
      v32 = v75;
      v30(v22, enum case for NWEndpoint.hostPort(_:), v75);
      v33 = *(v31 + 16);
      v33(v16, v22, v32);
      v70 = v31;
      (*(v31 + 56))(v16, 0, 1, v32);
      sub_1003DD85C(v16);
      v34 = *(v5 + qword_100598E90);
      *(v5 + qword_100598E90) = v26;
      v68 = v26;
      v35 = v26;

      v67 = v24;
      *(v5 + qword_100598E80) = v24;
      v36 = *(v5 + qword_100598E60);
      if (v36)
      {
        v37 = *(v5 + qword_100598E60 + 8);
        v38 = v73;
        v33(v73, v22, v32);
        v39 = *(v5 + qword_100598E70);
        v40 = type metadata accessor for ResolvedSession(0);
        *(v38 + v40[5]) = v39;
        *(v38 + v40[6]) = v76;
        *(v38 + v40[7]) = v35;
        (*(*(v40 - 1) + 56))(v38, 0, 1, v40);
        v41 = type metadata accessor for WAError.ErrorCode();
        v42 = v69;
        (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
        v43 = v35;
        sub_10001F89C(v36, v37);
        v36(v38, v42);
        sub_100010520(v36, v37);
        sub_1003E8ED4(v42, type metadata accessor for sessionStatus);
        sub_100016290(v38, &unk_100599448, &unk_1004B2D90);
      }

      v44 = v74;
      Logger.init(subsystem:category:)();
      v45 = v35;
      v46 = v71;
      v47 = v71;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v78 = v46;
        v79 = v52;
        *v50 = 138413058;
        *(v50 + 4) = v45;
        *v51 = v68;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v76;
        *(v50 + 22) = 512;
        *(v50 + 24) = v67;
        *(v50 + 26) = 2080;
        v53 = v45;
        v54 = v47;
        sub_10005DC58(&qword_100599460, &qword_1004B2DA8);
        v55 = String.init<A>(describing:)();
        v57 = v44;
        v58 = sub_100002320(v55, v56, &v79);

        *(v50 + 28) = v58;
        _os_log_impl(&_mh_execute_header, v48, v49, "#### Data Confirmed With Peer: %@[deviceID %llu] port: %hu, serviceSpecificInfo: %s", v50, 0x24u);
        sub_100016290(v51, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v52);

        (*(v77 + 8))(v57, v72);
      }

      else
      {

        (*(v77 + 8))(v44, v72);
      }

      return (*(v70 + 8))(v22, v75);
    }
  }

  else
  {
    Logger.init(subsystem:category:)();
    v59 = a1;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v8;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v59;
      *v64 = v59;
      v65 = v59;
      _os_log_impl(&_mh_execute_header, v60, v61, "#### Data Confirmed With Peer %@ but unable to fetch servicePort info(nil serviceSpecificInfo)", v63, 0xCu);
      sub_100016290(v64, &qword_10058B780, &qword_100480AC0);

      v8 = v62;
    }

    return (*(v77 + 8))(v10, v8);
  }

  return result;
}

uint64_t sub_1003DFF7C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v12 = &v19 - v11;
  if (a5)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  v16 = a4;
  v17 = a1;
  sub_1003DF6F0(v15, a4, v12, a6);

  return sub_100016290(v12, &qword_10058F4D0, &qword_100491AB0);
}

void sub_1003E00E8(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);

  _Block_release(v4);
}

void sub_1003E0128(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003E0114(v4, v5, v6, v7, v8, v9, v10, v11, v12, v5);
}

void sub_1003E0190(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Paired device Remove: %@", v11, 0xCu);
    sub_100016290(v12, &qword_10058B780, &qword_100480AC0);
  }

  (*(v5 + 8))(v7, v4);
  sub_1003B2BC8(*(v2 + qword_100598F38), *(v2 + qword_100598F38 + 8), [v8 deviceID]);
}

void sub_1003E039C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003E0190(v4);
}

uint64_t sub_1003E0418(void *a1, const char *a2, const char *a3, ...)
{
  v6 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = v6;
    v16 = a3;
    v17 = v15;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v12;
    *v18 = v12;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, a2, v17, 0xCu);
    sub_100016290(v18, &qword_10058B780, &qword_100480AC0);

    a3 = v16;
    v6 = v22;
  }

  (*(v9 + 8))(v11, v8);
  return sub_1003E7784(*(v6 + qword_100598F38), *(v6 + qword_100598F38 + 8), [v12 deviceID], a3);
}

void sub_1003E0634(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003E0404(v4);
}

id sub_1003E0710(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003E0788(uint64_t a1)
{

  v2 = qword_100598F40;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

id sub_1003E0818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1003E08F4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004B2EBA[v1]);
  v2 = Hasher._finalize()();

  return sub_1003E0BEC(v1, v2);
}

unint64_t sub_1003E096C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1003E0D94(a1, v4, &qword_1005974C0, NSNumber_ptr);
}

unint64_t sub_1003E09E8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1003E0D94(a1, v4, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
}

unint64_t sub_1003E0A38(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003E0E60(a1, v4);
}

unint64_t sub_1003E0A7C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1003E0F28(a1, v2);
}

unint64_t sub_1003E0B10(uint64_t a1, uint64_t a2, __int16 a3)
{
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(HIBYTE(a3));
  v6 = Hasher._finalize()();

  return sub_1003E102C(a1, a2, a3 & 0xFF01, v6);
}

unint64_t sub_1003E0BEC(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (byte_1004B2EBA[*(*(v2 + 48) + result)] == byte_1004B2EBA[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003E0C6C(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*v7 != a1 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != (0x801004u >> (8 * *(v7 + 4))))
      {
        goto LABEL_4;
      }

      v8 = *(v7 + 5);
      if (v8 <= 3)
      {
        if (v8 == 2)
        {
          if (BYTE5(a1) == 2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 3)
        {
          if (BYTE5(a1) == 3)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v8)
        {
          case 4:
            if (BYTE5(a1) == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5:
            if (BYTE5(a1) == 5)
            {
              return result;
            }

            goto LABEL_4;
          case 6:
            if (BYTE5(a1) == 6)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (BYTE5(a1) - 2 >= 5 && (((a1 >> 40) ^ v8) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003E0D94(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100018AB4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1003E0E60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1003E9D30(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1003E9D8C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003E0F28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1003E102C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = *(v4 + 48) + 24 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16) | (*(v11 + 17) << 8);

      LOBYTE(v12) = static DNSRecords.Identifier.== infix(_:_:)(v12, v13, v14, a1, a2, a3 & 0xFF01);

      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1003E111C(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = static Hasher._hash(seed:_:)();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
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

unint64_t sub_1003E12F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100046A70(a4 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_10046A6CC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10030F6F8(v18, a5 & 1);
    v13 = sub_100046A70(a4 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v19)
  {
    v23 = *(*v6 + 56) + 24 * v13;
    v24 = *(v23 + 16);
    v27 = *v23;
    v28 = v24;
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = a3;
    return sub_100016290(&v27, &qword_100599440, &qword_1004B3620);
  }

  else
  {
    v26 = *v6;

    return sub_1002DD414(v13, a4 & 0xFFFFFFFFFFFFLL, a1 & 0xFFFFFFFFFFFFFFLL, a2, a3, v26);
  }
}

void sub_1003E1524(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    a6(v14, a2 & 0xFFFFFFFFFFFFLL, a1, v24);
  }
}

uint64_t sub_1003E16CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANInternetSharingStatistics.Requester);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046AA20();
    goto LABEL_7;
  }

  sub_10030FDBC(v13, a3 & 1);
  v20 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD494(v10, a2 & 0xFFFFFFFFFFFFFFLL, a1, v16);
}

void sub_1003E1820(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000102E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10046AF38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003102E4(v16, a4 & 1);
    v11 = sub_1000102E8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 80 * v11;

    sub_1003E9CD4(a1, v22);
  }

  else
  {
    sub_1002DD4C0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1003E1968(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10000B448(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_10046B0EC();
      result = v16;
      goto LABEL_8;
    }

    sub_100011258(v13, a3 & 1);
    result = sub_10000B448(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      type metadata accessor for XPCSession(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
  }

  else
  {
    sub_1002DD524(result, a2, a1, v18);

    return a2;
  }

  return result;
}

void sub_1003E1AC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v8 = v7;
  v33 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_10002A440(a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v30();
      goto LABEL_9;
    }

    v31();
    v24 = sub_10002A440(a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v26 = v33;
  v27 = a1;
  v28 = *v8;
  if (v22)
  {
    v29 = (*(v28 + 56) + 16 * v18);
    *v29 = v27;
    v29[1] = v26;
  }

  else
  {
    (*(v13 + 16))(v15, a3, v12);
    v32(v18, v15, v27, v26, v28);
  }
}

uint64_t sub_1003E1CC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_10046B8B8();
      result = v17;
      goto LABEL_8;
    }

    sub_100310D18(v14, a3 & 1);
    result = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_1002DD3A0(result, a2 & 0xFFFFFFFFFFFFLL, a1, v19);
  }

  return result;
}

void sub_1003E1E24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000102E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10046BA1C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100311004(v16, a4 & 1);
    v11 = sub_1000102E8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1001A9CE8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1003E1F6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1003E08F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANAttribute(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANAttribute);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046BF70();
    goto LABEL_7;
  }

  sub_1003118E4(v13, a3 & 1);
  v20 = sub_1003E08F4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD654(v10, a2, a1, v16);
}

uint64_t sub_1003E20C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANPeer(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANPeer);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046C304();
    goto LABEL_7;
  }

  sub_100311EF4(v13, a3 & 1);
  v20 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD728(v10, a2 & 0xFFFFFFFFFFFFLL, a1, v16);
}

uint64_t sub_1003E2264(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046C560();
    goto LABEL_7;
  }

  sub_1003122C8(v13, a3 & 1);
  v20 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD754(v10, a2 & 0xFFFFFFFFFFFFFFLL, a1, v16);
}

void sub_1003E23B8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000102E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10046CFA0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10031315C(v16, a4 & 1);
    v11 = sub_1000102E8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1;
  }

  else
  {
    sub_1002DD9F4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1003E24E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100085268(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for BrowseEndpoints(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for BrowseEndpoints);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046DB78();
    goto LABEL_7;
  }

  sub_100313F88(v13, a3 & 1);
  v20 = sub_100085268(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DDA3C(v10, a2, a1, v16);
}

void sub_1003E263C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_10002A440(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_9;
    }

    v29();
    v23 = sub_10002A440(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    v30(v17, v14, v25, v26);
  }
}

uint64_t sub_1003E282C(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10007CCC8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_10046D45C();
      result = v17;
      goto LABEL_8;
    }

    sub_100313460(v14, a3 & 1);
    result = sub_10007CCC8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1 & 1;
  }

  else
  {

    return sub_1002DDB9C(result, a2, a1 & 1, v19);
  }

  return result;
}

uint64_t sub_1003E293C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10002A440(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ListenInBoundConnection(0);
      return sub_100046D08(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ListenInBoundConnection);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_10046D130();
    goto LABEL_7;
  }

  sub_100313424(v17, a3 & 1);
  v24 = sub_10002A440(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1002DDBE4(v14, v11, a1, v20);
}

uint64_t sub_1003E2B10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10002A440(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ConnectedEndpoints(0);
      return sub_100046D08(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ConnectedEndpoints);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_10046DDAC();
    goto LABEL_7;
  }

  sub_1003142D0(v17, a3 & 1);
  v24 = sub_10002A440(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1002DDC10(v14, v11, a1, v20);
}

uint64_t sub_1003E2CE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10002A440(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ConnectedSession(0);
      return sub_100046D08(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ConnectedSession);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_10046D5AC();
    goto LABEL_7;
  }

  sub_1003136D4(v17, a3 & 1);
  v24 = sub_10002A440(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1002DDD30(v14, v11, a1, v20);
}

uint64_t sub_1003E2EB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100085268(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10046E0EC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100314320(v14, a3 & 1);
    v9 = sub_100085268(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;

    return _objc_release_x1();
  }

  return sub_1002E01C8();
}

void sub_1003E3118(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_100085268(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_100085268(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    a6(v14, a2, a1, v24);
  }
}

uint64_t sub_1003E3270(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003E3364;

  return v5(v2 + 32);
}

uint64_t sub_1003E3364()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003E3478(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003E356C;

  return v5(v2 + 32);
}

uint64_t sub_1003E356C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t *sub_1003E3680(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[4] = &_swiftEmptyDictionarySingleton;
  v1[5] = &_swiftEmptyDictionarySingleton;
  v1[6] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for NANAgentHandler.Client(0, v4, v5, v6);
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v1[7] = Dictionary.init()();
  v1[8] = &_swiftEmptyDictionarySingleton;
  v1[9] = &_swiftEmptyDictionarySingleton;
  v1[10] = &_swiftEmptyDictionarySingleton;
  v1[11] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for NANAgentHandler.ActiveClient(0, v4, v5, v7);
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = Dictionary.init()();
  v1[3] = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t *sub_1003E37A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NANAgentHandler(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1003E3680(a1);
}

uint64_t sub_1003E37EC(uint64_t a1, void *a2)
{
  v33 = a2;
  v32 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
  __chkstk_darwin();
  v31 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v30 = &v27 - v4;
  v5 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    return 0;
  }

  else
  {
    v8 = result;
    v28 = a1 + 72;
    v29 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < v7)
    {
      v10 = v8 >> 6;
      if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v34 = *(a1 + 36);
      v11 = v32;
      v12 = *(v32 + 48);
      v13 = *(a1 + 56);
      v14 = *(*(a1 + 48) + 8 * v8);
      v15 = type metadata accessor for BrowseEndpoints(0);
      v16 = a1;
      v17 = v30;
      sub_1003E8CDC(v13 + *(*(v15 - 8) + 72) * v8, &v30[v12], type metadata accessor for BrowseEndpoints);
      v18 = v31;
      *v31 = v14;
      sub_100046A08(&v17[v12], v18 + *(v11 + 48), type metadata accessor for BrowseEndpoints);
      v19 = [v33 signature];
      result = sub_100016290(v18, &qword_1005994A8, &unk_1004B2E10);
      if (v19 == v14)
      {
        return v8;
      }

      v9 = 1 << *(v16 + 32);
      if (v8 >= v9)
      {
        goto LABEL_22;
      }

      a1 = v16;
      v5 = v29;
      v20 = *(v29 + 8 * v10);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v28 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_10002BEB8(v8, v34, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_5;
          }
        }

        result = sub_10002BEB8(v8, v34, 0);
      }

LABEL_5:
      v7 = 1 << *(a1 + 32);
      v8 = v9;
      if (v9 == v7)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E3ADC(uint64_t a1, const char *a2, ...)
{
  v39 = a2;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v4 = &v33 - v3;
  v5 = type metadata accessor for ConnectedSession(0);
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v33 - v8;
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  sub_1003E8CDC(a1, v11, type metadata accessor for ConnectedSession);
  sub_1003E8CDC(a1, v9, type metadata accessor for ConnectedSession);
  sub_1003E8CDC(a1, v7, type metadata accessor for ConnectedSession);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v35 = v17;
    v36 = v16;
    v37 = v13;
    v38 = v12;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v18 = 136315650;
    v19 = *&v11[v5[10]];
    v20 = *(v19 + 72);
    v21 = *(v19 + 80);

    sub_1003E8ED4(v11, type metadata accessor for ConnectedSession);
    v22 = sub_100002320(v20, v21, &v40);

    *(v18 + 4) = v22;
    *(v18 + 12) = 256;
    LOBYTE(v22) = v9[v5[5]];
    sub_1003E8ED4(v9, type metadata accessor for ConnectedSession);
    *(v18 + 14) = v22;
    *(v18 + 15) = 2080;
    sub_100012400(&v7[v5[13]], v4, &qword_10058F4D0, &qword_100491AB0);
    v23 = type metadata accessor for UUID();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_100016290(v4, &qword_10058F4D0, &qword_100491AB0);
      v25 = 0xE300000000000000;
      v26 = 4271950;
    }

    else
    {
      v26 = UUID.uuidString.getter();
      v25 = v28;
      (*(v24 + 8))(v4, v23);
    }

    v30 = v37;
    v29 = v38;
    sub_1003E8ED4(v7, type metadata accessor for ConnectedSession);
    v31 = sub_100002320(v26, v25, &v40);

    *(v18 + 17) = v31;
    v32 = v36;
    _os_log_impl(&_mh_execute_header, v36, v35, v39, v18, 0x19u);
    swift_arrayDestroy();

    return (*(v30 + 8))(v15, v29);
  }

  else
  {
    sub_1003E8ED4(v9, type metadata accessor for ConnectedSession);

    sub_1003E8ED4(v7, type metadata accessor for ConnectedSession);
    (*(v13 + 8))(v15, v12);
    return sub_1003E8ED4(v11, type metadata accessor for ConnectedSession);
  }
}

id sub_1003E3FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = swift_isaMask & *v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[qword_100598F30] = a1;
  v16 = &v4[qword_100598F38];
  *v16 = a2;
  *(v16 + 1) = a3;

  UUID.init()();
  (*(v13 + 32))(&v4[qword_100598F40], v15, v12);
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "NANAgentPairedDevicesDelegate Init()", v19, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v21 = type metadata accessor for NANAgentHandler.NANAgentPairedDevicesDelegate(0, *(v24 + 80), *(v24 + 88), v20);
  v25.receiver = v4;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, "init");
}

void sub_1003E42AC(int a1, __n128 a2)
{
  LODWORD(v247) = a1;
  v3 = *v2;
  *&v240 = type metadata accessor for ConnectedSession(0);
  v249 = *(v240 - 8);
  __chkstk_darwin();
  v5 = &v216 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v262 = (&v216 - v6);
  __chkstk_darwin();
  v239 = &v216 - v7;
  __chkstk_darwin();
  v242 = (&v216 - v8);
  sub_10005DC58(&unk_1005989C0, &unk_1004B28C0);
  __chkstk_darwin();
  v248 = &v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v255 = &v216 - v10;
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v236 = &v216 - v11;
  v241 = *(type metadata accessor for ListenInBoundConnection(0) - 8);
  __chkstk_darwin();
  v246 = (&v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  *&v238 = &v216 - v13;
  sub_10005DC58(&qword_1005989B8, &qword_1004B28B8);
  __chkstk_darwin();
  v245 = (&v216 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v244 = (&v216 - v15);
  v224 = type metadata accessor for DispatchWorkItemFlags();
  v218 = *(v224 - 8);
  __chkstk_darwin();
  v223 = &v216 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for DispatchQoS();
  v217 = *(v222 - 8);
  __chkstk_darwin();
  v221 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for Logger();
  v251 = *(v250 - 8);
  __chkstk_darwin();
  v254 = &v216 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v226 = &v216 - v19;
  __chkstk_darwin();
  v219 = &v216 - v20;
  __chkstk_darwin();
  v227 = &v216 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v243 = &v216 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v228 = &v216 - v25;
  v220 = v26;
  __chkstk_darwin();
  v253 = &v216 - v27;
  v28 = *(v3 + 88);
  v233 = *(v3 + 80);
  v232 = v28;
  type metadata accessor for NANAgentHandler.Client(255, v233, v28, v29);
  v261 = v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v230 = type metadata accessor for Optional();
  v216 = *(v230 - 8);
  __chkstk_darwin();
  v234 = &v216 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v229 = &v216 - v31;
  i = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
  v225 = *(i - 8);
  __chkstk_darwin();
  v256 = &v216 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v235 = &v216 - v33;
  swift_beginAccess();
  v237 = v2;
  v34 = v2[10];
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v258 = v23 + 16;
  v259 = v23;
  v260 = (v23 + 8);
  swift_bridgeObjectRetain_n();
  v39 = 0;
  v40 = 0;
  v257 = v5;
  v41 = v261;
  do
  {
    if (!v37)
    {
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_94;
        }

        if (v42 >= v38)
        {
          goto LABEL_13;
        }

        v37 = *(v34 + 64 + 8 * v42);
        ++v40;
        if (v37)
        {
          v40 = v42;
          goto LABEL_10;
        }
      }
    }

    v42 = v40;
LABEL_10:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = v43 | (v42 << 6);
    v45 = v259;
    v46 = v235;
    (*(v259 + 16))(v235, *(v34 + 48) + *(v259 + 72) * v44, v41);
    v47 = *(v34 + 56) + *(v249 + 9) * v44;
    v48 = i;
    sub_1003E8CDC(v47, &v46[*(i + 48)], type metadata accessor for ConnectedSession);
    v49 = v46;
    v50 = v256;
    sub_10001CEA8(v49, v256, &qword_100598A00, &qword_1004B2900);
    v51 = v50 + *(v48 + 48);
    LODWORD(v48) = *(v51 + *(v240 + 20));
    sub_1003E8ED4(v51, type metadata accessor for ConnectedSession);
    v52 = v48 == v247;
    (*(v45 + 8))(v50, v41);
    v53 = __OFADD__(v39, v52);
    v39 += v52;
  }

  while (!v53);
  __break(1u);
LABEL_13:

  if (v39)
  {
    v245 = &unk_1004B4EC0;
    v54 = v226;
    Logger.init(subsystem:category:)();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v247;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 16777472;
      v59[4] = v58;
      _os_log_impl(&_mh_execute_header, v55, v56, "#### Not Terminating datapath %hhu. Referenced by other endpoint.", v59, 5u);
    }

    v60 = *(v251 + 1);
    v251 += 8;
    v244 = v60;
    v60(v54, v250);
    v61 = *(v237 + 80);
    v62 = (v61 + 64);
    v63 = 1 << *(v61 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v61 + 64);
    v237 = (v63 + 63) >> 6;
    v247 = (v225 + 56);
    v241 = (v259 + 32);
    v246 = (v225 + 48);
    v256 = v61;

    v66 = 0;
    *&v67 = 136315394;
    v238 = v67;
    v68 = v261;
    v69 = v262;
    v70 = v239;
    v71 = v255;
    v72 = v254;
    v243 = v62;
    while (v65)
    {
      v73 = v69;
      v74 = v66;
LABEL_31:
      v77 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v78 = v77 | (v74 << 6);
      v79 = v256;
      v80 = v259;
      (*(v259 + 16))(v253, *(v256 + 48) + *(v259 + 72) * v78, v68);
      v81 = *(v79 + 56) + *(v249 + 9) * v78;
      v82 = v242;
      sub_1003E8CDC(v81, v242, type metadata accessor for ConnectedSession);
      v83 = i;
      v84 = *(i + 48);
      v85 = v248;
      (*(v80 + 32))();
      sub_100046A08(v82, v85 + v84, type metadata accessor for ConnectedSession);
      v86 = 0;
      v71 = v255;
      v72 = v254;
      v69 = v73;
LABEL_32:
      (*v247)(v85, v86, 1, v83);
      sub_10001CEA8(v85, v71, &unk_1005989C0, &unk_1004B28C0);
      if ((*v246)(v71, 1, v83) == 1)
      {
        goto LABEL_91;
      }

      sub_100046A08(v71 + *(v83 + 48), v70, type metadata accessor for ConnectedSession);
      Logger.init(subsystem:category:)();
      sub_1003E8CDC(v70, v69, type metadata accessor for ConnectedSession);
      v87 = v257;
      sub_1003E8CDC(v70, v257, type metadata accessor for ConnectedSession);
      v88 = v70;
      v89 = Logger.logObject.getter();
      v90 = v69;
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v89, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock[0] = v93;
        *v92 = v238;
        v94 = v240;
        v95 = sub_1003F3454();
        v97 = v96;
        sub_1003E8ED4(v262, type metadata accessor for ConnectedSession);
        v98 = sub_100002320(v95, v97, aBlock);

        *(v92 + 4) = v98;
        v72 = v254;
        *(v92 + 12) = 256;
        LOBYTE(v97) = *(v257 + *(v94 + 20));
        sub_1003E8ED4(v257, type metadata accessor for ConnectedSession);
        *(v92 + 14) = v97;
        v71 = v255;
        _os_log_impl(&_mh_execute_header, v89, v91, "#### nw_connection for %s %hhu  is still connected.", v92, 0xFu);
        sub_100002A00(v93);

        v69 = v262;

        v244(v72, v250);
        v70 = v239;
        sub_1003E8ED4(v239, type metadata accessor for ConnectedSession);
        v62 = v243;
      }

      else
      {
        sub_1003E8ED4(v87, type metadata accessor for ConnectedSession);

        v244(v72, v250);
        sub_1003E8ED4(v88, type metadata accessor for ConnectedSession);
        sub_1003E8ED4(v90, type metadata accessor for ConnectedSession);
        v70 = v88;
        v62 = v243;
        v69 = v90;
      }

      v68 = v261;
      (*v260)(v71, v261);
    }

    if (v237 <= v66 + 1)
    {
      v75 = v66 + 1;
    }

    else
    {
      v75 = v237;
    }

    v76 = v75 - 1;
    while (1)
    {
      v74 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v74 >= v237)
      {
        v65 = 0;
        v86 = 1;
        v66 = v76;
        v85 = v248;
        v83 = i;
        goto LABEL_32;
      }

      v65 = *&v62[8 * v74];
      ++v66;
      if (v65)
      {
        v73 = v69;
        v66 = v74;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  v99 = v237;
  swift_beginAccess();
  v100 = *(v99 + 88);
  v101 = v261;
  v102 = v247;
  if (!*(v100 + 16) || (v103 = sub_10007CCC8(v247), (v104 & 1) == 0) || (*(*(v100 + 56) + v103) & 1) != 0)
  {
    v105 = v219;
    Logger.init(subsystem:category:)();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 16777472;
      v108[4] = v102;
      _os_log_impl(&_mh_execute_header, v106, v107, "#### Terminating datapath session %hhu for Responder", v108, 5u);
      v101 = v261;
    }

    (*(v251 + 1))(v105, v250);
    v109 = v237;
    swift_beginAccess();
    v110 = *(v109 + 72);
    v111 = *(v110 + 64);
    v262 = (v110 + 64);
    v112 = 1 << *(v110 + 32);
    v113 = -1;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    v114 = v113 & v111;
    i = (v112 + 63) >> 6;
    v257 = (v259 + 32);
    v255 = "wifip2pdCore.Client";
    v256 = v110;

    v115 = 0;
    v254 = 0xD000000000000010;
    v116 = v246;
    v117 = v245;
    while (v114)
    {
      v118 = v115;
LABEL_57:
      v121 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
      v122 = v121 | (v118 << 6);
      v123 = v256;
      v124 = v259;
      v125 = v253;
      (*(v259 + 16))(v253, *(v256 + 48) + *(v259 + 72) * v122, v101);
      v126 = v238;
      sub_1003E8CDC(*(v123 + 56) + v241[9] * v122, v238, type metadata accessor for ListenInBoundConnection);
      v127 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      v128 = *(v127 + 48);
      v129 = *(v124 + 32);
      v130 = v245;
      v129(v245, v125, v101);
      v131 = v126;
      v117 = v130;
      sub_100046A08(v131, v130 + v128, type metadata accessor for ListenInBoundConnection);
      (*(*(v127 - 8) + 56))(v130, 0, 1, v127);
      v102 = v247;
      v116 = v246;
LABEL_58:
      v132 = v244;
      sub_10001CEA8(v117, v244, &qword_1005989B8, &qword_1004B28B8);
      v133 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      if ((*(*(v133 - 8) + 48))(v132, 1, v133) == 1)
      {
        goto LABEL_91;
      }

      v134 = *(v133 + 48);
      v135 = v102;
      v136 = v261;
      v137 = v243;
      (*v257)(v243, v132, v261);
      v138 = v132 + v134;
      v139 = v137;
      v101 = v136;
      v102 = v135;
      sub_100046A08(v138, v116, type metadata accessor for ListenInBoundConnection);
      if (*(v116 + 8) == v135)
      {
        v140 = v237;
        v141 = swift_unownedRetainStrong();
        sub_10040CAE8(v141, v142, v143, v144);

        v145 = WiFiMACAddress.wifiAddress.getter();
        v146 = WiFiMACAddress.wifiAddress.getter();
        sub_10033975C(v135, v145 & 0xFFFFFFFFFFFFLL, v146 & 0xFFFFFFFFFFFFLL, v254, v255 | 0x8000000000000000);

        swift_beginAccess();
        v147 = v236;
        sub_1003AD998(v139, type metadata accessor for ListenInBoundConnection, type metadata accessor for ListenInBoundConnection, sub_100469704, sub_10046D130, v236);
        sub_100016290(v147, &qword_100597588, &qword_1004B1870);
        swift_endAccess();
        swift_beginAccess();
        v148 = sub_10007CCC8(v135);
        if (v149)
        {
          v150 = v148;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v152 = *(v140 + 88);
          v265 = v152;
          *(v140 + 88) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10046D45C();
            v152 = v265;
          }

          sub_10046971C(v150, v152);
          *(v140 + 88) = v152;
        }

        swift_endAccess();
        v101 = v261;
        v116 = v246;
        v117 = v245;
      }

      (*v260)(v139, v101);
      sub_1003E8ED4(v116, type metadata accessor for ListenInBoundConnection);
    }

    if (i <= v115 + 1)
    {
      v119 = v115 + 1;
    }

    else
    {
      v119 = i;
    }

    v120 = v119 - 1;
    while (1)
    {
      v118 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      if (v118 >= i)
      {
        v153 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
        (*(*(v153 - 8) + 56))(v117, 1, 1, v153);
        v114 = 0;
        v115 = v120;
        goto LABEL_58;
      }

      v114 = v262[v118];
      ++v115;
      if (v114)
      {
        v115 = v118;
        goto LABEL_57;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v154 = v101;
  v155 = v237;
  swift_beginAccess();
  v156 = *(v155 + 56);
  v157 = v156 + 64;
  v158 = 1 << *(v156 + 32);
  v159 = -1;
  if (v158 < 64)
  {
    v159 = ~(-1 << v158);
  }

  v160 = v159 & *(v156 + 64);
  v161 = (v158 + 63) >> 6;
  v162 = TupleTypeMetadata2;
  v254 = TupleTypeMetadata2 - 8;
  v262 = (v259 + 32);
  v255 = v216 + 32;
  v246 = &unk_1004B4EC0;
  v245 = (v251 + 8);
  v244 = v264;
  v243 = (v218 + 8);
  v242 = (v217 + 8);
  v256 = v156;

  v163 = 0;
  *&v164 = 16777730;
  v240 = v164;
  v165 = v228;
  for (i = v157; ; v157 = i)
  {
    v167 = v234;
    if (!v160)
    {
      break;
    }

    v168 = v163;
LABEL_80:
    v171 = __clz(__rbit64(v160));
    v160 &= v160 - 1;
    v172 = v171 | (v168 << 6);
    v173 = v256;
    v174 = v259;
    (*(v259 + 16))(v253, *(v256 + 48) + *(v259 + 72) * v172, v154);
    v175 = *(*(v173 + 56) + 8 * v172);
    v176 = *(TupleTypeMetadata2 + 48);
    v177 = *(v174 + 32);
    v162 = TupleTypeMetadata2;
    v167 = v234;
    v177();
    *&v167[v176] = v175;
    v178 = *(v162 - 8);
    (*(v178 + 56))(v167, 0, 1, v162);
    v179 = v175;
    LOBYTE(v102) = v247;
LABEL_81:
    v180 = v229;
    (*v255)(v229, v167, v230);
    if ((*(v178 + 48))(v180, 1, v162) == 1)
    {
LABEL_91:

      return;
    }

    v166 = *&v180[*(v162 + 48)];
    v257 = *v262;
    (v257)(v165, v180, v154);
    type metadata accessor for NANAgentHandler.DataSessionClient(0, v233, v232, v181);
    v182 = swift_dynamicCastClass();
    if (v182)
    {
      v183 = v182;
      if (*(v182 + qword_100598E70) == v102)
      {
        v184 = v227;
        Logger.init(subsystem:category:)();
        v185 = v166;
        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.default.getter();
        v249 = v185;

        LODWORD(v248) = v187;
        v188 = v187;
        v189 = v186;
        v190 = os_log_type_enabled(v186, v188);
        v251 = v166;
        if (v190)
        {
          v191 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          aBlock[0] = v241;
          *v191 = v240;
          *(v191 + 4) = v247;
          *(v191 + 5) = 2080;
          v192 = [v183 description];
          v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v195 = v194;

          v196 = sub_100002320(v193, v195, aBlock);

          *(v191 + 7) = v196;
          v197 = v228;
          v198 = v261;
          _os_log_impl(&_mh_execute_header, v189, v248, "#### Terminating datapath %hhu for %s", v191, 0xFu);
          sub_100002A00(v241);

          (*v245)(v227, v250);
        }

        else
        {

          (*v245)(v184, v250);
          v198 = v154;
          v197 = v228;
        }

        v199 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v200 = v259;
        v201 = v253;
        (*(v259 + 16))(v253, v197, v198);
        v202 = (*(v200 + 80) + 48) & ~*(v200 + 80);
        v203 = swift_allocObject();
        v204 = v232;
        v203[2] = v233;
        v203[3] = v204;
        v203[4] = v183;
        v203[5] = v237;
        (v257)(v203 + v202, v201, v198);
        v264[2] = sub_1003EA0BC;
        v264[3] = v203;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v264[0] = sub_10000C8B8;
        v264[1] = &unk_100579508;
        v257 = _Block_copy(aBlock);
        v205 = v249;
        v206 = v199;

        v207 = v221;
        static DispatchQoS.unspecified.getter();
        v265 = _swiftEmptyArrayStorage;
        sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
        v102 = v223;
        v208 = v224;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v209 = v257;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v209);

        (*v243)(v102, v208);
        (*v242)(v207, v222);

        swift_beginAccess();
        LOBYTE(v102) = v247;
        v210 = sub_10007CCC8(v247);
        v162 = TupleTypeMetadata2;
        if (v211)
        {
          v212 = v210;
          v213 = v237;
          v214 = swift_isUniquelyReferenced_nonNull_native();
          v215 = *(v213 + 88);
          v265 = v215;
          *(v213 + 88) = 0x8000000000000000;
          if (!v214)
          {
            sub_10046D45C();
            v215 = v265;
          }

          sub_10046971C(v212, v215);
          *(v213 + 88) = v215;
        }

        swift_endAccess();
        v154 = v261;
        v165 = v228;
        v166 = v251;
      }
    }

    (*v260)(v165, v154);
  }

  if (v161 <= v163 + 1)
  {
    v169 = v163 + 1;
  }

  else
  {
    v169 = v161;
  }

  v170 = v169 - 1;
  while (1)
  {
    v168 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      break;
    }

    if (v168 >= v161)
    {
      v178 = *(v162 - 8);
      (*(v178 + 56))(v234, 1, 1, v162);
      v160 = 0;
      v163 = v170;
      goto LABEL_81;
    }

    v160 = *(v157 + 8 * v168);
    ++v163;
    if (v160)
    {
      v163 = v168;
      goto LABEL_80;
    }
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_1003E6224()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_100598DC8;
  if ((*(v0 + qword_100598DC8) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1002F9FB0();
      swift_unknownObjectWeakAssign();
    }
  }

  v8 = *(v0 + v5);
  Logger.init(subsystem:category:)();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = 0x676E696E6E7552;
    }

    else
    {
      v11 = 0x646570706F7453;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_100002320(v11, 0xE700000000000000, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "#### Publisher state %s", v12, 0xCu);
    sub_100002A00(v13);
  }

  else
  {
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1003E6480()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = qword_100598D18;
  if ((*(v0 + qword_100598D18) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = qword_100598D20;
      swift_beginAccess();
      *(v0 + v8) = &_swiftEmptyDictionarySingleton;

      sub_1003DA13C();
      sub_100391354();
      swift_unknownObjectWeakAssign();
    }
  }

  v9 = *(v0 + v5);
  Logger.init(subsystem:category:)();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    if (v9)
    {
      v12 = 0x676E696E6E7552;
    }

    else
    {
      v12 = 0x646570706F7453;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    v15 = sub_100002320(v12, 0xE700000000000000, &v18);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "#### subscriber state %s", v13, 0xCu);
    sub_100002A00(v14);
  }

  else
  {
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1003E6710()
{
  if ((*(v0 + qword_100598E98) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_10032DAF8();
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1003E67A8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v124) = a3;
  v128 = a1;
  v129 = a2;
  v5 = *v3;
  v6 = type metadata accessor for Logger();
  v121 = *(v6 - 8);
  v122 = v6;
  __chkstk_darwin();
  v117 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v115 - v8;
  __chkstk_darwin();
  v116 = &v115 - v9;
  __chkstk_darwin();
  v120 = &v115 - v10;
  v123 = type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v119 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 88);
  v13 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for Preferences(0, AssociatedTypeWitness, v16, v17);
  v126 = *(v18 - 8);
  v127 = v18;
  __chkstk_darwin();
  v20 = &v115 - v19;
  v21 = swift_checkMetadataState();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v115 - v23;
  swift_beginAccess();
  v130 = v128;
  v131 = v129;
  type metadata accessor for NANAgentHandler.ActiveClient(0, v13, v12, v25);

  Dictionary.subscript.getter();

  if (!v133)
  {
    return 1;
  }

  v125 = v133;
  v26 = v135;
  v27 = v134;
  v115 = v4;
  v28 = v4[3];
  swift_unownedRetainStrong();
  (*(v22 + 16))(v24, v28 + *(*v28 + 112), v21);

  (*(AssociatedConformanceWitness + 120))(v21, AssociatedConformanceWitness);
  (*(v22 + 8))(v24, v21);
  v29 = v127;
  v30 = Preferences.disableNanMaxCapabilityCheck.getter(v127);
  v126[1](v20, v29);
  if (v30)
  {
    goto LABEL_3;
  }

  v31 = v26;
  v127 = v27;
  if (!v124)
  {
    v61 = swift_unownedRetainStrong();
    v65 = sub_10040CAE8(v61, v62, v63, v64);

    v66 = *(v65 + *(*v65 + 304));
    swift_unownedRetainStrong();

    v67 = *(*v66 + 736);
    swift_beginAccess();
    v68 = v119;
    sub_1003E8CDC(v66 + v67, v119, type metadata accessor for NANDriverCapabilities);

    v69 = v123;
    v70 = *(v68 + *(v123 + 40));
    sub_1003E8ED4(v68, type metadata accessor for NANDriverCapabilities);
    v71 = v70 / 3;
    if (v70 < 12)
    {
      v71 = 4;
    }

    if (v71 >= v70)
    {
      v71 = v70;
    }

    v126 = v71;
    v124 = &unk_1004B4EC0;
    Logger.init(subsystem:category:)();
    v72 = v129;

    v73 = v125;

    v74 = v31;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = v68;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v132 = v79;
      *v78 = 136315906;
      *(v78 + 4) = sub_100002320(v128, v72, &v132);
      *(v78 + 12) = 2048;
      *(v78 + 14) = *(v125 + 2);
      v118 = v74;

      *(v78 + 22) = 2048;
      v80 = v126;
      *(v78 + 24) = v126;
      *(v78 + 32) = 2048;
      v81 = swift_unownedRetainStrong();
      v82 = v76;
      v86 = sub_10040CAE8(v81, v83, v84, v85);

      v87 = *(v86 + *(*v86 + 304));
      swift_unownedRetainStrong();

      v88 = *(*v87 + 736);
      swift_beginAccess();
      sub_1003E8CDC(v87 + v88, v77, type metadata accessor for NANDriverCapabilities);

      v89 = *(v77 + *(v69 + 40));
      sub_1003E8ED4(v77, type metadata accessor for NANDriverCapabilities);
      *(v78 + 34) = v89;

      _os_log_impl(&_mh_execute_header, v75, v82, "#### Client %s Browser Count : %ld/%ld, nancap: %ld", v78, 0x2Au);
      sub_100002A00(v79);
      v73 = v125;

      v59 = v122;
      v60 = *(v121 + 8);
      (v60)(v120, v122);
      v90 = v116;
      v91 = v118;
      v92 = v80;
    }

    else
    {

      v59 = v122;
      v60 = *(v121 + 8);
      (v60)(v120, v122);
      v90 = v116;
      v91 = v74;
      v92 = v126;
    }

    if (*(v73 + 2) < v92)
    {

      goto LABEL_23;
    }

    Logger.init(subsystem:category:)();
    v106 = v129;

    v96 = v91;
    v97 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v97, v107))
    {
      v108 = swift_slowAlloc();
      v125 = v96;
      v126 = v60;
      v109 = v106;
      v110 = v108;
      v111 = swift_slowAlloc();
      v112 = v109;
      v113 = v73;
      v114 = v111;
      v132 = v111;
      *v110 = 136315394;
      *(v110 + 4) = sub_100002320(v128, v112, &v132);
      *(v110 + 12) = 2048;
      *(v110 + 14) = *(v113 + 2);

      _os_log_impl(&_mh_execute_header, v97, v107, "#### Client %s reached MAX Allowed Services : %ld", v110, 0x16u);
      sub_100002A00(v114);

      (v126)(v90, v59);
      return 0;
    }

    goto LABEL_32;
  }

  if (v124 != 1)
  {
LABEL_3:

LABEL_22:

LABEL_23:

    return 1;
  }

  v32 = swift_unownedRetainStrong();
  v36 = sub_10040CAE8(v32, v33, v34, v35);

  v37 = *(v36 + *(*v36 + 304));
  swift_unownedRetainStrong();

  v38 = *(*v37 + 736);
  swift_beginAccess();
  v39 = v119;
  sub_1003E8CDC(v37 + v38, v119, type metadata accessor for NANDriverCapabilities);

  v40 = *(v39 + *(v123 + 36));
  sub_1003E8ED4(v39, type metadata accessor for NANDriverCapabilities);
  v41 = v40 / 3;
  if (v40 < 12)
  {
    v41 = 4;
  }

  if (v41 >= v40)
  {
    v41 = v40;
  }

  v126 = v41;
  v124 = &unk_1004B4EC0;
  v42 = v118;
  Logger.init(subsystem:category:)();
  v43 = v129;

  v44 = v127;

  v45 = v26;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v132 = v49;
    *v48 = 136315906;
    *(v48 + 4) = sub_100002320(v128, v43, &v132);
    *(v48 + 12) = 2048;
    *(v48 + 14) = *(v44 + 16);
    v120 = v45;

    *(v48 + 22) = 2048;
    *(v48 + 24) = v126;
    *(v48 + 32) = 2048;
    v50 = swift_unownedRetainStrong();
    v51 = v47;
    v55 = sub_10040CAE8(v50, v52, v53, v54);

    v56 = *(v55 + *(*v55 + 304));
    swift_unownedRetainStrong();

    v57 = *(*v56 + 736);
    swift_beginAccess();
    sub_1003E8CDC(v56 + v57, v39, type metadata accessor for NANDriverCapabilities);

    v58 = *(v39 + *(v123 + 36));
    sub_1003E8ED4(v39, type metadata accessor for NANDriverCapabilities);
    *(v48 + 34) = v58;

    _os_log_impl(&_mh_execute_header, v46, v51, "#### Client %s Browser Count : %ld/%ld, , nancap: %ld", v48, 0x2Au);
    sub_100002A00(v49);

    v59 = v122;
    v60 = *(v121 + 8);
    (v60)(v118, v122);
    v45 = v120;
  }

  else
  {

    v60 = *(v121 + 8);
    v93 = v42;
    v59 = v122;
    (v60)(v93, v122);
  }

  v90 = v117;
  if (*(v44 + 16) < v126)
  {

    goto LABEL_22;
  }

  Logger.init(subsystem:category:)();
  v95 = v129;

  v96 = v45;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v97, v98))
  {
LABEL_32:

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v105 = v90;
    goto LABEL_33;
  }

  v100 = v44;
  v101 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  v103 = v95;
  v104 = v102;
  v132 = v102;
  *v101 = 136315394;
  *(v101 + 4) = sub_100002320(v128, v103, &v132);
  *(v101 + 12) = 2048;
  *(v101 + 14) = *(v100 + 16);

  _os_log_impl(&_mh_execute_header, v97, v98, "#### Client %s reached MAX Allowed Services : %ld", v101, 0x16u);
  sub_100002A00(v104);

  v105 = v117;
LABEL_33:
  (v60)(v105, v59);
  return 0;
}

uint64_t sub_1003E7784(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{
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
    v18 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100002320(a1, a2, &v19);
    *(v15 + 12) = 2048;
    *(v15 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v12, v13, v18, v15, 0x16u);
    sub_100002A00(v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1003E796C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WABrowserAgentInterface.DescriptorToAgent() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1002CB380;

  return sub_1003B5B60(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1003E7AF8(uint64_t a1)
{
  v4 = *(type metadata accessor for WAListenerAgentInterface.DescriptorToAgent() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10030BDD0;

  return sub_1003C0AD4(a1, v6, v7, v8, v1 + v5, v9);
}

id sub_1003E7C40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  swift_weakInit();
  v7 = qword_100598C58;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  swift_weakAssign();
  v10 = UUID.uuidString.getter();
  v12 = sub_1003ADCFC(v10, v11);

  *&v3[qword_100598C68] = v12;
  v14 = type metadata accessor for NANAgentHandler.Client(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v13);
  v17.receiver = v3;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "init");
  (*(v9 + 8))(a2, v8);
  return v15;
}

void sub_1003E7DC0(uint64_t (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  sub_1003CFF84(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1003E7E84(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v7 = 136315138;
    v8 = sub_1003F3454();
    v10 = v9;
    v20 = 0;
    v21 = 0xE000000000000000;
    v11._countAndFlagsBits = 0x6E696F70646E6520;
    v11._object = 0xEA00000000003A74;
    String.append(_:)(v11);
    v18 = v1;
    type metadata accessor for NWEndpoint();
    _print_unlocked<A, B>(_:_:)();
    v13 = v20;
    v12 = v21;
    v20 = v8;
    v21 = v10;

    v14._countAndFlagsBits = v13;
    v14._object = v12;
    String.append(_:)(v14);

    v15 = sub_100002320(v20, v21, &v22);

    *(v7 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "#### Stopped a resolver session:%s", v7, 0xCu);
    sub_100002A00(v19);

    return (*(v2 + 8))(v4, v18);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_1003E815C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin();
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin();
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for sessionStatus(0);
  __chkstk_darwin();
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WASubscribableService();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin();
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v64 = (&v56 - v12);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v17 = a2;
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v73 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 16778242;
    *(v22 + 4) = [v73 datapathID];

    *(v22 + 5) = 2080;
    v23 = [v73 initiatorDataAddress];
    v24 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    v58 = v13;
    v25 = v24;
    v57 = v14;
    v27 = v26;

    v28 = sub_100002320(v25, v27, aBlock);
    v29 = v71;

    *(v22 + 7) = v28;
    *(v22 + 15) = 2080;
    v74 = a2;
    v30 = v17;
    sub_10005DC58(&qword_100599460, &qword_1004B2DA8);
    v31 = String.init<A>(describing:)();
    v33 = sub_100002320(v31, v32, aBlock);

    *(v22 + 17) = v33;
    *(v22 + 25) = 2048;
    *(v22 + 27) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "#### Publisher Data Confirmed With Peer: DataPathID[%hhu] %s serviceSpecificInfo: %s deviceID: %llu", v22, 0x23u);
    swift_arrayDestroy();

    v18 = v73;

    (*(v57 + 8))(v16, v58);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v29 = v71;
  }

  v34 = v72;
  v35 = *&v72[qword_100598DB8];
  if (!v35)
  {
    goto LABEL_7;
  }

  v36 = v29;
  v37 = *&v72[qword_100598DB8 + 8];

  v38 = [v18 initiatorDataAddress];
  v39 = [v18 datapathID];
  v40 = *&v34[qword_100598DC0];
  if (v40)
  {
    v41 = [v40 serviceName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v60;
    WASubscribableService.init(name:)();
    v43 = v64;
    *v64 = v38;
    *(v43 + 8) = v39;
    v44 = type metadata accessor for ListenInBoundConnection(0);
    (*(v62 + 32))(v43 + *(v44 + 24), v42, v63);
    *(v43 + *(v44 + 28)) = v36;
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = type metadata accessor for WAError.ErrorCode();
    v46 = v61;
    (*(*(v45 - 8) + 56))(v61, 1, 1, v45);
    v35(v43, v46);
    sub_100010520(v35, v37);
    sub_1003E8ED4(v46, type metadata accessor for sessionStatus);
    sub_100016290(v43, &qword_100597588, &qword_1004B1870);
    v18 = v73;
LABEL_7:
    v47 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v48 = swift_allocObject();
    *(v48 + 16) = v34;
    *(v48 + 24) = v18;
    aBlock[4] = sub_1003E9E08;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100579350;
    v49 = _Block_copy(aBlock);
    v50 = v18;
    v51 = v47;
    v52 = v34;
    v53 = v65;
    static DispatchQoS.unspecified.getter();
    v74 = _swiftEmptyArrayStorage;
    sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    v54 = v67;
    v55 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v49);

    (*(v69 + 8))(v54, v55);
    (*(v66 + 8))(v53, v68);

    return;
  }

  __break(1u);
}