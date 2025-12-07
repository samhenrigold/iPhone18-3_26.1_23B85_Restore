uint64_t SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(uint64_t a1)
{
  v367 = v1;
  v2 = v1;
  v366[9] = *MEMORY[0x277D85DE8];
  aBlock = v1 + 18;
  v3 = v1[126];
  v4 = v1[109];
  v5 = v1[105];
  v6 = v2[104];
  v7 = v2[103];
  v8 = v2[99];
  swift_willThrow();
  outlined destroy of UUID?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v7, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  (*(v5 + 8))(v4, v6);
  v9 = v2[126];
  v349 = v2;
  v10 = v2[125];
  v11 = v2[63];
  v12 = v10;
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v341 = v3;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v2[125];
    v17 = v349[63];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v357 = swift_slowAlloc();
    v366[0] = v357;
    *v18 = 136315650;
    v20 = [v16 identifier];
    v21 = v9;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v22;
    v9 = v21;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v366);

    *(v18 + 4) = v26;
    v2 = v349;
    *(v18 + 12) = 2112;
    v27 = v21;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v28;
    *(v18 + 22) = 2112;
    *(v18 + 24) = v17;
    *v19 = v28;
    v19[1] = v17;
    v29 = v17;
    _os_log_impl(&dword_220099000, v14, v15, "Status send FAILED {status: %s, error: %@, device: %@}", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v357);
    MEMORY[0x223D77FF0](v357, -1, -1);
    MEMORY[0x223D77FF0](v18, -1, -1);
  }

  v30 = _convertErrorToNSError(_:)();
  v31 = [v30 userInfo];
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D726F7272457563, 0xEA00000000006773), (v34 & 1) != 0))
  {
    outlined init with copy of Any(*(v32 + 56) + 32 * v33, (v2 + 24));

    if (swift_dynamicCast())
    {
      v35 = v2[55];
      v36 = v2[56];
      goto LABEL_9;
    }
  }

  else
  {
  }

  swift_getErrorValue();
  v35 = Error.localizedDescription.getter();
  v36 = v37;
LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v2[121];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
  }

  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v347 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
  }

  else
  {
    v347 = v39;
  }

  v42 = v2[125];

  v43 = v347;
  v347[2] = v41 + 1;
  v44 = &v347[3 * v41];
  v44[4] = v42;
  v44[5] = v35;
  v44[6] = v36;
  v45 = v2[124];
  v46 = v2[123];
  v342 = v2[122];
  v346 = v45;
  v47 = v2[120] + 1;
  v348 = v46;
  if (v47 == v2[116])
  {
LABEL_29:
    v110 = v2[117];
    v111 = v2[113];
    v112 = v2[78];
    v113 = v2[77];
    v340 = v2[76];
    v114 = v2[75];
    v115 = v2[74];
    v116 = v349[73];
    logd = v349[66];
    v359 = v111;

    v117 = swift_allocObject();
    *(v117 + 16) = v110;
    v349[22] = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v349[23] = v117;
    v349[18] = MEMORY[0x277D85DD0];
    v349[19] = 1107296256;
    v349[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v349[21] = &block_descriptor_81;
    v118 = _Block_copy(aBlock);
    v119 = v110;
    static DispatchQoS.unspecified.getter();
    v349[60] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223D76E80](0, v112, v114, v118);
    _Block_release(v118);
    v120 = v116;
    v121 = v349;
    (*(v115 + 8))(v114, v120);
    (*(v113 + 8))(v112, v340);

    v349[61] = 0;
    v122 = [v359 allPublishedLocalStatusDevicesInDatabaseContext:logd error:v349 + 61];
    v123 = v349[61];
    if (v122)
    {
      v124 = v122;
      v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v123;

      v127 = v346;
      if (v346 >> 62)
      {
        goto LABEL_124;
      }

      v128 = *((v346 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
      v129 = MEMORY[0x277D84F90];
      v320 = v125;
      if (v128)
      {
        v366[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128 & ~(v128 >> 63), 0);
        if (v128 < 0)
        {
          goto LABEL_170;
        }

        v130 = 0;
        v129 = v366[0];
        do
        {
          if ((v127 & 0xC000000000000001) != 0)
          {
            v131 = MEMORY[0x223D77050](v130, v127);
          }

          else
          {
            v131 = *(v127 + 8 * v130 + 32);
          }

          v132 = v131;
          v133 = [v132 identifier];
          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;

          v366[0] = v129;
          v138 = *(v129 + 16);
          v137 = *(v129 + 24);
          if (v138 >= v137 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1);
            v129 = v366[0];
          }

          ++v130;
          *(v129 + 16) = v138 + 1;
          v139 = v129 + 16 * v138;
          *(v139 + 32) = v134;
          *(v139 + 40) = v136;
        }

        while (v128 != v130);
      }

      v162 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v129);

      if (v125 >> 62)
      {
        v163 = __CocoaSet.count.getter();
        if (v163)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v163 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v163)
        {
LABEL_52:
          v164 = 0;
          v328 = v125 & 0xC000000000000001;
          v314 = v125 & 0xFFFFFFFFFFFFFF8;
          v310 = v125 + 32;
          v128 = v162 + 56;
          v326 = v163;
          do
          {
            if (v328)
            {
              v165 = MEMORY[0x223D77050](v164, v125);
            }

            else
            {
              if (v164 >= *(v314 + 16))
              {
                goto LABEL_123;
              }

              v165 = *(v310 + 8 * v164);
            }

            v166 = v165;
            v167 = __OFADD__(v164, 1);
            v168 = v164 + 1;
            if (v167)
            {
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              v128 = __CocoaSet.count.getter();
              goto LABEL_32;
            }

            v335 = v168;
            v169 = v349[63];
            v170 = [v165 idsIdentifier];
            v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v173 = v172;

            v174 = [v169 idsDeviceIdentifier];
            if (v174)
            {
              v340 = v166;
              v175 = v174;
              v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v178 = v177;

              if (v171 == v176 && v173 == v178)
              {

                v179 = v340;
              }

              else
              {
                v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v179 = v340;
                if ((v180 & 1) == 0)
                {

                  goto LABEL_54;
                }
              }

              v181 = [v179 pendingStatuses];
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
              v182 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v182 >> 62)
              {
                v183 = __CocoaSet.count.getter();
                if (v183)
                {
LABEL_67:
                  v184 = 0;
                  loga = (v182 & 0xFFFFFFFFFFFFFF8);
                  v361 = (v182 & 0xC000000000000001);
                  v346 = v182;
                  v125 = v182 + 32;
                  while (1)
                  {
                    if (v361)
                    {
                      v185 = MEMORY[0x223D77050](v184, v346);
                    }

                    else
                    {
                      if (v184 >= loga[2].isa)
                      {
                        goto LABEL_119;
                      }

                      v185 = *(v125 + 8 * v184);
                    }

                    v186 = v185;
                    v167 = __OFADD__(v184, 1);
                    v184 = (v184 + 1);
                    if (v167)
                    {
                      break;
                    }

                    v187 = [v185 identifier];
                    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v189 = v188;

                    if (*(v162 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v190 = Hasher._finalize()(), v191 = -1 << *(v162 + 32), v192 = v190 & ~v191, ((*(v128 + ((v192 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v192) & 1) != 0))
                    {
                      v193 = ~v191;
                      while (1)
                      {
                        v194 = (*(v162 + 48) + 16 * v192);
                        v195 = *v194 == v127 && v194[1] == v189;
                        if (v195 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v192 = (v192 + 1) & v193;
                        if (((*(v128 + ((v192 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v192) & 1) == 0)
                        {
                          goto LABEL_68;
                        }
                      }

                      if (v184 == v183)
                      {
LABEL_86:
                        v179 = v340;
                        goto LABEL_89;
                      }
                    }

                    else
                    {
LABEL_68:

                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      if (v184 == v183)
                      {
                        goto LABEL_86;
                      }
                    }
                  }

                  __break(1u);
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }
              }

              else
              {
                v183 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v183)
                {
                  goto LABEL_67;
                }
              }

LABEL_89:

              v196 = [v179 deliveredStatuses];
              v197 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v197 >> 62)
              {
                v127 = __CocoaSet.count.getter();
                logb = v197;
                if (v127)
                {
LABEL_91:
                  v198 = 0;
                  v362 = (v197 & 0xC000000000000001);
                  v343 = v197 + 32;
                  v346 = v197 & 0xFFFFFFFFFFFFFF8;
                  v125 = v348;
                  while (1)
                  {
                    if (v362)
                    {
                      v199 = MEMORY[0x223D77050](v198, logb);
                    }

                    else
                    {
                      if (v198 >= *(v346 + 16))
                      {
                        goto LABEL_121;
                      }

                      v199 = *(v343 + 8 * v198);
                    }

                    v200 = v199;
                    v167 = __OFADD__(v198++, 1);
                    if (v167)
                    {
                      break;
                    }

                    v201 = [v199 identifier];
                    v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v204 = v203;

                    if (*(v162 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v205 = Hasher._finalize()(), v206 = -1 << *(v162 + 32), v207 = v205 & ~v206, ((*(v128 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) != 0))
                    {
                      v208 = ~v206;
                      while (1)
                      {
                        v209 = (*(v162 + 48) + 16 * v207);
                        v210 = *v209 == v202 && v209[1] == v204;
                        if (v210 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v207 = (v207 + 1) & v208;
                        if (((*(v128 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) == 0)
                        {
                          goto LABEL_107;
                        }
                      }

                      if (v198 == v127)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
LABEL_107:

                      v211 = v200;
                      MEMORY[0x223D76BD0]();
                      if (*((v348 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v348 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v125 = v348;
                      if (v198 == v127)
                      {
                        goto LABEL_112;
                      }
                    }
                  }

LABEL_120:
                  __break(1u);
LABEL_121:
                  __break(1u);
                  goto LABEL_122;
                }
              }

              else
              {
                v127 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
                logb = v197;
                if (v127)
                {
                  goto LABEL_91;
                }
              }

LABEL_112:

              v212 = [v340 idsIdentifier];
              if (!v212)
              {
                v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v212 = MEMORY[0x223D76B00](v213);
              }

              v346 = v349[114];
              loge = v349[113];
              v363 = v349[66];
              v214 = [v340 discoverySource];
              v215 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
              isa = Array._bridgeToObjectiveC()().super.isa;

              v217 = Array._bridgeToObjectiveC()().super.isa;

              v218 = [v215 initWithIDSIdentifier:v212 pendingStatuses:isa deliveredStatuses:v217 discoverySource:v214];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v219 = swift_allocObject();
              *(v219 + 16) = xmmword_2201A7710;
              *(v219 + 32) = v218;
              v220 = v218;
              v221 = Array._bridgeToObjectiveC()().super.isa;

              v349[62] = 0;
              v222 = [loge createOrUpdatePublishedLocalStatusDevices:v221 databaseContext:v363 error:v349 + 62];

              v223 = v349[62];
              if (!v222)
              {
                v229 = v349[117];
                v230 = v223;

                v121 = v349;

                v231 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v228 = v231;

                goto LABEL_160;
              }

              v224 = v223;

              v127 = v348;
              v125 = v320;
            }

            else
            {
            }

LABEL_54:
            v164 = v335;
          }

          while (v335 != v326);
        }
      }

      v341 = v349[67];

      v232 = v347;
      v336 = v347[2];
      v340 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
      LODWORD(v326) = v336 == 0;
      v346 = v127;
      if (v336)
      {
        v233 = 0;
        v329 = (v349[70] + 8);
        v332 = v349[87];
        v234 = v347 + 6;
        do
        {
          if (v233 >= v232[2])
          {
            __break(1u);
            goto LABEL_168;
          }

          v240 = v349[108];
          v241 = *(v234 - 1);
          v242 = *v234;
          v243 = *(v234 - 2);

          SKADatabasePublishedLocalStatus.key.getter(v240);
          v244 = v349[112];
          logc = v243;
          v364 = v233;
          v344 = v234;
          v245 = v349[119];
          v246 = v349[111];
          v247 = v349[102];
          v248 = v349[100];
          v249 = v349[67];
          (*(v349[105] + 16))(v247, v349[108], v349[104]);
          v250 = (v247 + *(v248 + 20));
          *v250 = v246;
          v250[1] = v244;
          swift_beginAccess();
          v251 = *(v249 + v245);
          v252 = *(v251 + 16);

          if (v252 && (v253 = specialized __RawDictionaryStorage.find<A>(_:)(v349[102]), (v254 & 1) != 0))
          {
            v255 = v349[119];
            v311 = v349[92];
            v256 = v349[91];
            v257 = v349[90];
            v321 = v349[89];
            v324 = v349[102];
            v258 = v349[83];
            v315 = v349[82];
            v259 = v349[67];
            outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v251 + 56) + *(v349[88] + 72) * v253, v256, type metadata accessor for SKALocalStatusServer.FailedDelivery);
            outlined init with take of SKALocalStatusServer.FailedDelivery(v256, v311);
            swift_endAccess();
            (*(v258 + 16))(v257, v311, v315);
            static Date.now.getter();
            v260 = (v257 + *(v332 + 24));
            *v260 = v241;
            v260[1] = v242;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v257, v321);
            v261 = swift_isUniquelyReferenced_nonNull_native();
            v366[0] = *(v259 + v255);
            *(v259 + v255) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v321, v324, v261);
            *(v259 + v255) = v366[0];
            swift_endAccess();
            outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v311, type metadata accessor for SKALocalStatusServer.FailedDelivery);
          }

          else
          {
            v262 = v349[119];
            v263 = v349[102];
            v264 = v349[90];
            v265 = v349[89];
            v266 = v349[67];
            swift_endAccess();
            static Date.now.getter();
            static Date.now.getter();
            v267 = (v264 + *(v332 + 24));
            *v267 = v241;
            v267[1] = v242;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v264, v265);
            v268 = swift_isUniquelyReferenced_nonNull_native();
            v366[0] = *(v266 + v262);
            *(v266 + v262) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v265, v263, v268);
            *(v266 + v262) = v366[0];
            swift_endAccess();
          }

          SKALocalStatusServer.currentStatus(for:in:)(v349[108], v349[66], v349[72]);
          v127 = v346;
          swift_beginAccess();
          if (*(*&v340[v341] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v349[108]), (v269 & 1) != 0))
          {
            swift_endAccess();

            CurrentValueSubject.send(_:)();
          }

          else
          {
            swift_endAccess();
          }

          v233 = v364 + 1;
          v235 = v349[108];
          v236 = v349[105];
          v128 = v349[104];
          v237 = v349[102];
          v238 = v349[72];
          v239 = v349[69];

          (*v329)(v238, v239);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v237, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v236 + 8))(v235, v128);
          v234 = v344 + 3;
          v232 = v347;
        }

        while (v336 != v364 + 1);
      }

      v128 = v348;
      if (v127 >> 62)
      {
        goto LABEL_171;
      }

      for (i = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {

        if (!i)
        {
          break;
        }

        v271 = 0;
        v322 = v127 & 0xFFFFFFFFFFFFFF8;
        v325 = v127 & 0xC000000000000001;
        v312 = (v349[70] + 8);
        v316 = i;
        while (1)
        {
          if (v325)
          {
            v278 = MEMORY[0x223D77050](v271, v127);
          }

          else
          {
            if (v271 >= *(v322 + 16))
            {
              goto LABEL_169;
            }

            v278 = *(v127 + 8 * v271 + 32);
          }

          v128 = v278;
          if (__OFADD__(v271, 1))
          {
            break;
          }

          SKADatabasePublishedLocalStatus.key.getter(v349[107]);
          v279 = v349[112];
          v330 = v271 + 1;
          v333 = v271;
          v365 = v128;
          v280 = v349[111];
          v337 = v349[107];
          v281 = v349[101];
          v282 = v349[100];
          logf = v349[71];
          v283 = v349[68];
          v345 = v349[66];
          v318 = *(v349[105] + 16);
          v318(v281);
          v284 = (v281 + *(v282 + 20));
          *v284 = v280;
          v284[1] = v279;
          swift_beginAccess();

          specialized Dictionary._Variant.removeValue(forKey:)(v281, v283);
          outlined destroy of UUID?(v283, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
          swift_endAccess();
          SKALocalStatusServer.currentStatus(for:in:)(v337, v345, logf);
          swift_beginAccess();
          v127 = v346;
          if (*(*&v340[v341] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v349[107]), (v285 & 1) != 0))
          {
            swift_endAccess();

            CurrentValueSubject.send(_:)();
            v286 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

            v128 = v348;
            if (!v286)
            {
              v287 = v349[107];
              v288 = v349[106];
              v289 = v349[104];
              *(v349 + 1040) = 1;
              CurrentValueSubject.send(completion:)();
              (v318)(v288, v287, v289);
              swift_beginAccess();
              specialized Dictionary.subscript.setter(0, v288);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            v128 = v348;
          }

          v272 = v349[107];
          v273 = v349[105];
          v274 = v349[104];
          v275 = v349[101];
          v276 = v349[71];
          v277 = v349[69];

          (*v312)(v276, v277);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v275, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v273 + 8))(v272, v274);
          v271 = v333 + 1;
          if (v330 == v316)
          {
            goto LABEL_154;
          }
        }

LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        ;
      }

LABEL_154:

      v290 = Logger.logObject.getter();
      v291 = v128;
      v292 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v290, v292))
      {
        v293 = swift_slowAlloc();
        *v293 = 134218240;
        if (v291 >> 62)
        {
          v294 = __CocoaSet.count.getter();
        }

        else
        {
          v294 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v293 + 4) = v294;

        *(v293 + 12) = 2048;
        v295 = v347[2];

        *(v293 + 14) = v295;

        _os_log_impl(&dword_220099000, v290, v292, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v293, 0x16u);
        MEMORY[0x223D77FF0](v293, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v296 = v349[117];
      SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(v349[66]);
    }

    else
    {
      v225 = v349[117];
      v226 = v123;

      v227 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v228 = v227;

LABEL_160:
      v297 = v121[63];
      v298 = v228;
      v299 = Logger.logObject.getter();
      v300 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v299, v300))
      {
        v301 = v121[63];
        v302 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        *v302 = 138412546;
        *(v302 + 4) = v301;
        *v303 = v301;
        *(v302 + 12) = 2112;
        v304 = v301;
        v305 = v228;
        v306 = _swift_stdlib_bridgeErrorToNSError();
        *(v302 + 14) = v306;
        v303[1] = v306;
        _os_log_impl(&dword_220099000, v299, v300, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v302, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v303, -1, -1);
        MEMORY[0x223D77FF0](v302, -1, -1);
      }

      else
      {
      }

      LODWORD(v326) = 0;
    }

    v307 = v349[1];

    return v307(v326);
  }

  else
  {
    while (1)
    {
      v2[124] = v45;
      v2[123] = v46;
      v2[122] = v342;
      v2[121] = v43;
      v2[120] = v47;
      v74 = v2[115];
      if ((v74 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x223D77050]();
      }

      else
      {
        v75 = *(v74 + 8 * v47 + 32);
      }

      v76 = v75;
      v2[125] = v75;
      SKADatabasePublishedLocalStatus.key.getter(v2[109]);
      v77 = v2[119];
      v78 = v2[112];
      v79 = v2[111];
      v80 = v2[103];
      v81 = v2[100];
      v82 = v2[67];
      (*(v2[105] + 16))(v80, v2[109], v2[104]);
      v83 = (v80 + *(v81 + 20));
      *v83 = v79;
      v83[1] = v78;
      swift_beginAccess();
      v84 = *(v82 + v77);
      v85 = *(v84 + 16);

      if (v85 && (v86 = specialized __RawDictionaryStorage.find<A>(_:)(v2[103]), (v87 & 1) != 0))
      {
        v88 = v2[94];
        v89 = v2[93];
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v84 + 56) + *(v2[88] + 72) * v86, v89, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        outlined init with take of SKALocalStatusServer.FailedDelivery(v89, v88);
        swift_endAccess();
        Date.timeIntervalSince(_:)();
        Date.addingTimeInterval(_:)();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v88, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v90 = 0;
      }

      else
      {
        swift_endAccess();
        v90 = 1;
      }

      v91 = v2[99];
      v92 = v2[98];
      v93 = v2[83];
      v94 = v2[82];
      (*(v93 + 56))(v91, v90, 1, v94);
      outlined init with copy of (String, Sendable)(v91, v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v93 + 48))(v92, 1, v94) == 1)
      {
        outlined destroy of UUID?(v2[98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_44;
      }

      v95 = v2[85];
      v96 = v2[83];
      v97 = v2[82];
      (*(v96 + 32))(v2[86], v2[98], v97);
      static Date.now.getter();
      v98 = static Date.> infix(_:_:)();
      v99 = *(v96 + 8);
      v99(v95, v97);
      if ((v98 & 1) == 0)
      {
        break;
      }

      v341 = 0;
      (*(v2[83] + 16))(v2[84], v2[86], v2[82]);

      v100 = v76;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      v358 = v100;

      log = v101;
      if (os_log_type_enabled(v101, v102))
      {
        v48 = v2[112];
        v313 = v2[111];
        v334 = v2[104];
        v338 = v2[109];
        v327 = v2[103];
        v331 = v2[105];
        v323 = v2[86];
        v326 = v2[99];
        v49 = v2[84];
        v50 = v2[82];
        v51 = v2;
        v52 = swift_slowAlloc();
        v317 = swift_slowAlloc();
        v366[0] = v317;
        *v52 = 136315650;
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v319 = v50;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        v99(v49, v50);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v366);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = [v358 identifier];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v366);

        *(v52 + 14) = v61;
        *(v52 + 22) = 2080;

        v63 = specialized Collection.prefix(_:)(8, v313, v48, v62);
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v70 = MEMORY[0x223D76B60](v63, v65, v67, v69);
        v72 = v71;

        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v366);

        *(v52 + 24) = v73;
        _os_log_impl(&dword_220099000, log, v102, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v317, -1, -1);
        MEMORY[0x223D77FF0](v52, -1, -1);

        v99(v323, v319);
        outlined destroy of UUID?(v326, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v327, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v331 + 8))(v338, v334);
      }

      else
      {
        v339 = v2[109];
        v103 = v2[105];
        v104 = v2[104];
        v105 = v2[103];
        v106 = v2[99];
        v51 = v2;
        v107 = v2[86];
        v108 = v51[84];
        v109 = v51[82];

        v99(v108, v109);
        v99(v107, v109);
        outlined destroy of UUID?(v106, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v105, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v103 + 8))(v339, v104);
      }

      v47 = v51[120] + 1;
      v2 = v51;
      v43 = v347;
      v46 = v348;
      v45 = v346;
      if (v47 == v51[116])
      {
        goto LABEL_29;
      }
    }

    v99(v2[86], v2[82]);
LABEL_44:
    v140 = v2[63];
    outlined init with copy of (String, Sendable)(v2[99], v2[97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v141 = v140;
    v142 = v76;
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();

    v145 = os_log_type_enabled(v143, v144);
    v146 = v2[97];
    if (v145)
    {
      v147 = v2[96];
      v148 = v2[63];
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v366[0] = v151;
      *v149 = 138412802;
      *(v149 + 4) = v142;
      *(v149 + 12) = 2112;
      *(v149 + 14) = v148;
      *v150 = v142;
      v150[1] = v148;
      *(v149 + 22) = 2080;
      outlined init with copy of (String, Sendable)(v146, v147, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v152 = v148;
      v153 = v142;
      v154 = String.init<A>(describing:)();
      v156 = v155;
      outlined destroy of UUID?(v146, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, v366);

      *(v149 + 24) = v157;
      _os_log_impl(&dword_220099000, v143, v144, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v149, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v150, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v151);
      MEMORY[0x223D77FF0](v151, -1, -1);
      MEMORY[0x223D77FF0](v149, -1, -1);
    }

    else
    {

      outlined destroy of UUID?(v146, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v360 = v2[117];
    v158 = v2[81];
    v159 = v2[80];
    v160 = v2[79];
    v2[2] = v2;
    v2[3] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    swift_continuation_init();
    v2[17] = v160;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v159 + 32))(boxed_opaque_existential_0, v158, v160);
    v2[10] = MEMORY[0x277D85DD0];
    v2[11] = 1107296256;
    v2[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v2[13] = &block_descriptor_84;
    [v360 activateWithCompletion_];
    (*(v159 + 8))(boxed_opaque_existential_0, v160);

    return MEMORY[0x282200938](v2 + 2);
  }
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D77050](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject pendingStatuses];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        __CocoaSet.count.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [SKADatabasePublishedLocalStatus] and conformance [A], &_sSaySo31SKADatabasePublishedLocalStatusCGMd, &_sSaySo31SKADatabasePublishedLocalStatusCGMR, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo31SKADatabasePublishedLocalStatusCGMd, &_sSaySo31SKADatabasePublishedLocalStatusCGMR);
              v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(uint64_t a1)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 176);
  v71[0] = 0;
  v4 = [v3 allPublishedLocalStatusDevicesInDatabaseContext:a1 error:v71];
  v5 = v71[0];
  if (!v4)
  {
    v22 = v71[0];
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, log);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_220099000, v26, v27, "Failed to fetch all published local status devices while updating browser device filter: %@", v28, 0xCu);
      outlined destroy of UUID?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v29, -1, -1);
      MEMORY[0x223D77FF0](v28, -1, -1);
    }

    else
    {
    }

    return;
  }

  v6 = v4;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  v71[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = MEMORY[0x277D84F90];
    v70 = v1;
    if (i)
    {
      v11 = 0;
      v68 = v7 & 0xC000000000000001;
      v12 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v68)
        {
          v13 = MEMORY[0x223D77050](v11, v7);
        }

        else
        {
          if (v11 >= *(v12 + 16))
          {
            goto LABEL_58;
          }

          v13 = *(v7 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = v7;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v17 = [v14 idsIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v1 = SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v18, v20);

        if (v1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v71;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v7 = v16;
        ++v11;
        if (v15 == i)
        {
          v21 = v71[0];
          v1 = v70;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_23:

    v71[0] = v10;
    if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *(v21 + 16);
    }

    v33 = MEMORY[0x277D84F90];
    if (!v32)
    {
      break;
    }

    v34 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x223D77050](v34, v21);
      }

      else
      {
        if (v34 >= *(v21 + 16))
        {
          goto LABEL_60;
        }

        v35 = *(v21 + 8 * v34 + 32);
      }

      v7 = v35;
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = [v35 pendingStatuses];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v38 >> 62)
      {
        v1 = __CocoaSet.count.getter();
      }

      else
      {
        v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v71;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v34;
      if (v36 == v32)
      {
        v39 = v71[0];
        v33 = MEMORY[0x277D84F90];
        v1 = v70;
        goto LABEL_42;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_42:

  v40 = *(v1 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  if (v40)
  {
    v41 = *(v1 + OBJC_IVAR___SKALocalStatusServer_browseTask + 24);
    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      v42 = __CocoaSet.count.getter();
      if (!v42)
      {
        goto LABEL_64;
      }

LABEL_46:
      v71[0] = v33;
      v43 = v40;

      v69 = v41;
      v44 = v41;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42 & ~(v42 >> 63), 0);
      if (v42 < 0)
      {
        __break(1u);
      }

      v45 = 0;
      v46 = v71[0];
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x223D77050](v45, v39);
        }

        else
        {
          v47 = *(v39 + 8 * v45 + 32);
        }

        v48 = v47;
        v49 = [v48 idsIdentifier];
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v71[0] = v46;
        v54 = v46[2];
        v53 = v46[3];
        if (v54 >= v53 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
          v46 = v71[0];
        }

        ++v45;
        v46[2] = v54 + 1;
        v55 = &v46[2 * v54];
        v55[4] = v50;
        v55[5] = v52;
      }

      while (v42 != v45);

      v41 = v69;
    }

    else
    {
      v42 = *(v39 + 16);
      if (v42)
      {
        goto LABEL_46;
      }

LABEL_64:
      v56 = v41;
      v57 = v40;

      v46 = MEMORY[0x277D84F90];
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v40 setDeviceFilter_];

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, log);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71[0] = v63;
      *v62 = 136315138;
      v64 = MEMORY[0x223D76C00](v46, MEMORY[0x277D837D0]);
      v66 = v65;

      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v71);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_220099000, v60, v61, "Updated browseCompanionLink device filter: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x223D77FF0](v63, -1, -1);
      MEMORY[0x223D77FF0](v62, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a1;
  swift_retain_n();
  v10 = a1;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v9);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), a4, 0);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)()
{
  v1 = *(v0 + 16);
  v2 = v1 + OBJC_IVAR___SKALocalStatusServer_browseTask;
  v3 = *(v1 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  if (v3)
  {
    v4 = *(v2 + 24);
    if (*(v2 + 16))
    {
      v5 = *(v0 + 24);
      v6 = *(v1 + 168);
      v7 = v4;
      v8 = v3;

      v9 = [v6 newBackgroundContext];
      v10 = [v5 idsDeviceIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v26 = SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v12, v14);

      if (v26)
      {
        v27 = [*(v0 + 24) description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        MEMORY[0x223D76B90](v28, v30);

        MEMORY[0x223D76B90](93, 0xE100000000000000);
        SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v9, 0x5B646E756F46, 0xE600000000000000);
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v31 = *(v0 + 24);
        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, log);
        v33 = v31;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = *(v0 + 24);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = v36;
          *v38 = v36;
          v39 = v36;
          _os_log_impl(&dword_220099000, v34, v35, "Skip delivery to found device %@", v37, 0xCu);
          outlined destroy of UUID?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223D77FF0](v38, -1, -1);
          MEMORY[0x223D77FF0](v37, -1, -1);
        }
      }
    }

    else
    {
      v19 = one-time initialization token for log;
      v20 = v3;

      v21 = v4;
      if (v19 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, log);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_220099000, v23, v24, "Ignoring device found while companionLink is activating", v25, 2u);
        MEMORY[0x223D77FF0](v25, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, log);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_220099000, v16, v17, "Received publish device found without a browserTask. Ignoring", v18, 2u);
      MEMORY[0x223D77FF0](v18, -1, -1);
    }
  }

  v40 = *(v0 + 8);

  return v40();
}

void closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(NSObject *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  if (a1)
  {
    v7 = a1;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, log);
    v9 = a1;
    v23 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_220099000, v23, v10, "Failed to activate browseCompanionLink {error: %@}", v11, 0xCu);
      outlined destroy of UUID?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v12, -1, -1);
      MEMORY[0x223D77FF0](v11, -1, -1);

      v15 = v23;
    }

    else
    {

      v15 = a1;
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, log);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_220099000, v17, v18, "CompanionLink activate delivery START", v19, 2u);
      MEMORY[0x223D77FF0](v19, -1, -1);
    }

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a2;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v21);
  }
}

uint64_t closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);

  return SKALocalStatusServer.updateBrowseTask()();
}

uint64_t closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  *(v1 + 56) = OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v2, 0);
}

{
  v0[8] = *(v0[2] + v0[7]);
  return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), 0, 0);
}

{
  if (v0[8] == 259200)
  {
    static Clock<>.continuous.getter();
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);

    return specialized Clock.sleep(for:tolerance:)(0x230878222D000000, 16393, 0, 0, 1);
  }

  else
  {
    v3 = v0[2];

    return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v3, 0);
  }
}

{
  v0[9] = *(v0[2] + v0[7]);
  return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);

  return specialized Clock.sleep(for:tolerance:)(v2, v4 + v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 16);
    *(v2 + 96) = OBJC_IVAR___SKALocalStatusServer_browseTask;
    v6 = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = *(v0[2] + v0[12]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), 0, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  [*(v0 + 104) setControlFlags_];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Removing bleScreenOff control flag from browseCompanionLink after 3.5 day timeout", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t SKALocalStatusServer.updateBrowseTask()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](SKALocalStatusServer.updateBrowseTask(), v0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___SKALocalStatusServer_browseTask;
  *(v0 + 24) = OBJC_IVAR___SKALocalStatusServer_browseTask;
  v3 = v1 + v2;
  v4 = *v3;
  *(v0 + 32) = *v3;
  *(v0 + 40) = *(v3 + 8);
  v5 = *(v3 + 24);
  *(v0 + 48) = v5;
  if (v4)
  {
    v6 = *(v1 + 168);
    v7 = v5;
    v8 = v4;

    v9 = [v6 newBackgroundContext];
    *(v0 + 56) = v9;
    SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v9, 0xD000000000000015, 0x80000002201AC7B0);
    *(v0 + 64) = v10;
    if (v10)
    {
      v11 = swift_task_alloc();
      *(v0 + 72) = v11;
      *v11 = v0;
      v11[1] = SKALocalStatusServer.updateBrowseTask();

      return MEMORY[0x282200460]();
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, log);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_220099000, v24, v25, "No delivery task in startNewBrowserActivate. We expected pending deliveries at this point.", v26, 2u);
      MEMORY[0x223D77FF0](v26, -1, -1);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, log);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_220099000, v13, v14, "CompanionLink activate delivery END", v15, 2u);
      MEMORY[0x223D77FF0](v15, -1, -1);
    }

    v16 = *(v0 + 48);
    v17 = *(v0 + 16) + *(v0 + 24);
    v28 = *(v0 + 32);

    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    *v17 = v28;
    *(v17 + 16) = 1;
    *(v17 + 24) = v16;
    outlined consume of SKALocalStatusServer.BrowseTask?(v18, v19, v20, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](SKALocalStatusServer.updateBrowseTask(), v1, 0);
}

{

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "CompanionLink activate delivery END", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 16) + *(v0 + 24);
  v13 = *(v0 + 32);

  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v6 = v13;
  *(v6 + 16) = 1;
  *(v6 + 24) = v5;
  outlined consume of SKALocalStatusServer.BrowseTask?(v7, v8, v9, v10);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8[24] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[25] = v10;
  v11 = *(v10 - 8);
  v8[26] = v11;
  v8[27] = *(v11 + 64);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), a5, 0);
}

uint64_t closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)()
{
  v140 = v0;
  v2 = v0[18];
  if (v2 >> 62)
  {
LABEL_56:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v139[0] = MEMORY[0x277D84F90];
    v5 = v139;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
LABEL_58:
      swift_once();
      goto LABEL_17;
    }

    v4 = v139[0];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        MEMORY[0x223D77050](v6, v0[18]);
        v7 = [swift_unknownObjectRetain() idsIdentifier];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        swift_unknownObjectRelease_n();
        v139[0] = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v4 = v139[0];
        }

        ++v6;
        *(v4 + 16) = v12 + 1;
        v13 = v4 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v3 != v6);
    }

    else
    {
      v14 = (v0[18] + 32);
      do
      {
        v15 = *v14;
        v16 = [v15 idsIdentifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v139[0] = v4;
        v21 = *(v4 + 16);
        v20 = *(v4 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v4 = v139[0];
        }

        *(v4 + 16) = v21 + 1;
        v22 = v4 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v14;
        --v3;
      }

      while (v3);
    }
  }

  v23 = v0[19];
  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);
  v0[30] = v1;

  v0[17] = v1;
  v24 = OBJC_IVAR___SKALocalStatusServer_browseTask;
  v0[31] = OBJC_IVAR___SKALocalStatusServer_browseTask;
  v25 = (v23 + v24);
  v5 = *v25;
  v0[32] = *v25;
  v2 = v25[3];
  v0[33] = v2;
  if (!v5)
  {

    goto LABEL_61;
  }

  v26 = v25[1];
  v27 = v25[2];
  v0[34] = v26;

  outlined copy of SKALocalStatusServer.BrowseTask?(v5, v26, v27, v2);
  if (one-time initialization token for log != -1)
  {
    goto LABEL_58;
  }

LABEL_17:
  v28 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v28, log);
  v29 = v2;
  v30 = v5;
  swift_bridgeObjectRetain_n();
  v31 = v29;

  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = &unk_27843F000;
  if (os_log_type_enabled(v33, v34))
  {
    v136 = v31;
    v36 = v0[20];
    v37 = v0[21];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v139[0] = v39;
    *v38 = 136315650;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v139);
    *(v38 + 12) = 2048;
    *(v38 + 14) = *(v1 + 16);
    *(v38 + 22) = 2048;
    v40 = [v32 activeDevices];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v1 >> 62)
    {
      v41 = __CocoaSet.count.getter();
    }

    else
    {
      v41 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 24) = v41;
    v31 = v136;

    _os_log_impl(&dword_220099000, v33, v34, "deliverAllPendingStatuses CONTINUE. Resuming task {reason: %s, pendingIDSIdentifiers.count: %ld, activeDevices.count: %ld}", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223D77FF0](v39, -1, -1);
    MEMORY[0x223D77FF0](v38, -1, -1);

    v35 = &unk_27843F000;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v42 = [v32 v35[491]];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[36] = v43;

  if (v43 >> 62)
  {
    v72 = __CocoaSet.count.getter();
    v0[37] = v72;
    if (v72)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[37] = v44;
  if (!v44)
  {
LABEL_60:

LABEL_61:
    v73 = v0[25];
    v74 = v0[26];
    v75 = v0[24];
    swift_beginAccess();

    v77 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy18StatusKitAgentCore08SKALocalE6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAM_G_10Foundation4DateVs5NeverOTg504_s18efg6Core08i2A6j31C25deliverAllPendingStatuses33_mnopqrstu23CBELL2in6reasonScTyyts5z59OGSgSo22NSManagedObjectContextC_SStKFyyYacfU1_10Foundation4y5VAC14kL10AELLVXEfU_Tf1cn_n(v76);

    specialized Sequence<>.min()(v77, v75);

    if ((*(v74 + 48))(v75, 1, v73) == 1)
    {
      v78 = v0[19];
      outlined destroy of UUID?(v0[24], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v79 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
      if (!*(v78 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
      {
LABEL_80:
        if (*(v0[19] + v0[31]))
        {

          swift_beginAccess();
          if (!*(v0[17] + 16))
          {
            if (one-time initialization token for log != -1)
            {
              swift_once();
            }

            v110 = type metadata accessor for Logger();
            __swift_project_value_buffer(v110, log);
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
              _os_log_impl(&dword_220099000, v111, v112, "failedDeliveryRetryTask CANCELLED {reason: no pending IDS Identifiers}", v113, 2u);
              MEMORY[0x223D77FF0](v113, -1, -1);
            }

            v114 = v0[19];

            v115 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
            if (*(v114 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
            {

              MEMORY[0x223D76D40](v116, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
            }

            *(v114 + v115) = 0;

            SKALocalStatusServer.stopBrowserTask()();
          }
        }

        else
        {
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v117 = type metadata accessor for Logger();
          __swift_project_value_buffer(v117, log);
          swift_retain_n();

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v138 = v0[31];
            v120 = v0[19];
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v139[0] = v122;
            *v121 = 136315650;
            swift_beginAccess();

            v123 = Set.description.getter();
            v125 = v124;

            v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, v139);

            *(v121 + 4) = v126;
            *(v121 + 12) = 2080;
            v127 = Set.description.getter();
            v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v139);

            *(v121 + 14) = v129;
            *(v121 + 22) = 1024;
            v130 = *(v120 + v138);

            *(v121 + 24) = v130 == 0;

            _os_log_impl(&dword_220099000, v118, v119, "Starting new browser task: {pendingIDSIdentifiers: %s, originalPendingIDSIdentifiers: %s, browserTask.isNill: %{BOOL}d}", v121, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x223D77FF0](v122, -1, -1);
            MEMORY[0x223D77FF0](v121, -1, -1);
          }

          else
          {
          }

          specialized SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(v0[30]);
        }

        v131 = v0[1];

        return v131();
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, log);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_220099000, v81, v82, "failedDeliveryRetryTask CANCELLED {reason: no failed deliveries}", v83, 2u);
        MEMORY[0x223D77FF0](v83, -1, -1);
      }

      if (*(v78 + v79))
      {

        MEMORY[0x223D76D40](v84, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(v78 + v79) = 0;
    }

    else
    {
      v85 = *(v0[26] + 32);
      v85(v0[29], v0[24], v0[25]);
      Date.timeIntervalSinceNow.getter();
      v87 = v86;
      if (v86 <= 0.0)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for Logger();
        __swift_project_value_buffer(v102, log);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.fault.getter();
        v105 = os_log_type_enabled(v103, v104);
        v106 = v0[29];
        v107 = v0[25];
        v108 = v0[26];
        if (v105)
        {
          v109 = swift_slowAlloc();
          *v109 = 134217984;
          *(v109 + 4) = v87;
          _os_log_impl(&dword_220099000, v103, v104, "failedDeliveryRetryTask FAILED. Invalid sleepSeconds {sleepSeconds: %f}", v109, 0xCu);
          MEMORY[0x223D77FF0](v109, -1, -1);
        }

        (*(v108 + 8))(v106, v107);
        goto LABEL_80;
      }

      v88 = v0[19];
      v134 = v85;
      v135 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
      v137 = v88;
      if (*(v88 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
      {

        MEMORY[0x223D76D40](v89, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

        v88 = v0[19];
      }

      v91 = v0[28];
      v90 = v0[29];
      v132 = v91;
      v92 = v0[26];
      v93 = v0[27];
      v94 = v0[25];
      v95 = v0[23];
      v133 = v95;
      v96 = type metadata accessor for TaskPriority();
      (*(*(v96 - 8) + 56))(v95, 1, 1, v96);
      (*(v92 + 16))(v91, v90, v94);
      v97 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
      v98 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v99 = (v93 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      *(v100 + 16) = v88;
      *(v100 + 24) = v97;
      v134(v100 + v98, v132, v94);
      *(v100 + v99) = v87;
      *(v100 + ((v99 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;
      swift_retain_n();
      v101 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v133, &async function pointer to partial apply for closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v100);
      (*(v92 + 8))(v90, v94);
      *(v137 + v135) = v101;
    }

    goto LABEL_80;
  }

LABEL_25:
  swift_beginAccess();
  v45 = 0;
  v2 = -1;
  while (1)
  {
    v46 = v0[36];
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x223D77050](v45);
    }

    else
    {
      if (v45 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v47 = *(v46 + 8 * v45 + 32);
    }

    v48 = v47;
    v0[38] = v47;
    v0[39] = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v49 = [v47 idsDeviceIdentifier];
    if (v49)
    {
      break;
    }

LABEL_27:

LABEL_28:
    v45 = v0[39];
    if (v45 == v0[37])
    {
      v65 = v0[33];
      v66 = v0[32];

      goto LABEL_61;
    }
  }

  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v0[40] = v51;
  v0[41] = v53;
  v54 = v0[17];
  if (!*(v54 + 16))
  {

    goto LABEL_46;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v55 = Hasher._finalize()();
  v56 = -1 << *(v54 + 32);
  v57 = v55 & ~v56;
  if (((*(v54 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
  {
LABEL_44:

LABEL_46:

    goto LABEL_28;
  }

  v1 = ~v56;
  while (1)
  {
    v58 = (*(v54 + 48) + 16 * v57);
    v59 = *v58 == v51 && v58[1] == v53;
    if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v57 = (v57 + 1) & v1;
    if (((*(v54 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  if ((SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v51, v53) & 1) == 0)
  {

    v48 = v48;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v48;
      *v63 = v48;
      v64 = v48;
      _os_log_impl(&dword_220099000, v60, v61, "Skip delivery to active device %@", v62, 0xCu);
      outlined destroy of UUID?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v63, -1, -1);
      MEMORY[0x223D77FF0](v62, -1, -1);

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v67 = swift_task_alloc();
  v0[42] = v67;
  *v67 = v0;
  v67[1] = closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  v68 = v0[21];
  v69 = v0[22];
  v70 = v0[20];

  return SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(v48, v70, v68, v69);
}

{
  v98 = v0;
  if (*(v0 + 344))
  {
    v2 = *(v0 + 320);
    v1 = *(v0 + 328);
    v3 = *(v0 + 304);
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v2, v1);
    swift_endAccess();
  }

  else
  {
  }

  for (i = *(v0 + 312); i != *(v0 + 296); i = *(v0 + 312))
  {
    v19 = *(v0 + 288);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223D77050](i);
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v20 = *(v19 + 8 * i + 32);
    }

    v21 = v20;
    *(v0 + 304) = v20;
    *(v0 + 312) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v22 = [v20 idsDeviceIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      *(v0 + 320) = v24;
      *(v0 + 328) = v26;
      v27 = *(v0 + 136);
      if (!*(v27 + 16))
      {

        continue;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
LABEL_32:

        continue;
      }

      v31 = ~v29;
      while (1)
      {
        v32 = (*(v27 + 48) + 16 * v30);
        v33 = *v32 == v24 && v32[1] == v26;
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v24, v26))
      {
        v87 = swift_task_alloc();
        *(v0 + 336) = v87;
        *v87 = v0;
        v87[1] = closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
        v88 = *(v0 + 168);
        v89 = *(v0 + 176);
        v90 = *(v0 + 160);

        return SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(v21, v90, v88, v89);
      }

      v21 = v21;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v21;
        *v37 = v21;
        v38 = v21;
        _os_log_impl(&dword_220099000, v34, v35, "Skip delivery to active device %@", v36, 0xCu);
        outlined destroy of UUID?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v37, -1, -1);
        MEMORY[0x223D77FF0](v36, -1, -1);

        continue;
      }
    }
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 256);

  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  swift_beginAccess();

  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy18StatusKitAgentCore08SKALocalE6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAM_G_10Foundation4DateVs5NeverOTg504_s18efg6Core08i2A6j31C25deliverAllPendingStatuses33_mnopqrstu23CBELL2in6reasonScTyyts5z59OGSgSo22NSManagedObjectContextC_SStKFyyYacfU1_10Foundation4y5VAC14kL10AELLVXEfU_Tf1cn_n(v10);

  specialized Sequence<>.min()(v11, v9);

  if ((*(v8 + 48))(v9, 1, v7) != 1)
  {
    v39 = *(*(v0 + 208) + 32);
    v39(*(v0 + 232), *(v0 + 192), *(v0 + 200));
    Date.timeIntervalSinceNow.getter();
    v41 = v40;
    if (v40 <= 0.0)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, log);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 232);
      v61 = *(v0 + 200);
      v62 = *(v0 + 208);
      if (v59)
      {
        v63 = swift_slowAlloc();
        *v63 = 134217984;
        *(v63 + 4) = v41;
        _os_log_impl(&dword_220099000, v57, v58, "failedDeliveryRetryTask FAILED. Invalid sleepSeconds {sleepSeconds: %f}", v63, 0xCu);
        MEMORY[0x223D77FF0](v63, -1, -1);
      }

      (*(v62 + 8))(v60, v61);
      goto LABEL_48;
    }

    v42 = *(v0 + 152);
    v93 = v39;
    v94 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
    v95 = v42;
    if (*(v42 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
    {

      MEMORY[0x223D76D40](v43, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

      v42 = *(v0 + 152);
    }

    v45 = *(v0 + 224);
    v44 = *(v0 + 232);
    v91 = v45;
    v46 = *(v0 + 208);
    v47 = *(v0 + 216);
    v48 = *(v0 + 200);
    v49 = *(v0 + 184);
    v92 = v49;
    v50 = type metadata accessor for TaskPriority();
    (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
    (*(v46 + 16))(v45, v44, v48);
    v51 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
    v52 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v53 = (v47 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v42;
    *(v54 + 24) = v51;
    v93(v54 + v52, v91, v48);
    *(v54 + v53) = v41;
    *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    swift_retain_n();
    v55 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v92, &async function pointer to partial apply for closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v54);
    (*(v46 + 8))(v44, v48);
    *(v95 + v94) = v55;
    goto LABEL_47;
  }

  v12 = *(v0 + 152);
  outlined destroy of UUID?(*(v0 + 192), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
  if (*(v12 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, log);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_220099000, v15, v16, "failedDeliveryRetryTask CANCELLED {reason: no failed deliveries}", v17, 2u);
      MEMORY[0x223D77FF0](v17, -1, -1);
    }

    if (*(v12 + v13))
    {

      MEMORY[0x223D76D40](v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }

    *(v12 + v13) = 0;
LABEL_47:
  }

LABEL_48:
  if (*(*(v0 + 152) + *(v0 + 248)))
  {

    swift_beginAccess();
    if (!*(*(v0 + 136) + 16))
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, log);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_220099000, v65, v66, "failedDeliveryRetryTask CANCELLED {reason: no pending IDS Identifiers}", v67, 2u);
        MEMORY[0x223D77FF0](v67, -1, -1);
      }

      v68 = *(v0 + 152);

      v69 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
      if (*(v68 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
      {

        MEMORY[0x223D76D40](v70, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(v68 + v69) = 0;

      SKALocalStatusServer.stopBrowserTask()();
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
LABEL_70:
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, log);
    swift_retain_n();

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v96 = *(v0 + 248);
      v74 = *(v0 + 152);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v97[0] = v76;
      *v75 = 136315650;
      swift_beginAccess();

      v77 = Set.description.getter();
      v79 = v78;

      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v97);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      v81 = Set.description.getter();
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v97);

      *(v75 + 14) = v83;
      *(v75 + 22) = 1024;
      v84 = *(v74 + v96);

      *(v75 + 24) = v84 == 0;

      _os_log_impl(&dword_220099000, v72, v73, "Starting new browser task: {pendingIDSIdentifiers: %s, originalPendingIDSIdentifiers: %s, browserTask.isNill: %{BOOL}d}", v75, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v76, -1, -1);
      MEMORY[0x223D77FF0](v75, -1, -1);
    }

    else
    {
    }

    specialized SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(*(v0 + 240));
  }

  v85 = *(v0 + 8);

  return v85();
}

uint64_t closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(char a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v2, 0);
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a1;
  *(v6 + 96) = a5;
  v8 = type metadata accessor for ContinuousClock();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  v9 = type metadata accessor for OSLogDateFormatter.Style();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  v10 = type metadata accessor for OSLogDateFormatter();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v6 + 192) = v11;
  *(v6 + 200) = *(v11 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), a6, 0);
}

void closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)()
{
  v32 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 29);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 12);
  v5 = type metadata accessor for Logger();
  *(v0 + 30) = __swift_project_value_buffer(v5, log);
  v6 = *(v3 + 16);
  *(v0 + 31) = v6;
  *(v0 + 32) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 29);
  v11 = *(v0 + 24);
  v12 = *(v0 + 25);
  if (v9)
  {
    v13 = *(v0 + 22);
    v14 = *(v0 + 23);
    v15 = *(v0 + 20);
    v27 = *(v0 + 21);
    v30 = v8;
    v17 = *(v0 + 18);
    v16 = *(v0 + 19);
    v18 = *(v0 + 13);
    v28 = *(v0 + 24);
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v19 = 136315394;
    (*(v16 + 104))(v15, *MEMORY[0x277D24308], v17);
    static FormatStyle<>.oslog(_:)();
    (*(v16 + 8))(v15, v17);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310], MEMORY[0x277D24300]);
    Date.formatted<A>(_:)();
    (*(v13 + 8))(v14, v27);
    v20 = *(v12 + 8);
    v20(v10, v28);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 10), *(v0 + 11), &v31);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v18;
    _os_log_impl(&dword_220099000, v7, v30, "failedDeliveryRetryTask SCHEDULED {nextAttemptDate: %s, sleepSeconds: %f}", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223D77FF0](v29, -1, -1);
    MEMORY[0x223D77FF0](v19, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  *(v0 + 33) = v20;
  v22 = v0[13] + 5.0;
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v23 = 1000000000000000000 * v22;
  v24 = (v22 * 0xDE0B6B3A7640000uLL) >> 64;
  v25 = (v22 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v26 = swift_task_alloc();
  *(v0 + 34) = v26;
  *v26 = v0;
  v26[1] = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);

  specialized Clock.sleep(for:tolerance:)(v23, v25 + v24, 0, 0, 1);
}

uint64_t closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  }

  else
  {
    v7 = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v86 = v0;
  (*(v0 + 248))(*(v0 + 224), *(v0 + 96), *(v0 + 192));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v71 = *(v0 + 224);
    v76 = *(v0 + 192);
    loga = *(v0 + 264);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 160);
    v69 = *(v0 + 168);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v84 = v10;
    *v9 = 136315394;
    v81 = *MEMORY[0x277D24308];
    (*(v6 + 104))(v5);
    static FormatStyle<>.oslog(_:)();
    (*(v6 + 8))(v5, v7);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310], MEMORY[0x277D24300]);
    Date.formatted<A>(_:)();
    (*(v4 + 8))(v3, v69);
    (loga)(v71, v76);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 64), *(v0 + 72), &v84);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v8;
    _os_log_impl(&dword_220099000, v1, v2, "failedDeliveryRetryTask FIRED {nextAttemptDate: %s, sleepSeconds: %f}", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D77FF0](v10, -1, -1);
    MEMORY[0x223D77FF0](v9, -1, -1);

    v12 = v81;
  }

  else
  {
    v13 = *(v0 + 264);
    v14 = *(v0 + 224);
    v15 = *(v0 + 192);

    v13(v14, v15);
    v12 = *MEMORY[0x277D24308];
  }

  *(v0 + 368) = v12;
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  log = *(v0 + 280);
  v22 = [*(*(v0 + 112) + 168) newBackgroundContext];
  *(v0 + 288) = v22;
  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v84 = 0xD000000000000018;
  v85 = 0x80000002201AC790;
  v23 = *(v21 + 104);
  *(v0 + 296) = v23;
  *(v0 + 304) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v82 = v12;
  v23(v18, v12, v20);
  static FormatStyle<>.oslog(_:)();
  v24 = *(v21 + 8);
  *(v0 + 312) = v24;
  *(v0 + 320) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v18, v20);
  *(v0 + 328) = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310], MEMORY[0x277D24300]);
  Date.formatted<A>(_:)();
  v25 = *(v17 + 8);
  *(v0 + 336) = v25;
  *(v0 + 344) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v16, v19);
  MEMORY[0x223D76B90](*(v0 + 32), *(v0 + 40));

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  v26 = log;
  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v22, v84, v85);
  v28 = v27;
  *(v0 + 352) = v27;

  if (log)
  {

    (*(v0 + 248))(*(v0 + 208), *(v0 + 96), *(v0 + 192));
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 264);
    v33 = *(v0 + 208);
    v34 = *(v0 + 192);
    if (v31)
    {
      logb = v29;
      v36 = *(v0 + 176);
      v35 = *(v0 + 184);
      v67 = *(v0 + 168);
      v72 = *(v0 + 264);
      v77 = v30;
      v37 = *(v0 + 152);
      v38 = *(v0 + 160);
      v39 = *(v0 + 144);
      v40 = *(v0 + 104);
      v68 = *(v0 + 192);
      v41 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v84 = v74;
      *v41 = 136315394;
      (*(v37 + 104))(v38, v82, v39);
      static FormatStyle<>.oslog(_:)();
      (*(v37 + 8))(v38, v39);
      Date.formatted<A>(_:)();
      (*(v36 + 8))(v35, v67);
      v72(v33, v68);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 16), *(v0 + 24), &v84);

      *(v41 + 4) = v42;
      *(v41 + 12) = 2048;
      *(v41 + 14) = v40;
      _os_log_impl(&dword_220099000, logb, v77, "failedDeliveryRetryTask CANCELLED {nextAttemptDate: %s, sleepSeconds: %f}", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x223D77FF0](v74, -1, -1);
      MEMORY[0x223D77FF0](v41, -1, -1);
    }

    else
    {

      v32(v33, v34);
    }

    goto LABEL_12;
  }

  if (!v28)
  {
    v45 = *(v0 + 248);
    v46 = *(v0 + 216);
    v47 = *(v0 + 192);
    v48 = *(v0 + 96);
    *(*(v0 + 112) + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask) = 0;

    v45(v46, v48, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v75 = *(v0 + 336);
      v66 = *(v0 + 312);
      v65 = *(v0 + 296);
      v83 = *(v0 + 288);
      v64 = *(v0 + 368);
      v51 = *(v0 + 216);
      v70 = *(v0 + 192);
      v73 = *(v0 + 264);
      v52 = *(v0 + 184);
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 144);
      v56 = *(v0 + 104);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v84 = v58;
      *v57 = 136315394;
      v65(v54, v64, v55);
      static FormatStyle<>.oslog(_:)();
      v66(v54, v55);
      Date.formatted<A>(_:)();
      v75(v52, v53);
      v73(v51, v70);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 48), *(v0 + 56), &v84);

      *(v57 + 4) = v59;
      *(v57 + 12) = 2048;
      *(v57 + 14) = v56;
      _os_log_impl(&dword_220099000, v49, v50, "failedDeliveryRetryTask END {nextAttemptDate: %s, sleepSeconds: %f}", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x223D77FF0](v58, -1, -1);
      MEMORY[0x223D77FF0](v57, -1, -1);
    }

    else
    {
      v60 = *(v0 + 264);
      v61 = *(v0 + 216);
      v62 = *(v0 + 192);

      v60(v61, v62);
    }

LABEL_12:

    v44 = *(v0 + 8);

    return v44();
  }

  v43 = swift_task_alloc();
  *(v0 + 360) = v43;
  *v43 = v0;
  v43[1] = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);

  return MEMORY[0x282200460]();
}

{
  v24 = v0;
  v1 = *(v0 + 280);
  (*(v0 + 248))(*(v0 + 208), *(v0 + 96), *(v0 + 192));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v19 = *(v0 + 208);
    v4 = *(v0 + 184);
    v20 = *(v0 + 192);
    v21 = *(v0 + 264);
    v5 = *(v0 + 176);
    v18 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v22 = v1;
    v23 = swift_slowAlloc();
    v11 = v23;
    *v10 = 136315394;
    (*(v6 + 104))(v7, *MEMORY[0x277D24308], v8);
    static FormatStyle<>.oslog(_:)();
    (*(v6 + 8))(v7, v8);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310], MEMORY[0x277D24300]);
    Date.formatted<A>(_:)();
    (*(v5 + 8))(v4, v18);
    v21(v19, v20);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 16), *(v0 + 24), &v23);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v9;
    _os_log_impl(&dword_220099000, v2, v3, "failedDeliveryRetryTask CANCELLED {nextAttemptDate: %s, sleepSeconds: %f}", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D77FF0](v11, -1, -1);
    MEMORY[0x223D77FF0](v10, -1, -1);
  }

  else
  {
    v13 = *(v0 + 264);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v1, 0);
}

{
  v29 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 96);
  *(*(v0 + 112) + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask) = 0;

  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v26 = *(v0 + 336);
    v23 = *(v0 + 312);
    v22 = *(v0 + 296);
    v27 = *(v0 + 288);
    v21 = *(v0 + 368);
    v7 = *(v0 + 216);
    v24 = *(v0 + 192);
    v25 = *(v0 + 264);
    v8 = *(v0 + 184);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 144);
    v12 = *(v0 + 104);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v22(v10, v21, v11);
    static FormatStyle<>.oslog(_:)();
    v23(v10, v11);
    Date.formatted<A>(_:)();
    v26(v8, v9);
    v25(v7, v24);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 48), *(v0 + 56), &v28);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v12;
    _os_log_impl(&dword_220099000, v5, v6, "failedDeliveryRetryTask END {nextAttemptDate: %s, sleepSeconds: %f}", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D77FF0](v14, -1, -1);
    MEMORY[0x223D77FF0](v13, -1, -1);
  }

  else
  {
    v16 = *(v0 + 264);
    v17 = *(v0 + 216);
    v18 = *(v0 + 192);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t SKADatabasePublishedLocalStatus.key.getter@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = type metadata accessor for LSKDomain();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = [v1 keyDomain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LSKDomain.init(rawValue:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UUID?(v4, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
    v13 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v15 = v14;
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v24 = 0xD00000000000001FLL;
    v25 = 0x80000002201AC6D0;
    v16 = [v1 keyDomain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    MEMORY[0x223D76B90](v17, v19);

    v20 = v25;
    *v15 = v24;
    v15[1] = v20;
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D24378], v13);
    return swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v22 = [v1 keyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    LSKKey.init(domain:name:)();
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t closure #1 in SKALocalStatusServer.reconcileObservations(reason:)@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v81 = a2;
  v89 = a5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v88 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v75 - v9;
  v11 = type metadata accessor for Date();
  v87 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v84 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v75 - v16;
  v18 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = [v18 keyDomain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LSKDomain.init(rawValue:)();
  v20 = type metadata accessor for LSKDomain();
  v21 = (*(*(v20 - 8) + 48))(v17, 1, v20);
  outlined destroy of UUID?(v17, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  if (v21 == 1)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, log);
    v23 = v18;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v90[0] = v27;
    *v26 = 136315138;
    v28 = [v23 keyDomain];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v90);

    *(v26 + 4) = v32;
    v33 = "Loaded unknown domain from database {keyDomain: %s}";
LABEL_16:
    _os_log_impl(&dword_220099000, v24, v25, v33, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D77FF0](v27, -1, -1);
    MEMORY[0x223D77FF0](v26, -1, -1);
LABEL_17:

    v57 = 1;
    v58 = v89;
    goto LABEL_30;
  }

  v34 = [v18 payload];
  if (!v34)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, log);
    v51 = v18;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v90[0] = v27;
    *v26 = 136315138;
    v52 = [v51 identifier];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v90);

    *(v26 + 4) = v56;
    v33 = "Skipping status with nil payload {status.identifier: %s}";
    goto LABEL_16;
  }

  v35 = v34;
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v37;
  v80 = v36;

  v38 = [v18 idsIdentifier];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = *v81;
  if (*(*v81 + 16))
  {
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v41);
    v45 = v44;

    v46 = v83;
    if (v45)
    {
      v47 = (*(v42 + 56) + 32 * v43);
      v48 = v47[1];
      v78 = *v47;
      v49 = v47[3];
      v81 = v47[2];
      v76 = v48;

      v77 = v49;
    }

    else
    {
      v81 = 0;
      v77 = 0xE000000000000000;
      v78 = 0;
      v76 = 0xE000000000000000;
    }
  }

  else
  {

    v81 = 0;
    v77 = 0xE000000000000000;
    v78 = 0;
    v76 = 0xE000000000000000;
    v46 = v83;
  }

  v59 = [v18 idsIdentifier];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = OBJC_IVAR___SKALocalStatusServer_observationTimestamps;
  swift_beginAccess();
  v64 = *(a3 + v63);
  if (!*(v64 + 16))
  {

    goto LABEL_24;
  }

  v65 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
  v67 = v66;

  if ((v67 & 1) == 0)
  {
LABEL_24:
    v69 = 1;
    v68 = v87;
    goto LABEL_25;
  }

  v68 = v87;
  (*(v87 + 16))(v10, *(v64 + 56) + *(v87 + 72) * v65, v11);
  v69 = 0;
LABEL_25:
  (*(v68 + 56))(v10, v69, 1, v11);
  swift_endAccess();
  v70 = *(v68 + 48);
  if (v70(v10, 1, v11) == 1)
  {
    v71 = [v18 modificationDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (v70(v10, 1, v11) != 1)
    {
      outlined destroy of UUID?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v68 + 32))(v46, v10, v11);
  }

  (*(v82 + 16))(v88, v86, v85);
  v72 = [v18 idsIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v68 + 16))(v84, v46, v11);
  v90[0] = v80;
  v90[1] = v79;
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Data and conformance Data();
  v58 = v89;
  LSKLocalStatusObservation.init(key:deviceIDSIdentifier:deviceName:deviceModel:timestamp:value:)();
  (*(v68 + 8))(v46, v11);
  v57 = 0;
LABEL_30:
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  return (*(*(v73 - 8) + 56))(v58, v57, 1, v73);
}

uint64_t SKALocalStatusServer.recipientDevicesChanged()()
{
  v1 = v0;
  v2 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000019, 0x80000002201AC950);
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v36 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v35 = v0;
  v6 = 0;
  v7 = v36;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D77050](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 uniqueID];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0;
    }

    v16 = *(v36 + 16);
    v15 = *(v36 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    ++v6;
    *(v36 + 16) = v16 + 1;
    v17 = v36 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  while (v4 != v6);

  v1 = v35;
LABEL_17:
  v18 = 0;
  v19 = *(v7 + 16);
  v20 = MEMORY[0x277D84F90];
LABEL_18:
  v21 = 16 * v18 + 40;
  while (v19 != v18)
  {
    if (v18 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v18;
    v22 = v21 + 16;
    v23 = *(v7 + v21);
    v21 += 16;
    if (v23)
    {
      v24 = *(v7 + v22 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      goto LABEL_18;
    }
  }

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

  v29 = OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs;

  v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v30);

  specialized _setUpCast<A, B>(_:)(v28);
  v33 = v32;

  v34 = _sSh2eeoiySbShyxG_ABtFZSSSg_Tt1g5(v33, v31);

  if ((v34 & 1) == 0)
  {
    *(v1 + v29) = v7;
  }

  return (v34 & 1) == 0;
}

void specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v22 = 0;
    if (!v7)
    {
      goto LABEL_30;
    }

    do
    {
LABEL_34:
      v7 &= v7 - 1;

      swift_dynamicCast();
      specialized _NativeSet._unsafeUpdate(with:)(v24, v25);
    }

    while (v7);
LABEL_30:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v23);
      ++v22;
      if (v7)
      {
        v22 = v23;
        goto LABEL_34;
      }
    }
  }

  else
  {
    v9 = v2 + 56;

    v10 = 0;
    while (v7)
    {
LABEL_16:

      swift_dynamicCast();
      Hasher.init(_seed:)();
      if (v27)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v14 = Hasher._finalize()();
      v15 = -1 << *(v2 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v9 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v9 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v9 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v2 + 48) + 16 * v11);
      *v12 = v26;
      v12[1] = v27;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v10;
      if (v7)
      {
        v10 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSSSg_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v25 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v16 = *v14;
    v15 = v14[1];
    Hasher.init(_seed:)();
    if (v15)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v26 = v11;
    v20 = ~v18;
    v21 = *(a2 + 48);
    while (1)
    {
      v22 = (v21 + 16 * v19);
      v23 = v22[1];
      if (v23)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_28;
      }

LABEL_19:
      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (!v15)
    {
      goto LABEL_19;
    }

    v24 = *v22 == v16 && v23 == v15;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    result = v25;
    v7 = v26;
  }

  while (v26);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v4 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](closure #1 in SKALocalStatusServer.handleIDSDevicesChanged(), a4, 0);
}

uint64_t closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()()
{
  v16 = v0;
  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(*(v0 + 32), 0x20746E756F636341, 0xEF6465676E616863);
  *(v0 + 40) = v1;
  if (v1)
  {
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *v14 = v0;
    v14[1] = closure #1 in SKALocalStatusServer.handleIDSDevicesChanged();

    return MEMORY[0x282200460]();
  }

  else
  {
    v2 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000019, 0x80000002201AC930);
    if (v2 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, log);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v0 + 16) = v3;
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_220099000, v5, v6, "Could not deliver pending statuses for account change. idsDevices.count: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D77FF0](v8, -1, -1);
      MEMORY[0x223D77FF0](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](closure #1 in SKALocalStatusServer.handleIDSDevicesChanged(), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in SKALocalStatusServer.send(_:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23[0] = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = *(a2 + 144);
  (*(v14 + 16))(v16, v23[0], v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v14 + 32))(v18 + v17, v16, v13);
  aBlock[4] = partial apply for closure #1 in closure #1 in SKALocalStatusServer.send(_:to:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_91;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  v21 = a4;
  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v12, v9, v19);
  _Block_release(v19);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);
}

void closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(void *a1, void *a2, uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = [a1 keyName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = MEMORY[0x277D837D0];
  v38 = MEMORY[0x277D837D0];
  *&aBlock = v10;
  *(&aBlock + 1) = v12;
  outlined init with take of Any(&aBlock, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0x656D614E79656BLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v15 = v41;
  v16 = [a1 keyDomain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v38 = v13;
  *&aBlock = v17;
  *(&aBlock + 1) = v19;
  outlined init with take of Any(&aBlock, v42);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0x69616D6F4479656BLL, 0xE90000000000006ELL, v20);
  v21 = v41;
  v22 = [a1 payload];
  if (v22)
  {
    v23 = v22;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v38 = MEMORY[0x277CC9318];
    *&aBlock = v24;
    *(&aBlock + 1) = v26;
    outlined init with take of Any(&aBlock, v42);
    outlined copy of Data._Representation(v24, v26);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v21;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0x64616F6C796170, 0xE700000000000000, v27);
    outlined consume of Data._Representation(v24, v26);
    v21 = v41;
  }

  v28 = MEMORY[0x223D76B00](0xD000000000000015, 0x80000002201AC230);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v7, v34, v4);
  v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v31 = swift_allocObject();
  (*(v5 + 32))(v31 + v30, v7, v4);
  v39 = partial apply for closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:);
  v40 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v38 = &block_descriptor_97;
  v32 = _Block_copy(&aBlock);

  [v35 sendRequestID:v28 request:isa options:0 responseHandler:v32];
  _Block_release(v32);
}

uint64_t closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  closure #1 in closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(a3, a1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

id closure #1 in closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    swift_willThrow();
    v5 = a1;
    goto LABEL_12;
  }

  if (!a2)
  {
    v10 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    v5 = swift_allocError();
    v12 = v11;
    v13 = 0xE800000000000000;
    goto LABEL_11;
  }

  *&v18[0] = 0x73736563637573;
  *(&v18[0] + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v8 & 1) == 0))
  {
    outlined destroy of AnyHashable(v19);
    v10 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    v5 = swift_allocError();
    v12 = v11;
    v13 = 0xEF73736563637553;
LABEL_11:
    *v11 = 0x65736E6F70736572;
    v11[1] = v13;
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D24380], v10);
    swift_willThrow();
    goto LABEL_12;
  }

  outlined init with copy of Any(*(a2 + 56) + 32 * v7, v18);
  outlined destroy of AnyHashable(v19);
  outlined init with take of Any(v18, v20);
  outlined init with copy of Any(v20, v19);
  if (swift_dynamicCast())
  {
    if (v18[0])
    {
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }

    v14 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    v5 = swift_allocError();
    v16 = v17;
    *v17 = 0xD000000000000022;
    v17[1] = 0x80000002201AC760;
  }

  else
  {
    v14 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    v5 = swift_allocError();
    v16 = v15;
    *v15 = 0x796E612074736143;
    v15[1] = 0xEF73736563637553;
  }

  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D24378], v14);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0(v20);
LABEL_12:
  *a3 = v5;
  return a1;
}

uint64_t closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a5, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *(v18 + 6) = v22;
  *(v18 + 7) = a4;
  (*(v10 + 32))(&v18[v17], v12, v9);
  v19 = a1;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), v18);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), 0, 0);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34[0] = v8;
    *v7 = 136315138;
    v9 = [v6 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v34);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_220099000, v4, v5, "Receive local status CONTINUE. Write status to database. {status: %s}}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D77FF0](v8, -1, -1);
    MEMORY[0x223D77FF0](v7, -1, -1);
  }

  v14 = v0[6];
  v15 = *(v0[7] + 176);
  v16 = [v15 newBackgroundContext];
  v0[14] = v16;
  v0[5] = 0;
  v17 = [v15 createOrUpdateOrDeleteSubscribedLocalStatus:v14 databaseContext:v16 error:v0 + 5];
  v18 = v0[5];
  if (v17)
  {
    v19 = v0[12];
    v20 = v0[7];
    v21 = v18;
    static Date.now.getter();
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);

    return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), v20, 0);
  }

  else
  {
    v23 = v18;
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v24;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_220099000, v26, v27, "Receive local status FAILED. Database error {error: %@}", v28, 0xCu);
      outlined destroy of UUID?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v29, -1, -1);
      MEMORY[0x223D77FF0](v28, -1, -1);
    }

    swift_willThrow();

    v32 = v0[1];

    return v32();
  }
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  outlined init with copy of (String, Sendable)(v1, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v2, v4, v3);
  swift_endAccess();
  outlined destroy of UUID?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), 0, 0);
}

{
  SKALocalStatusServer.reconcileObservations(reason:)(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Receive local status SUCCESS", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v1 + 56);

  _StringGuts.grow(_:)(18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v6);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  *(v1 + 120) = 0x6465766965636572;
  *(v1 + 128) = 0xEF5B737574617453;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), v5, 0);
}

uint64_t closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand(), a4, 0);
}

uint64_t closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand();

  return specialized Clock.sleep(for:tolerance:)(0xA055690D9DB80000, 1, 0, 0, 1);
}

uint64_t closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand();
  }

  else
  {
    v7 = closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand();
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Releasing transaction", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *(v5 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction) = 0;
  swift_unknownObjectRelease();

  v6 = *(v0 + 8);

  return v6();
}

{

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Releasing transaction", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *(v5 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction) = 0;
  swift_unknownObjectRelease();

  v6 = *(v0 + 8);

  return v6();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24360]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24360]);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24360]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Data and conformance Data();
  if ((static LSKKey.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void SKALocalStatusServer.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SKALocalStatusServer.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id *SKALocalStatusServer.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined destroy of UUID?(v0 + OBJC_IVAR___SKALocalStatusServer_idsDeviceProviderToken, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  swift_unknownObjectRelease();

  outlined consume of SKALocalStatusServer.BrowseTask?(*(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask), *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask + 8), *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask + 16), *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask + 24));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SKALocalStatusServer.__deallocating_deinit()
{
  SKALocalStatusServer.deinit();

  return MEMORY[0x282200960](v0);
}

id SKALocalStatusServer.DatabaseDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PublishStatusInvocation.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for LSKStatusOptions();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](PublishStatusInvocation.invoke(with:context:client:), 0, 0);
}

uint64_t PublishStatusInvocation.invoke(with:context:client:)()
{
  v1 = PublishStatusInvocation.Parameters.payload.getter();
  v3 = v2;
  v0[19] = v1;
  v0[20] = v2;
  PublishStatusInvocation.Parameters.key.getter();
  PublishStatusInvocation.Parameters.options.getter();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = PublishStatusInvocation.invoke(with:context:client:);
  v5 = v0[17];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[7];

  return SKALocalStatusServer.publish(_:for:options:)(v5, v6, v1, v3, v7, v8);
}

{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  *(*v1 + 176) = v0;

  outlined consume of Data?(v3, v2);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = PublishStatusInvocation.invoke(with:context:client:);
  }

  else
  {
    v10 = PublishStatusInvocation.invoke(with:context:client:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  (*(v3 + 32))(v1);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v6, v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of (String, Sendable)(v4, v7, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  PublishStatusInvocation.Response.init(initialStatus:updates:)();
  outlined destroy of UUID?(v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 8))(v1, v5);

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance PublishStatusInvocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type PublishStatusInvocation and conformance PublishStatusInvocation, MEMORY[0x277D24278], &protocol conformance descriptor for PublishStatusInvocation);
  *v15 = v14;
  v15[1] = protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance PublishStatusInvocation;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance PublishStatusInvocation(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance PublishStatusInvocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return PublishStatusInvocation.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t LocalStatusInvocation.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](LocalStatusInvocation.invoke(with:context:client:), a3, 0);
}

uint64_t LocalStatusInvocation.invoke(with:context:client:)()
{
  SKALocalStatusServer.status(for:)(*(v0 + 88), *(v0 + 48), *(v0 + 24));
  *(v0 + 104) = 0;

  return MEMORY[0x2822009F8](LocalStatusInvocation.invoke(with:context:client:), 0, 0);
}

{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  (*(v3 + 32))(v1);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v7, v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of (String, Sendable)(v4, v6, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  LocalStatusInvocation.Response.init(initialStatus:updates:)();
  outlined destroy of UUID?(v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 8))(v1, v5);

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance LocalStatusInvocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LocalStatusInvocation and conformance LocalStatusInvocation, MEMORY[0x277D242E0], &protocol conformance descriptor for LocalStatusInvocation);
  *v15 = v14;
  v15[1] = protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance LocalStatusInvocation;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance LocalStatusInvocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return LocalStatusInvocation.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance SubscribeStatusInvocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v15 = swift_task_alloc();
  *(v14 + 16) = v15;
  v16 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SubscribeStatusInvocation and conformance SubscribeStatusInvocation, MEMORY[0x277D242D0], &protocol conformance descriptor for SubscribeStatusInvocation);
  *v15 = v14;
  v15[1] = protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance LocalStatusInvocation;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v16);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance SubscribeStatusInvocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *a3;
  v3[4] = *a3;
  return MEMORY[0x2822009F8](protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance SubscribeStatusInvocation, v4, 0);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance SubscribeStatusInvocation()
{
  SKALocalStatusServer.subscribe(to:)(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit08LSKLocalC11ObservationVy10Foundation4DataVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    lazy protocol witness table accessor for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x223D76530]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x223D76530]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF7Sharing15SFXPCInvocationCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing15SFXPCInvocationCmMd, &_s7Sharing15SFXPCInvocationCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCy7Sharing15SFXPCInvocationCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCy7Sharing15SFXPCInvocationCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
    outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
    v20 = *(v13 - 8);
    outlined init with take of SKALocalStatusServer.FailedDelivery(v12 + *(v20 + 72) * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Date() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - v7;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24360]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v30 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v4 = *(v30 - 8);
  result = MEMORY[0x28223BE20](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v28 = a2 + 64;
    v29 = (v12 + 1) & v11;
    v13 = *(v4 + 72);
    v27 = v11;
    do
    {
      v14 = v13 * v10;
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(a2 + 48) + v13 * v10, v7, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      Hasher.init(_seed:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24360]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();
      result = outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v7, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      v16 = v15 & v11;
      if (a1 >= v29)
      {
        if (v16 < v29)
        {
          v8 = v28;
          goto LABEL_4;
        }

        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else if (v16 >= v29 || a1 >= v16)
      {
LABEL_11:
        if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v17 = *(a2 + 56);
        v18 = *(*(type metadata accessor for SKALocalStatusServer.FailedDelivery(0) - 8) + 72);
        v19 = v18 * a1;
        result = v17 + v18 * a1;
        v20 = v18 * v10;
        v21 = v17 + v18 * v10 + v18;
        v22 = v19 < v20 || result >= v21;
        v8 = v28;
        if (v22)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v10;
          v11 = v27;
        }

        else
        {
          a1 = v10;
          v11 = v27;
          if (v19 != v20)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v10;
          }
        }

        goto LABEL_4;
      }

      v8 = v28;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo15SKPresentDeviceC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Date() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo15SKPresentDeviceC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for IDSDeviceType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()();
      goto LABEL_23;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == a1 && v18 == a2;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_22:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = a1;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 16 * v9);
      v16 = v15[1];
      if (v16)
      {
        if (a2)
        {
          v17 = *v15 == a1 && v16 == a2;
          if (v17 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_19:
            *v15 = a1;
            v15[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_19;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
    }

    while ((v11 & (1 << v9)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v11 | v12;
    v18 = (*(v5 + 48) + 16 * v9);
    *v18 = a1;
    v18[1] = a2;
    v19 = *(v5 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v5 + 16) = v21;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D77050](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x223D76530]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #7 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #7 in SKALocalStatusServer.init(idsDeviceProvider:)();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D76DF0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  result = MEMORY[0x223D76DF0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized Set._Variant.insert(_:)(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t specialized SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1, void *a2)
{
  v161 = a2;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Date();
  v138 = *(v139 - 8);
  v5 = MEMORY[0x28223BE20](v139);
  v149 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v148 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v141 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v137 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v10;
  MEMORY[0x28223BE20](v9);
  v151 = &v124 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v150 = &v124 - v13;
  v14 = type metadata accessor for LSKDomain();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v124 - v18;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, log);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v152 = v21;
    v25 = v14;
    v26 = v24;
    *v24 = 0;
    _os_log_impl(&dword_220099000, v22, v23, "Receive local status START", v24, 2u);
    v27 = v26;
    v14 = v25;
    v21 = v152;
    MEMORY[0x223D77FF0](v27, -1, -1);
  }

  v28 = v161;
  if (!v161)
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_220099000, v53, v54, "Receive local status FAILED. Missing options", v55, 2u);
      MEMORY[0x223D77FF0](v55, -1, -1);
    }

    v50 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v52 = v56;
    *v56 = 0x736E6F6974706FLL;
    v56[1] = 0xE700000000000000;
    goto LABEL_24;
  }

  v159[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v159[1] = v29;
  AnyHashable.init<A>(_:)();
  if (!v28[2] || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v31 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_220099000, v47, v48, "Receive local status FAILED. Missing idsID", v49, 2u);
      MEMORY[0x223D77FF0](v49, -1, -1);
    }

    v50 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v52 = v51;
    *v51 = 0xD000000000000022;
    v51[1] = 0x80000002201AC880;
LABEL_24:
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D24380], v50);
    return swift_willThrow();
  }

  outlined init with copy of Any(v28[7] + 32 * v30, &v160);
  outlined destroy of AnyHashable(aBlock);
  v158[0] = 0x656D614E79656BLL;
  v158[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v33 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_220099000, v58, v59, "Receive local status FAILED. Missing keyName", v60, 2u);
      MEMORY[0x223D77FF0](v60, -1, -1);
    }

    v61 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    *v62 = 0xD000000000000010;
    v62[1] = 0x80000002201AC8B0;
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D24380], v61);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(&v160);
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v32, v159);
  outlined destroy of AnyHashable(aBlock);
  v156 = 0x69616D6F4479656BLL;
  v157 = 0xE90000000000006ELL;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v34 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v35 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_220099000, v63, v64, "Receive local status FAILED. Missing keyDomain", v65, 2u);
      MEMORY[0x223D77FF0](v65, -1, -1);
    }

    v66 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    *v67 = 0xD000000000000012;
    v67[1] = 0x80000002201AC8D0;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D24380], v66);
    swift_willThrow();
    goto LABEL_41;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v34, v158);
  outlined destroy of AnyHashable(aBlock);
  outlined init with copy of Any(&v160, aBlock);
  if (!swift_dynamicCast())
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_220099000, v68, v69, "Receive local status FAILEd. Could not cast anyIDSIdentifier", v70, 2u);
      MEMORY[0x223D77FF0](v70, -1, -1);
    }

    v71 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v73 = v72;
    v74 = 0x80000002201AC8F0;
    v75 = 0xD000000000000015;
    goto LABEL_34;
  }

  v36 = v157;
  v161 = v156;
  outlined init with copy of Any(v159, aBlock);
  if (!swift_dynamicCast())
  {

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_220099000, v76, v77, "Receive local status FAILED. Could not cast anyKeyName", v78, 2u);
      MEMORY[0x223D77FF0](v78, -1, -1);
    }

    v71 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v73 = v79;
    v80 = 0x796E612074736163;
    v81 = 0xEF656D614E79654BLL;
    goto LABEL_38;
  }

  v152 = v21;
  v37 = v157;
  v134 = v156;
  outlined init with copy of Any(v158, aBlock);
  if (!swift_dynamicCast())
  {

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_220099000, v82, v83, "Receive local status FAILED. Could not cast anyKeyDomain", v84, 2u);
      MEMORY[0x223D77FF0](v84, -1, -1);
    }

    v71 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v73 = v72;
    v74 = 0x80000002201AC910;
    v75 = 0xD000000000000011;
LABEL_34:
    *v72 = v75;
    v72[1] = v74;
LABEL_39:
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D24378], v71);
    swift_willThrow();
LABEL_40:
    __swift_destroy_boxed_opaque_existential_0(v158);
LABEL_41:
    __swift_destroy_boxed_opaque_existential_0(v159);
    return __swift_destroy_boxed_opaque_existential_0(&v160);
  }

  v132 = v37;
  v38 = v156;
  v39 = v157;

  v40 = v150;
  v131 = v38;
  v133 = v39;
  LSKDomain.init(rawValue:)();
  if ((*(v15 + 48))(v40, 1, v14) == 1)
  {

    outlined destroy of UUID?(v40, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
    v41 = v133;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315138;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v41, aBlock);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_220099000, v42, v43, "Receive local status FAILED. Unknown domain %s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223D77FF0](v45, -1, -1);
      MEMORY[0x223D77FF0](v44, -1, -1);
    }

    else
    {
    }

    v71 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v73 = v79;
    v80 = 0x206E776F6E6B6E75;
    v81 = 0xEE006E69616D6F64;
LABEL_38:
    *v79 = v80;
    v79[1] = v81;
    goto LABEL_39;
  }

  v130 = v36;
  (*(v15 + 32))(v19, v40, v14);
  v154 = 0x64616F6C796170;
  v155 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v85 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v86 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v85, &v156);
    outlined destroy of AnyHashable(aBlock);
    outlined init with copy of Any(&v156, aBlock);
    if (!swift_dynamicCast())
    {

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = v15;
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_220099000, v117, v118, "Receive local status FAILED. Could not cast anyPayload", v120, 2u);
        v121 = v120;
        v15 = v119;
        MEMORY[0x223D77FF0](v121, -1, -1);
      }

      v122 = type metadata accessor for LSKError();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
      swift_allocError();
      *v123 = 0x796E612074736163;
      v123[1] = 0xEF64616F6C796150;
      (*(*(v122 - 8) + 104))(v123, *MEMORY[0x277D24378], v122);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(&v156);
      (*(v15 + 8))(v19, v14);
      goto LABEL_40;
    }

    __swift_destroy_boxed_opaque_existential_0(&v156);
    v87 = v155;
    v152 = v154;
  }

  else
  {
    outlined destroy of AnyHashable(aBlock);
    v152 = 0;
    v87 = 0xF000000000000000;
  }

  v88 = *(v15 + 16);
  v128 = v19;
  v150 = v14;
  v88(v135, v19, v14);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Data and conformance Data();
  v89 = v132;

  LSKKey.init(domain:name:)();
  v90 = LSKKey.id.getter();
  v92 = v91;
  static Date.now.getter();
  static Date.now.getter();
  outlined copy of Data?(v152, v87);
  v135 = MEMORY[0x223D76B00](v90, v92);

  isa = Date._bridgeToObjectiveC()().super.isa;
  v125 = Date._bridgeToObjectiveC()().super.isa;
  v93 = MEMORY[0x223D76B00](v134, v89);

  v94 = MEMORY[0x223D76B00](v131, v133);
  v95 = v152;
  v96 = v94;

  v129 = v15;
  v127 = v87;
  if (v87 >> 60 == 15)
  {
    v97 = 0;
  }

  else
  {
    v97 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v95, v87);
  }

  v98 = objc_allocWithZone(SKADatabaseSubscribedLocalStatus);
  v99 = MEMORY[0x223D76B00](v161, v130);
  v100 = v98;
  v101 = v135;
  v102 = isa;
  v103 = v125;
  v134 = [v100 initWithIdentifier:v135 creationDate:isa modificationDate:v125 keyName:v93 keyDomain:v96 payload:v97 idsIdentifier:v99];

  v104 = *(v138 + 8);
  v105 = v139;
  v104(v149, v139);
  v104(v148, v105);
  v106 = v140;
  v149 = *(v140 + 144);
  v107 = v141;
  v108 = v137;
  (*(v141 + 16))(v137, v151, v8);
  v109 = (*(v107 + 80) + 48) & ~*(v107 + 80);
  v110 = swift_allocObject();
  v111 = v134;
  *(v110 + 2) = v134;
  *(v110 + 3) = v106;
  v112 = v130;
  *(v110 + 4) = v161;
  *(v110 + 5) = v112;
  (*(v107 + 32))(&v110[v109], v108, v8);
  aBlock[4] = partial apply for closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:);
  aBlock[5] = v110;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_157;
  v113 = _Block_copy(aBlock);
  v161 = v111;

  v114 = v142;
  static DispatchQoS.unspecified.getter();
  v156 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v148 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v115 = v144;
  v116 = v147;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v114, v115, v113);
  _Block_release(v113);

  outlined consume of Data?(v152, v127);
  (*(v146 + 8))(v115, v116);
  (*(v143 + 8))(v114, v145);
  (*(v107 + 8))(v151, v148);
  (*(v129 + 8))(v128, v150);
  __swift_destroy_boxed_opaque_existential_0(v158);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(&v160);
}