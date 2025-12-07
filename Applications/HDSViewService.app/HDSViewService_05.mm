uint64_t sub_100079EA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    [v4 setIdleTimerDisabled:0 forReason:v5];
  }

  if ((*(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router) + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) & 1) == 0)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100103DD0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupFlowViewController: disappeared without dismiss (device locked?)...dismissing UI", v9, 2u);
    }

    swift_unknownObjectRetain();
    sub_1000610CC(a1, a1 != 19);
    swift_unknownObjectRelease();
  }

  sub_1000A8B18(a1, *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
  sub_1000A74B0();
  swift_unknownObjectRetain();
  sub_1000610CC(5, 1);

  return swift_unknownObjectRelease();
}

void sub_10007A070(char *a1)
{
  v2 = v1;
  v299 = a1;
  v3 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v293 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v297 = (&v293 - v8);
  v9 = __chkstk_darwin(v7);
  v11 = &v293 - v10;
  __chkstk_darwin(v9);
  v13 = &v293 - v12;
  v298 = type metadata accessor for DispatchPredicate();
  v14 = *(v298 - 8);
  __chkstk_darwin(v298);
  v16 = (&v293 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100012AAC(v17, qword_100103DD0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v294 = v13;
  v300 = v2;
  v295 = v6;
  v293 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&aBlock = v23;
    *v22 = 136315138;
    v24 = sub_10007869C(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v26 = sub_1000B08A0(v24, v25, &aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: step completed called with state: %s", v22, 0xCu);
    sub_10000E70C(v23);
  }

  v27 = v299;
  sub_1000161DC(v299, &aBlock);
  v296 = v18;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v302[0] = v31;
    *v30 = 136315138;
    v32 = sub_10000BFCC();
    v34 = v33;
    sub_100012E08(&aBlock);
    v35 = sub_1000B08A0(v32, v34, v302);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: stepResult: %s", v30, 0xCu);
    sub_10000E70C(v31);
  }

  else
  {

    sub_100012E08(&aBlock);
  }

  v36 = v300;
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  *v16 = static OS_dispatch_queue.main.getter();
  v37 = v298;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v298);
  v38 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v37);
  if ((v38 & 1) == 0)
  {
    __break(1u);
LABEL_339:
    swift_once();
    goto LABEL_11;
  }

  v29 = &unk_100108000;
  if (!IsAppleInternalBuild())
  {
    goto LABEL_16;
  }

  if (qword_100101608 != -1)
  {
    goto LABEL_339;
  }

LABEL_11:
  sub_10003BBB0(v27, *(v36 + v29[324]));
  if (sub_10000FEC4(*v27) == 0x754274726F706572 && v39 == 0xE900000000000067)
  {

LABEL_15:
    sub_1000809E4();
    goto LABEL_16;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_15;
  }

LABEL_16:
  v41 = v29[324];
  v42 = *(v36 + v41);
  switch(v42)
  {
    case 1:
      sub_10000F25C((v27 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (*(&v305 + 1))
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v111 = v302[0];
          if (v302[0])
          {
            v112 = [v302[0] name];
            v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v115 = v114;

            sub_1000A6A30(v113, v115);
          }

          else
          {
            [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) homeKitStartHomeNameCreation:0 namingIssue:0];
          }

          goto LABEL_315;
        }
      }

      else
      {
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
      }

      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v178, v179))
      {
        goto LABEL_305;
      }

      v180 = swift_slowAlloc();
      *v180 = 0;
      v181 = "HomePodSetupPresenter: setupStepCompleted for pickHome was called but no home name was giving";
      goto LABEL_304;
    case 2:
      sub_10000F25C((v27 + 8), v302, &qword_1001025D0, &unk_1000BD010);
      if (!v303)
      {
        goto LABEL_174;
      }

      sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
      if (swift_dynamicCast())
      {
        v99 = v305;

        v100 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
        v101 = String._bridgeToObjectiveC()();
        v102 = swift_allocObject();
        swift_weakInit();
        v103 = swift_allocObject();
        *(v103 + 16) = v102;
        *(v103 + 24) = v99;
        *&v306 = sub_1000830FC;
        *(&v306 + 1) = v103;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v305 = sub_10007DB0C;
        *(&v305 + 1) = &unk_1000F14B0;
        v104 = _Block_copy(&aBlock);

        [v100 validateHomeName:v101 completion:v104];
        _Block_release(v104);
      }

      goto LABEL_315;
    case 3:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v107 == 0xE700000000000000)
      {

LABEL_201:
        [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) acceptSelectSameWrongLocation];
        goto LABEL_315;
      }

      v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v163)
      {
        goto LABEL_201;
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) resetToHomeSelection];
      goto LABEL_315;
    case 4:
      sub_10000F25C((v27 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (*(&v305 + 1))
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          sub_1000A6CC0();
          goto LABEL_294;
        }
      }

      else
      {
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
      }

      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v178, v179))
      {
        goto LABEL_305;
      }

      v180 = swift_slowAlloc();
      *v180 = 0;
      v181 = "HomePodSetupPresenter: setupStepCompleted for pickRoom was called but no room name was giving";
      goto LABEL_304;
    case 5:
    case 14:
    case 15:
    case 63:
      goto LABEL_315;
    case 6:
      v125 = *v27;
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v126 == 0xE700000000000000)
      {

        goto LABEL_17;
      }

      v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v165)
      {
        goto LABEL_17;
      }

      if (sub_10000FEC4(v125) == 0xD000000000000014 && 0x80000001000C06A0 == v166)
      {
      }

      else
      {
        v278 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v278 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) cancelSoftwareUpdateNoSetup];
      goto LABEL_315;
    case 7:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v98 == 0xE700000000000000)
      {
      }

      else
      {
        v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v158 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v159 = 5;
      v48 = 0;
      v160 = 0;
      goto LABEL_222;
    case 8:
      if (sub_10000FEC4(*v27) == 0x6565726761 && v135 == 0xE500000000000000)
      {

LABEL_216:
        v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
        v141 = "soundRecognitionAgreed:";
        goto LABEL_286;
      }

      v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v169)
      {
        goto LABEL_216;
      }

      v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v141 = "soundRecognitionAgreed:";
      goto LABEL_286;
    case 9:
      v136 = *v27;
      if (sub_10000FEC4(*v27) == 0x6565726761 && v137 == 0xE500000000000000)
      {
        goto LABEL_139;
      }

      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v170)
      {
        goto LABEL_218;
      }

      if (sub_10000FEC4(v136) == 0x7972616D697270 && v230 == 0xE700000000000000)
      {
LABEL_139:
      }

      else
      {
        v231 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v231 & 1) == 0)
        {
          v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v141 = "automaticSoftwareUpdatesAgreed:";
          goto LABEL_286;
        }
      }

LABEL_218:
      v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v141 = "automaticSoftwareUpdatesAgreed:";
      goto LABEL_286;
    case 10:
      v84 = *v27;
      if (sub_10000FEC4(*v27) == 0x6565726761 && v85 == 0xE500000000000000)
      {
      }

      else
      {
        v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v155 & 1) == 0)
        {
          if (sub_10000FEC4(v84) == 0x7972616D697270 && v156 == 0xE700000000000000)
          {
          }

          else
          {
            v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v268 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v269 = Logger.logObject.getter();
          v270 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v269, v270))
          {
            v271 = swift_slowAlloc();
            *v271 = 0;
            _os_log_impl(&_mh_execute_header, v269, v270, "HomePodSetupPresenter: ****** automation had 'default' as the button for terms of use! *** ", v271, 2u);
          }
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) termsAgreed];
      goto LABEL_315;
    case 11:
      v133 = *v27;
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v134 == 0xE700000000000000)
      {

LABEL_213:
        v140 = *(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession);
        if (!v140)
        {
          goto LABEL_315;
        }

        v141 = "personalRequestsEnabled:";
        goto LABEL_286;
      }

      v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v168)
      {
        goto LABEL_213;
      }

      v226 = sub_10000FEC4(v133);
      v228 = v227;
      if (v226 == sub_10000FEC4(2) && v228 == v229)
      {
      }

      else
      {
        v279 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v279 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v140 = *(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_setupSession);
      if (v140)
      {
        v141 = "personalRequestsEnabled:";
        goto LABEL_286;
      }

      goto LABEL_315;
    case 12:
      sub_1000A70D4();
      goto LABEL_315;
    case 13:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v139 == 0xE700000000000000)
      {
      }

      else
      {
        v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v172 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      sub_1000A70FC();
      goto LABEL_315;
    case 16:

      v116 = sub_10004B0F0();

      if (!v116)
      {
        goto LABEL_235;
      }

      *(v36 + v41) = 52;
      goto LABEL_315;
    case 17:
      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) shareSettingsAgreed];
      goto LABEL_315;
    case 18:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v79 == 0xE700000000000000)
      {
      }

      else
      {
        v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v152 & 1) == 0)
        {
          goto LABEL_182;
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) ledPasscodeMatched];
      goto LABEL_315;
    case 19:
      sub_10000F25C((v27 + 8), v302, &qword_1001025D0, &unk_1000BD010);
      if (v303)
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v142 = v306;

          if (String.count.getter() == 4)
          {
            sub_1000A80E4(v142, *(&v142 + 1));
            goto LABEL_294;
          }
        }
      }

      else
      {
        sub_10000EBA4(v302, &qword_1001025D0, &unk_1000BD010);
      }

      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        v181 = "HomePodSetupPresenter: some how we are at .enterPincode and yet we don't have a four digit pincode! Likely recongized HomePod after user chose manual entry button.";
LABEL_304:
        _os_log_impl(&_mh_execute_header, v178, v179, v181, v180, 2u);
      }

LABEL_305:

      goto LABEL_315;
    case 20:
      if (sub_10000FEC4(*v27) == 0x6F6572657473 && v144 == 0xE600000000000000)
      {

LABEL_228:
        *(v36 + v41) = 23;
        goto LABEL_315;
      }

      v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v174)
      {
        goto LABEL_228;
      }

      sub_1000A75C4(1);
      goto LABEL_315;
    case 21:
      sub_10000F25C((v27 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (!*(&v305 + 1))
      {
        goto LABEL_175;
      }

      sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
      if (swift_dynamicCast())
      {
        v129 = v302[0];
        sub_1000A73A8(v129);
      }

      goto LABEL_315;
    case 22:
      sub_10000F25C((v27 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (!*(&v305 + 1))
      {
LABEL_175:
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
        goto LABEL_315;
      }

      sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_315;
      }

      v117 = v302[0];
      v118 = sub_10000FEC4(*v27);
      v120 = v119;
      if (v118 == sub_10000FEC4(2) && v120 == v121)
      {
      }

      else
      {
        v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v242 & 1) == 0)
        {
          [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) stereoMultiplePicked:v117];

          goto LABEL_315;
        }
      }

      v243 = Logger.logObject.getter();
      v244 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        *v245 = 0;
        _os_log_impl(&_mh_execute_header, v243, v244, "HomePodSetupPresenter: pickHomePodToPairWith identify HomePod", v245, 2u);
      }

      v246 = swift_allocObject();
      *(v246 + 16) = v117;
      v247 = v117;
      v248 = Logger.logObject.getter();
      v249 = static os_log_type_t.default.getter();
      v250 = swift_allocObject();
      *(v250 + 16) = 32;
      v251 = swift_allocObject();
      *(v251 + 16) = 8;
      v252 = swift_allocObject();
      *(v252 + 16) = sub_100082FFC;
      *(v252 + 24) = v246;
      v253 = swift_allocObject();
      *(v253 + 16) = sub_100083004;
      *(v253 + 24) = v252;
      sub_10000E6C4(&qword_100104140, &qword_1000BE920);
      v254 = swift_allocObject();
      *(v254 + 16) = xmmword_1000BD070;
      *(v254 + 32) = sub_100083198;
      *(v254 + 40) = v250;
      *(v254 + 48) = sub_100083198;
      *(v254 + 56) = v251;
      *(v254 + 64) = sub_10008300C;
      *(v254 + 72) = v253;
      swift_setDeallocating();
      sub_100081EC0();
      if (os_log_type_enabled(v248, v249))
      {
        v255 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        *&aBlock = v256;
        *v255 = 136315138;
        v257 = [v247 name];
        v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v260 = v259;

        v261 = sub_1000B08A0(v258, v260, &aBlock);

        *(v255 + 4) = v261;
        _os_log_impl(&_mh_execute_header, v248, v249, "HomePodSetupPresenter: pickHomePodToPairWith %s", v255, 0xCu);
        sub_10000E70C(v256);
      }

      v36 = v300;
      [*(*(v300 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) identifyHomePod:v247];

      goto LABEL_315;
    case 23:
      v130 = *v27;
      if (v130 == 7)
      {
        v131 = 3;
      }

      else
      {
        v131 = 1;
      }

      if (v130 == 6)
      {
        v132 = 2;
      }

      else
      {
        v132 = v131;
      }

      sub_1000A75C4(v132);
      goto LABEL_315;
    case 24:
      sub_10000F25C((v27 + 8), &aBlock, &qword_1001025D0, &unk_1000BD010);
      if (*(&v305 + 1))
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v88 = v36;
          v89 = v27;
          v91 = v302[0];
          v90 = v302[1];
          v93 = v302[2];
          v92 = v303;
          v94 = sub_10000FEC4(*v89);
          v96 = v95;
          if (v94 == sub_10000FEC4(1) && v96 == v97)
          {

            goto LABEL_293;
          }

          v241 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v241)
          {
LABEL_293:
            v36 = v88;
            sub_1000A778C(v91, v90, v93, v92);

LABEL_294:

            goto LABEL_315;
          }

          v36 = v88;
        }
      }

      else
      {
        sub_10000EBA4(&aBlock, &qword_1001025D0, &unk_1000BD010);
      }

      sub_1000A7984();
      goto LABEL_315;
    case 25:
      v80 = *v27;
      if (sub_10000FEC4(*v27) == 0x4D5264756F6C4369 && v81 == 0xE900000000000056)
      {
      }

      else
      {
        v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v153 & 1) == 0)
        {
          LODWORD(v298) = v80;
          sub_1000161DC(v27, &aBlock);
          sub_1000161DC(&aBlock, v302);
          v210 = swift_allocObject();
          v211 = v305;
          *(v210 + 16) = aBlock;
          *(v210 + 32) = v211;
          *(v210 + 48) = v306;
          *(v210 + 64) = v307;
          v297 = Logger.logObject.getter();
          LODWORD(v299) = static os_log_type_t.debug.getter();
          v212 = swift_allocObject();
          *(v212 + 16) = 0;
          v213 = swift_allocObject();
          *(v213 + 16) = 4;
          v214 = swift_allocObject();
          *(v214 + 16) = sub_100082F64;
          *(v214 + 24) = v210;
          v215 = swift_allocObject();
          *(v215 + 16) = sub_100082FA4;
          *(v215 + 24) = v214;
          v216 = swift_allocObject();
          *(v216 + 16) = sub_100082FAC;
          *(v216 + 24) = v215;
          v217 = swift_allocObject();
          *(v217 + 16) = sub_100082FB4;
          *(v217 + 24) = v216;
          sub_10000E6C4(&qword_100104140, &qword_1000BE920);
          v218 = swift_allocObject();
          *(v218 + 16) = xmmword_1000BD070;
          *(v218 + 32) = sub_100083198;
          *(v218 + 40) = v212;
          *(v218 + 48) = sub_100083198;
          *(v218 + 56) = v213;
          *(v218 + 64) = sub_100082FBC;
          *(v218 + 72) = v217;
          v219 = v297;
          swift_setDeallocating();

          sub_100081EC0();
          if (os_log_type_enabled(v219, v299))
          {
            v220 = swift_slowAlloc();
            *v220 = 67109120;
            if (sub_10000FEC4(v302[0]) == 0xD000000000000010 && 0x80000001000C06C0 == v221)
            {

              v222 = 1;
            }

            else
            {
              v287 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v222 = v287 & 1;
            }

            v267 = v298;
            sub_100012E08(v302);
            *(v220 + 4) = v222;

            _os_log_impl(&_mh_execute_header, v219, v299, "HomePodSetupPresenter: .siriRecognize (aka RMV) set to %{BOOL}d", v220, 8u);
          }

          else
          {

            sub_100012E08(v302);

            v267 = v298;
          }

          v36 = v300;
          v288 = *(v300 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
          v289 = sub_10000FEC4(v267);
          v291 = v290;
          if (v289 != sub_10000FEC4(23) || v291 != v292)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          [*(v288 + 80) recognizeVoiceAnswered:v293];
          goto LABEL_315;
        }
      }

      v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v141 = "siriForiCloudRecognizeAnswered:";
      goto LABEL_286;
    case 26:
      *(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_appleMusicPromotionPresented) = 1;
      sub_1000A70E8();
      *(&v305 + 1) = &type metadata for SharingFeatureFlags;
      v76 = sub_100082468();
      *&v306 = v76;
      LOBYTE(aBlock) = 0;
      v77 = isFeatureEnabled(_:)();
      sub_10000E70C(&aBlock);
      if ((v77 & 1) == 0)
      {
        goto LABEL_235;
      }

      *(&v305 + 1) = &type metadata for SharingFeatureFlags;
      *&v306 = v76;
      LOBYTE(aBlock) = 1;
      v78 = isFeatureEnabled(_:)();
      sub_10000E70C(&aBlock);
      if (v78)
      {
        goto LABEL_235;
      }

      goto LABEL_234;
    case 27:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v73 == 0xE700000000000000)
      {

        v74 = 1;
      }

      else
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1000A7210(v74 & 1);
      goto LABEL_315;
    case 28:
      v145 = *v27;
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v146 == 0xE700000000000000)
      {

LABEL_230:
        v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
        v141 = "homePodLoggingProfileSelected:";
        goto LABEL_286;
      }

      v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v175)
      {
        goto LABEL_230;
      }

      if (sub_10000FEC4(v145) == 0x7261646E6F636573 && v232 == 0xE900000000000079)
      {
      }

      else
      {
        v280 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v280 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v150 = "'Hey Siri, what can you do?'";
      v48 = 0xD000000000000030;
      goto LABEL_199;
    case 29:
    case 43:
    case 45:
    case 65:
    case 66:
    case 67:
      goto LABEL_17;
    case 30:
      if (sub_10000FEC4(*v27) == 0x655373656E755469 && v138 == 0xEE0073676E697474)
      {
      }

      else
      {
        v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v171 & 1) == 0)
        {
          v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v141 = "homeAppInstallChoice:";
          goto LABEL_286;
        }
      }

      v47 = "_ACCOUNT&path=STORE_SERVICE";
      v48 = 0xD000000000000033;
LABEL_221:
      v160 = v47 | 0x8000000000000000;
      v159 = 13;
      goto LABEL_222;
    case 31:
      if (sub_10000FEC4(*v27) == 0x655373656E755469 && v106 == 0xEE0073676E697474)
      {
      }

      else
      {
        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v162 & 1) == 0)
        {
          [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) skipiTunesSignIn];
          goto LABEL_315;
        }
      }

      v150 = "208490-homeappui-09142023#wifi";
      v48 = 0xD00000000000002BLL;
      goto LABEL_199;
    case 32:
      v122 = *(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      if (sub_10000FEC4(*v27) == 0x6F4C6E4F6E727574 && v123 == 0xEE006E6F69746163)
      {

        v124 = 1;
      }

      else
      {
        v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *(*(v122 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_userEnabledLocationForHomePod) = v124 & 1;
      [*(v122 + 80) locationEnable:v293];
      goto LABEL_315;
    case 33:
      v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v141 = "homeAppInstallChoice:";
      goto LABEL_286;
    case 34:
    case 35:
    case 36:
    case 37:
    case 46:
      v44 = [objc_allocWithZone(SFClient) init];
      *&v306 = sub_10007DC38;
      *(&v306 + 1) = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v305 = sub_10007DE7C;
      *(&v305 + 1) = &unk_1000F10A0;
      v45 = _Block_copy(&aBlock);
      [v44 reenableProxCardType:100 completion:v45];
      _Block_release(v45);
      if (sub_10000FEC4(*v27) == 0xD000000000000016 && 0x80000001000C06E0 == v46)
      {
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          v36 = v300;
          sub_10007E190(12, 0x6F723A7366657270, 0xEF494649573D746FLL);

          goto LABEL_315;
        }
      }

      v50 = v297;
      URL.init(string:)();
      v51 = [objc_opt_self() defaultWorkspace];
      if (v51)
      {
        v52 = v51;
        v53 = v295;
        sub_10000F25C(v50, v295, &qword_100101F08, &unk_1000BD100);
        v54 = type metadata accessor for URL();
        v55 = *(v54 - 8);
        v57 = 0;
        if ((*(v55 + 48))(v53, 1, v54) != 1)
        {
          URL._bridgeToObjectiveC()(v56);
          v57 = v58;
          (*(v55 + 8))(v53, v54);
        }

        sub_10000DC20(_swiftEmptyArrayStorage);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v60 = [v52 openURL:v57 withOptions:isa];

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (v60)
        {
          v63 = swift_allocObject();
          *(v63 + 16) = 32;
          v64 = swift_allocObject();
          *(v64 + 16) = 8;
          sub_10000E6C4(&qword_100104140, &qword_1000BE920);
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1000BD070;
          *(v65 + 32) = sub_100083198;
          *(v65 + 40) = v63;
          *(v65 + 48) = sub_100083198;
          *(v65 + 56) = v64;
          *(v65 + 64) = sub_10008319C;
          *(v65 + 72) = 0;
          swift_setDeallocating();
          sub_100081EC0();
          if (os_log_type_enabled(v61, v62))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&aBlock = v67;
            *v66 = 136315138;
            *(v66 + 4) = sub_1000B08A0(0xD00000000000005ELL, 0x80000001000C6D10, &aBlock);
            v68 = "HomePodSetupPresenter: opening kbartible for %s";
LABEL_33:
            _os_log_impl(&_mh_execute_header, v61, v62, v68, v66, 0xCu);
            sub_10000E70C(v67);
          }
        }

        else
        {
          v70 = swift_allocObject();
          *(v70 + 16) = 32;
          v71 = swift_allocObject();
          *(v71 + 16) = 8;
          sub_10000E6C4(&qword_100104140, &qword_1000BE920);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_1000BD070;
          *(v72 + 32) = sub_100082F58;
          *(v72 + 40) = v70;
          *(v72 + 48) = sub_100083198;
          *(v72 + 56) = v71;
          *(v72 + 64) = sub_10008319C;
          *(v72 + 72) = 0;
          swift_setDeallocating();
          sub_100081EC0();
          if (os_log_type_enabled(v61, v62))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&aBlock = v67;
            *v66 = 136315138;
            *(v66 + 4) = sub_1000B08A0(0xD00000000000005ELL, 0x80000001000C6D10, &aBlock);
            v68 = "HomePodSetupPresenter: unable to open URL %s";
            goto LABEL_33;
          }
        }

        sub_10000EBA4(v297, &qword_100101F08, &unk_1000BD100);
        v36 = v300;
        goto LABEL_315;
      }

      __break(1u);
      goto LABEL_341;
    case 38:
    case 40:
    case 41:
      v47 = "com.apple.Home://";
      v48 = 0xD00000000000002CLL;
      goto LABEL_221;
    case 39:
      v47 = "_ACCOUNT&path=ICLOUD_SERVICE";
      v48 = 0xD00000000000004DLL;
      goto LABEL_221;
    case 42:
      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) homeiCloudEnable];
      goto LABEL_315;
    case 44:
      goto LABEL_173;
    case 47:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v147 == 0xE700000000000000)
      {
      }

      else
      {
        v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v176 & 1) == 0)
        {
          v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v141 = "resetWiFiPicker:";
          goto LABEL_286;
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) wiFiRetry];
      goto LABEL_315;
    case 48:
      *(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_noP2PRouterPresented) = 1;
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v148 == 0xE700000000000000)
      {
      }

      else
      {
        v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v177 & 1) == 0)
        {
LABEL_235:
          *(v36 + v41) = sub_10007DEE8(v27);
          goto LABEL_315;
        }
      }

LABEL_234:
      *(v36 + v41) = 51;
      goto LABEL_315;
    case 49:
    case 52:
      goto LABEL_235;
    case 50:
      goto LABEL_234;
    case 51:
      swift_unknownObjectRetain();
      v43 = 0;
      goto LABEL_18;
    case 53:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v143 == 0xE700000000000000)
      {
      }

      else
      {
        v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v173 & 1) == 0)
        {
          v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v141 = "softwareUpdateAgreed:";
          goto LABEL_286;
        }
      }

      v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      v141 = "softwareUpdateAgreed:";
      goto LABEL_286;
    case 54:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v105 == 0xE700000000000000)
      {
      }

      else
      {
        v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v161 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) captiveConfirmed];
      goto LABEL_315;
    case 55:
      sub_10000F25C((v27 + 8), v302, &qword_1001025D0, &unk_1000BD010);
      if (v303)
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v108 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v109 = String._bridgeToObjectiveC()();
          [v108 wiFiSelected:{v109, v293}];
          goto LABEL_157;
        }
      }

      else
      {
        sub_10000EBA4(v302, &qword_1001025D0, &unk_1000BD010);
      }

      sub_1000161DC(v27, &aBlock);
      sub_1000161DC(&aBlock, v302);
      v182 = swift_allocObject();
      v183 = v305;
      *(v182 + 16) = aBlock;
      *(v182 + 32) = v183;
      *(v182 + 48) = v306;
      *(v182 + 64) = v307;
      v184 = swift_allocObject();
      *(v184 + 16) = sub_10008305C;
      *(v184 + 24) = v182;
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.error.getter();
      v187 = swift_allocObject();
      *(v187 + 16) = 32;
      v188 = swift_allocObject();
      *(v188 + 16) = 8;
      v189 = swift_allocObject();
      *(v189 + 16) = sub_100083068;
      *(v189 + 24) = v184;
      v190 = swift_allocObject();
      *(v190 + 16) = sub_100083180;
      *(v190 + 24) = v189;
      sub_10000E6C4(&qword_100104140, &qword_1000BE920);
      v191 = swift_allocObject();
      *(v191 + 16) = xmmword_1000BD070;
      *(v191 + 32) = sub_100083198;
      *(v191 + 40) = v187;
      *(v191 + 48) = sub_100083198;
      *(v191 + 56) = v188;
      *(v191 + 64) = sub_10008312C;
      *(v191 + 72) = v190;
      swift_setDeallocating();
      sub_100081EC0();
      if (os_log_type_enabled(v185, v186))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v301 = v193;
        *v192 = 136315138;
        v194 = sub_10000BFCC();
        v196 = v195;
        sub_100012E08(v302);
        v197 = sub_1000B08A0(v194, v196, &v301);

        *(v192 + 4) = v197;
        _os_log_impl(&_mh_execute_header, v185, v186, "HomePodSetupPresenter: setupStepCompleted for wifi picker failed %s", v192, 0xCu);
        sub_10000E70C(v193);
      }

      else
      {

        sub_100012E08(v302);
      }

      goto LABEL_315;
    case 56:
      sub_10000F25C((v27 + 8), v302, &qword_1001025D0, &unk_1000BD010);
      if (v303)
      {
        sub_10000E6C4(&qword_1001018D0, &qword_1000BC200);
        if (swift_dynamicCast())
        {
          v108 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v109 = String._bridgeToObjectiveC()();
          [v108 wifiPasswordSelected:{v109, v293}];
LABEL_157:
        }
      }

      else
      {
LABEL_174:
        sub_10000EBA4(v302, &qword_1001025D0, &unk_1000BD010);
      }

      goto LABEL_315;
    case 57:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v127 == 0xE700000000000000)
      {
      }

      else
      {
        v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v167 & 1) == 0)
        {
          v140 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
          v141 = "resetWiFiPicker:";
LABEL_286:
          [v140 v141];
          goto LABEL_315;
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) wiFiAcknowledged];
      goto LABEL_315;
    case 58:
      v128 = *v27;
      if (v128 == 35)
      {
        goto LABEL_119;
      }

      if (v128 != 34)
      {
        goto LABEL_315;
      }

      goto LABEL_17;
    case 59:
      v69 = *v27;
      if (v69 > 0x20)
      {
        goto LABEL_99;
      }

      if (v69 == 27)
      {
        v233 = [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) sysDropSession];
        [v233 enableAirDropForEveryone];
      }

      else if (v69 == 28)
      {
        [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) startAirDropSysdiagnose];
      }

      goto LABEL_315;
    case 60:
    case 61:
      v69 = *v27;
LABEL_99:
      if (v69 - 33 < 2)
      {
        goto LABEL_17;
      }

      if (v69 != 35)
      {
        goto LABEL_315;
      }

LABEL_119:
      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) setSysDropMode:{0, v293}];
      goto LABEL_17;
    case 62:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v75 == 0xE700000000000000)
      {
      }

      else
      {
        v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v151 & 1) == 0)
        {
LABEL_182:
          [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) skipAudioPasscode];
          goto LABEL_315;
        }
      }

      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) playAudioPasscodeAgain];
      goto LABEL_315;
    case 64:
      v86 = *v27;
      if (sub_10000FEC4(*v27) == 0x6565726761 && v87 == 0xE500000000000000)
      {
        goto LABEL_62;
      }

      v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v157)
      {
        goto LABEL_192;
      }

      if (sub_10000FEC4(v86) == 0x7972616D697270 && v224 == 0xE700000000000000)
      {
LABEL_62:
      }

      else
      {
        v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v225 & 1) == 0)
        {
LABEL_17:
          swift_unknownObjectRetain();
          v43 = 5;
LABEL_18:
          sub_1000610CC(v43, 1);
          swift_unknownObjectRelease();
          goto LABEL_315;
        }
      }

LABEL_192:
      [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) homePodSoftwareUpdateNonSetupAcknowledged];
      goto LABEL_315;
    case 68:
      v149 = *v27;
      if (v149 == 32)
      {
        v198 = v294;
        URL.init(string:)();
        v199 = [objc_opt_self() defaultWorkspace];
        if (v199)
        {
          v200 = v199;
          v201 = v293;
          sub_10000F25C(v198, v293, &qword_100101F08, &unk_1000BD100);
          v202 = type metadata accessor for URL();
          v203 = *(v202 - 8);
          v205 = 0;
          if ((*(v203 + 48))(v201, 1, v202) != 1)
          {
            URL._bridgeToObjectiveC()(v204);
            v205 = v206;
            (*(v203 + 8))(v201, v202);
          }

          sub_10000DC20(_swiftEmptyArrayStorage);
          v207 = Dictionary._bridgeToObjectiveC()().super.isa;

          v208 = [v200 openURL:v205 withOptions:v207];

          if (v208)
          {
            v209 = v198;
          }

          else
          {
            v234 = Logger.logObject.getter();
            v235 = static os_log_type_t.default.getter();
            v236 = swift_allocObject();
            *(v236 + 16) = 32;
            v237 = swift_allocObject();
            *(v237 + 16) = 8;
            sub_10000E6C4(&qword_100104140, &qword_1000BE920);
            v238 = swift_allocObject();
            *(v238 + 16) = xmmword_1000BD070;
            *(v238 + 32) = sub_100083198;
            *(v238 + 40) = v236;
            *(v238 + 48) = sub_100083198;
            *(v238 + 56) = v237;
            *(v238 + 64) = sub_100081F20;
            *(v238 + 72) = 0;
            swift_setDeallocating();
            sub_100081EC0();
            if (os_log_type_enabled(v234, v235))
            {
              v239 = swift_slowAlloc();
              v240 = swift_slowAlloc();
              *&aBlock = v240;
              *v239 = 136315138;
              *(v239 + 4) = sub_1000B08A0(0xD000000000000026, 0x80000001000C6DE0, &aBlock);
              _os_log_impl(&_mh_execute_header, v234, v235, "HomePodSetupIconContent: unable to open URL %s", v239, 0xCu);
              sub_10000E70C(v240);
            }

            v209 = v294;
          }

          sub_10000EBA4(v209, &qword_100101F08, &unk_1000BD100);
          goto LABEL_315;
        }

LABEL_341:
        __break(1u);
        JUMPOUT(0x10007D518);
      }

      if (v149 != 31)
      {
        goto LABEL_315;
      }

LABEL_173:
      v150 = "onfigurationList";
      v48 = 0xD000000000000011;
LABEL_199:
      v160 = v150 | 0x8000000000000000;
      v159 = 5;
LABEL_222:
      sub_10007E190(v159, v48, v160);
      goto LABEL_315;
    case 69:
      v82 = *v27;
      if (sub_10000FEC4(*v27) == 0x6565726761 && v83 == 0xE500000000000000)
      {

LABEL_186:
        [*(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) dataAndPrivacyAgreed];
        goto LABEL_315;
      }

      v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v154)
      {
        goto LABEL_186;
      }

      if (sub_10000FEC4(v82) == 0xD000000000000011 && 0x80000001000C07C0 == v223)
      {
      }

      else
      {
        v262 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v262 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      v263 = *(*(v36 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
      if (*(v27 + 6))
      {
        swift_errorRetain();
        v264 = v263;
        v265 = _convertErrorToNSError(_:)();
        v266 = String._bridgeToObjectiveC()();
        [v264 _reportError:v265 label:v266];
      }

      else
      {
        v281 = objc_allocWithZone(NSError);
        v282 = v263;
        v283 = String._bridgeToObjectiveC()();
        v284 = [v281 initWithDomain:v283 code:-2050 userInfo:0];

        v285 = _convertErrorToNSError(_:)();
        v286 = String._bridgeToObjectiveC()();
        [v282 _reportError:v285 label:v286];
      }

LABEL_315:
      v272 = sub_10007869C(*(v36 + v41));
      v274 = v273;
      if (v272 == sub_10007869C(v42) && v274 == v275)
      {
      }

      else
      {
        v276 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v276 & 1) == 0)
        {
          sub_10007E89C(v277);
        }
      }

      return;
    default:
      if (sub_10000FEC4(*v27) == 0x7972616D697270 && v110 == 0xE700000000000000)
      {
      }

      else
      {
        v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v164 & 1) == 0)
        {
          goto LABEL_315;
        }
      }

      sub_10007D630();
      goto LABEL_315;
  }
}

void sub_10007D630()
{
  v1 = v0;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103DD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupPresenter: request start device setup process", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_remoteViewController);
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 setIdleTimerDisabled:1 forReason:v7];
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  sub_100012AAC(v2, qword_100104988);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = 0x4072C00000000000;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetup: 'Hello Siri' trigger disabled for %f seconds", v10, 0xCu);
  }

  [objc_opt_self() requestPhraseSpotterBypassing:1 timeout:300.0];
  sub_1000A640C();
}

void sub_10007D874(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100012AAC(v3, qword_100103DD0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupPresenter: Home name is valid, creating home...", v6, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      swift_unknownObjectRetain();

      v9 = *(v8 + 80);
      v10 = String._bridgeToObjectiveC()();
      [v9 createNewHomeWithName:v10];
      swift_unknownObjectRelease();

LABEL_14:
    }
  }

  else
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100012AAC(v12, qword_100103DD0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "HomePodSetupPresenter: Home name is invalid", v15, 2u);
    }

    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      swift_unknownObjectRetain();

      v10 = *(v17 + 80);
      swift_unknownObjectRelease();
      [v10 homeKitStartHomeNameCreation:1 namingIssue:a2];
      goto LABEL_14;
    }
  }
}

double sub_10007DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

uint64_t sub_10007DB6C(void *a1)
{
  v1 = [a1 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10007DBC0(char *a1)
{
  if (sub_10000FEC4(*a1) == 0xD000000000000010 && 0x80000001000C06C0 == v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

void sub_10007DC38(uint64_t a1)
{
  if (a1)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100012AAC(v1, qword_100103DD0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
      v5 = Optional.debugDescription.getter();
      v7 = sub_1000B08A0(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "HomePodSetupPresenter: ### Re-enable B238Setup after WiFi failed: %s", v3, 0xCu);
      sub_10000E70C(v4);

      return;
    }
  }

  else
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100012AAC(v8, qword_100103DD0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "HomePodSetupPresenter: Re-enabling B238Setup after WiFi connects", v10, 2u);
    }
  }
}

void sub_10007DE7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10007DEE8(char *a1)
{
  if (sub_10000FEC4(*a1) == 0x7972616D697270 && v2 == 0xE700000000000000)
  {

    return 51;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 51;
  }

  v5 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  v6 = *(v5 + 48);
  if (*(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) == 3 && (*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_noP2PRouterPresented) & 1) == 0 && *(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_didUsePhonesNetwork) == 1)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100012AAC(v7, qword_100103DD0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: stateForLastScreens .noP2PRouter", v10, 2u);
    }

    return 48;
  }

  if (!*(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem))
  {
    return 51;
  }

  if (*(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) != 1)
  {
    return 51;
  }

  if (*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_appleMusicPromotionPresented))
  {
    return 51;
  }

  v12 = *(v5 + 136);
  if (!v12 || !*&v12[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic])
  {
    return 51;
  }

  v13 = qword_1001016D0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100012AAC(v15, qword_100103DD0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: stateForLastScreens .appleMusicPromotion", v18, 2u);
  }

  return 26;
}

void sub_10007E190(int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v34[-v10];
  swift_unknownObjectRetain();
  sub_1000610CC(a1, a1 != 19);
  swift_unknownObjectRelease();
  if (a3)
  {
    if (qword_1001016D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100012AAC(v12, qword_100103DD0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000B08A0(a2, a3, &v35);
      _os_log_impl(&_mh_execute_header, v13, v14, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Attempting to open settings: %s", v15, 0xCu);
      sub_10000E70C(v16);
    }

    URL.init(string:)();
    v17 = [objc_opt_self() defaultWorkspace];
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = v17;
    sub_10000F25C(v11, v9, &qword_100101F08, &unk_1000BD100);
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    v22 = 0;
    if ((*(v20 + 48))(v9, 1, v19) != 1)
    {
      URL._bridgeToObjectiveC()(v21);
      v22 = v23;
      (*(v20 + 8))(v9, v19);
    }

    sub_10000DC20(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = 0;
    v25 = [v18 openSensitiveURL:v22 withOptions:isa error:&v35];

    if (v25)
    {
      v26 = v35;
LABEL_11:
      sub_10000EBA4(v11, &qword_100101F08, &unk_1000BD100);
      return;
    }

    v27 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000EBA4(v11, &qword_100101F08, &unk_1000BD100);
    v28 = _convertErrorToNSError(_:)();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupPresenter: Open Settings failed {error: %@}", v31, 0xCu);
      sub_10000EBA4(v32, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }
  }
}

void sub_10007E65C(char a1)
{
  *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = a1;
  v3 = sub_10007869C(a1);
  v4 = v2;
  if (v3 == 1701736292 && v2 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (v3 == 0x6F727245656E6F64 && v4 == 0xE900000000000072)
    {
LABEL_3:

      goto LABEL_5;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      *(v8 + 88) = v3;
      *(v8 + 96) = v4;

      *(v8 + 104) = mach_absolute_time();
      *(v8 + 112) = 0;
      if (qword_1001016D0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100012AAC(v9, qword_100103DD0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        v14 = sub_1000B08A0(v3, v4, &v15);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter presentCurrentTask viewController: %s", v12, 0xCu);
        sub_10000E70C(v13);
      }
    }
  }

LABEL_5:

  sub_10007E89C(v5);
}

void sub_10007E89C(uint64_t a1)
{
  v2 = v1;
  if (IsAppleInternalBuild())
  {
    sub_10007F0D4();
  }

  v3 = sub_100080390(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    sub_100060D5C(v4);
    swift_unknownObjectRelease();
    v5 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_currentViewController);
    *(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_currentViewController) = v4;
    v9 = v4;

    v6 = *(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80);
    [v6 setPresentingChildViewController:v9];
  }

  else
  {
    v7 = *(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType;
    if (*(v7 + 4))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
    }

    swift_unknownObjectRetain();
    sub_1000610CC(v8, v8 != 19);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10007EA04()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  result = IsAppleInternalBuild();
  if (result)
  {
    v43 = v9;
    if (qword_100101608 != -1)
    {
      swift_once();
    }

    sub_10003CFBC(*(v44 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state), &v46);
    if (v48 == 1)
    {
      return sub_10000EBA4(&v46, &qword_1001024D0, &unk_1000BE910);
    }

    else
    {
      v38 = v8;
      v39 = v5;
      v50[0] = v46;
      v50[1] = v47;
      v50[2] = v48;
      v51 = v49;
      if (qword_1001016D0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100012AAC(v16, qword_100103DD0);
      sub_1000161DC(v50, &v46);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v42 = v0;
      v41 = v1;
      v40 = v4;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136315138;
        v22 = sub_10000BFCC();
        v24 = v23;
        sub_100012E08(&v46);
        v25 = sub_1000B08A0(v22, v24, aBlock);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupPresenter: Found Automation stepResult: %s", v20, 0xCu);
        sub_10000E70C(v21);
      }

      else
      {

        sub_100012E08(&v46);
      }

      sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
      v37 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      if (qword_1001016D8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for DispatchTimeInterval();
      sub_100012AAC(v26, qword_100103DE8);
      + infix(_:_:)();
      v27 = *(v43 + 8);
      v28 = v12;
      v29 = v38;
      v27(v28, v38);
      v30 = swift_allocObject();
      swift_weakInit();
      sub_1000161DC(v50, &v46);
      v31 = swift_allocObject();
      v32 = v47;
      *(v31 + 24) = v46;
      *(v31 + 16) = v30;
      *(v31 + 40) = v32;
      *(v31 + 56) = v48;
      *(v31 + 72) = v49;
      aBlock[4] = sub_100082F3C;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100091194;
      aBlock[3] = &unk_1000F1078;
      v33 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      *&v46 = _swiftEmptyArrayStorage;
      sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v34 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v37;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v33);

      (*(v41 + 8))(v3, v34);
      (*(v39 + 8))(v7, v40);
      v27(v14, v29);
      return sub_100012E08(v50);
    }
  }

  return result;
}

double sub_10007F074(uint64_t a1, char *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10007A070(a2);
  }

  return result;
}

uint64_t sub_10007F0D4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v78 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchTimeInterval();
  v76 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v77 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v75 - v10;
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v11 = qword_1001086C0;
  v12 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState;
  v13 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState);
  v14 = OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedStateSequence;
  result = swift_beginAccess();
  v16 = *(v11 + v14);
  v17 = *(v16 + 16);
  v18 = v17 < v13 || v17 == 0;
  v95 = v7;
  if (v18)
  {
    v19 = v100;
  }

  else
  {
    v19 = v100;
    if (v13 < v17)
    {
      if (v13 < 0)
      {
        __break(1u);
        return result;
      }

      v20 = *(v16 + v13++ + 32);
      *(v11 + v12) = v13;
    }

    else
    {
      v20 = 0;
    }

    *(v96 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state) = v20;
    v17 = *(v16 + 16);
  }

  v21 = v17 < v13 || v17 == 0;
  if (v21 && !*(v11 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testMode) && !*(v11 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    return result;
  }

  v83 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state;
  v22 = sub_10007869C(*(v96 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
  v92 = v3;
  if (v22 == 0x636C655769726973 && v23 == 0xEB00000000656D6FLL)
  {

LABEL_25:
    sub_10000E6C4(&qword_100104120, &qword_1000BE8E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BB8E0;
    *(inited + 32) = 0x7478655469726973;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x80000001000C6BF0;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x495469726973;
    *(inited + 88) = 0xE600000000000000;
    sub_10000E6C4(&qword_100104128, &qword_1000BE8E8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000BE6B0;
    v28 = sub_10000DD50(&off_1000EE270);
    sub_10000E6C4(&qword_100104130, &qword_1000BE8F0);
    swift_arrayDestroy();
    *(v27 + 32) = v28;
    v29 = sub_10000DD50(&off_1000EE2D8);
    swift_arrayDestroy();
    *(v27 + 40) = v29;
    v30 = sub_10000DD50(&off_1000EE340);
    swift_arrayDestroy();
    *(v27 + 48) = v30;
    v31 = sub_10000DD50(&off_1000EE3A8);
    swift_arrayDestroy();
    *(v27 + 56) = v31;
    v32 = sub_10000DD50(&off_1000EE410);
    swift_arrayDestroy();
    *(v27 + 64) = v32;
    v33 = sub_10000DD50(&off_1000EE478);
    swift_arrayDestroy();
    *(v27 + 72) = v33;
    *(inited + 120) = sub_10000E6C4(&qword_100104138, &qword_1000BE8F8);
    *(inited + 96) = v27;
    v34 = sub_10000DC20(inited);
    swift_setDeallocating();
    sub_10000E6C4(&qword_100101980, &qword_1000BC250);
    swift_arrayDestroy();
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v98 = static OS_dispatch_queue.main.getter();
    v35 = v5;
    v36 = v2;
    v37 = v0;
    v38 = v82;
    static DispatchTime.now()();
    v39 = v93;
    *v93 = 1;
    v40 = v76;
    v41 = v94;
    (*(v76 + 104))(v39, enum case for DispatchTimeInterval.seconds(_:), v94);
    + infix(_:_:)();
    (*(v40 + 8))(v39, v41);
    v42 = *(v77 + 8);
    v43 = v38;
    v0 = v37;
    v2 = v36;
    v5 = v35;
    v42(v43, v95);
    v44 = swift_allocObject();
    *(v44 + 16) = v96;
    *(v44 + 24) = v34;
    v105 = sub_1000825E0;
    v106 = v44;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_100091194;
    v104 = &unk_1000F1028;
    v45 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    v3 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v98;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    v47 = v45;
    v25 = v95;
    _Block_release(v47);

    (*(v79 + 8))(v2, v0);
    (*(v78 + 8))(v35, v3);
    v42(v100, v25);
    v19 = v100;
    goto LABEL_26;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = v95;
  if (v24)
  {
    goto LABEL_25;
  }

LABEL_26:
  v80 = v5;
  v81 = v2;
  v99 = v0;
  if (sub_10007869C(*(v96 + v83)) == 0x73736572676F7270 && v48 == 0xEA00000000004955)
  {

    v49 = v81;
    v50 = v80;
    v51 = v82;
    goto LABEL_30;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v49 = v81;
  v50 = v80;
  v51 = v82;
  if (v52)
  {
LABEL_30:
    v91 = sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v53 = 0;
    v90 = (v76 + 104);
    v89 = enum case for DispatchTimeInterval.milliseconds(_:);
    v88 = (v76 + 8);
    v87 = (v77 + 8);
    v86 = &v103;
    v85 = (v79 + 8);
    v84 = (v78 + 8);
    v54 = 750;
    do
    {
      v55 = *(&off_1000EE4E0 + v53 + 32);
      v98 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v56 = v93;
      *v93 = v54;
      v57 = v94;
      (*v90)(v56, v89, v94);
      + infix(_:_:)();
      (*v88)(v56, v57);
      v97 = *v87;
      v97(v51, v25);
      v58 = swift_allocObject();
      *(v58 + 16) = v96;
      *(v58 + 24) = v55;
      v105 = sub_100082594;
      v106 = v58;
      aBlock = _NSConcreteStackBlock;
      v102 = 1107296256;
      v103 = sub_100091194;
      v104 = &unk_1000F0FD8;
      v59 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v25 = v95;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v60 = v98;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      v61 = v99;
      _Block_release(v59);

      v3 = v92;
      (*v85)(v49, v61);
      (*v84)(v50, v3);
      v97(v100, v25);
      v19 = v100;
      v54 += 750;
      v53 += 4;
    }

    while (v53 != 24);
  }

  if (sub_10007869C(*(v96 + v83)) == 0xD000000000000013 && 0x80000001000C09D0 == v62)
  {

    v63 = v99;
    v64 = v81;
    v65 = v80;
    v66 = v94;
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v63 = v99;
    v64 = v81;
    v65 = v80;
    v66 = v94;
    if ((v67 & 1) == 0)
    {
      return result;
    }
  }

  if (!*(*(*(v96 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem))
  {
    sub_1000A8984();
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v100 = static OS_dispatch_queue.main.getter();
    v68 = v82;
    static DispatchTime.now()();
    v69 = v93;
    *v93 = 2;
    v70 = v76;
    (*(v76 + 104))(v69, enum case for DispatchTimeInterval.seconds(_:), v66);
    + infix(_:_:)();
    (*(v70 + 8))(v69, v66);
    v98 = *(v77 + 8);
    v71 = v95;
    v98(v68, v95);
    v72 = swift_allocObject();
    swift_weakInit();
    v105 = sub_1000824F4;
    v106 = v72;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_100091194;
    v104 = &unk_1000F0F88;
    v73 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100082514(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v74 = v100;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v73);

    (*(v79 + 8))(v64, v63);
    (*(v78 + 8))(v65, v3);
    result = (v98)(v19, v71);
    *(v96 + v83) = 0;
  }

  return result;
}

uint64_t sub_10008011C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  sub_1000783D4(a2);
  sub_100081FB0(v3, 510, v4, a1);
}

uint64_t sub_100080184(uint64_t a1, int a2)
{
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  *(*(*(a1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = a2;
  LOBYTE(a2) = *(a1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

  v11[8] = 1;
  sub_1000185F0(v7, a2, 0x100000000uLL, 0, v6);

  v8 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_100082E7C(v6, a1 + v9);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v6, &qword_100103420, &unk_1000BCE90);
}

double sub_1000802F4(uint64_t a1)
{
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_indexToNextState) = 0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10007E89C(Strong);
  }

  return result;
}

char *sub_100080390(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 4:
    case 22:
    case 24:
      type metadata accessor for HomePodSetupPickerViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 2:
    case 56:
      type metadata accessor for HomePodSetupTextFieldViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 3:
    case 6:
    case 7:
    case 9:
    case 12:
    case 13:
    case 17:
    case 25:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 48:
    case 50:
    case 52:
    case 53:
    case 57:
    case 58:
    case 59:
    case 61:
    case 62:
    case 64:
    case 65:
    case 66:
    case 68:
    case 69:
      type metadata accessor for HomePodSetupIconContentViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 5:
      type metadata accessor for HomePodSetupProgressViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 8:
      type metadata accessor for HomePodSetupSoundRecognitionViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 10:
      type metadata accessor for HomePodSetupDisclaimerViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 11:
      type metadata accessor for HomePodSetupPersonalRequestsViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 14:
    case 15:
      type metadata accessor for HomePodSetupSiriWelcomeViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 16:
    case 30:
      type metadata accessor for HomePodSetupFeatureListViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 18:
      v4 = *(*(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
      v5 = objc_allocWithZone(type metadata accessor for HomePodSetupVisualAuthViewController(0));
      return sub_10006CE94(v4);
    case 19:
      [*(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 80) skipAudioPasscode];
      type metadata accessor for HomePodSetupPINEntryViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 20:
    case 27:
      type metadata accessor for HomePodSetupStereoViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 21:
      v6 = [objc_allocWithZone(HomePodSetupSiriVoicePreviewer) init];
      v7 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      [v6 setSession:*(*(v7 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession)];
      v8 = *(v7 + 48);
      v9 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
      v10 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode + 8);
      v11 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_allowsRandomVoiceSelection);
      objc_allocWithZone(type metadata accessor for HomePodSetupSiriVoiceSelectionViewController(0));

      return sub_100058DDC(v9, v10, v11, v6);
    case 23:
      type metadata accessor for HomePodSetupLeftRightViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 26:
      v39[3] = &type metadata for SharingFeatureFlags;
      v39[4] = sub_100082468();
      LOBYTE(v39[0]) = 0;
      v12 = isFeatureEnabled(_:)();
      sub_10000E70C(v39);
      v13 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
      if ((v12 & 1) == 0)
      {
        v17 = *(v13 + 48);
        v19 = *(v17 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
        v18 = *(v17 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID + 8);
        v20 = (v17 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
        v22 = *v20;
        v21 = v20[1];
        v23 = type metadata accessor for HomePodSetupAppleMusicViewController(0);
        v24 = objc_allocWithZone(v23);
        *&v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_presenter + 8] = 0;
        swift_unknownObjectWeakInit();
        v25 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
        v26 = type metadata accessor for HomePodSetupViewModel(0);
        (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
        *&v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic] = 0;
        v27 = &v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceGUID];
        *v27 = v19;
        *(v27 + 1) = v18;
        v28 = &v24[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceSerialNumber];
        *v28 = v22;
        *(v28 + 1) = v21;
        v29 = objc_allocWithZone(PRXCardContentView);

        v30 = [v29 init];
        v38.receiver = v24;
        v38.super_class = v23;
        v31 = objc_msgSendSuper2(&v38, "initWithContentView:", v30);

        return v31;
      }

      if ([*(v13 + 80) acceptedMusicTerms])
      {
        v14 = *(v13 + 136);
        if (v14)
        {
          v15 = *(v13 + 136);
          v16 = v14;
          return v15;
        }

        if (qword_1001016D0 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100012AAC(v37, qword_100103DD0);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          v36 = "HomePodSetupPresenter: No marketing item so not showing Music Offer.";
          goto LABEL_37;
        }
      }

      else
      {
        if (qword_1001016D0 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100012AAC(v32, qword_100103DD0);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          v36 = "HomePodSetupPresenter: User did not agree to Apple Music Privacy not showing Music Offer.";
LABEL_37:
          _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);
        }
      }

      return 0;
    case 34:
    case 35:
    case 36:
    case 37:
    case 46:
    case 54:
      type metadata accessor for HomePodSetupWiFiErrorViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 49:
    case 67:
      type metadata accessor for HomePodSetupDoneViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 51:
      return result;
    case 55:
      type metadata accessor for HomePodSetupTableViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 60:
      type metadata accessor for HomePodSetupFileTransferViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    case 63:
      type metadata accessor for SoftwareUpdateRequiredViewController();
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    default:
      type metadata accessor for HomePodSetupIntroViewController(0);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }
}

void sub_1000809E4()
{
  v1 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  __chkstk_darwin(v1 - 8);
  v87 = &v84 - v2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v85 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = &v84 - v7;
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(v8 - 8);
  v97 = v8;
  v98 = v9;
  __chkstk_darwin(v8);
  v99 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000E6C4(&qword_1001040F8, &qword_1000BE8B8);
  __chkstk_darwin(v11 - 8);
  v91 = &v84 - v12;
  v13 = type metadata accessor for URLComponents();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v90 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);
  v16 = [*(v15 + 80) mainError];
  if (v16)
  {
    v17 = v16;
    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v18._countAndFlagsBits = 0xD000000000000028;
    v18._object = 0x80000001000C6BC0;
    String.append(_:)(v18);
    v100 = v17;
    sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 10528;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
  }

  else
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v101 = 0xD000000000000026;
    v102 = 0x80000001000C6B50;
    LODWORD(v100) = *(*(v15 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);
  }

  v21 = v101;
  v22 = v102;
  sub_10000E6C4(&qword_100104100, &qword_1000BE8C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BE6C0;
  strcpy((inited + 32), "Classification");
  *(inited + 47) = -18;
  *(inited + 48) = 0x2073756F69726553;
  *(inited + 56) = 0xEB00000000677542;
  *(inited + 64) = 0x6E656E6F706D6F43;
  *(inited + 72) = 0xEB00000000444974;
  *(inited + 80) = 0x30323833313231;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "ComponentName");
  *(inited + 110) = -4864;
  *(inited + 112) = 0x69766544656D6F48;
  *(inited + 120) = 0xEF70757465536563;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000001000C6B80;
  *(inited + 144) = 7105601;
  *(inited + 152) = 0xE300000000000000;
  *(inited + 160) = 0x7364726F7779654BLL;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = 0x393739343937;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x6375646F72706552;
  *(inited + 200) = 0xEF7974696C696269;
  strcpy((inited + 208), "I Didn't Try");
  *(inited + 221) = 0;
  *(inited + 222) = -5120;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v21;
  *(inited + 248) = v22;
  *(inited + 256) = 0x656D686361747441;
  *(inited + 264) = 0xEB0000000073746ELL;
  v24 = [*(v15 + 80) sysDropSession];
  v25 = [v24 fileTransferredSysDiagnosePath];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(inited + 272) = v26;
  *(inited + 280) = v28;
  v29 = sub_10000D9E4(inited);
  swift_setDeallocating();
  sub_10000E6C4(&qword_100104108, &qword_1000BE8C8);
  swift_arrayDestroy();
  if (qword_1001016D0 == -1)
  {
    goto LABEL_5;
  }

LABEL_38:
  swift_once();
LABEL_5:
  v30 = type metadata accessor for Logger();
  v31 = sub_100012AAC(v30, qword_100103DD0);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v88 = v4;
  v89 = v3;
  v92 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v101 = v36;
    *v35 = 136315138;
    v37 = Dictionary.description.getter();
    v4 = v38;
    v39 = sub_1000B08A0(v37, v38, &v101);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "TTR query dict %s", v35, 0xCu);
    sub_10000E70C(v36);
  }

  v40 = v29 + 64;
  v41 = 1 << *(v29 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v29 + 64);
  v44 = (v41 + 63) >> 6;
  v95 = v98 + 32;

  v3 = 0;
  v45 = _swiftEmptyArrayStorage;
  v46 = v29;
  v96 = v29;
  while (v43)
  {
LABEL_14:
    v48 = (v46[6] + ((v3 << 10) | (16 * __clz(__rbit64(v43)))));
    v49 = *v48;
    v50 = v48[1];
    if (v46[2])
    {

      v51 = sub_100053B80(v49, v50);
      if (v52)
      {
        v4 = *(v46[7] + 16 * v51);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_100053208(0, v45[2] + 1, 1, v45);
    }

    v46 = v96;
    v54 = v45[2];
    v53 = v45[3];
    v29 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v45 = sub_100053208((v53 > 1), v54 + 1, 1, v45);
    }

    v43 &= v43 - 1;
    v45[2] = v29;
    (*(v98 + 32))(v45 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v54, v99, v97);
  }

  while (1)
  {
    v47 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v47 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v47);
    ++v3;
    if (v43)
    {
      v3 = v47;
      goto LABEL_14;
    }
  }

  v55 = v91;
  URLComponents.init(string:)();
  v57 = v93;
  v56 = v94;
  if ((*(v93 + 48))(v55, 1, v94) == 1)
  {

    v58 = &qword_1001040F8;
    v59 = &qword_1000BE8B8;
    goto LABEL_29;
  }

  v60 = v90;
  (*(v57 + 32))(v90, v55, v56);
  URLComponents.queryItems.setter();
  v55 = v87;
  URLComponents.url.getter();
  v62 = v88;
  v61 = v89;
  if ((*(v88 + 48))(v55, 1, v89) == 1)
  {
    (*(v57 + 8))(v60, v56);
    v58 = &qword_100101F08;
    v59 = &unk_1000BD100;
LABEL_29:
    sub_10000EBA4(v55, v58, v59);
  }

  else
  {
    v63 = v86;
    (*(v62 + 32))(v86, v55, v61);
    v64 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    sub_10000DAF8(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100082514(&qword_100101B08, type metadata accessor for OpenExternalURLOptionsKey, &unk_1000BCBFC);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v64 openURL:v67 options:isa completionHandler:0];

    v69 = v85;
    (*(v62 + 16))(v85, v63, v61);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v101 = v73;
      *v72 = 136315138;
      sub_100082514(&qword_100104110, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v69;
      v77 = v76;
      v78 = *(v62 + 8);
      v78(v75, v61);
      v79 = sub_1000B08A0(v74, v77, &v101);

      *(v72 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "HomePodSetupPresenter: Open Radar URL: %s", v72, 0xCu);
      sub_10000E70C(v73);

      v78(v86, v61);
    }

    else
    {

      v80 = *(v62 + 8);
      v80(v69, v61);
      v80(v63, v61);
    }

    (*(v93 + 8))(v90, v94);
  }

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "<loom:ViewService:matchSubmitRadar> HomePodSetupPresenter: Report Bug", v83, 2u);
  }
}

uint64_t sub_1000816F0()
{
  sub_100012E5C(v0 + 16);
  sub_10000EBA4(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel, &qword_100103420, &unk_1000BCE90);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100081790()
{
  sub_1000816F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomePodSetupPresenter(uint64_t a1)
{
  result = qword_100103E78;
  if (!qword_100103E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008183C(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for HomePodSetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBB)
  {
    goto LABEL_17;
  }

  if (a2 + 69 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 69) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 69;
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

      return (*a1 | (v4 << 8)) - 69;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 69;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x46;
  v8 = v6 - 70;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomePodSetupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 69 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 69) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBB)
  {
    v4 = 0;
  }

  if (a2 > 0xBA)
  {
    v5 = ((a2 - 187) >> 8) + 1;
    *result = a2 + 69;
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
    *result = a2 + 69;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100081A6C()
{
  result = qword_1001040F0;
  if (!qword_1001040F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001040F0);
  }

  return result;
}

uint64_t sub_100081AC0()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100012B48(v0, qword_100103DE8);
  *sub_100012AAC(v0, qword_100103DE8) = 1;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_100081B50(int a1)
{
  if (a1 <= 0)
  {
    if (a1 == -71163)
    {
      return 45;
    }

    else if (a1 == -71138)
    {
      return 46;
    }

    else if (a1)
    {
      return 50;
    }

    else
    {

      v3 = sub_10004B0F0();

      if (v3)
      {
        return 52;
      }

      else
      {
        return 49;
      }
    }
  }

  else
  {
    v1 = a1 - 301000;
    result = 34;
    switch(v1)
    {
      case 0:
      case 9:
        return result;
      case 4:
        result = 36;
        break;
      case 5:
        result = 38;
        break;
      case 6:
        result = 41;
        break;
      case 10:
        result = 42;
        break;
      case 11:
        result = 39;
        break;
      case 17:
        result = 30;
        break;
      case 18:
        result = 43;
        break;
      case 20:
      case 34:
        result = 37;
        break;
      case 21:
      case 28:
        result = 35;
        break;
      case 24:
        result = 44;
        break;
      case 27:
        result = 40;
        break;
      default:
        return 50;
    }
  }

  return result;
}

void sub_100081D10(int a1)
{
  v2 = v1;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103DD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupPresenter: displayError called for state: %d", v7, 8u);
  }

  *(*(*(v2 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = a1;
  if (a1 <= 301016)
  {
    if (a1 == 301007)
    {
      v8 = 31;
      goto LABEL_17;
    }

    if (a1 == 301010)
    {
      v8 = 42;
      goto LABEL_17;
    }
  }

  else
  {
    switch(a1)
    {
      case 301022:
        v8 = 32;
        goto LABEL_17;
      case 301019:
        v8 = 33;
        goto LABEL_17;
      case 301017:
        v8 = 30;
        goto LABEL_17;
    }
  }

  v8 = 50;
LABEL_17:

  sub_10007E65C(v8);
}

uint64_t sub_100081EC0()
{
  sub_10000E6C4(&qword_100104148, &qword_1000BE928);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100081F20(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1000B08A0(0xD000000000000026, 0x80000001000C6DE0, a3);
  v5 = *a1;
  *v5 = result;
  *a1 = v5 + 1;
  return result;
}

unint64_t sub_100081F68(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1000B08A0(0xD00000000000005ELL, 0x80000001000C6D10, a3);
  v5 = *a1;
  *v5 = result;
  *a1 = v5 + 1;
  return result;
}

void sub_100081FB0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-1] - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v33[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = *(a1 + 48);
    *(v16 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = v6;
    *(v16 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDialogInfo) = a3;

    sub_1000825E8(v6);
    v14 = String.init(cString:)();
    a3 = v17;
    if (qword_1001016D0 == -1)
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
  v18 = type metadata accessor for Logger();
  sub_100012AAC(v18, qword_100103DD0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v10;
    v22 = a4;
    v23 = v21;
    v24 = swift_slowAlloc();
    v33[0] = v24;
    *v23 = 136315138;
    v25 = sub_1000B08A0(v14, a3, v33);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupPresenter: Show Siri Welcome screen for event %s", v23, 0xCu);
    sub_10000E70C(v24);

    a4 = v22;
    v10 = v32;
  }

  else
  {
  }

  if (v6 == 510)
  {

    sub_100037200(v26, v10);

    v27 = type metadata accessor for HomePodSetupViewModel(0);
    (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
    v28 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
    swift_beginAccess();
    sub_100082E7C(v10, a4 + v28);
    swift_endAccess();
    sub_100079428();
    sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
  }

  else if (v6 == 500)
  {
    sub_10007E65C(14);
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "HomePodSetupPresenter: Show Siri Welcome screen with an invalid Event Type", v31, 2u);
    }
  }
}

unint64_t sub_100082414(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x46)
  {
    return 70;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100082468()
{
  result = qword_100104118;
  if (!qword_100104118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100104118);
  }

  return result;
}

uint64_t sub_1000824BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000824FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008255C()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_1000825A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_1000825E8(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_100082E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082EEC()
{

  if (*(v0 + 56))
  {
    sub_10000E70C((v0 + 32));
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100082F6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100082FC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083014()
{
  if (*(v0 + 48))
  {
    sub_10000E70C((v0 + 24));
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100083068()
{
  (*(v0 + 16))(v3);
  v1 = sub_10000BFCC();
  sub_100012E08(v3);
  return v1;
}

uint64_t sub_1000830BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000831A0(double a1, double a2, float a3)
{
  v7 = [v3 widthAnchor];
  v8 = [v3 heightAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 multiplier:a1 / a2];

  *&v10 = a3;
  [v9 setPriority:v10];
  v11 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000BCE00;
  *(v12 + 32) = v9;
  sub_1000163D8();
  v13 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

void sub_1000832FC(void *a1, double a2, double a3)
{
  v4 = v3;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:a1];
  v8 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD0A0;
  v10 = [a1 centerXAnchor];
  v11 = [v4 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:a2];

  *(v9 + 32) = v12;
  v13 = [a1 centerYAnchor];
  v14 = [v4 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a3];

  *(v9 + 40) = v15;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints:isa];
}

id sub_1000834C0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:a1];
  v14 = [a1 topAnchor];
  v15 = [a2 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a3];

  v17 = [a2 rightAnchor];
  v18 = [a1 rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:a6];

  v20 = [a2 bottomAnchor];
  v21 = [a1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:a5];

  v23 = [a1 leftAnchor];
  v24 = [a2 leftAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a4];

  v26 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000BD460;
  *(v27 + 32) = v16;
  *(v27 + 40) = v19;
  *(v27 + 48) = v22;
  *(v27 + 56) = v25;
  sub_1000163D8();
  v28 = v16;
  v29 = v19;
  v30 = v22;
  v31 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];

  return v28;
}

uint64_t sub_100083828(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100083A0C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100075414(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = [objc_opt_self() currentTraitCollection];
  v13 = [v12 userInterfaceStyle];

  if (v13 == 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  URL._bridgeToObjectiveC()(v14);
  v17 = v16;
  [v2 updateViewForAssetType:v15 adjustmentsURL:v16];

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100083A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083A7C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104150);
  v1 = sub_100012AAC(v0, qword_100104150);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100083B44()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for HomePodSetupPersonalRequestsViewController(0);
  v34.receiver = v1;
  v34.super_class = v12;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100104150);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupPersonalRequestsViewController: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100104150);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupPersonalRequestsViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    sub_100084024();
    sub_1000854D4(v11);
    if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();
      v29 = String._bridgeToObjectiveC()();
      v30 = [v1 dismissalConfirmationActionWithTitle:v26 message:v27 confirmButtonTitle:v28 cancelButtonTitle:v29];

      [v1 setDismissButtonAction:v30];
    }

    v31 = *&v11[v5[10]];
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v31, sub_10008B9B8, v32);

    sub_100016374(v11);
  }
}

void sub_100084024()
{
  v1 = v0;
  v2 = sub_1000860C8(0xD000000000000022, 0x80000001000C7040);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_1000860C8(0xD000000000000022, 0x80000001000C7070);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v57 = v9;
  v59 = v8;
  v10 = sub_1000860C8(0xD000000000000023, 0x80000001000C70A0);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v61 = v13;
  v62 = v12;
  v55 = v0;
  v14 = sub_1000860C8(0xD00000000000001FLL, 0x80000001000C70D0);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v65 = v17;
  v66 = v16;
  v18 = objc_allocWithZone(PRXFeatureIcon);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithSystemImageNamed:v19];

  v56 = objc_opt_self();
  v21 = [v56 systemRedColor];
  [v20 setPlatterColor:v21];

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  v23 = sub_100039F8C();
  *(inited + 64) = v23;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100038F50(inited, &v67, 0x535F4445544F5551, 0xED0000474E495254, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v24 = v20;
  v25 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();
  v27 = objc_opt_self();
  v64 = v24;
  v63 = [v27 featureWithTitle:v25 detailText:v26 icon:v24];

  v28 = objc_allocWithZone(PRXFeatureIcon);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 initWithSystemImageNamed:v29];

  v31 = [v56 systemBlueColor];
  [v30 setPlatterColor:v31];

  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1000BD050;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v23;
  *(v32 + 32) = v59;
  *(v32 + 40) = v57;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100038F50(v32, &v67, 0x535F4445544F5551, 0xED0000474E495254, 16421, 0xE200000000000000);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v30;
  v34 = String._bridgeToObjectiveC()();

  v35 = String._bridgeToObjectiveC()();
  v60 = v33;
  v58 = [v27 featureWithTitle:v34 detailText:v35 icon:v33];

  v36 = objc_allocWithZone(PRXFeatureIcon);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 initWithSystemImageNamed:v37];

  v39 = [v56 systemYellowColor];
  [v38 setPlatterColor:v39];

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1000BD050;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = v23;
  *(v40 + 32) = v62;
  *(v40 + 40) = v61;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100038F50(v40, &v67, 0x535F4445544F5551, 0xED0000474E495254, 16421, 0xE200000000000000);
  swift_setDeallocating();
  swift_arrayDestroy();
  v41 = v38;
  v42 = String._bridgeToObjectiveC()();

  v43 = String._bridgeToObjectiveC()();
  v44 = [v27 featureWithTitle:v42 detailText:v43 icon:v41];

  v45 = objc_allocWithZone(PRXFeatureIcon);
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 initWithSystemImageNamed:v46];

  v48 = [v56 systemGreenColor];
  [v47 setPlatterColor:v48];

  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1000BD050;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = v23;
  *(v49 + 32) = v66;
  *(v49 + 40) = v65;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100038F50(v49, &v67, 0x535F4445544F5551, 0xED0000474E495254, 16421, 0xE200000000000000);
  swift_setDeallocating();
  swift_arrayDestroy();
  v50 = v47;
  v51 = String._bridgeToObjectiveC()();

  v52 = String._bridgeToObjectiveC()();
  v53 = [v27 featureWithTitle:v51 detailText:v52 icon:v50];

  v54 = [v55 tableView];
  [v54 setSeparatorStyle:0];
}

void sub_100084840(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104150);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupPersonalRequestsViewController: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1000849C0(v2);
  }
}

void sub_1000849C0(char a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  __chkstk_darwin(v4 - 8);
  v6 = v28 - v5;
  v7 = type metadata accessor for ClientOrigin();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestOrigin();
  __chkstk_darwin(v11 - 8);
  if (a1 == 2)
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100012AAC(v24, qword_100104150);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "PersonalRequests Disabled", v27, 2u);
    }
  }

  else
  {
    if (a1 != 1)
    {
      return;
    }

    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100012AAC(v12, qword_100104150);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "PersonalRequests Agree button", v15, 2u);
    }

    if (SFDeviceClassCodeGet() == 1)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "PersonalRequests get me device", v18, 2u);
      }

      (*(v8 + 104))(v10, enum case for ClientOrigin.other(_:), v7);
      RequestOrigin.init(_:)();
      type metadata accessor for Session();
      swift_allocObject();
      v19 = Session.init(_:)();
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      type metadata accessor for MainActor();

      v21 = v2;
      v22 = static MainActor.shared.getter();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = &protocol witness table for MainActor;
      v23[4] = v19;
      v23[5] = v21;
      sub_1000880A0(0, 0, v6, &unk_1000BE9C8, v23);

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    memset(v31, 0, sizeof(v31));
    v30[0] = 2;
    sub_100012DA0(v28, v31, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v30);
    swift_unknownObjectRelease();
    sub_100012E08(v30);
  }
}

uint64_t sub_100084ED0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = type metadata accessor for HomePodSetupPersonalRequestsViewController(0);
  v35.receiver = v2;
  v35.super_class = v20;
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10007EA04();
    result = swift_unknownObjectRelease();
  }

  if (qword_100101608 != -1)
  {
    result = swift_once();
  }

  if (*(*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults) + 16) || *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault) == 1)
  {
    static DispatchTime.now()();
    *v12 = 1;
    (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
    + infix(_:_:)();
    (*(v10 + 8))(v12, v9);
    v28 = *(v14 + 8);
    v28(v17, v13);
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    aBlock[4] = sub_10008B960;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100091194;
    aBlock[3] = &unk_1000F1528;
    v24 = _Block_copy(aBlock);
    v25 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    v26 = v29;
    v27 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v32 + 8))(v26, v27);
    (*(v30 + 8))(v8, v31);
    return (v28)(v19, v13);
  }

  return result;
}

uint64_t sub_1000853F0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    memset(v5, 0, sizeof(v5));
    v4[0] = 1;
    sub_100012DA0(v2, v5, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v4);
    swift_unknownObjectRelease();
    return sub_100012E08(v4);
  }

  return result;
}

void sub_1000854D4(uint64_t a1)
{
  if ((v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_isConfigured] & 1) == 0)
  {
    v2 = v1;
    v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_isConfigured] = 1;
    v4 = String._bridgeToObjectiveC()();
    [v2 setTitle:v4];

    sub_100085C1C();
    v5 = String._bridgeToObjectiveC()();

    [v2 setSubtitle:v5];

    v6 = type metadata accessor for HomePodSetupViewModel(0);
    [v2 setDismissalType:*(a1 + *(v6 + 76))];
    v7 = (a1 + *(v6 + 28));
    v8 = *v7;
    v9 = v7[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
      v12 = String._bridgeToObjectiveC()();
      [v11 setText:v12];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v13 = [v2 view];
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = v13;
      [v13 addSubview:v11];

      v15 = *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bodyLabel];
      *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bodyLabel] = v11;
    }

    v16 = SFDeviceClassCodeGet();
    v17 = [objc_allocWithZone(PRXLabel) init];
    if (v16 == 1)
    {
      v18 = String._bridgeToObjectiveC()();
      v19 = sub_100006658(v18);

      if (!v19)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = String._bridgeToObjectiveC()();
      }

      [v17 setText:v19];

      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = v17;
      [v20 setNumberOfLines:0];
      v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
      [v20 setFont:v21];

      [v20 setAdjustsFontSizeToFitWidth:1];
      v22 = [objc_opt_self() secondaryLabelColor];
      [v20 setTextColor:v22];

      [v20 setTextAlignment:1];
      v23 = [v2 view];
      if (!v23)
      {
        goto LABEL_25;
      }

      v24 = v23;
      [v23 addSubview:v20];

      v25 = *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bottomLabel];
      *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bottomLabel] = v20;
      v26 = v20;

      v27 = &selRef_topAnchor;
      v28 = 30.0;
    }

    else
    {
      v27 = &selRef_bottomAnchor;
      v28 = 10.0;
    }

    v29 = [v2 contentView];
    v30 = [v29 mainContentGuide];

    v31 = [v2 tableView];
    v32 = [v31 bottomAnchor];

    if (v16 == 1)
    {
      v33 = v17;
    }

    else
    {
      v33 = v30;
    }

    v34 = [v33 *v27];
    v35 = [v32 constraintEqualToAnchor:v34 constant:v28];

    v36 = v35;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v16 == 1)
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000BD460;
      v38 = v17;
      v39 = [v38 bottomAnchor];
      v40 = [v30 bottomAnchor];
      v41 = [v39 constraintEqualToAnchor:v40 constant:10.0];

      *(inited + 32) = v41;
      v42 = [v38 centerXAnchor];
      v43 = [v30 centerXAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(inited + 40) = v44;
      v45 = [v38 leadingAnchor];
      v46 = [v2 tableView];
      v47 = [v46 leadingAnchor];

      v48 = [v45 constraintEqualToAnchor:v47 constant:40.0];
      *(inited + 48) = v48;
      v49 = [v38 trailingAnchor];

      v50 = [v2 tableView];
      v51 = [v50 trailingAnchor];

      v52 = [v49 constraintEqualToAnchor:v51 constant:-40.0];
      *(inited + 56) = v52;
      sub_1000952D4(inited);
    }

    v53 = objc_opt_self();
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v53 activateConstraints:isa];

    v55 = [v2 view];
    if (v55)
    {
      v56 = v55;

      [v56 bringSubviewToFront:v17];

      return;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_100085C1C()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  if (SFDeviceClassCodeGet() == 1)
  {
    v4 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
    swift_beginAccess();
    sub_10000F25C(v0 + v4, v3, &qword_100103420, &unk_1000BCE90);
    v5 = type metadata accessor for HomePodSetupViewModel(0);
    (*(*(v5 - 8) + 48))(v3, 1, v5);
    sub_10000EBA4(v3, &qword_100103420, &unk_1000BCE90);
  }

  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v8;
}

id sub_100085EBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupPersonalRequestsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupPersonalRequestsViewController(uint64_t a1)
{
  result = qword_1001041A0;
  if (!qword_1001041A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100085FC4(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100086074(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000860C8(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v2 + v9, v8, &qword_100103420, &unk_1000BCE90);
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = 0;
  v13 = 0;
  if (!v11(v8, 1, v10))
  {
    v14 = &v8[*(v10 + 180)];
    v12 = *v14;
    v13 = *(v14 + 1);
  }

  v34 = v12;
  sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
  v15 = [objc_opt_self() sharedInstance];
  sub_10000F25C(v2 + v9, v6, &qword_100103420, &unk_1000BCE90);
  if (v11(v6, 1, v10))
  {
    sub_10000EBA4(v6, &qword_100103420, &unk_1000BCE90);
    v16 = v35;
  }

  else
  {
    v17 = v6[*(v10 + 176)];
    sub_10000EBA4(v6, &qword_100103420, &unk_1000BCE90);
    v16 = v35;
    if (v17 == 1)
    {
      v18 = 0x49535F5453554A5FLL;
      v19 = 0xEA00000000004952;
      goto LABEL_8;
    }
  }

  v18 = 0x5249535F5945485FLL;
  v19 = 0xE900000000000049;
LABEL_8:
  v39 = v18;
  v40 = v19;
  v37 = v16;
  v38 = v36;

  v37 = String.init<A>(_:)();
  v38 = v20;
  String.append<A>(contentsOf:)();
  if (!v15)
  {

    goto LABEL_24;
  }

  v21 = v15;
  v22 = String._bridgeToObjectiveC()();

  if (v13)
  {

    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v21 localizedUIUtteranceForKey:v22 languageCode:v23];

  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
LABEL_18:
    v29 = v21;
    v30 = String._bridgeToObjectiveC()();
    if (v13)
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    v32 = [v29 localizedUIUtteranceForKey:v30 languageCode:v31];

    if (v32)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v25;
    }

LABEL_24:

    return 0;
  }

  return v25;
}

uint64_t sub_1000864EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for PreferenceError();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[23] = v8;
  v5[24] = type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v5[26] = v9;
  *v9 = v5;
  v9[1] = sub_10008667C;

  return Session.activeLocationSharingDevice(cached:)(v8, 1);
}

uint64_t sub_10008667C()
{
  v2 = *v1;
  v2[27] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v4;
  v2[29] = v3;
  if (v0)
  {
    v5 = sub_100086DC8;
  }

  else
  {
    v5 = sub_1000867DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000867DC()
{

  if (Device.isThisDevice.getter())
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100012AAC(v1, qword_100104150);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "PersonalRequests me device is this device\n", v4, 2u);
    }

    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[21];

    sub_1000871C8();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100012AAC(v8, qword_100104150);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "PersonalRequests ask user to switch me device", v11, 2u);
    }

    v12 = v0[23];
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[15];

    sub_1000878D0(v12, v15);
    (*(v14 + 8))(v12, v13);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100086A30()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_100087134;
  }

  else
  {
    v5 = sub_100086B6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100086B6C()
{

  if (Device.isThisDevice.getter())
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100012AAC(v1, qword_100104150);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "PersonalRequests me device is this device\n", v4, 2u);
    }

    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];

    sub_1000871C8();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100012AAC(v8, qword_100104150);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "PersonalRequests ask user to switch me device", v11, 2u);
    }

    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[20];
    v15 = v0[15];

    sub_1000878D0(v12, v15);
    (*(v13 + 8))(v12, v14);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100086DC8()
{
  *(v0 + 112) = *(v0 + 216);
  swift_errorRetain();
  sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 144) + 88))(*(v0 + 152), *(v0 + 136)) == enum case for PreferenceError.missingMeDevice(_:))
    {

      v1 = swift_task_alloc();
      *(v0 + 240) = v1;
      *v1 = v0;
      v1[1] = sub_100086A30;
      v2 = *(v0 + 176);

      return Session.activeLocationSharingDevice(cached:)(v2, 0);
    }

    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
  }

  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104150);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "### PersonalRequests get me device failed: %@\n", v9, 0xCu);
    sub_10000EBA4(v10, &qword_100101E38, &unk_1000BCF80);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    *(v0 + 24) = 0u;
    *(v0 + 104) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 16) = 2;
    sub_100012DA0(v0 + 72, v0 + 24, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070((v0 + 16));
    swift_unknownObjectRelease();

    sub_100012E08(v0 + 16);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100087134()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000871C8()
{
  v1 = v0;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100104150);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PersonalRequests siriCheck\n", v5, 2u);
  }

  v37 = [objc_opt_self() sharedPreferences];
  if ([v37 assistantIsEnabled])
  {
    goto LABEL_8;
  }

  v6 = [objc_opt_self() sharedPreferences];
  if (!v6)
  {
    __break(1u);
    goto LABEL_32;
  }

  v7 = v6;
  v8 = [v6 voiceTriggerEnabled];

  if (v8)
  {
LABEL_8:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "PersonalRequests Siri enabled, enabling PR\n", v11, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = 0;
      memset(v38, 0, sizeof(v38));
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      LOBYTE(aBlock) = 1;
      sub_100012DA0(v38, &v41, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&aBlock);

      swift_unknownObjectRelease();
      sub_100012E08(&aBlock);
    }

    else
    {
    }

    return;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = CUAddSuffixForCurrentDeviceClass();

  if (!v13)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v14 = sub_100006658(v13);

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_1000068E0();

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = sub_100006658(v16);

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = [objc_opt_self() alertControllerWithTitle:v14 message:v17 preferredStyle:1];

  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = sub_100006658(v20);

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = v18;
  *(&v42 + 1) = sub_10008BBFC;
  *&v43 = v22;
  aBlock = _NSConcreteStackBlock;
  *&v41 = 1107296256;
  *(&v41 + 1) = sub_10003DFD0;
  *&v42 = &unk_1000F15C8;
  v23 = _Block_copy(&aBlock);
  v24 = v1;
  v25 = v18;

  v26 = objc_opt_self();
  v27 = [v26 actionWithTitle:v21 style:1 handler:v23];
  _Block_release(v23);

  [v25 addAction:v27];
  v28 = String._bridgeToObjectiveC()();
  v29 = sub_100006658(v28);

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = sub_100006658(v29);

  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  v31 = swift_allocObject();
  v31[2] = v37;
  v31[3] = v24;
  v31[4] = v25;
  *(&v42 + 1) = sub_10008BC68;
  *&v43 = v31;
  aBlock = _NSConcreteStackBlock;
  *&v41 = 1107296256;
  *(&v41 + 1) = sub_10003DFD0;
  *&v42 = &unk_1000F1618;
  v32 = _Block_copy(&aBlock);
  v33 = v24;
  v34 = v25;
  v35 = v37;

  v36 = [v26 actionWithTitle:v30 style:0 handler:v32];
  _Block_release(v32);

  [v34 addAction:v36];
  [v34 setPreferredAction:v36];
  [v33 presentViewController:v34 animated:1 completion:0];
}

void sub_1000878D0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v2 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  __chkstk_darwin(v2 - 8);
  v50 = &v50 - v3;
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  Device.deviceName.getter();

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_1000068E0();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BB8E0;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 name];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 56) = &type metadata for String;
  v17 = sub_100039F8C();
  *(inited + 64) = v17;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v18 = Device.deviceName.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  aBlock = 0;
  v54 = 0xE000000000000000;

  sub_100038F50(inited, &aBlock, v8, v10, 1076183077, 0xE400000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() alertControllerWithTitle:v5 message:v20 preferredStyle:1];

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = swift_allocObject();
  v25 = v51;
  *(v24 + 16) = v51;
  *(v24 + 24) = v21;
  v57 = sub_10008BC74;
  v58 = v24;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10003DFD0;
  v56 = &unk_1000F1668;
  v26 = _Block_copy(&aBlock);
  v27 = v25;
  v28 = v21;

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v23 style:1 handler:v26];
  _Block_release(v26);

  v51 = v30;
  [v28 addAction:v30];
  v31 = String._bridgeToObjectiveC()();
  v32 = CUAddSuffixForCurrentDeviceClass();

  if (v32)
  {

    v33 = sub_100006658(v32);

    if (!v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = String._bridgeToObjectiveC()();
    }

    v34 = swift_allocObject();
    v34[2] = v52;
    v34[3] = v28;
    v34[4] = v27;
    v57 = sub_10008BCE0;
    v58 = v34;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10003DFD0;
    v56 = &unk_1000F16B8;
    v35 = _Block_copy(&aBlock);
    v36 = v27;
    v37 = v28;

    v38 = [v29 actionWithTitle:v33 style:0 handler:v35];
    _Block_release(v35);

    [v37 addAction:v38];
    [v37 setPreferredAction:v38];
    if (qword_100101608 != -1)
    {
      swift_once();
    }

    if (*(*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults) + 16) || *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault) == 1)
    {
      if (qword_1001016E0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100012AAC(v39, qword_100104150);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Me Switch alert: Use button\n", v42, 2u);
      }

      v43 = type metadata accessor for TaskPriority();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      type metadata accessor for MainActor();
      v45 = v36;
      v46 = v37;
      v47 = v52;

      v48 = static MainActor.shared.getter();
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = &protocol witness table for MainActor;
      v49[4] = v47;
      v49[5] = v46;
      v49[6] = v45;
      sub_100089D34(0, 0, v44, &unk_1000BE9D8, v49);
    }

    else
    {
      [v36 presentViewController:v37 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000880A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000F25C(a3, v22 - v9, &qword_1001041B0, &qword_1000BE9B8);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000EBA4(v10, &qword_1001041B0, &qword_1000BE9B8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_10008834C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104150);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Siri Enabled, enabling PR\n", v9, 2u);
  }

  [a2 setAssistantIsEnabled:1];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    memset(v14, 0, sizeof(v14));
    v13[0] = 1;
    sub_100012DA0(v11, v14, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v13);
    swift_unknownObjectRelease();
    sub_100012E08(v13);
  }

  return [a4 dismissViewControllerAnimated:1 completion:0];
}

id sub_1000884D8(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104150);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    memset(v14, 0, sizeof(v14));
    v13[0] = 2;
    sub_100012DA0(v11, v14, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v13);
    swift_unknownObjectRelease();
    sub_100012E08(v13);
  }

  return [a3 dismissViewControllerAnimated:1 completion:0];
}

double sub_10008864C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104150);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Me Switch alert: Use button\n", v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = a3;
  v16 = a4;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a2;
  v18[5] = v15;
  v18[6] = v16;
  sub_100089D34(0, 0, v9, &unk_1000BEA08, v18);

  return result;
}

uint64_t sub_100088850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for DeviceWithCompanion();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[20] = v10;
  sub_10000E6C4(&qword_1001041B8, &qword_1000BE9F8);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v6[24] = v11;
  *v11 = v6;
  v11[1] = sub_100088A68;

  return Session.thisDeviceWithCompanion()(v10);
}

uint64_t sub_100088A68()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v5 = sub_100089620;
  }

  else
  {
    *(v2 + 208) = v3;
    *(v2 + 216) = v4;
    v5 = sub_100088BCC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100088BCC()
{
  v42 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v2, v3);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    v7 = v0[21];

    sub_10000EBA4(v7, &qword_1001041B8, &qword_1000BE9F8);
    v8 = type metadata accessor for PreferenceError();
    sub_10008BEA8(&unk_1001041C0, &type metadata accessor for PreferenceError, &protocol conformance descriptor for PreferenceError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PreferenceError.missingMeDevice(_:), v8);
    swift_willThrow();
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100104150);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "### Me Switch failed: %@", v13, 0xCu);
      sub_10000EBA4(v14, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }

    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[14];
    v40 = v0[15];
    v29 = v0[12];
    v30 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v0[6] = sub_10008C008;
    v0[7] = v33;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100091194;
    v0[5] = &unk_1000F17F8;
    v34 = _Block_copy(v0 + 2);
    v35 = v32;
    v36 = v31;
    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v26, v40);

    v37 = v0[1];

    return v37();
  }

  else
  {
    v16 = v0[21];
    v17 = Device.identifier.getter();
    v19 = v18;
    v0[28] = v18;
    (*(v6 + 8))(v16, v5);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v0[29] = sub_100012AAC(v20, qword_100104150);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000B08A0(v17, v19, &v41);
      _os_log_impl(&_mh_execute_header, v21, v22, "Me Switch: Setting new device to this device: %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    v25 = swift_task_alloc();
    v0[30] = v25;
    *v25 = v0;
    v25[1] = sub_100089248;

    return Session.setActiveLocationSharingDevice(_:)(v17, v19);
  }
}

uint64_t sub_100089248()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_1000899A4;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100089364;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100089364()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Me Switch succeeded", v3, 2u);
  }

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v18 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v0[6] = sub_10008C008;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F17F8;
  v12 = _Block_copy(v0 + 2);
  v13 = v10;
  v14 = v9;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v4, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100089620()
{

  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104150);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Me Switch failed: %@", v4, 0xCu);
    sub_10000EBA4(v5, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v21 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v0[6] = sub_10008C008;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F17F8;
  v15 = _Block_copy(v0 + 2);
  v16 = v13;
  v17 = v12;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v11 + 8))(v9, v10);
  (*(v8 + 8))(v7, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000899A4()
{

  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104150);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Me Switch failed: %@", v4, 0xCu);
    sub_10000EBA4(v5, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v21 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v0[6] = sub_10008C008;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F17F8;
  v15 = _Block_copy(v0 + 2);
  v16 = v13;
  v17 = v12;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v11 + 8))(v9, v10);
  (*(v8 + 8))(v7, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100089D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000E6C4(&qword_1001041B0, &qword_1000BE9B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000F25C(a3, v25 - v10, &qword_1001041B0, &qword_1000BE9B8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EBA4(v11, &qword_1001041B0, &qword_1000BE9B8);
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

      sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);

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

  sub_10000EBA4(a3, &qword_1001041B0, &qword_1000BE9B8);
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

uint64_t sub_10008A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for DeviceWithCompanion();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[20] = v10;
  sub_10000E6C4(&qword_1001041B8, &qword_1000BE9F8);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v6[24] = v11;
  *v11 = v6;
  v11[1] = sub_10008A24C;

  return Session.thisDeviceWithCompanion()(v10);
}

uint64_t sub_10008A24C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v5 = sub_10008AE04;
  }

  else
  {
    *(v2 + 208) = v3;
    *(v2 + 216) = v4;
    v5 = sub_10008A3B0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10008A3B0()
{
  v42 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v2, v3);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    v7 = v0[21];

    sub_10000EBA4(v7, &qword_1001041B8, &qword_1000BE9F8);
    v8 = type metadata accessor for PreferenceError();
    sub_10008BEA8(&unk_1001041C0, &type metadata accessor for PreferenceError, &protocol conformance descriptor for PreferenceError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PreferenceError.missingMeDevice(_:), v8);
    swift_willThrow();
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100104150);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "### Me Switch failed: %@", v13, 0xCu);
      sub_10000EBA4(v14, &qword_100101E38, &unk_1000BCF80);
    }

    else
    {
    }

    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[14];
    v40 = v0[15];
    v29 = v0[12];
    v30 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v0[6] = sub_10008C064;
    v0[7] = v33;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100091194;
    v0[5] = &unk_1000F1780;
    v34 = _Block_copy(v0 + 2);
    v35 = v32;
    v36 = v31;
    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
    sub_100014588();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v26, v40);

    v37 = v0[1];

    return v37();
  }

  else
  {
    v16 = v0[21];
    v17 = Device.identifier.getter();
    v19 = v18;
    v0[28] = v18;
    (*(v6 + 8))(v16, v5);
    if (qword_1001016E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v0[29] = sub_100012AAC(v20, qword_100104150);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000B08A0(v17, v19, &v41);
      _os_log_impl(&_mh_execute_header, v21, v22, "Me Switch: Setting new device to this device: %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    v25 = swift_task_alloc();
    v0[30] = v25;
    *v25 = v0;
    v25[1] = sub_10008AA2C;

    return Session.setActiveLocationSharingDevice(_:)(v17, v19);
  }
}

uint64_t sub_10008AA2C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_10008B188;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_10008AB48;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10008AB48()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Me Switch succeeded", v3, 2u);
  }

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v18 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v0[6] = sub_10008C064;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F1780;
  v12 = _Block_copy(v0 + 2);
  v13 = v10;
  v14 = v9;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v4, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10008AE04()
{

  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104150);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Me Switch failed: %@", v4, 0xCu);
    sub_10000EBA4(v5, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v21 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v0[6] = sub_10008C064;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F1780;
  v15 = _Block_copy(v0 + 2);
  v16 = v13;
  v17 = v12;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v11 + 8))(v9, v10);
  (*(v8 + 8))(v7, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10008B188()
{

  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104150);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Me Switch failed: %@", v4, 0xCu);
    sub_10000EBA4(v5, &qword_100101E38, &unk_1000BCF80);
  }

  else
  {
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v21 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v0[6] = sub_10008C064;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100091194;
  v0[5] = &unk_1000F1780;
  v15 = _Block_copy(v0 + 2);
  v16 = v13;
  v17 = v12;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008BEA8(&qword_1001042F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v11 + 8))(v9, v10);
  (*(v8 + 8))(v7, v21);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10008B518(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008B610;

  return v6(a1);
}

uint64_t sub_10008B610()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10008B708(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_1001016E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104150);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 isViewLoaded];

    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupPersonalRequestsViewController: presenter:didUpdate viewModel, isViewloaded = %{BOOL}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  sub_100012AE4(a1, v5);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v5, v7 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v7 isViewLoaded])
  {
    sub_1000854D4(a1);
  }
}

uint64_t sub_10008B928()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008B980()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B9C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BA08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10008BAC8;

  return sub_1000864EC(a1, v4, v5, v7, v6);
}

uint64_t sub_10008BAC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008BBBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BC20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008BC98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008BCF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10008C068;

  return sub_10008A034(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008BDB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BDF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10008C068;

  return sub_10008B518(a1, v4);
}

uint64_t sub_10008BEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008BEF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008BF40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10008BAC8;

  return sub_100088850(a1, v4, v5, v6, v7, v8);
}

id *sub_10008C090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = v2[2];
      v7 = v2[3];
      v9 = v5;
      if (v8 >= v7 >> 1)
      {
        sub_10008ECA8((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = &type metadata for HomeOption;
      v13 = &off_1000F1F68;
      *&v11 = v5;
      BYTE8(v11) = v6;
      v2[2] = (v8 + 1);
      sub_10000EC04(&v11, &v2[5 * v8 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id *sub_10008C190(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 24);
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v9 = v2[2];
      v10 = v2[3];

      if (v9 >= v10 >> 1)
      {
        sub_10008ECA8((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for RoomOption;
      v15 = &off_1000F1C90;
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v7;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v2[2] = (v9 + 1);
      sub_10000EC04(&v13, &v2[5 * v9 + 4]);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id *sub_10008C2B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v15 = v2;
      v6 = v2[2];
      v7 = v2[3];
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        v9 = v7 > 1;
        v10 = v8;
        sub_10008ECA8(v9, v6 + 1, 1);
        v8 = v10;
        v2 = v15;
      }

      v13 = &type metadata for HomePodOption;
      v14 = &off_1000F0CE8;
      *&v12 = v8;
      v2[2] = (v6 + 1);
      sub_10000EC04(&v12, &v2[5 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id *sub_10008C3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_10008ECA8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = v2[2];
      v10 = v2[3];

      if (v9 >= v10 >> 1)
      {
        sub_10008ECA8((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for LanguageOption;
      v15 = &off_1000F0778;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v8;
      v11[5] = v7;
      v2[2] = (v9 + 1);
      sub_10000EC04(&v13, &v2[5 * v9 + 4]);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id *sub_10008C4E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10008ED28(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10008ED28((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v7 + 1);
        sub_10000E9F4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10008ED28((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v11 + 1);
        sub_10000E9F4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id *sub_10008C6B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10008ED48(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
      sub_10000E6C4(&unk_100104940, &qword_1000BEAC0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10008ED48((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v5 + 1);
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10008C7E0()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100012B48(v0, HomePodViewfinderCircleAnimationDelay);
  *sub_100012AAC(v0, HomePodViewfinderCircleAnimationDelay) = 200;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t HomePodViewfinderCircleAnimationDelay.unsafeMutableAddressor()
{
  if (qword_1001016E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return sub_100012AAC(v0, HomePodViewfinderCircleAnimationDelay);
}

void sub_10008C8D4()
{
  [*(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer) removeAllAnimations];
  v4 = sub_10008D7B8(0.6, 0.0);
  v1 = sub_10008D7B8(0.6, 13.0);
  [v4 appendPath:v1];

  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask);
  v3 = [v4 CGPath];
  [v2 setPath:v3];

  sub_10008CDF0(*(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialColors), 0, 1);
  sub_10008D8E4(0, v4, 0.0);
}

uint64_t sub_10008C9E0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];

  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setByValue:v4];

  v5 = v2;
  LODWORD(v6) = 2139095040;
  [v5 setRepeatCount:v6];
  [v5 setDuration:2.0];

  v7 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer);
  v8 = String._bridgeToObjectiveC()();
  [v7 addAnimation:v5 forKey:v8];

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD0A0;
  v10 = objc_opt_self();
  v11 = [v10 systemBlueColor];
  v12 = [v11 colorWithAlphaComponent:1.0];

  *(inited + 32) = v12;
  v13 = [v10 systemBlueColor];
  v14 = [v13 colorWithAlphaComponent:0.0];

  *(inited + 40) = v14;
  sub_10008CDF0(inited, 0x3FC999999999999ALL, 0);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_10008CC14()
{
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD0A0;
  v2 = objc_opt_self();
  v3 = [v2 systemGreenColor];
  v4 = [v3 colorWithAlphaComponent:1.0];

  *(inited + 32) = v4;
  v5 = [v2 systemGreenColor];
  v6 = [v5 colorWithAlphaComponent:1.0];

  *(inited + 40) = v6;
  sub_10008CDF0(inited, 0x3FC999999999999ALL, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_10008D7B8(0.6, 0.0);
  v8 = sub_10008D7B8(0.6, 13.0);
  [v7 appendPath:v8];

  v9 = sub_10008D7B8(0.6, 0.0);
  v10 = sub_10008D7B8(0.6, 19.0);
  [v9 appendPath:v10];

  v11 = v7;
  sub_10008D8E4(v7, v9, 0.5);

  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset) = 1;
}

void sub_10008CDF0(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v22 = v3;
    v9 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 CGColor];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v9);
    v4 = v22;
  }

  if (a3)
  {
    v13 = *&v4[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer];
    sub_10008C4E4(_swiftEmptyArrayStorage);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setColors:isa];
  }

  else
  {
    v14 = *&a2;
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() animationWithKeyPath:v15];

    v17 = *&v4[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer];
    v18 = [v17 colors];
    [v16 setFromValue:v18];

    type metadata accessor for CGColor(0);
    v19 = Array._bridgeToObjectiveC()().super.isa;
    [v16 setToValue:v19];

    v20 = v16;
    [v20 setDuration:v14];
    [v20 setRemovedOnCompletion:0];
    [v20 setDelegate:v4];

    sub_10008C4E4(_swiftEmptyArrayStorage);

    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v17 setColors:v21];

    isa = [v20 keyPath];
    [v17 addAnimation:v20 forKey:?];
  }
}

char *sub_10008D18C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer;
  *&v0[v1] = [objc_allocWithZone(CAShapeLayer) init];
  v2 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer;
  *&v0[v2] = [objc_allocWithZone(CAGradientLayer) init];
  v3 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask;
  *&v0[v3] = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer;
  *&v0[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = &v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_rotKey];
  *v5 = 0xD000000000000012;
  v5[1] = 0x80000001000C72D0;
  v6 = &v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey];
  *v6 = 0x73726F6C6F63;
  v6[1] = 0xE600000000000000;
  v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset] = 0;
  v7 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialColors;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000BD0A0;
  v9 = objc_opt_self();
  v10 = [v9 systemBlueColor];
  v11 = [v10 colorWithAlphaComponent:1.0];

  *(v8 + 32) = v11;
  v12 = [v9 systemBlueColor];
  v13 = [v12 colorWithAlphaComponent:1.0];

  *&v0[v7] = v8;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerInitialHoleWidthRatio] = 0x3FDCCCCCCCCCCCCDLL;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerTargetHoleWidthRatio] = 0x3FE3333333333333;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_strokeWidth] = 0x402A000000000000;
  *(v8 + 40) = v13;
  *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_successStrokeWidth] = 0x4033000000000000;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for SVSLEDPasscodeActivityIndicatorView();
  v14 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10008D6B4();
  v15 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer] setType:kCAGradientLayerConic];
  [*&v14[v15] setStartPoint:{0.5, 0.5}];
  v16 = *&v14[v15];
  CGAffineTransformMakeRotation(&v26, 3.14159265);
  [v16 setAffineTransform:&v26];
  LODWORD(v17) = 1060320051;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask] setOpacity:v17];
  v18 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer;
  LODWORD(v19) = 1062501089;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer] setOpacity:v19];
  v20 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer;
  LODWORD(v21) = 1.0;
  [*&v14[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer] setOpacity:v21];
  v22 = [v14 layer];
  [v22 insertSublayer:*&v14[v15] atIndex:0];

  v23 = [v14 layer];
  [v23 insertSublayer:*&v14[v20] atIndex:0];

  v24 = [v14 layer];
  [v24 insertSublayer:*&v14[v18] atIndex:0];

  sub_10008C8D4();
  return v14;
}

void sub_10008D59C()
{
  v1 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask];
  [v0 bounds];
  [v4 setFrame:?];
  sub_10008DAD8();

  sub_10008D6B4();
}

void sub_10008D6B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer);
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  v4 = [v3 CGColor];

  [v1 setFillColor:v4];
  v5 = *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer);
  v6 = [v2 systemBackgroundColor];
  v7 = [v6 CGColor];

  [v5 setFillColor:v7];
}

id sub_10008D7B8(double a1, double a2)
{
  [v2 bounds];
  v5 = CGRectGetWidth(v18) * a1 + a2;
  [v2 center];
  v7 = v6;
  v9 = v8;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v5;
  v19.size.height = v5;
  v10 = v7 - CGRectGetWidth(v19) * 0.5;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v5;
  v20.size.height = v5;
  v11 = v9 - CGRectGetHeight(v20) * 0.5;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v5;
  v21.size.height = v5;
  Width = CGRectGetWidth(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v5;
  v22.size.height = v5;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = Width;
  v23.size.height = Height;
  v14 = CGRectGetWidth(v23) * 0.5;
  v15 = [objc_opt_self() bezierPathWithRoundedRect:v10 cornerRadius:{v11, Width, Height, v14}];

  return v15;
}

void sub_10008D8E4(void *a1, void *a2, double a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  if (a1)
  {
    v14 = [a1 CGPath];
    type metadata accessor for CGPath(0);
    a1 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  [v8 setFromValue:a1];
  swift_unknownObjectRelease();
  v9 = [a2 CGPath];
  [v8 setToValue:v9];

  v10 = v8;
  [v10 setDuration:a3];
  v11 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v10 setTimingFunction:v11];

  [v10 setFillMode:kCAFillModeBoth];
  [v10 setRemovedOnCompletion:0];

  v12 = *(v3 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask);
  v13 = [v10 keyPath];
  [v12 addAnimation:v10 forKey:v13];
}

void sub_10008DAD8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v61 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTime();
  v57 = *(v59 - 8);
  v6 = __chkstk_darwin(v59);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v51 - v9;
  [v0 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v18 bezierPathWithRoundedRect:v11 cornerRadius:{v13, v15, v17, 0.0}];
  v20 = sub_10008D7B8(0.6, 0.0);
  [v19 appendPath:v20];

  v21 = sub_10008D7B8(0.45, 0.0);
  v22 = sub_10008D7B8(0.45, 13.0);
  [v21 appendPath:v22];

  v23 = sub_10008D7B8(0.6, 0.0);
  v24 = sub_10008D7B8(0.6, 13.0);
  v55 = v23;
  [v23 appendPath:v24];

  v25 = *&v0[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer];
  v58 = v19;
  v26 = [v19 CGPath];
  [v25 setPath:v26];

  v27 = *&v1[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask];
  v56 = v21;
  v28 = [v21 CGPath];
  [v27 setPath:v28];

  [*&v1[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer] setMask:v27];
  v29 = *&v1[OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer];
  [v1 bounds];
  v30 = [v18 bezierPathWithRoundedRect:? cornerRadius:?];
  v31 = [v30 CGPath];

  [v29 setPath:v31];
  [v25 setFillRule:kCAFillRuleEvenOdd];
  [v27 setFillRule:kCAFillRuleEvenOdd];
  v32 = String._bridgeToObjectiveC()();
  v33 = [objc_opt_self() animationWithKeyPath:v32];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v33 setFromValue:isa];

  v35 = Int._bridgeToObjectiveC()().super.super.isa;
  [v33 setToValue:v35];

  v36 = v33;
  [v36 setDuration:0.6];
  v37 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v36 setTimingFunction:v37];

  [v36 setFillMode:kCAFillModeBoth];
  [v36 setRemovedOnCompletion:0];

  sub_1000144DC();
  v53 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  if (qword_1001016E8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for DispatchTimeInterval();
  sub_100012AAC(v38, HomePodViewfinderCircleAnimationDelay);
  v39 = v54;
  + infix(_:_:)();
  v57 = *(v57 + 8);
  v40 = v8;
  v41 = v59;
  (v57)(v40, v59);
  v42 = swift_allocObject();
  *(v42 + 16) = v1;
  *(v42 + 24) = v36;
  aBlock[4] = sub_10008EC88;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F1848;
  v43 = _Block_copy(aBlock);
  v52 = v36;
  v1;

  v44 = v60;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  v45 = v61;
  v46 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v53;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v43);

  (*(v64 + 8))(v45, v46);
  (*(v62 + 8))(v44, v63);
  (v57)(v39, v41);
  v48 = v56;
  v49 = v56;
  v50 = v55;
  sub_10008D8E4(v48, v55, 0.5);
}

void sub_10008E274(uint64_t a1, id a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer);
  v4 = [a2 keyPath];
  [v3 addAnimation:a2 forKey:v4];
}

Swift::Void __swiftcall SVSLPCActivityIndicatorViewController.viewDidLoad()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:1];

  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v0 view];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 addSubview:v3];

  v6 = [v3 leftAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 leftAnchor];

  v10 = [v6 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v3 rightAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 rightAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v3 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v3 bottomAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  [v3 setNeedsLayout];
}

id SVSLPCActivityIndicatorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SVSLPCActivityIndicatorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView()) init];
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id SVSLPCActivityIndicatorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id SVSLPCActivityIndicatorViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView()) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10008EC00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10008EC48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008EC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id *sub_10008ECA8(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008ED68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10008ECC8(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008EEB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10008ECE8(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008EFBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10008ED08(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008F0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10008ED28(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008F1D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10008ED48(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008F3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10008ED68(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&unk_100104310, &qword_1000BEA98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000E6C4(&qword_100102058, &unk_1000BD160);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10008EEB0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&unk_100104320, &qword_1000BDA08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10008EFBC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_1001032A0, &qword_1000BEAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10008F0C8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&unk_100104330, &qword_1000BEAA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10008F1D4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&unk_1001036E0, &unk_1000BD410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10008F2E4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_1001032B8, &unk_1000BEAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10008F3F0(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&unk_100104340, &qword_1000BEAC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000E6C4(&unk_100104940, &qword_1000BEAC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10008F524(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v15 = a1;
  v5 = [v4 keyPath];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v7 == *(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey) && v9 == *(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey + 8))
    {

LABEL_13:
      v12 = *(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer);
      if ([v4 toValue])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10000E9F4(&v17, &v18);
        sub_10000E6C4(&qword_100104308, &qword_1000BEA90);
        swift_dynamicCast();
        sub_10008C4E4(v16);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v12 setColors:isa];

        v14 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset;
        if (*(v1 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset) == 1)
        {
          [v12 removeAllAnimations];
        }

        *(v1 + v14) = 0;
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {

      goto LABEL_13;
    }
  }
}

void sub_10008F754()
{
  v1 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderTintLayer;
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  v2 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_viewFinderBorderLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_borderLayerMask;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialWhiteTintLayer;
  *(v0 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = (v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_rotKey);
  *v5 = 0xD000000000000012;
  v5[1] = 0x80000001000C72D0;
  v6 = (v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_colorsKey);
  *v6 = 0x73726F6C6F63;
  v6[1] = 0xE600000000000000;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_needsReset) = 0;
  v7 = OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_initialColors;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000BD0A0;
  v9 = objc_opt_self();
  v10 = [v9 systemBlueColor];
  v11 = [v10 colorWithAlphaComponent:1.0];

  *(v8 + 32) = v11;
  v12 = [v9 systemBlueColor];
  v13 = [v12 colorWithAlphaComponent:1.0];

  *(v0 + v7) = v8;
  *(v8 + 40) = v13;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerInitialHoleWidthRatio) = 0x3FDCCCCCCCCCCCCDLL;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_innerTargetHoleWidthRatio) = 0x3FE3333333333333;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_strokeWidth) = 0x402A000000000000;
  *(v0 + OBJC_IVAR____TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView_successStrokeWidth) = 0x4033000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10008F99C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10008F9D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10008FA14(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints] = 0;

  if (a1)
  {
    if (a1 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v5 removeFromSuperview];

        ++v4;
        if (v7 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

LABEL_15:
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews];
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_33;
    }

    for (j = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!j)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v1 addSubview:v12];

        ++v10;
        if (v13 == j)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_27:

    [v1 setNeedsUpdateConstraints];
  }
}

char *sub_10008FC2C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel] = 0;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for HomePodSetupProgressBarView();
  v4 = objc_msgSendSuper2(&v28, "initWithCardStyle:", a1);
  v5 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
  v6 = *&v4[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide];
  v7 = v4;
  [v7 addLayoutGuide:v6];
  v8 = [v7 mainContentGuide];
  v27 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD420;
  v10 = [*&v4[v5] topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] leadingAnchor];
  v14 = [v8 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v4[v5] trailingAnchor];
  v17 = [v8 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v4[v5] centerXAnchor];
  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [*&v4[v5] bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  return v7;
}

void sub_10008FFE8(uint64_t a1)
{
  v2 = v1;
  v97.receiver = v1;
  v97.super_class = type metadata accessor for HomePodSetupProgressBarView();
  objc_msgSendSuper2(&v97, "updateConstraints");
  v3 = *&v1[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews];
  v4 = &selRef_initWithSystemImageNamed_;
  v96 = v1;
  if (v3)
  {
    if (!(v3 >> 62))
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_39;
      }

LABEL_4:
      if (*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints])
      {
        goto LABEL_39;
      }

      v93 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints;
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide];
        v7 = PRXIconToIconMargin;

        v8 = 0;
        v9 = 0;
        v94 = v5;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v10 = *(v3 + v8 + 4);
          }

          v11 = v10;
          v12 = [v11 centerYAnchor];
          if (!v9 || (v13 = [v9 centerYAnchor]) == 0)
          {
            v13 = [v6 centerYAnchor];
          }

          v14 = [v12 constraintEqualToAnchor:{v13, v93}];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v15 = [v11 image];

          if (v15)
          {
            [v15 size];
            v17 = v16;
            v19 = v18;
          }

          else
          {
            v17 = 1.0;
            v19 = 1.0;
          }

          if (v17 <= 0.0)
          {
            v20 = 1.0;
          }

          else
          {
            v20 = v19 / v17;
          }

          v21 = [v11 heightAnchor];
          v22 = [v11 widthAnchor];
          v23 = [v21 constraintEqualToAnchor:v22 multiplier:v20];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v24 = [v11 topAnchor];
          v25 = [v6 topAnchor];
          v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v27 = [v11 bottomAnchor];
          v28 = [v6 bottomAnchor];
          v29 = [v27 constraintLessThanOrEqualToAnchor:v28];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v9)
          {
            v30 = [v11 leadingAnchor];
            v31 = [v9 trailingAnchor];
            v32 = [v30 constraintEqualToAnchor:v31 constant:v7];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v33 = [v9 widthAnchor];
            v34 = [v11 widthAnchor];
            v35 = [v33 constraintEqualToAnchor:v34];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
            v36 = [v11 leadingAnchor];
            v37 = [v6 leadingAnchor];
            v38 = [v36 constraintEqualToAnchor:v37];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          ++v8;
          v9 = v11;
        }

        while (v94 != v8);

        v3 = v11;
        v39 = [v3 trailingAnchor];
        v40 = [v6 trailingAnchor];
        v41 = [v39 constraintEqualToAnchor:v40];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_38;
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_38:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v42 = objc_opt_self();
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v4 = &selRef_initWithSystemImageNamed_;
      [v42 activateConstraints:isa];

      v2 = v96;
      *&v96[v93] = _swiftEmptyArrayStorage;

      goto LABEL_39;
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }
  }

LABEL_39:
  v44 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView];
  if (v44)
  {
    v45 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints;
    if (*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints])
    {
      v46 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1000BD430;
      v48 = v44;
      v49 = [v48 leadingAnchor];
      v50 = [v2 mainContentGuide];
      v51 = [v50 leadingAnchor];

      v52 = [v49 constraintEqualToAnchor:v51 constant:20.0];
      *(v47 + 32) = v52;
      v53 = [v48 trailingAnchor];
      v54 = [v96 mainContentGuide];
      v55 = [v54 trailingAnchor];

      v56 = [v53 constraintEqualToAnchor:v55 constant:-20.0];
      v4 = &selRef_initWithSystemImageNamed_;
      *(v47 + 40) = v56;
      v57 = [v48 heightAnchor];
      v58 = [v57 constraintEqualToConstant:6.0];

      *(v47 + 48) = v58;
      v59 = objc_opt_self();
      sub_1000163D8();
      v60 = Array._bridgeToObjectiveC()().super.isa;
      [v59 activateConstraints:v60];

      v2 = v96;
      *&v96[v45] = v47;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v61 = *&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel];
  if (v61)
  {
    v62 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints;
    if (!*&v2[OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints])
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1000BD0A0;
      v64 = v61;
      v65 = [v64 leadingAnchor];
      v66 = [v2 mainContentGuide];
      v67 = [v66 leadingAnchor];

      v68 = [v65 constraintEqualToAnchor:v67];
      *(v63 + 32) = v68;
      v69 = [v64 trailingAnchor];
      v70 = [v96 mainContentGuide];
      v71 = [v70 trailingAnchor];

      v72 = [v69 constraintEqualToAnchor:v71];
      v4 = &selRef_initWithSystemImageNamed_;
      *(v63 + 40) = v72;
      v73 = objc_opt_self();
      sub_1000163D8();
      v74 = Array._bridgeToObjectiveC()().super.isa;
      [v73 activateConstraints:v74];

      *&v96[v62] = v63;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = _swiftEmptyArrayStorage;
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v75 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_53;
    }

LABEL_69:

    v46 = 0;
    goto LABEL_70;
  }

  v75 = _CocoaArrayWrapper.endIndex.getter();
  if (!v75)
  {
    goto LABEL_69;
  }

LABEL_53:
  if (v75 < 1)
  {
    __break(1u);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v95 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
    v78 = PRXMainContentMargin;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v82 = _swiftEmptyArrayStorage[v77 + 4];
      }

      v83 = v82;
      if (v76)
      {
        v79 = [v82 topAnchor];
        v80 = [v76 bottomAnchor];
        v81 = [v79 constraintEqualToAnchor:v80 constant:v78];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v84 = [v82 topAnchor];
        v85 = [*&v96[v95] bottomAnchor];
        v86 = [v84 constraintEqualToAnchor:v85 constant:v78];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v77;
      v76 = v83;
    }

    while (v75 != v77);

    v46 = v83;
    v87 = [v46 bottomAnchor];
    v88 = [v96 mainContentGuide];
    v89 = [v88 bottomAnchor];

    v90 = [v87 constraintLessThanOrEqualToAnchor:v89];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_67;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_67:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v4 = &selRef_initWithSystemImageNamed_;
LABEL_70:
  v91 = objc_opt_self();
  sub_1000163D8();
  v92 = Array._bridgeToObjectiveC()().super.isa;

  [v91 v4[216]];
}

id sub_100090FD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomePodSetupProgressBarView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000910C8()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100091194(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

Swift::Int sub_1000911E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100091258(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unsigned __int8 *sub_10009129C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

id sub_1000913E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100091590()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView;
  type metadata accessor for PreviewView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_setupSucceeded) = 0;
  v2 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session;
  *(v0 + v2) = [objc_allocWithZone(AVCaptureSession) init];
  v3 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator;
  *(v0 + v3) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v4 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output;
  *(v0 + v4) = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) = 0;
  v5 = (v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000916E8(char a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView;
  type metadata accessor for PreviewView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_setupSucceeded] = 0;
  v4 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session;
  *&v1[v4] = [objc_allocWithZone(AVCaptureSession) init];
  v5 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator;
  *&v1[v5] = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v6 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output;
  *&v1[v6] = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *&v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting] = 0;
  v7 = &v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_deviceModel] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SVSHomePodIDViewController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewDidLoad()()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SVSHomePodIDViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView];
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session];
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setSession:v2];

  sub_100092BD0();
  [*&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator] prepare];
  v4 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setVideoGravity:AVLayerVideoGravityResizeAspectFill];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview:v1];

    v7 = [v1 layer];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [v7 setFrame:{v11, v13, v15, v17}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v44 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v52 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v43 - v16;
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  v20 = type metadata accessor for SVSHomePodIDViewController();
  v64.receiver = v2;
  v64.super_class = v20;
  objc_msgSendSuper2(&v64, "viewWillAppear:", a1);
  [*&v2[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session] startRunning];
  v45 = sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v54 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v12 + 8);
  v21(v17, v11);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  v62 = sub_1000930CC;
  v63 = v22;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100091194;
  v61 = &unk_1000F18E8;
  v23 = _Block_copy(&aBlock);
  v50 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v24 = sub_100014530();
  v25 = sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  v48 = sub_100014588();
  v49 = v25;
  v51 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v54;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  v27 = *(v57 + 8);
  v53 = v6;
  v28 = v6;
  v29 = v44;
  v54 = v4;
  v30 = v21;
  v57 += 8;
  v47 = v27;
  v27(v28, v4);
  v31 = *(v56 + 8);
  v56 += 8;
  v46 = v31;
  v31(v10, v55);
  v21(v19, v29);
  v32 = static OS_dispatch_queue.main.getter();
  v33 = v52;
  v34 = v32;
  static DispatchTime.now()();
  if (qword_1001016E8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for DispatchTimeInterval();
  sub_100012AAC(v35, HomePodViewfinderCircleAnimationDelay);
  + infix(_:_:)();
  v30(v33, v29);
  + infix(_:_:)();
  v30(v17, v29);
  v36 = swift_allocObject();
  v37 = v50;
  *(v36 + 16) = v50;
  v62 = sub_100093108;
  v63 = v36;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100091194;
  v61 = &unk_1000F1938;
  v38 = _Block_copy(&aBlock);
  v39 = v37;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v40 = v29;
  v41 = v53;
  v42 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v38);

  v47(v41, v42);
  v46(v10, v55);
  v30(v19, v40);
}