uint64_t implicit closure #4 in AADevice.updateWithDevice(_:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t AADevice.updatePropertiesFor(updatedDevice:)(void *a1)
{
  v239 = a1;
  v224 = 0;
  v286 = 0;
  v285 = 0;
  v223 = 0;
  v241 = 0;
  v225 = type metadata accessor for Logger();
  v226 = *(v225 - 8);
  v227 = v226;
  v228 = *(v226 + 64);
  v2 = MEMORY[0x1EEE9AC00](0);
  v230 = (v228 + 15) & 0xFFFFFFFFFFFFFFF0;
  v229 = &v89 - v230;
  MEMORY[0x1EEE9AC00](v2);
  v231 = &v89 - v230;
  v232 = type metadata accessor for Date();
  v233 = *(v232 - 8);
  v234 = v233;
  MEMORY[0x1EEE9AC00](v232 - 8);
  v235 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v239);
  v237 = &v89 - v236;
  v286 = v4;
  v285 = v1;
  v284 = 2;
  AADevice._deviceRemoteSendState.setter(&v284);
  (*(*v238 + 464))([v239 acceptReplyPlayPauseConfig]);
  (*(*v238 + 744))([v239 autoANCCapability]);
  (*(*v238 + 496))([v239 autoANCStrength]);
  (*(*v238 + 528))([v239 bobbleConfig]);
  (*(*v238 + 560))([v239 declineDismissSkipConfig]);
  (*(*v238 + 592))([v239 headGestureToggle]);
  (*(*v238 + 624))([v239 headGestureProxCardShown]);
  (*(*v238 + 656))([v239 hearingAidEnrolled]);
  (*(*v238 + 688))([v239 hearingAidGainSwipeEnabled]);
  (*(*v238 + 776))([v239 bobbleCapability]);
  (*(*v238 + 808))([v239 caseSoundCapability]);
  (*(*v238 + 840))([v239 earTipFitTestCapability]);
  (*(*v238 + 872))([v239 frequencyBand]);
  (*(*v238 + 904))([v239 hearingAidCapability]);
  (*(*v238 + 936))([v239 hearingAidConfig]);
  (*(*v238 + 968))([v239 hearingTestCapability]);
  (*(*v238 + 1000))([v239 hideOffListeningModeCapability]);
  v240 = [v239 audiogramEnrolledTimestamp];
  if (v240)
  {
    v222 = v240;
    v221 = v240;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v234 + 32))(v237, v235, v232);
    (*(v234 + 56))(v237, 0, 1, v232);
  }

  else
  {
    (*(v234 + 56))(v237, 1, 1, v232);
  }

  (*(*v238 + 1032))(v237);
  v194 = 0x1FBD85000uLL;
  (*(*v238 + 1112))([v239 0x1FBD85E83]);
  v5 = v238;
  v283 = [v239 heartRateMonitorCapability];
  v6 = *(*v5 + 1072);
  v192 = &v282;
  v7 = v6();
  v8 = v238;
  v193 = v7;
  v190 = v9;
  v210 = 0;
  v202 = type metadata accessor for AAFeatureCapability(0);
  v189 = v202;
  v203 = lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  v191 = v203;
  ==? infix<A>(_:_:)(v190, &v283, v202, v203);
  v218 = 0;
  v193(v192);
  (*(*v8 + 1112))([v239 (v194 + 3715)]);
  (*(*v238 + 1144))([v239 hideEarDetectionCapability]);
  v10 = v238;
  v195 = [v239 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(*v10 + 1176))(v11);
  v12 = v238;

  (*(*v12 + 1200))([v239 streamStateAoS]);
  v13 = AudioAccessoryDevice.btAddress.getter();
  (*(*v238 + 1280))(v13);
  (*(*v238 + 1304))([v239 sleepDetectionCapability]);
  (*(*v238 + 1336))([v239 sleepDetectionEnabled]);
  v281 = [v239 cameraControlCapability];
  v196 = v280;
  v14 = AADevice.cameraControlCapability.modify(v280);
  v15 = v238;
  v197 = v14;
  ==? infix<A>(_:_:)(v16, &v281, v202, v203);
  v197(v196, v218);
  v279 = [v239 remoteCameraControlConfig];
  v17 = *(*v15 + 1424);
  v200 = &v278;
  v201 = v17();
  v199 = v18;
  v198 = type metadata accessor for AARemoteCameraControlConfig(v210);
  v19 = lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig();
  ==? infix<A>(_:_:)(v199, &v279, v198, v19);
  v201(v200, v218);
  v277 = [v239 personalTranslatorCapability];
  v204 = v276;
  v20 = AADevice.personalTranslatorCapability.modify(v276);
  v21 = v238;
  v205 = v20;
  ==? infix<A>(_:_:)(v22, &v277, v202, v203);
  v205(v204, v218);
  v275 = [v239 placementMode];
  v23 = *(*v21 + 1808);
  v208 = &v274;
  v24 = v23();
  v25 = v238;
  v209 = v24;
  v207 = v26;
  v206 = type metadata accessor for AADevicePlacementMode(v210);
  v27 = lazy protocol witness table accessor for type AADevicePlacementMode and conformance AADevicePlacementMode();
  ==? infix<A>(_:_:)(v207, &v275, v206, v27);
  v209(v208, v218);
  v273 = [v239 primaryPlacement];
  v28 = *(*v25 + 1856);
  v212 = &v272;
  v29 = v28();
  v30 = v238;
  v213 = v29;
  v211 = v31;
  v214 = type metadata accessor for AAPlacement(v210);
  v215 = lazy protocol witness table accessor for type AAPlacement and conformance AAPlacement();
  ==? infix<A>(_:_:)(v211, &v273, v214, v215);
  v213(v212, v218);
  v271 = [v239 secondaryPlacement];
  v32 = *(*v30 + 1904);
  v216 = &v270;
  v217 = v32();
  ==? infix<A>(_:_:)(v33, &v271, v214, v215);
  v217(v216, v218);
  v268 = &type metadata for AudioAccessoryFeatures;
  v269 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v267 = v218;
  v219 = &v267;
  v220 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v219);
  if ((v220 & 1) == 0)
  {
LABEL_13:
    v38 = v238;
    v266 = [v239 chargingReminderEnabled];
    v39 = *(*v38 + 1552);
    v114 = &v265;
    v115 = v39();
    v113 = v40;
    v140 = 0;
    v131 = type metadata accessor for AAMultiState(0);
    v132 = lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
    ==? infix<A>(_:_:)(v113, &v266, v131, v132);
    v133 = 0;
    v115(v114);
    v264 = [v239 chargingReminderCapability];
    v116 = v263;
    v117 = AADevice.chargingReminderCapability.modify(v263);
    ==? infix<A>(_:_:)(v41, &v264, v189, v191);
    v117(v116, v133);
    v262 = [v239 optimizedBatteryChargingCapability];
    v118 = v261;
    v42 = AADevice.optimizedBatteryChargingCapability.modify(v261);
    v43 = v238;
    v119 = v42;
    ==? infix<A>(_:_:)(v44, &v262, v189, v191);
    v119(v118, v133);
    v260 = [v239 optimizedBatteryChargingState];
    v45 = *(*v43 + 1680);
    v121 = &v259;
    v122 = v45();
    v120 = v46;
    v125 = type metadata accessor for AAChargingFeatureEnablementState(v140);
    v126 = lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
    ==? infix<A>(_:_:)(v120, &v260, v125, v126);
    v122(v121, v133);
    v258 = [v239 dynamicEndOfChargeCapability];
    v123 = v257;
    v47 = AADevice.dynamicEndOfChargeCapability.modify(v257);
    v48 = v238;
    v124 = v47;
    ==? infix<A>(_:_:)(v49, &v258, v189, v191);
    v124(v123, v133);
    v256 = [v239 dynamicEndOfChargeState];
    v50 = *(*v48 + 1712);
    v127 = &v255;
    v51 = v50();
    v52 = v238;
    v128 = v51;
    ==? infix<A>(_:_:)(v53, &v256, v125, v126);
    v128(v127, v133);
    v254 = [v239 temporaryManagedPairedStatus];
    v54 = *(*v52 + 1744);
    v129 = &v253;
    v55 = v54();
    v56 = v238;
    v130 = v55;
    ==? infix<A>(_:_:)(v57, &v254, v131, v132);
    v130(v129, v133);
    v252 = [v239 healthKitDataWriteAllowed];
    v58 = *(*v56 + 1776);
    v134 = &v251;
    v59 = v58();
    v60 = v229;
    v135 = v59;
    ==? infix<A>(_:_:)(v61, &v252, v131, v132);
    v135(v134, v133);
    v62 = Logger.shared.unsafeMutableAddressor();
    (*(v227 + 16))(v60, v62, v225);

    v162 = Logger.logObject.getter();
    v136 = v162;
    v161 = static os_log_type_t.default.getter();
    v137 = v161;
    v144 = 17;
    v149 = 7;
    v152 = swift_allocObject();
    v138 = v152;
    v143 = 32;
    *(v152 + 16) = 32;
    v63 = swift_allocObject();
    v64 = v143;
    v153 = v63;
    v139 = v63;
    v146 = 8;
    *(v63 + 16) = 8;
    v148 = v64;
    v65 = swift_allocObject();
    v66 = v140;
    v141 = v65;
    *(v65 + 16) = implicit closure #1 in AADevice.updatePropertiesFor(updatedDevice:);
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v141;
    v154 = v67;
    v142 = v67;
    *(v67 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v67 + 24) = v68;
    v155 = swift_allocObject();
    v145 = v155;
    *(v155 + 16) = v143;
    v156 = swift_allocObject();
    v147 = v156;
    *(v156 + 16) = v146;
    v69 = swift_allocObject();
    v70 = v238;
    v150 = v69;
    *(v69 + 16) = partial apply for implicit closure #2 in AADevice.updatePropertiesFor(updatedDevice:);
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v150;
    v159 = v71;
    v151 = v71;
    *(v71 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v71 + 24) = v72;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v157 = _allocateUninitializedArray<A>(_:)();
    v158 = v73;

    v74 = v152;
    v75 = v158;
    *v158 = closure #1 in OSLogArguments.append(_:)partial apply;
    v75[1] = v74;

    v76 = v153;
    v77 = v158;
    v158[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v77[3] = v76;

    v78 = v154;
    v79 = v158;
    v158[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v79[5] = v78;

    v80 = v155;
    v81 = v158;
    v158[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v81[7] = v80;

    v82 = v156;
    v83 = v158;
    v158[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v83[9] = v82;

    v84 = v158;
    v85 = v159;
    v158[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v84[11] = v85;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v162, v161))
    {
      v86 = v223;
      v106 = static UnsafeMutablePointer.allocate(capacity:)();
      v103 = v106;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v107 = createStorage<A>(capacity:type:)(0, v104, v104);
      v105 = v107;
      v109 = 2;
      v108 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v250 = v106;
      v249 = v107;
      v248 = v108;
      v110 = &v250;
      serialize(_:at:)(v109, &v250);
      serialize(_:at:)(v109, v110);
      v246 = closure #1 in OSLogArguments.append(_:)partial apply;
      v247 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v246, v110, &v249, &v248);
      v111 = v86;
      v112 = v86;
      if (v86)
      {
        v101 = 0;

        __break(1u);
      }

      else
      {
        v246 = closure #1 in OSLogArguments.append(_:)partial apply;
        v247 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v246, &v250, &v249, &v248);
        v99 = 0;
        v100 = 0;
        v246 = closure #1 in OSLogArguments.append(_:)partial apply;
        v247 = v142;
        closure #1 in osLogInternal(_:log:type:)(&v246, &v250, &v249, &v248);
        v97 = 0;
        v98 = 0;
        v246 = closure #1 in OSLogArguments.append(_:)partial apply;
        v247 = v145;
        closure #1 in osLogInternal(_:log:type:)(&v246, &v250, &v249, &v248);
        v95 = 0;
        v96 = 0;
        v246 = closure #1 in OSLogArguments.append(_:)partial apply;
        v247 = v147;
        closure #1 in osLogInternal(_:log:type:)(&v246, &v250, &v249, &v248);
        v93 = 0;
        v94 = 0;
        v246 = closure #1 in OSLogArguments.append(_:)partial apply;
        v247 = v151;
        closure #1 in osLogInternal(_:log:type:)(&v246, &v250, &v249, &v248);
        v91 = 0;
        v92 = 0;
        _os_log_impl(&dword_1D93D0000, v136, v137, "HeadphoneManager: %s: updated VM set: %s", v103, 0x16u);
        destroyStorage<A>(_:count:)(v105, 0, v104);
        destroyStorage<A>(_:count:)(v108, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v103, MEMORY[0x1E69E7508]);

        v102 = v91;
      }
    }

    else
    {
      v87 = v223;

      v102 = v87;
    }

    v90 = v102;

    (*(v227 + 8))(v229, v225);
    $defer #1 () in AADevice.updatePropertiesFor(updatedDevice:)(v238);
    return v90;
  }

  v188 = [v239 batteryInfo];
  if (v188)
  {
    v187 = v188;
    v186 = v188;
    v241 = v188;
    v185 = (*(*v238 + 1224))();
    (*(*v185 + 448))(v186);

    goto LABEL_13;
  }

  v34 = v231;
  v35 = Logger.shared.unsafeMutableAddressor();
  (*(v227 + 16))(v34, v35, v225);
  v183 = Logger.logObject.getter();
  v180 = v183;
  v182 = static os_log_type_t.error.getter();
  v181 = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v184 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v183, v182))
  {
    v36 = v223;
    v171 = static UnsafeMutablePointer.allocate(capacity:)();
    v167 = v171;
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v169 = 0;
    v172 = createStorage<A>(capacity:type:)(0, v168, v168);
    v170 = v172;
    v173 = createStorage<A>(capacity:type:)(v169, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v245[0] = v171;
    v244 = v172;
    v243 = v173;
    v174 = 0;
    v175 = v245;
    serialize(_:at:)(0, v245);
    serialize(_:at:)(v174, v175);
    v242 = v184;
    v176 = &v89;
    MEMORY[0x1EEE9AC00](&v89);
    v177 = &v89 - 6;
    *(&v89 - 4) = v37;
    *(&v89 - 3) = &v244;
    *(&v89 - 2) = &v243;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v179 = v36;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v180, v181, "AADevice: Battery info is nil", v167, 2u);
      v165 = 0;
      destroyStorage<A>(_:count:)(v170, 0, v168);
      destroyStorage<A>(_:count:)(v173, v165, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v167, MEMORY[0x1E69E7508]);

      v166 = v179;
    }
  }

  else
  {

    v166 = v223;
  }

  v163 = v166;

  (*(v227 + 8))(v231, v225);
  $defer #1 () in AADevice.updatePropertiesFor(updatedDevice:)(v238);
  return v163;
}

uint64_t $defer #1 () in AADevice.updatePropertiesFor(updatedDevice:)(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  return AADevice._deviceRemoteSendState.setter(&v2);
}

uint64_t AADevice.debugDescription.getter()
{
  v339 = 0;
  v338._countAndFlagsBits = 0;
  v338._object = 0;
  v338 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" accptRplyPlPssCfg: ", 0x14uLL, 1);
  v336 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v337 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v4 = (*(*v251 + 456))(v3);
  v335 = AAHeadGestureConfig.rawValue.getter(v4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v5);

  v198 = v336;
  v197 = v337;

  outlined destroy of DefaultStringInterpolation(&v336);
  v6 = MEMORY[0x1DA7309B0](v198, v197);
  MEMORY[0x1DA7309C0](v0._countAndFlagsBits, v0._object, v6);

  static String.+= infix(_:_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" decDisSkipCfg: ", 0x10uLL, 1);
  v333 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v334 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v9);

  v11 = (*(*v251 + 552))(v10);
  v332 = AAHeadGestureConfig.rawValue.getter(v11);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v12);

  v200 = v333;
  v199 = v334;

  outlined destroy of DefaultStringInterpolation(&v333);
  v13 = MEMORY[0x1DA7309B0](v200, v199);
  MEMORY[0x1DA7309C0](v7._countAndFlagsBits, v7._object, v13);

  static String.+= infix(_:_:)();

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" autoANCCap: ", 0xDuLL, 1);
  v330 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v331 = v15;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v16);

  v18 = (*(*v251 + 736))(v17);
  v329 = AAAutoANCCapability.rawValue.getter(v18);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v19);

  v202 = v330;
  v201 = v331;

  outlined destroy of DefaultStringInterpolation(&v330);
  v20 = MEMORY[0x1DA7309B0](v202, v201);
  MEMORY[0x1DA7309C0](v14._countAndFlagsBits, v14._object, v20);

  static String.+= infix(_:_:)();

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" autoANCStr: ", 0xDuLL, 1);
  v327 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v328 = v22;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v23);

  v25 = (*(*v251 + 488))(v24);
  v326 = AAAutoANCStrength.rawValue.getter(v25);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v26);

  v204 = v327;
  v203 = v328;

  outlined destroy of DefaultStringInterpolation(&v327);
  v27 = MEMORY[0x1DA7309B0](v204, v203);
  MEMORY[0x1DA7309C0](v21._countAndFlagsBits, v21._object, v27);

  static String.+= infix(_:_:)();

  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bblCap: ", 9uLL, 1);
  v324 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v325 = v29;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v30);

  v32 = (*(*v251 + 768))(v31);
  v323 = AAFeatureCapability.rawValue.getter(v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v33);

  v206 = v324;
  v205 = v325;

  outlined destroy of DefaultStringInterpolation(&v324);
  v34 = MEMORY[0x1DA7309B0](v206, v205);
  MEMORY[0x1DA7309C0](v28._countAndFlagsBits, v28._object, v34);

  static String.+= infix(_:_:)();

  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bblCfg: ", 9uLL, 1);
  v321 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v322 = v36;
  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v37);

  v39 = (*(*v251 + 520))(v38);
  v320 = AABobbleConfiguration.rawValue.getter(v39);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v40);

  v208 = v321;
  v207 = v322;

  outlined destroy of DefaultStringInterpolation(&v321);
  v41 = MEMORY[0x1DA7309B0](v208, v207);
  MEMORY[0x1DA7309C0](v35._countAndFlagsBits, v35._object, v41);

  static String.+= infix(_:_:)();

  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" caseSndCap: ", 0xDuLL, 1);
  v318 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v319 = v43;
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v44);

  v46 = (*(*v251 + 800))(v45);
  v317 = AAFeatureCapability.rawValue.getter(v46);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v47);

  v210 = v318;
  v209 = v319;

  outlined destroy of DefaultStringInterpolation(&v318);
  v48 = MEMORY[0x1DA7309B0](v210, v209);
  MEMORY[0x1DA7309C0](v42._countAndFlagsBits, v42._object, v48);

  static String.+= infix(_:_:)();

  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" earTipFitTestCap: ", 0x13uLL, 1);
  v315 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v316 = v50;
  v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v51);

  v53 = (*(*v251 + 832))(v52);
  v314 = AAFeatureCapability.rawValue.getter(v53);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v54);

  v212 = v315;
  v211 = v316;

  outlined destroy of DefaultStringInterpolation(&v315);
  v55 = MEMORY[0x1DA7309B0](v212, v211);
  MEMORY[0x1DA7309C0](v49._countAndFlagsBits, v49._object, v55);

  static String.+= infix(_:_:)();

  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" freqBnd: ", 0xAuLL, 1);
  v312 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v313 = v57;
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v58);

  v60 = (*(*v251 + 864))(v59);
  v311 = AAFrequencyBand.rawValue.getter(v60);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v61);

  v214 = v312;
  v213 = v313;

  outlined destroy of DefaultStringInterpolation(&v312);
  v62 = MEMORY[0x1DA7309B0](v214, v213);
  MEMORY[0x1DA7309C0](v56._countAndFlagsBits, v56._object, v62);

  static String.+= infix(_:_:)();

  v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" headGstrTgl: ", 0xEuLL, 1);
  v309 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v310 = v64;
  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v65);

  v67 = (*(*v251 + 584))(v66);
  v308 = AAMultiState.rawValue.getter(v67);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v68);

  v216 = v309;
  v215 = v310;

  outlined destroy of DefaultStringInterpolation(&v309);
  v69 = MEMORY[0x1DA7309B0](v216, v215);
  MEMORY[0x1DA7309C0](v63._countAndFlagsBits, v63._object, v69);

  static String.+= infix(_:_:)();

  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" headGstrProxShwn: ", 0x13uLL, 1);
  v306 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v307 = v71;
  v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v72);

  v74 = (*(*v251 + 616))(v73);
  v305 = AAMultiState.rawValue.getter(v74);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v75);

  v218 = v306;
  v217 = v307;

  outlined destroy of DefaultStringInterpolation(&v306);
  v76 = MEMORY[0x1DA7309B0](v218, v217);
  MEMORY[0x1DA7309C0](v70._countAndFlagsBits, v70._object, v76);

  static String.+= infix(_:_:)();

  v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haCap: ", 8uLL, 1);
  v303 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v304 = v78;
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v79);

  v81 = (*(*v251 + 896))(v80);
  v302 = AAHearingAidCapability.rawValue.getter(v81);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v82);

  v220 = v303;
  v219 = v304;

  outlined destroy of DefaultStringInterpolation(&v303);
  v83 = MEMORY[0x1DA7309B0](v220, v219);
  MEMORY[0x1DA7309C0](v77._countAndFlagsBits, v77._object, v83);

  static String.+= infix(_:_:)();

  v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haEnrll: ", 0xAuLL, 1);
  v300 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v301 = v85;
  v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v86);

  v88 = (*(*v251 + 648))(v87);
  v299 = AAMultiState.rawValue.getter(v88);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v89);

  v222 = v300;
  v221 = v301;

  outlined destroy of DefaultStringInterpolation(&v300);
  v90 = MEMORY[0x1DA7309B0](v222, v221);
  MEMORY[0x1DA7309C0](v84._countAndFlagsBits, v84._object, v90);

  static String.+= infix(_:_:)();

  v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haCfg: ", 8uLL, 1);
  v297 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v298 = v92;
  v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v93);

  v95 = (*(*v251 + 928))(v94);
  v296 = AAHearingAidConfiguration.rawValue.getter(v95);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v96);

  v224 = v297;
  v223 = v298;

  outlined destroy of DefaultStringInterpolation(&v297);
  v97 = MEMORY[0x1DA7309B0](v224, v223);
  MEMORY[0x1DA7309C0](v91._countAndFlagsBits, v91._object, v97);

  static String.+= infix(_:_:)();

  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" htCap: ", 8uLL, 1);
  v294 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v295 = v99;
  v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v100);

  v102 = (*(*v251 + 960))(v101);
  v293 = AAHearingTestCapability.rawValue.getter(v102);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v103 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v103);

  v226 = v294;
  v225 = v295;

  outlined destroy of DefaultStringInterpolation(&v294);
  v104 = MEMORY[0x1DA7309B0](v226, v225);
  MEMORY[0x1DA7309C0](v98._countAndFlagsBits, v98._object, v104);

  static String.+= infix(_:_:)();

  v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haGSwpeEn: ", 0xCuLL, 1);
  v291 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v292 = v106;
  v107 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v107);

  v109 = (*(*v251 + 680))(v108);
  v290 = AAMultiState.rawValue.getter(v109);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v110);

  v228 = v291;
  v227 = v292;

  outlined destroy of DefaultStringInterpolation(&v291);
  v111 = MEMORY[0x1DA7309B0](v228, v227);
  MEMORY[0x1DA7309C0](v105._countAndFlagsBits, v105._object, v111);

  static String.+= infix(_:_:)();

  v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hideOffLstnMdCap: ", 0x13uLL, 1);
  v288 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v289 = v113;
  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v114);

  v116 = (*(*v251 + 992))(v115);
  v287 = AAFeatureCapability.rawValue.getter(v116);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v117 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v117);

  v230 = v288;
  v229 = v289;

  outlined destroy of DefaultStringInterpolation(&v288);
  v118 = MEMORY[0x1DA7309B0](v230, v229);
  MEMORY[0x1DA7309C0](v112._countAndFlagsBits, v112._object, v118);

  static String.+= infix(_:_:)();

  v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hrmEn: ", 8uLL, 1);
  v285 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v286 = v120;
  v121 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v121);

  v123 = (*(*v251 + 1104))(v122);
  v284 = AAMultiState.rawValue.getter(v123);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v124);

  v232 = v285;
  v231 = v286;

  outlined destroy of DefaultStringInterpolation(&v285);
  v125 = MEMORY[0x1DA7309B0](v232, v231);
  MEMORY[0x1DA7309C0](v119._countAndFlagsBits, v119._object, v125);

  static String.+= infix(_:_:)();

  v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hideEarDetCap: ", 0x10uLL, 1);
  v282 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v283 = v127;
  v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v128);

  v130 = (*(*v251 + 1136))(v129);
  v281 = AAFeatureCapability.rawValue.getter(v130);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v131);

  v234 = v282;
  v233 = v283;

  outlined destroy of DefaultStringInterpolation(&v282);
  v132 = MEMORY[0x1DA7309B0](v234, v233);
  MEMORY[0x1DA7309C0](v126._countAndFlagsBits, v126._object, v132);

  static String.+= infix(_:_:)();

  v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" strmStateAoS: ", 0xFuLL, 1);
  v279 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v280 = v134;
  v135 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v135);

  v137 = (*(*v251 + 1192))(v136);
  v278 = AAStreamStateAoS.rawValue.getter(v137);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v138);

  v236 = v279;
  v235 = v280;

  outlined destroy of DefaultStringInterpolation(&v279);
  v139 = MEMORY[0x1DA7309B0](v236, v235);
  MEMORY[0x1DA7309C0](v133._countAndFlagsBits, v133._object, v139);

  static String.+= infix(_:_:)();

  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" slpDetCap: ", 0xCuLL, 1);
  v276 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v277 = v141;
  v142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v142);

  v144 = (*(*v251 + 1296))(v143);
  v275 = AAFeatureCapability.rawValue.getter(v144);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v145);

  v238 = v276;
  v237 = v277;

  outlined destroy of DefaultStringInterpolation(&v276);
  v146 = MEMORY[0x1DA7309B0](v238, v237);
  MEMORY[0x1DA7309C0](v140._countAndFlagsBits, v140._object, v146);

  static String.+= infix(_:_:)();

  v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" slpDetEn: ", 0xBuLL, 1);
  v273 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v274 = v148;
  v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v149);

  v151 = (*(*v251 + 1328))(v150);
  v272 = AAMultiState.rawValue.getter(v151);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v152);

  v240 = v273;
  v239 = v274;

  outlined destroy of DefaultStringInterpolation(&v273);
  v153 = MEMORY[0x1DA7309B0](v240, v239);
  MEMORY[0x1DA7309C0](v147._countAndFlagsBits, v147._object, v153);

  static String.+= infix(_:_:)();

  v154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" camCtrlCap: ", 0xDuLL, 1);
  v270 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v271 = v155;
  v156 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v156);

  v158 = (*(*v251 + 1360))(v157);
  v269 = AAFeatureCapability.rawValue.getter(v158);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v159 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v159);

  v242 = v270;
  v241 = v271;

  outlined destroy of DefaultStringInterpolation(&v270);
  v160 = MEMORY[0x1DA7309B0](v242, v241);
  MEMORY[0x1DA7309C0](v154._countAndFlagsBits, v154._object, v160);

  static String.+= infix(_:_:)();

  v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" camCtrlCfg: ", 0xDuLL, 1);
  v267 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v268 = v162;
  v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v163);

  v165 = (*(*v251 + 1408))(v164);
  v266 = AARemoteCameraControlConfig.rawValue.getter(v165);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v166);

  v244 = v267;
  v243 = v268;

  outlined destroy of DefaultStringInterpolation(&v267);
  v167 = MEMORY[0x1DA7309B0](v244, v243);
  MEMORY[0x1DA7309C0](v161._countAndFlagsBits, v161._object, v167);

  static String.+= infix(_:_:)();

  v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ptCap: ", 8uLL, 1);
  v264 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v265 = v169;
  v170 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v170);

  v172 = (*(*v251 + 1440))(v171);
  v263 = AAFeatureCapability.rawValue.getter(v172);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v173);

  v246 = v264;
  v245 = v265;

  outlined destroy of DefaultStringInterpolation(&v264);
  v174 = MEMORY[0x1DA7309B0](v246, v245);
  MEMORY[0x1DA7309C0](v168._countAndFlagsBits, v168._object, v174);

  static String.+= infix(_:_:)();

  v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" chrgRmndrEn: ", 0xEuLL, 1);
  v261 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v262 = v176;
  v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v177);

  v179 = (*(*v251 + 1536))(v178);
  v260 = AAMultiState.rawValue.getter(v179);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v180 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v180);

  v248 = v261;
  v247 = v262;

  outlined destroy of DefaultStringInterpolation(&v261);
  v181 = MEMORY[0x1DA7309B0](v248, v247);
  MEMORY[0x1DA7309C0](v175._countAndFlagsBits, v175._object, v181);

  static String.+= infix(_:_:)();

  v182 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" chrgRmndrCap: ", 0xFuLL, 1);
  v258 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v259 = v183;
  v184 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v184);

  v186 = (*(*v251 + 1488))(v185);
  v257 = AAFeatureCapability.rawValue.getter(v186);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v187 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v187);

  v250 = v258;
  v249 = v259;

  outlined destroy of DefaultStringInterpolation(&v258);
  v188 = MEMORY[0x1DA7309B0](v250, v249);
  MEMORY[0x1DA7309C0](v182._countAndFlagsBits, v182._object, v188);

  static String.+= infix(_:_:)();

  v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" tempPairStat: ", 0xFuLL, 1);
  v255 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v256 = v190;
  v191 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v191);

  v193 = (*(*v251 + 1728))(v192);
  AAMultiState.rawValue.getter(v193);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v194 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v194);

  v253 = v255;
  v252 = v256;

  outlined destroy of DefaultStringInterpolation(&v255);
  v195 = MEMORY[0x1DA7309B0](v253, v252);
  MEMORY[0x1DA7309C0](v189._countAndFlagsBits, v189._object, v195);

  static String.+= infix(_:_:)();

  v254 = v338._countAndFlagsBits;

  outlined destroy of String(&v338);
  return v254;
}

uint64_t AADevice.deinit()
{
  outlined destroy of AADeviceProperty<AADevice, AAHeadGestureConfig>(v0 + 3);
  outlined destroy of AADeviceProperty<AADevice, AAAutoANCStrength>(v0 + 8);
  outlined destroy of AADeviceProperty<AADevice, AABobbleConfiguration>(v0 + 13);
  outlined destroy of AADeviceProperty<AADevice, AAHeadGestureConfig>(v0 + 18);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 23);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 28);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 33);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 38);
  outlined destroy of Data?((v0 + 344));
  outlined destroy of AADeviceProperty<AADevice, AAAutoANCCapability>(v0 + 45);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 50);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 55);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 60);
  outlined destroy of AADeviceProperty<AADevice, AAFrequencyBand>(v0 + 65);
  outlined destroy of AADeviceProperty<AADevice, AAHearingAidCapability>(v0 + 70);
  outlined destroy of AADeviceProperty<AADevice, AAHearingAidConfiguration>(v0 + 75);
  outlined destroy of AADeviceProperty<AADevice, AAHearingTestCapability>(v0 + 80);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 85);
  outlined destroy of AADeviceProperty<AADevice, Date?>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp]);
  v4 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[v4]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled]);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability]);
  outlined destroy of String?(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier]);
  outlined destroy of AADeviceProperty<AADevice, AAStreamStateAoS>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS]);
  v5 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  (*(*(v1 - 8) + 8))(&v0[v5]);
  outlined destroy of String(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress]);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled]);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability], v6);
  outlined destroy of AADeviceProperty<AADevice, AARemoteCameraControlConfig>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig]);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability], v6);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability], v6);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled]);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability], v6);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability], v6);
  outlined destroy of AADeviceProperty<AADevice, AAChargingFeatureEnablementState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState]);
  outlined destroy of AADeviceProperty<AADevice, AAChargingFeatureEnablementState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed]);
  v8 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  (*(*(v2 - 8) + 8))(&v0[v8]);
  v9 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v11 = *(*(v10 - 8) + 8);
  v11(&v0[v9]);
  (v11)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus], v10);
  outlined destroy of AudioAccessoryDevice?(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice]);
  return v12;
}

uint64_t AADevice.init()()
{
  v217 = 0;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v133 = *(v139 - 8);
  v134 = v139 - 8;
  v12 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v12 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  v128 = *(v132 - 8);
  v129 = v132 - 8;
  v13 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v12 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  v79 = *(v83 - 8);
  v80 = v83 - 8;
  v14 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v12 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v67 = *(v107 - 8);
  v68 = v107 - 8;
  v15 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v12 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v12 - v16;
  v217 = v0;
  *(v0 + 16) = 0;
  KeyPath = swift_getKeyPath();
  v18 = &v216;
  v216 = 0;
  v142 = 0;
  v124 = type metadata accessor for AADevice(0);
  v29 = type metadata accessor for AAHeadGestureConfig(v142);
  v126 = lazy protocol witness table accessor for type AADevice and conformance AADevice();
  v30 = lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v215);
  v214 = v215;
  AADeviceProperty.init(_:_:_:_:)(KeyPath, v18, v124, &v214, v124, v29, v0 + 24);
  v19 = swift_getKeyPath();
  v20 = &v213;
  v136 = 0;
  v213 = 0;
  v21 = type metadata accessor for AAAutoANCStrength(v142);
  v22 = lazy protocol witness table accessor for type AAAutoANCStrength and conformance AAAutoANCStrength();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v212);
  v211 = v212;
  AADeviceProperty.init(_:_:_:_:)(v19, v20, v124, &v211, v124, v21, v0 + 64);
  v23 = swift_getKeyPath();
  v24 = &v210;
  v210 = 0;
  v25 = type metadata accessor for AABobbleConfiguration(v142);
  v26 = lazy protocol witness table accessor for type AABobbleConfiguration and conformance AABobbleConfiguration();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v209);
  v208 = v209;
  AADeviceProperty.init(_:_:_:_:)(v23, v24, v124, &v208, v124, v25, v0 + 104);
  v27 = swift_getKeyPath();
  v28 = &v207;
  v207 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v206);
  v205 = v206;
  AADeviceProperty.init(_:_:_:_:)(v27, v28, v124, &v205, v124, v29, v0 + 144);
  v31 = swift_getKeyPath();
  v32 = &v204;
  v204 = 0;
  v125 = type metadata accessor for AAMultiState(v142);
  v127 = lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v203);
  v202 = v203;
  AADeviceProperty.init(_:_:_:_:)(v31, v32, v124, &v202, v124, v125, v0 + 184);
  v33 = swift_getKeyPath();
  v34 = &v201;
  v201 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v200);
  v199 = v200;
  AADeviceProperty.init(_:_:_:_:)(v33, v34, v124, &v199, v124, v125, v0 + 224);
  v35 = swift_getKeyPath();
  v36 = &v198;
  v198 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v197);
  v196 = v197;
  AADeviceProperty.init(_:_:_:_:)(v35, v36, v124, &v196, v124, v125, v0 + 264);
  v37 = swift_getKeyPath();
  v38 = &v195;
  v195 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v194);
  v193 = v194;
  AADeviceProperty.init(_:_:_:_:)(v37, v38, v124, &v193, v124, v125, v0 + 304);
  *(v0 + 344) = 0;
  *(v0 + 352) = 0xF000000000000000;
  v42 = swift_getKeyPath();
  v39 = &v192;
  v192 = 0;
  v40 = &v191;
  v86 = 1;
  v191 = 1;
  v41 = type metadata accessor for AAAutoANCCapability(v142);
  lazy protocol witness table accessor for type AAAutoANCCapability and conformance AAAutoANCCapability();
  AADeviceProperty.init(_:_:_:_:)(v42, v39, v124, v40, v124, v41, v0 + 360);
  v45 = swift_getKeyPath();
  v43 = &v190;
  v190 = 0;
  v44 = &v189;
  v189 = v86;
  v88 = type metadata accessor for AAFeatureCapability(v142);
  v89 = lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  AADeviceProperty.init(_:_:_:_:)(v45, v43, v124, v44, v124, v88, v0 + 400);
  v1 = swift_getKeyPath();
  v188 = 0;
  v187 = v86;
  AADeviceProperty.init(_:_:_:_:)(v1, &v188, v124, &v187, v124, v88, v0 + 440);
  v2 = swift_getKeyPath();
  v186 = 0;
  v185 = v86;
  AADeviceProperty.init(_:_:_:_:)(v2, &v186, v124, &v185, v124, v88, v0 + 480);
  v49 = swift_getKeyPath();
  v46 = &v184;
  v184 = 0;
  v47 = &v183;
  v183 = v86;
  v48 = type metadata accessor for AAFrequencyBand(v142);
  lazy protocol witness table accessor for type AAFrequencyBand and conformance AAFrequencyBand();
  AADeviceProperty.init(_:_:_:_:)(v49, v46, v124, v47, v124, v48, v0 + 520);
  v53 = swift_getKeyPath();
  v50 = &v182;
  v182 = 0;
  v51 = &v181;
  v181 = v86;
  v52 = type metadata accessor for AAHearingAidCapability(v142);
  lazy protocol witness table accessor for type AAHearingAidCapability and conformance AAHearingAidCapability();
  AADeviceProperty.init(_:_:_:_:)(v53, v50, v124, v51, v124, v52, v0 + 560);
  v57 = swift_getKeyPath();
  v54 = &v180;
  v180 = 0;
  v55 = &v179;
  v179 = v86;
  v56 = type metadata accessor for AAHearingAidConfiguration(v142);
  lazy protocol witness table accessor for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration();
  AADeviceProperty.init(_:_:_:_:)(v57, v54, v124, v55, v124, v56, v0 + 600);
  v61 = swift_getKeyPath();
  v58 = &v178;
  v178 = 0;
  v59 = &v177;
  v177 = v86;
  v60 = type metadata accessor for AAHearingTestCapability(v142);
  lazy protocol witness table accessor for type AAHearingTestCapability and conformance AAHearingTestCapability();
  AADeviceProperty.init(_:_:_:_:)(v61, v58, v124, v59, v124, v60, v0 + 640);
  v3 = swift_getKeyPath();
  v176 = 0;
  v175 = v86;
  AADeviceProperty.init(_:_:_:_:)(v3, &v176, v124, &v175, v124, v88, v0 + 680);
  v62 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp;
  v66 = swift_getKeyPath();
  v4 = *(*(type metadata accessor for Date() - 8) + 56);
  v84 = 1;
  v4(v63, 1);
  v64 = &v174;
  v174 = v86;
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  AADeviceProperty.init(_:_:_:_:)(v66, v63, v124, v64, v124, v65, v0 + v62);
  v69 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  property wrapper backing initializer of AADevice.heartRateMonitorCapability(v136, v106);
  v109 = *(v67 + 32);
  v108 = v67 + 32;
  v109(v0 + v69, v106, v107);
  v70 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled;
  v71 = swift_getKeyPath();
  v72 = &v173;
  v173 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v172);
  v171 = v172;
  AADeviceProperty.init(_:_:_:_:)(v71, v72, v124, &v171, v124, v125, v0 + v70);
  v73 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability;
  v5 = swift_getKeyPath();
  v170 = 0;
  v169 = v86;
  AADeviceProperty.init(_:_:_:_:)(v5, &v170, v124, &v169, v124, v88, v0 + v73);
  v6 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier);
  *v6 = 0;
  v6[1] = 0;
  v74 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS;
  v78 = swift_getKeyPath();
  v75 = &v168;
  v168 = 0;
  v76 = &v167;
  v167 = v86;
  v77 = type metadata accessor for AAStreamStateAoS(v142);
  lazy protocol witness table accessor for type AAStreamStateAoS and conformance AAStreamStateAoS();
  AADeviceProperty.init(_:_:_:_:)(v78, v75, v124, v76, v124, v77, v0 + v74);
  v81 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  type metadata accessor for AADBatteryInfoVM(v142);
  v7 = AADBatteryInfoVM.__allocating_init(with:)(v142);
  v8 = v143;
  property wrapper backing initializer of AADevice.batteryInfo(v7, v82);
  (*(v79 + 32))(v8 + v81, v82, v83);
  v85 = OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, v84 & 1);
  *(v8 + v85) = v9;
  v87 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability;
  v10 = swift_getKeyPath();
  v166 = 0;
  v165 = v86;
  AADeviceProperty.init(_:_:_:_:)(v10, &v166, v124, &v165, v124, v88, v8 + v87);
  v90 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled;
  v91 = swift_getKeyPath();
  v92 = &v164;
  v164 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v163);
  v162 = v163;
  AADeviceProperty.init(_:_:_:_:)(v91, v92, v124, &v162, v124, v125, v8 + v90);
  v93 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability;
  property wrapper backing initializer of AADevice.cameraControlCapability(v136, v106);
  v109(v8 + v93, v106, v107);
  v94 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig;
  v95 = swift_getKeyPath();
  v96 = &v161;
  v161 = 0;
  v97 = type metadata accessor for AARemoteCameraControlConfig(v142);
  v98 = lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v160);
  v159 = v160;
  AADeviceProperty.init(_:_:_:_:)(v95, v96, v124, &v159, v124, v97, v8 + v94);
  v99 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability;
  property wrapper backing initializer of AADevice.personalTranslatorCapability(v136, v106);
  v109(v8 + v99, v106, v107);
  v100 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability;
  property wrapper backing initializer of AADevice.chargingReminderCapability(v136, v106);
  v109(v8 + v100, v106, v107);
  v101 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled;
  v102 = swift_getKeyPath();
  v103 = &v158;
  v158 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v157);
  v156 = v157;
  AADeviceProperty.init(_:_:_:_:)(v102, v103, v124, &v156, v124, v125, v8 + v101);
  v104 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability;
  property wrapper backing initializer of AADevice.optimizedBatteryChargingCapability(v136, v106);
  v109(v8 + v104, v106, v107);
  v105 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability;
  property wrapper backing initializer of AADevice.dynamicEndOfChargeCapability(v136, v106);
  v109(v8 + v105, v106, v107);
  v110 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState;
  v111 = swift_getKeyPath();
  v112 = &v155;
  v155 = 0;
  v116 = type metadata accessor for AAChargingFeatureEnablementState(v142);
  v117 = lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v154);
  v153 = v154;
  AADeviceProperty.init(_:_:_:_:)(v111, v112, v124, &v153, v124, v116, v8 + v110);
  v113 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState;
  v114 = swift_getKeyPath();
  v115 = &v152;
  v152 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v151);
  v150 = v151;
  AADeviceProperty.init(_:_:_:_:)(v114, v115, v124, &v150, v124, v116, v8 + v113);
  v118 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus;
  v119 = swift_getKeyPath();
  v120 = &v149;
  v149 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v148);
  v147 = v148;
  AADeviceProperty.init(_:_:_:_:)(v119, v120, v124, &v147, v124, v125, v8 + v118);
  v121 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed;
  v122 = swift_getKeyPath();
  v123 = &v146;
  v146 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v145);
  v144 = v145;
  AADeviceProperty.init(_:_:_:_:)(v122, v123, v124, &v144, v124, v125, v8 + v121);
  v130 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  property wrapper backing initializer of AADevice.IEDEnabled(v136, v131);
  (*(v128 + 32))(v8 + v130, v131, v132);
  v135 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  property wrapper backing initializer of AADevice.primaryInEarStatus(v136, v138);
  v141 = *(v133 + 32);
  v140 = v133 + 32;
  v141(v8 + v135, v138, v139);
  v137 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus;
  property wrapper backing initializer of AADevice.secondaryInEarStatus(v136, v138);
  v141(v8 + v137, v138, v139);
  result = v143;
  *(v143 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice) = v142;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AADevice@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AADevice(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHeadGestureConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHeadGestureConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHeadGestureConfig@<X0>(_BYTE *a1@<X8>)
{
  result = AAHeadGestureConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAAutoANCStrength@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AAAutoANCStrength.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AAAutoANCStrength.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAAutoANCStrength@<X0>(_DWORD *a1@<X8>)
{
  result = AAAutoANCStrength.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AABobbleConfiguration@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AABobbleConfiguration.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AABobbleConfiguration@<X0>(_BYTE *a1@<X8>)
{
  result = AABobbleConfiguration.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAMultiState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAMultiState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAMultiState@<X0>(_BYTE *a1@<X8>)
{
  result = AAMultiState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAAutoANCCapability@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AAAutoANCCapability.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AAAutoANCCapability.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAAutoANCCapability@<X0>(_DWORD *a1@<X8>)
{
  result = AAAutoANCCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAFrequencyBand@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAFrequencyBand.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAFrequencyBand@<X0>(_BYTE *a1@<X8>)
{
  result = AAFrequencyBand.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHearingAidCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHearingAidCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHearingAidCapability@<X0>(_BYTE *a1@<X8>)
{
  result = AAHearingAidCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHearingAidConfiguration@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHearingAidConfiguration.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHearingAidConfiguration@<X0>(_BYTE *a1@<X8>)
{
  result = AAHearingAidConfiguration.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHearingTestCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHearingTestCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHearingTestCapability@<X0>(_BYTE *a1@<X8>)
{
  result = AAHearingTestCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAStreamStateAoS@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAStreamStateAoS.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAStreamStateAoS@<X0>(_BYTE *a1@<X8>)
{
  result = AAStreamStateAoS.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AARemoteCameraControlConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AARemoteCameraControlConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AARemoteCameraControlConfig@<X0>(_BYTE *a1@<X8>)
{
  result = AARemoteCameraControlConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAChargingFeatureEnablementState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAChargingFeatureEnablementState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAChargingFeatureEnablementState@<X0>(_BYTE *a1@<X8>)
{
  result = AAChargingFeatureEnablementState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AADevicePlacementMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AADevicePlacementMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AADevicePlacementMode@<X0>(_BYTE *a1@<X8>)
{
  result = AADevicePlacementMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAPlacement@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AAPlacement.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AAPlacement.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAPlacement@<X0>(_DWORD *a1@<X8>)
{
  result = AAPlacement.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type AADevicePlacementMode and conformance AADevicePlacementMode()
{
  v2 = lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode;
  if (!lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode)
  {
    type metadata accessor for AADevicePlacementMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode;
  if (!lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode)
  {
    type metadata accessor for AADevicePlacementMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AAPlacement and conformance AAPlacement()
{
  v2 = lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement;
  if (!lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement)
  {
    type metadata accessor for AAPlacement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement;
  if (!lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement)
  {
    type metadata accessor for AAPlacement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAHeadGestureConfig>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAAutoANCStrength>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AABobbleConfiguration>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAMultiState>(void *a1)
{
}

uint64_t outlined destroy of Data?(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    outlined consume of Data._Representation(*a1, *(a1 + 8));
  }

  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAAutoANCCapability>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAFrequencyBand>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAHearingAidCapability>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAHearingAidConfiguration>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAHearingTestCapability>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAStreamStateAoS>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AARemoteCameraControlConfig>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<AADevice, AAChargingFeatureEnablementState>(void *a1)
{
}

unint64_t type metadata accessor for Published<AADevicePlacementMode>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<AADevicePlacementMode>;
  if (!lazy cache variable for type metadata for Published<AADevicePlacementMode>)
  {
    type metadata accessor for AADevicePlacementMode(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<AADevicePlacementMode>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Published<AAPlacement>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<AAPlacement>;
  if (!lazy cache variable for type metadata for Published<AAPlacement>)
  {
    type metadata accessor for AAPlacement(255);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<AAPlacement>);
      return v2;
    }
  }

  return v5;
}

uint64_t outlined init with copy of Data?(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    outlined copy of Data._Representation(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

uint64_t getSystemPrefsImage()()
{
  assertionFailure(_:file:line:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  return Image.init(systemName:)();
}

uint64_t getBluetoothImage()()
{
  assertionFailure(_:file:line:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  return Image.init(systemName:)();
}

uint64_t fetchFindMyIcon()()
{
  assertionFailure(_:file:line:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  return Image.init(systemName:)();
}

UIImage_optional __swiftcall getIcon(bundleID:)(Swift::String bundleID)
{
  assertionFailure(_:file:line:)();
  v2 = 0;
  result.value.super.isa = v2;
  result.is_nil = v1;
  return result;
}

id getUTType(hpDevice:)(void *a1)
{
  v23 = 0;
  v24 = a1;
  v15 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v16 = [v15 productID];
  v23 = v16;
  MEMORY[0x1E69E5920](v15);
  v22 = v16;
  v21 = 8214;
  type metadata accessor for CBProductID(0);
  lazy protocol witness table accessor for type CBProductID and conformance CBProductID();
  if (== infix<A>(_:_:)())
  {
    v23 = 8209;
    v13 = 8209;
  }

  else
  {
    v13 = v16;
  }

  v20 = v13;
  v19 = 8215;
  if (== infix<A>(_:_:)())
  {
    v23 = 8201;
    v12 = 8201;
  }

  else
  {
    v12 = v13;
  }

  type metadata accessor for UTType();
  v9 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v10 = [v9 vendorIDBluetooth];
  MEMORY[0x1E69E5920](v9);
  v11 = @nonobjc UTType.init(_bluetoothProductID:vendorID:)(v12, v10);
  if (v11)
  {
    return v11;
  }

  type metadata accessor for Log();
  static Log.shared.getter();
  v17 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneSettings: Invalid PID: ", 0x20uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", using regular headphone", 0x19uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v3);

  v7 = v17;
  v6 = v18;

  outlined destroy of DefaultStringInterpolation(&v17);
  MEMORY[0x1DA7309B0](v7, v6);
  dispatch thunk of Log.error(_:function:file:line:)();

  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.beats-headphones", 0x1AuLL, 1);
  return @nonobjc UTType.__allocating_init(_:)(v4._countAndFlagsBits, v4._object);
}

unint64_t type metadata accessor for CBProductID(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBProductID;
  if (!lazy cache variable for type metadata for CBProductID)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBProductID);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBProductID and conformance CBProductID()
{
  v2 = lazy protocol witness table cache variable for type CBProductID and conformance CBProductID;
  if (!lazy protocol witness table cache variable for type CBProductID and conformance CBProductID)
  {
    type metadata accessor for CBProductID(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductID and conformance CBProductID);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for UTType()
{
  v2 = lazy cache variable for type metadata for UTType;
  if (!lazy cache variable for type metadata for UTType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for UTType);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc UTType.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1DA730940](a1);
  v4 = [swift_getObjCClassFromMetadata() typeWithIdentifier_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

id @nonobjc UTType.init(_bluetoothProductID:vendorID:)(unsigned int a1, unsigned __int16 a2)
{
  v2 = [swift_getObjCClassFromMetadata() _typeWithBluetoothProductID_vendorID_];

  return v2;
}

uint64_t checkIsFindMyNetworkSupported(cbDevice:)(void *a1)
{
  [a1 productID];
  type metadata accessor for CBProductID(0);
  lazy protocol witness table accessor for type CBProductID and conformance CBProductID();
  if (== infix<A>(_:_:)())
  {
    v5 = 1;
  }

  else
  {
    v5 = == infix<A>(_:_:)();
  }

  if (v5)
  {
    v4 = 1;
  }

  else
  {
    v4 = == infix<A>(_:_:)();
  }

  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v3 = == infix<A>(_:_:)();
  }

  if (v3)
  {
    v2 = 1;
  }

  else
  {
    v2 = == infix<A>(_:_:)();
  }

  return v2 & 1;
}

void *one-time initialization function for shared()
{
  type metadata accessor for HPSDeviceAnalytics();
  result = HPSDeviceAnalytics.__allocating_init()();
  static HPSDeviceAnalytics.shared = result;
  return result;
}

uint64_t *HPSDeviceAnalytics.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static HPSDeviceAnalytics.shared;
}

uint64_t static HPSDeviceAnalytics.shared.getter()
{
  v1 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

  return v1;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureName.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureValue.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void __swiftcall HPSDeviceAnalytics.keyValuePair.init()(HeadphoneManager::HPSDeviceAnalytics::keyValuePair *__return_ptr retstr)
{
  memset(__b, 0, sizeof(__b));
  __b[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  __b[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  __b[2]._countAndFlagsBits = 0;
  __b[2]._object = 0;
  memcpy(retstr, __b, sizeof(HeadphoneManager::HPSDeviceAnalytics::keyValuePair));
}

void __swiftcall HPSDeviceAnalytics.keyValuePair.init(featureName:featureValue:pid:adaptiveModeSupported:)(HeadphoneManager::HPSDeviceAnalytics::keyValuePair *__return_ptr retstr, Swift::String featureName, Swift::String featureValue, Swift::Int pid, Swift::Int adaptiveModeSupported)
{
  retstr->featureName = featureName;
  retstr->featureValue = featureValue;
  retstr->pid = pid;
  retstr->adaptiveModeSupported = adaptiveModeSupported;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.caseSoundVal.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.caseSoundVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.crownRotationVal.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.crownRotationVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenLeftBudVal.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenLeftBudVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenRightBudVal.getter()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenRightBudVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenSingleVal.getter()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenSingleVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapLeftVal.getter()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapLeftVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapRightVal.getter()
{
  v2 = *(v0 + 136);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapRightVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.entryPoint.getter()
{
  v2 = *(v0 + 152);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.entryPoint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.earTipFitTestVal.getter()
{
  v2 = *(v0 + 176);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.earTipFitTestVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.endCallGestureVal.getter()
{
  v2 = *(v0 + 200);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.endCallGestureVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.findMyNetworkVal.getter()
{
  v2 = *(v0 + 224);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.findMyNetworkVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.inEarOnHeadDetectionVal.getter()
{
  v2 = *(v0 + 256);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.inEarOnHeadDetectionVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.listeningModeVal.getter()
{
  v2 = *(v0 + 280);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.listeningModeVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.magneticEarbudDetectVal.getter()
{
  v2 = *(v0 + 304);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.magneticEarbudDetectVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.microphoneSwitchVal.getter()
{
  v2 = *(v0 + 328);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.microphoneSwitchVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.muteControlGestureVal.getter()
{
  v2 = *(v0 + 352);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.muteControlGestureVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.optimizedBudChargingVal.getter()
{
  v2 = *(v0 + 376);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.optimizedBudChargingVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldLeftBudVal.getter()
{
  v2 = *(v0 + 400);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldLeftBudVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldRightBudVal.getter()
{
  v2 = *(v0 + 416);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldRightBudVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.smartRoutingVal.getter()
{
  v2 = *(v0 + 440);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.smartRoutingVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 440) = a1;
  *(v2 + 448) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.selectiveSpeechListeningVal.getter()
{
  v2 = *(v0 + 488);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.selectiveSpeechListeningVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 488) = a1;
  *(v2 + 496) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.conversationDetectVal.getter()
{
  v2 = *(v0 + 512);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.conversationDetectVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.adaptiveVolumeVal.getter()
{
  v2 = *(v0 + 536);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.adaptiveVolumeVal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 536) = a1;
  *(v2 + 544) = a2;
}

void __swiftcall HPSDeviceAnalytics.headphoneFeatureList.init()(HeadphoneManager::HPSDeviceAnalytics::headphoneFeatureList *__return_ptr retstr)
{
  bzero(v2, 0x228uLL);
  *v2 = 0;
  *&v2[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[24] = 0;
  *&v2[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[64] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[80] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memset(&v2[96], 0, 24);
  *&v2[120] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[136] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[152] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("macOS_Sidebar", 0xDuLL, 1);
  *&v2[168] = 0;
  *&v2[176] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[192] = 0;
  *&v2[200] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[216] = 0;
  *&v2[224] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[240] = 0;
  *&v2[248] = 0;
  *&v2[256] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[272] = 0;
  *&v2[280] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[296] = 0;
  *&v2[304] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[320] = 0;
  *&v2[328] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[344] = 0;
  *&v2[352] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[368] = 0;
  *&v2[376] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[392] = 0;
  *&v2[400] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[416] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[432] = 0;
  *&v2[440] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memset(&v2[456], 0, 32);
  *&v2[488] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[504] = 0;
  *&v2[512] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[528] = 0;
  *&v2[536] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memcpy(retstr, v2, sizeof(HeadphoneManager::HPSDeviceAnalytics::headphoneFeatureList));
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.init(caseSound:caseSoundVal:crownRotation:crownRotationVal:cycleBetweenLeftBudVal:cycleBetweenRightBudVal:cycleBetweenSingleVal:deviceName:disconnect:doubleTap:doubleTapLeftVal:doubleTapRightVal:entryPoint:earTipFitTest:earTipFitTestVal:endCallGesture:endCallGestureVal:findMyNetwork:findMyNetworkVal:forgetDevice:inEarOnHeadDetection:inEarOnHeadDetectionVal:listeningMode:listeningModeVal:magneticEarbudDetect:magneticEarbudDetectVal:microphoneSwitch:microphoneSwitchVal:muteControlGesture:muteControlGestureVal:optimizedBudCharging:optimizedBudChargingVal:pressHold:pressHoldLeftBudVal:pressHoldRightBudVal:smartRouting:smartRoutingVal:spatialAudioProfile:spatialAudioTutorial:viewInFindMy:selectiveSpeechListening:selectiveSpeechListeningVal:conversationDetect:conversationDetectVal:adaptiveVolume:adaptiveVolumeVal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a9 = a1;
  result = a61;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = a12;
  a9[11] = a13;
  a9[12] = a14;
  a9[13] = a15;
  a9[14] = a16;
  a9[15] = a17;
  a9[16] = a18;
  a9[17] = a19;
  a9[18] = a20;
  a9[19] = a21;
  a9[20] = a22;
  a9[21] = a23;
  a9[22] = a24;
  a9[23] = a25;
  a9[24] = a26;
  a9[25] = a27;
  a9[26] = a28;
  a9[27] = a29;
  a9[28] = a30;
  a9[29] = a31;
  a9[30] = a32;
  a9[31] = a33;
  a9[32] = a34;
  a9[33] = a35;
  a9[34] = a36;
  a9[35] = a37;
  a9[36] = a38;
  a9[37] = a39;
  a9[38] = a40;
  a9[39] = a41;
  a9[40] = a42;
  a9[41] = a43;
  a9[42] = a44;
  a9[43] = a45;
  a9[44] = a46;
  a9[45] = a47;
  a9[46] = a48;
  a9[47] = a49;
  a9[48] = a50;
  a9[49] = a51;
  a9[50] = a52;
  a9[51] = a53;
  a9[52] = a54;
  a9[53] = a55;
  a9[54] = a56;
  a9[55] = a57;
  a9[56] = a58;
  a9[57] = a59;
  a9[58] = a60;
  a9[59] = a61;
  a9[60] = a62;
  a9[61] = a63;
  a9[62] = a64;
  a9[63] = a65;
  a9[64] = a66;
  a9[65] = a67;
  a9[66] = a68;
  a9[67] = a69;
  a9[68] = a70;
  return result;
}

void *HPSDeviceAnalytics.featureList.getter@<X0>(void *a1@<X8>)
{
  v4[72] = 0;
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  outlined init with copy of HPSDeviceAnalytics.headphoneFeatureList(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x228uLL);
}

void *HPSDeviceAnalytics.featureList.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src;
  v5 = v1;
  outlined init with copy of HPSDeviceAnalytics.headphoneFeatureList(__dst, v4);
  swift_beginAccess();
  memcpy(v8, (v1 + 16), sizeof(v8));
  memcpy((v1 + 16), __dst, 0x228uLL);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v8);
  swift_endAccess();
  result = __dst;
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(__dst);
  return result;
}

uint64_t HPSDeviceAnalytics.eventV2.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[71];
  v4 = v1[72];
  v5 = v1[73];
  v6 = v1[74];
  v7 = v1[75];
  v9 = v1[76];

  result = swift_endAccess();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v9;
  return result;
}

uint64_t HPSDeviceAnalytics.eventV2.setter(void *a1)
{
  memset(__b, 0, sizeof(__b));
  v8 = a1[1];
  v5 = a1[2];
  v9 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  __b[0] = *a1;
  v4 = __b[0];
  __b[1] = v8;
  __b[2] = v5;
  __b[3] = v9;
  __b[4] = v6;
  __b[5] = v7;

  swift_beginAccess();
  v1[71] = v4;
  v1[72] = v8;
  v1[73] = v5;
  v1[74] = v9;
  v1[75] = v6;
  v1[76] = v7;

  swift_endAccess();
}

void *HPSDeviceAnalytics.init()()
{
  v10 = v0;
  HPSDeviceAnalytics.headphoneFeatureList.init()(&v9);
  memcpy(__dst, &v9, sizeof(__dst));
  memcpy((v0 + 16), __dst, 0x228uLL);
  HPSDeviceAnalytics.keyValuePair.init()(&v8);
  result = v7;
  object = v8.featureName._object;
  countAndFlagsBits = v8.featureValue._countAndFlagsBits;
  v4 = v8.featureValue._object;
  pid = v8.pid;
  adaptiveModeSupported = v8.adaptiveModeSupported;
  v7[71] = v8.featureName._countAndFlagsBits;
  v7[72] = object;
  v7[73] = countAndFlagsBits;
  v7[74] = v4;
  v7[75] = pid;
  v7[76] = adaptiveModeSupported;
  return result;
}

void *outlined init with copy of HPSDeviceAnalytics.headphoneFeatureList(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  v3 = a1[2];

  a2[2] = v3;
  a2[3] = a1[3];
  a2[4] = a1[4];
  v4 = a1[5];

  a2[5] = v4;
  a2[6] = a1[6];
  v5 = a1[7];

  a2[7] = v5;
  a2[8] = a1[8];
  v6 = a1[9];

  a2[9] = v6;
  a2[10] = a1[10];
  v7 = a1[11];

  a2[11] = v7;
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  v8 = a1[16];

  a2[16] = v8;
  a2[17] = a1[17];
  v9 = a1[18];

  a2[18] = v9;
  a2[19] = a1[19];
  v10 = a1[20];

  a2[20] = v10;
  a2[21] = a1[21];
  a2[22] = a1[22];
  v11 = a1[23];

  a2[23] = v11;
  a2[24] = a1[24];
  a2[25] = a1[25];
  v12 = a1[26];

  a2[26] = v12;
  a2[27] = a1[27];
  a2[28] = a1[28];
  v13 = a1[29];

  a2[29] = v13;
  a2[30] = a1[30];
  a2[31] = a1[31];
  a2[32] = a1[32];
  v14 = a1[33];

  a2[33] = v14;
  a2[34] = a1[34];
  a2[35] = a1[35];
  v15 = a1[36];

  a2[36] = v15;
  a2[37] = a1[37];
  a2[38] = a1[38];
  v16 = a1[39];

  a2[39] = v16;
  a2[40] = a1[40];
  a2[41] = a1[41];
  v17 = a1[42];

  a2[42] = v17;
  a2[43] = a1[43];
  a2[44] = a1[44];
  v18 = a1[45];

  a2[45] = v18;
  a2[46] = a1[46];
  a2[47] = a1[47];
  v19 = a1[48];

  a2[48] = v19;
  a2[49] = a1[49];
  a2[50] = a1[50];
  v20 = a1[51];

  a2[51] = v20;
  a2[52] = a1[52];
  v21 = a1[53];

  a2[53] = v21;
  a2[54] = a1[54];
  a2[55] = a1[55];
  v22 = a1[56];

  a2[56] = v22;
  a2[57] = a1[57];
  a2[58] = a1[58];
  a2[59] = a1[59];
  a2[60] = a1[60];
  a2[61] = a1[61];
  v23 = a1[62];

  a2[62] = v23;
  a2[63] = a1[63];
  a2[64] = a1[64];
  v25 = a1[65];

  a2[65] = v25;
  a2[66] = a1[66];
  a2[67] = a1[67];
  v27 = a1[68];

  result = a2;
  a2[68] = v27;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(void *a1)
{
}

uint64_t HPSDeviceAnalytics.updateFeatureCount(feature:)(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v212 = result;
  v211 = v1;
  v210 = result;
  switch(result)
  {
    case 0:
      v167 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v167 + 112))(v169);
      v4 = *(v3 + 96);
      v168 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_127;
      }

      *(v3 + 96) = v168;
      (result)();

      goto LABEL_108;
    case 1:
      v165 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v165 + 112))(v172);
      v8 = *(v7 + 272);
      v166 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_126;
      }

      *(v7 + 272) = v166;
      (result)();

      (*(*v1 + 120))(v171, v10);
      v164 = v171[5];

      if (v164 != 1)
      {
        goto LABEL_108;
      }

      (*(*v1 + 96))(v6);
      v160 = v170[35];
      v161 = v170[36];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v170);
      v162 = (*(*v1 + 136))();
      *(v11 + 16) = v160;
      *(v11 + 24) = v161;

      v162();
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ListeningModeV2", 0xFuLL, 1);
      v163 = (*(*v1 + 136))();
      *v13 = v12;

      v14 = v163();
      result = (*(*v1 + 160))(v14);
      break;
    case 2:
      v158 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v158 + 112))(&v186);
      v16 = *(v15 + 392);
      v159 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_125;
      }

      *(v15 + 392) = v159;
      (result)();

      (*(*v1 + 120))(v185, v18);
      v157 = v185[5];

      if (v157 != 1)
      {
        goto LABEL_108;
      }

      (*(*v1 + 96))(v6);
      memcpy(v184, v183, sizeof(v184));
      v154 = v184[6];
      v155 = v184[7];

      v181 = v154;
      v182 = v155;
      v180 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      v156 = MEMORY[0x1DA7309E0](v181, v182, v180._countAndFlagsBits, v180._object);
      outlined destroy of String(&v180);
      outlined destroy of String(&v181);
      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v184);
      v19 = v156;
      if ((v156 & 1) == 0)
      {
        (*(*v1 + 96))();
        v150 = v173[6];
        v151 = v173[7];

        outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v173);
        v152 = (*(*v1 + 136))();
        *(v20 + 16) = v150;
        *(v20 + 24) = v151;

        v152();
        v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenV2LeftBud", 0x15uLL, 1);
        v153 = (*(*v1 + 136))();
        *v22 = v21;

        v23 = v153();
        v19 = (*(*v1 + 160))(v23);
      }

      (*(*v1 + 96))(v19);
      memcpy(__dst, v178, sizeof(__dst));
      v147 = __dst[8];
      v148 = __dst[9];

      v176 = v147;
      v177 = v148;
      v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      v149 = MEMORY[0x1DA7309E0](v176, v177, v175._countAndFlagsBits, v175._object);
      outlined destroy of String(&v175);
      outlined destroy of String(&v176);
      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(__dst);
      result = v149;
      if ((v149 & 1) == 0)
      {
        (*(*v1 + 96))();
        v143 = v174[8];
        v144 = v174[9];

        outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v174);
        v145 = (*(*v1 + 136))();
        *(v24 + 16) = v143;
        *(v24 + 24) = v144;

        v145();
        v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenV2RightBud", 0x16uLL, 1);
        v146 = (*(*v1 + 136))();
        *v26 = v25;

        v27 = v146();
        result = (*(*v1 + 160))(v27);
      }

      break;
    case 3:
      v141 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v141 + 112))(&v187);
      v29 = *(v28 + 112);
      v142 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_124;
      }

      *(v28 + 112) = v142;
      (result)();

      goto LABEL_108;
    case 4:
      v139 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v139 + 112))(&v188);
      v32 = *(v31 + 24);
      v140 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_123;
      }

      *(v31 + 24) = v140;
      (result)();

      goto LABEL_108;
    case 5:
      v137 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v137 + 112))(&v189);
      v35 = *(v34 + 248);
      v138 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_122;
      }

      *(v34 + 248) = v138;
      (result)();

      goto LABEL_108;
    case 6:
      v135 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v135 + 112))(&v190);
      v38 = *(v37 + 432);
      v136 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_121;
      }

      *(v37 + 432) = v136;
      (result)();

      goto LABEL_108;
    case 7:
      v133 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v133 + 112))(&v191);
      v41 = *(v40 + 320);
      v134 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_120;
      }

      *(v40 + 320) = v134;
      (result)();

      goto LABEL_108;
    case 8:
      v131 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v131 + 112))(&v192);
      v44 = *(v43 + 368);
      v132 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_119;
      }

      *(v43 + 368) = v132;
      (result)();

      goto LABEL_108;
    case 9:
      v129 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v129 + 112))(&v193);
      v47 = *(v46 + 216);
      v130 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_118;
      }

      *(v46 + 216) = v130;
      (result)();

      goto LABEL_108;
    case 10:
      v127 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v127 + 112))(&v194);
      v50 = *(v49 + 472);
      v128 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_117;
      }

      *(v49 + 472) = v128;
      (result)();

      goto LABEL_108;
    case 11:
    case 12:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      return result;
    case 13:
      v125 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v125 + 112))(&v195);
      v53 = *(v52 + 104);
      v126 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_116;
      }

      *(v52 + 104) = v126;
      (result)();

      goto LABEL_108;
    case 14:
      v123 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v123 + 112))(&v196);
      v56 = *(v55 + 240);
      v124 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_115;
      }

      *(v55 + 240) = v124;
      (result)();

      goto LABEL_108;
    case 15:
      v109 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v109 + 112))(&v203);
      v74 = *(v73 + 456);
      v110 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_112;
      }

      *(v73 + 456) = v110;
      (result)();

      goto LABEL_108;
    case 16:
      v111 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v111 + 112))(&v202);
      if (__OFADD__(*v71, 1))
      {
        goto LABEL_113;
      }

      ++*v71;
      (result)();

      goto LABEL_108;
    case 17:
      v121 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v121 + 112))(&v200);
      v59 = *(v58 + 192);
      v122 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_114;
      }

      *(v58 + 192) = v122;
      (result)();

      (*(*v1 + 96))(v61);
      memcpy(v201, v199, sizeof(v201));
      v6 = v201;
      v120 = v201[43];
      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v201);
      if (!v120)
      {
        goto LABEL_108;
      }

      (*(*v1 + 96))();
      v112 = v198[44];
      v113 = v198[45];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v198);
      v114 = (*(*v1 + 136))();
      *(v62 + 16) = v112;
      *(v62 + 24) = v113;

      v114();
      v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MuteCall", 8uLL, 1);
      v115 = (*(*v1 + 136))();
      *v64 = v63;

      v65 = v115();
      v66 = (*(*v1 + 160))(v65);
      (*(*v1 + 96))(v66);
      v116 = v197[25];
      v117 = v197[26];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v197);
      v118 = (*(*v1 + 136))();
      *(v67 + 16) = v116;
      *(v67 + 24) = v117;

      v118();
      v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EndCall", 7uLL, 1);
      v119 = (*(*v1 + 136))();
      *v69 = v68;

      v70 = v119();
      result = (*(*v1 + 160))(v70);
      break;
    case 18:
      v107 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v107 + 112))(&v204);
      v77 = *(v76 + 480);
      v108 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_111;
      }

      *(v76 + 480) = v108;
      (result)();

LABEL_108:
      result = (*(*v1 + 168))(v6);
      break;
    case 19:
      v105 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v105 + 112))(&v206);
      v80 = *(v79 + 504);
      v106 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_110;
      }

      *(v79 + 504) = v106;
      (result)();

      (*(*v1 + 96))(v82);
      v101 = v205[64];
      v102 = v205[65];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v205);
      v103 = (*(*v1 + 136))();
      *(v83 + 16) = v101;
      *(v83 + 24) = v102;

      v103();
      v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpeechDetection", 0xFuLL, 1);
      v104 = (*(*v1 + 136))();
      *v85 = v84;

      v86 = v104();
      result = (*(*v1 + 160))(v86);
      break;
    case 20:
      v99 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v99 + 112))(v208);
      v88 = *(v87 + 528);
      v100 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
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
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
      }

      else
      {
        *(v87 + 528) = v100;
        (result)();

        (*(*v1 + 96))(v90);
        v95 = v207[67];
        v96 = v207[68];

        outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v207);
        v97 = (*(*v1 + 136))();
        *(v91 + 16) = v95;
        *(v91 + 24) = v96;

        v97();
        v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AdaptiveVolume", 0xEuLL, 1);
        v98 = (*(*v1 + 136))();
        *v93 = v92;

        v94 = v98();
        result = (*(*v1 + 160))(v94);
      }

      break;
    default:
      v209 = result;
      v6 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_108;
  }

  return result;
}

Swift::Void __swiftcall HPSDeviceAnalytics.sendEventV2()()
{
  v11 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings.FeatureInfo", 0x27uLL, 1)._countAndFlagsBits;
  v3 = MEMORY[0x1DA730940](countAndFlagsBits);

  v9 = partial apply for closure #1 in HPSDeviceAnalytics.sendEventV2();
  v10 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = 0;
  v7 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v8 = &block_descriptor_1;
  v2 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v2);
  MEMORY[0x1E69E5920](v3);
}

uint64_t closure #1 in HPSDeviceAnalytics.sendEventV2()(uint64_t a1)
{
  v11[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureChangeCount", 0x12uLL, 1);
  type metadata accessor for NSNumber();
  v6[1]._countAndFlagsBits = NSNumber.init(integerLiteral:)(1).super.super.isa;
  *(v6 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureName", 0xBuLL, 1);
  (*(*a1 + 120))(v11);
  v3 = v11[0];
  v8 = v11[1];

  v6[2]._object = MEMORY[0x1DA730940](v3, v8);
  v6[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureValue", 0xCuLL, 1);
  (*(*a1 + 120))(v10);
  v5 = v10[2];
  v7 = v10[3];

  v6[4]._countAndFlagsBits = MEMORY[0x1DA730940](v5, v7);
  *(v6 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphonePID", 0xCuLL, 1);
  (*(*a1 + 120))(&v9);
  v6[5]._object = Int._bridgeToObjectiveC()().super.super.isa;
  _finalizeUninitializedArray<A>(_:)();

  type metadata accessor for NSObject();
  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall HPSDeviceAnalytics.sendEvent()()
{
  v13 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1)._countAndFlagsBits;
  v3 = MEMORY[0x1DA730940](countAndFlagsBits);

  v11 = partial apply for closure #1 in HPSDeviceAnalytics.sendEvent();
  v12 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = 0;
  v9 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v10 = &block_descriptor_49;
  v2 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v2);
  MEMORY[0x1E69E5920](v3);
  HPSDeviceAnalytics.headphoneFeatureList.init()(&v5);
  memcpy(__dst, &v5, sizeof(__dst));
  memcpy(v4, __dst, sizeof(v4));
  (*(*v0 + 104))(v4);
}

uint64_t closure #1 in HPSDeviceAnalytics.sendEvent()(uint64_t a1)
{
  v25 = MEMORY[0x1EEE9AC00](a1);
  v97 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CaseSound", 9uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v98, v96, sizeof(v98));
  v27[1]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CaseSoundValue", 0xEuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v99, v95, sizeof(v99));
  v3 = v99[1];
  v50 = v99[2];

  v27[2]._object = MEMORY[0x1DA730940](v3, v50);
  v27[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CrownRotation", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v100, v94, sizeof(v100));
  v27[4]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CrownRotationValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v101, v93, sizeof(v101));
  v4 = v101[4];
  v49 = v101[5];

  v27[5]._object = MEMORY[0x1DA730940](v4, v49);
  v27[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenLeftBudValue", 0x18uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v102, v92, sizeof(v102));
  v5 = v102[6];
  v48 = v102[7];

  v27[7]._countAndFlagsBits = MEMORY[0x1DA730940](v5, v48);
  *(v27 + 120) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenRightBudValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v103, v91, sizeof(v103));
  v6 = v103[8];
  v47 = v103[9];

  v27[8]._object = MEMORY[0x1DA730940](v6, v47);
  v27[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenSingleValue", 0x17uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v104, v90, sizeof(v104));
  v7 = v104[10];
  v46 = v104[11];

  v27[10]._countAndFlagsBits = MEMORY[0x1DA730940](v7, v46);
  *(v27 + 168) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DeviceName", 0xAuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v105, v89, sizeof(v105));
  v27[11]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Disconnect", 0xAuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v106, v88, sizeof(v106));
  v27[13]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 216) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DoubleTap", 9uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v107, v87, sizeof(v107));
  v27[14]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DoubleTapLeftValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v108, v86, sizeof(v108));
  v8 = v108[15];
  v45 = v108[16];

  v27[16]._countAndFlagsBits = MEMORY[0x1DA730940](v8, v45);
  *(v27 + 264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DoubleTapRightValue", 0x13uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v109, v85, sizeof(v109));
  v9 = v109[17];
  v44 = v109[18];

  v27[17]._object = MEMORY[0x1DA730940](v9, v44);
  v27[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EarTipFitTest", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v110, v84, sizeof(v110));
  v27[19]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 312) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EarTipFitTestValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v111, v83, sizeof(v111));
  v10 = v111[22];
  v43 = v111[23];

  v27[20]._object = MEMORY[0x1DA730940](v10, v43);
  v27[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EntryPoint", 0xAuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v112, v82, sizeof(v112));
  v11 = v112[19];
  v42 = v112[20];

  v27[22]._countAndFlagsBits = MEMORY[0x1DA730940](v11, v42);
  *(v27 + 360) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EndCallGesture", 0xEuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v113, v81, sizeof(v113));
  v27[23]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EndCallGestureValue", 0x13uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v114, v80, sizeof(v114));
  v12 = v114[25];
  v41 = v114[26];

  v27[25]._countAndFlagsBits = MEMORY[0x1DA730940](v12, v41);
  *(v27 + 408) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FindMyNetwork", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v115, v79, sizeof(v115));
  v27[26]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FindMyNetworkValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v116, v78, sizeof(v116));
  v13 = v116[28];
  v40 = v116[29];

  v27[28]._countAndFlagsBits = MEMORY[0x1DA730940](v13, v40);
  *(v27 + 456) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ForgetDevice", 0xCuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v117, v77, sizeof(v117));
  v27[29]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InEarOnHeadDetection", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v118, v76, sizeof(v118));
  v27[31]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 504) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InEarOnHeadDetectionValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v119, v75, sizeof(v119));
  v14 = v119[32];
  v39 = v119[33];

  v27[32]._object = MEMORY[0x1DA730940](v14, v39);
  v27[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ListeningMode", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v120, v74, sizeof(v120));
  v27[34]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 552) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ListeningModeValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v121, v73, sizeof(v121));
  v15 = v121[35];
  v38 = v121[36];

  v27[35]._object = MEMORY[0x1DA730940](v15, v38);
  v27[36] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MagneticEarbudDetect", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v122, v72, sizeof(v122));
  v27[37]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 600) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MagneticEarbudDetectValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v123, v71, sizeof(v123));
  v16 = v123[38];
  v37 = v123[39];

  v27[38]._object = MEMORY[0x1DA730940](v16, v37);
  v27[39] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MicrophoneSwitch", 0x10uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v124, v70, sizeof(v124));
  v27[40]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 648) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MicrophoneSwitchValue", 0x15uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v125, v69, sizeof(v125));
  v17 = v125[41];
  v36 = v125[42];

  v27[41]._object = MEMORY[0x1DA730940](v17, v36);
  v27[42] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MuteControlGesture", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v126, v68, sizeof(v126));
  v27[43]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 696) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MuteControlGestureValue", 0x17uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v127, v67, sizeof(v127));
  v18 = v127[44];
  v35 = v127[45];

  v27[44]._object = MEMORY[0x1DA730940](v18, v35);
  v27[45] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OptimizedBudCharging", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v128, v66, sizeof(v128));
  v27[46]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 744) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OptimizedBudChargingValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v129, v65, sizeof(v129));
  v19 = v129[47];
  v34 = v129[48];

  v27[47]._object = MEMORY[0x1DA730940](v19, v34);
  v27[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressHold", 9uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v130, v64, sizeof(v130));
  v27[49]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 792) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressHoldLeftBudValue", 0x15uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v131, v63, sizeof(v131));
  v20 = v131[50];
  v33 = v131[51];

  v27[50]._object = MEMORY[0x1DA730940](v20, v33);
  v27[51] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressHoldRightBudValue", 0x16uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v132, v62, sizeof(v132));
  v21 = v132[52];
  v32 = v132[53];

  v27[52]._countAndFlagsBits = MEMORY[0x1DA730940](v21, v32);
  *(v27 + 840) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SmartRouting", 0xCuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v133, v61, sizeof(v133));
  v27[53]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[54] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SmartRoutingValue", 0x11uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v134, v60, sizeof(v134));
  v22 = v134[55];
  v31 = v134[56];

  v27[55]._countAndFlagsBits = MEMORY[0x1DA730940](v22, v31);
  *(v27 + 888) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpatialAudioProfile", 0x13uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v135, v59, sizeof(v135));
  v27[56]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[57] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpatialAudioTutorial", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v136, v58, sizeof(v136));
  v27[58]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 936) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ViewInFindMy", 0xCuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v137, v57, sizeof(v137));
  v27[59]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[60] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConversationBoost", 0x11uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v138, v56, sizeof(v138));
  v27[61]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 984) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConversationBoostValue", 0x16uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v139, v55, sizeof(v139));
  v23 = v139[61];
  v30 = v139[62];

  v27[62]._object = MEMORY[0x1DA730940](v23, v30);
  v27[63] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpeechDetection", 0xFuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v140, v54, sizeof(v140));
  v27[64]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 1032) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpeechDetectionValue", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v141, v53, sizeof(v141));
  v24 = v141[64];
  v29 = v141[65];

  v27[65]._object = MEMORY[0x1DA730940](v24, v29);
  v27[66] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AutomaticallyAdjustVolume", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v142, v52, sizeof(v142));
  v27[67]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 1080) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AutomaticallyAdjustVolumeValue", 0x1EuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v143, v51, sizeof(v143));
  v26 = v143[67];
  v28 = v143[68];

  v27[68]._object = MEMORY[0x1DA730940](v26, v28);
  _finalizeUninitializedArray<A>(_:)();

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v143);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v142);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v141);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v140);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v139);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v138);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v137);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v136);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v135);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v134);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v133);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v132);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v131);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v130);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v129);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v128);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v127);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v126);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v125);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v124);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v123);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v122);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v121);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v120);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v119);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v118);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v117);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v116);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v115);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v114);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v113);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v112);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v111);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v110);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v109);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v108);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v107);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v106);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v105);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v104);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v103);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v102);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v101);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v100);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v99);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v98);
  type metadata accessor for NSObject();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t HPSDeviceAnalytics.deinit()
{
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList((v0 + 16));
  outlined destroy of HPSDeviceAnalytics.keyValuePair(v0 + 568);
  return v2;
}

uint64_t HPSDeviceAnalytics.updateListeningModeForSyncSelection(mode:)(void *a1)
{
  v24 = [a1 listeningMode];
  switch(v24)
  {
    case 1u:
      v22 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
      v21 = (*(*v22 + 112))();
      *(v2 + 280) = v1;

      v21();

      break;
    case 2u:
      v20 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseCancellation", 0x11uLL, 1);
      v19 = (*(*v20 + 112))();
      *(v4 + 280) = v3;

      v19();

      break;
    case 3u:
      v18 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Transparency", 0xCuLL, 1);
      v17 = (*(*v18 + 112))();
      *(v6 + 280) = v5;

      v17();

      break;
    case 4u:
      v16 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
      v15 = (*(*v16 + 112))();
      *(v8 + 280) = v7;

      v15();

      break;
  }

  v13 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

  v12 = [a1 productID];
  v9 = (*(*v13 + 136))();
  *(v10 + 32) = v12;
  v9();

  v14 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

  (*(*v14 + 152))(1);
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CBProductID(uint64_t a1@<X8>)
{
  CBProductID.init(rawValue:)();
  *a1 = v1;
  *(a1 + 4) = 0;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for HPSDeviceAnalytics.keyValuePair(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HPSDeviceAnalytics.keyValuePair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HPSDeviceAnalytics.headphoneFeatureList(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 552))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *storeEnumTagSinglePayload for HPSDeviceAnalytics.headphoneFeatureList(void *result, int a2, int a3)
{
  v3 = result + 69;
  if (a2 < 0)
  {
    result[63] = 0;
    result[62] = 0;
    result[61] = 0;
    result[60] = 0;
    result[59] = 0;
    result[58] = 0;
    result[57] = 0;
    result[56] = 0;
    result[55] = 0;
    result[54] = 0;
    result[53] = 0;
    result[52] = 0;
    result[51] = 0;
    result[50] = 0;
    result[49] = 0;
    result[48] = 0;
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[67] = 0;
    result[66] = 0;
    result[65] = 0;
    result[64] = 0;
    result[68] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[2] = (a2 - 1);
    }
  }

  return result;
}

uint64_t HeadphoneDeviceDataReplayable.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v8 = a2;
  v7[1] = a3;
  v14 = 0;
  v13 = 0;
  v15 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v8);
  v12 = v7 - v9;
  v14 = v10;
  v13 = v3;
  (*(v5 + 280))(v4);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  Hasher.combine<A>(_:)();
  return outlined destroy of UUID?(v12);
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t HeadphoneDeviceDataReplayable.description.getter(uint64_t a1, uint64_t (**a2)(void))
{
  v65 = 0;
  v66 = a1;
  v63 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v64 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\tclass: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v62[2] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v62[0] = String.init<A>(describing:)();
  v62[1] = v4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v62);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tproductID:", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v5);

  v60[2] = a2[5](a1);
  v61 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v60[0] = String.init<A>(describing:)();
  v60[1] = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v60);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateCase:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v8);

  v59 = a2[8](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  v58[0] = String.init<A>(describing:)();
  v58[1] = v9;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v58);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateLeft:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v10);

  v57 = a2[11](a1);
  v56[0] = String.init<A>(describing:)();
  v56[1] = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v56);
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateRight:", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v12);

  v55 = a2[14](a1);
  v54[0] = String.init<A>(describing:)();
  v54[1] = v13;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v54);
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateMain:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v14);

  v53 = a2[17](a1);
  v52[0] = String.init<A>(describing:)();
  v52[1] = v15;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v52);
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelCase:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v16);

  v51 = a2[20](a1);
  v49 = v51;
  v50 = BYTE4(v51) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
  v48[0] = String.init<A>(describing:)();
  v48[1] = v17;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v48);
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelLeft:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v18);

  v47 = a2[23](a1);
  v45 = v47;
  v46 = BYTE4(v47) & 1;
  v44[0] = String.init<A>(describing:)();
  v44[1] = v19;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v44);
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelRight:", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v20);

  v43 = a2[26](a1);
  v41 = v43;
  v42 = BYTE4(v43) & 1;
  v40[0] = String.init<A>(describing:)();
  v40[1] = v21;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v40);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelMain:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v22);

  v39 = a2[29](a1);
  v37 = v39;
  v38 = BYTE4(v39) & 1;
  v36[0] = String.init<A>(describing:)();
  v36[1] = v23;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v36);
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tdeviceColor:", 0xEuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v24);

  v35 = a2[32](a1);
  v33 = v35;
  v34 = BYTE4(v35) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  v32[0] = String.init<A>(describing:)();
  v32[1] = v25;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v32);
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v26);

  v31 = v63;
  v30 = v64;

  outlined destroy of DefaultStringInterpolation(&v63);
  return MEMORY[0x1DA7309B0](v31, v30);
}

uint64_t HeadphoneDeviceDataReplayable.customizableKeyPaths.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v1;
  v2 = ReplayData.kProductIdKey.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v7->_countAndFlagsBits = v5;
  v7->_object = v6;
  v7[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateCase", 0x10uLL, 1);
  v7[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateLeft", 0x10uLL, 1);
  v7[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateRight", 0x11uLL, 1);
  v7[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateMain", 0x10uLL, 1);
  v7[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelCase", 0x10uLL, 1);
  v7[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelLeft", 0x10uLL, 1);
  v7[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelRight", 0x11uLL, 1);
  v7[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelMain", 0x10uLL, 1);
  v7[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceColor", 0xBuLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  lazy protocol witness table accessor for type [String?] and conformance [A]();
  Sequence.compactMap<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = Set.init<A>(_:)();

  return v4;
}

__int128 *ReplayData.kProductIdKey.unsafeMutableAddressor()
{
  if (one-time initialization token for kProductIdKey != -1)
  {
    swift_once();
  }

  return &static ReplayData.kProductIdKey;
}

void closure #1 in HeadphoneDeviceDataReplayable.customizableKeyPaths.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  *(&v3 + 1) = a1[1];
  v5 = *a1;
  *&v3 = v5;
  v6 = *(&v3 + 1);

  v4 = v3;
  if (*(&v3 + 1))
  {
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (*(&v4 + 1))
    {
      outlined destroy of String?(&v4);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [String?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t static ReplayData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v31 = a2;
  v3 = v2;
  v4 = v20;
  v30 = v3;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v38 = type metadata accessor for UUID();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v21 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v22 = &v12[-v21];
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12[-v21]);
  v24 = &v12[-v23];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v25 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v39 = &v12[-v25];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v12[-v26];
  v28 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12[-v26]);
  v35 = &v12[-v28];
  v29 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12[-v28]);
  v33 = &v12[-v29];
  v44 = v4;
  v43 = v9;
  v42 = v30;
  v10 = (*(*v4 + 448))(v4);
  (*(*v31 + 448))(v10);
  v34 = *(v32 + 48);
  outlined init with copy of UUID?(v33, v39);
  outlined init with copy of UUID?(v35, &v39[v34]);
  v40 = *(v36 + 48);
  v41 = v36 + 48;
  if (v40(v39, 1, v38) == 1)
  {
    if (v40(&v39[v34], 1, v38) != 1)
    {
      goto LABEL_8;
    }

    outlined destroy of UUID?(v39);
    v19 = 1;
  }

  else
  {
    outlined init with copy of UUID?(v39, v27);
    if (v40(&v39[v34], 1, v38) == 1)
    {
      (*(v36 + 8))(v27, v38);
LABEL_8:
      outlined destroy of (UUID?, UUID?)(v39);
      v19 = 0;
      goto LABEL_7;
    }

    v15 = *(v36 + 32);
    v14 = v36 + 32;
    v15(v24, v27, v38);
    v15(v22, &v39[v34], v38);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v36 + 8);
    v16 = v36 + 8;
    v17(v22, v38);
    v17(v24, v38);
    outlined destroy of UUID?(v39);
    v19 = v18;
  }

LABEL_7:
  v13 = v19;
  outlined destroy of UUID?(v35);
  outlined destroy of UUID?(v33);
  return v13 & 1;
}

uint64_t one-time initialization function for kProductIdKey()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("productId", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static ReplayData.kProductIdKey = v1;
  return result;
}

void *outlined init with copy of UUID?(const void *a1, void *a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of (UUID?, UUID?)(uint64_t a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t static ReplayData.kProductIdKey.getter()
{
  v1 = *ReplayData.kProductIdKey.unsafeMutableAddressor();

  return v1;
}

uint64_t key path getter for ReplayData.productId : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 184))(v2);
  *(a2 + 8) = v3 & 1;
}

uint64_t key path setter for ReplayData.productId : ReplayData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *a2;

  (*(*v4 + 192))(v3, v5 & 1);
}

uint64_t ReplayData.productId.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.productId.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateCase : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 208))(v2);
}

uint64_t key path setter for ReplayData.batteryStateCase : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 216))(v3);
}

uint64_t ReplayData.batteryStateCase.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 25);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateCase.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 25) = a1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateLeft : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 232))(v2);
}

uint64_t key path setter for ReplayData.batteryStateLeft : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 240))(v3);
}

uint64_t ReplayData.batteryStateLeft.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 26);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateLeft.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 26) = a1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateRight : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 256))(v2);
}

uint64_t key path setter for ReplayData.batteryStateRight : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 264))(v3);
}

uint64_t ReplayData.batteryStateRight.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 27);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateRight.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 27) = a1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateMain : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 280))(v2);
}

uint64_t key path setter for ReplayData.batteryStateMain : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 288))(v3);
}

uint64_t ReplayData.batteryStateMain.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 28);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateMain.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 28) = a1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelCase()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelCase : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 304))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelCase : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 312))(v6);
}

uint64_t ReplayData.batteryLevelCase.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelCase.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 32) = v3;
  *(v1 + 36) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelLeft()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelLeft : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 328))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelLeft : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 336))(v6);
}

uint64_t ReplayData.batteryLevelLeft.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 44);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelLeft.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 40) = v3;
  *(v1 + 44) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelRight()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelRight : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 352))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelRight : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 360))(v6);
}

uint64_t ReplayData.batteryLevelRight.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelRight.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 48) = v3;
  *(v1 + 52) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelMain()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelMain : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 376))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelMain : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 384))(v6);
}

uint64_t ReplayData.batteryLevelMain.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  v3 = *(v0 + 60);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelMain.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 56) = v3;
  *(v1 + 60) = v4 & 1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.deviceName : ReplayData@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 400))(v2);
  a2[1] = v3;
}

uint64_t key path setter for ReplayData.deviceName : ReplayData(void *a1, uint64_t *a2)
{
  outlined init with copy of String?(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 408))(v4, v6);
}

uint64_t ReplayData.deviceName.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 64);

  swift_endAccess();
  return v2;
}

uint64_t ReplayData.deviceName.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.deviceColor()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.deviceColor : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 424))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.deviceColor : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 432))(v6);
}

uint64_t ReplayData.deviceColor.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v0 + 84);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.deviceColor.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 80) = v3;
  *(v1 + 84) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.randomHexAddress@<X0>(uint64_t a1@<X8>)
{
  UUID.init()();
  v1 = type metadata accessor for UUID();
  return (*(*(v1 - 8) + 56))(a1, 0, 1);
}

uint64_t key path getter for ReplayData.randomHexAddress : ReplayData@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v6;
  v7 = *MEMORY[0x1EEE9AC00](v5);

  v11 = v7;
  v10 = v7;
  (*(*v7 + 448))(v2);
  outlined init with take of UUID?(v8, v9);
}

uint64_t key path setter for ReplayData.randomHexAddress : ReplayData(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v4 - v6;
  outlined init with copy of UUID?(v2, &v4 - v6);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 456))(v8);
}

uint64_t ReplayData.randomHexAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
  swift_beginAccess();
  outlined init with copy of UUID?(v3, a1);
  return swift_endAccess();
}

uint64_t ReplayData.randomHexAddress.setter(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v9 = v1;
  outlined init with copy of UUID?(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
  v6 = &v8;
  swift_beginAccess();
  outlined assign with take of UUID?(v4, v5);
  swift_endAccess();
  return outlined destroy of UUID?(v7);
}

void *outlined assign with take of UUID?(const void *a1, void *a2)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t property wrapper backing initializer of ReplayData.listeners@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy7Combine14AnyCancellableCGMd, &_sShy7Combine14AnyCancellableCGMR);
  CodableIgnored.init(wrappedValue:)(v6, v2, a2);
}

uint64_t ReplayData.listeners.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t ReplayData.listeners.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t variable initialization expression of ReplayData._listeners()
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  return Set.init()();
}

uint64_t ReplayData._listeners.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  v5 = *v3;

  result = swift_endAccess();
  *a1 = v5;
  return result;
}

uint64_t ReplayData._listeners.setter(uint64_t *a1)
{
  v4 = *a1;

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  *v3 = v4;

  swift_endAccess();
}

uint64_t ReplayData.init()()
{
  v8 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 25) = 2;
  *(v0 + 26) = 2;
  *(v0 + 27) = 2;
  *(v0 + 28) = 2;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 60) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 84) = 1;
  v4 = v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress;
  UUID.init()();
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 56))(v4, 0, 1);
  v5 = OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  v2 = Set.init()();
  property wrapper backing initializer of ReplayData.listeners(v2, &v7);
  result = v6;
  *(v6 + v5) = v7;
  return result;
}

uint64_t ReplayData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;

  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("productId", 9uLL, 1);
  v54 = a1;
  v55 = a2;
  v19 = MEMORY[0x1DA7309E0](v56._countAndFlagsBits, v56._object, a1, a2);
  outlined destroy of String(&v56);
  if (v19)
  {

    v59 = 0;
    v16 = 0;
LABEL_28:

    return v16;
  }

  v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateCase", 0x10uLL, 1);
  v51 = a1;
  v52 = a2;
  v15 = MEMORY[0x1DA7309E0](v53._countAndFlagsBits, v53._object, a1, a2);
  outlined destroy of String(&v53);
  if (v15)
  {

    v59 = 1;
    v16 = 1;
    goto LABEL_28;
  }

  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateLeft", 0x10uLL, 1);
  v48 = a1;
  v49 = a2;
  v14 = MEMORY[0x1DA7309E0](v50._countAndFlagsBits, v50._object, a1, a2);
  outlined destroy of String(&v50);
  if (v14)
  {

    v59 = 2;
    v16 = 2;
    goto LABEL_28;
  }

  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateRight", 0x11uLL, 1);
  v45 = a1;
  v46 = a2;
  v13 = MEMORY[0x1DA7309E0](v47._countAndFlagsBits, v47._object, a1, a2);
  outlined destroy of String(&v47);
  if (v13)
  {

    v59 = 3;
    v16 = 3;
    goto LABEL_28;
  }

  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateMain", 0x10uLL, 1);
  v42 = a1;
  v43 = a2;
  v12 = MEMORY[0x1DA7309E0](v44._countAndFlagsBits, v44._object, a1, a2);
  outlined destroy of String(&v44);
  if (v12)
  {

    v59 = 4;
    v16 = 4;
    goto LABEL_28;
  }

  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelCase", 0x10uLL, 1);
  v39 = a1;
  v40 = a2;
  v11 = MEMORY[0x1DA7309E0](v41._countAndFlagsBits, v41._object, a1, a2);
  outlined destroy of String(&v41);
  if (v11)
  {

    v59 = 5;
    v16 = 5;
    goto LABEL_28;
  }

  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelLeft", 0x10uLL, 1);
  v36 = a1;
  v37 = a2;
  v10 = MEMORY[0x1DA7309E0](v38._countAndFlagsBits, v38._object, a1, a2);
  outlined destroy of String(&v38);
  if (v10)
  {

    v59 = 6;
    v16 = 6;
    goto LABEL_28;
  }

  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelRight", 0x11uLL, 1);
  v33 = a1;
  v34 = a2;
  v9 = MEMORY[0x1DA7309E0](v35._countAndFlagsBits, v35._object, a1, a2);
  outlined destroy of String(&v35);
  if (v9)
  {

    v59 = 7;
    v16 = 7;
    goto LABEL_28;
  }

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelMain", 0x10uLL, 1);
  v30 = a1;
  v31 = a2;
  v8 = MEMORY[0x1DA7309E0](v32._countAndFlagsBits, v32._object, a1, a2);
  outlined destroy of String(&v32);
  if (v8)
  {

    v59 = 8;
    v16 = 8;
    goto LABEL_28;
  }

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceName", 0xAuLL, 1);
  v27 = a1;
  v28 = a2;
  v7 = MEMORY[0x1DA7309E0](v29._countAndFlagsBits, v29._object, a1, a2);
  outlined destroy of String(&v29);
  if (v7)
  {

    v59 = 9;
    v16 = 9;
    goto LABEL_28;
  }

  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceColor", 0xBuLL, 1);
  v24 = a1;
  v25 = a2;
  v6 = MEMORY[0x1DA7309E0](v26._countAndFlagsBits, v26._object, a1, a2);
  outlined destroy of String(&v26);
  if (v6)
  {

    v59 = 10;
    v16 = 10;
    goto LABEL_28;
  }

  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("randomHexAddress", 0x10uLL, 1);
  v21 = a1;
  v22 = a2;
  v5 = MEMORY[0x1DA7309E0](v23._countAndFlagsBits, v23._object, a1, a2);
  outlined destroy of String(&v23);
  if (v5)
  {

    v59 = 11;
    v16 = 11;
    goto LABEL_28;
  }

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("listeners", 9uLL, 1);
  v4 = MEMORY[0x1DA7309E0](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String(&v20);
  if (v4)
  {

    v59 = 12;
    v16 = 12;
    goto LABEL_28;
  }

  return 13;
}

BOOL static ReplayData.CodingKeys.== infix(_:_:)(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      v4 = 1;
      break;
    case 2:
      v4 = 2;
      break;
    case 3:
      v4 = 3;
      break;
    case 4:
      v4 = 4;
      break;
    case 5:
      v4 = 5;
      break;
    case 6:
      v4 = 6;
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 10:
      v4 = 10;
      break;
    case 11:
      v4 = 11;
      break;
    case 12:
      v4 = 12;
      break;
    default:
      v4 = 0;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    default:
      v3 = 0;
      break;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReplayData.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateCase", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateLeft", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateRight", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateMain", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelCase", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelLeft", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelRight", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelMain", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceName", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceColor", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("randomHexAddress", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("listeners", 9uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("productId", 9uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReplayData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ReplayData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ReplayData.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ReplayData.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t ReplayData.deinit()
{
  outlined destroy of String?(v0 + 64);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
  outlined destroy of CodableIgnored<Set<AnyCancellable>>((v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners));
  return v2;
}

uint64_t ReplayData.encode(to:)(uint64_t a1)
{
  v91 = v124;
  v92 = a1;
  v126 = 0;
  v125 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v89 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v90 = v43 - v89;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16HeadphoneManager10ReplayDataC10CodingKeys33_E0CD115AC4CBFD655F45F736CCCB4A57LLOGMd, &_ss22KeyedEncodingContainerVy16HeadphoneManager10ReplayDataC10CodingKeys33_E0CD115AC4CBFD655F45F736CCCB4A57LLOGMR);
  v93 = *(v100 - 8);
  v94 = v100 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v92);
  v99 = v43 - v95;
  *(v4 + 48) = v3;
  *(v4 + 40) = v1;
  v96 = v3[3];
  v97 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v96);
  lazy protocol witness table accessor for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys();
  v5 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v98 + 184))(v5);
  v6 = v101;
  v124[39] = 0;
  v7 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v102 = v6;
  v103 = v6;
  if (v6)
  {
    v54 = v103;
    result = (*(v93 + 8))(v99, v100);
    v55 = v54;
  }

  else
  {
    (*(*v98 + 208))(v7);
    v8 = v102;
    v124[38] = 1;
    v9 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v87 = v8;
    v88 = v8;
    if (v8)
    {
      v53 = v88;
      result = (*(v93 + 8))(v99, v100);
      v55 = v53;
    }

    else
    {
      (*(*v98 + 232))(v9);
      v10 = v87;
      v124[37] = 2;
      v11 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v85 = v10;
      v86 = v10;
      if (v10)
      {
        v52 = v86;
        result = (*(v93 + 8))(v99, v100);
        v55 = v52;
      }

      else
      {
        (*(*v98 + 256))(v11);
        v12 = v85;
        v124[36] = 3;
        v13 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        v83 = v12;
        v84 = v12;
        if (v12)
        {
          v51 = v84;
          result = (*(v93 + 8))(v99, v100);
          v55 = v51;
        }

        else
        {
          (*(*v98 + 280))(v13);
          v14 = v83;
          v124[35] = 4;
          v15 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          v81 = v14;
          v82 = v14;
          if (v14)
          {
            v50 = v82;
            result = (*(v93 + 8))(v99, v100);
            v55 = v50;
          }

          else
          {
            v16 = (*(*v98 + 304))(v15);
            v17 = v91;
            v18 = v81;
            v91[3] = v16;
            v19 = *(v17 + 6);
            v20 = v124[28];
            v124[23] = 5;
            *(v17 + 2) = v19;
            v124[12] = v20 & 1;
            v21 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v79 = v18;
            v80 = v18;
            if (v18)
            {
              v49 = v80;
              result = (*(v93 + 8))(v99, v100);
              v55 = v49;
            }

            else
            {
              v22 = (*(*v98 + 328))(v21);
              v23 = v91;
              v24 = v79;
              *v91 = v22;
              v25 = *v23;
              v123 = 6;
              v121 = v25;
              v122 = v124[4] & 1;
              v26 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
              v77 = v24;
              v78 = v24;
              if (v24)
              {
                v48 = v78;
                result = (*(v93 + 8))(v99, v100);
                v55 = v48;
              }

              else
              {
                v27 = (*(*v98 + 352))(v26);
                v28 = v77;
                v120 = v27;
                v119 = 7;
                v117 = v27;
                v118 = BYTE4(v27) & 1;
                v29 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                v75 = v28;
                v76 = v28;
                if (v28)
                {
                  v47 = v76;
                  result = (*(v93 + 8))(v99, v100);
                  v55 = v47;
                }

                else
                {
                  v30 = (*(*v98 + 376))(v29);
                  v31 = v75;
                  v116 = v30;
                  v115 = 8;
                  v113 = v30;
                  v114 = BYTE4(v30) & 1;
                  v32 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                  v73 = v31;
                  v74 = v31;
                  if (v31)
                  {
                    v46 = v74;
                    result = (*(v93 + 8))(v99, v100);
                    v55 = v46;
                  }

                  else
                  {
                    (*(*v98 + 400))(v32);
                    v33 = v73;
                    v70 = v34;
                    v112 = 9;
                    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                    v71 = v33;
                    v72 = v33;
                    if (v33)
                    {
                      v45 = v72;

                      result = (*(v93 + 8))(v99, v100);
                      v55 = v45;
                    }

                    else
                    {
                      v35 = v98;

                      v37 = (*(*v35 + 424))(v36);
                      v38 = v71;
                      v111 = v37;
                      v110 = 10;
                      v108 = v37;
                      v109 = BYTE4(v37) & 1;
                      v39 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                      v68 = v38;
                      v69 = v38;
                      if (v38)
                      {
                        v44 = v69;
                        result = (*(v93 + 8))(v99, v100);
                        v55 = v44;
                      }

                      else
                      {
                        (*(*v98 + 448))(v39);
                        v64 = &v107;
                        v107 = 11;
                        v65 = type metadata accessor for UUID();
                        lazy protocol witness table accessor for type UUID and conformance UUID();
                        v40 = v68;
                        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                        v66 = v40;
                        v67 = v40;
                        if (v40)
                        {
                          v43[2] = v67;
                          outlined destroy of UUID?(v90);
                          return (*(v93 + 8))(v99, v100);
                        }

                        else
                        {
                          outlined destroy of UUID?(v90);
                          v56 = (v98 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
                          v57 = &v106;
                          swift_beginAccess();
                          v58 = *v56;

                          swift_endAccess();
                          v61 = &v105;
                          v105 = v58;
                          v59 = &v104;
                          v104 = 12;
                          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMd, &_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMR);
                          lazy protocol witness table accessor for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>();
                          v41 = v66;
                          KeyedEncodingContainer.encode<A>(_:forKey:)();
                          v62 = v41;
                          v63 = v41;
                          if (v41)
                          {
                            v43[1] = v63;
                          }

                          outlined destroy of CodableIgnored<Set<AnyCancellable>>(&v105);
                          return (*(v93 + 8))(v99, v100);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>;
  if (!lazy protocol witness table cache variable for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMd, &_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>;
  if (!lazy protocol witness table cache variable for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMd, &_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReplayData.hashValue.getter()
{
  type metadata accessor for ReplayData(0);
  lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  return _hashValue<A>(for:)();
}

unint64_t lazy protocol witness table accessor for type ReplayData and conformance ReplayData()
{
  v2 = lazy protocol witness table cache variable for type ReplayData and conformance ReplayData;
  if (!lazy protocol witness table cache variable for type ReplayData and conformance ReplayData)
  {
    type metadata accessor for ReplayData(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData and conformance ReplayData);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData and conformance ReplayData;
  if (!lazy protocol witness table cache variable for type ReplayData and conformance ReplayData)
  {
    type metadata accessor for ReplayData(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData and conformance ReplayData);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData and conformance ReplayData;
  if (!lazy protocol witness table cache variable for type ReplayData and conformance ReplayData)
  {
    type metadata accessor for ReplayData(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData and conformance ReplayData);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData and conformance ReplayData;
  if (!lazy protocol witness table cache variable for type ReplayData and conformance ReplayData)
  {
    type metadata accessor for ReplayData(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData and conformance ReplayData);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData and conformance ReplayData;
  if (!lazy protocol witness table cache variable for type ReplayData and conformance ReplayData)
  {
    type metadata accessor for ReplayData(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData and conformance ReplayData);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReplayData.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  v5 = ReplayData.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t ReplayData.init(from:)(void *a1)
{
  v157 = a1;
  v188 = 0;
  v187 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v144 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v145 = v47 - v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16HeadphoneManager10ReplayDataC10CodingKeys33_E0CD115AC4CBFD655F45F736CCCB4A57LLOGMd, &_ss22KeyedDecodingContainerVy16HeadphoneManager10ReplayDataC10CodingKeys33_E0CD115AC4CBFD655F45F736CCCB4A57LLOGMR);
  v147 = *(v146 - 8);
  v148 = v146 - 8;
  v149 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v157);
  v158 = v47 - v149;
  v188 = v3;
  v187 = v1;
  v154 = 0;
  *(v1 + 16) = 0;
  v150 = 1;
  *(v1 + 24) = 1;
  *(v1 + 25) = 2;
  *(v1 + 26) = 2;
  *(v1 + 27) = 2;
  *(v1 + 28) = 2;
  v151 = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 84) = 1;
  v152 = v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress;
  UUID.init()();
  v153 = type metadata accessor for UUID();
  (*(*(v153 - 8) + 56))(v152, v151, v150);
  v156 = OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners;
  v155 = type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  v4 = Set.init()();
  property wrapper backing initializer of ReplayData.listeners(v4, &v186);
  v5 = v157;
  *(v1 + v156) = v186;
  v160 = v5[3];
  v161 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v160);
  lazy protocol witness table accessor for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys();
  v6 = v159;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v162 = v6;
  v163 = v6;
  if (v6)
  {
    v60 = v163;
  }

  else
  {
    v185[31] = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v139 = 0;
    v140 = v7;
    v141 = v8;
    v142 = 0;
    v133 = v8;
    v132 = v7;
    v134 = v185;
    swift_beginAccess();
    v9 = v133;
    v10 = v143;
    *(v143 + 16) = v132;
    v135 = 1;
    *(v10 + 24) = v9 & 1;
    swift_endAccess();
    v11 = v139;
    v184[31] = v135;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v136 = v11;
    v137 = v12;
    v138 = v11;
    if (v11)
    {
      v59 = v138;
      (*(v147 + 8))(v158, v146);
      v60 = v59;
    }

    else
    {
      v127 = v137;
      v128 = v184;
      swift_beginAccess();
      *(v143 + 25) = v127;
      swift_endAccess();
      v13 = v136;
      v183[31] = 2;
      v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v129 = v13;
      v130 = v14;
      v131 = v13;
      if (v13)
      {
        v58 = v131;
        (*(v147 + 8))(v158, v146);
        v60 = v58;
      }

      else
      {
        v122 = v130;
        v123 = v183;
        swift_beginAccess();
        *(v143 + 26) = v122;
        swift_endAccess();
        v15 = v129;
        v182[31] = 3;
        v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v124 = v15;
        v125 = v16;
        v126 = v15;
        if (v15)
        {
          v57 = v126;
          (*(v147 + 8))(v158, v146);
          v60 = v57;
        }

        else
        {
          v117 = v125;
          v118 = v182;
          swift_beginAccess();
          *(v143 + 27) = v117;
          swift_endAccess();
          v17 = v124;
          v181[31] = 4;
          v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v119 = v17;
          v120 = v18;
          v121 = v17;
          if (v17)
          {
            v56 = v121;
            (*(v147 + 8))(v158, v146);
            v60 = v56;
          }

          else
          {
            v111 = v120;
            v112 = v181;
            swift_beginAccess();
            *(v143 + 28) = v111;
            swift_endAccess();
            v19 = v119;
            v180 = 5;
            v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v113 = v19;
            v179 = v20;
            v114 = v20;
            v115 = BYTE4(v20);
            v116 = v19;
            if (v19)
            {
              v55 = v116;
              (*(v147 + 8))(v158, v146);
              v60 = v55;
            }

            else
            {
              v105 = v115;
              v104 = v114;
              v106 = &v178;
              swift_beginAccess();
              v21 = v105;
              v22 = v143;
              *(v143 + 32) = v104;
              *(v22 + 36) = v21 & 1;
              swift_endAccess();
              v23 = v113;
              v177 = 6;
              v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
              v107 = v23;
              v176[3] = v24;
              v108 = v24;
              v109 = BYTE4(v24);
              v110 = v23;
              if (v23)
              {
                v54 = v110;
                (*(v147 + 8))(v158, v146);
                v60 = v54;
              }

              else
              {
                v98 = v109;
                v97 = v108;
                v99 = v176;
                swift_beginAccess();
                v25 = v98;
                v26 = v143;
                *(v143 + 40) = v97;
                *(v26 + 44) = v25 & 1;
                swift_endAccess();
                v27 = v107;
                v175 = 7;
                v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                v100 = v27;
                v174[3] = v28;
                v101 = v28;
                v102 = BYTE4(v28);
                v103 = v27;
                if (v27)
                {
                  v53 = v103;
                  (*(v147 + 8))(v158, v146);
                  v60 = v53;
                }

                else
                {
                  v91 = v102;
                  v90 = v101;
                  v92 = v174;
                  swift_beginAccess();
                  v29 = v91;
                  v30 = v143;
                  *(v143 + 48) = v90;
                  *(v30 + 52) = v29 & 1;
                  swift_endAccess();
                  v31 = v100;
                  v173 = 8;
                  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                  v93 = v31;
                  v172[3] = v32;
                  v94 = v32;
                  v95 = BYTE4(v32);
                  v96 = v31;
                  if (v31)
                  {
                    v52 = v96;
                    (*(v147 + 8))(v158, v146);
                    v60 = v52;
                  }

                  else
                  {
                    v84 = v95;
                    v83 = v94;
                    v85 = v172;
                    swift_beginAccess();
                    v33 = v84;
                    v34 = v143;
                    *(v143 + 56) = v83;
                    *(v34 + 60) = v33 & 1;
                    swift_endAccess();
                    v35 = v93;
                    v171[31] = 9;
                    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                    v86 = v35;
                    v87 = v36;
                    v88 = v37;
                    v89 = v35;
                    if (v35)
                    {
                      v51 = v89;
                      (*(v147 + 8))(v158, v146);
                      v60 = v51;
                    }

                    else
                    {
                      v77 = v88;
                      v76 = v87;
                      v78 = v171;
                      swift_beginAccess();
                      v38 = v143;
                      v39 = v77;
                      *(v143 + 64) = v76;
                      *(v38 + 72) = v39;

                      swift_endAccess();
                      v40 = v86;
                      v170 = 10;
                      v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                      v79 = v40;
                      v169[3] = v41;
                      v80 = v41;
                      v81 = BYTE4(v41);
                      v82 = v40;
                      if (v40)
                      {
                        v50 = v82;
                        (*(v147 + 8))(v158, v146);
                        v60 = v50;
                      }

                      else
                      {
                        v71 = v81;
                        v70 = v80;
                        v72 = v169;
                        swift_beginAccess();
                        v42 = v71;
                        v43 = v143;
                        *(v143 + 80) = v70;
                        *(v43 + 84) = v42 & 1;
                        swift_endAccess();
                        v73 = &v168;
                        v168 = 11;
                        lazy protocol witness table accessor for type UUID and conformance UUID();
                        v44 = v79;
                        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                        v74 = v44;
                        v75 = v44;
                        if (v44)
                        {
                          v49 = v75;
                          (*(v147 + 8))(v158, v146);
                          v60 = v49;
                        }

                        else
                        {
                          v64 = (v143 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
                          v65 = &v167;
                          swift_beginAccess();
                          outlined assign with take of UUID?(v145, v64);
                          swift_endAccess();
                          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMd, &_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMR);
                          v66 = &v165;
                          v165 = 12;
                          lazy protocol witness table accessor for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>();
                          v45 = v74;
                          KeyedDecodingContainer.decode<A>(_:forKey:)();
                          v68 = v45;
                          v69 = v45;
                          if (!v45)
                          {
                            v62 = v166;
                            v61 = (v143 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
                            v63 = &v164;
                            swift_beginAccess();
                            *v61 = v62;

                            swift_endAccess();
                            (*(v147 + 8))(v158, v146);
                            __swift_destroy_boxed_opaque_existential_1(v157);
                            return v143;
                          }

                          v48 = v69;
                          (*(v147 + 8))(v158, v146);
                          v60 = v48;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v47[1] = v60;

  __swift_destroy_boxed_opaque_existential_1(v157);
  return v47[2];
}

void (*protocol witness for HeadphoneDeviceDataReplayable.productId.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 60963);
  *a1 = v3;
  v3[4] = (*(**v1 + 200))();
  return protocol witness for HeadphoneDeviceDataReplayable.productId.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.productId.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryStateCase.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 11139);
  *a1 = v3;
  v3[4] = (*(**v1 + 224))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryStateCase.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryStateCase.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryStateLeft.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 21987);
  *a1 = v3;
  v3[4] = (*(**v1 + 248))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryStateLeft.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryStateLeft.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryStateRight.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 35320);
  *a1 = v3;
  v3[4] = (*(**v1 + 272))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryStateRight.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryStateRight.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryStateMain.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 63341);
  *a1 = v3;
  v3[4] = (*(**v1 + 296))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryStateMain.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryStateMain.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelCase.getter in conformance ReplayData()
{
  v3 = (*(**v0 + 304))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelCase.setter in conformance ReplayData(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(**v1 + 312))(v3);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryLevelCase.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 32182);
  *a1 = v3;
  v3[4] = (*(**v1 + 320))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryLevelCase.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryLevelCase.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelLeft.getter in conformance ReplayData()
{
  v3 = (*(**v0 + 328))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelLeft.setter in conformance ReplayData(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(**v1 + 336))(v3);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryLevelLeft.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 59296);
  *a1 = v3;
  v3[4] = (*(**v1 + 344))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryLevelLeft.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryLevelLeft.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelRight.getter in conformance ReplayData()
{
  v3 = (*(**v0 + 352))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelRight.setter in conformance ReplayData(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(**v1 + 360))(v3);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryLevelRight.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 18770);
  *a1 = v3;
  v3[4] = (*(**v1 + 368))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryLevelRight.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryLevelRight.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelMain.getter in conformance ReplayData()
{
  v3 = (*(**v0 + 376))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.batteryLevelMain.setter in conformance ReplayData(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(**v1 + 384))(v3);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.batteryLevelMain.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 33254);
  *a1 = v3;
  v3[4] = (*(**v1 + 392))();
  return protocol witness for HeadphoneDeviceDataReplayable.batteryLevelMain.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.batteryLevelMain.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.deviceColor.getter in conformance ReplayData()
{
  v3 = (*(**v0 + 424))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t protocol witness for HeadphoneDeviceDataReplayable.deviceColor.setter in conformance ReplayData(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(**v1 + 432))(v3);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.deviceColor.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 38585);
  *a1 = v3;
  v3[4] = (*(**v1 + 440))();
  return protocol witness for HeadphoneDeviceDataReplayable.deviceColor.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.deviceColor.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*protocol witness for HeadphoneDeviceDataReplayable.randomHexAddress.modify in conformance ReplayData(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 54256);
  *a1 = v3;
  v3[4] = (*(**v1 + 464))();
  return protocol witness for HeadphoneDeviceDataReplayable.randomHexAddress.modify in conformance ReplayData;
}

void protocol witness for HeadphoneDeviceDataReplayable.randomHexAddress.modify in conformance ReplayData(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReplayData@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 520))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ReplayData(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  a1[2] = lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  a1[3] = lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  result = lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  a1[4] = result;
  return result;
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelCase.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 160))(a1);
  LODWORD(v3) = v4;
  BYTE4(v3) = BYTE4(v4) & 1;
  return v3;
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelCase.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = BYTE4(a1) & 1;
  return (*(a3 + 168))(v4, a2);
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelLeft.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 184))(a1);
  LODWORD(v3) = v4;
  BYTE4(v3) = BYTE4(v4) & 1;
  return v3;
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelLeft.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = BYTE4(a1) & 1;
  return (*(a3 + 192))(v4, a2);
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelRight.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 208))(a1);
  LODWORD(v3) = v4;
  BYTE4(v3) = BYTE4(v4) & 1;
  return v3;
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelRight.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = BYTE4(a1) & 1;
  return (*(a3 + 216))(v4, a2);
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelMain.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 232))(a1);
  LODWORD(v3) = v4;
  BYTE4(v3) = BYTE4(v4) & 1;
  return v3;
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.batteryLevelMain.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = BYTE4(a1) & 1;
  return (*(a3 + 240))(v4, a2);
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.deviceColor.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 256))(a1);
  LODWORD(v3) = v4;
  BYTE4(v3) = BYTE4(v4) & 1;
  return v3;
}

uint64_t dispatch thunk of HeadphoneDeviceDataReplayable.deviceColor.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = BYTE4(a1) & 1;
  return (*(a3 + 264))(v4, a2);
}

uint64_t dispatch thunk of ReplayData.batteryLevelCase.getter()
{
  v3 = (*(*v0 + 304))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of ReplayData.batteryLevelCase.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(*v1 + 312))(v3);
}

uint64_t dispatch thunk of ReplayData.batteryLevelLeft.getter()
{
  v3 = (*(*v0 + 328))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of ReplayData.batteryLevelLeft.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(*v1 + 336))(v3);
}

uint64_t dispatch thunk of ReplayData.batteryLevelRight.getter()
{
  v3 = (*(*v0 + 352))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of ReplayData.batteryLevelRight.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(*v1 + 360))(v3);
}

uint64_t dispatch thunk of ReplayData.batteryLevelMain.getter()
{
  v3 = (*(*v0 + 376))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of ReplayData.batteryLevelMain.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(*v1 + 384))(v3);
}

uint64_t dispatch thunk of ReplayData.deviceColor.getter()
{
  v3 = (*(*v0 + 424))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of ReplayData.deviceColor.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*(*v1 + 432))(v3);
}

uint64_t getEnumTagSinglePayload for ReplayData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF3)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 12) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 243;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 13;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReplayData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF3)
  {
    v5 = ((a3 + 12) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF3)
  {
    v4 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

void *outlined init with take of UUID?(const void *a1, void *a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

BOOL static HearingRecordPropertyRemoteSendState.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v5 == 1)
    {
      v4 = 1;
    }

    else if (v5 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (v6 == 1)
    {
      v3 = 1;
    }

    else if (v6 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState()
{
  v2 = lazy protocol witness table cache variable for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState;
  if (!lazy protocol witness table cache variable for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState;
  if (!lazy protocol witness table cache variable for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HearingRecordPropertyRemoteSendState and conformance HearingRecordPropertyRemoteSendState);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for HearingRecordPropertyRemoteSendState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HearingRecordPropertyRemoteSendState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t closure #1 in Headphone_Manager.configHearingModeClient()(uint64_t a1)
{
  v46 = a1;
  v52 = implicit closure #1 in closure #1 in Headphone_Manager.configHearingModeClient();
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v57 = implicit closure #2 in closure #1 in Headphone_Manager.configHearingModeClient();
  v60 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v64 = closure #1 in OSLogArguments.append(_:)partial apply;
  v66 = closure #1 in OSLogArguments.append(_:)partial apply;
  v68 = closure #1 in OSLogArguments.append(_:)partial apply;
  v70 = closure #1 in OSLogArguments.append(_:)partial apply;
  v73 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v85 = 0;
  v45 = 0;
  v51 = type metadata accessor for Logger();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v26 - v47;
  v48 = &v26 - v47;
  v85 = MEMORY[0x1EEE9AC00](v46) + 16;
  v2 = Logger.shared.unsafeMutableAddressor();
  (*(v49 + 16))(v1, v2, v51);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  v55 = 17;
  v59 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  v56 = 8;
  *(v65 + 16) = 8;
  v58 = 32;
  v3 = swift_allocObject();
  v54 = v3;
  *(v3 + 16) = v52;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v54;
  v67 = v4;
  *(v4 + 16) = v53;
  *(v4 + 24) = v5;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v56;
  v6 = swift_allocObject();
  v61 = v6;
  *(v6 + 16) = v57;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v61;
  v74 = v7;
  *(v7 + 16) = v60;
  *(v7 + 24) = v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v72 = _allocateUninitializedArray<A>(_:)();
  v75 = v9;

  v10 = v63;
  v11 = v75;
  *v75 = v62;
  v11[1] = v10;

  v12 = v65;
  v13 = v75;
  v75[2] = v64;
  v13[3] = v12;

  v14 = v67;
  v15 = v75;
  v75[4] = v66;
  v15[5] = v14;

  v16 = v69;
  v17 = v75;
  v75[6] = v68;
  v17[7] = v16;

  v18 = v71;
  v19 = v75;
  v75[8] = v70;
  v19[9] = v18;

  v20 = v74;
  v21 = v75;
  v75[10] = v73;
  v21[11] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v77, v78))
  {
    v22 = v45;
    v37 = static UnsafeMutablePointer.allocate(capacity:)();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v38 = createStorage<A>(capacity:type:)(0, v36, v36);
    v39 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v41 = &v83;
    v83 = v37;
    v42 = &v82;
    v82 = v38;
    v43 = &v81;
    v81 = v39;
    v40 = 2;
    serialize(_:at:)(2, &v83);
    serialize(_:at:)(v40, v41);
    v79 = v62;
    v80 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v79, v41, v42, v43);
    v44 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v79 = v64;
      v80 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v35 = 0;
      v79 = v66;
      v80 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v34 = 0;
      v79 = v68;
      v80 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v33 = 0;
      v79 = v70;
      v80 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v32 = 0;
      v79 = v73;
      v80 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      _os_log_impl(&dword_1D93D0000, v77, v78, "HeadphoneManager: %s: %ld hearing client interrupted!", v37, 0x16u);
      destroyStorage<A>(_:count:)(v38, 0, v36);
      destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v37, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v77);
  (*(v49 + 8))(v48, v51);
  v31 = v46 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v24 = Strong;
    v30 = Strong;
    MEMORY[0x1E69E5928](Strong);
    outlined destroy of Headphone_Manager?(p_Strong);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14HMDeviceRecordCtMd, &_sSS_So14HMDeviceRecordCtMR);
    v28 = 0;
    v29 = _allocateUninitializedArray<A>(_:)();
    type metadata accessor for HMDeviceRecord();
    v25 = Dictionary.init(dictionaryLiteral:)();
    (*((*v24 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v25);
    return MEMORY[0x1E69E5920](v30);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&Strong);
    return swift_endAccess();
  }
}

uint64_t closure #2 in Headphone_Manager.configHearingModeClient()(uint64_t a1)
{
  v46 = a1;
  v52 = implicit closure #1 in closure #2 in Headphone_Manager.configHearingModeClient();
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v57 = implicit closure #2 in closure #2 in Headphone_Manager.configHearingModeClient();
  v60 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v64 = closure #1 in OSLogArguments.append(_:)partial apply;
  v66 = closure #1 in OSLogArguments.append(_:)partial apply;
  v68 = closure #1 in OSLogArguments.append(_:)partial apply;
  v70 = closure #1 in OSLogArguments.append(_:)partial apply;
  v73 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v85 = 0;
  v45 = 0;
  v51 = type metadata accessor for Logger();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v26 - v47;
  v48 = &v26 - v47;
  v85 = MEMORY[0x1EEE9AC00](v46) + 16;
  v2 = Logger.shared.unsafeMutableAddressor();
  (*(v49 + 16))(v1, v2, v51);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  v55 = 17;
  v59 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  v56 = 8;
  *(v65 + 16) = 8;
  v58 = 32;
  v3 = swift_allocObject();
  v54 = v3;
  *(v3 + 16) = v52;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v54;
  v67 = v4;
  *(v4 + 16) = v53;
  *(v4 + 24) = v5;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v56;
  v6 = swift_allocObject();
  v61 = v6;
  *(v6 + 16) = v57;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v61;
  v74 = v7;
  *(v7 + 16) = v60;
  *(v7 + 24) = v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v72 = _allocateUninitializedArray<A>(_:)();
  v75 = v9;

  v10 = v63;
  v11 = v75;
  *v75 = v62;
  v11[1] = v10;

  v12 = v65;
  v13 = v75;
  v75[2] = v64;
  v13[3] = v12;

  v14 = v67;
  v15 = v75;
  v75[4] = v66;
  v15[5] = v14;

  v16 = v69;
  v17 = v75;
  v75[6] = v68;
  v17[7] = v16;

  v18 = v71;
  v19 = v75;
  v75[8] = v70;
  v19[9] = v18;

  v20 = v74;
  v21 = v75;
  v75[10] = v73;
  v21[11] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v77, v78))
  {
    v22 = v45;
    v37 = static UnsafeMutablePointer.allocate(capacity:)();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v38 = createStorage<A>(capacity:type:)(0, v36, v36);
    v39 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v41 = &v83;
    v83 = v37;
    v42 = &v82;
    v82 = v38;
    v43 = &v81;
    v81 = v39;
    v40 = 2;
    serialize(_:at:)(2, &v83);
    serialize(_:at:)(v40, v41);
    v79 = v62;
    v80 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v79, v41, v42, v43);
    v44 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v79 = v64;
      v80 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v35 = 0;
      v79 = v66;
      v80 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v34 = 0;
      v79 = v68;
      v80 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v33 = 0;
      v79 = v70;
      v80 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v32 = 0;
      v79 = v73;
      v80 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      _os_log_impl(&dword_1D93D0000, v77, v78, "HeadphoneManager: %s: %ld hearing client invalidated!", v37, 0x16u);
      destroyStorage<A>(_:count:)(v38, 0, v36);
      destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v37, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v77);
  (*(v49 + 8))(v48, v51);
  v31 = v46 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v24 = Strong;
    v30 = Strong;
    MEMORY[0x1E69E5928](Strong);
    outlined destroy of Headphone_Manager?(p_Strong);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14HMDeviceRecordCtMd, &_sSS_So14HMDeviceRecordCtMR);
    v28 = 0;
    v29 = _allocateUninitializedArray<A>(_:)();
    type metadata accessor for HMDeviceRecord();
    v25 = Dictionary.init(dictionaryLiteral:)();
    (*((*v24 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v25);
    return MEMORY[0x1E69E5920](v30);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&Strong);
    return swift_endAccess();
  }
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
}

{
}

uint64_t closure #3 in Headphone_Manager.configHearingModeClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v107 = a3;
  v118 = a2;
  v116 = a1;
  v128 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v106 = 0;
  v115 = type metadata accessor for Logger();
  v109 = v115;
  v110 = *(v115 - 8);
  v114 = v110;
  v111 = v110;
  v4 = MEMORY[0x1EEE9AC00](v116);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v6;
  v173 = v4;
  v172 = v7;
  v171 = v8;
  v113 = v9 + 16;
  v170 = v9 + 16;
  v10 = Logger.shared.unsafeMutableAddressor();
  (*(v114 + 16))(v6, v10, v115);

  v117 = 24;
  v142 = 7;
  v133 = swift_allocObject();
  *(v133 + 16) = v116;

  v143 = swift_allocObject();
  *(v143 + 16) = v118;
  v162 = Logger.logObject.getter();
  v119 = v162;
  v161 = static os_log_type_t.default.getter();
  v120 = v161;
  v137 = 17;
  v146 = swift_allocObject();
  v121 = v146;
  v122 = 32;
  *(v146 + 16) = 32;
  v11 = swift_allocObject();
  v12 = v122;
  v147 = v11;
  v123 = v11;
  v139 = 8;
  *(v11 + 16) = 8;
  v141 = v12;
  v13 = swift_allocObject();
  v14 = v128;
  v124 = v13;
  *(v13 + 16) = implicit closure #1 in closure #3 in Headphone_Manager.configHearingModeClient();
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v124;
  v148 = v15;
  v125 = v15;
  *(v15 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v15 + 24) = v16;
  v149 = swift_allocObject();
  v126 = v149;
  v136 = 0;
  *(v149 + 16) = 0;
  v150 = swift_allocObject();
  v127 = v150;
  *(v150 + 16) = v139;
  v17 = swift_allocObject();
  v18 = v128;
  v129 = v17;
  *(v17 + 16) = implicit closure #2 in closure #3 in Headphone_Manager.configHearingModeClient();
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v129;
  v151 = v19;
  v130 = v19;
  *(v19 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v19 + 24) = v20;
  v152 = swift_allocObject();
  v131 = v152;
  *(v152 + 16) = v136;
  v153 = swift_allocObject();
  v132 = v153;
  *(v153 + 16) = v139;
  v21 = swift_allocObject();
  v22 = v133;
  v134 = v21;
  *(v21 + 16) = partial apply for implicit closure #3 in closure #3 in Headphone_Manager.configHearingModeClient();
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v134;
  v154 = v23;
  v135 = v23;
  *(v23 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v23 + 24) = v24;
  v155 = swift_allocObject();
  v138 = v155;
  *(v155 + 16) = v136;
  v156 = swift_allocObject();
  v140 = v156;
  *(v156 + 16) = v139;
  v25 = swift_allocObject();
  v26 = v143;
  v144 = v25;
  *(v25 + 16) = partial apply for implicit closure #4 in closure #3 in Headphone_Manager.configHearingModeClient();
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v144;
  v159 = v27;
  v145 = v27;
  *(v27 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v27 + 24) = v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v157 = _allocateUninitializedArray<A>(_:)();
  v158 = v29;

  v30 = v146;
  v31 = v158;
  *v158 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v30;

  v32 = v147;
  v33 = v158;
  v158[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[3] = v32;

  v34 = v148;
  v35 = v158;
  v158[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v35[5] = v34;

  v36 = v149;
  v37 = v158;
  v158[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v37[7] = v36;

  v38 = v150;
  v39 = v158;
  v158[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v39[9] = v38;

  v40 = v151;
  v41 = v158;
  v158[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v41[11] = v40;

  v42 = v152;
  v43 = v158;
  v158[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v43[13] = v42;

  v44 = v153;
  v45 = v158;
  v158[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[15] = v44;

  v46 = v154;
  v47 = v158;
  v158[16] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v47[17] = v46;

  v48 = v155;
  v49 = v158;
  v158[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v49[19] = v48;

  v50 = v156;
  v51 = v158;
  v158[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v51[21] = v50;

  v52 = v158;
  v53 = v159;
  v158[22] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v52[23] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v162, v161))
  {
    v54 = v106;
    v100 = static UnsafeMutablePointer.allocate(capacity:)();
    v97 = v100;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v101 = createStorage<A>(capacity:type:)(0, v98, v98);
    v99 = v101;
    v102 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v167 = v100;
    v166 = v101;
    v165 = v102;
    v103 = &v167;
    serialize(_:at:)(2, &v167);
    serialize(_:at:)(4, v103);
    v163 = closure #1 in OSLogArguments.append(_:)partial apply;
    v164 = v121;
    closure #1 in osLogInternal(_:log:type:)(&v163, v103, &v166, &v165);
    v104 = v54;
    v105 = v54;
    if (v54)
    {
      v95 = 0;

      __break(1u);
    }

    else
    {
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v93 = 0;
      v94 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v91 = 0;
      v92 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v89 = 0;
      v90 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v87 = 0;
      v88 = 0;
      v163 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v164 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v85 = 0;
      v86 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v131;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v83 = 0;
      v84 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v81 = 0;
      v82 = 0;
      v163 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v164 = v135;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v79 = 0;
      v80 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v77 = 0;
      v78 = 0;
      v163 = closure #1 in OSLogArguments.append(_:)partial apply;
      v164 = v140;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v75 = 0;
      v76 = 0;
      v163 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v164 = v145;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v167, &v166, &v165);
      v73 = 0;
      v74 = 0;
      _os_log_impl(&dword_1D93D0000, v119, v120, "HeadphoneManager: %s: %ld audiogramsAvailableHandler update audiograms! %ld %ld", v97, 0x2Au);
      destroyStorage<A>(_:count:)(v99, 0, v98);
      destroyStorage<A>(_:count:)(v102, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v97, MEMORY[0x1E69E7508]);

      v96 = v73;
    }
  }

  else
  {
    v55 = v106;

    v96 = v55;
  }

  v72 = v96;

  (*(v111 + 8))(v112, v109);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v56 = v72;
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
    return v56;
  }

  v57 = v72;
  v58 = Strong;
  v65 = Strong;
  v59 = Strong;
  outlined destroy of Headphone_Manager?(&Strong);
  v60 = swift_endAccess();
  v64 = (*((*v58 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v60);
  v63[1] = v64;
  type metadata accessor for HeadphoneDevice(0);
  v66 = Dictionary.values.getter();

  v168 = v66;

  v67 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v63[-4];
  v63[-2] = v116;
  v63[-1] = v61;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMd, &_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMR);
  lazy protocol witness table accessor for type [String : HeadphoneDevice].Values and conformance [A : B].Values();
  Sequence.forEach(_:)();
  v70 = v57;
  if (!v57)
  {

    outlined destroy of [String : HeadphoneDevice].Values(&v168);

    return v70;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #3 in Headphone_Manager.configHearingModeClient()(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = MEMORY[0x1E69E7D40];
  v7 = (*((**a1 & *MEMORY[0x1E69E7D40]) + 0xA50))();

  (*((*v7 & *v9) + 0x5B8))(a2);
  v3 = MEMORY[0x1E69E5920](v7);
  v10 = (*((*v6 & *v9) + 0xA50))(v3);

  (*((*v10 & *v9) + 0x5E8))(a3);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [HKAudiogramSample], @guaranteed [HKAudiogramSample], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  type metadata accessor for HKAudiogramSample();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5928](a3);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v6(v8, v10);

  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](a2);
}

uint64_t closure #4 in Headphone_Manager.configHearingModeClient()(uint64_t a1, uint64_t a2)
{
  v303 = a1;
  v302 = a2;
  v322 = 0;
  v256 = implicit closure #6 in closure #4 in Headphone_Manager.configHearingModeClient();
  v257 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v258 = implicit closure #7 in closure #4 in Headphone_Manager.configHearingModeClient();
  v259 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v260 = partial apply for implicit closure #8 in closure #4 in Headphone_Manager.configHearingModeClient();
  v261 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v262 = partial apply for implicit closure #9 in closure #4 in Headphone_Manager.configHearingModeClient();
  v263 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v264 = partial apply for implicit closure #10 in closure #4 in Headphone_Manager.configHearingModeClient();
  v265 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v266 = closure #1 in OSLogArguments.append(_:)partial apply;
  v267 = closure #1 in OSLogArguments.append(_:)partial apply;
  v268 = closure #1 in OSLogArguments.append(_:)partial apply;
  v269 = closure #1 in OSLogArguments.append(_:)partial apply;
  v270 = closure #1 in OSLogArguments.append(_:)partial apply;
  v271 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v272 = closure #1 in OSLogArguments.append(_:)partial apply;
  v273 = closure #1 in OSLogArguments.append(_:)partial apply;
  v274 = closure #1 in OSLogArguments.append(_:)partial apply;
  v275 = closure #1 in OSLogArguments.append(_:)partial apply;
  v276 = closure #1 in OSLogArguments.append(_:)partial apply;
  v277 = closure #1 in OSLogArguments.append(_:)partial apply;
  v278 = closure #1 in OSLogArguments.append(_:)partial apply;
  v279 = closure #1 in OSLogArguments.append(_:)partial apply;
  v280 = closure #1 in OSLogArguments.append(_:)partial apply;
  v281 = implicit closure #2 in closure #4 in Headphone_Manager.configHearingModeClient();
  v282 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v283 = implicit closure #3 in closure #4 in Headphone_Manager.configHearingModeClient();
  v284 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v285 = partial apply for implicit closure #4 in closure #4 in Headphone_Manager.configHearingModeClient();
  v286 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v287 = partial apply for implicit closure #5 in closure #4 in Headphone_Manager.configHearingModeClient();
  v288 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v289 = closure #1 in OSLogArguments.append(_:)partial apply;
  v290 = closure #1 in OSLogArguments.append(_:)partial apply;
  v291 = closure #1 in OSLogArguments.append(_:)partial apply;
  v292 = closure #1 in OSLogArguments.append(_:)partial apply;
  v293 = closure #1 in OSLogArguments.append(_:)partial apply;
  v294 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v295 = closure #1 in OSLogArguments.append(_:)partial apply;
  v296 = closure #1 in OSLogArguments.append(_:)partial apply;
  v297 = closure #1 in OSLogArguments.append(_:)partial apply;
  v298 = closure #1 in OSLogArguments.append(_:)partial apply;
  v299 = closure #1 in OSLogArguments.append(_:)partial apply;
  v300 = closure #1 in OSLogArguments.append(_:)partial apply;
  v352 = 0;
  v351 = 0;
  v346 = 0;
  v347 = 0;
  v341 = 0;
  v301 = 0;
  v331 = 0;
  v313 = 0;
  v304 = type metadata accessor for Logger();
  v305 = *(v304 - 8);
  v306 = v304 - 8;
  v307 = (*(v305 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v303);
  v308 = &v125 - v307;
  v309 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v310 = &v125 - v309;
  v352 = v4;
  v323 = v5 + 16;
  v351 = v5 + 16;
  v319 = [v4 bluetoothAddress];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v318 = v350;
  v350[0] = v6;
  v350[1] = v7;
  v311 = 1;
  v314 = 1;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v317 = &v349;
  v349 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", v311, v314 & 1);
  v316 = &v348;
  v348 = v9;
  v312 = lazy protocol witness table accessor for type String and conformance String();
  v315 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v320 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v321 = v10;
  outlined destroy of String(v316);
  outlined destroy of String(v317);
  outlined destroy of String(v318);
  MEMORY[0x1E69E5920](v319);
  v346 = v320;
  v347 = v321;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v11 = Strong;
    v252 = Strong;
    MEMORY[0x1E69E5928](Strong);
    outlined destroy of Headphone_Manager?(p_Strong);
    swift_endAccess();

    v253 = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v12);
    v251 = v324;
    v324[0] = v320;
    v324[1] = v321;
    v13 = type metadata accessor for HeadphoneDevice(0);
    MEMORY[0x1DA7308E0](&v325, v251, v253, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6168]);
    outlined destroy of String(v251);
    v254 = v325;
    MEMORY[0x1E69E5920](v252);

    v255 = v254;
  }

  else
  {
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
    v255 = 0;
  }

  v249 = v255;
  if (v255)
  {
    v248 = v249;
    v14 = v310;
    v212 = v249;
    v331 = v249;
    v15 = Logger.shared.unsafeMutableAddressor();
    (*(v305 + 16))(v14, v15, v304);
    MEMORY[0x1E69E5928](v212);
    v213 = 24;
    v224 = 7;
    v16 = swift_allocObject();
    v17 = v212;
    v216 = v16;
    *(v16 + 16) = v212;
    MEMORY[0x1E69E5928](v17);
    v18 = swift_allocObject();
    v19 = v303;
    v218 = v18;
    *(v18 + 16) = v212;
    MEMORY[0x1E69E5928](v19);
    v225 = swift_allocObject();
    *(v225 + 16) = v303;
    v245 = Logger.logObject.getter();
    v246 = static os_log_type_t.default.getter();
    v221 = 17;
    v227 = swift_allocObject();
    v220 = 32;
    *(v227 + 16) = 32;
    v228 = swift_allocObject();
    v222 = 8;
    *(v228 + 16) = 8;
    v223 = 32;
    v20 = swift_allocObject();
    v214 = v20;
    *(v20 + 16) = v256;
    *(v20 + 24) = 0;
    v21 = swift_allocObject();
    v22 = v214;
    v229 = v21;
    *(v21 + 16) = v257;
    *(v21 + 24) = v22;
    v230 = swift_allocObject();
    *(v230 + 16) = 0;
    v231 = swift_allocObject();
    *(v231 + 16) = v222;
    v23 = swift_allocObject();
    v215 = v23;
    *(v23 + 16) = v258;
    *(v23 + 24) = 0;
    v24 = swift_allocObject();
    v25 = v215;
    v232 = v24;
    *(v24 + 16) = v259;
    *(v24 + 24) = v25;
    v233 = swift_allocObject();
    *(v233 + 16) = 64;
    v234 = swift_allocObject();
    *(v234 + 16) = v222;
    v26 = swift_allocObject();
    v27 = v216;
    v217 = v26;
    *(v26 + 16) = v260;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v217;
    v235 = v28;
    *(v28 + 16) = v261;
    *(v28 + 24) = v29;
    v236 = swift_allocObject();
    *(v236 + 16) = v220;
    v237 = swift_allocObject();
    *(v237 + 16) = v222;
    v30 = swift_allocObject();
    v31 = v218;
    v219 = v30;
    *(v30 + 16) = v262;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v219;
    v238 = v32;
    *(v32 + 16) = v263;
    *(v32 + 24) = v33;
    v239 = swift_allocObject();
    *(v239 + 16) = v220;
    v240 = swift_allocObject();
    *(v240 + 16) = v222;
    v34 = swift_allocObject();
    v35 = v225;
    v226 = v34;
    *(v34 + 16) = v264;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v226;
    v242 = v36;
    *(v36 + 16) = v265;
    *(v36 + 24) = v37;
    v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v241 = _allocateUninitializedArray<A>(_:)();
    v243 = v38;

    v39 = v227;
    v40 = v243;
    *v243 = v266;
    v40[1] = v39;

    v41 = v228;
    v42 = v243;
    v243[2] = v267;
    v42[3] = v41;

    v43 = v229;
    v44 = v243;
    v243[4] = v268;
    v44[5] = v43;

    v45 = v230;
    v46 = v243;
    v243[6] = v269;
    v46[7] = v45;

    v47 = v231;
    v48 = v243;
    v243[8] = v270;
    v48[9] = v47;

    v49 = v232;
    v50 = v243;
    v243[10] = v271;
    v50[11] = v49;

    v51 = v233;
    v52 = v243;
    v243[12] = v272;
    v52[13] = v51;

    v53 = v234;
    v54 = v243;
    v243[14] = v273;
    v54[15] = v53;

    v55 = v235;
    v56 = v243;
    v243[16] = v274;
    v56[17] = v55;

    v57 = v236;
    v58 = v243;
    v243[18] = v275;
    v58[19] = v57;

    v59 = v237;
    v60 = v243;
    v243[20] = v276;
    v60[21] = v59;

    v61 = v238;
    v62 = v243;
    v243[22] = v277;
    v62[23] = v61;

    v63 = v239;
    v64 = v243;
    v243[24] = v278;
    v64[25] = v63;

    v65 = v240;
    v66 = v243;
    v243[26] = v279;
    v66[27] = v65;

    v67 = v242;
    v68 = v243;
    v243[28] = v280;
    v68[29] = v67;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v245, v246))
    {
      v69 = v301;
      v205 = static UnsafeMutablePointer.allocate(capacity:)();
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v206 = createStorage<A>(capacity:type:)(1, v204, v204);
      v207 = createStorage<A>(capacity:type:)(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v208 = &v330;
      v330 = v205;
      v209 = &v329;
      v329 = v206;
      v210 = &v328;
      v328 = v207;
      serialize(_:at:)(2, &v330);
      serialize(_:at:)(5, v208);
      v326 = v266;
      v327 = v227;
      closure #1 in osLogInternal(_:log:type:)(&v326, v208, v209, v210);
      v211 = v69;
      if (v69)
      {

        __break(1u);
      }

      else
      {
        v326 = v267;
        v327 = v228;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v203 = 0;
        v326 = v268;
        v327 = v229;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v202 = 0;
        v326 = v269;
        v327 = v230;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v201 = 0;
        v326 = v270;
        v327 = v231;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v200 = 0;
        v326 = v271;
        v327 = v232;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v199 = 0;
        v326 = v272;
        v327 = v233;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v198 = 0;
        v326 = v273;
        v327 = v234;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v197 = 0;
        v326 = v274;
        v327 = v235;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v196 = 0;
        v326 = v275;
        v327 = v236;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v195 = 0;
        v326 = v276;
        v327 = v237;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v194 = 0;
        v326 = v277;
        v327 = v238;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v193 = 0;
        v326 = v278;
        v327 = v239;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v192 = 0;
        v326 = v279;
        v327 = v240;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        v191 = 0;
        v326 = v280;
        v327 = v242;
        closure #1 in osLogInternal(_:log:type:)(&v326, &v330, &v329, &v328);
        _os_log_impl(&dword_1D93D0000, v245, v246, "HeadphoneManager: %s: %ld device: %@::%s updateWithRecord %s", v205, 0x34u);
        destroyStorage<A>(_:count:)(v206, 1, v204);
        destroyStorage<A>(_:count:)(v207, 3, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v205, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v70 = v212;
    MEMORY[0x1E69E5920](v245);
    v71 = (*(v305 + 8))(v310, v304);
    v72 = *v70;
    v189 = MEMORY[0x1E69E7D40];
    v190 = (*((v72 & *MEMORY[0x1E69E7D40]) + 0xA50))(v71);
    (*((*v190 & *v189) + 0x768))(v303);
    MEMORY[0x1E69E5920](v190);
    MEMORY[0x1E69E5920](v212);
  }

  else
  {
    v247 = v302 + 16;
    swift_beginAccess();
    v343 = swift_unknownObjectWeakLoadStrong();
    if (v343)
    {
      v180 = &v343;
      v74 = v343;
      v181 = v343;
      MEMORY[0x1E69E5928](v343);
      outlined destroy of Headphone_Manager?(v180);
      v75 = swift_endAccess();
      v182 = (*((*v74 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v75);
      MEMORY[0x1E69E5920](v181);
      v184 = type metadata accessor for HeadphoneDevice(0);
      v183 = MEMORY[0x1E69E6158];
      v185 = MEMORY[0x1E69E6168];

      v187._countAndFlagsBits = Dictionary.Keys.debugDescription.getter();
      v187._object = v76;

      v188 = v187;
    }

    else
    {
      outlined destroy of Headphone_Manager?(&v343);
      swift_endAccess();
      v188._countAndFlagsBits = 0;
      v188._object = 0;
    }

    v342 = v188;
    if (v188._object)
    {
      v344 = v342;
    }

    else
    {
      v344 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("none", 4uLL, 1);
      if (v342._object)
      {
        outlined destroy of String?(&v342);
      }
    }

    v77 = v308;
    v151 = v344;
    v341 = v344;
    v78 = Logger.shared.unsafeMutableAddressor();
    (*(v305 + 16))(v77, v78, v304);

    v159 = 32;
    v160 = 7;
    v79 = swift_allocObject();
    v80 = v321;
    v154 = v79;
    *(v79 + 16) = v320;
    *(v79 + 24) = v80;

    v81 = swift_allocObject();
    object = v151._object;
    v161 = v81;
    *(v81 + 16) = v151._countAndFlagsBits;
    *(v81 + 24) = object;
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();
    v157 = 17;
    v163 = swift_allocObject();
    v156 = 32;
    *(v163 + 16) = 32;
    v164 = swift_allocObject();
    v158 = 8;
    *(v164 + 16) = 8;
    v83 = swift_allocObject();
    v152 = v83;
    *(v83 + 16) = v281;
    *(v83 + 24) = 0;
    v84 = swift_allocObject();
    v85 = v152;
    v165 = v84;
    *(v84 + 16) = v282;
    *(v84 + 24) = v85;
    v166 = swift_allocObject();
    *(v166 + 16) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v158;
    v86 = swift_allocObject();
    v153 = v86;
    *(v86 + 16) = v283;
    *(v86 + 24) = 0;
    v87 = swift_allocObject();
    v88 = v153;
    v168 = v87;
    *(v87 + 16) = v284;
    *(v87 + 24) = v88;
    v169 = swift_allocObject();
    *(v169 + 16) = v156;
    v170 = swift_allocObject();
    *(v170 + 16) = v158;
    v89 = swift_allocObject();
    v90 = v154;
    v155 = v89;
    *(v89 + 16) = v285;
    *(v89 + 24) = v90;
    v91 = swift_allocObject();
    v92 = v155;
    v171 = v91;
    *(v91 + 16) = v286;
    *(v91 + 24) = v92;
    v172 = swift_allocObject();
    *(v172 + 16) = v156;
    v173 = swift_allocObject();
    *(v173 + 16) = v158;
    v93 = swift_allocObject();
    v94 = v161;
    v162 = v93;
    *(v93 + 16) = v287;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v162;
    v175 = v95;
    *(v95 + 16) = v288;
    *(v95 + 24) = v96;
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v174 = _allocateUninitializedArray<A>(_:)();
    v176 = v97;

    v98 = v163;
    v99 = v176;
    *v176 = v289;
    v99[1] = v98;

    v100 = v164;
    v101 = v176;
    v176[2] = v290;
    v101[3] = v100;

    v102 = v165;
    v103 = v176;
    v176[4] = v291;
    v103[5] = v102;

    v104 = v166;
    v105 = v176;
    v176[6] = v292;
    v105[7] = v104;

    v106 = v167;
    v107 = v176;
    v176[8] = v293;
    v107[9] = v106;

    v108 = v168;
    v109 = v176;
    v176[10] = v294;
    v109[11] = v108;

    v110 = v169;
    v111 = v176;
    v176[12] = v295;
    v111[13] = v110;

    v112 = v170;
    v113 = v176;
    v176[14] = v296;
    v113[15] = v112;

    v114 = v171;
    v115 = v176;
    v176[16] = v297;
    v115[17] = v114;

    v116 = v172;
    v117 = v176;
    v176[18] = v298;
    v117[19] = v116;

    v118 = v173;
    v119 = v176;
    v176[20] = v299;
    v119[21] = v118;

    v120 = v175;
    v121 = v176;
    v176[22] = v300;
    v121[23] = v120;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v178, v179))
    {
      v122 = v301;
      v144 = static UnsafeMutablePointer.allocate(capacity:)();
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v145 = createStorage<A>(capacity:type:)(0, v143, v143);
      v146 = createStorage<A>(capacity:type:)(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v147 = &v336;
      v336 = v144;
      v148 = &v335;
      v335 = v145;
      v149 = &v334;
      v334 = v146;
      serialize(_:at:)(2, &v336);
      serialize(_:at:)(4, v147);
      v332 = v289;
      v333 = v163;
      closure #1 in osLogInternal(_:log:type:)(&v332, v147, v148, v149);
      v150 = v122;
      if (v122)
      {

        __break(1u);
      }

      else
      {
        v332 = v290;
        v333 = v164;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v142 = 0;
        v332 = v291;
        v333 = v165;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v141 = 0;
        v332 = v292;
        v333 = v166;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v140 = 0;
        v332 = v293;
        v333 = v167;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v139 = 0;
        v332 = v294;
        v333 = v168;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v138 = 0;
        v332 = v295;
        v333 = v169;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v137 = 0;
        v332 = v296;
        v333 = v170;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v136 = 0;
        v332 = v297;
        v333 = v171;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v135 = 0;
        v332 = v298;
        v333 = v172;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v134 = 0;
        v332 = v299;
        v333 = v173;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        v133 = 0;
        v332 = v300;
        v333 = v175;
        closure #1 in osLogInternal(_:log:type:)(&v332, &v336, &v335, &v334);
        _os_log_impl(&dword_1D93D0000, v178, v179, "HeadphoneManager: %s: %ld headphoneDevice with bt address not found %s %s", v144, 0x2Au);
        destroyStorage<A>(_:count:)(v145, 0, v143);
        destroyStorage<A>(_:count:)(v146, 3, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v144, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v178);
    (*(v305 + 8))(v308, v304);
    v132 = v302 + 16;
    swift_beginAccess();
    v340 = swift_unknownObjectWeakLoadStrong();
    if (v340)
    {
      v126 = &v340;
      v123 = v340;
      v131 = v340;
      MEMORY[0x1E69E5928](v340);
      outlined destroy of Headphone_Manager?(v126);
      swift_endAccess();

      MEMORY[0x1E69E5928](v303);
      v128 = &v339;
      v339 = v303;
      v127 = v338;
      v338[0] = v320;
      v338[1] = v321;
      v124 = *((*v123 & *MEMORY[0x1E69E7D40]) + 0x1A8);
      v129 = &v337;
      v130 = v124();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
      Dictionary.subscript.setter();
      v130();
      MEMORY[0x1E69E5920](v131);
    }

    else
    {
      outlined destroy of Headphone_Manager?(&v340);
      swift_endAccess();
    }
  }
}

uint64_t implicit closure #9 in closure #4 in Headphone_Manager.configHearingModeClient()(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%p", 2uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x1E69E5928](a1);
  v4[3] = type metadata accessor for HeadphoneDevice(0);
  v4[4] = lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
  *v4 = a1;
  _finalizeUninitializedArray<A>(_:)();
  v5 = String.init(format:_:)();

  return v5;
}

uint64_t implicit closure #10 in closure #4 in Headphone_Manager.configHearingModeClient()(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HMDeviceRecord) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

_BYTE *closure #5 in Headphone_Manager.configHearingModeClient()(uint64_t a1)
{
  v63 = a1;
  v52 = implicit closure #1 in closure #5 in Headphone_Manager.configHearingModeClient();
  v53 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_4;
  v54 = implicit closure #2 in closure #5 in Headphone_Manager.configHearingModeClient();
  v55 = _sSiIegd_SiIegr_TRTA_1;
  v56 = closure #1 in OSLogArguments.append(_:)partial apply;
  v57 = closure #1 in OSLogArguments.append(_:)partial apply;
  v58 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_4;
  v59 = closure #1 in OSLogArguments.append(_:)partial apply;
  v60 = closure #1 in OSLogArguments.append(_:)partial apply;
  v61 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
  v74 = 0;
  v62 = 0;
  v64 = type metadata accessor for Logger();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00](v63);
  v68 = v24 - v67;
  v74 = result;
  v73[1] = result;
  v51 = result != 0;
  if (result)
  {
    v2 = v68;
    v3 = Logger.shared.unsafeMutableAddressor();
    (*(v65 + 16))(v2, v3, v64);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v35 = 17;
    v38 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = 32;
    v41 = swift_allocObject();
    v36 = 8;
    *(v41 + 16) = 8;
    v37 = 32;
    v4 = swift_allocObject();
    v34 = v4;
    *(v4 + 16) = v52;
    *(v4 + 24) = 0;
    v5 = swift_allocObject();
    v6 = v34;
    v42 = v5;
    *(v5 + 16) = v53;
    *(v5 + 24) = v6;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = swift_allocObject();
    *(v44 + 16) = v36;
    v7 = swift_allocObject();
    v39 = v7;
    *(v7 + 16) = v54;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v39;
    v46 = v8;
    *(v8 + 16) = v55;
    *(v8 + 24) = v9;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v45 = _allocateUninitializedArray<A>(_:)();
    v47 = v10;

    v11 = v40;
    v12 = v47;
    *v47 = v56;
    v12[1] = v11;

    v13 = v41;
    v14 = v47;
    v47[2] = v57;
    v14[3] = v13;

    v15 = v42;
    v16 = v47;
    v47[4] = v58;
    v16[5] = v15;

    v17 = v43;
    v18 = v47;
    v47[6] = v59;
    v18[7] = v17;

    v19 = v44;
    v20 = v47;
    v47[8] = v60;
    v20[9] = v19;

    v21 = v46;
    v22 = v47;
    v47[10] = v61;
    v22[11] = v21;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v49, v50))
    {
      v23 = v62;
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0, v25, v25);
      v28 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v30 = v73;
      v73[0] = v26;
      v31 = &v72;
      v72 = v27;
      v32 = &v71;
      v71 = v28;
      v29 = 2;
      serialize(_:at:)(2, v73);
      serialize(_:at:)(v29, v30);
      v69 = v56;
      v70 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v69, v30, v31, v32);
      v33 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v69 = v57;
        v70 = v41;
        closure #1 in osLogInternal(_:log:type:)(&v69, v73, &v72, &v71);
        v24[4] = 0;
        v69 = v58;
        v70 = v42;
        closure #1 in osLogInternal(_:log:type:)(&v69, v73, &v72, &v71);
        v24[3] = 0;
        v69 = v59;
        v70 = v43;
        closure #1 in osLogInternal(_:log:type:)(&v69, v73, &v72, &v71);
        v24[2] = 0;
        v69 = v60;
        v70 = v44;
        closure #1 in osLogInternal(_:log:type:)(&v69, v73, &v72, &v71);
        v24[1] = 0;
        v69 = v61;
        v70 = v46;
        closure #1 in osLogInternal(_:log:type:)(&v69, v73, &v72, &v71);
        _os_log_impl(&dword_1D93D0000, v49, v50, "HeadphoneManager: %s: %ld failed to acitivate HMServiceClient", v26, 0x16u);
        destroyStorage<A>(_:count:)(v27, 0, v25);
        destroyStorage<A>(_:count:)(v28, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v26, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v49);
    return (*(v65 + 8))(v68, v64);
  }

  return result;
}

uint64_t ~= infix<A>(_:_:)(void *a1)
{
  v4 = a1;
  v12 = 0;
  v11 = 0;
  v8 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v13 = v8;
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v3 - v3;
  v12 = v4;
  v11 = v1;
  (*(v5 + 16))();

  swift_getAtKeyPath();
  v9 = v10;

  (*(v5 + 8))(v7, v8);
  return v9 & 1;
}

id HearingRecord.deviceConfigFor<A>(keyPath:value:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v163 = a1;
  v126 = a2;
  v125 = a3;
  v119 = partial apply for implicit closure #14 in HearingRecord.deviceConfigFor<A>(keyPath:value:);
  v120 = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_1;
  v121 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_4;
  v122 = closure #1 in OSLogArguments.append(_:)partial apply;
  v123 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_1;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v124 = 0;
  v212 = a3;
  v127 = 0;
  v128 = type metadata accessor for Logger();
  v129 = *(v128 - 8);
  v130 = v128 - 8;
  v131 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v132 = v42 - v131;
  v133 = *(v5 - 8);
  v134 = v5 - 8;
  v158 = *(v133 + 64);
  v135 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v136 = v42 - v135;
  v137 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v138 = v42 - v137;
  v139 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v140 = v42 - v139;
  v141 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v142 = v42 - v141;
  v143 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v144 = v42 - v143;
  v145 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v146 = v42 - v145;
  v147 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v148 = v42 - v147;
  v149 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v150 = v42 - v149;
  v151 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v152 = v42 - v151;
  v153 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v154 = v42 - v153;
  v155 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v156 = v42 - v155;
  v157 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v159 = v42 - v157;
  v160 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v161 = v42 - v160;
  v211 = v18;
  v210 = v19;
  v209 = v3;
  type metadata accessor for HMDeviceConfigurations();
  v162 = HMDeviceConfigurations.__allocating_init()();
  v208 = v162;

  KeyPath = swift_getKeyPath();
  v165 = &v207;
  v207 = KeyPath;
  v164 = &v206;
  v206 = v163;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMd, &_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMR);
  v167 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v167)
  {

    (*(v133 + 16))(v161, v126, v125);
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v117 = v168[1];
    }

    else
    {
      v117 = 0;
    }

    v168[0] = v117;
    MEMORY[0x1E69E5928](v162);
    if (v168[0])
    {
      v169 = v168[0];
    }

    else
    {
      v169 = [v162 amplification];
      if (v168[0])
      {
        outlined destroy of NSNumber?(v168);
      }
    }

    MEMORY[0x1E69E5920](v162);
    v116 = v169;
    [v162 setAmplification_];
    MEMORY[0x1E69E5920](v116);
  }

  else
  {

    v205[28] = swift_getKeyPath();
    v205[27] = v163;
    v115 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v115)
    {

      (*(v133 + 16))(v159, v126, v125);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v114 = v170[1];
      }

      else
      {
        v114 = 0;
      }

      v170[0] = v114;
      MEMORY[0x1E69E5928](v162);
      if (v170[0])
      {
        v171 = v170[0];
      }

      else
      {
        v171 = [v162 balance];
        if (v170[0])
        {
          outlined destroy of NSNumber?(v170);
        }
      }

      MEMORY[0x1E69E5920](v162);
      v113 = v171;
      [v162 setBalance_];
      MEMORY[0x1E69E5920](v113);
    }

    else
    {

      v205[26] = swift_getKeyPath();
      v205[25] = v163;
      v112 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v112)
      {

        (*(v133 + 16))(v156, v126, v125);
        type metadata accessor for NSNumber();
        if (swift_dynamicCast())
        {
          v111 = v172[1];
        }

        else
        {
          v111 = 0;
        }

        v172[0] = v111;
        MEMORY[0x1E69E5928](v162);
        if (v172[0])
        {
          v173 = v172[0];
        }

        else
        {
          v173 = [v162 beamFormer];
          if (v172[0])
          {
            outlined destroy of NSNumber?(v172);
          }
        }

        MEMORY[0x1E69E5920](v162);
        v110 = v173;
        [v162 setBeamFormer_];
        MEMORY[0x1E69E5920](v110);
      }

      else
      {

        v205[24] = swift_getKeyPath();
        v205[23] = v163;
        v109 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v109)
        {

          (*(v133 + 16))(v154, v126, v125);
          type metadata accessor for NSNumber();
          if (swift_dynamicCast())
          {
            v108 = v174[1];
          }

          else
          {
            v108 = 0;
          }

          v174[0] = v108;
          MEMORY[0x1E69E5928](v162);
          if (v174[0])
          {
            v175 = v174[0];
          }

          else
          {
            v175 = [v162 noiseSuppression];
            if (v174[0])
            {
              outlined destroy of NSNumber?(v174);
            }
          }

          MEMORY[0x1E69E5920](v162);
          v107 = v175;
          [v162 setNoiseSuppression_];
          MEMORY[0x1E69E5920](v107);
        }

        else
        {

          v205[22] = swift_getKeyPath();
          v205[21] = v163;
          v106 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v106)
          {

            (*(v133 + 16))(v152, v126, v125);
            type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v105 = v176[1];
            }

            else
            {
              v105 = 0;
            }

            v176[0] = v105;
            MEMORY[0x1E69E5928](v162);
            if (v176[0])
            {
              v177 = v176[0];
            }

            else
            {
              v177 = [v162 tone];
              if (v176[0])
              {
                outlined destroy of NSNumber?(v176);
              }
            }

            MEMORY[0x1E69E5920](v162);
            v104 = v177;
            [v162 setTone_];
            MEMORY[0x1E69E5920](v104);
          }

          else
          {

            v205[20] = swift_getKeyPath();
            v205[19] = v163;
            v103 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v103)
            {

              (*(v133 + 16))(v150, v126, v125);
              type metadata accessor for NSNumber();
              if (swift_dynamicCast())
              {
                v102 = v178[1];
              }

              else
              {
                v102 = 0;
              }

              v178[0] = v102;
              MEMORY[0x1E69E5928](v162);
              if (v178[0])
              {
                v179 = v178[0];
              }

              else
              {
                v179 = [v162 ownVoiceLevelGain];
                if (v178[0])
                {
                  outlined destroy of NSNumber?(v178);
                }
              }

              MEMORY[0x1E69E5920](v162);
              v101 = v179;
              [v162 setOwnVoiceLevelGain_];
              MEMORY[0x1E69E5920](v101);
            }

            else
            {

              v205[18] = swift_getKeyPath();
              v205[17] = v163;
              v100 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v100)
              {

                (*(v133 + 16))(v148, v126, v125);
                type metadata accessor for HMMultiState(0);
                if (swift_dynamicCast())
                {
                  v99 = v182;
                }

                else
                {
                  v99 = 0x100000000;
                }

                v180 = v99;
                v181 = BYTE4(v99) & 1;
                MEMORY[0x1E69E5928](v162);
                if (v181)
                {
                  v97 = [v162 enableHearingAssist];
                  v98 = v97;
                }

                else
                {
                  v98 = v180;
                }

                v96 = v98;
                MEMORY[0x1E69E5920](v162);
                [v162 setEnableHearingAssist_];
              }

              else
              {

                v205[16] = swift_getKeyPath();
                v205[15] = v163;
                v95 = dispatch thunk of static Equatable.== infix(_:_:)();

                if (v95)
                {

                  (*(v133 + 16))(v146, v126, v125);
                  type metadata accessor for HMMultiState(0);
                  if (swift_dynamicCast())
                  {
                    v94 = v185;
                  }

                  else
                  {
                    v94 = 0x100000000;
                  }

                  v183 = v94;
                  v184 = BYTE4(v94) & 1;
                  MEMORY[0x1E69E5928](v162);
                  if (v184)
                  {
                    v92 = [v162 enableMediaAssist];
                    v93 = v92;
                  }

                  else
                  {
                    v93 = v183;
                  }

                  v91 = v93;
                  MEMORY[0x1E69E5920](v162);
                  [v162 setEnableMediaAssist_];
                }

                else
                {

                  v205[14] = swift_getKeyPath();
                  v205[13] = v163;
                  v90 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v90)
                  {

                    (*(v133 + 16))(v144, v126, v125);
                    type metadata accessor for HMMultiState(0);
                    if (swift_dynamicCast())
                    {
                      v89 = v188;
                    }

                    else
                    {
                      v89 = 0x100000000;
                    }

                    v186 = v89;
                    v187 = BYTE4(v89) & 1;
                    MEMORY[0x1E69E5928](v162);
                    if (v187)
                    {
                      v87 = [v162 enableSwipeGain];
                      v88 = v87;
                    }

                    else
                    {
                      v88 = v186;
                    }

                    v86 = v88;
                    MEMORY[0x1E69E5920](v162);
                    [v162 setEnableSwipeGain_];
                  }

                  else
                  {

                    v205[12] = swift_getKeyPath();
                    v205[11] = v163;
                    v85 = dispatch thunk of static Equatable.== infix(_:_:)();

                    if (v85)
                    {
                      v21 = v118;

                      v23 = (*((*v21 & *MEMORY[0x1E69E7D40]) + 0x2F8))(v22);
                      [v162 setEnableHearingAid_];
                    }

                    else
                    {

                      v205[10] = swift_getKeyPath();
                      v205[9] = v163;
                      v84 = dispatch thunk of static Equatable.== infix(_:_:)();

                      if (v84)
                      {

                        (*(v133 + 16))(v142, v126, v125);
                        type metadata accessor for HMMultiState(0);
                        if (swift_dynamicCast())
                        {
                          v83 = v191;
                        }

                        else
                        {
                          v83 = 0x100000000;
                        }

                        v189 = v83;
                        v190 = BYTE4(v83) & 1;
                        MEMORY[0x1E69E5928](v162);
                        if (v190)
                        {
                          v81 = [v162 enableHearingProtection];
                          v82 = v81;
                        }

                        else
                        {
                          v82 = v189;
                        }

                        v80 = v82;
                        MEMORY[0x1E69E5920](v162);
                        [v162 setEnableHearingProtection_];
                      }

                      else
                      {

                        v205[8] = swift_getKeyPath();
                        v205[7] = v163;
                        v79 = dispatch thunk of static Equatable.== infix(_:_:)();

                        if (v79)
                        {

                          (*(v133 + 16))(v140, v126, v125);
                          type metadata accessor for HMMultiState(0);
                          if (swift_dynamicCast())
                          {
                            v78 = v194;
                          }

                          else
                          {
                            v78 = 0x100000000;
                          }

                          v192 = v78;
                          v193 = BYTE4(v78) & 1;
                          MEMORY[0x1E69E5928](v162);
                          if (v193)
                          {
                            v76 = [v162 enableHearingProtectionPPE];
                            v77 = v76;
                          }

                          else
                          {
                            v77 = v192;
                          }

                          v75 = v77;
                          MEMORY[0x1E69E5920](v162);
                          [v162 setEnableHearingProtectionPPE_];
                        }

                        else
                        {

                          v205[6] = swift_getKeyPath();
                          v205[5] = v163;
                          v74 = dispatch thunk of static Equatable.== infix(_:_:)();

                          if (v74)
                          {

                            (*(v133 + 16))(v138, v126, v125);
                            type metadata accessor for HMMultiState(0);
                            if (swift_dynamicCast())
                            {
                              v73 = v197;
                            }

                            else
                            {
                              v73 = 0x100000000;
                            }

                            v195 = v73;
                            v196 = BYTE4(v73) & 1;
                            MEMORY[0x1E69E5928](v162);
                            if (v196)
                            {
                              v71 = [v162 allowListeningModeOff];
                              v72 = v71;
                            }

                            else
                            {
                              v72 = v195;
                            }

                            v70 = v72;
                            MEMORY[0x1E69E5920](v162);
                            [v162 setAllowListeningModeOff_];
                          }

                          else
                          {

                            v205[4] = swift_getKeyPath();
                            v205[3] = v163;
                            v69 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v69)
                            {

                              (*(v133 + 16))(v136, v126, v125);
                              type metadata accessor for HMMultiState(0);
                              if (swift_dynamicCast())
                              {
                                v68 = v200;
                              }

                              else
                              {
                                v68 = 0x100000000;
                              }

                              v198 = v68;
                              v199 = BYTE4(v68) & 1;
                              MEMORY[0x1E69E5928](v162);
                              if (v199)
                              {
                                v66 = [v162 enablePMEVoice];
                                v67 = v66;
                              }

                              else
                              {
                                v67 = v198;
                              }

                              v65 = v67;
                              MEMORY[0x1E69E5920](v162);
                              [v162 setEnablePMEVoice_];
                            }

                            else
                            {

                              v205[2] = swift_getKeyPath();
                              v205[1] = v163;
                              v64 = dispatch thunk of static Equatable.== infix(_:_:)();

                              if (v64)
                              {
                                v24 = v118;

                                v26 = (*((*v24 & *MEMORY[0x1E69E7D40]) + 0x278))(v25);
                                [v162 setEnablePMEMedia_];
                              }

                              else
                              {
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v27 = v132;
  v28 = Logger.shared.unsafeMutableAddressor();
  (*(v129 + 16))(v27, v28, v128);
  MEMORY[0x1E69E5928](v162);
  v53 = 7;
  v54 = swift_allocObject();
  *(v54 + 16) = v162;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v51 = 17;
  v56 = swift_allocObject();
  *(v56 + 16) = 64;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v52 = 32;
  v29 = swift_allocObject();
  v30 = v54;
  v55 = v29;
  *(v29 + 16) = v119;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  v32 = v55;
  v59 = v31;
  *(v31 + 16) = v120;
  *(v31 + 24) = v32;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v58 = _allocateUninitializedArray<A>(_:)();
  v60 = v33;

  v34 = v56;
  v35 = v60;
  *v60 = v121;
  v35[1] = v34;

  v36 = v57;
  v37 = v60;
  v60[2] = v122;
  v37[3] = v36;

  v38 = v59;
  v39 = v60;
  v60[4] = v123;
  v39[5] = v38;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v62, v63))
  {
    v40 = v124;
    v44 = static UnsafeMutablePointer.allocate(capacity:)();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = createStorage<A>(capacity:type:)(1, v43, v43);
    v46 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v47 = v205;
    v205[0] = v44;
    v48 = &v204;
    v204 = v45;
    v49 = &v203;
    v203 = v46;
    serialize(_:at:)(2, v205);
    serialize(_:at:)(1, v47);
    v201 = v121;
    v202 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v201, v47, v48, v49);
    v50 = v40;
    if (v40)
    {

      __break(1u);
    }

    else
    {
      v201 = v122;
      v202 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v201, v205, &v204, &v203);
      v42[1] = 0;
      v201 = v123;
      v202 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v201, v205, &v204, &v203);
      _os_log_impl(&dword_1D93D0000, v62, v63, "HeadphoneManager: CONFIG created: %@ ", v44, 0xCu);
      destroyStorage<A>(_:count:)(v45, 1, v43);
      destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v44, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v62);
  (*(v129 + 8))(v132, v128);
  return v162;
}

unint64_t type metadata accessor for HMDeviceConfigurations()
{
  v2 = lazy cache variable for type metadata for HMDeviceConfigurations;
  if (!lazy cache variable for type metadata for HMDeviceConfigurations)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMDeviceConfigurations);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t key path getter for HearingRecordModel.amplification : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 344))(v2);
}

uint64_t key path setter for HearingRecordModel.amplification : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 352))(v3);
}

uint64_t key path getter for HearingRecordModel.balance : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 368))(v2);
}

uint64_t key path setter for HearingRecordModel.balance : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 376))(v3);
}

uint64_t key path getter for HearingRecordModel.beamFormer : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 392))(v2);
}

uint64_t key path setter for HearingRecordModel.beamFormer : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 400))(v3);
}

uint64_t key path getter for HearingRecordModel.noiseSuppression : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 704))(v2);
}

uint64_t key path setter for HearingRecordModel.noiseSuppression : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 712))(v3);
}

uint64_t key path getter for HearingRecordModel.tone : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 800))(v2);
}

uint64_t key path setter for HearingRecordModel.tone : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 808))(v3);
}

uint64_t key path getter for HearingRecordModel.ownVoiceLevel : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 728))(v2);
}

uint64_t key path setter for HearingRecordModel.ownVoiceLevel : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 736))(v3);
}

uint64_t key path getter for HearingRecordModel.hearingAssistEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 512))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 520))(v3);
}

uint64_t key path getter for HearingRecordModel.mediaAssistEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 488))(v2);
}

uint64_t key path setter for HearingRecordModel.mediaAssistEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 496))(v3);
}

uint64_t key path getter for HearingRecordModel.swipeGainEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 872))(v2);
}

uint64_t key path setter for HearingRecordModel.swipeGainEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 880))(v3);
}

uint64_t key path getter for HearingRecordModel.hearingAidEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 680))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAidEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 688))(v3);
}

uint64_t key path getter for HearingRecordModel.hearingProtectionEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 632))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingProtectionEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 640))(v3);
}

uint64_t key path getter for HearingRecordModel.hearingProtectionPPEEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 920))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingProtectionPPEEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 928))(v3);
}

uint64_t key path getter for HearingRecordModel.listeningModeOffAllowed : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 896))(v2);
}

uint64_t key path setter for HearingRecordModel.listeningModeOffAllowed : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 904))(v3);
}

uint64_t key path getter for HearingRecordModel.pmeVoiceEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 752))(v2);
}

uint64_t key path setter for HearingRecordModel.pmeVoiceEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 760))(v3);
}

uint64_t key path getter for HearingRecordModel.pmeMediaEnabled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 776))(v2);
}

uint64_t key path setter for HearingRecordModel.pmeMediaEnabled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 784))(v3);
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply@<X0>(uint64_t *a1@<X8>)
{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}