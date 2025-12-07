uint64_t sub_1004DC1C0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_10000FF90(v0, v6, &qword_10097A7F0, &unk_1007FB600);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
LABEL_5:
    sub_100005508(v15, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v16 = v6;
  v17 = *(v8 + 32);
  v17(v13, v16, v7);
  v18 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v18 + 68), v4, &qword_10097A7F0, &unk_1007FB600);
  if (v14(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v15 = v4;
    goto LABEL_5;
  }

  v17(v11, v4, v7);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v13, v7);
  return v21;
}

uint64_t sub_1004DC470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1004D6D00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1004DC544(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = __chkstk_darwin(v4 - 8);
  v283 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v285 = &v277 - v8;
  v9 = __chkstk_darwin(v7);
  v280 = &v277 - v10;
  __chkstk_darwin(v9);
  v282 = &v277 - v11;
  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v13 = __chkstk_darwin(v12 - 8);
  v286 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v277 - v15;
  v17 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v293 = *(v17 - 1);
  v294 = v17;
  __chkstk_darwin(v17);
  v19 = &v277 - v18;
  v20 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v288 = *(v20 - 8);
  v289 = v20;
  __chkstk_darwin(v20);
  v287 = &v277 - v21;
  v22 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v277 - v23;
  v25 = type metadata accessor for UUID();
  v298 = *(v25 - 8);
  v299 = v25;
  v26 = __chkstk_darwin(v25);
  v281 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v297 = &v277 - v28;
  v29 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v29 - 8);
  v295 = &v277 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316[3] = type metadata accessor for SDAuthenticationPairingLockSession(0);
  v316[4] = &off_1008E5AB0;
  v316[0] = a1;
  v35 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v34 = v35;
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v300 = a1;
  v36 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v34, v31);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v37 = type metadata accessor for Logger();
  v38 = sub_10000C4AC(v37, qword_1009895D8);
  sub_1002A9938(v316, v313);
  v296 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v292 = v24;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v306 = v43;
    *v42 = 136315138;
    sub_1002A9938(v313, &v309);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_10000C60C(v313);
    v47 = sub_10000C4E4(v44, v46, &v306);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session did complete: %s", v42, 0xCu);
    sub_10000C60C(v43);
  }

  else
  {

    sub_10000C60C(v313);
  }

  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v49 = v300;
  swift_beginAccess();
  sub_10000FF90(v49 + v48, v313, &qword_100982080, &unk_1007FDD30);
  v50 = v314;
  if (v314)
  {
    v51 = v315;
    sub_10002CDC0(v313, v314);
    v52 = (*(v51 + 8))(v50, v51);
    v54 = v53;
    sub_10000C60C(v313);
    if (v54)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {

        sub_100344E30(v52, v54);
      }
    }
  }

  else
  {
    sub_100005508(v313, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v316, &v309);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v55 = swift_dynamicCast();
  v291 = v48;
  if (v55)
  {
    v56 = sub_1000121F8(&v306, v313);
    __chkstk_darwin(v56);
    *(&v277 - 2) = v313;
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v58 = sub_10045D8D4(sub_1004E5A9C, (&v277 - 4));
    v59 = *(*&a2[v57] + 16);
    v60 = v299;
    if (v59 >= v58)
    {
      sub_10057ED58(v58, v59);
      swift_endAccess();
      v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v62 = swift_beginAccess();
      v63 = *&a2[v61];
      __chkstk_darwin(v62);
      *(&v277 - 2) = v313;

      v64 = sub_1002D8B74(sub_1004E5A9C, (&v277 - 4), v63);
      v66 = v65;
      v290 = 0;

      if (v66)
      {
LABEL_22:
        v73 = type metadata accessor for TaskPriority();
        v74 = v295;
        (*(*(v73 - 8) + 56))(v295, 1, 1, v73);
        sub_1002A9938(v316, &v309);
        v75 = swift_allocObject();
        v75[2] = 0;
        v75[3] = 0;
        v75[4] = a2;
        sub_1000121F8(&v309, (v75 + 5));
        a2;
        sub_1002B3098(0, 0, v74, &unk_100807160, v75);

        v77 = v314;
        v76 = v315;
        sub_10002CDC0(v313, v314);
        (*(*(v76 + 8) + 88))(v77);
        v79 = v314;
        v78 = v315;
        sub_10002CDC0(v313, v314);
        v80 = v297;
        (*(*(v78 + 8) + 32))(v79);
        sub_100695FD8(v80, 0, 0);
        (*(v298 + 8))(v80, v60);
        sub_10000C60C(v313);
        v81 = v300;
        goto LABEL_90;
      }

      if ((v64 & 0x8000000000000000) == 0)
      {
        v67 = *&a2[v61];
        if (v64 < *(v67 + 16))
        {
          sub_1002A9938(v67 + 40 * v64 + 32, &v309);
          v69 = v311;
          v68 = v312;
          sub_10002CDC0(&v309, v311);
          if ((*(*(*(v68 + 8) + 8) + 40))(v69) == 1)
          {
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&_mh_execute_header, v70, v71, "Posting authenticated notification", v72, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v64, &v306);
          swift_endAccess();
          sub_10000C60C(&v306);
          sub_10000C60C(&v309);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v308 = 0;
  v306 = 0u;
  v307 = 0u;
  sub_100005508(&v306, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v316, &v309);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v308 = 0;
    v306 = 0u;
    v307 = 0u;
    sub_100005508(&v306, &qword_100980B20, &qword_100807110);
    v290 = 0;
    v60 = v299;
    v81 = v300;
    goto LABEL_90;
  }

  v82 = sub_1000121F8(&v306, v313);
  __chkstk_darwin(v82);
  *(&v277 - 2) = v313;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v84 = sub_10045D5D4(sub_1004E5A9C, (&v277 - 4));
  v85 = *(*&a2[v83] + 16);
  if (v85 < v84)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v277 - 2) = v313;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v88 = sub_10045D628(sub_1004E5A9C, (&v277 - 4));
  v89 = *(*&a2[v87] + 16);
  if (v89 < v88)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v278 = v16;
  v290 = 0;
  sub_10057EE90(v88, v89);
  swift_endAccess();
  v91 = v314;
  v90 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v90 + 8) + 88))(v91);
  v92 = type metadata accessor for TaskPriority();
  v93 = v295;
  (*(*(v92 - 8) + 56))(v295, 1, 1, v92);
  sub_1002A9938(v316, &v309);
  v94 = swift_allocObject();
  v94[2] = 0;
  v94[3] = 0;
  v94[4] = a2;
  sub_1000121F8(&v309, (v94 + 5));
  v95 = a2;
  sub_1002B3098(0, 0, v93, &unk_100807158, v94);

  v97 = v314;
  v96 = v315;
  sub_10002CDC0(v313, v314);
  if ((*(*(v96 + 8) + 40))(v97) == 5)
  {
    sub_10069579C();
  }

  (v293[2])(v19, &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v294);
  v81 = v300;
  v295 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v98 = *(v300 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v100 = v314;
  v99 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v99 + 8) + 64))(&v309, v100);
  v101 = v311;
  if (!v311)
  {
    sub_100005508(&v309, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v105 = 0xE90000000000003ELL;
    v103 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v102 = v312;
  sub_10002CDC0(&v309, v311);
  v103 = (*(v102 + 8))(v101, v102);
  v105 = v104;
  sub_10000C60C(&v309);
  if (!v105)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v309 = v98;
  *(&v309 + 1) = v103;
  v310 = v105;
  LOBYTE(v311) = 0;
  v106 = v287;
  v107 = v294;
  AsyncStream.Continuation.yield(_:)();
  (v293[1])(v19, v107);
  (*(v288 + 8))(v106, v289);
  v109 = v314;
  v108 = v315;
  sub_10002CDC0(v313, v314);
  v110 = (*(*(v108 + 8) + 40))(v109);
  v60 = v299;
  v279 = v95;
  if (v110 != 8)
  {
    v112 = v314;
    v111 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v111 + 8) + 40))(v112) != 5)
    {
LABEL_60:
      v172 = v314;
      v171 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v171 + 8) + 40))(v172) == 8)
      {
        if ((sub_1004FE8E0(*&v295[v81]) & 1) == 0)
        {
          v173 = v314;
          v174 = v315;
          sub_10002CDC0(v313, v314);
          if (((*(v174 + 16))(v173, v174) & 1) != 0 || (v175 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v176 = v282, sub_10000FF90(&v95[v175], v282, &unk_100976120, &qword_1007F9260), LODWORD(v175) = (*(v298 + 48))(v176, 1, v60), sub_100005508(v176, &unk_100976120, &qword_1007F9260), v175 != 1))
          {
            sub_1002A9938(v313, &v309);
            v183 = v95;
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 67109376;
              v187 = v311;
              v188 = v312;
              sub_10002CDC0(&v309, v311);
              v189 = (*(v188 + 16))(v187, v188) & 1;
              sub_10000C60C(&v309);
              *(v186 + 4) = v189;
              *(v186 + 8) = 1024;
              v190 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v191 = a2;
              v192 = v81;
              v193 = v280;
              sub_10000FF90(&v183[v190], v280, &unk_100976120, &qword_1007F9260);
              v194 = v298;
              LODWORD(v190) = (*(v298 + 48))(v193, 1, v299) != 1;
              v195 = v193;
              v81 = v192;
              a2 = v191;
              sub_100005508(v195, &unk_100976120, &qword_1007F9260);
              *(v186 + 10) = v190;

              _os_log_impl(&_mh_execute_header, v184, v185, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v186, 0xEu);
              v60 = v299;
            }

            else
            {
              sub_10000C60C(&v309);

              v194 = v298;
            }

            sub_1006D05EC();
            v196 = *(v194 + 56);
            v197 = v285;
            v196(v285, 1, 1, v60);
            v198 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v197, &v183[v198], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v295[v81]))
        {
          v177 = v95;
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *&v309 = v181;
            *v180 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v182 = 1;
            }

            else
            {
              v182 = 0;
            }

            *(v180 + 4) = v182;

            *(v180 + 8) = 2080;
            v200 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v201 = v298;
            v202 = v299;
            if ((*(v298 + 48))(&v177[v200], 1, v299))
            {
              v203 = 7104878;
              v204 = 0xE300000000000000;
            }

            else
            {
              v205 = *(v201 + 16);
              v295 = v181;
              v206 = v297;
              v205(v297, &v177[v200], v202);
              v294 = UUID.uuidString.getter();
              v204 = v207;
              v208 = v206;
              v181 = v295;
              (*(v201 + 8))(v208, v202);
              v203 = v294;
            }

            v209 = sub_10000C4E4(v203, v204, &v309);

            *(v180 + 10) = v209;
            _os_log_impl(&_mh_execute_header, v178, v179, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v180, 0x12u);
            sub_10000C60C(v181);

            v81 = v300;
            v199 = v283;
          }

          else
          {

            v199 = v283;
          }

          v210 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v177[v210], v199, &unk_100976120, &qword_1007F9260);
          v211 = v298;
          v60 = v299;
          v212 = *(v298 + 48);
          if ((v212)(v199, 1, v299) == 1)
          {
            sub_100005508(v199, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v295 = v212;
            v213 = v281;
            (*(v211 + 32))(v281, v199, v60);
            v214 = v285;
            (*(v211 + 56))(v285, 1, 1, v60);
            swift_beginAccess();
            sub_10000C788(v214, &v177[v210], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v215 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v213, v215, v216);
              swift_unknownObjectRelease();

              (*(v211 + 8))(v213, v60);
            }

            else
            {
              v217 = v177;
              v218 = Logger.logObject.getter();
              v219 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v218, v219))
              {
                LODWORD(v294) = v219;
                v220 = swift_slowAlloc();
                v293 = swift_slowAlloc();
                *&v306 = v293;
                *v220 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v221 = 1;
                }

                else
                {
                  v221 = 0;
                }

                v265 = v218;
                *(v220 + 4) = v221;

                *(v220 + 8) = 2080;
                v266 = v299;
                v267 = (v295)(&v177[v210], 1, v299);
                v81 = v300;
                if (v267)
                {
                  v268 = 7104878;
                  v269 = 0xE300000000000000;
                  v270 = v298;
                }

                else
                {
                  v271 = v297;
                  v272 = &v177[v210];
                  v270 = v298;
                  (*(v298 + 16))(v297, v272, v266);
                  v273 = UUID.uuidString.getter();
                  v269 = v274;
                  (*(v270 + 8))(v271, v266);
                  v268 = v273;
                }

                v275 = v281;
                v276 = sub_10000C4E4(v268, v269, &v306);

                *(v220 + 10) = v276;
                _os_log_impl(&_mh_execute_header, v265, v294, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v220, 0x12u);
                sub_10000C60C(v293);

                (*(v270 + 8))(v275, v266);
                v60 = v266;
                goto LABEL_87;
              }

              (*(v298 + 8))(v281, v60);
            }

            v81 = v300;
          }
        }
      }

LABEL_87:
      v223 = v314;
      v222 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v222 + 8) + 40))(v223) != 8)
      {
        v225 = v314;
        v224 = v315;
        sub_10002CDC0(v313, v314);
        v226 = v297;
        (*(*(v224 + 8) + 32))(v225);
        sub_100695FD8(v226, 0, 0);
        (*(v298 + 8))(v226, v60);
      }

      sub_10000C60C(v313);
LABEL_90:
      v227 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v228 = *(v81 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v229 = SFDeviceClassCodeGet();
      v230 = sub_100027628(v228);
      v231 = sub_10000EF9C(8u, v230);

      if (v231)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v316, v313);
          v232 = Logger.logObject.getter();
          v233 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            v299 = v234;
            v300 = swift_slowAlloc();
            v305 = v300;
            *v234 = 136315138;
            v235 = sub_10002CDC0(v313, v314);
            v236 = v60;
            v237 = v297;
            v238 = v298;
            (*(v298 + 16))(v297, *v235 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v236);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v239 = v81;
            v240 = dispatch thunk of CustomStringConvertible.description.getter();
            v242 = v241;
            (*(v238 + 8))(v237, v236);
            sub_10000C60C(v313);
            v243 = v240;
            v81 = v239;
            v244 = sub_10000C4E4(v243, v242, &v305);

            v245 = v299;
            *(v299 + 1) = v244;
            _os_log_impl(&_mh_execute_header, v232, v233, "Removing session %s record", v245, 0xCu);
            sub_10000C60C(v300);
          }

          else
          {

            sub_10000C60C(v313);
          }

          v262 = v292;
          v263 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v81 + v263, v262);
          swift_endAccess();
          v260 = &qword_100976308;
          v261 = &unk_1007F94E0;
          v259 = v262;
          goto LABEL_98;
        }
      }

      else
      {
        v246 = sub_100027628(v228);
        v247 = sub_10000EF9C(v229, v246);

        if (!v247)
        {
          goto LABEL_92;
        }
      }

      v248 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v249 = sub_1004FE08C(*(v81 + v227));
      sub_10000FF90(v81 + v291, v313, &qword_100982080, &unk_1007FDD30);
      v250 = sub_1005CCA8C(v249, v313);
      v252 = v251;
      v253 = swift_getObjectType();
      v254 = (*(v252 + 56))(v253, v252);
      v255 = *(v248 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v256 = __chkstk_darwin(v254);
      *(&v277 - 4) = v250;
      *(&v277 - 3) = v252;
      *(&v277 - 2) = v313;
      *(&v277 - 1) = v248;
      __chkstk_darwin(v256);
      *(&v277 - 2) = sub_100465400;
      *(&v277 - 1) = v257;
      os_unfair_lock_lock(v255 + 4);
      sub_1003206A8(v258);
      os_unfair_lock_unlock(v255 + 4);
      swift_unknownObjectRelease();
      v259 = v313;
      v260 = &qword_100982080;
      v261 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v259, v260, v261);
      return sub_10000C60C(v316);
    }
  }

  v114 = v314;
  v113 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v113 + 8) + 64))(&v306, v114);
  if (!*(&v307 + 1))
  {
    sub_100005508(&v306, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v316, &v309);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      *&v306 = v294;
      *v145 = 136315138;
      v146 = sub_10002CDC0(&v309, v311);
      v147 = v298;
      v148 = v81;
      v149 = v297;
      (*(v298 + 16))(v297, *v146 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v299);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      v153 = v149;
      v81 = v148;
      (*(v147 + 8))(v153, v299);
      sub_10000C60C(&v309);
      v154 = sub_10000C4E4(v150, v152, &v306);

      *(v145 + 4) = v154;
      _os_log_impl(&_mh_execute_header, v143, v144, "No peer device for session: %s", v145, 0xCu);
      sub_10000C60C(v294);
      v60 = v299;

      v95 = v279;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v309);
LABEL_58:
    v165 = v314;
    v164 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v164 + 8) + 40))(v165) == 5)
    {
      v166 = v286;
      Date.init()();
      v167 = type metadata accessor for Date();
      (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
      v168 = &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v169 = *(v168 + 24);
      v170 = *(v168 + 32);
      sub_10002F5B4(v168, v169);
      (*(v170 + 16))(v166, v169, v170);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v306, &v309);
  v115 = v311;
  v116 = v312;
  sub_10002CDC0(&v309, v311);
  v117 = (*(v116 + 8))(v115, v116);
  if (!v118)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v117, v118);

  v119 = v311;
  v120 = v312;
  sub_10002CDC0(&v309, v311);
  v121 = (*(v120 + 8))(v119, v120);
  if (!v122)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v123 = v121;
  v124 = v122;
  swift_beginAccess();
  v125 = sub_10056CE1C(&v306, v123, v124);
  v127 = v126;
  v128 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v128 - 8) + 48))(v127, 1, v128))
  {
    *(v127 + *(v128 + 20)) = 0;
  }

  (v125)(&v306, 0);
  swift_endAccess();

  sub_1002A9938(&v309, &v306);
  sub_1002A9938(&v309, v301);
  v95 = v279;
  v129 = v279;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v130, v131))
  {

    sub_10000C60C(v301);
    sub_10000C60C(&v306);
    v81 = v300;
    goto LABEL_57;
  }

  v132 = swift_slowAlloc();
  v294 = swift_slowAlloc();
  v304[0] = v294;
  *v132 = 136315394;
  v134 = *(&v307 + 1);
  v133 = v308;
  sub_10002CDC0(&v306, *(&v307 + 1));
  v135 = (*(v133 + 8))(v134, v133);
  v137 = v136;

  if (v137)
  {
    v138 = v278;
    sub_10069F7E4(v135, v137, v278);

    v139 = type metadata accessor for Date();
    v140 = *(v139 - 8);
    if ((*(v140 + 48))(v138, 1, v139) == 1)
    {
      v141 = 0x676E697373696D3CLL;
      sub_100005508(v138, &qword_10097A7F0, &unk_1007FB600);
      v142 = 0xE90000000000003ELL;
    }

    else
    {
      v141 = Date.description.getter();
      v142 = v155;
      (*(v140 + 8))(v138, v139);
    }

    v81 = v300;
    sub_10000C60C(&v306);
    v156 = sub_10000C4E4(v141, v142, v304);

    *(v132 + 4) = v156;
    *(v132 + 12) = 2080;
    v157 = v302;
    v158 = v303;
    sub_10002CDC0(v301, v302);
    v159 = (*(v158 + 8))(v157, v158);
    if (v160)
    {
      v161 = v159;
    }

    else
    {
      v161 = 0xD000000000000015;
    }

    if (v160)
    {
      v162 = v160;
    }

    else
    {
      v162 = 0x8000000100789F30;
    }

    sub_10000C60C(v301);
    v163 = sub_10000C4E4(v161, v162, v304);

    *(v132 + 14) = v163;
    _os_log_impl(&_mh_execute_header, v130, v131, "Recording last registration date as %s for device: %s", v132, 0x16u);
    swift_arrayDestroy();

    v60 = v299;
    v95 = v279;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v301);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004DE8AC(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = __chkstk_darwin(v4 - 8);
  v283 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v285 = &v277 - v8;
  v9 = __chkstk_darwin(v7);
  v280 = &v277 - v10;
  __chkstk_darwin(v9);
  v282 = &v277 - v11;
  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v13 = __chkstk_darwin(v12 - 8);
  v286 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v277 - v15;
  v17 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v293 = *(v17 - 1);
  v294 = v17;
  __chkstk_darwin(v17);
  v19 = &v277 - v18;
  v20 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v288 = *(v20 - 8);
  v289 = v20;
  __chkstk_darwin(v20);
  v287 = &v277 - v21;
  v22 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v277 - v23;
  v25 = type metadata accessor for UUID();
  v298 = *(v25 - 8);
  v299 = v25;
  v26 = __chkstk_darwin(v25);
  v281 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v297 = &v277 - v28;
  v29 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v29 - 8);
  v295 = &v277 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316[3] = type metadata accessor for SDAuthenticationKeySession(0);
  v316[4] = &off_1008E5AB0;
  v316[0] = a1;
  v35 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v34 = v35;
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v300 = a1;
  v36 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v34, v31);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v37 = type metadata accessor for Logger();
  v38 = sub_10000C4AC(v37, qword_1009895D8);
  sub_1002A9938(v316, v313);
  v296 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v292 = v24;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v306 = v43;
    *v42 = 136315138;
    sub_1002A9938(v313, &v309);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_10000C60C(v313);
    v47 = sub_10000C4E4(v44, v46, &v306);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session did complete: %s", v42, 0xCu);
    sub_10000C60C(v43);
  }

  else
  {

    sub_10000C60C(v313);
  }

  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v49 = v300;
  swift_beginAccess();
  sub_10000FF90(v49 + v48, v313, &qword_100982080, &unk_1007FDD30);
  v50 = v314;
  if (v314)
  {
    v51 = v315;
    sub_10002CDC0(v313, v314);
    v52 = (*(v51 + 8))(v50, v51);
    v54 = v53;
    sub_10000C60C(v313);
    if (v54)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {

        sub_100344E30(v52, v54);
      }
    }
  }

  else
  {
    sub_100005508(v313, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v316, &v309);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v55 = swift_dynamicCast();
  v291 = v48;
  if (v55)
  {
    v56 = sub_1000121F8(&v306, v313);
    __chkstk_darwin(v56);
    *(&v277 - 2) = v313;
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v58 = sub_10045D8D4(sub_1004E5A9C, (&v277 - 4));
    v59 = *(*&a2[v57] + 16);
    v60 = v299;
    if (v59 >= v58)
    {
      sub_10057ED58(v58, v59);
      swift_endAccess();
      v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v62 = swift_beginAccess();
      v63 = *&a2[v61];
      __chkstk_darwin(v62);
      *(&v277 - 2) = v313;

      v64 = sub_1002D8B74(sub_1004E5A9C, (&v277 - 4), v63);
      v66 = v65;
      v290 = 0;

      if (v66)
      {
LABEL_22:
        v73 = type metadata accessor for TaskPriority();
        v74 = v295;
        (*(*(v73 - 8) + 56))(v295, 1, 1, v73);
        sub_1002A9938(v316, &v309);
        v75 = swift_allocObject();
        v75[2] = 0;
        v75[3] = 0;
        v75[4] = a2;
        sub_1000121F8(&v309, (v75 + 5));
        a2;
        sub_1002B3098(0, 0, v74, &unk_100807170, v75);

        v77 = v314;
        v76 = v315;
        sub_10002CDC0(v313, v314);
        (*(*(v76 + 8) + 88))(v77);
        v79 = v314;
        v78 = v315;
        sub_10002CDC0(v313, v314);
        v80 = v297;
        (*(*(v78 + 8) + 32))(v79);
        sub_100695FD8(v80, 0, 0);
        (*(v298 + 8))(v80, v60);
        sub_10000C60C(v313);
        v81 = v300;
        goto LABEL_90;
      }

      if ((v64 & 0x8000000000000000) == 0)
      {
        v67 = *&a2[v61];
        if (v64 < *(v67 + 16))
        {
          sub_1002A9938(v67 + 40 * v64 + 32, &v309);
          v69 = v311;
          v68 = v312;
          sub_10002CDC0(&v309, v311);
          if ((*(*(*(v68 + 8) + 8) + 40))(v69) == 1)
          {
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&_mh_execute_header, v70, v71, "Posting authenticated notification", v72, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v64, &v306);
          swift_endAccess();
          sub_10000C60C(&v306);
          sub_10000C60C(&v309);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v308 = 0;
  v306 = 0u;
  v307 = 0u;
  sub_100005508(&v306, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v316, &v309);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v308 = 0;
    v306 = 0u;
    v307 = 0u;
    sub_100005508(&v306, &qword_100980B20, &qword_100807110);
    v290 = 0;
    v60 = v299;
    v81 = v300;
    goto LABEL_90;
  }

  v82 = sub_1000121F8(&v306, v313);
  __chkstk_darwin(v82);
  *(&v277 - 2) = v313;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v84 = sub_10045D5D4(sub_1004E5A9C, (&v277 - 4));
  v85 = *(*&a2[v83] + 16);
  if (v85 < v84)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v277 - 2) = v313;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v88 = sub_10045D628(sub_1004E5A9C, (&v277 - 4));
  v89 = *(*&a2[v87] + 16);
  if (v89 < v88)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v278 = v16;
  v290 = 0;
  sub_10057EE90(v88, v89);
  swift_endAccess();
  v91 = v314;
  v90 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v90 + 8) + 88))(v91);
  v92 = type metadata accessor for TaskPriority();
  v93 = v295;
  (*(*(v92 - 8) + 56))(v295, 1, 1, v92);
  sub_1002A9938(v316, &v309);
  v94 = swift_allocObject();
  v94[2] = 0;
  v94[3] = 0;
  v94[4] = a2;
  sub_1000121F8(&v309, (v94 + 5));
  v95 = a2;
  sub_1002B3098(0, 0, v93, &unk_100807168, v94);

  v97 = v314;
  v96 = v315;
  sub_10002CDC0(v313, v314);
  if ((*(*(v96 + 8) + 40))(v97) == 5)
  {
    sub_10069579C();
  }

  (v293[2])(v19, &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v294);
  v81 = v300;
  v295 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v98 = *(v300 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v100 = v314;
  v99 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v99 + 8) + 64))(&v309, v100);
  v101 = v311;
  if (!v311)
  {
    sub_100005508(&v309, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v105 = 0xE90000000000003ELL;
    v103 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v102 = v312;
  sub_10002CDC0(&v309, v311);
  v103 = (*(v102 + 8))(v101, v102);
  v105 = v104;
  sub_10000C60C(&v309);
  if (!v105)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v309 = v98;
  *(&v309 + 1) = v103;
  v310 = v105;
  LOBYTE(v311) = 0;
  v106 = v287;
  v107 = v294;
  AsyncStream.Continuation.yield(_:)();
  (v293[1])(v19, v107);
  (*(v288 + 8))(v106, v289);
  v109 = v314;
  v108 = v315;
  sub_10002CDC0(v313, v314);
  v110 = (*(*(v108 + 8) + 40))(v109);
  v60 = v299;
  v279 = v95;
  if (v110 != 8)
  {
    v112 = v314;
    v111 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v111 + 8) + 40))(v112) != 5)
    {
LABEL_60:
      v172 = v314;
      v171 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v171 + 8) + 40))(v172) == 8)
      {
        if ((sub_1004FE8E0(*&v295[v81]) & 1) == 0)
        {
          v173 = v314;
          v174 = v315;
          sub_10002CDC0(v313, v314);
          if (((*(v174 + 16))(v173, v174) & 1) != 0 || (v175 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v176 = v282, sub_10000FF90(&v95[v175], v282, &unk_100976120, &qword_1007F9260), LODWORD(v175) = (*(v298 + 48))(v176, 1, v60), sub_100005508(v176, &unk_100976120, &qword_1007F9260), v175 != 1))
          {
            sub_1002A9938(v313, &v309);
            v183 = v95;
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 67109376;
              v187 = v311;
              v188 = v312;
              sub_10002CDC0(&v309, v311);
              v189 = (*(v188 + 16))(v187, v188) & 1;
              sub_10000C60C(&v309);
              *(v186 + 4) = v189;
              *(v186 + 8) = 1024;
              v190 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v191 = a2;
              v192 = v81;
              v193 = v280;
              sub_10000FF90(&v183[v190], v280, &unk_100976120, &qword_1007F9260);
              v194 = v298;
              LODWORD(v190) = (*(v298 + 48))(v193, 1, v299) != 1;
              v195 = v193;
              v81 = v192;
              a2 = v191;
              sub_100005508(v195, &unk_100976120, &qword_1007F9260);
              *(v186 + 10) = v190;

              _os_log_impl(&_mh_execute_header, v184, v185, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v186, 0xEu);
              v60 = v299;
            }

            else
            {
              sub_10000C60C(&v309);

              v194 = v298;
            }

            sub_1006D05EC();
            v196 = *(v194 + 56);
            v197 = v285;
            v196(v285, 1, 1, v60);
            v198 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v197, &v183[v198], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v295[v81]))
        {
          v177 = v95;
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *&v309 = v181;
            *v180 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v182 = 1;
            }

            else
            {
              v182 = 0;
            }

            *(v180 + 4) = v182;

            *(v180 + 8) = 2080;
            v200 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v201 = v298;
            v202 = v299;
            if ((*(v298 + 48))(&v177[v200], 1, v299))
            {
              v203 = 7104878;
              v204 = 0xE300000000000000;
            }

            else
            {
              v205 = *(v201 + 16);
              v295 = v181;
              v206 = v297;
              v205(v297, &v177[v200], v202);
              v294 = UUID.uuidString.getter();
              v204 = v207;
              v208 = v206;
              v181 = v295;
              (*(v201 + 8))(v208, v202);
              v203 = v294;
            }

            v209 = sub_10000C4E4(v203, v204, &v309);

            *(v180 + 10) = v209;
            _os_log_impl(&_mh_execute_header, v178, v179, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v180, 0x12u);
            sub_10000C60C(v181);

            v81 = v300;
            v199 = v283;
          }

          else
          {

            v199 = v283;
          }

          v210 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v177[v210], v199, &unk_100976120, &qword_1007F9260);
          v211 = v298;
          v60 = v299;
          v212 = *(v298 + 48);
          if ((v212)(v199, 1, v299) == 1)
          {
            sub_100005508(v199, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v295 = v212;
            v213 = v281;
            (*(v211 + 32))(v281, v199, v60);
            v214 = v285;
            (*(v211 + 56))(v285, 1, 1, v60);
            swift_beginAccess();
            sub_10000C788(v214, &v177[v210], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v215 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v213, v215, v216);
              swift_unknownObjectRelease();

              (*(v211 + 8))(v213, v60);
            }

            else
            {
              v217 = v177;
              v218 = Logger.logObject.getter();
              v219 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v218, v219))
              {
                LODWORD(v294) = v219;
                v220 = swift_slowAlloc();
                v293 = swift_slowAlloc();
                *&v306 = v293;
                *v220 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v221 = 1;
                }

                else
                {
                  v221 = 0;
                }

                v265 = v218;
                *(v220 + 4) = v221;

                *(v220 + 8) = 2080;
                v266 = v299;
                v267 = (v295)(&v177[v210], 1, v299);
                v81 = v300;
                if (v267)
                {
                  v268 = 7104878;
                  v269 = 0xE300000000000000;
                  v270 = v298;
                }

                else
                {
                  v271 = v297;
                  v272 = &v177[v210];
                  v270 = v298;
                  (*(v298 + 16))(v297, v272, v266);
                  v273 = UUID.uuidString.getter();
                  v269 = v274;
                  (*(v270 + 8))(v271, v266);
                  v268 = v273;
                }

                v275 = v281;
                v276 = sub_10000C4E4(v268, v269, &v306);

                *(v220 + 10) = v276;
                _os_log_impl(&_mh_execute_header, v265, v294, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v220, 0x12u);
                sub_10000C60C(v293);

                (*(v270 + 8))(v275, v266);
                v60 = v266;
                goto LABEL_87;
              }

              (*(v298 + 8))(v281, v60);
            }

            v81 = v300;
          }
        }
      }

LABEL_87:
      v223 = v314;
      v222 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v222 + 8) + 40))(v223) != 8)
      {
        v225 = v314;
        v224 = v315;
        sub_10002CDC0(v313, v314);
        v226 = v297;
        (*(*(v224 + 8) + 32))(v225);
        sub_100695FD8(v226, 0, 0);
        (*(v298 + 8))(v226, v60);
      }

      sub_10000C60C(v313);
LABEL_90:
      v227 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v228 = *(v81 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v229 = SFDeviceClassCodeGet();
      v230 = sub_100027628(v228);
      v231 = sub_10000EF9C(8u, v230);

      if (v231)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v316, v313);
          v232 = Logger.logObject.getter();
          v233 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            v299 = v234;
            v300 = swift_slowAlloc();
            v305 = v300;
            *v234 = 136315138;
            v235 = sub_10002CDC0(v313, v314);
            v236 = v60;
            v237 = v297;
            v238 = v298;
            (*(v298 + 16))(v297, *v235 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v236);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v239 = v81;
            v240 = dispatch thunk of CustomStringConvertible.description.getter();
            v242 = v241;
            (*(v238 + 8))(v237, v236);
            sub_10000C60C(v313);
            v243 = v240;
            v81 = v239;
            v244 = sub_10000C4E4(v243, v242, &v305);

            v245 = v299;
            *(v299 + 1) = v244;
            _os_log_impl(&_mh_execute_header, v232, v233, "Removing session %s record", v245, 0xCu);
            sub_10000C60C(v300);
          }

          else
          {

            sub_10000C60C(v313);
          }

          v262 = v292;
          v263 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v81 + v263, v262);
          swift_endAccess();
          v260 = &qword_100976308;
          v261 = &unk_1007F94E0;
          v259 = v262;
          goto LABEL_98;
        }
      }

      else
      {
        v246 = sub_100027628(v228);
        v247 = sub_10000EF9C(v229, v246);

        if (!v247)
        {
          goto LABEL_92;
        }
      }

      v248 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v249 = sub_1004FE08C(*(v81 + v227));
      sub_10000FF90(v81 + v291, v313, &qword_100982080, &unk_1007FDD30);
      v250 = sub_1005CCA8C(v249, v313);
      v252 = v251;
      v253 = swift_getObjectType();
      v254 = (*(v252 + 56))(v253, v252);
      v255 = *(v248 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v256 = __chkstk_darwin(v254);
      *(&v277 - 4) = v250;
      *(&v277 - 3) = v252;
      *(&v277 - 2) = v313;
      *(&v277 - 1) = v248;
      __chkstk_darwin(v256);
      *(&v277 - 2) = sub_100465400;
      *(&v277 - 1) = v257;
      os_unfair_lock_lock(v255 + 4);
      sub_1003206A8(v258);
      os_unfair_lock_unlock(v255 + 4);
      swift_unknownObjectRelease();
      v259 = v313;
      v260 = &qword_100982080;
      v261 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v259, v260, v261);
      return sub_10000C60C(v316);
    }
  }

  v114 = v314;
  v113 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v113 + 8) + 64))(&v306, v114);
  if (!*(&v307 + 1))
  {
    sub_100005508(&v306, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v316, &v309);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      *&v306 = v294;
      *v145 = 136315138;
      v146 = sub_10002CDC0(&v309, v311);
      v147 = v298;
      v148 = v81;
      v149 = v297;
      (*(v298 + 16))(v297, *v146 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v299);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      v153 = v149;
      v81 = v148;
      (*(v147 + 8))(v153, v299);
      sub_10000C60C(&v309);
      v154 = sub_10000C4E4(v150, v152, &v306);

      *(v145 + 4) = v154;
      _os_log_impl(&_mh_execute_header, v143, v144, "No peer device for session: %s", v145, 0xCu);
      sub_10000C60C(v294);
      v60 = v299;

      v95 = v279;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v309);
LABEL_58:
    v165 = v314;
    v164 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v164 + 8) + 40))(v165) == 5)
    {
      v166 = v286;
      Date.init()();
      v167 = type metadata accessor for Date();
      (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
      v168 = &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v169 = *(v168 + 24);
      v170 = *(v168 + 32);
      sub_10002F5B4(v168, v169);
      (*(v170 + 16))(v166, v169, v170);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v306, &v309);
  v115 = v311;
  v116 = v312;
  sub_10002CDC0(&v309, v311);
  v117 = (*(v116 + 8))(v115, v116);
  if (!v118)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v117, v118);

  v119 = v311;
  v120 = v312;
  sub_10002CDC0(&v309, v311);
  v121 = (*(v120 + 8))(v119, v120);
  if (!v122)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v123 = v121;
  v124 = v122;
  swift_beginAccess();
  v125 = sub_10056CE1C(&v306, v123, v124);
  v127 = v126;
  v128 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v128 - 8) + 48))(v127, 1, v128))
  {
    *(v127 + *(v128 + 20)) = 0;
  }

  (v125)(&v306, 0);
  swift_endAccess();

  sub_1002A9938(&v309, &v306);
  sub_1002A9938(&v309, v301);
  v95 = v279;
  v129 = v279;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v130, v131))
  {

    sub_10000C60C(v301);
    sub_10000C60C(&v306);
    v81 = v300;
    goto LABEL_57;
  }

  v132 = swift_slowAlloc();
  v294 = swift_slowAlloc();
  v304[0] = v294;
  *v132 = 136315394;
  v134 = *(&v307 + 1);
  v133 = v308;
  sub_10002CDC0(&v306, *(&v307 + 1));
  v135 = (*(v133 + 8))(v134, v133);
  v137 = v136;

  if (v137)
  {
    v138 = v278;
    sub_10069F7E4(v135, v137, v278);

    v139 = type metadata accessor for Date();
    v140 = *(v139 - 8);
    if ((*(v140 + 48))(v138, 1, v139) == 1)
    {
      v141 = 0x676E697373696D3CLL;
      sub_100005508(v138, &qword_10097A7F0, &unk_1007FB600);
      v142 = 0xE90000000000003ELL;
    }

    else
    {
      v141 = Date.description.getter();
      v142 = v155;
      (*(v140 + 8))(v138, v139);
    }

    v81 = v300;
    sub_10000C60C(&v306);
    v156 = sub_10000C4E4(v141, v142, v304);

    *(v132 + 4) = v156;
    *(v132 + 12) = 2080;
    v157 = v302;
    v158 = v303;
    sub_10002CDC0(v301, v302);
    v159 = (*(v158 + 8))(v157, v158);
    if (v160)
    {
      v161 = v159;
    }

    else
    {
      v161 = 0xD000000000000015;
    }

    if (v160)
    {
      v162 = v160;
    }

    else
    {
      v162 = 0x8000000100789F30;
    }

    sub_10000C60C(v301);
    v163 = sub_10000C4E4(v161, v162, v304);

    *(v132 + 14) = v163;
    _os_log_impl(&_mh_execute_header, v130, v131, "Recording last registration date as %s for device: %s", v132, 0x16u);
    swift_arrayDestroy();

    v60 = v299;
    v95 = v279;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v301);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004E0C14(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = __chkstk_darwin(v4 - 8);
  v283 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v285 = &v277 - v8;
  v9 = __chkstk_darwin(v7);
  v280 = &v277 - v10;
  __chkstk_darwin(v9);
  v282 = &v277 - v11;
  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v13 = __chkstk_darwin(v12 - 8);
  v286 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v277 - v15;
  v17 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v293 = *(v17 - 1);
  v294 = v17;
  __chkstk_darwin(v17);
  v19 = &v277 - v18;
  v20 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v288 = *(v20 - 8);
  v289 = v20;
  __chkstk_darwin(v20);
  v287 = &v277 - v21;
  v22 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v277 - v23;
  v25 = type metadata accessor for UUID();
  v298 = *(v25 - 8);
  v299 = v25;
  v26 = __chkstk_darwin(v25);
  v281 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v297 = &v277 - v28;
  v29 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v29 - 8);
  v295 = &v277 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316[3] = type metadata accessor for SDAuthenticationLockSession(0);
  v316[4] = &off_1008E5AB0;
  v316[0] = a1;
  v35 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v34 = v35;
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v300 = a1;
  v36 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v34, v31);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v37 = type metadata accessor for Logger();
  v38 = sub_10000C4AC(v37, qword_1009895D8);
  sub_1002A9938(v316, v313);
  v296 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v292 = v24;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v306 = v43;
    *v42 = 136315138;
    sub_1002A9938(v313, &v309);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_10000C60C(v313);
    v47 = sub_10000C4E4(v44, v46, &v306);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session did complete: %s", v42, 0xCu);
    sub_10000C60C(v43);
  }

  else
  {

    sub_10000C60C(v313);
  }

  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v49 = v300;
  swift_beginAccess();
  sub_10000FF90(v49 + v48, v313, &qword_100982080, &unk_1007FDD30);
  v50 = v314;
  if (v314)
  {
    v51 = v315;
    sub_10002CDC0(v313, v314);
    v52 = (*(v51 + 8))(v50, v51);
    v54 = v53;
    sub_10000C60C(v313);
    if (v54)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {

        sub_100344E30(v52, v54);
      }
    }
  }

  else
  {
    sub_100005508(v313, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v316, &v309);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v55 = swift_dynamicCast();
  v291 = v48;
  if (v55)
  {
    v56 = sub_1000121F8(&v306, v313);
    __chkstk_darwin(v56);
    *(&v277 - 2) = v313;
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v58 = sub_10045D8D4(sub_1004E52F8, (&v277 - 4));
    v59 = *(*&a2[v57] + 16);
    v60 = v299;
    if (v59 >= v58)
    {
      sub_10057ED58(v58, v59);
      swift_endAccess();
      v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v62 = swift_beginAccess();
      v63 = *&a2[v61];
      __chkstk_darwin(v62);
      *(&v277 - 2) = v313;

      v64 = sub_1002D8B74(sub_1004E52F8, (&v277 - 4), v63);
      v66 = v65;
      v290 = 0;

      if (v66)
      {
LABEL_22:
        v73 = type metadata accessor for TaskPriority();
        v74 = v295;
        (*(*(v73 - 8) + 56))(v295, 1, 1, v73);
        sub_1002A9938(v316, &v309);
        v75 = swift_allocObject();
        v75[2] = 0;
        v75[3] = 0;
        v75[4] = a2;
        sub_1000121F8(&v309, (v75 + 5));
        a2;
        sub_1002B3098(0, 0, v74, &unk_100807120, v75);

        v77 = v314;
        v76 = v315;
        sub_10002CDC0(v313, v314);
        (*(*(v76 + 8) + 88))(v77);
        v79 = v314;
        v78 = v315;
        sub_10002CDC0(v313, v314);
        v80 = v297;
        (*(*(v78 + 8) + 32))(v79);
        sub_100695FD8(v80, 0, 0);
        (*(v298 + 8))(v80, v60);
        sub_10000C60C(v313);
        v81 = v300;
        goto LABEL_90;
      }

      if ((v64 & 0x8000000000000000) == 0)
      {
        v67 = *&a2[v61];
        if (v64 < *(v67 + 16))
        {
          sub_1002A9938(v67 + 40 * v64 + 32, &v309);
          v69 = v311;
          v68 = v312;
          sub_10002CDC0(&v309, v311);
          if ((*(*(*(v68 + 8) + 8) + 40))(v69) == 1)
          {
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&_mh_execute_header, v70, v71, "Posting authenticated notification", v72, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v64, &v306);
          swift_endAccess();
          sub_10000C60C(&v306);
          sub_10000C60C(&v309);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v308 = 0;
  v306 = 0u;
  v307 = 0u;
  sub_100005508(&v306, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v316, &v309);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v308 = 0;
    v306 = 0u;
    v307 = 0u;
    sub_100005508(&v306, &qword_100980B20, &qword_100807110);
    v290 = 0;
    v60 = v299;
    v81 = v300;
    goto LABEL_90;
  }

  v82 = sub_1000121F8(&v306, v313);
  __chkstk_darwin(v82);
  *(&v277 - 2) = v313;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v84 = sub_10045D5D4(sub_1004E52F8, (&v277 - 4));
  v85 = *(*&a2[v83] + 16);
  if (v85 < v84)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v277 - 2) = v313;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v88 = sub_10045D628(sub_1004E52F8, (&v277 - 4));
  v89 = *(*&a2[v87] + 16);
  if (v89 < v88)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v278 = v16;
  v290 = 0;
  sub_10057EE90(v88, v89);
  swift_endAccess();
  v91 = v314;
  v90 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v90 + 8) + 88))(v91);
  v92 = type metadata accessor for TaskPriority();
  v93 = v295;
  (*(*(v92 - 8) + 56))(v295, 1, 1, v92);
  sub_1002A9938(v316, &v309);
  v94 = swift_allocObject();
  v94[2] = 0;
  v94[3] = 0;
  v94[4] = a2;
  sub_1000121F8(&v309, (v94 + 5));
  v95 = a2;
  sub_1002B3098(0, 0, v93, &unk_100807118, v94);

  v97 = v314;
  v96 = v315;
  sub_10002CDC0(v313, v314);
  if ((*(*(v96 + 8) + 40))(v97) == 5)
  {
    sub_10069579C();
  }

  (v293[2])(v19, &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v294);
  v81 = v300;
  v295 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v98 = *(v300 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v100 = v314;
  v99 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v99 + 8) + 64))(&v309, v100);
  v101 = v311;
  if (!v311)
  {
    sub_100005508(&v309, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v105 = 0xE90000000000003ELL;
    v103 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v102 = v312;
  sub_10002CDC0(&v309, v311);
  v103 = (*(v102 + 8))(v101, v102);
  v105 = v104;
  sub_10000C60C(&v309);
  if (!v105)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v309 = v98;
  *(&v309 + 1) = v103;
  v310 = v105;
  LOBYTE(v311) = 0;
  v106 = v287;
  v107 = v294;
  AsyncStream.Continuation.yield(_:)();
  (v293[1])(v19, v107);
  (*(v288 + 8))(v106, v289);
  v109 = v314;
  v108 = v315;
  sub_10002CDC0(v313, v314);
  v110 = (*(*(v108 + 8) + 40))(v109);
  v60 = v299;
  v279 = v95;
  if (v110 != 8)
  {
    v112 = v314;
    v111 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v111 + 8) + 40))(v112) != 5)
    {
LABEL_60:
      v172 = v314;
      v171 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v171 + 8) + 40))(v172) == 8)
      {
        if ((sub_1004FE8E0(*&v295[v81]) & 1) == 0)
        {
          v173 = v314;
          v174 = v315;
          sub_10002CDC0(v313, v314);
          if (((*(v174 + 16))(v173, v174) & 1) != 0 || (v175 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v176 = v282, sub_10000FF90(&v95[v175], v282, &unk_100976120, &qword_1007F9260), LODWORD(v175) = (*(v298 + 48))(v176, 1, v60), sub_100005508(v176, &unk_100976120, &qword_1007F9260), v175 != 1))
          {
            sub_1002A9938(v313, &v309);
            v183 = v95;
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 67109376;
              v187 = v311;
              v188 = v312;
              sub_10002CDC0(&v309, v311);
              v189 = (*(v188 + 16))(v187, v188) & 1;
              sub_10000C60C(&v309);
              *(v186 + 4) = v189;
              *(v186 + 8) = 1024;
              v190 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v191 = a2;
              v192 = v81;
              v193 = v280;
              sub_10000FF90(&v183[v190], v280, &unk_100976120, &qword_1007F9260);
              v194 = v298;
              LODWORD(v190) = (*(v298 + 48))(v193, 1, v299) != 1;
              v195 = v193;
              v81 = v192;
              a2 = v191;
              sub_100005508(v195, &unk_100976120, &qword_1007F9260);
              *(v186 + 10) = v190;

              _os_log_impl(&_mh_execute_header, v184, v185, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v186, 0xEu);
              v60 = v299;
            }

            else
            {
              sub_10000C60C(&v309);

              v194 = v298;
            }

            sub_1006D05EC();
            v196 = *(v194 + 56);
            v197 = v285;
            v196(v285, 1, 1, v60);
            v198 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v197, &v183[v198], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v295[v81]))
        {
          v177 = v95;
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *&v309 = v181;
            *v180 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v182 = 1;
            }

            else
            {
              v182 = 0;
            }

            *(v180 + 4) = v182;

            *(v180 + 8) = 2080;
            v200 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v201 = v298;
            v202 = v299;
            if ((*(v298 + 48))(&v177[v200], 1, v299))
            {
              v203 = 7104878;
              v204 = 0xE300000000000000;
            }

            else
            {
              v205 = *(v201 + 16);
              v295 = v181;
              v206 = v297;
              v205(v297, &v177[v200], v202);
              v294 = UUID.uuidString.getter();
              v204 = v207;
              v208 = v206;
              v181 = v295;
              (*(v201 + 8))(v208, v202);
              v203 = v294;
            }

            v209 = sub_10000C4E4(v203, v204, &v309);

            *(v180 + 10) = v209;
            _os_log_impl(&_mh_execute_header, v178, v179, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v180, 0x12u);
            sub_10000C60C(v181);

            v81 = v300;
            v199 = v283;
          }

          else
          {

            v199 = v283;
          }

          v210 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v177[v210], v199, &unk_100976120, &qword_1007F9260);
          v211 = v298;
          v60 = v299;
          v212 = *(v298 + 48);
          if ((v212)(v199, 1, v299) == 1)
          {
            sub_100005508(v199, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v295 = v212;
            v213 = v281;
            (*(v211 + 32))(v281, v199, v60);
            v214 = v285;
            (*(v211 + 56))(v285, 1, 1, v60);
            swift_beginAccess();
            sub_10000C788(v214, &v177[v210], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v215 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v213, v215, v216);
              swift_unknownObjectRelease();

              (*(v211 + 8))(v213, v60);
            }

            else
            {
              v217 = v177;
              v218 = Logger.logObject.getter();
              v219 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v218, v219))
              {
                LODWORD(v294) = v219;
                v220 = swift_slowAlloc();
                v293 = swift_slowAlloc();
                *&v306 = v293;
                *v220 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v221 = 1;
                }

                else
                {
                  v221 = 0;
                }

                v265 = v218;
                *(v220 + 4) = v221;

                *(v220 + 8) = 2080;
                v266 = v299;
                v267 = (v295)(&v177[v210], 1, v299);
                v81 = v300;
                if (v267)
                {
                  v268 = 7104878;
                  v269 = 0xE300000000000000;
                  v270 = v298;
                }

                else
                {
                  v271 = v297;
                  v272 = &v177[v210];
                  v270 = v298;
                  (*(v298 + 16))(v297, v272, v266);
                  v273 = UUID.uuidString.getter();
                  v269 = v274;
                  (*(v270 + 8))(v271, v266);
                  v268 = v273;
                }

                v275 = v281;
                v276 = sub_10000C4E4(v268, v269, &v306);

                *(v220 + 10) = v276;
                _os_log_impl(&_mh_execute_header, v265, v294, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v220, 0x12u);
                sub_10000C60C(v293);

                (*(v270 + 8))(v275, v266);
                v60 = v266;
                goto LABEL_87;
              }

              (*(v298 + 8))(v281, v60);
            }

            v81 = v300;
          }
        }
      }

LABEL_87:
      v223 = v314;
      v222 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v222 + 8) + 40))(v223) != 8)
      {
        v225 = v314;
        v224 = v315;
        sub_10002CDC0(v313, v314);
        v226 = v297;
        (*(*(v224 + 8) + 32))(v225);
        sub_100695FD8(v226, 0, 0);
        (*(v298 + 8))(v226, v60);
      }

      sub_10000C60C(v313);
LABEL_90:
      v227 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v228 = *(v81 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v229 = SFDeviceClassCodeGet();
      v230 = sub_100027628(v228);
      v231 = sub_10000EF9C(8u, v230);

      if (v231)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v316, v313);
          v232 = Logger.logObject.getter();
          v233 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            v299 = v234;
            v300 = swift_slowAlloc();
            v305 = v300;
            *v234 = 136315138;
            v235 = sub_10002CDC0(v313, v314);
            v236 = v60;
            v237 = v297;
            v238 = v298;
            (*(v298 + 16))(v297, *v235 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v236);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v239 = v81;
            v240 = dispatch thunk of CustomStringConvertible.description.getter();
            v242 = v241;
            (*(v238 + 8))(v237, v236);
            sub_10000C60C(v313);
            v243 = v240;
            v81 = v239;
            v244 = sub_10000C4E4(v243, v242, &v305);

            v245 = v299;
            *(v299 + 1) = v244;
            _os_log_impl(&_mh_execute_header, v232, v233, "Removing session %s record", v245, 0xCu);
            sub_10000C60C(v300);
          }

          else
          {

            sub_10000C60C(v313);
          }

          v262 = v292;
          v263 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v81 + v263, v262);
          swift_endAccess();
          v260 = &qword_100976308;
          v261 = &unk_1007F94E0;
          v259 = v262;
          goto LABEL_98;
        }
      }

      else
      {
        v246 = sub_100027628(v228);
        v247 = sub_10000EF9C(v229, v246);

        if (!v247)
        {
          goto LABEL_92;
        }
      }

      v248 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v249 = sub_1004FE08C(*(v81 + v227));
      sub_10000FF90(v81 + v291, v313, &qword_100982080, &unk_1007FDD30);
      v250 = sub_1005CCA8C(v249, v313);
      v252 = v251;
      v253 = swift_getObjectType();
      v254 = (*(v252 + 56))(v253, v252);
      v255 = *(v248 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v256 = __chkstk_darwin(v254);
      *(&v277 - 4) = v250;
      *(&v277 - 3) = v252;
      *(&v277 - 2) = v313;
      *(&v277 - 1) = v248;
      __chkstk_darwin(v256);
      *(&v277 - 2) = sub_100464E14;
      *(&v277 - 1) = v257;
      os_unfair_lock_lock(v255 + 4);
      sub_1002F5418(v258);
      os_unfair_lock_unlock(v255 + 4);
      swift_unknownObjectRelease();
      v259 = v313;
      v260 = &qword_100982080;
      v261 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v259, v260, v261);
      return sub_10000C60C(v316);
    }
  }

  v114 = v314;
  v113 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v113 + 8) + 64))(&v306, v114);
  if (!*(&v307 + 1))
  {
    sub_100005508(&v306, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v316, &v309);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      *&v306 = v294;
      *v145 = 136315138;
      v146 = sub_10002CDC0(&v309, v311);
      v147 = v298;
      v148 = v81;
      v149 = v297;
      (*(v298 + 16))(v297, *v146 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v299);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      v153 = v149;
      v81 = v148;
      (*(v147 + 8))(v153, v299);
      sub_10000C60C(&v309);
      v154 = sub_10000C4E4(v150, v152, &v306);

      *(v145 + 4) = v154;
      _os_log_impl(&_mh_execute_header, v143, v144, "No peer device for session: %s", v145, 0xCu);
      sub_10000C60C(v294);
      v60 = v299;

      v95 = v279;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v309);
LABEL_58:
    v165 = v314;
    v164 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v164 + 8) + 40))(v165) == 5)
    {
      v166 = v286;
      Date.init()();
      v167 = type metadata accessor for Date();
      (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
      v168 = &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v169 = *(v168 + 24);
      v170 = *(v168 + 32);
      sub_10002F5B4(v168, v169);
      (*(v170 + 16))(v166, v169, v170);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v306, &v309);
  v115 = v311;
  v116 = v312;
  sub_10002CDC0(&v309, v311);
  v117 = (*(v116 + 8))(v115, v116);
  if (!v118)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v117, v118);

  v119 = v311;
  v120 = v312;
  sub_10002CDC0(&v309, v311);
  v121 = (*(v120 + 8))(v119, v120);
  if (!v122)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v123 = v121;
  v124 = v122;
  swift_beginAccess();
  v125 = sub_10056CE1C(&v306, v123, v124);
  v127 = v126;
  v128 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v128 - 8) + 48))(v127, 1, v128))
  {
    *(v127 + *(v128 + 20)) = 0;
  }

  (v125)(&v306, 0);
  swift_endAccess();

  sub_1002A9938(&v309, &v306);
  sub_1002A9938(&v309, v301);
  v95 = v279;
  v129 = v279;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v130, v131))
  {

    sub_10000C60C(v301);
    sub_10000C60C(&v306);
    v81 = v300;
    goto LABEL_57;
  }

  v132 = swift_slowAlloc();
  v294 = swift_slowAlloc();
  v304[0] = v294;
  *v132 = 136315394;
  v134 = *(&v307 + 1);
  v133 = v308;
  sub_10002CDC0(&v306, *(&v307 + 1));
  v135 = (*(v133 + 8))(v134, v133);
  v137 = v136;

  if (v137)
  {
    v138 = v278;
    sub_10069F7E4(v135, v137, v278);

    v139 = type metadata accessor for Date();
    v140 = *(v139 - 8);
    if ((*(v140 + 48))(v138, 1, v139) == 1)
    {
      v141 = 0x676E697373696D3CLL;
      sub_100005508(v138, &qword_10097A7F0, &unk_1007FB600);
      v142 = 0xE90000000000003ELL;
    }

    else
    {
      v141 = Date.description.getter();
      v142 = v155;
      (*(v140 + 8))(v138, v139);
    }

    v81 = v300;
    sub_10000C60C(&v306);
    v156 = sub_10000C4E4(v141, v142, v304);

    *(v132 + 4) = v156;
    *(v132 + 12) = 2080;
    v157 = v302;
    v158 = v303;
    sub_10002CDC0(v301, v302);
    v159 = (*(v158 + 8))(v157, v158);
    if (v160)
    {
      v161 = v159;
    }

    else
    {
      v161 = 0xD000000000000015;
    }

    if (v160)
    {
      v162 = v160;
    }

    else
    {
      v162 = 0x8000000100789F30;
    }

    sub_10000C60C(v301);
    v163 = sub_10000C4E4(v161, v162, v304);

    *(v132 + 14) = v163;
    _os_log_impl(&_mh_execute_header, v130, v131, "Recording last registration date as %s for device: %s", v132, 0x16u);
    swift_arrayDestroy();

    v60 = v299;
    v95 = v279;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v301);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004E2F7C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = __chkstk_darwin(v4 - 8);
  v283 = &v277 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v285 = &v277 - v8;
  v9 = __chkstk_darwin(v7);
  v280 = &v277 - v10;
  __chkstk_darwin(v9);
  v282 = &v277 - v11;
  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v13 = __chkstk_darwin(v12 - 8);
  v286 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v277 - v15;
  v17 = sub_10028088C(&qword_100980B08, &qword_100810330);
  v293 = *(v17 - 1);
  v294 = v17;
  __chkstk_darwin(v17);
  v19 = &v277 - v18;
  v20 = sub_10028088C(&qword_100980B10, &unk_1008070F0);
  v288 = *(v20 - 8);
  v289 = v20;
  __chkstk_darwin(v20);
  v287 = &v277 - v21;
  v22 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v277 - v23;
  v25 = type metadata accessor for UUID();
  v298 = *(v25 - 8);
  v299 = v25;
  v26 = __chkstk_darwin(v25);
  v281 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v297 = &v277 - v28;
  v29 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v29 - 8);
  v295 = &v277 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316[3] = type metadata accessor for SDAuthenticationPairingKeySession(0);
  v316[4] = &off_1008E5AB0;
  v316[0] = a1;
  v35 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
  *v34 = v35;
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v300 = a1;
  v36 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v34, v31);
  if (a1)
  {
    if (qword_100973C48 == -1)
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
  v37 = type metadata accessor for Logger();
  v38 = sub_10000C4AC(v37, qword_1009895D8);
  sub_1002A9938(v316, v313);
  v296 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v292 = v24;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v306 = v43;
    *v42 = 136315138;
    sub_1002A9938(v313, &v309);
    sub_10028088C(&unk_10097F090, &unk_100804740);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_10000C60C(v313);
    v47 = sub_10000C4E4(v44, v46, &v306);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session did complete: %s", v42, 0xCu);
    sub_10000C60C(v43);
  }

  else
  {

    sub_10000C60C(v313);
  }

  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  v49 = v300;
  swift_beginAccess();
  sub_10000FF90(v49 + v48, v313, &qword_100982080, &unk_1007FDD30);
  v50 = v314;
  if (v314)
  {
    v51 = v315;
    sub_10002CDC0(v313, v314);
    v52 = (*(v51 + 8))(v50, v51);
    v54 = v53;
    sub_10000C60C(v313);
    if (v54)
    {
      if (*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_registrationManager])
      {

        sub_100344E30(v52, v54);
      }
    }
  }

  else
  {
    sub_100005508(v313, &qword_100982080, &unk_1007FDD30);
  }

  sub_1002A9938(v316, &v309);
  sub_10028088C(&unk_10097F090, &unk_100804740);
  sub_10028088C(&qword_100974FA0, &unk_100804C70);
  v55 = swift_dynamicCast();
  v291 = v48;
  if (v55)
  {
    v56 = sub_1000121F8(&v306, v313);
    __chkstk_darwin(v56);
    *(&v277 - 2) = v313;
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
    swift_beginAccess();
    v58 = sub_10045D8D4(sub_1004E5A9C, (&v277 - 4));
    v59 = *(*&a2[v57] + 16);
    v60 = v299;
    if (v59 >= v58)
    {
      sub_10057ED58(v58, v59);
      swift_endAccess();
      v61 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
      v62 = swift_beginAccess();
      v63 = *&a2[v61];
      __chkstk_darwin(v62);
      *(&v277 - 2) = v313;

      v64 = sub_1002D8B74(sub_1004E5A9C, (&v277 - 4), v63);
      v66 = v65;
      v290 = 0;

      if (v66)
      {
LABEL_22:
        v73 = type metadata accessor for TaskPriority();
        v74 = v295;
        (*(*(v73 - 8) + 56))(v295, 1, 1, v73);
        sub_1002A9938(v316, &v309);
        v75 = swift_allocObject();
        v75[2] = 0;
        v75[3] = 0;
        v75[4] = a2;
        sub_1000121F8(&v309, (v75 + 5));
        a2;
        sub_1002B3098(0, 0, v74, &unk_100807150, v75);

        v77 = v314;
        v76 = v315;
        sub_10002CDC0(v313, v314);
        (*(*(v76 + 8) + 88))(v77);
        v79 = v314;
        v78 = v315;
        sub_10002CDC0(v313, v314);
        v80 = v297;
        (*(*(v78 + 8) + 32))(v79);
        sub_100695FD8(v80, 0, 0);
        (*(v298 + 8))(v80, v60);
        sub_10000C60C(v313);
        v81 = v300;
        goto LABEL_90;
      }

      if ((v64 & 0x8000000000000000) == 0)
      {
        v67 = *&a2[v61];
        if (v64 < *(v67 + 16))
        {
          sub_1002A9938(v67 + 40 * v64 + 32, &v309);
          v69 = v311;
          v68 = v312;
          sub_10002CDC0(&v309, v311);
          if ((*(*(*(v68 + 8) + 8) + 40))(v69) == 1)
          {
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&_mh_execute_header, v70, v71, "Posting authenticated notification", v72, 2u);
            }

            sub_1006D1230();
          }

          swift_beginAccess();
          sub_1002CD1F4(v64, &v306);
          swift_endAccess();
          sub_10000C60C(&v306);
          sub_10000C60C(&v309);
          goto LABEL_22;
        }

        goto LABEL_110;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v308 = 0;
  v306 = 0u;
  v307 = 0u;
  sub_100005508(&v306, &qword_100980B18, &unk_100807100);
  sub_1002A9938(v316, &v309);
  sub_10028088C(&qword_10097C6B0, &unk_100804750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v308 = 0;
    v306 = 0u;
    v307 = 0u;
    sub_100005508(&v306, &qword_100980B20, &qword_100807110);
    v290 = 0;
    v60 = v299;
    v81 = v300;
    goto LABEL_90;
  }

  v82 = sub_1000121F8(&v306, v313);
  __chkstk_darwin(v82);
  *(&v277 - 2) = v313;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v84 = sub_10045D5D4(sub_1004E5A9C, (&v277 - 4));
  v85 = *(*&a2[v83] + 16);
  if (v85 < v84)
  {
    goto LABEL_107;
  }

  sub_10057EF98(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v277 - 2) = v313;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v88 = sub_10045D628(sub_1004E5A9C, (&v277 - 4));
  v89 = *(*&a2[v87] + 16);
  if (v89 < v88)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v278 = v16;
  v290 = 0;
  sub_10057EE90(v88, v89);
  swift_endAccess();
  v91 = v314;
  v90 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v90 + 8) + 88))(v91);
  v92 = type metadata accessor for TaskPriority();
  v93 = v295;
  (*(*(v92 - 8) + 56))(v295, 1, 1, v92);
  sub_1002A9938(v316, &v309);
  v94 = swift_allocObject();
  v94[2] = 0;
  v94[3] = 0;
  v94[4] = a2;
  sub_1000121F8(&v309, (v94 + 5));
  v95 = a2;
  sub_1002B3098(0, 0, v93, &unk_100807148, v94);

  v97 = v314;
  v96 = v315;
  sub_10002CDC0(v313, v314);
  if ((*(*(v96 + 8) + 40))(v97) == 5)
  {
    sub_10069579C();
  }

  (v293[2])(v19, &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedContinuation], v294);
  v81 = v300;
  v295 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v98 = *(v300 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v100 = v314;
  v99 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v99 + 8) + 64))(&v309, v100);
  v101 = v311;
  if (!v311)
  {
    sub_100005508(&v309, &qword_100982080, &unk_1007FDD30);
LABEL_33:
    v105 = 0xE90000000000003ELL;
    v103 = 0x676E697373696D3CLL;

    goto LABEL_34;
  }

  v102 = v312;
  sub_10002CDC0(&v309, v311);
  v103 = (*(v102 + 8))(v101, v102);
  v105 = v104;
  sub_10000C60C(&v309);
  if (!v105)
  {
    goto LABEL_33;
  }

LABEL_34:
  *&v309 = v98;
  *(&v309 + 1) = v103;
  v310 = v105;
  LOBYTE(v311) = 0;
  v106 = v287;
  v107 = v294;
  AsyncStream.Continuation.yield(_:)();
  (v293[1])(v19, v107);
  (*(v288 + 8))(v106, v289);
  v109 = v314;
  v108 = v315;
  sub_10002CDC0(v313, v314);
  v110 = (*(*(v108 + 8) + 40))(v109);
  v60 = v299;
  v279 = v95;
  if (v110 != 8)
  {
    v112 = v314;
    v111 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v111 + 8) + 40))(v112) != 5)
    {
LABEL_60:
      v172 = v314;
      v171 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v171 + 8) + 40))(v172) == 8)
      {
        if ((sub_1004FE8E0(*&v295[v81]) & 1) == 0)
        {
          v173 = v314;
          v174 = v315;
          sub_10002CDC0(v313, v314);
          if (((*(v174 + 16))(v173, v174) & 1) != 0 || (v175 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI, swift_beginAccess(), v176 = v282, sub_10000FF90(&v95[v175], v282, &unk_100976120, &qword_1007F9260), LODWORD(v175) = (*(v298 + 48))(v176, 1, v60), sub_100005508(v176, &unk_100976120, &qword_1007F9260), v175 != 1))
          {
            sub_1002A9938(v313, &v309);
            v183 = v95;
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 67109376;
              v187 = v311;
              v188 = v312;
              sub_10002CDC0(&v309, v311);
              v189 = (*(v188 + 16))(v187, v188) & 1;
              sub_10000C60C(&v309);
              *(v186 + 4) = v189;
              *(v186 + 8) = 1024;
              v190 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
              swift_beginAccess();
              v191 = a2;
              v192 = v81;
              v193 = v280;
              sub_10000FF90(&v183[v190], v280, &unk_100976120, &qword_1007F9260);
              v194 = v298;
              LODWORD(v190) = (*(v298 + 48))(v193, 1, v299) != 1;
              v195 = v193;
              v81 = v192;
              a2 = v191;
              sub_100005508(v195, &unk_100976120, &qword_1007F9260);
              *(v186 + 10) = v190;

              _os_log_impl(&_mh_execute_header, v184, v185, "Request arming UI as requested by Mac (%{BOOL}d) or ongoing unlock session during registration (%{BOOL}d)", v186, 0xEu);
              v60 = v299;
            }

            else
            {
              sub_10000C60C(&v309);

              v194 = v298;
            }

            sub_1006D05EC();
            v196 = *(v194 + 56);
            v197 = v285;
            v196(v285, 1, 1, v60);
            v198 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            sub_10000C788(v197, &v183[v198], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            goto LABEL_87;
          }
        }

        if (sub_1004FE8E0(*&v295[v81]))
        {
          v177 = v95;
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *&v309 = v181;
            *v180 = 67109378;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              v182 = 1;
            }

            else
            {
              v182 = 0;
            }

            *(v180 + 4) = v182;

            *(v180 + 8) = 2080;
            v200 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
            swift_beginAccess();
            v201 = v298;
            v202 = v299;
            if ((*(v298 + 48))(&v177[v200], 1, v299))
            {
              v203 = 7104878;
              v204 = 0xE300000000000000;
            }

            else
            {
              v205 = *(v201 + 16);
              v295 = v181;
              v206 = v297;
              v205(v297, &v177[v200], v202);
              v294 = UUID.uuidString.getter();
              v204 = v207;
              v208 = v206;
              v181 = v295;
              (*(v201 + 8))(v208, v202);
              v203 = v294;
            }

            v209 = sub_10000C4E4(v203, v204, &v309);

            *(v180 + 10) = v209;
            _os_log_impl(&_mh_execute_header, v178, v179, "Calling back to delegate (exists: %{BOOL}d), for sessionID: %s", v180, 0x12u);
            sub_10000C60C(v181);

            v81 = v300;
            v199 = v283;
          }

          else
          {

            v199 = v283;
          }

          v210 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
          swift_beginAccess();
          sub_10000FF90(&v177[v210], v199, &unk_100976120, &qword_1007F9260);
          v211 = v298;
          v60 = v299;
          v212 = *(v298 + 48);
          if ((v212)(v199, 1, v299) == 1)
          {
            sub_100005508(v199, &unk_100976120, &qword_1007F9260);
          }

          else
          {
            v295 = v212;
            v213 = v281;
            (*(v211 + 32))(v281, v199, v60);
            v214 = v285;
            (*(v211 + 56))(v285, 1, 1, v60);
            swift_beginAccess();
            sub_10000C788(v214, &v177[v210], &unk_100976120, &qword_1007F9260);
            swift_endAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v215 = sub_100010F88(11, 0, 0xE000000000000000);
              sub_100695FD8(v213, v215, v216);
              swift_unknownObjectRelease();

              (*(v211 + 8))(v213, v60);
            }

            else
            {
              v217 = v177;
              v218 = Logger.logObject.getter();
              v219 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v218, v219))
              {
                LODWORD(v294) = v219;
                v220 = swift_slowAlloc();
                v293 = swift_slowAlloc();
                *&v306 = v293;
                *v220 = 67109378;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  swift_unknownObjectRelease();
                  v221 = 1;
                }

                else
                {
                  v221 = 0;
                }

                v265 = v218;
                *(v220 + 4) = v221;

                *(v220 + 8) = 2080;
                v266 = v299;
                v267 = (v295)(&v177[v210], 1, v299);
                v81 = v300;
                if (v267)
                {
                  v268 = 7104878;
                  v269 = 0xE300000000000000;
                  v270 = v298;
                }

                else
                {
                  v271 = v297;
                  v272 = &v177[v210];
                  v270 = v298;
                  (*(v298 + 16))(v297, v272, v266);
                  v273 = UUID.uuidString.getter();
                  v269 = v274;
                  (*(v270 + 8))(v271, v266);
                  v268 = v273;
                }

                v275 = v281;
                v276 = sub_10000C4E4(v268, v269, &v306);

                *(v220 + 10) = v276;
                _os_log_impl(&_mh_execute_header, v265, v294, "Could not call back to delegate (exists: %{BOOL}d), for sessionID: %s", v220, 0x12u);
                sub_10000C60C(v293);

                (*(v270 + 8))(v275, v266);
                v60 = v266;
                goto LABEL_87;
              }

              (*(v298 + 8))(v281, v60);
            }

            v81 = v300;
          }
        }
      }

LABEL_87:
      v223 = v314;
      v222 = v315;
      sub_10002CDC0(v313, v314);
      if ((*(*(v222 + 8) + 40))(v223) != 8)
      {
        v225 = v314;
        v224 = v315;
        sub_10002CDC0(v313, v314);
        v226 = v297;
        (*(*(v224 + 8) + 32))(v225);
        sub_100695FD8(v226, 0, 0);
        (*(v298 + 8))(v226, v60);
      }

      sub_10000C60C(v313);
LABEL_90:
      v227 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
      v228 = *(v81 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
      v229 = SFDeviceClassCodeGet();
      v230 = sub_100027628(v228);
      v231 = sub_10000EF9C(8u, v230);

      if (v231)
      {
        if (!SFDeviceIsRealityDevice())
        {
LABEL_92:
          sub_1002A9938(v316, v313);
          v232 = Logger.logObject.getter();
          v233 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            v299 = v234;
            v300 = swift_slowAlloc();
            v305 = v300;
            *v234 = 136315138;
            v235 = sub_10002CDC0(v313, v314);
            v236 = v60;
            v237 = v297;
            v238 = v298;
            (*(v298 + 16))(v297, *v235 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v236);
            sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v239 = v81;
            v240 = dispatch thunk of CustomStringConvertible.description.getter();
            v242 = v241;
            (*(v238 + 8))(v237, v236);
            sub_10000C60C(v313);
            v243 = v240;
            v81 = v239;
            v244 = sub_10000C4E4(v243, v242, &v305);

            v245 = v299;
            *(v299 + 1) = v244;
            _os_log_impl(&_mh_execute_header, v232, v233, "Removing session %s record", v245, 0xCu);
            sub_10000C60C(v300);
          }

          else
          {

            sub_10000C60C(v313);
          }

          v262 = v292;
          v263 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
          swift_beginAccess();
          sub_1000124A0(v81 + v263, v262);
          swift_endAccess();
          v260 = &qword_100976308;
          v261 = &unk_1007F94E0;
          v259 = v262;
          goto LABEL_98;
        }
      }

      else
      {
        v246 = sub_100027628(v228);
        v247 = sub_10000EF9C(v229, v246);

        if (!v247)
        {
          goto LABEL_92;
        }
      }

      v248 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v249 = sub_1004FE08C(*(v81 + v227));
      sub_10000FF90(v81 + v291, v313, &qword_100982080, &unk_1007FDD30);
      v250 = sub_1005CCA8C(v249, v313);
      v252 = v251;
      v253 = swift_getObjectType();
      v254 = (*(v252 + 56))(v253, v252);
      v255 = *(v248 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v256 = __chkstk_darwin(v254);
      *(&v277 - 4) = v250;
      *(&v277 - 3) = v252;
      *(&v277 - 2) = v313;
      *(&v277 - 1) = v248;
      __chkstk_darwin(v256);
      *(&v277 - 2) = sub_100465400;
      *(&v277 - 1) = v257;
      os_unfair_lock_lock(v255 + 4);
      sub_1003206A8(v258);
      os_unfair_lock_unlock(v255 + 4);
      swift_unknownObjectRelease();
      v259 = v313;
      v260 = &qword_100982080;
      v261 = &unk_1007FDD30;
LABEL_98:
      sub_100005508(v259, v260, v261);
      return sub_10000C60C(v316);
    }
  }

  v114 = v314;
  v113 = v315;
  sub_10002CDC0(v313, v314);
  (*(*(v113 + 8) + 64))(&v306, v114);
  if (!*(&v307 + 1))
  {
    sub_100005508(&v306, &qword_100982080, &unk_1007FDD30);
    sub_1002A9938(v316, &v309);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      *&v306 = v294;
      *v145 = 136315138;
      v146 = sub_10002CDC0(&v309, v311);
      v147 = v298;
      v148 = v81;
      v149 = v297;
      (*(v298 + 16))(v297, *v146 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID, v299);
      sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      v153 = v149;
      v81 = v148;
      (*(v147 + 8))(v153, v299);
      sub_10000C60C(&v309);
      v154 = sub_10000C4E4(v150, v152, &v306);

      *(v145 + 4) = v154;
      _os_log_impl(&_mh_execute_header, v143, v144, "No peer device for session: %s", v145, 0xCu);
      sub_10000C60C(v294);
      v60 = v299;

      v95 = v279;

      goto LABEL_58;
    }

LABEL_57:
    sub_10000C60C(&v309);
LABEL_58:
    v165 = v314;
    v164 = v315;
    sub_10002CDC0(v313, v314);
    if ((*(*(v164 + 8) + 40))(v165) == 5)
    {
      v166 = v286;
      Date.init()();
      v167 = type metadata accessor for Date();
      (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
      v168 = &v95[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager];
      swift_beginAccess();
      v169 = *(v168 + 24);
      v170 = *(v168 + 32);
      sub_10002F5B4(v168, v169);
      (*(v170 + 16))(v166, v169, v170);
      swift_endAccess();
    }

    goto LABEL_60;
  }

  sub_1000121F8(&v306, &v309);
  v115 = v311;
  v116 = v312;
  sub_10002CDC0(&v309, v311);
  v117 = (*(v116 + 8))(v115, v116);
  if (!v118)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_1006D23E0(v117, v118);

  v119 = v311;
  v120 = v312;
  sub_10002CDC0(&v309, v311);
  v121 = (*(v120 + 8))(v119, v120);
  if (!v122)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v123 = v121;
  v124 = v122;
  swift_beginAccess();
  v125 = sub_10056CE1C(&v306, v123, v124);
  v127 = v126;
  v128 = type metadata accessor for RegistrationState(0);
  if (!(*(*(v128 - 8) + 48))(v127, 1, v128))
  {
    *(v127 + *(v128 + 20)) = 0;
  }

  (v125)(&v306, 0);
  swift_endAccess();

  sub_1002A9938(&v309, &v306);
  sub_1002A9938(&v309, v301);
  v95 = v279;
  v129 = v279;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v130, v131))
  {

    sub_10000C60C(v301);
    sub_10000C60C(&v306);
    v81 = v300;
    goto LABEL_57;
  }

  v132 = swift_slowAlloc();
  v294 = swift_slowAlloc();
  v304[0] = v294;
  *v132 = 136315394;
  v134 = *(&v307 + 1);
  v133 = v308;
  sub_10002CDC0(&v306, *(&v307 + 1));
  v135 = (*(v133 + 8))(v134, v133);
  v137 = v136;

  if (v137)
  {
    v138 = v278;
    sub_10069F7E4(v135, v137, v278);

    v139 = type metadata accessor for Date();
    v140 = *(v139 - 8);
    if ((*(v140 + 48))(v138, 1, v139) == 1)
    {
      v141 = 0x676E697373696D3CLL;
      sub_100005508(v138, &qword_10097A7F0, &unk_1007FB600);
      v142 = 0xE90000000000003ELL;
    }

    else
    {
      v141 = Date.description.getter();
      v142 = v155;
      (*(v140 + 8))(v138, v139);
    }

    v81 = v300;
    sub_10000C60C(&v306);
    v156 = sub_10000C4E4(v141, v142, v304);

    *(v132 + 4) = v156;
    *(v132 + 12) = 2080;
    v157 = v302;
    v158 = v303;
    sub_10002CDC0(v301, v302);
    v159 = (*(v158 + 8))(v157, v158);
    if (v160)
    {
      v161 = v159;
    }

    else
    {
      v161 = 0xD000000000000015;
    }

    if (v160)
    {
      v162 = v160;
    }

    else
    {
      v162 = 0x8000000100789F30;
    }

    sub_10000C60C(v301);
    v163 = sub_10000C4E4(v161, v162, v304);

    *(v132 + 14) = v163;
    _os_log_impl(&_mh_execute_header, v130, v131, "Recording last registration date as %s for device: %s", v132, 0x16u);
    swift_arrayDestroy();

    v60 = v299;
    v95 = v279;
    goto LABEL_57;
  }

LABEL_113:
  sub_10000C60C(v301);
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1004E5318(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_1004E53D0(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1004E5318(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1004E5480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006D6364(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004E5540()
{
  swift_unknownObjectRelease();

  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1004E5588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006D6220(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004E5658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1004D463C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1004E57A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E5808(uint64_t a1)
{
  v4 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004D0D04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004E5900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004E59BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1006D6220(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1004E5AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(**NameDropIdentity.shared.unsafeMutableAddressor() + 136);

  v9 = v7(v8);

  if (!v9)
  {
    if (qword_100973958 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100980B28);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "User has no NameDrop identity, returning nil for myContactInfo", v29, 2u);
    }

    goto LABEL_21;
  }

  v10 = CNContact.boopDefaultHandle.getter();
  v12 = v11;
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    if (qword_100973958 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_100980B28);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "User's NameDrop identity has no handles, returning nil for myContactInfo", v33, 2u);
    }

LABEL_21:
    v34 = type metadata accessor for SFAirDrop.ContactInfo();
    v23 = *(*(v34 - 8) + 56);
    v24 = v34;
    v25 = a1;
LABEL_22:

    return v23(v25, 1, 1, v24);
  }

  v14 = v10;
  v44 = a1;
  v15 = CNContact.vCardForBoopingDefaultHandle()();
  if (v16 >> 60 == 15)
  {

    v17 = v44;
    if (qword_100973958 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_100980B28);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "User's NameDrop identity could not be converted to a vCard, returning nil for myContactInfo", v21, 2u);
    }

    v22 = type metadata accessor for SFAirDrop.ContactInfo();
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v25 = v17;
    goto LABEL_22;
  }

  v43[2] = v15;
  v43[0] = CNContact.boopPresentedName.getter();
  v43[1] = v36;
  v37 = CNContact.boopDefaultHandleIsEmail.getter();
  v38 = [v1 myGivenName];
  v39 = v38;
  if (v37)
  {
    if (v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    *v6 = v14;
    v6[1] = v12;
    v40 = &enum case for SFAirDrop.ContactInfo.Handle.email(_:);
  }

  else
  {
    if (v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    *v6 = v14;
    v6[1] = v12;
    v40 = &enum case for SFAirDrop.ContactInfo.Handle.phone(_:);
  }

  (*(v4 + 104))(v6, *v40, v3);
  v41 = v44;
  SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();

  v42 = type metadata accessor for SFAirDrop.ContactInfo();
  return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
}

id sub_1004E6014()
{
  v1 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v1);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v8 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_9:
    v11 = v8;
    v12 = v6;
    goto LABEL_10;
  }

  sub_1004E72B4(v6, v3);
  v9 = &v3[*(v1 + 56)];
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    v14 = *v9;
    v15 = objc_allocWithZone(PFMediaCapabilities);
    sub_100294008(v14, v10);
    sub_100294008(v14, v10);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = [v15 initWithOpaqueRepresentation:isa];

    sub_10028BCC0(v14, v10);
    sub_10032E5E4();
    if (v18)
    {
      v19 = String.lowercased()();

      v28 = v19;
      v27[10] = 6513005;
      v27[11] = 0xE300000000000000;
      sub_10001229C();
      v20 = StringProtocol.contains<A>(_:)();

      if ((v20 & 1) == 0)
      {
        sub_1002F96B0(v3, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        sub_10028BCC0(v14, v10);
        return v17;
      }

      sub_10028088C(&qword_100981270, &qword_1008075E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      v22 = PFMediaCapabilitiesOutOfBandHintsPlatformKey;
      *(inited + 32) = PFMediaCapabilitiesOutOfBandHintsPlatformKey;
      v23 = objc_allocWithZone(NSNumber);
      v24 = v22;
      v25 = [v23 initWithInteger:1];
      *(inited + 64) = sub_1004E7318();
      *(inited + 40) = v25;
      sub_100281DB0(inited);
      swift_setDeallocating();
      sub_1004E7364(inited + 32);
      type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey(0);
      sub_1004E73CC(&qword_100974978, type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey, &unk_1007F748C);
      v26 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v17 setOutOfBandHints:v26];
    }

    sub_10028BCC0(v14, v10);
    sub_1002F96B0(v3, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    return v17;
  }

  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
  v12 = v3;
LABEL_10:
  sub_1002F96B0(v12, v11);
  return 0;
}

uint64_t sub_1004E63E0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980B28);
  v1 = sub_10000C4AC(v0, qword_100980B28);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004E64A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004E6504(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _objc_release_x2(a1);
}

uint64_t sub_1004E6514()
{
  sub_10004C60C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1004E6570(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E65B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_1004E7244(a1, &v15 - v9);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = *(v5 + 32);
    v13(v7, v10, v4);
    sub_10028088C(&qword_100976238, &qword_1008075E0);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 1) = xmmword_1007F5670;
    result = (v13)(v12 + v14, v7, v4);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1004E6774()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004E67D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1004E67EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for UUID();
  *(v1 + 24) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004E68B4, v2, 0);
}

uint64_t sub_1004E68B4(uint64_t a1)
{
  UUID.init()();
  SFAirDropClient.BoopAtADistance.ServerInfo.init(applicationLabel:publicKeyData:bonjourUUID:)();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004E6940()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E69CC@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_10028088C(&qword_100981248, &qword_1008075B8);
  __chkstk_darwin(v1);
  v2 = sub_10028088C(&qword_100981250, &unk_1008075C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = sub_10028088C(&qword_100981258, &unk_1008075D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  Just.init(_:)();
  sub_10028088C(&qword_100976218, &unk_1007F9370);
  Just.map<A>(_:)();
  sub_100011630(&qword_100981260, &qword_100981250, &unk_1008075C0, &protocol conformance descriptor for Just<A>);
  Publisher<>.values.getter();
  sub_100011630(&qword_100981268, &qword_100981248, &qword_1008075B8, &protocol conformance descriptor for AsyncPublisher<A>);
  SFNoThrowAsyncSequence.init<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1004E6D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_1004E6D9C()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result deviceKeyBagLocked];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E6DFC(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  sub_10002CDC0(a1, a1[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (qword_100973680 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v5 selector:a2 name:qword_1009A07D0 object:0];

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E6ED4(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  sub_10002CDC0(a1, a1[3]);
  [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E701C()
{
  v0 = type metadata accessor for SFPlatform();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFAirDropUserDefaults();
  v4 = static SFAirDropUserDefaults.shared.getter();
  v5 = SFAirDropUserDefaults.walkAwayEnabled.getter();

  sub_10028088C(&qword_100981228, &qword_1008075A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  static SFPlatform.iOS.getter();
  static SFPlatform.macOS.getter();
  static SFPlatform.visionOS.getter();
  v8[1] = v6;
  sub_1004E73CC(&qword_100981230, &type metadata accessor for SFPlatform, &protocol conformance descriptor for SFPlatform);
  sub_10028088C(&qword_100981238, &qword_1008075A8);
  sub_100011630(&qword_100981240, &qword_100981238, &qword_1008075A8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v6) = static SFPlatform.isPlatform(_:)();
  (*(v1 + 8))(v3, v0);
  return (v5 & (SFDeviceClassCodeGet() != 4)) & v6;
}

uint64_t sub_1004E7244(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E72B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004E7318()
{
  result = qword_1009755C0;
  if (!qword_1009755C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009755C0);
  }

  return result;
}

uint64_t sub_1004E7364(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100974778, &unk_1008075F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E73CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SDNearFieldTap(uint64_t a1)
{
  result = qword_1009812E8;
  if (!qword_1009812E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E748C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, &qword_100975790, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1004E75A8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = type metadata accessor for SDNearFieldTap(0);
  v14 = (a4 + v13[5]);
  *v14 = v10;
  v14[1] = v12;
  v15 = [a1 contactID];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = (a4 + v13[6]);
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_1001BC928(a1);
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = (a4 + v13[7]);
  *v26 = v23;
  v26[1] = v25;
  v27 = sub_1001BC98C(a1);
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = (a4 + v13[8]);
  *v32 = v29;
  v32[1] = v31;
  v33 = sub_1001BC9F0(a1);
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = (a4 + v13[9]);
  *v38 = v35;
  v38[1] = v37;
  v39 = [a1 applicationLabel];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = (a4 + v13[10]);
  *v43 = v40;
  v43[1] = v42;
  *(a4 + v13[12]) = [a1 isSameAccount];
  v44 = sub_1001BC8A8(a1);
  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = (a4 + v13[13]);
  *v48 = v45;
  v48[1] = v47;
  v49 = sub_1001BCA54(a1);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *(a4 + v13[16]) = [a1 shouldForceSingleBandAWDLMode];
  if (sub_1001BCAE8(a1))
  {
    v50 = sub_1001BCB0C(a1);
  }

  else
  {
    v50 = 2;
  }

  *(a4 + v13[17]) = v50;
  if (sub_1001BCB5C(a1))
  {
    v51 = sub_1001BCB80(a1);
  }

  else
  {
    v51 = 2;
  }

  *(a4 + v13[18]) = v51;
  v52 = [a1 flags];

  *(a4 + v13[19]) = v52 & 1;
  *(a4 + v13[11]) = a2 & 1;
  v53 = v13[15];
  v54 = type metadata accessor for UUID();
  v55 = *(*(v54 - 8) + 32);

  return v55(a4 + v53, a3, v54);
}

uint64_t sub_1004E78DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropClient.BoopAtADistance.TapEvent.date.getter();
  v10 = SFAirDropClient.BoopAtADistance.TapEvent.identifier.getter();
  v12 = v11;
  v13 = type metadata accessor for SDNearFieldTap(0);
  v14 = (a3 + v13[5]);
  *v14 = v10;
  v14[1] = v12;
  v15 = SFAirDropClient.BoopAtADistance.TapEvent.contactID.getter();
  v16 = (a3 + v13[6]);
  *v16 = v15;
  v16[1] = v17;
  v18 = SFAirDropClient.BoopAtADistance.TapEvent.deviceName.getter();
  v19 = (a3 + v13[7]);
  *v19 = v18;
  v19[1] = v20;
  v21 = SFAirDropClient.BoopAtADistance.TapEvent.deviceModel.getter();
  v22 = (a3 + v13[8]);
  *v22 = v21;
  v22[1] = v23;
  v24 = SFAirDropClient.BoopAtADistance.TapEvent.accountID.getter();
  v25 = (a3 + v13[9]);
  *v25 = v24;
  v25[1] = v26;
  v27 = SFAirDropClient.BoopAtADistance.TapEvent.applicationLabel.getter();
  v28 = (a3 + v13[10]);
  *v28 = v27;
  v28[1] = v29;
  *(a3 + v13[11]) = (SFAirDropClient.BoopAtADistance.Transaction.isInitiator.getter() & 1) == 0;
  *(a3 + v13[12]) = SFAirDropClient.BoopAtADistance.TapEvent.isSameAccount.getter() & 1;
  SFAirDropClient.BoopAtADistance.Transaction.identifier.getter();
  SFAirDropClient.BoopAtADistance.TapEvent.remoteServerInfo.getter();
  v30 = SFAirDropClient.BoopAtADistance.ServerInfo.publicKeyData.getter();
  v32 = v31;
  v33 = *(v7 + 8);
  v33(v9, v6);
  v34 = (a3 + v13[13]);
  *v34 = v30;
  v34[1] = v32;
  SFAirDropClient.BoopAtADistance.TapEvent.remoteServerInfo.getter();
  SFAirDropClient.BoopAtADistance.ServerInfo.bonjourUUID.getter();
  v33(v9, v6);
  *(a3 + v13[16]) = SFAirDropClient.BoopAtADistance.TapEvent.shouldForceSingleBandAWDLMode.getter() & 1;
  *(a3 + v13[17]) = SFAirDropClient.BoopAtADistance.TapEvent.isKnownIdentity.getter() & 1;
  LOBYTE(v30) = SFAirDropClient.BoopAtADistance.TapEvent.isUnsupportedApplicationLabel.getter();
  v35 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent();
  (*(*(v35 - 8) + 8))(a2, v35);
  v36 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
  result = (*(*(v36 - 8) + 8))(a1, v36);
  *(a3 + v13[18]) = v30 & 1;
  *(a3 + v13[19]) = 1;
  return result;
}

uint64_t sub_1004E7B84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v80 - v10;
  __chkstk_darwin(v9);
  v13 = &v80 - v12;
  v14 = type metadata accessor for SDNearFieldTap(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v80 - v18;
  sub_100337A04(a1);
  if (v20 || (sub_100337A1C(a1), v21))
  {
    v82 = v17;

    v22 = sub_100337A04(a1);
    v24 = v14;
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v81 = a1;
      if (qword_100973960 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_100981278);
      sub_1004E9E1C(v2, v19);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v30 = 136315394;
        v31 = &v19[*(v14 + 20)];
        v80 = v25;
        v32 = v2;
        v33 = *v31;
        v34 = v31[1];

        sub_1004E9E80(v19);
        v35 = sub_10000C4E4(v33, v34, &v83);
        v24 = v14;

        *(v30 + 4) = v35;
        v2 = v32;
        v25 = v80;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_10000C4E4(v25, v26, &v83);
        _os_log_impl(&_mh_execute_header, v28, v29, "SDAirDropNearFieldService Comparing tap with browser endpoint {tap: %s, endpointIdentifier: %s}", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004E9E80(v19);
      }

      v36 = (v2 + *(v24 + 20));
      a1 = v81;
      if (*v36 == v25 && v26 == v36[1])
      {
        goto LABEL_47;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        return 1;
      }
    }

    v38 = sub_100337A1C(a1);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      if (qword_100973960 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000C4AC(v42, qword_100981278);
      v43 = v82;
      sub_1004E9E1C(v2, v82);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v81 = v40;
        v46 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v46 = 136315394;
        v47 = v43;
        v48 = (v43 + *(v24 + 24));
        if (v48[1])
        {
          v49 = *v48;
          v50 = v48[1];
        }

        else
        {
          v49 = 0xD000000000000015;
          v50 = 0x8000000100789F30;
        }

        sub_1004E9E80(v47);
        v75 = sub_10000C4E4(v49, v50, &v83);

        *(v46 + 4) = v75;
        *(v46 + 12) = 2080;
        v40 = v81;
        *(v46 + 14) = sub_10000C4E4(v81, v41, &v83);
        _os_log_impl(&_mh_execute_header, v44, v45, "SDAirDropNearFieldService Comparing tap with browser endpoint {tap: %s, endpointContactID: %s}", v46, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004E9E80(v43);
      }

      v76 = (v2 + *(v24 + 24));
      v77 = v76[1];
      if (v77)
      {
        if (*v76 == v40 && v77 == v41)
        {
LABEL_47:

          return 1;
        }

        v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v79)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100973960 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C4AC(v51, qword_100981278);
    v52 = *(v5 + 16);
    v52(v13, a1, v4);
    v52(v11, a1, v4);
    v52(v8, a1, v4);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      LODWORD(v81) = v54;
      v56 = v55;
      v82 = swift_slowAlloc();
      v83 = v82;
      *v56 = 136315650;
      v57 = sub_100337A34(v13);
      if (v58)
      {
        v59 = v57;
      }

      else
      {
        v59 = 0xD000000000000015;
      }

      if (v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = 0x8000000100789F30;
      }

      v80 = v53;
      v61 = *(v5 + 8);
      v61(v13, v4);
      v62 = sub_10000C4E4(v59, v60, &v83);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      v63 = sub_100337A04(v11);
      if (v64)
      {
        v65 = v63;
      }

      else
      {
        v65 = 0xD000000000000015;
      }

      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0x8000000100789F30;
      }

      v61(v11, v4);
      v67 = sub_10000C4E4(v65, v66, &v83);

      *(v56 + 14) = v67;
      *(v56 + 22) = 2080;
      v68 = sub_100337A1C(v8);
      if (v69)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0xD000000000000015;
      }

      if (v69)
      {
        v71 = v69;
      }

      else
      {
        v71 = 0x8000000100789F30;
      }

      v61(v8, v4);
      v72 = sub_10000C4E4(v70, v71, &v83);

      *(v56 + 24) = v72;
      v73 = v80;
      _os_log_impl(&_mh_execute_header, v80, v81, "SDAirDropNearFieldService Failed to get endpoint identifier from endpoint.deviceName:%s endpoint.deviceIdentifier:%s endpoint.contactID:%s ", v56, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v74 = *(v5 + 8);
      v74(v8, v4);
      v74(v11, v4);
      v74(v13, v4);
    }
  }

  return 0;
}

uint64_t sub_1004E83F0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981278);
  v1 = sub_10000C4AC(v0, qword_100981278);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1004E84B8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1004E858C()
{
  result = qword_100981358;
  if (!qword_100981358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981358);
  }

  return result;
}

uint64_t sub_1004E85E0()
{
  v1 = v0;
  v2 = type metadata accessor for OSLogDateFormatter.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OSLogDateFormatter();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_1009762D8, &qword_100807790);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SDNearFieldTap(0);
  v13 = (v0 + v12[10]);
  v14 = v13[1];
  v35 = *v13;
  sub_10039D0AC();

  v15 = static NSUserDefaults.airdrop.getter();
  SFAirDropUserDefaults.boopInteractionTypeOverride.getter();

  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v11, 1, v16);
  sub_1004E9EDC(v11);
  if (v15 != 1)
  {
    v37 = v35;
    v38 = v14;
    v17._countAndFlagsBits = 0x6469727265766F5BLL;
    v17._object = 0xEB000000005D6E65;
    String.append(_:)(v17);
    v14 = v38;
    v35 = v37;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(159);
  v18._countAndFlagsBits = 542130516;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  (*(v3 + 104))(v5, enum case for OSLogDateFormatter.Style.timeNoTimeZone(_:), v2);
  static FormatStyle<>.oslog(_:)();
  (*(v3 + 8))(v5, v2);
  sub_1004EA040(&qword_100981360, &type metadata accessor for OSLogDateFormatter, &protocol conformance descriptor for OSLogDateFormatter);
  v19 = v34;
  Date.formatted<A>(_:)();
  (*(v6 + 8))(v8, v19);
  String.append(_:)(v36);

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  String.append(_:)(*(v1 + v12[5]));
  v21._countAndFlagsBits = 0x20726F6620;
  v21._object = 0xE500000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v35;
  v22._object = v14;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x6F63206874697720;
  v23._object = 0xEF203A746361746ELL;
  String.append(_:)(v23);
  v36 = *(v1 + v12[6]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v24._countAndFlagsBits = 0x203A6570797420;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  LOBYTE(v36._countAndFlagsBits) = *(v1 + v12[11]);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  v25._object = 0x8000000100793680;
  String.append(_:)(v25);
  type metadata accessor for UUID();
  sub_1004EA040(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000012;
  v27._object = 0x80000001007936A0;
  String.append(_:)(v27);
  LOBYTE(v36._countAndFlagsBits) = *(v1 + v12[17]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v28._object = 0x80000001007936C0;
  v28._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v28);
  LOBYTE(v36._countAndFlagsBits) = *(v1 + v12[18]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v29._object = 0x80000001007936F0;
  v29._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v29);
  if (*(v1 + v12[16]))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v1 + v12[16]))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  v32 = v31;
  String.append(_:)(*&v30);

  return v37;
}

unint64_t sub_1004E8B5C(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x614E656369766564;
      break;
    case 4:
      result = 0x6F4D656369766564;
      break;
    case 5:
      result = 0x49746E756F636361;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 1701869940;
      break;
    case 8:
      result = 0x6341656D61537369;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x746361736E617274;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0x496E776F6E4B7369;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1004E8D50(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100981380, &qword_1008077A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1004E9F44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for Date();
  sub_1004EA040(&qword_10097FBE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for SDNearFieldTap(0);
  LOBYTE(v14) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v14) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v14) = *(v3 + *(v9 + 44));
  v16 = 7;
  sub_1004E9FEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v14) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = (v3 + *(v9 + 52));
  v11 = v10[1];
  v14 = *v10;
  v15 = v11;
  v16 = 9;
  sub_100294008(v14, v11);
  sub_1002F3198();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v13 = v6;
  sub_100026AC0(v14, v15);
  LOBYTE(v14) = 10;
  type metadata accessor for UUID();
  sub_1004EA040(&qword_1009772A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v14) = 11;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v14) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v14) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v13 + 8))(v8, v5);
}

uint64_t sub_1004E924C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v75 = v3;
  v76 = v4;
  v5 = __chkstk_darwin(v3);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v67 - v7;
  v9 = type metadata accessor for Date();
  v77 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10028088C(&qword_100981368, &qword_100807798);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v67 - v11;
  v13 = type metadata accessor for SDNearFieldTap(0);
  __chkstk_darwin(v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CDC0(a1, a1[3]);
  sub_1004E9F44();
  v81 = v12;
  v16 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_10000C60C(a1);
  }

  v70 = v8;
  v71 = v13;
  v17 = v78;
  v82 = a1;
  v72 = v15;
  LOBYTE(v83) = 0;
  sub_1004EA040(&qword_10097FBD8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = v79;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v72;
  (*(v77 + 32))(v72, v18, v9);
  LOBYTE(v83) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v69 = v9;
  v22 = v71;
  v23 = &v20[v71[5]];
  *v23 = v21;
  v23[1] = v24;
  LOBYTE(v83) = 2;
  v68 = 0;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = &v20[v22[6]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v83) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v20[v22[7]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v83) = 4;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = &v20[v22[8]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v83) = 5;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = &v20[v22[9]];
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v83) = 6;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = &v20[v22[10]];
  *v38 = v37;
  v38[1] = v39;
  v84 = 7;
  sub_1004E9F98();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v72[v22[11]] = v83;
  LOBYTE(v83) = 8;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v79 = 0;
  v72[v71[12]] = v40 & 1;
  v84 = 9;
  sub_1002F309C();
  v48 = v79;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v79 = v48;
  if (v48)
  {
    (*(v17 + 8))(v81, v80);
    v49 = 0;
    v50 = 0;
    LODWORD(v81) = 0;
    v51 = v82;
  }

  else
  {
    *&v72[v71[13]] = v83;
    LOBYTE(v83) = 10;
    sub_1004EA040(&qword_100977288, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = v79;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v79 = v52;
    if (v52)
    {
      (*(v17 + 8))(v81, v80);
      v50 = 0;
      LODWORD(v81) = 0;
      v49 = 1;
      v51 = v82;
    }

    else
    {
      v53 = *(v76 + 32);
      v53(&v72[v71[14]], v70, v75);
      LOBYTE(v83) = 11;
      v54 = v79;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v79 = v54;
      if (v54)
      {
        (*(v17 + 8))(v81, v80);
        LODWORD(v81) = 0;
        v49 = 1;
        v50 = 1;
        v51 = v82;
      }

      else
      {
        v53(&v72[v71[15]], v74, v75);
        LOBYTE(v83) = 12;
        v55 = v79;
        v56 = KeyedDecodingContainer.decode(_:forKey:)();
        v79 = v55;
        if (!v55)
        {
          v72[v71[16]] = v56 & 1;
          LOBYTE(v83) = 13;
          v57 = v79;
          v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v79 = v57;
          if (!v57)
          {
            v72[v71[17]] = v58;
            LOBYTE(v83) = 14;
            v59 = v79;
            v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v79 = v59;
            if (!v59)
            {
              v72[v71[18]] = v60;
              LOBYTE(v83) = 15;
              v61 = v79;
              v62 = KeyedDecodingContainer.decode(_:forKey:)();
              v79 = v61;
              if (!v61)
              {
                v63 = v62;
                (*(v17 + 8))(v81, v80);
                v64 = v63 & 1;
                v66 = v72;
                v65 = v73;
                v72[v71[19]] = v64;
                sub_1004E9E1C(v66, v65);
                sub_10000C60C(v82);
                return sub_1004E9E80(v66);
              }
            }
          }
        }

        (*(v17 + 8))(v81, v80);
        v49 = 1;
        v50 = 1;
        LODWORD(v81) = 1;
        v51 = v82;
      }
    }
  }

  v41 = v77;
  v42 = v68;
  sub_10000C60C(v51);
  v43 = *(v41 + 8);
  v44 = v72;
  v43(v72, v69);
  if (!v42)
  {
  }

  v45 = v71;

  if (v49)
  {
    result = sub_100026AC0(*&v44[v45[13]], *&v44[v45[13] + 8]);
    if (v50)
    {
LABEL_9:
      v46 = v75;
      v47 = *(v76 + 8);
      result = v47(&v44[v45[14]], v75);
      if (v81)
      {
        return v47(&v44[v45[15]], v46);
      }

      return result;
    }
  }

  else if (v50)
  {
    goto LABEL_9;
  }

  if (v81)
  {
    v47 = *(v76 + 8);
    v46 = v75;
    return v47(&v44[v45[15]], v46);
  }

  return result;
}

uint64_t sub_1004E9D3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004EA334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004E9D70(uint64_t a1)
{
  v2 = sub_1004E9F44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E9DAC(uint64_t a1)
{
  v2 = sub_1004E9F44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E9E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDNearFieldTap(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9E80(uint64_t a1)
{
  v2 = type metadata accessor for SDNearFieldTap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E9EDC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009762D8, &qword_100807790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004E9F44()
{
  result = qword_100981370;
  if (!qword_100981370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981370);
  }

  return result;
}

unint64_t sub_1004E9F98()
{
  result = qword_100981378;
  if (!qword_100981378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981378);
  }

  return result;
}

unint64_t sub_1004E9FEC()
{
  result = qword_100981388;
  if (!qword_100981388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981388);
  }

  return result;
}

uint64_t sub_1004EA040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004EA088()
{
  result = qword_100981390;
  if (!qword_100981390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDNearFieldTap.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDNearFieldTap.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004EA230()
{
  result = qword_100981398;
  if (!qword_100981398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981398);
  }

  return result;
}

unint64_t sub_1004EA288()
{
  result = qword_1009813A0;
  if (!qword_1009813A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009813A0);
  }

  return result;
}

unint64_t sub_1004EA2E0()
{
  result = qword_1009813A8;
  if (!qword_1009813A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009813A8);
  }

  return result;
}

uint64_t sub_1004EA334(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100793720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100793740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6341656D61537369 && a2 == 0xED0000746E756F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100793760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100793780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001007937A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x496E776F6E4B7369 && a2 == 0xEF797469746E6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001007937C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001007937E0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1004EA84C(char a1)
{
  v2 = v1[3];
  if ((a1 & 1) == 0)
  {
    isEscapingClosureAtFileLocation = v2;
    v8 = 0;
    goto LABEL_5;
  }

  v3 = objc_opt_self();
  isEscapingClosureAtFileLocation = v2;
  v5 = [v3 tokenForCurrentProcess];
  [v5 realToken];
  v16 = v20;
  *v17 = aBlock;

  v6 = objc_allocWithZone(STActivityAttribution);
  aBlock = *v17;
  v20 = v16;
  v7 = [v6 initWithAuditToken:&aBlock];
  if (qword_100973970 != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = [objc_allocWithZone(STStatusItemsStatusDomainStatusItemAttribution) initWithStatusItemIdentifier:qword_1009A0BC8 activityAttribution:v7];

LABEL_5:
    v18 = v1[2];
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1004EB060;
    *(v9 + 24) = v7;
    v21 = sub_1004EB068;
    v22 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_1004EAF20;
    *(&v20 + 1) = &unk_1008E53C0;
    v2 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = isEscapingClosureAtFileLocation;

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v8;
    v21 = sub_1004EB090;
    v22 = v13;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_100011678;
    *(&v20 + 1) = &unk_1008E5438;
    v1 = _Block_copy(&aBlock);
    v14 = v10;

    [v18 updateVolatileData:v2 completion:v1];

    _Block_release(v1);
    _Block_release(v2);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t sub_1004EAB70()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009813B0);
  v1 = sub_10000C4AC(v0, qword_1009813B0);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_1004EAC38()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0BC8 = result;
  return result;
}

id sub_1004EAC70(void *a1, id a2, void *a3, void *a4)
{
  if (a3)
  {
    v8 = qword_100973968;
    v9 = a3;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009813B0);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a3;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Removing attribution: %@", v14, 0xCu);
      sub_10028924C(v15);
    }

    [a1 removeAttribution:v11];
  }

  if (a4)
  {
    v17 = qword_100973968;
    v18 = a4;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_1009813B0);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = a4;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Adding attribution: %@", v23, 0xCu);
      sub_10028924C(v24);
    }

    [a1 addAttribution:v20];
  }

  return [a2 setUserInitiated:1];
}

void sub_1004EAF20(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_1004EAF8C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    *(Strong + 24) = a2;
    v5 = a2;
  }
}

uint64_t sub_1004EAFFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004EB0A0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981470);
  v1 = sub_10000C4AC(v0, qword_100981470);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004EB168(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[10];
  v8 = v3[11];
  v3[10] = a1;
  v3[11] = a2;
  v9 = v6;
  sub_1002A9924(a1, a2);
  sub_10028BCC0(v7, v8);
  v10 = v3[10];
  v11 = v3[11];
  if (v11 >> 60 == 15)
  {
    sub_10028BCC0(a1, a2);
  }

  else
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    sub_1002A9924(v10, v11);
    v18 = 0x2000000000;
    v19 = __DataStorage.init(length:)() | 0x4000000000000000;
    sub_1004ED714(v10, v11, v9, &v18);
    v12 = v18;
    v13 = v19;
    sub_100294008(v18, v19);
    sub_100026AC0(v12, v13);
    sub_10028BCC0(a1, a2);
    sub_10028BCC0(v10, v11);
    v10 = v12;
    v11 = v13;
  }

  v14 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey);
  v15 = *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey);
  v16 = *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey + 8);
  *v14 = v10;
  v14[1] = v11;

  return sub_10028BCC0(v15, v16);
}

unint64_t sub_1004EB444()
{
  sub_10028088C(&qword_100978508, &unk_1007FB610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v2;
  *(inited + 72) = kSecAttrAccessGroup;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x8000000100788F10;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  *(inited + 120) = 0xD00000000000002CLL;
  *(inited + 128) = 0x8000000100793C40;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrService;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(inited + 160) = v3;
  *(inited + 168) = v4;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecUseDataProtectionKeychain;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v5 = kSecClass;
  v6 = kSecClassGenericPassword;
  v7 = kSecAttrAccessGroup;
  v8 = kSecAttrAccount;
  v9 = kSecAttrService;

  v10 = kSecUseDataProtectionKeychain;
  v11 = sub_100281720(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_100974638, &qword_1007FB620);
  swift_arrayDestroy();
  return v11;
}

unint64_t sub_1004EB5D4()
{
  sub_10028088C(&qword_100978508, &unk_1007FB610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v2;
  *(inited + 72) = kSecAttrAccessGroup;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x8000000100788F10;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  *(inited + 120) = 0xD00000000000002ALL;
  *(inited + 128) = 0x8000000100793C10;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrService;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(inited + 160) = v3;
  *(inited + 168) = v4;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecUseDataProtectionKeychain;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v5 = kSecClass;
  v6 = kSecClassGenericPassword;
  v7 = kSecAttrAccessGroup;
  v8 = kSecAttrAccount;
  v9 = kSecAttrService;

  v10 = kSecUseDataProtectionKeychain;
  v11 = sub_100281720(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_100974638, &qword_1007FB620);
  swift_arrayDestroy();
  return v11;
}

void *sub_1004EB764()
{
  result = String.utf8CString.getter();
  off_100981488 = result;
  return result;
}

void *sub_1004EB7A4()
{
  result = String.utf8CString.getter();
  off_100981490 = result;
  return result;
}

void sub_1004EB7E4()
{
  sub_1004EB444();
  type metadata accessor for CFString(0);
  sub_1004EDD68(&qword_100975630, type metadata accessor for CFString, &unk_1007F76E4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = SecItemDelete(isa);

  if (v1)
  {
    if (qword_100973978 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100981470);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412546;
      v6 = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v4 + 4) = v6;
      *v5 = v6;
      *(v4 + 12) = 1024;
      *(v4 + 14) = v1;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to delete keychain item: %@, error: %d", v4, 0x12u);
      sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1004EBA20()
{
  v1 = sub_1004EB2C4();
  v2 = (v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID);
  *v2 = v1;
  v2[1] = v3;

  if (qword_100973978 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100981470);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1004EB2C4();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 0xD000000000000015;
      v10 = 0x8000000100789F30;
    }

    v11 = sub_10000C4E4(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Set invalidRegistrationID to %s", v6, 0xCu);
    sub_10000C60C(v7);
  }
}

uint64_t sub_1004EBBC8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_100294008(a1, a2);
  sub_1004EB168(a1, a2);
  v6 = v2[7];
  if (v6)
  {
    v7 = v3[6];
    sub_10028088C(&qword_100978508, &unk_1007FB610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FA7E0;
    *(inited + 32) = kSecValueData;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    *(inited + 64) = &type metadata for Data;
    *(inited + 72) = kSecAttrAccessible;
    *(inited + 80) = v7;
    *(inited + 88) = v6;
    *(inited + 104) = &type metadata for String;
    *(inited + 112) = kSecAttrLabel;
    v9 = v3[3];
    v22 = v3[2];
    sub_100294008(a1, a2);

    v10 = kSecValueData;
    v11 = kSecAttrAccessible;
    v12 = kSecAttrLabel;
    v13._countAndFlagsBits = v22;
    v13._object = v9;
    String.append(_:)(v13);
    *(inited + 120) = 0x3A676E69676E6172;
    *(inited + 128) = 0xE900000000000020;
    *(inited + 144) = &type metadata for String;
    *(inited + 152) = kSecAttrIsInvisible;
    *(inited + 184) = &type metadata for Bool;
    *(inited + 160) = 1;
    v14 = kSecAttrIsInvisible;
    v15 = sub_100281720(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_100974638, &qword_1007FB620);
    swift_arrayDestroy();
    v16 = sub_1004EB444();
    sub_10028776C(v16, v15);
  }

  else
  {
    v18 = sub_100010F88(10, 0xD00000000000002CLL, 0x8000000100793BE0);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    return swift_willThrow();
  }
}

void sub_1004EBE08(uint64_t a1, unint64_t a2)
{
  v3 = v2[12];
  v4 = v2[13];
  v2[12] = a1;
  v2[13] = a2;
  sub_100294008(a1, a2);
  sub_10028BCC0(v3, v4);
  v5 = [objc_allocWithZone(SDAutoUnlockEscrowSecretInfo) init];
  if (v5)
  {
    v6 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v6 setSecret:isa];

    v8 = [v6 data];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      v32 = v11;

      sub_10028088C(&qword_100978508, &unk_1007FB610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F8830;
      *(inited + 32) = kSecValueData;
      *(inited + 40) = v10;
      *(inited + 48) = v12;
      *(inited + 64) = &type metadata for Data;
      *(inited + 72) = kSecAttrAccessible;
      type metadata accessor for CFString(0);
      *(inited + 80) = kSecAttrAccessibleAfterFirstUnlock;
      *(inited + 104) = v14;
      *(inited + 112) = kSecAttrLabel;
      v15 = v2[3];
      v31 = v2[2];
      v16 = kSecValueData;
      sub_100294008(v10, v32);
      v17 = kSecAttrAccessible;
      v18 = kSecAttrAccessibleAfterFirstUnlock;
      v19 = kSecAttrLabel;
      v20._countAndFlagsBits = v31;
      v20._object = v15;
      String.append(_:)(v20);
      *(inited + 144) = &type metadata for String;
      *(inited + 120) = 0x203A776F72637365;
      *(inited + 128) = 0xE800000000000000;
      v21 = sub_100281720(inited);
      swift_setDeallocating();
      sub_10028088C(&qword_100974638, &qword_1007FB620);
      swift_arrayDestroy();
      v22 = sub_1004EB5D4();
      sub_10028776C(v22, v21);

      sub_100026AC0(v10, v32);
    }

    else
    {
      v27 = sub_100010F88(10, 0xD000000000000036, 0x8000000100793BA0);
      v29 = v28;
      sub_1000115C8();
      swift_allocError();
      *v30 = v27;
      *(v30 + 8) = v29;
      swift_willThrow();
    }
  }

  else
  {
    v23 = sub_100010F88(10, 0xD00000000000002DLL, 0x8000000100793B70);
    v25 = v24;
    sub_1000115C8();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    swift_willThrow();
  }
}

void sub_1004EC118()
{
  v1 = v0;
  v2 = sub_1004EB5D4();
  v3 = sub_100010858(v2);
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10028BCC0(v3, v5);
  }

  v22 = [objc_allocWithZone(SDAutoUnlockEscrowSecretInfo) initWithData:isa];

  if (v22 && (v7 = [v22 secret]) != 0)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  *(v1 + 96) = v9;
  *(v1 + 104) = v11;
  sub_10028BCC0(v12, v13);
  if (qword_100973978 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100981470);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;
    sub_1002A9924(*(v1 + 96), *(v1 + 104));
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    v19 = String.init<A>(describing:)();
    v21 = sub_10000C4E4(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Loaded escrow: %s", v17, 0xCu);
    sub_10000C60C(v18);
  }

  else
  {
  }
}

uint64_t sub_1004EC384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_100973988 != -1)
  {
    swift_once();
  }

  v7 = off_100981490;
  v8 = *(off_100981490 + 2);
  if (qword_100973980 != -1)
  {
    swift_once();
  }

  return sub_1004ED8F8(a4, a1, a2, v7 + 32, v7 + v8 + 32, off_100981488 + 32, off_100981488 + *(off_100981488 + 2) + 32);
}

uint64_t sub_1004EC47C()
{

  sub_100026AC0(*(v0 + 64), *(v0 + 72));
  sub_10028BCC0(*(v0 + 80), *(v0 + 88));
  sub_10028BCC0(*(v0 + 96), *(v0 + 104));

  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID, &unk_100976120, &qword_1007F9260);
  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate, &qword_10097A7F0, &unk_1007FB600);
  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID, &unk_100976120, &qword_1007F9260);
  sub_100005508(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate, &qword_10097A7F0, &unk_1007FB600);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey), *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey + 8));
  return v0;
}

uint64_t sub_1004EC58C()
{
  sub_1004EC47C();

  return swift_deallocClassInstance();
}

uint64_t _s9RemoteLTKCMa(uint64_t a1)
{
  result = qword_1009814D0;
  if (!qword_1009814D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004EC638(uint64_t a1)
{
  sub_1004EC778(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1004EC778(319, &qword_10097DB80, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004EC778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1004EC7CC()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v75 - v6;
  v81 = type metadata accessor for Date();
  v8 = *(v81 - 8);
  v9 = __chkstk_darwin(v81);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v75 - v12;
  v13 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v14 = __chkstk_darwin(v13 - 8);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  v18 = type metadata accessor for UUID();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = __chkstk_darwin(v18);
  v78 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v75 - v21;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v89._countAndFlagsBits = 0xD000000000000015;
  v89._object = 0x8000000100793A50;
  String.append(_:)(v0[1]);
  v23._countAndFlagsBits = 0xD000000000000013;
  v23._object = 0x8000000100793A70;
  String.append(_:)(v23);
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  object = v0[4]._object;
  v26 = object >> 62;
  if ((object >> 62) > 1)
  {
    v27 = 0;
    if (v26 != 2)
    {
      goto LABEL_10;
    }

    v29 = countAndFlagsBits + 16;
    countAndFlagsBits = *(countAndFlagsBits + 16);
    v28 = *(v29 + 8);
    v30 = __OFSUB__(v28, countAndFlagsBits);
    v27 = v28 - countAndFlagsBits;
    if (!v30)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v26)
  {
    v27 = BYTE6(object);
    goto LABEL_10;
  }

  v30 = __OFSUB__(HIDWORD(countAndFlagsBits), countAndFlagsBits);
  v31 = HIDWORD(countAndFlagsBits) - countAndFlagsBits;
  if (v30)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v27 = v31;
LABEL_10:
  v76 = v11;
  v82 = v8;
  v88._countAndFlagsBits = v27;
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v90 = v89;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v89._countAndFlagsBits = 0xD000000000000010;
  v89._object = 0x8000000100793A90;
  String.append(_:)(v0[2]);
  String.append(_:)(v89);

  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v33._object = 0x8000000100793AB0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34 = v0[5]._object;
  v35 = v34 >> 60;
  if (v34 >> 60 == 15)
  {
    v36 = 0;
    v37 = v83;
  }

  else
  {
    v36 = v0[5]._countAndFlagsBits;
    v49 = v34 >> 62;
    v37 = v83;
    if ((v34 >> 62) > 1)
    {
      if (v49 == 2)
      {
        v71 = v36 + 16;
        v69 = *(v36 + 16);
        v70 = *(v71 + 8);
        v30 = __OFSUB__(v70, v69);
        v36 = v70 - v69;
        if (v30)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      if (v49)
      {
        goto LABEL_42;
      }

      v36 = BYTE6(v34);
    }
  }

  while (1)
  {
    v88._countAndFlagsBits = v36;
    LOBYTE(v88._object) = v35 > 0xE;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v38._countAndFlagsBits = 0x53776F7263736520;
    v38._object = 0xEC0000003D657A69;
    String.append(_:)(v38);
    v39 = v0[6]._object;
    v35 = v39 >> 60;
    v79 = v5;
    if (v39 >> 60 == 15)
    {
LABEL_13:
      v36 = 0;
      goto LABEL_14;
    }

    v36 = v0[6]._countAndFlagsBits;
    v49 = v39 >> 62;
    if ((v39 >> 62) <= 1)
    {
      break;
    }

LABEL_38:
    if (v49 != 2)
    {
      goto LABEL_13;
    }

    v74 = v36 + 16;
    v72 = *(v36 + 16);
    v73 = *(v74 + 8);
    v30 = __OFSUB__(v73, v72);
    v36 = v73 - v72;
    if (!v30)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_42:
    v30 = __OFSUB__(HIDWORD(v36), v36);
    LODWORD(v36) = HIDWORD(v36) - v36;
    if (v30)
    {
      goto LABEL_48;
    }

    v36 = v36;
  }

  if (v49)
  {
    v30 = __OFSUB__(HIDWORD(v36), v36);
    LODWORD(v36) = HIDWORD(v36) - v36;
    if (v30)
    {
      goto LABEL_49;
    }

    v36 = v36;
  }

  else
  {
    v36 = BYTE6(v39);
  }

LABEL_14:
  v88._countAndFlagsBits = v36;
  LOBYTE(v88._object) = v35 > 0xE;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v40._countAndFlagsBits = 0x676E697269617020;
  v40._object = 0xEB000000003D4449;
  String.append(_:)(v40);
  v88 = v0[7];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  String.append(_:)(v89);

  v41 = sub_1004EB2C4();
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v89._countAndFlagsBits = 0xD000000000000010;
    v89._object = 0x8000000100793B50;
    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);

    String.append(_:)(v89);
  }

  v46 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000FF90(v1 + v46, v17, &unk_100976120, &qword_1007F9260);
  v47 = *(v37 + 48);
  v48 = v84;
  if (v47(v17, 1, v84) == 1)
  {
    sub_100005508(v17, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    (*(v37 + 32))(v22, v17, v48);
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v88._countAndFlagsBits = 0xD000000000000011;
    v88._object = 0x8000000100793B30;
    sub_1004EDD68(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v50);

    String.append(_:)(v88);

    (*(v37 + 8))(v22, v48);
  }

  v51 = v82;
  v52 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
  swift_beginAccess();
  sub_10000FF90(v1 + v52, v7, &qword_10097A7F0, &unk_1007FB600);
  v53 = *(v51 + 48);
  v54 = v81;
  if (v53(v7, 1, v81) == 1)
  {
    sub_100005508(v7, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v55 = v77;
    (*(v51 + 32))(v77, v7, v54);
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v87._countAndFlagsBits = 0xD000000000000018;
    v87._object = 0x8000000100793B10;
    sub_1004EDD68(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v56);

    String.append(_:)(v87);

    (*(v51 + 8))(v55, v54);
  }

  v57 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID;
  swift_beginAccess();
  v58 = v1 + v57;
  v59 = v80;
  sub_10000FF90(v58, v80, &unk_100976120, &qword_1007F9260);
  v60 = v84;
  if (v47(v59, 1, v84) == 1)
  {
    sub_100005508(v59, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v61 = v83;
    v62 = v78;
    (*(v83 + 32))(v78, v59, v60);
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v86._countAndFlagsBits = 0xD000000000000017;
    v86._object = 0x8000000100793AF0;
    sub_1004EDD68(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    String.append(_:)(v86);

    (*(v61 + 8))(v62, v60);
  }

  v64 = v79;
  v65 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate;
  swift_beginAccess();
  sub_10000FF90(v1 + v65, v64, &qword_10097A7F0, &unk_1007FB600);
  if (v53(v64, 1, v54) == 1)
  {
    sub_100005508(v64, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v66 = v82;
    v67 = v76;
    (*(v82 + 32))(v76, v64, v54);
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v85._countAndFlagsBits = 0xD000000000000017;
    v85._object = 0x8000000100793AD0;
    sub_1004EDD68(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v68);

    String.append(_:)(v85);

    (*(v66 + 8))(v67, v54);
  }
}

uint64_t sub_1004ED380(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100981710, &qword_100807AE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_1004EE250();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_100320328(&v13, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v12, *(&v12 + 1));
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004ED588()
{
  v1 = 0x696669746E656469;
  v2 = 0x654B64656E676973;
  if (*v0 != 2)
  {
    v2 = 0x49676E6972696170;
  }

  if (*v0)
  {
    v1 = 0x4449656369766564;
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

uint64_t sub_1004ED618@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004EDDC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004ED640(uint64_t a1)
{
  v2 = sub_1004EE250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004ED67C(uint64_t a1)
{
  v2 = sub_1004EE250();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1004ED6B8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1004EDF3C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1004ED714(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v20, 0, 14);
      v6 = v20;
      v5 = v20;
      return sub_1004EC384(v6, v5, a3, a4);
    }

    v7 = a3;
    v8 = a4;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v11 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v9 - a1;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    BYTE4(v20[1]) = BYTE4(a2);
    BYTE5(v20[1]) = BYTE5(a2);
    v5 = v20 + BYTE6(a2);
    v6 = v20;
    return sub_1004EC384(v6, v5, a3, a4);
  }

  v14 = a1;
  v13 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = a3;
  v8 = a4;
  v11 = __DataStorage._bytes.getter();
  if (v11)
  {
    v15 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v15))
    {
      v11 += v14 - v15;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v16 = __DataStorage._length.getter();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  v6 = v11;
  a3 = v7;
  a4 = v8;
  return sub_1004EC384(v6, v5, a3, a4);
}

uint64_t sub_1004ED8F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return CryptoHKDF();
    }

    sub_100026AC0(v9, v8);
    *a1 = xmmword_1007FAD30;
    sub_100026AC0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (!__OFSUB__(v12, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v13, v12))
      {
        __DataStorage._length.getter();
        result = CryptoHKDF();
        v14 = v8 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        *a1 = v9;
LABEL_20:
        a1[1] = v14;
        return result;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    sub_100026AC0(v9, v8);
    LOWORD(v18) = v8;
    BYTE2(v18) = BYTE2(v8);
    HIBYTE(v18) = BYTE3(v8);
    LOBYTE(v19) = BYTE4(v8);
    HIBYTE(v19) = BYTE5(v8);
    result = CryptoHKDF();
    *a1 = v9;
    a1[1] = v18 | ((v19 | (BYTE6(v8) << 16)) << 32);
    return result;
  }

  v15 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100026AC0(v9, v8);
  *a1 = xmmword_1007FAD30;
  sub_100026AC0(0, 0xC000000000000000);
  v16 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v16 < v9)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_26:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v15 = v17;
  }

  if (v16 < v9)
  {
    goto LABEL_22;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v9, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      CryptoHKDF();

      v14 = v15 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1004EDD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004EDDC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B64656E676973 && a2 == 0xED00006174614479 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49676E6972696170 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1004EDF3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100981700, &qword_100807AD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1004EE250();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v30) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v10;
  LOBYTE(v30) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v24 + 1) = v12;
  *&v24 = v11;
  LOBYTE(v26) = 2;
  sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v31;
  v23 = v30;
  v37 = 3;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v25;
  *&v26 = v9;
  *(&v26 + 1) = v25;
  v17 = v24;
  v27 = v24;
  v18 = v22;
  *&v28 = v23;
  *(&v28 + 1) = v22;
  *&v29 = v13;
  *(&v29 + 1) = v15;
  sub_1004EE2A4(&v26, &v30);
  sub_10000C60C(a1);
  v30 = v9;
  v31 = v16;
  v32 = __PAIR128__(*(&v24 + 1), v17);
  v33 = v23;
  v34 = v18;
  v35 = v13;
  v36 = v15;
  result = sub_1004EE2DC(&v30);
  v20 = v27;
  *a2 = v26;
  a2[1] = v20;
  v21 = v29;
  a2[2] = v28;
  a2[3] = v21;
  return result;
}

unint64_t sub_1004EE250()
{
  result = qword_100981708;
  if (!qword_100981708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981708);
  }

  return result;
}

unint64_t sub_1004EE320()
{
  result = qword_100981718;
  if (!qword_100981718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981718);
  }

  return result;
}

unint64_t sub_1004EE378()
{
  result = qword_100981720;
  if (!qword_100981720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981720);
  }

  return result;
}

unint64_t sub_1004EE3D0()
{
  result = qword_100981728;
  if (!qword_100981728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981728);
  }

  return result;
}

uint64_t sub_1004EE424()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981730);
  v1 = sub_10000C4AC(v0, qword_100981730);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004EE4EC(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2[134] = swift_task_alloc();
  v2[135] = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();

  return _swift_task_switch(sub_1004EE5C8, v1, 0);
}

uint64_t sub_1004EE5C8()
{
  v60 = v0;
  v1 = *(v0 + 1056);
  sub_1004F3F30();
  sub_10000FF90(v1, v0 + 696, &qword_1009819B8, &qword_100807D60);
  if (*(v0 + 720))
  {
    v2 = (v0 + 56);
    sub_1000121F8((v0 + 696), v0 + 56);
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100981730);
    sub_1002A9938(v0 + 56, v0 + 656);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v59[0] = v7;
      *v6 = 136315138;
      sub_1002A9938(v0 + 656, v0 + 16);
      sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
      v8 = String.init<A>(describing:)();
      v10 = v9;
      sub_10000C60C((v0 + 656));
      v11 = sub_10000C4E4(v8, v10, v59);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received input %s)", v6, 0xCu);
      sub_10000C60C(v7);
    }

    else
    {

      sub_10000C60C((v0 + 656));
    }

    v20 = *(v0 + 80);
    v21 = sub_10002CDC0((v0 + 56), v20);
    *(v0 + 880) = v20;
    v22 = sub_10002F604((v0 + 856));
    (*(*(v20 - 8) + 16))(v22, v21, v20);
    sub_1004F492C(v0 + 856);
    v23 = *(v0 + 1064);
    sub_10000C60C((v0 + 856));
    sub_1002A9938(v23 + 112, v0 + 616);
    v24 = *(v0 + 640);
    v25 = *(v0 + 648);
    sub_10002CDC0((v0 + 616), v24);
    v26 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
    swift_beginAccess();
    sub_1002A9938(v23 + v26, v0 + 536);
    (*(v25 + 80))(v0 + 56, v0 + 536, v24, v25);
    sub_10000C60C((v0 + 536));
    sub_1000121F8((v0 + 576), v0 + 296);
    sub_10000C60C((v0 + 616));
    goto LABEL_19;
  }

  v12 = *(v0 + 1064);
  sub_100005508(v0 + 696, &qword_1009819B8, &qword_100807D60);
  v13 = v12[17];
  v14 = v12[18];
  v15 = sub_10002CDC0(v12 + 14, v13);
  v16 = *(v13 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v13);
  LOBYTE(v15) = (*(v14 + 16))(v13, v14);
  (*(v16 + 8))(v17, v13);

  if (v15)
  {
    v2 = (v0 + 256);
    sub_1002A9938((v12 + 14), v0 + 256);
    v18 = *(v0 + 280);
    v19 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v18);
    (*(v19 + 72))(v18, v19);
LABEL_19:
    sub_10000C60C(v2);
    v43 = *(v0 + 320);
    v44 = *(v0 + 328);
    sub_10002CDC0((v0 + 296), v43);
    v45 = (*(v44 + 16))(v43, v44);
    if ((v45 & 0x100000000) == 0)
    {
      v46 = v45;
      if (qword_100973990 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000C4AC(v47, qword_100981730);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 67109120;
        *(v50 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v48, v49, "Using userID for keybag: %u", v50, 8u);
      }
    }

    v51 = *(v0 + 1064);
    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
    *(v0 + 1104) = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
    swift_beginAccess();
    sub_1004F43E0((v51 + v52), (v0 + 296));
    swift_endAccess();
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 1064);
    v54 = *(v0 + 320);
    v55 = *(v0 + 328);
    sub_10002CDC0((v0 + 296), v54);
    v56 = (*(v55 + 16))(v54, v55);
    *(v0 + 1136) = v56;
    *(v0 + 1140) = BYTE4(v56) & 1;
    v57 = swift_task_alloc();
    *(v0 + 1112) = v57;
    *(v57 + 16) = v0 + 296;
    *(v57 + 24) = v53;
    sub_1004F48E4(&unk_100981990, type metadata accessor for SDAuthenticationSessionExecutor, &unk_100807CD8);
    v58 = swift_task_alloc();
    *(v0 + 1120) = v58;
    *v58 = v0;
    v58[1] = sub_1004EF050;
    v62 = 56;
    v63 = &type metadata for () + 8;

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
  }

  v27 = *(v0 + 1064);
  v28 = *(v0 + 1056);
  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  *(v0 + 1016) = 0;
  *(v0 + 1024) = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  v29._object = 0x8000000100793D20;
  String.append(_:)(v29);
  sub_1002A9938((v12 + 14), v0 + 136);
  sub_10002CDC0((v0 + 136), *(v0 + 160));
  swift_getDynamicType();
  sub_10000C60C((v0 + 136));
  v30._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v30);

  v31._object = 0x8000000100793D40;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  sub_10000FF90(v28, v0 + 176, &qword_1009819B8, &qword_100807D60);
  sub_10028088C(&qword_1009819B8, &qword_100807D60);
  v32._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0xD000000000000014;
  v33._object = 0x8000000100793D60;
  String.append(_:)(v33);
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
  swift_beginAccess();
  sub_1002A9938(v27 + v34, v0 + 216);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  _print_unlocked<A, B>(_:_:)();
  sub_10000C60C((v0 + 216));
  LODWORD(v34) = sub_100010F88(10, *(v0 + 1016), *(v0 + 1024));
  v36 = v35;
  sub_1000115C8();
  v37 = swift_allocError();
  *v38 = v34;
  *(v38 + 8) = v36;
  swift_willThrow();
  *(v0 + 1048) = v37;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_1004F1934(*(v0 + 1000), *(v0 + 1008));
  }

  else
  {

    *(v0 + 1040) = v37;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    if (swift_dynamicCast())
    {

      v39 = sub_100010F88(*(v0 + 1144), 0, 0xE000000000000000);
    }

    else
    {

      *(v0 + 984) = 0;
      *(v0 + 992) = 0xE000000000000000;
      *(v0 + 1032) = v37;
      _print_unlocked<A, B>(_:_:)();
      v39 = sub_100010F88(10, *(v0 + 984), *(v0 + 992));
    }

    sub_1004F1934(v39, v40);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1004EF050()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 1064);

    v4 = sub_1004EFD10;
  }

  else
  {
    v3 = *(v2 + 1064);

    v4 = sub_1004EF17C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004EF17C()
{
  v71 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1064);
  swift_beginAccess();
  sub_1004F43E0((v2 + v1), (v0 + 296));
  swift_endAccess();
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_1004F48E4(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    v3 = swift_allocError();
    *v4 = 14;
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = *(v0 + 1064);
  v6 = v5[17];
  v7 = v5[18];
  v8 = sub_10002CDC0(v5 + 14, v6);
  v9 = *(v6 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v6);
  (*(v7 + 24))(v6, v7);
  (*(v9 + 8))(v10, v6);

  sub_1002A9938(v0 + 296, v0 + 376);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_1009819C0, &qword_100807D78);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 1128);
    v12 = *(v0 + 1096);
    sub_1000121F8((v0 + 416), v0 + 336);
    sub_1002A9938(v12, v0 + 736);
    sub_10002CDC0((v0 + 736), *(v0 + 760));
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    sub_10002F5B4(v0 + 336, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v3 = v11;
    v17 = *(v0 + 1096);
    if (v3)
    {
      sub_1004F4278(*(v0 + 1096));
      sub_10000C60C((v0 + 736));
      sub_10000C60C((v0 + 336));
LABEL_6:
      sub_10000C60C((v0 + 296));
      *(v0 + 1048) = v3;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {

        sub_1004F1934(*(v0 + 1000), *(v0 + 1008));
      }

      else
      {

        *(v0 + 1040) = v3;
        swift_errorRetain();
        type metadata accessor for SFAuthenticationErrorCode(0);
        if (swift_dynamicCast())
        {

          v18 = sub_100010F88(*(v0 + 1144), 0, 0xE000000000000000);
        }

        else
        {

          *(v0 + 984) = 0;
          *(v0 + 992) = 0xE000000000000000;
          *(v0 + 1032) = v3;
          _print_unlocked<A, B>(_:_:)();
          v18 = sub_100010F88(10, *(v0 + 984), *(v0 + 992));
        }

        sub_1004F1934(v18, v19);
      }

      goto LABEL_44;
    }

    v20 = v15;
    v21 = v16;
    v22 = *(v0 + 1080);
    v23 = *(v0 + 360);
    v24 = *(v0 + 368);
    sub_10002CDC0((v0 + 336), v23);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = sub_1004FE08C(*(v17 + *(v22 + 28)));
    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_1009895D8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v70[0] = v31;
      *v30 = 136315138;
      v32 = v26;
      v68 = v26;
      v69 = v25;
      v67 = v31;
      if (v26 <= 2u)
      {
        v33 = 0xEB0000000074656ELL;
        if (v32)
        {
          if (v32 == 1)
          {
            v33 = 0xE800000000000000;
            v34 = 0x6C61636F4C736469;
          }

          else
          {
            v34 = 0x7265746E49736469;
          }
        }

        else
        {
          v33 = 0xEB00000000746E65;
          v34 = 0x674179627261656ELL;
        }
      }

      else if (v26 > 4u)
      {
        if (v26 == 5)
        {
          v33 = 0x80000001007888E0;
          v34 = 0xD000000000000010;
        }

        else
        {
          v33 = 0xED000068746F6F74;
          v34 = 0x65756C4265726F63;
        }
      }

      else if (v26 == 3)
      {
        v33 = 0xE900000000000054;
        v34 = 0x4274726F70706172;
      }

      else
      {
        v33 = 0xEB000000004C4457;
        v34 = 0x4174726F70706172;
      }

      v35 = sub_10000C4E4(v34, v33, v70);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Using transport type %s", v30, 0xCu);
      sub_10000C60C(v67);

      v26 = v68;
      v25 = v69;
    }

    else
    {
    }

    sub_1005CCC7C(v20, v21, v17 + 40, v25, v26);
    sub_100026AC0(v20, v21);
    sub_10000C60C((v0 + 736));
    sub_10000C60C((v0 + 336));
  }

  else
  {
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    sub_100005508(v0 + 416, &qword_1009819C8, &qword_100807D80);
  }

  sub_1002A9938(v0 + 296, v0 + 456);
  sub_10028088C(&qword_1009819D0, &qword_100807D88);
  if (swift_dynamicCast())
  {
    sub_10000C60C((v0 + 496));
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 1096);
    v37 = *(v0 + 1088);
    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_100981730);
    sub_1004F4880(v36, v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 1088);
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v70[0] = v44;
      *v43 = 136315138;
      type metadata accessor for UUID();
      sub_1004F48E4(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_1004F4278(v42);
      v48 = sub_10000C4E4(v45, v47, v70);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "sessionDidComplete for %s", v43, 0xCu);
      sub_10000C60C(v44);
    }

    else
    {

      sub_1004F4278(v42);
    }

    v50 = *(v0 + 1096);
    v60 = *(v0 + 1080);
    sub_10002CDC0(v50, v50[3]);
    sub_1006D3D04(v50 + *(v60 + 24));
    goto LABEL_42;
  }

  sub_1002A9938(v0 + 296, v0 + 816);
  sub_10028088C(&qword_1009819D8, &qword_100807D90);
  v49 = swift_dynamicCast();
  v50 = *(v0 + 1096);
  v51 = *(v0 + 1072);
  v52 = *(v0 + 1064);
  if (!v49)
  {
    *(v0 + 808) = 0;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    sub_100005508(v0 + 776, &unk_1009819E0, &qword_100807D98);
    v61 = *(v52 + 152);
    v62 = type metadata accessor for TaskPriority();
    (*(*(v62 - 8) + 56))(v51, 1, 1, v62);
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    *(v64 + 48) = 12;
    *(v52 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer) = sub_1002B281C(0, 0, v51, &unk_100807DA8, v64);

LABEL_42:
    sub_1004F4278(v50);
    goto LABEL_43;
  }

  sub_1000121F8((v0 + 776), v0 + 96);
  v53 = *(v0 + 120);
  v54 = *(v0 + 128);
  sub_10002CDC0((v0 + 96), v53);
  v55 = (*(v54 + 8))(v53, v54);
  v56 = *(v52 + 152);
  v57 = type metadata accessor for TaskPriority();
  (*(*(v57 - 8) + 56))(v51, 1, 1, v57);
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v56;
  *(v59 + 40) = v58;
  *(v59 + 48) = v55;
  *(v52 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer) = sub_1002B281C(0, 0, v51, &unk_100807DB0, v59);

  sub_1004F4278(v50);
  sub_10000C60C((v0 + 96));
LABEL_43:
  sub_10000C60C((v0 + 296));
LABEL_44:

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1004EFD10()
{
  sub_10000C60C((v0 + 296));
  v1 = *(v0 + 1128);
  *(v0 + 1048) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_1004F1934(*(v0 + 1000), *(v0 + 1008));
  }

  else
  {

    *(v0 + 1040) = v1;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    if (swift_dynamicCast())
    {

      v2 = sub_100010F88(*(v0 + 1144), 0, 0xE000000000000000);
    }

    else
    {

      *(v0 + 984) = 0;
      *(v0 + 992) = 0xE000000000000000;
      *(v0 + 1032) = v1;
      _print_unlocked<A, B>(_:_:)();
      v2 = sub_100010F88(10, *(v0 + 984), *(v0 + 992));
    }

    sub_1004F1934(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004EFEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v5 = type metadata accessor for UUID();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_1004EFFE8, a3, 0);
}

uint64_t sub_1004EFFE8()
{
  v54 = v0;
  v1 = v0[22];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_10002CDC0(v1, v2);
  v5 = *(v2 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v2);
  v7 = (*(v3 + 8))(v2, v3);
  v0[30] = v7;
  (*(v5 + 8))(v6, v2);

  v8 = *(v7 + 16);
  v0[31] = v8;
  if (v8)
  {
    v0[32] = 0;
    v9 = v0[30];
    if (*(v9 + 16))
    {
      sub_1002A9938(v9 + 32, (v0 + 2));
      if (qword_100973990 == -1)
      {
LABEL_4:
        v10 = type metadata accessor for Logger();
        sub_10000C4AC(v10, qword_100981730);
        sub_1002A9938((v0 + 2), (v0 + 7));

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = v0[29];
          v14 = v0[26];
          v15 = v0[25];
          v47 = v0[27];
          v48 = v0[24];
          loga = v11;
          v16 = v0[23];
          v17 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v17 = 136315394;
          v19 = v16[17];
          v18 = v16[18];
          v20 = sub_10002CDC0(v16 + 14, v19);
          v49 = v12;
          v21 = *(v19 - 8);
          v22 = swift_task_alloc();
          (*(v21 + 16))(v22, v20, v19);
          (*(v18 + 24))(v19, v18);
          (*(v21 + 8))(v22, v19);
          (*(v15 + 16))(v14, v13 + *(v47 + 24), v48);
          sub_1004F4278(v13);
          v23 = UUID.uuidString.getter();
          v25 = v24;
          (*(v15 + 8))(v14, v48);
          sub_10054141C(8, v23, v25);

          v26 = static String._fromSubstring(_:)();
          v28 = v27;

          v29 = sub_10000C4E4(v26, v28, &v53);

          *(v17 + 4) = v29;
          *(v17 + 12) = 2080;
          sub_10002CDC0(v0 + 7, v0[10]);
          swift_getDynamicType();
          v30 = _typeName(_:qualified:)();
          v32 = v31;
          sub_10000C60C(v0 + 7);
          v33 = sub_10000C4E4(v30, v32, &v53);

          *(v17 + 14) = v33;
          _os_log_impl(&_mh_execute_header, loga, v49, "%s: Running step: %s", v17, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10000C60C(v0 + 7);
        }

        v36 = v0[23];
        sub_1002A9938(v0[22], (v0 + 12));
        v37 = v0[15];
        v38 = sub_10002CDC0(v0 + 12, v37);
        v39 = v0[5];
        v50 = v38;
        log = v0[6];
        v40 = sub_10002CDC0(v0 + 2, v39);
        v41 = v36[17];
        v42 = v36[18];
        sub_10002CDC0(v36 + 14, v41);
        v43 = *(v41 - 8);
        v44 = swift_task_alloc();
        v0[33] = v44;
        (*(v43 + 16))();
        (*(v42 + 24))(v41, v42);
        (*(v43 + 8))(v44, v41);
        v45 = swift_task_alloc();
        v0[34] = v45;
        *v45 = v0;
        v45[1] = sub_1004F0644;
        v46 = v0[28];

        return sub_1004F1488((v0 + 17), v50, v40, v46, v39, v37, log);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004F0644()
{
  v2 = *v1;
  v2[35] = v0;

  v3 = v2[23];
  sub_1004F4278(v2[28]);
  if (v0)
  {

    v4 = sub_1004F0D78;
  }

  else
  {

    v4 = sub_1004F07A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004F07A8()
{
  v50 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v3 = *(v0 + 256) + 1;
  sub_10000C60C(v2);
  sub_1000121F8((v0 + 136), v2);
  sub_10000C60C((v0 + 96));
  sub_10000C60C((v0 + 16));
  if (v3 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 256) + 1;
  *(v0 + 256) = v6;
  v7 = *(v0 + 240);
  if (v6 >= *(v7 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1002A9938(v7 + 40 * v6 + 32, v0 + 16);
  if (qword_100973990 != -1)
  {
LABEL_14:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100981730);
  sub_1002A9938(v0 + 16, v0 + 56);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 208);
    v13 = *(v0 + 200);
    v43 = *(v0 + 216);
    v44 = *(v0 + 192);
    loga = v9;
    v14 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v15 = 136315394;
    v17 = v14[17];
    v16 = v14[18];
    v18 = sub_10002CDC0(v14 + 14, v17);
    v45 = v10;
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v18, v17);
    (*(v16 + 24))(v17, v16);
    (*(v19 + 8))(v20, v17);
    (*(v13 + 16))(v12, v11 + *(v43 + 24), v44);
    sub_1004F4278(v11);
    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v13 + 8))(v12, v44);
    sub_10054141C(8, v21, v23);

    v24 = static String._fromSubstring(_:)();
    v26 = v25;

    v27 = sub_10000C4E4(v24, v26, &v49);

    *(v15 + 4) = v27;
    *(v15 + 12) = 2080;
    sub_10002CDC0((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    v28 = _typeName(_:qualified:)();
    v30 = v29;
    sub_10000C60C((v0 + 56));
    v31 = sub_10000C4E4(v28, v30, &v49);

    *(v15 + 14) = v31;
    _os_log_impl(&_mh_execute_header, loga, v45, "%s: Running step: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000C60C((v0 + 56));
  }

  v32 = *(v0 + 184);
  sub_1002A9938(*(v0 + 176), v0 + 96);
  v33 = *(v0 + 120);
  v34 = sub_10002CDC0((v0 + 96), v33);
  v35 = *(v0 + 40);
  v46 = v34;
  log = *(v0 + 48);
  v36 = sub_10002CDC0((v0 + 16), v35);
  v37 = v32[17];
  v38 = v32[18];
  sub_10002CDC0(v32 + 14, v37);
  v39 = *(v37 - 8);
  v40 = swift_task_alloc();
  *(v0 + 264) = v40;
  (*(v39 + 16))();
  (*(v38 + 24))(v37, v38);
  (*(v39 + 8))(v40, v37);
  v41 = swift_task_alloc();
  *(v0 + 272) = v41;
  *v41 = v0;
  v41[1] = sub_1004F0644;
  v42 = *(v0 + 224);

  return sub_1004F1488(v0 + 136, v46, v36, v42, v35, v33, log);
}

uint64_t sub_1004F0D78()
{

  sub_10000C60C(v0 + 12);
  sub_10000C60C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004F0E14()
{
  v1 = v0;
  v42 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v2 = __chkstk_darwin(v42);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973990 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100981730);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v14;
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v14 = 136315138;
    v15 = v1[17];
    v16 = v1[18];
    v17 = sub_10002CDC0(v1 + 14, v15);
    v37 = &v37;
    v18 = *(v15 - 8);
    v41 = v4;
    v19 = v18;
    __chkstk_darwin(v17);
    v38 = v13;
    v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    (*(v16 + 24))(v15, v16);
    (*(v19 + 8))(v21, v15);
    v4 = v41;
    (*(v8 + 16))(v10, &v6[*(v42 + 24)], v7);
    sub_1004F4278(v6);
    sub_1004F48E4(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v8 + 8))(v10, v7);
    v25 = sub_10000C4E4(v22, v24, v47);

    v26 = v39;
    *(v39 + 1) = v25;
    _os_log_impl(&_mh_execute_header, v12, v38, "Invalidating session %s", v26, 0xCu);
    sub_10000C60C(v40);
  }

  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
  swift_beginAccess();
  sub_1002A9938(v1 + v27, &v45);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_1009819A0, &qword_100807D48);
  if (swift_dynamicCast())
  {
    sub_1000121F8(v43, v47);
    v28 = v48;
    v29 = v49;
    sub_10002CDC0(v47, v48);
    (*(v29 + 16))(&v45, v28, v29);
    sub_10002CDC0(&v45, v46);
    sub_100431124();
    sub_10000C60C(&v45);
    sub_10000C60C(v47);
  }

  else
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_100005508(v43, &qword_1009819A8, &unk_100807D50);
  }

  v30 = v1[17];
  v31 = v1[18];
  v32 = sub_10002CDC0(v1 + 14, v30);
  v33 = *(v30 - 8);
  __chkstk_darwin(v32);
  v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35);
  (*(v31 + 24))(v30, v31);
  (*(v33 + 8))(v35, v30);
  sub_10000FF90(&v4[*(v42 + 36)], &v45, &qword_1009819B0, &qword_100800360);
  if (v46)
  {
    sub_1004F4278(v4);
    sub_1000121F8(&v45, v47);
    sub_10002CDC0(v47, v48);
    sub_1003FD950();
    return sub_10000C60C(v47);
  }

  else
  {
    sub_100005508(&v45, &qword_1009819B0, &qword_100800360);
    sub_100010F88(37, 0xD000000000000027, 0x800000010078EF00);

    return sub_1004F4278(v4);
  }
}

uint64_t sub_1004F1488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = *(a6 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004F15C4, v7, 0);
}

uint64_t sub_1004F15C4()
{
  v9 = v0[8];
  (*(v0[13] + 16))(v0[14], v0[3], v0[7]);
  swift_dynamicCast();
  v8 = (*(v9 + 16) + **(v9 + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1004F1734;
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[2];

  return v8(v6, v2, v4, v5, v3);
}

uint64_t sub_1004F1734()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    v3 = v2[9];

    return _swift_task_switch(sub_1004F18A8, v3, 0);
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1004F18A8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004F1934(unsigned int a1, void *a2)
{
  v3 = v2;
  v203 = a2;
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v187[-v6];
  v8 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v187[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v187[-v13];
  v15 = __chkstk_darwin(v12);
  v197 = &v187[-v16];
  __chkstk_darwin(v15);
  v198 = &v187[-v17];
  v202 = type metadata accessor for UUID();
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v187[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext;
  swift_beginAccess();
  sub_1002A9938(v3 + v19, &v206);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  sub_10028088C(&qword_100981950, &qword_100807D08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v195 = v14;
    v205 = 0;
    memset(v204, 0, sizeof(v204));
    sub_100005508(v204, &qword_100981958, &unk_100807D10);
    goto LABEL_10;
  }

  sub_1000121F8(v204, v209);
  v20 = sub_10002CDC0(v209, v210);
  if (*(v20 + *(_s8KeyCheckV18InitialLockContextVMa(0) + 32)) != 1 || a1)
  {
    v195 = v14;
    sub_10000C60C(v209);
LABEL_10:
    v42 = swift_allocObject();
    sub_1002A9938(v3 + v19, v209);
    sub_10028088C(&unk_100981960, &qword_100800390);
    v43 = swift_dynamicCast();
    v201 = a1;
    v196 = v11;
    if (v43)
    {
      sub_1000121F8(&v206, v42 + 16);
      v44 = *(v42 + 40);
      v45 = *(v42 + 48);
      sub_10002F5B4(v42 + 16, v44);
      v46 = *(v45 + 32);
      v47 = v45;
      a1 = v201;
      v48 = v46(v209, v44, v47);
      *(v49 + 8) = a1;
      *(v49 + 12) = 0;
      v48(v209, 0);
      v50 = type metadata accessor for TaskPriority();
      (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
      v51 = sub_1004F48E4(&unk_100981990, type metadata accessor for SDAuthenticationSessionExecutor, &unk_100807CD8);
      v52 = swift_allocObject();
      v52[2] = v3;
      v52[3] = v51;
      v52[4] = v42;
      v52[5] = v3;
      swift_retain_n();

      sub_1002B39A4(0, 0, v7, &unk_100807D40, v52);
    }

    else
    {
      v208 = 0;
      v206 = 0u;
      v207 = 0u;
      sub_100005508(&v206, &qword_10097BE90, &qword_100807D20);
      swift_deallocUninitializedObject();
    }

    sub_1002A9938(v3 + v19, v209);
    sub_10028088C(&unk_100981970, &unk_100807D28);
    v53 = swift_dynamicCast();
    v54 = v203;
    if (v53 && (sub_10000C60C(&v206), a1 == 12))
    {
      if (qword_100973990 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000C4AC(v55, qword_100981730);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        sub_1000115C8();
        swift_allocError();
        *v60 = 12;
        *(v60 + 8) = v54;

        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        _os_log_impl(&_mh_execute_header, v56, v57, "Not sending error: %@ to remote device because context should not send timeout errors", v58, 0xCu);
        sub_100005508(v59, &qword_100975400, &qword_1007F65D0);
      }

      v62 = 1;
    }

    else
    {
      v62 = 0;
    }

    v64 = v3[17];
    v63 = v3[18];
    v65 = sub_10002CDC0(v3 + 14, v64);
    v66 = *(v64 - 8);
    __chkstk_darwin(v65);
    v68 = &v187[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v66 + 16))(v68);
    v69 = (*(v63 + 16))(v64, v63);
    (*(v66 + 8))(v68, v64);
    if (v62 & 1) != 0 || (v69)
    {
      goto LABEL_68;
    }

    v70 = [objc_allocWithZone(SDAuthenticationResponse) init];
    v71 = v70;
    if (v70)
    {
      [v70 setVersion:1];
      v72 = v3[17];
      v73 = v3[18];
      v74 = sub_10002CDC0(v3 + 14, v72);
      v192 = v187;
      v75 = v8;
      v76 = *(v72 - 8);
      __chkstk_darwin(v74);
      v78 = &v187[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v76 + 16))(v78);
      v79 = *(v73 + 24);
      v80 = v71;
      v194 = v3;
      v81 = v71;
      v82 = v198;
      v79(v72, v73);
      v54 = v203;
      (*(v76 + 8))(v78, v72);
      v8 = v75;
      v83 = v202;
      v84 = v200;
      v85 = v199;
      (*(v200 + 16))(v199, &v82[*(v8 + 24)], v202);
      v86 = v82;
      v71 = v81;
      v3 = v194;
      sub_1004F4278(v86);
      UUID.uuidString.getter();
      (*(v84 + 8))(v85, v83);
      v87 = String._bridgeToObjectiveC()();

      [v80 setSessionID:v87];

      [v80 setErrorCode:v201];
    }

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v54[2])
    {
      v90 = sub_100012854(v88, v89);
      v92 = v91;

      if (v92)
      {
        sub_10000C5B0(v54[7] + 32 * v90, v209);
        sub_1004F42D4();
        if (swift_dynamicCast())
        {
          v93 = v206;
          v94 = objc_opt_self();
          v209[0] = 0;
          v95 = v93;
          v96 = [v94 archivedDataWithRootObject:v95 requiringSecureCoding:1 error:v209];
          v97 = v209[0];
          if (v96)
          {
            v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v100 = v99;

            if (v71)
            {
              if (v100 >> 60 != 15)
              {
                v101 = v71;
                sub_1002A9924(v98, v100);
                v102.super.isa = Data._bridgeToObjectiveC()().super.isa;
                sub_10028BCC0(v98, v100);
LABEL_58:
                [v71 setUnderlyingError:v102.super.isa];

                sub_10028BCC0(v98, v100);
                goto LABEL_34;
              }

LABEL_57:
              v167 = v71;
              v102.super.isa = 0;
              goto LABEL_58;
            }
          }

          else
          {
            v166 = v97;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v98 = 0;
            v100 = 0xF000000000000000;
            if (v71)
            {
              goto LABEL_57;
            }
          }

          sub_10028BCC0(v98, v100);
          goto LABEL_34;
        }
      }
    }

    else
    {
    }

    v95 = 0;
LABEL_34:
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v194 = type metadata accessor for Logger();
    v103 = sub_10000C4AC(v194, qword_100981730);

    v104 = v71;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v192 = v103;
      v109 = v108;
      *v107 = 138412546;
      sub_1000115C8();
      swift_allocError();
      *v110 = v201;
      *(v110 + 8) = v203;

      v111 = _swift_stdlib_bridgeErrorToNSError();
      *(v107 + 4) = v111;
      *(v107 + 12) = 2112;
      *(v107 + 14) = v104;
      *v109 = v111;
      v109[1] = v71;
      v112 = v104;
      _os_log_impl(&_mh_execute_header, v105, v106, "Reporting error %@ to remote device as %@", v107, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      v54 = v203;
    }

    if (v71 && (v113 = [v104 data]) != 0)
    {
      v192 = v95;
      v114 = v113;
      v190 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v189 = v115;

      v116 = v3[17];
      v117 = v3[18];
      v118 = sub_10002CDC0(v3 + 14, v116);
      v191 = v187;
      v119 = *(v116 - 8);
      __chkstk_darwin(v118);
      v121 = &v187[-((v120 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v119 + 16))(v121);
      v122 = v195;
      (*(v117 + 24))(v116, v117);
      (*(v119 + 8))(v121, v116);
      sub_1002A9938(v122, v209);
      sub_1004F4278(v122);
      sub_10002CDC0(v209, v210);
      v123 = v3[17];
      v124 = v3[18];
      v125 = sub_10002CDC0(v3 + 14, v123);
      v195 = v187;
      v126 = *(v123 - 8);
      __chkstk_darwin(v125);
      v128 = &v187[-((v127 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v126 + 16))(v128);
      v129 = v196;
      (*(v124 + 24))(v123, v124);
      (*(v126 + 8))(v128, v123);
      sub_1002A9938(v129 + 40, &v206);
      sub_1004F4278(v129);
      v130 = v3[17];
      v131 = v3[18];
      v132 = sub_10002CDC0(v3 + 14, v130);
      v133 = *(v130 - 8);
      __chkstk_darwin(v132);
      v135 = &v187[-((v134 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v133 + 16))(v135);
      v136 = (*(v131 + 8))(v130, v131);
      (*(v133 + 8))(v135, v130);
      LODWORD(v136) = sub_1004FE08C(v136);
      if (qword_100973C48 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v194, qword_1009895D8);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v196 = v187;
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v204[0] = v140;
        *v139 = 136315138;
        v188 = v136;
        if (v136 <= 2u)
        {
          v141 = 0xEB0000000074656ELL;
          if (v136)
          {
            if (v136 == 1)
            {
              v141 = 0xE800000000000000;
              v142 = 0x6C61636F4C736469;
            }

            else
            {
              v142 = 0x7265746E49736469;
            }
          }

          else
          {
            v141 = 0xEB00000000746E65;
            v142 = 0x674179627261656ELL;
          }
        }

        else if (v136 > 4u)
        {
          if (v136 == 5)
          {
            v141 = 0x80000001007888E0;
            v142 = 0xD000000000000010;
          }

          else
          {
            v141 = 0xED000068746F6F74;
            v142 = 0x65756C4265726F63;
          }
        }

        else if (v136 == 3)
        {
          v141 = 0xE900000000000054;
          v142 = 0x4274726F70706172;
        }

        else
        {
          v141 = 0xEB000000004C4457;
          v142 = 0x4174726F70706172;
        }

        v136 = sub_10000C4E4(v142, v141, v204);

        *(v139 + 4) = v136;
        _os_log_impl(&_mh_execute_header, v137, v138, "Using transport type %s", v139, 0xCu);
        sub_10000C60C(v140);

        v54 = v203;
        LOBYTE(v136) = v188;
      }

      else
      {
      }

      v168 = v190;
      v169 = v189;
      sub_1005CCC7C(v190, v189, &v206, 1u, v136);
      sub_100026AC0(v168, v169);

      sub_10000C60C(&v206);
      sub_10000C60C(v209);
    }

    else
    {
      v143 = v104;
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v148 = v71;
        v149 = v147;
        *v146 = 138412290;
        *(v146 + 4) = v143;
        *v147 = v148;
        v150 = v143;
        _os_log_impl(&_mh_execute_header, v144, v145, "Could not convert response to data: %@", v146, 0xCu);
        sub_100005508(v149, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }

LABEL_68:
    v170 = v3[17];
    v171 = v3[18];
    v172 = sub_10002CDC0(v3 + 14, v170);
    v173 = *(v170 - 8);
    __chkstk_darwin(v172);
    v175 = &v187[-((v174 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v173 + 16))(v175);
    v176 = v198;
    (*(v171 + 24))(v170, v171);
    (*(v173 + 8))(v175, v170);
    sub_1002A9938(v176, v209);
    sub_1004F4278(v176);
    sub_10002CDC0(v209, v210);
    v177 = v3[17];
    v178 = v3[18];
    v179 = sub_10002CDC0(v3 + 14, v177);
    v180 = *(v177 - 8);
    __chkstk_darwin(v179);
    v182 = &v187[-((v181 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v180 + 16))(v182);
    v183 = v197;
    (*(v178 + 24))(v177, v178);
    (*(v180 + 8))(v182, v177);
    v184 = v200;
    v185 = v199;
    v186 = v202;
    (*(v200 + 16))(v199, v183 + *(v8 + 24), v202);
    sub_1004F4278(v183);
    sub_1006D6440(v185, v201, v54);
    (*(v184 + 8))(v185, v186);
    return sub_10000C60C(v209);
  }

  if (qword_100973990 != -1)
  {
    swift_once();
  }

  v21 = v8;
  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100981730);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v193 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *&v206 = v203;
    *v26 = 136315138;
    v201 = v24;
    v27 = v3[17];
    v28 = v3[18];
    v29 = sub_10002CDC0(v3 + 14, v27);
    v196 = v187;
    v30 = *(v27 - 8);
    __chkstk_darwin(v29);
    v32 = &v187[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v30 + 16))(v32);
    v33 = v198;
    (*(v28 + 24))(v27, v28);
    (*(v30 + 8))(v32, v27);
    v34 = v202;
    v35 = v200;
    v36 = v33 + *(v21 + 24);
    v37 = v199;
    (*(v200 + 16))(v199, v36, v202);
    sub_1004F4278(v33);
    sub_1004F48E4(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (*(v35 + 8))(v37, v34);
    v41 = sub_10000C4E4(v38, v40, &v206);

    *(v26 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v23, v201, "ending early - sessionDidComplete for %s", v26, 0xCu);
    sub_10000C60C(v203);
  }

  else
  {

    v35 = v200;
    v37 = v199;
    v33 = v198;
  }

  v151 = v3[17];
  v152 = v3[18];
  v153 = sub_10002CDC0(v3 + 14, v151);
  v154 = *(v151 - 8);
  __chkstk_darwin(v153);
  v156 = &v187[-((v155 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v154 + 16))(v156);
  (*(v152 + 24))(v151, v152);
  (*(v154 + 8))(v156, v151);
  sub_1002A9938(v33, &v206);
  sub_1004F4278(v33);
  sub_10002CDC0(&v206, *(&v207 + 1));
  v157 = v3[17];
  v158 = v3[18];
  v159 = sub_10002CDC0(v3 + 14, v157);
  v160 = *(v157 - 8);
  __chkstk_darwin(v159);
  v162 = &v187[-((v161 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v160 + 16))(v162);
  v163 = v197;
  (*(v158 + 24))(v157, v158);
  (*(v160 + 8))(v162, v157);
  v164 = v202;
  (*(v35 + 16))(v37, v163 + *(v193 + 24), v202);
  sub_1004F4278(v163);
  sub_1006D3D04(v37);
  (*(v35 + 8))(v37, v164);
  sub_10000C60C(&v206);
  return sub_10000C60C(v209);
}

uint64_t sub_1004F3490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004F3528, a5, 0);
}

uint64_t sub_1004F3528()
{
  v1 = v0[12];
  v2 = v0[11];
  swift_beginAccess();
  sub_1002A9938(v2 + 16, (v0 + 2));
  v3 = v0[5];
  v4 = sub_10002CDC0(v0 + 2, v3);
  v5 = v1[17];
  v6 = v1[18];
  sub_10002CDC0(v1 + 14, v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  v0[14] = v8;
  (*(v7 + 16))();
  (*(v6 + 24))(v5, v6);
  (*(v7 + 8))(v8, v5);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1004F36F0;
  v11 = v0[13];
  v12 = v0[10];

  return sub_1004F1488(v12, v4, v9, v11, &type metadata for SDAuthentication.Operation.RecordSessionFinished, v3, &off_10097BB00);
}

uint64_t sub_1004F36F0()
{
  v2 = *v1;

  if (v0)
  {
    v5 = v2 + 96;
    v3 = *(v2 + 96);
    v4 = *(v5 + 8);

    sub_1004F4278(v4);
    v6 = sub_1004F3898;
  }

  else
  {
    v7 = *(v2 + 104);
    v3 = *(v2 + 96);
    sub_1004F4278(v7);

    v6 = sub_1004F3830;
  }

  return _swift_task_switch(v6, v3, 0);
}

uint64_t sub_1004F3830()
{
  sub_10000C60C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F3898()
{
  v1 = v0[10];

  sub_10000C60C(v0 + 2);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004F3918(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 112) = a6;
  *(v6 + 48) = a5;
  *(v6 + 40) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1004F39E0, 0, 0);
}

uint64_t sub_1004F39E0()
{
  static Task<>.checkCancellation()();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1004F3B08;

  return sub_10002ED10(v1, v3, 0, 0, 1);
}

uint64_t sub_1004F3B08()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1004F3E48;
  }

  else
  {
    v5 = sub_1004F3C78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004F3C78()
{
  v1 = *(v0 + 88);
  static Task<>.checkCancellation()();
  if (v1)
  {
    goto LABEL_2;
  }

  if (qword_100973990 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100981730);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Response timer fired", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (!Strong)
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 116) = sub_100010F88(*(v0 + 112), 0xD00000000000001ELL, 0x8000000100793DC0);
    *(v0 + 104) = v9;

    return _swift_task_switch(sub_1004F3EAC, Strong, 0);
  }
}

uint64_t sub_1004F3E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F3EAC()
{
  sub_1004F1934(*(v0 + 116), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004F3F30()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_timer))
  {
    v1 = qword_100973990;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100981730);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Response timer cancelled", v5, 2u);
    }

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();
  }
}

uint64_t sub_1004F4078()
{
  sub_10000C60C((v0 + 112));
  swift_unknownObjectRelease();
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_responseTimerContinuation, &qword_100981A08, &qword_100807DD0);

  sub_10000C60C((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSessionExecutor_previousContext));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDAuthenticationSessionExecutor(uint64_t a1)
{
  result = qword_100981790;
  if (!qword_100981790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004F414C(uint64_t a1)
{
  sub_1004F4214(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004F4214(uint64_t a1)
{
  if (!qword_1009817A0[0])
  {
    sub_100280938(&qword_1009755D8, &qword_1007F8968);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_1009817A0);
    }
  }
}

uint64_t sub_1004F4278(uint64_t a1)
{
  v2 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004F42D4()
{
  result = qword_1009753F0;
  if (!qword_1009753F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009753F0);
  }

  return result;
}

uint64_t sub_1004F4320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_1004F3490(a1, v4, v5, v7, v6);
}

uint64_t *sub_1004F43E0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1004F45FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1004EFEE8(a1, v5, v4);
}

uint64_t sub_1004F46A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004F3918(v6, a1, v4, v5, v7, v8);
}

uint64_t sub_1004F4774()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 52);
}

uint64_t sub_1004F47B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1004F3918(v6, a1, v4, v5, v7, v8);
}

uint64_t sub_1004F4880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F48E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004F492C(uint64_t a1)
{
  sub_10000C5B0(a1, v17);
  if (swift_dynamicCast())
  {
    v3 = v13;
    v4 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      sub_1000115C8();
      swift_allocError();
      *v5 = v14;
      *(v5 + 8) = v4;
      swift_willThrow();

      sub_10028BCC0(v3, *(&v3 + 1));

      return;
    }

    sub_10028BCC0(v13, *(&v13 + 1));
  }

  sub_10000C5B0(a1, v16);
  sub_10028088C(&qword_1009819F8, &qword_100807DC0);
  if (swift_dynamicCast())
  {
    sub_1000121F8(&v13, v17);
    v6 = v18;
    v7 = v19;
    sub_10002CDC0(v17, v18);
    sub_1003FB088(v6, v7);
    if (!v1 && (static Task<>.isCancelled.getter() & 1) != 0)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_1004F48E4(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      *v8 = 14;
      swift_willThrow();
    }

    sub_10000C60C(v17);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_100005508(&v13, &qword_100981A00, &qword_100807DC8);
    if (qword_100973990 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100981730);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Message does not support error reporting", v12, 2u);
    }
  }
}

uint64_t sub_1004F4BDC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981A10);
  v1 = sub_10000C4AC(v0, qword_100981A10);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F4CA4(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v3 + v8) = v9;
  *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID) = &_swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) = 0;
  *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_checkAndStartRegistration) = 1;
  *(v3 + 16) = a1;
  v10._countAndFlagsBits = qword_100807E78[a1];
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xA3A734B544C20;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12 = (v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label);
  *v12 = 0x207373616C43;
  v12[1] = 0xE600000000000000;
  v13 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectory;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(v3 + v13, a2, v14);
  return v3;
}

void sub_1004F4E10()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for URL();
  v89 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v79 - v7;
  os_unfair_lock_assert_owner((*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock) + 16));
  if (qword_100973998 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    v9 = sub_10000C4AC(v8, qword_100981A10);

    v88 = v9;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v98[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000C4E4(*(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label), *(v3 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label + 8), v98);
      _os_log_impl(&_mh_execute_header, v10, v11, "Loading %s", v12, 0xCu);
      sub_10000C60C(v13);
    }

    v14 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(&unk_1009A0000);
    v16 = v15;
    v98[0] = 0;
    v80 = v14;
    v17 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v98];

    v18 = v98[0];
    if (!v17)
    {
      break;
    }

    v82 = v3;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v18;

    v86 = *(v19 + 16);
    if (!v86)
    {
LABEL_28:

      return;
    }

    v22 = 0;
    v3 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
    v94 = v89 + 16;
    v23 = (v89 + 8);
    *&v21 = 136315394;
    v81 = v21;
    v24 = v82;
    v84 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
    v85 = v19;
    v95 = (v89 + 8);
    while (v22 < *(v19 + 16))
    {
      v25 = v19 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v26 = *(v89 + 72);
      v93 = v22;
      v27 = *(v89 + 16);
      v27(v96, v25 + v26 * v22, v4);
      v28 = Data.init(contentsOf:options:)();
      if (v2)
      {
        (*v23)(v96, v4);
        goto LABEL_28;
      }

      v30 = v28;
      v31 = v29;
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      swift_weakInit();
      sub_100294008(v30, v31);
      v34 = sub_10031F2E0(v30, v31, sub_1004F66C0, v32, sub_1004F66C4, v33);

      v35 = v87;
      v27(v87, v96, v4);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v90 = v37;
      v92 = v36;
      v38 = os_log_type_enabled(v36, v37);
      v39 = v95;
      v91 = 0;
      if (v38)
      {
        v40 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v98[0] = v83;
        *v40 = v81;

        sub_10031E940();
        v42 = v41;
        v43 = v4;
        v45 = v44;

        v46 = sub_10000C4E4(v42, v45, v98);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        sub_100010F40(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v50 = v35;
        v51 = *v95;
        (*v95)(v50, v43);
        v52 = sub_10000C4E4(v47, v49, v98);
        v4 = v43;

        *(v40 + 14) = v52;
        v53 = v92;
        _os_log_impl(&_mh_execute_header, v92, v90, "Loaded LocalLTK %s from %s", v40, 0x16u);
        swift_arrayDestroy();

        v24 = v82;

        sub_100026AC0(v30, v31);
      }

      else
      {
        sub_100026AC0(v30, v31);

        v54 = v35;
        v51 = *v39;
        (*v39)(v54, v4);
      }

      v51(v96, v4);
      v2 = *(v34 + 16);
      v55 = *(v34 + 24);
      v3 = v84;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *(v24 + v3);
      v57 = v97;
      *(v24 + v3) = 0x8000000000000000;
      v58 = sub_100012854(v2, v55);
      v60 = v57[2];
      v61 = (v59 & 1) == 0;
      v62 = __OFADD__(v60, v61);
      v63 = v60 + v61;
      if (v62)
      {
        goto LABEL_30;
      }

      v64 = v59;
      if (v57[3] < v63)
      {
        sub_100576E34(v63, isUniquelyReferenced_nonNull_native);
        v58 = sub_100012854(v2, v55);
        if ((v64 & 1) != (v65 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_19:
        v66 = v97;
        if (v64)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v70 = v58;
      sub_1002D1958();
      v58 = v70;
      v66 = v97;
      if (v64)
      {
LABEL_7:
        *(v66[7] + 8 * v58) = v34;

        goto LABEL_8;
      }

LABEL_20:
      v66[(v58 >> 6) + 8] |= 1 << v58;
      v67 = (v66[6] + 16 * v58);
      *v67 = v2;
      v67[1] = v55;
      *(v66[7] + 8 * v58) = v34;
      v68 = v66[2];
      v62 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v62)
      {
        goto LABEL_31;
      }

      v66[2] = v69;
LABEL_8:
      v22 = v93 + 1;
      *(v24 + v3) = v66;
      swift_endAccess();

      v19 = v85;
      v2 = v91;
      v23 = v95;
      if (v86 == v22)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v71 = v98[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v98[0] = v75;
    *v74 = 136315138;
    sub_100010F40(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = sub_10000C4E4(v76, v77, v98);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "Failed to list items in %s", v74, 0xCu);
    sub_10000C60C(v75);
  }
}