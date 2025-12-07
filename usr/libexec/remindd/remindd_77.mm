void sub_1006C8E98(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, unsigned __int8 a3, char a4, uint64_t a5, void *a6, _TtC7remindd19RDXPCStorePerformer *a7, uint64_t a8, char *a9, void *a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v631 = v17;
  v17[6] = a10;
  v18 = a6;
  swift_retain_n();
  v633 = a8;
  swift_retain_n();
  swift_retain_n();
  v19 = a10;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = [a1 displayAccount];
  if (!v24)
  {
    v24 = a1;
  }

  v625 = a5;
  v632 = v22;
  v25 = &selRef_hack_willSaveHandled;
  v26 = [(RDXPCStorePerformer *)v24 identifier];
  if (!v26)
  {

    __break(1u);
    goto LABEL_182;
  }

  v27 = v26;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [(RDXPCStorePerformer *)v24 accountType];
  if (!v30)
  {
LABEL_182:

    __break(1u);
    goto LABEL_183;
  }

  v31 = v30;
  v634 = v23;
  v32 = [v30 identifier];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v37;
LABEL_12:
    v44, v37, v38, v39, v40, v41, v42, v43;
    if (([(RDXPCStorePerformer *)v24 isEnabledForDataclass:ACAccountDataclassReminders]& 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v37;
  if (!v35)
  {
    goto LABEL_12;
  }

  if (v33 == v36 && v35 == v37)
  {
    v35, v37, v36, v39, v40, v41, v42, v43;
    v44, v45, v46, v47, v48, v49, v50, v51;
    if (([(RDXPCStorePerformer *)v24 isEnabledForDataclass:ACAccountDataclassReminders]& 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_100006654(v104, qword_10094FB70);
      v25 = a1;
      v60 = v24;

      v105 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v105, v24))
      {

        swift_bridgeObjectRelease_n();
        v24 = v632;
LABEL_32:
        v146 = v24;
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v147, v148))
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      a2 = v60;
      v106 = v10;
      v10 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      LODWORD(v10->super.isa) = 136446722;
      v107 = [v25 identifier];

      v29, v108, v109, v110, v111, v112, v113, v114;
      if (v107)
      {
        a7 = v29;
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;

        v118 = sub_10000668C(v115, v117, &aBlock);
        v117, v119, v120, v121, v122, v123, v124, v125;
        *(&v10->super.isa + 4) = v118;
        *&v10->storeController[4] = 2082;
        v25 = sub_10000668C(v106, a7, &aBlock);
        a7, v126, v127, v128, v129, v130, v131, v132;
        *&v10->storeController[6] = v25;
        *&v10->clientIdentity[6] = 2082;
        v60 = a2;
        v133 = [(RDXPCStorePerformer *)a2 accountType];
        if (v133)
        {
          v134 = v133;
          v25 = [v133 identifier];

          a7 = v632;
          if (v25)
          {
            v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v137 = v136;

            v138 = sub_10000668C(v135, v137, &aBlock);
            v137, v139, v140, v141, v142, v143, v144, v145;
            *&v10->clientIdentity[8] = v138;
            _os_log_impl(&_mh_execute_header, v105, v24, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v10, 0x20u);
            swift_arrayDestroy();

            v24 = v632;
            goto LABEL_32;
          }

          goto LABEL_185;
        }

LABEL_184:

        __break(1u);
LABEL_185:

        __break(1u);
        goto LABEL_186;
      }

LABEL_183:

      v60 = v632;

      __break(1u);
      goto LABEL_184;
    }

LABEL_23:
    v621 = v10;
    v102 = v29;
    v103 = 1;
    goto LABEL_35;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v35, v88, v89, v90, v91, v92, v93, v94;
  v44, v95, v96, v97, v98, v99, v100, v101;
  if (([(RDXPCStorePerformer *)v24 isEnabledForDataclass:ACAccountDataclassReminders]& 1) == 0)
  {
    goto LABEL_24;
  }

  if (v87)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {
    v29, v52, v53, v54, v55, v56, v57, v58;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100006654(v59, qword_10094FB70);
    v25 = a1;
    v60 = v24;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&aBlock = v10;
      *v63 = 136446466;
      v64 = [v25 identifier];

      if (!v64)
      {
LABEL_187:

        v60 = v632;

        __break(1u);
        goto LABEL_188;
      }

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v66;

      v25 = sub_10000668C(v65, v24, &aBlock);
      v24, v67, v68, v69, v70, v71, v72, v73;
      *(v63 + 4) = v25;
      *(v63 + 12) = 2082;
      v74 = [(RDXPCStorePerformer *)v60 accountType];
      if (!v74)
      {
LABEL_188:

        __break(1u);
        goto LABEL_189;
      }

      v75 = v74;
      v25 = [v74 identifier];

      a7 = v632;
      if (!v25)
      {
LABEL_189:

        __break(1u);
        goto LABEL_190;
      }

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_10000668C(v76, v78, &aBlock);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v63 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v61, v62, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v63, 0x16u);
      swift_arrayDestroy();

      v24 = v632;
    }

    else
    {

      v24 = v632;
    }

    v146 = v24;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v147, v148))
    {
LABEL_51:
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      *&aBlock = v189;
      *v187 = 138544130;
      v190 = [(RDXPCStorePerformer *)v146 identifier];
      *(v187 + 4) = v190;
      *v188 = v190;
      *(v187 + 12) = 1024;
      *(v187 + 14) = 0;
      *(v187 + 18) = 1024;
      *(v187 + 20) = 0;
      *(v187 + 24) = 2080;
      *(v187 + 26) = sub_10000668C(7104878, 0xE300000000000000, &aBlock);
      _os_log_impl(&_mh_execute_header, v147, v148, "RDAccountUtils: Finished updating account {accountID: %{public}@, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, error: %s}", v187, 0x22u);
      sub_1000050A4(v188, &unk_100938E70, &unk_100797230);

      sub_10000607C(v189);
    }

LABEL_52:

    v191 = v634;
    dispatch_group_leave(v634);

LABEL_169:

    return;
  }

  v621 = v10;
  v102 = v29;
  aBlock = 0u;
  v637 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v103 = 0;
LABEL_35:
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v149 = type metadata accessor for Logger();
  sub_100006654(v149, qword_10094FB70);

  v150 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v102, v151, v152, v153, v154, v155, v156, v157;
  v622 = v102;
  if (os_log_type_enabled(v150, v25))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *&aBlock = v159;
    *v158 = 136446210;
    *(v158 + 4) = sub_10000668C(v621, v102, &aBlock);
    _os_log_impl(&_mh_execute_header, v150, v25, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v158, 0xCu);
    sub_10000607C(v159);
  }

  v10 = swift_allocObject();
  v10->clientIdentity[0] = 0;
  v160 = [(RDXPCStorePerformer *)v24 rem_isEligibleForCloudKitReminders];
  v620 = v10;
  if (!v103)
  {
    v163 = [(RDXPCStorePerformer *)v24 accountType];
    if (!v163)
    {
LABEL_186:

      v60 = v632;

      __break(1u);
      goto LABEL_187;
    }

    v164 = v163;
    v165 = sub_1006C3788(v163);
    v167 = v166;

    v618 = v24;
    if (v167)
    {
      v10 = v24;
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.error.getter();
      v170 = v634;
      if (os_log_type_enabled(v168, v169))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *&aBlock = v172;
        *v171 = 136446210;
        v173 = [(RDXPCStorePerformer *)v10 accountType];
        if (!v173)
        {
LABEL_190:

          __break(1u);
          goto LABEL_191;
        }

        v174 = v173;
        v25 = [v173 identifier];

        v24 = v632;
        if (!v25)
        {
LABEL_191:

          __break(1u);
          goto LABEL_192;
        }

        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        v178 = sub_10000668C(v175, v177, &aBlock);
        v177, v179, v180, v181, v182, v183, v184, v185;
        *(v171 + 4) = v178;
        _os_log_impl(&_mh_execute_header, v168, v169, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v171, 0xCu);
        sub_10000607C(v172);

        v186 = &_swiftEmptyArrayStorage;
LABEL_157:
        v248 = v633;
        v170 = v634;
        goto LABEL_168;
      }

      v186 = &_swiftEmptyArrayStorage;
      v24 = v632;
      v248 = v633;
    }

    else
    {

      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.default.getter();
      v622, v229, v230, v231, v232, v233, v234, v235;
      v626 = v165;
      if (os_log_type_enabled(v227, v228))
      {
        v236 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v236 = 136446466;
        *(v236 + 4) = sub_10000668C(v621, v622, &aBlock);
        *(v236 + 12) = 2082;
        v237 = REMAccountType.loggableDescription.getter();
        v239 = v238;
        v240 = sub_10000668C(v237, v238, &aBlock);
        v239, v241, v242, v243, v244, v245, v246, v247;
        *(v236 + 14) = v240;
        _os_log_impl(&_mh_execute_header, v227, v228, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v236, 0x16u);
        swift_arrayDestroy();
      }

      v248 = v633;
      v170 = v634;
      v249 = sub_1006C3CF4(v24);
      if (v250)
      {
        v251 = v249;
        v252 = v250;
        v253 = v24;

        v254 = Logger.logObject.getter();
        v255 = static os_log_type_t.default.getter();

        v252, v256, v257, v258, v259, v260, v261, v262;
        if (os_log_type_enabled(v254, v255))
        {
          v263 = swift_slowAlloc();
          v264 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          *&aBlock = v265;
          *v263 = 136446466;
          *(v263 + 4) = sub_10000668C(v251, v252, &aBlock);
          *(v263 + 12) = 2114;
          v266 = [(RDXPCStorePerformer *)v253 identifier];
          *(v263 + 14) = v266;
          *v264 = v266;
          _os_log_impl(&_mh_execute_header, v254, v255, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v263, 0x16u);
          sub_1000050A4(v264, &unk_100938E70, &unk_100797230);

          sub_10000607C(v265);
        }

        v267 = [objc_opt_self() accountDescriptionWithACAccount:v253];
        v248 = v633;
        v272 = v251;
        if (v267)
        {
          v273 = v267;
          v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v276 = v275;
        }

        else
        {
          v274 = 0;
          v276 = 0xE000000000000000;
        }

        v186 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v268, v269, v270, v271);
        v363 = *v186->clientIdentity;
        v362 = *&v186->clientIdentity[8];
        if (v363 >= v362 >> 1)
        {
          v186 = sub_1003685B8((v362 > 1), v363 + 1, 1, v186, v358, v359, v360, v361);
        }

        *v186->clientIdentity = v363 + 1;
        v364 = v186 + 48 * v363;
        *(v364 + 4) = v272;
        *(v364 + 5) = v252;
        *(v364 + 6) = v274;
        *(v364 + 7) = v276;
        *(v364 + 8) = v626;
        *(v364 + 18) = 33685505;
        v364[76] = 2;
        goto LABEL_119;
      }

      v186 = &_swiftEmptyArrayStorage;
      v24 = v632;
    }

LABEL_168:
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v497 = v24;

    v498 = v170;

    sub_1006C6E08(v186, a2, v620, v621, v622, v186, v497, a7, v248, a9, v498);

    swift_bridgeObjectRelease_n();
    v191 = v634;
    v622, v499, v500, v501, v502, v503, v504, v505;

    goto LABEL_169;
  }

  if ((v160 & 1) == 0)
  {

    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.default.getter();
    v622, v194, v195, v196, v197, v198, v199, v200;
    if (os_log_type_enabled(v192, v193))
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      *&aBlock = v202;
      *v201 = 136446210;
      *(v201 + 4) = sub_10000668C(v621, v622, &aBlock);
      _os_log_impl(&_mh_execute_header, v192, v193, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v201, 0xCu);
      sub_10000607C(v202);
    }

    v170 = v634;
    v203 = sub_1006BFC1C(v24);
    v618 = v24;
    if (v204)
    {
      v205 = v203;
      v206 = v204;

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.default.getter();
      v206, v209, v210, v211, v212, v213, v214, v215;
      if (os_log_type_enabled(v207, v208))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *&aBlock = v217;
        *v216 = 136446210;
        *(v216 + 4) = sub_10000668C(v205, v206, &aBlock);
        _os_log_impl(&_mh_execute_header, v207, v208, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v216, 0xCu);
        sub_10000607C(v217);
      }

      v218 = [objc_opt_self() accountDescriptionWithACAccount:v24];
      if (v218)
      {
        v223 = v218;
        v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v226 = v225;
      }

      else
      {
        v224 = 0;
        v226 = 0;
      }

      if (v226)
      {
        v349 = v224;
      }

      else
      {
        v349 = 0x64756F6C4369;
      }

      if (v226)
      {
        v350 = v226;
      }

      else
      {
        v350 = 0xE600000000000000;
      }

      v186 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v219, v220, v221, v222);
      v356 = *v186->clientIdentity;
      v355 = *&v186->clientIdentity[8];
      if (v356 >= v355 >> 1)
      {
        v186 = sub_1003685B8((v355 > 1), v356 + 1, 1, v186, v351, v352, v353, v354);
      }

      *v186->clientIdentity = v356 + 1;
      v357 = v186 + 48 * v356;
      *(v357 + 4) = v205;
      *(v357 + 5) = v206;
      *(v357 + 6) = v349;
      *(v357 + 7) = v350;
      *(v357 + 8) = 3;
      *(v357 + 18) = 33685505;
      v357[76] = 2;
      v248 = v633;
LABEL_119:
      v170 = v634;
      v24 = v632;
      goto LABEL_168;
    }

    v186 = &_swiftEmptyArrayStorage;
    v248 = v633;
    v24 = v632;
    goto LABEL_168;
  }

  *&v640 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v640 + 1) = v161;
  v162 = [(RDXPCStorePerformer *)v24 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v162)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v640 = 0u;
    v641 = 0u;
  }

  v191 = v634;
  v277 = a3;
  aBlock = v640;
  v637 = v641;
  if (*(&v641 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v277 = [v635 BOOLValue];

      goto LABEL_84;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_84:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v320;
    v321 = [(RDXPCStorePerformer *)v24 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v321)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v640 = 0u;
      v641 = 0u;
    }

    aBlock = v640;
    v637 = v641;
    if (*(&v641 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v322 = v635;
      }

      else
      {
        v322 = 0;
      }

      if (v277)
      {
        goto LABEL_93;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v322 = 0;
      if (v277)
      {
LABEL_93:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          v622, v324, v325, v326, v327, v328, v329, v330;
          v388 = Logger.logObject.getter();
          v389 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v388, v389))
          {
            v390 = swift_slowAlloc();
            *v390 = 0;
            _os_log_impl(&_mh_execute_header, v388, v389, "Store controller missing for checking whether migration has failed", v390, 2u);
          }

          v24 = v632;
          goto LABEL_169;
        }

        v331 = Strong;
        v332 = sub_1006BF940(v621, v622);
        if (!v332)
        {
          v614 = v322;

          v506 = Logger.logObject.getter();
          v507 = static os_log_type_t.error.getter();
          v622, v508, v509, v510, v511, v512, v513, v514;
          if (os_log_type_enabled(v506, v507))
          {
            v515 = swift_slowAlloc();
            v516 = swift_slowAlloc();
            *&aBlock = v516;
            *v515 = 136315138;
            v517 = sub_10000668C(v621, v622, &aBlock);
            v622, v518, v519, v520, v521, v522, v523, v524;
            *(v515 + 4) = v517;
            _os_log_impl(&_mh_execute_header, v506, v507, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v515, 0xCu);
            sub_10000607C(v516);
            v191 = v634;
          }

          else
          {

            v622, v525, v526, v527, v528, v529, v530, v531;
          }

          v24 = v632;
          goto LABEL_169;
        }

        v333 = v332;
        sub_10031C72C(v332, v331);
        v335 = v334;

        LODWORD(v333) = *(v335 + 88);

        v336 = v333 ^ 1;
        goto LABEL_98;
      }
    }

    v336 = 0;
LABEL_98:
    v627 = v336;
    if (v322 && (v336 & [v322 BOOLValue] & 1) != 0)
    {
      v10->clientIdentity[0] = 1;

      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.default.getter();
      v622, v339, v340, v341, v342, v343, v344, v345;
      if (os_log_type_enabled(v337, v338))
      {
        v346 = swift_slowAlloc();
        v347 = v322;
        v348 = swift_slowAlloc();
        *&aBlock = v348;
        *v346 = 136446210;
        *(v346 + 4) = sub_10000668C(v621, v622, &aBlock);
        _os_log_impl(&_mh_execute_header, v337, v338, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v346, 0xCu);
        sub_10000607C(v348);
        v322 = v347;
      }
    }

    if ([(RDXPCStorePerformer *)v24 aa_isAccountClass:AAAccountClassPrimary])
    {
      v617 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v617 = 6;
    }

    v365 = v322;

    v366 = Logger.logObject.getter();
    v367 = static os_log_type_t.default.getter();
    v624 = v365;

    v622, v368, v369, v370, v371, v372, v373, v374;
    if (os_log_type_enabled(v366, v367))
    {
      v375 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v375 = 136447234;
      *(v375 + 4) = sub_10000668C(v621, v622, &aBlock);
      *(v375 + 12) = 2082;
      v376 = REMAccountType.loggableDescription.getter();
      v378 = v377;
      v613 = v322;
      v379 = sub_10000668C(v376, v377, &aBlock);
      v378, v380, v381, v382, v383, v384, v385, v386;
      *(v375 + 14) = v379;
      *(v375 + 22) = 1024;
      *(v375 + 24) = v277 & 1;
      *(v375 + 28) = 1024;
      *(v375 + 30) = v627 & 1;
      *(v375 + 34) = 2082;
      if (v613)
      {
        v387 = [v624 BOOLValue];
      }

      else
      {
        v387 = 2;
      }

      LOBYTE(v640) = v387;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v436 = String.init<A>(describing:)();
      v438 = v437;
      v439 = sub_10000668C(v436, v437, &aBlock);
      v438, v440, v441, v442, v443, v444, v445, v446;
      *(v375 + 36) = v439;
      _os_log_impl(&_mh_execute_header, v366, v367, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v375, 0x2Cu);
      swift_arrayDestroy();

      v322 = v613;
    }

    else
    {
    }

    v611 = objc_opt_self();
    v447 = [v611 accountDescriptionWithACAccount:v24];
    if (v447)
    {
      v448 = v447;
      v449 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v451 = v450;
    }

    else
    {
      v449 = 0;
      v451 = 0;
    }

    v630 = a7;
    if (v322)
    {
      v452 = [v624 BOOLValue];
    }

    else
    {
      v452 = 2;
    }

    v609 = v277;
    v453 = [(RDXPCStorePerformer *)v24 aa_isAccountClass:AAAccountClassBasic];
    if (v451)
    {
      v454 = v449;
    }

    else
    {
      v454 = 0x64756F6C4369;
    }

    if (v451)
    {
      v455 = v451;
    }

    else
    {
      v455 = 0xE600000000000000;
    }

    v460 = sub_1003685B8(0, 1, 1, &_swiftEmptyArrayStorage, v456, v457, v458, v459);
    v466 = *v460->clientIdentity;
    v465 = *&v460->clientIdentity[8];
    v186 = v460;
    if (v466 >= v465 >> 1)
    {
      v186 = sub_1003685B8((v465 > 1), v466 + 1, 1, v460, v461, v462, v463, v464);
    }

    *v186->clientIdentity = v466 + 1;
    v467 = v186 + 48 * v466;
    *(v467 + 4) = v621;
    *(v467 + 5) = v622;
    *(v467 + 6) = v454;
    *(v467 + 7) = v455;
    *(v467 + 8) = v617;
    v467[72] = v627 & 1;
    v467[73] = 0;
    v467[74] = v277 & 1;
    v467[75] = v452;
    v467[76] = v453;
    v468 = sub_1006BFC1C(v24);
    v618 = v24;
    if (v469)
    {
      v470 = v468;
      v471 = v469;

      v472 = Logger.logObject.getter();
      v473 = static os_log_type_t.default.getter();
      v471, v474, v475, v476, v477, v478, v479, v480;
      if (os_log_type_enabled(v472, v473))
      {
        v481 = swift_slowAlloc();
        v482 = swift_slowAlloc();
        *&aBlock = v482;
        *v481 = 136446466;
        *(v481 + 4) = sub_10000668C(v470, v471, &aBlock);
        *(v481 + 12) = 1024;
        *(v481 + 14) = v609 & 1;
        _os_log_impl(&_mh_execute_header, v472, v473, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v481, 0x12u);
        sub_10000607C(v482);
      }

      v483 = [v611 accountDescriptionWithACAccount:v24];
      v248 = v633;
      if (v483)
      {
        v488 = v483;
        v489 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v491 = v490;
      }

      else
      {
        v489 = 0;
        v491 = 0;
      }

      if (v491)
      {
        v492 = v489;
      }

      else
      {
        v492 = 0x64756F6C4369;
      }

      if (v491)
      {
        v493 = v491;
      }

      else
      {
        v493 = 0xE600000000000000;
      }

      v495 = *v186->clientIdentity;
      v494 = *&v186->clientIdentity[8];
      if (v495 >= v494 >> 1)
      {
        v186 = sub_1003685B8((v494 > 1), v495 + 1, 1, v186, v484, v485, v486, v487);
      }

      *v186->clientIdentity = v495 + 1;
      v496 = v186 + 48 * v495;
      *(v496 + 4) = v470;
      *(v496 + 5) = v471;
      *(v496 + 6) = v492;
      *(v496 + 7) = v493;
      *(v496 + 8) = 3;
      v496[72] = (v627 & 1) == 0;
      *(v496 + 73) = 33686016;
      v170 = v634;
      a7 = v630;
      v24 = v632;
      goto LABEL_168;
    }

    v24 = v632;
    a7 = v630;
    goto LABEL_157;
  }

  v278 = v625;
  v279 = swift_unknownObjectWeakLoadStrong();
  if (!v279)
  {
    goto LABEL_131;
  }

  v280 = v279;
  if (![v279 hasPassedBuddyAndSystemDataMigrator])
  {

    v391 = Logger.logObject.getter();
    v392 = static os_log_type_t.default.getter();
    v622, v393, v394, v395, v396, v397, v398, v399;
    if (os_log_type_enabled(v391, v392))
    {
      v400 = swift_slowAlloc();
      v401 = swift_slowAlloc();
      *&aBlock = v401;
      *v400 = 136446210;
      *(v400 + 4) = sub_10000668C(v621, v622, &aBlock);
      _os_log_impl(&_mh_execute_header, v391, v392, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v400, 0xCu);
      sub_10000607C(v401);
      v278 = v625;
    }

    goto LABEL_131;
  }

  if ((a4 & 1) == 0)
  {
LABEL_131:

    v402 = Logger.logObject.getter();
    v403 = static os_log_type_t.default.getter();
    v622, v404, v405, v406, v407, v408, v409, v410;
    if (os_log_type_enabled(v402, v403))
    {
      v418 = swift_slowAlloc();
      v419 = swift_slowAlloc();
      *&aBlock = v419;
      *v418 = 136446210;
      v420 = sub_10000668C(v621, v622, &aBlock);
      v622, v421, v422, v423, v424, v425, v426, v427;
      *(v418 + 4) = v420;
      _os_log_impl(&_mh_execute_header, v402, v403, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v418, 0xCu);
      sub_10000607C(v419);
    }

    else
    {
      v622, v411, v412, v413, v414, v415, v416, v417;
    }

    v428 = objc_opt_self();
    v429 = [v428 sharedInstance];
    v430 = [v429 accountStore];

    v431 = [v428 sharedInstance];
    v432 = swift_allocObject();
    *(v432 + 16) = v24;
    *(v432 + 24) = v278;
    *(v432 + 32) = a2;
    *(v432 + 40) = a4 & 1;
    *(v432 + 48) = sub_1006D4A10;
    *(v432 + 56) = v631;
    v638 = sub_1006D5518;
    v639 = v432;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v637 = sub_100007688;
    *(&v637 + 1) = &unk_1008FC2D8;
    v433 = _Block_copy(&aBlock);
    v434 = v24;

    v435 = a2;

    [v431 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v434 inStore:v430 completionHandler:v433];

    _Block_release(v433);

    v24 = v632;

    v191 = v634;
    goto LABEL_169;
  }

  v281 = swift_allocObject();
  v281[2] = v632;
  v281[3] = a7;
  v281[4] = v633;
  v281[5] = a9;
  v281[6] = v634;
  v282 = swift_allocObject();
  *(v282 + 16) = v621;
  *(v282 + 24) = v622;
  *(v282 + 32) = v625;
  *(v282 + 40) = v24;
  *(v282 + 48) = a2;
  *(v282 + 56) = 1;
  *(v282 + 64) = sub_1006D5474;
  *(v282 + 72) = v281;
  v616 = v282;
  v283 = v632;
  v629 = a7;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v284 = v634;
  v285 = v24;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v286 = a2;
  a2 = v283;
  v24 = v284;
  a7 = v285;

  v25 = v286;

  v287 = [(RDXPCStorePerformer *)a7 identifier];
  if (v287)
  {
    v288 = v287;
    v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v291 = v290;
    v292 = swift_unknownObjectWeakLoadStrong();
    v619 = v24;
    if (v292 && (v293 = v292, v294 = [v292 cloudContext], v293, v294))
    {
      v295 = v294;
      v296 = v25;

      v297 = Logger.logObject.getter();
      v298 = static os_log_type_t.default.getter();
      v291, v299, v300, v301, v302, v303, v304, v305;
      if (os_log_type_enabled(v297, v298))
      {
        v306 = swift_slowAlloc();
        v307 = swift_slowAlloc();
        *&aBlock = v307;
        *v306 = 136446210;
        *(v306 + 4) = sub_10000668C(v289, v291, &aBlock);
        _os_log_impl(&_mh_execute_header, v297, v298, "Fetch migration state from user record {accountID: %{public}s}", v306, 0xCu);
        sub_10000607C(v307);
      }

      v191 = v634;
      v308 = swift_allocObject();
      v308[2] = v289;
      v308[3] = v291;
      v308[4] = sub_1006D551C;
      v308[5] = v616;
      v308[6] = a7;
      v638 = sub_1006D5520;
      v639 = v308;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v637 = sub_10016AC08;
      *(&v637 + 1) = &unk_1008FC378;
      v309 = _Block_copy(&aBlock);
      v310 = a7;

      v311 = v295;
      [(RDXPCStorePerformer *)v295 fetchUserRecordWithAccountID:v288 completionHandler:v309];
      _Block_release(v309);
      v312 = v622;
      v622, v313, v314, v315, v316, v317, v318, v319;
    }

    else
    {
      v612 = v25;

      v532 = Logger.logObject.getter();
      v533 = static os_log_type_t.error.getter();
      v291, v534, v535, v536, v537, v538, v539, v540;
      if (os_log_type_enabled(v532, v533))
      {
        v548 = swift_slowAlloc();
        v549 = swift_slowAlloc();
        *&aBlock = v549;
        *v548 = 136446210;
        v550 = v24;
        v551 = sub_10000668C(v289, v291, &aBlock);
        v291, v552, v553, v554, v555, v556, v557, v558;
        *(v548 + 4) = v551;
        v24 = v550;
        _os_log_impl(&_mh_execute_header, v532, v533, "Missing cloud context for fetching migration state {accountID: %{public}s}", v548, 0xCu);
        sub_10000607C(v549);
      }

      else
      {
        v291, v541, v542, v543, v544, v545, v546, v547;
      }

      v559 = objc_opt_self();
      v560 = String._bridgeToObjectiveC()();
      v561 = [v559 internalErrorWithDebugDescription:v560];

      v562 = a2;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v563 = v24;
      v564 = v562;
      v615 = v563;

      v565 = v561;
      v566 = Logger.logObject.getter();
      v567 = static os_log_type_t.error.getter();
      v622, v568, v569, v570, v571, v572, v573, v574;

      v610 = v565;
      if (os_log_type_enabled(v566, v567))
      {
        v575 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v575 = 136315394;
        swift_getErrorValue();
        v576 = Error.localizedDescription.getter();
        v578 = v577;
        v579 = sub_10000668C(v576, v577, &aBlock);
        v578, v580, v581, v582, v583, v584, v585, v586;
        *(v575 + 4) = v579;
        *(v575 + 12) = 2082;
        *(v575 + 14) = sub_10000668C(v621, v622, &aBlock);
        _os_log_impl(&_mh_execute_header, v566, v567, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v575, 0x16u);
        swift_arrayDestroy();
      }

      v191 = v634;
      v312 = v622;
      v587 = v564;

      v288 = v615;
      v296 = v612;
      sub_1006C8E98(a7, v612, 0, 1, v625, v587, v629, v633, a9, v288);
      v622, v588, v589, v590, v591, v592, v593, v594;

      v311 = v288;
    }

    v312, v595, v596, v597, v598, v599, v600, v601;

    v24 = v632;
    goto LABEL_169;
  }

LABEL_192:

  v622, v602, v603, v604, v605, v606, v607, v608;
  __break(1u);
}

void sub_1006CBAE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v569 = a6;
  v577 = a2;
  v588 = a1;
  v572 = 0;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17 - 8, v18);
  v583 = v554 - v19;
  v584 = type metadata accessor for UUID();
  v587 = *(v584 - 8);
  __chkstk_darwin(v584, v20);
  v580 = v554 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v560 = a9;
  *(v22 + 32) = a9;
  v23 = v569;
  v561 = a10;
  *(v22 + 40) = a10 & 1;
  v562 = a11;
  *(v22 + 48) = a11;
  *(v22 + 56) = a12;
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v556 = a4;
  v24[4] = a5;
  v24[5] = v23;
  v24[6] = sub_1006D5478;
  v24[7] = v22;
  v564 = v24;
  v25 = objc_allocWithZone(REMSaveRequest);
  v568 = a7;
  v26 = a5;

  v566 = a8;
  v567 = a12;

  v563 = v22;

  v575 = [v25 initWithStore:v577];
  v28 = *(v588 + 16);
  v565 = a3;
  if (!v28)
  {
    goto LABEL_82;
  }

  v559 = a5;
  LODWORD(v574) = 0;
  v573 = 0;
  v576 = 0;
  v29 = (v588 + 32);
  v582 = (v587 + 48);
  v579 = (v587 + 32);
  v578 = (v587 + 8);
  v555 = 20250728;
  v30 = 1 - v28;
  *&v27 = 136446210;
  v585 = v27;
  *&v27 = 136315650;
  v570 = v27;
  *&v27 = 136446722;
  v557 = v27;
  *&v27 = 136315906;
  v558 = v27;
  v23 = v584;
  while (1)
  {
    *&v591[13] = *(v29 + 29);
    v31 = v29[1];
    v590 = *v29;
    *v591 = v31;
    LODWORD(v586) = v591[24];
    v32 = *(&v31 + 1);
    v587 = *&v591[16];
    v33 = *(&v590 + 1);
    v34 = v31;
    v26 = v590;
    sub_1006D18E0(&v590, &aBlock);
    v35 = qword_1009366E8;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = sub_100006654(v36, qword_10094FB70);

    v588 = v37;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v33, v40, v41, v42, v43, v44, v45, v46;
    if (os_log_type_enabled(v38, v39))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = v585;
      *(v47 + 4) = sub_10000668C(v26, v33, &aBlock);
      _os_log_impl(&_mh_execute_header, v38, v39, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v47, 0xCu);
      sub_10000607C(v48);
      v23 = v584;
    }

    v49 = v583;
    UUID.init(uuidString:)();
    if ((*v582)(v49, 1, v23) == 1)
    {
      break;
    }

    v68 = v580;
    (*v579)(v580, v49, v23);
    v69 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v71 = [v69 objectIDWithUUID:isa];

    (*v578)(v68, v23);
    if (!v71)
    {
      goto LABEL_19;
    }

    aBlock = 0;
    v72 = [v577 fetchAccountWithObjectID:v71 error:&aBlock];
    v581 = v71;
    if (v72)
    {
      v73 = aBlock;
      if (v591[25])
      {
        sub_1006D1918(&v590, v74, v75, v76, v77, v78, v79, v80);

        v81 = v72;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        v33, v84, v85, v86, v87, v88, v89, v90;
        v32, v91, v92, v93, v94, v95, v96, v97;
        if (os_log_type_enabled(v82, v83))
        {
          v105 = swift_slowAlloc();
          v587 = swift_slowAlloc();
          aBlock = v587;
          *v105 = v570;
          v106 = sub_10000668C(v34, v32, &aBlock);
          v32, v107, v108, v109, v110, v111, v112, v113;
          *(v105 + 4) = v106;
          *(v105 + 12) = 2082;
          v114 = sub_10000668C(v26, v33, &aBlock);
          v33, v115, v116, v117, v118, v119, v120, v121;
          *(v105 + 14) = v114;
          *(v105 + 22) = 2048;
          *(v105 + 24) = [v81 type];

          _os_log_impl(&_mh_execute_header, v82, v83, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v105, 0x20u);
          swift_arrayDestroy();

          v23 = v584;
        }

        else
        {
          v33, v98, v99, v100, v101, v102, v103, v104;
          v32, v238, v239, v240, v241, v242, v243, v244;
        }

        v245 = [v575 updateAccount:v81];
        [v245 removeFromStore];

        v246 = 1;
        if (!v30)
        {
          LODWORD(v574) = 1;
          v465 = &v597 + 4;
          goto LABEL_72;
        }

        v576 = 1;
        v573 = 1;
        LODWORD(v574) = 1;
        goto LABEL_5;
      }

      v177 = v72;
      v178 = [v177 type];
      if (v178 == v587)
      {

        v574 = v177;
        v179 = Logger.logObject.getter();
        v180 = static os_log_type_t.default.getter();
        v33, v181, v182, v183, v184, v185, v186, v187;
        v32, v188, v189, v190, v191, v192, v193, v194;
        if (os_log_type_enabled(v179, v180))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v571 = v72;
          v554[1] = v196;
          aBlock = v196;
          *v195 = v570;
          *(v195 + 4) = sub_10000668C(v34, v32, &aBlock);
          *(v195 + 12) = 2082;
          *(v195 + 14) = sub_10000668C(v26, v33, &aBlock);
          *(v195 + 22) = 2048;
          v197 = v574;
          *(v195 + 24) = [(RDXPCStorePerformer *)v574 type];

          _os_log_impl(&_mh_execute_header, v179, v180, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v195, 0x20u);
          swift_arrayDestroy();
          v72 = v571;

          v23 = v584;
        }

        else
        {
        }

        v297 = v574;
        v298 = [v575 updateAccount:v574];
        v299 = String._bridgeToObjectiveC()();
        v32, v300, v301, v302, v303, v304, v305, v306;
        [v298 setName:v299];

LABEL_45:
        v328 = [v298 inactive];

        if (v586 == v328)
        {
          v343 = v586;
          v571 = v72;
          v344 = v298;
          [v344 setInactive:v343 ^ 1u];

          v345 = Logger.logObject.getter();
          v346 = static os_log_type_t.default.getter();
          v33, v347, v348, v349, v350, v351, v352, v353;

          if (os_log_type_enabled(v345, v346))
          {
            v361 = swift_slowAlloc();
            v586 = swift_slowAlloc();
            aBlock = v586;
            *v361 = v557;
            [v344 inactive];
            v362 = Bool.yesno.getter();
            v364 = v363;
            v365 = sub_10000668C(v362, v363, &aBlock);
            v364, v366, v367, v368, v369, v370, v371, v372;
            *(v361 + 4) = v365;
            v23 = v584;
            *(v361 + 12) = 2082;
            v373 = sub_10000668C(v26, v33, &aBlock);
            v33, v374, v375, v376, v377, v378, v379, v380;
            *(v361 + 14) = v373;
            *(v361 + 22) = 2082;
            v381 = REMAccountType.loggableDescription.getter();
            v383 = v382;
            v384 = sub_10000668C(v381, v382, &aBlock);
            v383, v385, v386, v387, v388, v389, v390, v391;
            *(v361 + 24) = v384;
            swift_arrayDestroy();
          }

          else
          {
            v33, v354, v355, v356, v357, v358, v359, v360;
          }

          v72 = v571;
        }

        else
        {
          v33, v329, v330, v331, v332, v333, v334, v335;
        }

        v392 = v591[26];
        if (v591[26] != 2)
        {
          if ([v298 didChooseToMigrateLocally])
          {
            v393 = [v298 didChooseToMigrate];
            if ((v392 & 1) == 0)
            {
              if (v393)
              {
                [v298 setDidChooseToMigrateLocally:0];
              }
            }
          }

          [v298 setDidChooseToMigrate:v392 & 1];
        }

        v394 = v591[28];
        if (v591[27] != 2)
        {
          [v298 setDidFinishMigration:v591[27] & 1];
        }

        sub_1006D1918(&v590, v336, v337, v338, v339, v340, v341, v342);
        if (v394 != 2)
        {
          [v298 setDebugSyncDisabled:v394 & 1];
        }

        if (v576)
        {

          LODWORD(v574) = 1;
          v576 = 1;
          if (!v30)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v395 = [v298 changedKeys];
          v396 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v397 = *(v396 + 16);
          v396, v398, v399, v400, v401, v402, v403, v404;
          LODWORD(v574) = v397 != 0;
          v576 = v574;
          if (!v30)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v590, v247, v248, v249, v250, v251, v252, v253);

      v254 = v177;
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.error.getter();
      v33, v257, v258, v259, v260, v261, v262, v263;
      v32, v264, v265, v266, v267, v268, v269, v270;
      if (os_log_type_enabled(v255, v256))
      {
        v278 = swift_slowAlloc();
        v586 = v255;
        v279 = v278;
        aBlock = swift_slowAlloc();
        *v279 = v558;
        v280 = sub_10000668C(v34, v32, &aBlock);
        v32, v281, v282, v283, v284, v285, v286, v287;
        *(v279 + 4) = v280;
        *(v279 + 12) = 2082;
        v288 = sub_10000668C(v26, v33, &aBlock);
        v33, v289, v290, v291, v292, v293, v294, v295;
        *(v279 + 14) = v288;
        *(v279 + 22) = 2048;
        *(v279 + 24) = [v254 type];

        *(v279 + 32) = 2048;
        *(v279 + 34) = v587;
        p_super = &v586->super;
        _os_log_impl(&_mh_execute_header, &v586->super, v256, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v279, 0x2Au);
        swift_arrayDestroy();
        v23 = v584;

        goto LABEL_69;
      }

      v33, v271, v272, v273, v274, v275, v276, v277;
      v32, v307, v308, v309, v310, v311, v312, v313;

      if (!v30)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v155 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v572 = 0;

      if (v591[25] != 1)
      {
        if ((v586 & 1) != 0 || (v198 = objc_allocWithZone(REMAccountTypeHost), v199 = [v198 initWithType:v587], v200 = objc_msgSend(v199, "isCloudKit"), v199, v200))
        {

          v208 = Logger.logObject.getter();
          v209 = static os_log_type_t.default.getter();
          v33, v210, v211, v212, v213, v214, v215, v216;
          v32, v217, v218, v219, v220, v221, v222, v223;
          if (os_log_type_enabled(v208, v209))
          {
            v224 = swift_slowAlloc();
            v574 = swift_slowAlloc();
            aBlock = v574;
            *v224 = v570;
            *(v224 + 4) = sub_10000668C(v34, v32, &aBlock);
            v573 = v209;
            *(v224 + 12) = 2082;
            *(v224 + 14) = sub_10000668C(v26, v33, &aBlock);
            *(v224 + 22) = 2082;
            v225 = REMAccountType.loggableDescription.getter();
            v571 = v208;
            v227 = v226;
            v228 = sub_10000668C(v225, v226, &aBlock);
            v229 = v227;
            v72 = 0;
            v229, v230, v231, v232, v233, v234, v235, v236;
            *(v224 + 24) = v228;
            v237 = v571;
            _os_log_impl(&_mh_execute_header, v571, v573, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v224, 0x20u);
            swift_arrayDestroy();

            v23 = v584;
          }

          else
          {
          }

          v314 = String._bridgeToObjectiveC()();
          v32, v315, v316, v317, v318, v319, v320, v321;
          v322 = v587;
          v323 = [v575 __addAccountWithType:v587 name:v314];

          [v323 setObjectID:v581];
          v324 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v322];
          v325 = [v324 isCloudKit];

          v326 = v323;
          v298 = v326;
          if (v325)
          {
            [v326 setPersistenceCloudSchemaVersion:v555];
          }

          else
          {
            v327 = String._bridgeToObjectiveC()();
            [v298 setExternalIdentifier:v327];
          }

          v573 = 1;
          goto LABEL_45;
        }

        sub_1006D1918(&v590, v201, v202, v203, v204, v205, v206, v207);

        v405 = Logger.logObject.getter();
        v406 = static os_log_type_t.info.getter();
        v33, v407, v408, v409, v410, v411, v412, v413;
        v32, v414, v415, v416, v417, v418, v419, v420;
        if (os_log_type_enabled(v405, v406))
        {
          v428 = swift_slowAlloc();
          v586 = v405;
          v429 = v428;
          aBlock = swift_slowAlloc();
          *v429 = v570;
          v430 = sub_10000668C(v34, v32, &aBlock);
          v32, v431, v432, v433, v434, v435, v436, v437;
          *(v429 + 4) = v430;
          *(v429 + 12) = 2082;
          v438 = sub_10000668C(v26, v33, &aBlock);
          v33, v439, v440, v441, v442, v443, v444, v445;
          *(v429 + 14) = v438;
          *(v429 + 22) = 2082;
          v446 = REMAccountType.loggableDescription.getter();
          v448 = v447;
          v449 = sub_10000668C(v446, v447, &aBlock);
          v448, v450, v451, v452, v453, v454, v455, v456;
          *(v429 + 24) = v449;
          v457 = &v586->super;
          _os_log_impl(&_mh_execute_header, &v586->super, v406, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v429, 0x20u);
          swift_arrayDestroy();
          v23 = v584;
        }

        else
        {
          v33, v421, v422, v423, v424, v425, v426, v427;
          v32, v458, v459, v460, v461, v462, v463, v464;
        }

LABEL_69:

        if (!v30)
        {
          goto LABEL_70;
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v590, v156, v157, v158, v159, v160, v161, v162);

      v32, v163, v164, v165, v166, v167, v168, v169;
      v33, v170, v171, v172, v173, v174, v175, v176;
      if (!v30)
      {
        goto LABEL_70;
      }
    }

LABEL_5:
    ++v30;
    v29 += 3;
    if (v30 == 1)
    {
      __break(1u);
      goto LABEL_101;
    }
  }

  sub_1000050A4(v49, &unk_100939D90, "8\n\r");

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v33, v52, v53, v54, v55, v56, v57, v58;
  if (os_log_type_enabled(v50, v51))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = v585;
    *(v59 + 4) = sub_10000668C(v26, v33, &aBlock);
    _os_log_impl(&_mh_execute_header, v50, v51, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v59, 0xCu);
    sub_10000607C(v60);
  }

LABEL_19:
  sub_1006D1918(&v590, v61, v62, v63, v64, v65, v66, v67);
  v32, v122, v123, v124, v125, v126, v127, v128;

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.error.getter();
  v33, v131, v132, v133, v134, v135, v136, v137;
  if (os_log_type_enabled(v129, v130))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    aBlock = v146;
    *v145 = v585;
    v147 = sub_10000668C(v26, v33, &aBlock);
    v33, v148, v149, v150, v151, v152, v153, v154;
    *(v145 + 4) = v147;
    v23 = v584;
    _os_log_impl(&_mh_execute_header, v129, v130, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v145, 0xCu);
    sub_10000607C(v146);
  }

  else
  {
    v33, v138, v139, v140, v141, v142, v143, v144;
  }

  if (v30)
  {
    goto LABEL_5;
  }

LABEL_70:
  if (v574)
  {
    v246 = v576;
    v465 = v598;
LABEL_72:
    *(v465 - 64) = v246;
LABEL_73:
    v466 = Logger.logObject.getter();
    v467 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v466, v467))
    {
      v468 = swift_slowAlloc();
      *v468 = 0;
      _os_log_impl(&_mh_execute_header, v466, v467, "UpdateAccountsWithAccountInfos: Saving account object changes", v468, 2u);
    }

    v26 = v559;
    v23 = v569;
    if (qword_100935D30 == -1)
    {
LABEL_76:
      v469 = qword_100974CC8;
      v470 = swift_allocObject();
      v471 = v564;
      *(v470 + 16) = sub_1006D546C;
      *(v470 + 24) = v471;
      *(v470 + 32) = v573 & 1;
      *(v470 + 33) = v574 & 1;
      v596 = sub_1006D5468;
      v597 = v470;
      aBlock = _NSConcreteStackBlock;
      v593 = 1107296256;
      v594 = sub_100042968;
      v595 = &unk_1008FC940;
      v472 = _Block_copy(&aBlock);

      v473 = v575;
      [v575 saveWithQueue:v469 completion:v472];

      _Block_release(v472);

      goto LABEL_90;
    }

LABEL_101:
    swift_once();
    goto LABEL_76;
  }

  if (((v573 | v576) & 1) == 0)
  {
    v26 = v559;
    v23 = v569;
    goto LABEL_82;
  }

  v474 = v565;
  swift_beginAccess();
  v26 = v559;
  v23 = v569;
  if (*(v474 + 16) != 1)
  {
LABEL_82:

    v480 = v566;

    goto LABEL_83;
  }

  v475 = objc_opt_self();

  v476 = v566;

  v477 = [v475 daemonUserDefaults];
  v478 = [v477 acAccountIdentifiersToMigrateInactivatedCalDavData];

  if (v478)
  {
    v479 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v479 = &_swiftEmptyArrayStorage;
  }

  v515 = v556;
  v516 = sub_1001A5660(v479);
  v479, v517, v518, v519, v520, v521, v522, v523;
  v589 = v516;

  sub_100378434(&aBlock, v515, v26);
  v593, v524, v525, v526, v527, v528, v529, v530;
  v538 = [v475 daemonUserDefaults];
  v539 = v589;
  v540 = *(v589 + 16);
  if (v540)
  {
    v541 = sub_1003689CC(*(v589 + 16), 0);
    v539 = sub_1002791DC(&aBlock, &v541->clientIdentity[16], v540, v539);
    sub_10001B860(aBlock);
    if (v539 != v540)
    {
      __break(1u);
      goto LABEL_96;
    }
  }

  else
  {
LABEL_96:
    v539, v531, v532, v533, v534, v535, v536, v537;
  }

  v542 = Array._bridgeToObjectiveC()().super.isa;

  [v538 setAcAccountIdentifiersToMigrateInactivatedCalDavData:v542];

  v543 = Logger.logObject.getter();
  v544 = static os_log_type_t.default.getter();
  v26, v545, v546, v547, v548, v549, v550, v551;
  if (os_log_type_enabled(v543, v544))
  {
    v552 = swift_slowAlloc();
    v553 = swift_slowAlloc();
    aBlock = v553;
    *v552 = v585;
    *(v552 + 4) = sub_10000668C(v515, v26, &aBlock);
    _os_log_impl(&_mh_execute_header, v543, v544, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v552, 0xCu);
    sub_10000607C(v553);
  }

LABEL_83:
  v481 = *(v23 + 16);
  v482 = &_swiftEmptyArrayStorage;
  if (v481)
  {
    aBlock = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v481, 0);
    v482 = aBlock;
    v483 = v23;
    v484 = (v23 + 40);
    do
    {
      v486 = *(v484 - 1);
      v485 = *v484;
      aBlock = v482;
      v488 = *v482->clientIdentity;
      v487 = *&v482->clientIdentity[8];

      if (v488 >= v487 >> 1)
      {
        sub_100026EF4((v487 > 1), v488 + 1, 1);
        v482 = aBlock;
      }

      *v482->clientIdentity = v488 + 1;
      v489 = v482 + 16 * v488;
      *(v489 + 4) = v486;
      *(v489 + 5) = v485;
      v484 += 6;
      --v481;
    }

    while (v481);
    v23 = v483;
  }

  v490 = swift_allocObject();
  v491 = v560;
  *(v490 + 16) = v568;
  *(v490 + 24) = v491;
  *(v490 + 32) = v561 & 1;
  v492 = v567;
  *(v490 + 40) = v562;
  *(v490 + 48) = v492;
  *(v490 + 56) = 0;

  v493 = v566;
  sub_1006B9D6C(v566, sub_1006D5490, v490);

  v482, v494, v495, v496, v497, v498, v499, v500;
LABEL_90:

  v23, v501, v502, v503, v504, v505, v506, v507;
  v26, v508, v509, v510, v511, v512, v513, v514;
}

void sub_1006CD654(void *a1, id a2, id a3, int a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10, _TtC7remindd19RDXPCStorePerformer *a11)
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

            sub_1006B9D6C(v21, sub_1006D4DA0, v138);

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
      v70 = [(RDXPCStorePerformer *)v23 accountType];
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

    sub_1006B9D6C(v21, sub_1006D5490, v176);

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

    sub_1006CBAE4(v175, a2, v598, v612, v23, v175, a6, v477, v613, a9 & 1, a10, v17);

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
    *(v412 + 48) = sub_1006D4D88;
    *(v412 + 56) = v615;
    v621 = sub_1006D5518;
    v622 = v412;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v620 = sub_100007688;
    *(&v620 + 1) = &unk_1008FC7B0;
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
  *(v264 + 64) = sub_1006D5478;
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
      *(&v620 + 1) = &unk_1008FC850;
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
      sub_1006CD654(v601, v593, 0, 1, a5, v542, v567, v613, a9 & 1, a10, a11);
      v289, v568, v569, v570, v571, v572, v573, v574;
    }

    v289, v575, v576, v577, v578, v579, v580, v581;

    goto LABEL_165;
  }

LABEL_187:

  v616, v582, v583, v584, v585, v586, v587, v588;
  __break(1u);
}

void sub_1006CFF18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6, void (*a7)(void, void, void, void), uint64_t a8)
{
  v553 = 0;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v566 = &v540 - v18;
  v565 = type metadata accessor for UUID();
  v19 = *(v565 - 8);
  __chkstk_darwin(v565, v20);
  v562 = &v540 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v546 = a4;
  *(v22 + 4) = a5;
  *(v22 + 5) = a6;
  *(v22 + 6) = a7;
  *(v22 + 7) = a8;
  v23 = objc_allocWithZone(REMSaveRequest);
  v549 = a3;

  v548 = a5;

  v551 = a6;

  v550 = a8;

  v558 = a2;
  v557 = [v23 initWithStore:a2];
  v25 = *(a1 + 16);
  if (!v25)
  {
    v559 = 0;
    goto LABEL_77;
  }

  v541 = a7;
  v547 = v22;
  LODWORD(v556) = 0;
  v555 = 0;
  v559 = 0;
  v26 = (a1 + 32);
  v564 = (v19 + 48);
  v561 = (v19 + 32);
  v560 = (v19 + 8);
  v543 = 20250728;
  v27 = 1 - v25;
  *&v24 = 136446210;
  v567 = v24;
  *&v24 = 136315650;
  v552 = v24;
  *&v24 = 136446722;
  v544 = v24;
  *&v24 = 136315906;
  v545 = v24;
  while (1)
  {
    *&v579[13] = *(v26 + 29);
    v28 = v26[1];
    v578 = *v26;
    *v579 = v28;
    LODWORD(v568) = v579[24];
    v30 = *(&v28 + 1);
    v29 = *&v579[16];
    v32 = *(&v578 + 1);
    v31 = v28;
    v33 = v578;
    sub_1006D18E0(&v578, &aBlock);
    v34 = qword_1009366E8;

    if (v34 != -1)
    {
      swift_once();
    }

    v569 = v29;
    v35 = type metadata accessor for Logger();
    v36 = sub_100006654(v35, qword_10094FB70);

    v570 = v36;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v32, v39, v40, v41, v42, v43, v44, v45;
    if (os_log_type_enabled(v37, v38))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = v567;
      *(v46 + 4) = sub_10000668C(v33, v32, &aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v46, 0xCu);
      sub_10000607C(v47);
    }

    v48 = v565;
    v49 = v566;
    UUID.init(uuidString:)();
    if ((*v564)(v49, 1, v48) == 1)
    {
      sub_1000050A4(v49, &unk_100939D90, "8\n\r");

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      v32, v52, v53, v54, v55, v56, v57, v58;
      if (os_log_type_enabled(v50, v51))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v59 = v567;
        *(v59 + 4) = sub_10000668C(v33, v32, &aBlock);
        _os_log_impl(&_mh_execute_header, v50, v51, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v59, 0xCu);
        sub_10000607C(v60);
      }

LABEL_19:
      sub_1006D1918(&v578, v61, v62, v63, v64, v65, v66, v67);
      v30, v122, v123, v124, v125, v126, v127, v128;

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      v32, v131, v132, v133, v134, v135, v136, v137;
      if (os_log_type_enabled(v129, v130))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        aBlock = v146;
        *v145 = v567;
        v147 = sub_10000668C(v33, v32, &aBlock);
        v32, v148, v149, v150, v151, v152, v153, v154;
        *(v145 + 4) = v147;
        _os_log_impl(&_mh_execute_header, v129, v130, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v145, 0xCu);
        sub_10000607C(v146);
      }

      else
      {
        v32, v138, v139, v140, v141, v142, v143, v144;
      }

LABEL_4:

      if (!v27)
      {
        break;
      }

      goto LABEL_5;
    }

    v68 = v562;
    (*v561)(v562, v49, v48);
    v69 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v71 = [v69 objectIDWithUUID:isa];

    (*v560)(v68, v48);
    if (!v71)
    {
      goto LABEL_19;
    }

    aBlock = 0;
    v563 = v71;
    v72 = [v558 fetchAccountWithObjectID:v71 error:&aBlock];
    if (v72)
    {
      v73 = aBlock;
      if (v579[25])
      {
        sub_1006D1918(&v578, v74, v75, v76, v77, v78, v79, v80);

        v81 = v72;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        v32, v84, v85, v86, v87, v88, v89, v90;
        v30, v91, v92, v93, v94, v95, v96, v97;
        if (os_log_type_enabled(v82, v83))
        {
          v105 = swift_slowAlloc();
          v569 = swift_slowAlloc();
          aBlock = v569;
          *v105 = v552;
          v106 = sub_10000668C(v31, v30, &aBlock);
          v30, v107, v108, v109, v110, v111, v112, v113;
          *(v105 + 4) = v106;
          *(v105 + 12) = 2082;
          v114 = sub_10000668C(v33, v32, &aBlock);
          v32, v115, v116, v117, v118, v119, v120, v121;
          *(v105 + 14) = v114;
          *(v105 + 22) = 2048;
          *(v105 + 24) = [v81 type];

          _os_log_impl(&_mh_execute_header, v82, v83, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v105, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v32, v98, v99, v100, v101, v102, v103, v104;
          v30, v251, v252, v253, v254, v255, v256, v257;
        }

        v258 = [v557 updateAccount:v81];
        [v258 removeFromStore];

        v259 = 1;
        if (!v27)
        {
          LODWORD(v556) = 1;
          v468 = &v580 + 4;
          goto LABEL_70;
        }

        v559 = 1;
        v555 = 1;
        LODWORD(v556) = 1;
        goto LABEL_5;
      }

      v177 = v72;
      v178 = [v177 type];
      if (v178 == v569)
      {

        v556 = v177;
        v179 = Logger.logObject.getter();
        v180 = static os_log_type_t.default.getter();
        v32, v181, v182, v183, v184, v185, v186, v187;
        v30, v188, v189, v190, v191, v192, v193, v194;
        if (os_log_type_enabled(v179, v180))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v554 = v72;
          v542 = v196;
          aBlock = v196;
          *v195 = v552;
          *(v195 + 4) = sub_10000668C(v31, v30, &aBlock);
          *(v195 + 12) = 2082;
          *(v195 + 14) = sub_10000668C(v33, v32, &aBlock);
          *(v195 + 22) = 2048;
          v197 = v556;
          *(v195 + 24) = [(RDXPCStorePerformer *)v556 type];

          _os_log_impl(&_mh_execute_header, v179, v180, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v195, 0x20u);
          swift_arrayDestroy();
          v72 = v554;
        }

        else
        {
        }

        v312 = v556;
        v250 = [v557 updateAccount:v556];
        v313 = String._bridgeToObjectiveC()();
        v30, v314, v315, v316, v317, v318, v319, v320;
        [v250 setName:v313];

        goto LABEL_43;
      }

      sub_1006D1918(&v578, v260, v261, v262, v263, v264, v265, v266);

      v129 = v177;
      v267 = Logger.logObject.getter();
      v268 = static os_log_type_t.error.getter();
      v32, v269, v270, v271, v272, v273, v274, v275;
      v30, v276, v277, v278, v279, v280, v281, v282;
      if (!os_log_type_enabled(v267, v268))
      {
        v32, v283, v284, v285, v286, v287, v288, v289;
        v30, v321, v322, v323, v324, v325, v326, v327;

        goto LABEL_4;
      }

      v290 = swift_slowAlloc();
      v568 = v267;
      v291 = v290;
      v292 = swift_slowAlloc();
      v554 = v129;
      aBlock = v292;
      *v291 = v545;
      v293 = sub_10000668C(v31, v30, &aBlock);
      v30, v294, v295, v296, v297, v298, v299, v300;
      *(v291 + 4) = v293;
      *(v291 + 12) = 2082;
      v301 = sub_10000668C(v33, v32, &aBlock);
      v32, v302, v303, v304, v305, v306, v307, v308;
      *(v291 + 14) = v301;
      *(v291 + 22) = 2048;
      v309 = v554;
      *(v291 + 24) = [v554 type];

      *(v291 + 32) = 2048;
      *(v291 + 34) = v569;
      v310 = v268;
      p_super = &v568->super;
      _os_log_impl(&_mh_execute_header, &v568->super, v310, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v291, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v155 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v553 = 0;

      if (v579[25] == 1)
      {
        sub_1006D1918(&v578, v156, v157, v158, v159, v160, v161, v162);

        v30, v163, v164, v165, v166, v167, v168, v169;
        v32, v170, v171, v172, v173, v174, v175, v176;
        if (!v27)
        {
          break;
        }

        goto LABEL_5;
      }

      v198 = v569;
      if ((v568 & 1) != 0 || (v199 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v569], v200 = objc_msgSend(v199, "isCloudKit"), v199, v200))
      {

        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.default.getter();
        v32, v210, v211, v212, v213, v214, v215, v216;
        v30, v217, v218, v219, v220, v221, v222, v223;
        v224 = os_log_type_enabled(v208, v209);
        v554 = 0;
        if (v224)
        {
          v225 = swift_slowAlloc();
          v555 = v209;
          v226 = v225;
          v556 = swift_slowAlloc();
          aBlock = v556;
          *v226 = v552;
          *(v226 + 4) = sub_10000668C(v31, v30, &aBlock);
          *(v226 + 12) = 2082;
          *(v226 + 14) = sub_10000668C(v33, v32, &aBlock);
          *(v226 + 22) = 2082;
          v227 = REMAccountType.loggableDescription.getter();
          v229 = v228;
          v230 = sub_10000668C(v227, v228, &aBlock);
          v229, v231, v232, v233, v234, v235, v236, v237;
          *(v226 + 24) = v230;
          v198 = v569;
          _os_log_impl(&_mh_execute_header, v208, v555, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v226, 0x20u);
          swift_arrayDestroy();
        }

        v238 = String._bridgeToObjectiveC()();
        v30, v239, v240, v241, v242, v243, v244, v245;
        v246 = [v557 __addAccountWithType:v198 name:v238];

        [v246 setObjectID:v563];
        v247 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v198];
        v248 = [v247 isCloudKit];

        v249 = v246;
        v250 = v249;
        if (v248)
        {
          [v249 setPersistenceCloudSchemaVersion:v543];
        }

        else
        {
          v328 = String._bridgeToObjectiveC()();
          [v250 setExternalIdentifier:v328];
        }

        v555 = 1;
        v72 = v554;
LABEL_43:
        v329 = v568;
        v330 = [v250 inactive];

        if (v329 == v330)
        {
          v345 = v250;
          [v345 setInactive:v329 ^ 1u];

          v346 = Logger.logObject.getter();
          v347 = static os_log_type_t.default.getter();
          v32, v348, v349, v350, v351, v352, v353, v354;

          if (os_log_type_enabled(v346, v347))
          {
            v362 = swift_slowAlloc();
            v568 = swift_slowAlloc();
            aBlock = v568;
            *v362 = v544;
            [v345 inactive];
            v363 = Bool.yesno.getter();
            v365 = v364;
            v366 = sub_10000668C(v363, v364, &aBlock);
            v554 = v72;
            v367 = v366;
            v365, v368, v369, v370, v371, v372, v373, v374;
            *(v362 + 4) = v367;
            *(v362 + 12) = 2082;
            v375 = sub_10000668C(v33, v32, &aBlock);
            v32, v376, v377, v378, v379, v380, v381, v382;
            *(v362 + 14) = v375;
            *(v362 + 22) = 2082;
            v383 = REMAccountType.loggableDescription.getter();
            v385 = v384;
            v386 = sub_10000668C(v383, v384, &aBlock);
            v385, v387, v388, v389, v390, v391, v392, v393;
            *(v362 + 24) = v386;
            v72 = v554;
            swift_arrayDestroy();
          }

          else
          {
            v32, v355, v356, v357, v358, v359, v360, v361;
          }
        }

        else
        {
          v32, v331, v332, v333, v334, v335, v336, v337;
        }

        v394 = v579[26];
        if (v579[26] != 2)
        {
          if ([v250 didChooseToMigrateLocally])
          {
            v395 = [v250 didChooseToMigrate];
            if ((v394 & 1) == 0)
            {
              if (v395)
              {
                [v250 setDidChooseToMigrateLocally:0];
              }
            }
          }

          [v250 setDidChooseToMigrate:v394 & 1];
        }

        v396 = v579[28];
        if (v579[27] != 2)
        {
          [v250 setDidFinishMigration:v579[27] & 1];
        }

        sub_1006D1918(&v578, v338, v339, v340, v341, v342, v343, v344);
        if (v396 != 2)
        {
          [v250 setDebugSyncDisabled:v396 & 1];
        }

        if (v559)
        {

          LODWORD(v556) = 1;
          v559 = 1;
          if (!v27)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v397 = [v250 changedKeys];
          v398 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v399 = *(v398 + 16);
          v398, v400, v401, v402, v403, v404, v405, v406;
          LODWORD(v556) = v399 != 0;
          v559 = v556;
          if (!v27)
          {
            break;
          }
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v578, v201, v202, v203, v204, v205, v206, v207);

      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.info.getter();
      v32, v409, v410, v411, v412, v413, v414, v415;
      v30, v416, v417, v418, v419, v420, v421, v422;
      if (os_log_type_enabled(v407, v408))
      {
        v430 = swift_slowAlloc();
        v431 = swift_slowAlloc();
        v568 = v407;
        aBlock = v431;
        *v430 = v552;
        v432 = sub_10000668C(v31, v30, &aBlock);
        v30, v433, v434, v435, v436, v437, v438, v439;
        *(v430 + 4) = v432;
        *(v430 + 12) = 2082;
        v440 = sub_10000668C(v33, v32, &aBlock);
        v32, v441, v442, v443, v444, v445, v446, v447;
        *(v430 + 14) = v440;
        *(v430 + 22) = 2082;
        v448 = REMAccountType.loggableDescription.getter();
        v450 = v449;
        v451 = sub_10000668C(v448, v449, &aBlock);
        v450, v452, v453, v454, v455, v456, v457, v458;
        *(v430 + 24) = v451;
        v459 = v408;
        v460 = &v568->super;
        _os_log_impl(&_mh_execute_header, &v568->super, v459, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v430, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v32, v423, v424, v425, v426, v427, v428, v429;
        v30, v461, v462, v463, v464, v465, v466, v467;
      }
    }

    if (!v27)
    {
      break;
    }

LABEL_5:
    ++v27;
    v26 += 3;
    if (v27 == 1)
    {
      __break(1u);
      goto LABEL_100;
    }
  }

  if (v556)
  {
    v259 = v559;
    v468 = &v581;
LABEL_70:
    *(v468 - 64) = v259;
LABEL_71:
    v469 = Logger.logObject.getter();
    v470 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v469, v470))
    {
      v471 = swift_slowAlloc();
      *v471 = 0;
      _os_log_impl(&_mh_execute_header, v469, v470, "UpdateAccountsWithAccountInfos: Saving account object changes", v471, 2u);
    }

    v26 = v547;
    if (qword_100935D30 == -1)
    {
LABEL_74:
      v472 = qword_100974CC8;
      v473 = swift_allocObject();
      *(v473 + 16) = sub_1006D18DC;
      *(v473 + 24) = v26;
      *(v473 + 32) = v555 & 1;
      *(v473 + 33) = v556 & 1;
      v576 = sub_1006D194C;
      v577 = v473;
      aBlock = _NSConcreteStackBlock;
      v573 = 1107296256;
      v574 = sub_100042968;
      v575 = &unk_1008FB950;
      v474 = _Block_copy(&aBlock);

      v475 = v557;
      [v557 saveWithQueue:v472 completion:v474];

      _Block_release(v474);

      return;
    }

LABEL_100:
    swift_once();
    goto LABEL_74;
  }

  a7 = v541;
  LODWORD(v25) = v555;
LABEL_77:
  v476 = v551;
  v555 = v25;
  if (v25 & 1) != 0 || (v559)
  {
    v477 = v549;
    swift_beginAccess();
    if (*(v477 + 16) == 1)
    {
      v478 = objc_opt_self();
      v479 = [v478 daemonUserDefaults];
      v480 = [v479 acAccountIdentifiersToMigrateInactivatedCalDavData];

      if (v480)
      {
        v481 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v481 = &_swiftEmptyArrayStorage;
      }

      v482 = sub_1001A5660(v481);
      v481, v483, v484, v485, v486, v487, v488, v489;
      v571 = v482;
      v490 = v548;

      sub_100378434(&aBlock, v546, v490);
      v573, v491, v492, v493, v494, v495, v496, v497;
      v505 = [v478 daemonUserDefaults];
      v506 = v571;
      v507 = *(v571 + 16);
      if (v507)
      {
        v508 = sub_1003689CC(*(v571 + 16), 0);
        v506 = sub_1002791DC(&aBlock, &v508->clientIdentity[16], v507, v506);
        sub_10001B860(aBlock);
        if (v506 != v507)
        {
          __break(1u);
          goto LABEL_87;
        }
      }

      else
      {
LABEL_87:
        v506, v498, v499, v500, v501, v502, v503, v504;
      }

      v509 = v548;
      v510 = Array._bridgeToObjectiveC()().super.isa;

      [v505 setAcAccountIdentifiersToMigrateInactivatedCalDavData:v510];

      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v511 = type metadata accessor for Logger();
      sub_100006654(v511, qword_10094FB70);

      v512 = Logger.logObject.getter();
      v513 = static os_log_type_t.default.getter();
      v509, v514, v515, v516, v517, v518, v519, v520;
      if (os_log_type_enabled(v512, v513))
      {
        v521 = swift_slowAlloc();
        v522 = swift_slowAlloc();
        v523 = v509;
        v524 = v522;
        aBlock = v522;
        *v521 = 136446210;
        *(v521 + 4) = sub_10000668C(v546, v523, &aBlock);
        _os_log_impl(&_mh_execute_header, v512, v513, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v521, 0xCu);
        sub_10000607C(v524);
      }

      v476 = v551;
    }
  }

  v525 = *(v476 + 16);
  v526 = &_swiftEmptyArrayStorage;
  if (v525)
  {
    aBlock = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v525, 0);
    v526 = aBlock;
    v527 = (v476 + 40);
    do
    {
      v529 = *(v527 - 1);
      v528 = *v527;
      aBlock = v526;
      v531 = *v526->clientIdentity;
      v530 = *&v526->clientIdentity[8];

      if (v531 >= v530 >> 1)
      {
        sub_100026EF4((v530 > 1), v531 + 1, 1);
        v526 = aBlock;
      }

      *v526->clientIdentity = v531 + 1;
      v532 = v526 + 16 * v531;
      *(v532 + 4) = v529;
      *(v532 + 5) = v528;
      v527 += 6;
      --v525;
    }

    while (v525);
  }

  a7(v555 & 1, v559 & 1, v526, 0);

  v526, v533, v534, v535, v536, v537, v538, v539;
}

uint64_t sub_1006D1918(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 24), v9, v10, v11, v12, v13, v14, v15;
  return a1;
}

uint64_t sub_1006D19E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  return v1(*(v2 + 16), *(v2 + 24));
}

void sub_1006D1A54(void *a1, int64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v279 = a1;
  v17 = a10;
  v285 = type metadata accessor for UUID();
  v272 = *(v285 - 8);
  __chkstk_darwin(v285, v18);
  v284 = (&v269 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v274 = a7;
  v275 = a8;
  *(v20 + 64) = a8 & 1;
  v276 = a9;
  *(v20 + 72) = a9;
  *(v20 + 80) = a10;
  v281 = v20;
  v282 = a2;

  v283 = a3;

  v277 = a4;
  swift_errorRetain();
  v21 = qword_1009366E8;

  v278 = a6;

  if (v21 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    v23 = sub_100006654(v22, qword_10094FB70);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "RDAccountUtils: Trying to remove orphaned accounts", v26, 2u);
    }

    v27 = [objc_opt_self() sharedInstance];
    v28 = [v27 accountStore];

    v280 = v28;
    v29 = [v28 aa_accountsEnabledForDataclass:kAccountDataclassReminders];
    if (!v29)
    {
      v66 = v17;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "RDAccountUtils: Couldn't fetch accounts from ACAccountStore. Not able to determine orphaned accounts.", v69, 2u);
      }

      v70 = objc_opt_self();
      v71 = String._bridgeToObjectiveC()();
      v72 = [v70 internalErrorWithDebugDescription:v71];

      v73 = v282;
      swift_beginAccess();
      LOBYTE(v71) = *(v73 + 16);
      swift_beginAccess();
      *(v73 + 16) = v71;
      v74 = v283;
      swift_beginAccess();
      LOBYTE(v71) = *(v74 + 16);
      swift_beginAccess();
      *(v74 + 16) = v71;
      v75 = swift_allocObject();
      *(v75 + 16) = v72;
      v76 = v277;
      if (v277)
      {
        sub_1000F5104(&qword_10094FE58, &unk_1007B5980);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_100791340;
        *(v77 + 32) = v76;
        *(v77 + 40) = v72;
        v78 = a5;
        v79 = v72;
        swift_errorRetain();
        v80 = v79;
        swift_errorRetain();
        v81 = v80;
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v77, v83, v84, v85, v86, v87, v88, v89;
        v90 = [v70 errorFromErrors:isa];

        *(v75 + 16) = v90;
        a5 = v78;
      }

      else
      {
        swift_errorRetain();
      }

      v177 = swift_allocObject();
      v178 = v274;
      *(v177 + 16) = a5;
      *(v177 + 24) = v178;
      *(v177 + 32) = v275 & 1;
      v179 = v283;
      *(v177 + 40) = v282;
      *(v177 + 48) = v179;
      v180 = v276;
      *(v177 + 56) = v75;
      *(v177 + 64) = v180;
      *(v177 + 72) = v66;

      sub_1006B9D6C(v278, sub_1006D4B34, v177);

      goto LABEL_97;
    }

    v30 = v29;
    v269 = v17;
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v298 = _swiftEmptySetSingleton;
    if (v31 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v270 = a5;
    v271 = v23;
    if (v39)
    {
      a5 = 0;
      v17 = v31 & 0xC000000000000001;
      v40 = v31 & 0xFFFFFFFFFFFFFF8;
      v41 = &selRef_attachmentRepresentationAndReturnError_;
      v288 = v31 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a5 >= *(v40 + 16))
          {
            goto LABEL_69;
          }

          v42 = *(v31 + 8 * a5 + 32);
        }

        a7 = v42;
        v43 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
          break;
        }

        if ([v42 v41[271]])
        {
          v44 = v39;
          v45 = [a7 identifier];
          if (!v45)
          {
            goto LABEL_117;
          }

          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          sub_100378434(&aBlock, v47, v49);
          v291, v50, v51, v52, v53, v54, v55, v56;
          v57 = sub_1006BFC1C(a7);
          if (v58)
          {
            sub_100378434(&aBlock, v57, v58);

            v291, v59, v60, v61, v62, v63, v64, v65;
          }

          else
          {
          }

          v39 = v44;
          v40 = v288;
          v41 = &selRef_attachmentRepresentationAndReturnError_;
        }

        else
        {
        }

        ++a5;
        if (v43 == v39)
        {
          a5 = v298;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    a5 = _swiftEmptySetSingleton;
LABEL_28:
    v31, v32, v33, v34, v35, v36, v37, v38;
    aBlock = 0;
    v91 = [v279 fetchAccountsIncludingInactive:1 error:&aBlock];
    v92 = aBlock;
    if (!v91)
    {
      v134 = aBlock;
      a5, v135, v136, v137, v138, v139, v140, v141;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        aBlock = v145;
        *v144 = 136315138;
        swift_getErrorValue();
        v146 = Error.localizedDescription.getter();
        v148 = v147;
        v149 = sub_10000668C(v146, v147, &aBlock);
        v148, v150, v151, v152, v153, v154, v155, v156;
        *(v144 + 4) = v149;
        _os_log_impl(&_mh_execute_header, v142, v143, "Failed to fetch accounts which are no longer signed-in {error: %s}", v144, 0xCu);
        sub_10000607C(v145);
      }

      v157 = objc_opt_self();
      v158 = String._bridgeToObjectiveC()();
      v159 = [v157 internalErrorWithDebugDescription:v158];

      v160 = v282;
      swift_beginAccess();
      LOBYTE(v158) = *(v160 + 16);
      swift_beginAccess();
      *(v160 + 16) = v158;
      v161 = v283;
      swift_beginAccess();
      LOBYTE(v158) = *(v161 + 16);
      swift_beginAccess();
      *(v161 + 16) = v158;
      v162 = swift_allocObject();
      *(v162 + 16) = v159;
      v163 = v277;
      if (v277)
      {
        sub_1000F5104(&qword_10094FE58, &unk_1007B5980);
        v164 = swift_allocObject();
        *(v164 + 16) = xmmword_100791340;
        *(v164 + 32) = v163;
        *(v164 + 40) = v159;
        v165 = v159;
        swift_errorRetain();
        v166 = v165;
        swift_errorRetain();
        v167 = v166;
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        v168 = Array._bridgeToObjectiveC()().super.isa;
        v164, v169, v170, v171, v172, v173, v174, v175;
        v176 = [v157 errorFromErrors:v168];

        *(v162 + 16) = v176;
      }

      else
      {
        swift_errorRetain();
      }

      v181 = swift_allocObject();
      v182 = v274;
      *(v181 + 16) = v270;
      *(v181 + 24) = v182;
      *(v181 + 32) = v275 & 1;
      v183 = v283;
      *(v181 + 40) = v282;
      *(v181 + 48) = v183;
      v184 = v276;
      *(v181 + 56) = v162;
      *(v181 + 64) = v184;
      *(v181 + 72) = v269;

      sub_1006B9D6C(v278, sub_1006D548C, v181);

      goto LABEL_97;
    }

    v93 = v91;
    sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v92;

    v289 = &_swiftEmptyArrayStorage;
    if (!(v17 >> 62))
    {
      v102 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v102)
      {
        break;
      }

      goto LABEL_31;
    }

    v102 = _CocoaArrayWrapper.endIndex.getter();
    if (!v102)
    {
      break;
    }

LABEL_31:
    v103 = 0;
    v31 = v17 & 0xC000000000000001;
    v287 = v17 & 0xFFFFFFFFFFFFFF8;
    v286 = v17 + 32;
    ++v272;
    v104 = a5 + 56;
    v288 = &_swiftEmptyArrayStorage;
    v273 = v17;
    while (1)
    {
      if (v31)
      {
        v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v103 >= *(v287 + 16))
        {
          goto LABEL_71;
        }

        v105 = *(v286 + 8 * v103);
      }

      a7 = v105;
      if (__OFADD__(v103++, 1))
      {
        break;
      }

      if (qword_1009366F0 != -1)
      {
        swift_once();
      }

      v107 = off_10094FB88;
      v108 = [a7 type];
      if (v107[2] && (v109 = v108, Hasher.init(_seed:)(), Hasher._combine(_:)(v109), v110 = Hasher._finalize()(), v111 = -1 << *(v107 + 32), v112 = v110 & ~v111, ((*(v107 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v112) & 1) != 0))
      {
        v113 = ~v111;
        while (*(v107[6] + 8 * v112) != v109)
        {
          v112 = (v112 + 1) & v113;
          if (((*(v107 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v112) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v114 = [a7 objectID];
        v115 = [v114 uuid];

        v116 = v284;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v117 = UUID.uuidString.getter();
        v119 = v118;
        (*v272)(v116, v285);
        if (*(a5 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v127 = Hasher._finalize()(), v128 = -1 << *(a5 + 32), v129 = v127 & ~v128, ((*(v104 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) != 0))
        {
          v130 = ~v128;
          while (1)
          {
            v131 = (*(a5 + 48) + 16 * v129);
            v120 = v131[1];
            v132 = *v131 == v117 && v120 == v119;
            if (v132 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v129 = (v129 + 1) & v130;
            if (((*(v104 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          v119, v120, v121, v122, v123, v124, v125, v126;

          v17 = v273;
        }

        else
        {
LABEL_56:
          v119, v120, v121, v122, v123, v124, v125, v126;
          v133 = a7;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = v273;
          if (*((v289 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v289 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v17 = v273;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v288 = v289;
        }
      }

      else
      {
LABEL_32:
      }

      if (v103 == v102)
      {
        goto LABEL_76;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

  v288 = &_swiftEmptyArrayStorage;
LABEL_76:
  a5, v95, v96, v97, v98, v99, v100, v101;
  v17, v185, v186, v187, v188, v189, v190, v191;
  v199 = v288;
  if (v288 >> 62)
  {
    goto LABEL_109;
  }

  v200 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_78:
  v201 = v270;
  if (!v200)
  {
    v199, v192, v193, v194, v195, v196, v197, v198;
    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      *v218 = 0;
      _os_log_impl(&_mh_execute_header, v216, v217, "No orphaned accounts to remove.", v218, 2u);
    }

    v219 = v282;
    swift_beginAccess();
    v220 = *(v219 + 16);
    swift_beginAccess();
    *(v219 + 16) = v220;
    v221 = v283;
    swift_beginAccess();
    v222 = *(v221 + 16);
    swift_beginAccess();
    *(v221 + 16) = v222;
    v223 = swift_allocObject();
    *(v223 + 16) = v277;
    v224 = swift_allocObject();
    v225 = v274;
    *(v224 + 16) = v201;
    *(v224 + 24) = v225;
    *(v224 + 32) = v275 & 1;
    *(v224 + 40) = v219;
    *(v224 + 48) = v221;
    v226 = v276;
    *(v224 + 56) = v223;
    *(v224 + 64) = v226;
    *(v224 + 72) = v269;

    swift_errorRetain();

    sub_1006B9D6C(v278, sub_1006D548C, v224);

LABEL_97:

    return;
  }

  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.default.getter();
  v204 = v199 >> 62;
  if (!os_log_type_enabled(v202, v203))
  {
    goto LABEL_99;
  }

  v31 = swift_slowAlloc();
  a7 = swift_slowAlloc();
  v298 = a7;
  *v31 = 136315138;
  if (!v204)
  {
    v205 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_82;
  }

  while (2)
  {
    v205 = _CocoaArrayWrapper.endIndex.getter();
LABEL_82:
    v206 = &_swiftEmptyArrayStorage;
    if (!v205)
    {
      goto LABEL_98;
    }

    v278 = a7;
    v282 = v31;
    LODWORD(v283) = v203;
    v284 = v202;
    v285 = v204;
    v297 = &_swiftEmptyArrayStorage;
    v286 = v205;
    sub_100026EF4(0, v205 & ~(v205 >> 63), 0);
    v207 = v286;
    if (v286 < 0)
    {
      __break(1u);
LABEL_117:

      __break(1u);
    }

    a7 = 0;
    v206 = v297;
    v208 = v199 & 0xC000000000000001;
    v287 = v199 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v209 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        v200 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_78;
      }

      if (v208)
      {
        v210 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a7 >= *(v287 + 16))
        {
          goto LABEL_108;
        }

        v210 = *(v199 + 8 * a7 + 32);
      }

      v211 = v210;
      v296 = v210;
      sub_1006B99DC(&v296, &aBlock);

      v212 = aBlock;
      v31 = v291;
      v297 = v206;
      v214 = *v206->clientIdentity;
      v213 = *&v206->clientIdentity[8];
      if (v214 >= v213 >> 1)
      {
        sub_100026EF4((v213 > 1), v214 + 1, 1);
        v207 = v286;
        v206 = v297;
      }

      *v206->clientIdentity = v214 + 1;
      v215 = v206 + 16 * v214;
      *(v215 + 4) = v212;
      *(v215 + 5) = v31;
      ++a7;
      v199 = v288;
    }

    while (v209 != v207);
    v204 = v285;
    v202 = v284;
    v203 = v283;
    v31 = v282;
    a7 = v278;
LABEL_98:
    aBlock = &v206->super.isa;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v227 = BidirectionalCollection<>.joined(separator:)();
    v229 = v228;
    v206, v228, v230, v231, v232, v233, v234, v235;
    v236 = sub_10000668C(v227, v229, &v298);
    v229, v237, v238, v239, v240, v241, v242, v243;
    *(v31 + 4) = v236;
    _os_log_impl(&_mh_execute_header, v202, v203, "Removing orphaned accounts {accounts: %s}", v31, 0xCu);
    sub_10000607C(a7);

LABEL_99:

    v244 = objc_allocWithZone(REMSaveRequest);
    v245 = [v244 initWithStore:v279];
    v199, v246, v247, v248, v249, v250, v251, v252;
    if (v204)
    {
      v260 = _CocoaArrayWrapper.endIndex.getter();
      if (!v260)
      {
        goto LABEL_111;
      }

LABEL_101:
      if (v260 >= 1)
      {
        v261 = 0;
        do
        {
          if ((v199 & 0xC000000000000001) != 0)
          {
            v262 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v262 = *(v199 + 8 * v261 + 32);
          }

          v263 = v262;
          ++v261;
          v264 = [v245 updateAccount:v262];
          [v264 removeFromStore];
        }

        while (v260 != v261);
        goto LABEL_111;
      }

      __break(1u);
      continue;
    }

    break;
  }

  v260 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v260)
  {
    goto LABEL_101;
  }

LABEL_111:
  v199, v253, v254, v255, v256, v257, v258, v259;
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v265 = qword_100974CC8;
  v266 = swift_allocObject();
  v267 = v281;
  *(v266 + 16) = sub_1006D4AF8;
  *(v266 + 24) = v267;
  v294 = sub_1006D5524;
  v295 = v266;
  aBlock = _NSConcreteStackBlock;
  v291 = 1107296256;
  v292 = sub_100042968;
  v293 = &unk_1008FC580;
  v268 = _Block_copy(&aBlock);

  [v245 saveWithQueue:v265 completion:v268];

  _Block_release(v268);
}

void sub_1006D30BC(void *a1, char **a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, int a5, _TtC7remindd19RDXPCStorePerformer *a6, _TtC7remindd19RDXPCStorePerformer *a7)
{
  LODWORD(v9) = a5;
  v230 = a1;
  v236 = type metadata accessor for UUID();
  v231 = *(v236 - 8);
  __chkstk_darwin(v236, v13);
  v235 = (&v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v229 = a4;
  *(v15 + 32) = a4;
  *(v15 + 40) = v9 & 1;
  *(v15 + 48) = a6;
  *(v15 + 56) = a7;
  v233 = v15;
  v16 = qword_1009366E8;

  v17 = a3;

  if (v16 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    v234 = sub_100006654(v18, qword_10094FB70);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RDAccountUtils: Trying to remove orphaned accounts", v21, 2u);
    }

    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 accountStore];

    v232 = v23;
    v24 = [v23 aa_accountsEnabledForDataclass:kAccountDataclassReminders];
    if (!v24)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "RDAccountUtils: Couldn't fetch accounts from ACAccountStore. Not able to determine orphaned accounts.", v62, 2u);
      }

      v63 = objc_opt_self();
      v64 = String._bridgeToObjectiveC()();
      v65 = [v63 internalErrorWithDebugDescription:v64];

      v66 = swift_allocObject();
      v67 = v229;
      *(v66 + 16) = a2;
      *(v66 + 24) = v67;
      *(v66 + 32) = v9 & 1;
      *(v66 + 40) = a6;
      *(v66 + 48) = a7;
      *(v66 + 56) = 0;
      *(v66 + 64) = v65;

      v68 = v65;
      sub_1006B9D6C(v17, sub_1006D42FC, v66);

      goto LABEL_27;
    }

    v25 = v24;
    v223 = v17;
    v224 = a7;
    v225 = a2;
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v242 = _swiftEmptySetSingleton;
    if (v26 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v226 = v9;
    v227 = a6;
    if (v34)
    {
      v9 = 0;
      v17 = (v26 & 0xC000000000000001);
      v35 = (v26 & 0xFFFFFFFFFFFFFF8);
      a2 = &selRef_attachmentRepresentationAndReturnError_;
      v239 = (v26 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v17)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *v35->clientIdentity)
          {
            goto LABEL_65;
          }

          v36 = *(v26 + 8 * v9 + 32);
        }

        v37 = v36;
        a7 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v36 a2[271]])
        {
          a6 = v34;
          v38 = [v37 identifier];
          if (!v38)
          {
            goto LABEL_112;
          }

          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          sub_100378434(&aBlock, v40, v42);
          v245, v43, v44, v45, v46, v47, v48, v49;
          v50 = sub_1006BFC1C(v37);
          if (v51)
          {
            sub_100378434(&aBlock, v50, v51);

            v245, v52, v53, v54, v55, v56, v57, v58;
          }

          else
          {
          }

          v34 = a6;
          v35 = v239;
          a2 = &selRef_attachmentRepresentationAndReturnError_;
        }

        else
        {
        }

        ++v9;
        if (a7 == v34)
        {
          v59 = v242;
          a6 = v227;
          LOBYTE(v9) = v226;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v59 = _swiftEmptySetSingleton;
LABEL_29:
    v26, v27, v28, v29, v30, v31, v32, v33;
    aBlock = 0;
    v69 = [v230 fetchAccountsIncludingInactive:1 error:&aBlock];
    v70 = aBlock;
    if (!v69)
    {
      v111 = aBlock;
      v59, v112, v113, v114, v115, v116, v117, v118;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        aBlock = v122;
        *v121 = 136315138;
        swift_getErrorValue();
        v123 = Error.localizedDescription.getter();
        v125 = v124;
        v9 = sub_10000668C(v123, v124, &aBlock);
        v125, v126, v127, v128, v129, v130, v131, v132;
        *(v121 + 4) = v9;
        LOBYTE(v9) = v226;
        _os_log_impl(&_mh_execute_header, v119, v120, "Failed to fetch accounts which are no longer signed-in {error: %s}", v121, 0xCu);
        sub_10000607C(v122);
      }

      v133 = v225;
      v134 = v224;
      v135 = objc_opt_self();
      v136 = String._bridgeToObjectiveC()();
      v137 = [v135 internalErrorWithDebugDescription:v136];

      v138 = swift_allocObject();
      v139 = v229;
      *(v138 + 16) = v133;
      *(v138 + 24) = v139;
      *(v138 + 32) = v9 & 1;
      *(v138 + 40) = a6;
      *(v138 + 48) = v134;
      *(v138 + 56) = 0;
      *(v138 + 64) = v137;

      v140 = v137;
      sub_1006B9D6C(v223, sub_1006D547C, v138);

      goto LABEL_27;
    }

    v71 = v69;
    sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v70;

    v242 = &_swiftEmptyArrayStorage;
    if (!(v72 >> 62))
    {
      v17 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v239 = v72;
      if (!v17)
      {
        break;
      }

      goto LABEL_32;
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    v239 = v72;
    if (!v17)
    {
      break;
    }

LABEL_32:
    v9 = 0;
    a2 = (v72 & 0xC000000000000001);
    v238 = v72 & 0xFFFFFFFFFFFFFF8;
    v237 = v72 + 32;
    storeController = v231->storeController;
    a6 = &v59->clientIdentity[40];
    v81 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (a2)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v238 + 16))
        {
          goto LABEL_67;
        }

        v82 = *(v237 + 8 * v9);
      }

      a7 = v82;
      if (__OFADD__(v9++, 1))
      {
        break;
      }

      if (qword_1009366F0 != -1)
      {
        swift_once();
      }

      v84 = off_10094FB88;
      v85 = [(RDXPCStorePerformer *)a7 type];
      if (v84[2] && (v86 = v85, Hasher.init(_seed:)(), Hasher._combine(_:)(v86), v87 = Hasher._finalize()(), v88 = -1 << *(v84 + 32), v89 = v87 & ~v88, ((*(v84 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v89) & 1) != 0))
      {
        v90 = ~v88;
        while (*(v84[6] + 8 * v89) != v86)
        {
          v89 = (v89 + 1) & v90;
          if (((*(v84 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v89) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v231 = v81;
        v91 = [(RDXPCStorePerformer *)a7 objectID];
        v92 = [v91 uuid];

        v93 = v235;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v94 = UUID.uuidString.getter();
        v96 = v95;
        (*storeController)(v93, v236);
        if (*v59->clientIdentity && (Hasher.init(_seed:)(), String.hash(into:)(), v104 = Hasher._finalize()(), v105 = -1 << v59->clientIdentity[16], v106 = v104 & ~v105, ((*(&a6->super.isa + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) != 0))
        {
          v107 = ~v105;
          while (1)
          {
            v108 = (*&v59->clientIdentity[32] + 16 * v106);
            v97 = v108[1];
            v109 = *v108 == v94 && v97 == v96;
            if (v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v106 = (v106 + 1) & v107;
            if (((*(&a6->super.isa + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v96, v97, v98, v99, v100, v101, v102, v103;

          v81 = v231;
        }

        else
        {
LABEL_57:
          v96, v97, v98, v99, v100, v101, v102, v103;
          v110 = a7;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v242 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v81 = v242;
        }
      }

      else
      {
LABEL_33:
      }

      if (v9 == v17)
      {
        goto LABEL_72;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v81 = &_swiftEmptyArrayStorage;
LABEL_72:
  v59, v74, v75, v76, v77, v78, v79, v80;
  v239, v141, v142, v143, v144, v145, v146, v147;
  if (v81 >> 62)
  {
    goto LABEL_104;
  }

  v155 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_74:
  v156 = v225;
  v157 = v224;
  v158 = v223;
  v159 = v227;
  if (!v155)
  {
    v81, v148, v149, v150, v151, v152, v153, v154;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&_mh_execute_header, v175, v176, "No orphaned accounts to remove.", v177, 2u);
    }

    v178 = swift_allocObject();
    v179 = v229;
    *(v178 + 16) = v156;
    *(v178 + 24) = v179;
    *(v178 + 32) = v226 & 1;
    *(v178 + 40) = v159;
    *(v178 + 48) = v157;
    *(v178 + 56) = 0;
    *(v178 + 64) = 0;

    sub_1006B9D6C(v158, sub_1006D547C, v178);

LABEL_27:

    return;
  }

  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.default.getter();
  v162 = v81 >> 62;
  if (!os_log_type_enabled(v160, v161))
  {
    goto LABEL_94;
  }

  v159 = swift_slowAlloc();
  a6 = swift_slowAlloc();
  v243 = a6;
  *v159 = 136315138;
  if (!v162)
  {
    v163 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_78;
  }

  while (2)
  {
    v163 = _CocoaArrayWrapper.endIndex.getter();
LABEL_78:
    v164 = &_swiftEmptyArrayStorage;
    if (!v163)
    {
      goto LABEL_93;
    }

    v229 = a6;
    v231 = v159;
    LODWORD(v234) = v161;
    v235 = v160;
    v236 = v162;
    v241 = &_swiftEmptyArrayStorage;
    v237 = v163;
    sub_100026EF4(0, v163 & ~(v163 >> 63), 0);
    v165 = v237;
    if (v237 < 0)
    {
      __break(1u);
LABEL_112:

      __break(1u);
    }

    v166 = 0;
    v164 = v241;
    v238 = v81 & 0xFFFFFFFFFFFFFF8;
    v239 = (v81 & 0xC000000000000001);
    a6 = v81;
    do
    {
      v167 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        v155 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_74;
      }

      if (v239)
      {
        v168 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v166 >= *(v238 + 16))
        {
          goto LABEL_103;
        }

        v168 = *&v81->clientIdentity[8 * v166 + 16];
      }

      v169 = v168;
      v240 = v168;
      sub_1006B99DC(&v240, &aBlock);

      v170 = aBlock;
      v171 = v245;
      v241 = v164;
      v173 = *v164->clientIdentity;
      v172 = *&v164->clientIdentity[8];
      if (v173 >= v172 >> 1)
      {
        sub_100026EF4((v172 > 1), v173 + 1, 1);
        v165 = v237;
        v164 = v241;
      }

      *v164->clientIdentity = v173 + 1;
      v174 = v164 + 16 * v173;
      *(v174 + 4) = v170;
      *(v174 + 5) = v171;
      ++v166;
      v81 = a6;
    }

    while (v167 != v165);
    v162 = v236;
    v160 = v235;
    v161 = v234;
    v159 = v231;
    a6 = v229;
LABEL_93:
    aBlock = &v164->super.isa;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v180 = BidirectionalCollection<>.joined(separator:)();
    v182 = v181;
    v164, v181, v183, v184, v185, v186, v187, v188;
    v189 = sub_10000668C(v180, v182, &v243);
    v182, v190, v191, v192, v193, v194, v195, v196;
    *(v159 + 4) = v189;
    _os_log_impl(&_mh_execute_header, v160, v161, "Removing orphaned accounts {accounts: %s}", v159, 0xCu);
    sub_10000607C(a6);

LABEL_94:

    v197 = objc_allocWithZone(REMSaveRequest);
    v198 = [v197 initWithStore:v230];
    v81, v199, v200, v201, v202, v203, v204, v205;
    if (v162)
    {
      v213 = _CocoaArrayWrapper.endIndex.getter();
      if (!v213)
      {
        goto LABEL_106;
      }

LABEL_96:
      if (v213 >= 1)
      {
        v214 = 0;
        do
        {
          if ((v81 & 0xC000000000000001) != 0)
          {
            v215 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v215 = *&v81->clientIdentity[8 * v214 + 16];
          }

          v216 = v215;
          ++v214;
          v217 = [v198 updateAccount:v215];
          [v217 removeFromStore];
        }

        while (v213 != v214);
        goto LABEL_106;
      }

      __break(1u);
      continue;
    }

    break;
  }

  v213 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v213)
  {
    goto LABEL_96;
  }

LABEL_106:
  v81, v206, v207, v208, v209, v210, v211, v212;
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v218 = qword_100974CC8;
  v219 = swift_allocObject();
  v220 = v233;
  *(v219 + 16) = sub_1006D42E8;
  *(v219 + 24) = v220;
  v248 = sub_1006D4300;
  v249 = v219;
  aBlock = _NSConcreteStackBlock;
  v245 = 1107296256;
  v246 = sub_100042968;
  v247 = &unk_1008FBC48;
  v221 = _Block_copy(&aBlock);

  [v198 saveWithQueue:v218 completion:v221];

  _Block_release(v221);
}

void sub_1006D4308(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (gDADOperationQueue)
  {
    v21 = v10;
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v20 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    aBlock[4] = sub_1006D46E4;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FBCC0;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v21);
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094FB70);
    v21 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v21, v17, "DADMain is disabled after we stop monitoring agents. Will not try re-starting agents.", v18, 2u);
    }

    v19 = v21;
  }
}

uint64_t sub_1006D46EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_1006BA3CC();
  if ((v2 & 1) == 0)
  {
    sub_1006D4308(v1);
  }

  return v3(v4, v5);
}

uint64_t sub_1006D483C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006D4884()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 57);
  v6 = *(v0 + 64);
  sub_1006BA3CC();
  if ((v2 & 1) == 0)
  {
    sub_1006D4308(v1);
  }

  return v3(v4, v5, v6);
}

uint64_t sub_1006D494C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1006D4A14()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006D4A84()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006D4B38()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1006D4BA8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1006D4C34()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006D4CE0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006D4DA4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006D4E08(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 80, 7);
}

uint64_t sub_1006D4E98(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 56, 7);
}

uint64_t sub_1006D4EF0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1006D4F80()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006D5000()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006D5048()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_1006BA3CC();
  if ((v2 & 1) == 0)
  {
    sub_1006D4308(v1);
  }

  return v3(v4);
}

uint64_t sub_1006D50A8(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t initializeWithCopy for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

uint64_t assignWithCopy for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 16) = *(a2 + 16);
  v12 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

__n128 initializeWithTake for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a2 + 8);
  v11 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  v12 = *(a2 + 24);
  v13 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v12;
  v13, v14, v15, v16, v17, v18, v19, v20;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAccountUtils.AccountInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
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

uint64_t storeEnumTagSinglePayload for RDAccountUtils.AccountInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006D5390()
{
  result = qword_10094FE60;
  if (!qword_10094FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE60);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006D552C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3, v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v50 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v8 & ~(v8 >> 63), 0);
    v45 = v50;
    if (v44)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v47 = result;
    v48 = v10;
    v49 = v44 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v40 = v8;
      v41 = v43 + 32;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v38 = a1 + 56;
      v39 = v12;
      v36[1] = v1;
      v37 = a1 + 64;
      while (v11 < v8)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v47;
        v16 = v48;
        v17 = v49;
        v18 = a1;
        sub_100411AE4(v47, v48, v49, a1);
        v20 = v19;
        v21 = [v19 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = v45;
        v50 = v45;
        v24 = *v45->clientIdentity;
        v23 = *&v45->clientIdentity[8];
        if (v24 >= v23 >> 1)
        {
          sub_100253258((v23 > 1), v24 + 1, 1);
          v22 = v50;
        }

        *v22->clientIdentity = v24 + 1;
        v25 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = v22;
        result = (*(v43 + 32))(v22 + v25 + *(v43 + 72) * v24, v7, v42);
        if (v44)
        {
          if (!v17)
          {
            goto LABEL_42;
          }

          a1 = v18;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v40;
          sub_1000F5104(&qword_100946070, &qword_1007A7668);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v13(v46, 0);
          if (v11 == v8)
          {
LABEL_34:
            sub_1006B0370(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v18;
          v26 = (1 << *(v18 + 32));
          if (v15 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v15 >> 6;
          v28 = *(v38 + 8 * (v15 >> 6));
          if (((v28 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v18 + 36) != v16)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v15 & 0x3F));
          if (v29)
          {
            v26 = (__clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < &v26->storeProvider[1] >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_1006B0370(v15, v16, 0);
                v26 = (__clz(__rbit64(v33)) + v30);
                goto LABEL_33;
              }
            }

            result = sub_1006B0370(v15, v16, 0);
          }

LABEL_33:
          v35 = *(v18 + 36);
          v47 = v26;
          v48 = v35;
          v49 = 0;
          v8 = v40;
          if (v11 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1006D5938()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v196 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v199 = &v194 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = (&v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v15);
  v17 = &v194 - v16;
  v18 = _s10PredicatesOMa_2(0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v22 - 8, v23);
  v195 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v202 = &v194 - v27;
  __chkstk_darwin(v28, v29);
  v31 = &v194 - v30;
  v209 = &_swiftEmptyArrayStorage;
  sub_1006D6D24(v1, v21);
  v32 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v198 = (*(*(v32 - 8) + 48))(v21, 1, v32);
  v203 = v2;
  v206 = v31;
  v200 = v3;
  if (v198 == 1)
  {
    (*(v3 + 56))(v31, 1, 1, v2);
LABEL_5:
    v201 = 0;
LABEL_6:
    v197 = 0;
    goto LABEL_7;
  }

  (*(v10 + 32))(v17, v21, v9);
  (*(v10 + 16))(v13, v17, v9);
  v33 = (*(v10 + 88))(v13, v9);
  if (v33 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v10 + 8))(v17, v9);
    (*(v10 + 96))(v13, v9);
    v34 = v203;
    (*(v3 + 32))(v31, v13, v203);
    (*(v3 + 56))(v31, 0, 1, v34);
    goto LABEL_5;
  }

  if (v33 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v10 + 96))(v13, v9);
    v170 = *v13;
    (*(v3 + 56))(v31, 1, 1, v203);
    sub_100393DD8(v170);
    v201 = v171;
    v170, v172, v173, v174, v175, v176, v177, v178;
    (*(v10 + 8))(v17, v9);
    goto LABEL_6;
  }

  if (v33 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    (*(v10 + 8))(v17, v9);
    v193 = *(v3 + 56);
    v197 = 1;
    v193(v31, 1, 1, v203);
    v201 = 0;
LABEL_7:
    sub_1000F5104(&qword_10094FE70, &unk_1007B5CC8);
    inited = swift_initStackObject();
    v208 = xmmword_100791300;
    *(inited + 16) = xmmword_100791300;
    KeyPath = swift_getKeyPath();
    v37 = sub_1003918D0(KeyPath, 1);

    *(inited + 32) = v37;
    sub_100271FE4(inited);
    v38 = swift_initStackObject();
    v207 = xmmword_100791340;
    *(v38 + 16) = xmmword_100791340;
    *(v38 + 32) = sub_10001035C(0);
    *(v38 + 40) = sub_10029EB64();
    sub_100271FE4(v38);
    v39 = swift_initStackObject();
    *(v39 + 16) = v207;
    v40 = sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v41 = swift_allocObject();
    *(v41 + 16) = v208;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 32) = 0xD000000000000024;
    *(v41 + 40) = 0x80000001007FEF30;
    v42 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v41, v44, v45, v46, v47, v48, v49, v50;
    v51 = objc_opt_self();
    v52 = [v51 predicateWithFormat:v42 argumentArray:isa];

    *(v39 + 32) = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = v208;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 32) = 0xD000000000000029;
    *(v53 + 40) = 0x80000001007FEF60;
    v54 = String._bridgeToObjectiveC()();
    v55 = Array._bridgeToObjectiveC()().super.isa;
    v53, v56, v57, v58, v59, v60, v61, v62;
    v63 = [v51 predicateWithFormat:v54 argumentArray:v55];

    *(v39 + 40) = v63;
    sub_100271FE4(v39);
    v64 = swift_initStackObject();
    *(v64 + 16) = v208;
    v204 = v40;
    v65 = swift_allocObject();
    *(v65 + 16) = v208;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 32) = 0xD000000000000010;
    *(v65 + 40) = 0x80000001007FEF90;
    v66 = String._bridgeToObjectiveC()();
    v67 = Array._bridgeToObjectiveC()().super.isa;
    v65, v68, v69, v70, v71, v72, v73, v74;
    v205 = v51;
    v75 = [v51 predicateWithFormat:v66 argumentArray:v67];

    *(v64 + 32) = v75;
    sub_100271FE4(v64);
    v76 = swift_initStackObject();
    *(v76 + 16) = v208;
    v77 = swift_getKeyPath();
    v78 = [objc_opt_self() localInternalAccountID];
    v79 = [v78 uuid];

    v80 = v199;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = type metadata accessor for UUID();
    (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
    v82 = sub_1003EDB44(v77, v80);

    *(v76 + 32) = v82;
    sub_100271FE4(v76);
    if (v197)
    {
      v83 = swift_initStackObject();
      *(v83 + 16) = v208;
      v84 = swift_allocObject();
      *(v84 + 16) = v208;
      *(v84 + 56) = &type metadata for String;
      *(v84 + 32) = 0xD000000000000012;
      *(v84 + 40) = 0x80000001007B5D40;
      v85 = String._bridgeToObjectiveC()();
      v86 = Array._bridgeToObjectiveC()().super.isa;
      v84, v87, v88, v89, v90, v91, v92, v93;
      v94 = [v205 predicateWithFormat:v85 argumentArray:v86];

      *(v83 + 32) = v94;
      sub_100271FE4(v83);
    }

    v95 = v200;
    if (v198 == 1)
    {
      v96 = swift_initStackObject();
      *(v96 + 16) = v208;
      swift_getKeyPath();
      v97 = sub_1003EDB6C();

      *(v96 + 32) = v97;
      sub_100271FE4(v96);
    }

    v98 = v202;
    sub_10012F78C(v206, v202);
    v99 = v203;
    if ((*(v95 + 48))(v98, 1, v203) == 1)
    {
      sub_1000050A4(v98, &unk_100938850, qword_100795AE0);
      v100 = v201;
      if (!v201)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v101 = v196;
      (*(v95 + 32))(v196, v98, v99);
      v102 = swift_initStackObject();
      *(v102 + 16) = v208;
      v103 = swift_initStackObject();
      *(v103 + 16) = v207;
      v104 = swift_allocObject();
      *(v104 + 16) = v208;
      *(v104 + 56) = &type metadata for String;
      *(v104 + 32) = 0xD000000000000012;
      *(v104 + 40) = 0x80000001007B5D40;
      v105 = String._bridgeToObjectiveC()();
      v106 = Array._bridgeToObjectiveC()().super.isa;
      v104, v107, v108, v109, v110, v111, v112, v113;
      v114 = [v205 predicateWithFormat:v105 argumentArray:v106];

      *(v103 + 32) = v114;
      v115 = swift_getKeyPath();
      v116 = v195;
      (*(v95 + 16))(v195, v101, v99);
      (*(v95 + 56))(v116, 0, 1, v99);
      v117 = sub_1003EDC5C(v115, v116);

      *(v103 + 40) = v117;
      *(v102 + 32) = sub_100025060(v103);
      sub_100271FE4(v102);
      (*(v95 + 8))(v101, v99);
      v100 = v201;
      if (!v201)
      {
LABEL_21:
        v191 = sub_10000C2B0();
        sub_1000050A4(v206, &unk_100938850, qword_100795AE0);
        return v191;
      }
    }

    v118 = sub_1006D552C(v100);
    v100, v119, v120, v121, v122, v123, v124, v125;
    if (*v118->clientIdentity)
    {
      v133 = swift_initStackObject();
      *(v133 + 16) = v208;
      v134 = swift_initStackObject();
      *(v134 + 16) = v207;
      v135 = swift_allocObject();
      *(v135 + 16) = v208;
      *(v135 + 56) = &type metadata for String;
      *(v135 + 32) = 0xD000000000000012;
      *(v135 + 40) = 0x80000001007B5D40;
      v136 = String._bridgeToObjectiveC()();
      v137 = Array._bridgeToObjectiveC()().super.isa;
      v135, v138, v139, v140, v141, v142, v143, v144;
      v145 = v205;
      v146 = [v205 predicateWithFormat:v136 argumentArray:v137];

      *(v134 + 32) = v146;
      swift_getKeyPath();
      v147 = sub_10004FAEC(v118);
      v118, v148, v149, v150, v151, v152, v153, v154;
      v155 = swift_allocObject();
      *(v155 + 16) = v207;
      v156 = sub_10030D838(v155);
      *(v155 + 56) = &type metadata for String;
      *(v155 + 32) = v156;
      *(v155 + 40) = v157;
      *(v155 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
      *(v155 + 64) = v147;
      v158 = String._bridgeToObjectiveC()();
      v159 = Array._bridgeToObjectiveC()().super.isa;
      v155, v160, v161, v162, v163, v164, v165, v166;
      v167 = [v145 predicateWithFormat:v158 argumentArray:v159];

      *(v134 + 40) = v167;
      v168 = sub_100025060(v134);
      v169 = v133;
      *(v133 + 32) = v168;
    }

    else
    {
      v118, v126, v127, v128, v129, v130, v131, v132;
      v179 = swift_initStackObject();
      *(v179 + 16) = v208;
      v180 = swift_allocObject();
      *(v180 + 16) = v208;
      *(v180 + 56) = &type metadata for String;
      *(v180 + 32) = 0xD000000000000012;
      *(v180 + 40) = 0x80000001007B5D40;
      v181 = String._bridgeToObjectiveC()();
      v182 = Array._bridgeToObjectiveC()().super.isa;
      v180, v183, v184, v185, v186, v187, v188, v189;
      v190 = [v205 predicateWithFormat:v181 argumentArray:v182];

      v169 = v179;
      *(v179 + 32) = v190;
    }

    sub_100271FE4(v169);
    goto LABEL_21;
  }

  if (v33 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    (*(v10 + 8))(v17, v9);
    (*(v3 + 56))(v31, 1, 1, v203);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006D68EC()
{
  sub_100026EF4(0, 4, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v3;
  v4 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v4 + 4) = 0x696669746E656469;
  *(v4 + 5) = 0xEA00000000007265;
  v5 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v6;
  v7 = &_swiftEmptyArrayStorage + 16 * v3;
  *(v7 + 4) = 0x737574617473;
  *(v7 + 5) = 0xE600000000000000;
  v9 = *_swiftEmptyArrayStorage.clientIdentity;
  v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v10;
  v11 = &_swiftEmptyArrayStorage + 16 * v9;
  *(v11 + 4) = 0xD000000000000014;
  *(v11 + 5) = 0x80000001007E8B20;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v13;
  v14 = &_swiftEmptyArrayStorage + 16 * v10;
  strcpy(v14 + 32, "assignedDate");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006D6C38()
{
  sub_100026EF4(0, 1, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v2 + 1;
  v3 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v3 + 4) = 0x7265646E696D6572;
  *(v3 + 5) = 0xE800000000000000;
  return result;
}

uint64_t _s10PredicatesOMa_2(uint64_t a1)
{
  result = qword_10094FEE8;
  if (!qword_10094FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006D6D24(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1006D6D94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1006D6F24(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_1006D6FE0(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1006D7134(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_1000050A4(a1, &qword_10094FE68, &qword_1007B5CC0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_1006D7310(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1006D7464(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_1000050A4(a1, &qword_10094FE68, &qword_1007B5CC0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1006D7668(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_1006D76DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_1006D7758(uint64_t a1)
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_1006D77D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FEF8);
  v1 = sub_100006654(v0, qword_10094FEF8);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1006D78EC(uint64_t a1@<X8>)
{
  v3 = [v1 rawValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  REMFeatureFlags.init(rawValue:)();
  v4 = type metadata accessor for REMFeatureFlags();
  if ((*(*(v4 - 8) + 48))(a1, 1, v4) == 1)
  {
    if (qword_1009366F8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094FEF8);
    v6 = v1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      v10 = [v6 rawValue];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v23);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "RDFeatureFlagsObjCWrapper: Attempt to unwrap to a feature flag with unknown rawValue: %s", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

void sub_1006D7B14(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 rawValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  REMFeatureFlags.init(rawValue:)();
  v5 = type metadata accessor for REMFeatureFlags();
  if ((*(*(v5 - 8) + 48))(a1, 1, v5) == 1)
  {
    if (qword_1009366F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094FEF8);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      v10 = [v2 rawValue];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v23);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "RDFeatureFlagsObjCWrapper: Attempt to unwrap to a feature flag with unknown rawValue: %s", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

Swift::Bool __swiftcall RDFeatureFlagsObjCWrapper.isEnabled()()
{
  v0 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1006D78EC(&v8 - v2);
  v4 = type metadata accessor for REMFeatureFlags();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1006D8954(v3);
    v6 = 0;
  }

  else
  {
    v6 = REMFeatureFlags.isEnabled.getter();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

id sub_1006D80C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDFeatureFlagsTemporaryOverrideObjcWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _sSo25RDFeatureFlagsObjCWrapperC7reminddE014wrappedFeatureB04withSo010REMFeaturebC9CWrapping_pSgSS_tFZ_0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v43 - v10;

  REMFeatureFlags.init(rawValue:)();
  v12 = type metadata accessor for REMFeatureFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    if (qword_1009366F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094FEF8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    a2, v18, v19, v20, v21, v22, v23, v24;
    if (os_log_type_enabled(v16, v17))
    {
      v25 = swift_slowAlloc();
      v43 = v13;
      v26 = v25;
      v27 = swift_slowAlloc();
      v28 = a1;
      v29 = v27;
      v44 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10000668C(v28, a2, &v44);
      _os_log_impl(&_mh_execute_header, v16, v17, "RDFeatureFlagsObjCWrapper: Attempt to wrap a feature flag with unknown rawValue: %s", v26, 0xCu);
      sub_10000607C(v29);

      v13 = v43;
    }
  }

  sub_1006D89E0(v11, v7);
  if (v14(v7, 1, v12) == 1)
  {
    sub_1006D8954(v11);
    sub_1006D8954(v7);
    return 0;
  }

  else
  {
    REMFeatureFlags.rawValue.getter();
    v32 = v31;
    v33 = objc_allocWithZone(RDFeatureFlagsObjCWrapper);
    v34 = String._bridgeToObjectiveC()();
    v32, v35, v36, v37, v38, v39, v40, v41;
    v42 = [v33 initWithRawValue:v34];

    sub_1006D8954(v11);
    (*(v13 + 8))(v7, v12);
    return v42;
  }
}

id _sSo25RDFeatureFlagsObjCWrapperC7reminddE17temporaryOverride018withEnabledFeatureB008disabledjB0So010REMFeatureb9TemporaryG12ObjcWrapping_pSaySo0lbC9CWrapping_pG_AItFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v65 - v10;
  v12 = type metadata accessor for REMFeatureFlags();
  v73 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v72 = &v65 - v17;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v68 = v7;
  for (i = a2; v18; i = a2)
  {
    v19 = 0;
    v20 = a1 & 0xC000000000000001;
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = (v73 + 48);
    v71 = v73 + 32;
    v74 = &_swiftEmptyArrayStorage;
    v66 = a1 & 0xC000000000000001;
    v67 = a1;
    while (v20)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_1006D7B14(v11);
      swift_unknownObjectRelease();
      if ((*v21)(v11, 1, v12) == 1)
      {
        sub_1006D8954(v11);
      }

      else
      {
        v23 = v12;
        v24 = a2;
        v25 = v18;
        v26 = *v71;
        v27 = v23;
        (*v71)(v72, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1003686D4(0, *v74->clientIdentity + 1, 1, v74);
        }

        v29 = *v74->clientIdentity;
        v28 = *&v74->clientIdentity[8];
        if (v29 >= v28 >> 1)
        {
          v74 = sub_1003686D4((v28 > 1), v29 + 1, 1, v74);
        }

        v30 = v73;
        v31 = v74;
        *v74->clientIdentity = v29 + 1;
        v7 = v27;
        v26(v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29, v72, v27);
        v18 = v25;
        v20 = v66;
        a1 = v67;
        a2 = v24;
        v12 = v7;
      }

      ++v19;
      if (v22 == v18)
      {
        goto LABEL_21;
      }
    }

    if (v19 >= *(a2 + 16))
    {
      goto LABEL_18;
    }

    v7 = *(a1 + 8 * v19 + 32);
    swift_unknownObjectRetain();
    v22 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v68 = v7;
  }

  v74 = &_swiftEmptyArrayStorage;
LABEL_21:
  v32 = i;
  if (i >> 62)
  {
    goto LABEL_39;
  }

  v33 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v68;
  if (v33)
  {
LABEL_23:
    v35 = 0;
    v71 = v32 & 0xFFFFFFFFFFFFFF8;
    v72 = (v32 & 0xC000000000000001);
    v36 = (v73 + 48);
    v37 = (v73 + 32);
    v38 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v72)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v35 >= *(v71 + 16))
        {
          goto LABEL_38;
        }

        swift_unknownObjectRetain();
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v33 = _CocoaArrayWrapper.endIndex.getter();
          v34 = v68;
          if (!v33)
          {
            break;
          }

          goto LABEL_23;
        }
      }

      sub_1006D7B14(v34);
      swift_unknownObjectRelease();
      if ((*v36)(v34, 1, v12) == 1)
      {
        sub_1006D8954(v34);
      }

      else
      {
        v40 = v34;
        v41 = *v37;
        (*v37)(v70, v40, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1003686D4(0, *v38->clientIdentity + 1, 1, v38);
        }

        v43 = *v38->clientIdentity;
        v42 = *&v38->clientIdentity[8];
        if (v43 >= v42 >> 1)
        {
          v38 = sub_1003686D4((v42 > 1), v43 + 1, 1, v38);
        }

        *v38->clientIdentity = v43 + 1;
        v41(v38 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v43, v70, v12);
        v34 = v68;
        v32 = i;
      }

      ++v35;
      if (v39 == v33)
      {
        goto LABEL_41;
      }
    }
  }

  v38 = &_swiftEmptyArrayStorage;
LABEL_41:
  v44 = v74;
  v45 = static REMFeatureFlags.override(enabled:disabled:)();
  v47 = v46;
  v44, v46, v48, v49, v50, v51, v52, v53;
  v38, v54, v55, v56, v57, v58, v59, v60;
  v61 = type metadata accessor for RDFeatureFlagsTemporaryOverrideObjcWrapper();
  v62 = objc_allocWithZone(v61);
  v63 = &v62[OBJC_IVAR____TtC7remindd42RDFeatureFlagsTemporaryOverrideObjcWrapper_backing];
  *v63 = v45;
  v63[1] = v47;
  v75.receiver = v62;
  v75.super_class = v61;
  return objc_msgSendSuper2(&v75, "init");
}

uint64_t sub_1006D8954(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D89E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D8A50(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v128 = a4;
  v129 = a2;
  v130 = a3;
  v133 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v124 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v124 - v17;
  *&v21 = __chkstk_darwin(v19, v20).n128_u64[0];
  v23 = &v124 - v22;
  v24 = [v4 identifier];
  if (!v24)
  {
    v73 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v75 = String._bridgeToObjectiveC()();
    [v73 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v75];

    return swift_willThrow();
  }

  v25 = v24;
  v131 = ObjectType;
  v132 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v23;
  v27 = *(v7 + 32);
  v27(v26, v18, v6);
  v28 = [v4 account];
  if (!v28)
  {
    v76 = objc_opt_self();
    v77 = swift_getObjCClassFromMetadata();
    v78 = String._bridgeToObjectiveC()();
    [v76 unexpectedNilPropertyWithClass:v77 property:v78];

    swift_willThrow();
    return (*(v7 + 8))(v26, v6);
  }

  v29 = v4;
  v126 = v7;
  v127 = v26;
  v30 = v28;
  v31 = [v28 identifier];
  if (!v31)
  {
    v79 = objc_opt_self();
    v80 = swift_getObjCClassFromMetadata();
    v81 = String._bridgeToObjectiveC()();
    [v79 unexpectedNilPropertyWithClass:v80 property:v81];

    swift_willThrow();
    return (*(v126 + 8))(v127, v6);
  }

  v125 = v30;
  v32 = v31;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v6;
  v27(v132, v10, v6);
  static REMFileDigester.sha512Sum(url:)();
  if (!v34)
  {
    v134 = 0;
    v135 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v135, v82, v83, v84, v85, v86, v87, v88;
    v134 = 0xD000000000000020;
    v135 = 0x80000001007FF040;
    v89 = [v4 remObjectID];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 stringRepresentation];

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
    }

    else
    {
      v94 = 0xE300000000000000;
      v92 = 4079420;
    }

    v102 = v126;
    v103 = v132;
    v104 = objc_opt_self();
    v105._countAndFlagsBits = v92;
    v105._object = v94;
    String.append(_:)(v105);
    v94, v106, v107, v108, v109, v110, v111, v112;
    v113 = v135;
    v114 = String._bridgeToObjectiveC()();
    v113, v115, v116, v117, v118, v119, v120, v121;
    [v104 internalErrorWithDebugDescription:v114];

    swift_willThrow();
    v98 = *(v102 + 8);
    v98(v103, v6);
    return (v98)(v127, v6);
  }

  v35 = v34;
  v36 = [v4 storeControllerManagedObjectContext];
  if (!v36)
  {
    v35, v37, v38, v39, v40, v41, v42, v43;
    v95 = objc_opt_self();
    v96 = swift_getObjCClassFromMetadata();
    v97 = String._bridgeToObjectiveC()();
    [v95 unexpectedNilPropertyWithClass:v96 property:v97];

    swift_willThrow();
    v98 = *(v126 + 8);
    v98(v132, v6);
    return (v98)(v127, v6);
  }

  v44 = v36;
  v45 = [v36 storeController];
  v53 = v126;
  v124 = v45;
  if (v45)
  {
    v131 = v44;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v55 = UUID._bridgeToObjectiveC()().super.isa;
    v56 = String._bridgeToObjectiveC()();
    v57 = String._bridgeToObjectiveC()();
    v35, v58, v59, v60, v61, v62, v63, v64;
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v134 = 0;
    v68 = [v124 updateAttachmentFile:isa accountID:v55 fileName:v56 sha512Sum:v57 fileURL:v66 keepSource:v128 & 1 error:&v134];

    if (v68)
    {
      v69 = v134;
      v70 = String._bridgeToObjectiveC()();
      [v29 setFileName:v70];

      v71 = *(v53 + 8);
      v71(v132, v33);
      return (v71)(v127, v33);
    }

    v122 = v134;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v35, v46, v47, v48, v49, v50, v51, v52;
    v99 = objc_opt_self();
    v100 = swift_getObjCClassFromMetadata();
    v101 = String._bridgeToObjectiveC()();
    [v99 unexpectedNilPropertyWithClass:v100 property:v101];

    swift_willThrow();
  }

  v123 = *(v53 + 8);
  v123(v132, v33);
  return (v123)(v127, v33);
}

uint64_t sub_1006D923C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v76 - v11;
  v13 = type metadata accessor for UUID();
  v80 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v79 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v76 - v18;
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v24 = &v76 - v23;
  v25 = [v3 attachmentTypeRawValue];
  if (!v25 || (v82 = a1, v26 = v25, v27 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v81 = v2, v28 = v27, v30 = v29, v26, v31._countAndFlagsBits = v28, v31._object = v30, v32 = _findStringSwitchCase(cases:string:)(&off_1008DD7E8, v31), v30, v33, v34, v35, v36, v37, v38, v39, v40 = v32 - 1, a1 = v82, v40 > 1))
  {
    v50 = type metadata accessor for URL();
    return (*(*(v50 - 8) + 56))(a1, 1, 1, v50);
  }

  v41 = [v3 identifier];
  if (!v41)
  {
    goto LABEL_15;
  }

  v42 = v41;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v80;
  v77 = *(v80 + 32);
  v77(v24, v19, v13);
  v44 = [v3 fileName];
  if (!v44)
  {
    (*(v43 + 8))(v24, v13);
LABEL_15:
    v55 = type metadata accessor for URL();
    return (*(*(v55 - 8) + 56))(v82, 1, 1, v55);
  }

  v45 = v44;
  v46 = [v3 account];
  if (!v46)
  {

    (*(v43 + 8))(v24, v13);
    (*(v43 + 56))(v12, 1, 1, v13);
LABEL_14:
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
    goto LABEL_15;
  }

  v76 = v45;
  v47 = v46;
  v48 = [v46 identifier];

  if (v48)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v52 = v80;
  (*(v80 + 56))(v8, v49, 1, v13);
  sub_100100FB4(v8, v12);
  v53 = (*(v52 + 48))(v12, 1, v13);
  v54 = v76;
  if (v53 == 1)
  {
    (*(v52 + 8))(v24, v13);

    goto LABEL_14;
  }

  v77(v79, v12, v13);
  v56 = [v3 storeControllerManagedObjectContext];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 storeController];
    if (v58)
    {
      v59 = v58;
      v60 = v54;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v62 = UUID._bridgeToObjectiveC()().super.isa;
      v63 = [v3 sha512Sum];
      v64 = v60;
      v65 = [v59 URLForAttachmentFile:isa accountID:v62 fileName:v60 sha512Sum:v63];

      v66 = v82;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = *(v80 + 8);
      v67(v79, v13);
      v67(v24, v13);
      v68 = type metadata accessor for URL();
      return (*(*(v68 - 8) + 56))(v66, 0, 1, v68);
    }

    v72 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v74 = String._bridgeToObjectiveC()();
    [v72 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v74];

    swift_willThrow();
  }

  else
  {

    v69 = objc_opt_self();
    v70 = swift_getObjCClassFromMetadata();
    v71 = String._bridgeToObjectiveC()();
    [v69 unexpectedNilPropertyWithClass:v70 property:v71];

    swift_willThrow();
  }

  v75 = *(v80 + 8);
  v75(v79, v13);
  return (v75)(v24, v13);
}

uint64_t sub_1006D98EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FFB0);
  v1 = sub_100006654(v0, qword_10094FFB0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDSavedAttachment.prepareForDeletion()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v228 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v222 - v9;
  __chkstk_darwin(v11, v12);
  v14 = &v222 - v13;
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v222 - v18;
  v233.receiver = v0;
  v233.super_class = ObjectType;
  objc_msgSendSuper2(&v233, "prepareForDeletion", v17);
  v20 = [v0 attachmentTypeRawValue];
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  v26 = _findStringSwitchCase(cases:string:)(&off_1008DD7E8, v25);
  v24, v27, v28, v29, v30, v31, v32, v33;
  if ((v26 - 1) > 1)
  {
    return;
  }

  v224 = v10;
  v227 = ObjectType;
  if (qword_100936700 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_10094FFB0);
  v36 = v1;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v223 = v35;
    v225 = v14;
    v226 = v19;
    v39 = swift_slowAlloc();
    *&v230 = swift_slowAlloc();
    *v39 = 136446466;
    *&v232[0] = v227;
    swift_getMetatypeMetadata();
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = sub_10000668C(v40, v41, &v230);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    v51 = [v36 remObjectID];
    if (v51)
    {
      v52 = v51;
      v53 = v4;
      v54 = v3;
      v55 = [v51 description];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v3 = v54;
      v4 = v53;
    }

    else
    {
      v56 = 7104878;
      v58 = 0xE300000000000000;
    }

    v59 = sub_10000668C(v56, v58, &v230);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v39 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s:prepareForDeletion() {savedAttachmentID: %{public}s}", v39, 0x16u);
    swift_arrayDestroy();

    v14 = v225;
    v19 = v226;
  }

  else
  {
  }

  v67 = [v36 storeControllerManagedObjectContext];
  if (v67)
  {
    v68 = v67;
    v69 = [v36 identifier];
    if (v69)
    {
      v70 = v69;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = [v36 account];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 identifier];
        if (v73)
        {
          v74 = v73;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v75 = [v36 sha512Sum];
          if (v75)
          {
            v76 = v75;
            v77 = [v36 fileName];
            if (v77)
            {
              v78 = v77;
              v79 = [v77 pathExtension];

              if (!v79)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = v80;
                v79 = String._bridgeToObjectiveC()();
                v81, v82, v83, v84, v85, v86, v87, v88;
              }
            }

            else
            {
              v79 = 0;
            }

            isa = UUID._bridgeToObjectiveC()().super.isa;
            [v68 proposePurgingFileAttachmentWithSha512Sum:v76 fileExtension:v79 account:isa];

            v190 = *(v4 + 8);
            v190(v14, v3);
            v190(v19, v3);
            return;
          }

          v181 = v19;
          v182 = [v68 fileAttachmentIdentifiersToPurgeByAccountIdentifier];
          v183 = v14;
          v184 = v4;
          v186 = v4 + 16;
          v185 = *(v4 + 16);
          v225 = v183;
          v187 = v185;
          (v185)(v224);
          v188 = [v182 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();

          if (v188)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v230 = 0u;
            v231 = 0u;
          }

          v232[0] = v230;
          v232[1] = v231;
          if (*(&v231 + 1))
          {
            sub_1000F5104(&unk_10093D920, &qword_10079B688);
            if (swift_dynamicCast())
            {
              v199 = v229;
LABEL_48:
              *&v232[0] = v199;
              v200 = v228;
              v226 = v181;
              v227 = v187;
              (v187)(v228, v181, v3);
              v223 = v186;
              v201 = v224;
              sub_1003794C4(v224, v200);
              v202 = *(v184 + 8);
              v202(v201, v3);
              v203 = [v68 fileAttachmentIdentifiersToPurgeByAccountIdentifier];
              v204 = *&v232[0];
              sub_100224A60();
              v205 = Set._bridgeToObjectiveC()().super.isa;
              v204, v206, v207, v208, v209, v210, v211, v212;
              v213 = v225;
              (v227)(v201, v225, v3);
              [v203 __swift_setObject:v205 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

              swift_unknownObjectRelease();
              v202(v213, v3);
              v202(v226, v3);
              return;
            }
          }

          else
          {
            sub_1000050A4(v232, &qword_100939ED0, &qword_100791B10);
          }

          v199 = _swiftEmptySetSingleton;
          goto LABEL_48;
        }

        v226 = v19;
        v151 = v36;
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = v4;
          v228 = v3;
          v155 = swift_slowAlloc();
          *&v232[0] = swift_slowAlloc();
          *v155 = 136446466;
          v156 = sub_1001424F8(v227);
          v158 = v157;
          v159 = sub_10000668C(v156, v157, v232);
          v158, v160, v161, v162, v163, v164, v165, v166;
          *(v155 + 4) = v159;
          *(v155 + 12) = 2082;
          v167 = [v151 remObjectID];
          if (v167)
          {
            v168 = v167;
            v169 = [v167 description];

            v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v172 = v171;
          }

          else
          {
            v170 = 7104878;
            v172 = 0xE300000000000000;
          }

          v214 = sub_10000668C(v170, v172, v232);
          v172, v215, v216, v217, v218, v219, v220, v221;
          *(v155 + 14) = v214;
          _os_log_impl(&_mh_execute_header, v152, v153, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.account.identifier' should not be nil {moid: %{public}s}", v155, 0x16u);
          swift_arrayDestroy();

          (*(v154 + 8))(v226, v228);
        }

        else
        {

          (*(v4 + 8))(v226, v3);
        }
      }

      else
      {
        v128 = v36;
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = v19;
          v132 = v4;
          v228 = v3;
          v133 = swift_slowAlloc();
          *&v230 = swift_slowAlloc();
          *v133 = 136446466;
          *&v232[0] = v227;
          swift_getMetatypeMetadata();
          v134 = String.init<A>(describing:)();
          v136 = v135;
          v137 = sub_10000668C(v134, v135, &v230);
          v136, v138, v139, v140, v141, v142, v143, v144;
          *(v133 + 4) = v137;
          *(v133 + 12) = 2082;
          v145 = [v128 remObjectID];
          if (v145)
          {
            v146 = v145;
            v147 = [v145 description];

            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;
          }

          else
          {
            v148 = 7104878;
            v150 = 0xE300000000000000;
          }

          v191 = sub_10000668C(v148, v150, &v230);
          v150, v192, v193, v194, v195, v196, v197, v198;
          *(v133 + 14) = v191;
          _os_log_impl(&_mh_execute_header, v129, v130, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.account' should not be nil {moid: %{public}s}", v133, 0x16u);
          swift_arrayDestroy();

          (*(v132 + 8))(v131, v228);
        }

        else
        {

          (*(v4 + 8))(v19, v3);
        }
      }
    }

    else
    {
      v110 = v36;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *&v230 = v115;
        *v113 = 136446466;
        *&v232[0] = v227;
        swift_getMetatypeMetadata();
        v116 = String.init<A>(describing:)();
        v118 = v117;
        v119 = sub_10000668C(v116, v117, &v230);
        v118, v120, v121, v122, v123, v124, v125, v126;
        *(v113 + 4) = v119;
        *(v113 + 12) = 2114;
        v127 = [v110 objectID];
        *(v113 + 14) = v127;
        *v114 = v127;
        _os_log_impl(&_mh_execute_header, v111, v112, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.identifier' should not be nil {moid: %{public}@}", v113, 0x16u);
        sub_1000050A4(v114, &unk_100938E70, &unk_100797230);

        sub_10000607C(v115);
      }
    }
  }

  else
  {
    v89 = v36;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *&v230 = swift_slowAlloc();
      *v92 = 136446466;
      *&v232[0] = v227;
      swift_getMetatypeMetadata();
      v93 = String.init<A>(describing:)();
      v95 = v94;
      v96 = sub_10000668C(v93, v94, &v230);
      v95, v97, v98, v99, v100, v101, v102, v103;
      *(v92 + 4) = v96;
      *(v92 + 12) = 2082;
      v104 = [v89 remObjectID];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 description];

        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;
      }

      else
      {
        v107 = 7104878;
        v109 = 0xE300000000000000;
      }

      v173 = sub_10000668C(v107, v109, &v230);
      v109, v174, v175, v176, v177, v178, v179, v180;
      *(v92 + 14) = v173;
      _os_log_impl(&_mh_execute_header, v90, v91, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.storeControllerManagedObjectContext' should not be nil {savedAttachmentID: %{public}s}", v92, 0x16u);
      swift_arrayDestroy();
    }
  }
}

Swift::Int __swiftcall REMCDSavedAttachment.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 reminder];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDSavedAttachment.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E42F0);
  sub_100034610(&unk_1008E4310);
  return v0;
}

Swift::Bool __swiftcall REMCDSavedAttachment.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1000050A4(v15, &qword_100939ED0, &qword_100791B10);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = [v1 reminder];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

NSString sub_1006DAC58(uint64_t a1)
{
  v5 = sub_1006DBA4C(a1);
  if (v2)
  {
    return v1;
  }

  v6 = v5;
  [(RDXPCStorePerformer *)v5 setFetchBatchSize:100];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v277 = NSManagedObjectContext.fetch<A>(_:)();
  if ([v1 options])
  {
    v8 = sub_1006DBD5C();
    v277, v9, v10, v11, v12, v13, v14, v15;
    v277 = v8;
  }

  v273 = a1;
  if (qword_100936710 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    v17 = sub_100006654(v16, qword_100950008);
    v281 = v277;
    __chkstk_darwin(v17, v18);
    v272 = v19;
    v20 = sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    v21 = sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    v270[2] = v20;
    v270[3] = v21;
    v270[1] = sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
    v275 = Sequence.map<A>(skippingError:_:)();
    v29 = v277;
    v30 = (v277 >> 62);
    if (v277 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v31)
    {
      v271 = (v277 >> 62);
      v274 = v6;
      v280 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v31 & 0x8000000000000000) == 0)
      {
        v3 = 0;
        v6 = (v277 & 0xC000000000000001);
        v276 = (v277 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          v32 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v6)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *v276->clientIdentity)
            {
              goto LABEL_66;
            }

            v33 = *(v277 + 8 * v3 + 32);
          }

          v21 = v33;
          v34 = [(RDXPCStorePerformer *)v33 account];
          if (!v34)
          {
            goto LABEL_42;
          }

          v1 = v34;
          v281 = 0;
          v42 = [v34 remObjectIDWithError:&v281];
          if (!v42)
          {
            v114 = v281;
            v275, v115, v116, v117, v118, v119, v120, v121;
            v277, v122, v123, v124, v125, v126, v127, v128;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            goto LABEL_44;
          }

          v43 = v42;
          v44 = v281;
          sub_1005E37E8(v43);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v3;
          if (v32 == v31)
          {
            v45 = v280;
            v6 = v274;
            v29 = v277;
            v30 = v271;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_71;
    }

    v45 = &_swiftEmptyArrayStorage;
LABEL_22:
    v279 = _swiftEmptySetSingleton;
    v280 = _swiftEmptySetSingleton;
    v271 = v45;
    if (!v30)
    {
      v46 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        break;
      }

      goto LABEL_24;
    }

    v46 = _CocoaArrayWrapper.endIndex.getter();
    if (!v46)
    {
      break;
    }

LABEL_24:
    v21 = 0;
    v276 = v46;
    v277 = v29 & 0xC000000000000001;
    v274 = (v29 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v277)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *v274->clientIdentity)
        {
          goto LABEL_67;
        }

        v54 = *(v29 + 8 * v21 + 32);
      }

      v3 = v54;
      v55 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v56 = [(RDXPCStorePerformer *)v54 list];
      if (v56)
      {
        v278 = 0;
        v57 = v56;
        v58 = [v57 remObjectIDWithError:&v278];
        v1 = v278;
        if (!v58)
        {
          goto LABEL_45;
        }

        v59 = v58;
        v60 = v278;
        v61 = sub_1005E37C0(v59);

        sub_100379A60(&v281, v61);
      }

      v62 = [v3 parentReminder];
      if (v62)
      {
        v278 = 0;
        v57 = v62;
        v63 = [v57 remObjectIDWithError:&v278];
        v1 = v278;
        if (!v63)
        {
LABEL_45:
          v129 = v1;
          v275, v130, v131, v132, v133, v134, v135, v136;
          v271, v137, v138, v139, v140, v141, v142, v143;
          v29, v144, v145, v146, v147, v148, v149, v150;

          v279, v151, v152, v153, v154, v155, v156, v157;
          v280, v158, v159, v160, v161, v162, v163, v164;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return v1;
        }

        v64 = v63;
        v65 = v278;
        v66 = sub_1005E2A38(v64);

        sub_100379A48(&v281, v66);
      }

      else
      {
      }

      ++v21;
      if (v55 == v276)
      {
        v29, v47, v48, v49, v50, v51, v52, v53;
        v74 = v280;
        v75 = *v280->clientIdentity;
        if (v75)
        {
          goto LABEL_40;
        }

        goto LABEL_47;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v29, v22, v23, v24, v25, v26, v27, v28;
  v74 = _swiftEmptySetSingleton;
  v75 = _swiftEmptySetSingleton[2];
  if (!v75)
  {
LABEL_47:
    v74, v67, v68, v69, v70, v71, v72, v73;
    v76 = &_swiftEmptyArrayStorage;
LABEL_48:
    v165 = v279;
    v166 = *v279->clientIdentity;
    if (v166)
    {
      v167 = sub_1003689F4(*v279->clientIdentity, 0);
      v168 = sub_10027DC58();
      sub_10002CF84(v281);
      if (v168 == v166)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    v165, v35, v36, v37, v38, v39, v40, v41;
    v167 = &_swiftEmptyArrayStorage;
LABEL_52:
    sub_1005ECAEC(v271, 100, 0, 0, 0);
    v170 = v169;
    v271, v171, v172, v173, v174, v175, v176, v177;
    sub_1005EC5F0(v76, 100, 0, 0, 0);
    v179 = v178;

    sub_1005EC0F4(v167, 100, 0, 0, 0);
    v276 = v180;
    v29 = v6;

    v274 = v270;
    v281 = v170;
    __chkstk_darwin(v181, v182);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    v183 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
    v273 = v183;
    v277 = Sequence.map<A>(skippingError:_:)();
    v170, v184, v185, v186, v187, v188, v189, v190;
    v281 = v179;
    __chkstk_darwin(v191, v192);
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v193 = sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v274 = v193;
    v3 = Sequence.map<A>(skippingError:_:)();
    v179, v194, v195, v196, v197, v198, v199, v200;
    v201 = v276;
    v281 = v276;
    __chkstk_darwin(v202, v203);
    v204 = Sequence.map<A>(skippingError:_:)();
    v6 = v29;
    v21 = v277;
    v205 = v204;
    v201, v206, v207, v208, v209, v210, v211, v212;
    v281 = v205;
    v213 = v275;

    sub_1002722C4(v214);
    v276 = v281;
    if (!(v213 >> 62))
    {
      v222 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_54;
    }

LABEL_71:
    v222 = _CocoaArrayWrapper.endIndex.getter();
LABEL_54:
    if (v222)
    {
      v272 = v3;
      v281 = &_swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v222 < 0)
      {
        __break(1u);
        return result;
      }

      v223 = 0;
      v224 = v275;
      v225 = v275 & 0xC000000000000001;
      do
      {
        if (v225)
        {
          v226 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v226 = *(v224 + 8 * v223 + 32);
        }

        v227 = v226;
        ++v223;
        v228 = [v226 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v224 = v275;
      }

      while (v222 != v223);
      v6 = v29;
      v275, v275, v229, v230, v231, v232, v233, v234;
      v235 = v281;
      v21 = v277;
      v3 = v272;
    }

    else
    {
      v275, v215, v216, v217, v218, v219, v220, v221;
      v235 = &_swiftEmptyArrayStorage;
    }

    v236 = objc_allocWithZone(REMFetchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v21, v238, v239, v240, v241, v242, v243, v244;
    v245 = Array._bridgeToObjectiveC()().super.isa;
    v3, v246, v247, v248, v249, v250, v251, v252;
    v253 = v276;
    v254 = Array._bridgeToObjectiveC()().super.isa;
    v253, v255, v256, v257, v258, v259, v260, v261;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v262 = Array._bridgeToObjectiveC()().super.isa;
    v235, v263, v264, v265, v266, v267, v268, v269;
    v1 = [v236 initWithAccountStorages:isa listStorages:v245 reminderStorages:v254 requestedObjectIDs:v262 metadata:0];

    return v1;
  }

LABEL_40:
  v76 = sub_100368A08(v75, 0);
  v77 = sub_10027DC58();
  sub_10002CF84(v281);
  if (v77 == v75)
  {
    goto LABEL_48;
  }

  __break(1u);
LABEL_42:
  v275, v35, v36, v37, v38, v39, v40, v41;
  v277, v78, v79, v80, v81, v82, v83, v84;
  v85 = objc_opt_self();
  v281 = 0;
  v282 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v282, v86, v87, v88, v89, v90, v91, v92;
  v281 = 0xD000000000000021;
  v282 = 0x80000001007F7F30;
  v93 = [v21 description];
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  v97._countAndFlagsBits = v94;
  v97._object = v96;
  String.append(_:)(v97);
  v96, v98, v99, v100, v101, v102, v103, v104;
  v105._countAndFlagsBits = 125;
  v105._object = 0xE100000000000000;
  String.append(_:)(v105);
  v106 = v282;
  v1 = String._bridgeToObjectiveC()();
  v106, v107, v108, v109, v110, v111, v112, v113;
  [v85 internalErrorWithDebugDescription:v1];

  swift_willThrow();
LABEL_44:

  return v1;
}

id sub_1006DBA4C(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 predicateDescriptor];
  sub_1001CDF58(a1, [v3 options]);
  v7 = v6;

  if (!v2)
  {
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v8 = [objc_allocWithZone(NSFetchRequest) init];
    v9 = [swift_getObjCClassFromMetadata() entity];
    [v8 setEntity:v9];

    [v8 setAffectedStores:0];
    [v8 setPredicate:v7];
    if ([v3 options])
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1007953F0;
      v12 = [objc_opt_self() sortDescriptorSortingByOrderingInListAscending:1];
      sub_10047707C();
      v14 = v13;

      *(v11 + 32) = v14;
    }

    else
    {
      sub_1006DD25C();
      v11 = v10;
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11, v16, v17, v18, v19, v20, v21, v22;
    [v8 setSortDescriptors:isa];

    if (qword_100936708 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094FFF0);
    v5 = v8;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v5;
      *v27 = v5;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v24, v25, "Created reminder fetchRequest {fetchRequest: %@}", v26, 0xCu);
      sub_1000050A4(v27, &unk_100938E70, &unk_100797230);
    }
  }

  return v5;
}

uint64_t sub_1006DBD5C()
{
  sub_1006DD25C();
  v1 = v0;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1006DDB98;
  *(v4 + 24) = v3;
  v17[4] = sub_1002FF4D4;
  v17[5] = v4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1005E2238;
  v17[3] = &unk_1008FCC80;
  v5 = _Block_copy(v17);

  v6 = [(objc_class *)isa sortedArrayWithOptions:16 usingComparator:v5];

  _Block_release(v5);
  LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

  if (isa)
  {
    __break(1u);
  }

  else
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17[0] = v8;
    sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
    sub_10000CB90(&qword_1009418B0, &qword_10093CB40, &qword_1007A4450);
    v9 = Sequence.elements<A>(ofType:)();

    v8, v10, v11, v12, v13, v14, v15, v16;
    return v9;
  }

  return result;
}

id sub_1006DBF70(uint64_t a1)
{
  v3 = sub_1006DBA4C(a1);
  if (!v2)
  {
    v4 = v3;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v6 = NSManagedObjectContext.fetch<A>(_:)();
    if ([v1 options])
    {
      v7 = sub_1006DBD5C();
      v6, v8, v9, v10, v11, v12, v13, v14;
      v6 = v7;
    }

    if (qword_100936710 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_100006654(v15, qword_100950008);
    __chkstk_darwin(v16, v17);
    sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
    v18 = Sequence.map<A>(skippingError:_:)();
    v6, v19, v20, v21, v22, v23, v24, v25;
    v26 = objc_allocWithZone(REMFetchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18, v28, v29, v30, v31, v32, v33, v34;
    v1 = [v26 initWithReminderStorages:isa];
  }

  return v1;
}

id sub_1006DC1D0(uint64_t a1)
{
  result = sub_1006DBA4C(a1);
  if (!v1)
  {
    v3 = result;
    v5[3] = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
    v5[0] = v3;
    v4 = v3;
    throwingCast<A>(_:as:failureMessage:)();

    sub_10000607C(v5);
    return v5[5];
  }

  return result;
}

void sub_1006DC274(uint64_t a1)
{
  if (([v1 options] & 2) != 0)
  {
    v4 = sub_1006DC488(a1);
    if (!v2)
    {
      v5 = v4;
      v6 = objc_allocWithZone(REMReminderFetchMetadata);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v5, v8, v9, v10, v11, v12, v13, v14;
      v15 = [v6 initWithSubtaskCounts:isa];

      [objc_allocWithZone(REMFetchResult) initWithMetadata:v15];
    }
  }

  else if (([v1 options] & 4) != 0)
  {
    sub_1006DC880(a1);
    if (!v2)
    {
      v17 = v16;
      v18 = objc_allocWithZone(REMReminderFetchMetadata);
      sub_1000060C8(0, &qword_100950020, REMReminderFetchMetadataDueDateCount_ptr);
      v19 = Array._bridgeToObjectiveC()().super.isa;
      v17, v20, v21, v22, v23, v24, v25, v26;
      v27 = [v18 initWithDueDateCounts:v19];

      [objc_allocWithZone(REMFetchResult) initWithMetadata:v27];
    }
  }

  else
  {
    [objc_allocWithZone(REMFetchResult) initWithMetadata:0];
  }
}

uint64_t sub_1006DC488(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1006DBA4C(a1);
  if (v1)
  {
    return v2;
  }

  v4 = v3;
  v5 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  isUniquelyReferenced_nonNull_native = NSManagedObjectContext.fetch<A>(_:)();
  v64 = v5;
  v2 = sub_10039096C(&_swiftEmptyArrayStorage);
  v68 = v2;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_48:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

  v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_49:

    isUniquelyReferenced_nonNull_native, v55, v56, v57, v58, v59, v60, v61;
    return v2;
  }

LABEL_6:
  v62 = v4;
  v63 = isUniquelyReferenced_nonNull_native;
  v9 = 0;
  v2 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v65 = v8;
  v66 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v4 = v64;
  v67 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  while (1)
  {
    if (v2)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v66 + 16))
      {
        goto LABEL_44;
      }

      v10 = *(isUniquelyReferenced_nonNull_native + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v13 = [v10 remObjectID];
    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = v13;
    v15 = [v11 children];
    if (v15)
    {
      break;
    }

LABEL_8:
LABEL_9:
    ++v9;
    if (v12 == v8)
    {

      isUniquelyReferenced_nonNull_native, v48, v49, v50, v51, v52, v53, v54;
      return v68;
    }
  }

  v16 = v15;
  sub_10000CE28(&qword_100944210, &qword_100939EE0, off_1008D41D0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v24 = *(v2 + 16);
    if (v24)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_32:

    v2, v35, v36, v37, v38, v39, v40, v41;
    v2 = v67;
    goto LABEL_9;
  }

  v24 = __CocoaSet.count.getter();
LABEL_21:
  v2, v17, v18, v19, v20, v21, v22, v23;
  v25 = [objc_allocWithZone(NSNumber) initWithInteger:v24];
  if (!v25)
  {
    v42 = sub_100369908(v14);

    goto LABEL_41;
  }

  v26 = v25;
  v27 = v68;
  if ((v68 & 0xC000000000000001) != 0)
  {
    if (v68 < 0)
    {
      v2 = v68;
    }

    else
    {
      v2 = v68 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = __CocoaDictionary.count.getter();
    if (__OFADD__(v28, 1))
    {
      goto LABEL_46;
    }

    v27 = sub_10021E048(v2, v28 + 1);
    v68 = v27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = sub_10002B924(v14);
  v30 = v27[2];
  v31 = (v29 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    goto LABEL_45;
  }

  v2 = v29;
  if (v27[3] >= v32)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100376A24();
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = v63;
    if (v2)
    {
      v43 = v27[7];
      v44 = *(v43 + 8 * v4);
      *(v43 + 8 * v4) = v26;
    }

    else
    {
      v27[(v4 >> 6) + 8] |= 1 << v4;
      *(v27[6] + 8 * v4) = v14;
      *(v27[7] + 8 * v4) = v26;

      v45 = v27[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_47;
      }

      v27[2] = v47;
    }

    v68 = v27;
    v4 = v64;
LABEL_41:
    v8 = v65;
    v2 = v67;
    goto LABEL_9;
  }

  sub_100370B68(v32, isUniquelyReferenced_nonNull_native);
  v33 = sub_10002B924(v14);
  if ((v2 & 1) == (v34 & 1))
  {
    v4 = v33;
    goto LABEL_36;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006DC880(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v126 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v125 = (&v114 - v7);
  v131 = type metadata accessor for Date();
  v129 = *(v131 - 8);
  __chkstk_darwin(v131, v8);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v114 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v114 - v17;
  v19 = type metadata accessor for Calendar();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v130;
  v25 = sub_1006DBA4C(a1);
  if (v24)
  {
    return;
  }

  v26 = v25;
  v127 = v18;
  v128 = v14;
  v124 = v10;
  v27 = v129;
  v117 = v20;
  v118 = v19;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v28 = NSManagedObjectContext.fetch<A>(_:)();
  v119 = 0;
  v29 = v28;
  v115 = v26;
  v30 = v23;
  static Calendar.current.getter();
  v132 = &_swiftEmptyArrayStorage;
  if (v29 >> 62)
  {
LABEL_43:
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v27;
  v33 = v30;
  v34 = v124;
  v35 = v126;
  if (!v31)
  {

    v29, v40, v41, v42, v43, v44, v45, v46;
    (*(v117 + 8))(v30, v118);
    return;
  }

  v122 = v31;
  v123 = v29 & 0xC000000000000001;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v36 = *(v29 + 32);
  }

  v37 = v36;
  v38 = [v36 dueDate];

  if (v38)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v47 = v125;
  v48 = v131;
  (*(v32 + 56))(v35, v39, 1, v131);
  sub_10012F7FC(v35, v47);
  if ((*(v32 + 48))(v47, 1, v48) == 1)
  {
    v29, v49, v50, v51, v52, v53, v54, v55;
    sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
    if (qword_100936708 == -1)
    {
LABEL_14:
      v56 = type metadata accessor for Logger();
      sub_100006654(v56, qword_10094FFF0);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      v59 = os_log_type_enabled(v57, v58);
      v61 = v117;
      v60 = v118;
      if (v59)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Due date sorting missing due date", v62, 2u);
      }

      v63 = objc_opt_self();
      v64 = String._bridgeToObjectiveC()();
      [v63 internalErrorWithDebugDescription:v64];

      swift_willThrow();
      (*(v61 + 8))(v30, v60);
      return;
    }

LABEL_46:
    swift_once();
    goto LABEL_14;
  }

  v30 = (v32 + 32);
  v65 = *(v32 + 32);
  v66 = v127;
  v65(v127, v47, v48);
  Calendar.startOfDay(for:)();
  v68 = *(v32 + 8);
  v67 = (v32 + 8);
  v129 = v68;
  v68(v66, v48);
  v125 = v65;
  v126 = v30;
  v65(v66, v128, v48);
  v27 = 0;
  v69 = 0;
  v114 = v29 & 0xFFFFFFFFFFFFFF8;
  v116 = &_swiftEmptyArrayStorage;
  v120 = v29;
  v121 = v33;
  while (1)
  {
    if (v123)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v114 + 16))
      {
        goto LABEL_42;
      }

      v80 = *(v29 + 8 * v27 + 32);
    }

    v81 = v80;
    v30 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v82 = [v80 dueDate];
    if (!v82)
    {
      break;
    }

    v90 = v82;
    v130 = v81;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v67;
    v91 = v128;
    Calendar.startOfDay(for:)();
    v92 = v131;
    v93 = v129;
    v129(v34, v131);
    v125(v34, v91, v92);
    sub_1002D81D8();
    v94 = v127;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v93(v34, v92);

      if (__OFADD__(v69++, 1))
      {
        goto LABEL_41;
      }

      v67 = v29;
    }

    else
    {
      v70 = objc_allocWithZone(REMReminderFetchMetadataDueDateCount);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v70 initWithDueDate:isa count:v69];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v72 = v131;
      v67 = v29;
      v129(v94, v131);
      v116 = v132;
      v34 = v124;
      v125(v94, v124, v72);
      v69 = 1;
    }

    ++v27;
    v33 = v121;
    v29 = v120;
    if (v30 == v122)
    {
      v120, v73, v74, v75, v76, v77, v78, v79;
      v111 = objc_allocWithZone(REMReminderFetchMetadataDueDateCount);
      v112 = v127;
      v113 = Date._bridgeToObjectiveC()().super.isa;
      [v111 initWithDueDate:v113 count:v69];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v129(v112, v131);
      (*(v117 + 8))(v33, v118);
      return;
    }
  }

  v116, v83, v84, v85, v86, v87, v88, v89;
  v29, v96, v97, v98, v99, v100, v101, v102;
  if (qword_100936708 != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  sub_100006654(v103, qword_10094FFF0);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.error.getter();
  v106 = os_log_type_enabled(v104, v105);
  v107 = v127;
  if (v106)
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v104, v105, "Due date sorting missing due date", v108, 2u);
  }

  v109 = objc_opt_self();
  v110 = String._bridgeToObjectiveC()();
  [v109 internalErrorWithDebugDescription:v110];

  swift_willThrow();
  v129(v107, v131);
  (*(v117 + 8))(v33, v118);
}

void sub_1006DD25C()
{
  v1 = v0;
  v2 = [v0 sortDescriptors];
  sub_1000060C8(0, &qword_100948748, REMReminderSortDescriptor_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:
    v3, v4, v5, v6, v7, v8, v9, v10;
LABEL_17:
    if ([v1 options])
    {
      return;
    }

    v1 = [objc_opt_self() sortDescriptorSortingByOrderingInListAscending:1];
    sub_10047707C();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return;
    }

LABEL_22:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_19;
  }

LABEL_15:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = 0;
  v26 = v1;
  v1 = &selRef_isEmpty;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v14 = *(v3 + 8 * v12 + 32);
    }

    v15 = v14;
    if ([v14 type] >= 5)
    {
      break;
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    [v15 ascending];
    NSSortDescriptor.init<A, B>(keyPath:ascending:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v12;
    if (v13 == v11)
    {
      v3, v16, v17, v18, v19, v20, v21, v22;
      v1 = v26;
      goto LABEL_17;
    }
  }

  if (qword_1009361E8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100947FE8);
  v24 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v25 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown type", 12, 2, v24, v25);
  __break(1u);
}

uint64_t sub_1006DD58C(void *a1, void *a2, unint64_t a3)
{
  v5 = [a1 parentReminder];
  if (v5 || (v5 = [a2 parentReminder]) != 0)
  {

    v34 = [a1 parentReminder];
    if (!v34)
    {
      v34 = a1;
    }

    v6 = [a2 parentReminder];
    if (!v6)
    {
      v6 = a2;
    }

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v33 = a3;
    if (static NSObject.== infix(_:_:)())
    {
      v7 = [a1 parentReminder];
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        v10 = a2;
        v11 = static NSObject.== infix(_:_:)();

        v6 = v9;
        a3 = v33;

        if (v11)
        {
          v12 = 1;
LABEL_11:

          return v12;
        }
      }

      v23 = [a2 parentReminder];
      if (v23)
      {
        v24 = v23;
        v25 = v6;
        v26 = a1;
        v27 = static NSObject.== infix(_:_:)();

        a3 = v33;
        if (v27)
        {
          return -1;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v16 = a3 & 0xC000000000000001;
      while (v14 != v15)
      {
        if (v16)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_43;
          }

          v17 = *(a3 + 8 * v15 + 32);
        }

        v18 = v17;
        if (__OFADD__(v15, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v19 = a2;
        v20 = v34;
        v21 = v6;
        v22 = v6;
        v12 = [v18 compareObject:v20 toObject:v22];

        a2 = v19;
        v6 = v21;
        a3 = v33;

        ++v15;
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

LABEL_27:
  v6 = (a3 & 0xFFFFFFFFFFFFFF8);
  if (a3 >> 62)
  {
LABEL_44:
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v28 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= v6[2])
      {
        goto LABEL_41;
      }

      v30 = *(a3 + 8 * i + 32);
    }

    v31 = v30;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v12 = [v30 compareObject:a1 toObject:a2];

    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_1006DD8CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100005EF0(a1, v12);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (swift_dynamicCast())
  {
    sub_100005EF0(a2, v12);
    if (swift_dynamicCast())
    {
      v5 = v11;
      v6 = sub_1006DD58C(v11, v11, a3);

      goto LABEL_10;
    }
  }

  if (qword_100936708 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094FFF0);
  v5 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v8, "Given cdReminders should not contain any element that is not a REMCDReminder.", v9, 2u);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void sub_1006DDAC8(uint64_t a1)
{
  v2 = sub_1006DBA4C(a1);
  if (!v1)
  {
    v3 = v2;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    [objc_allocWithZone(REMFetchResult) initWithCount:NSManagedObjectContext.count<A>(for:)()];
  }
}

unint64_t sub_1006DDBA0(void (**a1)(char *))
{
  v118 = a1;
  v2 = v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v122 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v113 - v8;
  __chkstk_darwin(v10, v11);
  v114 = &v113 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v113 - v15;
  v17 = type metadata accessor for REMSearchCriterion();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v116 = (&v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21, v22);
  v120 = &v113 - v23;
  __chkstk_darwin(v24, v25);
  v119 = &v113 - v26;
  __chkstk_darwin(v27, v28);
  v115 = &v113 - v29;
  *&v32 = __chkstk_darwin(v30, v31).n128_u64[0];
  v34 = (&v113 - v33);
  v35 = [v2 title];
  v121 = v17;
  v123 = v2;
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
    *v34 = v37;
    v34[1] = v39;
    v41 = enum case for REMStringMatchingStyle.prefix(_:);
    v42 = type metadata accessor for REMStringMatchingStyle();
    (*(*(v42 - 8) + 104))(v34 + v40, v41, v42);
    (*(v18 + 104))(v34, enum case for REMSearchCriterion.textualField(_:), v17);
    v43 = sub_100365AEC(0, 1, 1, &_swiftEmptyArrayStorage);
    v45 = *v43->clientIdentity;
    v44 = *&v43->clientIdentity[8];
    if (v45 >= v44 >> 1)
    {
      v43 = sub_100365AEC((v44 > 1), v45 + 1, 1, v43);
    }

    v46 = v121;
    v47 = v122;
    *v43->clientIdentity = v45 + 1;
    (*(v18 + 32))(v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v45, v34, v46);
    v2 = v123;
  }

  else
  {
    v43 = &_swiftEmptyArrayStorage;
    v47 = v122;
  }

  v48 = [v2 dueAfter];
  v49 = &selRef_attachmentRepresentationAndReturnError_;
  if (v48)
  {
    v50 = v48;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = type metadata accessor for Date();
    (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
  }

  else
  {
    v52 = type metadata accessor for Date();
    v53 = *(*(v52 - 8) + 56);
    v53(v16, 1, 1, v52);
    sub_1001AAD5C(v16);
    v54 = [v2 dueBefore];
    if (!v54)
    {
      v105 = v114;
      v53(v114, 1, 1, v52);
      sub_1001AAD5C(v105);
      v68 = v118;
      v66 = v121;
      v69 = v123;
      goto LABEL_20;
    }

    v16 = v114;
    v55 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53(v16, 0, 1, v52);
    v2 = v123;
    v47 = v122;
  }

  sub_1001AAD5C(v16);
  v56 = [v2 dueAfter];
  if (v56)
  {
    v57 = v56;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = type metadata accessor for Date();
  v60 = *(*(v59 - 8) + 56);
  v61 = 1;
  v60(v9, v58, 1, v59);
  v62 = v9;
  v63 = v115;
  sub_10012F7FC(v62, v115);
  v64 = [v123 dueBefore];
  if (v64)
  {
    v65 = v64;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = v122;
    v61 = 0;
  }

  v66 = v121;
  v60(v47, v61, 1, v59);
  v67 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  sub_10012F7FC(v47, v63 + *(v67 + 48));
  (*(v18 + 104))(v63, enum case for REMSearchCriterion.dueDate(_:), v66);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_100365AEC(0, *v43->clientIdentity + 1, 1, v43);
  }

  v68 = v118;
  v69 = v123;
  v49 = *v43->clientIdentity;
  v70 = *&v43->clientIdentity[8];
  if (v49 >= v70 >> 1)
  {
    v43 = sub_100365AEC((v70 > 1), v49 + 1, 1, v43);
  }

  *v43->clientIdentity = v49 + 1;
  (*(v18 + 32))(v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v49, v63, v66);
LABEL_20:
  v71 = [v69 completed];
  v72 = v116;
  if (v71)
  {
    v73 = v71;
    v74 = [v71 BOOLValue];
    v75 = v119;
    *v119 = v74;
    (*(v18 + 104))(v75, enum case for REMSearchCriterion.isCompleted(_:), v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_100365AEC(0, *v43->clientIdentity + 1, 1, v43);
    }

    v77 = *v43->clientIdentity;
    v76 = *&v43->clientIdentity[8];
    v49 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v43 = sub_100365AEC((v76 > 1), v77 + 1, 1, v43);
    }

    *v43->clientIdentity = v49;
    (*(v18 + 32))(v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v77, v119, v66);
    v69 = v123;
  }

  v78 = [v69 hasLocation];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 BOOLValue];
    v81 = v120;
    *v120 = v80;
    (*(v18 + 104))(v81, enum case for REMSearchCriterion.hasLocation(_:), v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_100365AEC(0, *v43->clientIdentity + 1, 1, v43);
    }

    v83 = *v43->clientIdentity;
    v82 = *&v43->clientIdentity[8];
    v49 = v83 + 1;
    if (v83 >= v82 >> 1)
    {
      v43 = sub_100365AEC((v82 > 1), v83 + 1, 1, v43);
    }

    *v43->clientIdentity = v49;
    (*(v18 + 32))(v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v83, v120, v66);
  }

  v84 = [v69 location];
  if (v84)
  {
    v85 = v84;
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
    *v72 = v86;
    v72[1] = v88;
    v90 = enum case for REMStringMatchingStyle.prefix(_:);
    v91 = type metadata accessor for REMStringMatchingStyle();
    (*(*(v91 - 8) + 104))(v72 + v89, v90, v91);
    (*(v18 + 104))(v72, enum case for REMSearchCriterion.location(_:), v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_100365AEC(0, *v43->clientIdentity + 1, 1, v43);
    }

    v49 = *v43->clientIdentity;
    v92 = *&v43->clientIdentity[8];
    if (v49 >= v92 >> 1)
    {
      v43 = sub_100365AEC((v92 > 1), v49 + 1, 1, v43);
    }

    *v43->clientIdentity = v49 + 1;
    (*(v18 + 32))(v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v49, v72, v66);
  }

  v93 = v117;
  sub_1003C93D0(v43, 0, 51, v68);
  if (v93)
  {
    v43, v95, v96, v97, v98, v99, v100, v101;
  }

  else
  {
    v102 = v94;
    v43, v95, v96, v97, v98, v99, v100, v101;
    v103 = [objc_opt_self() defaultFetchOptions];
    v49 = sub_10048A0EC(v102, v103, v68);

    v102, v106, v107, v108, v109, v110, v111, v112;
  }

  return v49;
}

uint64_t sub_1006DE628()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950028);
  v1 = sub_100006654(v0, qword_100950028);
  if (qword_1009364B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NLLanguage sub_1006DE6F0()
{
  sub_1000F5104(&qword_10093EC30, &unk_1007B60C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100792CE0;
  *(v0 + 32) = NLLanguageSimplifiedChinese;
  *(v0 + 40) = NLLanguageTraditionalChinese;
  *(v0 + 48) = NLLanguageJapanese;
  *(v0 + 56) = NLLanguageKorean;
  qword_1009752A8 = v0;
  v1 = NLLanguageSimplifiedChinese;
  v2 = NLLanguageTraditionalChinese;
  v3 = NLLanguageJapanese;

  return NLLanguageKorean;
}

uint64_t sub_1006DE7A4()
{
  v0 = [objc_allocWithZone(NLLanguageRecognizer) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 processString:v1];

  v2 = [v0 dominantLanguage];
  if (v2)
  {
    v3 = v2;
    if (qword_100936718 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100950028);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136446210;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v31);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDRecipeClassifier: dominantLanguage identified from text: %{public}s", v8, 0xCu);
      sub_10000607C(v9);
    }

    if (qword_100936720 != -1)
    {
      v21 = swift_once();
    }

    v31 = v5;
    __chkstk_darwin(v21, v22);
    v30[2] = &v31;
    v24 = sub_1003377DC(sub_10025C570, v30, v23);
  }

  else
  {
    if (qword_100936718 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100950028);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "RDRecipeClassifier: no dominantLanguage identified from text", v28, 2u);
    }

    v24 = 0;
  }

  return v24 & 1;
}

id sub_1006DEAC0(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() modelWithMLModel:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

double sub_1006DEB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v9 = sub_1006DE7A4();
  v11 = v10;
  v81 = v9;
  if (v9)
  {
    type metadata accessor for Recipe_CJK();
    v12 = [objc_allocWithZone(MLModelConfiguration) init];
    sub_10075F438(v12);
    if (v2)
    {
LABEL_3:

LABEL_4:
      (*(v5 + 8))(v8, v4);
      return v3;
    }
  }

  else
  {
    type metadata accessor for Recipe();
    v12 = [objc_allocWithZone(MLModelConfiguration) init];
    sub_10075F98C(v12);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v14 = v13;

  v15 = *(v14 + 16);

  sub_1006DF060();
  v16 = v15;
  v18 = sub_1006DEAC0(v16);
  v78 = v16;

  v79 = v18;
  v19 = NLModel.predictedLabelHypotheses(for:maximumCount:)();
  static DispatchTime.secondsElapsed(since:)();
  v3 = v20;
  if (qword_100936718 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100950028);
  v22 = v11;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v76 = v22;

  v19, v25, v26, v27, v28, v29, v30, v31;
  v77 = v24;
  v80 = v23;
  if (os_log_type_enabled(v23, v24))
  {
    v32 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v32 = 136446722;
    v33 = Dictionary.description.getter();
    v75 = v19;
    v35 = v34;
    v36 = sub_10000668C(v33, v34, &v82);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v3;
    *(v32 + 22) = 2080;
    if (v81)
    {
      v44 = 0xD00000000000002CLL;
    }

    else
    {
      v44 = 0xD000000000000024;
    }

    if (v81)
    {
      v45 = " missing due date";
    }

    else
    {
      v45 = "orean v1 Trained: 2025-06-02";
    }

    v46 = sub_10000668C(v44, (v45 | 0x8000000000000000), &v82);
    v47 = (v45 | 0x8000000000000000);
    v19 = v75;
    v47, v48, v49, v50, v51, v52, v53, v54;
    *(v32 + 24) = v46;
    v55 = v80;
    _os_log_impl(&_mh_execute_header, v80, v77, "RDRecipeClassifier: confidenceScore: %{public}s, in %f seconds, classifierType: %s", v32, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v56 = sub_10031EBC8(v19);
  v58 = v57;
  v59 = v19;
  v61 = *&v60;
  v59, v57, v60, v62, v63, v64, v65, v66;
  v67 = v78;
  if (!v58)
  {
    sub_1006DF0AC();
    swift_allocError();
    swift_willThrow();

    goto LABEL_4;
  }

  v3 = v61;
  if (v56 != 49 || v58 != 0xE100000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v5 + 8))(v8, v4);
  v58, v68, v69, v70, v71, v72, v73, v74;
  return v3;
}

unint64_t sub_1006DF060()
{
  result = qword_100950040;
  if (!qword_100950040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100950040);
  }

  return result;
}

unint64_t sub_1006DF0AC()
{
  result = qword_100950048;
  if (!qword_100950048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950048);
  }

  return result;
}

unint64_t sub_1006DF114()
{
  result = qword_100950050;
  if (!qword_100950050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950050);
  }

  return result;
}

void sub_1006DF168(uint64_t a1@<X1>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v36 = a3;
  v3 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v3 - 8, v4);
  v6 = v32 - v5;
  v7 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  __chkstk_darwin(v7 - 8, v8);
  v9 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  __chkstk_darwin(v9, v10);
  v11 = type metadata accessor for REMRemindersListDataView.Diff();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11, v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = v32 - v18;
  v20 = REMRemindersListDataView.PublicTemplateInvocation.Parameters.publicTemplateObjectID.getter();
  v21 = v39;
  v22 = sub_1006DF640(v20, v37, v38);
  if (v21)
  {
  }

  else
  {
    v32[1] = v23;
    v33 = v22;
    v34 = v20;
    v35 = v15;
    v37 = 0;
    v38 = v11;
    v39 = v9;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      v24 = v19;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
        v32[0] = v30;
      }

      else
      {
        v32[0] = _swiftEmptySetSingleton;
      }

      v25 = v6;
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v26 = v35;
      if (v31)
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }
    }

    else
    {
      v24 = v19;
      v25 = v6;
      v26 = v35;
    }

    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
    v27 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v28 = v33;
    REMList.codable.getter();
    REMRemindersListDataView.ListSectionsModel.init(sectionsModel:list:)();
    v29 = v38;
    (*(v12 + 16))(v26, v24, v38);
    sub_1006DF90C(&qword_10094DB28, &type metadata accessor for REMRemindersListDataView.ListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsModel);
    sub_1006DF90C(&qword_10094DB30, &type metadata accessor for REMRemindersListDataView.ListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v12 + 8))(v24, v29);
  }
}