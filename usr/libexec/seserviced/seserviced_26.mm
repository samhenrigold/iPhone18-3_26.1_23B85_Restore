void sub_100230F04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_100501DA0 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  sub_100338760(a3 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, a1, a2);
  if ((*(a3 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) & 1) == 0)
  {
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100252B08(a3, *(v4 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled), 0);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000F5CB8(a3);
  }
}

void sub_100231150(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (*(v3 + 16) == 1)
    {

      sub_10023BB88(a1, a2, 1, a3, v3, v3);
    }

    else
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Not running", v15, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100231354(unsigned __int8 a1, unsigned int a2, objc_class *a3, objc_class *a4, uint64_t a5, void *a6, int64_t a7)
{
  v218 = a5;
  v216 = a6;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v208 = *(v12 - 8);
  v13 = *(v208 + 64);
  __chkstk_darwin(v12 - 8);
  v215 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = &v200 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  v21 = *(v17 + 104);
  v212 = enum case for DispatchPredicate.onQueue(_:);
  v213 = v17 + 104;
  v211 = v21;
  v21(v19);
  v209 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  v23 = *(v17 + 8);
  v214 = v16;
  v210 = v23;
  v23(v19, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_138;
  }

  v207 = v13;
  v24 = OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress;
  if (*(v219 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress))
  {
    goto LABEL_5;
  }

  if (*(a7 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2)
  {
    v29 = a1 - 1;
    if (*(v219 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) == 1 && v29 < 2)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Command blocked because of low power mode", v32, 2u);
      }

      v33 = &off_1004C3AB0;
LABEL_15:
      v34 = sub_1002B3B94(v33);
      v36 = v35;
      v19 = sub_100239160(3, 17, v34, v35);
      v22 = v37;
      sub_10006A178(v34, v36);
      if (qword_100501960 == -1)
      {
LABEL_16:
        v38 = v19;
        v39 = v22;
        v40 = a7;
LABEL_17:
        sub_1000E71A0(v38, v39, v40);
        v41 = v19;
        v42 = v22;
LABEL_18:
        sub_10006A178(v41, v42);
        return;
      }

LABEL_138:
      swift_once();
      goto LABEL_16;
    }

    v43 = a1 == 1;
    if (v29 <= 1)
    {
      v44 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
      if (*(a7 + OBJC_IVAR____TtC10seserviced4Peer_expressState) != 1)
      {

        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v220 = v104;
          *v103 = 136315138;
          LOBYTE(v222) = *(a7 + v44);
          v105 = String.init<A>(describing:)();
          v107 = sub_1002FFA0C(v105, v106, &v220);

          *(v103 + 4) = v107;
          _os_log_impl(&_mh_execute_header, v101, v102, "Command blocked because of non express mode %s", v103, 0xCu);
          sub_1000752F4(v104);
        }

        v108 = sub_1002B3B94(&off_1004C3A10);
        v110 = v109;
        v111 = sub_100239160(3, 17, v108, v109);
        v113 = v112;
        sub_10006A178(v108, v110);
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E71A0(v111, v113, a7);
        if (*(a7 + v44) == 2)
        {
          v114 = objc_opt_self();
          sub_10004EBC8(v114, 4);
          v115 = sub_1000E7974(a7);
          if (v115 != 2 && (v115 & 1) == 0)
          {
            sub_10004D584(v114, @"unlockNeededForCarActionCount");
            v116 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
            if (v116 >> 60 != 15)
            {
              v117 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
              if (v117 >> 60 != 15)
              {
                v118 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
                v216 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
                v119 = v216;
                v217 = v118;
                v219 = "disconnectionCount";
                sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1004098F0;
                *(inited + 32) = 0xD000000000000014;
                v218 = inited + 32;
                *(inited + 40) = 0x80000001004686F0;
                sub_10006A2BC(v118, v116);
                sub_10006A2BC(v119, v117);
                sub_10006A2BC(v118, v116);
                sub_10006A2BC(v119, v117);
                v220 = sub_100288788(v118, v116);
                v215 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                v121 = BidirectionalCollection<>.joined(separator:)();
                v123 = v122;

                v220 = v121;
                v221 = v123;
                v124._countAndFlagsBits = 58;
                v124._object = 0xE100000000000000;
                String.append(_:)(v124);
                v125 = v216;
                v222 = sub_100288788(v216, v117);
                v126 = BidirectionalCollection<>.joined(separator:)();
                v128 = v127;

                v129._countAndFlagsBits = v126;
                v129._object = v128;
                String.append(_:)(v129);

                v130 = v220;
                v131 = v221;
                *(inited + 72) = &type metadata for String;
                *(inited + 48) = v130;
                *(inited + 56) = v131;
                v132 = sub_10008FFDC(inited);
                swift_setDeallocating();
                sub_100075768(v218, &qword_100507D30, &unk_100409C90);
                v133 = v217;
                sub_1003375E0(0xD000000000000025, v219 | 0x8000000000000000, v217, v116, v125, v117, v132);

                sub_10006A2D0(v125, v117);
                sub_10006A2D0(v133, v116);
                sub_10006A2D0(v125, v117);
                sub_10006A2D0(v133, v116);
              }
            }
          }
        }

        v41 = v111;
        v42 = v113;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v43 = 0;
    if (a1 != 3 && a1 != 6)
    {
LABEL_5:

      v25 = v219;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 67109376;
        *(v28 + 4) = *(v25 + v24);

        *(v28 + 8) = 1024;
        *(v28 + 10) = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) != 2;

        _os_log_impl(&_mh_execute_header, v26, v27, "Sending DEVICE_BUSY because pairing is in progress %{BOOL}d or peer is not fully paired %{BOOL}d", v28, 0xEu);
      }

      else
      {
      }

      v33 = &off_1004C3AD8;
      goto LABEL_15;
    }
  }

  v205 = v43;
  v204 = a1;
  v203 = a2;
  v200 = objc_opt_self();
  v45 = [v200 sessionManager];
  v46 = [v45 getActiveDCKSessions];

  sub_10009393C(0, &qword_100505370, off_1004BE540);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v206 = a7;
  v202 = a4;
  v201 = a3;
  if (v47 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = 0;
  while (1)
  {
    if (v48 == v49)
    {

      v53 = v206;
      LODWORD(v54) = v203;
      v55 = v204;
      if (!v204)
      {
        goto LABEL_56;
      }

      if (v205)
      {
        if (qword_100501C80 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for UUID();
        v57 = *(v56 - 8);
        v58 = v217;
        (*(v57 + 16))(v217, v218, v56);
        (*(v57 + 56))(v58, 0, 1, v56);
        sub_1002D9C74(v54, v201, v202, v53, 3, v58, v216, 0);
        goto LABEL_72;
      }

      if (v204 > 3)
      {
        if (v204 != 4)
        {
LABEL_67:
          if (v55 == 5)
          {
            if (v54 == 20)
            {
              if (qword_100501DB0 != -1)
              {
                swift_once();
              }

              sub_10034B6C0(v201, v202, v53);
              return;
            }

            goto LABEL_93;
          }

          if (v55 != 6)
          {
            goto LABEL_93;
          }

          if (qword_1005019F0 != -1)
          {
            swift_once();
          }

          v99 = type metadata accessor for UUID();
          v100 = *(v99 - 8);
          v58 = v217;
          (*(v100 + 16))(v217, v218, v99);
          (*(v100 + 56))(v58, 0, 1, v99);
          sub_100151780(v54, v201, v202, v53, 1, v58, 0, 1);
LABEL_72:
          sub_100075768(v58, &unk_10050BE80, &unk_10040B360);
          return;
        }

LABEL_61:
        if (v54 == 16)
        {
          v90 = (v53 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v91 = *(v53 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          if (v91 >> 60 == 15)
          {

            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v220 = v95;
              *v94 = 136315138;
              v96 = UUID.uuidString.getter();
              v98 = sub_1002FFA0C(v96, v97, &v220);

              *(v94 + 4) = v98;
              _os_log_impl(&_mh_execute_header, v92, v93, "Peer missing key identifier %s", v94, 0xCu);
              sub_1000752F4(v95);
            }
          }

          else
          {
            v176 = *v90;
            sub_100069E2C(*v90, *(v53 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
            v177 = Logger.logObject.getter();
            v178 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v177, v178))
            {
              v179 = swift_slowAlloc();
              *v179 = 0;
              _os_log_impl(&_mh_execute_header, v177, v178, "Passthrough message received", v179, 2u);
            }

            v180 = [v200 sessionManager];
            isa = Data._bridgeToObjectiveC()().super.isa;
            v182 = Data._bridgeToObjectiveC()().super.isa;
            [v180 didReceivePassthroughMessage:isa keyIdentifier:v182];

            sub_10006A2D0(v176, v91);
          }

          return;
        }

        v75 = Logger.logObject.getter();
        v155 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 16777472;
          v156[4] = v54;
          _os_log_impl(&_mh_execute_header, v75, v155, "Incorrect passthrough message identifier %hhu", v156, 5u);
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (v204 != 2)
      {
        if (v204 == 3)
        {
          if (v203 == 17)
          {
            goto LABEL_121;
          }

          goto LABEL_87;
        }

LABEL_93:
        v142 = v201;
        v143 = v202;
        sub_100069E2C(v201, v202);
        v75 = Logger.logObject.getter();
        v144 = static os_log_type_t.info.getter();
        sub_10006A178(v142, v143);
        if (os_log_type_enabled(v75, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v147 = v54;
          v80 = v146;
          v220 = v146;
          *v145 = 16777986;
          *(v145 + 4) = v204;
          *(v145 + 5) = 256;
          *(v145 + 7) = v147;
          *(v145 + 8) = 2080;
          v222 = sub_100288788(v142, v143);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v148 = BidirectionalCollection<>.joined(separator:)();
          v150 = v149;

          v151 = sub_1002FFA0C(v148, v150, &v220);

          *(v145 + 10) = v151;
          v85 = "Ignoring unknown message type %hhu identifier %hhu payload %s";
          v86 = v144;
          v87 = v75;
          v88 = v145;
          v89 = 18;
          goto LABEL_95;
        }

        goto LABEL_97;
      }

      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      v157 = qword_10051B600;
      v158 = type metadata accessor for UUID();
      v159 = *(v158 - 8);
      v160 = v215;
      (*(v159 + 16))(v215, v218, v158);
      (*(v159 + 56))(v160, 0, 1, v158);
      v161 = v209;
      *v19 = v209;
      v162 = v214;
      v211(v19, v212, v214);
      v163 = v161;
      LOBYTE(v161) = _dispatchPreconditionTest(_:)();
      v210(v19, v162);
      if (v161)
      {
        if (qword_100501B70 == -1)
        {
          goto LABEL_107;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_107:
      v164 = qword_10051B5B0;

      v165 = sub_10024F2B4(v164, v53);

      v19 = sub_1000CA828(v165);

      if (!v19)
      {
        goto LABEL_125;
      }

      type metadata accessor for UWBAlishaSession();
      v166 = swift_dynamicCastClass();
      if (!v166)
      {
        goto LABEL_124;
      }

      if (*(v166 + OBJC_IVAR____TtC10seserviced10UWBSession_state) - 5 < 2)
      {
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&_mh_execute_header, v167, v168, "Command temporarily blocked because the UWB session is suspended", v169, 2u);
        }

        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v170 = sub_1002B3B94(&off_1004C3998);
        v172 = v171;
        v173 = sub_100239160(3, 17, v170, v171);
        v175 = v174;
        sub_10006A178(v170, v172);
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E71A0(v173, v175, v53);

        sub_10006A178(v173, v175);
        goto LABEL_136;
      }

      v190 = 3;
      if (v54 != 18 && v54 != 9)
      {
        if (v54 != 3)
        {
LABEL_133:
          if (qword_100501B60 != -1)
          {
            swift_once();
          }

          v192 = sub_100239160(2, v54, v201, v202);
          v194 = v193;
          v195 = v217;
          sub_1000756F8(v215, v217);
          v196 = (*(v208 + 80) + 40) & ~*(v208 + 80);
          v197 = (v207 + v196 + 7) & 0xFFFFFFFFFFFFFFF8;
          v198 = swift_allocObject();
          v198[2] = v157;
          v198[3] = v53;
          v198[4] = 3;
          sub_100075390(v195, v198 + v196);
          v199 = v198 + v197;
          *v199 = v216;
          v199[8] = 0;

          sub_100240FEC(v192, v194, sub_10023F5BC, v198);

          sub_10006A178(v192, v194);

          goto LABEL_136;
        }

        v190 = 2;
      }

      v191 = objc_opt_self();
      UUID.uuidString.getter();
      v54 = String._bridgeToObjectiveC()();

      sub_1003ADCE0(v191, v190, v54);

      LOBYTE(v54) = v203;
      goto LABEL_133;
    }

    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v50 = *(v47 + 8 * v49 + 32);
    }

    v51 = v50;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    v52 = [v50 isPreArmed];

    ++v49;
    if (v52)
    {

      v53 = v206;
      if (v205)
      {
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "Device SE busy because a pass is pre-armed", v61, 2u);
        }

        v62 = &off_1004C3A38;
LABEL_44:
        v63 = sub_1002B3B94(v62);
        v65 = v64;
        v19 = sub_100239160(3, 17, v63, v64);
        v22 = v66;
        sub_10006A178(v63, v65);
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        v38 = v19;
        v39 = v22;
        v40 = v53;
        goto LABEL_17;
      }

      v55 = v204;
      if (v204 <= 3)
      {
        LOBYTE(v54) = v203;
        if (v204)
        {
          if (v204 == 2)
          {
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&_mh_execute_header, v152, v153, "Device busy because a pass is pre-armed", v154, 2u);
            }

            v62 = &off_1004C3A60;
            goto LABEL_44;
          }

          if (v204 == 3)
          {
            if (v203 == 17)
            {
              v67 = sub_1002B3B94(&off_1004C3A88);
              v69 = v68;
              if (sub_10008FB4C(v201, v202, v67, v68))
              {
                v70 = Logger.logObject.getter();
                v71 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  *v72 = 0;
                  _os_log_impl(&_mh_execute_header, v70, v71, "Ignoring URSK Refresh while pass is pre-armed", v72, 2u);
                }

                sub_10006A178(v67, v69);

                return;
              }

              sub_10006A178(v67, v69);
LABEL_121:
              sub_100233044(v201, v202, v53);
              return;
            }

LABEL_87:
            v134 = v201;
            v135 = v202;
            sub_100069E2C(v201, v202);
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.error.getter();
            sub_10006A178(v134, v135);
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v137 = v54;
              v80 = v136;
              v220 = v136;
              *v77 = 16777730;
              *(v77 + 4) = v137;
              *(v77 + 5) = 2080;
              v222 = sub_100288788(v134, v135);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
              v138 = BidirectionalCollection<>.joined(separator:)();
              v140 = v139;

              v141 = sub_1002FFA0C(v138, v140, &v220);

              *(v77 + 7) = v141;
              v85 = "Invalid event identifier %hhu payload %s";
              goto LABEL_58;
            }

            goto LABEL_97;
          }

          goto LABEL_93;
        }

LABEL_56:
        v73 = v201;
        v74 = v202;
        sub_100069E2C(v201, v202);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.info.getter();
        sub_10006A178(v73, v74);
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v79 = v54;
          v80 = v78;
          v220 = v78;
          *v77 = 16777730;
          *(v77 + 4) = v79;
          *(v77 + 5) = 2080;
          v222 = sub_100288788(v73, v74);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v81 = BidirectionalCollection<>.joined(separator:)();
          v83 = v82;

          v84 = sub_1002FFA0C(v81, v83, &v220);

          *(v77 + 7) = v84;
          v85 = "Ignoring pairing message while not pairing %hhu payload %s";
LABEL_58:
          v86 = v76;
          v87 = v75;
          v88 = v77;
          v89 = 15;
LABEL_95:
          _os_log_impl(&_mh_execute_header, v87, v86, v85, v88, v89);
          sub_1000752F4(v80);

LABEL_96:
        }

LABEL_97:

        return;
      }

      LOBYTE(v54) = v203;
      if (v204 != 4)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

LABEL_125:

  v183 = Logger.logObject.getter();
  v184 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v220 = v186;
    *v185 = 136315138;
    v187 = UUID.uuidString.getter();
    v189 = sub_1002FFA0C(v187, v188, &v220);

    *(v185 + 4) = v189;
    _os_log_impl(&_mh_execute_header, v183, v184, "No active UWB Alisha session for %s", v185, 0xCu);
    sub_1000752F4(v186);
  }

LABEL_136:
  sub_100075768(v215, &unk_10050BE80, &unk_10040B360);
}

void sub_100233044(unint64_t a1, unint64_t a2, char **a3)
{
  v105 = a3;
  v5 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v5 - 8);
  v101 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = &v98 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = *(v10 + 104);
  v15(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v102 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v10 + 8);
  v16(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_92;
  }

  sub_100069E2C(a1, a2);
  v17 = sub_1000939AC(a1, a2, 0, 0, 0);
  if (v17 > 3u)
  {
    if (v17 == 4)
    {
      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      sub_100069E2C(a1, a2);
      sub_100084D68(1uLL, a1, a2, &v106);
      v19 = v106;
      v20 = v107;
      sub_10034C8DC(v106, v107, v105);
      goto LABEL_27;
    }

    if (v17 != 6)
    {
      goto LABEL_15;
    }

    if (qword_1005019F0 == -1)
    {
LABEL_14:
      sub_100069E2C(a1, a2);
      sub_100084D68(1uLL, a1, a2, &v106);
      v19 = v106;
      v20 = v107;
      sub_100152B0C(v106, v107, v105);
LABEL_27:
      sub_10006A178(v19, v20);
      return;
    }

LABEL_92:
    swift_once();
    goto LABEL_14;
  }

  if (v17 == 1)
  {
    v30 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v30 != 2)
      {
        return;
      }

      v36 = *(a1 + 16);
      v35 = *(a1 + 24);
      v33 = __OFSUB__(v35, v36);
      v37 = v35 - v36;
      if (v33)
      {
        goto LABEL_95;
      }

      if (v37 < 2)
      {
        return;
      }
    }

    else if (v30)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (HIDWORD(a1) - a1 < 2)
      {
        return;
      }
    }

    else if (BYTE6(a2) < 2uLL)
    {
      return;
    }

    sub_100069E2C(a1, a2);
    if (sub_1000939AC(a1, a2, 1, 0, 0))
    {
      sub_100069E2C(a1, a2);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v106 = v24;
      *v23 = 136315138;
      v108 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v52 = BidirectionalCollection<>.joined(separator:)();
      v54 = v53;

      v55 = sub_1002FFA0C(v52, v54, &v106);

      *(v23 + 4) = v55;
      v29 = "Ignoring unknown Command Complete event %s";
      goto LABEL_17;
    }

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Received Deselect_SE", v59, 2u);
    }

    v17 = v105;
    if (qword_100501A30 == -1)
    {
LABEL_63:
      sub_100194774(v17);
      return;
    }

LABEL_97:
    v97 = v17;
    swift_once();
    v17 = v97;
    goto LABEL_63;
  }

  if (v17 != 2)
  {
LABEL_15:
    sub_100069E2C(a1, a2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    sub_10006A178(a1, a2);
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v106 = v24;
    *v23 = 136315138;
    v108 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = sub_1002FFA0C(v25, v27, &v106);

    *(v23 + 4) = v28;
    v29 = "Ignoring unknown event %s";
    goto LABEL_17;
  }

  v18 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v18)
    {
      if (BYTE6(a2) < 2uLL)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 2)
      {
        return;
      }

      goto LABEL_39;
    }

    goto LABEL_94;
  }

  if (v18 != 2)
  {
    return;
  }

  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = __OFSUB__(v31, v32);
  v34 = v31 - v32;
  if (v33)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v34 < 2)
  {
    return;
  }

LABEL_39:
  sub_100069E2C(a1, a2);
  v38 = sub_1000939AC(a1, a2, 1, 0, 0);
  if (v38 > 3)
  {
    if (v38 == 4)
    {
      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      v56 = 3;
    }

    else
    {
      if (v38 != 7)
      {
LABEL_64:
        sub_100069E2C(a1, a2);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();
        sub_10006A178(a1, a2);
        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_19;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v106 = v24;
        *v23 = 136315138;
        v108 = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v60 = BidirectionalCollection<>.joined(separator:)();
        v62 = v61;

        v63 = sub_1002FFA0C(v60, v62, &v106);

        *(v23 + 4) = v63;
        v29 = "Ignoring unknown Ranging Session Status Changed event %s";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v21, v22, v29, v23, 0xCu);
        sub_1000752F4(v24);

LABEL_18:

        goto LABEL_19;
      }

      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      v56 = 2;
    }

    sub_1002558C4(v56, v105);
    return;
  }

  if (v38)
  {
    if (v38 == 3)
    {
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v39 = qword_10051B5B0;
      v40 = v105;

      v41 = sub_10024F2B4(v39, v40);

      v21 = sub_1000CA828(v41);

      if (v21)
      {
        sub_1002463FC();
        sub_100246268(0);
        v42 = qword_1005019E8;
        v43 = v105;

        if (v42 != -1)
        {
          swift_once();
        }

        v44 = swift_allocObject();
        *(v44 + 16) = sub_10023FA88;
        *(v44 + 24) = v43;

        v45 = sub_1000CAA04();

        v46 = sub_1000CA810(v45);

        if (v46)
        {
          v47 = [v46 readerInfo];
          if (v47)
          {
            v48 = v47;
            v49 = objc_opt_self();
            v50 = [v46 getEndpointUser];
            UUID.uuidString.getter();
            v51 = String._bridgeToObjectiveC()();

            sub_10004D01C(v49, 2, 3, v48, v50, v51);

            return;
          }
        }

        goto LABEL_19;
      }

      return;
    }

    goto LABEL_64;
  }

  v64 = v105;
  if (*(v105 + OBJC_IVAR____TtC10seserviced4Peer_expressState) != 1)
  {
    v21 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v21, v74))
    {
      goto LABEL_19;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v21, v74, "Ignoring URSK Refresh while express is off", v75, 2u);
    goto LABEL_18;
  }

  if (qword_100501C80 != -1)
  {
    swift_once();
  }

  v99 = qword_10051B6E8;
  v65 = type metadata accessor for UUID();
  (*(*(v65 - 8) + 56))(v103, 1, 1, v65);
  v66 = swift_allocObject();
  *(v66 + 16) = v104;
  *(v66 + 24) = v64;
  v100 = v66;
  v67 = v102;
  *v12 = v102;
  v15(v12, v14, v9);
  v68 = v67;

  v69 = _dispatchPreconditionTest(_:)();
  v16(v12, v9);
  if ((v69 & 1) == 0)
  {
    __break(1u);
LABEL_99:
    swift_once();
    goto LABEL_88;
  }

  if (*(v99 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) == 1)
  {
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    v70 = *(v64 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v70 >> 60 == 15)
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
    }

    else
    {
      v81 = *(v64 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v71 = type metadata accessor for AlishaSE.HandoffToken();
      v73 = swift_allocObject();
      *(v73 + 16) = v81;
      *(v73 + 24) = v70;
      sub_100069E2C(v81, v70);
      v72 = &off_1004CF620;
    }

    v79 = v103;
    v82 = v101;
    sub_1000756F8(v103, v101);
    type metadata accessor for SERequest(0);
    v83 = swift_allocObject();
    v84 = v83 + OBJC_IVAR____TtC10seserviced9SERequest_reason;
    strcpy((v83 + OBJC_IVAR____TtC10seserviced9SERequest_reason), "URSK Refresh");
    *(v84 + 13) = 0;
    *(v84 + 14) = -5120;
    *(v83 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
    *(v83 + 16) = 0;
    *(v83 + 24) = 1;
    v85 = (v83 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken);
    *v85 = v73;
    v85[1] = 0;
    v85[2] = 0;
    v85[3] = v71;
    v85[4] = v72;
    *(v83 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    v64 = v105;
    *(v83 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v105;
    v86 = v83 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v86 = 0;
    *(v86 + 8) = 1;
    sub_1000756F8(v82, v83 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v87 = v83 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v87 = 0;
    *(v87 + 8) = 1;
    v88 = v100;
    *(v83 + 32) = sub_10023F6CC;
    *(v83 + 40) = v88;

    sub_100075768(v82, &unk_10050BE80, &unk_10040B360);
    sub_1001939C8(0, v83);
  }

  else
  {
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v103;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Not running", v80, 2u);
    }
  }

  sub_100075768(v79, &unk_10050BE80, &unk_10040B360);
  v89 = qword_1005019E8;

  if (v89 != -1)
  {
    goto LABEL_99;
  }

LABEL_88:
  v90 = swift_allocObject();
  *(v90 + 16) = sub_10023FA88;
  *(v90 + 24) = v64;

  v91 = sub_1000CAA04();

  v21 = sub_1000CA810(v91);

  if (v21)
  {
    v92 = [v21 readerInfo];
    if (v92)
    {
      v93 = v92;
      v94 = objc_opt_self();
      v95 = [v21 getEndpointUser];
      UUID.uuidString.getter();
      v96 = String._bridgeToObjectiveC()();

      sub_10004D01C(v94, 2, 0, v93, v95, v96);

      return;
    }

LABEL_19:
  }
}

void sub_10023419C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v49 = v7;
      *v6 = 136315138;
      sub_100075400();
      v8 = Error.localizedDescription.getter();
      v10 = sub_1002FFA0C(v8, v9, &v49);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to get SE to clear URSKs %s", v6, 0xCu);
      sub_1000752F4(v7);

      return;
    }

    v21 = oslog;
    goto LABEL_15;
  }

  v12 = sub_10013044C(0xD000000000000014, 0x8000000100468730);
  if (v13 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v14, v15);
  v17 = sub_1003AF1FC(a1, isa);

  if (!v17)
  {
    v22 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v23 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v23 >> 60 != 15)
    {
      v24 = *v22;
      sub_100069E2C(*v22, *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
      v25 = Data._bridgeToObjectiveC()().super.isa;
      v49 = 0;
      v26 = sub_1003AEF50();

      if (v26)
      {
        v27 = v49;

        sub_100069E2C(v24, v23);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        sub_10006A2D0(v24, v23);
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v49 = v31;
          *v30 = 136315138;
          sub_100288788(v24, v23);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v32 = BidirectionalCollection<>.joined(separator:)();
          v34 = v33;

          v35 = sub_1002FFA0C(v32, v34, &v49);

          *(v30 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v28, v29, "All keys for %s have been deleted from Sunsprite", v30, 0xCu);
          sub_1000752F4(v31);

          sub_10006A2D0(v24, v23);
        }

        else
        {

          sub_10006A2D0(v24, v23);
        }
      }

      else
      {
        v36 = v49;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10006A2BC(v24, v23);
        swift_errorRetain();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        sub_10006A2D0(v24, v23);

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v39 = 136315394;
          sub_100288788(v24, v23);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v40 = BidirectionalCollection<>.joined(separator:)();
          v42 = v41;

          v43 = sub_1002FFA0C(v40, v42, &v49);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2080;
          swift_getErrorValue();
          v44 = Error.localizedDescription.getter();
          v46 = sub_1002FFA0C(v44, v45, &v49);

          *(v39 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "Failed to clear the keys for %s %s", v39, 0x16u);
          swift_arrayDestroy();

          sub_10006A2D0(v24, v23);
        }

        else
        {

          sub_10006A2D0(v24, v23);
        }
      }

      return;
    }

    osloga = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(osloga, v18))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Found peer with no key identifier";
    goto LABEL_13;
  }

  osloga = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Failed to select Sunsprite";
LABEL_13:
    _os_log_impl(&_mh_execute_header, osloga, v18, v20, v19, 2u);
  }

LABEL_14:
  v21 = osloga;
LABEL_15:
}

void sub_1002348E0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Peer connected", v10, 2u);
  }

  v11 = objc_opt_self();
  UUID.uuidString.getter();
  v12 = String._bridgeToObjectiveC()();

  sub_10004CA44(v11, v12);

  sub_10004D584(v11, @"connectionCount");
  sub_10004EBC8(v11, 1);
  if (qword_100501B98 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_100251228(a1);
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  sub_1002558C4(1u, a1);
  v13 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
  v14 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
  v15 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v16 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v13, v14);
  sub_10006A2BC(v15, v16);
  sub_1003375E0(0xD00000000000003CLL, 0x8000000100468750, v13, v14, v15, v16, 0);
  sub_10006A2D0(v15, v16);
  sub_10006A2D0(v13, v14);
  v17 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v17 bleLogVehicleConnected:isa];

  v19 = String._bridgeToObjectiveC()();
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = 0x4449555572656550;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v21;
  sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &unk_100504020, &qword_100409CC0);
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  PLLogRegisteredEvent();
}

void sub_100234D44(unint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Peer disconnected", v10, 2u);
  }

  v11 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v12 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *(a1 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
  sub_10006A2D0(v11, v12);
  *(a1 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) = 0;
  if (qword_100501C80 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  sub_1002DC22C(a1);
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  sub_10025640C(a1);
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  sub_1002A7730(a1);
  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  sub_1003488C8(a1);
  if (qword_1005019F0 != -1)
  {
    swift_once();
  }

  sub_1001512D0(a1);
  v13 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
  v14 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
  v15 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v16 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v13, v14);
  sub_10006A2BC(v15, v16);
  sub_1003375E0(0xD00000000000003FLL, 0x8000000100468660, v13, v14, v15, v16, 0);
  sub_10006A2D0(v15, v16);
  sub_10006A2D0(v13, v14);
  v17 = qword_1005019E8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = sub_10023FA88;
  *(v18 + 24) = a1;

  v19 = sub_1000CAA04();

  v20 = sub_1000CA810(v19);

  if (v20)
  {
    v21 = [v20 readerInfo];
    if (v21)
    {
      v22 = v21;
      v23 = objc_opt_self();
      v24 = [v20 getEndpointUser];
      UUID.uuidString.getter();
      v25 = String._bridgeToObjectiveC()();

      sub_10004D01C(v23, 0x8000, 2, v22, v24, v25);

      v20 = v25;
    }
  }

  v26 = objc_opt_self();
  UUID.uuidString.getter();
  v27 = String._bridgeToObjectiveC()();

  sub_1003ADC30(v26, v27);

  sub_10004D584(v26, @"disconnectionCount");
  v28 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v28 bleLogVehicleDisconnected:isa];

  v30 = String._bridgeToObjectiveC()();
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = 0x4449555572656550;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v32;
  sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &unk_100504020, &qword_100409CC0);
  v33 = Dictionary._bridgeToObjectiveC()().super.isa;

  PLLogRegisteredEvent();
}

void sub_1002353D0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    if (a1)
    {
      v14 = 0x7964616572;
    }

    else
    {
      v14 = 0x6461657220746F6ELL;
    }

    if (a1)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE900000000000079;
    }

    v16 = sub_1002FFA0C(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Driving readiness changed %s", v12, 0xCu);
    sub_1000752F4(v13);
  }

  if (a1)
  {
    if (qword_100501DA0 == -1)
    {
LABEL_14:
      sub_100339298(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000F5CB8(a2);
      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      sub_1002558C4(6u, a2);
      v17 = (a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v18 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v18 >> 60 != 15)
      {
        v19 = *v17;
        sub_100069E2C(*v17, *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
        if (qword_1005019E8 != -1)
        {
          swift_once();
        }

        v20 = sub_1000CAA04();
        v21 = sub_1000CA810(v20);

        if (v21)
        {
          v22 = objc_opt_self();
          UUID.uuidString.getter();
          v23 = String._bridgeToObjectiveC()();

          sub_1003AE394(v22, v21, v23);
        }

        sub_10006A2D0(v19, v18);
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_14;
  }

  if (qword_100501DA0 != -1)
  {
    swift_once();
  }

  sub_100339910(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
}

void sub_100235820(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    v37 = v10;
    swift_once();
    v10 = v37;
    goto LABEL_32;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 0x64656B636F6CLL;
    }

    else
    {
      v15 = 0x64656B636F6C6E75;
    }

    if (a1)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    v17 = sub_1002FFA0C(v15, v16, &v39);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Lock state changed %s", v13, 0xCu);
    sub_1000752F4(v14);
  }

  if (a1)
  {
    if (qword_100501DA0 != -1)
    {
      swift_once();
    }

    sub_100339298(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
    v18 = qword_1005019E8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = swift_allocObject();
    *(v19 + 16) = sub_10023FA88;
    *(v19 + 24) = a2;

    v20 = sub_1000CAA04();

    v21 = sub_1000CA810(v20);

    if (v21)
    {
      v22 = [v21 readerInfo];
      if (v22)
      {
        v23 = v22;
        v24 = objc_opt_self();
        v25 = [v21 getEndpointUser];
        UUID.uuidString.getter();
        v26 = String._bridgeToObjectiveC()();

        sub_10004D01C(v24, 0x8000, 0, v23, v25, v26);

        v21 = v26;
      }
    }

    v27 = qword_100501BA0;
    v10 = 4;
  }

  else
  {
    if (qword_100501DA0 != -1)
    {
      swift_once();
    }

    sub_100339910(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
    v28 = qword_1005019E8;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = swift_allocObject();
    *(v29 + 16) = sub_10023F6D8;
    *(v29 + 24) = a2;

    v30 = sub_1000CAA04();

    v31 = sub_1000CA810(v30);

    if (v31)
    {
      v32 = [v31 readerInfo];
      if (v32)
      {
        v33 = v32;
        v34 = objc_opt_self();
        v35 = [v31 getEndpointUser];
        UUID.uuidString.getter();
        v36 = String._bridgeToObjectiveC()();

        sub_10004D01C(v34, 0x8000, 1, v33, v35, v36);

        v31 = v36;
      }
    }

    v27 = qword_100501BA0;
    v10 = 5;
  }

  if (v27 != -1)
  {
    goto LABEL_34;
  }

LABEL_32:
  sub_1002558C4(v10, a2);
}

uint64_t sub_100235DE8(void *a1)
{
  v2 = v1;
  v4 = [a1 readerInfo];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v35 = v6;
    v36 = v8;
    sub_10012512C();
    v9 = StringProtocol.components<A>(separatedBy:)();

    if (*(v9 + 16) >= 4uLL)
    {
      v12 = *(v9 + 48);

      return v12;
    }

    v10 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
    v11 = a1;
    v12 = v2 + v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v35 = v37;
      *v15 = 136315138;
      v16 = [v11 publicKeyIdentifier];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100288788(v17, v19);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v21 = v20;
      sub_10006A178(v17, v19);

      v22 = sub_1002FFA0C(v12, v21, &v35);

      *(v15 + 4) = v22;
      v23 = "Invalid reader info from %s";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v13, v14, v23, v15, 0xCu);
      sub_1000752F4(v37);
    }
  }

  else
  {
    v24 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
    v25 = a1;
    v12 = v2 + v24;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v35 = v37;
      *v15 = 136315138;
      v26 = [v25 publicKeyIdentifier];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_100288788(v27, v29);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;
      sub_10006A178(v27, v29);

      v32 = sub_1002FFA0C(v12, v31, &v35);

      *(v15 + 4) = v32;
      v23 = "Missing reader info from %s";
      goto LABEL_7;
    }
  }

  sub_100079E24();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
  return v12;
}

uint64_t sub_100236214(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v34 - v19;
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v37 = a2;
  result = [a1 bleUUID];
  if (!result)
  {
    return result;
  }

  v35 = v7;

  v36 = a1;
  result = [a1 bleUUID];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v22 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  (*(v5 + 16))(v16, v37 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v23 = *(v8 + 48);
  sub_1000756F8(v20, v10);
  sub_1000756F8(v16, &v10[v23]);
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
    sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
    if (v24(&v10[v23], 1, v4) == 1)
    {
      sub_100075768(v10, &unk_10050BE80, &unk_10040B360);
LABEL_11:
      v29 = [v36 revocationAttestation];
      if (!v29)
      {
        return 1;
      }

      v30 = v29;
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_10006A178(v31, v33);
      return 0;
    }

    goto LABEL_9;
  }

  sub_1000756F8(v10, v13);
  if (v24(&v10[v23], 1, v4) == 1)
  {
    sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
    (*(v5 + 8))(v13, v4);
LABEL_9:
    sub_100075768(v10, &qword_1005031D0, &unk_100413B20);
    return 0;
  }

  v25 = v35;
  (*(v5 + 32))(v35, &v10[v23], v4);
  sub_10023E228(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = v5;
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v26 + 8);
  v28(v25, v4);
  sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
  v28(v13, v4);
  sub_100075768(v10, &unk_10050BE80, &unk_10040B360);
  if (v27)
  {
    goto LABEL_11;
  }

  return 0;
}

void sub_100236714(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_8;
  }

  v67 = v9;
  v68 = v7;
  v17 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
  sub_100069E2C(a1, a2);
  v70 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  sub_10006A178(a1, a2);
  v20 = os_log_type_enabled(v18, v19);
  v69 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v66 = v3;
    v22 = v21;
    v65 = swift_slowAlloc();
    v72 = v65;
    *v22 = 136315138;
    v16 = 0;
    v71 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v23 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26 = sub_1002FFA0C(v23, v25, &v72);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Key tracking completed %s", v22, 0xCu);
    sub_1000752F4(v65);
  }

  else
  {

    v16 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    goto LABEL_36;
  }

LABEL_8:
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10006A278;
  *(v27 + 24) = v10;

  v28 = sub_1000CAAC4();

  v29 = sub_1000CA840(v28);

  if (v29)
  {
    type metadata accessor for AlishaPeer(0);
    v30 = swift_dynamicCastClass();
    if (v30 && (v31 = v30, v32 = OBJC_IVAR____TtC10seserviced4Peer_pairingState, *(v30 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 1))
    {
      v33 = swift_allocObject();
      *(v33 + 16) = a1;
      *(v33 + 24) = a2;
      sub_100069E2C(a1, a2);
      v34 = qword_1005019E8;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = swift_allocObject();
      *(v35 + 16) = sub_10023F790;
      *(v35 + 24) = v33;

      v36 = sub_1000CAA04();

      v37 = sub_1000CA810(v36);

      if (v37)
      {
        v66 = [objc_allocWithZone(SESConfigDCK) init];

        v38 = [v37 readerConfigID];
        if (v38)
        {
          v39 = v38;
          v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v40 = 0;
          v42 = 0xF000000000000000;
        }

        sub_100286CD0(v66, v40, v42);
        sub_10006A2D0(v40, v42);

        *(v31 + v32) = 2;
        v46 = v69;
        if (*(v31 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
        {
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v47, v48, "Sending REQUEST_STANDARD_TRANSACTION", v49, 2u);
          }

          if (qword_100501B60 != -1)
          {
            swift_once();
          }

          v50 = sub_1002B3B94(&off_1004C49F0);
          v52 = v51;
          v53 = sub_100239160(3, 17, v50, v51);
          v55 = v54;
          sub_10006A178(v50, v52);
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v53, v55, v31);
          if (v16)
          {
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&_mh_execute_header, v56, v57, "Failed to send REQUEST_STANDARD_TRANSACTION event", v58, 2u);
            }

            sub_10006A178(v53, v55);
          }

          else
          {
            sub_10006A178(v53, v55);
          }
        }

        v59 = objc_opt_self();
        v60 = v68;
        v61 = v31 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v62 = v67;
        (*(v68 + 16))(v67, v61, v46);

        UUID.uuidString.getter();
        (*(v60 + 8))(v62, v46);
        v63 = String._bridgeToObjectiveC()();

        sub_1003AE298(v59, 4, v63);
      }

      else
      {

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Failed to retrieve endpoint", v45, 2u);
        }
      }
    }

    else
    {
    }
  }
}

unint64_t sub_100237044(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 publicKeyIdentifier];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(a3) = sub_10008FB4C(v6, v8, a2, a3);
  sub_10006A178(v6, v8);
  return a3 & 1;
}

void sub_1002370C8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = qword_1005019E8;

    if (v8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10023FA88;
  *(v9 + 24) = a1;

  v10 = sub_1000CAA04();

  v11 = sub_1000CA810(v10);

  if (v11)
  {
    v12 = [v11 readerInfo];
    if (v12)
    {
      v13 = v12;
      v14 = objc_opt_self();
      UUID.uuidString.getter();
      v15 = String._bridgeToObjectiveC()();

      sub_1003ADCE0(v14, 1u, v15);

      UUID.uuidString.getter();
      v16 = String._bridgeToObjectiveC()();

      sub_10004D01C(v14, 0x8000, 3, v13, 0, v16);

      type metadata accessor for AlishaPeer(0);
      v17 = swift_dynamicCastClass();
      if (v17 && (*(*(v17 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 112) & 1) == 0)
      {
        v18 = v17;
        v19 = qword_100501960;

        if (v19 != -1)
        {
          swift_once();
        }

        sub_1000E67E4(v18);
      }

      return;
    }
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    v24 = UUID.uuidString.getter();
    v26 = sub_1002FFA0C(v24, v25, &v28);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Missing endpoint reader information %s", v22, 0xCu);
    sub_1000752F4(v23);
  }
}

uint64_t sub_1002374FC(void *a1)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v2 = [a1 bleUUID];
  if (v2)
  {

    return 0;
  }

  result = [a1 blePairingRequest];
  if (result)
  {

    v4 = [a1 revocationAttestation];
    if (!v4)
    {
      return 1;
    }

    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_10006A178(v6, v8);
    return 0;
  }

  return result;
}

uint64_t sub_1002375C4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501B78 != -1)
  {
    swift_once();
  }

  if (byte_10051B5B8 == 1)
  {
    v18 = v7;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v17[1] = qword_10051B7F0;
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_10023F0E8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CC838;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v19 = _swiftEmptyArrayStorage;
    sub_10023E228(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v18 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (qword_100501B68 != -1)
    {
      swift_once();
    }

    [qword_1005076C8 invalidate];
    return a1(1);
  }
}

id sub_100237970(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D88 != -1)
  {
LABEL_42:
    swift_once();
  }

  (*(v6 + 16))(v8, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting CA General Transaction Statistics", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  v8 = off_100504A68;
  v12 = sub_1000CAA04();
  v13 = v12;
  v36 = a3;
  v37 = a2;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v8 = sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v15 = v42;
    v14 = v43;
    v16 = v44;
    v17 = v45;
    a3 = v46;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v14 = v12 + 7;
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    a3 = v20 & v12[7];

    v17 = 0;
    v15 = v13;
  }

  v38 = 0;
  v39 = 0;
  v35 = v16;
  v5 = (v16 + 64) >> 6;
LABEL_13:
  v6 = 1;
  while (1)
  {
    while (1)
    {
      a2 = v17;
      if (v15 < 0)
      {
        v23 = __CocoaSet.Iterator.next()();
        if (!v23 || (v40 = v23, sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr), swift_dynamicCast(), (v8 = v41) == 0))
        {
LABEL_40:
          sub_100093854(v15);

          v33 = sub_10023F0F4();
          v34 = objc_opt_self();
          sub_10004ECB0(v34, v38, v39, v6 & 1, v33);
          return v37(1);
        }
      }

      else
      {
        v21 = v17;
        v22 = a3;
        if (!a3)
        {
          while (1)
          {
            v17 = (v21 + 1);
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v17 >= v5)
            {
              goto LABEL_40;
            }

            v22 = v14[v17];
            v21 = (v21 + 1);
            if (v22)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_19:
        a3 = (v22 - 1) & v22;
        v8 = *(*(v15 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v22)))));
        if (!v8)
        {
          goto LABEL_40;
        }
      }

      result = [v8 getEndpointUser];
      if (result != 1)
      {
        break;
      }

      v25 = __CFADD__(v39++, 1);
      if (v25)
      {
        goto LABEL_43;
      }

LABEL_30:
      if ((v6 & 1) != 0 && (v26 = [v8 environment]) != 0)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v28 == 80 && v30 == 0xE100000000000000)
        {

          goto LABEL_13;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = (v32 & 1) != 0;
      }

      else
      {

        v6 = 0;
      }
    }

    if (!result)
    {
      break;
    }
  }

  v25 = __CFADD__(v38++, 1);
  if (!v25)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100237E3C(void *a1)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v2 = [a1 revocationAttestation];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006A178(v4, v6);
    return 0;
  }

  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_100237EE0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  inited = v3 + 8;
  v10(v5, v2);
  if (v8)
  {
    v5 = String._bridgeToObjectiveC()();
    sub_100068FC4(&qword_100507808, &qword_10040FC78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = 0xD000000000000012;
    v8 = inited + 32;
    *(inited + 40) = 0x8000000100468640;
    if (qword_1005019E8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v11 = sub_1000CAA04();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = v11[2];
  }

  *(inited + 48) = v12;
  sub_100091F9C(inited);
  swift_setDeallocating();
  sub_100075768(v8, &qword_100507810, &qword_1004143C0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  PLLogRegisteredEvent();

  v14 = *(v1 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer);
  if (v14)
  {
    sub_1003AE618(v14, 28800.0);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Power log timer not initialized", v17, 2u);
    }
  }
}

uint64_t sub_100238238(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10023830C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002383C4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type) || *(a1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) != 2)
  {
    return 0;
  }

  else
  {
    return *(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
  }
}

uint64_t sub_100238410()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10[1] = qword_10051B7F0;
  aBlock[4] = sub_10023E220;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CC6F8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10023E228(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_1002386F8(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return;
  }

  if (qword_100501D78 != -1)
  {
LABEL_24:
    swift_once();
  }

  v1 = sub_1000CAAC4();
  sub_10022DE8C(v1);
  v3 = v2;

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_26:

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_5:
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Applying updated asset", v7, 2u);
  }

  v17 = [objc_allocWithZone(SESConfigDCK) init];
  v8 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v3 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v11 = OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration;
    sub_100286CD0(v17, 0, 0xF000000000000000);
    v12 = *(v9 + v11);
    v13 = *(v12 + 96);
    v14 = *(v12 + 104);
    if (qword_100501960 != -1)
    {
      v16 = *(v12 + 96);
      v15 = *(v12 + 104);
      swift_once();
      v14 = v15;
      v13 = v16;
    }

    sub_1000F3488(v13, v14, v9);

    ++v8;
  }

  while (v10 != v4);
}

BOOL sub_1002389F4(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v5, v4);
  v6 = [a2 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v4 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10006A2D0(v5, v4);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10006A2D0(v5, v4);
    sub_10006A2D0(v7, v9);
    return 0;
  }

  sub_10006A2BC(v5, v4);
  sub_100069E2C(v7, v9);
  v10 = sub_10008FB4C(v5, v4, v7, v9);
  sub_10006A2D0(v7, v9);
  sub_10006A178(v7, v9);
  sub_10006A2D0(v5, v4);
  sub_10006A2D0(v5, v4);
  return v10;
}

uint64_t sub_100238B50(uint64_t a1, double a2, int8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    LOBYTE(v4) = 0;
    return v4 | ((v3 == 0) << 8);
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (a1 + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vminq_s8(v9[-1], v8);
        a3 = vminq_s8(*v9, a3);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vminq_s8(v8, a3);
      v11.i8[0] = vminvq_s8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        return v4 | ((v3 == 0) << 8);
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
LABEL_17:
        v16 = v3 - v6;
        v17 = (v6 + a1 + 32);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if (v19 < v4)
          {
            LOBYTE(v4) = v18;
          }

          --v16;
        }

        while (v16);
        return v4 | ((v3 == 0) << 8);
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + a1 + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_s8(*a3.i8).u64[0];
      v12 = vmin_s16(*a3.i8, vshr_n_s16(vshl_n_s16(v12, 8uLL), 8uLL));
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vminv_s16(vshr_n_s16(vshl_n_s16(v12, 8uLL), 8uLL));
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4 | ((v3 == 0) << 8);
    }

    goto LABEL_17;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_100238CE8(void *a1)
{
  if (*(*a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  else
  {
    return *(*a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
  }
}

uint64_t sub_100238D1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for SESAssetManager(0);
  v13[3] = v2;
  v13[4] = &off_1004C5CD0;
  v13[0] = a1;
  v4 = qword_100501C58;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  sub_1000BC094(v13, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  sub_1000BC104(v12, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10023FA68;
  *(v7 + 24) = v6;
  v11[4] = sub_1000B3FF0;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100346DB0;
  v11[3] = &unk_1004CCA90;
  v8 = _Block_copy(v11);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return sub_1000752F4(v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_100238F20(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for SESAssetManager(0);
  v13[3] = v2;
  v13[4] = &off_1004CC6B0;
  v13[0] = a1;
  v4 = qword_100501C58;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  sub_1000BC094(v13, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  sub_1000BC104(v12, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10023F738;
  *(v7 + 24) = v6;
  v11[4] = sub_1000B3564;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100346DB0;
  v11[3] = &unk_1004CCA18;
  v8 = _Block_copy(v11);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return sub_1000752F4(v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_100239160(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v4 = BYTE6(a4);
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v9 = v9;
  }

LABEL_11:
  if (__OFADD__(v9, 4))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = sub_1001303A8(v9 + 4);
  v24 = v13;
  LOBYTE(v18) = a1;
  v21 = &type metadata for UnsafeRawBufferPointer;
  v22 = &protocol witness table for UnsafeRawBufferPointer;
  v19 = &v18;
  v20 = (&v18 + 1);
  sub_1000752B0(&v19, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v19);
  LOBYTE(v18) = a2;
  v21 = &type metadata for UnsafeRawBufferPointer;
  v22 = &protocol witness table for UnsafeRawBufferPointer;
  v19 = &v18;
  v20 = (&v18 + 1);
  sub_1000752B0(&v19, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v19);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_24;
    }

    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v12 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v12)
    {
LABEL_21:
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (!(v14 >> 16))
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_24:
        LODWORD(v14) = 0;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_19:
    LODWORD(v14) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_29;
    }

    v14 = v14;
    goto LABEL_21;
  }

  if (v8)
  {
    goto LABEL_19;
  }

  LODWORD(v14) = v4;
LABEL_25:
  v18 = bswap32(v14) >> 16;
  v21 = &type metadata for UnsafeRawBufferPointer;
  v22 = &protocol witness table for UnsafeRawBufferPointer;
  v19 = &v18;
  v20 = &v19;
  sub_1000752B0(&v19, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v19);
  Data.append(_:)();
  return v23;
}

void sub_100239364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = type metadata accessor for UUID();
  v6 = a1;
  v7 = *(v53 - 8);
  __chkstk_darwin(v6);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_10023E228(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v11 = v58;
    v12 = v59;
    v13 = v60;
    v14 = v61;
    v15 = v62;
  }

  else
  {
    v16 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v8 + 56);

    v15 = v19;
    v14 = 0;
  }

  v48 = v13;
  v50 = (v7 + 8);
  v51 = (v7 + 16);
  v54 = _swiftEmptyArrayStorage;
  *&v10 = 136315138;
  v49 = v10;
  v55 = v11;
LABEL_8:
  v20 = v14;
  v21 = v15;
  while (v11 < 0)
  {
    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v57 = v25, type metadata accessor for Peer(0), swift_dynamicCast(), v24 = v63, v14 = v20, v56 = v21, !v63))
    {
LABEL_30:
      v11 = v55;
LABEL_31:
      sub_100093854(v11);
      return;
    }

LABEL_19:
    type metadata accessor for AlishaPeer(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = *(*(v26 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 104);

      v20 = v14;
      v11 = v55;
      v21 = v56;
      if (v27 == v27)
      {
        v39 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_10012EEF4(0, *(v39 + 2) + 1, 1, v39);
        }

        v42 = *(v39 + 2);
        v41 = *(v39 + 3);
        v11 = v55;
        v15 = v56;
        if (v42 >= v41 >> 1)
        {
          v39 = sub_10012EEF4((v41 > 1), v42 + 1, 1, v39);
          v11 = v55;
          v15 = v56;
        }

        *(v39 + 2) = v42 + 1;
        v54 = v39;
        v39[v42 + 32] = v27;
        goto LABEL_8;
      }
    }

    else
    {

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v47 = a2;
        v31 = v30;
        v45 = swift_slowAlloc();
        v63 = v45;
        *v31 = v49;
        v32 = *v51;
        v44 = v28;
        v33 = v52;
        HIDWORD(v43) = v29;
        v34 = v53;
        v32(v52, &v24[OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier], v53);
        sub_10023E228(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v3;
        v37 = v36;
        (*v50)(v33, v34);
        v38 = sub_1002FFA0C(v35, v37, &v63);
        v3 = v46;

        *(v31 + 4) = v38;
        v28 = v44;
        _os_log_impl(&_mh_execute_header, v44, BYTE4(v43), "Failed to cast Peer to AlishaPeer %s", v31, 0xCu);
        sub_1000752F4(v45);

        a2 = v47;
      }

      v20 = v14;
      v11 = v55;
      v21 = v56;
    }
  }

  v22 = v20;
  v23 = v21;
  v14 = v20;
  if (v21)
  {
LABEL_15:
    v56 = (v23 - 1) & v23;
    v24 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v24)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v23 = *(v12 + 8 * v14);
    ++v22;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100239874(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v121 = a6;
  v116[1] = a5;
  v123 = a3;
  v116[0] = a2;
  v117 = a1;
  v120 = type metadata accessor for Alisha.DKMessage(0);
  __chkstk_darwin(v120);
  v119 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_168;
  }

LABEL_2:
  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v123)
  {
    v17 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v127 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v16 = v127;
    *(&v127 + 1) = v17;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v16, v17);
    sub_10006A2D0(v16, v17);
    if (v17 >> 60 == 15 || (Data.append(_:)(), v17 = *(&v127 + 1), *(&v127 + 1) >> 60 == 15))
    {
      v6 = v117;
      v7 = v116[0];
      sub_100069E2C(v117, v116[0]);
      v18 = v6;
      v19 = v7;
    }

    else
    {
      v18 = v127;
      sub_100069E2C(v127, *(&v127 + 1));
      v19 = v17;
      v7 = v116[0];
      v6 = v117;
    }

    *&v130 = v18;
    *(&v130 + 1) = v19;
    sub_100069E2C(v6, v7);
    v21 = Logger.logObject.getter();
    LOBYTE(v20) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v21, v20))
    {
      sub_10006A178(v6, v7);
LABEL_43:

      sub_10006A2D0(v127, v17);
      goto LABEL_44;
    }

    v22 = swift_slowAlloc();
    v6 = v22;
    *v22 = 134218240;
    v24 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v24)
      {
        LODWORD(v25) = HIDWORD(v117) - v117;
        if (__OFSUB__(HIDWORD(v117), v117))
        {
          goto LABEL_171;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v7);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v20 = v116[0];
  *&v130 = v117;
  *(&v130 + 1) = v116[0];
  sub_100069E2C(v117, v116[0]);
  v21 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v27 = *(v117 + 16);
        v26 = *(v117 + 24);
        v28 = __OFSUB__(v26, v27);
        v24 = v26 - v27;
        if (v28)
        {
          __break(1u);
LABEL_22:
          if (v24 != 2)
          {
            v25 = 0;
            goto LABEL_33;
          }

          v30 = *(v117 + 16);
          v29 = *(v117 + 24);
          v28 = __OFSUB__(v29, v30);
          v25 = v29 - v30;
          if (!v28)
          {
LABEL_33:
            *(v6 + 4) = v25;
            sub_10006A178(v117, v7);
            *(v6 + 12) = 2048;
            swift_beginAccess();
            v31 = v130;
            v32 = *(&v130 + 1) >> 62;
            if ((*(&v130 + 1) >> 62) > 1)
            {
              v33 = 0;
              if (v32 != 2)
              {
                goto LABEL_42;
              }

              v31 = *(v130 + 16);
              v34 = *(v130 + 24);
              v28 = __OFSUB__(v34, v31);
              v33 = v34 - v31;
              if (!v28)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v32)
            {
              v33 = BYTE14(v130);
LABEL_42:
              *(v6 + 14) = v33;
              _os_log_impl(&_mh_execute_header, v21, v20, "Processing %ld bytes; %ld bytes including accumulated", v6, 0x16u);

              goto LABEL_43;
            }

            v28 = __OFSUB__(HIDWORD(v31), v31);
            v35 = HIDWORD(v31) - v31;
            if (v28)
            {
              goto LABEL_172;
            }

            v33 = v35;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      if (v23)
      {
LABEL_26:
        LODWORD(v24) = HIDWORD(v117) - v117;
        if (__OFSUB__(HIDWORD(v117), v117))
        {
          goto LABEL_170;
        }

        v24 = v24;
        goto LABEL_31;
      }

      v24 = BYTE6(v20);
    }

LABEL_31:
    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, v17, "Processing %ld bytes", v22, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  v122 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v11 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v118 = v11;
  swift_beginAccess();
  v13 = 0;
  while (1)
  {
    v10 = *(&v130 + 1);
    v36 = v130;
    v37 = *(&v130 + 1) >> 62;
    if ((*(&v130 + 1) >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_136;
      }

      v38 = *(v130 + 16);
      v39 = *(v130 + 24);
    }

    else
    {
      if (!v37)
      {
        if ((*(&v130 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_136;
        }

        if (BYTE14(v130) < 4uLL)
        {
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      v38 = v130;
      v39 = v130 >> 32;
    }

    if (v38 == v39)
    {
      goto LABEL_136;
    }

    if (v37 == 2)
    {
      v41 = *(v130 + 16);
      v40 = *(v130 + 24);
      v28 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v28)
      {
        goto LABEL_163;
      }

      if (v42 < 4)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v130), v130))
      {
        goto LABEL_164;
      }

      if (DWORD1(v130) - v130 < 4)
      {
LABEL_94:
        v73 = Logger.logObject.getter();
        LOBYTE(v36) = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v73, v36))
        {
          v74 = swift_slowAlloc();
          *v74 = 134217984;
          v75 = v130;
          v76 = *(&v130 + 1) >> 62;
          if ((*(&v130 + 1) >> 62) > 1)
          {
            goto LABEL_105;
          }

          if (v76)
          {
            goto LABEL_128;
          }

          v75 = BYTE14(v130);
LABEL_131:
          *(v74 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v73, v36, "Got partial data of size %ld < header size", v74, 0xCu);
        }

        v10 = *(&v130 + 1);
        v36 = v130;
        if (v123)
        {
          v128 = &type metadata for Data;
          v129 = &protocol witness table for Data;
          v127 = v130;
          v95 = sub_1000752B0(&v127, &type metadata for Data);
          v86 = *v95;
          v87 = v95[1];
          v96 = v87 >> 62;
          if ((v87 >> 62) > 1)
          {
            if (v96 != 2)
            {
              goto LABEL_144;
            }

            v101 = *(v86 + 16);
            v102 = *(v86 + 24);
            sub_100069E2C(v36, v10);
            v10 = v87 & 0x3FFFFFFFFFFFFFFFLL;
            v36 = __DataStorage._bytes.getter();
            if (v36)
            {
              v10 = v87 & 0x3FFFFFFFFFFFFFFFLL;
              v103 = __DataStorage._offset.getter();
              if (__OFSUB__(v101, v103))
              {
                goto LABEL_178;
              }

              v36 += v101 - v103;
            }

            v28 = __OFSUB__(v102, v101);
            v91 = v102 - v101;
            if (v28)
            {
              __break(1u);
              goto LABEL_144;
            }
          }

          else
          {
            if (!v96)
            {
LABEL_135:
              v125[0] = v86;
              LOWORD(v125[1]) = v87;
              BYTE2(v125[1]) = BYTE2(v87);
              BYTE3(v125[1]) = BYTE3(v87);
              BYTE4(v125[1]) = BYTE4(v87);
              BYTE5(v125[1]) = BYTE5(v87);
              sub_100069E2C(v36, v10);
              v97 = v125;
              v98 = v125 + BYTE6(v87);
              goto LABEL_156;
            }

            v104 = v86;
            v105 = v86 >> 32;
            v91 = v105 - v104;
            if (v105 < v104)
            {
              goto LABEL_176;
            }

            sub_100069E2C(v36, v10);
            v36 = __DataStorage._bytes.getter();
            if (v36)
            {
              v106 = __DataStorage._offset.getter();
              v86 = v104 - v106;
              if (__OFSUB__(v104, v106))
              {
                goto LABEL_179;
              }

LABEL_148:
              v36 += v86;
            }
          }

LABEL_149:
          v107 = __DataStorage._length.getter();
          if (v107 >= v91)
          {
            v108 = v91;
          }

          else
          {
            v108 = v107;
          }

          v109 = (v108 + v36);
          if (v36)
          {
            v98 = v109;
          }

          else
          {
            v98 = 0;
          }

          v97 = v36;
          goto LABEL_156;
        }

LABEL_136:
        v99 = v36;
        v100 = v10;
        return sub_10006A178(v99, v100);
      }
    }

LABEL_60:
    sub_100069E2C(v130, *(&v130 + 1));
    v10 = sub_1000939AC(v36, v10, 0, 0, 0);
    v44 = *(&v130 + 1);
    v43 = v130;
    sub_100069E2C(v130, *(&v130 + 1));
    v45 = sub_1000939AC(v43, v44, 1, 0, 0);
    v47 = *(&v130 + 1);
    v46 = v130;
    sub_100069E2C(v130, *(&v130 + 1));
    v7 = sub_100090214(v46, v47, 2, 0, 0);
    sub_10006A178(v46, v47);
    v48 = v7;
    v6 = v7 + 4;
    if (v7 > 0x3FCu)
    {

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 134218240;
        *(v79 + 4) = v6;
        *(v79 + 12) = 2048;
        *(v79 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v77, v78, "Discarding message exceeding max size %ld > %ld", v79, 0x16u);
      }

      else
      {
      }

      goto LABEL_157;
    }

    v50 = *(&v130 + 1);
    v49 = v130;
    v51 = *(&v130 + 1) >> 62;
    if ((*(&v130 + 1) >> 62) > 1)
    {
      v52 = v122;
      if (v51 != 2)
      {
        break;
      }

      v54 = *(v130 + 16);
      v53 = *(v130 + 24);
      v28 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v28)
      {
        goto LABEL_167;
      }

      if (v55 < v6)
      {
        break;
      }

      goto LABEL_71;
    }

    v52 = v122;
    if (!v51)
    {
      if (BYTE14(v130) < v6)
      {
        break;
      }

      goto LABEL_71;
    }

    if (__OFSUB__(DWORD1(v130), v130))
    {
      goto LABEL_166;
    }

    if (DWORD1(v130) - v130 < v6)
    {
      break;
    }

LABEL_71:
    if ((v123 & 1) != 0 && v10 <= 5u && ((1 << v10) & 0x27) != 0)
    {
      v56 = *(a4 + v52);
      v28 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v28)
      {
        goto LABEL_165;
      }

      *(a4 + v52) = v57;
    }

    v58 = v51;
    if (v51)
    {
      if (v51 == 2)
      {
        v59 = *(v49 + 16);
      }

      else
      {
        v59 = v49;
      }
    }

    else
    {
      v59 = 0;
    }

    v7 = v59 + 4;
    if (__OFADD__(v59, 4))
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      swift_once();
      goto LABEL_2;
    }

    if (v51)
    {
      if (v51 == 2)
      {
        v58 = *(v49 + 16);
      }

      else
      {
        v58 = v49;
      }
    }

    v60 = v58 + 4;
    if (__OFADD__(v58, 4))
    {
      goto LABEL_160;
    }

    v11 = a4;
    a4 = v60 + v48;
    if (__OFADD__(v60, v48))
    {
      goto LABEL_161;
    }

    if (a4 < v7)
    {
      goto LABEL_162;
    }

    v61 = v52;
    sub_100069E2C(v49, v50);
    v62 = Data.subdata(in:)();
    v64 = v63;
    sub_10006A178(v49, v50);
    v65 = v120;
    v66 = *(v120 + 28);
    v67 = type metadata accessor for UUID();
    v68 = *(*(v67 - 8) + 16);
    v124 = v6;
    v6 = v119;
    v68(&v119[v66], v11 + v118, v67);
    v69 = *(v11 + v61);
    v13 = 0;
    *v6 = v10;
    *(v6 + 1) = v45;
    *(v6 + 8) = v62;
    *(v6 + 16) = v64;
    a4 = v11;
    *(v6 + *(v65 + 32)) = v69;
    *(v6 + *(v65 + 36)) = v11;
    v70 = *(v6 + 8);
    v7 = *(v6 + 16);

    sub_1000B136C(v10, v45, v70, v7, v6 + v66, v11);
    sub_10023BB10(v6);
    v71 = v130;
    sub_100069E2C(v130, *(&v130 + 1));
    sub_100084D68(v124, v71, *(&v71 + 1), &v127);
    v72 = v130;
    v130 = v127;
    sub_10006A178(v72, *(&v72 + 1));
  }

  v73 = Logger.logObject.getter();
  LOBYTE(v36) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v73, v36))
  {
    goto LABEL_113;
  }

  v74 = swift_slowAlloc();
  *v74 = 134218240;
  v75 = v130;
  v76 = *(&v130 + 1) >> 62;
  if ((*(&v130 + 1) >> 62) <= 1)
  {
    if (!v76)
    {
      v75 = BYTE14(v130);
      goto LABEL_112;
    }

LABEL_109:
    v28 = __OFSUB__(HIDWORD(v75), v75);
    LODWORD(v75) = HIDWORD(v75) - v75;
    if (!v28)
    {
      v75 = v75;
      goto LABEL_112;
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
  }

  if (v76 != 2)
  {
    v75 = 0;
    goto LABEL_112;
  }

  v80 = *(v130 + 16);
  v81 = *(v130 + 24);
  v28 = __OFSUB__(v81, v80);
  v75 = v81 - v80;
  if (v28)
  {
    __break(1u);
LABEL_105:
    if (v76 == 2)
    {
      v84 = v75 + 16;
      v82 = *(v75 + 16);
      v83 = *(v84 + 8);
      v28 = __OFSUB__(v83, v82);
      v75 = v83 - v82;
      if (v28)
      {
        __break(1u);
        goto LABEL_109;
      }
    }

    else
    {
      v75 = 0;
    }

    goto LABEL_131;
  }

LABEL_112:
  *(v74 + 4) = v75;
  *(v74 + 12) = 2048;
  *(v74 + 14) = v6;
  _os_log_impl(&_mh_execute_header, v73, v36, "Got partial data of size %ld expected %ld", v74, 0x16u);

LABEL_113:

  v10 = *(&v130 + 1);
  v36 = v130;
  if ((v123 & 1) == 0)
  {
    goto LABEL_136;
  }

  v128 = &type metadata for Data;
  v129 = &protocol witness table for Data;
  v127 = v130;
  v85 = sub_1000752B0(&v127, &type metadata for Data);
  v86 = *v85;
  v87 = v85[1];
  v88 = v87 >> 62;
  if ((v87 >> 62) > 1)
  {
    goto LABEL_121;
  }

  if (!v88)
  {
    goto LABEL_135;
  }

  v89 = v86;
  v90 = v86 >> 32;
  v91 = v90 - v89;
  if (v90 < v89)
  {
    goto LABEL_174;
  }

  sub_100069E2C(v36, v10);
  v36 = __DataStorage._bytes.getter();
  if (!v36)
  {
    goto LABEL_149;
  }

  v10 = v87 & 0x3FFFFFFFFFFFFFFFLL;
  v92 = __DataStorage._offset.getter();
  v86 = v89 - v92;
  if (!__OFSUB__(v89, v92))
  {
    goto LABEL_148;
  }

  __break(1u);
LABEL_121:
  if (v88 == 2)
  {
    v93 = *(v86 + 16);
    v94 = *(v86 + 24);
    sub_100069E2C(v36, v10);
    v73 = (v87 & 0x3FFFFFFFFFFFFFFFLL);
    v74 = __DataStorage._bytes.getter();
    v36 = v74;
    if (v74)
    {
      v73 = (v87 & 0x3FFFFFFFFFFFFFFFLL);
      v74 = __DataStorage._offset.getter();
      v75 = v93 - v74;
      if (__OFSUB__(v93, v74))
      {
        goto LABEL_177;
      }

      v36 += v75;
    }

    v28 = __OFSUB__(v94, v93);
    v91 = v94 - v93;
    if (!v28)
    {
      goto LABEL_149;
    }

    __break(1u);
LABEL_128:
    v28 = __OFSUB__(HIDWORD(v75), v75);
    LODWORD(v75) = HIDWORD(v75) - v75;
    if (v28)
    {
      goto LABEL_175;
    }

    v75 = v75;
    goto LABEL_131;
  }

LABEL_144:
  memset(v125, 0, 14);
  sub_100069E2C(v36, v10);
  v97 = v125;
  v98 = v125;
LABEL_156:
  sub_10008E434(v97, v98, v126);
  v110 = v126[0];
  v111 = v126[1];
  sub_1000752F4(&v127);
  v112 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v113 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v114 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *v112 = v110;
  v112[1] = v111;
  sub_10006A2D0(v113, v114);
LABEL_157:
  v100 = *(&v130 + 1);
  v99 = v130;
  return sub_10006A178(v99, v100);
}

uint64_t sub_10023A8F8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7)
{
  v150 = a7;
  v149 = a6;
  v152 = a3;
  v148 = type metadata accessor for Alisha.DKMessage(0);
  __chkstk_darwin(v148);
  v147 = v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_194;
  }

LABEL_2:
  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v19 = &unk_10051B000;
  v153 = a4;
  v145[3] = a5;
  v145[2] = a2;
  v145[1] = a1;
  if (v152)
  {
    v21 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v157 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v20 = v157;
    *(&v157 + 1) = v21;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v20, v21);
    sub_10006A2D0(v20, v21);
    if (v21 >> 60 == 15 || (Data.append(_:)(), v21 = *(&v157 + 1), *(&v157 + 1) >> 60 == 15))
    {
      sub_100069E2C(a1, a2);
      v22 = a1;
      v23 = a2;
    }

    else
    {
      v22 = v157;
      sub_100069E2C(v157, *(&v157 + 1));
      v23 = v21;
    }

    *&v160 = v22;
    *(&v160 + 1) = v23;
    sub_100069E2C(a1, a2);
    v24 = Logger.logObject.getter();
    LOBYTE(v19) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v24, v19))
    {
      sub_10006A178(a1, a2);
LABEL_43:

      sub_10006A2D0(v157, v21);
      goto LABEL_44;
    }

    v25 = swift_slowAlloc();
    v7 = v25;
    *v25 = 134218240;
    v27 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (v27)
      {
        LODWORD(v28) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_197;
        }

        v28 = v28;
      }

      else
      {
        v28 = BYTE6(a2);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  *&v160 = a1;
  *(&v160 + 1) = a2;
  sub_100069E2C(a1, a2);
  v24 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v21))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v30 = *(a1 + 16);
        v29 = *(a1 + 24);
        v31 = __OFSUB__(v29, v30);
        v27 = v29 - v30;
        if (v31)
        {
          __break(1u);
LABEL_22:
          if (v27 != 2)
          {
            v28 = 0;
            goto LABEL_33;
          }

          v33 = *(a1 + 16);
          v32 = *(a1 + 24);
          v31 = __OFSUB__(v32, v33);
          v28 = v32 - v33;
          if (!v31)
          {
LABEL_33:
            *(v7 + 4) = v28;
            sub_10006A178(a1, a2);
            *(v7 + 12) = 2048;
            swift_beginAccess();
            v34 = v160;
            v35 = *(&v160 + 1) >> 62;
            if ((*(&v160 + 1) >> 62) > 1)
            {
              v36 = 0;
              if (v35 != 2)
              {
                goto LABEL_42;
              }

              v34 = *(v160 + 16);
              v37 = *(v160 + 24);
              v31 = __OFSUB__(v37, v34);
              v36 = v37 - v34;
              if (!v31)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v35)
            {
              v36 = BYTE14(v160);
LABEL_42:
              *(v7 + 14) = v36;
              _os_log_impl(&_mh_execute_header, v24, v19, "Processing %ld bytes; %ld bytes including accumulated", v7, 0x16u);

              a4 = v153;
              goto LABEL_43;
            }

            v31 = __OFSUB__(HIDWORD(v34), v34);
            v38 = HIDWORD(v34) - v34;
            if (v31)
            {
              goto LABEL_198;
            }

            v36 = v38;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      if (v26)
      {
LABEL_26:
        LODWORD(v27) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_196;
        }

        v27 = v27;
        goto LABEL_31;
      }

      v27 = BYTE6(a2);
    }

LABEL_31:
    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v24, v21, "Processing %ld bytes", v25, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  v151 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v39 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v146 = v39;
  swift_beginAccess();
  v16 = 0;
  while (1)
  {
    v13 = *(&v160 + 1);
    v14 = v160;
    v40 = *(&v160 + 1) >> 62;
    if ((*(&v160 + 1) >> 62) > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_134;
      }

      v41 = *(v160 + 16);
      v42 = *(v160 + 24);
    }

    else
    {
      if (!v40)
      {
        if ((*(&v160 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_134;
        }

        if (BYTE14(v160) < 4uLL)
        {
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      v41 = v160;
      v42 = v160 >> 32;
    }

    if (v41 == v42)
    {
      goto LABEL_134;
    }

    if (v40 == 2)
    {
      v44 = *(v160 + 16);
      v43 = *(v160 + 24);
      v31 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v31)
      {
        goto LABEL_189;
      }

      if (v45 < 4)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v160), v160))
      {
        goto LABEL_190;
      }

      if (DWORD1(v160) - v160 < 4)
      {
LABEL_94:
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v71, v72))
        {
          goto LABEL_130;
        }

        v73 = swift_slowAlloc();
        *v73 = 134217984;
        v74 = v160;
        v75 = *(&v160 + 1) >> 62;
        if ((*(&v160 + 1) >> 62) <= 1)
        {
          if (v75)
          {
            LODWORD(v74) = DWORD1(v160) - v160;
            if (__OFSUB__(DWORD1(v160), v160))
            {
              goto LABEL_202;
            }

            v74 = v74;
          }

          else
          {
            v74 = BYTE14(v160);
          }

          goto LABEL_129;
        }

LABEL_105:
        if (v75 == 2)
        {
          v83 = v74 + 16;
          v81 = *(v74 + 16);
          v82 = *(v83 + 8);
          v31 = __OFSUB__(v82, v81);
          v74 = v82 - v81;
          if (v31)
          {
            __break(1u);
            goto LABEL_109;
          }
        }

        else
        {
          v74 = 0;
        }

LABEL_129:
        *(v73 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v71, v72, "Got partial data of size %ld < header size", v73, 0xCu);

LABEL_130:

        v13 = *(&v160 + 1);
        v14 = v160;
        if ((v152 & 1) == 0)
        {
          goto LABEL_134;
        }

        v158 = &type metadata for Data;
        v159 = &protocol witness table for Data;
        v157 = v160;
        v103 = sub_1000752B0(&v157, &type metadata for Data);
        v104 = *v103;
        v105 = v103[1];
        v106 = v105 >> 62;
        if ((v105 >> 62) > 1)
        {
          if (v106 == 2)
          {
            v111 = *(v104 + 16);
            v112 = *(v104 + 24);
            sub_100069E2C(v14, v13);
            v113 = __DataStorage._bytes.getter();
            if (v113)
            {
              v114 = v113;
              v115 = __DataStorage._offset.getter();
              if (__OFSUB__(v111, v115))
              {
                goto LABEL_207;
              }

              v116 = (v111 - v115 + v114);
            }

            else
            {
              v116 = 0;
            }

            if (__OFSUB__(v112, v111))
            {
              goto LABEL_204;
            }

            v135 = __DataStorage._length.getter();
            if (v135 >= v112 - v111)
            {
              v136 = v112 - v111;
            }

            else
            {
              v136 = v135;
            }

            v137 = &v116[v136];
            if (v116)
            {
              v138 = v137;
            }

            else
            {
              v138 = 0;
            }

            sub_10008E434(v116, v138, &v155);
            a4 = v153;
            goto LABEL_181;
          }

          memset(v154, 0, 14);
          sub_100069E2C(v14, v13);
          v107 = v154;
          v108 = v154;
        }

        else if (v106)
        {
          v117 = v104;
          v118 = v104 >> 32;
          v119 = v118 - v117;
          if (v118 < v117)
          {
            goto LABEL_203;
          }

          sub_100069E2C(v14, v13);
          v120 = __DataStorage._bytes.getter();
          if (v120)
          {
            v121 = v120;
            v122 = __DataStorage._offset.getter();
            if (__OFSUB__(v117, v122))
            {
              goto LABEL_208;
            }

            v123 = (v117 - v122 + v121);
          }

          else
          {
            v123 = 0;
          }

          a4 = v153;
          v139 = __DataStorage._length.getter();
          if (v139 >= v119)
          {
            v140 = v119;
          }

          else
          {
            v140 = v139;
          }

          v141 = &v123[v140];
          if (v123)
          {
            v108 = v141;
          }

          else
          {
            v108 = 0;
          }

          v107 = v123;
        }

        else
        {
          v154[0] = *v103;
          LOWORD(v154[1]) = v105;
          BYTE2(v154[1]) = BYTE2(v105);
          BYTE3(v154[1]) = BYTE3(v105);
          BYTE4(v154[1]) = BYTE4(v105);
          BYTE5(v154[1]) = BYTE5(v105);
          sub_100069E2C(v14, v13);
          v107 = v154;
          v108 = v154 + BYTE6(v105);
        }

        sub_10008E434(v107, v108, &v155);
LABEL_181:
        v132 = v155;
        v133 = v156;
        sub_1000752F4(&v157);
        v134 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
        goto LABEL_182;
      }
    }

LABEL_60:
    sub_100069E2C(v160, *(&v160 + 1));
    v13 = sub_1000939AC(v14, v13, 0, 0, 0);
    v47 = *(&v160 + 1);
    v46 = v160;
    sub_100069E2C(v160, *(&v160 + 1));
    a1 = sub_1000939AC(v46, v47, 1, 0, 0);
    a5 = *(&v160 + 1);
    v48 = v160;
    sub_100069E2C(v160, *(&v160 + 1));
    v49 = sub_100090214(v48, a5, 2, 0, 0);
    sub_10006A178(v48, a5);
    a2 = v49 + 4;
    if (v49 > 0x3FCu)
    {

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134218240;
        *(v78 + 4) = a2;
        *(v78 + 12) = 2048;
        *(v78 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v76, v77, "Discarding message exceeding max size %ld > %ld", v78, 0x16u);
      }

      else
      {
      }

      goto LABEL_183;
    }

    v7 = *(&v160 + 1);
    v14 = v160;
    v50 = *(&v160 + 1) >> 62;
    if ((*(&v160 + 1) >> 62) > 1)
    {
      v51 = v151;
      if (v50 != 2)
      {
        break;
      }

      v53 = *(v160 + 16);
      v52 = *(v160 + 24);
      v31 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v31)
      {
        goto LABEL_193;
      }

      if (v54 < a2)
      {
        break;
      }

      goto LABEL_71;
    }

    v51 = v151;
    if (!v50)
    {
      if (BYTE14(v160) < a2)
      {
        break;
      }

      goto LABEL_71;
    }

    if (__OFSUB__(DWORD1(v160), v160))
    {
      goto LABEL_192;
    }

    if (DWORD1(v160) - v160 < a2)
    {
      break;
    }

LABEL_71:
    if ((v152 & 1) != 0 && v13 <= 5u && ((1 << v13) & 0x27) != 0)
    {
      v55 = *(v153 + v51);
      v31 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v31)
      {
        goto LABEL_191;
      }

      *(v153 + v51) = v56;
    }

    v57 = v50;
    if (v50)
    {
      if (v50 == 2)
      {
        v58 = *(v14 + 16);
      }

      else
      {
        v58 = v14;
      }
    }

    else
    {
      v58 = 0;
    }

    a5 = v58 + 4;
    if (__OFADD__(v58, 4))
    {
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      swift_once();
      goto LABEL_2;
    }

    if (v50)
    {
      if (v50 == 2)
      {
        v57 = *(v14 + 16);
      }

      else
      {
        v57 = v14;
      }
    }

    v59 = v57 + 4;
    if (__OFADD__(v57, 4))
    {
      goto LABEL_186;
    }

    if (__OFADD__(v59, v49))
    {
      goto LABEL_187;
    }

    if (v59 + v49 < a5)
    {
      goto LABEL_188;
    }

    sub_100069E2C(v14, v7);
    v60 = Data.subdata(in:)();
    a5 = v61;
    sub_10006A178(v14, v7);
    v62 = v148;
    v63 = *(v148 + 28);
    v64 = type metadata accessor for UUID();
    v7 = v147;
    v65 = &v147[v63];
    v66 = v153;
    (*(*(v64 - 8) + 16))(v65, v153 + v146, v64);
    v67 = *(v66 + v51);
    *v7 = v13;
    *(v7 + 1) = a1;
    *(v7 + 8) = v60;
    *(v7 + 16) = a5;
    *(v7 + *(v62 + 32)) = v67;
    v68 = *(v62 + 36);
    a4 = v66;
    *(v7 + v68) = v66;

    sub_1000A8E24(v7, v149, v150);
    sub_10023BB10(v7);
    v69 = v160;
    sub_100069E2C(v160, *(&v160 + 1));
    sub_100084D68(a2, v69, *(&v69 + 1), &v157);
    v70 = v160;
    v160 = v157;
    sub_10006A178(v70, *(&v70 + 1));
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v71, v72))
  {
    goto LABEL_113;
  }

  v73 = swift_slowAlloc();
  *v73 = 134218240;
  v74 = v160;
  v75 = *(&v160 + 1) >> 62;
  if ((*(&v160 + 1) >> 62) <= 1)
  {
    if (!v75)
    {
      v74 = BYTE14(v160);
      goto LABEL_112;
    }

LABEL_109:
    v31 = __OFSUB__(HIDWORD(v74), v74);
    LODWORD(v74) = HIDWORD(v74) - v74;
    if (!v31)
    {
      v74 = v74;
      goto LABEL_112;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
  }

  if (v75 != 2)
  {
    v74 = 0;
    goto LABEL_112;
  }

  v79 = *(v160 + 16);
  v80 = *(v160 + 24);
  v31 = __OFSUB__(v80, v79);
  v74 = v80 - v79;
  if (v31)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_112:
  *(v73 + 4) = v74;
  *(v73 + 12) = 2048;
  *(v73 + 14) = a2;
  _os_log_impl(&_mh_execute_header, v71, v72, "Got partial data of size %ld expected %ld", v73, 0x16u);

LABEL_113:

  v13 = *(&v160 + 1);
  v14 = v160;
  if ((v152 & 1) == 0)
  {
LABEL_134:
    v109 = v14;
    v110 = v13;
    return sub_10006A178(v109, v110);
  }

  v158 = &type metadata for Data;
  v159 = &protocol witness table for Data;
  v157 = v160;
  v84 = sub_1000752B0(&v157, &type metadata for Data);
  v85 = *v84;
  v86 = v84[1];
  v87 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    if (v87 == 2)
    {
      v90 = *(v85 + 16);
      v91 = *(v85 + 24);
      sub_100069E2C(v14, v13);
      v92 = __DataStorage._bytes.getter();
      if (v92)
      {
        v93 = v92;
        v94 = __DataStorage._offset.getter();
        if (__OFSUB__(v90, v94))
        {
          goto LABEL_205;
        }

        v95 = (v90 - v94 + v93);
      }

      else
      {
        v95 = 0;
      }

      if (__OFSUB__(v91, v90))
      {
        goto LABEL_201;
      }

      v124 = __DataStorage._length.getter();
      if (v124 >= v91 - v90)
      {
        v125 = v91 - v90;
      }

      else
      {
        v125 = v124;
      }

      v126 = &v95[v125];
      if (v95)
      {
        v89 = v126;
      }

      else
      {
        v89 = 0;
      }

      v88 = v95;
    }

    else
    {
      memset(v154, 0, 14);
      sub_100069E2C(v14, v13);
      v88 = v154;
      v89 = v154;
    }

LABEL_153:
    sub_10008E434(v88, v89, &v155);
    v127 = v153;
  }

  else
  {
    if (!v87)
    {
      v154[0] = *v84;
      LOWORD(v154[1]) = v86;
      BYTE2(v154[1]) = BYTE2(v86);
      BYTE3(v154[1]) = BYTE3(v86);
      BYTE4(v154[1]) = BYTE4(v86);
      BYTE5(v154[1]) = BYTE5(v86);
      sub_100069E2C(v14, v13);
      v88 = v154;
      v89 = v154 + BYTE6(v86);
      goto LABEL_153;
    }

    v96 = v85;
    v97 = v85 >> 32;
    v98 = v97 - v96;
    if (v97 < v96)
    {
      goto LABEL_200;
    }

    sub_100069E2C(v14, v13);
    v99 = __DataStorage._bytes.getter();
    if (v99)
    {
      v100 = v99;
      v101 = __DataStorage._offset.getter();
      if (__OFSUB__(v96, v101))
      {
        goto LABEL_206;
      }

      v102 = (v96 - v101 + v100);
    }

    else
    {
      v102 = 0;
    }

    v127 = v153;
    v128 = __DataStorage._length.getter();
    if (v128 >= v98)
    {
      v129 = v98;
    }

    else
    {
      v129 = v128;
    }

    v130 = &v102[v129];
    if (v102)
    {
      v131 = v130;
    }

    else
    {
      v131 = 0;
    }

    sub_10008E434(v102, v131, &v155);
  }

  v132 = v155;
  v133 = v156;
  sub_1000752F4(&v157);
  v134 = (v127 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
LABEL_182:
  v142 = *v134;
  v143 = v134[1];
  *v134 = v132;
  v134[1] = v133;
  sub_10006A2D0(v142, v143);
LABEL_183:
  v110 = *(&v160 + 1);
  v109 = v160;
  return sub_10006A178(v109, v110);
}

uint64_t sub_10023BB10(uint64_t a1)
{
  v2 = type metadata accessor for Alisha.DKMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023BB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023BB88(uint64_t a1, unint64_t a2, int a3, int64_t a4, unint64_t a5, uint64_t a6)
{
  v132 = a6;
  v127[1] = a5;
  v133 = a3;
  v127[0] = a2;
  v128 = a1;
  v131 = type metadata accessor for Alisha.DKMessage(0);
  __chkstk_darwin(v131);
  v130 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_172;
  }

LABEL_2:
  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v133)
  {
    v17 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v138 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v16 = v138;
    *(&v138 + 1) = v17;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v16, v17);
    sub_10006A2D0(v16, v17);
    if (v17 >> 60 == 15 || (Data.append(_:)(), v17 = *(&v138 + 1), *(&v138 + 1) >> 60 == 15))
    {
      v6 = v128;
      v7 = v127[0];
      sub_100069E2C(v128, v127[0]);
      v18 = v6;
      v19 = v7;
    }

    else
    {
      v18 = v138;
      sub_100069E2C(v138, *(&v138 + 1));
      v19 = v17;
      v7 = v127[0];
      v6 = v128;
    }

    *&v141 = v18;
    *(&v141 + 1) = v19;
    sub_100069E2C(v6, v7);
    v21 = Logger.logObject.getter();
    LOBYTE(v20) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v21, v20))
    {
      sub_10006A178(v6, v7);
LABEL_43:

      sub_10006A2D0(v138, v17);
      goto LABEL_44;
    }

    v22 = swift_slowAlloc();
    v6 = v22;
    *v22 = 134218240;
    v24 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v24)
      {
        LODWORD(v25) = HIDWORD(v128) - v128;
        if (__OFSUB__(HIDWORD(v128), v128))
        {
          goto LABEL_175;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v7);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v20 = v127[0];
  *&v141 = v128;
  *(&v141 + 1) = v127[0];
  sub_100069E2C(v128, v127[0]);
  v21 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v27 = *(v128 + 16);
        v26 = *(v128 + 24);
        v28 = __OFSUB__(v26, v27);
        v24 = v26 - v27;
        if (v28)
        {
          __break(1u);
LABEL_22:
          if (v24 != 2)
          {
            v25 = 0;
            goto LABEL_33;
          }

          v30 = *(v128 + 16);
          v29 = *(v128 + 24);
          v28 = __OFSUB__(v29, v30);
          v25 = v29 - v30;
          if (!v28)
          {
LABEL_33:
            *(v6 + 4) = v25;
            sub_10006A178(v128, v7);
            *(v6 + 12) = 2048;
            swift_beginAccess();
            v31 = v141;
            v32 = *(&v141 + 1) >> 62;
            if ((*(&v141 + 1) >> 62) > 1)
            {
              v33 = 0;
              if (v32 != 2)
              {
                goto LABEL_42;
              }

              v31 = *(v141 + 16);
              v34 = *(v141 + 24);
              v28 = __OFSUB__(v34, v31);
              v33 = v34 - v31;
              if (!v28)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v32)
            {
              v33 = BYTE14(v141);
LABEL_42:
              *(v6 + 14) = v33;
              _os_log_impl(&_mh_execute_header, v21, v20, "Processing %ld bytes; %ld bytes including accumulated", v6, 0x16u);

              goto LABEL_43;
            }

            v28 = __OFSUB__(HIDWORD(v31), v31);
            v35 = HIDWORD(v31) - v31;
            if (v28)
            {
              goto LABEL_176;
            }

            v33 = v35;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      if (v23)
      {
LABEL_26:
        LODWORD(v24) = HIDWORD(v128) - v128;
        if (__OFSUB__(HIDWORD(v128), v128))
        {
          goto LABEL_174;
        }

        v24 = v24;
        goto LABEL_31;
      }

      v24 = BYTE6(v20);
    }

LABEL_31:
    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, v17, "Processing %ld bytes", v22, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  v135 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v11 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v129 = v11;
  swift_beginAccess();
  v13 = 0;
  while (1)
  {
    v10 = *(&v141 + 1);
    v36 = v141;
    v37 = *(&v141 + 1) >> 62;
    if ((*(&v141 + 1) >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_140;
      }

      v38 = *(v141 + 16);
      v39 = *(v141 + 24);
    }

    else
    {
      if (!v37)
      {
        if ((*(&v141 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_140;
        }

        if (BYTE14(v141) < 4uLL)
        {
          goto LABEL_95;
        }

        goto LABEL_60;
      }

      v38 = v141;
      v39 = v141 >> 32;
    }

    if (v38 == v39)
    {
      goto LABEL_140;
    }

    if (v37 == 2)
    {
      v41 = *(v141 + 16);
      v40 = *(v141 + 24);
      v28 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v28)
      {
        goto LABEL_167;
      }

      if (v42 < 4)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v141), v141))
      {
        goto LABEL_168;
      }

      if (DWORD1(v141) - v141 < 4)
      {
LABEL_95:
        v74 = Logger.logObject.getter();
        LOBYTE(v36) = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v74, v36))
        {
          v75 = swift_slowAlloc();
          *v75 = 134217984;
          v76 = v141;
          v77 = *(&v141 + 1) >> 62;
          if ((*(&v141 + 1) >> 62) > 1)
          {
            goto LABEL_109;
          }

          if (v77)
          {
            goto LABEL_132;
          }

          v76 = BYTE14(v141);
LABEL_135:
          *(v75 + 4) = v76;
          _os_log_impl(&_mh_execute_header, v74, v36, "Got partial data of size %ld < header size", v75, 0xCu);
        }

        v10 = *(&v141 + 1);
        v36 = v141;
        if (v133)
        {
          v139 = &type metadata for Data;
          v140 = &protocol witness table for Data;
          v138 = v141;
          v106 = sub_1000752B0(&v138, &type metadata for Data);
          v97 = *v106;
          v98 = v106[1];
          v107 = v98 >> 62;
          if ((v98 >> 62) > 1)
          {
            if (v107 != 2)
            {
              goto LABEL_148;
            }

            v112 = *(v97 + 16);
            v113 = *(v97 + 24);
            sub_100069E2C(v36, v10);
            v10 = v98 & 0x3FFFFFFFFFFFFFFFLL;
            v36 = __DataStorage._bytes.getter();
            if (v36)
            {
              v10 = v98 & 0x3FFFFFFFFFFFFFFFLL;
              v114 = __DataStorage._offset.getter();
              if (__OFSUB__(v112, v114))
              {
                goto LABEL_182;
              }

              v36 += v112 - v114;
            }

            v28 = __OFSUB__(v113, v112);
            v102 = v113 - v112;
            if (v28)
            {
              __break(1u);
              goto LABEL_148;
            }
          }

          else
          {
            if (!v107)
            {
LABEL_139:
              v136[0] = v97;
              LOWORD(v136[1]) = v98;
              BYTE2(v136[1]) = BYTE2(v98);
              BYTE3(v136[1]) = BYTE3(v98);
              BYTE4(v136[1]) = BYTE4(v98);
              BYTE5(v136[1]) = BYTE5(v98);
              sub_100069E2C(v36, v10);
              v108 = v136;
              v109 = v136 + BYTE6(v98);
              goto LABEL_160;
            }

            v115 = v97;
            v116 = v97 >> 32;
            v102 = v116 - v115;
            if (v116 < v115)
            {
              goto LABEL_180;
            }

            sub_100069E2C(v36, v10);
            v36 = __DataStorage._bytes.getter();
            if (v36)
            {
              v117 = __DataStorage._offset.getter();
              v97 = v115 - v117;
              if (__OFSUB__(v115, v117))
              {
                goto LABEL_183;
              }

LABEL_152:
              v36 += v97;
            }
          }

LABEL_153:
          v118 = __DataStorage._length.getter();
          if (v118 >= v102)
          {
            v119 = v102;
          }

          else
          {
            v119 = v118;
          }

          v120 = (v119 + v36);
          if (v36)
          {
            v109 = v120;
          }

          else
          {
            v109 = 0;
          }

          v108 = v36;
          goto LABEL_160;
        }

LABEL_140:
        v110 = v36;
        v111 = v10;
        return sub_10006A178(v110, v111);
      }
    }

LABEL_60:
    sub_100069E2C(v141, *(&v141 + 1));
    v43 = sub_1000939AC(v36, v10, 0, 0, 0);
    if (v13)
    {

      v78 = v128;
      v79 = v127[0];
      sub_100069E2C(v128, v127[0]);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      sub_10006A178(v78, v79);
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v138 = v83;
        *v82 = 136315138;
        v137[0] = sub_100288788(v78, v79);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v84 = BidirectionalCollection<>.joined(separator:)();
        v86 = v85;

        v87 = sub_1002FFA0C(v84, v86, &v138);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Invalid DK message header %s", v82, 0xCu);
        sub_1000752F4(v83);
      }

      goto LABEL_161;
    }

    v10 = v43;
    v45 = *(&v141 + 1);
    v44 = v141;
    sub_100069E2C(v141, *(&v141 + 1));
    v46 = sub_1000939AC(v44, v45, 1, 0, 0);
    v48 = *(&v141 + 1);
    v47 = v141;
    sub_100069E2C(v141, *(&v141 + 1));
    v7 = sub_100090214(v47, v48, 2, 0, 0);
    sub_10006A178(v47, v48);
    v49 = v7;
    v6 = v7 + 4;
    if (v7 > 0x3FCu)
    {

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 134218240;
        *(v90 + 4) = v6;
        *(v90 + 12) = 2048;
        *(v90 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v88, v89, "Discarding message exceeding max size %ld > %ld", v90, 0x16u);
      }

      else
      {
      }

      goto LABEL_161;
    }

    v51 = *(&v141 + 1);
    v50 = v141;
    v52 = *(&v141 + 1) >> 62;
    if ((*(&v141 + 1) >> 62) > 1)
    {
      v53 = v135;
      if (v52 != 2)
      {
        break;
      }

      v55 = *(v141 + 16);
      v54 = *(v141 + 24);
      v28 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v28)
      {
        goto LABEL_171;
      }

      if (v56 < v6)
      {
        break;
      }

      goto LABEL_72;
    }

    v53 = v135;
    if (!v52)
    {
      if (BYTE14(v141) < v6)
      {
        break;
      }

      goto LABEL_72;
    }

    if (__OFSUB__(DWORD1(v141), v141))
    {
      goto LABEL_170;
    }

    if (DWORD1(v141) - v141 < v6)
    {
      break;
    }

LABEL_72:
    if ((v133 & 1) != 0 && v10 <= 5u && ((1 << v10) & 0x27) != 0)
    {
      v57 = *(a4 + v53);
      v28 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v28)
      {
        goto LABEL_169;
      }

      *(a4 + v53) = v58;
    }

    v59 = v52;
    if (v52)
    {
      if (v52 == 2)
      {
        v60 = *(v50 + 16);
      }

      else
      {
        v60 = v50;
      }
    }

    else
    {
      v60 = 0;
    }

    v7 = v60 + 4;
    if (__OFADD__(v60, 4))
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      swift_once();
      goto LABEL_2;
    }

    if (v52)
    {
      if (v52 == 2)
      {
        v59 = *(v50 + 16);
      }

      else
      {
        v59 = v50;
      }
    }

    v61 = v59 + 4;
    if (__OFADD__(v59, 4))
    {
      goto LABEL_164;
    }

    if (__OFADD__(v61, v49))
    {
      goto LABEL_165;
    }

    if (v61 + v49 < v7)
    {
      goto LABEL_166;
    }

    sub_100069E2C(v50, v51);
    v62 = Data.subdata(in:)();
    v64 = v63;
    sub_10006A178(v50, v51);
    v65 = v131;
    v11 = *(v131 + 28);
    v66 = type metadata accessor for UUID();
    v67 = *(*(v66 - 8) + 16);
    v134 = 0;
    v68 = v6;
    v6 = v130;
    v67(&v130[v11], a4 + v129, v66);
    v69 = *(a4 + v135);
    *v6 = v10;
    *(v6 + 1) = v46;
    *(v6 + 8) = v62;
    *(v6 + 16) = v64;
    *(v6 + *(v65 + 32)) = v69;
    *(v6 + *(v65 + 36)) = a4;
    v7 = *(v6 + 8);
    v70 = *(v6 + 16);

    sub_100231354(v10, v46, v7, v70, v6 + v11, v69, a4);
    sub_10023BB10(v6);
    v71 = v141;
    sub_100069E2C(v141, *(&v141 + 1));
    v72 = v68;
    v13 = v134;
    sub_100084D68(v72, v71, *(&v71 + 1), &v138);
    v73 = v141;
    v141 = v138;
    sub_10006A178(v73, *(&v73 + 1));
  }

  v74 = Logger.logObject.getter();
  LOBYTE(v36) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v74, v36))
  {
    goto LABEL_117;
  }

  v75 = swift_slowAlloc();
  *v75 = 134218240;
  v76 = v141;
  v77 = *(&v141 + 1) >> 62;
  if ((*(&v141 + 1) >> 62) <= 1)
  {
    if (!v77)
    {
      v76 = BYTE14(v141);
      goto LABEL_116;
    }

LABEL_113:
    v28 = __OFSUB__(HIDWORD(v76), v76);
    LODWORD(v76) = HIDWORD(v76) - v76;
    if (!v28)
    {
      v76 = v76;
      goto LABEL_116;
    }

LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
  }

  if (v77 != 2)
  {
    v76 = 0;
    goto LABEL_116;
  }

  v91 = *(v141 + 16);
  v92 = *(v141 + 24);
  v28 = __OFSUB__(v92, v91);
  v76 = v92 - v91;
  if (v28)
  {
    __break(1u);
LABEL_109:
    if (v77 == 2)
    {
      v95 = v76 + 16;
      v93 = *(v76 + 16);
      v94 = *(v95 + 8);
      v28 = __OFSUB__(v94, v93);
      v76 = v94 - v93;
      if (v28)
      {
        __break(1u);
        goto LABEL_113;
      }
    }

    else
    {
      v76 = 0;
    }

    goto LABEL_135;
  }

LABEL_116:
  *(v75 + 4) = v76;
  *(v75 + 12) = 2048;
  *(v75 + 14) = v6;
  _os_log_impl(&_mh_execute_header, v74, v36, "Got partial data of size %ld expected %ld", v75, 0x16u);

LABEL_117:

  v10 = *(&v141 + 1);
  v36 = v141;
  if ((v133 & 1) == 0)
  {
    goto LABEL_140;
  }

  v139 = &type metadata for Data;
  v140 = &protocol witness table for Data;
  v138 = v141;
  v96 = sub_1000752B0(&v138, &type metadata for Data);
  v97 = *v96;
  v98 = v96[1];
  v99 = v98 >> 62;
  if ((v98 >> 62) > 1)
  {
    goto LABEL_125;
  }

  if (!v99)
  {
    goto LABEL_139;
  }

  v100 = v97;
  v101 = v97 >> 32;
  v102 = v101 - v100;
  if (v101 < v100)
  {
    goto LABEL_178;
  }

  sub_100069E2C(v36, v10);
  v36 = __DataStorage._bytes.getter();
  if (!v36)
  {
    goto LABEL_153;
  }

  v10 = v98 & 0x3FFFFFFFFFFFFFFFLL;
  v103 = __DataStorage._offset.getter();
  v97 = v100 - v103;
  if (!__OFSUB__(v100, v103))
  {
    goto LABEL_152;
  }

  __break(1u);
LABEL_125:
  if (v99 == 2)
  {
    v104 = *(v97 + 16);
    v105 = *(v97 + 24);
    sub_100069E2C(v36, v10);
    v74 = (v98 & 0x3FFFFFFFFFFFFFFFLL);
    v75 = __DataStorage._bytes.getter();
    v36 = v75;
    if (v75)
    {
      v74 = (v98 & 0x3FFFFFFFFFFFFFFFLL);
      v75 = __DataStorage._offset.getter();
      v76 = v104 - v75;
      if (__OFSUB__(v104, v75))
      {
        goto LABEL_181;
      }

      v36 += v76;
    }

    v28 = __OFSUB__(v105, v104);
    v102 = v105 - v104;
    if (!v28)
    {
      goto LABEL_153;
    }

    __break(1u);
LABEL_132:
    v28 = __OFSUB__(HIDWORD(v76), v76);
    LODWORD(v76) = HIDWORD(v76) - v76;
    if (v28)
    {
      goto LABEL_179;
    }

    v76 = v76;
    goto LABEL_135;
  }

LABEL_148:
  memset(v136, 0, 14);
  sub_100069E2C(v36, v10);
  v108 = v136;
  v109 = v136;
LABEL_160:
  sub_10008E434(v108, v109, v137);
  v121 = v137[0];
  v122 = v137[1];
  sub_1000752F4(&v138);
  v123 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v124 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v125 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *v123 = v121;
  v123[1] = v122;
  sub_10006A2D0(v124, v125);
LABEL_161:
  v111 = *(&v141 + 1);
  v110 = v141;
  return sub_10006A178(v110, v111);
}

uint64_t sub_10023CC0C(uint64_t a1, unint64_t a2, int a3, int64_t a4, unint64_t a5, uint64_t a6)
{
  v123 = a6;
  v125 = a3;
  v122 = type metadata accessor for Alisha.DKMessage(0);
  __chkstk_darwin(v122);
  v12 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_173;
  }

LABEL_2:
  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v19 = &unk_10051B000;
  v120[2] = a5;
  v120[1] = a2;
  v120[0] = a1;
  if (v125)
  {
    v21 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v128 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v20 = v128;
    *(&v128 + 1) = v21;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v20, v21);
    sub_10006A2D0(v20, v21);
    if (v21 >> 60 == 15 || (Data.append(_:)(), v21 = *(&v128 + 1), *(&v128 + 1) >> 60 == 15))
    {
      sub_100069E2C(a1, a2);
      v22 = a1;
      v23 = a2;
    }

    else
    {
      v22 = v128;
      sub_100069E2C(v128, *(&v128 + 1));
      v23 = v21;
    }

    *&v131 = v22;
    *(&v131 + 1) = v23;
    sub_100069E2C(a1, a2);
    v24 = Logger.logObject.getter();
    LOBYTE(v19) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v24, v19))
    {
      sub_10006A178(a1, a2);
LABEL_43:

      sub_10006A2D0(v128, v21);
      goto LABEL_44;
    }

    v25 = swift_slowAlloc();
    v6 = v25;
    *v25 = 134218240;
    v27 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (v27)
      {
        LODWORD(v28) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_176;
        }

        v28 = v28;
      }

      else
      {
        v28 = BYTE6(a2);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  *&v131 = a1;
  *(&v131 + 1) = a2;
  sub_100069E2C(a1, a2);
  v24 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v21))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v30 = *(a1 + 16);
        v29 = *(a1 + 24);
        v31 = __OFSUB__(v29, v30);
        v27 = v29 - v30;
        if (v31)
        {
          __break(1u);
LABEL_22:
          if (v27 != 2)
          {
            v28 = 0;
            goto LABEL_33;
          }

          v33 = *(a1 + 16);
          v32 = *(a1 + 24);
          v31 = __OFSUB__(v32, v33);
          v28 = v32 - v33;
          if (!v31)
          {
LABEL_33:
            *(v6 + 4) = v28;
            sub_10006A178(a1, a2);
            *(v6 + 12) = 2048;
            swift_beginAccess();
            v34 = v131;
            v35 = *(&v131 + 1) >> 62;
            if ((*(&v131 + 1) >> 62) > 1)
            {
              v36 = 0;
              if (v35 != 2)
              {
                goto LABEL_42;
              }

              v34 = *(v131 + 16);
              v37 = *(v131 + 24);
              v31 = __OFSUB__(v37, v34);
              v36 = v37 - v34;
              if (!v31)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v35)
            {
              v36 = BYTE14(v131);
LABEL_42:
              *(v6 + 14) = v36;
              _os_log_impl(&_mh_execute_header, v24, v19, "Processing %ld bytes; %ld bytes including accumulated", v6, 0x16u);

              goto LABEL_43;
            }

            v31 = __OFSUB__(HIDWORD(v34), v34);
            v38 = HIDWORD(v34) - v34;
            if (v31)
            {
              goto LABEL_177;
            }

            v36 = v38;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      if (v26)
      {
LABEL_26:
        LODWORD(v27) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_175;
        }

        v27 = v27;
        goto LABEL_31;
      }

      v27 = BYTE6(a2);
    }

LABEL_31:
    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v24, v21, "Processing %ld bytes", v25, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  a1 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v39 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v121 = v39;
  swift_beginAccess();
  v16 = 0;
  v124 = a4;
  while (1)
  {
    v13 = *(&v131 + 1);
    v14 = v131;
    v40 = *(&v131 + 1) >> 62;
    if ((*(&v131 + 1) >> 62) > 1)
    {
      if (v40 != 2 || *(v131 + 16) == *(v131 + 24))
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (!v40)
      {
        if ((*(&v131 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_133;
        }

        if (BYTE14(v131) < 4uLL)
        {
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      if (v131 == v131 >> 32)
      {
        goto LABEL_133;
      }
    }

    if (v40 != 2)
    {
      break;
    }

    v42 = *(v131 + 16);
    v41 = *(v131 + 24);
    v31 = __OFSUB__(v41, v42);
    v43 = v41 - v42;
    if (v31)
    {
      goto LABEL_168;
    }

    if (v43 < 4)
    {
      goto LABEL_94;
    }

LABEL_60:
    sub_100069E2C(v131, *(&v131 + 1));
    v13 = sub_1000939AC(v14, v13, 0, 0, 0);
    v45 = *(&v131 + 1);
    v44 = v131;
    sub_100069E2C(v131, *(&v131 + 1));
    a2 = sub_1000939AC(v44, v45, 1, 0, 0);
    v47 = *(&v131 + 1);
    v46 = v131;
    sub_100069E2C(v131, *(&v131 + 1));
    v48 = sub_100090214(v46, v47, 2, 0, 0);
    sub_10006A178(v46, v47);
    v6 = v48 + 4;
    if (v48 > 0x3FCu)
    {

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134218240;
        *(v75 + 4) = v6;
        *(v75 + 12) = 2048;
        *(v75 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v73, v74, "Discarding message exceeding max size %ld > %ld", v75, 0x16u);
      }

      else
      {
      }

      goto LABEL_162;
    }

    a5 = *(&v131 + 1);
    v14 = v131;
    v49 = *(&v131 + 1) >> 62;
    if ((*(&v131 + 1) >> 62) > 1)
    {
      if (v49 != 2)
      {
        goto LABEL_90;
      }

      v51 = *(v131 + 16);
      v50 = *(v131 + 24);
      v31 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v31)
      {
        goto LABEL_172;
      }

      if (v52 < v6)
      {
        goto LABEL_90;
      }
    }

    else if (v49)
    {
      if (__OFSUB__(DWORD1(v131), v131))
      {
        goto LABEL_171;
      }

      if (DWORD1(v131) - v131 < v6)
      {
LABEL_90:
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v68, v69))
        {
          goto LABEL_113;
        }

        v70 = swift_slowAlloc();
        *v70 = 134218240;
        v71 = v131;
        v72 = *(&v131 + 1) >> 62;
        if ((*(&v131 + 1) >> 62) <= 1)
        {
          if (!v72)
          {
            v71 = BYTE14(v131);
            goto LABEL_112;
          }

LABEL_109:
          v31 = __OFSUB__(HIDWORD(v71), v71);
          LODWORD(v71) = HIDWORD(v71) - v71;
          if (!v31)
          {
            v71 = v71;
            goto LABEL_112;
          }

LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
        }

        if (v72 != 2)
        {
          v71 = 0;
          goto LABEL_112;
        }

        v76 = *(v131 + 16);
        v77 = *(v131 + 24);
        v31 = __OFSUB__(v77, v76);
        v71 = v77 - v76;
        if (!v31)
        {
LABEL_112:
          *(v70 + 4) = v71;
          *(v70 + 12) = 2048;
          *(v70 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v68, v69, "Got partial data of size %ld expected %ld", v70, 0x16u);

LABEL_113:

          v13 = *(&v131 + 1);
          v14 = v131;
          if (v125)
          {
            v129 = &type metadata for Data;
            v130 = &protocol witness table for Data;
            v128 = v131;
            v81 = sub_1000752B0(&v128, &type metadata for Data);
            v82 = *v81;
            v83 = v81[1];
            v84 = v83 >> 62;
            if ((v83 >> 62) > 1)
            {
              goto LABEL_121;
            }

            if (v84)
            {
              v85 = v82;
              v86 = v82 >> 32;
              a4 = v86 - v85;
              if (v86 < v85)
              {
                goto LABEL_179;
              }

              sub_100069E2C(v14, v13);
              v87 = __DataStorage._bytes.getter();
              if (v87)
              {
                v88 = v87;
                v13 = v83 & 0x3FFFFFFFFFFFFFFFLL;
                v89 = __DataStorage._offset.getter();
                v82 = v85 - v89;
                if (!__OFSUB__(v85, v89))
                {
                  goto LABEL_143;
                }

                __break(1u);
LABEL_121:
                if (v84 == 2)
                {
                  v90 = *(v82 + 16);
                  v91 = *(v82 + 24);
                  sub_100069E2C(v14, v13);
                  v92 = __DataStorage._bytes.getter();
                  if (v92)
                  {
                    v93 = v92;
                    v94 = __DataStorage._offset.getter();
                    if (__OFSUB__(v90, v94))
                    {
                      goto LABEL_183;
                    }

                    v95 = (v90 - v94 + v93);
                  }

                  else
                  {
                    v95 = 0;
                  }

                  v110 = v91 - v90;
                  if (!__OFSUB__(v91, v90))
                  {
LABEL_154:
                    v111 = __DataStorage._length.getter();
                    if (v111 >= v110)
                    {
                      v109 = v110;
                    }

                    else
                    {
                      v109 = v111;
                    }

                    goto LABEL_157;
                  }

                  __break(1u);
LABEL_152:
                  v95 = 0;
                  goto LABEL_153;
                }

                goto LABEL_138;
              }

LABEL_144:
              v95 = 0;
              goto LABEL_145;
            }

LABEL_132:
            v126[0] = v82;
            LOWORD(v126[1]) = v83;
            BYTE2(v126[1]) = BYTE2(v83);
            BYTE3(v126[1]) = BYTE3(v83);
            BYTE4(v126[1]) = BYTE4(v83);
            BYTE5(v126[1]) = BYTE5(v83);
            sub_100069E2C(v14, v13);
            v98 = v126 + BYTE6(v83);
LABEL_139:
            sub_10008E434(v126, v98, v127);
            goto LABEL_161;
          }

LABEL_133:
          v99 = v14;
          v100 = v13;
          return sub_10006A178(v99, v100);
        }

        __break(1u);
LABEL_105:
        if (v72 == 2)
        {
          v80 = v71 + 16;
          v78 = *(v71 + 16);
          v79 = *(v80 + 8);
          v31 = __OFSUB__(v79, v78);
          v71 = v79 - v78;
          if (v31)
          {
            __break(1u);
            goto LABEL_109;
          }
        }

        else
        {
          v71 = 0;
        }

        goto LABEL_128;
      }
    }

    else if (BYTE14(v131) < v6)
    {
      goto LABEL_90;
    }

    if ((v125 & 1) != 0 && v13 <= 5u && ((1 << v13) & 0x27) != 0)
    {
      v53 = *(a4 + a1);
      v31 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v31)
      {
        goto LABEL_170;
      }

      *(a4 + a1) = v54;
    }

    v55 = v49;
    if (v49)
    {
      if (v49 == 2)
      {
        v56 = *(v14 + 16);
      }

      else
      {
        v56 = v14;
      }
    }

    else
    {
      v56 = 0;
    }

    a4 = v56 + 4;
    if (__OFADD__(v56, 4))
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
      goto LABEL_2;
    }

    if (v49)
    {
      if (v49 == 2)
      {
        v55 = *(v14 + 16);
      }

      else
      {
        v55 = v14;
      }
    }

    v57 = v55 + 4;
    if (__OFADD__(v55, 4))
    {
      goto LABEL_165;
    }

    if (__OFADD__(v57, v48))
    {
      goto LABEL_166;
    }

    if (v57 + v48 < a4)
    {
      goto LABEL_167;
    }

    sub_100069E2C(v14, a5);
    v58 = Data.subdata(in:)();
    v60 = v59;
    sub_10006A178(v14, a5);
    a5 = v122;
    v61 = *(v122 + 28);
    v62 = type metadata accessor for UUID();
    v63 = &v12[v61];
    v64 = v124;
    (*(*(v62 - 8) + 16))(v63, v124 + v121, v62);
    v65 = *(v64 + a1);
    *v12 = v13;
    v12[1] = a2;
    *(v12 + 1) = v58;
    *(v12 + 2) = v60;
    a4 = v64;
    *&v12[*(a5 + 32)] = v65;
    *&v12[*(a5 + 36)] = v64;

    sub_100257878(v12, v123);
    sub_10023BB10(v12);
    v66 = v131;
    sub_100069E2C(v131, *(&v131 + 1));
    sub_100084D68(v6, v66, *(&v66 + 1), &v128);
    v67 = v131;
    v131 = v128;
    sub_10006A178(v67, *(&v67 + 1));
  }

  if (__OFSUB__(DWORD1(v131), v131))
  {
    goto LABEL_169;
  }

  if (DWORD1(v131) - v131 >= 4)
  {
    goto LABEL_60;
  }

LABEL_94:
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v68, v69))
  {
    goto LABEL_129;
  }

  v70 = swift_slowAlloc();
  *v70 = 134217984;
  v71 = v131;
  v72 = *(&v131 + 1) >> 62;
  if ((*(&v131 + 1) >> 62) > 1)
  {
    goto LABEL_105;
  }

  if (v72)
  {
    LODWORD(v71) = DWORD1(v131) - v131;
    if (__OFSUB__(DWORD1(v131), v131))
    {
      goto LABEL_180;
    }

    v71 = v71;
  }

  else
  {
    v71 = BYTE14(v131);
  }

LABEL_128:
  *(v70 + 4) = v71;
  _os_log_impl(&_mh_execute_header, v68, v69, "Got partial data of size %ld < header size", v70, 0xCu);

LABEL_129:

  v13 = *(&v131 + 1);
  v14 = v131;
  if ((v125 & 1) == 0)
  {
    goto LABEL_133;
  }

  v129 = &type metadata for Data;
  v130 = &protocol witness table for Data;
  v128 = v131;
  v96 = sub_1000752B0(&v128, &type metadata for Data);
  v82 = *v96;
  v83 = v96[1];
  v97 = v83 >> 62;
  if ((v83 >> 62) > 1)
  {
    if (v97 == 2)
    {
      v90 = *(v82 + 16);
      v91 = *(v82 + 24);
      sub_100069E2C(v14, v13);
      v101 = __DataStorage._bytes.getter();
      if (!v101)
      {
        goto LABEL_152;
      }

      v102 = v101;
      v103 = __DataStorage._offset.getter();
      if (__OFSUB__(v90, v103))
      {
        goto LABEL_184;
      }

      v95 = (v90 - v103 + v102);
LABEL_153:
      v110 = v91 - v90;
      if (__OFSUB__(v91, v90))
      {
        goto LABEL_182;
      }

      goto LABEL_154;
    }

LABEL_138:
    memset(v126, 0, 14);
    sub_100069E2C(v14, v13);
    v98 = v126;
    goto LABEL_139;
  }

  if (!v97)
  {
    goto LABEL_132;
  }

  v104 = v82;
  v105 = v82 >> 32;
  a4 = v105 - v104;
  if (v105 < v104)
  {
    goto LABEL_181;
  }

  sub_100069E2C(v14, v13);
  v106 = __DataStorage._bytes.getter();
  if (!v106)
  {
    goto LABEL_144;
  }

  v88 = v106;
  v107 = __DataStorage._offset.getter();
  v82 = v104 - v107;
  if (__OFSUB__(v104, v107))
  {
    goto LABEL_185;
  }

LABEL_143:
  v95 = (v82 + v88);
LABEL_145:
  v108 = __DataStorage._length.getter();
  if (v108 >= a4)
  {
    v109 = a4;
  }

  else
  {
    v109 = v108;
  }

LABEL_157:
  v112 = &v95[v109];
  if (v95)
  {
    v113 = v112;
  }

  else
  {
    v113 = 0;
  }

  sub_10008E434(v95, v113, v127);
  a4 = v124;
LABEL_161:
  v114 = v127[0];
  v115 = v127[1];
  sub_1000752F4(&v128);
  v116 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v117 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v118 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *v116 = v114;
  v116[1] = v115;
  sub_10006A2D0(v117, v118);
LABEL_162:
  v100 = *(&v131 + 1);
  v99 = v131;
  return sub_10006A178(v99, v100);
}

uint64_t sub_10023DC24(char a1)
{
  LOBYTE(v1) = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      if (qword_100501D78 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v5 = off_10050B110;
    v8 = sub_1000CAAC4();
    v9 = v8 & 0xC000000000000001;
    v34[1] = v8;
    if ((v1 & 1) == 0)
    {
      break;
    }

    if (v9)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_10023E228(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v3 = v37;
      v1 = v38;
      v5 = v39;
      v10 = v40;
      v2 = v41;
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v1 = v8 + 56;
      v5 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v2 = v16 & *(v8 + 56);
      v10 = 0;
    }

    v34[0] = v5;
    v17 = (v5 + 64) >> 6;
    while (v3 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21 || (v35 = v21, type metadata accessor for Peer(0), swift_dynamicCast(), (v20 = v36) == 0))
      {
LABEL_31:
        v23 = v3;
        goto LABEL_50;
      }

LABEL_24:
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v5 = qword_10051B288;
      v22 = sub_1000E7974(v20);
      if (v22 != 2 && (v22 & 1) == 0)
      {
        if (qword_100501B98 != -1)
        {
          swift_once();
        }

        v5 = qword_10051B5F8;
        sub_100251228(v20);
      }
    }

    v18 = v10;
    v19 = v2;
    if (v2)
    {
LABEL_20:
      v2 = (v19 - 1) & v19;
      v20 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_31;
      }

      v19 = *(v1 + 8 * v10);
      ++v18;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  if (v9)
  {
    swift_unknownObjectRetain();
    v5 = __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_10023E228(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v3 = v37;
    v1 = v38;
    v11 = v39;
    v12 = v40;
    v13 = v41;
  }

  else
  {
    v24 = -1 << *(v8 + 32);
    v1 = v8 + 56;
    v11 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v13 = v26 & *(v8 + 56);
    v12 = 0;
  }

  v34[0] = v11;
  v2 = (v11 + 64) >> 6;
  while (v3 < 0)
  {
    v32 = __CocoaSet.Iterator.next()();
    if (!v32)
    {
      goto LABEL_49;
    }

    v35 = v32;
    type metadata accessor for Peer(0);
    swift_dynamicCast();
    v31 = v36;
    v29 = v12;
    v30 = v13;
    if (!v36)
    {
      goto LABEL_49;
    }

LABEL_46:
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    v5 = qword_10051B5F8;
    sub_100253124(v31);

    v12 = v29;
    v13 = v30;
  }

  v27 = v12;
  v28 = v13;
  v29 = v12;
  if (v13)
  {
LABEL_42:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v3 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_52;
    }

    if (v29 >= v2)
    {
      break;
    }

    v28 = *(v1 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_42;
    }
  }

LABEL_49:
  v23 = v3;
LABEL_50:
  sub_100093854(v23);
}

uint64_t sub_10023E228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10023E270(_BOOL8 a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    v7 = enum case for DispatchPredicate.onQueue(_:);
    v8 = *(v3 + 104);
    v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v9 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    v10 = *(v3 + 8);
    v10(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_10;
    }

    v65 = v9;
    v66 = v8;
    v67 = v7;
    v11 = [a1 appletIdentifier];
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v16 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
    v17 = v15;
    if (v14 >> 60 == 15)
    {
      if (v15 >> 60 != 15)
      {
        goto LABEL_7;
      }

      v64 = a1;
      sub_10006A2D0(v12, v14);
    }

    else
    {
      if (v15 >> 60 == 15)
      {
LABEL_7:
        sub_10006A2D0(v12, v14);
        return sub_10006A2D0(v16, v17);
      }

      v64 = a1;
      sub_100069E2C(v12, v14);
      sub_10006A2BC(v16, v17);
      a1 = sub_10008FB4C(v12, v14, v16, v17);
      sub_10006A2D0(v16, v17);
      sub_10006A2D0(v16, v17);
      sub_10006A178(v12, v14);
      result = sub_10006A2D0(v12, v14);
      if (!a1)
      {
        return result;
      }
    }

    if (qword_1005019E8 != -1)
    {
      goto LABEL_66;
    }

LABEL_10:
    v19 = sub_1000CAA04();
    v20 = v64;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v21 = __CocoaSet.count.getter();

      if (v21)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22 = v19[2];

      if (v22)
      {
        goto LABEL_27;
      }
    }

    if (qword_1005018F0 != -1)
    {
      swift_once();
    }

    v24 = v65;
    v23 = v66;
    *v5 = v65;
    v23(v5, v67, v2);
    v25 = v24;
    LOBYTE(v24) = _dispatchPreconditionTest(_:)();
    v10(v5, v2);
    if (v24)
    {
      if (qword_100501DA8 == -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_18:
    sub_10034682C(0);
    if (qword_100501928 != -1)
    {
      swift_once();
    }

    sub_1000BB4B4(0);
    v26 = sub_1000CAA04();
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = __CocoaSet.count.getter();

      if (v27)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = v26[2];

      if (v28)
      {
        goto LABEL_27;
      }
    }

    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100240A9C(0);
LABEL_27:
    v29 = [v20 blePairingRequest];
    if (v29)
    {

      v30 = [v20 bleUUID];
      if (v30)
      {
      }

      else
      {
        if (qword_100501908 != -1)
        {
          swift_once();
        }

        v31 = [v20 publicKeyIdentifier];
        v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        sub_1000A6DB8(v32, v34);
        sub_10006A178(v32, v34);
      }
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v20;
    v36 = qword_100501D78;
    v37 = v20;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = off_10050B110;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10023EC7C;
    *(v39 + 24) = v35;

    v40 = sub_1000CAAC4();

    v41 = sub_1000CA840(v40);

    if (v41)
    {
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E67E4(v41);
      if (qword_100501908 != -1)
      {
        swift_once();
      }

      sub_10009C71C((v41 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier));
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v42 = qword_10051B5B0;

      v43 = sub_10024F2B4(v42, v41);

      v44 = sub_1000CA828(v43);

      if (v44)
      {
        sub_100246878(v45, v46);
      }

      v68 = v41;
      v47 = v38[3];
      __chkstk_darwin(v45);
      *(&v64 - 2) = &v68;
      *(&v64 - 1) = v38;
      os_unfair_lock_lock((v47 + 32));
      sub_10023EC84((v47 + 16));
      os_unfair_lock_unlock((v47 + 32));
    }

    v48 = sub_1000CAAC4();
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    v5 = qword_10051B5F8;

    sub_100239364(v48, v5);
    v50 = v49;

    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v51 = sub_10022DA5C(v48);

    v52 = sub_1000E0348(v51);

    v55 = sub_100238B50(v50, v53, v54);

    v56 = (v55 & 0x100) != 0 ? -120 : v55;
    sub_1000F6564(0, v52, v56);

    v57 = [objc_opt_self() sessionManager];
    v58 = [v57 getActiveRKESessions];

    sub_10009393C(0, &qword_100507800, &off_1004BE548);
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v59 >> 62)
    {
      break;
    }

    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_68;
    }

LABEL_54:
    v2 = 0;
    v3 = v59 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v61 = *(v59 + 8 * v2 + 32);
      }

      v5 = v61;
      v62 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v63 = [v61 updateAllowlistedVehicles];

      ++v2;
      if (v62 == v60)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v60 = _CocoaArrayWrapper.endIndex.getter();
  if (v60)
  {
    goto LABEL_54;
  }

LABEL_68:

  return sub_10013E82C();
}

uint64_t sub_10023EC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023ECBC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100501B78 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = byte_10051B5B8;
  if ((byte_10051B5B8 & 1) == 0)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v3 + 16))(v5, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Alisha can't start because UWB is not supported on this device", v15, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v12;
}

unint64_t sub_10023EFC4()
{
  result = qword_100503608;
  if (!qword_100503608)
  {
    sub_10009393C(255, &qword_100503F00, SEEndPoint_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503608);
  }

  return result;
}

uint64_t sub_10023F064()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023F0B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023F0F4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4 = qword_10051B7F0;
  *v3 = qword_10051B7F0;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v5 = v4;
  LOBYTE(v4) = _dispatchPreconditionTest(_:)();
  v6 = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v6 = swift_once();
LABEL_5:
  v7 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (qword_100501D78 != -1)
  {
    v6 = swift_once();
  }

  v8 = *(off_10050B110 + 3);
  __chkstk_darwin(v6);
  *&v18[-16] = sub_100238CE8;
  *&v18[-8] = 0;
  os_unfair_lock_lock(v8 + 8);
  sub_10023F450(&v8[4], &v19);
  os_unfair_lock_unlock(v8 + 8);
  v9 = v19;
  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable);
  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  if (v12 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = v12;
  v15 = sub_1001C1BA4(result, v12);
  sub_10006A2D0(v13, v14);
  v16 = *(v15 + 24);

  v17 = *(v16 + 16);

  if (v7 == 10 || v7 == 5)
  {
    if (v9)
    {
      result = 3;
      if (v10)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    result = 1;
    if ((v10 & 1) == 0)
    {
LABEL_16:
      result |= 4uLL;
    }
  }

  else if (v9)
  {
    result = 2;
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = 0;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  if (v17)
  {
    return result | 8;
  }

  return result;
}

uint64_t sub_10023F488()
{
  v1 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

void sub_10023F5BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100256E78(a1, a2, a3, v3[2], v3[3], v3[4], v3 + v8, *v9, v9[8]);
}

uint64_t sub_10023F68C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023F700()
{
  sub_1000752F4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10023F758()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023F798()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10023F8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10023F974(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Peer(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10023FAC0(uint64_t a1)
{
  v5 = v1;
  v29 = a1 & 0xC000000000000001;
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
    v36 = _swiftEmptyArrayStorage;
    v8 = &v36;
    sub_10019F464(0, v7 & ~(v7 >> 63), 0);
    v31 = v36;
    if (v29)
    {
      v9 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v9 = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v33 = v9;
    v34 = v10;
    v35 = v29 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v28 = v7;
      while (v11 < v7)
      {
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          goto LABEL_38;
        }

        v30 = v13;
        v4 = v33;
        isUniquelyReferenced_nonNull_native = v34;
        v3 = v35;
        sub_10008EBB4(v33, v34, v35, a1);
        v8 = v14;
        v32[4] = v14;
        sub_100245EC8(v32);
        if (v5)
        {
          goto LABEL_43;
        }

        v15 = v31;
        v16 = v32[0];
        v36 = v31;
        v18 = v31[2];
        v17 = v31[3];
        if (v18 >= v17 >> 1)
        {
          v8 = &v36;
          sub_10019F464((v17 > 1), v18 + 1, 1);
          v15 = v36;
        }

        v15[2] = v18 + 1;
        v15[v18 + 4] = v16;
        v31 = v15;
        if (v29)
        {
          if (!v3)
          {
            goto LABEL_44;
          }

          v5 = 0;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          sub_100068FC4(&qword_100507CC8, &unk_1004101A0);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v8)(v32, 0);
        }

        else
        {
          if (v3)
          {
            goto LABEL_45;
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v5 = 0;
          v8 = (1 << *(a1 + 32));
          if (v4 >= v8)
          {
            goto LABEL_39;
          }

          v19 = v4 >> 6;
          v20 = *(a1 + 56 + 8 * (v4 >> 6));
          if (((v20 >> v4) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(a1 + 36) != isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_41;
          }

          v21 = v20 & (-2 << (v4 & 0x3F));
          if (v21)
          {
            v8 = (__clz(__rbit64(v21)) | v4 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v8 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1000937D4(v4, isUniquelyReferenced_nonNull_native, 0);
                v8 = (__clz(__rbit64(v25)) + v22);
                goto LABEL_34;
              }
            }

            sub_1000937D4(v4, isUniquelyReferenced_nonNull_native, 0);
          }

LABEL_34:
          v27 = *(a1 + 36);
          v33 = v8;
          v34 = v27;
          v35 = 0;
        }

        v7 = v28;
        v11 = v30;
        if (v30 == v28)
        {
          sub_1000937D4(v33, v34, v35);
          return;
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

    sub_1000937D4(v4, isUniquelyReferenced_nonNull_native, v3);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void *sub_10023FE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = *(a1 + 16);
  sub_10019F3C0(0, v1, 0);
  v3 = a1 + 56;
  v4 = _HashTable.startBucket.getter();
  v5 = v27;
  v6 = 0;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    v9 = 1 << v4;
    if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_26;
    }

    v10 = *(a1 + 36);
    v11 = *(*(a1 + 48) + 8 * v4);
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_30;
      }

      v12 = 0xE400000000000000;
      v13 = 1852799308;
    }

    else
    {
      v12 = 0xE600000000000000;
      v13 = 0x616873696C41;
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = v4;
      sub_10019F3C0((v14 > 1), v15 + 1, 1);
      v5 = v27;
      v10 = v25;
      v4 = v26;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v13;
    v16[5] = v12;
    v7 = 1 << *(a1 + 32);
    if (v4 >= v7)
    {
      goto LABEL_27;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v8);
    if ((v17 & v9) == 0)
    {
      goto LABEL_28;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (v4 & 0x3F));
    if (v18)
    {
      v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v8 << 6;
      v20 = v8 + 1;
      v21 = (a1 + 64 + 8 * v8);
      while (v20 < (v7 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1000937D4(v4, v10, 0);
          v7 = __clz(__rbit64(v22)) + v19;
          goto LABEL_23;
        }
      }

      sub_1000937D4(v4, v10, 0);
LABEL_23:
      v5 = v27;
    }

    ++v6;
    v4 = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1002400AC(Swift::UInt a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v12 = sub_1000D558C(v43, a1);
  swift_endAccess();
  if ((v12 & 1) == 0)
  {
    return;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44[0] = v16;
    *v15 = 136315138;
    v41 = v11;
    if (!a1)
    {
      v17 = 0xE600000000000000;
      v18 = 0x616873696C41;
LABEL_14:
      v22 = sub_1002FFA0C(v18, v17, v44);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "UWB power assertion added for %s", v15, 0xCu);
      sub_1000752F4(v16);

      v11 = v41;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v17 = 0xE400000000000000;
      v18 = 1852799308;
      goto LABEL_14;
    }

LABEL_22:
    v43[0] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

LABEL_15:
  sub_10024D320(a2, v44);
  swift_beginAccess();
  sub_1000C54CC(v44, a1);
  swift_endAccess();
  v23 = OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion;
  if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion))
  {
    return;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Powering on UWB", v26, 2u);
  }

  v27 = type metadata accessor for UWBPrewarmSession();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart];
  *v29 = sub_10024F2A8;
  *(v29 + 1) = v3;
  v30 = &v28[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate];
  *v30 = sub_10024F2BC;
  v30[1] = v3;
  v31 = &v28[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate];
  *v31 = sub_10024F2C4;
  v31[1] = v3;
  v32 = &v28[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation];
  *v32 = sub_10024F2C0;
  v32[1] = v3;
  v33 = objc_allocWithZone(NISession);
  swift_retain_n();
  v34 = [v33 init];
  *&v28[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] = v34;
  [v34 setDelegateQueue:v11];
  v42.receiver = v28;
  v42.super_class = v27;
  v35 = objc_msgSendSuper2(&v42, "init");
  v36 = OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session;
  v37 = *&v35[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session];
  v38 = v35;
  [v37 setDelegate:v38];
  v39 = [objc_allocWithZone(NISystemConfiguration) init];
  [v39 setPrewarmUWB:1];
  [v39 setPrewarmSecureElementChannel:1];
  [*&v35[v36] runWithConfiguration:v39];

  v19 = *(v3 + v23);
  *(v3 + v23) = v35;
LABEL_19:
}

void *sub_100240670(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (*(a1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) == 1)
    {
      swift_beginAccess();

      return a2(v11);
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Not running", v14, 2u);
      }

      return &_swiftEmptySetSingleton;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100240880(uint64_t (*a1)(id))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) == 1)
    {
      swift_beginAccess();

      return sub_10024CBFC(v10, a1);
    }

    else
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Not running", v13, 2u);
      }

      return &_swiftEmptySetSingleton;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100240A9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v43 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  (v11)(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
  {
    v15 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v15, v22, "Not running", v23, 2u);
LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v44 = a1;
  v42 = v11;
  v12 = OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion;
  if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion))
  {
    v11 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
    swift_beginAccess();
    sub_10010D998(v44);
    v14 = v13;
    swift_endAccess();
    if ((v14 & 1) == 0)
    {
      v41 = v12;
      a1 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
      swift_beginAccess();
      v24 = sub_10008C9C8(v44);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      v40 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v2 + a1);
      v45 = v27;
      *(v2 + a1) = 0x8000000000000000;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_14:
        sub_1000DD8CC(v40, v27);
        *(v2 + a1) = v27;
LABEL_15:
        swift_endAccess();
        v47 = 0;
        memset(v46, 0, sizeof(v46));
        swift_beginAccess();
        sub_1000C54CC(v46, v44);
        swift_endAccess();
        if (*(*&v11[v2] + 16))
        {
          return;
        }

        v28 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
        swift_beginAccess();
        *(v2 + v28) = &_swiftEmptySetSingleton;

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Powering off UWB", v31, 2u);
        }

        v32 = v41;
        v33 = *(v2 + v41);
        if (v33)
        {
          v34 = v43;
          *v7 = v43;
          v10(v7, v9, v4);
          v35 = v34;
          v36 = v33;
          v37 = _dispatchPreconditionTest(_:)();
          v42(v7, v4);
          if ((v37 & 1) == 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          [*&v36[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] invalidate];

          v38 = *(v2 + v32);
        }

        else
        {
          v38 = 0;
        }

        *(v2 + v32) = 0;

        return;
      }

LABEL_30:
      sub_1003111C0();
      v27 = v45;
      goto LABEL_14;
    }
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v46[0] = v18;
    *v17 = 136315138;
    v19 = v44;
    if (!v44)
    {
      v20 = 0xE600000000000000;
      v21 = 0x616873696C41;
LABEL_23:
      v39 = sub_1002FFA0C(v21, v20, v46);

      *(v17 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v15, v16, "UWB is not powered on for %s", v17, 0xCu);
      sub_1000752F4(v18);

      goto LABEL_24;
    }

    if (v44 == 1)
    {
      v20 = 0xE400000000000000;
      v21 = 1852799308;
      goto LABEL_23;
    }

LABEL_32:
    v45 = v19;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

LABEL_25:
}

void sub_100240FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v4 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    v15 = *(v4 + OBJC_IVAR____TtC10seserviced10UWBSession_session);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = swift_allocObject();
    v18 = v24;
    *(v17 + 16) = v23;
    *(v17 + 24) = v18;
    aBlock[4] = sub_10024D92C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100247C20;
    aBlock[3] = &unk_1004CCC88;
    v19 = _Block_copy(aBlock);

    [v15 processDCKMessage:isa responseCallback:v19];
    _Block_release(v19);

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v6 + 16))(v8, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v5);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Session is not running", v22, 2u);
  }

  (*(v6 + 8))(v8, v5);
}

void sub_1002413A0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v4;
  LODWORD(v7) = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v12, v9);
    if ((v13 & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Not running", v19, 2u);
      }

      sub_100079E24();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      return;
    }

    v52 = a3;
    v53 = v5;
    v59 = a1;
    v57 = v7;
    v15 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v54 = v3;
    v51[1] = v15;
    v56 = *(v3 + v15);
    if ((v56 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v16, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v7 = v61;
      a3 = v62;
      v3 = v63;
      v12 = v64;
      v5 = v65;
    }

    else
    {
      v21 = -1 << *(v56 + 32);
      a3 = v56 + 56;
      v3 = ~v21;
      v22 = -v21;
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v5 = v23 & *(v56 + 56);
      v7 = v56;
      swift_bridgeObjectRetain_n();
      v12 = 0;
    }

    v55 = v3;
    v10 = (v3 + 64) >> 6;
    if (v7 < 0)
    {
      break;
    }

LABEL_14:
    v24 = v12;
    v25 = v5;
    v9 = v12;
    if (v5)
    {
LABEL_18:
      a1 = (v25 - 1) & v25;
      v26 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v25)))));
      if (v26)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v9 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        goto LABEL_25;
      }

      v25 = *(a3 + 8 * v9);
      v24 = (v24 + 1);
      if (v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  while (1)
  {
    v27 = __CocoaSet.Iterator.next()();
    if (!v27)
    {
      break;
    }

    v66 = v27;
    type metadata accessor for UWBSession();
    swift_dynamicCast();
    v26 = v60[0];
    v9 = v12;
    a1 = v5;
    if (!v60[0])
    {
      break;
    }

LABEL_22:
    v58 = v5;
    v3 = *&v26[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

    v28 = static UUID.== infix(_:_:)();

    if (v28)
    {
      sub_100093854(v7);

      type metadata accessor for UWBAlishaSession();
      v41 = v26;
      if (!swift_dynamicCastClass())
      {

        goto LABEL_26;
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60[0] = v45;
        *v44 = 136315138;
        v46 = UUID.uuidString.getter();
        v48 = sub_1002FFA0C(v46, v47, v60);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "UWB Alisha session already exists for %s", v44, 0xCu);
        sub_1000752F4(v45);
      }

      sub_100245B84(v57, v49);
      sub_10024CEA4();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();

      return;
    }

    v12 = v9;
    v5 = a1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  sub_100093854(v7);

LABEL_26:

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60[0] = v32;
    *v31 = 136315394;
    v33 = UUID.uuidString.getter();
    v35 = sub_1002FFA0C(v33, v34, v60);

    *(v31 + 4) = v35;
    *(v31 + 12) = 512;
    v36 = v57;
    *(v31 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v29, v30, "Starting new UWB Alisha session for %s version %hu", v31, 0x10u);
    sub_1000752F4(v32);
  }

  else
  {

    v36 = v57;
  }

  sub_1000BC094(v52, v60);
  v37 = objc_allocWithZone(type metadata accessor for UWBAlishaSession());

  v39 = sub_100246DB8(v38, v36, v60);
  swift_beginAccess();
  v40 = v39;
  sub_1000D6B6C(&v66, v40);
  swift_endAccess();
}

id sub_100241AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v16 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  if (v3[OBJC_IVAR____TtC10seserviced10UWBSession_state] == 4)
  {
    return [*&v3[OBJC_IVAR____TtC10seserviced10UWBSession_session] suspendAcwgRanging:a1 withSuspendTriggerReason:a2];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v7 + 16))(v9, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v6);
  v18 = v3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    v26[7] = v3[v16];
    v23 = String.init<A>(describing:)();
    v25 = sub_1002FFA0C(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "UWB session is in %s, not suspending ranging", v21, 0xCu);
    sub_1000752F4(v22);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_100241E60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) != 1)
  {

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  (*(v4 + 16))(v6, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Session is invalidated, not deleting URSK", v15, 2u);
  }

  (*(v4 + 8))(v6, v3);
}

id sub_100242140(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v19 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    return [*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_session) processAcwgM1Msg:v19 withSessionTriggerReason:v20];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v4 + 16))(v6, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Session is not running", v16, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_100079E24();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

id sub_100242464(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    return [*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_session) processAcwgM3Msg:v19];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v4 + 16))(v6, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Session is not running", v16, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_100079E24();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

id sub_10024277C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v27 = type metadata accessor for Logger();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v11 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  if (v3[OBJC_IVAR____TtC10seserviced10UWBSession_state] == 4)
  {
    return [*&v3[OBJC_IVAR____TtC10seserviced10UWBSession_session] processAcwgRangingSessionResumeRequestMsg:a1 withResumeTriggerReason:v26];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v15 = v27;
  (*(v5 + 16))(v7, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v27);
  v16 = v3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    v28 = *(v11 + v3);
    v21 = String.init<A>(describing:)();
    v23 = sub_1002FFA0C(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "UWB session is in %s, not requesting resume ranging", v19, 0xCu);
    sub_1000752F4(v20);
  }

  (*(v5 + 8))(v7, v15);
  sub_100079E24();
  swift_allocError();
  *v24 = 0;
  return swift_willThrow();
}

NSObject *sub_100242B18(void *a1, unsigned int a2, uint64_t a3)
{
  v5 = v4;
  v60 = a3;
  v61 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    result = (*(v8 + 8))(v10, v7);
    if ((v13 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      break;
    }

    v72 = a1;
    v57[2] = v5;
    v7 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v59 = v3;
    v57[1] = v7;
    v58 = *(v7 + v3);
    if ((v58 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v7 = __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v15, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v16 = v67;
      v62 = v68;
      v3 = v69;
      v5 = v70;
      a1 = v71;
    }

    else
    {
      v21 = -1 << *(v58 + 32);
      v22 = *(v58 + 56);
      v62 = v58 + 56;
      v3 = ~v21;
      v23 = -v21;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      a1 = (v24 & v22);
      v16 = v58;
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v57[3] = v3;
    v8 = (v3 + 64) >> 6;
    while (1)
    {
      if (v16 < 0)
      {
        v27 = __CocoaSet.Iterator.next()();
        if (!v27 || (v63[0] = v27, type metadata accessor for UWBSession(), swift_dynamicCast(), v3 = v66[0], v7 = a1, !v66[0]))
        {
LABEL_28:
          sub_100093854(v16);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v66[0] = v38;
            *v37 = 136315138;
            v39 = UUID.uuidString.getter();
            v41 = sub_1002FFA0C(v39, v40, v66);

            *(v37 + 4) = v41;
            _os_log_impl(&_mh_execute_header, v35, v36, "Starting new UWB Lyon session for %s", v37, 0xCu);
            sub_1000752F4(v38);
          }

          sub_1000BC094(v60, v66);
          v42 = sub_10024CE54(v66, v66[3]);
          v43 = __chkstk_darwin(v42);
          v45 = (v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v46 + 16))(v45, v43);
          v47 = *v45;
          v64 = type metadata accessor for LyonUWB(0);
          v65 = &off_1004C6C48;
          v63[0] = v47;
          v48 = objc_allocWithZone(type metadata accessor for UWBLyonSession());
          v49 = sub_10024CE54(v63, v64);
          v50 = __chkstk_darwin(v49);
          v52 = (v57 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v53 + 16))(v52, v50);
          v54 = *v52;

          v56 = sub_10024B570(v55, v61, v54, v48);
          sub_1000752F4(v63);
          sub_1000752F4(v66);
          swift_beginAccess();
          v17 = v56;
          sub_1000D6B6C(v63, v17);
          swift_endAccess();

          return v17;
        }

        goto LABEL_24;
      }

      v25 = v5;
      v26 = a1;
      if (!a1)
      {
        break;
      }

LABEL_20:
      v7 = ((v26 - 1) & v26);
      v3 = *(*(v16 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v3)
      {
        goto LABEL_28;
      }

LABEL_24:
      v10 = a1;

      v28 = static UUID.== infix(_:_:)();

      a1 = v7;

      if (v28)
      {
        sub_100093854(v16);

        v17 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v17, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v66[0] = v31;
          *v30 = 136315138;
          v32 = UUID.uuidString.getter();
          v34 = sub_1002FFA0C(v32, v33, v66);

          *(v30 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v17, v29, "UWB Lyon session for %s already exists", v30, 0xCu);
          sub_1000752F4(v31);
        }

        sub_10024CEA4();
        goto LABEL_9;
      }
    }

    while (1)
    {
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_28;
      }

      v26 = *(v62 + 8 * v5);
      ++v25;
      if (v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Not running", v19, 2u);
  }

  sub_100079E24();
LABEL_9:
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return v17;
}