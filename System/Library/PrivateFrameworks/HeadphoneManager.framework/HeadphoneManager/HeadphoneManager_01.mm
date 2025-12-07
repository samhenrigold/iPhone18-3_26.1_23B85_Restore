Swift::Void __swiftcall HeadphoneDevice.setFirmwareSeedingPlacardShowed()()
{
  v53 = 0;
  v40 = 0;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = v42;
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v0;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SeedingPlacardShowed", 0x14uLL, 1);
  object = v2._object;
  v46 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  v48 = *MEMORY[0x1E695E4D0];
  v47 = v48;
  v3 = v48;
  if (v48)
  {
    v39 = v47;
    v38 = v47;
  }

  else
  {
    v38 = 0;
  }

  v4 = v44;
  v27 = v38;
  v28 = "com.apple.HeadphoneSettings";
  v29 = 27;
  v30 = 1;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  v26 = v5._object;
  v25 = MEMORY[0x1DA730940](v5._countAndFlagsBits);
  CFPreferencesSetAppValue(v46, v27, v25);

  swift_unknownObjectRelease();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v28, v29, v30);
  v32 = v6._object;
  v31 = MEMORY[0x1DA730940](v6._countAndFlagsBits);
  CFPreferencesAppSynchronize(v31);

  v7 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v43 + 16))(v4, v7, v41);
  v36 = Logger.logObject.getter();
  v33 = v36;
  v35 = static os_log_type_t.default.getter();
  v34 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v37 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v36, v35))
  {
    v8 = v40;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = 0;
    v17 = createStorage<A>(capacity:type:)(0, v13, v13);
    v15 = v17;
    v18 = createStorage<A>(capacity:type:)(v14, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v52 = v16;
    v51 = v17;
    v50 = v18;
    v19 = 0;
    v20 = &v52;
    serialize(_:at:)(0, &v52);
    serialize(_:at:)(v19, v20);
    v49 = v37;
    v21 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v22 = &v10 - 6;
    *(&v10 - 4) = v9;
    *(&v10 - 3) = &v51;
    *(&v10 - 2) = &v50;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v24 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v33, v34, "FW Seeding: setFirmwareSeedingPlacardShowed", v12, 2u);
      v10 = 0;
      destroyStorage<A>(_:count:)(v15, 0, v13);
      destroyStorage<A>(_:count:)(v18, v10, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v12, MEMORY[0x1E69E7508]);

      v11 = v24;
    }
  }

  else
  {

    v11 = v40;
  }

  (*(v43 + 8))(v44, v41);
}

id HeadphoneDevice.getUARPSettingsAccessory()()
{
  v244 = partial apply for implicit closure #2 in HeadphoneDevice.getUARPSettingsAccessory();
  v245 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v246 = closure #1 in OSLogArguments.append(_:)partial apply;
  v247 = closure #1 in OSLogArguments.append(_:)partial apply;
  v248 = closure #1 in OSLogArguments.append(_:)partial apply;
  v249 = partial apply for implicit closure #4 in HeadphoneDevice.getUARPSettingsAccessory();
  v250 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v251 = partial apply for implicit closure #6 in HeadphoneDevice.getUARPSettingsAccessory();
  v252 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v253 = partial apply for implicit closure #8 in HeadphoneDevice.getUARPSettingsAccessory();
  v254 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v255 = closure #1 in OSLogArguments.append(_:)partial apply;
  v256 = closure #1 in OSLogArguments.append(_:)partial apply;
  v257 = closure #1 in OSLogArguments.append(_:)partial apply;
  v258 = closure #1 in OSLogArguments.append(_:)partial apply;
  v259 = closure #1 in OSLogArguments.append(_:)partial apply;
  v260 = closure #1 in OSLogArguments.append(_:)partial apply;
  v261 = closure #1 in OSLogArguments.append(_:)partial apply;
  v262 = closure #1 in OSLogArguments.append(_:)partial apply;
  v263 = closure #1 in OSLogArguments.append(_:)partial apply;
  v264 = partial apply for implicit closure #10 in HeadphoneDevice.getUARPSettingsAccessory();
  v265 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v266 = closure #1 in OSLogArguments.append(_:)partial apply;
  v267 = closure #1 in OSLogArguments.append(_:)partial apply;
  v268 = closure #1 in OSLogArguments.append(_:)partial apply;
  v321 = 0;
  v320 = 0;
  v282 = v319;
  v319[0] = 0;
  v319[1] = 0;
  v316[0] = 0;
  v316[1] = 0;
  v313 = 0;
  v285 = 0;
  v302 = 0;
  v279 = 0;
  v269 = type metadata accessor for Logger();
  v270 = *(v269 - 8);
  v271 = v269 - 8;
  v272 = (*(v270 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v269);
  v273 = v78 - v272;
  v274 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78 - v272);
  v275 = v78 - v274;
  v276 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78 - v274);
  v277 = v78 - v276;
  v321 = v0;
  v278 = [objc_opt_self() sharedDatabase];
  v280 = [v278 accessoryList];
  MEMORY[0x1E69E5920](v278);
  type metadata accessor for UARPSettingsAccessory();
  v281 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v320 = v281;
  MEMORY[0x1E69E5920](v280);

  v318 = v281;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo21UARPSettingsAccessoryCGMd, &_sSaySo21UARPSettingsAccessoryCGMR);
  v284 = lazy protocol witness table accessor for type [UARPSettingsAccessory] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v285; ; i = v239)
  {
    v239 = i;
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo21UARPSettingsAccessoryCGGMd, &_ss16IndexingIteratorVySaySo21UARPSettingsAccessoryCGGMR);
    IndexingIterator.next()();
    v241 = v317;
    v242 = v240;
    if (!v317)
    {
      break;
    }

    v238 = v241;
    v235 = v241;
    v302 = v241;
    v236 = (*((*v243 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v237 = [v236 serialNumberLeft];
    if (v237)
    {
      v234 = v237;
      v229 = v237;
      v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v231 = v3;
      MEMORY[0x1E69E5920](v229);
      v232 = v230;
      v233 = v231;
    }

    else
    {
      v232 = 0;
      v233 = 0;
    }

    v227 = v233;
    v226 = v232;
    MEMORY[0x1E69E5920](v236);

    v228 = [v235 serialNumber];
    if (v228)
    {
      v225 = v228;
      v222 = v228;
      *&v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v223 + 1) = v4;
      MEMORY[0x1E69E5920](v222);
      v224 = v223;
    }

    else
    {
      v224 = 0uLL;
    }

    v221 = v224;

    v300[0] = v226;
    v300[1] = v227;
    v301 = v221;
    if (v227)
    {
      outlined init with copy of String?(v300, &v289);
      if (*(&v301 + 1))
      {
        v218 = &v288;
        v288 = v289;
        v217 = &v287;
        v287 = v301;
        v219 = MEMORY[0x1DA7309E0](v289, *(&v289 + 1), v301, *(&v301 + 1));
        outlined destroy of String(v217);
        outlined destroy of String(v218);
        outlined destroy of String?(v300);
        v220 = v219;
        goto LABEL_15;
      }

      outlined destroy of String(&v289);
LABEL_17:
      outlined destroy of (String?, String?)(v300);
      v220 = 0;
      goto LABEL_15;
    }

    if (*(&v301 + 1))
    {
      goto LABEL_17;
    }

    outlined destroy of String?(v300);
    v220 = 1;
LABEL_15:
    v216 = v220;

    MEMORY[0x1E69E5928](v243);
    v5 = MEMORY[0x1E69E5928](v235);
    if (v216)
    {
      v215 = 1;
      goto LABEL_35;
    }

    v213 = (*((*v243 & *MEMORY[0x1E69E7D40]) + 0x228))(v5);
    v6 = [v213 serialNumberRight];
    v214 = v6;
    if (v6)
    {
      v212 = v214;
      v207 = v214;
      v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v7;
      MEMORY[0x1E69E5920](v207);
      v210 = v208;
      v211 = v209;
    }

    else
    {
      v210 = 0;
      v211 = 0;
    }

    v205 = v211;
    v204 = v210;
    MEMORY[0x1E69E5920](v213);

    v206 = [v235 serialNumber];
    if (v206)
    {
      v203 = v206;
      v200 = v206;
      *&v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v201 + 1) = v8;
      MEMORY[0x1E69E5920](v200);
      v202 = v201;
    }

    else
    {
      v202 = 0uLL;
    }

    v199 = v202;

    v298[0] = v204;
    v298[1] = v205;
    v299 = v199;
    if (!v205)
    {
      if (!*(&v299 + 1))
      {
        outlined destroy of String?(v298);
        v198 = 1;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    outlined init with copy of String?(v298, &v292);
    if (!*(&v299 + 1))
    {
      outlined destroy of String(&v292);
LABEL_33:
      outlined destroy of (String?, String?)(v298);
      v198 = 0;
      goto LABEL_32;
    }

    v196 = &v291;
    v291 = v292;
    v195 = &v290;
    v290 = v299;
    v197 = MEMORY[0x1DA7309E0](v292, *(&v292 + 1), v299, *(&v299 + 1));
    outlined destroy of String(v195);
    outlined destroy of String(v196);
    outlined destroy of String?(v298);
    v198 = v197;
LABEL_32:
    v194 = v198;

    v215 = v194;
LABEL_35:
    v192 = v215;
    MEMORY[0x1E69E5920](v243);
    MEMORY[0x1E69E5920](v235);
    v193 = v235;
    if (v192)
    {
      v9 = v277;
      v178 = v193;
      v10 = Logger.fwSeeding.unsafeMutableAddressor();
      (*(v270 + 16))(v9, v10, v269);
      MEMORY[0x1E69E5928](v178);
      v181 = 7;
      v182 = swift_allocObject();
      *(v182 + 16) = v178;
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.error.getter();
      v179 = 17;
      v184 = swift_allocObject();
      *(v184 + 16) = 32;
      v185 = swift_allocObject();
      *(v185 + 16) = 8;
      v180 = 32;
      v11 = swift_allocObject();
      v12 = v182;
      v183 = v11;
      *(v11 + 16) = v244;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v183;
      v187 = v13;
      *(v13 + 16) = v245;
      *(v13 + 24) = v14;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v186 = _allocateUninitializedArray<A>(_:)();
      v188 = v15;

      v16 = v184;
      v17 = v188;
      *v188 = v246;
      v17[1] = v16;

      v18 = v185;
      v19 = v188;
      v188[2] = v247;
      v19[3] = v18;

      v20 = v187;
      v21 = v188;
      v188[4] = v248;
      v21[5] = v20;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v190, v191))
      {
        v22 = v239;
        v171 = static UnsafeMutablePointer.allocate(capacity:)();
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v172 = createStorage<A>(capacity:type:)(0, v170, v170);
        v173 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v174 = &v297;
        v297 = v171;
        v175 = &v296;
        v296 = v172;
        v176 = &v295;
        v295 = v173;
        serialize(_:at:)(2, &v297);
        serialize(_:at:)(1, v174);
        v293 = v246;
        v294 = v184;
        closure #1 in osLogInternal(_:log:type:)(&v293, v174, v175, v176);
        v177 = v22;
        if (v22)
        {

          __break(1u);
        }

        else
        {
          v293 = v247;
          v294 = v185;
          closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
          v169 = 0;
          v293 = v248;
          v294 = v187;
          closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
          _os_log_impl(&dword_1D93D0000, v190, v191, "FW Seeding: Get Accessory List: Accessory found for %s", v171, 0xCu);
          destroyStorage<A>(_:count:)(v172, 0, v170);
          destroyStorage<A>(_:count:)(v173, 1, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v171, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v190);
      (*(v270 + 8))(v277, v269);
      outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(v319);

      return v178;
    }

    MEMORY[0x1E69E5920](v235);
  }

  v23 = v275;
  v139 = v242;
  outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(v319);
  v24 = Logger.fwSeeding.unsafeMutableAddressor();
  v140 = *(v270 + 16);
  v141 = v270 + 16;
  v140(v23, v24, v269);
  MEMORY[0x1E69E5928](v243);
  v142 = 24;
  v151 = 7;
  v25 = swift_allocObject();
  v26 = v243;
  v143 = v25;
  *(v25 + 16) = v243;
  MEMORY[0x1E69E5928](v26);
  v27 = swift_allocObject();
  v28 = v243;
  v145 = v27;
  *(v27 + 16) = v243;
  MEMORY[0x1E69E5928](v28);
  v152 = swift_allocObject();
  *(v152 + 16) = v243;
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.default.getter();
  v148 = 17;
  v154 = swift_allocObject();
  v147 = 32;
  *(v154 + 16) = 32;
  v155 = swift_allocObject();
  v149 = 8;
  *(v155 + 16) = 8;
  v150 = 32;
  v29 = swift_allocObject();
  v30 = v143;
  v144 = v29;
  *(v29 + 16) = v249;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  v32 = v144;
  v156 = v31;
  *(v31 + 16) = v250;
  *(v31 + 24) = v32;
  v157 = swift_allocObject();
  *(v157 + 16) = v147;
  v158 = swift_allocObject();
  *(v158 + 16) = v149;
  v33 = swift_allocObject();
  v34 = v145;
  v146 = v33;
  *(v33 + 16) = v251;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v146;
  v159 = v35;
  *(v35 + 16) = v252;
  *(v35 + 24) = v36;
  v160 = swift_allocObject();
  *(v160 + 16) = v147;
  v161 = swift_allocObject();
  *(v161 + 16) = v149;
  v37 = swift_allocObject();
  v38 = v152;
  v153 = v37;
  *(v37 + 16) = v253;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  v40 = v153;
  v163 = v39;
  *(v39 + 16) = v254;
  *(v39 + 24) = v40;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v162 = _allocateUninitializedArray<A>(_:)();
  v164 = v41;

  v42 = v154;
  v43 = v164;
  *v164 = v255;
  v43[1] = v42;

  v44 = v155;
  v45 = v164;
  v164[2] = v256;
  v45[3] = v44;

  v46 = v156;
  v47 = v164;
  v164[4] = v257;
  v47[5] = v46;

  v48 = v157;
  v49 = v164;
  v164[6] = v258;
  v49[7] = v48;

  v50 = v158;
  v51 = v164;
  v164[8] = v259;
  v51[9] = v50;

  v52 = v159;
  v53 = v164;
  v164[10] = v260;
  v53[11] = v52;

  v54 = v160;
  v55 = v164;
  v164[12] = v261;
  v55[13] = v54;

  v56 = v161;
  v57 = v164;
  v164[14] = v262;
  v57[15] = v56;

  v58 = v163;
  v59 = v164;
  v164[16] = v263;
  v59[17] = v58;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v166, v167))
  {
    v60 = v239;
    v132 = static UnsafeMutablePointer.allocate(capacity:)();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v133 = createStorage<A>(capacity:type:)(0, v131, v131);
    v134 = createStorage<A>(capacity:type:)(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v135 = &v307;
    v307 = v132;
    v136 = &v306;
    v306 = v133;
    v137 = &v305;
    v305 = v134;
    serialize(_:at:)(2, &v307);
    serialize(_:at:)(3, v135);
    v303 = v255;
    v304 = v154;
    closure #1 in osLogInternal(_:log:type:)(&v303, v135, v136, v137);
    v138 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v303 = v256;
      v304 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v129 = 0;
      v303 = v257;
      v304 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v128 = 0;
      v303 = v258;
      v304 = v157;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v127 = 0;
      v303 = v259;
      v304 = v158;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v126 = 0;
      v303 = v260;
      v304 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v125 = 0;
      v303 = v261;
      v304 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v124 = 0;
      v303 = v262;
      v304 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v123 = 0;
      v303 = v263;
      v304 = v163;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v122 = 0;
      _os_log_impl(&dword_1D93D0000, v166, v167, "FW Seeding: Get Accessory List: Serial: %s, Serial Left: %s, Serial Right: %s", v132, 0x20u);
      destroyStorage<A>(_:count:)(v133, 0, v131);
      destroyStorage<A>(_:count:)(v134, 3, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v132, MEMORY[0x1E69E7508]);

      v130 = v122;
    }
  }

  else
  {
    v61 = v239;

    v130 = v61;
  }

  v120 = v130;
  MEMORY[0x1E69E5920](v166);
  v118 = *(v270 + 8);
  v119 = v270 + 8;
  v118(v275, v269);

  v315 = v281;
  Collection<>.makeIterator()();
  for (j = v120; ; j = v78[0])
  {
    v116 = j;
    IndexingIterator.next()();
    v117 = v314;
    if (!v314)
    {
      break;
    }

    v115 = v117;
    v62 = v273;
    v102 = v117;
    v313 = v117;
    v63 = Logger.fwSeeding.unsafeMutableAddressor();
    v140(v62, v63, v269);
    MEMORY[0x1E69E5928](v102);
    v105 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = v102;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    v103 = 17;
    v108 = swift_allocObject();
    *(v108 + 16) = 32;
    v109 = swift_allocObject();
    *(v109 + 16) = 8;
    v104 = 32;
    v64 = swift_allocObject();
    v65 = v106;
    v107 = v64;
    *(v64 + 16) = v264;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    v67 = v107;
    v111 = v66;
    *(v66 + 16) = v265;
    *(v66 + 24) = v67;
    v110 = _allocateUninitializedArray<A>(_:)();
    v112 = v68;

    v69 = v108;
    v70 = v112;
    *v112 = v266;
    v70[1] = v69;

    v71 = v109;
    v72 = v112;
    v112[2] = v267;
    v72[3] = v71;

    v73 = v111;
    v74 = v112;
    v112[4] = v268;
    v74[5] = v73;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v113, v114))
    {
      v75 = v116;
      v92 = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v93 = createStorage<A>(capacity:type:)(0, v91, v91);
      v94 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v95 = &v312;
      v312 = v92;
      v96 = &v311;
      v311 = v93;
      v97 = &v310;
      v310 = v94;
      serialize(_:at:)(2, &v312);
      serialize(_:at:)(1, v95);
      v308 = v266;
      v309 = v108;
      closure #1 in osLogInternal(_:log:type:)(&v308, v95, v96, v97);
      v98 = v75;
      v99 = v108;
      v100 = v109;
      v101 = v111;
      if (v75)
      {
        v87 = v99;
        v88 = v100;
        v89 = v101;
        v78[2] = v101;
        v78[1] = v100;

        __break(1u);
      }

      else
      {
        v308 = v267;
        v309 = v109;
        closure #1 in osLogInternal(_:log:type:)(&v308, &v312, &v311, &v310);
        v83 = 0;
        v84 = v108;
        v85 = v109;
        v86 = v111;
        v308 = v268;
        v309 = v111;
        closure #1 in osLogInternal(_:log:type:)(&v308, &v312, &v311, &v310);
        v79 = 0;
        v80 = v108;
        v81 = v109;
        v82 = v111;
        _os_log_impl(&dword_1D93D0000, v113, v114, "FW Seeding: Get Accessory List: Accessory: %s", v92, 0xCu);
        destroyStorage<A>(_:count:)(v93, 0, v91);
        destroyStorage<A>(_:count:)(v94, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v92, MEMORY[0x1E69E7508]);

        v90 = v79;
      }
    }

    else
    {
      v76 = v116;

      v90 = v76;
    }

    v78[0] = v90;
    MEMORY[0x1E69E5920](v113);
    v118(v273, v269);
    MEMORY[0x1E69E5920](v102);
  }

  outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(v316);

  return 0;
}

uint64_t HeadphoneDevice.getSeedProgram()()
{
  v129 = partial apply for implicit closure #1 in HeadphoneDevice.getSeedProgram();
  v130 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v131 = partial apply for implicit closure #2 in HeadphoneDevice.getSeedProgram();
  v132 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v133 = closure #1 in OSLogArguments.append(_:)partial apply;
  v134 = closure #1 in OSLogArguments.append(_:)partial apply;
  v135 = partial apply for closure #1 in OSLogArguments.append(_:);
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v137 = closure #1 in OSLogArguments.append(_:)partial apply;
  v138 = closure #1 in OSLogArguments.append(_:)partial apply;
  v139 = partial apply for specialized implicit closure #3 in HeadphoneDevice.getSeedProgram();
  v140 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v141 = closure #1 in OSLogArguments.append(_:)partial apply;
  v142 = closure #1 in OSLogArguments.append(_:)partial apply;
  v143 = closure #1 in OSLogArguments.append(_:)partial apply;
  v144 = "Fatal error";
  v145 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v146 = "HeadphoneManager/FirmwareUpdate.swift";
  v177 = *MEMORY[0x1E69E9840];
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v147 = 0;
  v160 = 0;
  v148 = type metadata accessor for Logger();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v148);
  v152 = v46 - v151;
  v153 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46 - v151);
  v154 = v46 - v153;
  v167 = v0;
  v155 = swift_allocObject();
  v166 = v155 + 16;
  *(v155 + 16) = 0;
  v156 = [objc_opt_self() sharedManager];
  if (v156)
  {
    v128 = v156;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v126 = v128;
  v127 = [v128 enrolledBetaProgramForCurrentDevice];
  MEMORY[0x1E69E5920](v126);
  if (v127)
  {
    v125 = v127;
    v2 = v154;
    v105 = v127;
    v160 = v127;
    v3 = [v127 program];
    *(v155 + 16) = v3;
    v4 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v149 + 16))(v2, v4, v148);
    MEMORY[0x1E69E5928](v105);
    v111 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = v105;

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();
    v108 = 17;
    v113 = swift_allocObject();
    *(v113 + 16) = 64;
    v114 = swift_allocObject();
    v109 = 8;
    *(v114 + 16) = 8;
    v110 = 32;
    v5 = swift_allocObject();
    v6 = v106;
    v107 = v5;
    *(v5 + 16) = v129;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v107;
    v115 = v7;
    *(v7 + 16) = v130;
    *(v7 + 24) = v8;
    v116 = swift_allocObject();
    *(v116 + 16) = 32;
    v117 = swift_allocObject();
    *(v117 + 16) = v109;
    v9 = swift_allocObject();
    v10 = v155;
    v112 = v9;
    *(v9 + 16) = v131;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v112;
    v119 = v11;
    *(v11 + 16) = v132;
    *(v11 + 24) = v12;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v118 = _allocateUninitializedArray<A>(_:)();
    v120 = v13;

    v14 = v113;
    v15 = v120;
    *v120 = v133;
    v15[1] = v14;

    v16 = v114;
    v17 = v120;
    v120[2] = v134;
    v17[3] = v16;

    v18 = v115;
    v19 = v120;
    v120[4] = v135;
    v19[5] = v18;

    v20 = v116;
    v21 = v120;
    v120[6] = v136;
    v21[7] = v20;

    v22 = v117;
    v23 = v120;
    v120[8] = v137;
    v23[9] = v22;

    v24 = v119;
    v25 = v120;
    v120[10] = v138;
    v25[11] = v24;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v122, v123))
    {
      v26 = v147;
      v97 = static UnsafeMutablePointer.allocate(capacity:)();
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v96 = 1;
      v98 = createStorage<A>(capacity:type:)(1, v95, v95);
      v99 = createStorage<A>(capacity:type:)(v96, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v101 = &v159;
      v159 = v97;
      v102 = &v169;
      v169 = v98;
      v103 = &v168;
      v168 = v99;
      v100 = 2;
      serialize(_:at:)(2, &v159);
      serialize(_:at:)(v100, v101);
      v157 = v133;
      v158 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v157, v101, v102, v103);
      v104 = v26;
      if (v26)
      {

        __break(1u);
      }

      else
      {
        v157 = v134;
        v158 = v114;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v93 = 0;
        v157 = v135;
        v158 = v115;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v92 = 0;
        v157 = v136;
        v158 = v116;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v91 = 0;
        v157 = v137;
        v158 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v90 = 0;
        v157 = v138;
        v158 = v119;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v89 = 0;
        _os_log_impl(&dword_1D93D0000, v122, v123, "FW Seeding: Get: Beta Program: %@, Seed Program: %s", v97, 0x16u);
        v88 = 1;
        destroyStorage<A>(_:count:)(v98, 1, v95);
        destroyStorage<A>(_:count:)(v99, v88, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v97, MEMORY[0x1E69E7508]);

        v94 = v89;
      }
    }

    else
    {
      v27 = v147;

      v94 = v27;
    }

    v87 = v94;
    MEMORY[0x1E69E5920](v122);
    (*(v149 + 8))(v154, v148);
    MEMORY[0x1E69E5920](v105);
    v124 = v87;
  }

  else
  {
    v124 = v147;
  }

  v75 = v124;
  v80 = &v165;
  v165 = 0;
  v79 = "com.apple.HeadphoneSettings";
  v78 = 27;
  v86 = 1;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  object = v28._object;
  v76 = MEMORY[0x1DA730940](v28._countAndFlagsBits);
  CFPreferencesAppSynchronize(v76);
  MEMORY[0x1E69E5920](v76);

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ImprovedSeedingUIForcedSeedProgram", 0x22uLL, v86 & 1);
  v84 = v29._object;
  v83 = MEMORY[0x1DA730940](v29._countAndFlagsBits);
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v79, v78, v86 & 1);
  v82 = v30._object;
  v81 = MEMORY[0x1DA730940](v30._countAndFlagsBits);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v83, v81, v80);
  MEMORY[0x1E69E5920](v81);

  MEMORY[0x1E69E5920](v83);

  v164 = AppIntegerValue;
  if ((v165 != 0) == (v86 & 1))
  {
    if (AppIntegerValue)
    {
      if (AppIntegerValue == 1)
      {
        v73 = &v171;
        swift_beginAccess();
        *(v155 + 16) = 2;
        swift_endAccess();
      }

      else
      {
        if (AppIntegerValue == 2)
        {
          v72 = &v172;
          swift_beginAccess();
          *(v155 + 16) = 3;
        }

        else
        {
          v71 = &v175;
          swift_beginAccess();
          *(v155 + 16) = 4;
        }

        swift_endAccess();
      }
    }

    else
    {
      v74 = &v170;
      swift_beginAccess();
      *(v155 + 16) = 0;
      swift_endAccess();
    }

    v31 = v152;
    v32 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v149 + 16))(v31, v32, v148);

    v57 = *(v155 + 16);

    v60 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v58 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = 32;
    v33 = swift_allocObject();
    v34 = v61;
    v62 = v33;
    *(v33 + 16) = v139;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v62;
    v66 = v35;
    *(v35 + 16) = v140;
    *(v35 + 24) = v36;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v37;

    v38 = v63;
    v39 = v67;
    *v67 = v141;
    v39[1] = v38;

    v40 = v64;
    v41 = v67;
    v67[2] = v142;
    v41[3] = v40;

    v42 = v66;
    v43 = v67;
    v67[4] = v143;
    v43[5] = v42;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v44 = v75;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v53 = &v163;
      v163 = v50;
      v54 = &v174;
      v174 = v51;
      v55 = &v173;
      v173 = v52;
      serialize(_:at:)(2, &v163);
      serialize(_:at:)(1, v53);
      v161 = v141;
      v162 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v161, v53, v54, v55);
      v56 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v161 = v142;
        v162 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v161, &v163, &v174, &v173);
        v48 = 0;
        v161 = v143;
        v162 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v161, &v163, &v174, &v173);
        _os_log_impl(&dword_1D93D0000, v69, v70, "FW Seeding: Get: Force Seed Program: %s", v50, 0xCu);
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v50, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v149 + 8))(v152, v148);
  }

  v46[1] = &v176;
  swift_beginAccess();
  v47 = *(v155 + 16);
  swift_endAccess();

  return v47;
}

uint64_t implicit closure #9 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #10 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Enabled", 7uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Disabled", 8uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #11 in HeadphoneDevice.shouldShowFirmwareUpdate()(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  if (v3)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #12 in HeadphoneDevice.shouldShowFirmwareUpdate()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #13 in HeadphoneDevice.shouldShowFirmwareUpdate()(uint64_t a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Found", 5uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT Found", 9uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #14 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #15 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

Swift::Bool __swiftcall HeadphoneDevice.getFirmwareUpgradeParticipation()()
{
  v252 = v274;
  v297 = 0;
  v253 = 0;
  v292 = 0;
  v291 = 0;
  v254 = type metadata accessor for Logger();
  v255 = *(v254 - 8);
  v256 = v255;
  v258 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v254 - 8);
  v260 = (v258 + 15) & 0xFFFFFFFFFFFFFFF0;
  v257 = &v60 - v260;
  MEMORY[0x1EEE9AC00](&v60 - v260);
  v259 = &v60 - v260;
  MEMORY[0x1EEE9AC00](&v60 - v260);
  v261 = &v60 - v260;
  v297 = v0;
  v262 = HeadphoneDevice.getUARPSettingsAccessory()();
  if (v262)
  {
    v251 = v262;
    v221 = v262;
    v292 = v262;
    v1 = HeadphoneDevice.getSeedProgram()();
    v2 = v261;
    v219 = v1;
    v216 = v1;
    v291 = v1;
    v3 = Logger.fwSeeding.unsafeMutableAddressor();
    v217 = *(v256 + 16);
    v218 = (v256 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v217(v2, v3, v254);
    v220 = 24;
    v235 = 7;
    v4 = swift_allocObject();
    v5 = v221;
    v226 = v4;
    *(v4 + 16) = v219;
    v6 = v5;
    v236 = swift_allocObject();
    *(v236 + 16) = v221;
    v250 = Logger.logObject.getter();
    v222 = v250;
    v249 = static os_log_type_t.default.getter();
    v223 = v249;
    v230 = 17;
    v240 = swift_allocObject();
    v224 = v240;
    v229 = 32;
    *(v240 + 16) = 32;
    v7 = swift_allocObject();
    v8 = v229;
    v241 = v7;
    v225 = v7;
    v232 = 8;
    *(v7 + 16) = 8;
    v234 = v8;
    v9 = swift_allocObject();
    v10 = v226;
    v227 = v9;
    *(v9 + 16) = partial apply for implicit closure #1 in HeadphoneDevice.getFirmwareUpgradeParticipation();
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v227;
    v242 = v11;
    v228 = v11;
    *(v11 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v11 + 24) = v12;
    v243 = swift_allocObject();
    v231 = v243;
    *(v243 + 16) = v229;
    v244 = swift_allocObject();
    v233 = v244;
    *(v244 + 16) = v232;
    v13 = swift_allocObject();
    v14 = v236;
    v237 = v13;
    *(v13 + 16) = partial apply for implicit closure #2 in HeadphoneDevice.getFirmwareUpgradeParticipation();
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v237;
    v247 = v15;
    v238 = v15;
    *(v15 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v15 + 24) = v16;
    v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v239 = v248;
    v245 = _allocateUninitializedArray<A>(_:)();
    v246 = v17;

    v18 = v240;
    v19 = v246;
    *v246 = closure #1 in OSLogArguments.append(_:)partial apply;
    v19[1] = v18;

    v20 = v241;
    v21 = v246;
    v246[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v21[3] = v20;

    v22 = v242;
    v23 = v246;
    v246[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v23[5] = v22;

    v24 = v243;
    v25 = v246;
    v246[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v25[7] = v24;

    v26 = v244;
    v27 = v246;
    v246[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v27[9] = v26;

    v28 = v246;
    v29 = v247;
    v246[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v28[11] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v250, v249))
    {
      v30 = v253;
      v209 = static UnsafeMutablePointer.allocate(capacity:)();
      v206 = v209;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v210 = createStorage<A>(capacity:type:)(0, v207, v207);
      v208 = v210;
      v212 = 2;
      v211 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v267 = v209;
      v266 = v210;
      v265 = v211;
      v213 = &v267;
      serialize(_:at:)(v212, &v267);
      serialize(_:at:)(v212, v213);
      v263 = closure #1 in OSLogArguments.append(_:)partial apply;
      v264 = v224;
      closure #1 in osLogInternal(_:log:type:)(&v263, v213, &v266, &v265);
      v214 = v30;
      v215 = v30;
      if (v30)
      {
        v204 = 0;

        __break(1u);
      }

      else
      {
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v225;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v202 = 0;
        v203 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v228;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v200 = 0;
        v201 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v231;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v198 = 0;
        v199 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v233;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v196 = 0;
        v197 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v238;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v194 = 0;
        v195 = 0;
        _os_log_impl(&dword_1D93D0000, v222, v223, "FW Seeding: Get: Program: %s, Asset Location: %s", v206, 0x16u);
        destroyStorage<A>(_:count:)(v208, 0, v207);
        destroyStorage<A>(_:count:)(v211, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v206, MEMORY[0x1E69E7508]);

        v205 = v194;
      }
    }

    else
    {
      v31 = v253;

      v205 = v31;
    }

    v187 = v205;

    v188 = *(v256 + 8);
    v189 = (v256 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v188(v261, v254);
    v290[8] = v216;
    v290[7] = 0;
    v191 = type metadata accessor for SDSeedProgram(0);
    v190 = v191;
    v192 = lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    v193 = == infix<A>(_:_:)();
    v32 = v221;
    if ((v193 & 1) == 0)
    {
      v170 = 0;
LABEL_21:
      v168 = v170;

      if (v168)
      {

        v166 = 0;
        v167 = v187;
        return v166;
      }

      v290[6] = v216;
      v290[5] = 3;
      v165 = == infix<A>(_:_:)();
      v35 = v221;
      if ((v165 & 1) == 0)
      {
        v148 = 0;
LABEL_37:
        v146 = v148;

        v39 = v221;
        if (v146)
        {
          v145 = 1;
          goto LABEL_71;
        }

        v290[4] = v216;
        v290[3] = 2;
        v144 = == infix<A>(_:_:)();
        v40 = v221;
        if ((v144 & 1) == 0)
        {
          v141 = 0;
          goto LABEL_51;
        }

        v143 = [v221 assetLocation];
        if (v143)
        {
          v142 = v143;
          v136 = v143;
          v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v138 = v41;

          v139 = v137;
          v140 = v138;
        }

        else
        {
          v139 = 0;
          v140 = 0;
        }

        v132 = v140;
        v131 = v139;

        AUDeveloperSettingsURLTypeToString();
        v130 = String.init(cString:)();
        v133 = v42;
        v129 = v42;

        v134 = v281;
        v135 = v282;
        v281[0] = v131;
        v281[1] = v132;
        v282[0] = v130;
        v282[1] = v133;
        if (v132)
        {
          outlined init with copy of String?(v134, v280);
          if (v135[1])
          {
            v43 = v252;
            v44 = v135;
            v252[5] = v252[6];
            v43[4] = *v44;
            v127 = MEMORY[0x1DA7309E0](v279[0], v279[1], v278[0], v278[1]);
            outlined destroy of String(v278);
            outlined destroy of String(v279);
            outlined destroy of String?(v134);
            v128 = v127;
LABEL_50:
            v126 = v128;

            v141 = v126;
LABEL_51:
            v125 = v141;

            v45 = v221;
            if (v125)
            {
              v124 = 1;
LABEL_55:
              v122 = v124;

              v145 = v122;
LABEL_71:
              v102 = v145;

              if (v102)
              {

                v166 = 1;
                v167 = v187;
              }

              else
              {
                v51 = v259;
                v52 = Logger.fwSeeding.unsafeMutableAddressor();
                v217(v51, v52, v254);
                v100 = Logger.logObject.getter();
                v97 = v100;
                v99 = static os_log_type_t.default.getter();
                v98 = v99;
                v101 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v100, v99))
                {
                  v53 = v187;
                  v88 = static UnsafeMutablePointer.allocate(capacity:)();
                  v84 = v88;
                  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v86 = 0;
                  v89 = createStorage<A>(capacity:type:)(0, v85, v85);
                  v87 = v89;
                  v90 = createStorage<A>(capacity:type:)(v86, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                  v290[0] = v88;
                  v289 = v89;
                  v288 = v90;
                  v91 = 0;
                  v92 = v290;
                  serialize(_:at:)(0, v290);
                  serialize(_:at:)(v91, v92);
                  v287[2] = v101;
                  v93 = &v60;
                  MEMORY[0x1EEE9AC00](&v60);
                  v94 = &v60 - 6;
                  *(&v60 - 4) = v54;
                  *(&v60 - 3) = &v289;
                  *(&v60 - 2) = &v288;
                  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                  Sequence.forEach(_:)();
                  v96 = v53;
                  if (v53)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_1D93D0000, v97, v98, "FW Seeding: Get: Mismatch between Program and Accessory, NO-OP here", v84, 2u);
                    v82 = 0;
                    destroyStorage<A>(_:count:)(v87, 0, v85);
                    destroyStorage<A>(_:count:)(v90, v82, MEMORY[0x1E69E7CA0] + 8);
                    MEMORY[0x1DA730D30](v84, MEMORY[0x1E69E7508]);

                    v83 = v96;
                  }
                }

                else
                {

                  v83 = v187;
                }

                v81 = v83;

                v188(v259, v254);
                v166 = 0;
                v167 = v81;
              }

              return v166;
            }

            v290[2] = v216;
            v290[1] = 1;
            v123 = == infix<A>(_:_:)();
            v46 = v221;
            if ((v123 & 1) == 0)
            {
              v119 = 0;
LABEL_66:
              v103 = v119;

              v124 = v103;
              goto LABEL_55;
            }

            v121 = [v221 assetLocation];
            if (v121)
            {
              v120 = v121;
              v114 = v121;
              v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v47;

              v117 = v115;
              v118 = v116;
            }

            else
            {
              v117 = 0;
              v118 = 0;
            }

            v110 = v118;
            v109 = v117;

            AUDeveloperSettingsURLTypeToString();
            v108 = String.init(cString:)();
            v111 = v48;
            v107 = v48;

            v112 = v286;
            v113 = v287;
            v286[0] = v109;
            v286[1] = v110;
            v287[0] = v108;
            v287[1] = v111;
            if (v110)
            {
              outlined init with copy of String?(v112, v285);
              if (v113[1])
              {
                v49 = v252;
                v50 = v113;
                v252[10] = v252[11];
                v49[9] = *v50;
                v105 = MEMORY[0x1DA7309E0](v284[0], v284[1], v283[0], v283[1]);
                outlined destroy of String(v283);
                outlined destroy of String(v284);
                outlined destroy of String?(v112);
                v106 = v105;
LABEL_65:
                v104 = v106;

                v119 = v104;
                goto LABEL_66;
              }

              outlined destroy of String(v285);
            }

            else if (!v113[1])
            {
              outlined destroy of String?(v112);
              v106 = 1;
              goto LABEL_65;
            }

            outlined destroy of (String?, String?)(v286);
            v106 = 0;
            goto LABEL_65;
          }

          outlined destroy of String(v280);
        }

        else if (!v135[1])
        {
          outlined destroy of String?(v134);
          v128 = 1;
          goto LABEL_50;
        }

        outlined destroy of (String?, String?)(v281);
        v128 = 0;
        goto LABEL_50;
      }

      v164 = [v221 assetLocation];
      if (v164)
      {
        v163 = v164;
        v158 = v164;
        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v160 = v36;

        v161 = v159;
        v162 = v160;
      }

      else
      {
        v161 = 0;
        v162 = 0;
      }

      v154 = v162;
      v153 = v161;

      AUDeveloperSettingsURLTypeToString();
      v152 = String.init(cString:)();
      v155 = v37;
      v151 = v37;

      v156 = v276;
      v157 = v277;
      v276[0] = v153;
      v276[1] = v154;
      v277[0] = v152;
      v277[1] = v155;
      if (v154)
      {
        outlined init with copy of String?(v156, v275);
        if (*(v157 + 1))
        {
          v38 = v157;
          *v252 = v252[1];
          v273 = *v38;
          v149 = MEMORY[0x1DA7309E0](v274[0], v274[1], v273, *(&v273 + 1));
          outlined destroy of String(&v273);
          outlined destroy of String(v274);
          outlined destroy of String?(v156);
          v150 = v149;
LABEL_33:
          v147 = v150;

          v148 = v147;
          goto LABEL_37;
        }

        outlined destroy of String(v275);
      }

      else if (!*(v157 + 1))
      {
        outlined destroy of String?(v156);
        v150 = 1;
        goto LABEL_33;
      }

      outlined destroy of (String?, String?)(v276);
      v150 = 0;
      goto LABEL_33;
    }

    v186 = [v221 assetLocation];
    if (v186)
    {
      v185 = v186;
      v180 = v186;
      v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = v33;

      v183 = v181;
      v184 = v182;
    }

    else
    {
      v183 = 0;
      v184 = 0;
    }

    v176 = v184;
    v175 = v183;

    AUDeveloperSettingsURLTypeToString();
    v174 = String.init(cString:)();
    v177 = v34;
    v173 = v34;

    v178 = v271;
    v179 = v272;
    v271[0] = v175;
    v271[1] = v176;
    v272[0] = v174;
    v272[1] = v177;
    if (v176)
    {
      outlined init with copy of String?(v178, &v270);
      if (v179[1])
      {
        v269 = v270;
        v268 = *v179;
        v171 = MEMORY[0x1DA7309E0](v270, *(&v270 + 1), v268, *(&v268 + 1));
        outlined destroy of String(&v268);
        outlined destroy of String(&v269);
        outlined destroy of String?(v178);
        v172 = v171;
LABEL_17:
        v169 = v172;

        v170 = v169;
        goto LABEL_21;
      }

      outlined destroy of String(&v270);
    }

    else if (!v179[1])
    {
      outlined destroy of String?(v178);
      v172 = 1;
      goto LABEL_17;
    }

    outlined destroy of (String?, String?)(v271);
    v172 = 0;
    goto LABEL_17;
  }

  v55 = v257;
  v56 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v256 + 16))(v55, v56, v254);
  v79 = Logger.logObject.getter();
  v76 = v79;
  v78 = static os_log_type_t.error.getter();
  v77 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v80 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v79, v78))
  {
    v57 = v253;
    v67 = static UnsafeMutablePointer.allocate(capacity:)();
    v63 = v67;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v65 = 0;
    v68 = createStorage<A>(capacity:type:)(0, v64, v64);
    v66 = v68;
    v69 = createStorage<A>(capacity:type:)(v65, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v296 = v67;
    v295 = v68;
    v294 = v69;
    v70 = 0;
    v71 = &v296;
    serialize(_:at:)(0, &v296);
    serialize(_:at:)(v70, v71);
    v293 = v80;
    v72 = &v60;
    MEMORY[0x1EEE9AC00](&v60);
    v73 = &v60 - 6;
    *(&v60 - 4) = v58;
    *(&v60 - 3) = &v295;
    *(&v60 - 2) = &v294;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v75 = v57;
    if (v57)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v76, v77, "FW Seeding: Get: Invalid Accessory", v63, 2u);
      v61 = 0;
      destroyStorage<A>(_:count:)(v66, 0, v64);
      destroyStorage<A>(_:count:)(v69, v61, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v63, MEMORY[0x1E69E7508]);

      v62 = v75;
    }
  }

  else
  {

    v62 = v253;
  }

  v60 = v62;

  (*(v256 + 8))(v257, v254);
  v166 = 0;
  v167 = v60;
  return v166;
}

uint64_t implicit closure #1 in HeadphoneDevice.getFirmwareUpgradeParticipation()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #2 in HeadphoneDevice.getFirmwareUpgradeParticipation()(void *a1)
{
  v5 = [a1 assetLocation];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v7._countAndFlagsBits;
}

Swift::Void __swiftcall HeadphoneDevice.setFirmwareUpgradeParticipation()()
{
  v221 = 0;
  v255 = 0;
  v222 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v243 = 0;
  v223 = type metadata accessor for Logger();
  v224 = *(v223 - 8);
  v225 = v224;
  v226 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v223 - 8);
  v228 = (v226 + 15) & 0xFFFFFFFFFFFFFFF0;
  v227 = &v73 - v228;
  MEMORY[0x1EEE9AC00](&v73 - v228);
  v229 = &v73 - v228;
  v255 = v0;
  v230 = HeadphoneDevice.getUARPSettingsAccessory()();
  if (!v230)
  {
LABEL_31:
    v69 = v227;
    v70 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v225 + 16))(v69, v70, v223);
    v92 = Logger.logObject.getter();
    v89 = v92;
    v91 = static os_log_type_t.error.getter();
    v90 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v93 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v92, v91))
    {
      v71 = v222;
      v80 = static UnsafeMutablePointer.allocate(capacity:)();
      v76 = v80;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v78 = 0;
      v81 = createStorage<A>(capacity:type:)(0, v77, v77);
      v79 = v81;
      v82 = createStorage<A>(capacity:type:)(v78, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v254 = v80;
      v253 = v81;
      v252 = v82;
      v83 = 0;
      v84 = &v254;
      serialize(_:at:)(0, &v254);
      serialize(_:at:)(v83, v84);
      v251 = v93;
      v85 = &v73;
      MEMORY[0x1EEE9AC00](&v73);
      v86 = &v73 - 6;
      *(&v73 - 4) = v72;
      *(&v73 - 3) = &v253;
      *(&v73 - 2) = &v252;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v88 = v71;
      if (v71)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v89, v90, "FW Seeding: Update: Invalid Accessory or Serial Number", v76, 2u);
        v74 = 0;
        destroyStorage<A>(_:count:)(v79, 0, v77);
        destroyStorage<A>(_:count:)(v82, v74, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v76, MEMORY[0x1E69E7508]);

        v75 = v88;
      }
    }

    else
    {

      v75 = v222;
    }

    v73 = v75;

    (*(v225 + 8))(v227, v223);
    return;
  }

  v219 = v230;
  v217 = v230;
  v250 = v230;
  v1 = [v230 serialNumber];
  v218 = v1;
  if (v1)
  {
    v216 = v218;
    v211 = v218;
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v213 = v2;

    v214 = v212;
    v215 = v213;
  }

  else
  {
    v214 = 0;
    v215 = 0;
  }

  v209 = v215;
  v210 = v214;
  if (!v215)
  {

    goto LABEL_31;
  }

  v207 = v210;
  v208 = v209;
  v204 = v209;
  v205 = v210;
  v248 = v210;
  v249 = v209;
  v206 = HeadphoneDevice.getSeedProgram()();
  v247 = v206;
  v3 = (*((*v220 & *MEMORY[0x1E69E7D40]) + 0xAE0))();
  if (v3)
  {
    v234 = v206;
    v233 = 3;
    v202 = type metadata accessor for SDSeedProgram(0);
    v201 = v202;
    v203 = lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    if (== infix<A>(_:_:)())
    {
      v200 = 1;
    }

    else
    {
      v232 = v206;
      v231 = 2;
      v200 = == infix<A>(_:_:)();
    }

    v199 = v200;
  }

  else
  {
    v199 = 0;
  }

  if (v199)
  {
    v236 = v206;
    v235 = 3;
    v198 = type metadata accessor for SDSeedProgram(0);
    lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    if (== infix<A>(_:_:)())
    {
      v197 = 3;
    }

    else
    {
      v197 = 8;
    }

    v246 = v197;
    v196 = v197;
  }

  else
  {
    v246 = 2;
    v196 = 2;
  }

  v194 = v196;
  v245 = v196;
  v244 = 2;
  v195 = type metadata accessor for AUDeveloperSettingsURLType(0);
  lazy protocol witness table accessor for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType();
  if (== infix<A>(_:_:)())
  {
    AAMultiState.rawValue.getter(2);
  }

  else
  {
    AAMultiState.rawValue.getter(1);
  }

  isa = Int8._bridgeToObjectiveC()().super.super.isa;
  v132 = isa;
  v243 = isa;
  v134 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneFeaturesChange", 0x21uLL, 1);
  object = v4._object;
  v147 = MEMORY[0x1DA730940](v4._countAndFlagsBits);

  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  v133 = 3;
  v139 = _allocateUninitializedArray<A>(_:)();
  v137 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureName", 0xBuLL, v134);
  *v137 = v6;
  v140 = 0;
  type metadata accessor for NSString();
  v7 = NSString.init(stringLiteral:)();
  v8 = v220;
  v9 = v134;
  *(v137 + 16) = v7;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureNewValue", 0xFuLL, v9);
  v11 = v132;
  *(v137 + 24) = v10;
  v12 = v11;
  v13 = v133;
  v14 = v134;
  *(v137 + 40) = v132;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PID", v13, v14);
  *(v137 + 48) = v15;
  v16 = (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v17 = v229;
  v135 = v16;
  v136 = [v16 productID];

  *(v137 + 64) = UInt32._bridgeToObjectiveC()();
  _finalizeUninitializedArray<A>(_:)();
  v141 = v18;
  v143 = type metadata accessor for NSObject();
  v142 = MEMORY[0x1E69E6158];
  v144 = MEMORY[0x1E69E6168];
  v145 = Dictionary.init(dictionaryLiteral:)();
  v146 = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  v19 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v225 + 16))(v17, v19, v223);
  v20 = v220;
  v148 = 24;
  v172 = 7;
  v153 = swift_allocObject();
  *(v153 + 16) = v220;
  v21 = swift_allocObject();
  v22 = v217;
  v158 = v21;
  *(v21 + 16) = v206;
  v23 = v22;
  v163 = swift_allocObject();
  *(v163 + 16) = v217;
  v173 = swift_allocObject();
  *(v173 + 16) = v194;
  v192 = Logger.logObject.getter();
  v149 = v192;
  v191 = static os_log_type_t.default.getter();
  v150 = v191;
  v167 = 17;
  v176 = swift_allocObject();
  v151 = v176;
  v166 = 32;
  *(v176 + 16) = 32;
  v24 = swift_allocObject();
  v25 = v166;
  v177 = v24;
  v152 = v24;
  v169 = 8;
  *(v24 + 16) = 8;
  v171 = v25;
  v26 = swift_allocObject();
  v27 = v153;
  v154 = v26;
  *(v26 + 16) = partial apply for implicit closure #3 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v154;
  v178 = v28;
  v155 = v28;
  *(v28 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v28 + 24) = v29;
  v179 = swift_allocObject();
  v156 = v179;
  *(v179 + 16) = v166;
  v180 = swift_allocObject();
  v157 = v180;
  *(v180 + 16) = v169;
  v30 = swift_allocObject();
  v31 = v158;
  v159 = v30;
  *(v30 + 16) = partial apply for implicit closure #4 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v159;
  v181 = v32;
  v160 = v32;
  *(v32 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v32 + 24) = v33;
  v182 = swift_allocObject();
  v161 = v182;
  *(v182 + 16) = v166;
  v183 = swift_allocObject();
  v162 = v183;
  *(v183 + 16) = v169;
  v34 = swift_allocObject();
  v35 = v163;
  v164 = v34;
  *(v34 + 16) = partial apply for implicit closure #5 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v164;
  v184 = v36;
  v165 = v36;
  *(v36 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v36 + 24) = v37;
  v185 = swift_allocObject();
  v168 = v185;
  *(v185 + 16) = v166;
  v186 = swift_allocObject();
  v170 = v186;
  *(v186 + 16) = v169;
  v38 = swift_allocObject();
  v39 = v173;
  v174 = v38;
  *(v38 + 16) = partial apply for specialized implicit closure #7 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v174;
  v189 = v40;
  v175 = v40;
  *(v40 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v40 + 24) = v41;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v187 = _allocateUninitializedArray<A>(_:)();
  v188 = v42;

  v43 = v176;
  v44 = v188;
  *v188 = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[1] = v43;

  v45 = v177;
  v46 = v188;
  v188[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v46[3] = v45;

  v47 = v178;
  v48 = v188;
  v188[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v48[5] = v47;

  v49 = v179;
  v50 = v188;
  v188[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[7] = v49;

  v51 = v180;
  v52 = v188;
  v188[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[9] = v51;

  v53 = v181;
  v54 = v188;
  v188[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[11] = v53;

  v55 = v182;
  v56 = v188;
  v188[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v56[13] = v55;

  v57 = v183;
  v58 = v188;
  v188[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v58[15] = v57;

  v59 = v184;
  v60 = v188;
  v188[16] = closure #1 in OSLogArguments.append(_:)partial apply;
  v60[17] = v59;

  v61 = v185;
  v62 = v188;
  v188[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v62[19] = v61;

  v63 = v186;
  v64 = v188;
  v188[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v64[21] = v63;

  v65 = v188;
  v66 = v189;
  v188[22] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[23] = v66;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v192, v191))
  {
    v67 = v222;
    v124 = static UnsafeMutablePointer.allocate(capacity:)();
    v121 = v124;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v125 = createStorage<A>(capacity:type:)(0, v122, v122);
    v123 = v125;
    v127 = 4;
    v126 = createStorage<A>(capacity:type:)(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v241 = v124;
    v240 = v125;
    v239 = v126;
    v128 = &v241;
    serialize(_:at:)(2, &v241);
    serialize(_:at:)(v127, v128);
    v237 = closure #1 in OSLogArguments.append(_:)partial apply;
    v238 = v151;
    closure #1 in osLogInternal(_:log:type:)(&v237, v128, &v240, &v239);
    v129 = v67;
    v130 = v67;
    if (v67)
    {
      v119 = 0;

      __break(1u);
    }

    else
    {
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v152;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v117 = 0;
      v118 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v115 = 0;
      v116 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v113 = 0;
      v114 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v157;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v111 = 0;
      v112 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v109 = 0;
      v110 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v107 = 0;
      v108 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v162;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v105 = 0;
      v106 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v165;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v103 = 0;
      v104 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v168;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v101 = 0;
      v102 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v170;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v99 = 0;
      v100 = 0;
      v237 = closure #1 in OSLogArguments.append(_:)partial apply;
      v238 = v175;
      closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
      v97 = 0;
      v98 = 0;
      _os_log_impl(&dword_1D93D0000, v149, v150, "FW Seeding: Update: Participation: %s, Program: %s, AssetLocation: %s -> %s", v121, 0x2Au);
      destroyStorage<A>(_:count:)(v123, 0, v122);
      destroyStorage<A>(_:count:)(v126, 4, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v121, MEMORY[0x1E69E7508]);

      v120 = v97;
    }
  }

  else
  {
    v68 = v222;

    v120 = v68;
  }

  v95 = v120;

  (*(v225 + 8))(v229, v223);
  v94 = &v242;
  swift_beginAccess();
  swift_endAccess();
  HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:)(v205, v204, v194);

  v96 = v95;
}

uint64_t implicit closure #3 in HeadphoneDevice.setFirmwareUpgradeParticipation()(void *a1)
{
  if ((*((*a1 & *MEMORY[0x1E69E7D40]) + 0xAE0))())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn On", 7uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn Off", 8uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #4 in HeadphoneDevice.setFirmwareUpgradeParticipation()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #5 in HeadphoneDevice.setFirmwareUpgradeParticipation()(void *a1)
{
  v5 = [a1 assetLocation];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid", 7uLL, 1);
  }

  return v7._countAndFlagsBits;
}

uint64_t HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v69 = a2;
  v71 = a3;
  v72 = partial apply for implicit closure #1 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:);
  v74 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v77 = partial apply for implicit closure #2 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:);
  v79 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v83 = partial apply for implicit closure #3 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:);
  v87 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt);
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = closure #1 in OSLogArguments.append(_:)partial apply;
  v95 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v99 = closure #1 in OSLogArguments.append(_:)partial apply;
  v101 = closure #1 in OSLogArguments.append(_:)partial apply;
  v103 = closure #1 in OSLogArguments.append(_:)partial apply;
  v106 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v117 = 0;
  v62 = 0;
  v67 = type metadata accessor for Logger();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v43 - v63;
  v64 = &v43 - v63;
  v119 = MEMORY[0x1EEE9AC00](v68);
  v120 = v4;
  v118 = v5;
  v117 = v6;
  v7 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v65 + 16))(v3, v7, v67);

  v84 = 32;
  v85 = 7;
  v8 = swift_allocObject();
  v9 = v69;
  v73 = v8;
  *(v8 + 16) = v68;
  *(v8 + 24) = v9;
  v70 = 24;
  v78 = swift_allocObject();
  *(v78 + 16) = v71;
  v86 = swift_allocObject();
  *(v86 + 16) = v71;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  v81 = 17;
  v90 = swift_allocObject();
  v76 = 32;
  *(v90 + 16) = 32;
  v92 = swift_allocObject();
  v82 = 8;
  *(v92 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v73;
  v75 = v10;
  *(v10 + 16) = v72;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v75;
  v94 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v96 = swift_allocObject();
  *(v96 + 16) = v76;
  v98 = swift_allocObject();
  *(v98 + 16) = v82;
  v14 = swift_allocObject();
  v15 = v78;
  v80 = v14;
  *(v14 + 16) = v77;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v80;
  v100 = v16;
  *(v16 + 16) = v79;
  *(v16 + 24) = v17;
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v82;
  v18 = swift_allocObject();
  v19 = v86;
  v88 = v18;
  *(v18 + 16) = v83;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v88;
  v107 = v20;
  *(v20 + 16) = v87;
  *(v20 + 24) = v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v105 = _allocateUninitializedArray<A>(_:)();
  v108 = v22;

  v23 = v90;
  v24 = v108;
  *v108 = v89;
  v24[1] = v23;

  v25 = v92;
  v26 = v108;
  v108[2] = v91;
  v26[3] = v25;

  v27 = v94;
  v28 = v108;
  v108[4] = v93;
  v28[5] = v27;

  v29 = v96;
  v30 = v108;
  v108[6] = v95;
  v30[7] = v29;

  v31 = v98;
  v32 = v108;
  v108[8] = v97;
  v32[9] = v31;

  v33 = v100;
  v34 = v108;
  v108[10] = v99;
  v34[11] = v33;

  v35 = v102;
  v36 = v108;
  v108[12] = v101;
  v36[13] = v35;

  v37 = v104;
  v38 = v108;
  v108[14] = v103;
  v38[15] = v37;

  v39 = v107;
  v40 = v108;
  v108[16] = v106;
  v40[17] = v39;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v110, v111))
  {
    v41 = v62;
    v55 = static UnsafeMutablePointer.allocate(capacity:)();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v56 = createStorage<A>(capacity:type:)(0, v54, v54);
    v57 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v58 = &v116;
    v116 = v55;
    v59 = &v115;
    v115 = v56;
    v60 = &v114;
    v114 = v57;
    serialize(_:at:)(2, &v116);
    serialize(_:at:)(3, v58);
    v112 = v89;
    v113 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v112, v58, v59, v60);
    v61 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v112 = v91;
      v113 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v53 = 0;
      v112 = v93;
      v113 = v94;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v52 = 0;
      v112 = v95;
      v113 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v51 = 0;
      v112 = v97;
      v113 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v50 = 0;
      v112 = v99;
      v113 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v49 = 0;
      v112 = v101;
      v113 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v48 = 0;
      v112 = v103;
      v113 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v47 = 0;
      v112 = v106;
      v113 = v107;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      _os_log_impl(&dword_1D93D0000, v110, v111, "FW Seeding: Set Asset Location of %s to: %s (%lu)", v55, 0x20u);
      destroyStorage<A>(_:count:)(v56, 0, v54);
      destroyStorage<A>(_:count:)(v57, 2, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v55, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v110);
  (*(v65 + 8))(v64, v67);
  v44 = [objc_opt_self() sharedDatabase];

  v43 = MEMORY[0x1DA730940](v68, v69);

  [v44 updateAccessory:v43 locationType:v71];
  MEMORY[0x1E69E5920](v43);
  MEMORY[0x1E69E5920](v44);
  type metadata accessor for AUObserverXPC();
  v46 = AUObserverXPC.__allocating_init()();

  v45 = MEMORY[0x1DA730940](v68, v69);

  [v46 settingsChangedForSerialNumber_];
  MEMORY[0x1E69E5920](v45);
  return MEMORY[0x1E69E5920](v46);
}

uint64_t implicit closure #2 in HeadphoneDevice.getSeedProgram()(uint64_t a1)
{
  v3 = objc_opt_self();
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_endAccess();
  v5 = [v3 stringForSeedProgram_];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v5);
  return v6;
}

uint64_t specialized implicit closure #3 in HeadphoneDevice.getSeedProgram()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #2 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = [a1 serialNumber];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v7._countAndFlagsBits;
}

uint64_t implicit closure #4 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v6 = [v5 serialNumber];
  if (v6)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  v7 = v4;
  if (v4._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v8._countAndFlagsBits;
}

uint64_t implicit closure #6 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v6 = [v5 serialNumberLeft];
  if (v6)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  v7 = v4;
  if (v4._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v8._countAndFlagsBits;
}

uint64_t implicit closure #8 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v6 = [v5 serialNumberRight];
  if (v6)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  v7 = v4;
  if (v4._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v8._countAndFlagsBits;
}

uint64_t implicit closure #10 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = [a1 serialNumber];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v7._countAndFlagsBits;
}

Swift::Void __swiftcall HeadphoneDevice.getFirmwareLoggingEnabled()()
{
  v14 = 0;
  v0 = Headphone_Manager.shared.unsafeMutableAddressor();
  v1 = *v0;
  v3 = *v0;
  v2 = MEMORY[0x1E69E5928](*v0);
  v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  MEMORY[0x1E69E5920](v3);
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v12 = partial apply for closure #1 in HeadphoneDevice.getFirmwareLoggingEnabled();
  v13 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = 0;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v11 = &block_descriptor;
  v5 = _Block_copy(&aBlock);

  [v6 appleAudioAccessoryLimitedLoggingWithCompletion_];
  _Block_release(v5);
  MEMORY[0x1E69E5920](v6);
}

uint64_t closure #1 in HeadphoneDevice.getFirmwareLoggingEnabled()(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v100 = a2;
  v99 = a1;
  v96 = a1;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v97 = 0;
  v101 = type metadata accessor for Logger();
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  v3 = MEMORY[0x1EEE9AC00](v99);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = &v33 - v106;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v107 = &v33 - v106;
  v121 = v4;
  v120 = v5;
  v108 = v6 + 16;
  v119 = v6 + 16;
  v118[1] = v5;
  v95 = v5 == 0;
  if (v5)
  {
    v28 = v105;
    v29 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v103 + 16))(v28, v29, v101);
    v53 = Logger.logObject.getter();
    v50 = v53;
    v52 = static os_log_type_t.default.getter();
    v51 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v54 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v53, v52))
    {
      v30 = v97;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = v41;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = 0;
      v42 = createStorage<A>(capacity:type:)(0, v38, v38);
      v40 = v42;
      v43 = createStorage<A>(capacity:type:)(v39, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v118[0] = v41;
      v117 = v42;
      v116 = v43;
      v44 = 0;
      v45 = v118;
      serialize(_:at:)(0, v118);
      serialize(_:at:)(v44, v45);
      v115 = v54;
      v46 = &v33;
      MEMORY[0x1EEE9AC00](&v33);
      v47 = &v33 - 6;
      *(&v33 - 4) = v31;
      *(&v33 - 3) = &v117;
      *(&v33 - 2) = &v116;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v49 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v50, v51, "FW Seeding: Get Logging: Failed", v37, 2u);
        v35 = 0;
        destroyStorage<A>(_:count:)(v40, 0, v38);
        destroyStorage<A>(_:count:)(v43, v35, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v37, MEMORY[0x1E69E7508]);

        v36 = v49;
      }
    }

    else
    {

      v36 = v97;
    }

    v34 = v36;

    (*(v103 + 8))(v105, v101);
    return v34;
  }

  else
  {
    v7 = v107;
    v8 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v103 + 16))(v7, v8, v101);
    v77 = 17;
    v83 = 7;
    v80 = swift_allocObject();
    *(v80 + 16) = v96 & 1;
    v94 = Logger.logObject.getter();
    v75 = v94;
    v93 = static os_log_type_t.default.getter();
    v76 = v93;
    v87 = swift_allocObject();
    v78 = v87;
    *(v87 + 16) = 0;
    v88 = swift_allocObject();
    v79 = v88;
    *(v88 + 16) = 4;
    v82 = 32;
    v9 = swift_allocObject();
    v10 = v80;
    v81 = v9;
    *(v9 + 16) = partial apply for implicit closure #1 in closure #1 in HeadphoneDevice.getFirmwareLoggingEnabled();
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v81;
    v84 = v11;
    *(v11 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v84;
    v85 = v13;
    *(v13 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v85;
    v91 = v15;
    v86 = v15;
    *(v15 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply;
    *(v15 + 24) = v16;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v89 = _allocateUninitializedArray<A>(_:)();
    v90 = v17;

    v18 = v87;
    v19 = v90;
    *v90 = closure #1 in OSLogArguments.append(_:)partial apply;
    v19[1] = v18;

    v20 = v88;
    v21 = v90;
    v90[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v21[3] = v20;

    v22 = v90;
    v23 = v91;
    v90[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v22[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v94, v93))
    {
      v24 = v97;
      v69 = static UnsafeMutablePointer.allocate(capacity:)();
      v65 = v69;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v67 = 0;
      v70 = createStorage<A>(capacity:type:)(0, v66, v66);
      v68 = v70;
      v71 = createStorage<A>(capacity:type:)(v67, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v113 = v69;
      v112 = v70;
      v111 = v71;
      v72 = &v113;
      serialize(_:at:)(0, &v113);
      serialize(_:at:)(1, v72);
      v109 = closure #1 in OSLogArguments.append(_:)partial apply;
      v110 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v109, v72, &v112, &v111);
      v73 = v24;
      v74 = v24;
      if (v24)
      {
        v63 = 0;

        __break(1u);
      }

      else
      {
        v109 = closure #1 in OSLogArguments.append(_:)partial apply;
        v110 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        v61 = 0;
        v62 = 0;
        v109 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v110 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        v59 = 0;
        v60 = 0;
        _os_log_impl(&dword_1D93D0000, v75, v76, "FW Seeding: Get Logging: Succeeded -> Value: %{BOOL}d", v65, 8u);
        v58 = 0;
        destroyStorage<A>(_:count:)(v68, 0, v66);
        destroyStorage<A>(_:count:)(v71, v58, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v65, MEMORY[0x1E69E7508]);

        v64 = v59;
      }
    }

    else
    {
      v25 = v97;

      v64 = v25;
    }

    v57 = v64;

    (*(v103 + 8))(v107, v101);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v56 = Strong;
      v27 = Strong;
      outlined destroy of HeadphoneDevice?(&Strong);
      swift_endAccess();
      (*((*v26 & *MEMORY[0x1E69E7D40]) + 0xB18))(v96 & 1);
    }

    else
    {
      outlined destroy of HeadphoneDevice?(&Strong);
      swift_endAccess();
    }

    return v57;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = *(a1 + 32);

  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v6(a2);
}

Swift::Void __swiftcall HeadphoneDevice.setFirmwareLoggingEnabled()()
{
  v84 = partial apply for implicit closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled();
  v86 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
  v88 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
  v92 = thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply;
  v94 = closure #1 in OSLogArguments.append(_:)partial apply;
  v96 = closure #1 in OSLogArguments.append(_:)partial apply;
  v99 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v74 = closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled();
  v75 = "FWSeedingAnalyticsData";
  v118 = 0;
  v110 = 0;
  v76 = 0;
  v81 = type metadata accessor for Logger();
  v79 = *(v81 - 8);
  v80 = v81 - 8;
  v77 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v0 = v40 - v77;
  v78 = v40 - v77;
  v118 = v1;
  v2 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v79 + 16))(v0, v2, v81);
  MEMORY[0x1E69E5928](v82);
  v90 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v82;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v83 = 17;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = 4;
  v89 = 32;
  v3 = swift_allocObject();
  v4 = v85;
  v87 = v3;
  *(v3 + 16) = v84;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v87;
  v91 = v5;
  *(v5 + 16) = v86;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v91;
  v93 = v7;
  *(v7 + 16) = v88;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v93;
  v100 = v9;
  *(v9 + 16) = v92;
  *(v9 + 24) = v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v98 = _allocateUninitializedArray<A>(_:)();
  v101 = v11;

  v12 = v95;
  v13 = v101;
  *v101 = v94;
  v13[1] = v12;

  v14 = v97;
  v15 = v101;
  v101[2] = v96;
  v15[3] = v14;

  v16 = v100;
  v17 = v101;
  v101[4] = v99;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v103, v104))
  {
    v18 = v76;
    v67 = static UnsafeMutablePointer.allocate(capacity:)();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v66 = 0;
    v68 = createStorage<A>(capacity:type:)(0, v65, v65);
    v69 = createStorage<A>(capacity:type:)(v66, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v70 = &v109;
    v109 = v67;
    v71 = &v108;
    v108 = v68;
    v72 = &v107;
    v107 = v69;
    serialize(_:at:)(0, &v109);
    serialize(_:at:)(1, v70);
    v105 = v94;
    v106 = v95;
    closure #1 in osLogInternal(_:log:type:)(&v105, v70, v71, v72);
    v73 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v105 = v96;
      v106 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v109, &v108, &v107);
      v64 = 0;
      v105 = v99;
      v106 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v109, &v108, &v107);
      _os_log_impl(&dword_1D93D0000, v103, v104, "FW Seeding: Set Logging: New Value: %{BOOL}d", v67, 8u);
      v63 = 0;
      destroyStorage<A>(_:count:)(v68, 0, v65);
      destroyStorage<A>(_:count:)(v69, v63, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v67, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v103);
  (*(v79 + 8))(v78, v81);
  v58 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v19 = v58;
  v20 = MEMORY[0x1E69E5928](v58);
  v21 = *v19;
  v62 = MEMORY[0x1E69E7D40];
  v22 = (*((v21 & *MEMORY[0x1E69E7D40]) + 0x180))(v20);
  v23 = v82;
  v61 = v22;
  v24 = MEMORY[0x1E69E5920](v58);
  v25 = (*((*v23 & *v62) + 0xB10))(v24);
  v26 = v82;
  v59 = v25;
  v116 = v74;
  v117 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v112 = 1107296256;
  v113 = 0;
  v114 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v115 = &block_descriptor_506;
  v60 = _Block_copy(&aBlock);
  [v61 setAppleAudioAccessoryLimitedLogging:v59 & 1 completion:?];
  _Block_release(v60);
  v27 = MEMORY[0x1E69E5920](v61);
  if ((*((*v26 & *v62) + 0xB10))(v27))
  {
    AAMultiState.rawValue.getter(1);
  }

  else
  {
    AAMultiState.rawValue.getter(2);
  }

  isa = Int8._bridgeToObjectiveC()().super.super.isa;
  v56 = isa;
  v110 = isa;
  v42 = 1;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneFeaturesChange", 0x21uLL, 1);
  v40[1] = v28._object;
  v55 = MEMORY[0x1DA730940](v28._countAndFlagsBits);

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  v41 = 3;
  v47 = _allocateUninitializedArray<A>(_:)();
  v45 = v29;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureName", 0xBuLL, v42 & 1);
  *v45 = v30;
  v48 = 0;
  type metadata accessor for NSString();
  v31 = NSString.init(stringLiteral:)();
  v32 = v82;
  v33 = v42;
  *(v45 + 16) = v31;
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureNewValue", 0xFuLL, v33 & 1);
  v35 = v56;
  *(v45 + 24) = v34;
  MEMORY[0x1E69E5928](v35);
  v36 = v41;
  v37 = v42;
  *(v45 + 40) = v56;
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PID", v36, v37 & 1);
  *(v45 + 48) = v38;
  v43 = (*((*v32 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v44 = [v43 productID];
  MEMORY[0x1E69E5920](v43);
  *(v45 + 64) = UInt32._bridgeToObjectiveC()();
  _finalizeUninitializedArray<A>(_:)();
  v49 = v39;
  v51 = type metadata accessor for NSObject();
  v50 = MEMORY[0x1E69E6158];
  v52 = MEMORY[0x1E69E6168];
  v53 = Dictionary.init(dictionaryLiteral:)();
  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
  MEMORY[0x1E69E5920](v54);
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v56);
}

uint64_t closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled()(void *a1)
{
  v32 = a1;
  v34 = partial apply for implicit closure #1 in closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled();
  v38 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v40 = closure #1 in OSLogArguments.append(_:)partial apply;
  v42 = closure #1 in OSLogArguments.append(_:)partial apply;
  v45 = closure #1 in OSLogArguments.append(_:)partial apply;
  v56 = 0;
  v26 = 0;
  v31 = type metadata accessor for Logger();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v27 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v17 - v27;
  v28 = v17 - v27;
  v56 = MEMORY[0x1EEE9AC00](v32);
  v2 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v29 + 16))(v1, v2, v31);
  v3 = v32;
  v36 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v33 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v35 = 32;
  v4 = swift_allocObject();
  v5 = v37;
  v39 = v4;
  *(v4 + 16) = v34;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v39;
  v46 = v6;
  *(v6 + 16) = v38;
  *(v6 + 24) = v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v44 = _allocateUninitializedArray<A>(_:)();
  v47 = v8;

  v9 = v41;
  v10 = v47;
  *v47 = v40;
  v10[1] = v9;

  v11 = v43;
  v12 = v47;
  v47[2] = v42;
  v12[3] = v11;

  v13 = v46;
  v14 = v47;
  v47[4] = v45;
  v14[5] = v13;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v49, v50))
  {
    v15 = v26;
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0, v18, v18);
    v21 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v22 = &v55;
    v55 = v19;
    v23 = &v54;
    v54 = v20;
    v24 = &v53;
    v53 = v21;
    serialize(_:at:)(2, &v55);
    serialize(_:at:)(1, v22);
    v51 = v40;
    v52 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v51, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v51 = v42;
      v52 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v51, &v55, &v54, &v53);
      v17[1] = 0;
      v51 = v45;
      v52 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v51, &v55, &v54, &v53);
      _os_log_impl(&dword_1D93D0000, v49, v50, "FW Seeding: Set Logging: Result: %s", v19, 0xCu);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v19, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v49);
  return (*(v29 + 8))(v28, v31);
}

uint64_t implicit closure #1 in closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled()(uint64_t a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Succeeded", 9uLL, 1)._countAndFlagsBits;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v4();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance SDSeedProgram(uint64_t a2@<X8>)
{
  SDSeedProgram.init(rawValue:)();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance AUDeveloperSettingsURLType(uint64_t a2@<X8>)
{
  AUDeveloperSettingsURLType.init(rawValue:)();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x1EEE9AC00](v22);
    v15 = v28;
    v16 = v10;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in serialize<A>(_:at:), &v14, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7CA8]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x1E69E72F0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

BOOL CBProductIDIsW3(int a1)
{
  switch(a1)
  {
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8221:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8232 || a1 == 8231;
      break;
  }

  return v2;
}

unint64_t type metadata accessor for SDSeedProgram(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for SDSeedProgram;
  if (!lazy cache variable for type metadata for SDSeedProgram)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SDSeedProgram);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram()
{
  v2 = lazy protocol witness table cache variable for type SDSeedProgram and conformance SDSeedProgram;
  if (!lazy protocol witness table cache variable for type SDSeedProgram and conformance SDSeedProgram)
  {
    type metadata accessor for SDSeedProgram(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SDSeedProgram and conformance SDSeedProgram);
    return WitnessTable;
  }

  return v2;
}

uint64_t CBProductIDIsAirPods(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8202:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8223:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    case 8231:
      v2 = 1;
      break;
    case 8232:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

unint64_t type metadata accessor for UARPSettingsAccessory()
{
  v2 = lazy cache variable for type metadata for UARPSettingsAccessory;
  if (!lazy cache variable for type metadata for UARPSettingsAccessory)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for UARPSettingsAccessory);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [UARPSettingsAccessory] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UARPSettingsAccessory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UARPSettingsAccessory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo21UARPSettingsAccessoryCGMd, &_sSaySo21UARPSettingsAccessoryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UARPSettingsAccessory] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of String?(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t (**a1)(uint64_t, uint64_t, uint64_t))
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

unint64_t type metadata accessor for AUDeveloperSettingsURLType(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AUDeveloperSettingsURLType;
  if (!lazy cache variable for type metadata for AUDeveloperSettingsURLType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AUDeveloperSettingsURLType);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType()
{
  v2 = lazy protocol witness table cache variable for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType;
  if (!lazy protocol witness table cache variable for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType)
  {
    type metadata accessor for AUDeveloperSettingsURLType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSString()
{
  v2 = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSString);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type UInt and conformance UInt();
  v5 = MEMORY[0x1E69E6810];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x1E69E72F0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x1E69E72F0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t type metadata accessor for AUObserverXPC()
{
  v2 = lazy cache variable for type metadata for AUObserverXPC;
  if (!lazy cache variable for type metadata for AUObserverXPC)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AUObserverXPC);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply@<X0>(_DWORD *a1@<X8>)
{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int32)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int32)(*(v1 + 16), a1);
}

uint64_t block_copy_helper_504(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t RawRepresentable<>.description.getter(uint64_t a1)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return String.init<A>(_:)();
}

{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v2;
}

BOOL static AADevicePropertyRemoteSendState.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState()
{
  v2 = lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState;
  if (!lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState;
  if (!lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState);
    return WitnessTable;
  }

  return v2;
}

uint64_t AudioAccessoryDevice.btAddress.getter()
{
  v105 = implicit closure #1 in AudioAccessoryDevice.btAddress.getter;
  v106 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_1;
  v107 = implicit closure #2 in AudioAccessoryDevice.btAddress.getter;
  v108 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v109 = partial apply for implicit closure #3 in AudioAccessoryDevice.btAddress.getter;
  v110 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v111 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v112 = closure #1 in OSLogArguments.append(_:)partial apply;
  v113 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v114 = closure #1 in OSLogArguments.append(_:)partial apply;
  v115 = closure #1 in OSLogArguments.append(_:)partial apply;
  v116 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v117 = closure #1 in OSLogArguments.append(_:)partial apply;
  v118 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = closure #1 in OSLogArguments.append(_:)partial apply;
  v139 = 0;
  v120 = 0;
  v132 = 0;
  v133 = 0;
  v122 = type metadata accessor for Logger();
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v125 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v38 - v125;
  v139 = MEMORY[0x1EEE9AC00](v121);
  v127 = [v139 bluetoothAddressData];
  if (v127)
  {
    v104 = v127;
    v99 = v127;
    v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v0;
    MEMORY[0x1E69E5920](v99);
    v102 = v100;
    v103 = v101;
  }

  else
  {
    v102 = 0;
    v103 = 0xF000000000000000;
  }

  v97 = v103;
  v98 = v102;
  if ((v103 & 0xF000000000000000) == 0xF000000000000000)
  {
    v94 = 0;
  }

  else
  {
    v95 = v98;
    v96 = v97;
    v91 = v97;
    v92 = v98;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v92, v91);
    v94 = isa;
  }

  v89 = v94;
  v90 = CUPrintNSDataAddress();
  MEMORY[0x1E69E5920](v89);
  if (v90)
  {
    v88 = v90;
    v83 = v90;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v1;
    MEMORY[0x1E69E5920](v83);
    v86 = v84;
    v87 = v85;
  }

  else
  {
    v86 = 0;
    v87 = 0;
  }

  v81 = v87;
  v82 = v86;
  if (v87)
  {
    v79 = v82;
    v80 = v81;
    v76 = v81;
    v132 = v82;
    v133 = v81;
    v130 = v82;
    v131 = v81;
    v70 = 1;
    v72 = 1;
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
    v75 = &v129;
    v129 = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", v70, v72 & 1);
    v74 = &v128;
    v128 = v3;
    v71 = lazy protocol witness table accessor for type String and conformance String();
    v73 = MEMORY[0x1E69E6158];
    default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v77._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v77._object = v4;
    outlined destroy of String(v74);
    outlined destroy of String(v75);

    v78 = v77;
  }

  else
  {
    v5 = v126;
    v6 = Logger.shared.unsafeMutableAddressor();
    (*(v123 + 16))(v5, v6, v122);
    MEMORY[0x1E69E5928](v121);
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v121;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    v50 = 17;
    v56 = swift_allocObject();
    v49 = 32;
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v51 = 8;
    *(v57 + 16) = 8;
    v52 = 32;
    v7 = swift_allocObject();
    v47 = v7;
    *(v7 + 16) = v105;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v47;
    v58 = v8;
    *(v8 + 16) = v106;
    *(v8 + 24) = v9;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    v10 = swift_allocObject();
    v48 = v10;
    *(v10 + 16) = v107;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v48;
    v61 = v11;
    *(v11 + 16) = v108;
    *(v11 + 24) = v12;
    v62 = swift_allocObject();
    *(v62 + 16) = v49;
    v63 = swift_allocObject();
    *(v63 + 16) = v51;
    v13 = swift_allocObject();
    v14 = v54;
    v55 = v13;
    *(v13 + 16) = v109;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v55;
    v65 = v15;
    *(v15 + 16) = v110;
    *(v15 + 24) = v16;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v64 = _allocateUninitializedArray<A>(_:)();
    v66 = v17;

    v18 = v56;
    v19 = v66;
    *v66 = v111;
    v19[1] = v18;

    v20 = v57;
    v21 = v66;
    v66[2] = v112;
    v21[3] = v20;

    v22 = v58;
    v23 = v66;
    v66[4] = v113;
    v23[5] = v22;

    v24 = v59;
    v25 = v66;
    v66[6] = v114;
    v25[7] = v24;

    v26 = v60;
    v27 = v66;
    v66[8] = v115;
    v27[9] = v26;

    v28 = v61;
    v29 = v66;
    v66[10] = v116;
    v29[11] = v28;

    v30 = v62;
    v31 = v66;
    v66[12] = v117;
    v31[13] = v30;

    v32 = v63;
    v33 = v66;
    v66[14] = v118;
    v33[15] = v32;

    v34 = v65;
    v35 = v66;
    v66[16] = v119;
    v35[17] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v68, v69))
    {
      v36 = v120;
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0, v39, v39);
      v42 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v43 = &v138;
      v138 = v40;
      v44 = &v137;
      v137 = v41;
      v45 = &v136;
      v136 = v42;
      serialize(_:at:)(2, &v138);
      serialize(_:at:)(3, v43);
      v134 = v111;
      v135 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v134, v43, v44, v45);
      v46 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v134 = v112;
        v135 = v57;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[7] = 0;
        v134 = v113;
        v135 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[6] = 0;
        v134 = v114;
        v135 = v59;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[5] = 0;
        v134 = v115;
        v135 = v60;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[4] = 0;
        v134 = v116;
        v135 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[3] = 0;
        v134 = v117;
        v135 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[2] = 0;
        v134 = v118;
        v135 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[1] = 0;
        v134 = v119;
        v135 = v65;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        _os_log_impl(&dword_1D93D0000, v68, v69, "HeadphoneManager: %s: %ld::HeadphoneManager: Invalid BT Address address: %s", v40, 0x20u);
        destroyStorage<A>(_:count:)(v41, 0, v39);
        destroyStorage<A>(_:count:)(v42, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v40, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v68);
    (*(v123 + 8))(v126, v122);
    v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNKNOWN", 7uLL, 1);
  }

  return v78._countAndFlagsBits;
}

uint64_t implicit closure #3 in AudioAccessoryDevice.btAddress.getter(void *a1)
{
  v10 = [a1 bluetoothAddressData];
  if (v10)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v1;
    MEMORY[0x1E69E5920](v10);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  if ((v9 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5._countAndFlagsBits = 0;
    v5._object = 0;
  }

  else
  {
    v2 = default argument 0 of Data.base64EncodedString(options:)();
    v3 = Data.base64EncodedString(options:)(v2);
    outlined consume of Data._Representation(v8, v9);
    v5 = v3;
  }

  v11 = v5;
  if (v5._object)
  {
    v12 = v11;
  }

  else
  {
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil data", 8uLL, 1);
  }

  return v12._countAndFlagsBits;
}

uint64_t default argument 0 of Data.base64EncodedString(options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo27NSDataBase64EncodingOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo27NSDataBase64EncodingOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSDataBase64EncodingOptions(0);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t getEnumTagSinglePayload for AADevicePropertyRemoteSendState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
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

_BYTE *storeEnumTagSinglePayload for AADevicePropertyRemoteSendState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
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

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSDataBase64EncodingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSDataBase64EncodingOptions;
  if (!lazy cache variable for type metadata for NSDataBase64EncodingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataBase64EncodingOptions);
      return v2;
    }
  }

  return v5;
}

id AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(void *a1)
{
  v44 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v39 = 0;
  v46 = 0;
  v45 = 0;
  v40 = type metadata accessor for Logger();
  v41 = *(v40 - 8);
  v42 = v41;
  v2 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v2;
  v53 = v1;
  v4 = v2;
  v52 = v44;
  if ([v44 respondsToSelector_])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([v44 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v47 = [v44 coreBluetoothDevice];
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 1;
    }

    v38 = v47;
    if (v47 == 1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v38;
      v36 = v38;
      v46 = v38;
      swift_unknownObjectRelease();
      v5 = v36;
      if (v36)
      {
        v35 = v36;
        v45 = v36;
        v32 = v36;

        swift_unknownObjectRelease();
        v33 = v32;
        v34 = v39;
        return v33;
      }
    }
  }

  v6 = v43;
  v7 = Logger.shared.unsafeMutableAddressor();
  (*(v42 + 16))(v6, v7, v40);
  v30 = Logger.logObject.getter();
  v27 = v30;
  v29 = static os_log_type_t.error.getter();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    v8 = v39;
    v18 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = 0;
    v19 = createStorage<A>(capacity:type:)(0, v15, v15);
    v17 = v19;
    v20 = createStorage<A>(capacity:type:)(v16, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v51 = v18;
    v50 = v19;
    v49 = v20;
    v21 = 0;
    v22 = &v51;
    serialize(_:at:)(0, &v51);
    serialize(_:at:)(v21, v22);
    v48 = v31;
    v23 = &v11;
    MEMORY[0x1EEE9AC00](&v11);
    v24 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v50;
    *(&v11 - 2) = &v49;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v26 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v27, v28, "HeadphoneManager: AudioAccessoryDevice does not have CBDevice yet.", v14, 2u);
      v12 = 0;
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v20, v12, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v14, MEMORY[0x1E69E7508]);

      v13 = v26;
    }
  }

  else
  {

    v13 = v39;
  }

  v11 = v13;

  (*(v42 + 8))(v43, v40);
  swift_unknownObjectRelease();
  v33 = 0;
  v34 = v11;
  return v33;
}

uint64_t SerialNumberType.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SerialNumberType@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SerialNumberType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t HeadphoneDevice.HeadphoneFeatures.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
    case 11:
      return 11;
    case 12:
      return 12;
    case 13:
      return 13;
    case 14:
      return 14;
    case 15:
      return 15;
    case 16:
      return 16;
    case 17:
      return 17;
    case 18:
      return 18;
    case 19:
      return 19;
    case 20:
      return 20;
    case 21:
      return 21;
    case 22:
      return 22;
    case 23:
      return 23;
    case 24:
      return 24;
    case 25:
      return 25;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeadphoneDevice.HeadphoneFeatures@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = HeadphoneDevice.HeadphoneFeatures.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t HeadphoneDevice.ListeningModeConfigs.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
    case 11:
      return 11;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeadphoneDevice.ListeningModeConfigs@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = HeadphoneDevice.ListeningModeConfigs.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t HeadphoneDevice.cbDevice.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_cbDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.cbDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_cbDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.cbDevice : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.cbDevice : HeadphoneDevice(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x230))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.productInfo.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_productInfo);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.productInfo.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_productInfo);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.productInfo : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x240))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.productInfo : HeadphoneDevice(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x248))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.aaDevice.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_aaDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.aaDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_aaDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.aaDevice : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x258))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.aaDevice : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of AudioAccessoryDevice?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x260))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HeadphoneDevice.btAddress.getter()
{
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);

  return v2;
}

uint64_t HeadphoneDevice.isUpdatingDeviceConfig.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isUpdatingDeviceConfig);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isUpdatingDeviceConfig.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isUpdatingDeviceConfig);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isUpdatingDeviceConfig : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x270))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isUpdatingDeviceConfig : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x278))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.isAirpods.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isAirpods);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isAirpods.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isAirpods);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isAirpods : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x288))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isAirpods : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x290))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.findMyNetworkSupport.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSupport);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.findMyNetworkSupport.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSupport);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkSupport : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2A0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkSupport : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x2A8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.isResettingFindMyNetworkOnError.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isResettingFindMyNetworkOnError);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isResettingFindMyNetworkOnError.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isResettingFindMyNetworkOnError);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isResettingFindMyNetworkOnError : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2B8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isResettingFindMyNetworkOnError : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x2C0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.findMyNetworkEnable@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.findMyNetworkEnable.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.findMyNetworkEnable.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkEnable : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkEnable : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x2D8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.findMyNetworkEnable.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 34618);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.findMyNetworkEnable.modify;
}

void HeadphoneDevice.findMyNetworkEnable.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$findMyNetworkEnable : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x2E8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$findMyNetworkEnable : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x2F0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$findMyNetworkEnable.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$findMyNetworkEnable.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$findMyNetworkEnable.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 53197);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 53197);
  v6[4] = __swift_coroFrameAllocStub(v5, 53197);
  HeadphoneDevice.$findMyNetworkEnable.getter();
  return HeadphoneDevice.$findMyNetworkEnable.modify;
}

void HeadphoneDevice.$findMyNetworkEnable.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$findMyNetworkEnable.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$findMyNetworkEnable.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._findMyNetworkEnable.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__findMyNetworkEnable;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._findMyNetworkEnable.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__findMyNetworkEnable;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.findMyNetworkSession.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSession);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.findMyNetworkSession.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSession);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkSession : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x300))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkSession : HeadphoneDevice(uint64_t *a1, void *a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x308))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.findMyNetworkValueUpdated.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkValueUpdated);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.findMyNetworkValueUpdated.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkValueUpdated);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkValueUpdated : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x318))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkValueUpdated : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x320))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isSettingFindMyNetworkValue@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.isSettingFindMyNetworkValue.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isSettingFindMyNetworkValue.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.isSettingFindMyNetworkValue : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x330))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isSettingFindMyNetworkValue : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x338))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.isSettingFindMyNetworkValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 58349);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isSettingFindMyNetworkValue.modify;
}

void HeadphoneDevice.isSettingFindMyNetworkValue.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$isSettingFindMyNetworkValue : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x348))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isSettingFindMyNetworkValue : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x350))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isSettingFindMyNetworkValue.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isSettingFindMyNetworkValue.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$isSettingFindMyNetworkValue.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 52885);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 52885);
  v6[4] = __swift_coroFrameAllocStub(v5, 52885);
  HeadphoneDevice.$isSettingFindMyNetworkValue.getter();
  return HeadphoneDevice.$isSettingFindMyNetworkValue.modify;
}

void HeadphoneDevice.$isSettingFindMyNetworkValue.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$isSettingFindMyNetworkValue.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$isSettingFindMyNetworkValue.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._isSettingFindMyNetworkValue.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingFindMyNetworkValue;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isSettingFindMyNetworkValue.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingFindMyNetworkValue;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.name@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;

  v7[0] = a1;
  v7[1] = a2;
  Published.init(wrappedValue:)(v7, MEMORY[0x1E69E6158], a3);
}

uint64_t HeadphoneDevice.name.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.name.setter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](v2);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.name : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x360))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t key path setter for HeadphoneDevice.name : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of String(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x368))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 37611);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.name.modify;
}

void HeadphoneDevice.name.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$name : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x378))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$name : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x380))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$name.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$name.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$name.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 19800);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 19800);
  v6[4] = __swift_coroFrameAllocStub(v5, 19800);
  HeadphoneDevice.$name.getter();
  return HeadphoneDevice.$name.modify;
}

void HeadphoneDevice.$name.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$name.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$name.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._name.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__name;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._name.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__name;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isConnected@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t key path getter for HeadphoneDevice.isConnected : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x390))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isConnected : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x398))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.isConnected.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isConnected.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HeadphoneDevice.isConnected.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 18783);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isConnected.modify;
}

void HeadphoneDevice.isConnected.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$isConnected : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x3A8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isConnected : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3B0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isConnected.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isConnected.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$isConnected.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 3442);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 3442);
  v6[4] = __swift_coroFrameAllocStub(v5, 3442);
  HeadphoneDevice.$isConnected.getter();
  return HeadphoneDevice.$isConnected.modify;
}

void HeadphoneDevice.$isConnected.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$isConnected.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$isConnected.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._isConnected.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isConnected;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isConnected.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isConnected;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.listeningMode@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBListeningMode(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.listeningMode.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.listeningMode.setter(int a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.listeningMode : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.listeningMode : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x3C8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.listeningMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 48134);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.listeningMode.modify;
}

void HeadphoneDevice.listeningMode.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$listeningMode : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x3D8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$listeningMode : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$listeningMode.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$listeningMode.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$listeningMode.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 34800);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 34800);
  v6[4] = __swift_coroFrameAllocStub(v5, 34800);
  HeadphoneDevice.$listeningMode.getter();
  return HeadphoneDevice.$listeningMode.modify;
}

void HeadphoneDevice.$listeningMode.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$listeningMode.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$listeningMode.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._listeningMode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__listeningMode;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._listeningMode.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__listeningMode;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.clickHoldModeLeft@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerUIGestureMode(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.clickHoldModeLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.clickHoldModeLeft.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.clickHoldModeLeft : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.clickHoldModeLeft : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x3F8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.clickHoldModeLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 57075);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.clickHoldModeLeft.modify;
}

void HeadphoneDevice.clickHoldModeLeft.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$clickHoldModeLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x408))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$clickHoldModeLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x410))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$clickHoldModeLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$clickHoldModeLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$clickHoldModeLeft.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 16065);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 16065);
  v6[4] = __swift_coroFrameAllocStub(v5, 16065);
  HeadphoneDevice.$clickHoldModeLeft.getter();
  return HeadphoneDevice.$clickHoldModeLeft.modify;
}

void HeadphoneDevice.$clickHoldModeLeft.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$clickHoldModeLeft.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$clickHoldModeLeft.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._clickHoldModeLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._clickHoldModeLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.clickHoldModeRight@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerUIGestureMode(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.clickHoldModeRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.clickHoldModeRight.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.clickHoldModeRight : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x420))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.clickHoldModeRight : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x428))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.clickHoldModeRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 45411);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.clickHoldModeRight.modify;
}

void HeadphoneDevice.clickHoldModeRight.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$clickHoldModeRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x438))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$clickHoldModeRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x440))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$clickHoldModeRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$clickHoldModeRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$clickHoldModeRight.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 30306);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 30306);
  v6[4] = __swift_coroFrameAllocStub(v5, 30306);
  HeadphoneDevice.$clickHoldModeRight.getter();
  return HeadphoneDevice.$clickHoldModeRight.modify;
}

void HeadphoneDevice.$clickHoldModeRight.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$clickHoldModeRight.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$clickHoldModeRight.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._clickHoldModeRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._clickHoldModeRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.listeningModeConfigs.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.listeningModeConfigs.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return HeadphoneDevice.listeningModeConfigs.didset();
}

uint64_t key path getter for HeadphoneDevice.listeningModeConfigs : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x450))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.listeningModeConfigs : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x458))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.listeningModeConfigs.didset()
{
  swift_beginAccess();
  swift_endAccess();
  type metadata accessor for CBListeningModeConfigs(0);
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  v4 = (OptionSet<>.contains(_:)() & 1) != 0;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x470))(v4);
  swift_beginAccess();
  swift_endAccess();
  v3 = (OptionSet<>.contains(_:)() & 1) != 0;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x4D0))(v3);
  swift_beginAccess();
  swift_endAccess();
  v2 = (OptionSet<>.contains(_:)() & 1) != 0;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x500))(v2);
  swift_beginAccess();
  swift_endAccess();
  v1 = (OptionSet<>.contains(_:)() & 1) != 0;
  return (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x4A0))(v1);
}

uint64_t (*HeadphoneDevice.listeningModeConfigs.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return HeadphoneDevice.listeningModeConfigs.modify;
}

uint64_t HeadphoneDevice.listeningModeConfigs.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return HeadphoneDevice.listeningModeConfigs.didset();
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldAuto@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldAuto.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldAuto.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldAuto : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x468))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldAuto : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x470))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldAuto.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 49451);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldAuto.modify;
}

void HeadphoneDevice.pressHoldAuto.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$pressHoldAuto : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x480))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldAuto : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x488))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldAuto.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldAuto.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$pressHoldAuto.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 45281);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 45281);
  v6[4] = __swift_coroFrameAllocStub(v5, 45281);
  HeadphoneDevice.$pressHoldAuto.getter();
  return HeadphoneDevice.$pressHoldAuto.modify;
}

void HeadphoneDevice.$pressHoldAuto.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$pressHoldAuto.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$pressHoldAuto.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._pressHoldAuto.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldAuto;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldAuto.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldAuto;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldTransparency@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldTransparency.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldTransparency.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldTransparency : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x498))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldTransparency : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x4A0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldTransparency.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 6817);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldTransparency.modify;
}

void HeadphoneDevice.pressHoldTransparency.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$pressHoldTransparency : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x4B0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldTransparency : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x4B8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldTransparency.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldTransparency.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$pressHoldTransparency.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 37219);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 37219);
  v6[4] = __swift_coroFrameAllocStub(v5, 37219);
  HeadphoneDevice.$pressHoldTransparency.getter();
  return HeadphoneDevice.$pressHoldTransparency.modify;
}

void HeadphoneDevice.$pressHoldTransparency.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$pressHoldTransparency.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$pressHoldTransparency.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._pressHoldTransparency.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldTransparency;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldTransparency.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldTransparency;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldOff@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldOff.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldOff.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldOff : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4C8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldOff : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x4D0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldOff.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 2315);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldOff.modify;
}

void HeadphoneDevice.pressHoldOff.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$pressHoldOff : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x4E0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldOff : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x4E8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldOff.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldOff.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$pressHoldOff.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 14046);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 14046);
  v6[4] = __swift_coroFrameAllocStub(v5, 14046);
  HeadphoneDevice.$pressHoldOff.getter();
  return HeadphoneDevice.$pressHoldOff.modify;
}

void HeadphoneDevice.$pressHoldOff.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$pressHoldOff.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$pressHoldOff.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._pressHoldOff.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldOff;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldOff.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldOff;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldNoiseCancel@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldNoiseCancel.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldNoiseCancel.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldNoiseCancel : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4F8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldNoiseCancel : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x500))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldNoiseCancel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 28172);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldNoiseCancel.modify;
}

void HeadphoneDevice.pressHoldNoiseCancel.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$pressHoldNoiseCancel : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x510))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldNoiseCancel : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x518))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldNoiseCancel.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldNoiseCancel.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$pressHoldNoiseCancel.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 31124);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 31124);
  v6[4] = __swift_coroFrameAllocStub(v5, 31124);
  HeadphoneDevice.$pressHoldNoiseCancel.getter();
  return HeadphoneDevice.$pressHoldNoiseCancel.modify;
}

void HeadphoneDevice.$pressHoldNoiseCancel.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$pressHoldNoiseCancel.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$pressHoldNoiseCancel.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._pressHoldNoiseCancel.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldNoiseCancel;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldNoiseCancel.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldNoiseCancel;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.doubleTapActionLeft@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBDoubleTapAction(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.doubleTapActionLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.doubleTapActionLeft.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.doubleTapActionLeft : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x528))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.doubleTapActionLeft : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x530))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.doubleTapActionLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 62010);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.doubleTapActionLeft.modify;
}

void HeadphoneDevice.doubleTapActionLeft.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$doubleTapActionLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x540))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$doubleTapActionLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x548))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$doubleTapActionLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$doubleTapActionLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$doubleTapActionLeft.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 52359);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 52359);
  v6[4] = __swift_coroFrameAllocStub(v5, 52359);
  HeadphoneDevice.$doubleTapActionLeft.getter();
  return HeadphoneDevice.$doubleTapActionLeft.modify;
}

void HeadphoneDevice.$doubleTapActionLeft.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$doubleTapActionLeft.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$doubleTapActionLeft.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._doubleTapActionLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._doubleTapActionLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.doubleTapActionRight@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBDoubleTapAction(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.doubleTapActionRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.doubleTapActionRight.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.doubleTapActionRight : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x558))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.doubleTapActionRight : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x560))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.doubleTapActionRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 59517);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.doubleTapActionRight.modify;
}

void HeadphoneDevice.doubleTapActionRight.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$doubleTapActionRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x570))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$doubleTapActionRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x578))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$doubleTapActionRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$doubleTapActionRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$doubleTapActionRight.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 32104);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 32104);
  v6[4] = __swift_coroFrameAllocStub(v5, 32104);
  HeadphoneDevice.$doubleTapActionRight.getter();
  return HeadphoneDevice.$doubleTapActionRight.modify;
}

void HeadphoneDevice.$doubleTapActionRight.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$doubleTapActionRight.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$doubleTapActionRight.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._doubleTapActionRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._doubleTapActionRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.crownRotationDirection@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerCrownRotationDirection(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.crownRotationDirection.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.crownRotationDirection.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.crownRotationDirection : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x588))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.crownRotationDirection : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x590))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.crownRotationDirection.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 20515);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.crownRotationDirection.modify;
}

void HeadphoneDevice.crownRotationDirection.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$crownRotationDirection : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x5A0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$crownRotationDirection : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x5A8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$crownRotationDirection.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$crownRotationDirection.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$crownRotationDirection.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 3450);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 3450);
  v6[4] = __swift_coroFrameAllocStub(v5, 3450);
  HeadphoneDevice.$crownRotationDirection.getter();
  return HeadphoneDevice.$crownRotationDirection.modify;
}

void HeadphoneDevice.$crownRotationDirection.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$crownRotationDirection.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$crownRotationDirection.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._crownRotationDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__crownRotationDirection;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._crownRotationDirection.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__crownRotationDirection;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.inEarDetection@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.inEarDetection.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.inEarDetection.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.inEarDetection : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.inEarDetection : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x5C0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.inEarDetection.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 55939);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.inEarDetection.modify;
}

void HeadphoneDevice.inEarDetection.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$inEarDetection : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x5D0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$inEarDetection : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x5D8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$inEarDetection.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$inEarDetection.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$inEarDetection.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 9504);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 9504);
  v6[4] = __swift_coroFrameAllocStub(v5, 9504);
  HeadphoneDevice.$inEarDetection.getter();
  return HeadphoneDevice.$inEarDetection.modify;
}

void HeadphoneDevice.$inEarDetection.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$inEarDetection.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$inEarDetection.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._inEarDetection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__inEarDetection;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._inEarDetection.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__inEarDetection;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryCharging@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.batteryCharging.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.batteryCharging.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryCharging : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5E8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryCharging : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x5F0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryCharging.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 12289);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryCharging.modify;
}

void HeadphoneDevice.batteryCharging.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$batteryCharging : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x600))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryCharging : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x608))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryCharging.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryCharging.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$batteryCharging.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 5118);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 5118);
  v6[4] = __swift_coroFrameAllocStub(v5, 5118);
  HeadphoneDevice.$batteryCharging.getter();
  return HeadphoneDevice.$batteryCharging.modify;
}

void HeadphoneDevice.$batteryCharging.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$batteryCharging.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$batteryCharging.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._batteryCharging.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryCharging;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryCharging.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryCharging;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.smartRoutingMode@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBSmartRoutingMode(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.smartRoutingMode.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.smartRoutingMode.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.smartRoutingMode : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x618))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.smartRoutingMode : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x620))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.smartRoutingMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 56565);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.smartRoutingMode.modify;
}

void HeadphoneDevice.smartRoutingMode.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$smartRoutingMode : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x630))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$smartRoutingMode : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x638))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$smartRoutingMode.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$smartRoutingMode.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$smartRoutingMode.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 4819);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 4819);
  v6[4] = __swift_coroFrameAllocStub(v5, 4819);
  HeadphoneDevice.$smartRoutingMode.getter();
  return HeadphoneDevice.$smartRoutingMode.modify;
}

void HeadphoneDevice.$smartRoutingMode.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$smartRoutingMode.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$smartRoutingMode.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._smartRoutingMode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__smartRoutingMode;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._smartRoutingMode.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__smartRoutingMode;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.microphoneMode@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBMicrophoneMode(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.microphoneMode.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.microphoneMode.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.microphoneMode : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x648))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.microphoneMode : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x650))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.microphoneMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 9677);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.microphoneMode.modify;
}

void HeadphoneDevice.microphoneMode.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$microphoneMode : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x660))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$microphoneMode : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x668))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$microphoneMode.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$microphoneMode.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$microphoneMode.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 7338);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 7338);
  v6[4] = __swift_coroFrameAllocStub(v5, 7338);
  HeadphoneDevice.$microphoneMode.getter();
  return HeadphoneDevice.$microphoneMode.modify;
}

void HeadphoneDevice.$microphoneMode.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$microphoneMode.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$microphoneMode.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._microphoneMode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__microphoneMode;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._microphoneMode.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__microphoneMode;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.volumeControlToggle@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.volumeControlToggle.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.volumeControlToggle.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.volumeControlToggle : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x678))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.volumeControlToggle : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x680))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.volumeControlToggle.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 62584);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.volumeControlToggle.modify;
}

void HeadphoneDevice.volumeControlToggle.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$volumeControlToggle : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x690))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$volumeControlToggle : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x698))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$volumeControlToggle.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$volumeControlToggle.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$volumeControlToggle.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 35098);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 35098);
  v6[4] = __swift_coroFrameAllocStub(v5, 35098);
  HeadphoneDevice.$volumeControlToggle.getter();
  return HeadphoneDevice.$volumeControlToggle.modify;
}

void HeadphoneDevice.$volumeControlToggle.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$volumeControlToggle.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$volumeControlToggle.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._volumeControlToggle.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__volumeControlToggle;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._volumeControlToggle.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__volumeControlToggle;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.volumeControlView.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_volumeControlView);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.volumeControlView.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_volumeControlView);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.volumeControlView : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6A8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.volumeControlView : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6B0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.spatialProfileExists@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.spatialProfileExists.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.spatialProfileExists.setter(char a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.spatialProfileExists : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6C0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.spatialProfileExists : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6C8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.spatialProfileExists.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 18194);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.spatialProfileExists.modify;
}

void HeadphoneDevice.spatialProfileExists.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

uint64_t key path getter for HeadphoneDevice.$spatialProfileExists : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x6D8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$spatialProfileExists : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x6E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$spatialProfileExists.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$spatialProfileExists.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*HeadphoneDevice.$spatialProfileExists.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 10441);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 10441);
  v6[4] = __swift_coroFrameAllocStub(v5, 10441);
  HeadphoneDevice.$spatialProfileExists.getter();
  return HeadphoneDevice.$spatialProfileExists.modify;
}

void HeadphoneDevice.$spatialProfileExists.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    HeadphoneDevice.$spatialProfileExists.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    HeadphoneDevice.$spatialProfileExists.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t HeadphoneDevice._spatialProfileExists.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialProfileExists;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._spatialProfileExists.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialProfileExists;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isCaseSoundSupported@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}