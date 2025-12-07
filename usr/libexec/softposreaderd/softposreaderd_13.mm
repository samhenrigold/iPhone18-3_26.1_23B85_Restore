uint64_t sub_1001315B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    static DispatchQoS.userInitiated.getter();
    static DispatchWorkItemFlags.enforceQoS.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v5;
    *(v16 + 24) = a2;
    aBlock[4] = v19;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = v20;
    v17 = _Block_copy(aBlock);
    v18 = v5;

    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100131838(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

void sub_1001318D8(char *a1, NSObject *a2, unint64_t a3, char *a4, void *a5)
{
  v241 = a5;
  v242 = a4;
  v244 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v234 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v233 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for UUID();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v238 = type metadata accessor for TLVTag();
  v237 = *(v238 - 8);
  v15 = __chkstk_darwin(v238);
  v235 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v236 = &v222 - v17;
  v18 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  __chkstk_darwin(v18 - 8);
  v240 = &v222 - v19;
  v243 = type metadata accessor for TLV();
  v20 = *(v243 - 8);
  __chkstk_darwin(v243);
  v239 = &v222 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v22 = v5;
  v23 = *(v5 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  v229 = a1;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_154;
  }

  v24 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v24 != 2 || *(v244 + 16) == *(v244 + 24))
    {
LABEL_13:
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000403C(v38, qword_1003A3A90);
      v244 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v244, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_100008F6C(0xD000000000000029, 0x800000010034F340, &aBlock);
        v42 = "%s receivedData isEmpty";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v244, v39, v42, v40, 0xCu);
        sub_10000959C(v41);

        return;
      }

LABEL_24:
      v46 = v244;

      return;
    }
  }

  else if (v24)
  {
    if (v244 == v244 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v222 = v12;
  v223 = v10;
  v224 = v11;
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000403C(v25, qword_1003A3A90);
  v27 = v244;
  sub_1000094F4(v244, a3);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  sub_100009548(v27, a3);
  v30 = os_log_type_enabled(v28, v29);
  v225 = v8;
  v227 = v23;
  v228 = a3;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v226 = v26;
    v32 = v31;
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    v34 = Data.hexString()();
    v35 = sub_100008F6C(v34._countAndFlagsBits, v34._object, &aBlock);

    *(v32 + 4) = v35;
    v36 = v243;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, v28, v29, "readerSession:receivedData: %s", v32, 0xCu);
    sub_10000959C(v33);

    v26 = v226;
  }

  else
  {

    v36 = v243;
    v37 = v22;
  }

  v43 = v241;
  v44 = v242;
  if ((sub_10011A8C8(0x3830303030303041, 0xEB00000000383835, v242, v241) & 1) == 0)
  {

    v244 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v244, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_100008F6C(v44, v43, &aBlock);
      v42 = "receivedData from unrecognized applet: %s";
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  sub_1000094F4(v244, v228);
  v45 = v240;
  TLV.init(dataRepresentation:)();
  v242 = v37;
  (*(v20 + 56))(v45, 0, 1, v36);
  v244 = v20;
  v47 = v239;
  (*(v20 + 32))(v239, v45, v36);
  v48 = v236;
  TLV.tag.getter();
  v49 = v235;
  static TLVTag.eventStatus.getter();
  sub_100138C60(&qword_10039E260, &type metadata accessor for TLVTag, &protocol conformance descriptor for TLVTag);
  v50 = v238;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v237 + 8);
  v52(v49, v50);
  if ((v51 & 1) == 0)
  {
    static TLVTag.eventOutOpsUird.getter();
    v86 = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v49, v50);
    v55 = v50;
    if ((v86 & 1) == 0)
    {
      static TLVTag.eventTrackError.getter();
      v100 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52(v49, v55);
      if (v100)
      {
        v52(v48, v55);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "HCI event: Track Error Buffer", v103, 2u);
        }

        v104 = TLV.value.getter();
        v106 = v105;
        v107 = sub_1000FAD88(v104, v105);
        sub_100009548(v104, v106);
        v108 = *(v107 + 16);
        v109 = v242;
        v226 = v26;
        if (v108)
        {
          v110 = sub_1000FB10C(v107);
          if (v110)
          {
            v111 = *&v109[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
            *&v109[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v110;
          }

          v112 = *(v107 + 16);
          if (v112)
          {
            aBlock = _swiftEmptyArrayStorage;
            sub_10004E2DC(0, v112, 0);
            v113 = aBlock;
            v114 = (v107 + 40);
            do
            {
              v115 = *(v114 - 1);
              v116 = *v114;
              sub_1000094F4(v115, *v114);
              v117 = Data.hexString()();
              sub_100009548(v115, v116);
              aBlock = v113;
              v119 = v113[2];
              v118 = v113[3];
              if (v119 >= v118 >> 1)
              {
                sub_10004E2DC((v118 > 1), v119 + 1, 1);
                v113 = aBlock;
              }

              v114 += 2;
              v113[2] = (v119 + 1);
              *&v113[2 * v119 + 4] = v117;
              --v112;
            }

            while (v112);

            v109 = v242;
          }

          else
          {

            v113 = _swiftEmptyArrayStorage;
          }

          aBlock = v113;
          sub_100004074(&qword_10039E270, &unk_1002C3BE0);
          sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
          v179 = BidirectionalCollection<>.joined(separator:)();
          v181 = v180;

          v182 = *(*&v109[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics] + 56);
          os_unfair_lock_lock((v182 + 32));
          sub_10011C2EC((v182 + 16), 19, v179, v181);
          os_unfair_lock_unlock((v182 + 32));
        }

        v183 = &v109[OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus];
        if ((v109[OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus + 1] & 1) == 0 && (*v183 & 0xFE) == 6)
        {
          v184 = v233;
          static DispatchQoS.userInitiated.getter();
          v185 = v223;
          static DispatchWorkItemFlags.enforceQoS.getter();
          v186 = swift_allocObject();
          *(v186 + 16) = v109;
          v251 = sub_1001380BC;
          v252 = v186;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_100003974;
          v250 = &unk_100384560;
          v187 = _Block_copy(&aBlock);
          v188 = v109;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v187);
          (*(v234 + 8))(v185, v225);
          (*(v222 + 8))(v184, v224);
          (*(v244 + 8))(v239, v243);

          return;
        }

        v189 = v109;
        v62 = Logger.logObject.getter();
        v190 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v62, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          aBlock = v192;
          *v191 = 136315138;
          v54 = v239;
          if (v183[1])
          {
            v193 = 0xE300000000000000;
            v194 = 4271950;
          }

          else
          {
            v194 = SPRPayAppletStatus.description.getter();
            v193 = v195;
          }

          v196 = sub_100008F6C(v194, v193, &aBlock);

          *(v191 + 4) = v196;
          _os_log_impl(&_mh_execute_header, v62, v190, "No post-processing for last applet status: \n%s", v191, 0xCu);
          sub_10000959C(v192);

          goto LABEL_119;
        }
      }

      else
      {
        static TLVTag.eventSelectPPSEResponse.getter();
        v128 = dispatch thunk of static Equatable.== infix(_:_:)();
        v52(v49, v55);
        v52(v48, v55);
        if (v128)
        {
          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.info.getter();
          v131 = os_log_type_enabled(v129, v130);
          v132 = v244;
          v133 = v243;
          v134 = v239;
          if (v131)
          {
            v135 = swift_slowAlloc();
            *v135 = 0;
            _os_log_impl(&_mh_execute_header, v129, v130, "HCI event: Select PPSE Response", v135, 2u);
          }

          v136 = TLV.value.getter();
          v138 = v137;
          v139 = sub_1000FA3E8(v136, v137);
          sub_100009548(v136, v138);
          sub_100027BBC(v139);

          (*(v132 + 8))(v134, v133);
          return;
        }
      }

      (*(v244 + 8))(v239, v243);
      return;
    }

    v52(v48, v50);
    v87 = v239;
    v88 = TLV.length.getter();
    if (v88 != 30)
    {
      v89 = v242;
      if (v88 == 8)
      {
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        v92 = os_log_type_enabled(v90, v91);
        v93 = v244;
        v94 = v243;
        if (v92)
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "HCI event: OUT_OPS_UIRD: OPS only", v95, 2u);
        }

        v96 = TLV.value.getter();
        v98 = v97;
        v99 = sub_1000FA9C0(v96, v97);
        sub_100009548(v96, v98);
        if ((v99 & 0x100) == 0)
        {
          sub_1001371B0(v99);
          (*(v93 + 8))(v87, v94);
          *(v89 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived) = v99;
          return;
        }
      }

      else
      {
        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.error.getter();
        v166 = os_log_type_enabled(v164, v165);
        v93 = v244;
        v94 = v243;
        if (v166)
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v164, v165, "HCI event: OUT_OPS_UIRD unrecognized length", v167, 2u);
        }
      }

      (*(v93 + 8))(v87, v94);
      return;
    }

    v147 = TLV.value.getter();
    v149 = v148;
    v150 = Data._Representation.subscript.getter();
    v152 = v151;
    sub_100009548(v147, v149);
    v153 = sub_1000FA9C0(v150, v152);
    sub_100009548(v150, v152);
    v56 = v242;
    if ((v153 & 0x100) == 0)
    {
      sub_1001371B0(v153);
      *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived) = v153;
    }

    v65 = TLV.value.getter();
    v155 = v154;
    v156 = sub_1000FAC48(8, v65, v154);
    v158 = v157;
    sub_100009548(v65, v155);
    v250 = &type metadata for Data;
    v251 = &protocol witness table for Data;
    aBlock = v156;
    v248 = v158;
    v159 = sub_10000BE18(&aBlock, &type metadata for Data);
    v160 = *v159;
    v161 = v159[1];
    v162 = v161 >> 62;
    if ((v161 >> 62) <= 1)
    {
      if (!v162)
      {
        v245[0] = *v159;
        LOWORD(v245[1]) = v161;
        BYTE2(v245[1]) = BYTE2(v161);
        BYTE3(v245[1]) = BYTE3(v161);
        BYTE4(v245[1]) = BYTE4(v161);
        BYTE5(v245[1]) = BYTE5(v161);
        v163 = v245 + BYTE6(v161);
LABEL_140:
        sub_10014B4B8(v245, v163, v246);
LABEL_141:
        v209 = v246[0];
        v208 = v246[1];
        sub_10000959C(&aBlock);
        v210 = sub_1000FF07C(v209, v208);
        if (v211)
        {
          (*(v244 + 8))(v87, v243);
          sub_100009548(v209, v208);
          return;
        }

        v212 = v210;
        sub_100100D88(v210, 0);
        if (v212 == 10)
        {
          v213 = sub_1000207FC(4046, 0, 0, 0);
          sub_100009548(v209, v208);
          (*(v244 + 8))(v87, v243);
          v214 = *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v213;

          return;
        }

        (*(v244 + 8))(v87, v243);
        sub_100009548(v209, v208);
        if (v212 != 8)
        {
          return;
        }

        goto LABEL_150;
      }

      v200 = v56;
      v56 = v160;
      v201 = v160 >> 32;
      v26 = v201 - v56;
      if (v201 < v56)
      {
        __break(1u);
        goto LABEL_159;
      }

      v202 = __DataStorage._bytes.getter();
      if (!v202)
      {
        goto LABEL_131;
      }

      v203 = __DataStorage._offset.getter();
      if (!__OFSUB__(v56, v203))
      {
        v202 += v56 - v203;
LABEL_131:
        v56 = v200;
        v204 = __DataStorage._length.getter();
        if (v204 >= v26)
        {
          v205 = v26;
        }

        else
        {
          v205 = v204;
        }

        v206 = &v202[v205];
        if (v202)
        {
          v207 = v206;
        }

        else
        {
          v207 = 0;
        }

        sub_10014B4B8(v202, v207, v246);
LABEL_138:
        v87 = v239;
        goto LABEL_141;
      }

LABEL_162:
      __break(1u);
      return;
    }

    if (v162 != 2)
    {
      memset(v245, 0, 14);
      v163 = v245;
      goto LABEL_140;
    }

    v168 = v56;
    v169 = *(v160 + 16);
    v170 = *(v160 + 24);
    v171 = __DataStorage._bytes.getter();
    if (v171)
    {
      v172 = __DataStorage._offset.getter();
      if (__OFSUB__(v169, v172))
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v171 += v169 - v172;
    }

    v173 = __OFSUB__(v170, v169);
    v174 = v170 - v169;
    if (!v173)
    {
      v175 = __DataStorage._length.getter();
      if (v175 >= v174)
      {
        v176 = v174;
      }

      else
      {
        v176 = v175;
      }

      v177 = &v171[v176];
      if (v171)
      {
        v178 = v177;
      }

      else
      {
        v178 = 0;
      }

      sub_10014B4B8(v171, v178, v246);
      v56 = v168;
      goto LABEL_138;
    }

    __break(1u);
    goto LABEL_161;
  }

  v52(v48, v50);
  v53 = TLV.length.getter();
  v54 = v47;
  v55 = v227;
  v56 = v242;
  if (v53 == 1)
  {
    goto LABEL_31;
  }

  if (v53 == 22)
  {
    v120 = TLV.value.getter();
    v122 = v121;
    v123 = sub_1000FF07C(v120, v121);
    v125 = v124;
    sub_100009548(v120, v122);
    if (v125)
    {
LABEL_121:
      (*(v244 + 8))(v54, v243);
      return;
    }

    sub_100100D88(v123, 0);
    if (v123 == 10)
    {
      v126 = sub_1000207FC(4046, 0, 0, 0);
      (*(v244 + 8))(v54, v243);
      v127 = *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v126;

      return;
    }

    (*(v244 + 8))(v54, v243);
    if (v123 != 8)
    {
      return;
    }

LABEL_150:
    *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone) = 1;
    *(*(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 135) = 1;
    return;
  }

  if (v53 != 3)
  {
    v62 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "HCI event: Status: Unrecognized length";
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_31:
  v57 = TLV.value.getter();
  v59 = v58;
  v60 = sub_10011AA24(v57, v58);
  sub_100009548(v57, v59);
  if ((v60 & 0x100) != 0)
  {
    v62 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "Could not get status byte from HCI event: Status";
      goto LABEL_77;
    }

LABEL_120:

    goto LABEL_121;
  }

  v61 = (v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus);
  *v61 = v60;
  v61[1] = 0;
  v62 = Logger.logObject.getter();
  if (v60 <= 0x14u)
  {
    if (v60 == 6)
    {
      v140 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v62, v140))
      {
        goto LABEL_120;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "HCI event: Status: Transaction Complete <--- --- ---";
      goto LABEL_77;
    }

    if (v60 != 7)
    {
LABEL_147:
      v215 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v62, v215))
      {
        goto LABEL_120;
      }

      v216 = swift_slowAlloc();
      *v216 = 16777472;
      *(v216 + 4) = v60;
      v142 = "HCI event: Unknown Status: %hhu";
      v143 = v215;
      v144 = v62;
      v145 = v216;
      v146 = 5;
      goto LABEL_78;
    }

    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "HCI event: Status: Transaction Error <--- --- ---";
      goto LABEL_77;
    }

    goto LABEL_120;
  }

  if (v60 != 21)
  {
    if (v60 != 29)
    {
      if (v60 == 30)
      {
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "HCI event: Status: Target Discovered", v64, 2u);
        }

        sub_100100D88(1, 0);
        v65 = *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
        sub_10011BBA0(&off_10037EDE8);
        sub_10011B164(&off_10037EDC0);
        if (qword_10039D630 == -1)
        {
LABEL_39:
          v66 = type metadata accessor for OSSignposter();
          sub_10000403C(v66, qword_1003A3AA8);
          sub_100187018(&off_10037EE10, 0xD000000000000012, 0x800000010034F2C0, "reader-ese_reader_mode_polling", 30, 2, 0xD000000000000013, 0x800000010034F300, v229);
          v67 = *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted) == 1;
          v226 = v26;
          v240 = v65;
          if (v67)
          {
            sub_100186BE8("reader-between_payment_reads", 28, 2, v55, 0xD00000000000001FLL, 0x800000010034F320);
            v68 = *(v65 + 56);
            os_unfair_lock_lock(v68 + 8);
            sub_10011D358(&v68[4], 15);
            os_unfair_lock_unlock(v68 + 8);
          }

          v69 = *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24);
          v70 = *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32);
          v241 = sub_10000BE18((v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor), v69);
          sub_100004074(&unk_1003A3C10, &unk_1002C3760);
          inited = swift_initStackObject();
          v238 = xmmword_1002C1660;
          *(inited + 16) = xmmword_1002C1660;
          strcpy((inited + 32), "transactionId");
          *(inited + 46) = -4864;
          v72 = v231;
          v73 = v230;
          v74 = v232;
          (*(v231 + 16))(v230, *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v232);
          v75 = UUID.uuidString.getter();
          v77 = v76;
          (*(v72 + 8))(v73, v74);
          *(inited + 48) = v75;
          *(inited + 56) = v77;
          v78 = sub_100183EFC(inited);
          swift_setDeallocating();
          sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
          (*(v70 + 8))(12, 2, v78, v69, v70);

          a1 = v239;
          if (TLV.length.getter() != 3)
          {
            v20 = v244;
LABEL_152:
            (*(v20 + 8))(a1, v243);
            return;
          }

          v79 = TLV.value.getter();
          v81 = v80;
          v11 = Data.at(index:)();
          v10 = v82;
          sub_100009548(v79, v81);
          v20 = v244;
          if (v10 >> 60 == 15)
          {
LABEL_44:
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              *v85 = 0;
              _os_log_impl(&_mh_execute_header, v83, v84, "Could not get or unexpected polling type in HCI event", v85, 2u);
            }

            goto LABEL_152;
          }

LABEL_154:
          v217 = Data.toUInt8()();
          sub_10001A074(v11, v10);
          if (v217 == 17 || v217 == 255 || v217 == 19)
          {
            sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
            v218 = swift_initStackObject();
            *(v218 + 16) = v238;
            *(v218 + 32) = 24;
            v219 = v218 + 32;
            *(v218 + 64) = &type metadata for UInt8;
            *(v218 + 40) = v217;
            sub_10018399C(v218);
            swift_setDeallocating();
            v220 = sub_10000BD44(v219, &qword_10039EC60, &qword_1002C1F80);
            v221 = *(v240 + 7);
            __chkstk_darwin(v220);
            os_unfair_lock_lock((v221 + 32));
            sub_100117CD8((v221 + 16));
            os_unfair_lock_unlock((v221 + 32));

            (*(v20 + 8))(a1, v243);
            return;
          }

          goto LABEL_44;
        }

LABEL_159:
        swift_once();
        goto LABEL_39;
      }

      goto LABEL_147;
    }

    v140 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v62, v140))
    {
      goto LABEL_120;
    }

    v141 = swift_slowAlloc();
    *v141 = 0;
    v142 = "HCI event: Status: Multiple Card";
LABEL_77:
    v143 = v140;
    v144 = v62;
    v145 = v141;
    v146 = 2;
LABEL_78:
    _os_log_impl(&_mh_execute_header, v144, v143, v142, v145, v146);
LABEL_119:

    goto LABEL_120;
  }

  v197 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v197))
  {
    v198 = swift_slowAlloc();
    *v198 = 0;
    _os_log_impl(&_mh_execute_header, v62, v197, "HCI event: Status: Remove Card", v198, 2u);
  }

  v199 = *(*(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
  os_unfair_lock_lock(v199 + 8);
  sub_10011D358(&v199[4], 6);
  os_unfair_lock_unlock(v199 + 8);
  (*(v244 + 8))(v54, v243);
  *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard) = 1;
  *(v56 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent) = 0;
}

void sub_1001337FC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus + 1))
  {
    __break(1u);
  }

  else
  {
    sub_100133910(*(result + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus));
    sub_100136B9C();
  }
}

void sub_100133910(int a1)
{
  v2 = v1;
  v308 = a1;
  v3 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v4 = __chkstk_darwin(v3 - 8);
  v281 = &v275 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v286 = &v275 - v7;
  v8 = __chkstk_darwin(v6);
  v285 = &v275 - v9;
  v10 = __chkstk_darwin(v8);
  v279 = &v275 - v11;
  v12 = __chkstk_darwin(v10);
  v283 = &v275 - v13;
  v14 = __chkstk_darwin(v12);
  v276 = &v275 - v15;
  v16 = __chkstk_darwin(v14);
  v280 = &v275 - v17;
  __chkstk_darwin(v16);
  v284 = &v275 - v18;
  v292 = type metadata accessor for TLV();
  v296 = *(v292 - 8);
  v19 = __chkstk_darwin(v292);
  v287 = &v275 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v275 = &v275 - v22;
  v23 = __chkstk_darwin(v21);
  v278 = &v275 - v24;
  v25 = __chkstk_darwin(v23);
  v277 = &v275 - v26;
  __chkstk_darwin(v25);
  v282 = &v275 - v27;
  v291 = type metadata accessor for Data.Endianness();
  v290 = *(v291 - 1);
  __chkstk_darwin(v291);
  v289 = &v275 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TLVTag();
  v306 = *(v307 - 8);
  v29 = __chkstk_darwin(v307);
  v295 = &v275 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v288 = &v275 - v32;
  v33 = __chkstk_darwin(v31);
  v297 = (&v275 - v34);
  __chkstk_darwin(v33);
  v301 = &v275 - v35;
  v36 = type metadata accessor for OSSignpostError();
  v294 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v275 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OSSignpostID();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v43 = &v275 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v275 - v45;
  __chkstk_darwin(v44);
  v48 = &v275 - v47;
  v49 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
  sub_10011BBA0(&off_10037EE88);
  v302 = v49;
  sub_10011B164(&off_10037EE60);
  if (qword_10039D630 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v50 = type metadata accessor for OSSignposter();
    v51 = sub_10000403C(v50, qword_1003A3AA8);
    v309 = v2;
    v52 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    OSSignposter.logHandle.getter();
    swift_unknownObjectRetain();
    v310 = v52;
    OSSignpostID.init(log:object:)();
    v53 = *(v40 + 16);
    v300 = v40 + 16;
    v299 = v53;
    v53(v46, v48, v39);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v304 = v46;
    v54 = OSSignpostIntervalState.init(id:isOpen:)();
    v303 = v51;
    v55 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    LODWORD(v293) = static os_signpost_type_t.end.getter();
    v56 = OS_os_log.signpostsEnabled.getter();
    v305 = v39;
    v298 = v54;
    if (v56)
    {

      checkForErrorAndConsumeState(state:)();

      v57 = v294;
      if ((*(v294 + 11))(v38, v36) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v58 = 0;
        v59 = 0;
        v294 = "[Error] Interval already ended";
      }

      else
      {
        (*(v57 + 1))(v38, v36);
        v294 = "%s";
        v59 = 2;
        v58 = 1;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v312 = v62;
      *v61 = v59;
      *(v61 + 1) = v58;
      *(v61 + 2) = 2080;
      *(v61 + 4) = sub_100008F6C(0xD000000000000010, 0x800000010034F220, &v312);
      v63 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, v293, v63, "reader-payment_read", v294, v61, 0xCu);
      sub_10000959C(v62);

      v60 = *(v40 + 8);
      v60(v43, v305);
    }

    else
    {

      v60 = *(v40 + 8);
      v60(v43, v39);
    }

    v64 = OSSignposter.logHandle.getter();
    v65 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v312 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_100008F6C(0xD000000000000026, 0x800000010034F1F0, &v312);
      v68 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, v65, v68, "reader-postProcessing", "%s", v66, 0xCu);
      sub_10000959C(v67);
    }

    v69 = v309;
    v70 = v305;
    v299(v304, v48, v305);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();

    v60(v48, v70);
    type metadata accessor for SPRPayAppletStatus(0);
    *(&v313 + 1) = v71;
    LOBYTE(v312) = v308;
    v72 = v308;
    v73 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
    swift_beginAccess();
    sub_10002CFD4(&v312, 0xD000000000000014, 0x800000010034A420);
    swift_endAccess();
    if (v72 == 6)
    {
      v74 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent;
      v75 = v307;
      if ((*(v69 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent) & 1) == 0 && (*(*(v69 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 72) == 32 || *(v69 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived) == 48))
      {
        sub_100100D88(9, 0);
        *(v69 + v74) = 1;
        v77 = *(v302 + 56);
        os_unfair_lock_lock(v77 + 8);
        v76 = 0;
        sub_10011D358(&v77[4], 5);
        os_unfair_lock_unlock(v77 + 8);
        sub_100186BE8("reader-payment_read_success", 27, 2, v310, 0xD00000000000001CLL, 0x800000010034F150);
      }

      else
      {
        v76 = 0;
      }
    }

    else
    {
      v76 = 0;
      v75 = v307;
    }

    v78 = v301;
    static TLVTag.transactionResultData.getter();
    v79 = sub_10012253C(v78, 0, 0);
    v304 = v73;
    v48 = v79;
    v81 = v80;
    v305 = *(v306 + 8);
    v305(v78, v75);
    *(&v313 + 1) = &type metadata for Data;
    *&v312 = v48;
    *(&v312 + 1) = v81;
    swift_beginAccess();
    sub_1000094F4(v48, v81);
    sub_10002CFD4(&v312, 0xD000000000000015, 0x800000010034A3E0);
    swift_endAccess();
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    v83 = sub_10000403C(v82, qword_1003A3A90);
    sub_1000094F4(v48, v81);
    v303 = v83;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    sub_100009548(v48, v81);
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v312 = v87;
      *v86 = 136315138;
      v88 = Data.hexString()();
      v89 = sub_100008F6C(v88._countAndFlagsBits, v88._object, &v312);

      *(v86 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v84, v85, "DF81FE: %s", v86, 0xCu);
      sub_10000959C(v87);
    }

    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1002C1660;
    *(v90 + 32) = 26;
    v91 = v90 + 32;
    v92 = v81 >> 62;
    if ((v81 >> 62) > 1)
    {
      if (v92 != 2)
      {
        v93 = 0;
        goto LABEL_31;
      }

      v95 = *(v48 + 2);
      v94 = *(v48 + 3);
      v96 = __OFSUB__(v94, v95);
      v93 = v94 - v95;
      if (!v96)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!v92)
    {
      v93 = BYTE6(v81);
      goto LABEL_31;
    }

    LODWORD(v93) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
      __break(1u);
      goto LABEL_137;
    }

    v93 = v93;
LABEL_31:
    v97 = v308;
    *(v90 + 64) = &type metadata for Int;
    *(v90 + 40) = v93;
    v98 = sub_10018399C(v90);
    swift_setDeallocating();
    sub_10000BD44(v91, &qword_10039EC60, &qword_1002C1F80);
    v99 = swift_deallocClassInstance();
    v100 = v302;
    v101 = *(v302 + 56);
    __chkstk_darwin(v99);
    *(&v275 - 2) = v98;
    os_unfair_lock_lock((v101 + 32));
    sub_100117CD8((v101 + 16));
    os_unfair_lock_unlock((v101 + 32));

    v102 = v309;
    swift_beginAccess();
    v103 = sub_1000FBA98(v48, v81, v102 + v73, v100);
    v40 = v104;
    v38 = v105;
    LODWORD(v301) = v106;
    swift_endAccess();
    sub_1001371B0(v103);
    sub_100027EDC(v103);
    if (v97 == 7 && (v103 & 0x1FF00) == 0x700)
    {
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "Error Indication: L2: MAGSTRIPE NOT SUPPORTED", v109, 2u);
      }

      v110 = sub_1000207FC(4035, 0, 0, 0);
      v111 = *(v309 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      *(v309 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v110;
    }

    v39 = 0x1003A3000;
    if (!v38)
    {
      goto LABEL_58;
    }

    v46 = *(v309 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
    v112 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs;
    v113 = *(*(v46 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs) + 16);
    v300 = 0;
    if (!v113)
    {
      break;
    }

    *(&v313 + 1) = &type metadata for Bool;
    LOBYTE(v312) = 1;
    v2 = v304;
    swift_beginAccess();

    sub_10002CFD4(&v312, 0xD000000000000012, 0x800000010034A440);
    swift_endAccess();
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "isPINBypassEnabled true", v39, 2u);
    }

    v299 = v46;
    v43 = *(v46 + v112);
    v116 = *(v43 + 2);

    v117 = (v43 + 40);
    v36 = -v116;
    v46 = -1;
    while (1)
    {
      if (v36 + v46 == -1)
      {

LABEL_49:
        v46 = v299;
        goto LABEL_50;
      }

      if (++v46 >= *(v43 + 2))
      {
        break;
      }

      v2 = (v117 + 2);
      v119 = *(v117 - 1);
      v118 = *v117;

      v120._countAndFlagsBits = v119;
      v120._object = v118;
      v39 = String.hasPrefix(_:)(v120);

      v117 = v2;
      if (v39)
      {

        *(&v313 + 1) = &type metadata for Bool;
        LOBYTE(v312) = 1;
        swift_beginAccess();
        sub_10002CFD4(&v312, 0xD000000000000012, 0x800000010034A460);
        swift_endAccess();
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v121, v122))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v121, v122, "isPINBypassAllowed true", v39, 2u);
        }

        *(v302 + 124) = 1;
        goto LABEL_49;
      }
    }

LABEL_134:
    __break(1u);
LABEL_135:
    swift_once();
  }

LABEL_50:
  v43 = *(v46 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs);
  v123 = *(v43 + 2);

  v124 = (v43 + 40);
  v36 = -v123;
  v2 = -1;
  do
  {
    if (v36 + v2 == -1)
    {

      v76 = v300;
      v39 = &unk_1003A3000;
      goto LABEL_58;
    }

    if (++v2 >= *(v43 + 2))
    {
      __break(1u);
      goto LABEL_134;
    }

    v46 = (v124 + 2);
    v126 = *(v124 - 1);
    v125 = *v124;

    v127._countAndFlagsBits = v126;
    v127._object = v125;
    v39 = String.hasPrefix(_:)(v127);

    v124 = v46;
  }

  while ((v39 & 1) == 0);

  v39 = &unk_1003A3000;
  *(v309 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackFlowEnabled) = 1;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  v130 = os_log_type_enabled(v128, v129);
  v76 = v300;
  if (v130)
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&_mh_execute_header, v128, v129, "fallbackFlowEnabled true", v131, 2u);
  }

LABEL_58:
  v132 = *(v309 + *(v39 + 2960));

  if (v132 != 1)
  {
LABEL_62:
    sub_100009548(v48, v81);
    v134 = v309;
    v135 = &unk_10039D000;
    goto LABEL_66;
  }

  if (v301 & 1) == 0 || (v133 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted, (*(v309 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted)))
  {
    if ((v301 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "forFallback: true", v138, 2u);
    }

    *(&v313 + 1) = &type metadata for Bool;
    LOBYTE(v312) = 1;
    v134 = v309;
    swift_beginAccess();
    sub_10002CFD4(&v312, 0x626C6C6146726F66, 0xEB000000006B6361);
    swift_endAccess();
    sub_100009548(v48, v81);
    *(v302 + 128) = 1;
    v135 = &unk_10039D000;
LABEL_66:
    sub_10012316C();
    if (v76)
    {
      if (v135[197] != -1)
      {
        swift_once();
      }

      v141 = type metadata accessor for Logger();
      sub_10000403C(v141, qword_1003A3A90);
      swift_errorRetain();
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();

      v144 = os_log_type_enabled(v142, v143);
      v145 = v297;
      if (v144)
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *&v312 = v147;
        *v146 = 136315138;
        v311 = v76;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v148 = String.init<A>(describing:)();
        v150 = sub_100008F6C(v148, v149, &v312);

        *(v146 + 4) = v150;
        _os_log_impl(&_mh_execute_header, v142, v143, "Failed to get payment application type: %s", v146, 0xCu);
        sub_10000959C(v147);
      }

      else
      {
      }

      v165 = v307;
    }

    else
    {
      v151 = v139;
      v152 = v140;
      v153 = v134;
      LODWORD(v303) = v308;
      sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 9;
      v155 = v290;
      v156 = v289;
      v157 = v291;
      (*(v290 + 104))(v289, enum case for Data.Endianness.bigEndian(_:), v291);
      v158 = Data.toUInt16(endianness:)();
      (*(v155 + 8))(v156, v157);
      *(inited + 64) = &type metadata for UInt16;
      *(inited + 40) = v158;
      v159 = sub_10018399C(inited);
      swift_setDeallocating();
      v160 = sub_10000BD44(inited + 32, &qword_10039EC60, &qword_1002C1F80);
      v161 = *(v302 + 56);
      __chkstk_darwin(v160);
      *(&v275 - 2) = v159;
      os_unfair_lock_lock((v161 + 32));
      sub_100117CD8((v161 + 16));
      os_unfair_lock_unlock((v161 + 32));

      v162 = Data._Representation.subscript.getter();
      v163 = SPRPaymentApplicationType.description.getter();
      *(&v313 + 1) = &type metadata for String;
      *&v312 = v163;
      *(&v312 + 1) = v164;
      swift_beginAccess();
      sub_10002CFD4(&v312, 0x7954707041796170, 0xEA00000000006570);
      swift_endAccess();
      if (v303 == 7)
      {
        v165 = v307;
        v145 = v297;
        if (v162)
        {
          sub_100009548(v151, v152);
        }

        else
        {
          v166 = sub_1000207FC(4006, 0, 0, 0);
          sub_100009548(v151, v152);
          v167 = *(v153 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          *(v153 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v166;
        }
      }

      else
      {
        sub_100009548(v151, v152);
        v165 = v307;
        v145 = v297;
      }
    }

    static TLVTag.trxCipherAndKeyBlobs.getter();
    v168 = sub_10012253C(v145, 0, 0);
    v170 = v169;
    v171 = (v306 + 8);
    v172 = v168;
    v173 = v305;
    v305(v145, v165);
    v174 = static TLV.decode(from:)();
    v303 = 0;
    v299 = v172;
    v300 = v170;
    v298 = v174;
    *&v312 = v174;
    v175 = v288;
    static TLVTag.cipherBlob.getter();
    v176 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
    v177 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0, &protocol conformance descriptor for [A]);
    v178 = v284;
    v294 = v176;
    v293 = v177;
    Collection<>.first(tag:)();
    v173(v175, v165);
    v179 = v296;
    v180 = *(v296 + 48);
    v181 = v292;
    v182 = v180(v178, 1, v292);
    v305 = v173;
    v297 = v180;
    v301 = v171;
    if (v182 == 1)
    {
      sub_10000BD44(v178, &unk_10039E210, &unk_1002C65B0);
      goto LABEL_100;
    }

    v183 = *(v179 + 32);
    v184 = v282;
    v291 = v183;
    (v183)(v282, v178, v181);
    static TLVTag.blobDefinition.getter();
    v185 = v280;
    TLV.firstChild(tag:)();
    v173(v175, v165);
    if (v180(v185, 1, v181) == 1)
    {
      (*(v296 + 8))(v184, v181);
      sub_10000BD44(v185, &unk_10039E210, &unk_1002C65B0);
      v165 = v307;
      v173 = v305;
      goto LABEL_100;
    }

    (v291)(v277, v185, v181);
    v189 = TLV.dataRepresentation.getter();
    *(&v313 + 1) = &type metadata for Data;
    *&v312 = v189;
    *(&v312 + 1) = v190;
    swift_beginAccess();
    sub_10002CFD4(&v312, 0x6568706943787274, 0xED0000626F6C4272);
    swift_endAccess();
    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    v191 = swift_initStackObject();
    *(v191 + 16) = xmmword_1002C1660;
    *(v191 + 32) = 25;
    static TLVTag.cipheredData.getter();
    v192 = v276;
    TLV.firstChild(tag:)();
    v165 = v307;
    v305(v175, v307);
    if (v180(v192, 1, v181) == 1)
    {
      sub_10000BD44(v192, &unk_10039E210, &unk_1002C65B0);
      *(v191 + 40) = 0u;
      *(v191 + 56) = 0u;
      v193 = v296;
LABEL_99:
      v202 = sub_10018399C(v191);
      swift_setDeallocating();
      v203 = sub_10000BD44(v191 + 32, &qword_10039EC60, &qword_1002C1F80);
      v204 = *(v302 + 56);
      __chkstk_darwin(v203);
      *(&v275 - 2) = v202;
      os_unfair_lock_lock((v204 + 32));
      v205 = v303;
      sub_100117CD8((v204 + 16));
      v303 = v205;
      os_unfair_lock_unlock((v204 + 32));

      v206 = *(v193 + 8);
      v181 = v292;
      v206(v277, v292);
      v206(v282, v181);
      v175 = v288;
      v173 = v305;
LABEL_100:
      *&v312 = v298;
      static TLVTag.keyBlob.getter();
      v207 = v283;
      Collection<>.first(tag:)();
      v173(v175, v165);

      v208 = v297;
      if (v297(v207, 1, v181) == 1)
      {
        sub_100009548(v299, v300);
        sub_10000BD44(v207, &unk_10039E210, &unk_1002C65B0);
        v209 = v309;
      }

      else
      {
        v210 = v173;
        v211 = v278;
        v302 = *(v296 + 32);
        (v302)(v278, v207, v181);
        static TLVTag.blobDefinition.getter();
        v212 = v279;
        v213 = v208;
        TLV.firstChild(tag:)();
        v214 = v212;
        v210(v175, v165);
        if (v213(v212, 1, v181) == 1)
        {
          (*(v296 + 8))(v211, v181);
          sub_100009548(v299, v300);
          sub_10000BD44(v212, &unk_10039E210, &unk_1002C65B0);
          v209 = v309;
        }

        else
        {
          v215 = v275;
          (v302)(v275, v214, v181);
          v216 = TLV.dataRepresentation.getter();
          *(&v313 + 1) = &type metadata for Data;
          *&v312 = v216;
          *(&v312 + 1) = v217;
          v209 = v309;
          swift_beginAccess();
          sub_10002CFD4(&v312, 0x6C4279654B787274, 0xEA0000000000626FLL);
          swift_endAccess();
          sub_100009548(v299, v300);
          v218 = *(v296 + 8);
          v218(v215, v181);
          v218(v211, v181);
        }

        v165 = v307;
      }

      v219 = v295;
      static TLVTag.analyticsData.getter();
      v220 = v303;
      v221 = sub_10012253C(v219, 0, 0);
      if (v220)
      {
        v305(v219, v165);
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v223 = type metadata accessor for Logger();
        sub_10000403C(v223, qword_1003A3A90);
        swift_errorRetain();
        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v224, v225))
        {
          v226 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          *&v312 = v227;
          *v226 = 136315138;
          v311 = v220;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v228 = String.init<A>(describing:)();
          v230 = sub_100008F6C(v228, v229, &v312);

          *(v226 + 4) = v230;
          _os_log_impl(&_mh_execute_header, v224, v225, "failed to get pay applet analytics data: %s", v226, 0xCu);
          sub_10000959C(v227);
        }

        else
        {
        }
      }

      else
      {
        v231 = v219;
        v232 = v221;
        v233 = v222;
        v305(v231, v165);
        sub_100137318(v232, v233);
        sub_100009548(v232, v233);
      }

      if (qword_10039D3F0 != -1)
      {
        swift_once();
      }

      v234 = sub_100123E34(0, qword_1003A6AF0, *algn_1003A6AF8, &unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770);
      *(&v313 + 1) = &type metadata for Data;
      *&v312 = v234;
      *(&v312 + 1) = v235;
      v236 = v234;
      v237 = v235;
      swift_beginAccess();
      sub_1000094F4(v236, v237);
      sub_10002CFD4(&v312, 0xD00000000000001CLL, 0x800000010034A2F0);
      swift_endAccess();
      sub_100009548(v236, v237);
      v238 = [*(*sub_10000BE18((v209 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureElement) *(v209 + OBJC:"ecdsaCertificate" IVAR:? :? :? :? TtC14softposreaderd13ReadOperation:?secureElement + 24)) + 24)];
      if (v238)
      {
        v239 = v238;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v240 = Data.init(hexString:)();
        if (v241 >> 60 == 15)
        {
          v240 = 0;
          v241 = 0;
          v242 = 0;
          *&v313 = 0;
        }

        else
        {
          v242 = &type metadata for Data;
        }

        *&v312 = v240;
        *(&v312 + 1) = v241;
        *(&v313 + 1) = v242;
        swift_beginAccess();
        sub_10002CFD4(&v312, 0xD000000000000010, 0x800000010034A340);
        swift_endAccess();
        v243 = sub_100124DB4();
        v245 = v244;
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v246 = type metadata accessor for Logger();
        sub_10000403C(v246, qword_1003A3A90);
        sub_1000094F4(v243, v245);
        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.default.getter();
        sub_100009548(v243, v245);
        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          *&v312 = v250;
          *v249 = 136446210;
          v251 = Data.hexString()();
          v252 = sub_100008F6C(v251._countAndFlagsBits, v251._object, &v312);

          *(v249 + 4) = v252;
          v209 = v309;
          _os_log_impl(&_mh_execute_header, v247, v248, "KEK Hashes: %{public}s", v249, 0xCu);
          sub_10000959C(v250);
        }

        v253 = v287;
        v254 = v285;
        v255 = v305;
        sub_1000094F4(v243, v245);
        TLV.init(dataRepresentation:)();
        v256 = v296;
        v257 = v292;
        (*(v296 + 56))(v254, 0, 1, v292);
        (*(v256 + 32))(v253, v254, v257);
        v258 = v288;
        static TLVTag.transactionKEKHash.getter();
        TLV.firstChild(tag:)();
        v259 = v286;
        v310 = v306 + 8;
        v255(v258, v307);
        v260 = *(v256 + 48);
        v261 = v260(v259, 1, v257);
        v305 = v255;
        if (v261 == 1)
        {
          sub_10000BD44(v259, &unk_10039E210, &unk_1002C65B0);
          v312 = 0u;
          v313 = 0u;
        }

        else
        {
          v262 = TLV.hexStringValue.getter();
          *(&v313 + 1) = &type metadata for String;
          *&v312 = v262;
          *(&v312 + 1) = v263;
          (*(v256 + 8))(v259, v257);
        }

        v264 = v257;
        swift_beginAccess();
        sub_10002CFD4(&v312, 0x61486B654B787274, 0xEA00000000006873);
        swift_endAccess();
        v265 = v288;
        static TLVTag.pinKEKHash.getter();
        v266 = v281;
        v267 = v287;
        TLV.firstChild(tag:)();
        v305(v265, v307);
        if (v260(v266, 1, v264) == 1)
        {
          (*(v296 + 8))(v267, v264);
          sub_100009548(v243, v245);
          sub_10000BD44(v266, &unk_10039E210, &unk_1002C65B0);
        }

        else
        {
          v268 = TLV.hexStringValue.getter();
          v270 = v269;
          v271 = *(v296 + 8);
          v271(v266, v264);
          *(&v313 + 1) = &type metadata for String;
          *&v312 = v268;
          *(&v312 + 1) = v270;
          swift_beginAccess();
          sub_10002CFD4(&v312, 0x61486B654B6E6970, 0xEA00000000006873);
          *(&v313 + 1) = &type metadata for Bool;
          LOBYTE(v312) = 1;
          sub_10002CFD4(&v312, 0x7075536E69507369, 0xEE00646574726F70);
          swift_endAccess();
          sub_100009548(v243, v245);
          v271(v287, v264);
        }

        if (v308 == 7)
        {
          v272 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
          *&v312 = *(v209 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          type metadata accessor for ReadError(0);
          sub_100138C60(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
          _BridgedStoredNSError.code.getter();
          if (v311 == 4998)
          {
            v273 = sub_1000207FC(4999, 0, 0, 0);
            v274 = *(v209 + v272);
            *(v209 + v272) = v273;
          }
        }

        return;
      }

LABEL_138:
      __break(1u);
      return;
    }

    v194 = TLV.dataRepresentation.getter();
    v196 = v195;
    (*(v296 + 8))(v192, v181);
    v197 = v196;
    v198 = v196 >> 62;
    if ((v196 >> 62) > 1)
    {
      if (v198 == 2)
      {
        v201 = *(v194 + 16);
        v200 = *(v194 + 24);
        sub_100009548(v194, v197);
        v199 = v200 - v201;
        v193 = v296;
        if (__OFSUB__(v200, v201))
        {
          __break(1u);
          goto LABEL_94;
        }
      }

      else
      {
        sub_100009548(v194, v196);
        v199 = 0;
LABEL_97:
        v193 = v296;
      }

LABEL_98:
      *(v191 + 64) = &type metadata for Int;
      *(v191 + 40) = v199;
      goto LABEL_99;
    }

    if (!v198)
    {
      sub_100009548(v194, v196);
      v199 = BYTE6(v196);
      goto LABEL_97;
    }

LABEL_94:
    sub_100009548(v194, v197);
    LODWORD(v199) = HIDWORD(v194) - v194;
    v193 = v296;
    if (!__OFSUB__(HIDWORD(v194), v194))
    {
      v199 = v199;
      goto LABEL_98;
    }

LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&_mh_execute_header, v186, v187, "switchInterfaceIndication and no fallbackTransactionStarted yet: proceed with fallbackTransaction", v188, 2u);
  }

  sub_100009548(v48, v81);
  *(v309 + v133) = 1;
}

void sub_100136B9C()
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  if (*(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted) == 1 && *(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount) == 1)
  {
    v36 = v2;
    v42 = v0;
    sub_10011BBA0(&off_10037EED8);
    sub_10011B164(&off_10037EEB0);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for OSSignposter();
    v16 = sub_10000403C(v15, qword_1003A3AA8);
    OSSignposter.logHandle.getter();
    swift_unknownObjectRetain();
    OSSignpostID.init(log:object:)();
    v39 = *(v6 + 16);
    v40 = v6 + 16;
    v39(v12, v14, v5);
    v38 = type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v37 = v16;
    v17 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v35 = static os_signpost_type_t.end.getter();
    v18 = OS_os_log.signpostsEnabled.getter();
    v41 = v6;
    if (v18)
    {
      v34 = v17;

      checkForErrorAndConsumeState(state:)();

      v19 = v36;
      if ((*(v36 + 11))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v20 = 0;
        v21 = 0;
        v36 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 1))(v4, v1);
        v36 = "%s";
        v21 = 2;
        v20 = 1;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43[0] = v24;
      *v23 = v21;
      *(v23 + 1) = v20;
      *(v23 + 2) = 2080;
      *(v23 + 4) = sub_100008F6C(0xD000000000000028, 0x800000010034F1A0, v43);
      v25 = OSSignpostID.rawValue.getter();
      v26 = v34;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v25, "reader-postProcessing", v36, v23, 0xCu);
      sub_10000959C(v24);

      v22 = *(v41 + 8);
      v22(v9, v5);
    }

    else
    {

      v22 = *(v6 + 8);
      v22(v9, v5);
    }

    v27 = OSSignposter.logHandle.getter();
    v28 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100008F6C(0xD000000000000026, 0x800000010034F170, v43);
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v31, "reader-between_payment_reads", "%s", v29, 0xCu);
      sub_10000959C(v30);
    }

    v39(v12, v14, v5);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();

    v22(v14, v5);
    v32 = v42;
    v33 = (v42 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
    swift_beginAccess();
    *v33 = 0;
    *(v32 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent) = 0;
    sub_10012A4DC(1);
  }

  else
  {

    sub_100127CE8(1);
  }
}

uint64_t sub_1001371B0(uint64_t result)
{
  v2 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent;
  if ((*(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent) & 1) == 0 && result == 16)
  {
    v3 = v1;
    sub_100100D88(9, 0);
    *(v1 + v2) = 1;
    v4 = *(*(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
    os_unfair_lock_lock(v4 + 8);
    sub_10011D358(&v4[4], 5);
    os_unfair_lock_unlock(v4 + 8);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSSignposter();
    sub_10000403C(v5, qword_1003A3AA8);
    return sub_100186BE8("reader-payment_read_success", 27, 2, *(v3 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession), 0xD00000000000001CLL, 0x800000010034F150);
  }

  return result;
}

unint64_t sub_1001372CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_100137318(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TLVTag();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v67 - v12;
  __chkstk_darwin(v11);
  v15 = v67 - v14;
  v16 = static TLV.decode(from:)();
  v77 = v2;
  v67[1] = 0;
  v73 = v10;
  v79 = v16;
  v78 = v16;
  static TLVTag.thirdPartyData.getter();
  v17 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
  v18 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0, &protocol conformance descriptor for [A]);
  v69 = v17;
  v76 = v18;
  Collection<>.first(tag:)();
  v19 = *(v4 + 8);
  v70 = v3;
  v75 = v19;
  v19(v6, v3);
  v20 = type metadata accessor for TLV();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v15, 1, v20);
  v74 = v4 + 8;
  v68 = v21;
  v72 = v6;
  v71 = v22;
  if (v23 == 1)
  {
    sub_10000BD44(v15, &unk_10039E210, &unk_1002C65B0);
    v79 = v78;
    static TLVTag.cardInterfaceCapabilities.getter();
    v24 = v76;
    Collection<>.first(tag:)();
    v25 = v70;
    v26 = v75;
    v75(v6, v70);
    v27 = v20;
    if (v22(v13, 1, v20) != 1)
    {
      v24 = TLV.hexStringValue.getter();
      v67[0] = v38;
      (*(v68 + 8))(v13, v20);
      if (qword_10039D628 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

    v28 = v26;
    sub_10000BD44(v13, &unk_10039E210, &unk_1002C65B0);
  }

  else
  {
    v29 = TLV.hexStringValue.getter();
    v31 = v30;
    (*(v21 + 8))(v15, v20);
    v32 = *(v77 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    inited = swift_initStackObject();
    *(inited + 32) = 12;
    v34 = inited + 32;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v29;
    *(inited + 48) = v31;
    v35 = sub_10018399C(inited);
    swift_setDeallocating();
    v36 = sub_10000BD44(v34, &qword_10039EC60, &qword_1002C1F80);
    v37 = *(v32 + 56);
    __chkstk_darwin(v36);
    v67[-2] = v35;
    os_unfair_lock_lock((v37 + 32));
    sub_100117CD8((v37 + 16));
    os_unfair_lock_unlock((v37 + 32));

    v25 = v70;
    v27 = v20;
    v24 = v76;
    v28 = v75;
  }

  while (1)
  {
    v79 = v78;
    v52 = v72;
    static TLVTag.interacCardTransactionInformation.getter();
    v53 = v73;
    Collection<>.first(tag:)();
    v28(v52, v25);
    v54 = v53;

    if (v71(v53, 1, v27) == 1)
    {
      sub_10000BD44(v53, &unk_10039E210, &unk_1002C65B0);
      goto LABEL_18;
    }

    v55 = TLV.value.getter();
    v57 = v56;
    (*(v68 + 8))(v54, v27);
    v58 = 0;
    v59 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      v60 = v77;
      if (v59 == 2)
      {
        v58 = *(v55 + 16);
      }
    }

    else
    {
      v60 = v77;
      if (v59)
      {
        v58 = v55;
      }
    }

    v61 = *(v60 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    if (!__OFADD__(v58, static TLVTag.OFFSET_BYTE_2.getter()))
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    v39 = v27;
    v40 = v25;
    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A3A90);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "thirdPartyData absent, get formFactor from cardInterfaceCapabilities", v44, 2u);
    }

    v45 = *(v77 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    v46 = swift_initStackObject();
    *(v46 + 32) = 12;
    v47 = v46 + 32;
    *(v46 + 16) = xmmword_1002C1660;
    *(v46 + 64) = &type metadata for String;
    v48 = v67[0];
    *(v46 + 40) = v24;
    *(v46 + 48) = v48;
    v49 = sub_10018399C(v46);
    swift_setDeallocating();
    v50 = sub_10000BD44(v47, &qword_10039EC60, &qword_1002C1F80);
    v51 = *(v45 + 56);
    __chkstk_darwin(v50);
    v67[-2] = v49;
    os_unfair_lock_lock((v51 + 32));
    sub_100029720((v51 + 16));
    os_unfair_lock_unlock((v51 + 32));

    v25 = v40;
    v27 = v39;
    v24 = v76;
    v28 = v75;
  }

  LOBYTE(v79) = Data._Representation.subscript.getter();
  sub_100031840();
  v62 = UnsignedInteger.readBit(_:)(0);
  sub_100009548(v55, v57);
  *(v61 + 133) = v62;
LABEL_18:
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_10000403C(v63, qword_1003A3A90);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "ReadOperation.processPayAppletAnalytics() ended", v66, 2u);
  }
}

void sub_100137C74()
{
  v1 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID);
  v12 = v11[1];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = *v11;
  sub_10000BE18((v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper), *(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper + 24));

  sub_100043268(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_10000BD44(v6, &unk_1003A3BE0, &qword_1002C36F0);
LABEL_4:
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000403C(v14, qword_1003A3A90);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not calculate app usage time", v17, 2u);
    }

    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  (*(v8 + 16))(v4, v10, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_100171FC8(v13, v12, v4);

  sub_10000BD44(v4, &unk_1003A3BE0, &qword_1002C36F0);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_100138020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StopWatch(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100138084()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001380C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1001380E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0A78, &qword_1002C4D70);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v53 = a1;
  v54 = a2;
  strcpy(v52, "\\d+\\.\\d+\\.\\d+");
  v52[7] = -4864;
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v50 = sub_10008AB88();
  v8 = StringProtocol.range<A>(of:options:range:locale:)();
  v10 = v9;
  sub_10000BD44(v6, &qword_1003A0A78, &qword_1002C4D70);
  if (v10)
  {
    return _swiftEmptyArrayStorage;
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A3A90);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    v53 = v51[0];
    *v15 = 136446210;
    sub_1001372CC(v8, a1, a2);
    v16 = static String._fromSubstring(_:)();
    v18 = v17;

    v19 = sub_100008F6C(v16, v18, &v53);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "applet version: %{public}s", v15, 0xCu);
    sub_10000959C(v51[0]);
  }

  v20 = String.subscript.getter();
  v53 = 46;
  v54 = 0xE100000000000000;
  __chkstk_darwin(v20);
  v49 = &v53;
  v24 = sub_100187974(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000642B8, &v51[-4], v21, v22, v23, v51);
  v25 = *(v24 + 2);
  if (v25)
  {
    v26 = (v24 + 56);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v27 = *(v26 - 3);
      v28 = *(v26 - 2);
      if ((v28 ^ v27) < 0x4000)
      {
        v35 = 0;
      }

      else
      {
        v29 = *(v26 - 1);
        v30 = *v26;
        if ((*v26 & 0x1000000000000000) != 0)
        {
          v38 = *v26;
          v39 = *(v26 - 2);
          v40 = *(v26 - 3);
          v41 = *(v26 - 1);

          v42 = sub_1001882E8(v40, v39, v41, v38, 10);
          v34 = v43;

          v32 = v42;
        }

        else
        {
          if ((v30 & 0x2000000000000000) != 0)
          {
            v53 = *(v26 - 1);
            v54 = v30 & 0xFFFFFFFFFFFFFFLL;
            v31 = &v53;
          }

          else if ((v29 & 0x1000000000000000) != 0)
          {
            v31 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v44 = *(v26 - 3);
            v45 = *v26;
            v46 = *(v26 - 2);
            v47 = *(v26 - 1);
            v31 = _StringObject.sharedUTF8.getter();
            v29 = v47;
            v27 = v44;
            v28 = v46;
            v30 = v45;
          }

          v32 = sub_100188CF4(v31, v27, v28, v29, v30, 10);
          LOBYTE(v52[0]) = v33 & 1;
          v34 = v33 & 1;
        }

        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10004DA78(0, *(v11 + 2) + 1, 1, v11);
      }

      v37 = *(v11 + 2);
      v36 = *(v11 + 3);
      if (v37 >= v36 >> 1)
      {
        v11 = sub_10004DA78((v36 > 1), v37 + 1, 1, v11);
      }

      *(v11 + 2) = v37 + 1;
      *&v11[8 * v37 + 32] = v35;
      v26 += 4;
      --v25;
    }

    while (v25);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_1001385A8(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    return *(a1 + 32) > 2;
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "applet version array bad length", v5, 2u);
  }

  return 0;
}

uint64_t sub_1001386A4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      sub_100004074(&qword_10039E2E0, &qword_1002C1720);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1680;
      *(v3 + 32) = 362;
      v4 = 1;
LABEL_10:
      *(v3 + 36) = v4;
LABEL_13:
      v5 = sub_10014B8C8(v3);

      return v5;
    }

    if (v1 == 3)
    {
      sub_100004074(&qword_10039E2E0, &qword_1002C1720);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1680;
      *(v3 + 32) = 362;
      *(v3 + 36) = 0;
      goto LABEL_13;
    }

LABEL_14:
    type metadata accessor for SPRReaderMode(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      sub_100004074(&qword_10039E2E0, &qword_1002C1720);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1680;
      *(v3 + 32) = 362;
      v4 = 2;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  return sub_10014B8C8(&off_10037EBE0);
}

void sub_10013883C(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1000F5AC4(v11), (v3 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v2, v12);
    sub_10001A124(v11);
    if (swift_dynamicCast())
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_10000403C(v4, qword_1003A3A90);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "(Reader Mode) didEnd polling A";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_10:

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000403C(v10, qword_1003A3A90);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "(Reader Mode) didEnd polling B";
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_10001A124(v11);
  }
}

uint64_t sub_100138AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100138B70()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100138C10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100138C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100138D38()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3C90);
  sub_10000403C(v0, qword_1003A3C90);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_100138D94()
{
  v1 = v0;
  *(v0 + 32) = 0;
  v2 = [objc_opt_self() sharedHardwareManager];
  v3 = [v2 getHwSupport];

  if (v3 != 2)
  {
    if (qword_10039D638 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A3C90);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "hw not supported at the moment. hw might recover later.", v18, 2u);
    }

    sub_1001394AC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v35 = 0;
  v4 = [objc_opt_self() embeddedSecureElementWithError:&v35];
  v5 = v35;
  if (!v4)
  {
    v20 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039D638 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A3C90);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not get Secure Element, error from embeddedSecureElementWithError(): %@", v24, 0xCu);
      sub_100041D90(v25);
    }

    sub_1001394AC();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

    goto LABEL_28;
  }

  *(v1 + 16) = v4;
  v6 = v4;
  v7 = v5;
  v8 = [v6 serialNumber];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [*(v1 + 16) info];
  if (!v9)
  {
    if (qword_10039D638 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000403C(v29, qword_1003A3C90);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Could not get hardware Secure Element info.", v32, 2u);
    }

LABEL_26:
    sub_1001394AC();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    goto LABEL_27;
  }

  v10 = v9;
  v11 = [v9 platformIdentifier];
  if (!v11 || (v11, (v12 = [v10 ecdsaCertificate]) == 0) || (v12, (v13 = objc_msgSend(v10, "sequenceCounter")) == 0) || (v13, (v14 = objc_msgSend(v10, "expectedSequenceCounter")) == 0))
  {
    sub_1001394AC();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();

LABEL_27:
LABEL_28:
    type metadata accessor for SecureElement();
    swift_deallocPartialClassInstance();
    return v1;
  }

  *(v1 + 24) = v10;
  return v1;
}

id sub_1001392D0()
{
  v1 = *(v0 + 24);
  result = [v1 sequenceCounter];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = [result unsignedShortValue];

  result = [v1 expectedSequenceCounter];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result unsignedShortValue];

  if (qword_10039D638 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A3C90);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 33554944;
    *(v10 + 4) = v4;
    *(v10 + 6) = 512;
    *(v10 + 8) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "Current sequence counter: %hu, expected: %hu", v10, 0xAu);
  }

  return (v4 >= v6);
}

uint64_t sub_10013943C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1001394AC()
{
  result = qword_1003A3DD0;
  if (!qword_1003A3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3DD0);
  }

  return result;
}

unint64_t sub_100139514()
{
  result = qword_1003A3DD8;
  if (!qword_1003A3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3DD8);
  }

  return result;
}

uint64_t sub_100139568@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10013A12C(v1 + 304, &v4);
  if (v5)
  {
    return sub_100029790(&v4, a1);
  }

  sub_10013A19C(&v4);
  sub_100139720((v1 + 216), a1);
  sub_10000CCE4(a1, &v4);
  swift_beginAccess();
  sub_10013A204(&v4, v1 + 304);
  return swift_endAccess();
}

uint64_t sub_100139628@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10013A12C(v1 + 344, &v6);
  if (v7)
  {
    return sub_100029790(&v6, a1);
  }

  sub_10013A19C(&v6);
  v4 = type metadata accessor for NullAuditor();
  inited = swift_initStaticObject();
  v7 = v4;
  v8 = &off_100382E88;
  *&v6 = inited;
  sub_100139720(&v6, a1);
  sub_10000959C(&v6);
  sub_10000CCE4(a1, &v6);
  swift_beginAccess();
  sub_10013A204(&v6, v1 + 344);
  return swift_endAccess();
}

uint64_t sub_100139720@<X0>(void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v69 = a4;
  v6 = a3[3];
  v7 = a3[4];
  sub_10000BE18(a3, v6);
  sub_1000C24D0(1, v6, v7);
  sub_10000CCE4((v5 + 2), v91);
  sub_10000CCE4((v5 + 7), v90);
  sub_10000CCE4((v5 + 12), v89);
  sub_10000BE18(v5 + 17, *(v5 + 20));
  sub_10013B458(v88);
  sub_10000CCE4((v5 + 22), v87);
  v8 = v5[32];
  sub_10000CCE4((v5 + 33), v86);
  v9 = sub_100022438(v91, v91[3]);
  __chkstk_darwin(v9);
  v11 = (&v70[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_100022438(v90, v90[3]);
  __chkstk_darwin(v13);
  v15 = (&v70[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_100022438(v89, v89[3]);
  __chkstk_darwin(v17);
  v19 = (&v70[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_100022438(v88, v88[3]);
  __chkstk_darwin(v21);
  v23 = (&v70[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_100022438(v87, v87[3]);
  __chkstk_darwin(v25);
  v27 = (&v70[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = sub_100022438(v86, v86[3]);
  __chkstk_darwin(v29);
  v31 = (&v70[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v11;
  v34 = *v15;
  v35 = *v19;
  v36 = *v23;
  v37 = *v27;
  v38 = *v31;
  v39 = type metadata accessor for DefaultTimeTokenManager(0);
  v85[3] = v39;
  v85[4] = &off_100384FB0;
  v85[0] = v33;
  v83 = type metadata accessor for DefaultSecureTimeKeeper();
  v84 = &off_100384E70;
  v82[0] = v34;
  v80 = type metadata accessor for SecureElement();
  v81 = &off_1003849A0;
  v79[0] = v35;
  v77 = type metadata accessor for DefaultSecureChannelCrypto();
  v78 = &off_100384C48;
  v76[0] = v36;
  v74 = type metadata accessor for DefaultSecureChannelHTTP();
  v75 = &off_100384C58;
  v73[0] = v37;
  v71 = type metadata accessor for LaunchFeedbackFramework();
  v72 = &off_1003823C0;
  v70[0] = v38;
  v40 = type metadata accessor for SecureChannel();
  v41 = swift_allocObject();
  v42 = sub_100022438(v85, v39);
  __chkstk_darwin(v42);
  v44 = (&v70[-1] - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = sub_100022438(v82, v83);
  __chkstk_darwin(v46);
  v48 = (&v70[-1] - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = sub_100022438(v79, v80);
  __chkstk_darwin(v50);
  v52 = (&v70[-1] - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = sub_100022438(v76, v77);
  __chkstk_darwin(v54);
  v56 = (&v70[-1] - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = sub_100022438(v73, v74);
  __chkstk_darwin(v58);
  v60 = (&v70[-1] - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = sub_100022438(v70, v71);
  __chkstk_darwin(v62);
  v64 = (&v70[-1] - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = sub_10013A274(*v44, *v48, *v52, *v56, *v60, *v64, v41, v8);
  sub_10000959C(v70);
  sub_10000959C(v73);
  sub_10000959C(v76);
  sub_10000959C(v79);
  sub_10000959C(v82);
  sub_10000959C(v85);
  sub_10000959C(v86);
  sub_10000959C(v87);
  sub_10000959C(v88);
  sub_10000959C(v89);
  sub_10000959C(v90);
  result = sub_10000959C(v91);
  v68 = v69;
  v69[3] = v40;
  v68[4] = &off_100384B58;
  *v68 = v66;
  return result;
}

uint64_t sub_10013A090()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  sub_10000959C(v0 + 17);
  sub_10000959C(v0 + 22);
  sub_10000959C(v0 + 27);
  sub_10000959C(v0 + 33);
  sub_10013A19C((v0 + 38));
  sub_10013A19C((v0 + 43));

  return swift_deallocClassInstance();
}

uint64_t sub_10013A12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A3F20, &qword_1002C8508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013A19C(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A3F20, &qword_1002C8508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013A204(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A3F20, &qword_1002C8508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v76 = type metadata accessor for DefaultTimeTokenManager(0);
  v77 = &off_100384FB0;
  *&v75 = a1;
  v73 = type metadata accessor for DefaultSecureTimeKeeper();
  v74 = &off_100384E70;
  *&v72 = a2;
  v70 = type metadata accessor for SecureElement();
  v71 = &off_1003849A0;
  *&v69 = a3;
  v67 = type metadata accessor for DefaultSecureChannelCrypto();
  v68 = &off_100384C48;
  *&v66 = a4;
  v64 = type metadata accessor for DefaultSecureChannelHTTP();
  v65 = &off_100384C58;
  *&v63 = a5;
  v61 = type metadata accessor for LaunchFeedbackFramework();
  v62 = &off_1003823C0;
  *&v60 = a6;
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A4008);
  sub_10000CCE4(&v75, v58);
  sub_10000CCE4(&v72, v56);
  sub_10000CCE4(&v69, v54);
  sub_10000CCE4(&v66, v52);
  sub_10000CCE4(&v63, v50);
  sub_10000CCE4(&v60, v48);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v19 = 136315394;
    nullsub_1();
    v20 = _typeName(_:qualified:)();
    v22 = sub_100008F6C(v20, v21, &v47);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002C7740;
    v24 = v59;
    v25 = sub_10000BE18(v58, v59);
    *(v23 + 56) = v24;
    v26 = sub_10000BE5C((v23 + 32));
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    v27 = v57;
    v28 = sub_10000BE18(v56, v57);
    *(v23 + 88) = v27;
    v29 = sub_10000BE5C((v23 + 64));
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = v55;
    v31 = sub_10000BE18(v54, v55);
    *(v23 + 120) = v30;
    v32 = sub_10000BE5C((v23 + 96));
    (*(*(v30 - 8) + 16))(v32, v31, v30);
    v33 = v53;
    v34 = sub_10000BE18(v52, v53);
    *(v23 + 152) = v33;
    v35 = sub_10000BE5C((v23 + 128));
    (*(*(v33 - 8) + 16))(v35, v34, v33);
    v36 = v51;
    v37 = sub_10000BE18(v50, v51);
    *(v23 + 184) = v36;
    v38 = sub_10000BE5C((v23 + 160));
    (*(*(v36 - 8) + 16))(v38, v37, v36);
    *(v23 + 216) = &type metadata for Double;
    *(v23 + 192) = a8;
    v39 = v49;
    v40 = sub_10000BE18(v48, v49);
    *(v23 + 248) = v39;
    v41 = sub_10000BE5C((v23 + 224));
    (*(*(v39 - 8) + 16))(v41, v40, v39);
    v42 = showFunction(signature:_:)(0xD00000000000006ALL, 0x800000010034F7A0, v23);
    v44 = v43;

    sub_10000959C(v58);
    sub_10000959C(v56);
    sub_10000959C(v54);
    sub_10000959C(v52);
    sub_10000959C(v50);
    sub_10000959C(v48);
    v45 = sub_100008F6C(v42, v44, &v47);

    *(v19 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v58);
    sub_10000959C(v56);
    sub_10000959C(v54);
    sub_10000959C(v52);
    sub_10000959C(v50);
    sub_10000959C(v48);
  }

  sub_100029790(&v75, a7 + 16);
  sub_100029790(&v72, a7 + 56);
  sub_100029790(&v69, a7 + 96);
  sub_100029790(&v66, a7 + 136);
  sub_100029790(&v63, a7 + 176);
  *(a7 + 216) = a8;
  sub_100029790(&v60, a7 + 224);
  return a7;
}

uint64_t sub_10013A834(uint64_t a1)
{
  sub_1000EA3F4(v115);
  if (v1)
  {
  }

  else
  {
    sub_1000E4518(v114);
    sub_1000E5844(v113);
    sub_1000EE7EC(v112);
    sub_1000EEE50(v111);
    sub_1000E6B70(v108);
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v6 = *(v5 + *(type metadata accessor for Settings(0) + 84));
    sub_1000EAA58(v107);
    v7 = sub_100022438(v115, v115[3]);
    v84 = v66;
    __chkstk_darwin(v7);
    v78 = (v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))();
    v10 = sub_100022438(v114, v114[3]);
    v83 = v66;
    __chkstk_darwin(v10);
    v12 = (v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_100022438(v113, v113[3]);
    v82 = v66;
    __chkstk_darwin(v14);
    v16 = (v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_100022438(v112, v112[3]);
    v81 = v66;
    __chkstk_darwin(v18);
    v20 = (v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = sub_100022438(v111, v111[3]);
    v80 = v66;
    __chkstk_darwin(v22);
    v24 = (v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = sub_100022438(v107, v107[3]);
    v79 = v66;
    __chkstk_darwin(v26);
    v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = *v78;
    v31 = *v12;
    v32 = *v16;
    v33 = *v20;
    v34 = *v24;
    v78 = *v28;
    v35 = type metadata accessor for DefaultTimeTokenManager(0);
    v106[4] = &off_100384FB0;
    v106[3] = v35;
    v106[0] = v30;
    v76 = type metadata accessor for DefaultSecureTimeKeeper();
    v105 = &off_100384E70;
    v104 = v76;
    v103[0] = v31;
    v75 = type metadata accessor for SecureElement();
    v102 = &off_1003849A0;
    v101 = v75;
    v100[0] = v32;
    v73 = type metadata accessor for SecureChannelCryptoFactory();
    v98 = v73;
    v99 = &off_100384AB8;
    v97[0] = v33;
    v72 = type metadata accessor for DefaultSecureChannelHTTP();
    v95 = v72;
    v96 = &off_100384C58;
    v94[0] = v34;
    v71 = type metadata accessor for LaunchFeedbackFramework();
    v92 = v71;
    v93 = &off_1003823C0;
    v91[0] = v78;
    type metadata accessor for SecureChannelFactory();
    v2 = swift_allocObject();
    v36 = sub_100022438(v106, v35);
    v78 = v66;
    v68 = v35;
    __chkstk_darwin(v36);
    v67 = (v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))();
    v39 = sub_100022438(v103, v104);
    v77 = v66;
    __chkstk_darwin(v39);
    v66[0] = v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))();
    v42 = sub_100022438(v100, v101);
    v74 = v66;
    __chkstk_darwin(v42);
    v44 = (v66 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = sub_100022438(v97, v98);
    v70 = v66;
    __chkstk_darwin(v46);
    v48 = (v66 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48);
    v50 = sub_100022438(v94, v95);
    v69 = v66;
    __chkstk_darwin(v50);
    v52 = (v66 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = sub_100022438(v91, v92);
    v66[1] = v66;
    __chkstk_darwin(v54);
    v56 = (v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v67;
    v59 = *v66[0];
    v60 = *v44;
    v61 = *v48;
    v62 = *v52;
    v63 = *v56;
    v90[3] = v68;
    v90[4] = &off_100384FB0;
    v90[0] = v58;
    v89[4] = &off_100384E70;
    v89[3] = v76;
    v89[0] = v59;
    v88[3] = v75;
    v88[4] = &off_1003849A0;
    v88[0] = v60;
    v87[3] = v73;
    v87[4] = &off_100384AB8;
    v87[0] = v61;
    v86[3] = v72;
    v86[4] = &off_100384C58;
    v86[0] = v62;
    v85[3] = v71;
    v85[4] = &off_1003823C0;
    v85[0] = v63;
    *(v2 + 304) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
    *(v2 + 368) = 0u;
    sub_10000CCE4(v90, v2 + 16);
    sub_10000CCE4(v89, v2 + 56);
    sub_10000CCE4(v88, v2 + 96);
    sub_10000CCE4(v87, v2 + 136);
    sub_10000CCE4(v86, v2 + 176);
    sub_10000CCE4(v85, v2 + 264);
    v64 = v109;
    v65 = v110;
    sub_10000BE18(v108, v109);
    sub_1000C289C(5u, v64, v65);

    sub_10000959C(v85);
    sub_10000959C(v86);
    sub_10000959C(v87);
    sub_10000959C(v88);
    sub_10000959C(v89);
    sub_10000959C(v90);
    *(v2 + 256) = v6;
    sub_10000959C(v108);
    sub_10000959C(v91);
    sub_10000959C(v94);
    sub_10000959C(v97);
    sub_10000959C(v100);
    sub_10000959C(v103);
    sub_10000959C(v106);
    sub_10000959C(v107);
    sub_10000959C(v111);
    sub_10000959C(v112);
    sub_10000959C(v113);
    sub_10000959C(v114);
    sub_10000959C(v115);
  }

  return v2;
}

uint64_t sub_10013B458@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(*sub_10000BE18((v1 + 96), *(v1 + 120)) + 296);
  os_unfair_lock_lock((v4 + 24));
  sub_1000B4F6C((v4 + 16), v19);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v19[0];
  v6 = v19[1];
  sub_10000CCE4(v2 + 16, v19);
  sub_10000CCE4(v2 + 56, v18);
  v7 = sub_100022438(v19, v19[3]);
  __chkstk_darwin(v7);
  v9 = (&v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_100022438(v18, v18[3]);
  __chkstk_darwin(v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10013BA6C(v5, v6, *v9, *v13);
  sub_10000959C(v18);
  sub_10000959C(v19);
  result = type metadata accessor for DefaultSecureChannelCrypto();
  a1[3] = result;
  a1[4] = &off_100384C48;
  *a1 = v15;
  return result;
}

uint64_t sub_10013B66C()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  sub_10000959C(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t sub_10013B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = type metadata accessor for DefaultSecureTimeKeeper();
  v39 = &off_100384E70;
  *&v37 = a3;
  v35 = type metadata accessor for SecureElement();
  v36 = &off_1003849A0;
  *&v34 = a4;
  if (qword_10039D648 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A4110);
  sub_10000CCE4(&v37, v32);
  sub_10000CCE4(&v34, v30);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    nullsub_1();
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1790;
    *(v17 + 56) = swift_getObjectType();
    *(v17 + 32) = a1;
    v18 = v33;
    v19 = sub_10000BE18(v32, v33);
    *(v17 + 88) = v18;
    v20 = sub_10000BE5C((v17 + 64));
    (*(*(v18 - 8) + 16))(v20, v19, v18);
    v21 = v31;
    v22 = sub_10000BE18(v30, v31);
    *(v17 + 120) = v21;
    v23 = sub_10000BE5C((v17 + 96));
    (*(*(v21 - 8) + 16))(v23, v22, v21);
    swift_unknownObjectRetain();
    v24 = showFunction(signature:_:)(0xD00000000000002CLL, 0x800000010034F860, v17);
    v26 = v25;

    sub_10000959C(v32);
    sub_10000959C(v30);
    v27 = sub_100008F6C(v24, v26, &v29);

    *(v13 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v32);
    sub_10000959C(v30);
  }

  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  sub_100029790(&v37, a5 + 32);
  sub_100029790(&v34, a5 + 72);
  return a5;
}

uint64_t sub_10013BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = type metadata accessor for DefaultSecureTimeKeeper();
  v24 = &off_100384E70;
  v22[0] = a3;
  v20 = type metadata accessor for SecureElement();
  v21 = &off_1003849A0;
  v19[0] = a4;
  type metadata accessor for DefaultSecureChannelCrypto();
  v8 = swift_allocObject();
  v9 = sub_100022438(v22, v23);
  __chkstk_darwin(v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_100022438(v19, v20);
  __chkstk_darwin(v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10013B6E0(a1, a2, *v11, *v15, v8);
  sub_10000959C(v19);
  sub_10000959C(v22);
  return v17;
}

uint64_t sub_10013BC58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DefaultSecureTimeKeeper();
  v40[3] = v8;
  v40[4] = &off_100384E70;
  v40[0] = a1;
  v9 = type metadata accessor for SecureElement();
  v38 = v9;
  v39 = &off_1003849A0;
  v37[0] = a2;
  v10 = type metadata accessor for SignerFactory();
  v35 = v10;
  v36 = &off_100385348;
  v34[0] = a3;
  type metadata accessor for SecureChannelCryptoFactory();
  v11 = swift_allocObject();
  v12 = sub_100022438(v40, v8);
  __chkstk_darwin(v12);
  v14 = (&v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_100022438(v37, v38);
  __chkstk_darwin(v16);
  v18 = (&v31[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_100022438(v34, v35);
  __chkstk_darwin(v20);
  v22 = (&v31[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v14;
  v25 = *v18;
  v26 = *v22;
  v33[3] = v8;
  v33[4] = &off_100384E70;
  v33[0] = v24;
  v32[4] = &off_1003849A0;
  v32[3] = v9;
  v32[0] = v25;
  v31[4] = &off_100385348;
  v31[3] = v10;
  v31[0] = v26;
  sub_10000CCE4(v33, v11 + 16);
  sub_10000CCE4(v32, v11 + 56);
  sub_10000CCE4(v31, v11 + 96);
  v27 = a4[3];
  v28 = a4[4];
  sub_10000BE18(a4, v27);
  sub_1000C289C(5u, v27, v28);
  sub_10000959C(v31);
  sub_10000959C(v32);
  sub_10000959C(v33);
  sub_10000959C(a4);
  sub_10000959C(v34);
  sub_10000959C(v37);
  sub_10000959C(v40);
  return v11;
}

uint64_t sub_10013BFB4()
{
  sub_1000E4518(v18);
  if (v0)
  {
  }

  else
  {
    sub_1000E5844(v17);
    sub_1000E9D90(v16);
    sub_1000E6B70(v15);
    v3 = sub_100022438(v18, v18[3]);
    __chkstk_darwin(v3);
    v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = sub_100022438(v17, v17[3]);
    __chkstk_darwin(v7);
    v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_100022438(v16, v16[3]);
    __chkstk_darwin(v11);
    v13 = (v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v1 = sub_10013BC58(*v5, *v9, *v13, v15);

    sub_10000959C(v16);
    sub_10000959C(v17);
    sub_10000959C(v18);
  }

  return v1;
}

uint64_t sub_10013C2A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  static DispatchTime.now()();
  (*(a4 + 8))(a3, a4);
  + infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v15 = (*(a4 + 24))(a1, v18 & 1, v13, a3, a4);
  v14(v13, v7);
  return v15;
}

uint64_t HTTPContentType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037EF00, v2);

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

unint64_t HTTPContentType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10013C4C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "reader-payment_read_success";
  }

  else
  {
    v4 = "application/json";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "application/json";
  }

  else
  {
    v7 = "reader-payment_read_success";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10013C570()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013C5F0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10013C65C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013C6D8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037EF00, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10013C738(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "application/json";
  }

  else
  {
    v3 = "reader-payment_read_success";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t SecureChannelProtocol.securingRequest(_:contentType:force:)(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v19 = a3;
  v17 = a2;
  v18 = a1;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v16[-v12];
  static DispatchTime.now()();
  (*(a5 + 8))(a4, a5);
  + infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v11, v7);
  (*(a5 + 16))(v18, v17 & 1, v13, v19, a4, a5);
  return (v14)(v13, v7);
}

unint64_t sub_10013C910()
{
  result = qword_1003A4000;
  if (!qword_1003A4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4000);
  }

  return result;
}

uint64_t sub_10013C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100065074(a3, v25 - v10, &qword_10039F738, &qword_1002C2AB8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BD44(v11, &qword_10039F738, &qword_1002C2AB8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10013CC74()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4008);
  sub_10000403C(v0, qword_1003A4008);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_10013CCD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v149 = a4;
  v155 = a3;
  v147 = a2;
  v146 = a5;
  v6 = type metadata accessor for DateInterval();
  v141 = *(v6 - 8);
  v142 = v6;
  v7 = __chkstk_darwin(v6);
  v139 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v131 - v9;
  v10 = type metadata accessor for Date();
  v144 = *(v10 - 8);
  v145 = v10;
  v11 = __chkstk_darwin(v10);
  v143 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v153 = (&v131 - v13);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v157 = v14;
  v158 = v15;
  __chkstk_darwin(v14);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URLRequest();
  v156 = *(v18 - 8);
  __chkstk_darwin(v18);
  *&v159 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v20 - 8);
  v22 = &v131 - v21;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v131 - v28;
  v154 = a1;
  URLRequest.url.getter();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_10000BD44(v22, &qword_1003A03D0, &unk_1002C3D50);
    sub_100020EB0(5005, 0xD000000000000019, 0x800000010034F940, 0);
    return swift_willThrow();
  }

  v148 = v17;
  (*(v24 + 32))(v29, v22, v23);
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A4008);
  v136 = v29;
  v137 = v24;
  v33 = v24 + 16;
  (*(v24 + 16))(v27, v29, v23);
  v34 = v156;
  (*(v156 + 16))(v159, v154, v18);
  v36 = v157;
  v35 = v158;
  v37 = v158[2];
  v135 = v18;
  v38 = v148;
  v37(v148, v155, v157);
  v151 = v32;
  v39 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v39, v133);
  v41 = (v33 - 8);
  v138 = v23;
  if (!v40)
  {
    (v35[1])(v38, v36);

    (*(v34 + 8))(v159, v135);
    v134 = *v41;
    v134(v27, v23);
    v64 = v152;
    v54 = v150;
    v65 = v153;
    if ((v149 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    v66 = 0xD00000000000001ALL;
    v67 = 0x800000010034F9F0;
LABEL_18:
    sub_100020EB0(5007, v66, v67, 0);
    swift_willThrow();
    goto LABEL_19;
  }

  v132 = v39;
  v42 = v135;
  v43 = swift_slowAlloc();
  v131 = swift_slowAlloc();
  v160[0] = v131;
  *v43 = 136315906;
  sub_100140654(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v41;
  v47 = v46;
  v134 = *v45;
  v134(v27, v23);
  v48 = sub_100008F6C(v44, v47, v160);

  *(v43 + 4) = v48;
  *(v43 + 12) = 2080;
  v49 = v159;
  v50 = URLRequest.allHTTPHeaderFields.getter();
  if (!v50)
  {
    v50 = sub_100183EFC(_swiftEmptyArrayStorage);
  }

  v51 = v150;
  v52 = v158;
  v53 = sub_100144720(v50);
  v54 = v51;

  v55 = *(v53 + 16);

  if (v55)
  {
    *&v162 = 0x203A726564616568;
    *(&v162 + 1) = 0xE800000000000000;
    v56 = URLRequest.allHTTPHeaderFields.getter();
    if (!v56)
    {
      v56 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    sub_100144720(v56);

    v57 = Dictionary.description.getter();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 8236;
    v61._object = 0xE200000000000000;
    String.append(_:)(v61);
    v62 = *(&v162 + 1);
    v63 = v162;
    v52 = v158;
    v49 = v159;
  }

  else
  {
    v63 = 0;
    v62 = 0xE000000000000000;
  }

  (*(v156 + 8))(v49, v42);
  v68 = sub_100008F6C(v63, v62, v160);

  *(v43 + 14) = v68;
  *(v43 + 22) = 2048;
  v69 = v148;
  v70 = DispatchTime.rawValue.getter();
  (v52[1])(v69, v157);
  *(v43 + 24) = v70;
  *(v43 + 32) = 1024;
  LOBYTE(v70) = v149;
  *(v43 + 34) = v149 & 1;
  v71 = v132;
  _os_log_impl(&_mh_execute_header, v132, v133, "SecureChannel.securingRequest(url: %s, %sdeadline: %llu, force: %{BOOL}d\n)", v43, 0x26u);
  swift_arrayDestroy();

  v64 = v152;
  v65 = v153;
  if (v70)
  {
    goto LABEL_13;
  }

LABEL_16:
  sub_10000BE18(v64 + 7, v64[10]);
  sub_1001451FC(v183);
  memcpy(v185, v183, sizeof(v185));
  if (sub_100031A30(v185) == 1)
  {
    v67 = 0x800000010034F960;
    v66 = 0xD000000000000018;
    goto LABEL_18;
  }

  memcpy(v186, v185, 0x110uLL);
  sub_10000BE18(v64 + 7, v64[10]);
  sub_10004CF70(v186, v65);
  if (v54)
  {
    sub_10000BD44(v183, &qword_10039F268, &qword_1002C2730);
  }

  else
  {
    v111 = v140;
    sub_100175270(v140);
    v112 = v111;
    DateInterval.duration.getter();
    v114 = v113;
    v115 = v142;
    v116 = *(v141 + 8);
    v116(v112, v142);
    if (v114 + -300.0 >= 0.0)
    {
      *&v159 = v116;
      sub_100175270(v112);
      DateInterval.start.getter();
      v117 = v115;
      v118 = v159;
      (v159)(v112, v117);
      v119 = v139;
      DateInterval.init(start:duration:)();
      if (DateInterval.contains(_:)())
      {
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&_mh_execute_header, v120, v121, "Not refreshing time token", v122, 2u);
          v65 = v153;
        }

        v118(v139, v142);
        (*(v144 + 8))(v65, v145);
        v77 = v186;
        goto LABEL_22;
      }

      v123 = sub_10000BE18(v64 + 28, v64[31]);
      v124 = sub_100020EB0(5009, 0, 0, 0);
      sub_10013ECC4(v124, *v123);

      *&v162 = 0;
      *(&v162 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v125._countAndFlagsBits = 0xD000000000000038;
      v125._object = 0x800000010034F9B0;
      String.append(_:)(v125);
      sub_100140654(&qword_1003A4108, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v126);

      v127._countAndFlagsBits = 0x203A776F6E202CLL;
      v127._object = 0xE700000000000000;
      String.append(_:)(v127);
      sub_100140654(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v128 = v119;
      v129 = v145;
      v130._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v130);

      sub_100020EB0(5007, v162, *(&v162 + 1), 0);
      swift_willThrow();
      sub_10000BD44(v183, &qword_10039F268, &qword_1002C2730);
      v118(v128, v142);
      (*(v144 + 8))(v65, v129);
    }

    else
    {
      sub_100020EB0(5007, 0xD000000000000028, 0x800000010034F980, 0);
      swift_willThrow();
      sub_10000BD44(v183, &qword_10039F268, &qword_1002C2730);
      (*(v144 + 8))(v65, v145);
    }
  }

LABEL_19:
  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    swift_errorRetain();
    v76 = _swift_stdlib_bridgeErrorToNSError();
    *(v74 + 4) = v76;
    *v75 = v76;
    _os_log_impl(&_mh_execute_header, v72, v73, "Refreshing time token: %@", v74, 0xCu);
    sub_10000BD44(v75, &unk_10039E220, &qword_1002C3D60);
  }

  sub_10000BE18(v64 + 2, v64[5]);
  type metadata accessor for DefaultTimeTokenManager(0);
  sub_10014AFB0(v184);

  v77 = v184;
LABEL_22:
  v79 = *(v77 + 32);
  v78 = *(v77 + 33);
  v80 = *(v77 + 10);
  v81 = *(v77 + 11);
  v82 = *(v77 + 12);
  v83 = *(v77 + 2);
  v84 = *(v77 + 3);
  v85 = *v77;
  v161 = v77[120] & 1;
  v162 = v85;
  v163 = v83;
  v164 = v84;
  v87 = *(v77 + 3);
  v86 = *(v77 + 4);
  v165 = *(v77 + 2);
  v166 = v87;
  v167 = v86;
  v168 = v80;
  v169 = v81;
  v170 = v82;
  v159 = *(v77 + 104);
  v171 = v159;
  v172 = v161;
  v88 = *(v77 + 9);
  v173 = *(v77 + 8);
  v174 = v88;
  v89 = *(v77 + 11);
  v175 = *(v77 + 10);
  v176 = v89;
  v90 = *(v77 + 13);
  v177 = *(v77 + 12);
  v178 = v90;
  v91 = *(v77 + 15);
  v179 = *(v77 + 14);
  v180 = v91;
  v181 = v79;
  v182 = v78;
  sub_100034958(&v162, v160);
  sub_100034958(&v162, v160);

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v158 = v78;
    v95 = v94;
    v156 = swift_slowAlloc();
    v160[0] = v156;
    *v95 = 134218754;
    *(v95 + 4) = v82;
    *(v95 + 12) = 2080;
    v153 = v92;
    v96 = v143;
    Date.init(timeIntervalSince1970:)();
    v150 = sub_100140654(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    LODWORD(v152) = v93;
    v97 = v145;
    v98 = dispatch thunk of CustomStringConvertible.description.getter();
    v157 = v79;
    v99 = v64;
    v101 = v100;
    v151 = 0;
    v102 = *(v144 + 8);
    v102(v96, v97);
    v103 = sub_100008F6C(v98, v101, v160);
    v64 = v99;

    *(v95 + 14) = v103;
    *(v95 + 22) = 2048;
    sub_10008C3EC(&v162);
    *(v95 + 24) = v159;
    sub_10008C3EC(&v162);
    *(v95 + 32) = 2080;
    Date.init(timeIntervalSince1970:)();
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    v102(v96, v97);
    v107 = v104;
    v79 = v157;
    v108 = sub_100008F6C(v107, v106, v160);

    *(v95 + 34) = v108;
    v92 = v153;
    _os_log_impl(&_mh_execute_header, v153, v152, "Using Time Token with:\n    iat: %llu -> %s\n    exp: %llu -> %s", v95, 0x2Au);
    swift_arrayDestroy();

    v78 = v158;
  }

  else
  {
    sub_10008C3EC(&v162);
    sub_10008C3EC(&v162);
  }

  v110 = v137;
  v109 = v138;
  sub_10000BE18(v64 + 17, v64[20]);
  sub_100140AB0(v154, v147 & 1, v79, v78, v155, v146);
  (*(v110 + 8))(v136, v109);

  return sub_10008C3EC(&v162);
}

uint64_t sub_10013DF50(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v33 = a2;
  v32 = a1;
  v31 = type metadata accessor for URLRequest();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4008);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    HIDWORD(v28) = v13;
    v15 = v14;
    v29 = swift_slowAlloc();
    v36 = v29;
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, &v36);
    v30 = v8;
    v19 = a3;
    v20 = v18;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = showFunction(signature:_:)(0xD000000000000025, 0x800000010034F910, _swiftEmptyArrayStorage);
    v23 = sub_100008F6C(v21, v22, &v36);
    a3 = v19;
    v8 = v30;

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, BYTE4(v28), "%s.%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v8 + 1;
  v24 = 6;
  while (1)
  {
    sub_10013CCD0(v32, v33 & 1, a3, 0, v10);
    if (!v5)
    {
      sub_10000BE18(v6 + 22, v6[25]);
      v26 = sub_100142910(v10, a3);
      (*v30)(v10, v31);
      return v26;
    }

    type metadata accessor for Code(0);
    v36 = 401;
    swift_errorRetain();
    sub_100140654(&qword_10039DF38, type metadata accessor for Code, &unk_1002C1438);
    v25 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      break;
    }

    sub_10000BE18(v6 + 2, v6[5]);
    type metadata accessor for DefaultTimeTokenManager(0);
    sub_10014AFB0(v35);
    v5 = 0;
    sub_10008C3EC(v35);
    if (!--v24)
    {
      type metadata accessor for SPRHTTPError(0);
      v34 = 401;
      sub_100140524(_swiftEmptyArrayStorage);
      sub_100140654(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }
  }

  return swift_willThrow();
}

id sub_10013E3D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a3;
  v9 = type metadata accessor for DispatchTime();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v46 - v13;
  v14 = type metadata accessor for URLRequest();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000403C(v20, qword_1003A4008);
  (*(v15 + 16))(v19, a1, v14);
  v21 = v15;
  v22 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v22, v52);
  v56 = a1;
  v53 = v21;
  if (v23)
  {
    v48 = v12;
    v49 = v14;
    v50 = a4;
    v24 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60[0] = v47;
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, v60);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1002C1790;
    v29 = URLRequest.allHTTPHeaderFields.getter();
    if (!v29)
    {
      v29 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    v30 = sub_100144720(v29);

    *(v28 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v28 + 32) = v30;
    v31 = a2 & 1;
    *(v28 + 64) = a2 & 1;
    *(v28 + 120) = &type metadata for String;
    *(v28 + 88) = &type metadata for HTTPContentType;
    *(v28 + 96) = 0x3E6B636F6C623CLL;
    *(v28 + 104) = 0xE700000000000000;
    v32 = showFunction(signature:_:)(0xD000000000000030, 0x800000010034F8D0, v28);
    v34 = v33;

    v35 = v19;
    v36 = v49;
    v51 = *(v53 + 8);
    v51(v35, v49);
    v37 = sub_100008F6C(v32, v34, v60);

    *(v24 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v22, v52, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();

    v38 = v36;
    a4 = v50;
    v12 = v48;
  }

  else
  {

    v51 = *(v21 + 8);
    v51(v19, v14);
    v31 = a2 & 1;
    v38 = v14;
  }

  static DispatchTime.now()();
  v39 = v55;
  + infix(_:_:)();
  v40 = *(v57 + 8);
  v41 = v12;
  v42 = v58;
  v40(v41, v58);
  v43 = v54;
  sub_10013CCD0(v56, v31, v39, 0, v54);
  v40(v39, v42);
  sub_10000BE18((v5 + 176), *(v5 + 200));
  v44 = sub_100143314(v43, v59, a4);
  v51(v43, v38);
  return v44;
}

uint64_t sub_10013E954()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  sub_10000959C(v0 + 17);
  sub_10000959C(v0 + 22);
  sub_10000959C(v0 + 28);

  return swift_deallocClassInstance();
}

uint64_t sub_10013EA5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10013EB54;

  return v6(a1);
}

uint64_t sub_10013EB54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10013EC4C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000F6058(a1, a2, v4);
}

uint64_t sub_10013ECC4(void *a1, void *a2)
{
  type metadata accessor for SecureChannelError(0);
  v50[3] = v4;
  v50[4] = &off_100382410;
  v45 = v4;
  v50[0] = a1;
  v5 = qword_10039D4C8;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A1270);
  sub_10000CCE4(v50, &v48);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v10 = 136315394;
    nullsub_1();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v46);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    v15 = v49;
    v16 = sub_10000BE18(&v48, v49);
    *(v14 + 56) = v15;
    v17 = sub_10000BE5C((v14 + 32));
    (*(*(v15 - 1) + 16))(v17, v16, v15);
    v18 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034FA10, v14);
    v20 = v19;

    sub_10000959C(&v48);
    v21 = sub_100008F6C(v18, v20, &v46);

    *(v10 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(&v48);
  }

  v22 = objc_allocWithZone(type metadata accessor for FBKSForm());

  v23 = FBKSForm.init(identifier:)();
  v24 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  sub_10000BE18(a2 + 2, a2[5]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(3);
  if (!v49)
  {
    sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
LABEL_34:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Not reporting FeedbackFrameworkError: diagnostic mode not on", v33, 2u);
    }

    v34 = a2[9];
    if (!v34)
    {
      goto LABEL_47;
    }

    v35 = a2[10];
    sub_10000BE18(a2 + 2, a2[5]);

    sub_10017A944(3);
    if (v47)
    {
      sub_100019D3C(&v46, &v48);
    }

    else
    {
      v49 = &type metadata for Bool;
      LOBYTE(v48) = 0;
    }

    v34(v23, v24, &v48);

    v36 = v34;
    v37 = v35;
    goto LABEL_41;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v46 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (sub_1000A5C44(v45))
  {
    if (&class metadata base offset for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &type metadata accessor for FBKSFeedbackCount && &nominal type descriptor for FBKSFeedbackCount && &type metadata for FBKSFeedbackCount && &class metadata base offset for FBKSForm && &protocol conformance descriptor for FBKSForm && &protocol conformance descriptor for FBKSForm && &type metadata accessor for FBKSForm && &nominal type descriptor for FBKSForm && &type metadata for FBKSForm && &class metadata base offset for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &type metadata accessor for FBKSLaunchConfiguration && &nominal type descriptor for FBKSLaunchConfiguration && &type metadata for FBKSLaunchConfiguration && &class metadata base offset for FBKSDraftLauncher && &type metadata accessor for FBKSDraftLauncher && &nominal type descriptor for FBKSDraftLauncher && &type metadata for FBKSDraftLauncher)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
      __chkstk_darwin(v26 - 8);
      v28 = &v44 - v27;
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      sub_10000CCE4(v50, &v48);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      sub_100029790(&v48, (v30 + 4));
      v30[9] = v23;
      v30[10] = v24;
      v30[11] = a2;
      v23 = v23;
      v24 = v24;

      sub_10013C974(0, 0, v28, &unk_1002C86F0, v30);

      objc_autoreleasePoolPop(v25);
    }

LABEL_47:

    return sub_10000959C(v50);
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Not reporting FeedbackFrameworkError: error not to be reported", v40, 2u);
  }

  v41 = a2[9];
  if (!v41)
  {
    goto LABEL_47;
  }

  v42 = a2[10];
  sub_10000BE18(a2 + 2, a2[5]);

  sub_10017A944(3);
  if (v47)
  {
    sub_100019D3C(&v46, &v48);
  }

  else
  {
    v49 = &type metadata for Bool;
    LOBYTE(v48) = 0;
  }

  v41(v23, v24, &v48);

  v36 = v41;
  v37 = v42;
LABEL_41:
  sub_1000048A0(v36, v37);
  sub_10000959C(&v48);
  return sub_10000959C(v50);
}

uint64_t sub_10013F4E4(void *a1, void *a2)
{
  type metadata accessor for ConfigurationError(0);
  v50[3] = v4;
  v50[4] = &off_1003823D0;
  v45 = v4;
  v50[0] = a1;
  v5 = qword_10039D4C8;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A1270);
  sub_10000CCE4(v50, &v48);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v10 = 136315394;
    nullsub_1();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v46);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    v15 = v49;
    v16 = sub_10000BE18(&v48, v49);
    *(v14 + 56) = v15;
    v17 = sub_10000BE5C((v14 + 32));
    (*(*(v15 - 1) + 16))(v17, v16, v15);
    v18 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034FA10, v14);
    v20 = v19;

    sub_10000959C(&v48);
    v21 = sub_100008F6C(v18, v20, &v46);

    *(v10 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(&v48);
  }

  v22 = objc_allocWithZone(type metadata accessor for FBKSForm());

  v23 = FBKSForm.init(identifier:)();
  v24 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  sub_10000BE18(a2 + 2, a2[5]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(3);
  if (!v49)
  {
    sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
LABEL_34:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Not reporting FeedbackFrameworkError: diagnostic mode not on", v33, 2u);
    }

    v34 = a2[9];
    if (!v34)
    {
      goto LABEL_47;
    }

    v35 = a2[10];
    sub_10000BE18(a2 + 2, a2[5]);

    sub_10017A944(3);
    if (v47)
    {
      sub_100019D3C(&v46, &v48);
    }

    else
    {
      v49 = &type metadata for Bool;
      LOBYTE(v48) = 0;
    }

    v34(v23, v24, &v48);

    v36 = v34;
    v37 = v35;
    goto LABEL_41;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v46 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (sub_1000A5748(v45))
  {
    if (&class metadata base offset for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &type metadata accessor for FBKSFeedbackCount && &nominal type descriptor for FBKSFeedbackCount && &type metadata for FBKSFeedbackCount && &class metadata base offset for FBKSForm && &protocol conformance descriptor for FBKSForm && &protocol conformance descriptor for FBKSForm && &type metadata accessor for FBKSForm && &nominal type descriptor for FBKSForm && &type metadata for FBKSForm && &class metadata base offset for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &type metadata accessor for FBKSLaunchConfiguration && &nominal type descriptor for FBKSLaunchConfiguration && &type metadata for FBKSLaunchConfiguration && &class metadata base offset for FBKSDraftLauncher && &type metadata accessor for FBKSDraftLauncher && &nominal type descriptor for FBKSDraftLauncher && &type metadata for FBKSDraftLauncher)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
      __chkstk_darwin(v26 - 8);
      v28 = &v44 - v27;
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      sub_10000CCE4(v50, &v48);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      sub_100029790(&v48, (v30 + 4));
      v30[9] = v23;
      v30[10] = v24;
      v30[11] = a2;
      v23 = v23;
      v24 = v24;

      sub_10013C974(0, 0, v28, &unk_1002C8718, v30);

      objc_autoreleasePoolPop(v25);
    }

LABEL_47:

    return sub_10000959C(v50);
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Not reporting FeedbackFrameworkError: error not to be reported", v40, 2u);
  }

  v41 = a2[9];
  if (!v41)
  {
    goto LABEL_47;
  }

  v42 = a2[10];
  sub_10000BE18(a2 + 2, a2[5]);

  sub_10017A944(3);
  if (v47)
  {
    sub_100019D3C(&v46, &v48);
  }

  else
  {
    v49 = &type metadata for Bool;
    LOBYTE(v48) = 0;
  }

  v41(v23, v24, &v48);

  v36 = v41;
  v37 = v42;
LABEL_41:
  sub_1000048A0(v36, v37);
  sub_10000959C(&v48);
  return sub_10000959C(v50);
}

uint64_t sub_10013FD04(void *a1, void *a2)
{
  type metadata accessor for ReadError(0);
  v50[3] = v4;
  v50[4] = &off_1003823F0;
  v45 = v4;
  v50[0] = a1;
  v5 = qword_10039D4C8;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A1270);
  sub_10000CCE4(v50, &v48);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v10 = 136315394;
    nullsub_1();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v46);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    v15 = v49;
    v16 = sub_10000BE18(&v48, v49);
    *(v14 + 56) = v15;
    v17 = sub_10000BE5C((v14 + 32));
    (*(*(v15 - 1) + 16))(v17, v16, v15);
    v18 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034FA10, v14);
    v20 = v19;

    sub_10000959C(&v48);
    v21 = sub_100008F6C(v18, v20, &v46);

    *(v10 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(&v48);
  }

  v22 = objc_allocWithZone(type metadata accessor for FBKSForm());

  v23 = FBKSForm.init(identifier:)();
  v24 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  sub_10000BE18(a2 + 2, a2[5]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(3);
  if (!v49)
  {
    sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
LABEL_34:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Not reporting FeedbackFrameworkError: diagnostic mode not on", v33, 2u);
    }

    v34 = a2[9];
    if (!v34)
    {
      goto LABEL_47;
    }

    v35 = a2[10];
    sub_10000BE18(a2 + 2, a2[5]);

    sub_10017A944(3);
    if (v47)
    {
      sub_100019D3C(&v46, &v48);
    }

    else
    {
      v49 = &type metadata for Bool;
      LOBYTE(v48) = 0;
    }

    v34(v23, v24, &v48);

    v36 = v34;
    v37 = v35;
    goto LABEL_41;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v46 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (sub_1000A59E0(v45))
  {
    if (&class metadata base offset for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &type metadata accessor for FBKSFeedbackCount && &nominal type descriptor for FBKSFeedbackCount && &type metadata for FBKSFeedbackCount && &class metadata base offset for FBKSForm && &protocol conformance descriptor for FBKSForm && &protocol conformance descriptor for FBKSForm && &type metadata accessor for FBKSForm && &nominal type descriptor for FBKSForm && &type metadata for FBKSForm && &class metadata base offset for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &type metadata accessor for FBKSLaunchConfiguration && &nominal type descriptor for FBKSLaunchConfiguration && &type metadata for FBKSLaunchConfiguration && &class metadata base offset for FBKSDraftLauncher && &type metadata accessor for FBKSDraftLauncher && &nominal type descriptor for FBKSDraftLauncher && &type metadata for FBKSDraftLauncher)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
      __chkstk_darwin(v26 - 8);
      v28 = &v44 - v27;
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      sub_10000CCE4(v50, &v48);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      sub_100029790(&v48, (v30 + 4));
      v30[9] = v23;
      v30[10] = v24;
      v30[11] = a2;
      v23 = v23;
      v24 = v24;

      sub_10013C974(0, 0, v28, &unk_1002C8710, v30);

      objc_autoreleasePoolPop(v25);
    }

LABEL_47:

    return sub_10000959C(v50);
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Not reporting FeedbackFrameworkError: error not to be reported", v40, 2u);
  }

  v41 = a2[9];
  if (!v41)
  {
    goto LABEL_47;
  }

  v42 = a2[10];
  sub_10000BE18(a2 + 2, a2[5]);

  sub_10017A944(3);
  if (v47)
  {
    sub_100019D3C(&v46, &v48);
  }

  else
  {
    v49 = &type metadata for Bool;
    LOBYTE(v48) = 0;
  }

  v41(v23, v24, &v48);

  v36 = v41;
  v37 = v42;
LABEL_41:
  sub_1000048A0(v36, v37);
  sub_10000959C(&v48);
  return sub_10000959C(v50);
}

unint64_t sub_100140524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004074(&qword_1003A0180, &unk_1002C3BC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100065074(v4, &v13, &qword_10039E4D0, &qword_1002C94A0);
      v5 = v13;
      v6 = v14;
      result = sub_10013EC4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100019D3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100140654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001406A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100037B84;

  return sub_1000A4034(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_100140774()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001407AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100037B84;

  return sub_10013EA5C(a1, v4);
}

uint64_t sub_100140864(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000375E8;

  return sub_10013EA5C(a1, v4);
}

uint64_t sub_10014091C()
{
  swift_unknownObjectRelease();
  sub_10000959C((v0 + 32));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100140974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000375E8;

  return sub_1000A4034(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_100140A54()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4110);
  sub_10000403C(v0, qword_1003A4110);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

id sub_100140AB0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v170 = a3;
  v7 = v6;
  v166 = a5;
  v159 = a2;
  v11 = type metadata accessor for URLRequest();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D648 != -1)
  {
    swift_once();
  }

  v156 = a6;
  v15 = type metadata accessor for Logger();
  v16 = sub_10000403C(v15, qword_1003A4110);
  v17 = *(v12 + 16);
  countAndFlagsBits = a1;
  v153 = v12 + 16;
  v152 = v17;
  v17(v14, a1, v11);

  v157 = v16;
  v18 = Logger.logObject.getter();
  v19 = v11;
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v18, v20);
  v169 = a4;
  v158 = v19;
  if (!v21)
  {

    (*(v12 + 8))(v14, v19);
    goto LABEL_13;
  }

  v22 = swift_slowAlloc();
  v167 = swift_slowAlloc();
  v173 = v167;
  *v22 = 136315394;
  v23 = _typeName(_:qualified:)();
  v25 = sub_100008F6C(v23, v24, &v173);

  *(v22 + 4) = v25;
  *(v22 + 12) = 2080;
  sub_100004074(&qword_1003A6740, &unk_1002C2930);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002C1790;
  v27 = URLRequest.allHTTPHeaderFields.getter();
  if (!v27)
  {
    v27 = sub_100183EFC(_swiftEmptyArrayStorage);
  }

  v28 = v171;
  v29 = sub_100144720(v27);
  v171 = v28;

  *(v26 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
  *(v26 + 32) = v29;
  *(v26 + 88) = &type metadata for HTTPContentType;
  *(v26 + 64) = v159 & 1;
  if (!v169)
  {
    v32 = (v26 + 96);
    *(v26 + 120) = &type metadata for String;
    goto LABEL_11;
  }

  v31 = String.redactedTokenFromBase64()();
  object = v31._object;
  v32 = (v26 + 96);
  *(v26 + 120) = &type metadata for String;
  if (!v31._object)
  {
LABEL_11:
    *v32 = 7104878;
    object = 0xE300000000000000;
    goto LABEL_12;
  }

  *v32 = v31._countAndFlagsBits;
LABEL_12:
  *(v26 + 104) = object;
  v33 = showFunction(signature:_:)(0xD00000000000002ELL, 0x800000010034FB40, v26);
  v35 = v34;

  (*(v12 + 8))(v14, v158);
  v36 = sub_100008F6C(v33, v35, &v173);

  *(v22 + 14) = v36;
  _os_log_impl(&_mh_execute_header, v18, v20, "%s.%s", v22, 0x16u);
  swift_arrayDestroy();

  a4 = v169;
LABEL_13:
  result = [*(*sub_10000BE18(v7 + 9 v7[12]) + 16)];
  v38 = v170;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = v7[7];
  v44 = v7[8];
  sub_10000BE18(v7 + 4, v43);
  (*(*(v44 + 8) + 24))(v43);
  v154 = Double.description.getter();
  v163 = v45;
  v155 = v40;
  v162 = v42;
  v46 = sub_100141D98(countAndFlagsBits, v154, v45, v38, a4, v40, v42);
  v48 = v47;
  v49 = v7[2];
  v50 = v7[3];
  v149 = v7;
  ObjectType = swift_getObjectType();
  v164 = v46;
  v165 = v48;
  v52 = Data.sha256Digest.getter();
  v54 = v53;
  v55 = *(v50 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v167 = &v145;
  v151 = *(AssociatedTypeWitness - 8);
  v147 = *(v151 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v58 = &v145 - v57;
  v160 = v52;
  v161 = v54;
  v150 = v49;
  v59 = v171;
  v171 = v50 + 40;
  v148 = v55;
  v60 = v55(&v145 - v57, v52, v54, 0, v166, ObjectType, v50);
  v62 = v59;
  if (!v59)
  {
    v171 = v61;
    v150 = v60;
    v166 = 0;
    sub_100009548(v160, v161);
    v174 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v67 = sub_10000BE5C(&v173);
    (*(v151 + 32))(v67, v58, AssociatedTypeWitness);
LABEL_18:
    v68 = static Data.randomBytes(count:)();
    v70 = v69;
    Data.hexString()();
    sub_100009548(v68, v70);
    v71 = String.lowercased()();

    v72 = static Data.randomBytes(count:)();
    v74 = v73;
    Data.hexString()();
    sub_100009548(v72, v74);
    v75 = String.lowercased()();

    v152(v156, countAndFlagsBits, v158);

    v76._countAndFlagsBits = 0x6172542D33422D58;
    v76._object = 0xEC00000064496563;
    countAndFlagsBits = v71._countAndFlagsBits;
    URLRequest.setValue(_:forHTTPHeaderField:)(v71, v76);

    v77._countAndFlagsBits = 0x6170532D33422D58;
    v77._object = 0xEB0000000064496ELL;
    v167 = v75._countAndFlagsBits;
    URLRequest.setValue(_:forHTTPHeaderField:)(v75, v77);

    v78._countAndFlagsBits = 0xD000000000000017;
    v78._object = 0x800000010034FA80;
    v79.value._countAndFlagsBits = v154;
    v79.value._object = v163;
    URLRequest.setValue(_:forHTTPHeaderField:)(v79, v78);

    v80 = v174;
    v81 = AssociatedConformanceWitness;
    sub_10000BE18(&v173, v174);
    v82 = (*(v81 + 48))(v80, v81);
    v84 = v83;
    v85 = Data.base64EncodedString(options:)(0);
    sub_100009548(v82, v84);
    v86._countAndFlagsBits = 0xD000000000000013;
    v86._object = 0x800000010034FAE0;
    URLRequest.setValue(_:forHTTPHeaderField:)(v85, v86);

    v87 = v150;
    v88 = Data.base64EncodedString(options:)(0);
    v89._object = 0x800000010034FB00;
    v89._countAndFlagsBits = 0xD000000000000011;
    URLRequest.setValue(_:forHTTPHeaderField:)(v88, v89);

    if (v159)
    {
      v90 = 0xD000000000000018;
    }

    else
    {
      v90 = 0xD000000000000010;
    }

    if (v159)
    {
      v91 = "application/json";
    }

    else
    {
      v91 = "reader-payment_read_success";
    }

    v92._countAndFlagsBits = 0x2D746E65746E6F43;
    v92._object = 0xEC00000065707954;
    v93 = v91 | 0x8000000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(*&v90, v92);

    v94._object = 0x8000000100344ED0;
    v95.value._countAndFlagsBits = v155;
    v95.value._object = v162;
    v94._countAndFlagsBits = 0xD000000000000011;
    URLRequest.setValue(_:forHTTPHeaderField:)(v95, v94);

    v96 = v174;
    v97 = AssociatedConformanceWitness;
    sub_10000BE18(&v173, v174);
    v98 = (*(v97 + 56))(v96, v97);
    if (v98[2])
    {
      v99 = v98[4];
      v100 = v98[5];
      sub_1000094F4(v99, v100);

      v101 = Data.base64EncodedString(options:)(0);
      v102._countAndFlagsBits = 0xD000000000000014;
      v102._object = 0x800000010034FB20;
      URLRequest.setValue(_:forHTTPHeaderField:)(v101, v102);

      sub_100009548(v99, v100);
      v104 = v169;
      v103 = v170;
      if (!v169)
      {
LABEL_27:

        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          *v108 = 136446466;
          v109 = sub_100008F6C(countAndFlagsBits, v71._object, &v176);

          *(v108 + 4) = v109;
          *(v108 + 12) = 2082;
          v110 = sub_100008F6C(v167, v75._object, &v176);

          *(v108 + 14) = v110;
          _os_log_impl(&_mh_execute_header, v106, v107, "Request signed. traceId: %{public}s, spanId: %{public}s", v108, 0x16u);
          swift_arrayDestroy();

          sub_100009548(v164, v165);
          sub_100009548(v87, v171);
        }

        else
        {
          sub_100009548(v164, v165);
          sub_100009548(v87, v171);
        }

        return sub_10000959C(&v173);
      }
    }

    else
    {

      v104 = v169;
      v103 = v170;
      if (!v169)
      {
        goto LABEL_27;
      }
    }

    v105._countAndFlagsBits = 0xD000000000000012;
    v105._object = 0x8000000100344EB0;
    URLRequest.setValue(_:forHTTPHeaderField:)(*&v103, v105);
    goto LABEL_27;
  }

  v146 = AssociatedTypeWitness;

  sub_100009548(v160, v161);
  _s3__C4CodeOMa_13(0);
  v176 = 10006;
  swift_errorRetain();
  sub_10014261C(&qword_10039D978, _s3__C4CodeOMa_13, &unk_1002BF078);
  v63 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v63)
  {

    v64 = v50;
    v65 = ObjectType;
    (*(v50 + 56))(ObjectType, v50);
    v66 = v162;
    v128 = v149[7];
    v129 = v149[8];
    sub_10000BE18(v149 + 4, v128);
    (*(*(v129 + 8) + 24))(v128);
    v130 = Double.description.getter();
    v132 = v131;
    v154 = v130;
    v133 = sub_100141D98(countAndFlagsBits, v130, v131, v170, v169, v155, v66);
    v135 = v134;
    sub_100009548(v164, v165);
    v165 = v133;
    v161 = v135;
    v136 = Data.sha256Digest.getter();
    v138 = v137;
    v167 = &v145;
    __chkstk_darwin(v136);
    v140 = &v145 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
    v141 = v148(v140, v136, v138, 0, v166, v65, v64);
    v163 = v132;
    v171 = v142;
    v150 = v141;
    v166 = 0;
    sub_100009548(v136, v138);
    v143 = v146;
    v174 = v146;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v144 = sub_10000BE5C(&v173);
    (*(v151 + 32))(v144, v140, v143);
    v164 = v165;
    v165 = v161;
    goto LABEL_18;
  }

  v176 = 10003;
  swift_errorRetain();
  v111 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v111)
  {

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v176 = v115;
      *v114 = 136315138;
      v116 = sub_100020C74(10003, 0, 0, 0);
      v172 = v116;
      type metadata accessor for SecurityError(0);
      sub_10014261C(&qword_10039D958, type metadata accessor for SecurityError, &unk_1002BEED0);
      v117 = Error.localizedDescription.getter();
      v119 = v118;

      v120 = sub_100008F6C(v117, v119, &v176);

      *(v114 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v112, v113, "Error signing secure channel request: %s", v114, 0xCu);
      sub_10000959C(v115);
    }

    sub_100020EB0(5006, 0, 0, 0);
    swift_willThrow();
  }

  else
  {
    swift_errorRetain();
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v176 = v124;
      *v123 = 136315138;
      swift_getErrorValue();
      v125 = Error.localizedDescription.getter();
      v127 = sub_100008F6C(v125, v126, &v176);

      *(v123 + 4) = v127;
      v62 = v59;
      _os_log_impl(&_mh_execute_header, v121, v122, "Error signing secure channel request: %s", v123, 0xCu);
      sub_10000959C(v124);
    }

    swift_errorRetain();
    sub_100020EB0(5001, 0, 0, v62);

    swift_willThrow();
  }

  return sub_100009548(v164, v165);
}

uint64_t sub_100141D98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v89._countAndFlagsBits = a6;
  v89._object = a7;
  v94._countAndFlagsBits = a2;
  v86[1] = *v7;
  v87 = a4;
  v11 = type metadata accessor for String.Encoding();
  v91 = *(v11 - 8);
  v92 = v11;
  __chkstk_darwin(v11);
  v90 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v14 = __chkstk_darwin(v13 - 8);
  v88 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v86 - v16;
  v18 = type metadata accessor for URLRequest();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D648 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000403C(v22, qword_1003A4110);
  v23 = *(v19 + 16);
  v93 = a1;
  v23(v21, a1, v18);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v94._object = a3;

  v26 = os_log_type_enabled(v24, v25);
  v95 = a5;
  if (!v26)
  {

    (*(v19 + 8))(v21, v18);
    goto LABEL_13;
  }

  v27 = swift_slowAlloc();
  v86[0] = swift_slowAlloc();
  v98[0] = v86[0];
  *v27 = 136315394;
  v28 = _typeName(_:qualified:)();
  v30 = sub_100008F6C(v28, v29, v98);

  *(v27 + 4) = v30;
  *(v27 + 12) = 2080;
  sub_100004074(&qword_1003A6740, &unk_1002C2930);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002C1790;
  v32 = URLRequest.allHTTPHeaderFields.getter();
  if (!v32)
  {
    v32 = sub_100183EFC(_swiftEmptyArrayStorage);
  }

  v33 = sub_100144720(v32);

  v34 = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
  *(v31 + 32) = v33;
  *(v31 + 88) = &type metadata for String;
  countAndFlagsBits = v94._countAndFlagsBits;
  *(v31 + 56) = v34;
  *(v31 + 64) = countAndFlagsBits;
  v36 = v95;
  *(v31 + 72) = v94._object;
  if (!v36)
  {
    v39 = (v31 + 96);
    *(v31 + 120) = &type metadata for String;

    goto LABEL_11;
  }

  v38 = String.redactedTokenFromBase64()();
  object = v38._object;
  v39 = (v31 + 96);
  *(v31 + 120) = &type metadata for String;
  if (!v38._object)
  {
LABEL_11:
    *v39 = 7104878;
    object = 0xE300000000000000;
    goto LABEL_12;
  }

  *v39 = v38._countAndFlagsBits;
LABEL_12:
  *(v31 + 104) = object;
  v40 = showFunction(signature:_:)(0xD000000000000033, 0x800000010034FAA0, v31);
  v42 = v41;

  (*(v19 + 8))(v21, v18);
  v43 = sub_100008F6C(v40, v42, v98);

  *(v27 + 14) = v43;
  _os_log_impl(&_mh_execute_header, v24, v25, "%s.%s", v27, 0x16u);
  swift_arrayDestroy();

LABEL_13:
  v44 = 0xE000000000000000;
  v98[0] = 0;
  v98[1] = 0xE000000000000000;
  URLRequest.httpMethod.getter();
  if (v45)
  {
    v46 = String.lowercased()();
    v47 = v46._countAndFlagsBits;
    v44 = v46._object;
  }

  else
  {
    v47 = 0;
  }

  v48._countAndFlagsBits = v47;
  v48._object = v44;
  String.append(_:)(v48);

  URLRequest.url.getter();
  v49 = type metadata accessor for URL();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (v51(v17, 1, v49) == 1)
  {
    sub_1000E14B4(v17);
    v52 = 0;
    v53 = 0xE000000000000000;
  }

  else
  {
    URL.path.getter();
    (*(v50 + 8))(v17, v49);
    v54 = String.lowercased()();
    v53 = v54._object;

    v52 = v54._countAndFlagsBits;
  }

  v55 = v88;
  v56 = v53;
  String.append(_:)(*&v52);

  URLRequest.url.getter();
  if (v51(v55, 1, v49) == 1)
  {
    sub_1000E14B4(v55);
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  else
  {
    v59 = URL.query.getter();
    v61 = v60;
    (*(v50 + 8))(v55, v49);
    if (v61)
    {
      v57 = v59;
    }

    else
    {
      v57 = 0;
    }

    if (v61)
    {
      v58 = v61;
    }

    else
    {
      v58 = 0xE000000000000000;
    }
  }

  v62 = v95;
  v63 = v58;
  String.append(_:)(*&v57);

  v64 = URLRequest.allHTTPHeaderFields.getter();
  if (v64)
  {
    v65 = v64;
    if (*(v64 + 16))
    {
      v66 = sub_1000F5A28(0xD000000000000015, 0x8000000100344E90);
      if (v67)
      {
        v68 = (*(v65 + 56) + 16 * v66);
        v69 = *v68;
        v70 = v68[1];

        v71._object = 0x8000000100344E90;
        v71._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v71);
        v72._countAndFlagsBits = v69;
        v72._object = v70;
        String.append(_:)(v72);
      }
    }
  }

  v73._countAndFlagsBits = 0xD000000000000017;
  v73._object = 0x800000010034FA80;
  String.append(_:)(v73);
  String.append(_:)(v94);
  v74._countAndFlagsBits = 0xD000000000000011;
  v74._object = 0x8000000100344ED0;
  String.append(_:)(v74);
  String.append(_:)(v89);
  if (v62)
  {
    v75._countAndFlagsBits = 0xD000000000000012;
    v75._object = 0x8000000100344EB0;
    String.append(_:)(v75);
    v76._countAndFlagsBits = v87;
    v76._object = v62;
    String.append(_:)(v76);
  }

  v77 = v90;
  static String.Encoding.utf8.getter();
  v78 = String.data(using:allowLossyConversion:)();
  v80 = v79;
  result = (*(v91 + 8))(v77, v92);
  if (v80 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v96 = v78;
    v97 = v80;
    v82 = URLRequest.httpBody.getter();
    if (v83 >> 60 != 15)
    {
      v84 = v82;
      v85 = v83;
      Data.append(_:)();
      sub_10001A074(v84, v85);
      return v96;
    }

    return v78;
  }

  return result;
}

uint64_t sub_1001425B0()
{
  swift_unknownObjectRelease();
  sub_10000959C((v0 + 32));
  sub_10000959C((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_10014261C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100142664()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A41E8);
  sub_10000403C(v0, qword_1003A41E8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

void *sub_1001426C0(uint64_t a1)
{
  v2 = v1;
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A41E8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0x7365732874696E69, 0xEE00293A6E6F6973, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1001428A4()
{
  [*(v0 + 16) finishTasksAndInvalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_100142910(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A41E8);
  v9 = *(v5 + 16);
  v39 = a1;
  v9(v7, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v37 = v11;
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1660;
    v17 = URLRequest.allHTTPHeaderFields.getter();
    if (!v17)
    {
      v17 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    v18 = sub_100144720(v17);
    v35 = v2;

    *(v16 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v16 + 32) = v18;
    v19 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034FC50, v16);
    v21 = v20;

    (*(v5 + 8))(v7, v4);
    v22 = sub_100008F6C(v19, v21, aBlock);

    *(v12 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v37, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = v23 + 16;
  *(v23 + 24) = 0;
  *(v23 + 32) = -1;
  v25 = dispatch_semaphore_create(0);
  v26 = *(v38 + 16);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  aBlock[4] = sub_100144E28;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014324C;
  aBlock[3] = &unk_100384D68;
  v29 = _Block_copy(aBlock);

  v30 = v25;

  v31 = [v26 dataTaskWithRequest:isa completionHandler:v29];
  _Block_release(v29);

  [v31 resume];
  OS_dispatch_semaphore.wait(timeout:)();
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0 || (swift_beginAccess(), v32 = *(v23 + 32), v32 == 255))
  {
    [v31 cancel];
    sub_100020EB0(5003, 0, 0, 0);
    swift_willThrow();
  }

  else
  {
    v24 = *(v23 + 16);
    v33 = *(v23 + 24);
    if (v32)
    {
      aBlock[7] = *(v23 + 16);
      sub_100144E30(v24, v33, v32);
      sub_100144E48(v24, v33, 1);
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      swift_willThrowTypedImpl();

      sub_100144E54(v24, v33, v32);
    }

    else
    {
      sub_1000094F4(*(v23 + 16), *(v23 + 24));
    }
  }

  return v24;
}

Swift::Int sub_100142EAC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URLError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    if (a3)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        sub_10001A3E8(a1, a2);
        v16 = a3;
        v17 = [v15 statusCode];
        if (SPRHTTPStatusIsSuccess())
        {
          if (qword_10039D650 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000403C(v18, qword_1003A41E8);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v19, v20, "SecureChannel.httpData: Success. Received payload", v21, 2u);
          }

          swift_beginAccess();
          v22 = *(a5 + 16);
          v23 = *(a5 + 24);
          *(a5 + 16) = a1;
          *(a5 + 24) = a2;
          v24 = *(a5 + 32);
          *(a5 + 32) = 0;
          goto LABEL_21;
        }

        if (qword_10039D650 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000403C(v29, qword_1003A41E8);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v30, v31, "SecureChannel.httpData: Received HTTP error %ld", v32, 0xCu);
        }

        v28 = related decl 'e' for SPRHTTPErrorCode.init(_:serverCode:payload:)();
LABEL_20:
        swift_beginAccess();
        v22 = *(a5 + 16);
        v23 = *(a5 + 24);
        *(a5 + 16) = v28;
        *(a5 + 24) = 0;
        v24 = *(a5 + 32);
        *(a5 + 32) = 1;
LABEL_21:
        sub_100144E54(v22, v23, v24);
        return OS_dispatch_semaphore.signal()();
      }
    }
  }

  if (a4)
  {
    swift_errorRetain();
    static URLError.timedOut.getter();
    sub_100144D3C();
    v25 = static _ErrorCodeProtocol.~= infix(_:_:)();
    (*(v11 + 8))(v13, v10);
    if (v25)
    {
      v26 = 5003;
      v27 = 0;
    }

    else
    {
      v26 = 5005;
      v27 = a4;
    }

    v28 = sub_100020EB0(v26, 0, 0, v27);

    goto LABEL_20;
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10014324C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_10001A074(v6, v10);
}

id sub_100143314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A41E8);
  v13 = *(v9 + 16);
  v37 = a1;
  v13(v11, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v34 = v3;
    v35 = a2;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100008F6C(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1002C1660;
    v21 = URLRequest.allHTTPHeaderFields.getter();
    v36 = a3;
    if (!v21)
    {
      v21 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    v22 = sub_100144720(v21);

    *(v20 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v20 + 32) = v22;
    v23 = showFunction(signature:_:)(0xD00000000000001ELL, 0x800000010034FC00, v20);
    v25 = v24;

    (*(v9 + 8))(v11, v8);
    v26 = sub_100008F6C(v23, v25, aBlock);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    a2 = v35;
    a3 = v36;
    v4 = v34;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v27 = *(v4 + 16);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  aBlock[4] = sub_1001446A0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100143ED8;
  aBlock[3] = &unk_100384CF0;
  v30 = _Block_copy(aBlock);

  v31 = [v27 downloadTaskWithRequest:isa completionHandler:v30];
  _Block_release(v30);

  return v31;
}

uint64_t sub_100143740(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void *), uint64_t a5)
{
  v51 = a5;
  v52 = a4;
  v8 = type metadata accessor for URLError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v48[-v16];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v24 = v23;
  sub_1000BDC6C(v22, v17);
  if ((*(v19 + 48))(v17, 1, v24) == 1)
  {
    result = sub_1000E14B4(v17);
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  (*(v19 + 32))(v21, v17, v24);
  if (!a2 || (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) == 0))
  {
    result = (*(v19 + 8))(v21, v24);
    if (!a3)
    {
      return result;
    }

LABEL_13:
    swift_errorRetain();
    static URLError.timedOut.getter();
    sub_100144D3C();
    v34 = static _ErrorCodeProtocol.~= infix(_:_:)();
    v35 = *(v9 + 8);
    v35(v11, v8);
    if (v34)
    {
      (*(v19 + 56))(v15, 1, 1, v24);
      v36 = 5003;
    }

    else
    {
      swift_errorRetain();
      static URLError.cancelled.getter();
      v37 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v35(v11, v8);
      (*(v19 + 56))(v15, 1, 1, v24);
      if ((v37 & 1) == 0)
      {
        swift_errorRetain();
        v38 = sub_100020EB0(5005, 0, 0, a3);

        goto LABEL_19;
      }

      v36 = 5008;
    }

    v38 = sub_100020EB0(v36, 0, 0, 0);
LABEL_19:
    v52(v15, v38);

    return sub_1000E14B4(v15);
  }

  v27 = v26;
  v28 = a2;
  v29 = [v27 statusCode];
  if (SPRHTTPStatusIsSuccess())
  {
    if (qword_10039D650 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000403C(v30, qword_1003A41E8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "SecureChannel.httpDownloadTask: Success. Received payload", v33, 2u);
    }

    (*(v19 + 16))(v15, v21, v24);
    (*(v19 + 56))(v15, 0, 1, v24);
    v52(v15, 0);

    sub_1000E14B4(v15);
    return (*(v19 + 8))(v21, v24);
  }

  else
  {
    v50 = v28;
    if (qword_10039D650 != -1)
    {
      swift_once();
    }

    v49 = v24;
    v39 = type metadata accessor for Logger();
    sub_10000403C(v39, qword_1003A41E8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v40, v41, "SecureChannel.httpDownloadTask: Received HTTP error %ld", v42, 0xCu);
    }

    v43 = Data.init(contentsOf:options:)();
    v45 = v44;
    v46 = v49;
    (*(v19 + 56))(v15, 1, 1, v49);
    sub_10001A3E8(v43, v45);
    v47 = related decl 'e' for SPRHTTPErrorCode.init(_:serverCode:payload:)();
    v52(v15, v47);

    sub_10001A074(v43, v45);
    sub_1000E14B4(v15);
    return (*(v19 + 8))(v21, v46);
  }
}

uint64_t sub_100143ED8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1000E14B4(v10);
}

id sub_10014403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A41E8);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v47 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = a3;
    v18 = v17;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, aBlock);
    v44 = a2;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v42 = "NSURLResponse16@NSError24";
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002C1660;
    swift_getErrorValue();
    v24 = v12;
    v25 = v9;
    v27 = v48;
    v26 = v49;
    *(v23 + 56) = v49;
    v28 = sub_10000BE5C((v23 + 32));
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    v29 = showFunction(signature:_:)(0xD000000000000022, v42 | 0x8000000000000000, v23);
    v31 = v30;

    v32 = v29;
    v9 = v25;
    v12 = v24;
    v33 = sub_100008F6C(v32, v31, aBlock);
    a2 = v44;

    *(v18 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();

    a3 = v45;
  }

  URL.init(string:)();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v35 = v9;
    baseURL = v46->_baseURL;
    URL._bridgeToObjectiveC()(v46);
    v38 = v37;
    v39 = swift_allocObject();
    v39[2] = a2;
    v39[3] = a3;
    v39[4] = v47;
    aBlock[4] = sub_100144644;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100143ED8;
    aBlock[3] = &unk_100384CA0;
    v40 = _Block_copy(aBlock);
    swift_errorRetain();

    v41 = [(NSURL *)baseURL downloadTaskWithURL:v38 completionHandler:v40];
    _Block_release(v40);

    (*(v10 + 8))(v12, v35);
    return v41;
  }

  return result;
}

uint64_t sub_10014452C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  a4(v10, a6);
  return sub_1000E14B4(v10);
}

uint64_t sub_100144604()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100144650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100144668()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001446A8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100144880(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_100144720(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100144880(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1001446A8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

Swift::Int sub_100144880(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v25 = result;
  v26 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_13:
    v27 = v9 | (v3 << 6);
    v12 = (*(a3 + 48) + 16 * v27);
    v13 = *v12;
    v14 = v12[1];
    v15 = qword_10039D490;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_1003A6B80;
    if (*(qword_1003A6B80 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v17 = Hasher._finalize()(), v18 = -1 << *(v16 + 32), v19 = v17 & ~v18, ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = (*(v16 + 48) + 16 * v19);
        v22 = *v21 == v13 && v21[1] == v14;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v29;
    }

    else
    {
LABEL_24:

      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v23 = __OFADD__(v26++, 1);
      v7 = v29;
      if (v23)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_100144AE4(v25, a2, v26, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_100144AE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100144D3C()
{
  result = qword_1003A42D0;
  if (!qword_1003A42D0)
  {
    type metadata accessor for URLError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A42D0);
  }

  return result;
}

uint64_t sub_100144D94()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_100144DDC(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100144DDC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100009548(a1, a2);
  }
}

uint64_t sub_100144DE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100144E30(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100144E48(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100144E48(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_1000094F4(a1, a2);
  }
}

uint64_t sub_100144E54(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100144DDC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100144E7C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A42D8);
  sub_10000403C(v0, qword_1003A42D8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

unint64_t sub_100144EEC()
{
  result = qword_1003A42F0;
  if (!qword_1003A42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A42F0);
  }

  return result;
}

id sub_100144F74()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v0 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v0 + 104) > 0 || *(v0 + 112) == 1)
  {
    result = [*(v0 + 88) wait];
  }

  v2 = *(v0 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 96) = v4;
  [*(v0 + 88) unlock];
  v5 = *(v0 + 52);
  v6 = *(v0 + 56);
  result = [*(v0 + 88) lock];
  v7 = *(v0 + 96);
  v3 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v3)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(v0 + 96) = v8;
  if (!v8)
  {
    [*(v0 + 88) broadcast];
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  [*(v0 + 88) unlock];
  return v9;
}

uint64_t sub_100145090()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A43C8);
  sub_10000403C(v0, qword_1003A43C8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_1001450EC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6DD0 = v4;
    *algn_1003A6DD8 = v6;
  }

  return result;
}

void *sub_1001451FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_10039D660 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A43C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, v30);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0x54656D6954746567, 0xEE0029286E656B6FLL, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v30);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v2[5];
  v15 = v2[6];
  sub_10000BE18(v2 + 2, v14);
  if (qword_10039D668 != -1)
  {
    swift_once();
  }

  v16 = (*(v15 + 32))(qword_1003A6DD0, *algn_1003A6DD8, v14, v15);
  v18 = v17;
  type metadata accessor for JSONDecoder();
  sub_10009A814(_swiftEmptyArrayStorage);
  sub_100146398();
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
  sub_100009548(v16, v18);

  v20 = v30[0];
  v21 = v30[1];
  v22 = v30[2];
  v23 = v2[10];
  v24 = v2[11];
  sub_10000BE18(v2 + 7, v23);
  if (v22 == (*(v24 + 32))(v23, v24))
  {
    sub_100176DD8(v20, v21, v30);
    memcpy(v28, v30, sizeof(v28));
    nullsub_1();
    memcpy(__src, v28, sizeof(__src));
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "RTC was reset since token issuance", v27, 2u);
    }

    sub_100031B14(__src);
  }

  return memcpy(a1, __src, 0x110uLL);
}

void *sub_1001457B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v7 = a3;
  if (qword_10039D660 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A43C8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v25 = v7;
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v28);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1670;
    v17 = String.redactedTokenFromBase64()();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = v17;
    *(v16 + 88) = &type metadata for UInt32;
    *(v16 + 64) = v25;
    v18 = showFunction(signature:_:)(0xD000000000000021, 0x800000010034FD30, v16);
    v20 = v19;

    v21 = sub_100008F6C(v18, v20, &v28);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    v5 = v4;

    v7 = v25;
  }

  v22 = v6[10];
  v23 = v6[11];
  sub_10000BE18(v6 + 7, v22);
  if ((*(v23 + 32))(v22, v23) == v7)
  {

    result = sub_100176DD8(a1, a2, v27);
    if (!v5)
    {
      sub_10008C3EC(v27);
      return sub_100145AEC(a1, a2, v7);
    }
  }

  else
  {
    sub_100020C74(10007, 0xD000000000000026, 0x800000010034FD00, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100145AEC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  v20[1] = a1;
  v20[2] = a2;
  v21 = a3;
  v22 = _swiftEmptyArrayStorage;
  sub_100146350(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10009AAB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1001462FC();
  v13 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = v14;
  v17 = v13;
  (*(v10 + 8))(v12, v9);
  v18 = v5[5];
  v19 = v5[6];
  sub_10000BE18(v5 + 2, v18);
  if (qword_10039D668 != -1)
  {
    swift_once();
  }

  (*(v19 + 40))(qword_1003A6DD0, *algn_1003A6DD8, v17, v16, v18, v19);
  return sub_100009548(v17, v16);
}

uint64_t sub_100145D44(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = sub_100004074(&qword_1003A44F8, &qword_1002C8A60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000BE18(a1, a1[3]);
  sub_1001465BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100145ED4()
{
  if (*v0)
  {
    return 0x7465736552637472;
  }

  else
  {
    return 0x6E656B6F54776172;
  }
}

uint64_t sub_100145F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F54776172 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736552637472 && a2 == 0xED0000746E756F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100146000(uint64_t a1)
{
  v2 = sub_1001465BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014603C(uint64_t a1)
{
  v2 = sub_1001465BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100146078@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100146610(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1001460C8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_100146128()
{
  sub_10000959C((v0 + 16));
  sub_10000959C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10014618C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1001461EC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_10014624C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1001462A4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 32))(v1, v2);
}

unint64_t sub_1001462FC()
{
  result = qword_1003A44E8;
  if (!qword_1003A44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A44E8);
  }

  return result;
}

uint64_t sub_100146350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100146398()
{
  result = qword_1003A44F0;
  if (!qword_1003A44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A44F0);
  }

  return result;
}

uint64_t sub_1001463EC(uint64_t a1)
{
  sub_1000E5EA8(v9);
  if (v1)
  {
  }

  else
  {
    v3 = v10;
    v4 = v11;
    sub_10000BE18(v9, v10);
    sub_1000C7DD8(v3, v4);
    sub_10000CCE4(v8, v7);
    sub_1000EDC24(v6);
    sub_10000959C(v8);

    type metadata accessor for DefaultSecureTimeKeeper();
    a1 = swift_allocObject();
    sub_100029790(v7, a1 + 16);
    sub_100029790(v6, a1 + 56);
    sub_10000959C(v9);
  }

  return a1;
}

__n128 sub_100146510(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100146524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_10014656C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001465BC()
{
  result = qword_1003A4500;
  if (!qword_1003A4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4500);
  }

  return result;
}

uint64_t sub_100146610(void *a1)
{
  v3 = sub_100004074(&qword_1003A4508, &qword_1002C8A68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1001465BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000959C(a1);
  return v7;
}

unint64_t sub_1001467FC()
{
  result = qword_1003A4510;
  if (!qword_1003A4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4510);
  }

  return result;
}

unint64_t sub_100146854()
{
  result = qword_1003A4518;
  if (!qword_1003A4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4518);
  }

  return result;
}

unint64_t sub_1001468AC()
{
  result = qword_1003A4520;
  if (!qword_1003A4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4520);
  }

  return result;
}

uint64_t sub_100146900(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100004074(&qword_1003A4700, &qword_1002C8C40);
  if (swift_dynamicCast())
  {
    sub_100029790(__src, &v43);
    sub_10000BE18(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_10000959C(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000BD44(__src, &qword_1003A4708, &qword_1002C8C48);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10014B04C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10014B9A4(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_10014B114(sub_10014BAF0, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100188C78(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100188C78(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10001A074(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_10001A074(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000094F4(*&__src[0], *(&__src[0] + 1));

  sub_100009548(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100146E20(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10000BE18(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10014B710(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10014B7C8(v3, v4);
    }

    else
    {
      v6 = sub_10014B844(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000959C(v8);
  return v6;
}

void *sub_100146EDC(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for UnsafeMutableRawBufferPointer;
  v7[4] = &protocol witness table for UnsafeMutableRawBufferPointer;
  v7[0] = a1;
  v7[1] = a2;
  v2 = sub_10000BE18(v7, &type metadata for UnsafeMutableRawBufferPointer);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_10014B710(*v2, v4);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  sub_10000959C(v7);
  return v3;
}

uint64_t sub_100146FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100147050@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001470C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4528);
  sub_10000403C(v0, qword_1003A4528);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

uint64_t sub_100147134()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6DE0 = v4;
    *algn_1003A6DE8 = v6;
  }

  return result;
}

void *sub_100147244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4528);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v5;
    aBlock[0] = v15;
    *v14 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, aBlock);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
    v5 = v30;
  }

  ObjectType = swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100385050;
  v23 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  sub_1000039BC(ObjectType, v24, v25);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v23);
  swift_unknownObjectRelease();
  (*(v32 + 8))(v7, v5);
  (*(v8 + 8))(v10, v31);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) & 1) == 0)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v26 = OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_url;
  v27 = type metadata accessor for URL();
  (*(*(v27 - 8) + 8))(v4 + v26, v27);
  sub_10000959C((v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist));
  sub_10000959C((v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper));
  sub_10000959C((v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto));
  sub_10000959C((v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10014770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100147244(a1, a2, a3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DefaultTimeTokenManager(uint64_t a1)
{
  result = qword_1003A4580;
  if (!qword_1003A4580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001477B8(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void *sub_100147898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for DispatchTimeInterval();
  v33 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v28 - v7;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v28 - v14;
  v16 = v35;
  result = sub_1001499A0(v36);
  if (!v16)
  {
    v31 = v8;
    v32 = v15;
    v29 = v10;
    v30 = v6;
    if (*(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) == 1)
    {
      sub_1001495DC(v36);
      v35 = 0;
      v28[1] = *(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
      v28[0] = swift_getObjectType();
      v18 = (a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
      v20 = *(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
      v19 = *(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
      sub_10000BE18(v18, v20);
      (*(*(v19 + 8) + 16))(v20);
      + infix(_:_:)();
      v29 = *(v29 + 8);
      (v29)(v13, v9);
      v21 = v33;
      v22 = *(v33 + 104);
      v23 = v31;
      v24 = v3;
      v22(v31, enum case for DispatchTimeInterval.never(_:), v3);
      v25 = v30;
      *v30 = 0;
      v22(v25, enum case for DispatchTimeInterval.nanoseconds(_:), v24);
      v26 = v32;
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      v27 = *(v21 + 8);
      v27(v25, v24);
      v27(v23, v24);
      (v29)(v26, v9);
    }

    else
    {
      v35 = 0;
    }

    return memcpy(v34, v36, 0x110uLL);
  }

  return result;
}

void sub_100147BC4(char a1)
{
  v3 = v1;
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A4528);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v40);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for MPOCOperationMode;
    v13 = a1 & 1;
    *(v12 + 32) = a1 & 1;
    v14 = showFunction(signature:_:)(0x6F4D686374697773, 0xEF293A6F74286564, v12);
    v16 = v15;

    v17 = sub_100008F6C(v14, v16, &v40);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v13 = a1 & 1;
  }

  if (*(v3 + 16) == (a1 & 1))
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      if (a1)
      {
        v26 = 0x656E696C66666FLL;
      }

      else
      {
        v26 = 0x656E696C6E6FLL;
      }

      if (a1)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      v28 = sub_100008F6C(v26, v27, &v40);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "DefaultTimeTokenManager: Already in %s mode.", v24, 0xCu);
      sub_10000959C(v25);
    }
  }

  else
  {
    if (a1)
    {
      sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24));
      sub_1001451FC(__src);
      memcpy(__dst, __src, 0x110uLL);
      if (sub_100031A30(__dst) == 1)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Cannot switch offline - no time token", v20, 2u);
        }

        sub_10014BA44();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
        return;
      }

      sub_10000BD44(__src, &qword_10039F268, &qword_1002C2730);
    }

    v29 = *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist + 24);
    v30 = *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist + 32);
    sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist), v29);
    if (qword_10039D678 != -1)
    {
      swift_once();
    }

    v31 = qword_1003A6DE0;
    v32 = *algn_1003A6DE8;
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1002C1660;
    *(v33 + 32) = v13;
    v37 = v13;
    v34 = sub_10014B8C8(v33);
    v36 = v35;

    (*(v30 + 40))(v31, v32, v34, v36, v29, v30);
    sub_100009548(v34, v36);
    if (!v2)
    {
      *(v3 + 16) = v37;
    }
  }
}

void sub_100148128()
{
  v2 = v1;
  v3 = v0;
  v95 = type metadata accessor for DispatchTimeInterval();
  v99 = *(v95 - 8);
  v4 = __chkstk_darwin(v95);
  v98 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v90 - v6;
  v102 = type metadata accessor for DispatchTime();
  v109 = *(v102 - 8);
  v7 = __chkstk_darwin(v102);
  v96 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v90 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v105 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_1003A4528);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v100 = v14;
    v18 = v17;
    *&v112[0] = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, v112);
    v94 = v3;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v25 = sub_100008F6C(v23, v24, v112);

    *(v18 + 14) = v25;
    v2 = v1;
    v3 = v94;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();

    v14 = v100;
  }

  v26 = OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started;
  if (*(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started))
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Background process already started", v29, 2u);
    }

    return;
  }

  v30 = (v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
  sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24));
  sub_1001451FC(v134);
  if (sub_100031A30(v134) == 1)
  {
    sub_1001499A0(v113);
    if (v2)
    {
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v35;
        *v34 = v35;
        _os_log_impl(&_mh_execute_header, v31, v32, "Error refreshing time token: %@.", v33, 0xCu);
        sub_10000BD44(v34, &unk_10039E220, &qword_1002C3D60);
      }

      sub_10014BA44();
      swift_allocError();
      *v36 = 2;
      swift_willThrow();

      return;
    }

    v91 = v30;
    v92 = v26;
    v100 = 0;
    v59 = v132;
    v60 = v133;
    v42 = v116;
    v43 = v117;
    v44 = v118;
    v45 = v119;
    v46 = v121;
    v47 = v120;
    v48 = v122;
    v49 = v123;
    v50 = v124;
    v51 = v125;
    v52 = v126;
    v53 = v127;
    v54 = v128;
    v55 = v129;
    v57 = v130;
    v56 = v131;
    v37 = v113[1];
    v38 = v113[2];
    v41 = v115;
    v40 = v113[3];
    v58 = v113;
    v39 = v114;
  }

  else
  {
    v91 = v30;
    v92 = v26;
    v100 = v2;
    v37 = v134[1];
    v38 = v134[2];
    v39 = v135;
    v40 = v134[3];
    v41 = v136;
    v42 = v137;
    v43 = v138;
    v44 = v139;
    v45 = v140;
    v46 = v142;
    v47 = v141;
    v48 = v143;
    v49 = v144;
    v50 = v145;
    v51 = v146;
    v52 = v147;
    v53 = v148;
    v54 = v149;
    v55 = v150;
    v57 = v151;
    v56 = v152;
    v58 = v134;
    v59 = v153;
    v60 = v154;
  }

  v61 = *v58;
  v111 = v49 & 1;
  *&v112[0] = v61;
  *(&v112[0] + 1) = v37;
  *&v112[1] = v38;
  *(&v112[1] + 1) = v40;
  v112[2] = v39;
  *&v112[3] = v41;
  *(&v112[3] + 1) = v42;
  *&v112[4] = v43;
  *(&v112[4] + 1) = v44;
  *&v112[5] = v45;
  *(&v112[5] + 1) = v47;
  v112[6] = v46;
  *&v112[7] = v48;
  BYTE8(v112[7]) = v49 & 1;
  v112[8] = v50;
  v112[9] = v51;
  v112[10] = v52;
  v112[11] = v53;
  v112[12] = v54;
  v112[13] = v55;
  v112[14] = v57;
  v112[15] = v56;
  *&v112[16] = v59;
  *(&v112[16] + 1) = v60;
  memcpy(v155, v112, 0x110uLL);
  v62 = *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
  ObjectType = swift_getObjectType();
  v64 = swift_allocObject();
  swift_weakInit();
  v110[4] = sub_10014BAE8;
  v110[5] = v64;
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 1107296256;
  v110[2] = sub_100003974;
  v110[3] = &unk_100385028;
  v65 = _Block_copy(v110);

  v66 = v103;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  v67 = v105;
  sub_1000039BC(ObjectType, v68, v69);
  v93 = v62;
  v94 = ObjectType;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v65);
  (*(v107 + 8))(v67, v108);
  (*(v104 + 8))(v66, v106);

  v70 = v100;
  sub_1001495DC(v155);
  if (v70)
  {
    swift_errorRetain();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      swift_errorRetain();
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&_mh_execute_header, v71, v72, "Error getting renewal time: %@.", v73, 0xCu);
      sub_10000BD44(v74, &unk_10039E220, &qword_1002C3D60);
    }

    sub_10014BA44();
    swift_allocError();
    *v76 = 2;
    swift_willThrow();

    sub_10008C3EC(v112);
  }

  else
  {
    v78 = v91[3];
    v77 = v91[4];
    sub_10000BE18(v91, v78);
    v79 = v96;
    (*(*(v77 + 8) + 16))(v78);
    + infix(_:_:)();
    v108 = *(v109 + 8);
    v109 += 8;
    v108(v79, v102);
    v80 = v99;
    v81 = *(v99 + 104);
    v100 = v14;
    v82 = v97;
    v83 = v95;
    v81(v97, enum case for DispatchTimeInterval.never(_:), v95);
    v84 = v98;
    *v98 = 0;
    v81(v84, enum case for DispatchTimeInterval.nanoseconds(_:), v83);
    v85 = v101;
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v86 = *(v80 + 8);
    v86(v84, v83);
    v86(v82, v83);
    v108(v85, v102);
    *(v3 + v92) = 1;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Background process started", v89, 2u);
    }

    OS_dispatch_source.resume()();
    sub_10008C3EC(v112);
  }
}

uint64_t sub_100148C70(uint64_t a1)
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v29 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v29 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = v1;
    v33 = v5;
    v31 = v7;
    v16 = result;
    sub_1001499A0(v34);
    v30 = v9;
    v17 = v16;
    sub_1001495DC(v34);
    v18 = v14;
    v19 = v8;
    sub_10008C3EC(v34);
    v29[1] = *(v17 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
    v29[2] = v17;
    v29[0] = swift_getObjectType();
    v21 = *(v17 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
    v20 = *(v17 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
    sub_10000BE18((v17 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), v21);
    (*(*(v20 + 8) + 16))(v21);
    v22 = v18;
    + infix(_:_:)();
    v30 = *(v30 + 8);
    (v30)(v12, v19);
    v23 = v2;
    v24 = *(v2 + 104);
    v25 = v31;
    v26 = v32;
    v24(v31, enum case for DispatchTimeInterval.never(_:), v32);
    v27 = v33;
    *v33 = 0;
    v24(v27, enum case for DispatchTimeInterval.nanoseconds(_:), v26);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v28 = *(v23 + 8);
    v28(v27, v26);
    v28(v25, v26);
    (v30)(v22, v19);
  }

  return result;
}

void sub_100149100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4528);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = v5;
    v15 = v14;
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0x2928706F7473, 0xE600000000000000, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, aBlock);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v32;
  }

  if (*(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) == 1)
  {
    *(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) = 0;
    ObjectType = swift_getObjectType();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100384FD8;
    v23 = _Block_copy(aBlock);
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
    sub_1000039BC(ObjectType, v24, v25);
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v23);
    (v35[1].isa)(v7, v5);
    (*(v33 + 8))(v10, v34);
    OS_dispatch_source.suspend()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Background process stopped", v28, 2u);
    }
  }

  else
  {
    v35 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v35, v29, "Background process already stopped", v30, 2u);
    }

    v31 = v35;
  }
}

double sub_1001495DC(void *a1)
{
  v4 = v1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 1)
  {
    if (qword_10039D670 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A4528);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 16777728;
      *(v14 + 4) = *(v4 + 16);

      *(v14 + 5) = 2048;
      *(v14 + 7) = *(v4 + 24);
      _os_log_impl(&_mh_execute_header, v12, v13, "Mode is %hhu, using default renewal time: %f", v14, 0xFu);
    }

    else
    {
    }

    return *(v4 + 24);
  }

  else
  {
    v15 = v8;
    sub_10000BE18((v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), *(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24));
    sub_10004CF70(a1, v10);
    if (!v2)
    {
      v16 = a1[13];
      Date.timeIntervalSince1970.getter();
      v3 = v16 - v17 + -300.0;
      if (v3 <= 0.0)
      {
        if (qword_10039D670 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_10000403C(v18, qword_1003A4528);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Time token in renewal period buffer, scheduling for immediate renewal", v21, 2u);
        }

        v3 = 0.0;
      }

      if (qword_10039D670 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000403C(v22, qword_1003A4528);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v3;
        _os_log_impl(&_mh_execute_header, v23, v24, "Time token renewal time: %f", v25, 0xCu);
      }

      (*(v7 + 8))(v10, v15);
    }
  }

  return v3;
}

void *sub_1001499A0@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A4528);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v34);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0x687365726665725FLL, 0xEF29286E656B6F54, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v34);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
    v3 = v2;
  }

  if (*(v4 + 16))
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot refresh token when not online", v18, 2u);
    }

    sub_10014BA44();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = (v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
    v22 = *(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
    v23 = *(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
    sub_10000BE18((v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), v22);
    v24 = (*(*(v23 + 8) + 32))(v22);
    sub_100149E1C(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_url, __src);
    if (v3)
    {
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34 = v28;
        *v27 = 136315138;
        swift_getErrorValue();
        v29 = Error.localizedDescription.getter();
        v31 = sub_100008F6C(v29, v30, &v34);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Could not refresh token: %s", v27, 0xCu);
        sub_10000959C(v28);
      }

      sub_10014BA44();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
    }

    else
    {
      sub_10000BE18(v21, v21[3]);
      sub_1001457B8(__src[32], __src[33], v24);
      return memcpy(a1, __src, 0x110uLL);
    }
  }
}

void *sub_100149E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v102 = a2;
  v119 = *v2;
  v4 = type metadata accessor for Date();
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v98 = &v93[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URLRequest();
  v114 = *(v6 - 8);
  v115 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v113 = &v93[-v10];
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v107 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v112 = &v93[-v15];
  v16 = type metadata accessor for URL.DirectoryHint();
  v104 = *(v16 - 8);
  v105 = v16;
  __chkstk_darwin(v16);
  v103 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v106 = &v93[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v116 = &v93[-v23];
  __chkstk_darwin(v22);
  v25 = &v93[-v24];
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v109 = v2;
  v26 = type metadata accessor for Logger();
  v27 = sub_10000403C(v26, qword_1003A4528);
  v117 = *(v19 + 16);
  v118 = v19 + 16;
  v117(v25, a1, v18);
  v101 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  v124 = v18;
  v30 = v29;
  v31 = os_log_type_enabled(v28, v29);
  v120 = v11;
  v111 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v97 = v9;
    v33 = v32;
    v95 = swift_slowAlloc();
    v121 = v95;
    *v33 = 136315394;
    v34 = _typeName(_:qualified:)();
    v119 = v12;
    v36 = sub_100008F6C(v34, v35, &v121);
    v96 = a1;
    v37 = v36;

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1660;
    v94 = v30;
    v39 = v124;
    *(v38 + 56) = v124;
    v40 = sub_10000BE5C((v38 + 32));
    v117(v40, v25, v39);
    v41 = showFunction(signature:_:)(0xD000000000000016, 0x800000010034FE00, v38);
    v43 = v42;

    v110 = *(v19 + 8);
    v110(v25, v39);
    v44 = sub_100008F6C(v41, v43, &v121);

    *(v33 + 14) = v44;
    v45 = v119;
    _os_log_impl(&_mh_execute_header, v28, v94, "%s.%s", v33, 0x16u);
    swift_arrayDestroy();

    v9 = v97;
  }

  else
  {

    v110 = *(v19 + 8);
    v110(v25, v124);
    v45 = v12;
  }

  v121 = 0xD000000000000011;
  v122 = 0x800000010034FDE0;
  v47 = v103;
  v46 = v104;
  v48 = v105;
  (v104[13])(v103, enum case for URL.DirectoryHint.inferFromPath(_:), v105);
  sub_10008AB88();
  v49 = v116;
  URL.appending<A>(path:directoryHint:)();
  v46[1](v47, v48);
  v50 = v109;
  v52 = *(v109 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
  v51 = *(v109 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
  sub_10000BE18((v109 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), v52);
  v53 = v107;
  (*(*(v51 + 8) + 16))(v52);
  v54 = v112;
  + infix(_:_:)();
  v55 = *(v45 + 8);
  v119 = v45 + 8;
  v55(v53, v120);
  sub_10000BE18((v50 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto), *(v50 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto + 24));
  v56 = v124;
  v117(v106, v49, v124);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v57 = v113;
  v58 = v108;
  sub_100140AB0(v9, 0, 0, 0, v54, v113);
  if (v58)
  {
    (*(v114 + 8))(v9, v115);
    v55(v54, v120);
    return (v110)(v49, v56);
  }

  else
  {
    v105 = v55;
    v61 = v114 + 8;
    v60 = *(v114 + 8);
    v60(v9, v115);
    sub_10000BE18((v50 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http), *(v50 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http + 24));
    v62 = sub_100142910(v57, v54);
    v64 = v63;
    v65 = v60;
    v114 = v61;
    type metadata accessor for JSONDecoder();
    sub_10009A814(_swiftEmptyArrayStorage);
    sub_10014B6BC();
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
    v66 = v62;
    v67 = v64;

    sub_100176DD8(v121, v122, v123);
    v68 = v113;
    v69 = v116;
    v118 = 0;
    v70 = v105;
    v71 = v65;
    sub_100034958(v123, &v121);
    sub_100034958(v123, &v121);
    sub_100034958(v123, &v121);
    sub_100034958(v123, &v121);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    v74 = v73;
    if (os_log_type_enabled(v72, v73))
    {
      v75 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v121 = v117;
      *v75 = 136316162;
      v106 = v123[12];
      v107 = v123[13];
      if (v123[27])
      {
        v76 = v123[26];
      }

      else
      {
        v76 = 7104878;
      }

      v108 = v72;
      if (v123[27])
      {
        v77 = v123[27];
      }

      else
      {
        v77 = 0xE300000000000000;
      }

      v78 = sub_100008F6C(v76, v77, &v121);
      v109 = v66;
      v79 = v78;

      *(v75 + 4) = v79;
      *(v75 + 12) = 2048;
      sub_10008C3EC(v123);
      *(v75 + 14) = v106;
      sub_10008C3EC(v123);
      *(v75 + 22) = 2080;
      v80 = v98;
      Date.init(timeIntervalSince1970:)();
      v103 = sub_10014CE54(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v81 = v100;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      LODWORD(v106) = v74;
      v104 = v71;
      v85 = *(v99 + 8);
      v85(v80, v81);
      v86 = sub_100008F6C(v82, v84, &v121);

      *(v75 + 24) = v86;
      *(v75 + 32) = 2048;
      sub_10008C3EC(v123);
      *(v75 + 34) = v107;
      sub_10008C3EC(v123);
      *(v75 + 42) = 2080;
      Date.init(timeIntervalSince1970:)();
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v85(v80, v81);
      v90 = sub_100008F6C(v87, v89, &v121);

      *(v75 + 44) = v90;
      v91 = v108;
      _os_log_impl(&_mh_execute_header, v108, v106, "new time token:\n  cput: %s\n  iat: %llu -> %s\n  exp: %llu -> %s", v75, 0x34u);
      swift_arrayDestroy();

      sub_100009548(v109, v67);

      (v104)(v113, v115);
      v105(v112, v120);
      v92 = v116;
    }

    else
    {
      sub_10008C3EC(v123);
      sub_10008C3EC(v123);
      sub_100009548(v66, v67);

      sub_10008C3EC(v123);
      sub_10008C3EC(v123);
      (v71)(v68, v115);
      v70(v112, v120);
      v92 = v69;
    }

    v110(v92, v124);
    return memcpy(v102, v123, 0x110uLL);
  }
}

Swift::Int sub_10014AB1C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10014AB88(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10014ABE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656B6F54656D6974 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10014AC80(uint64_t a1)
{
  v2 = sub_10014CF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014ACBC(uint64_t a1)
{
  v2 = sub_10014CF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014ACF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A4710, &qword_1002C8CD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_10014CF30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_10014AE74(void *a1)
{
  v2 = sub_100004074(&qword_1003A4720, &qword_1002C8CE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000BE18(a1, a1[3]);
  sub_10014CF30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

void *sub_10014AFB0@<X0>(void *a1@<X8>)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return memcpy(a1, v4, 0x110uLL);
  }

  return result;
}

uint64_t *sub_10014B04C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_10014B710(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10014B114(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100009548(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      result = a1(&v19, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        result = v19;
      }

      v10 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v10;
      return result;
    }

    v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100009548(v7, v6);
    *v4 = xmmword_1002BDC30;
    sub_100009548(0, 0xC000000000000000);
    v14 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v14 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v15 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v13 = v15;
    }

    if (v14 >= v7)
    {

      v17 = sub_10014B5B8(v7, v7 >> 32, a1, v16);

      v12 = v13 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v12;
        return v17;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100009548(v7, v6);
    v19 = v7;
    v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1002BDC30;
    sub_100009548(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10014B5B8(*(v19 + 2), *(v19 + 3), a1, v11);
    v12 = v20 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v19;
      v4[1] = v12;
      return result;
    }

    *v4 = v19;
LABEL_21:
    v4[1] = v12;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v3)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_10014B4B8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10014B710(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10014B7C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10014B844(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10014B54C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10014B5B8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), double a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10014B66C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10014B6BC()
{
  result = qword_1003A46E0;
  if (!qword_1003A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A46E0);
  }

  return result;
}

uint64_t sub_10014B710(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10014B7C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}