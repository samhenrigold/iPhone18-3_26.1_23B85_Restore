void closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:)(uint64_t a1, char *a2)
{
  v483 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v433 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v478 = &v433 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v10 = MEMORY[0x28223BE20](v9);
  v465 = &v433 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v464 = &v433 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v463 = &v433 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v462 = &v433 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v460 = &v433 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v466 = &v433 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v459 = &v433 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v458 = &v433 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v433 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v444 = &v433 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v451 = &v433 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v457 = &v433 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v475 = &v433 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v442 = &v433 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v443 = &v433 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v474 = &v433 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v472 = &v433 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v441 = &v433 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v450 = &v433 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v456 = &v433 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v473 = &v433 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v440 = &v433 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v449 = &v433 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v476 = &v433 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v461 = &v433 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v439 = &v433 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v448 = &v433 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v455 = &v433 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v477 = &v433 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v438 = &v433 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v447 = &v433 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v454 = &v433 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v471 = &v433 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v437 = &v433 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v446 = &v433 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v453 = &v433 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v470 = &v433 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v436 = &v433 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v445 = &v433 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v452 = &v433 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v93 = &v433 - v92;
  v94 = MEMORY[0x28223BE20](v91);
  v435 = &v433 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v467 = &v433 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v100 = &v433 - v99;
  MEMORY[0x28223BE20](v98);
  v102 = &v433 - v101;
  swift_beginAccess();
  v469 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v104 = Strong;
    v434 = v7;
    v481 = *(v4 + 16);
    v482 = v4 + 16;
    v481(v102, v483, v3);
    __swift_storeEnumTagSinglePayload(v102, 0, 1, v3);
    v484 = v104;
    v105 = &v104[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent];
    swift_beginAccess();
    v106 = *(v9 + 48);
    outlined init with copy of UUID?(v102, v27);
    v468 = v105;
    outlined init with copy of UUID?(v105, &v27[v106]);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v3);
    v479 = v4;
    v480 = v9;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v102, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(&v27[v106], 1, v3) == 1)
      {
        outlined destroy of NetworkConnectionProtocol?(v27, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_9:
        v113 = type metadata accessor for NetworkAnalyticsEventMessage(0);
        v114 = *(v468 + *(v113 + 20));
        if (v114)
        {
          v115 = v468 + *(v113 + 24);
          if ((*(v115 + 8) & 1) == 0)
          {
            v116 = *v115;
            swift_beginAccess();
            v117 = swift_unknownObjectWeakLoadStrong();
            if (v117)
            {
              v118 = v117;
              v119 = *(v117 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
              v120 = v114;
              swift_unknownObjectRetain();

              [v119 emitMessage:v120 timestamp:v116];
              swift_unknownObjectRelease();
            }

            if (one-time initialization token for siriNetwork != -1)
            {
              swift_once();
            }

            v121 = type metadata accessor for Logger();
            __swift_project_value_buffer(v121, static Logger.siriNetwork);
            v122 = v484;
            v123 = Logger.logObject.getter();
            v124 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              v433 = swift_slowAlloc();
              v493[0] = v433;
              *v125 = 136315138;
              v126 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
              swift_beginAccess();
              v127 = &v122[v126];
              v128 = v467;
              outlined init with copy of UUID?(v127, v467);
              v129 = v435;
              outlined init with copy of UUID?(v128, v435);
              if (__swift_getEnumTagSinglePayload(v129, 1, v3) == 1)
              {
                v130 = 1819047278;
                v131 = 0xE400000000000000;
              }

              else
              {
                v133 = v478;
                v132 = v479;
                (*(v479 + 32))(v478, v129, v3);
                v481(v434, v133, v3);
                v130 = String.init<A>(describing:)();
                v131 = v134;
                (*(v132 + 8))(v133, v3);
              }

              v9 = v480;
              outlined destroy of NetworkConnectionProtocol?(v467, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
              v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v493);

              *(v125 + 4) = v135;
              _os_log_impl(&dword_223515000, v123, v124, "Network Analytics: Event httpHeaderEvent emitted: %s", v125, 0xCu);
              v136 = v433;
              __swift_destroy_boxed_opaque_existential_0(v433);
              MEMORY[0x223DE38F0](v136, -1, -1);
              MEMORY[0x223DE38F0](v125, -1, -1);
            }
          }
        }

LABEL_21:
        v481(v93, v483, v3);
        __swift_storeEnumTagSinglePayload(v93, 0, 1, v3);
        v137 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_preparationSnapshotEvent];
        swift_beginAccess();
        v138 = *(v9 + 48);
        v139 = v458;
        outlined init with copy of UUID?(v93, v458);
        v467 = v137;
        outlined init with copy of UUID?(v137, v139 + v138);
        if (__swift_getEnumTagSinglePayload(v139, 1, v3) == 1)
        {
          outlined destroy of NetworkConnectionProtocol?(v93, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          v140 = __swift_getEnumTagSinglePayload(v139 + v138, 1, v3);
          v141 = v479;
          v142 = v470;
          v143 = v471;
          if (v140 == 1)
          {
            outlined destroy of NetworkConnectionProtocol?(v139, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_28:
            v149 = type metadata accessor for NetworkAnalyticsEventMessage(0);
            v150 = *&v467[*(v149 + 20)];
            if (v150)
            {
              v151 = &v467[*(v149 + 24)];
              if ((v151[8] & 1) == 0)
              {
                v152 = *v151;
                swift_beginAccess();
                v153 = swift_unknownObjectWeakLoadStrong();
                if (v153)
                {
                  v154 = v153;
                  v155 = *(v153 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                  v156 = v150;
                  swift_unknownObjectRetain();

                  [v155 emitMessage:v156 timestamp:v152];
                  swift_unknownObjectRelease();
                }

                if (one-time initialization token for siriNetwork != -1)
                {
                  swift_once();
                }

                v157 = type metadata accessor for Logger();
                __swift_project_value_buffer(v157, static Logger.siriNetwork);
                v158 = v484;
                v159 = Logger.logObject.getter();
                v160 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v159, v160))
                {
                  v161 = swift_slowAlloc();
                  v162 = swift_slowAlloc();
                  v492[0] = v162;
                  *v161 = 136315138;
                  v163 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                  swift_beginAccess();
                  v164 = v445;
                  outlined init with copy of UUID?(&v158[v163], v445);
                  v165 = v436;
                  outlined init with copy of UUID?(v164, v436);
                  if (__swift_getEnumTagSinglePayload(v165, 1, v3) == 1)
                  {
                    v166 = 1819047278;
                    v167 = 0xE400000000000000;
                  }

                  else
                  {
                    v168 = *(v141 + 32);
                    v169 = v141;
                    v170 = v478;
                    v168(v478, v165, v3);
                    v481(v434, v170, v3);
                    v166 = String.init<A>(describing:)();
                    v167 = v171;
                    v172 = v170;
                    v141 = v169;
                    (*(v169 + 8))(v172, v3);
                  }

                  outlined destroy of NetworkConnectionProtocol?(v445, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                  v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v167, v492);

                  *(v161 + 4) = v173;
                  _os_log_impl(&dword_223515000, v159, v160, "Network Analytics: Event preparationSnapshotEvent emitted: %s", v161, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v162);
                  MEMORY[0x223DE38F0](v162, -1, -1);
                  MEMORY[0x223DE38F0](v161, -1, -1);

                  v142 = v470;
                  v143 = v471;
                }

                else
                {
                }
              }
            }

LABEL_40:
            v481(v142, v483, v3);
            __swift_storeEnumTagSinglePayload(v142, 0, 1, v3);
            v174 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_debugPreparationSnapshotEvent];
            swift_beginAccess();
            v175 = *(v480 + 48);
            v176 = v459;
            outlined init with copy of UUID?(v142, v459);
            v470 = v174;
            outlined init with copy of UUID?(v174, v176 + v175);
            if (__swift_getEnumTagSinglePayload(v176, 1, v3) == 1)
            {
              outlined destroy of NetworkConnectionProtocol?(v142, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
              if (__swift_getEnumTagSinglePayload(v176 + v175, 1, v3) == 1)
              {
                outlined destroy of NetworkConnectionProtocol?(v176, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_47:
                v180 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                v181 = *&v470[*(v180 + 20)];
                if (v181)
                {
                  v182 = &v470[*(v180 + 24)];
                  if ((v182[8] & 1) == 0)
                  {
                    v183 = *v182;
                    swift_beginAccess();
                    v184 = swift_unknownObjectWeakLoadStrong();
                    if (v184)
                    {
                      v185 = v184;
                      v186 = *(v184 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                      v187 = v181;
                      swift_unknownObjectRetain();

                      [v186 emitMessage:v187 timestamp:v183];
                      swift_unknownObjectRelease();
                    }

                    if (one-time initialization token for siriNetwork != -1)
                    {
                      swift_once();
                    }

                    v188 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v188, static Logger.siriNetwork);
                    v189 = v484;
                    v190 = Logger.logObject.getter();
                    v191 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v190, v191))
                    {
                      v192 = swift_slowAlloc();
                      v193 = swift_slowAlloc();
                      v491[0] = v193;
                      *v192 = 136315138;
                      v194 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                      swift_beginAccess();
                      v195 = &v189[v194];
                      v196 = v446;
                      outlined init with copy of UUID?(v195, v446);
                      v197 = v196;
                      v198 = v437;
                      outlined init with copy of UUID?(v197, v437);
                      if (__swift_getEnumTagSinglePayload(v198, 1, v3) == 1)
                      {
                        v199 = 1819047278;
                        v200 = 0xE400000000000000;
                      }

                      else
                      {
                        v201 = v478;
                        (*(v479 + 32))(v478, v198, v3);
                        v481(v434, v201, v3);
                        v199 = String.init<A>(describing:)();
                        v200 = v202;
                        (*(v479 + 8))(v201, v3);
                      }

                      outlined destroy of NetworkConnectionProtocol?(v446, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                      v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v200, v491);

                      *(v192 + 4) = v203;
                      _os_log_impl(&dword_223515000, v190, v191, "Network Analytics: Event debugPreparationSnapshotEvent emitted: %s", v192, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v193);
                      MEMORY[0x223DE38F0](v193, -1, -1);
                      MEMORY[0x223DE38F0](v192, -1, -1);

                      v143 = v471;
                    }

                    else
                    {
                    }
                  }
                }

LABEL_59:
                v481(v143, v483, v3);
                __swift_storeEnumTagSinglePayload(v143, 0, 1, v3);
                v204 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_readySnapshotEvent];
                swift_beginAccess();
                v205 = *(v480 + 48);
                v206 = v466;
                outlined init with copy of UUID?(v143, v466);
                v471 = v204;
                outlined init with copy of UUID?(v204, v206 + v205);
                if (__swift_getEnumTagSinglePayload(v206, 1, v3) == 1)
                {
                  outlined destroy of NetworkConnectionProtocol?(v143, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                  v207 = __swift_getEnumTagSinglePayload(v206 + v205, 1, v3);
                  v208 = v476;
                  if (v207 == 1)
                  {
                    outlined destroy of NetworkConnectionProtocol?(v206, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_66:
                    v214 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                    v215 = *&v471[*(v214 + 20)];
                    if (v215)
                    {
                      v216 = &v471[*(v214 + 24)];
                      if ((v216[8] & 1) == 0)
                      {
                        v217 = *v216;
                        swift_beginAccess();
                        v218 = swift_unknownObjectWeakLoadStrong();
                        if (v218)
                        {
                          v219 = v218;
                          v220 = *(v218 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                          v221 = v215;
                          swift_unknownObjectRetain();

                          [v220 emitMessage:v221 timestamp:v217];
                          swift_unknownObjectRelease();
                        }

                        if (one-time initialization token for siriNetwork != -1)
                        {
                          swift_once();
                        }

                        v222 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v222, static Logger.siriNetwork);
                        v223 = v484;
                        v224 = Logger.logObject.getter();
                        v225 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v224, v225))
                        {
                          v226 = swift_slowAlloc();
                          v227 = swift_slowAlloc();
                          v490[0] = v227;
                          *v226 = 136315138;
                          v228 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                          swift_beginAccess();
                          v229 = &v223[v228];
                          v230 = v447;
                          outlined init with copy of UUID?(v229, v447);
                          v231 = v230;
                          v232 = v438;
                          outlined init with copy of UUID?(v231, v438);
                          if (__swift_getEnumTagSinglePayload(v232, 1, v3) == 1)
                          {
                            v233 = 1819047278;
                            v234 = 0xE400000000000000;
                          }

                          else
                          {
                            v235 = v478;
                            (*(v479 + 32))(v478, v232, v3);
                            v481(v434, v235, v3);
                            v233 = String.init<A>(describing:)();
                            v234 = v236;
                            (*(v479 + 8))(v235, v3);
                          }

                          outlined destroy of NetworkConnectionProtocol?(v447, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v237 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v234, v490);

                          *(v226 + 4) = v237;
                          _os_log_impl(&dword_223515000, v224, v225, "Network Analytics: Event readySnapshotEvent emitted: %s", v226, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v227);
                          MEMORY[0x223DE38F0](v227, -1, -1);
                          MEMORY[0x223DE38F0](v226, -1, -1);
                        }

                        v208 = v476;
                      }
                    }

LABEL_78:
                    v238 = v477;
                    v481(v477, v483, v3);
                    __swift_storeEnumTagSinglePayload(v238, 0, 1, v3);
                    v239 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_debugReadySnapshotEvent];
                    swift_beginAccess();
                    v240 = *(v480 + 48);
                    v241 = v460;
                    outlined init with copy of UUID?(v238, v460);
                    v466 = v239;
                    outlined init with copy of UUID?(v239, v241 + v240);
                    if (__swift_getEnumTagSinglePayload(v241, 1, v3) == 1)
                    {
                      outlined destroy of NetworkConnectionProtocol?(v477, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                      if (__swift_getEnumTagSinglePayload(v241 + v240, 1, v3) == 1)
                      {
                        outlined destroy of NetworkConnectionProtocol?(v241, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        v242 = v461;
LABEL_85:
                        v248 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                        v249 = *&v466[*(v248 + 20)];
                        if (v249)
                        {
                          v250 = &v466[*(v248 + 24)];
                          if ((v250[8] & 1) == 0)
                          {
                            v251 = *v250;
                            swift_beginAccess();
                            v252 = swift_unknownObjectWeakLoadStrong();
                            if (v252)
                            {
                              v253 = v252;
                              v254 = *(v252 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                              v255 = v249;
                              swift_unknownObjectRetain();

                              [v254 emitMessage:v255 timestamp:v251];
                              swift_unknownObjectRelease();
                            }

                            if (one-time initialization token for siriNetwork != -1)
                            {
                              swift_once();
                            }

                            v256 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v256, static Logger.siriNetwork);
                            v257 = v484;
                            v258 = Logger.logObject.getter();
                            v259 = static os_log_type_t.default.getter();

                            if (os_log_type_enabled(v258, v259))
                            {
                              v260 = swift_slowAlloc();
                              v261 = swift_slowAlloc();
                              v489[0] = v261;
                              *v260 = 136315138;
                              v262 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                              swift_beginAccess();
                              v263 = &v257[v262];
                              v264 = v448;
                              outlined init with copy of UUID?(v263, v448);
                              v265 = v264;
                              v266 = v439;
                              outlined init with copy of UUID?(v265, v439);
                              if (__swift_getEnumTagSinglePayload(v266, 1, v3) == 1)
                              {
                                v267 = 1819047278;
                                v268 = 0xE400000000000000;
                              }

                              else
                              {
                                v269 = v478;
                                (*(v479 + 32))(v478, v266, v3);
                                v481(v434, v269, v3);
                                v267 = String.init<A>(describing:)();
                                v268 = v270;
                                (*(v479 + 8))(v269, v3);
                              }

                              outlined destroy of NetworkConnectionProtocol?(v448, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              v271 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, v268, v489);

                              *(v260 + 4) = v271;
                              _os_log_impl(&dword_223515000, v258, v259, "Network Analytics: Event debugReadySnapshotEvent emitted: %s", v260, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v261);
                              MEMORY[0x223DE38F0](v261, -1, -1);
                              MEMORY[0x223DE38F0](v260, -1, -1);
                            }

                            v208 = v476;
                          }
                        }

LABEL_97:
                        v481(v242, v483, v3);
                        __swift_storeEnumTagSinglePayload(v242, 0, 1, v3);
                        v272 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionSnapthotEvent];
                        swift_beginAccess();
                        v273 = *(v480 + 48);
                        v274 = v462;
                        outlined init with copy of UUID?(v242, v462);
                        v477 = v272;
                        outlined init with copy of UUID?(v272, v274 + v273);
                        if (__swift_getEnumTagSinglePayload(v274, 1, v3) == 1)
                        {
                          outlined destroy of NetworkConnectionProtocol?(v242, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v275 = __swift_getEnumTagSinglePayload(v274 + v273, 1, v3) == 1;
                          v276 = v274;
                          v277 = v473;
                          if (!v275)
                          {
                            goto LABEL_103;
                          }

                          outlined destroy of NetworkConnectionProtocol?(v276, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        }

                        else
                        {
                          outlined init with copy of UUID?(v274, v208);
                          if (__swift_getEnumTagSinglePayload(v274 + v273, 1, v3) == 1)
                          {
                            outlined destroy of NetworkConnectionProtocol?(v242, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                            (*(v479 + 8))(v208, v3);
                            v276 = v274;
                            v277 = v473;
LABEL_103:
                            outlined destroy of NetworkConnectionProtocol?(v276, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                            goto LABEL_117;
                          }

                          v278 = v479;
                          v279 = v242;
                          v280 = v208;
                          v281 = v478;
                          (*(v479 + 32))(v478, v274 + v273, v3);
                          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                          v282 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v283 = *(v278 + 8);
                          v283(v281, v3);
                          outlined destroy of NetworkConnectionProtocol?(v279, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v283(v280, v3);
                          outlined destroy of NetworkConnectionProtocol?(v274, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v277 = v473;
                          if ((v282 & 1) == 0)
                          {
LABEL_117:
                            v481(v277, v483, v3);
                            __swift_storeEnumTagSinglePayload(v277, 0, 1, v3);
                            v307 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_debugSessionConnectionSnapthotEvent];
                            swift_beginAccess();
                            v308 = v480;
                            v309 = *(v480 + 48);
                            v310 = v463;
                            outlined init with copy of UUID?(v277, v463);
                            v476 = v307;
                            outlined init with copy of UUID?(v307, v310 + v309);
                            if (__swift_getEnumTagSinglePayload(v310, 1, v3) == 1)
                            {
                              outlined destroy of NetworkConnectionProtocol?(v277, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              v311 = __swift_getEnumTagSinglePayload(v310 + v309, 1, v3);
                              v312 = v474;
                              if (v311 == 1)
                              {
                                outlined destroy of NetworkConnectionProtocol?(v310, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                v313 = v472;
LABEL_125:
                                v319 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                v320 = *&v476[*(v319 + 20)];
                                if (!v320)
                                {
                                  goto LABEL_137;
                                }

                                v321 = &v476[*(v319 + 24)];
                                if (v321[8])
                                {
                                  goto LABEL_137;
                                }

                                v322 = *v321;
                                swift_beginAccess();
                                v323 = swift_unknownObjectWeakLoadStrong();
                                if (v323)
                                {
                                  v324 = v323;
                                  v325 = *(v323 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                                  v326 = v320;
                                  swift_unknownObjectRetain();

                                  [v325 emitMessage:v326 timestamp:v322];
                                  v312 = v474;
                                  swift_unknownObjectRelease();
                                }

                                if (one-time initialization token for siriNetwork != -1)
                                {
                                  swift_once();
                                }

                                v327 = type metadata accessor for Logger();
                                __swift_project_value_buffer(v327, static Logger.siriNetwork);
                                v328 = v484;
                                v329 = Logger.logObject.getter();
                                v330 = static os_log_type_t.default.getter();

                                if (os_log_type_enabled(v329, v330))
                                {
                                  v331 = swift_slowAlloc();
                                  v332 = swift_slowAlloc();
                                  v487[0] = v332;
                                  *v331 = 136315138;
                                  v333 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                                  swift_beginAccess();
                                  v334 = v450;
                                  outlined init with copy of UUID?(&v328[v333], v450);
                                  v335 = v441;
                                  outlined init with copy of UUID?(v334, v441);
                                  if (__swift_getEnumTagSinglePayload(v335, 1, v3) == 1)
                                  {
                                    v336 = 1819047278;
                                    v337 = 0xE400000000000000;
                                  }

                                  else
                                  {
                                    v338 = v479;
                                    v339 = *(v479 + 32);
                                    v473 = v332;
                                    v340 = v478;
                                    v339(v478, v335, v3);
                                    v481(v434, v340, v3);
                                    v336 = String.init<A>(describing:)();
                                    v337 = v341;
                                    v342 = v340;
                                    v332 = v473;
                                    (*(v338 + 8))(v342, v3);
                                  }

                                  outlined destroy of NetworkConnectionProtocol?(v450, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                  v343 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v336, v337, v487);

                                  *(v331 + 4) = v343;
                                  _os_log_impl(&dword_223515000, v329, v330, "Network Analytics: Event debugSessionConnectionSnapthotEvent emitted: %s", v331, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0(v332);
                                  MEMORY[0x223DE38F0](v332, -1, -1);
                                  MEMORY[0x223DE38F0](v331, -1, -1);

                                  v312 = v474;
                                  v313 = v472;
                                  v308 = v480;
LABEL_137:
                                  v344 = v483;
                                  v481(v313, v483, v3);
                                  __swift_storeEnumTagSinglePayload(v313, 0, 1, v3);
                                  v345 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionFailedEvent];
                                  swift_beginAccess();
                                  v346 = *(v308 + 48);
                                  v347 = v464;
                                  outlined init with copy of UUID?(v313, v464);
                                  outlined init with copy of UUID?(v345, v347 + v346);
                                  if (__swift_getEnumTagSinglePayload(v347, 1, v3) == 1)
                                  {
                                    outlined destroy of NetworkConnectionProtocol?(v313, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                    v348 = __swift_getEnumTagSinglePayload(v347 + v346, 1, v3);
                                    v349 = v475;
                                    if (v348 == 1)
                                    {
                                      outlined destroy of NetworkConnectionProtocol?(v347, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_144:
                                      v354 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                      v355 = *&v345[*(v354 + 20)];
                                      if (v355)
                                      {
                                        v356 = &v345[*(v354 + 24)];
                                        if ((v356[8] & 1) == 0)
                                        {
                                          v357 = *v356;
                                          swift_beginAccess();
                                          v358 = swift_unknownObjectWeakLoadStrong();
                                          if (v358)
                                          {
                                            v359 = v358;
                                            v360 = *(v358 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                                            v361 = v355;
                                            swift_unknownObjectRetain();

                                            [v360 emitMessage:v361 timestamp:v357];
                                            v349 = v475;
                                            swift_unknownObjectRelease();
                                          }

                                          if (one-time initialization token for siriNetwork != -1)
                                          {
                                            swift_once();
                                          }

                                          v362 = type metadata accessor for Logger();
                                          __swift_project_value_buffer(v362, static Logger.siriNetwork);
                                          v363 = v484;
                                          v364 = Logger.logObject.getter();
                                          LODWORD(v365) = static os_log_type_t.default.getter();

                                          if (os_log_type_enabled(v364, v365))
                                          {
                                            v366 = swift_slowAlloc();
                                            v367 = swift_slowAlloc();
                                            v486[0] = v367;
                                            *v366 = 136315138;
                                            v368 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                                            swift_beginAccess();
                                            v369 = v443;
                                            outlined init with copy of UUID?(&v363[v368], v443);
                                            v370 = v442;
                                            outlined init with copy of UUID?(v369, v442);
                                            if (__swift_getEnumTagSinglePayload(v370, 1, v3) == 1)
                                            {
                                              v371 = 1819047278;
                                              v372 = 0xE400000000000000;
                                            }

                                            else
                                            {
                                              LODWORD(v474) = v365;
                                              v365 = v479;
                                              v373 = *(v479 + 32);
                                              v473 = v367;
                                              v374 = v478;
                                              v373(v478, v370, v3);
                                              v481(v434, v374, v3);
                                              v371 = String.init<A>(describing:)();
                                              v372 = v375;
                                              v376 = v365;
                                              LOBYTE(v365) = v474;
                                              v377 = v374;
                                              v367 = v473;
                                              (*(v376 + 8))(v377, v3);
                                            }

                                            outlined destroy of NetworkConnectionProtocol?(v369, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                            v378 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v371, v372, v486);

                                            *(v366 + 4) = v378;
                                            _os_log_impl(&dword_223515000, v364, v365, "Network Analytics: Event sessionConnectionFailedEvent emitted: %s", v366, 0xCu);
                                            __swift_destroy_boxed_opaque_existential_0(v367);
                                            MEMORY[0x223DE38F0](v367, -1, -1);
                                            MEMORY[0x223DE38F0](v366, -1, -1);

                                            v344 = v483;
                                            v349 = v475;
                                          }

                                          else
                                          {

                                            v344 = v483;
                                          }

                                          v308 = v480;
                                        }
                                      }

LABEL_157:
                                      v481(v349, v344, v3);
                                      __swift_storeEnumTagSinglePayload(v349, 0, 1, v3);
                                      v379 = &v484[OBJC_IVAR___SNNetworkAnalyticsInternal_peerConnectionFailedEvent];
                                      swift_beginAccess();
                                      v380 = *(v308 + 48);
                                      v381 = v465;
                                      outlined init with copy of UUID?(v349, v465);
                                      outlined init with copy of UUID?(v379, v381 + v380);
                                      if (__swift_getEnumTagSinglePayload(v381, 1, v3) == 1)
                                      {
                                        outlined destroy of NetworkConnectionProtocol?(v349, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                        if (__swift_getEnumTagSinglePayload(v381 + v380, 1, v3) == 1)
                                        {
                                          outlined destroy of NetworkConnectionProtocol?(v381, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_164:
                                          v388 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                          v389 = *&v379[*(v388 + 20)];
                                          if (v389)
                                          {
                                            v390 = &v379[*(v388 + 24)];
                                            if ((v390[8] & 1) == 0)
                                            {
                                              v391 = *v390;
                                              swift_beginAccess();
                                              v392 = swift_unknownObjectWeakLoadStrong();
                                              if (v392)
                                              {
                                                v393 = v392;
                                                v394 = *(v392 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                                                v395 = v389;
                                                swift_unknownObjectRetain();

                                                [v394 emitMessage:v395 timestamp:v391];
                                                swift_unknownObjectRelease();
                                              }

                                              if (one-time initialization token for siriNetwork != -1)
                                              {
                                                swift_once();
                                              }

                                              v396 = type metadata accessor for Logger();
                                              __swift_project_value_buffer(v396, static Logger.siriNetwork);
                                              v397 = v484;
                                              v398 = Logger.logObject.getter();
                                              v399 = static os_log_type_t.default.getter();

                                              if (os_log_type_enabled(v398, v399))
                                              {
                                                v400 = swift_slowAlloc();
                                                v483 = swift_slowAlloc();
                                                v485[0] = v483;
                                                *v400 = 136315138;
                                                v401 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                                                swift_beginAccess();
                                                v402 = &v397[v401];
                                                v403 = v451;
                                                outlined init with copy of UUID?(v402, v451);
                                                v404 = v444;
                                                outlined init with copy of UUID?(v403, v444);
                                                if (__swift_getEnumTagSinglePayload(v404, 1, v3) == 1)
                                                {
                                                  v405 = 1819047278;
                                                  v406 = 0xE400000000000000;
                                                }

                                                else
                                                {
                                                  v407 = v479;
                                                  v408 = *(v479 + 32);
                                                  v480 = v400;
                                                  v409 = v478;
                                                  v408(v478, v404, v3);
                                                  v481(v434, v409, v3);
                                                  v405 = String.init<A>(describing:)();
                                                  v406 = v410;
                                                  v411 = v409;
                                                  v400 = v480;
                                                  (*(v407 + 8))(v411, v3);
                                                }

                                                outlined destroy of NetworkConnectionProtocol?(v451, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                                v412 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v405, v406, v485);

                                                *(v400 + 4) = v412;
                                                _os_log_impl(&dword_223515000, v398, v399, "Network Analytics: Event peerConnectionFailedEvent emitted: %s", v400, 0xCu);
                                                v413 = v483;
                                                __swift_destroy_boxed_opaque_existential_0(v483);
                                                MEMORY[0x223DE38F0](v413, -1, -1);
                                                MEMORY[0x223DE38F0](v400, -1, -1);
                                              }
                                            }
                                          }

                                          goto LABEL_176;
                                        }
                                      }

                                      else
                                      {
                                        v382 = v457;
                                        outlined init with copy of UUID?(v381, v457);
                                        v383 = __swift_getEnumTagSinglePayload(v381 + v380, 1, v3);
                                        v384 = v479;
                                        if (v383 != 1)
                                        {
                                          v385 = v478;
                                          (*(v479 + 32))(v478, v381 + v380, v3);
                                          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                                          v386 = dispatch thunk of static Equatable.== infix(_:_:)();
                                          v387 = *(v384 + 8);
                                          v387(v385, v3);
                                          outlined destroy of NetworkConnectionProtocol?(v475, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                          v387(v382, v3);
                                          outlined destroy of NetworkConnectionProtocol?(v381, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                          if (v386)
                                          {
                                            goto LABEL_164;
                                          }

LABEL_176:
                                          v414 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                          v415 = *(v414 + 20);
                                          v416 = *(v468 + v415);
                                          *(v468 + v415) = 0;

                                          v417 = *(v414 + 20);
                                          v418 = *&v467[v417];
                                          *&v467[v417] = 0;

                                          v419 = *(v414 + 20);
                                          v420 = *&v470[v419];
                                          *&v470[v419] = 0;

                                          v421 = *(v414 + 20);
                                          v422 = *&v471[v421];
                                          *&v471[v421] = 0;

                                          v423 = *(v414 + 20);
                                          v424 = *&v466[v423];
                                          *&v466[v423] = 0;

                                          v425 = *(v414 + 20);
                                          v426 = *&v477[v425];
                                          *&v477[v425] = 0;

                                          v427 = *(v414 + 20);
                                          v428 = *&v476[v427];
                                          *&v476[v427] = 0;

                                          v429 = *(v414 + 20);
                                          v430 = *&v345[v429];
                                          *&v345[v429] = 0;

                                          v431 = *(v414 + 20);
                                          v432 = *&v379[v431];
                                          *&v379[v431] = 0;

                                          return;
                                        }

                                        outlined destroy of NetworkConnectionProtocol?(v349, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                        (*(v384 + 8))(v382, v3);
                                      }

                                      outlined destroy of NetworkConnectionProtocol?(v381, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                                      goto LABEL_176;
                                    }
                                  }

                                  else
                                  {
                                    outlined init with copy of UUID?(v347, v312);
                                    if (__swift_getEnumTagSinglePayload(v347 + v346, 1, v3) != 1)
                                    {
                                      v474 = v345;
                                      v350 = v478;
                                      v351 = v479;
                                      (*(v479 + 32))(v478, v347 + v346, v3);
                                      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                                      v352 = dispatch thunk of static Equatable.== infix(_:_:)();
                                      v353 = *(v351 + 8);
                                      v353(v350, v3);
                                      v345 = v474;
                                      outlined destroy of NetworkConnectionProtocol?(v313, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                      v353(v312, v3);
                                      v308 = v480;
                                      v344 = v483;
                                      outlined destroy of NetworkConnectionProtocol?(v347, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                      v349 = v475;
                                      if ((v352 & 1) == 0)
                                      {
                                        goto LABEL_157;
                                      }

                                      goto LABEL_144;
                                    }

                                    outlined destroy of NetworkConnectionProtocol?(v313, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                    (*(v479 + 8))(v312, v3);
                                    v349 = v475;
                                  }

                                  outlined destroy of NetworkConnectionProtocol?(v347, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                                  goto LABEL_157;
                                }

LABEL_123:
                                v313 = v472;
                                goto LABEL_137;
                              }
                            }

                            else
                            {
                              v314 = v456;
                              outlined init with copy of UUID?(v310, v456);
                              if (__swift_getEnumTagSinglePayload(v310 + v309, 1, v3) != 1)
                              {
                                v315 = v478;
                                v316 = v479;
                                (*(v479 + 32))(v478, v310 + v309, v3);
                                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                                v317 = dispatch thunk of static Equatable.== infix(_:_:)();
                                v318 = *(v316 + 8);
                                v318(v315, v3);
                                outlined destroy of NetworkConnectionProtocol?(v277, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                v318(v314, v3);
                                outlined destroy of NetworkConnectionProtocol?(v310, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                v312 = v474;
                                v313 = v472;
                                if ((v317 & 1) == 0)
                                {
                                  goto LABEL_137;
                                }

                                goto LABEL_125;
                              }

                              outlined destroy of NetworkConnectionProtocol?(v277, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              (*(v479 + 8))(v314, v3);
                              v312 = v474;
                            }

                            outlined destroy of NetworkConnectionProtocol?(v310, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                            goto LABEL_123;
                          }
                        }

                        v284 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                        v285 = *&v477[*(v284 + 20)];
                        if (v285)
                        {
                          v286 = &v477[*(v284 + 24)];
                          if ((v286[8] & 1) == 0)
                          {
                            v287 = *v286;
                            swift_beginAccess();
                            v288 = swift_unknownObjectWeakLoadStrong();
                            if (v288)
                            {
                              v289 = v288;
                              v290 = *(v288 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                              v291 = v285;
                              swift_unknownObjectRetain();

                              [v290 emitMessage:v291 timestamp:v287];
                              v277 = v473;
                              swift_unknownObjectRelease();
                            }

                            if (one-time initialization token for siriNetwork != -1)
                            {
                              swift_once();
                            }

                            v292 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v292, static Logger.siriNetwork);
                            v293 = v484;
                            v294 = Logger.logObject.getter();
                            v295 = static os_log_type_t.default.getter();

                            if (os_log_type_enabled(v294, v295))
                            {
                              v296 = swift_slowAlloc();
                              v297 = swift_slowAlloc();
                              v488[0] = v297;
                              *v296 = 136315138;
                              v298 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                              swift_beginAccess();
                              v299 = v449;
                              outlined init with copy of UUID?(&v293[v298], v449);
                              v300 = v440;
                              outlined init with copy of UUID?(v299, v440);
                              if (__swift_getEnumTagSinglePayload(v300, 1, v3) == 1)
                              {
                                v301 = 1819047278;
                                v302 = 0xE400000000000000;
                              }

                              else
                              {
                                v304 = v478;
                                v303 = v479;
                                (*(v479 + 32))(v478, v300, v3);
                                v481(v434, v304, v3);
                                v301 = String.init<A>(describing:)();
                                v302 = v305;
                                (*(v303 + 8))(v304, v3);
                              }

                              outlined destroy of NetworkConnectionProtocol?(v449, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              v306 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v301, v302, v488);

                              *(v296 + 4) = v306;
                              _os_log_impl(&dword_223515000, v294, v295, "Network Analytics: Event sessionConnectionSnapthotEvent emitted: %s", v296, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v297);
                              MEMORY[0x223DE38F0](v297, -1, -1);
                              MEMORY[0x223DE38F0](v296, -1, -1);

                              v277 = v473;
                            }

                            else
                            {
                            }
                          }
                        }

                        goto LABEL_117;
                      }
                    }

                    else
                    {
                      v243 = v455;
                      outlined init with copy of UUID?(v241, v455);
                      if (__swift_getEnumTagSinglePayload(v241 + v240, 1, v3) != 1)
                      {
                        v244 = v478;
                        v245 = v479;
                        (*(v479 + 32))(v478, v241 + v240, v3);
                        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                        v246 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v247 = *(v245 + 8);
                        v247(v244, v3);
                        outlined destroy of NetworkConnectionProtocol?(v477, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        v247(v243, v3);
                        v208 = v476;
                        outlined destroy of NetworkConnectionProtocol?(v241, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        v242 = v461;
                        if ((v246 & 1) == 0)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_85;
                      }

                      outlined destroy of NetworkConnectionProtocol?(v477, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                      (*(v479 + 8))(v243, v3);
                    }

                    outlined destroy of NetworkConnectionProtocol?(v241, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                    v242 = v461;
                    goto LABEL_97;
                  }
                }

                else
                {
                  v209 = v454;
                  outlined init with copy of UUID?(v206, v454);
                  if (__swift_getEnumTagSinglePayload(v206 + v205, 1, v3) != 1)
                  {
                    v210 = v478;
                    v211 = v479;
                    (*(v479 + 32))(v478, v206 + v205, v3);
                    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                    v212 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v213 = *(v211 + 8);
                    v213(v210, v3);
                    outlined destroy of NetworkConnectionProtocol?(v143, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                    v213(v209, v3);
                    outlined destroy of NetworkConnectionProtocol?(v206, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                    v208 = v476;
                    if ((v212 & 1) == 0)
                    {
                      goto LABEL_78;
                    }

                    goto LABEL_66;
                  }

                  outlined destroy of NetworkConnectionProtocol?(v143, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                  (*(v479 + 8))(v209, v3);
                  v208 = v476;
                }

                outlined destroy of NetworkConnectionProtocol?(v206, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                goto LABEL_78;
              }
            }

            else
            {
              v177 = v453;
              outlined init with copy of UUID?(v176, v453);
              if (__swift_getEnumTagSinglePayload(v176 + v175, 1, v3) != 1)
              {
                v178 = v478;
                (*(v141 + 32))(v478, v176 + v175, v3);
                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                LODWORD(v458) = dispatch thunk of static Equatable.== infix(_:_:)();
                v179 = *(v141 + 8);
                v179(v178, v3);
                outlined destroy of NetworkConnectionProtocol?(v142, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                v179(v177, v3);
                outlined destroy of NetworkConnectionProtocol?(v176, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                if ((v458 & 1) == 0)
                {
                  goto LABEL_59;
                }

                goto LABEL_47;
              }

              outlined destroy of NetworkConnectionProtocol?(v142, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
              (*(v141 + 8))(v177, v3);
            }

            outlined destroy of NetworkConnectionProtocol?(v176, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
            goto LABEL_59;
          }
        }

        else
        {
          v144 = v452;
          outlined init with copy of UUID?(v139, v452);
          v145 = __swift_getEnumTagSinglePayload(v139 + v138, 1, v3);
          v141 = v479;
          if (v145 != 1)
          {
            v146 = v478;
            (*(v479 + 32))(v478, v139 + v138, v3);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v147 = dispatch thunk of static Equatable.== infix(_:_:)();
            v148 = *(v141 + 8);
            v148(v146, v3);
            outlined destroy of NetworkConnectionProtocol?(v93, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v148(v144, v3);
            outlined destroy of NetworkConnectionProtocol?(v139, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v142 = v470;
            v143 = v471;
            if ((v147 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_28;
          }

          outlined destroy of NetworkConnectionProtocol?(v93, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          (*(v141 + 8))(v144, v3);
          v142 = v470;
          v143 = v471;
        }

        outlined destroy of NetworkConnectionProtocol?(v139, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        goto LABEL_40;
      }
    }

    else
    {
      v108 = v4;
      outlined init with copy of UUID?(v27, v100);
      if (__swift_getEnumTagSinglePayload(&v27[v106], 1, v3) != 1)
      {
        v109 = *(v4 + 32);
        v110 = v478;
        v109(v478, &v27[v106], v3);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v111 = dispatch thunk of static Equatable.== infix(_:_:)();
        v112 = *(v108 + 8);
        v112(v110, v3);
        outlined destroy of NetworkConnectionProtocol?(v102, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        v112(v100, v3);
        v9 = v480;
        outlined destroy of NetworkConnectionProtocol?(v27, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        if ((v111 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_9;
      }

      outlined destroy of NetworkConnectionProtocol?(v102, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      (*(v4 + 8))(v100, v3);
    }

    outlined destroy of NetworkConnectionProtocol?(v27, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_21;
  }
}

unint64_t ConnectionEstablishmentReport.attemptDelayInMs.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32) | (v1 <= 0.0);
  if (*(v0 + 32) & 1 | (v1 <= 0.0) || (v3 = v1 * 1000.0, v3 <= 0.0))
  {
    v4 = 0;
    return v4 | ((v2 & 1) << 32);
  }

  if (v3 >= 4294967300.0)
  {
    v4 = 0xFFFFFFFFLL;
    return v4 | ((v2 & 1) << 32);
  }

  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 4294967300.0)
  {
    v4 = v3;
    return v4 | ((v2 & 1) << 32);
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t ConnectionEstablishmentReport.durationInMs.getter()
{
  v1 = *(v0 + 40);
  if (*(v0 + 48) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t ConnectionHandshakeReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v21 = 0x20656D616ELL;
  v22 = 0xE500000000000000;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  outlined init with copy of ConnectionHandshakeReport(v0, &v19);
  MEMORY[0x223DE2180](v3, v2);

  v5 = v21;
  v4 = v22;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v19 = 0xD000000000000016;
  v20 = 0x80000002235F9D40;
  v6 = ConnectionHandshakeReport.handshakeDurationInMs.getter();
  if (v7)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v21 = v6;
    v9 = String.init<A>(describing:)();
    v8 = v10;
  }

  MEMORY[0x223DE2180](v9, v8);

  v12 = v19;
  v11 = v20;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v19 = 0xD000000000000011;
  v20 = 0x80000002235F9D60;
  v13 = ConnectionHandshakeReport.handshakeRTTInMs.getter();
  if ((v13 & 0x100000000) != 0)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    LODWORD(v21) = v13;
    v1 = String.init<A>(describing:)();
    v15 = v14;
  }

  MEMORY[0x223DE2180](v1, v15);

  v17 = v19;
  v16 = v20;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v19 = 0xD000000000000022;
  v20 = 0x80000002235F9D80;
  MEMORY[0x223DE2180](v5, v4);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](v12, v11);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](v17, v16);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return v19;
}

unint64_t ConnectionHandshakeReport.handshakeDurationInMs.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t ConnectionHandshakeReport.handshakeRTTInMs.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40) | (v1 <= 0.0);
  if (*(v0 + 40) & 1 | (v1 <= 0.0) || (v3 = v1 * 1000.0, v3 <= 0.0))
  {
    v4 = 0;
    return v4 | ((v2 & 1) << 32);
  }

  if (v3 >= 4294967300.0)
  {
    v4 = 0xFFFFFFFFLL;
    return v4 | ((v2 & 1) << 32);
  }

  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 4294967300.0)
  {
    v4 = v3;
    return v4 | ((v2 & 1) << 32);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t ConnectionResolutionReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xE700000000000000;
  strcpy(v31, "source ");
  v31[1] = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  if ((*(v0 + 4) & 1) == 0)
  {
    LODWORD(v33) = *v0;
    v3 = String.init<A>(describing:)();
    v2 = v4;
  }

  MEMORY[0x223DE2180](v3, v2);

  v5 = v31[1];
  v30 = v31[0];
  strcpy(v31, "durationInMs ");
  HIWORD(v31[1]) = -4864;
  v6 = ConnectionResolutionReport.durationInMs.getter();
  if (v7)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v33 = v6;
    v9 = String.init<A>(describing:)();
    v8 = v10;
  }

  MEMORY[0x223DE2180](v9, v8);

  v11 = v31[1];
  v29 = v31[0];
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(16);

  strcpy(v31, "endpointCount ");
  HIBYTE(v31[1]) = -18;
  if (*(v0 + 24))
  {
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  else
  {
    LODWORD(v33) = *(v0 + 20);
    v13 = String.init<A>(describing:)();
    v12 = v14;
  }

  MEMORY[0x223DE2180](v13, v12);

  v15 = v31[1];
  v28 = v31[0];
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(23);

  v33 = 0xD000000000000014;
  v34 = 0x80000002235F6EC0;
  v16 = *(v0 + 40);
  if (v16)
  {
    v17 = *(v0 + 48);
    v31[0] = *(v0 + 32);
    v31[1] = v16;
    v32 = v17;

    v18 = String.init<A>(describing:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x223DE2180](v18, v20);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  v21 = v33;
  v22 = v34;
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(22);

  v33 = 0xD000000000000013;
  v34 = 0x80000002235F6EE0;
  v23 = *(v0 + 64);
  if (v23)
  {
    v24 = *(v0 + 72);
    v31[0] = *(v0 + 56);
    v31[1] = v23;
    v32 = v24;

    v1 = String.init<A>(describing:)();
    v26 = v25;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v26);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(54);
  MEMORY[0x223DE2180](0xD000000000000023, 0x80000002235F6F00);
  MEMORY[0x223DE2180](v30, v5);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v29, v11);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v28, v15);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v21, v22);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v33, v34);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return v31[0];
}

unint64_t ConnectionResolutionReport.durationInMs.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 16) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

void ConnectionEstablishmentReport.netConnectionStateReadySnapshot.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D58BE8]) init];
  v2 = v1;
  if (v1)
  {
    v3 = *(v0 + 1);
    if (v3)
    {
      v4 = *v0;
      v5 = v1;
      v3 = MEMORY[0x223DE2070](*&v4, v3);
    }

    else
    {
      v6 = v1;
    }

    [v2 setConnectionInfo_];
  }

  if (v0[4])
  {
    goto LABEL_18;
  }

  v7 = v0[3];
  if (v7 <= 0.0)
  {
    goto LABEL_18;
  }

  v8 = v7 * 1000.0;
  if (v8 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    if (v8 < 4294967300.0)
    {
      OUTLINED_FUNCTION_0_58();
      if (!v11 & v10)
      {
        __break(1u);
      }

      else if (v9 > -1.0)
      {
        OUTLINED_FUNCTION_1_34();
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = v12;
        goto LABEL_17;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 0xFFFFFFFFLL;
  }

LABEL_17:
  [v2 setConnectionEstablishmentAttemptDelay_];
LABEL_18:
  if ((*(v0 + 20) & 1) == 0)
  {
    [v2 setConnectionEstablishmentPreviousAttemptCount_];
  }
}

void ConnectionEstablishmentReport.netDebugConnectionStateReadySnapshot.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D58B90]) init];
  v2 = ConnectionEstablishmentReport.durationInMs.getter();
  if ((v3 & 1) == 0)
  {
    [v1 setDurationInMs_];
  }

  if (v1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D58C08]);
    v5 = v1;
    v6 = [v4 init];
    [v5 setProxyConfiguration_];

    v7 = [v5 proxyConfiguration];
    if (v7)
    {
      v8 = v7;
      [v7 setIsProxyConfigured_];
    }

    v9 = [v5 proxyConfiguration];
    if (v9)
    {
      v10 = v9;
      [v9 setUsingConfiguredProxy_];
    }
  }

  v11 = *(v0 + 56);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v56 = v1;
  if (v12)
  {
    v55 = v0;
    __dst[0] = MEMORY[0x277D84F90];
    v14 = (v11 + 72);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v14 - 4);
      v17 = *(v14 - 3);
      v18 = *(v14 - 16);
      v19 = *(v14 - 1);
      v20 = *v14;
      v21 = objc_allocWithZone(MEMORY[0x277D58BD8]);

      v22 = [v21 init];
      if ((v18 & 1) == 0 && v17 > 0.0)
      {
        if (v17 * 1000.0 <= 0.0)
        {
          v27 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_1_34();
          if (v23)
          {
            OUTLINED_FUNCTION_0_58();
            if (!v26 & v25)
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              return;
            }

            if (v24 <= -1.0)
            {
              goto LABEL_84;
            }

            v27 = v24;
          }

          else
          {
            v27 = -1;
          }
        }

        [v22 setHandShakeDuration_];
      }

      if (v19 <= 0.0)
      {
        v28 = 1;
      }

      else
      {
        v28 = v20;
      }

      if ((v28 & 1) == 0)
      {
        if (v19 * 1000.0 <= 0.0)
        {
          v31 = 0;
        }

        else if (v19 * 1000.0 >= 4294967300.0)
        {
          v31 = 0xFFFFFFFFLL;
        }

        else
        {
          OUTLINED_FUNCTION_0_58();
          if (!v26 & v25)
          {
            goto LABEL_82;
          }

          if (v29 <= -1.0)
          {
            goto LABEL_85;
          }

          OUTLINED_FUNCTION_1_34();
          if (!v23)
          {
            goto LABEL_87;
          }

          v31 = v30;
        }

        [v22 setHandShakeRTT_];
      }

      if (v16)
      {
        if (v22)
        {
          type metadata accessor for NetworkAnalytics(0);
          v32 = v22;
          [v32 setProtocol_];

LABEL_38:
          v33 = v22;
          MEMORY[0x223DE2240]();
          if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v15 = __dst[0];
          goto LABEL_42;
        }
      }

      else if (v22)
      {
        goto LABEL_38;
      }

LABEL_42:
      v14 += 48;
      if (!--v12)
      {
        if (v1)
        {
          outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v15, v1, &lazy cache variable for type metadata for NETSchemaNETHandShakeProtocol, 0x277D58BD8, &selRef_setConnectionEstablishmentProtocols_);
        }

        else
        {
        }

        v13 = MEMORY[0x277D84F90];
        v0 = v55;
        break;
      }
    }
  }

  v34 = *(v0 + 64);
  v35 = *(v34 + 16);
  if (!v35)
  {
    return;
  }

  v36 = v13;
  v59 = v13;
  v37 = (v34 + 32);
  for (i = v35 - 1; ; --i)
  {
    memcpy(__dst, v37, sizeof(__dst));
    v39 = *&__dst[1];
    v40 = __dst[2];
    v41 = objc_allocWithZone(MEMORY[0x277D58BD0]);
    outlined init with copy of ConnectionResolutionReport(__dst, v57);
    v42 = [v41 init];
    if ((v40 & 1) == 0 && v39 > 0.0)
    {
      if (v39 * 1000.0 <= 0.0)
      {
        v44 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_34();
        if (v23)
        {
          OUTLINED_FUNCTION_0_58();
          if (!v26 & v25)
          {
            goto LABEL_83;
          }

          if (v43 <= -1.0)
          {
            goto LABEL_86;
          }

          v44 = v43;
        }

        else
        {
          v44 = -1;
        }
      }

      [v42 setDuration_];
    }

    if ((__dst[3] & 1) == 0)
    {
      [v42 setEndpointCount_];
    }

    if ((__dst[0] & 0x100000000) == 0)
    {
      [v42 setResolutionSource_];
    }

    if (__dst[5])
    {
      v45 = __dst[6];
      v46 = [objc_allocWithZone(MEMORY[0x277D58BC0]) init];
      if (v46)
      {
        v47 = v46;
        [v46 setPort_];
        type metadata accessor for NetworkAnalytics(0);
        [v47 setType_];
        v48 = v42;
        [v48 setSuccessfulEndpoint_];
      }
    }

    if (!__dst[8] || (v49 = __dst[9], (v50 = [objc_allocWithZone(MEMORY[0x277D58BC0]) init]) == 0))
    {
      outlined destroy of ConnectionResolutionReport(__dst);
      if (!v42)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    v51 = v50;
    [v50 setPort_];
    type metadata accessor for NetworkAnalytics(0);
    [v51 setType_];
    if (!v42)
    {
      break;
    }

    v52 = v42;
    v53 = v51;
    [v52 setPreferredEndpoint_];
    outlined destroy of ConnectionResolutionReport(__dst);

LABEL_71:
    v54 = v42;
    MEMORY[0x223DE2240]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v36 = v59;
LABEL_74:
    if (!i)
    {
      goto LABEL_77;
    }

LABEL_75:
    v37 += 80;
  }

  outlined destroy of ConnectionResolutionReport(__dst);

  if (i)
  {
    goto LABEL_75;
  }

LABEL_77:
  if (v56)
  {
    outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v36, v56, &lazy cache variable for type metadata for NETSchemaNETEstablishmentResolution, 0x277D58BD0, &selRef_setResolutions_);
  }

  else
  {
  }
}

uint64_t static NetworkAnalytics.netProtocol(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29(7365492, 0xE300000000000000) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == 7564404 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29(7564404, 0xE300000000000000) & 1) != 0)
    {

      return 2;
    }

    else if (v4 == 1886680168 && v0 == 0xE400000000000000)
    {

      return 3;
    }

    else
    {
      OUTLINED_FUNCTION_4_29(1886680168, 0xE400000000000000);
      OUTLINED_FUNCTION_12_11();
      if (v4)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t outlined destroy of ConnectionEstablishmentReport?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void closure #1 in Connection.willStartConnection(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_65_3(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v8, static Logger.siriNetwork);
    swift_unknownObjectRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_30();
      v11 = swift_slowAlloc();
      v22[0] = OUTLINED_FUNCTION_58_2();
      *v11 = 136315394;
      v12 = *(a2 + 448);
      if (v12 >= 2)
      {
        v22[1] = *(a2 + 440);
        v22[2] = v12;

        v14 = String.init<A>(describing:)();
        v13 = v15;
      }

      else
      {
        OUTLINED_FUNCTION_46_4();
        v13 = 0xE700000000000000;
        v14 = OUTLINED_FUNCTION_3_18();
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v22);
      OUTLINED_FUNCTION_53_4();

      *(v11 + 4) = v4;
      *(v11 + 12) = 2080;
      v16 = Dictionary.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v22);
      OUTLINED_FUNCTION_53_4();

      *(v11 + 14) = v4;
      _os_log_impl(&dword_223515000, v9, v10, "Connection - Start: Background Connection. Connection route %s will start, HTTP Header %s.", v11, 0x16u);
      swift_arrayDestroy();
      v18 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v18);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v20 willStartConnection:v7 with:isa];
      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in Connection.didOpenConnectionType(_:type:routeId:delay:)(uint64_t a1, void *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_65_3(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = BackgroundConnection.getConnectionMethod()();
    countAndFlagsBits = v12._countAndFlagsBits;
    v14 = OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection;
    v15 = *&v11[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection];
    if (!v15)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v23, static Logger.siriNetwork);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v73 = a5;
        v74 = a6;
        OUTLINED_FUNCTION_30();
        v26 = swift_slowAlloc();
        __dst[0] = OUTLINED_FUNCTION_58_2();
        *v26 = 136315394;
        v27 = a2[56];
        if (v27 >= 2)
        {
          v80 = a2[55];
          v81 = v27;

          a6 = String.init<A>(describing:)();
          v28 = v46;
        }

        else
        {
          OUTLINED_FUNCTION_19_7();
          v28 = 0xE700000000000000;
        }

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, v28, __dst);

        *(v26 + 4) = v47;
        *(v26 + 12) = 2080;
        countAndFlagsBits = v12._countAndFlagsBits;
        *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12._countAndFlagsBits, v12._object, __dst);
        _os_log_impl(&dword_223515000, v24, v25, "Connection - Status: Background Connection. Connection route %s ready. Method %s", v26, 0x16u);
        swift_arrayDestroy();
        v48 = OUTLINED_FUNCTION_1_2();
        MEMORY[0x223DE38F0](v48);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();

        a5 = v73;
        a6 = v74;
      }

      else
      {
      }

      *&v11[v14] = a2;

      v50 = a2[55];
      v49 = a2[56];
      memcpy(v77, a2 + 57, 0x62uLL);
      if (v49 != 1)
      {
        v51 = &v11[OBJC_IVAR___SNConnectionInternal_activeRoute];
        memcpy(__dst, &v11[OBJC_IVAR___SNConnectionInternal_activeRoute], 0x72uLL);
        *v51 = v50;
        v51[1] = v49;
        memcpy(v51 + 2, v77, 0x62uLL);
        v80 = v50;
        v81 = v49;
        memcpy(v82, v77, sizeof(v82));
        outlined init with copy of ConnectionPolicyRoute(&v80, v78);
        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
      }

      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        v53 = v52;
        v54 = objc_allocWithZone(type metadata accessor for ConnectionTypeWrapper());
        v55 = OUTLINED_FUNCTION_15_8();
        v56 = ConnectionTypeWrapper.init(_:)(v55);
        if (a6)
        {
          v57 = MEMORY[0x223DE2070](a5, a6);
        }

        else
        {
          v57 = 0;
        }

        v58 = MEMORY[0x223DE2070](countAndFlagsBits, v12._object);
        [v53 didOpenConnectionType:v11 type:v56 routeId:v57 delay:v58 method:a3];
        swift_unknownObjectRelease();
      }

      v59 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
      OUTLINED_FUNCTION_27_3(&v11[OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory], __dst);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v60 = *(*&v11[v59] + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v60);
      v61 = *&v11[v59];
      *(v61 + 16) = v60 + 1;
      v62 = v61 + 16 * v60;
      *(v62 + 32) = countAndFlagsBits;
      *(v62 + 40) = v12._object;
      *&v11[v59] = v61;
      swift_endAccess();
      v63 = *&v11[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup];
      dispatch_group_leave(v63);

LABEL_35:
      return;
    }

    if (v15 != a2)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v16, static Logger.siriNetwork);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        OUTLINED_FUNCTION_30();
        v19 = swift_slowAlloc();
        __dst[0] = OUTLINED_FUNCTION_58_2();
        *v19 = 136315394;
        v20 = a2[56];
        if (v20 >= 2)
        {
          v80 = a2[55];
          v81 = v20;

          v21 = String.init<A>(describing:)();
          v22 = v37;
        }

        else
        {
          v21 = 0x6E776F6E6B6E75;
          OUTLINED_FUNCTION_46_4();
          v22 = 0xE700000000000000;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, __dst);

        *(v19 + 4) = v38;
        *(v19 + 12) = 2080;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12._countAndFlagsBits, v12._object, __dst);

        *(v19 + 14) = v39;
        OUTLINED_FUNCTION_52_5();
        _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        v45 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v45);
      }

      else
      {
      }

      BackgroundConnection.cancel()();
      OUTLINED_FUNCTION_27_3(&v11[OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections], &v80);
      specialized Set._Variant.remove(_:)(a2);
      swift_endAccess();

      memcpy(__dst, a2 + 55, 0x72uLL);
      if (__dst[1] != 1)
      {
        v80 = __dst[0];
        v81 = __dst[1];
        memcpy(v82, a2 + 57, sizeof(v82));
        OUTLINED_FUNCTION_27_3(&v11[OBJC_IVAR___SNConnectionInternal_pendingRoutes], v75);
        memcpy(v77, __dst, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v77, v78);
        specialized Set._Variant.remove(_:)(__src, &v80);
        memcpy(v78, __src, 0x72uLL);
        swift_endAccess();
        outlined destroy of NetworkConnectionProtocol?(v78, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);

        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
        return;
      }

      goto LABEL_35;
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v29, static Logger.siriNetwork);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_4_3();
      v33 = swift_slowAlloc();
      __dst[0] = v33;
      *v32 = 136315138;
      v34 = a2[56];
      if (v34 >= 2)
      {
        v80 = a2[55];
        v81 = v34;

        v35 = String.init<A>(describing:)();
        v36 = v64;
      }

      else
      {
        v35 = 0x6E776F6E6B6E75;
        OUTLINED_FUNCTION_46_4();
        v36 = 0xE700000000000000;
      }

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, __dst);

      *(v32 + 4) = v65;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v71 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v71);
      v72 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v72);
    }
  }
}

Swift::String __swiftcall BackgroundConnection.getConnectionMethod()()
{
  OUTLINED_FUNCTION_133();
  v2 = *(v0 + 1136);
  OUTLINED_FUNCTION_78_1(v11);
  OUTLINED_FUNCTION_78_1(__src);
  if (*(v0 + 1080))
  {
    OUTLINED_FUNCTION_134();
    v3 = *(v1 + 280);
    outlined init with copy of ConnectionConfiguration(v11, __dst);
    swift_unknownObjectRetain();
    v4 = OUTLINED_FUNCTION_0_36();
    v5 = v3(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined init with copy of ConnectionConfiguration(v11, __dst);
    v5 = 0;
  }

  ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(__src, v5 & 1, v2);
  memcpy(__dst, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_106_0();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x2821FC240]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void closure #1 in NetworkConnectionProvider.handleViabilityUpdate(_:)(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    outlined init with copy of NetworkConnectionProtocol?(v4 + 16, v26, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    v5 = v26[3];
    outlined destroy of NetworkConnectionProtocol?(v26, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v5 && (*(v4 + 2099) & 1) == 0)
    {
      if (*(v4 + 2098) != (a2 & 1))
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.siriNetwork);
        swift_retain_n();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v26[0] = v18;
          *v17 = 136315650;
          v19 = NetworkConnectionProvider.connectionIdentifier.getter();
          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v26);

          *(v17 + 4) = v21;
          *(v17 + 12) = 1024;
          LODWORD(v21) = *(v4 + 2098);

          *(v17 + 14) = v21;

          *(v17 + 18) = 1024;
          *(v17 + 20) = a2 & 1;
          _os_log_impl(&dword_223515000, v15, v16, "Provider - NetworkConnectionProvider [%s]: Viability updated from %{BOOL}d to %{BOOL}d", v17, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x223DE38F0](v18, -1, -1);
          MEMORY[0x223DE38F0](v17, -1, -1);
        }

        else
        {
        }
      }

      if (*(v4 + 2100) == 1)
      {
        if ((*(v4 + 2098) ^ a2))
        {
          v22 = a2 & 1;
          *(v4 + 2098) = a2 & 1;
          v23 = swift_unknownObjectWeakLoadStrong();
          if (v23)
          {
            v24 = v23;

            specialized BackgroundConnection.connectionProvider(_:receivedViabilityChangeNotification:)(v25, v22, v24);
            swift_unknownObjectRelease();

            return;
          }
        }
      }

      else if ((*(v4 + 2098) ^ a2))
      {
        *(v4 + 2098) = a2 & 1;
        if (a2)
        {
          specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
        }

        else if (!*(v4 + 2136))
        {
          specialized ConnectionProviderProtocol.setupConnectionUnviableTimer()();
        }
      }
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.siriNetwork);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26[0] = v10;
        *v9 = 136315138;
        v11 = NetworkConnectionProvider.connectionIdentifier.getter();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v26);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider [%s]: Viability updated, but connection does not exist or cancelled", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x223DE38F0](v10, -1, -1);
        MEMORY[0x223DE38F0](v9, -1, -1);
      }
    }
  }
}

SiriNetwork::NetworkActivityLabel_optional __swiftcall NetworkActivityLabel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2 + 1);
  return Hasher._finalize()();
}

id SpeechPacket.init()(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___SNSpeechPacketInternal_internalAceId];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR___SNSpeechPacketInternal_internalRefId];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___SNSpeechPacketInternal_packets] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SNSpeechPacketInternal_packetNumber] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpeechPacket();
  return objc_msgSendSuper2(&v5, sel_init);
}

void Connection.sendCommands(_:with:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v18 = OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v9);
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v0;
  v19[4] = partial apply for closure #1 in Connection.sendCommands(_:with:);
  v19[5] = v10;
  OUTLINED_FUNCTION_1_1();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v19[2] = v11;
  v19[3] = &block_descriptor_17;
  v12 = _Block_copy(v19);

  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v13, v14, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v15);
  _Block_release(v12);
  v16 = OUTLINED_FUNCTION_3_2();
  v17(v16);
  (*(v7 + 8))(v1, v18);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t specialized Connection.accessPotentiallyActiveConnections(_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  if (*(a1 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal) == 1)
  {
LABEL_2:
    closure #1 in closure #1 in Connection.sendCommands(_:with:)(0, a2, a3, a4);
LABEL_3:

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a3, a4);
  }

  if (*(a1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {

    closure #1 in closure #1 in Connection.sendCommands(_:with:)(v8, a2, a3, a4);

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a3, a4);
  }

  v10 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v11 = *(a1 + v10);

  result = specialized Set.isEmpty.getter(v12);
  if (result)
  {

    goto LABEL_2;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundConnection();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
    result = Set.Iterator.init(_cocoa:)();
    v11 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
  }

  else
  {
    v15 = 0;
    v17 = -1 << *(v11 + 32);
    v13 = v11 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);
  }

  v20 = (v14 + 64) >> 6;
  while (v11 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for BackgroundConnection(), swift_dynamicCast(), v23 = v16, !v25))
    {
LABEL_26:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant(v11);
      goto LABEL_3;
    }

LABEL_25:

    BackgroundConnection.sendCommands(_:with:)(a2, a3, a4);

    v16 = v23;
  }

  v21 = v15;
  v22 = v16;
  if (v16)
  {
LABEL_21:
    v23 = (v22 - 1) & v22;
    v24 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_26;
    }

    v22 = *(v13 + 8 * v15);
    ++v21;
    if (v22)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Connection.sendCommands(_:with:)(uint64_t result, unint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  if (!result)
  {
    if (a2 >> 62)
    {
      result = __CocoaSet.count.getter();
      v7 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return result;
      }
    }

    if (v7 < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DE2730](v8, a2);
      if (a3)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++v8;
      result = swift_unknownObjectRelease();
      if (v7 == v8)
      {
        return result;
      }
    }

    v9 = *(a2 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v10 = swift_allocError();
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 3;
    *(v11 + 24) = xmmword_2235F01E0;
    a3(v9, v10);

    goto LABEL_12;
  }

  BackgroundConnection.sendCommands(_:with:)(a2, a3, a4);
}

uint64_t BackgroundConnection.sendCommands(_:with:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized Array.count.getter(a1);
  v7 = 0;
  v14 = result;
  while (v14 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223DE2730](v7, a1);
      v8 = result;
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v7 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (a1 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(result, 1))
    {
      goto LABEL_16;
    }

    v9 = v7 != result - 1;
    OUTLINED_FUNCTION_109();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v8;
    v11 = OUTLINED_FUNCTION_32();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v11, v12);
    v13 = swift_unknownObjectRetain();
    BackgroundConnection.sendCommand(_:moreComing:with:)(v13, v9, partial apply for closure #1 in BackgroundConnection.sendCommands(_:with:), v10);
    swift_unknownObjectRelease();

    ++v7;
  }

  return result;
}

uint64_t sub_223568A54()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void OUTLINED_FUNCTION_74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 300);

  _os_log_impl(a1, v4, v8, a4, v5, 0x20u);
}

uint64_t partial apply for closure #1 in BackgroundConnection.sendCommands(_:with:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(*(v1 + 32), result);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned SNSessionObject?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall BackgroundConnection.updateFirstByteReadTime()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v1 systemUptime];
  v3 = v2;

  *(v0 + 1216) = v3;
}

CFStringRef CommunicationProtocolAce.consumeHttpHeader(withData:)()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 + 104);
  if (!v5)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v22, static Logger.siriNetwork);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_17_5();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v25);
      OUTLINED_FUNCTION_44_2();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      v32 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v32);
    }

    return 0;
  }

  v6 = v5;
  v7 = OUTLINED_FUNCTION_41_0();
  v9 = CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(v7, v8);
  if (v1)
  {
LABEL_20:
    v56 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v57 = v88 == 4 && v84 == 4;
      if (v57 && !(v86 | v85 | v87))
      {
        OUTLINED_FUNCTION_32_0();
        if (!v57)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v73, static Logger.siriNetwork);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        v76 = OUTLINED_FUNCTION_16_0();
        if (os_log_type_enabled(v76, v77))
        {
          OUTLINED_FUNCTION_6_5();
          v78 = swift_slowAlloc();
          OUTLINED_FUNCTION_28_3();
          v79 = swift_slowAlloc();
          *v78 = 138412290;
          lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
          OUTLINED_FUNCTION_10_0();
          swift_allocError();
          *v80 = 4;
          *(v80 + 8) = 0;
          *(v80 + 16) = 0;
          *(v80 + 24) = 0;
          *(v80 + 32) = 4;
          v81 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 4) = v81;
          *v79 = v81;
          _os_log_impl(&dword_223515000, v74, v75, "CommunicationProtocol - Ace header: Need more data to read Http Header %@", v78, 0xCu);
          outlined destroy of NetworkConnectionProtocol?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v82 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v82);
          v83 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v83);
        }

        return 0;
      }

      outlined consume of BackgroundConnectionError(v84, v85, v86, v87, v88);
    }

    OUTLINED_FUNCTION_32_0();
    if (!v57)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v58, static Logger.siriNetwork);
    v59 = v3;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_6_5();
      v62 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_3();
      v2 = swift_slowAlloc();
      *v62 = 138412290;
      v63 = v3;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v64;
      *v2 = v64;
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v65, v66, v67, v68, v69, v70);
      outlined destroy of NetworkConnectionProtocol?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v71 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v71);
      v72 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v72);
    }

    swift_willThrow();
    return v2;
  }

  v11 = v9;
  if (v9 == 200)
  {
    v2 = v10;
    OUTLINED_FUNCTION_32_0();
    if (!v57)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v12, static Logger.siriNetwork);
    v13 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v14 = OUTLINED_FUNCTION_10_4();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_17_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_74_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      v21 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v21);
    }

    *(v4 + 104) = 0;
    return v2;
  }

  v33 = [objc_opt_self() localizedStringForStatusCode_];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  OUTLINED_FUNCTION_32_0();
  if (!v57)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v36, static Logger.siriNetwork);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_30();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v84 = swift_slowAlloc();
    *v39 = 134218242;
    *(v39 + 4) = v11;
    *(v39 + 12) = 2080;
    v40 = OUTLINED_FUNCTION_57();
    *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v42);
    OUTLINED_FUNCTION_74_0();
    _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v84);
    v48 = OUTLINED_FUNCTION_5_14();
    MEMORY[0x223DE38F0](v48);
    v49 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v49);
  }

  result = __CFStringMakeConstantString("Location");
  if (result)
  {
    v51 = result;
    v52 = OUTLINED_FUNCTION_14_3();
    v54 = CFHTTPMessageCopyHeaderFieldValue(v52, v53);

    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    v3 = swift_allocError();
    *v55 = v11;
    *(v55 + 8) = v54;
    *(v55 + 16) = v2;
    *(v55 + 24) = v35;
    *(v55 + 32) = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_7_1();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x223DE13E0](*a1, a1[1]);
  v7 = *a1;
  v8 = a1[1];
  v9 = a2;
  OUTLINED_FUNCTION_72_0();

  specialized Data.withUnsafeBytes<A>(_:)(v7, v8, v2, v6, v5, v16);
  v11 = v10;
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    *(v5 + 16) = v11;
    v12 = Data.advanced(by:)();
    v14 = v13;
    outlined consume of Data._Representation(*a1, a1[1]);

    *a1 = v12;
    a1[1] = v14;
  }

  return OUTLINED_FUNCTION_0();
}

void specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, __CFHTTPMessage *a3, CFIndex a4, uint64_t a5, CFIndex *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v22 = v6;
      v20 = a1;
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v21 = __DataStorage._offset.getter();
        if (!__OFSUB__(v20, v21))
        {
          v14 += v20 - v21;
          goto LABEL_15;
        }

LABEL_21:
        __break(1u);
      }

LABEL_15:
      MEMORY[0x223DE1260]();
      v11 = v14;
      v16 = a3;
      v17 = a4;
      v18 = a5;
      v19 = a6;
      v6 = v22;
LABEL_16:
      closure #1 in CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(v11, v16, v17, v18, v19, v24);
      if (v6)
      {
      }

      else
      {
      }

      return;
    case 2uLL:
      v22 = v6;
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v15))
      {
        goto LABEL_20;
      }

      v14 += v13 - v15;
LABEL_6:
      if (!__OFSUB__(v12, v13))
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      memset(v23, 0, 14);
      v11 = v23;
LABEL_10:
      v16 = a3;
      v17 = a4;
      v18 = a5;
      v19 = a6;
      goto LABEL_16;
    case 3uLL:
      goto LABEL_9;
    default:
      v23[0] = a1;
      LOWORD(v23[1]) = a2;
      BYTE2(v23[1]) = BYTE2(a2);
      BYTE3(v23[1]) = BYTE3(a2);
      BYTE4(v23[1]) = BYTE4(a2);
      BYTE5(v23[1]) = BYTE5(a2);
      v11 = v23;
      goto LABEL_10;
  }
}

void closure #1 in CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(UInt8 *newBytes@<X0>, CFHTTPMessageRef message@<X2>, CFIndex numBytes@<X3>, uint64_t a4@<X4>, CFIndex *a5@<X5>, CFIndex *a6@<X8>)
{
  if (!newBytes || !CFHTTPMessageAppendBytes(message, newBytes, numBytes))
  {
    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
LABEL_12:
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  *(a4 + 16) = numBytes;
  if (!CFHTTPMessageIsHeaderComplete(message))
  {
    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    swift_allocError();
    *v21 = 4;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 4;
    goto LABEL_12;
  }

  v11 = CFHTTPMessageCopyBody(message);
  v12 = v11;
  if (!v11)
  {
LABEL_20:
    ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(message);

    *a5 = ResponseStatusCode;
    *a6 = ResponseStatusCode;
    swift_beginAccess();
    a6[1] = *(a4 + 16);
    return;
  }

  v13 = v11;
  Length = CFDataGetLength(v13);
  swift_beginAccess();
  v15 = *(a4 + 16);
  if (Length < v15)
  {
    swift_beginAccess();
    if (!__OFSUB__(v15, Length))
    {
      *(a4 + 16) = v15 - Length;
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriNetwork);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v30 = v13;
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        swift_beginAccess();
        *(v19 + 4) = *(a4 + 16);

        _os_log_impl(&dword_223515000, v17, v18, "CommunicationProtocol - Ace header: Header is complete. Bytes read %ld", v19, 0xCu);
        MEMORY[0x223DE38F0](v19, -1, -1);
      }

      else
      {
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
LABEL_22:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriNetwork);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v13;
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    swift_beginAccess();
    *(v26 + 4) = *(a4 + 16);

    *(v26 + 12) = 2048;
    *(v26 + 14) = Length;
    _os_log_impl(&dword_223515000, v23, v24, "CommunicationProtocol - Ace header: Something has gone terribly wrong. bytesRead: %ld bodyLength: %ld", v26, 0x16u);
    v27 = v26;
    v13 = v25;
    MEMORY[0x223DE38F0](v27, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  *(a4 + 16) = 0;
  *a5 = CFHTTPMessageGetResponseStatusCode(message);
  lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
  swift_allocError();
  *v28 = 2;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 4;
  swift_willThrow();
}

uint64_t CommunicationProtocolAce.consumeAceHeader(withData:)(uint64_t *a1)
{
  v3 = v1;
  MEMORY[0x223DE13E0](*a1, a1[1]);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v7 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_6_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_63_2(v9, 3.852e-34);
    OUTLINED_FUNCTION_34_2();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    v15 = OUTLINED_FUNCTION_5_14();
    MEMORY[0x223DE38F0](v15);
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v16 = static AceSerialization.parseAceStreamHeader(data:)(a1);
  if (v2)
  {
    v88 = v2;
    v18 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v20 = v83[0];
      v19 = v83[1];
      v21 = v84;
      if (v84)
      {
        v22 = OUTLINED_FUNCTION_56_0();
        outlined copy of AceSerializationError(v22, v23, v24);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        v27 = OUTLINED_FUNCTION_56_0();
        outlined consume of AceSerializationError(v27, v28, v29);
        if (os_log_type_enabled(v25, v26))
        {
          OUTLINED_FUNCTION_6_5();
          v30 = swift_slowAlloc();
          OUTLINED_FUNCTION_28_3();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
          OUTLINED_FUNCTION_10_0();
          swift_allocError();
          *v32 = v20;
          *(v32 + 8) = v19;
          *(v32 + 16) = v21;
          v33 = OUTLINED_FUNCTION_56_0();
          outlined copy of AceSerializationError(v33, v34, v35);
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v36;
          *v31 = v36;
          OUTLINED_FUNCTION_74_0();
          _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
          outlined destroy of NetworkConnectionProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v42 = OUTLINED_FUNCTION_5_14();
          MEMORY[0x223DE38F0](v42);
          v43 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x223DE38F0](v43);
        }

        lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
        OUTLINED_FUNCTION_10_0();
        swift_allocError();
        *v44 = v20;
        *(v44 + 8) = v19;
        *(v44 + 16) = v21;
        swift_willThrow();

        outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
        return v20;
      }

      v67 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v68 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v68, v69))
      {
        OUTLINED_FUNCTION_6_5();
        v70 = swift_slowAlloc();
        OUTLINED_FUNCTION_28_3();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
        OUTLINED_FUNCTION_10_0();
        swift_allocError();
        *v72 = v20;
        *(v72 + 8) = v19;
        *(v72 + 16) = 0;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v73;
        *v71 = v73;
        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v74, v75, v76, v77, v78, v79);
        outlined destroy of NetworkConnectionProtocol?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v80 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x223DE38F0](v80);
        v81 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v81);
      }

      else
      {
      }

      outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    }

    return 0;
  }

  v45 = v16;
  v20 = v17;
  if (v16)
  {
    v49 = type metadata accessor for ZlibDataDecompressor();
    swift_allocObject();
    v50 = ZlibDataDecompressor.init()();
    v51 = v50;
    if (v50)
    {
      v46 = v49;
    }

    else
    {
      v46 = 0;
    }

    if (v50)
    {
      v48 = &protocol witness table for ZlibDataDecompressor;
    }

    else
    {
      v48 = 0;
    }

    outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    v85 = v51;
    *&v86 = 0;
  }

  else
  {
    v46 = type metadata accessor for NoneDataDecompressor();
    v47 = swift_allocObject();
    outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    *&v85 = v47;
    v48 = &protocol witness table for NoneDataDecompressor;
  }

  *(&v86 + 1) = v46;
  v87 = v48;
  v52 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v53 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_6_5();
    v55 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v56 = swift_slowAlloc();
    v83[0] = v56;
    *v55 = 136315138;
    if (v45)
    {
      v57 = 1651076218;
    }

    else
    {
      v57 = 1701736302;
    }

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, 0xE400000000000000, v83);

    *(v55 + 4) = v58;
    OUTLINED_FUNCTION_18_5();
    _os_log_impl(v59, v60, v61, v62, v63, v64);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v65 = OUTLINED_FUNCTION_5_14();
    MEMORY[0x223DE38F0](v65);
    v66 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v66);
  }

  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  outlined assign with copy of DataDecompressing?(&v85, v3 + 112);
  swift_endAccess();
  outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  return v20;
}

uint64_t static AceSerialization.parseAceStreamHeader(data:)(uint64_t *a1)
{
  v4 = MEMORY[0x223DE13E0](*a1, a1[1]);
  v5 = *a1;
  v6 = a1[1];
  if (v4 >= 4)
  {
    v10 = specialized Data.withUnsafeBytes<A>(_:)(v5, v6, 3uLL);
    if (!v1)
    {
      v2 = v10;
      v12 = Data.advanced(by:)();
      v14 = v13;
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v12;
      a1[1] = v14;
    }
  }

  else
  {
    v7 = MEMORY[0x223DE13E0](v5, v6);
    v8 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v8);
    *v9 = 4;
    *(v9 + 8) = v7;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError()
{
  result = lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError;
  if (!lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError;
  if (!lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork21AceSerializationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t protocol witness for Error._domain.getter in conformance AceSerializationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t static AceSerializationError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  v0 = static AceSerializationError.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._code.getter in conformance AceSerializationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AceSerializationError.errorCode.getter()
{
  result = 1;
  switch(*(v0 + 16))
  {
    case 1:
      result = 4;
      break;
    case 2:
      result = 5;
      break;
    case 3:
      result = qword_2235EFF38[*v0];
      break;
    default:
      return result;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t AceSerializationError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 == 2)
  {
    if (v1 >> 60 == 15)
    {
      goto LABEL_8;
    }

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2235EFCB0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    outlined copy of Data?(v2, v1);
    return Dictionary.init(dictionaryLiteral:)();
  }

  if (v3 == 1)
  {
    if (v1 >> 60 == 15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_2235EFCC0;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x277D83B88];
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    *(v4 + 72) = v6;
    *(v4 + 48) = v2;
    *(v4 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 88) = v8;
    *(v4 + 120) = v6;
    *(v4 + 96) = v1;
    return Dictionary.init(dictionaryLiteral:)();
  }

LABEL_8:

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, size_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x22356A3D8);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v9;
      return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v7, v6, a3);
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
      return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v7, v6, a3);
    case 3uLL:
      a1 = 0;
      v4 = 0;
      return specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v4, a3);
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
      return specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v4, a3);
  }
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v6 = __DataStorage._bytes.getter();
  if (v6)
  {
    v7 = v6;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      return result;
    }

    v9 = (a1 - result + v7);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x223DE1260]();
  if (v9 && !memcmp(v9, &unk_2836AF790, a4))
  {
    v11 = v9[a4];
    if (v11 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v11 == 1)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t ZlibDataDecompressor.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = 0u;
  *(v0 + 128) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  swift_beginAccess();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v2 = inflateInit_((v0 + 16), "1.2.12", 112);
  swift_endAccess();
  if (v2)
  {

    return 0;
  }

  return v0;
}

uint64_t outlined assign with copy of DataDecompressing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_75(void *a1)
{

  return memcpy(a1, (v1 + 608), 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

unint64_t type metadata accessor for AceObject()
{
  result = lazy cache variable for type metadata for AceObject;
  if (!lazy cache variable for type metadata for AceObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AceObject);
  }

  return result;
}

id @nonobjc AceObject.__allocating_init(plistData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() aceObjectWithPlistData_];

  return v5;
}

uint64_t outlined destroy of SessionObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CommunicationProtocolAce.handleAceObject(_:)(uint64_t a1)
{
  outlined init with copy of DataDecompressing?(a1, v22, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
  if (!v22[3])
  {
    outlined destroy of NetworkConnectionProtocol?(v22, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork13SessionObject_pMd, &_s11SiriNetwork13SessionObject_pMR);
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for AceObject, 0x277D470E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v17, static Logger.siriNetwork);
    v3 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v18))
    {
      OUTLINED_FUNCTION_17_5();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223515000, v3, v18, "CommunicationProtocol - Ace object: Received SessionObject could not be cast to AceObject", v19, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    goto LABEL_16;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
  v3 = v21;
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v5 = OUTLINED_FUNCTION_10_4();
  if (!os_log_type_enabled(v5, v6))
  {

LABEL_14:
    if (CommunicationProtocolAce.aceDelegate.getter())
    {
      v20 = OUTLINED_FUNCTION_52();
      BackgroundConnection.didReceiveAceObject(aceObject:)(v20);
      swift_unknownObjectRelease();
    }

LABEL_16:

    OUTLINED_FUNCTION_77_0();
    return;
  }

  OUTLINED_FUNCTION_6_5();
  v7 = swift_slowAlloc();
  OUTLINED_FUNCTION_4_3();
  v8 = swift_slowAlloc();
  v22[0] = v8;
  *v7 = 136315138;
  outlined bridged method (pb) of @objc AceObject.encodedClassName()(v3);
  v10 = v9;

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_26();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_223515000, v4, v1, "CommunicationProtocol - Ace object: Connection got AceObject %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    v15 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v15);
    v16 = OUTLINED_FUNCTION_6_15();
    MEMORY[0x223DE38F0](v16);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc AceObject.encodedClassName()(void *a1)
{
  v1 = [a1 encodedClassName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Connection.didReceiveAceObject(_:object:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v13, type metadata accessor for BackgroundConnection, &protocol conformance descriptor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    result = swift_unknownObjectRelease();
    if (v16 == a3)
    {
      v21[1] = *(a3 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = a1;
      v18[4] = v14;
      v18[5] = a2;
      aBlock[4] = partial apply for closure #1 in Connection.didReceiveAceObject(_:object:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_139;
      v19 = _Block_copy(aBlock);

      v20 = a2;
      static DispatchQoS.unspecified.getter();
      v23 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v12, v8, v19);
      _Block_release(v19);
      (*(v22 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_22356ADC0()
{

  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void closure #1 in Connection.didReceiveAceObject(_:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_50_4();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    type metadata accessor for BackgroundConnection();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v39 = v38;
      if (v38 == *&v37[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection])
      {
        OUTLINED_FUNCTION_8();
        swift_beginAccess();
        v53 = swift_unknownObjectWeakLoadStrong();
        if (v53)
        {
          v54 = v53;
          v55 = one-time initialization token for siriNetwork;
          swift_unknownObjectRetain();
          if (v55 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.siriNetwork);
          swift_unknownObjectRetain();
          v57 = v35;
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v58, v59))
          {
            v79 = v59;
            OUTLINED_FUNCTION_30();
            v60 = swift_slowAlloc();
            a17 = OUTLINED_FUNCTION_58_2();
            *v60 = 136315394;
            v80 = v57;
            v61 = v57;
            v62 = [v61 description];
            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;

            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &a17);

            *(v60 + 4) = v66;
            *(v60 + 12) = 2080;
            if (*(v39 + 448) >= 2uLL)
            {

              v67 = String.init<A>(describing:)();
              v68 = v77;
            }

            else
            {
              v67 = 0x6E776F6E6B6E75;
              OUTLINED_FUNCTION_46_4();
              v68 = 0xE700000000000000;
            }

            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &a17);

            *(v60 + 14) = v78;
            _os_log_impl(&dword_223515000, v58, v79, "Connection - Reader: Background Connection. Received ace object %s from active background connection route %s", v60, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();

            v57 = v80;
          }

          else
          {
          }

          [v54 didReceiveAceObject:v37 object:v57];
          swift_unknownObjectRelease();

          goto LABEL_23;
        }
      }

      v40 = one-time initialization token for siriNetwork;
      swift_unknownObjectRetain();
      if (v40 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriNetwork);
      swift_unknownObjectRetain();
      v42 = v35;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_30();
        v45 = swift_slowAlloc();
        a17 = OUTLINED_FUNCTION_58_2();
        *v45 = 136315394;
        v46 = v42;
        v47 = [v46 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &a17);
        OUTLINED_FUNCTION_53_4();

        *(v45 + 4) = v46;
        *(v45 + 12) = 2080;
        if (*(v39 + 448) >= 2uLL)
        {

          v51 = String.init<A>(describing:)();
          v52 = v69;
        }

        else
        {
          v51 = 0x6E776F6E6B6E75;
          OUTLINED_FUNCTION_46_4();
          v52 = 0xE700000000000000;
        }

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &a17);

        *(v45 + 14) = v70;
        OUTLINED_FUNCTION_52_5();
        _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        v76 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v76);

LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_40_5();
}

_DWORD *_sSo18WRMApplicationTypeaSYSCSY8rawValuexSg03RawD0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_22356B2FC()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22356B344()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356B38C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B3DC()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B410()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B4B4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22356B4E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356B528()
{

  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22356B568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356B5C8()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356B600()
{

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22356B634()
{

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22356B668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356B710()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356B74C()
{
  if (*(v0 + 16))
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  if (*(v0 + 184))
  {
  }

  if (*(v0 + 528))
  {

    if (*(v0 + 240))
    {

      if (*(v0 + 280) != 1)
      {
      }
    }
  }

  if (*(v0 + 608))
  {
  }

  if (*(v0 + 680))
  {

    if (*(v0 + 808))
    {
    }

    if (*(v0 + 1056))
    {

      if (*(v0 + 1096) != 1)
      {
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, 1529, 7);
}

uint64_t sub_22356B920()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B958()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22356BAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_22356BB88()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22356BC60()
{
  MEMORY[0x223DE39C0](v0 + 16);
  v1 = OUTLINED_FUNCTION_4_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BC90()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356BCD8()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_4_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BD08()
{
  v1 = OUTLINED_FUNCTION_4_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BD38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356BE20@<X0>(uint64_t *a1@<X8>)
{
  result = AceObject.internalAceId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22356BE78@<X0>(uint64_t *a1@<X8>)
{
  result = AceObject.internalRefId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22356BED0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22356BF08()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356BF70()
{
  OUTLINED_FUNCTION_4_12();
  result = SpeechPacket.internalAceId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22356BFC4()
{
  OUTLINED_FUNCTION_4_12();
  result = SpeechPacket.internalRefId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_22356C018()
{
  OUTLINED_FUNCTION_4_12();
  SpeechPacket.packets.getter(v1);
  *v0 = v2;
}

uint64_t sub_22356C044()
{
  OUTLINED_FUNCTION_4_12();
  result = SpeechPacket.packetNumber.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_22356C094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_22356C194(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_22356C21C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22356C30C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork29MessageCenterEndpointProtocol_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22356C3AC(unint64_t *a1, int a2)
{
  if (a2 == 2147483646)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for Logger();
    v5 = OUTLINED_FUNCTION_19_3();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_22356C438(void *result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_19_3();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_22356C4B0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_19_3();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_22356C530(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_19_3();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_22356C5D0()
{
  v1 = type metadata accessor for NWBrowser.Result.Change();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_22356C69C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356C6D4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_44_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

__n128 sub_22356C740(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22356C790()
{

  if (v0[7])
  {
  }

  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  }

  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356C800()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);

  outlined consume of Data._Representation(v0[11], v0[12]);

  if (v0[22])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  }

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_22356C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22356C954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_22356CA00()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(v0[6], v0[7]);

  if (v0[19])
  {
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_22356CACC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356CB04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356CB98()
{

  if (v0[7])
  {
  }

  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  }

  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_22356CC0C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22356CC44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356CC7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356CCBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t _s11SiriNetwork0B24ActivityCompletionReasonOSYAASY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkActivityLabel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22356CE60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356CEA0()
{

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22356CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  OUTLINED_FUNCTION_18_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyt_GMd, &_sScS12ContinuationVyyt_GMR);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_22356CF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  OUTLINED_FUNCTION_18_7();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyt_GMd, &_sScS12ContinuationVyyt_GMR);
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_22356D098()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22356D0E8@<X0>(uint64_t *a1@<X8>)
{
  result = Connection.delegate.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22356D118()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_15(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for ConnectionAnalysisInfo(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    v8 = type metadata accessor for URL();
    if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v0 + v4, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_22356D254()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356D28C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t _s11SiriNetwork24ConnectionPolicyProtocolOSYAASY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionPolicyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22356D3AC()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.connectionProtocolTechnology.getter();
  *v0 = result;
  return result;
}

uint64_t sub_22356D3FC()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.communicationProtocolTechnology.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_22356D44C()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.assistantIdentifier.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D4A0()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.peerAssistantIdentifier.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D4F4()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.connectionId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22356D548()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.aceHost.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D59C()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.languageCode.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D5F0()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.prefersWWAN.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D63C()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.skipPeer.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D688()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.useWiFiHint.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

void *sub_22356D6D4()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.skipPeerErrorReason.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_22356D700()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.forceReconnect.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D79C()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.imposePolicyBan.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

void *sub_22356D7E8()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.connectionPolicy.getter();
  *v0 = result;
  return result;
}

void *sub_22356D814()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.policyRoute.getter();
  *v0 = result;
  return result;
}

uint64_t sub_22356D840()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.forceOnDeviceOnlyDictation.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D88C()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.productTypePrefix.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D8E0()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.peerType.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D934()
{
  OUTLINED_FUNCTION_4_12();
  result = ConnectionInfo.peerVersion.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22356D988()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.deviceIsInWalkaboutExperimentGroup.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D9D4()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.usesProxyConnection.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356DA20()
{
  OUTLINED_FUNCTION_4_12();
  v1 = ConnectionInfo.usesPeerManagedSync.getter(v0);
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356DB20()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22356DB94()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  v1 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356DBF0()
{
  OUTLINED_FUNCTION_133();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_15(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = type metadata accessor for ConnectionAnalysisInfo(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    v5 = type metadata accessor for URL();
    if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v0 + v3, v5);
    }
  }

  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_22356DD64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356DDC8()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t _s11SiriNetwork31CommunicationProtocolTechnologyOSYAASY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConnectionProtocolTechnology.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_22356DEAC@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionConfiguration.connectionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for z_stream_s(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for z_stream_s(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CTSubscriptionSlot(uint64_t a2@<X8>)
{
  CTSubscriptionSlot.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance RPStatusFlags@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  closure #1 in ZlibDataDecompressor.decompressedDataForData(_:)(&v9, a3, a4, a5, a6);

  return outlined consume of Data._Representation(a4, a5);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  closure #1 in ZlibDataCompressor.compressedDataForData(_:)(&v9, a3, a4, a5, a6);

  return outlined consume of Data._Representation(a4, a5);
}

unint64_t lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError()
{
  result = lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError;
  if (!lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError;
  if (!lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *one-time initialization function for shared()
{
  v0 = objc_allocWithZone(type metadata accessor for NetworkManager());
  result = NetworkManager.init(coreTelephonyClient:queue:)(0, 0);
  static NetworkManager.shared = result;
  return result;
}

id static NetworkManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NetworkManager.shared;

  return v1;
}

char *NetworkManager.init(coreTelephonyClient:queue:)(id a1, void *a2)
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v41 = v7 - v6;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_0_1();
  v10 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  v11 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  v12 = v2;
  *&v2[v10] = [v11 init];
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_observers] = MEMORY[0x277D84FA0];
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor] = 0;
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot] = 0;
  v13 = &v12[OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotOneStatus];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotTwoStatus];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[OBJC_IVAR___SNNetworkManagerInternal_lastSuccessfulSymptomsFetch];
  *v15 = 0;
  v15[8] = 1;
  v12[OBJC_IVAR___SNNetworkManagerInternal_lastFetchInProgress] = 0;
  v16 = &v12[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v12[OBJC_IVAR___SNNetworkManagerInternal_subscriptionCount];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v12[OBJC_IVAR___SNNetworkManagerInternal_carrierName];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator] = 0;
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_pathStatus] = 0;
  v12[OBJC_IVAR___SNNetworkManagerInternal_pathUsesCellular] = 0;
  v19 = OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static NetworkWiFiManager.shared;
  *&v12[v19] = static NetworkWiFiManager.shared;
  v21 = OBJC_IVAR___SNNetworkManagerInternal_lastTimeSymptomsFetch;
  v22 = objc_opt_self();
  v23 = v20;
  v24 = [v22 processInfo];
  [v24 systemUptime];
  v26 = v25;

  *&v12[v21] = v26 + -90.0;
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport] = 50529027;
  v27 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
  *&v12[v27] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  if (a2)
  {
    v28 = a2;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.unspecified.getter();
    v45 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v42 + 104))(v41, *MEMORY[0x277D85260], v43);
    v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  v29 = OBJC_IVAR___SNNetworkManagerInternal_queue;
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_queue] = v28;
  if (a1)
  {
    a1 = a1;
    v30 = a2;

    v31 = a1;
  }

  else
  {
    v32 = objc_allocWithZone(MEMORY[0x277CC37B0]);
    v30 = a2;
    v33 = v28;
    v31 = [v32 initWithQueue_];
  }

  *&v12[OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient] = v31;
  v34 = *&v12[v29];
  type metadata accessor for NetworkWirelessCoexManager();
  swift_allocObject();
  v35 = v34;
  NetworkWirelessCoexManager.init(queue:)();
  *&v12[OBJC_IVAR___SNNetworkManagerInternal_networkWirelessCoexManager] = v36;
  v44.receiver = v12;
  v44.super_class = type metadata accessor for NetworkManager();
  v37 = objc_msgSendSuper2(&v44, sel_init);
  v38 = *&v37[OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient];
  v39 = v37;
  [v38 setDelegate_];
  NetworkManager.dataSubscriptionContextUpdate()();
  NetworkManager.dataServiceDescriptorUpdate()();
  NetworkManager.serviceSubscriptionInfoUpdate()();
  NetworkManager.signalStrengthUpdate()();

  return v39;
}

id NetworkManager.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223515000, v3, v4, "NetworkManager deinit", v5, 2u);
    MEMORY[0x223DE38F0](v5, -1, -1);
  }

  if (*&v1[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator])
  {
    nw_path_evaluator_cancel();
  }

  [*&v1[OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient] setDelegate_];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NetworkManager();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id NetworkManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t one-time initialization function for errorDomain()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ConnectionConfigurationError.errorDomain = result;
  qword_27D0899A8 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AceSerializationError.errorDomain = result;
  qword_2813240E0 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DataCompressorError.errorDomain = result;
  qword_27D0899D8 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static BackgroundConnectionError.errorDomain = result;
  qword_27D08A6D0 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NetworkConnectionError.errorDomain = result;
  qword_281325628 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static MessageCenterError.errorDomain = result;
  qword_27D08A820 = v1;
  return result;
}

uint64_t *ConnectionConfigurationError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2(&one-time initialization token for errorDomain);
  }

  return &static ConnectionConfigurationError.errorDomain;
}

uint64_t static ConnectionConfigurationError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  v0 = static ConnectionConfigurationError.errorDomain;

  return v0;
}

uint64_t static ConnectionConfigurationError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  static ConnectionConfigurationError.errorDomain = a1;
  qword_27D0899A8 = a2;
}

uint64_t (*static ConnectionConfigurationError.errorDomain.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

double key path getter for static ConnectionConfigurationError.errorDomain : ConnectionConfigurationError.Type@<D0>(void *a1@<X8>)
{
  ConnectionConfigurationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D0899A8;
  *a1 = static ConnectionConfigurationError.errorDomain;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static ConnectionConfigurationError.errorDomain : ConnectionConfigurationError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  ConnectionConfigurationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static ConnectionConfigurationError.errorDomain = v2;
  qword_27D0899A8 = v1;
}

Swift::Int ConnectionConfigurationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionConfigurationError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError()
{
  result = lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError;
  if (!lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError;
  if (!lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError;
  if (!lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance ConnectionConfigurationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ConnectionConfigurationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for ConnectionConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConnectionConfigurationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t NetworkManager.getSNProximityLinkRecommendation(retry:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2, a3);
  NetworkManager.getProximityLinkRecommendation(retry:_:)(v5, partial apply for closure #1 in NetworkManager.getSNProximityLinkRecommendation(retry:completion:), v6);
}

uint64_t NetworkManager.getProximityLinkRecommendation(retry:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v13 = *(v5 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  v27 = partial apply for closure #1 in NetworkManager.getProximityLinkRecommendation(retry:_:);
  v28 = v15;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v25 = v16;
  v26 = &block_descriptor_18;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2, a3);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v19);
  _Block_release(v17);

  (*(v10 + 8))(v4, v8);
  v20 = OUTLINED_FUNCTION_5_4();
  v21(v20);
}

void *closure #1 in NetworkManager.getProximityLinkRecommendation(retry:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)();
  }

  return result;
}

uint64_t NetworkManager.getSNLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1, a2);
  NetworkManager.getLinkRecommendationMetrics(_:)(partial apply for closure #1 in NetworkManager.getSNLinkRecommendationMetrics(_:), v4);
}

void closure #1 in NetworkManager.getSNProximityLinkRecommendation(retry:completion:)(void *a1, void (*a2)(void))
{
  if (a2)
  {
    if (*a1 == 2)
    {
      v3 = 0;
    }

    else
    {
      memcpy(v6, a1 + 1, sizeof(v6));
      LinkRecommendationInfo.snLinkRecommendationInfo()(v4);
    }

    v5 = v3;
    a2();
  }
}

uint64_t objectdestroy_10Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t NetworkManager.getLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v10 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v24 = partial apply for closure #1 in NetworkManager.getLinkRecommendationMetrics(_:);
  v25 = v12;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v22 = v13;
  v23 = &block_descriptor_28;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1, a2);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v16);
  _Block_release(v14);

  (*(v20 + 8))(v3, v6);
  v17 = OUTLINED_FUNCTION_5_4();
  v18(v17);
}

void *closure #1 in NetworkManager.getLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)();
  }

  return result;
}

uint64_t *AceSerializationError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4(&one-time initialization token for errorDomain);
  }

  return &static AceSerializationError.errorDomain;
}

uint64_t static AceSerializationError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  static AceSerializationError.errorDomain = a1;
  qword_2813240E0 = a2;
}

uint64_t (*static AceSerializationError.errorDomain.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

double key path getter for static AceSerializationError.errorDomain : AceSerializationError.Type@<D0>(void *a1@<X8>)
{
  AceSerializationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_2813240E0;
  *a1 = static AceSerializationError.errorDomain;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static AceSerializationError.errorDomain : AceSerializationError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  AceSerializationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static AceSerializationError.errorDomain = v2;
  qword_2813240E0 = v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AceSerializationError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AceSerializationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AceSerializationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t *DataCompressorError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for errorDomain);
  }

  return &static DataCompressorError.errorDomain;
}

uint64_t static DataCompressorError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  v0 = static DataCompressorError.errorDomain;

  return v0;
}

uint64_t static DataCompressorError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  static DataCompressorError.errorDomain = a1;
  qword_27D0899D8 = a2;
}

uint64_t (*static DataCompressorError.errorDomain.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for errorDomain);
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

double key path getter for static DataCompressorError.errorDomain : DataCompressorError.Type@<D0>(void *a1@<X8>)
{
  DataCompressorError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D0899D8;
  *a1 = static DataCompressorError.errorDomain;
  a1[1] = v2;

  return result;
}

uint64_t key path setter for static DataCompressorError.errorDomain : DataCompressorError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  DataCompressorError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static DataCompressorError.errorDomain = v2;
  qword_27D0899D8 = v1;
}

uint64_t protocol witness for Error._domain.getter in conformance DataCompressorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance DataCompressorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t NetworkManager.dataSubscriptionContextUpdate()(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  v30 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v18 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_17(v18, static Logger.siriNetwork);
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_223515000, v19, v20, a1, v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v7 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = a2;
  v35 = v23;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v32 = v24;
  v33 = a3;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v17, v11, v25);
  _Block_release(v25);

  v27 = OUTLINED_FUNCTION_16_1();
  v28(v27);
  (*(v13 + 8))(v17, v30);
}

uint64_t NetworkManager.preferredDataSimChanged(_:)(void *a1)
{
  NetworkManager.dataSubscriptionContextChange(_:)(a1);
  OUTLINED_FUNCTION_1_3();
  return NetworkManager.dataSubscriptionContextUpdate()(v1, v2, v3);
}

uint64_t NetworkManager.dataSubscriptionContextChange(_:)(void *a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_17(v2, static Logger.siriNetwork);
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v4))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_11();
  }

  NetworkManager.subscriptionContextUpdate(_:)(a1);
  OUTLINED_FUNCTION_7_3();
  return NetworkManager.carrierNameUpdate(_:)(a1, v10, v11, v12, v13);
}

uint64_t NetworkManager.carrierBundleChange(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_17(v4, static Logger.siriNetwork);
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_11();
  }

  v12 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*(v2 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
  v13 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot);
  [*(v2 + v12) unlock];
  if (v13)
  {
    if ([a1 slotID] == v13)
    {
      NetworkManager.dataSubscriptionContextChange(_:)(a1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_1();
    NetworkManager.dataSubscriptionContextUpdate()(v14, v15, v16);
  }

  OUTLINED_FUNCTION_1_3();
  return NetworkManager.dataSubscriptionContextUpdate()(v17, v18, v19);
}

id NetworkManager.simStatusDidChange(_:status:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriNetwork);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315394;
    v20 = [v9 slotID];
    type metadata accessor for CTSubscriptionSlot(0);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v21);
    _os_log_impl(&dword_223515000, v10, v11, "NetworkManager - CoreTelephony: SIM Slot %s - Status: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v16 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*(v4 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
  if ([v9 slotID] == 1)
  {
    v17 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotOneStatus;
LABEL_9:
    v18 = (v4 + *v17);
    *v18 = a2;
    v18[1] = a3;

    return [*(v4 + v16) unlock];
  }

  if ([v9 slotID] == 2)
  {
    v17 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotTwoStatus;
    goto LABEL_9;
  }

  return [*(v4 + v16) unlock];
}

uint64_t NetworkManager.signalStrengthChanged(_:info:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v6 = type metadata accessor for Logger();
  v7 = OUTLINED_FUNCTION_17(v6, static Logger.siriNetwork);
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14();
    *v9 = 0;
    _os_log_impl(&dword_223515000, v7, v8, "NetworkManager - CoreTelephony: Signal strength changed", v9, 2u);
    OUTLINED_FUNCTION_12();
  }

  v10 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*&v2[OBJC_IVAR___SNNetworkManagerInternal_lock] lock];
  v11 = *&v2[OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot];
  if (v11 == [a1 slotID])
  {
    v12 = [a2 bars];
    if (v12)
    {
      v13 = v12;
      v14 = Int.init(truncating:)();
      v15 = &v2[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength];
      *v15 = v14;
      v15[8] = 0;
      v16 = v2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v38 = v20;
        *v19 = 136315138;
        if (v15[8])
        {
          v21 = 0xE700000000000000;
          v22 = 0x6E776F6E6B6E75;
        }

        else
        {
          v37 = *v15;
          v22 = String.init<A>(describing:)();
          v21 = v23;
        }

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v38);

        *(v19 + 4) = v24;
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_11();
      }
    }
  }

  [*&v3[v10] unlock];
  OUTLINED_FUNCTION_8_2();
  NetworkManager.dataSubscriptionContextUpdate()(v30, v31, v32);
  OUTLINED_FUNCTION_1_3();
  return NetworkManager.dataSubscriptionContextUpdate()(v33, v34, v35);
}

id NetworkManager.subscriptionContextUpdate(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_17(v4, static Logger.siriNetwork);
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_11();
  }

  v12 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*(v2 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
  v13 = [a1 slotID];
  *(v2 + OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot) = v13;
  if ([a1 slotID] == 1)
  {
    result = *MEMORY[0x277CC3F00];
    if (*MEMORY[0x277CC3F00])
    {
      v15 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotOneStatus;
LABEL_11:
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = (v2 + *v15);
      *v17 = v16;
      v17[1] = v18;

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_16;
  }

  if ([a1 slotID] == 2)
  {
    result = *MEMORY[0x277CC3F00];
    if (*MEMORY[0x277CC3F00])
    {
      v15 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotTwoStatus;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:
  [*(v2 + v12) unlock];
  v19 = *(v2 + v12);

  return [v19 unlock];
}

void closure #1 in NetworkManager.carrierNameUpdate(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v6 = MEMORY[0x223DE2070](0x4E72656972726143, 0xEB00000000656D61);
    v7 = [objc_allocWithZone(MEMORY[0x277CC3620]) initWithBundleType_];
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.carrierNameUpdate(_:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_39;
    v9 = _Block_copy(aBlock);
    v10 = v4;

    [v5 copyCarrierBundleValue:a2 key:v6 bundleType:v7 completion:v9];
    _Block_release(v9);
  }
}

id closure #1 in closure #1 in NetworkManager.carrierNameUpdate(_:)(id result, uint64_t a2, uint64_t a3)
{
  if (!a2 && result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return result;
}

void closure #1 in closure #1 in NetworkManager.dataSubscriptionContextUpdate()(void *a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriNetwork);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v6))
    {

      v11 = a2;

      goto LABEL_10;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_223515000, oslog, v6, "NetworkManager - CoreTelephony Error: Data Subscription Context Error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x223DE38F0](v8, -1, -1);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  else
  {
    if (!a1)
    {
      return;
    }

    oslog = a1;
    NetworkManager.dataSubscriptionContextChange(_:)(oslog);
  }

  v11 = oslog;

LABEL_10:
}

void closure #1 in NetworkManager.dataServiceDescriptorUpdate()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.dataServiceDescriptorUpdate();
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_26;
    v5 = _Block_copy(aBlock);
    v6 = v3;
    v7 = v2;

    [v6 getCurrentDataServiceDescriptor_];
    _Block_release(v5);
  }
}

void closure #1 in closure #1 in NetworkManager.dataServiceDescriptorUpdate()(void *a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    v6 = a2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_223515000, oslog, v7, "NetworkManager - CoreTelephony Error: Data Service Descriptor Error: %@", v8, 0xCu);
      outlined destroy of NSObject?(v9);
      MEMORY[0x223DE38F0](v9, -1, -1);
      MEMORY[0x223DE38F0](v8, -1, -1);

      v12 = oslog;
    }

    else
    {

      v12 = a2;
    }
  }

  else
  {
    v15 = OBJC_IVAR___SNNetworkManagerInternal_lock;
    [*(a3 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
    v16 = *(a3 + OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor);
    *(a3 + OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor) = a1;

    v17 = *(a3 + v15);
    v18 = a1;

    [v17 unlock];
  }
}

void closure #1 in NetworkManager.serviceSubscriptionInfoUpdate()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.serviceSubscriptionInfoUpdate();
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_6;
    v5 = _Block_copy(aBlock);
    v6 = v3;
    v7 = v2;

    [v6 getSubscriptionInfo_];
    _Block_release(v5);
  }
}

void closure #1 in closure #1 in NetworkManager.serviceSubscriptionInfoUpdate()(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (v5 = outlined bridged method (pb) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(a1)) != 0)
  {
    v6 = v5;
    v7 = OBJC_IVAR___SNNetworkManagerInternal_lock;
    [*(a3 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
    a2 = specialized Array.count.getter(v6);

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = a3 + OBJC_IVAR___SNNetworkManagerInternal_subscriptionCount;
      *v8 = a2;
      *(v8 + 8) = 0;
      v9 = *(a3 + v7);

      [v9 unlock];
      return;
    }

    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v10 = a2;
    if (one-time initialization token for siriNetwork == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriNetwork);
  v12 = a2;
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_223515000, oslog, v13, "NetworkManager - CoreTelephony Error: Subscription Info Error: %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
    MEMORY[0x223DE38F0](v15, -1, -1);
    MEMORY[0x223DE38F0](v14, -1, -1);

    v18 = oslog;
  }

  else
  {

    v18 = a2;
  }
}

void closure #1 in NetworkManager.dataSubscriptionContextUpdate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    OUTLINED_FUNCTION_7_1();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    aBlock[4] = a3;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = a4;
    v10 = _Block_copy(aBlock);
    v11 = v8;
    v12 = v7;

    [v11 getCurrentDataSubscriptionContext_];
    _Block_release(v10);
  }
}

void closure #1 in closure #1 in NetworkManager.signalStrengthUpdate()(void *a1, NSObject *a2)
{
  if (a1)
  {
    oslog = a1;
    NetworkManager.carrierNameUpdate(_:)(oslog, "NetworkManager - CoreTelephony: signalStrengthUpdate", &unk_2836B0310, partial apply for closure #1 in NetworkManager.signalStrengthUpdate(_:), &block_descriptor_56);
    goto LABEL_3;
  }

  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    v6 = a2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v7))
    {

      v2 = a2;

      goto LABEL_5;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_223515000, oslog, v7, "NetworkManager - CoreTelephony Error: Data Subscription Error: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);

LABEL_3:
    v2 = oslog;

LABEL_5:
  }
}

uint64_t NetworkManager.carrierNameUpdate(_:)(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  v34 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v18 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_17(v18, static Logger.siriNetwork);
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_223515000, v19, v20, a2, v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v33 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a1;
  v38 = a4;
  v39 = v24;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v36 = v25;
  v37 = a5;
  v26 = _Block_copy(aBlock);
  v27 = v22;

  v28 = a1;
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v17, v11, v26);
  _Block_release(v26);

  v29 = OUTLINED_FUNCTION_16_1();
  v30(v29);
  (*(v13 + 8))(v17, v34);
}

void closure #1 in NetworkManager.signalStrengthUpdate(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.signalStrengthUpdate(_:);
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_62;
    v7 = _Block_copy(aBlock);
    v8 = v5;
    v9 = v4;

    [v8 getSignalStrengthInfo:a2 completion:v7];
    _Block_release(v7);
  }
}

void closure #1 in closure #1 in NetworkManager.signalStrengthUpdate(_:)(void *a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    v6 = a2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v7))
    {

      v17 = a2;

      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_223515000, oslog, v7, "NetworkManager - CoreTelephony Error: Signal Strength Error: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);

LABEL_9:
    v17 = oslog;

LABEL_11:

    return;
  }

  if (a1)
  {
    v13 = [a1 bars];
    if (v13)
    {
      v14 = OBJC_IVAR___SNNetworkManagerInternal_lock;
      oslog = v13;
      [*(a3 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
      v15 = Int.init(truncating:)();
      v16 = a3 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
      *v16 = v15;
      *(v16 + 8) = 0;
      [*(a3 + v14) unlock];
      goto LABEL_9;
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (pb) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(void *a1)
{
  v1 = [a1 subscriptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for CTXPCServiceSubscriptionContext, 0x277CC3798);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t objectdestroy_29Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t ConnectionProviderProtocol.connectionAnalysisInfo.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = *(a1 + 144);
  v8 = OUTLINED_FUNCTION_18();
  v7(v8);
  memcpy(v36, v37, sizeof(v36));
  v29 = v6;
  ConnectionConfiguration.resolvedURL.getter(v6);
  outlined destroy of ConnectionConfiguration(v37);
  v9 = *(a1 + 160);
  v10 = OUTLINED_FUNCTION_18();
  v9(v10);
  memcpy(v39, v38, 0x121uLL);
  v28 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v39);
  if (v28 == 1)
  {
    v27 = 0;
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(v38, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    v27 = v39[9];
  }

  v11 = OUTLINED_FUNCTION_18();
  v9(v11);
  memcpy(v35, v34, 0x121uLL);
  if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v35) == 1 || (outlined init with copy of ConnectionSnapshotReport?(&v35[40], v31, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), outlined destroy of ConnectionSnapshotReport?(v34, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR), memcpy(v32, &v35[40], 0xF9uLL), _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v32) == 1) || (outlined destroy of ConnectionSnapshotReport?(&v35[40], &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), LOBYTE(v32[28]) == 1))
  {
    v26 = 0;
  }

  else
  {
    v26 = v32[27];
  }

  v12 = OUTLINED_FUNCTION_18();
  v7(v12);
  outlined destroy of ConnectionConfiguration(v31);
  v13 = OUTLINED_FUNCTION_18();
  v14(v13);
  v15 = v30[87];
  v16 = OUTLINED_FUNCTION_18();
  v7(v16);
  outlined init with copy of ConnectionSnapshotReport?(v33, v30, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
  outlined destroy of ConnectionConfiguration(v32);
  if (v33[9])
  {
    v17 = v33[1];
    v18 = v33[0];

    outlined destroy of ConnectionSnapshotReport?(v33, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = v28 == 1;
  v20 = v31[96];
  outlined init with take of URL?(v29, a2);
  v21 = type metadata accessor for ConnectionAnalysisInfo(0);
  v22 = a2 + v21[5];
  *v22 = v27;
  *(v22 + 4) = v19;
  *(a2 + v21[6]) = v26;
  *(a2 + v21[7]) = v20;
  *(a2 + v21[8]) = v15;
  v23 = (a2 + v21[9]);
  *v23 = v18;
  v23[1] = v17;
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v21);
}

uint64_t ConnectionProviderProtocol.hash(into:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 144))(__src, a2, a3);
  memcpy(v5, __src, sizeof(v5));
  ConnectionConfiguration.hash(into:)(a1);
  return outlined destroy of ConnectionConfiguration(__src);
}

uint64_t static ConnectionProviderProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 144);
  v6(__src, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = static ConnectionConfiguration.== infix(_:_:)(__src, v8);
  memcpy(__dst, v8, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  memcpy(v11, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(v11);
  return v4 & 1;
}

uint64_t ConnectionProviderProtocol.updateConnectionMetricsSnapthotReport(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 520))(a3, a4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConnectionAnalysisInfo.connectionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConnectionAnalysisInfo(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ConnectionAnalysisInfo.policyId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionAnalysisInfo(0) + 36));

  return v1;
}

void type metadata completion function for ConnectionAnalysisInfo(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t RPCOspreyConnectionProvider.__allocating_init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RPCOspreyConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(a1, a2, a3, a4);
  return v8;
}

uint64_t RPCOspreyConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  memcpy(v27, a1, sizeof(v27));
  *(v5 + 1512) = 0;
  *(v5 + 1528) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 2168) = 0;
  *(v5 + 2080) = 0u;
  *(v5 + 2096) = 0u;
  *(v5 + 2109) = 0;
  *(v5 + 2120) = 0u;
  *(v5 + 2136) = 0u;
  *(v5 + 2152) = 0;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v10 + 8))(v14, v8);
  *(v5 + 16) = v15;
  *(v5 + 24) = v17;
  memcpy((v5 + 1552), v27, 0x204uLL);
  *(v5 + 2072) = a2;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v28);
  memcpy(v37, v28, sizeof(v37));
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(v29);
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  v18 = v40[0];
  *(v5 + 84) = *(v40 + 3);
  *(v5 + 81) = v18;
  v19 = MEMORY[0x277D84F90];
  *(v5 + 88) = MEMORY[0x277D84F90];
  *(v5 + 96) = 0u;
  *(v5 + 112) = v19;
  *(v5 + 120) = 0;
  *(v5 + 124) = 1;
  LOWORD(v18) = v38;
  *(v5 + 127) = v39;
  *(v5 + 125) = v18;
  *(v5 + 160) = 0;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  memcpy((v5 + 168), v37, 0x168uLL);
  *(v5 + 528) = 0u;
  *(v5 + 544) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0u;
  *(v5 + 608) = 0u;
  *(v5 + 624) = 0u;
  memcpy((v5 + 640), v29, 0x2C8uLL);
  *(v5 + 1352) = v19;
  *(v5 + 1360) = 0u;
  *(v5 + 1376) = 0u;
  *(v5 + 1392) = 0;
  *(v5 + 1400) = 1;
  *(v5 + 1401) = *v36;
  *(v5 + 1404) = *&v36[3];
  *(v5 + 1408) = 0;
  *(v5 + 1416) = 1;
  v20 = *&v34[3];
  *(v5 + 1417) = *v35;
  *(v5 + 1420) = *&v35[3];
  *(v5 + 1424) = 0;
  *(v5 + 1432) = 1;
  v21 = *v34;
  *(v5 + 1436) = v20;
  *(v5 + 1433) = v21;
  *(v5 + 1456) = 0;
  *(v5 + 1440) = 0u;
  *(v5 + 1460) = 1;
  *(v5 + 1463) = v33;
  *(v5 + 1461) = v32;
  *(v5 + 1464) = 0;
  *(v5 + 1472) = 1;
  *(v5 + 1473) = *v31;
  *(v5 + 1476) = *&v31[3];
  *(v5 + 1480) = 0;
  *(v5 + 1488) = 1;
  v22 = *v30;
  *(v5 + 1492) = *&v30[3];
  *(v5 + 1489) = v22;
  *(v5 + 1496) = 0;
  *(v5 + 1504) = 1;
  *(v5 + 1536) = 0;
  *(v5 + 1544) = 2;
  *(v5 + 2160) = a4;
  v23 = *(v5 + 1512);
  *(v5 + 1512) = a3;

  return v5;
}

uint64_t RPCOspreyConnectionProvider.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    v10 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v10);
  }

  v11 = OUTLINED_FUNCTION_13_0();
  outlined consume of ConnectionProviderState(v11, v12);
  *(v1 + 1528) = 0;
  swift_unknownObjectWeakAssign();
  v13 = OUTLINED_FUNCTION_33_0();
  *(v1 + 2080) = 0u;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v13, v14);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  RPCOspreyConnectionProvider.closeWithError(_:)(0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  outlined destroy of ConnectionSnapshotReport?(v1 + 32, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  OUTLINED_FUNCTION_41_1(v25);
  outlined destroy of ConnectionMetrics(v25);

  outlined destroy of weak ConnectionProviderDelegate?(v1 + 1520);
  outlined consume of ConnectionProviderState(*(v1 + 1536), *(v1 + 1544));
  memcpy(__dst, (v1 + 1552), 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);

  v22 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v22, v23);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t RPCOspreyConnectionProvider.__deallocating_deinit()
{
  RPCOspreyConnectionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 2170, 7);
}

uint64_t RPCOspreyConnectionProvider.openConnectionWithInitialPayload(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriNetwork);
  OUTLINED_FUNCTION_11_3();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_6_5();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v24 = v4;
    v13 = *(v6 + 16);
    v14 = *(v6 + 24);

    v15 = a2;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);
    v5 = v24;

    *(v11 + 4) = v16;
    a2 = v15;
    OUTLINED_FUNCTION_36(&dword_223515000, v17, v18, "Provider - RPCOspreyConnectionProvider [%s]: Preparing connection with initial payload.");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v19 = OUTLINED_FUNCTION_33_0();
  *(v6 + 2080) = 0u;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v19, v20);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.configureNetworkAnalytics()();
  result = _s11SiriNetwork27RPCOspreyConnectionProviderC06createD18WithInitialPayload_09rpcOspreyD12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0cdL0RzlFAA0abK7ChannelC_Tt0g5();
  if (!v5)
  {
    v22 = OUTLINED_FUNCTION_13_0();
    outlined consume of ConnectionProviderState(v22, v23);
    return RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(a2, a3);
  }

  return result;
}

uint64_t _s11SiriNetwork27RPCOspreyConnectionProviderC06createD18WithInitialPayload_09rpcOspreyD12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0cdL0RzlFAA0abK7ChannelC_Tt0g5()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  memcpy(v35, (v0 + 1552), sizeof(v35));
  ConnectionConfiguration.resolvedURL.getter(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of ConnectionSnapshotReport?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v13 = swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 0;
    v30 = xmmword_2235F01E0;
    *(v14 + 24) = xmmword_2235F01E0;
    v15 = *(v0 + 1536);
    *(v0 + 1536) = v13;
    LOBYTE(v14) = *(v0 + 1544);
    *(v0 + 1544) = 1;
    outlined consume of ConnectionProviderState(v15, v14);
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    *(v16 + 24) = v30;
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    if (one-time initialization token for streamOpenNetwork != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.streamOpenNetwork);
    v18 = *(v0 + 1536);
    *(v0 + 1536) = 0;
    v19 = *(v0 + 1544);
    *(v0 + 1544) = 2;
    outlined consume of ConnectionProviderState(v18, v19);
    v20 = type metadata accessor for SiriNetworkOspreyChannel();
    (*(v7 + 16))(v10, v12, v6);
    memcpy(v34, v2 + 194, 0x204uLL);
    memcpy(v32, v2 + 194, 0x204uLL);
    v33[3] = v20;
    v33[4] = &protocol witness table for SiriNetworkOspreyChannel;
    outlined init with copy of ConnectionConfiguration(v34, &v31);
    v33[0] = SiriNetworkOspreyChannel.__allocating_init(url:connectionConfiguration:)(v10);
    swift_beginAccess();
    outlined assign with take of RPCOspreyConnectionProtocol?(v33, (v2 + 4));
    swift_endAccess();
    v21 = RPCOspreyConnectionProvider.connection.modify();
    v23 = *(v22 + 24);
    if (v23)
    {
      v24 = v2[2];
      v25 = v2[3];
      v29 = v21;
      *&v30 = v1;
      v26 = *(v22 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v36 = v12;
      v27 = *(v26 + 64);

      v27(v24, v25, v23, v26);
      v12 = v36;
      (v29)(v32, 0);
    }

    else
    {
      (v21)(v32, 0);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v11 = v10 - v9;
  v27 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  v18 = *(v2 + 1536);
  *(v2 + 1536) = 0;
  v19 = *(v2 + 1544);
  *(v2 + 1544) = 0;
  outlined consume of ConnectionProviderState(v18, v19);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v2 + 32, &aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (v30)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v33);
    specialized ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, a2);
    specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()();
    specialized ConnectionProviderProtocol.setupOpenSlowTimer()();
    [*__swift_project_boxed_opaque_existential_1(v33 v33[3])];
    OUTLINED_FUNCTION_7_1();
    v20 = swift_allocObject();
    swift_weakInit();
    v31 = partial apply for closure #1 in RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:);
    v32 = v20;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v30 = &block_descriptor_142;
    v21 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v33[6] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v17, v11, v21);
    _Block_release(v21);
    (*(v7 + 8))(v11, v5);
    (*(v13 + 8))(v17, v27);

    return __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v23, v24);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v25, v26);
  }
}

uint64_t closure #1 in RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + 2080);
    if (v3)
    {
      v4 = (result + 2080);
      v5 = *(result + 2088);

      RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()();
      memset(v8, 0, 41);
      v3(v8);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v3, v5);
      v6 = *(v2 + 2080);
      v7 = *(v2 + 2088);
      *v4 = 0;
      *(v2 + 2088) = 0;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6, v7);
    }
  }

  return result;
}

void RPCOspreyConnectionProvider.closeWithError(_:)(id a1)
{
  if (*(v1 + 2115))
  {
    return;
  }

  v4 = v1;
  *(v1 + 2114) = 257;
  v6 = *(v1 + 1544) == 2 && *(v1 + 1536) == 2;
  if (v6)
  {
    *(v1 + 1536) = 0;
    *(v1 + 1544) = 2;
  }

  if (a1)
  {
    *&v59 = a1;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (v57 >> 60 == 10 && !*(&v57 + 1))
      {
        v8 = v57 == 0xA000000000000000 && v55 == 1;
        if (v8 && v56 == 0)
        {
          OUTLINED_FUNCTION_32_0();
          if (!v6)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.siriNetwork);
          OUTLINED_FUNCTION_11_3();

          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_32;
          }

          goto LABEL_25;
        }
      }

      outlined consume of NetworkConnectionError(v55, v56, *(&v56 + 1), v57, *(&v57 + 1));
    }

    OUTLINED_FUNCTION_32_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriNetwork);
    v22 = a1;

    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v23))
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_30();
    v24 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v25 = swift_slowAlloc();
    v55 = v25;
    *v24 = 136315394;
    v26 = *(v4 + 16);
    v27 = *(v4 + 24);

    v3 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v55);

    *(v24 + 4) = v3;
    *(v24 + 12) = 2112;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v29;
    *v2 = v29;
    _os_log_impl(&dword_223515000, v10, v23, "Provider - RPCOspreyConnectionProvider [%s]: Close and cancel connection for error: %@", v24, 0x16u);
    outlined destroy of ConnectionSnapshotReport?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_32_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  OUTLINED_FUNCTION_11_3();

  v10 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v10, v13))
  {
    goto LABEL_32;
  }

LABEL_25:
  OUTLINED_FUNCTION_6_5();
  v14 = swift_slowAlloc();
  OUTLINED_FUNCTION_4_3();
  v15 = swift_slowAlloc();
  v55 = v15;
  OUTLINED_FUNCTION_20_0(4.8149e-34);
  v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v55);

  *(v14 + 4) = v2;
  OUTLINED_FUNCTION_6_0();
  _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
LABEL_31:
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
LABEL_32:

  v30 = v4;
  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v4 + 32, &v59, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (*(&v60 + 1))
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v59, &v55);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    swift_beginAccess();
    outlined assign with take of RPCOspreyConnectionProtocol?(&v59, v4 + 32);
    swift_endAccess();
    v31 = *(v4 + 2160);
    v32 = OUTLINED_FUNCTION_31_0();
    NetworkAnalytics.setIsConnectionActive(_:)(v32);

    v33 = *(v4 + 2160);
    v34 = OUTLINED_FUNCTION_31_0();
    NetworkAnalytics.setNetIdAvailable(_:)(v34);

    [*__swift_project_boxed_opaque_existential_1(&v55 v57)];
    OUTLINED_FUNCTION_32_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriNetwork);
    OUTLINED_FUNCTION_11_3();

    v30 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v36))
    {
      OUTLINED_FUNCTION_6_5();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v38 = swift_slowAlloc();
      *&v59 = v38;
      OUTLINED_FUNCTION_20_0(4.8149e-34);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v59);

      *(v37 + 4) = v39;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v45 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v45);
    }

    __swift_destroy_boxed_opaque_existential_0(&v55);
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&v59, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  }

  v46 = *(v4 + 2080);
  if (v46)
  {
    v30 = *(v4 + 2088);
    v55 = a1;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    v47 = a1;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v46, v30);
    v46(&v55);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v46, v30);
    outlined consume of Result<(), NetworkConnectionError>(v55, v56, *(&v56 + 1), v57, *(&v57 + 1), v58);
    v48 = OUTLINED_FUNCTION_33_0();
    *(v4 + 2080) = 0;
    *(v4 + 2088) = 0;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v48, v49);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = OUTLINED_FUNCTION_11_3();
    specialized BackgroundConnection.connectionProvider(_:received:)(v50, a1, v30);
    swift_unknownObjectRelease();
  }

  v51 = *(v4 + 2160);
  v52 = OUTLINED_FUNCTION_31_0();
  NetworkAnalytics.setIsConnectionActive(_:)(v52);

  v53 = *(v4 + 2160);
  v54 = OUTLINED_FUNCTION_31_0();
  NetworkAnalytics.setNetIdAvailable(_:)(v54);
}

void RPCOspreyConnectionProvider.send(data:completion:)(uint64_t a1, unint64_t a2, void (*a3)(void, void))
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v111 - v8;
  if (a2 >> 60 == 15)
  {
    return;
  }

  if (!*(v3 + 1544))
  {
    goto LABEL_10;
  }

  v10 = *(v3 + 1536);
  if (*(v3 + 1544) == 1)
  {
    v11 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v11, v12);
    v13 = OUTLINED_FUNCTION_35();
    outlined copy of ConnectionProviderState(v13, v14);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriNetwork);
    v16 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v16, v17);

    v18 = OUTLINED_FUNCTION_35();
    outlined copy of ConnectionProviderState(v18, v19);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = OUTLINED_FUNCTION_35();
    outlined consume of ConnectionProviderState(v22, v23);
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_4_3();
      v24 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v115 = swift_slowAlloc();
      v114[0] = v115;
      OUTLINED_FUNCTION_23_0(4.8152e-34);
      v25 = OUTLINED_FUNCTION_22_0();

      *(v24 + 4) = v25;
      OUTLINED_FUNCTION_16_3();
      v26 = 0;
      switch(v27)
      {
        case 1:
          OUTLINED_FUNCTION_29_0();
          if (!v70)
          {
            v26 = v26;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_69;
        case 2:
          OUTLINED_FUNCTION_28_1();
          if (!v70)
          {
            goto LABEL_39;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        case 3:
          goto LABEL_39;
        default:
          v26 = BYTE6(a2);
LABEL_39:
          *(v24 + 14) = v26;
          v78 = OUTLINED_FUNCTION_3_2();
          outlined consume of Data?(v78, v79);
          *(v24 + 22) = 2112;
          if (v10)
          {
            v80 = v10;
            v81 = _swift_stdlib_bridgeErrorToNSError();
            v82 = v81;
          }

          else
          {
            v81 = 0;
            v82 = 0;
          }

          *(v24 + 24) = v81;
          v83 = v111;
          *v111 = v82;
          _os_log_impl(&dword_223515000, v20, v21, "Provider - RPCOspreyConnectionProvider [%s]: Send data failed. Sending %ld bytes error %@.", v24, 0x20u);
          outlined destroy of ConnectionSnapshotReport?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v84 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v84);
          __swift_destroy_boxed_opaque_existential_0(v115);
          v85 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v85);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          goto LABEL_43;
      }
    }

    v41 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v41, v42);
LABEL_43:

    if (v10)
    {
      v114[0] = v10;
      v86 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v87 = type metadata accessor for NWError();
      v88 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v9, v88 ^ 1u, 1, v87);
      if (__swift_getEnumTagSinglePayload(v9, 1, v87) != 1)
      {
        lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        OUTLINED_FUNCTION_10_0();
        v89 = swift_allocError();
        (*(*(v87 - 8) + 32))(v90, v9, v87);
LABEL_48:
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        OUTLINED_FUNCTION_10_0();
        v92 = swift_allocError();
        v93[1] = 0;
        v93[2] = 0;
        *v93 = v89;
        OUTLINED_FUNCTION_39(xmmword_2235F01F0, v92, v93);
        v94 = OUTLINED_FUNCTION_35();
        outlined consume of ConnectionProviderState(v94, v95);
        goto LABEL_49;
      }
    }

    else
    {
      v91 = type metadata accessor for NWError();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v91);
    }

    outlined destroy of ConnectionSnapshotReport?(v9, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    v89 = 0;
    goto LABEL_48;
  }

  if (v10 < 2)
  {
LABEL_10:
    v28 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v28, v29);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriNetwork);
    v31 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v31, v32);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_30();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v36 = swift_slowAlloc();
      v114[0] = v36;
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      a3 = OUTLINED_FUNCTION_22_0();

      *(v35 + 4) = a3;
      OUTLINED_FUNCTION_16_3();
      v37 = 0;
      switch(v38)
      {
        case 1:
          OUTLINED_FUNCTION_29_0();
          if (!v70)
          {
            v37 = v37;
            goto LABEL_33;
          }

          __break(1u);
          goto LABEL_65;
        case 2:
          OUTLINED_FUNCTION_28_1();
          if (!v70)
          {
            goto LABEL_33;
          }

LABEL_65:
          __break(1u);
          goto LABEL_66;
        case 3:
          goto LABEL_33;
        default:
          v37 = BYTE6(a2);
LABEL_33:
          *(v35 + 14) = v37;
          v71 = OUTLINED_FUNCTION_3_2();
          outlined consume of Data?(v71, v72);
          OUTLINED_FUNCTION_37(&dword_223515000, v73, v74, "Provider - RPCOspreyConnectionProvider [%s]: Send data failed. Sending %ld bytes in a connection during setup, waiting, or preparing state.");
          __swift_destroy_boxed_opaque_existential_0(v36);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          goto LABEL_34;
      }
    }

    v39 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v39, v40);
LABEL_34:

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v75 = swift_allocError();
    v77 = 4;
LABEL_35:
    v76[1] = 0;
    v76[2] = 0;
    *v76 = v77;
    OUTLINED_FUNCTION_39(xmmword_2235F01E0, v75, v76);
LABEL_49:
    v96 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v96, v97);
    return;
  }

  if (v10 != 2)
  {
    v58 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v58, v59);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.siriNetwork);
    v61 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v61, v62);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_30();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v66 = swift_slowAlloc();
      v114[0] = v66;
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      v67 = OUTLINED_FUNCTION_22_0();

      *(v65 + 4) = v67;
      OUTLINED_FUNCTION_16_3();
      v68 = 0;
      switch(v69)
      {
        case 1:
          OUTLINED_FUNCTION_29_0();
          if (!v70)
          {
            v68 = v68;
            goto LABEL_57;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        case 2:
          OUTLINED_FUNCTION_28_1();
          if (!v70)
          {
            goto LABEL_57;
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return;
        case 3:
          goto LABEL_57;
        default:
          v68 = BYTE6(a2);
LABEL_57:
          *(v65 + 14) = v68;
          v102 = OUTLINED_FUNCTION_3_2();
          outlined consume of Data?(v102, v103);
          OUTLINED_FUNCTION_37(&dword_223515000, v104, v105, "Provider - RPCOspreyConnectionProvider [%s]: Send data failed. Sending %ld bytes in a cancelled connection.");
          __swift_destroy_boxed_opaque_existential_0(v66);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          goto LABEL_58;
      }
    }

    v98 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v98, v99);
LABEL_58:

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v75 = swift_allocError();
    v77 = 1;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v3 + 32, &v112, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (!v113)
  {
    outlined destroy of ConnectionSnapshotReport?(&v112, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    return;
  }

  outlined init with take of RPCOspreyConnectionProtocol(&v112, v114);
  v43 = *(v3 + 2096);
  v44 = __CFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *(v3 + 2096) = v45;
  __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  v46 = OUTLINED_FUNCTION_3_2();
  outlined copy of Data._Representation(v46, v47);
  OUTLINED_FUNCTION_3_2();
  SiriNetworkOspreyChannel.send(_:)();
  if (one-time initialization token for siriNetwork != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.siriNetwork);
  v49 = OUTLINED_FUNCTION_3_2();
  outlined copy of Data?(v49, v50);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    LODWORD(v115) = v52;
    OUTLINED_FUNCTION_30();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v111 = swift_slowAlloc();
    *&v112 = v111;
    *v53 = 136315394;
    v54 = *(v4 + 16);
    v55 = *(v4 + 24);

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v112);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2048;
    v57 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_29_0();
        if (v70)
        {
          goto LABEL_72;
        }

        v57 = v57;
        break;
      case 2uLL:
        OUTLINED_FUNCTION_28_1();
        if (v70)
        {
          goto LABEL_73;
        }

        break;
      case 3uLL:
        break;
      default:
        v57 = BYTE6(a2);
        break;
    }

    *(v53 + 14) = v57;
    v106 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v106, v107);
    _os_log_impl(&dword_223515000, v51, v115, "Provider - RPCOspreyConnectionProvider [%s]: Send data to streamer. %ld bytes in streamer.", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v111);
    v108 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v108);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {
    v100 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v100, v101);
  }

  a3(0, 0);
  v109 = OUTLINED_FUNCTION_3_2();
  outlined consume of Data?(v109, v110);
  __swift_destroy_boxed_opaque_existential_0(v114);
}

uint64_t RPCOspreyConnectionProvider.readData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_6_5();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v9 = a2;
    v10 = swift_slowAlloc();
    *&aBlock = v10;
    *v8 = 136315138;
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &aBlock);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_36(&dword_223515000, v14, v15, "Provider - RPCOspreyConnectionProvider [%s]: Reader. Ready to receive data.");
    __swift_destroy_boxed_opaque_existential_0(v10);
    a2 = v9;
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  specialized ConnectionProviderProtocol.setupStaleConnectionTimer()();
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v3 + 32, &aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (v43)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v46);
    if ((*(v3 + 2115) & 1) == 0)
    {
      v29 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      OUTLINED_FUNCTION_7_1();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = a1;
      v31[4] = a2;
      OUTLINED_FUNCTION_7_1();
      v32 = swift_allocObject();
      swift_weakInit();
      v39 = *v29;

      v33 = MEMORY[0x223DE2070](0xD000000000000015, 0x80000002235F6E40);
      v44 = partial apply for closure #1 in RPCOspreyConnectionProvider.readData(_:);
      v45 = v3;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v42 = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
      v43 = &block_descriptor_2;
      v34 = _Block_copy(&aBlock);

      v44 = partial apply for closure #2 in RPCOspreyConnectionProvider.readData(_:);
      v45 = v31;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v42 = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> ();
      v43 = &block_descriptor_123;
      v35 = _Block_copy(&aBlock);
      v40[4] = partial apply for closure #3 in RPCOspreyConnectionProvider.readData(_:);
      v40[5] = v32;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 1107296256;
      v40[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v40[3] = &block_descriptor_126;
      v36 = _Block_copy(v40);

      v37 = [v39 bidirectionalStreamingRequestWithMethodName:v33 requestBuilder:v34 streamingResponseHandler:v35 completion:v36];

      swift_unknownObjectRelease();
      _Block_release(v35);
      _Block_release(v34);

      _Block_release(v36);

      return __swift_destroy_boxed_opaque_existential_0(v46);
    }

    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_6_5();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v19 = swift_slowAlloc();
    *&aBlock = v19;
    *v18 = 136315138;
    v20 = *(v3 + 16);
    v21 = *(v3 + 24);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &aBlock);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_223515000, v16, v17, "Provider - RPCOspreyConnectionProvider [%s]: Reader. Error - Connection does not exist or it was cancelled.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v23 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v23);
  }

  lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
  OUTLINED_FUNCTION_10_0();
  v24 = swift_allocError();
  OUTLINED_FUNCTION_34_0(v24, v25);
  return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v26, v27);
}

void closure #1 in RPCOspreyConnectionProvider.readData(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriNetwork);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_223515000, v5, v6, "Provider - RPCOspreyConnectionProvider [%s]: Trace identifier %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v8, -1, -1);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  [a1 setEnableDeviceAuthentication_];
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);

  v17 = MEMORY[0x223DE2070](v15, v16);

  [a1 setClientTraceIdentifier_];
}

uint64_t closure #2 in RPCOspreyConnectionProvider.readData(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriNetwork);
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v38 = a5;
    v39 = v13;
    v40 = v8;
    v41 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53[0] = v18;
    *v17 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + 16);
      v20 = *(Strong + 24);

      aBlock = v21;
      v48 = v20;
      Strong = String.init<A>(describing:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Strong, v23, v53);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2048;
    v8 = v40;
    v9 = v41;
    switch(a2 >> 62)
    {
      case 1uLL:
        result = outlined consume of Data._Representation(a1, a2);
        LODWORD(v25) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_25;
        }

        v25 = v25;
        break;
      case 2uLL:
        v27 = *(a1 + 16);
        v26 = *(a1 + 24);
        result = outlined consume of Data._Representation(a1, a2);
        v25 = v26 - v27;
        if (__OFSUB__(v26, v27))
        {
          goto LABEL_24;
        }

        v9 = v41;
        break;
      case 3uLL:
        outlined consume of Data._Representation(a1, a2);
        v25 = 0;
        break;
      default:
        outlined consume of Data._Representation(a1, a2);
        v25 = BYTE6(a2);
        break;
    }

    v13 = v39;
    *(v17 + 14) = v25;
    outlined consume of Data._Representation(a1, a2);
    _os_log_impl(&dword_223515000, v15, v16, "Provider - RPCOspreyConnectionProvider [%s]: Reader. Read data. %ld bytes", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DE38F0](v18, -1, -1);
    MEMORY[0x223DE38F0](v17, -1, -1);

    a5 = v38;
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 2115) == 1)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v42;
      *(v29 + 24) = a5;
      v51 = partial apply for closure #1 in closure #2 in RPCOspreyConnectionProvider.readData(_:);
      v52 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v50 = &block_descriptor_138;
      v30 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v46 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v31 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v13, v31, v30);
      _Block_release(v30);
      (*(v9 + 8))(v31, v8);
      (*(v44 + 8))(v13, v45);
    }

    v32 = *(result + 2096);
    v33 = __CFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      *(result + 2096) = v34;
      v35 = swift_allocObject();
      v35[2] = v42;
      v35[3] = a5;
      v35[4] = a1;
      v35[5] = a2;
      v51 = partial apply for closure #2 in closure #2 in RPCOspreyConnectionProvider.readData(_:);
      v52 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v50 = &block_descriptor_132;
      v36 = _Block_copy(&aBlock);
      outlined copy of Data._Representation(a1, a2);

      static DispatchQoS.unspecified.getter();
      v46 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v37 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v13, v37, v36);
      _Block_release(v36);
      (*(v9 + 8))(v37, v8);
      (*(v44 + 8))(v13, v45);

      RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()();
      RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()();
      RPCOspreyConnectionProvider.updateConnectionMetricsSnapshotReport()();
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void closure #1 in closure #2 in RPCOspreyConnectionProvider.readData(_:)(void (*a1)(void, unint64_t, void *, void))
{
  lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
  v2 = swift_allocError();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 1;
  *(v3 + 24) = xmmword_2235F01E0;
  a1(0, 0xF000000000000000, v2, 0);
}

void closure #3 in RPCOspreyConnectionProvider.readData(_:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = *(Strong + 1536);
  v6 = *(Strong + 1544);
  if (v6 == 2 && v5 == 3)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v29 = *(v4 + 16);
    v30 = *(v4 + 24);

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v37);

    *(v27 + 4) = v31;
    v32 = "Provider - RPCOspreyConnectionProvider [%s]: Streamer. Connection cancelled";
    goto LABEL_20;
  }

  if (!a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriNetwork);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v34 = *(v4 + 16);
    v35 = *(v4 + 24);

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v37);

    *(v27 + 4) = v36;
    v32 = "Provider - RPCOspreyConnectionProvider [%s]: Streamer called.";
LABEL_20:
    _os_log_impl(&dword_223515000, v25, v26, v32, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223DE38F0](v28, -1, -1);
    MEMORY[0x223DE38F0](v27, -1, -1);
LABEL_21:

    return;
  }

  *(Strong + 1536) = a1;
  *(Strong + 1544) = 1;
  v8 = a1;
  v9 = a1;
  v10 = a1;
  outlined consume of ConnectionProviderState(v5, v6);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriNetwork);

  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315394;
    v17 = *(v4 + 16);
    v18 = *(v4 + 24);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v37);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_223515000, v13, v14, "Provider - RPCOspreyConnectionProvider [%s]: Streamer. Connection error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v16, -1, -1);
    MEMORY[0x223DE38F0](v15, -1, -1);
  }

  RPCOspreyConnectionProvider.closeWithError(_:)(a1);
}

Swift::Void __swiftcall RPCOspreyConnectionProvider.updateConnectionMetricsSnapshotReport()()
{
  (MEMORY[0x28223BE20])();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v0 + 32, v67, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (!v67[3])
  {
    outlined destroy of ConnectionSnapshotReport?(v67, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27RPCOspreyConnectionProtocol_pMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pMR);
  type metadata accessor for SiriNetworkOspreyChannel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v66[89];
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_41_1(v3);
  v4 = OUTLINED_FUNCTION_26_0();
  outlined init with copy of ConnectionMetrics(v4, &v64);
  OUTLINED_FUNCTION_5_6();
  v5 = RPCOspreyConnectionProvider.connectionMetrics.modify();
  v7 = v6 + 568;
  memmove(v66, (v6 + 568), 0x2C8uLL);
  OUTLINED_FUNCTION_10_1(v66);
  if (!v24)
  {
    *v7 = *(*(v1 + 2160) + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
  }

  v8 = OUTLINED_FUNCTION_5_6();
  (v5)(v8, 0);
  OUTLINED_FUNCTION_5_6();
  RPCOspreyConnectionProvider.connectionMetrics.modify();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_19_0(v63, v9);
  OUTLINED_FUNCTION_10_1(v63);
  if (!v24)
  {
    *(v7 + 592) = 0x6574736575716572;
    *(v7 + 600) = 0xEA0000000000646ELL;
  }

  v10 = OUTLINED_FUNCTION_5_6();
  (v1)(v10, 0);
  OUTLINED_FUNCTION_5_6();
  RPCOspreyConnectionProvider.connectionMetrics.modify();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_19_0(v62, v11);
  OUTLINED_FUNCTION_10_1(v62);
  if (!v24)
  {
    *(v7 + 576) = 0xD00000000000001ELL;
    *(v7 + 584) = 0x80000002235F6E20;
  }

  v12 = OUTLINED_FUNCTION_5_6();
  (v1)(v12, 0);
  memcpy(v61, (v1 + 640), sizeof(v61));
  OUTLINED_FUNCTION_10_1(v61);
  if (v24)
  {
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
    memcpy(__dst, __src, 0x139uLL);
    v57[0] = 1;
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v59);
    memcpy(&v60[7], v59, 0x121uLL);
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v13 = static NetworkAnalytics.sharedNetworkAnalytics;
    memcpy(&v58[5], __dst, 0x139uLL);
    LODWORD(v58[0]) = 0;
    v58[1] = 0;
    v58[2] = 0xE000000000000000;
    v58[3] = 0;
    v58[4] = 0xE000000000000000;
    v58[46] = 0;
    v58[45] = 0;
    LOBYTE(v58[47]) = v57[0];
    memcpy(&v58[47] + 1, v60, 0x128uLL);
    v58[85] = MEMORY[0x277D84F90];
    v58[86] = MEMORY[0x277D84F90];
    LODWORD(v58[87]) = 4;
    v58[88] = static NetworkAnalytics.sharedNetworkAnalytics;
    OUTLINED_FUNCTION_9_3();
    destructiveProjectEnumData for ConnectionConfigurationError();
    v14 = OUTLINED_FUNCTION_5_6();
    memcpy(v14, (v1 + 640), 0x2C8uLL);
    memcpy((v1 + 640), v58, 0x2C8uLL);
    v15 = v13;
    v16 = OUTLINED_FUNCTION_5_6();
    outlined destroy of ConnectionSnapshotReport?(v16, v17, v18);
  }

  v19 = RPCOspreyConnectionProvider.connectionMetrics.modify();
  v21 = v20;
  OUTLINED_FUNCTION_19_0(v59, v20);
  OUTLINED_FUNCTION_10_1(v59);
  if (v24)
  {
    (v19)(v57, 0);
  }

  else
  {
    SiriNetworkOspreyChannel.getMetrics()(v58);
    v22 = OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_21_1(v22);
    v23 = OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_10_1(v23);
    if (v24 || (outlined init with copy of ConnectionSnapshotReport?(v65, __dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR), v25 = OUTLINED_FUNCTION_9_3(), outlined destroy of ConnectionSnapshotReport?(v25, v26, v27), memcpy(__src, v65, 0x2C8uLL), OUTLINED_FUNCTION_10_1(__src), v24))
    {
      _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__dst);
    }

    else
    {
      outlined init with copy of ConnectionSnapshotReport?(&__src[40], __dst, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      outlined destroy of ConnectionSnapshotReport?(v65, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      memcpy(__dst, &__src[40], 0x139uLL);
    }

    memcpy(__src, (v21 + 608), 0x139uLL);
    memcpy((v21 + 608), __dst, 0x139uLL);
    outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    (v19)(v57, 0);
  }

  v28 = OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_41_1(v28);
  v29 = OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_41_1(v29);
  memcpy(v57, (v1 + 640), sizeof(v57));
  OUTLINED_FUNCTION_10_1(v57);
  if (v24)
  {
    OUTLINED_FUNCTION_21_1(__src);
    v30 = OUTLINED_FUNCTION_5_6();
    outlined init with copy of ConnectionMetrics(v30, __dst);
    outlined destroy of ConnectionMetrics(__src);
LABEL_27:
    RPCOspreyConnectionProvider.connectionMetrics.modify();
    OUTLINED_FUNCTION_18_1();
    v33 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_19_0(v33, v34);
    v35 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_10_1(v35);
    if (!v24)
    {
      __src[0] = 1;
      LOBYTE(v54[0]) = 1;
      v50[0] = 1;
      LOBYTE(v51) = 1;
      LODWORD(__dst[0]) = 0;
      BYTE4(__dst[0]) = 1;
      memset(&__dst[1], 0, 24);
      LOBYTE(__dst[4]) = 1;
      memset(&__dst[5], 0, 52);
      BYTE4(__dst[11]) = 1;
      LODWORD(__dst[12]) = 0;
      BYTE4(__dst[12]) = 1;
      __dst[13] = MEMORY[0x277D84F98];
      memset(&__dst[14], 0, 24);
      LOBYTE(__dst[17]) = 1;
      __dst[18] = 0;
      LOBYTE(__dst[19]) = 1;
      __dst[20] = 0;
      LOBYTE(__dst[21]) = 1;
      __dst[22] = 0;
      LOBYTE(__dst[23]) = 1;
      __dst[24] = 0;
      LOBYTE(__dst[25]) = 1;
      __dst[26] = 0;
      LOBYTE(__dst[27]) = 1;
      memset(&__dst[28], 0, 24);
      LOBYTE(__dst[31]) = 1;
      __dst[32] = 0;
      LOWORD(__dst[33]) = 1;
      *(&__dst[33] + 2) = v51;
      HIWORD(__dst[33]) = v52;
      __dst[34] = 0;
      LOBYTE(__dst[35]) = 1;
      *(&__dst[35] + 1) = v54[0];
      HIDWORD(__dst[35]) = *(v54 + 3);
      __dst[36] = 0;
      LOBYTE(__dst[37]) = 1;
      *(&__dst[37] + 1) = *v50;
      HIDWORD(__dst[37]) = *&v50[3];
      __dst[38] = 0;
      LOBYTE(__dst[39]) = 1;
      destructiveProjectEnumData for ConnectionConfigurationError();
      memcpy(__src, v19 + 608, 0x139uLL);
      memcpy(v19 + 608, __dst, 0x139uLL);
      outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    }

    (v1)(v56, 0);
    goto LABEL_31;
  }

  memcpy(v54, &v58[76], 0x139uLL);
  OUTLINED_FUNCTION_21_1(__src);
  v31 = OUTLINED_FUNCTION_5_6();
  outlined init with copy of ConnectionMetrics(v31, __dst);
  outlined init with copy of ConnectionSnapshotReport?(v54, __dst, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  outlined destroy of ConnectionMetrics(__src);
  memcpy(v56, v54, 0x139uLL);
  v32 = _s11SiriNetwork010ConnectionB6ReportVSgWOg(v56);
  if (v32 == 1)
  {
    goto LABEL_27;
  }

  outlined destroy of ConnectionSnapshotReport?(v54, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
LABEL_31:
  RPCOspreyConnectionProvider.connectionMetrics.modify();
  OUTLINED_FUNCTION_18_1();
  v36 = OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_19_0(v36, v37);
  v38 = OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_10_1(v38);
  if (!v24)
  {
    memcpy(__src, v19 + 608, 0x139uLL);
    v39 = _s11SiriNetwork010ConnectionB6ReportVSgWOg(__src);
    if (v39 != 1)
    {
      v40 = *(v1 + 1512);
      if (v40)
      {
        v41 = *(v40 + OBJC_IVAR___SNNetworkManagerInternal_carrierName);
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v19 + 77) = v41;
      *(v19 + 78) = v42;
    }
  }

  (v1)(__dst, 0);
  v43 = *(v1 + 1512);
  if (v43)
  {
    v44 = v43 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
    if ((*(v44 + 8) & 1) == 0)
    {
      v45 = *v44;
      RPCOspreyConnectionProvider.connectionMetrics.modify();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_19_0(__src, v46);
      OUTLINED_FUNCTION_10_1(__src);
      if (!v24)
      {
        memcpy(__dst, v19 + 608, 0x139uLL);
        v47 = _s11SiriNetwork010ConnectionB6ReportVSgWOg(__dst);
        if (v47 != 1)
        {
          *(v19 + 79) = v45;
          *(v19 + 640) = 0;
        }
      }

      (v1)(v56, 0);
    }
  }

  v48 = OUTLINED_FUNCTION_26_0();
  specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(v48);

  v49 = OUTLINED_FUNCTION_26_0();
  outlined destroy of ConnectionMetrics(v49);
}