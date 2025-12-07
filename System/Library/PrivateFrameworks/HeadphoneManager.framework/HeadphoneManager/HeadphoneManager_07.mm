uint64_t static Headphone_Manager.pairedHeadphones()()
{
  v56 = implicit closure #1 in static Headphone_Manager.pairedHeadphones();
  v59 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v66 = closure #1 in OSLogArguments.append(_:)partial apply;
  v48 = closure #1 in static Headphone_Manager.pairedHeadphones();
  v81 = 0;
  v80 = 0;
  v49 = 0;
  v54 = type metadata accessor for Logger();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  v50 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v0 = v19 - v50;
  v51 = v19 - v50;
  v81 = v1;
  v2 = Logger.shared.unsafeMutableAddressor();
  (*(v52 + 16))(v0, v2, v54);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  v55 = 17;
  v58 = 7;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v57 = 32;
  v3 = swift_allocObject();
  v60 = v3;
  *(v3 + 16) = v56;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v60;
  v67 = v4;
  *(v4 + 16) = v59;
  *(v4 + 24) = v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v65 = _allocateUninitializedArray<A>(_:)();
  v68 = v6;

  v7 = v62;
  v8 = v68;
  *v68 = v61;
  v8[1] = v7;

  v9 = v64;
  v10 = v68;
  v68[2] = v63;
  v10[3] = v9;

  v11 = v67;
  v12 = v68;
  v68[4] = v66;
  v12[5] = v11;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v70, v71))
  {
    v13 = v49;
    v41 = static UnsafeMutablePointer.allocate(capacity:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = createStorage<A>(capacity:type:)(0, v40, v40);
    v43 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v44 = &v76;
    v76 = v41;
    v45 = &v75;
    v75 = v42;
    v46 = &v74;
    v74 = v43;
    serialize(_:at:)(2, &v76);
    serialize(_:at:)(1, v44);
    v72 = v61;
    v73 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v72, v44, v45, v46);
    v47 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v38 = 0;
      v72 = v66;
      v73 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v37 = 0;
      _os_log_impl(&dword_1D93D0000, v70, v71, "HeadphoneManager: %s start", v41, 0xCu);
      destroyStorage<A>(_:count:)(v42, 0, v40);
      destroyStorage<A>(_:count:)(v43, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);

      v39 = v37;
    }
  }

  else
  {
    v14 = v49;

    v39 = v14;
  }

  v33 = v39;
  MEMORY[0x1E69E5920](v70);
  (*(v52 + 8))(v51, v54);
  v34 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v15 = v34;
  v16 = MEMORY[0x1E69E5928](v34);
  v35 = (*((*v15 & *MEMORY[0x1E69E7D40]) + 0x138))(v16);
  MEMORY[0x1E69E5920](v34);
  v36 = [v35 fetchPairedAudioAccessoryDevices];
  MEMORY[0x1E69E5920](v35);
  if (v36)
  {
    v32 = v36;
    v29 = v36;
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](v29);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v28 = v31;
  v80 = v31;

  if (v28)
  {
    v27 = v28;
    v17 = v33;
    v22 = v28;
    v23 = Dictionary.values.getter();

    v77 = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVys11AnyHashableVyp_GMd, &_sSD6ValuesVys11AnyHashableVyp_GMR);
    v25 = type metadata accessor for HeadphoneDevice(0);
    lazy protocol witness table accessor for type [AnyHashable : Any].Values and conformance [A : B].Values();
    result = Sequence.compactMap<A>(_:)();
    v26 = result;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v20 = v26;
    outlined destroy of [AnyHashable : Any].Values(&v77);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v78 = v21;
  if (v21)
  {
    v79 = v78;
  }

  else
  {
    v19[1] = 0;
    type metadata accessor for HeadphoneDevice(0);
    v79 = _allocateUninitializedArray<A>(_:)();
    if (v78)
    {
      outlined destroy of [HeadphoneDevice]?(&v78);
    }
  }

  v19[0] = v79;

  return v19[0];
}

uint64_t closure #1 in static Headphone_Manager.pairedHeadphones()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v237 = a2;
  v264 = a1;
  v239 = implicit closure #2 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v240 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v241 = partial apply for implicit closure #3 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v242 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v243 = closure #1 in OSLogArguments.append(_:)partial apply;
  v244 = closure #1 in OSLogArguments.append(_:)partial apply;
  v245 = closure #1 in OSLogArguments.append(_:)partial apply;
  v246 = closure #1 in OSLogArguments.append(_:)partial apply;
  v247 = closure #1 in OSLogArguments.append(_:)partial apply;
  v248 = closure #1 in OSLogArguments.append(_:)partial apply;
  v249 = implicit closure #6 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v250 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v251 = closure #1 in OSLogArguments.append(_:)partial apply;
  v252 = closure #1 in OSLogArguments.append(_:)partial apply;
  v253 = closure #1 in OSLogArguments.append(_:)partial apply;
  v254 = implicit closure #5 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v255 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v256 = closure #1 in OSLogArguments.append(_:)partial apply;
  v257 = closure #1 in OSLogArguments.append(_:)partial apply;
  v258 = closure #1 in OSLogArguments.append(_:)partial apply;
  v259 = implicit closure #1 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v260 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v261 = closure #1 in OSLogArguments.append(_:)partial apply;
  v262 = closure #1 in OSLogArguments.append(_:)partial apply;
  v263 = closure #1 in OSLogArguments.append(_:)partial apply;
  v314 = 0;
  v311 = 0;
  v305 = 0;
  v298 = 0;
  v299 = 0;
  v292 = 0;
  v276 = 0;
  v265 = type metadata accessor for Logger();
  v266 = *(v265 - 8);
  v267 = v265 - 8;
  v268 = (v266[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v264);
  v269 = &v86 - v268;
  v270 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v271 = &v86 - v270;
  v272 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v273 = &v86 - v272;
  v274 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v275 = &v86 - v274;
  v314 = v8;
  v277 = v313;
  outlined init with copy of Any(v8, v313);
  type metadata accessor for AudioAccessoryDevice();
  swift_dynamicCast();
  v278 = v312;
  v311 = v312;
  v279 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(v312);
  if (v279)
  {
    v236 = v279;
    v21 = v273;
    v204 = v279;
    v305 = v279;
    v22 = Logger.shared.unsafeMutableAddressor();
    v202 = v266[2];
    v203 = v266 + 2;
    v202(v21, v22, v265);
    MEMORY[0x1E69E5928](v204);
    v210 = 7;
    v211 = swift_allocObject();
    *(v211 + 16) = v204;
    v222 = Logger.logObject.getter();
    v223 = static os_log_type_t.default.getter();
    v207 = 17;
    v213 = swift_allocObject();
    v206 = 32;
    *(v213 + 16) = 32;
    v214 = swift_allocObject();
    v208 = 8;
    *(v214 + 16) = 8;
    v209 = 32;
    v23 = swift_allocObject();
    v205 = v23;
    *(v23 + 16) = v239;
    *(v23 + 24) = 0;
    v24 = swift_allocObject();
    v25 = v205;
    v215 = v24;
    *(v24 + 16) = v240;
    *(v24 + 24) = v25;
    v216 = swift_allocObject();
    *(v216 + 16) = v206;
    v217 = swift_allocObject();
    *(v217 + 16) = v208;
    v26 = swift_allocObject();
    v27 = v211;
    v212 = v26;
    *(v26 + 16) = v241;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v212;
    v219 = v28;
    *(v28 + 16) = v242;
    *(v28 + 24) = v29;
    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v218 = _allocateUninitializedArray<A>(_:)();
    v220 = v30;

    v31 = v213;
    v32 = v220;
    *v220 = v243;
    v32[1] = v31;

    v33 = v214;
    v34 = v220;
    v220[2] = v244;
    v34[3] = v33;

    v35 = v215;
    v36 = v220;
    v220[4] = v245;
    v36[5] = v35;

    v37 = v216;
    v38 = v220;
    v220[6] = v246;
    v38[7] = v37;

    v39 = v217;
    v40 = v220;
    v220[8] = v247;
    v40[9] = v39;

    v41 = v219;
    v42 = v220;
    v220[10] = v248;
    v42[11] = v41;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v222, v223))
    {
      v194 = static UnsafeMutablePointer.allocate(capacity:)();
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v195 = createStorage<A>(capacity:type:)(0, v193, v193);
      v196 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v198 = &v284;
      v284 = v194;
      v199 = &v283;
      v283 = v195;
      v200 = &v282;
      v282 = v196;
      v197 = 2;
      serialize(_:at:)(2, &v284);
      serialize(_:at:)(v197, v198);
      v43 = v238;
      v280 = v243;
      v281 = v213;
      closure #1 in osLogInternal(_:log:type:)(&v280, v198, v199, v200);
      v201 = v43;
      if (v43)
      {

        __break(1u);
      }

      else
      {
        v280 = v244;
        v281 = v214;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v191 = 0;
        v280 = v245;
        v281 = v215;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v190 = 0;
        v280 = v246;
        v281 = v216;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v189 = 0;
        v280 = v247;
        v281 = v217;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v188 = 0;
        v280 = v248;
        v281 = v219;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v187 = 0;
        _os_log_impl(&dword_1D93D0000, v222, v223, "HeadphoneManager: %s %s", v194, 0x16u);
        destroyStorage<A>(_:count:)(v195, 0, v193);
        destroyStorage<A>(_:count:)(v196, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v194, MEMORY[0x1E69E7508]);

        v192 = v187;
      }
    }

    else
    {

      v192 = v238;
    }

    v183 = v192;
    MEMORY[0x1E69E5920](v222);
    v184 = v266[1];
    v185 = v266 + 1;
    v184(v273, v265);
    v186 = [v204 btAddressData];
    if (v186)
    {
      v182 = v186;
      v177 = v186;
      v178 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v44;
      MEMORY[0x1E69E5920](v177);
      v180 = v178;
      v181 = v179;
    }

    else
    {
      v180 = 0;
      v181 = 0xF000000000000000;
    }

    v175 = v181;
    v176 = v180;
    if ((v181 & 0xF000000000000000) != 0xF000000000000000)
    {
      v173 = v176;
      v174 = v175;
      v171 = v175;
      v172 = v176;
      v298 = v176;
      v299 = v175;
      if (MEMORY[0x1DA730470]() == 6)
      {
        v169 = *Headphone_Manager.shared.unsafeMutableAddressor();
        v45 = v169;
        MEMORY[0x1E69E5928](v169);
        v170 = (*((*v45 & *MEMORY[0x1E69E7D40]) + 0x270))(v204);
        MEMORY[0x1E69E5920](v169);
        if (v170)
        {
          v159 = *Headphone_Manager.shared.unsafeMutableAddressor();
          MEMORY[0x1E69E5928](v159);
          v46 = [v278 headphoneDeviceWithCbDevice:v204 withDelegate:v159];
          v160 = v46;
          swift_unknownObjectRelease();
          v292 = v46;
          v47 = *v46;
          v161 = MEMORY[0x1E69E7D40];
          (*((v47 & *MEMORY[0x1E69E7D40]) + 0x398))(0);
          v167 = *Headphone_Manager.shared.unsafeMutableAddressor();
          v48 = v167;
          MEMORY[0x1E69E5928](v167);
          v162 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
          v163 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

          v164 = (*((*v48 & *v161) + 0x210))(v49);
          v166 = v290;
          v290[0] = v162;
          v290[1] = v163;
          v165 = type metadata accessor for HeadphoneDevice(0);
          MEMORY[0x1DA7308E0](&v291, v166, v164, MEMORY[0x1E69E6158]);
          outlined destroy of String(v166);
          v168 = v291;
          MEMORY[0x1E69E5920](v167);
          v289 = v168;
          v158 = v168 == 0;
          v157 = v158;
          outlined destroy of HeadphoneDevice?(&v289);

          if (v157)
          {
            v156 = *Headphone_Manager.shared.unsafeMutableAddressor();
            v50 = v156;
            MEMORY[0x1E69E5928](v156);
            v150 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
            v151 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

            MEMORY[0x1E69E5928](v160);
            v153 = &v287;
            v287 = v160;
            v152 = v286;
            v286[0] = v150;
            v286[1] = v151;
            v51 = *((*v50 & *MEMORY[0x1E69E7D40]) + 0x220);
            v154 = &v285;
            v155 = v51();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
            Dictionary.subscript.setter();
            v155();
            MEMORY[0x1E69E5920](v156);
          }

          v147 = *Headphone_Manager.shared.unsafeMutableAddressor();
          v52 = v147;
          MEMORY[0x1E69E5928](v147);
          v144 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
          v145 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

          v148 = (*((*v52 & *MEMORY[0x1E69E7D40]) + 0x210))(v53);
          v146 = v288;
          v288[0] = v144;
          v288[1] = v145;
          MEMORY[0x1DA7308E0]();
          outlined destroy of String(v146);
          MEMORY[0x1E69E5920](v147);

          MEMORY[0x1E69E5920](v160);
          outlined consume of Data._Representation(v172, v171);
          MEMORY[0x1E69E5920](v204);
          MEMORY[0x1E69E5920](v278);
          result = v183;
          v149 = v183;
        }

        else
        {
          v55 = v271;
          v56 = Logger.shared.unsafeMutableAddressor();
          v202(v55, v56, v265);
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();
          v133 = 17;
          v135 = 7;
          v137 = swift_allocObject();
          *(v137 + 16) = 32;
          v138 = swift_allocObject();
          *(v138 + 16) = 8;
          v134 = 32;
          v57 = swift_allocObject();
          v136 = v57;
          *(v57 + 16) = v249;
          *(v57 + 24) = 0;
          v58 = swift_allocObject();
          v59 = v136;
          v140 = v58;
          *(v58 + 16) = v250;
          *(v58 + 24) = v59;
          v139 = _allocateUninitializedArray<A>(_:)();
          v141 = v60;

          v61 = v137;
          v62 = v141;
          *v141 = v251;
          v62[1] = v61;

          v63 = v138;
          v64 = v141;
          v141[2] = v252;
          v64[3] = v63;

          v65 = v140;
          v66 = v141;
          v141[4] = v253;
          v66[5] = v65;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v142, v143))
          {
            v126 = static UnsafeMutablePointer.allocate(capacity:)();
            v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v127 = createStorage<A>(capacity:type:)(0, v125, v125);
            v128 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v129 = &v297;
            v297 = v126;
            v130 = &v296;
            v296 = v127;
            v131 = &v295;
            v295 = v128;
            serialize(_:at:)(2, &v297);
            serialize(_:at:)(1, v129);
            v67 = v183;
            v293 = v251;
            v294 = v137;
            closure #1 in osLogInternal(_:log:type:)(&v293, v129, v130, v131);
            v132 = v67;
            if (v67)
            {

              __break(1u);
            }

            else
            {
              v293 = v252;
              v294 = v138;
              closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
              v123 = 0;
              v293 = v253;
              v294 = v140;
              closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
              v122 = 0;
              _os_log_impl(&dword_1D93D0000, v142, v143, "HeadphoneManager: %s Not Apple Headphone", v126, 0xCu);
              destroyStorage<A>(_:count:)(v127, 0, v125);
              destroyStorage<A>(_:count:)(v128, 1, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v126, MEMORY[0x1E69E7508]);

              v124 = v122;
            }
          }

          else
          {

            v124 = v183;
          }

          v121 = v124;
          MEMORY[0x1E69E5920](v142);
          v184(v271, v265);
          v68 = v172;
          v69 = v171;
          *v237 = 0;
          outlined consume of Data._Representation(v68, v69);
          MEMORY[0x1E69E5920](v204);
          MEMORY[0x1E69E5920](v278);
          result = v121;
          v149 = v121;
        }

        return result;
      }

      outlined consume of Data._Representation(v172, v171);
    }

    v70 = v269;
    v71 = Logger.shared.unsafeMutableAddressor();
    v202(v70, v71, v265);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    v110 = 17;
    v112 = 7;
    v114 = swift_allocObject();
    *(v114 + 16) = 32;
    v115 = swift_allocObject();
    *(v115 + 16) = 8;
    v111 = 32;
    v72 = swift_allocObject();
    v113 = v72;
    *(v72 + 16) = v254;
    *(v72 + 24) = 0;
    v73 = swift_allocObject();
    v74 = v113;
    v117 = v73;
    *(v73 + 16) = v255;
    *(v73 + 24) = v74;
    v116 = _allocateUninitializedArray<A>(_:)();
    v118 = v75;

    v76 = v114;
    v77 = v118;
    *v118 = v256;
    v77[1] = v76;

    v78 = v115;
    v79 = v118;
    v118[2] = v257;
    v79[3] = v78;

    v80 = v117;
    v81 = v118;
    v118[4] = v258;
    v81[5] = v80;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v119, v120))
    {
      v103 = static UnsafeMutablePointer.allocate(capacity:)();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v104 = createStorage<A>(capacity:type:)(0, v102, v102);
      v105 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v106 = &v304;
      v304 = v103;
      v107 = &v303;
      v303 = v104;
      v108 = &v302;
      v302 = v105;
      serialize(_:at:)(2, &v304);
      serialize(_:at:)(1, v106);
      v82 = v183;
      v300 = v256;
      v301 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v300, v106, v107, v108);
      v109 = v82;
      if (v82)
      {

        __break(1u);
      }

      else
      {
        v300 = v257;
        v301 = v115;
        closure #1 in osLogInternal(_:log:type:)(&v300, &v304, &v303, &v302);
        v100 = 0;
        v300 = v258;
        v301 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v300, &v304, &v303, &v302);
        v99 = 0;
        _os_log_impl(&dword_1D93D0000, v119, v120, "HeadphoneManager: %s Invalid BT Address", v103, 0xCu);
        destroyStorage<A>(_:count:)(v104, 0, v102);
        destroyStorage<A>(_:count:)(v105, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v103, MEMORY[0x1E69E7508]);

        v101 = v99;
      }
    }

    else
    {

      v101 = v183;
    }

    v98 = v101;
    MEMORY[0x1E69E5920](v119);
    v184(v269, v265);
    v83 = v204;
    *v237 = 0;
    MEMORY[0x1E69E5920](v83);
    MEMORY[0x1E69E5920](v278);
    result = v98;
    v149 = v98;
  }

  else
  {
    v9 = v275;
    v10 = Logger.shared.unsafeMutableAddressor();
    (v266[2])(v9, v10, v265);
    v234 = Logger.logObject.getter();
    v235 = static os_log_type_t.error.getter();
    v224 = 17;
    v226 = 7;
    v228 = swift_allocObject();
    *(v228 + 16) = 32;
    v229 = swift_allocObject();
    *(v229 + 16) = 8;
    v225 = 32;
    v11 = swift_allocObject();
    v227 = v11;
    *(v11 + 16) = v259;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v227;
    v231 = v12;
    *(v12 + 16) = v260;
    *(v12 + 24) = v13;
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v230 = _allocateUninitializedArray<A>(_:)();
    v232 = v14;

    v15 = v228;
    v16 = v232;
    *v232 = v261;
    v16[1] = v15;

    v17 = v229;
    v18 = v232;
    v232[2] = v262;
    v18[3] = v17;

    v19 = v231;
    v20 = v232;
    v232[4] = v263;
    v20[5] = v19;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v234, v235))
    {
      v91 = static UnsafeMutablePointer.allocate(capacity:)();
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v92 = createStorage<A>(capacity:type:)(0, v90, v90);
      v93 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v94 = &v310;
      v310 = v91;
      v95 = &v309;
      v309 = v92;
      v96 = &v308;
      v308 = v93;
      serialize(_:at:)(2, &v310);
      serialize(_:at:)(1, v94);
      v84 = v238;
      v306 = v261;
      v307 = v228;
      closure #1 in osLogInternal(_:log:type:)(&v306, v94, v95, v96);
      v97 = v84;
      if (v84)
      {

        __break(1u);
      }

      else
      {
        v306 = v262;
        v307 = v229;
        closure #1 in osLogInternal(_:log:type:)(&v306, &v310, &v309, &v308);
        v88 = 0;
        v306 = v263;
        v307 = v231;
        closure #1 in osLogInternal(_:log:type:)(&v306, &v310, &v309, &v308);
        v87 = 0;
        _os_log_impl(&dword_1D93D0000, v234, v235, "HeadphoneManager: %s is missing cbDevice early exit found handler", v91, 0xCu);
        destroyStorage<A>(_:count:)(v92, 0, v90);
        destroyStorage<A>(_:count:)(v93, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v91, MEMORY[0x1E69E7508]);

        v89 = v87;
      }
    }

    else
    {

      v89 = v238;
    }

    v86 = v89;
    MEMORY[0x1E69E5920](v234);
    (v266[1])(v275, v265);
    v85 = v278;
    *v237 = 0;
    MEMORY[0x1E69E5920](v85);
    return v86;
  }

  return result;
}

uint64_t implicit closure #3 in closure #1 in static Headphone_Manager.pairedHeadphones()(void *a1)
{
  v5 = [a1 name];
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
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, 1);
  }

  return v7._countAndFlagsBits;
}

uint64_t Headphone_Manager.getDeviceFromUUID(UUID:)(uint64_t a1, uint64_t a2)
{
  v10[1] = 0;
  v10[2] = a1;
  v10[3] = a2;
  v10[0] = 0;
  v2 = Headphone_Manager.shared.unsafeMutableAddressor();
  v3 = *v2;
  v7 = *v2;
  v4 = MEMORY[0x1E69E5928](*v2);
  v8 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v4);
  MEMORY[0x1E69E5920](v7);
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
  lazy protocol witness table accessor for type [String : HeadphoneDevice] and conformance [A : B]();
  Sequence.forEach(_:)();

  outlined destroy of [String : HeadphoneDevice](&v9);
  v6 = v10[0];
  MEMORY[0x1E69E5928](v10[0]);
  outlined destroy of HeadphoneDevice?(v10);
  return v6;
}

uint64_t closure #1 in Headphone_Manager.getDeviceFromUUID(UUID:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v69 = a1;
  v68 = a2;
  v58 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a6;
  v59 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.getDeviceFromUUID(UUID:);
  v60 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v82 = 0;
  v64 = 0;
  v70 = type metadata accessor for Logger();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = v30 - v73;
  v89 = MEMORY[0x1EEE9AC00](v69);
  v90 = v7;
  v88 = a3;
  v86 = v8;
  v87 = v9;
  v85 = v10;
  v75 = (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v76 = [v75 identifier];
  if (v76)
  {
    v57 = v76;
    v54 = v76;
    v55._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55._object = v11;
    MEMORY[0x1E69E5920](v54);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v53 = v56;
  MEMORY[0x1E69E5920](v75);
  v83 = v53;
  if (v53._object)
  {
    v84 = v83;
  }

  else
  {
    v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid", 7uLL, 1);
    if (v83._object)
    {
      outlined destroy of String?(&v83);
    }
  }

  v12 = v74;
  v39 = v84;
  v82 = v84;
  v13 = Logger.shared.unsafeMutableAddressor();
  (*(v71 + 16))(v12, v13, v70);

  v41 = 32;
  v42 = 7;
  v14 = swift_allocObject();
  object = v39._object;
  v43 = v14;
  *(v14 + 16) = v39._countAndFlagsBits;
  *(v14 + 24) = object;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v43;
  v44 = v16;
  *(v16 + 16) = v59;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v44;
  v48 = v18;
  *(v18 + 16) = v60;
  *(v18 + 24) = v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  v49 = v20;

  v21 = v45;
  v22 = v49;
  *v49 = v61;
  v22[1] = v21;

  v23 = v46;
  v24 = v49;
  v49[2] = v62;
  v24[3] = v23;

  v25 = v48;
  v26 = v49;
  v49[4] = v63;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v27 = v64;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0, v31, v31);
    v34 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v35 = &v81;
    v81 = v32;
    v36 = &v80;
    v80 = v33;
    v37 = &v79;
    v79 = v34;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v35);
    v77 = v61;
    v78 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v77, v35, v36, v37);
    v38 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v77 = v62;
      v78 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v30[1] = 0;
      v77 = v63;
      v78 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_1D93D0000, v51, v52, "HeadphoneManager: Fetched HeadphoneDevice with UUID: %s", v32, 0xCu);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v32, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v51);
  (*(v71 + 8))(v74, v70);
  if (MEMORY[0x1DA7309E0](v39._countAndFlagsBits, v39._object, v65, v66))
  {
    MEMORY[0x1E69E5928](v58);
    v28 = *v67;
    *v67 = v58;
    MEMORY[0x1E69E5920](v28);
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Headphone_Manager@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Headphone_Manager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall Headphone_Manager.updateTitleBar()()
{
  v3 = v0;
  v2 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (v2)
  {
    v1 = v2;
    swift_unknownObjectRetain();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v2);
    swift_getObjectType();
    [v1 updateTitleBar];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v2);
  }
}

void Headphone_Manager.addTopLevelEntry(hpDevice:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  v4 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (v4)
  {
    v2 = v4;
    swift_unknownObjectRetain();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v4);
    swift_getObjectType();
    [v2 addTopLevelEntryWithHpDevice_];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v4);
  }
}

void Headphone_Manager.updateTopLevelEntry(hpDevice:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  v4 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (v4)
  {
    v2 = v4;
    swift_unknownObjectRetain();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v4);
    swift_getObjectType();
    [v2 updateTopLevelEntryWithHpDevice_];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v4);
  }
}

void Headphone_Manager.removeTopLevelEntry(hpDevice:)(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  v4 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (v4)
  {
    v2 = v4;
    swift_unknownObjectRetain();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v4);
    swift_getObjectType();
    [v2 removeTopLevelEntryWithHpDevice_];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v4);
  }
}

uint64_t Headphone_Manager.modernHPSFFEnabled.getter()
{
  v2[5] = 0;
  v2[3] = &type metadata for AudioAccessoryFeatures;
  v2[4] = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  LOBYTE(v2[0]) = 2;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v1 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBVendorID@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBVendorID.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CBVendorID.init(rawValue:)(__int16 a1)
{
  LOWORD(v2) = a1;
  BYTE2(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBVendorID@<X0>(_WORD *a1@<X8>)
{
  result = CBVendorID.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply(uint64_t a1)
{
  return thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()(a1, *(v1 + 16));
}

{
  return thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()(a1, *(v1 + 16));
}

{
  return thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()(a1, *(v1 + 16));
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for CBVendorID(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBVendorID;
  if (!lazy cache variable for type metadata for CBVendorID)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBVendorID);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBVendorID and conformance CBVendorID()
{
  v2 = lazy protocol witness table cache variable for type CBVendorID and conformance CBVendorID;
  if (!lazy protocol witness table cache variable for type CBVendorID and conformance CBVendorID)
  {
    type metadata accessor for CBVendorID(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBVendorID and conformance CBVendorID);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *outlined init with copy of CBDeviceReporting?(void *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of HeadphoneMangerTopLevelEntryUIHandling?(void *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

unint64_t type metadata accessor for AudioAccessoryDevice()
{
  v2 = lazy cache variable for type metadata for AudioAccessoryDevice;
  if (!lazy cache variable for type metadata for AudioAccessoryDevice)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AudioAccessoryDevice);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
    lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

BOOL CBProductIDIsMTK(int a1)
{
  switch(a1)
  {
    case 8209:
      v2 = 1;
      break;
    case 8214:
      v2 = 1;
      break;
    case 8215:
      v2 = 1;
      break;
    case 8230:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8229 || a1 == 8218;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW1(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8195:
      v2 = 1;
      break;
    case 8197:
      v2 = 1;
      break;
    case 8198:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8201 || a1 == 8208;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW2(int a1)
{
  switch(a1)
  {
    case 8202:
      v2 = 1;
      break;
    case 8203:
      v2 = 1;
      break;
    case 8204:
      v2 = 1;
      break;
    case 8205:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8210:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8223 || a1 == 8239;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW3_0(int a1)
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

uint64_t one-time initialization function for defaultHeadphone()
{
  type metadata accessor for HeadphoneDevice(0);
  type metadata accessor for CBDevice();
  v3 = CBDevice.__allocating_init()();
  v0 = Headphone_Manager.shared.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  result = HeadphoneDevice.__allocating_init(cbDevice:delegate:)(v3, v2);
  static HeadphoneDevice.defaultHeadphone = result;
  return result;
}

uint64_t *HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHeadphone != -1)
  {
    swift_once();
  }

  return &static HeadphoneDevice.defaultHeadphone;
}

uint64_t static HeadphoneDevice.defaultHeadphone.getter()
{
  v1 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t static HeadphoneDevice.defaultHeadphone.setter(uint64_t a1)
{
  v3 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*static HeadphoneDevice.defaultHeadphone.modify())(uint64_t a1)
{
  HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  return static HeadphoneDevice.defaultHeadphone.modify;
}

void static HeadphoneDevice.allFeatureContents(productID:)(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pSgMd, &_s16HeadphoneManager0A18FeatureContentType_pSgMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  v7 = type metadata accessor for B698FeatureContent();
  v8 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v10 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v11 = B698FeatureContent.__allocating_init(id:headphoneDevice:)(a1, v10);
  if (v11)
  {
    v6[3] = v7;
    v6[4] = &protocol witness table for B698FeatureContent;
    *v6 = v11;
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
  }

  closure #1 in static HeadphoneDevice.allFeatureContents(productID:)(a1, v6 + 5);
  v2 = type metadata accessor for B768FeatureContent();
  v3 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v5 = B768FeatureContent.__allocating_init(id:headphoneDevice:)(a1, v4);
  if (v5)
  {
    v6[13] = v2;
    v6[14] = &protocol witness table for B768FeatureContent;
    v6[10] = v5;
  }

  else
  {
    v6[10] = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[13] = 0;
    v6[14] = 0;
  }

  closure #2 in static HeadphoneDevice.allFeatureContents(productID:)(a1, v6 + 15);
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t closure #1 in static HeadphoneDevice.allFeatureContents(productID:)@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for B788FeatureContent();
  v5 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v7 = *v5;
  MEMORY[0x1E69E5928](*v5);
  swift_endAccess();
  result = B788FeatureContent.__allocating_init(id:headphoneDevice:)(a1, v7);
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for B788FeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t closure #2 in static HeadphoneDevice.allFeatureContents(productID:)@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for B494BFeatureContent();
  v5 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v7 = *v5;
  MEMORY[0x1E69E5928](*v5);
  swift_endAccess();
  result = B494BFeatureContent.__allocating_init(id:headphoneDevice:)(a1, v7);
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for B494BFeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

void HeadphoneDevice.allFeatureContents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pSgMd, &_s16HeadphoneManager0A18FeatureContentType_pSgMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  v7 = type metadata accessor for B698FeatureContent();
  v8 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v10 = [v8 productID];
  MEMORY[0x1E69E5920](v8);
  (MEMORY[0x1E69E5928])();
  v11 = B698FeatureContent.__allocating_init(id:headphoneDevice:)(v10, v9);
  if (v11)
  {
    v6[3] = v7;
    v6[4] = &protocol witness table for B698FeatureContent;
    *v6 = v11;
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
  }

  closure #1 in HeadphoneDevice.allFeatureContents.getter(v9, v6 + 5);
  v2 = type metadata accessor for B768FeatureContent();
  v3 = (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v4 = [v3 productID];
  MEMORY[0x1E69E5920](v3);
  (MEMORY[0x1E69E5928])();
  v5 = B768FeatureContent.__allocating_init(id:headphoneDevice:)(v4, v9);
  if (v5)
  {
    v6[13] = v2;
    v6[14] = &protocol witness table for B768FeatureContent;
    v6[10] = v5;
  }

  else
  {
    v6[10] = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[13] = 0;
    v6[14] = 0;
  }

  closure #2 in HeadphoneDevice.allFeatureContents.getter(v9, v6 + 15);
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t closure #1 in HeadphoneDevice.allFeatureContents.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for B788FeatureContent();
  v6 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v8 = [v6 productID];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](a1);
  result = B788FeatureContent.__allocating_init(id:headphoneDevice:)(v8, a1);
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for B788FeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t closure #2 in HeadphoneDevice.allFeatureContents.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for B494BFeatureContent();
  v6 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v8 = [v6 productID];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](a1);
  result = B494BFeatureContent.__allocating_init(id:headphoneDevice:)(v8, a1);
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for B494BFeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

void *HeadphoneDevice._featureContent.getter@<X0>(void *a1@<X8>)
{
  v16 = v1;
  MEMORY[0x1E69E5928](v1);
  key = HeadphoneSettingsUIFeatureContentLookupKey.unsafeMutableAddressor();
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v1, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v6, &v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0uLL;
    v8 = 0uLL;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pMd, &_s16HeadphoneManager0A18FeatureContentType_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v9);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    outlined init with take of HeadphoneFeatureContentType(&v10, __dst);
    outlined init with copy of HeadphoneFeatureContentType(__dst, a1);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    result = outlined destroy of HeadphoneFeatureContentType?(&v10);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
  }

  return result;
}

void *outlined destroy of HeadphoneFeatureContentType?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t outlined init with copy of HeadphoneFeatureContentType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

void *HeadphoneDevice._featureContent.setter(void *a1)
{
  v16 = a1;
  v21 = 0;
  v22 = a1;
  v2 = v1;
  v17 = HeadphoneSettingsUIFeatureContentLookupKey.unsafeMutableAddressor();
  outlined init with copy of HeadphoneFeatureContentType?(v16, v19);
  if (v20)
  {
    v9 = v20;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = v5;
    MEMORY[0x1EEE9AC00](v5);
    v10 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))();
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v6 = v14;
  v5[1] = &v18;
  swift_beginAccess();
  objc_setAssociatedObject(v15, v17, v6, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return outlined destroy of HeadphoneFeatureContentType?(v16);
}

void *outlined init with copy of HeadphoneFeatureContentType?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t HeadphoneDevice.featureContent.getter@<X0>(void *a1@<X8>)
{
  v59 = a1;
  ObjectType = swift_getObjectType();
  v82 = 0;
  v80 = 0;
  v61 = 0;
  v62 = type metadata accessor for Logger();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1;
  HeadphoneDevice._featureContent.getter(v81);
  v57 = v81[3] == 0;
  v56 = v57;
  outlined destroy of HeadphoneFeatureContentType?(v81);
  if (!v56)
  {
    HeadphoneDevice._featureContent.getter(v59);
    return v61;
  }

  v3 = v61;
  v51 = 0;
  v46 = type metadata accessor for DefaultFeatureContent();
  v4 = v58;
  v47 = DefaultFeatureContent.__allocating_init(id:headphoneDevice:)(0, v58);
  v80 = v47;
  v48 = (*((*v58 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v49 = [v48 productID];

  static HeadphoneDevice.allFeatureContents(productID:)(v49);
  v76 = v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16HeadphoneManager0A18FeatureContentType_pSgGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pSgGMR);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pMd, &_s16HeadphoneManager0A18FeatureContentType_pMR);
  v50 = v53;
  lazy protocol witness table accessor for type [HeadphoneFeatureContentType?] and conformance [A]();
  v6 = Sequence.compactMap<A>(_:)();
  v54 = v3;
  v55 = v6;
  if (!v3)
  {
    v45 = v55;
    outlined destroy of [HeadphoneFeatureContentType?](&v76);
    v75 = v45;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16HeadphoneManager0A18FeatureContentType_pGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pGMR);
    lazy protocol witness table accessor for type [HeadphoneFeatureContentType] and conformance [A]();
    Collection.first.getter();

    if (v74)
    {
      outlined init with take of HeadphoneFeatureContentType(v73, __dst);
    }

    else
    {

      if (v47)
      {
        v43 = v47;
        v78 = v46;
        v79 = &protocol witness table for DefaultFeatureContent;
        __dst[0] = v47;
      }

      else
      {
        memset(__dst, 0, sizeof(__dst));
        v78 = 0;
        v79 = 0;
      }

      if (v74)
      {
        outlined destroy of HeadphoneFeatureContentType?(v73);
      }
    }

    outlined init with copy of HeadphoneFeatureContentType?(__dst, v72);
    if (v72[3])
    {
      if (swift_dynamicCast())
      {
        v42 = v66;
      }

      else
      {
        v42 = 0;
      }

      v41 = v42;
    }

    else
    {
      outlined destroy of HeadphoneFeatureContentType?(v72);
      v41 = 0;
    }

    v40 = v41;

    if (v40)
    {
      v8 = v65;
      v9 = Logger.shared.unsafeMutableAddressor();
      (*(v64 + 16))(v8, v9, v62);
      v38 = Logger.logObject.getter();
      v35 = v38;
      v37 = static os_log_type_t.error.getter();
      v36 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v39 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v38, v37))
      {
        v10 = v54;
        v26 = static UnsafeMutablePointer.allocate(capacity:)();
        v22 = v26;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v24 = 0;
        v27 = createStorage<A>(capacity:type:)(0, v23, v23);
        v25 = v27;
        v28 = createStorage<A>(capacity:type:)(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v70 = v26;
        v69 = v27;
        v68 = v28;
        v29 = 0;
        v30 = &v70;
        serialize(_:at:)(0, &v70);
        serialize(_:at:)(v29, v30);
        v67 = v39;
        v31 = &v13;
        MEMORY[0x1EEE9AC00](&v13);
        v32 = &v13 - 6;
        *(&v13 - 4) = v11;
        *(&v13 - 3) = &v69;
        *(&v13 - 2) = &v68;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v34 = v10;
        if (v10)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v35, v36, "Could not find a feature content", v22, 2u);
          v20 = 0;
          destroyStorage<A>(_:count:)(v25, 0, v23);
          destroyStorage<A>(_:count:)(v28, v20, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v22, MEMORY[0x1E69E7508]);

          v21 = v34;
        }
      }

      else
      {

        v21 = v54;
      }

      v18 = v21;

      (*(v64 + 8))(v65, v62);
      v19 = v18;
    }

    else
    {
      v19 = v54;
    }

    v16 = v19;
    v15 = __dst;
    v14 = v71;
    outlined init with copy of HeadphoneFeatureContentType?(__dst, v71);
    HeadphoneDevice._featureContent.setter(v14);
    outlined init with copy of HeadphoneFeatureContentType?(v15, v59);
    outlined destroy of HeadphoneFeatureContentType?(v15);

    return v16;
  }

  result = 0;
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [HeadphoneFeatureContentType?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HeadphoneFeatureContentType?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HeadphoneFeatureContentType?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16HeadphoneManager0A18FeatureContentType_pSgGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HeadphoneFeatureContentType?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HeadphoneFeatureContentType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HeadphoneFeatureContentType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HeadphoneFeatureContentType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16HeadphoneManager0A18FeatureContentType_pGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HeadphoneFeatureContentType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

id AADefaultBattery.init(level:productID:state:type:)(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v11 = a4;
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v12 = v4;
  v7.receiver = v4;
  v7.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v7, sel_initWithLevel_productID_state_type_);
  MEMORY[0x1E69E5928](v6);
  v12 = v6;
  MEMORY[0x1E69E5920](v6);
  return v6;
}

id AADefaultBattery.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id AADefaultBattery.init(coder:)(uint64_t a1)
{
  v7 = a1;
  v8 = v1;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_);
  if (v5)
  {
    MEMORY[0x1E69E5928](v5);
    v8 = v5;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v8);
    return v5;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id AADefaultBattery.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *AAOverrideBattery.init(level:state:type:isLow:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  ObjectType = swift_getObjectType();
  v16 = a4;
  v15 = a1;
  v14 = a2;
  v13 = a3 & 1;
  v17 = v4;
  *&v4[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__lvl] = a4;
  *&v17[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__state] = a1;
  *&v17[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__type] = a2;
  v17[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__isLow] = a3;
  v12.receiver = v17;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  MEMORY[0x1E69E5928](v11);
  v17 = v11;
  MEMORY[0x1E69E5920](v11);
  return v11;
}

id AAOverrideBattery.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void AAOverrideBattery.init(coder:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id AAOverrideBattery.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AADBatteryInfoVM.debugDescription.getter()
{
  v27 = 0;
  v25 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("address: ", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v24[0] = (*(*v16 + 392))(v2);
  v24[1] = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v24);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", main: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v4);

  v23 = (*(*v16 + 296))(v5);
  type metadata accessor for AABattery();
  lazy protocol witness table accessor for type AABattery and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v23);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", combined: ", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v6);

  v22 = (*(*v16 + 344))(v7);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v22);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", case: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v8);

  v21 = (*(*v16 + 152))(v9);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v21);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", left: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v10);

  v20 = (*(*v16 + 200))(v11);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v20);
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", right: ", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v12);

  v19 = (*(*v16 + 248))(v13);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v19);
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v14);

  v18 = v25;
  v17 = v26;

  outlined destroy of DefaultStringInterpolation(&v25);
  return MEMORY[0x1DA7309B0](v18, v17);
}

unint64_t lazy protocol witness table accessor for type AABattery and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type AABattery and conformance NSObject;
  if (!lazy protocol witness table cache variable for type AABattery and conformance NSObject)
  {
    type metadata accessor for AABattery();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABattery and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AABattery and conformance NSObject;
  if (!lazy protocol witness table cache variable for type AABattery and conformance NSObject)
  {
    type metadata accessor for AABattery();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABattery and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryCase@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryCase : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 152))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryCase : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);

  AADBatteryInfoVM.batteryCase.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryCase.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryCase.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryCase.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 43092);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryCase.modify;
}

void AADBatteryInfoVM.batteryCase.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADBatteryInfoVM.$batteryCase : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 176))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryCase : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryCase.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryCase.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryCase.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADBatteryInfoVM.$batteryCase.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 56562);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 56562);
  v6[4] = __swift_coroFrameAllocStub(v5, 56562);
  AADBatteryInfoVM.$batteryCase.getter();
  return AADBatteryInfoVM.$batteryCase.modify;
}

void AADBatteryInfoVM.$batteryCase.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADBatteryInfoVM.$batteryCase.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADBatteryInfoVM.$batteryCase.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADBatteryInfoVM._batteryCase.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryCase.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryLeft@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryLeft : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 200))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryLeft : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);

  AADBatteryInfoVM.batteryLeft.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryLeft.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryLeft.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 47);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryLeft.modify;
}

void AADBatteryInfoVM.batteryLeft.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADBatteryInfoVM.$batteryLeft : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 224))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryLeft : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryLeft.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADBatteryInfoVM.$batteryLeft.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 2655);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 2655);
  v6[4] = __swift_coroFrameAllocStub(v5, 2655);
  AADBatteryInfoVM.$batteryLeft.getter();
  return AADBatteryInfoVM.$batteryLeft.modify;
}

void AADBatteryInfoVM.$batteryLeft.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADBatteryInfoVM.$batteryLeft.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADBatteryInfoVM.$batteryLeft.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADBatteryInfoVM._batteryLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryRight : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 248))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryRight : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);

  AADBatteryInfoVM.batteryRight.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryRight.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryRight.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 9452);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryRight.modify;
}

void AADBatteryInfoVM.batteryRight.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADBatteryInfoVM.$batteryRight : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 272))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryRight : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryRight.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADBatteryInfoVM.$batteryRight.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 63612);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 63612);
  v6[4] = __swift_coroFrameAllocStub(v5, 63612);
  AADBatteryInfoVM.$batteryRight.getter();
  return AADBatteryInfoVM.$batteryRight.modify;
}

void AADBatteryInfoVM.$batteryRight.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADBatteryInfoVM.$batteryRight.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADBatteryInfoVM.$batteryRight.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADBatteryInfoVM._batteryRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryMain@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryMain : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 296))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryMain : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);

  AADBatteryInfoVM.batteryMain.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryMain.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryMain.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryMain.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 28647);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryMain.modify;
}

void AADBatteryInfoVM.batteryMain.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADBatteryInfoVM.$batteryMain : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 320))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryMain : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryMain.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryMain.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryMain.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADBatteryInfoVM.$batteryMain.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 59817);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 59817);
  v6[4] = __swift_coroFrameAllocStub(v5, 59817);
  AADBatteryInfoVM.$batteryMain.getter();
  return AADBatteryInfoVM.$batteryMain.modify;
}

void AADBatteryInfoVM.$batteryMain.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADBatteryInfoVM.$batteryMain.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADBatteryInfoVM.$batteryMain.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADBatteryInfoVM._batteryMain.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryMain.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryCombinedLeftRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryCombinedLeftRight : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 344))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryCombinedLeftRight : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);

  AADBatteryInfoVM.batteryCombinedLeftRight.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryCombinedLeftRight.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryCombinedLeftRight.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryCombinedLeftRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 45798);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryCombinedLeftRight.modify;
}

void AADBatteryInfoVM.batteryCombinedLeftRight.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADBatteryInfoVM.$batteryCombinedLeftRight : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 368))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryCombinedLeftRight : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryCombinedLeftRight.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryCombinedLeftRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryCombinedLeftRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADBatteryInfoVM.$batteryCombinedLeftRight.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 52439);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 52439);
  v6[4] = __swift_coroFrameAllocStub(v5, 52439);
  AADBatteryInfoVM.$batteryCombinedLeftRight.getter();
  return AADBatteryInfoVM.$batteryCombinedLeftRight.modify;
}

void AADBatteryInfoVM.$batteryCombinedLeftRight.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADBatteryInfoVM.$batteryCombinedLeftRight.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADBatteryInfoVM.$batteryCombinedLeftRight.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADBatteryInfoVM._batteryCombinedLeftRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryCombinedLeftRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADBatteryInfoVM.bluetoothAddress : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 392))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADBatteryInfoVM.bluetoothAddress : AADBatteryInfoVM(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v5);
  v3 = v5[0];
  v4 = v5[1];

  AADBatteryInfoVM.bluetoothAddress.setter(v3, v4);
}

uint64_t AADBatteryInfoVM.bluetoothAddress.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AADBatteryInfoVM.bluetoothAddress.setter(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t key path getter for AADBatteryInfoVM.underlyingBatteryInfo : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 416))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.underlyingBatteryInfo : AADBatteryInfoVM(void *a1, uint64_t *a2)
{
  outlined init with copy of AADeviceBatteryInfo?(a1, &v4);
  v3 = v4;

  AADBatteryInfoVM.underlyingBatteryInfo.setter(v3);
}

uint64_t AADBatteryInfoVM.underlyingBatteryInfo.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t AADBatteryInfoVM.underlyingBatteryInfo.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t AADBatteryInfoVM.init(with:)(uint64_t a1)
{
  v32 = a1;
  v36 = 0;
  v35 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v15 = *(v24 - 8);
  v16 = v24 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v13 - v14;
  v36 = MEMORY[0x1EEE9AC00](v32);
  v35 = v1;
  v17 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  v28 = 0;
  v20 = type metadata accessor for AADefaultBattery();
  v2 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryCase(v2, v23);
  v26 = *(v15 + 32);
  v25 = v15 + 32;
  v26(v33 + v17, v23, v24);
  v18 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft;
  v3 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryLeft(v3, v23);
  v26(v33 + v18, v23, v24);
  v19 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight;
  v4 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryRight(v4, v23);
  v26(v33 + v19, v23, v24);
  v21 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain;
  v5 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryMain(v5, v23);
  v26(v33 + v21, v23, v24);
  v22 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight;
  v6 = AADefaultBattery.__allocating_init()();
  v7 = v33;
  property wrapper backing initializer of AADBatteryInfoVM.batteryCombinedLeftRight(v6, v23);
  v26(v7 + v22, v23, v24);
  v27 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v28, 1);
  v9 = v28;
  v10 = v32;
  *(v7 + v27) = v8;
  p_superclass = &OBJC_METACLASS____TtC16HeadphoneManager8AADevice.superclass;
  *(v7 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo) = v9;
  *(v7 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__debugOverrideAnimating) = 0;
  MEMORY[0x1E69E5928](v10);
  v30 = (p_superclass[511] + v7);
  v31 = &v34;
  swift_beginAccess();
  v11 = *v30;
  *v30 = v32;
  MEMORY[0x1E69E5920](v11);
  swift_endAccess();
  MEMORY[0x1E69E5920](v32);
  return v33;
}

uint64_t AADBatteryInfoVM.updateBatteryInfo(_:)(void *a1)
{
  v111 = a1;
  v148 = 0;
  v147 = 0;
  v110 = 0;
  v112 = type metadata accessor for Logger();
  v113 = *(v112 - 8);
  v114 = v113;
  v115 = *(v113 + 64);
  v2 = MEMORY[0x1EEE9AC00](v111);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v36 - v117;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v118 = &v36 - v117;
  v148 = v3;
  v147 = v1;
  v122 = [v3 bluetoothAddress];
  v146[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146[1] = v4;
  v119 = &v145;
  v120 = AADBatteryInfoVM.bluetoothAddress.modify();
  v121 = v146;
  ==? infix<A>(_:_:)(v5, v146, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180]);
  (v120)(v119, 0);
  outlined destroy of String(v121);

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple-internal-install", 0x16uLL, 1);
  object = v6._object;
  v123 = MEMORY[0x1DA730940](v6._countAndFlagsBits);
  v125 = MGGetBoolAnswer();

  if (v125 && ((*(*v109 + 480))() & 1) != 0)
  {
    v7 = v118;
    v8 = Logger.shared.unsafeMutableAddressor();
    (*(v114 + 16))(v7, v8, v112);
    v107 = Logger.logObject.getter();
    v104 = v107;
    v106 = static os_log_type_t.default.getter();
    v105 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v108 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v107, v106))
    {
      v9 = v110;
      v95 = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = v95;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v93 = 0;
      v96 = createStorage<A>(capacity:type:)(0, v92, v92);
      v94 = v96;
      v97 = createStorage<A>(capacity:type:)(v93, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v129[0] = v95;
      v128 = v96;
      v127 = v97;
      v98 = 0;
      v99 = v129;
      serialize(_:at:)(0, v129);
      serialize(_:at:)(v98, v99);
      v126 = v108;
      v100 = &v36;
      MEMORY[0x1EEE9AC00](&v36);
      v101 = &v36 - 6;
      *(&v36 - 4) = v10;
      *(&v36 - 3) = &v128;
      *(&v36 - 2) = &v127;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v103 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v104, v105, "AADBatteryInfoVM :: debug override for battery!", v91, 2u);
        v89 = 0;
        destroyStorage<A>(_:count:)(v94, 0, v92);
        destroyStorage<A>(_:count:)(v97, v89, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v91, MEMORY[0x1E69E7508]);

        v90 = v103;
      }
    }

    else
    {

      v90 = v110;
    }

    v87 = v90;

    (*(v114 + 8))(v118, v112);
    return v87;
  }

  else
  {
    v11 = v116;
    v12 = Logger.shared.unsafeMutableAddressor();
    (*(v114 + 16))(v11, v12, v112);
    v13 = v111;
    v75 = 7;
    v76 = swift_allocObject();
    *(v76 + 16) = v111;
    v86 = Logger.logObject.getter();
    v68 = v86;
    v85 = static os_log_type_t.debug.getter();
    v69 = v85;
    v70 = 17;
    v79 = swift_allocObject();
    v71 = v79;
    v72 = 32;
    *(v79 + 16) = 32;
    v14 = swift_allocObject();
    v15 = v72;
    v80 = v14;
    v73 = v14;
    *(v14 + 16) = 8;
    v74 = v15;
    v16 = swift_allocObject();
    v17 = v76;
    v77 = v16;
    *(v16 + 16) = partial apply for implicit closure #1 in AADBatteryInfoVM.updateBatteryInfo(_:);
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v77;
    v83 = v18;
    v78 = v18;
    *(v18 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_8;
    *(v18 + 24) = v19;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v81 = _allocateUninitializedArray<A>(_:)();
    v82 = v20;

    v21 = v79;
    v22 = v82;
    *v82 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
    v22[1] = v21;

    v23 = v80;
    v24 = v82;
    v82[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v24[3] = v23;

    v25 = v82;
    v26 = v83;
    v82[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
    v25[5] = v26;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v86, v85))
    {
      v27 = v110;
      v61 = static UnsafeMutablePointer.allocate(capacity:)();
      v58 = v61;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = createStorage<A>(capacity:type:)(0, v59, v59);
      v60 = v62;
      v64 = 1;
      v63 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v134 = v61;
      v133 = v62;
      v132 = v63;
      v65 = &v134;
      serialize(_:at:)(2, &v134);
      serialize(_:at:)(v64, v65);
      v130 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
      v131 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v130, v65, &v133, &v132);
      v66 = v27;
      v67 = v27;
      if (v27)
      {
        v56 = 0;

        __break(1u);
      }

      else
      {
        v130 = closure #1 in OSLogArguments.append(_:)partial apply;
        v131 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v130, &v134, &v133, &v132);
        v54 = 0;
        v55 = 0;
        v130 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
        v131 = v78;
        closure #1 in osLogInternal(_:log:type:)(&v130, &v134, &v133, &v132);
        v52 = 0;
        v53 = 0;
        _os_log_impl(&dword_1D93D0000, v68, v69, "AADBatteryInfoVM :: Updating battery info: %s", v58, 0xCu);
        destroyStorage<A>(_:count:)(v60, 0, v59);
        destroyStorage<A>(_:count:)(v63, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v58, MEMORY[0x1E69E7508]);

        v57 = v52;
      }
    }

    else
    {
      v28 = v110;

      v57 = v28;
    }

    v51 = v57;

    (*(v114 + 8))(v116, v112);
    v29 = v111;
    AADBatteryInfoVM.underlyingBatteryInfo.setter(v111);
    v144 = [v111 visibleBatteryCase];
    v38 = v143;
    v39 = AADBatteryInfoVM.batteryCase.modify(v143);
    v37 = v30;
    v46 = type metadata accessor for AABattery();
    v47 = lazy protocol witness table accessor for type AABattery and conformance NSObject();
    ==? infix<A>(_:_:)(v37, &v144, v46, v47);
    v48 = 0;
    (v39)(v38);

    v142 = [v111 visibleBatteryLeft];
    v40 = v141;
    v41 = AADBatteryInfoVM.batteryLeft.modify(v141);
    ==? infix<A>(_:_:)(v31, &v142, v46, v47);
    v41(v40, v48);

    v140 = [v111 visibleBatteryRight];
    v42 = v139;
    v43 = AADBatteryInfoVM.batteryRight.modify(v139);
    ==? infix<A>(_:_:)(v32, &v140, v46, v47);
    v43(v42, v48);

    v138 = [v111 visibleBatteryCombinedLeftRight];
    v44 = v137;
    v45 = AADBatteryInfoVM.batteryCombinedLeftRight.modify(v137);
    ==? infix<A>(_:_:)(v33, &v138, v46, v47);
    v45(v44, v48);

    v136 = [v111 visibleBatteryMain];
    v49 = v135;
    v50 = AADBatteryInfoVM.batteryMain.modify(v135);
    ==? infix<A>(_:_:)(v34, &v136, v46, v47);
    v50(v49, v48);

    return v51;
  }
}

uint64_t implicit closure #1 in AADBatteryInfoVM.updateBatteryInfo(_:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

void one-time initialization function for overrideArray()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9AABatteryC_A3BtMd, &_sSo9AABatteryC_A3BtMR);
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  type metadata accessor for AAOverrideBattery();
  *v2 = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 1, 0.1);
  v2[1] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[2] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[3] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.1);
  v2[4] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 1, 0.2);
  v2[5] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[6] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[7] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.2);
  v2[8] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.3);
  v2[9] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[10] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[11] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.3);
  v2[12] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.4);
  v2[13] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[14] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[15] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.4);
  v2[16] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.5);
  v2[17] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[18] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[19] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.5);
  v2[20] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.6);
  v2[21] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[22] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[23] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.6);
  v2[24] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.7);
  v2[25] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[26] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[27] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.7);
  v2[28] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.8);
  v2[29] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[30] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[31] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.8);
  v2[32] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.9);
  v2[33] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[34] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[35] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.9);
  v2[36] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 1.0);
  v2[37] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[38] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[39] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 1.0);
  v2[40] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 1, 0.1);
  v2[41] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[42] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[43] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.1);
  v2[44] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 1, 0.2);
  v2[45] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[46] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[47] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.2);
  v2[48] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.3);
  v2[49] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[50] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[51] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.3);
  v2[52] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.4);
  v2[53] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[54] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[55] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.4);
  v2[56] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.5);
  v2[57] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[58] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[59] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.5);
  v2[60] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.6);
  v2[61] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[62] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[63] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.6);
  v2[64] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.7);
  v2[65] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[66] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[67] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.7);
  v2[68] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.8);
  v2[69] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[70] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[71] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.8);
  v2[72] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.9);
  v2[73] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[74] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[75] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.9);
  v2[76] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 1.0);
  v2[77] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[78] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[79] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 1.0);
  v2[80] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 1, 0.1);
  v2[81] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[82] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[83] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.1);
  v2[84] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 1, 0.2);
  v2[85] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[86] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[87] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.2);
  v2[88] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.3);
  v2[89] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[90] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[91] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.3);
  v2[92] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.4);
  v2[93] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[94] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[95] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.4);
  v2[96] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.5);
  v2[97] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[98] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[99] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.5);
  v2[100] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.6);
  v2[101] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[102] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[103] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.6);
  v2[104] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.7);
  v2[105] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[106] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[107] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.7);
  v2[108] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.8);
  v2[109] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[110] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[111] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.8);
  v2[112] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.9);
  v2[113] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[114] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[115] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.9);
  v2[116] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 1.0);
  v2[117] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[118] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[119] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 1.0);
  v2[120] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[121] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 1, 0.1);
  v2[122] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 1, 0.1);
  v2[123] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.1);
  v2[124] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[125] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 1, 0.2);
  v2[126] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 1, 0.2);
  v2[127] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.2);
  v2[128] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[129] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.3);
  v2[130] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.3);
  v2[131] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.3);
  v2[132] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[133] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.4);
  v2[134] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.4);
  v2[135] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.4);
  v2[136] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[137] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.5);
  v2[138] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.5);
  v2[139] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.5);
  v2[140] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[141] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.6);
  v2[142] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.6);
  v2[143] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.6);
  v2[144] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[145] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.7);
  v2[146] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.7);
  v2[147] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.7);
  v2[148] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[149] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.8);
  v2[150] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.8);
  v2[151] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.8);
  v2[152] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[153] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.9);
  v2[154] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.9);
  v2[155] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.9);
  v2[156] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[157] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 1.0);
  v2[158] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 1.0);
  v2[159] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 1.0);
  v2[160] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[161] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 1, 0.1);
  v2[162] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 1, 0.1);
  v2[163] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.1);
  v2[164] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[165] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 1, 0.2);
  v2[166] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 1, 0.2);
  v2[167] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.2);
  v2[168] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[169] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.3);
  v2[170] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.3);
  v2[171] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.3);
  v2[172] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[173] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.4);
  v2[174] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.4);
  v2[175] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.4);
  v2[176] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[177] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.5);
  v2[178] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.5);
  v2[179] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.5);
  v2[180] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[181] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.6);
  v2[182] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.6);
  v2[183] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.6);
  v2[184] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[185] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.7);
  v2[186] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.7);
  v2[187] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.7);
  v2[188] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[189] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.8);
  v2[190] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.8);
  v2[191] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.8);
  v2[192] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[193] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.9);
  v2[194] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.9);
  v2[195] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.9);
  v2[196] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[197] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 1.0);
  v2[198] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 1.0);
  v2[199] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 1.0);
  v2[200] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[201] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 1, 0.1);
  v2[202] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 1, 0.1);
  v2[203] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.1);
  v2[204] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[205] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 1, 0.2);
  v2[206] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 1, 0.2);
  v2[207] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.2);
  v2[208] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[209] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.3);
  v2[210] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.3);
  v2[211] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.3);
  v2[212] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[213] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.4);
  v2[214] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.4);
  v2[215] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.4);
  v2[216] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[217] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.5);
  v2[218] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.5);
  v2[219] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.5);
  v2[220] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[221] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.6);
  v2[222] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.6);
  v2[223] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.6);
  v2[224] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[225] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.7);
  v2[226] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.7);
  v2[227] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.7);
  v2[228] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[229] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.8);
  v2[230] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.8);
  v2[231] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.8);
  v2[232] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[233] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.9);
  v2[234] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.9);
  v2[235] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.9);
  v2[236] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v2[237] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 1.0);
  v2[238] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 1.0);
  v2[239] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 1.0);
  _finalizeUninitializedArray<A>(_:)();
  static AADBatteryInfoVM.overrideArray = v1;
}

uint64_t *AADBatteryInfoVM.overrideArray.unsafeMutableAddressor()
{
  if (one-time initialization token for overrideArray != -1)
  {
    swift_once();
  }

  return &static AADBatteryInfoVM.overrideArray;
}

uint64_t static AADBatteryInfoVM.overrideArray.getter()
{
  v1 = AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static AADBatteryInfoVM.overrideArray.setter(uint64_t a1)
{
  v2 = AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static AADBatteryInfoVM.overrideArray.modify())(uint64_t a1)
{
  AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();
  swift_beginAccess();
  return static AADBatteryInfoVM.overrideArray.modify;
}

uint64_t AADBatteryInfoVM._debugOverrideAnimating.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__debugOverrideAnimating);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t AADBatteryInfoVM._debugOverrideAnimating.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__debugOverrideAnimating);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

Swift::Bool __swiftcall AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v61 = MEMORY[0x1E69E85E0];
  v62 = &async function pointer to partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while unwrapping an Optional value";
  v65 = "HeadphoneManager/AADBatteryInfoVM.swift";
  v66 = *v0;
  v81 = 0;
  v78 = 0uLL;
  v75 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v67 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v68 = &v20 - v67;
  v81 = v0;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple-internal-install", 0x16uLL, 1);
  object = v2._object;
  v69 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  v71 = MGGetBoolAnswer();
  MEMORY[0x1E69E5920](v69);

  if (v71)
  {
    v51 = 1;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneProxFeatureService", 0x25uLL, 1);
    v46 = v3._object;
    v45 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
    CFPreferencesAppSynchronize(v45);
    MEMORY[0x1E69E5920](v45);

    v50 = "com.apple.headphoneManager";
    v49 = 26;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.headphoneManager", 0x1AuLL, v51 & 1);
    v48 = v4._object;
    v47 = MEMORY[0x1DA730940](v4._countAndFlagsBits);
    CFPreferencesAppSynchronize(v47);
    MEMORY[0x1E69E5920](v47);

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modernBatteryDisplayData", 0x18uLL, v51 & 1);
    v58 = v5._object;
    v57 = MEMORY[0x1DA730940](v5._countAndFlagsBits);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v50, v49, v51 & 1);
    v56 = v6._object;
    v55 = MEMORY[0x1DA730940](v6._countAndFlagsBits);
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mobile", 6uLL, v51 & 1);
    v54 = v7._object;
    v53 = MEMORY[0x1DA730940](v7._countAndFlagsBits);
    v52 = *MEMORY[0x1E695E898];
    MEMORY[0x1E69E5928](v52);
    v59 = CFPreferencesCopyValue(v57, v55, v53, v52);
    MEMORY[0x1E69E5920](v52);
    MEMORY[0x1E69E5920](v53);

    MEMORY[0x1E69E5920](v55);

    MEMORY[0x1E69E5920](v57);

    if (v59)
    {
      v44 = v59;
      v73 = v59;
      if (swift_dynamicCast())
      {
        v43 = v72;
      }

      else
      {
        v43 = 0uLL;
      }

      v42 = v43;
    }

    else
    {
      v42 = 0uLL;
    }

    v79 = v42;
    if (*(&v42 + 1))
    {
      v80 = v79;
    }

    else
    {
      v33 = 1;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modernBatteryDisplayData", 0x18uLL, 1);
      v40 = v8._object;
      v39 = MEMORY[0x1DA730940](v8._countAndFlagsBits);
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneProxFeatureService", 0x25uLL, v33 & 1);
      v38 = v9._object;
      v37 = MEMORY[0x1DA730940](v9._countAndFlagsBits);
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mobile", 6uLL, v33 & 1);
      v36 = v10._object;
      v35 = MEMORY[0x1DA730940](v10._countAndFlagsBits);
      v34 = *MEMORY[0x1E695E898];
      MEMORY[0x1E69E5928](v34);
      v41 = CFPreferencesCopyValue(v39, v37, v35, v34);
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v35);

      MEMORY[0x1E69E5920](v37);

      MEMORY[0x1E69E5920](v39);

      if (v41)
      {
        v32 = v41;
        v74 = v41;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v80 = 0uLL;
        }
      }

      else
      {
        v80 = 0uLL;
      }

      if (*(&v79 + 1))
      {
        outlined destroy of String?(&v79);
      }
    }

    v31 = v80;

    if (*(&v31 + 1))
    {
      v30 = v31;
      v27 = *(&v31 + 1);
      v28 = v31;
      v78 = v31;

      lazy protocol witness table accessor for type Int and conformance Int();
      FixedWidthInteger.init(_:)();
      v29 = v76;
      if (v77)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v26 = v29;
      }

      v25 = v26;
      v75 = v26;
      if (AADBatteryInfoVM._debugOverrideAnimating.getter())
      {
        v21 = AADBatteryInfoVM._debugOverrideAnimating.getter();

        outlined destroy of String?(&v80);
        v22 = v21;
      }

      else
      {
        if (v25 == 1000)
        {
          v23 = 0;
          v11 = type metadata accessor for TaskPriority();
          (*(*(v11 - 8) + 56))(v68, 1);

          type metadata accessor for MainActor();
          v24 = static MainActor.shared.getter();
          v12 = swift_allocObject();
          v13 = v61;
          v14 = v60;
          v15 = v66;
          v16 = v23;
          v17 = v68;
          v18 = v62;
          v12[2] = v24;
          v12[3] = v13;
          v12[4] = v14;
          v12[5] = v15;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v16, v16, v17, v18, v12, MEMORY[0x1E69E7CA8] + 8);
        }

        else
        {
          show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()(v25, v60);
        }

        outlined destroy of String?(&v80);
        v22 = 1;
      }
    }

    else
    {
      outlined destroy of String?(&v80);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()(uint64_t a1, uint64_t a2)
{
  AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9AABatteryC_A3BtMd, &_sSo9AABatteryC_A3BtMR);
  Array.subscript.getter();
  swift_endAccess();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  [v7 type];
  (MEMORY[0x1E69E5920])();
  type metadata accessor for AABatteryType(0);
  lazy protocol witness table accessor for type AABatteryType and conformance AABatteryType();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  if (v6)
  {
    type metadata accessor for AADefaultBattery();
    v4 = AADefaultBattery.__allocating_init()();
    AADBatteryInfoVM.batteryCombinedLeftRight.setter(v4);
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    AADBatteryInfoVM.batteryLeft.setter(v8);
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    AADBatteryInfoVM.batteryRight.setter(v9);
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
  }

  else
  {
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    AADBatteryInfoVM.batteryCombinedLeftRight.setter(v7);
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    type metadata accessor for AADefaultBattery();
    v2 = AADefaultBattery.__allocating_init()();
    AADBatteryInfoVM.batteryLeft.setter(v2);
    v3 = AADefaultBattery.__allocating_init()();
    AADBatteryInfoVM.batteryRight.setter(v3);
  }

  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  AADBatteryInfoVM.batteryCase.setter(v10);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  return (MEMORY[0x1E69E5920])();
}

uint64_t closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 240) = a5;
  *(v5 + 232) = a4;
  *(v5 + 184) = v5;
  *(v5 + 192) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 200) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 192) = a4;
  type metadata accessor for MainActor();
  *(v5 + 272) = static MainActor.shared.getter();
  *(v5 + 280) = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 288) = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in AADBatteryInfoVM._overrideDeviceForDebug());
}

void *closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v0[23] = v0;
  AADBatteryInfoVM._debugOverrideAnimating.setter(1);
  v0[13] = 0;
  v0[14] = 9;
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
  v0[38] = lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
  Collection<>.makeIterator()();
  do
  {
    *(v15 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    v14 = *(v15 + 152);
    *(v15 + 320) = v14;
    if (*(v15 + 160))
    {
      AADBatteryInfoVM._debugOverrideAnimating.setter(0);

      v1 = *(*(v15 + 184) + 8);

      return v1();
    }

    *(v15 + 200) = v14;
    *(v15 + 120) = 0;
    *(v15 + 128) = 5;
    Collection<>.makeIterator()();
    result = IndexingIterator.next()();
    v13 = *(v15 + 168);
  }

  while ((*(v15 + 176) & 1) != 0);
  *(v15 + 208) = v13;
  v12 = 10 * v13;
  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = *(v15 + 320);
  v11 = v12 + v3;
  if (__OFADD__(v12, v3))
  {
    goto LABEL_16;
  }

  v5 = *(v15 + 232);
  *(v15 + 216) = v11;
  show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()(v11, v5);
  *(v15 + 224) = 700;
  lazy protocol witness table accessor for type Int and conformance Int();
  *(v15 + 136) = static Duration.milliseconds<A>(_:)();
  *(v15 + 144) = v6;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 1;
  v10 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
  default argument 2 of static Task<>.sleep<A>(for:tolerance:clock:)();
  v7 = swift_task_alloc();
  *(v15 + 328) = v7;
  *v7 = *(v15 + 184);
  v7[1] = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  v8 = *(v15 + 264);
  v9 = *(v15 + 248);

  return static Task<>.sleep<A>(for:tolerance:clock:)(v15 + 136, v15 + 80, v8, v9, v10);
}

{
  *(v0 + 184) = v0;
  while (1)
  {
    result = IndexingIterator.next()();
    v13 = *(v15 + 168);
    if ((*(v15 + 176) & 1) == 0)
    {
      break;
    }

    *(v15 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    v14 = *(v15 + 152);
    *(v15 + 320) = v14;
    if (*(v15 + 160))
    {
      AADBatteryInfoVM._debugOverrideAnimating.setter(0);

      v1 = *(*(v15 + 184) + 8);

      return v1();
    }

    *(v15 + 200) = v14;
    *(v15 + 120) = 0;
    *(v15 + 128) = 5;
    Collection<>.makeIterator()();
  }

  *(v15 + 208) = v13;
  v12 = 10 * v13;
  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v3 = *(v15 + 320);
  v11 = v12 + v3;
  if (__OFADD__(v12, v3))
  {
    goto LABEL_17;
  }

  v5 = *(v15 + 232);
  *(v15 + 216) = v11;
  show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()(v11, v5);
  *(v15 + 224) = 700;
  lazy protocol witness table accessor for type Int and conformance Int();
  *(v15 + 136) = static Duration.milliseconds<A>(_:)();
  *(v15 + 144) = v6;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 1;
  v10 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
  default argument 2 of static Task<>.sleep<A>(for:tolerance:clock:)();
  v7 = swift_task_alloc();
  *(v15 + 328) = v7;
  *v7 = *(v15 + 184);
  v7[1] = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  v8 = *(v15 + 264);
  v9 = *(v15 + 248);

  return static Task<>.sleep<A>(for:tolerance:clock:)(v15 + 136, v15 + 80, v8, v9, v10);
}

uint64_t closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v4 = *v1;
  v4[23] = *v1;
  v4[42] = v0;

  if (v0)
  {
    v2 = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  }

  else
  {
    (*(v4[32] + 8))(v4[33], v4[31]);
    v2 = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v0[23] = v0;
  (*(v2 + 8))(v1, v3);
  return swift_unexpectedError();
}

uint64_t static Task<>.sleep<A>(for:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = static Task<>.sleep<A>(for:tolerance:clock:);

  return Clock.sleep(for:tolerance:)(a1, a2, a4, a5);
}

uint64_t static Task<>.sleep<A>(for:tolerance:clock:)()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  outlined init with copy of TaskPriority?(v54, v57);
  v58 = type metadata accessor for TaskPriority();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    outlined destroy of TaskPriority?(v57);
    v44 = 0;
  }

  else
  {
    v43 = TaskPriority.rawValue.getter();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = String.utf8CString.getter();

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    outlined destroy of TaskPriority?(v54);

    v18 = v16;
  }

  else
  {

    outlined destroy of TaskPriority?(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t AADBatteryInfoVM.deinit()
{
  v2 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft, v3);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight, v3);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain, v3);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight, v3);
  outlined destroy of String(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress);
  outlined destroy of AADeviceBatteryInfo?((v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo));
  return v5;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AADBatteryInfoVM@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AADBatteryInfoVM(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance AABatteryType(uint64_t a2@<X8>)
{
  AABatteryType.init(rawValue:)();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Clock.sleep(for:tolerance:));
}

uint64_t Clock.sleep(for:tolerance:)()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  dispatch thunk of Clock.now.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.advanced(by:)();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = Clock.sleep(for:tolerance:);
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x1EEE6DE58](v3, v6, v5, v4);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x1EEE6DFA0](Clock.sleep(for:tolerance:));
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();

  return closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()(a1, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t type metadata accessor for AABatteryType(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AABatteryType;
  if (!lazy cache variable for type metadata for AABatteryType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AABatteryType);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type AABatteryType and conformance AABatteryType()
{
  v2 = lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType;
  if (!lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType)
  {
    type metadata accessor for AABatteryType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType;
  if (!lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType)
  {
    type metadata accessor for AABatteryType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for AABatteryState(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AABatteryState;
  if (!lazy cache variable for type metadata for AABatteryState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AABatteryState);
      return v2;
    }
  }

  return v5;
}

void *outlined init with copy of AADeviceBatteryInfo?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_54(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_54TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_54TQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock()
{
  v2 = lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock;
  if (!lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock)
  {
    type metadata accessor for ContinuousClock();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock);
    return WitnessTable;
  }

  return v2;
}

const char *AudioAccessoryFeatures.feature.getter()
{
  v3 = *v0;
  if (!*v0)
  {
    return "ChargingReminders";
  }

  if (v3 == 1)
  {
    return "PauseMediaOnSleep";
  }

  if (v3 == 2)
  {
    return "ModernHeadphoneSettingsUI";
  }

  return "ImprovedSeedingUI";
}

HeadphoneManager::AudioAccessoryFeatures_optional __swiftcall AudioAccessoryFeatures.init(rawValue:)(Swift::String rawValue)
{
  v5 = v1;
  _allocateUninitializedArray<A>(_:)();
  *v2 = "ChargingReminders";
  *(v2 + 8) = 17;
  *(v2 + 16) = 2;
  *(v2 + 24) = "PauseMediaOnSleep";
  *(v2 + 32) = 17;
  *(v2 + 40) = 2;
  *(v2 + 48) = "ModernHeadphoneSettingsUI";
  *(v2 + 56) = 25;
  *(v2 + 64) = 2;
  *(v2 + 72) = "ImprovedSeedingUI";
  *(v2 + 80) = 17;
  *(v2 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v3, rawValue);

  if (v7)
  {
    switch(v7)
    {
      case 1:
        v8 = 1;
        break;
      case 2:
        v8 = 2;
        break;
      case 3:
        v8 = 3;
        break;
      default:

        *v5 = 4;
        return result;
    }
  }

  else
  {
    v8 = 0;
  }

  *v5 = v8;
}

uint64_t AudioAccessoryFeatures.rawValue.getter()
{
  v4 = *v0;
  if (!*v0)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ChargingReminders", 0x11uLL, 1)._countAndFlagsBits;
  }

  if (v4 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PauseMediaOnSleep", 0x11uLL, 1)._countAndFlagsBits;
  }

  if (v4 == 2)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModernHeadphoneSettingsUI", 0x19uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ImprovedSeedingUI", 0x11uLL, 1)._countAndFlagsBits;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AudioAccessoryFeatures@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAccessoryFeatures.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

BOOL static HeadphoneFeatures.== infix(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
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

  if (a2)
  {
    if (a2 == 1)
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

uint64_t getEnumTagSinglePayload for AudioAccessoryFeatures(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AudioAccessoryFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HeadphoneFeatures(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HeadphoneFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t one-time initialization function for binding()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.binding);
  __swift_project_value_buffer(v1, static Logger.binding);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneManager", 0x1AuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Binding", 7uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.binding.unsafeMutableAddressor()
{
  if (one-time initialization token for binding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.binding);
}

uint64_t static Logger.binding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.binding.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *static AADeviceProperty.subscript.getter@<X0>(void *__return_ptr a1@<X8>, void *a3@<X1>)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  swift_unknownObjectRetain();

  v7 = swift_readAtKeyPath();
  (*(*(v5 - 8) + 16))(a1);
  v7();
  swift_unknownObjectRelease();
}

uint64_t key path getter for static AADeviceProperty.subscript(_enclosingInstance:wrapped:storage:) : <A, B>AADeviceProperty<A, B>.TypeAB@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v4 = (a2 + a3 - 32);
  v18 = *v4;
  v13 = v4[1];
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v12 = (&v7 - v7);
  v16 = *v5;
  swift_unknownObjectRetain();
  v15 = *(v8 + 8);

  v14 = *(v8 + 16);

  static AADeviceProperty.subscript.getter(v12, v15);
  (*(v9 + 32))(v11, v12, v13);

  return swift_unknownObjectRelease();
}

uint64_t key path setter for static AADeviceProperty.subscript(_enclosingInstance:wrapped:storage:) : <A, B>AADeviceProperty<A, B>.TypeAB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v8 = a3;
  v4 = (a3 + a4 - 32);
  v18 = *v4;
  v12 = v4[1];
  v17 = v12;
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v7 - v7;
  v13 = *v5;
  swift_unknownObjectRetain();
  v14 = *(v8 + 8);

  v15 = *(v8 + 16);

  (*(v9 + 16))(v16, v11, v12);
  return static AADeviceProperty.subscript.setter(v16, v13, v14, v15);
}

uint64_t static AADeviceProperty.subscript.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v712 = v738;
  v717 = a1;
  v700 = a2;
  v667 = a3;
  v704 = a4;
  v579 = implicit closure #1 in static AADeviceProperty.subscript.setter;
  v580 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_9;
  v581 = implicit closure #2 in static AADeviceProperty.subscript.setter;
  v582 = _sSiIegd_SiIegr_TRTA_4;
  v583 = partial apply for implicit closure #3 in static AADeviceProperty.subscript.setter;
  v584 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v585 = partial apply for implicit closure #4 in static AADeviceProperty.subscript.setter;
  v586 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v587 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_9;
  v588 = closure #1 in OSLogArguments.append(_:)partial apply;
  v589 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_9;
  v590 = closure #1 in OSLogArguments.append(_:)partial apply;
  v591 = closure #1 in OSLogArguments.append(_:)partial apply;
  v592 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_5;
  v593 = closure #1 in OSLogArguments.append(_:)partial apply;
  v594 = closure #1 in OSLogArguments.append(_:)partial apply;
  v595 = closure #1 in OSLogArguments.append(_:)partial apply;
  v596 = closure #1 in OSLogArguments.append(_:)partial apply;
  v597 = closure #1 in OSLogArguments.append(_:)partial apply;
  v598 = closure #1 in OSLogArguments.append(_:)partial apply;
  v599 = implicit closure #6 in static AADeviceProperty.subscript.setter;
  v600 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v601 = implicit closure #7 in static AADeviceProperty.subscript.setter;
  v602 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v603 = partial apply for implicit closure #8 in static AADeviceProperty.subscript.setter;
  v604 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v605 = partial apply for implicit closure #9 in static AADeviceProperty.subscript.setter;
  v606 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v607 = partial apply for implicit closure #10 in static AADeviceProperty.subscript.setter;
  v608 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v609 = closure #1 in OSLogArguments.append(_:)partial apply;
  v610 = closure #1 in OSLogArguments.append(_:)partial apply;
  v611 = closure #1 in OSLogArguments.append(_:)partial apply;
  v612 = closure #1 in OSLogArguments.append(_:)partial apply;
  v613 = closure #1 in OSLogArguments.append(_:)partial apply;
  v614 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v615 = closure #1 in OSLogArguments.append(_:)partial apply;
  v616 = closure #1 in OSLogArguments.append(_:)partial apply;
  v617 = closure #1 in OSLogArguments.append(_:)partial apply;
  v618 = closure #1 in OSLogArguments.append(_:)partial apply;
  v619 = closure #1 in OSLogArguments.append(_:)partial apply;
  v620 = closure #1 in OSLogArguments.append(_:)partial apply;
  v621 = closure #1 in OSLogArguments.append(_:)partial apply;
  v622 = closure #1 in OSLogArguments.append(_:)partial apply;
  v623 = closure #1 in OSLogArguments.append(_:)partial apply;
  v624 = implicit closure #15 in static AADeviceProperty.subscript.setter;
  v625 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v626 = implicit closure #16 in static AADeviceProperty.subscript.setter;
  v627 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v628 = partial apply for implicit closure #17 in static AADeviceProperty.subscript.setter;
  v629 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v630 = closure #1 in OSLogArguments.append(_:)partial apply;
  v631 = closure #1 in OSLogArguments.append(_:)partial apply;
  v632 = closure #1 in OSLogArguments.append(_:)partial apply;
  v633 = closure #1 in OSLogArguments.append(_:)partial apply;
  v634 = closure #1 in OSLogArguments.append(_:)partial apply;
  v635 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v636 = closure #1 in OSLogArguments.append(_:)partial apply;
  v637 = closure #1 in OSLogArguments.append(_:)partial apply;
  v638 = closure #1 in OSLogArguments.append(_:)partial apply;
  v639 = partial apply for closure #1 in static AADeviceProperty.subscript.setter;
  v640 = implicit closure #11 in static AADeviceProperty.subscript.setter;
  v641 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v642 = implicit closure #12 in static AADeviceProperty.subscript.setter;
  v643 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v644 = partial apply for implicit closure #13 in static AADeviceProperty.subscript.setter;
  v645 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v646 = partial apply for implicit closure #14 in static AADeviceProperty.subscript.setter;
  v647 = closure #1 in OSLogArguments.append(_:)partial apply;
  v648 = closure #1 in OSLogArguments.append(_:)partial apply;
  v649 = closure #1 in OSLogArguments.append(_:)partial apply;
  v650 = closure #1 in OSLogArguments.append(_:)partial apply;
  v651 = closure #1 in OSLogArguments.append(_:)partial apply;
  v652 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v653 = closure #1 in OSLogArguments.append(_:)partial apply;
  v654 = closure #1 in OSLogArguments.append(_:)partial apply;
  v655 = closure #1 in OSLogArguments.append(_:)partial apply;
  v656 = closure #1 in OSLogArguments.append(_:)partial apply;
  v657 = closure #1 in OSLogArguments.append(_:)partial apply;
  v658 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_4;
  v762 = 0;
  v761 = 0;
  v760 = 0;
  v759 = 0;
  v758 = 0;
  v754[1] = 0;
  v754[2] = 0;
  v659 = 0;
  v743[2] = 0;
  v743[1] = 0;
  v739[1] = 0;
  v735 = 0;
  v660 = *a3;
  v4 = *a4;
  v684 = MEMORY[0x1E69E6F98];
  v713 = *(v4 + *MEMORY[0x1E69E6F98] + 8);
  v661 = *(v713 + 4);
  v662 = *(v661 + 8);
  v5 = *MEMORY[0x1E69E6F98];
  v706 = 0;
  v685 = v660;
  v663 = *(v660 + v5);
  v763 = v663;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v665 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v666 = v364 - v665;
  v668 = type metadata accessor for Logger();
  v669 = *(v668 - 8);
  v670 = v668 - 8;
  v676 = *(v669 + 64);
  v671 = (v676 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v700);
  v672 = v364 - v671;
  v673 = (v676 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v674 = v364 - v673;
  v675 = (v676 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v677 = v364 - v675;
  v678 = (v676 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v679 = v364 - v678;
  v681 = *(*(v713 - 1) + 64);
  v680 = (v681 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v682 = v364 - v680;
  v683 = (v681 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v701 = v364 - v683;
  v12 = *(v685 + *v684 + 8);
  v714 = v12;
  *(v13 + 360) = v12;
  v693 = *(v12 - 8);
  v694 = v12 - 8;
  v686 = v693;
  v690 = *(v693 + 64);
  v687 = (v690 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v688 = v364 - v687;
  v689 = (v690 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v691 = v364 - v689;
  v692 = (v690 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = v717;
  v715 = v364 - v692;
  v18[44] = v364 - v692;
  v18[43] = v17;
  v18[42] = v16;
  v18[41] = v19;
  v18[40] = v20;
  swift_unknownObjectRetain();

  v712[39] = v700;
  v698 = &v757;
  v697 = swift_readAtKeyPath();
  v695 = *(v693 + 16);
  v696 = v693 + 16;
  v695(v715);
  v707 = 1;
  v697();
  swift_unknownObjectRelease();

  v21 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = v707;
  v23 = v712;
  v25 = v24;
  v26 = v706;
  v709 = &v756;
  v712[33] = v21;
  v23[34] = v25;
  v705 = "";
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v26, v22 & 1);
  object = v27._object;
  MEMORY[0x1DA7310D0](v27._countAndFlagsBits);

  swift_unknownObjectRetain();

  v712[32] = v700;
  swift_getAtKeyPath();
  v702 = *(v701 + v713[15]);

  outlined destroy of AADeviceProperty<A, B>(v701, v714, v713);
  v703 = &v755;
  v712[31] = v702;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMd, _ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMR);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  swift_unknownObjectRelease();

  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v705, v706, v707 & 1);
  v708 = v28._object;
  MEMORY[0x1DA7310D0](v28._countAndFlagsBits);

  v711 = v712[33];
  v710 = v712[34];

  outlined destroy of DefaultStringInterpolation(v709);
  v29 = MEMORY[0x1DA7309B0](v711, v710);
  v30 = v712;
  v31 = v713;
  v716 = v29;
  v718 = v32;
  v712[29] = v29;
  v30[30] = v32;
  v719 = *(v31 + 5);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v277 = v672;
    v278 = Logger.binding.unsafeMutableAddressor();
    (*(v669 + 16))(v277, v278, v668);

    v381 = 32;
    v382 = 7;
    v279 = swift_allocObject();
    v280 = v718;
    v281 = v717;
    v282 = v695;
    v283 = v714;
    v284 = v279;
    v285 = v691;
    v376 = v284;
    *(v284 + 16) = v716;
    *(v284 + 24) = v280;
    v282(v285, v281, v283);
    v373 = (*(v686 + 80) + 48) & ~*(v686 + 80);
    v286 = swift_allocObject();
    v287 = v661;
    v288 = v719;
    v289 = v373;
    v290 = v693;
    v291 = v691;
    v292 = v714;
    v383 = v286;
    v286[2] = v663;
    v286[3] = v292;
    v286[4] = v287;
    v286[5] = v288;
    (*(v290 + 32))(v286 + v289, v291);
    v400 = Logger.logObject.getter();
    v401 = static os_log_type_t.debug.getter();
    v379 = 17;
    v385 = swift_allocObject();
    v378 = 32;
    *(v385 + 16) = 32;
    v386 = swift_allocObject();
    v380 = 8;
    *(v386 + 16) = 8;
    v293 = swift_allocObject();
    v374 = v293;
    *(v293 + 16) = v579;
    *(v293 + 24) = 0;
    v294 = swift_allocObject();
    v295 = v374;
    v387 = v294;
    *(v294 + 16) = v580;
    *(v294 + 24) = v295;
    v388 = swift_allocObject();
    *(v388 + 16) = 0;
    v389 = swift_allocObject();
    *(v389 + 16) = v380;
    v296 = swift_allocObject();
    v375 = v296;
    *(v296 + 16) = v581;
    *(v296 + 24) = 0;
    v297 = swift_allocObject();
    v298 = v375;
    v390 = v297;
    *(v297 + 16) = v582;
    *(v297 + 24) = v298;
    v391 = swift_allocObject();
    *(v391 + 16) = v378;
    v392 = swift_allocObject();
    *(v392 + 16) = v380;
    v299 = swift_allocObject();
    v300 = v376;
    v377 = v299;
    *(v299 + 16) = v583;
    *(v299 + 24) = v300;
    v301 = swift_allocObject();
    v302 = v377;
    v393 = v301;
    *(v301 + 16) = v584;
    *(v301 + 24) = v302;
    v394 = swift_allocObject();
    *(v394 + 16) = v378;
    v395 = swift_allocObject();
    *(v395 + 16) = v380;
    v303 = swift_allocObject();
    v304 = v383;
    v384 = v303;
    *(v303 + 16) = v585;
    *(v303 + 24) = v304;
    v305 = swift_allocObject();
    v306 = v384;
    v397 = v305;
    *(v305 + 16) = v586;
    *(v305 + 24) = v306;
    v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v396 = _allocateUninitializedArray<A>(_:)();
    v398 = v307;

    v308 = v385;
    v309 = v398;
    *v398 = v587;
    v309[1] = v308;

    v310 = v386;
    v311 = v398;
    v398[2] = v588;
    v311[3] = v310;

    v312 = v387;
    v313 = v398;
    v398[4] = v589;
    v313[5] = v312;

    v314 = v388;
    v315 = v398;
    v398[6] = v590;
    v315[7] = v314;

    v316 = v389;
    v317 = v398;
    v398[8] = v591;
    v317[9] = v316;

    v318 = v390;
    v319 = v398;
    v398[10] = v592;
    v319[11] = v318;

    v320 = v391;
    v321 = v398;
    v398[12] = v593;
    v321[13] = v320;

    v322 = v392;
    v323 = v398;
    v398[14] = v594;
    v323[15] = v322;

    v324 = v393;
    v325 = v398;
    v398[16] = v595;
    v325[17] = v324;

    v326 = v394;
    v327 = v398;
    v398[18] = v596;
    v327[19] = v326;

    v328 = v395;
    v329 = v398;
    v398[20] = v597;
    v329[21] = v328;

    v330 = v397;
    v331 = v398;
    v398[22] = v598;
    v331[23] = v330;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v400, v401))
    {
      v332 = v659;
      v366 = static UnsafeMutablePointer.allocate(capacity:)();
      v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v367 = createStorage<A>(capacity:type:)(0, v365, v365);
      v333 = createStorage<A>(capacity:type:)(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v334 = v367;
      v335 = v712;
      v368 = v333;
      v369 = v754;
      v712[28] = v366;
      v370 = v753;
      v335[27] = v334;
      v371 = v752;
      v335[26] = v333;
      serialize(_:at:)(2, v754);
      serialize(_:at:)(4, v369);
      v336 = v385;
      v337 = v712;
      v338 = v369;
      v339 = v370;
      v340 = v371;
      v712[24] = v587;
      v337[25] = v336;
      closure #1 in osLogInternal(_:log:type:)(v751, v338, v339, v340);
      v372 = v332;
      if (v332)
      {

        __break(1u);
      }

      else
      {
        v341 = v712;
        v342 = v386;
        v712[24] = v588;
        v341[25] = v342;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[9] = 0;
        v343 = v712;
        v344 = v387;
        v712[24] = v589;
        v343[25] = v344;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[8] = 0;
        v345 = v712;
        v346 = v388;
        v712[24] = v590;
        v345[25] = v346;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[7] = 0;
        v347 = v712;
        v348 = v389;
        v712[24] = v591;
        v347[25] = v348;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[6] = 0;
        v349 = v712;
        v350 = v390;
        v712[24] = v592;
        v349[25] = v350;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[5] = 0;
        v351 = v712;
        v352 = v391;
        v712[24] = v593;
        v351[25] = v352;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[4] = 0;
        v353 = v712;
        v354 = v392;
        v712[24] = v594;
        v353[25] = v354;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[3] = 0;
        v355 = v712;
        v356 = v393;
        v712[24] = v595;
        v355[25] = v356;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[2] = 0;
        v357 = v712;
        v358 = v394;
        v712[24] = v596;
        v357[25] = v358;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[1] = 0;
        v359 = v712;
        v360 = v395;
        v712[24] = v597;
        v359[25] = v360;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        v364[0] = 0;
        v361 = v712;
        v362 = v397;
        v712[24] = v598;
        v361[25] = v362;
        closure #1 in osLogInternal(_:log:type:)(v751, v754, v753, v752);
        _os_log_impl(&dword_1D93D0000, v400, v401, "HeadphoneManager: %s: %ld  (Set) value same skiping update %s ::  %s", v366, 0x2Au);
        destroyStorage<A>(_:count:)(v367, 0, v365);
        destroyStorage<A>(_:count:)(v368, 3, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v366, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v400);
    (*(v669 + 8))(v672, v668);

    (*(v693 + 8))(v715, v714);
  }

  else
  {
    v33 = v700;
    swift_unknownObjectRetain();

    (v695)(v691, v717, v714);
    v712[23] = v33;
    v577 = v750 + 1;
    v576 = swift_modifyAtReferenceWritableKeyPath();
    (*(v693 + 40))(v34, v691, v714);
    v576();
    swift_unknownObjectRelease();

    (*(v661 + 32))(v750, v663);
    v749 = v750[0];
    v748 = 0;
    v578 = static AADevicePropertyRemoteSendState.== infix(_:_:)(&v749, &v748);
    swift_unknownObjectRetain();

    if (v578)
    {
      swift_unknownObjectRetain();

      v722 = v700;
      swift_getAtKeyPath();
      v571 = *(v701 + v713[16]);
      outlined destroy of AADeviceProperty<A, B>(v701, v714, v713);
      v573 = &v721;
      v721 = v571;
      v572 = &v720;
      v720 = 1;
      lazy protocol witness table accessor for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState();
      v574 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
      swift_unknownObjectRelease();

      v575 = v574;
    }

    else
    {
      v575 = 0;
    }

    v570 = v575;
    swift_unknownObjectRelease();

    if (v570)
    {
      v568 = *Headphone_Manager.shared.unsafeMutableAddressor();
      MEMORY[0x1E69E5928](v568);
      v35 = v661;
      v36 = v663;
      v712[9] = v568;
      v569 = (*(v35 + 16))(v36);
      if (v569)
      {
        v567 = v569;
        v37 = v661;
        v38 = v663;
        v562 = v569;
        v712[3] = v569;
        v564 = (*(v37 + 24))(v38);
        v563 = v39;
        v565 = (*((*v568 & *MEMORY[0x1E69E7D40]) + 0x1E0))();
        v566 = v738;
        v738[0] = v564;
        v712[1] = v563;
        v40 = type metadata accessor for HeadphoneDevice(0);
        MEMORY[0x1DA7308E0](v739, v566, v565, MEMORY[0x1E69E6158], v40, MEMORY[0x1E69E6168]);
        outlined destroy of String(v566);
        v737 = v712[2];
        v561 = v737 != 0;
        v560 = v561;
        outlined destroy of HeadphoneDevice?(&v737);

        if (v560)
        {
          v41 = v679;
          swift_unknownObjectRetain();

          v736 = v700;
          swift_getAtKeyPath();
          v535 = *(v701 + v713[15]);

          outlined destroy of AADeviceProperty<A, B>(v701, v714, v713);
          v536 = static AADeviceModel.deviceConfigFor<A>(keyPath:value:)(v535, v717, v714);

          swift_unknownObjectRelease();

          v735 = v536;
          v42 = Logger.shared.unsafeMutableAddressor();
          (*(v669 + 16))(v41, v42, v668);
          MEMORY[0x1E69E5928](v536);
          v543 = 7;
          v544 = swift_allocObject();
          *(v544 + 16) = v536;
          v558 = Logger.logObject.getter();
          v559 = static os_log_type_t.default.getter();
          v540 = 17;
          v546 = swift_allocObject();
          v539 = 32;
          *(v546 + 16) = 32;
          v547 = swift_allocObject();
          v541 = 8;
          *(v547 + 16) = 8;
          v542 = 32;
          v43 = swift_allocObject();
          v537 = v43;
          *(v43 + 16) = v624;
          *(v43 + 24) = 0;
          v44 = swift_allocObject();
          v45 = v537;
          v548 = v44;
          *(v44 + 16) = v625;
          *(v44 + 24) = v45;
          v549 = swift_allocObject();
          *(v549 + 16) = 0;
          v550 = swift_allocObject();
          *(v550 + 16) = v541;
          v46 = swift_allocObject();
          v538 = v46;
          *(v46 + 16) = v626;
          *(v46 + 24) = 0;
          v47 = swift_allocObject();
          v48 = v538;
          v551 = v47;
          *(v47 + 16) = v627;
          *(v47 + 24) = v48;
          v552 = swift_allocObject();
          *(v552 + 16) = v539;
          v553 = swift_allocObject();
          *(v553 + 16) = v541;
          v49 = swift_allocObject();
          v50 = v544;
          v545 = v49;
          *(v49 + 16) = v628;
          *(v49 + 24) = v50;
          v51 = swift_allocObject();
          v52 = v545;
          v555 = v51;
          *(v51 + 16) = v629;
          *(v51 + 24) = v52;
          v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v554 = _allocateUninitializedArray<A>(_:)();
          v556 = v53;

          v54 = v546;
          v55 = v556;
          *v556 = v630;
          v55[1] = v54;

          v56 = v547;
          v57 = v556;
          v556[2] = v631;
          v57[3] = v56;

          v58 = v548;
          v59 = v556;
          v556[4] = v632;
          v59[5] = v58;

          v60 = v549;
          v61 = v556;
          v556[6] = v633;
          v61[7] = v60;

          v62 = v550;
          v63 = v556;
          v556[8] = v634;
          v63[9] = v62;

          v64 = v551;
          v65 = v556;
          v556[10] = v635;
          v65[11] = v64;

          v66 = v552;
          v67 = v556;
          v556[12] = v636;
          v67[13] = v66;

          v68 = v553;
          v69 = v556;
          v556[14] = v637;
          v69[15] = v68;

          v70 = v555;
          v71 = v556;
          v556[16] = v638;
          v71[17] = v70;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v558, v559))
          {
            v72 = v659;
            v528 = static UnsafeMutablePointer.allocate(capacity:)();
            v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v529 = createStorage<A>(capacity:type:)(0, v527, v527);
            v530 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v531 = &v727;
            v727 = v528;
            v532 = &v726;
            v726 = v529;
            v533 = &v725;
            v725 = v530;
            serialize(_:at:)(2, &v727);
            serialize(_:at:)(3, v531);
            v723 = v630;
            v724 = v546;
            closure #1 in osLogInternal(_:log:type:)(&v723, v531, v532, v533);
            v534 = v72;
            if (v72)
            {

              __break(1u);
            }

            else
            {
              v723 = v631;
              v724 = v547;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v526 = 0;
              v723 = v632;
              v724 = v548;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v525 = 0;
              v723 = v633;
              v724 = v549;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v524 = 0;
              v723 = v634;
              v724 = v550;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v523 = 0;
              v723 = v635;
              v724 = v551;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v522 = 0;
              v723 = v636;
              v724 = v552;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v521 = 0;
              v723 = v637;
              v724 = v553;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              v520 = 0;
              v723 = v638;
              v724 = v555;
              closure #1 in osLogInternal(_:log:type:)(&v723, &v727, &v726, &v725);
              _os_log_impl(&dword_1D93D0000, v558, v559, "HeadphoneManager: %s: %ld (Set Remote) Prepared config :%s", v528, 0x20u);
              destroyStorage<A>(_:count:)(v529, 0, v527);
              destroyStorage<A>(_:count:)(v530, 2, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v528, MEMORY[0x1E69E7508]);
            }
          }

          else
          {
          }

          v73 = v568;
          MEMORY[0x1E69E5920](v558);
          v74 = (*(v669 + 8))(v679, v668);
          v519 = (*((*v73 & *MEMORY[0x1E69E7D40]) + 0x138))(v74);
          v510 = [v562 identifier];
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v509 = v76;
          v518 = MEMORY[0x1DA730940](v75);

          MEMORY[0x1E69E5920](v510);
          swift_unknownObjectRetain();

          (v695)(v691, v715, v714);
          MEMORY[0x1E69E5928](v536);
          (v695)(v688, v717, v714);
          v77 = *(v686 + 80);
          v511 = (v77 + 64) & ~v77;
          v512 = (v511 + v690 + 7) & 0xFFFFFFFFFFFFFFF8;
          v513 = (v512 + 8 + v77) & ~v77;
          v78 = swift_allocObject();
          v79 = v661;
          v80 = v719;
          v81 = v700;
          v82 = v704;
          v83 = v511;
          v84 = v691;
          v85 = v693;
          v86 = v714;
          v516 = v78;
          *(v78 + 2) = v663;
          *(v78 + 3) = v86;
          *(v78 + 4) = v79;
          *(v78 + 5) = v80;
          *(v78 + 6) = v81;
          *(v78 + 7) = v82;
          v515 = *(v85 + 32);
          v514 = v85 + 32;
          v515(&v78[v83], v84);
          v87 = v513;
          v88 = v688;
          v89 = v515;
          v90 = v714;
          v91 = v516;
          *&v516[v512] = v536;
          v89(&v91[v87], v88, v90);
          v733 = v639;
          v734 = v516;
          v728 = MEMORY[0x1E69E9820];
          v729 = 1107296256;
          v730 = 0;
          v731 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
          v732 = &block_descriptor_6;
          v517 = _Block_copy(&v728);

          [v519 sendDeviceConfig:v536 identifier:v518 completion:v517];
          _Block_release(v517);
          MEMORY[0x1E69E5920](v518);
          MEMORY[0x1E69E5920](v519);
          MEMORY[0x1E69E5920](v536);
          MEMORY[0x1E69E5920](v562);
          MEMORY[0x1E69E5920](v568);

          (*(v693 + 8))(v715, v714);
          goto LABEL_43;
        }

        MEMORY[0x1E69E5920](v562);
      }

      v92 = v677;
      v93 = Logger.shared.unsafeMutableAddressor();
      (*(v669 + 16))(v92, v93, v668);
      swift_unknownObjectRetain();
      v481 = 56;
      v490 = 7;
      v94 = swift_allocObject();
      v95 = v714;
      v96 = v661;
      v97 = v719;
      v98 = v94;
      v99 = v700;
      v485 = v98;
      v98[2] = v663;
      v98[3] = v95;
      v98[4] = v96;
      v98[5] = v97;
      v98[6] = v99;
      swift_unknownObjectRetain();
      v100 = swift_allocObject();
      v101 = v714;
      v102 = v661;
      v103 = v719;
      v104 = v700;
      v491 = v100;
      v100[2] = v663;
      v100[3] = v101;
      v100[4] = v102;
      v100[5] = v103;
      v100[6] = v104;
      default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

      v507 = Logger.logObject.getter();
      v508 = static os_log_type_t.error.getter();
      v487 = 17;
      v492 = swift_allocObject();
      v484 = 32;
      *(v492 + 16) = 32;
      v493 = swift_allocObject();
      v488 = 8;
      *(v493 + 16) = 8;
      v489 = 32;
      v105 = swift_allocObject();
      v482 = v105;
      *(v105 + 16) = v640;
      *(v105 + 24) = 0;
      v106 = swift_allocObject();
      v107 = v482;
      v494 = v106;
      *(v106 + 16) = v641;
      *(v106 + 24) = v107;
      v495 = swift_allocObject();
      *(v495 + 16) = 0;
      v496 = swift_allocObject();
      *(v496 + 16) = v488;
      v108 = swift_allocObject();
      v483 = v108;
      *(v108 + 16) = v642;
      *(v108 + 24) = 0;
      v109 = swift_allocObject();
      v110 = v483;
      v497 = v109;
      *(v109 + 16) = v643;
      *(v109 + 24) = v110;
      v498 = swift_allocObject();
      *(v498 + 16) = v484;
      v499 = swift_allocObject();
      *(v499 + 16) = v488;
      v111 = swift_allocObject();
      v112 = v485;
      v486 = v111;
      *(v111 + 16) = v644;
      *(v111 + 24) = v112;
      v113 = swift_allocObject();
      v114 = v486;
      v500 = v113;
      *(v113 + 16) = v645;
      *(v113 + 24) = v114;
      v501 = swift_allocObject();
      *(v501 + 16) = 64;
      v502 = swift_allocObject();
      *(v502 + 16) = v488;
      v115 = swift_allocObject();
      v116 = v491;
      v504 = v115;
      *(v115 + 16) = v646;
      *(v115 + 24) = v116;
      v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v503 = _allocateUninitializedArray<A>(_:)();
      v505 = v117;

      v118 = v492;
      v119 = v505;
      *v505 = v647;
      v119[1] = v118;

      v120 = v493;
      v121 = v505;
      v505[2] = v648;
      v121[3] = v120;

      v122 = v494;
      v123 = v505;
      v505[4] = v649;
      v123[5] = v122;

      v124 = v495;
      v125 = v505;
      v505[6] = v650;
      v125[7] = v124;

      v126 = v496;
      v127 = v505;
      v505[8] = v651;
      v127[9] = v126;

      v128 = v497;
      v129 = v505;
      v505[10] = v652;
      v129[11] = v128;

      v130 = v498;
      v131 = v505;
      v505[12] = v653;
      v131[13] = v130;

      v132 = v499;
      v133 = v505;
      v505[14] = v654;
      v133[15] = v132;

      v134 = v500;
      v135 = v505;
      v505[16] = v655;
      v135[17] = v134;

      v136 = v501;
      v137 = v505;
      v505[18] = v656;
      v137[19] = v136;

      v138 = v502;
      v139 = v505;
      v505[20] = v657;
      v139[21] = v138;

      v140 = v504;
      v141 = v505;
      v505[22] = v658;
      v141[23] = v140;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v507, v508))
      {
        v142 = v659;
        v474 = static UnsafeMutablePointer.allocate(capacity:)();
        v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v475 = createStorage<A>(capacity:type:)(1, v473, v473);
        v143 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v144 = v475;
        v145 = v712;
        v476 = v143;
        v477 = v743;
        v712[8] = v474;
        v478 = &v742;
        v145[7] = v144;
        v479 = &v741;
        v145[6] = v143;
        serialize(_:at:)(2, v743);
        serialize(_:at:)(4, v477);
        v146 = v492;
        v147 = v712;
        v148 = v477;
        v149 = v478;
        v150 = v479;
        v712[4] = v647;
        v147[5] = v146;
        closure #1 in osLogInternal(_:log:type:)(v740, v148, v149, v150);
        v480 = v142;
        if (v142)
        {

          __break(1u);
        }

        else
        {
          v151 = v712;
          v152 = v493;
          v712[4] = v648;
          v151[5] = v152;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v472 = 0;
          v153 = v712;
          v154 = v494;
          v712[4] = v649;
          v153[5] = v154;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v471 = 0;
          v155 = v712;
          v156 = v495;
          v712[4] = v650;
          v155[5] = v156;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v470 = 0;
          v157 = v712;
          v158 = v496;
          v712[4] = v651;
          v157[5] = v158;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v469 = 0;
          v159 = v712;
          v160 = v497;
          v712[4] = v652;
          v159[5] = v160;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v468 = 0;
          v161 = v712;
          v162 = v498;
          v712[4] = v653;
          v161[5] = v162;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v467 = 0;
          v163 = v712;
          v164 = v499;
          v712[4] = v654;
          v163[5] = v164;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v466 = 0;
          v165 = v712;
          v166 = v500;
          v712[4] = v655;
          v165[5] = v166;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v465 = 0;
          v167 = v712;
          v168 = v501;
          v712[4] = v656;
          v167[5] = v168;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v464 = 0;
          v169 = v712;
          v170 = v502;
          v712[4] = v657;
          v169[5] = v170;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          v463 = 0;
          v171 = v712;
          v172 = v504;
          v712[4] = v658;
          v171[5] = v172;
          closure #1 in osLogInternal(_:log:type:)(v740, v743, &v742, &v741);
          _os_log_impl(&dword_1D93D0000, v507, v508, "HeadphoneManager: %s: %ld (Set) : Update AAD Device Config, Device Not Connected with UUID: %s device:%@", v474, 0x2Au);
          destroyStorage<A>(_:count:)(v475, 1, v473);
          destroyStorage<A>(_:count:)(v476, 2, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v474, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v507);
      (*(v669 + 8))(v677, v668);
      MEMORY[0x1E69E5920](v568);

      (*(v693 + 8))(v715, v714);
    }

    else
    {
      swift_unknownObjectRetain();

      v712[17] = v700;
      swift_getAtKeyPath();
      v462 = (v682 + v713[13]);
      if (*v462)
      {
        v461 = *v462;

        outlined destroy of AADeviceProperty<A, B>(v682, v714, v713);
        CurrentValueSubject.send(_:)();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        outlined destroy of AADeviceProperty<A, B>(v682, v714, v713);
      }

      dispatch thunk of ObservableObject.objectWillChange.getter();
      type metadata accessor for ObservableObjectPublisher();
      if (swift_dynamicCast())
      {
        v460 = v712[16];
      }

      else
      {
        v460 = 0;
      }

      v459 = v460;
      if (v460)
      {
        v458 = v459;
        v457 = v459;
        v712[10] = v459;
        ObservableObjectPublisher.send()();
      }

      v173 = v674;
      v174 = Logger.binding.unsafeMutableAddressor();
      (*(v669 + 16))(v173, v174, v668);

      v433 = 32;
      v434 = 7;
      v175 = swift_allocObject();
      v176 = v718;
      v177 = v717;
      v178 = v695;
      v179 = v714;
      v180 = v175;
      v181 = v691;
      v426 = v180;
      *(v180 + 16) = v716;
      *(v180 + 24) = v176;
      v178(v181, v177, v179);
      v423 = (*(v686 + 80) + 48) & ~*(v686 + 80);
      v182 = swift_allocObject();
      v183 = v661;
      v184 = v719;
      v185 = v423;
      v186 = v693;
      v187 = v691;
      v188 = v714;
      v428 = v182;
      v182[2] = v663;
      v182[3] = v188;
      v182[4] = v183;
      v182[5] = v184;
      (*(v186 + 32))(v182 + v185, v187);
      swift_unknownObjectRetain();

      v189 = swift_allocObject();
      v190 = v704;
      v435 = v189;
      *(v189 + 16) = v700;
      *(v189 + 24) = v190;
      v455 = Logger.logObject.getter();
      v456 = static os_log_type_t.default.getter();
      v431 = 17;
      v437 = swift_allocObject();
      v430 = 32;
      *(v437 + 16) = 32;
      v438 = swift_allocObject();
      v432 = 8;
      *(v438 + 16) = 8;
      v191 = swift_allocObject();
      v424 = v191;
      *(v191 + 16) = v599;
      *(v191 + 24) = 0;
      v192 = swift_allocObject();
      v193 = v424;
      v439 = v192;
      *(v192 + 16) = v600;
      *(v192 + 24) = v193;
      v440 = swift_allocObject();
      *(v440 + 16) = 0;
      v441 = swift_allocObject();
      *(v441 + 16) = v432;
      v194 = swift_allocObject();
      v425 = v194;
      *(v194 + 16) = v601;
      *(v194 + 24) = 0;
      v195 = swift_allocObject();
      v196 = v425;
      v442 = v195;
      *(v195 + 16) = v602;
      *(v195 + 24) = v196;
      v443 = swift_allocObject();
      *(v443 + 16) = v430;
      v444 = swift_allocObject();
      *(v444 + 16) = v432;
      v197 = swift_allocObject();
      v198 = v426;
      v427 = v197;
      *(v197 + 16) = v603;
      *(v197 + 24) = v198;
      v199 = swift_allocObject();
      v200 = v427;
      v445 = v199;
      *(v199 + 16) = v604;
      *(v199 + 24) = v200;
      v446 = swift_allocObject();
      *(v446 + 16) = v430;
      v447 = swift_allocObject();
      *(v447 + 16) = v432;
      v201 = swift_allocObject();
      v202 = v428;
      v429 = v201;
      *(v201 + 16) = v605;
      *(v201 + 24) = v202;
      v203 = swift_allocObject();
      v204 = v429;
      v448 = v203;
      *(v203 + 16) = v606;
      *(v203 + 24) = v204;
      v449 = swift_allocObject();
      *(v449 + 16) = v430;
      v450 = swift_allocObject();
      *(v450 + 16) = v432;
      v205 = swift_allocObject();
      v206 = v435;
      v436 = v205;
      *(v205 + 16) = v607;
      *(v205 + 24) = v206;
      v207 = swift_allocObject();
      v208 = v436;
      v452 = v207;
      *(v207 + 16) = v608;
      *(v207 + 24) = v208;
      v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v451 = _allocateUninitializedArray<A>(_:)();
      v453 = v209;

      v210 = v437;
      v211 = v453;
      *v453 = v609;
      v211[1] = v210;

      v212 = v438;
      v213 = v453;
      v453[2] = v610;
      v213[3] = v212;

      v214 = v439;
      v215 = v453;
      v453[4] = v611;
      v215[5] = v214;

      v216 = v440;
      v217 = v453;
      v453[6] = v612;
      v217[7] = v216;

      v218 = v441;
      v219 = v453;
      v453[8] = v613;
      v219[9] = v218;

      v220 = v442;
      v221 = v453;
      v453[10] = v614;
      v221[11] = v220;

      v222 = v443;
      v223 = v453;
      v453[12] = v615;
      v223[13] = v222;

      v224 = v444;
      v225 = v453;
      v453[14] = v616;
      v225[15] = v224;

      v226 = v445;
      v227 = v453;
      v453[16] = v617;
      v227[17] = v226;

      v228 = v446;
      v229 = v453;
      v453[18] = v618;
      v229[19] = v228;

      v230 = v447;
      v231 = v453;
      v453[20] = v619;
      v231[21] = v230;

      v232 = v448;
      v233 = v453;
      v453[22] = v620;
      v233[23] = v232;

      v234 = v449;
      v235 = v453;
      v453[24] = v621;
      v235[25] = v234;

      v236 = v450;
      v237 = v453;
      v453[26] = v622;
      v237[27] = v236;

      v238 = v452;
      v239 = v453;
      v453[28] = v623;
      v239[29] = v238;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v455, v456))
      {
        v240 = v659;
        v416 = static UnsafeMutablePointer.allocate(capacity:)();
        v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v417 = createStorage<A>(capacity:type:)(0, v415, v415);
        v241 = createStorage<A>(capacity:type:)(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v242 = v417;
        v243 = v712;
        v418 = v241;
        v419 = v747;
        v712[15] = v416;
        v420 = &v746;
        v243[14] = v242;
        v421 = &v745;
        v243[13] = v241;
        serialize(_:at:)(2, v747);
        serialize(_:at:)(5, v419);
        v244 = v437;
        v245 = v712;
        v246 = v419;
        v247 = v420;
        v248 = v421;
        v712[11] = v609;
        v245[12] = v244;
        closure #1 in osLogInternal(_:log:type:)(v744, v246, v247, v248);
        v422 = v240;
        if (v240)
        {

          __break(1u);
        }

        else
        {
          v249 = v712;
          v250 = v438;
          v712[11] = v610;
          v249[12] = v250;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v414 = 0;
          v251 = v712;
          v252 = v439;
          v712[11] = v611;
          v251[12] = v252;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v413 = 0;
          v253 = v712;
          v254 = v440;
          v712[11] = v612;
          v253[12] = v254;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v412 = 0;
          v255 = v712;
          v256 = v441;
          v712[11] = v613;
          v255[12] = v256;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v411 = 0;
          v257 = v712;
          v258 = v442;
          v712[11] = v614;
          v257[12] = v258;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v410 = 0;
          v259 = v712;
          v260 = v443;
          v712[11] = v615;
          v259[12] = v260;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v409 = 0;
          v261 = v712;
          v262 = v444;
          v712[11] = v616;
          v261[12] = v262;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v408 = 0;
          v263 = v712;
          v264 = v445;
          v712[11] = v617;
          v263[12] = v264;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v407 = 0;
          v265 = v712;
          v266 = v446;
          v712[11] = v618;
          v265[12] = v266;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v406 = 0;
          v267 = v712;
          v268 = v447;
          v712[11] = v619;
          v267[12] = v268;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v405 = 0;
          v269 = v712;
          v270 = v448;
          v712[11] = v620;
          v269[12] = v270;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v404 = 0;
          v271 = v712;
          v272 = v449;
          v712[11] = v621;
          v271[12] = v272;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v403 = 0;
          v273 = v712;
          v274 = v450;
          v712[11] = v622;
          v273[12] = v274;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          v402 = 0;
          v275 = v712;
          v276 = v452;
          v712[11] = v623;
          v275[12] = v276;
          closure #1 in osLogInternal(_:log:type:)(v744, v747, &v746, &v745);
          _os_log_impl(&dword_1D93D0000, v455, v456, "HeadphoneManager: %s: %ld  (Set)  %s :: %s %s", v416, 0x34u);
          destroyStorage<A>(_:count:)(v417, 0, v415);
          destroyStorage<A>(_:count:)(v418, 4, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v416, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v455);
      (*(v669 + 8))(v674, v668);

      (*(v693 + 8))(v715, v714);
    }
  }

LABEL_43:

  swift_unknownObjectRelease();
  return (*(v693 + 8))(v717, v714);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of AADeviceProperty<A, B>(uint64_t a1, uint64_t a2, int *a3)
{
  (*(*(a2 - 8) + 8))();
}

uint64_t implicit closure #4 in static AADeviceProperty.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v10 = v3;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v5);

  v8 = v9;
  v7 = v10;

  outlined destroy of DefaultStringInterpolation(&v9);
  return MEMORY[0x1DA7309B0](v8, v7);
}

uint64_t implicit closure #9 in static AADeviceProperty.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v10 = v3;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v5);

  v8 = v9;
  v7 = v10;

  outlined destroy of DefaultStringInterpolation(&v9);
  return MEMORY[0x1DA7309B0](v8, v7);
}

uint64_t implicit closure #10 in static AADeviceProperty.subscript.setter(uint64_t a1, void *a2)
{
  v7 = a1;
  v8 = a2;
  v9 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v6 = (*(*(v9 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v3 - v6;
  swift_unknownObjectRetain();

  v12[1] = v7;
  swift_getAtKeyPath();
  v11 = *(v10 + v9[13]);

  v12[0] = v11;
  v5 = v11 != 0;
  v4 = v5;
  outlined destroy of HeadphonePropertyWrapperPublisher<B>?(v12);
  outlined destroy of AADeviceProperty<A, B>(v10, *(v9 + 3), v9);
  swift_unknownObjectRelease();

  if (v4)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("publisher exists", 0x10uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("no publisher", 0xCuLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #14 in static AADeviceProperty.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a2);
  if (v6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t implicit closure #17 in static AADeviceProperty.subscript.setter(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t closure #1 in static AADeviceProperty.subscript.setter(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v255 = a1;
  v241 = a2;
  v237 = a3;
  v238 = a4;
  v239 = a5;
  v240 = a6;
  v192 = implicit closure #1 in closure #1 in static AADeviceProperty.subscript.setter;
  v193 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v194 = implicit closure #2 in closure #1 in static AADeviceProperty.subscript.setter;
  v195 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v196 = partial apply for implicit closure #3 in closure #1 in static AADeviceProperty.subscript.setter;
  v197 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v198 = partial apply for implicit closure #4 in closure #1 in static AADeviceProperty.subscript.setter;
  v199 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v200 = closure #1 in OSLogArguments.append(_:)partial apply;
  v201 = closure #1 in OSLogArguments.append(_:)partial apply;
  v202 = closure #1 in OSLogArguments.append(_:)partial apply;
  v203 = closure #1 in OSLogArguments.append(_:)partial apply;
  v204 = closure #1 in OSLogArguments.append(_:)partial apply;
  v205 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v206 = closure #1 in OSLogArguments.append(_:)partial apply;
  v207 = closure #1 in OSLogArguments.append(_:)partial apply;
  v208 = closure #1 in OSLogArguments.append(_:)partial apply;
  v209 = closure #1 in OSLogArguments.append(_:)partial apply;
  v210 = closure #1 in OSLogArguments.append(_:)partial apply;
  v211 = closure #1 in OSLogArguments.append(_:)partial apply;
  v212 = implicit closure #5 in closure #1 in static AADeviceProperty.subscript.setter;
  v213 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v214 = implicit closure #6 in closure #1 in static AADeviceProperty.subscript.setter;
  v215 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v216 = partial apply for implicit closure #7 in closure #1 in static AADeviceProperty.subscript.setter;
  v217 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v218 = closure #1 in OSLogArguments.append(_:)partial apply;
  v219 = closure #1 in OSLogArguments.append(_:)partial apply;
  v220 = closure #1 in OSLogArguments.append(_:)partial apply;
  v221 = closure #1 in OSLogArguments.append(_:)partial apply;
  v222 = closure #1 in OSLogArguments.append(_:)partial apply;
  v223 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v224 = closure #1 in OSLogArguments.append(_:)partial apply;
  v225 = closure #1 in OSLogArguments.append(_:)partial apply;
  v226 = closure #1 in OSLogArguments.append(_:)partial apply;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v269 = 0;
  v227 = 0;
  v263 = 0;
  v6 = *a3;
  v236 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v228 = *(*(v236 + 4) + 8);
  v7 = *MEMORY[0x1E69E6F98];
  v230 = 0;
  v229 = *(v6 + v7);
  v279 = v229;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v232 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v233 = v98 - v232;
  v234 = (*(*(v236 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v235 = v98 - v234;
  v242 = type metadata accessor for Logger();
  v243 = *(v242 - 8);
  v244 = v242 - 8;
  v246 = *(v243 + 64);
  v245 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v255);
  v247 = v98 - v245;
  v248 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v249 = v98 - v248;
  v250 = *(v11 + 24);
  v278 = v250;
  v251 = *(v250 - 8);
  v252 = v250 - 8;
  v253 = (*(v251 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v254 = v98 - v253;
  v277 = v12;
  v276 = v13;
  v275 = v14;
  v274 = v15;
  v273 = v16;
  v272 = v17;
  v18 = v12;
  if (v255)
  {
    v191 = v255;
    v19 = v249;
    v161 = v255;
    v263 = v255;
    swift_unknownObjectRetain();

    (*(v251 + 16))(v254, v238, v250);
    v262 = v241;
    v160 = &v261;
    v159 = swift_modifyAtReferenceWritableKeyPath();
    (*(v251 + 40))(v20, v254, v250);
    v159();
    swift_unknownObjectRelease();

    v21 = Logger.shared.unsafeMutableAddressor();
    (*(v243 + 16))(v19, v21, v242);
    v22 = v161;
    v162 = 24;
    v171 = 7;
    v23 = swift_allocObject();
    v24 = v239;
    v165 = v23;
    *(v23 + 16) = v161;
    MEMORY[0x1E69E5928](v24);
    v172 = swift_allocObject();
    *(v172 + 16) = v239;
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    v168 = 17;
    v174 = swift_allocObject();
    v167 = 32;
    *(v174 + 16) = 32;
    v175 = swift_allocObject();
    v169 = 8;
    *(v175 + 16) = 8;
    v170 = 32;
    v25 = swift_allocObject();
    v163 = v25;
    *(v25 + 16) = v192;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v163;
    v176 = v26;
    *(v26 + 16) = v193;
    *(v26 + 24) = v27;
    v177 = swift_allocObject();
    *(v177 + 16) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v169;
    v28 = swift_allocObject();
    v164 = v28;
    *(v28 + 16) = v194;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v164;
    v179 = v29;
    *(v29 + 16) = v195;
    *(v29 + 24) = v30;
    v180 = swift_allocObject();
    *(v180 + 16) = v167;
    v181 = swift_allocObject();
    *(v181 + 16) = v169;
    v31 = swift_allocObject();
    v32 = v165;
    v166 = v31;
    *(v31 + 16) = v196;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v166;
    v182 = v33;
    *(v33 + 16) = v197;
    *(v33 + 24) = v34;
    v183 = swift_allocObject();
    *(v183 + 16) = v167;
    v184 = swift_allocObject();
    *(v184 + 16) = v169;
    v35 = swift_allocObject();
    v36 = v172;
    v173 = v35;
    *(v35 + 16) = v198;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v173;
    v186 = v37;
    *(v37 + 16) = v199;
    *(v37 + 24) = v38;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v185 = _allocateUninitializedArray<A>(_:)();
    v187 = v39;

    v40 = v174;
    v41 = v187;
    *v187 = v200;
    v41[1] = v40;

    v42 = v175;
    v43 = v187;
    v187[2] = v201;
    v43[3] = v42;

    v44 = v176;
    v45 = v187;
    v187[4] = v202;
    v45[5] = v44;

    v46 = v177;
    v47 = v187;
    v187[6] = v203;
    v47[7] = v46;

    v48 = v178;
    v49 = v187;
    v187[8] = v204;
    v49[9] = v48;

    v50 = v179;
    v51 = v187;
    v187[10] = v205;
    v51[11] = v50;

    v52 = v180;
    v53 = v187;
    v187[12] = v206;
    v53[13] = v52;

    v54 = v181;
    v55 = v187;
    v187[14] = v207;
    v55[15] = v54;

    v56 = v182;
    v57 = v187;
    v187[16] = v208;
    v57[17] = v56;

    v58 = v183;
    v59 = v187;
    v187[18] = v209;
    v59[19] = v58;

    v60 = v184;
    v61 = v187;
    v187[20] = v210;
    v61[21] = v60;

    v62 = v186;
    v63 = v187;
    v187[22] = v211;
    v63[23] = v62;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v189, v190))
    {
      v64 = v227;
      v152 = static UnsafeMutablePointer.allocate(capacity:)();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v153 = createStorage<A>(capacity:type:)(0, v151, v151);
      v154 = createStorage<A>(capacity:type:)(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v155 = &v260;
      v260 = v152;
      v156 = &v259;
      v259 = v153;
      v157 = &v258;
      v258 = v154;
      serialize(_:at:)(2, &v260);
      serialize(_:at:)(4, v155);
      v256 = v200;
      v257 = v174;
      closure #1 in osLogInternal(_:log:type:)(&v256, v155, v156, v157);
      v158 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v256 = v201;
        v257 = v175;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v150 = 0;
        v256 = v202;
        v257 = v176;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v149 = 0;
        v256 = v203;
        v257 = v177;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v148 = 0;
        v256 = v204;
        v257 = v178;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v147 = 0;
        v256 = v205;
        v257 = v179;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v146 = 0;
        v256 = v206;
        v257 = v180;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v145 = 0;
        v256 = v207;
        v257 = v181;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v144 = 0;
        v256 = v208;
        v257 = v182;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v143 = 0;
        v256 = v209;
        v257 = v183;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v142 = 0;
        v256 = v210;
        v257 = v184;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v141 = 0;
        v256 = v211;
        v257 = v186;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        _os_log_impl(&dword_1D93D0000, v189, v190, "HeadphoneManager: %s: %ld Failed to update AAD Device Config, Error: %s %s", v152, 0x2Au);
        destroyStorage<A>(_:count:)(v153, 0, v151);
        destroyStorage<A>(_:count:)(v154, 3, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v152, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v189);
    (*(v243 + 8))(v249, v242);
  }

  else
  {
    v65 = v247;
    v66 = Logger.shared.unsafeMutableAddressor();
    (*(v243 + 16))(v65, v66, v242);
    MEMORY[0x1E69E5928](v239);
    v124 = 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v239;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    v121 = 17;
    v127 = swift_allocObject();
    v120 = 32;
    *(v127 + 16) = 32;
    v128 = swift_allocObject();
    v122 = 8;
    *(v128 + 16) = 8;
    v123 = 32;
    v67 = swift_allocObject();
    v118 = v67;
    *(v67 + 16) = v212;
    *(v67 + 24) = 0;
    v68 = swift_allocObject();
    v69 = v118;
    v129 = v68;
    *(v68 + 16) = v213;
    *(v68 + 24) = v69;
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v122;
    v70 = swift_allocObject();
    v119 = v70;
    *(v70 + 16) = v214;
    *(v70 + 24) = 0;
    v71 = swift_allocObject();
    v72 = v119;
    v132 = v71;
    *(v71 + 16) = v215;
    *(v71 + 24) = v72;
    v133 = swift_allocObject();
    *(v133 + 16) = v120;
    v134 = swift_allocObject();
    *(v134 + 16) = v122;
    v73 = swift_allocObject();
    v74 = v125;
    v126 = v73;
    *(v73 + 16) = v216;
    *(v73 + 24) = v74;
    v75 = swift_allocObject();
    v76 = v126;
    v136 = v75;
    *(v75 + 16) = v217;
    *(v75 + 24) = v76;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v135 = _allocateUninitializedArray<A>(_:)();
    v137 = v77;

    v78 = v127;
    v79 = v137;
    *v137 = v218;
    v79[1] = v78;

    v80 = v128;
    v81 = v137;
    v137[2] = v219;
    v81[3] = v80;

    v82 = v129;
    v83 = v137;
    v137[4] = v220;
    v83[5] = v82;

    v84 = v130;
    v85 = v137;
    v137[6] = v221;
    v85[7] = v84;

    v86 = v131;
    v87 = v137;
    v137[8] = v222;
    v87[9] = v86;

    v88 = v132;
    v89 = v137;
    v137[10] = v223;
    v89[11] = v88;

    v90 = v133;
    v91 = v137;
    v137[12] = v224;
    v91[13] = v90;

    v92 = v134;
    v93 = v137;
    v137[14] = v225;
    v93[15] = v92;

    v94 = v136;
    v95 = v137;
    v137[16] = v226;
    v95[17] = v94;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v139, v140))
    {
      v96 = v227;
      v111 = static UnsafeMutablePointer.allocate(capacity:)();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v112 = createStorage<A>(capacity:type:)(0, v110, v110);
      v113 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v114 = &v268;
      v268 = v111;
      v115 = &v267;
      v267 = v112;
      v116 = &v266;
      v266 = v113;
      serialize(_:at:)(2, &v268);
      serialize(_:at:)(3, v114);
      v264 = v218;
      v265 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v264, v114, v115, v116);
      v117 = v96;
      if (v96)
      {

        __break(1u);
      }

      else
      {
        v264 = v219;
        v265 = v128;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v109 = 0;
        v264 = v220;
        v265 = v129;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v108 = 0;
        v264 = v221;
        v265 = v130;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v107 = 0;
        v264 = v222;
        v265 = v131;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v106 = 0;
        v264 = v223;
        v265 = v132;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v105 = 0;
        v264 = v224;
        v265 = v133;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v104 = 0;
        v264 = v225;
        v265 = v134;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v103 = 0;
        v264 = v226;
        v265 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        _os_log_impl(&dword_1D93D0000, v139, v140, "HeadphoneManager: %s: %ld  Successfully Updated AAD Device Config: %s", v111, 0x20u);
        destroyStorage<A>(_:count:)(v112, 0, v110);
        destroyStorage<A>(_:count:)(v113, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v111, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v139);
    (*(v243 + 8))(v247, v242);
  }

  swift_unknownObjectRetain();

  v271 = v241;
  swift_getAtKeyPath();
  v102 = (v235 + v236[13]);
  if (*v102)
  {
    v101 = *v102;

    outlined destroy of AADeviceProperty<A, B>(v235, v250, v236);
    CurrentValueSubject.send(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    outlined destroy of AADeviceProperty<A, B>(v235, v250, v236);
  }

  dispatch thunk of ObservableObject.objectWillChange.getter();
  type metadata accessor for ObservableObjectPublisher();
  result = swift_dynamicCast();
  if (result)
  {
    v100 = v270;
  }

  else
  {
    v100 = 0;
  }

  v99 = v100;
  if (v100)
  {
    v98[2] = v99;
    v98[1] = v99;
    v269 = v99;
    ObservableObjectPublisher.send()();
  }

  return result;
}

uint64_t implicit closure #3 in closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t implicit closure #7 in closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

void (*static AADeviceProperty.subscript.modify(void *a1, uint64_t a2, void *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x38uLL, 42958);
  *a1 = v8;
  v8[2] = a4;
  v8[1] = a3;
  *v8 = a2;
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v8[3] = v4;
  v6 = *(v4 - 8);
  v8[4] = v6;
  v7 = *(v6 + 64);
  v8[5] = __swift_coroFrameAllocStub(v7, 42958);
  v13 = __swift_coroFrameAllocStub(v7, 42958);
  v8[6] = v13;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  static AADeviceProperty.subscript.getter(v13, a3);
  return static AADeviceProperty.subscript.modify;
}

void static AADeviceProperty.subscript.modify(uint64_t **a1, char a2)
{
  v11 = *a1;
  if (a2)
  {
    v7 = v11[6];
    v8 = v11[5];
    v3 = v11[3];
    v4 = v11[2];
    v5 = v11[1];
    v6 = *v11;
    v2 = v11[4];
    (*(v2 + 16))();
    static AADeviceProperty.subscript.setter(v8, v6, v5, v4);
    (*(v2 + 8))(v7, v3);

    swift_unknownObjectRelease();
    free(v7);
    free(v8);
  }

  else
  {
    v9 = v11[6];
    v10 = v11[5];
    static AADeviceProperty.subscript.setter(v9, *v11, v11[1], v11[2]);

    swift_unknownObjectRelease();
    free(v9);
    free(v10);
  }

  free(v11);
}

void AADeviceProperty.wrappedValue.getter()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void key path getter for AADeviceProperty.wrappedValue : <A, B>AADeviceProperty<A, B>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v13 = a1;
  v4 = (a2 + a3 - 32);
  v11 = *v4;
  v22[5] = v11;
  v19 = v4[1];
  v22[4] = v19;
  v12 = v4[2];
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v10 - v5;
  v22[0] = v11;
  v22[1] = v19;
  v22[2] = v12;
  v22[3] = v6;
  v20 = type metadata accessor for AADeviceProperty(0, v22);
  v14 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v13);
  v21 = &v10 - v14;
  outlined init with copy of AADeviceProperty<A, B>(v7, &v10 - v14, v8, v9);
  AADeviceProperty.wrappedValue.getter();
}

uint64_t sub_1D94FD3D8()
{
  (*(*(v0 - 120) + 32))(*(v0 - 104), *(v0 - 96), *(v0 - 88));
  result = *(v0 - 72);
  outlined destroy of AADeviceProperty<A, B>(result, *(v0 - 88), *(v0 - 80));
  return result;
}

void key path setter for AADeviceProperty.wrappedValue : <A, B>AADeviceProperty<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v4 = (a3 + a4 - 32);
  v8 = *v4;
  v13[5] = v8;
  v9 = v4[1];
  v13[4] = v9;
  v10 = v4[2];
  v11 = v4[3];
  v7 = *(v9 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v5 - v6;
  (*(v7 + 16))(&v5 - v6);
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  type metadata accessor for AADeviceProperty(0, v13);
  AADeviceProperty.wrappedValue.setter();
}

void AADeviceProperty.wrappedValue.setter()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void AADeviceProperty.wrappedValue.modify(void *a1, uint64_t a2)
{
  v6 = __swift_coroFrameAllocStub(0x30uLL, 50640);
  *a1 = v6;
  v6[1] = v2;
  *v6 = a2;
  v3 = *(a2 + 24);
  v6[2] = v3;
  v4 = *(v3 - 8);
  v6[3] = v4;
  v5 = *(v4 + 64);
  v6[4] = __swift_coroFrameAllocStub(v5, 50640);
  v6[5] = __swift_coroFrameAllocStub(v5, 50640);
  AADeviceProperty.wrappedValue.getter();
}

void AADeviceProperty.wrappedValue.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    AADeviceProperty.wrappedValue.setter();
  }

  (*(*(*a1 + 24) + 16))();
  AADeviceProperty.wrappedValue.setter();
}

void sub_1D94FD7BC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  (*(a12 + 8))(a13, a14, a3, a4, a5, a6, a7, a8);
  free(a15);
  free(a16);
  free(*(v16 - 48));
}

uint64_t AADeviceProperty.value.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v6 = a2;
  v15 = 0;
  v14 = 0;
  v11 = *(a2 + 24);
  v16 = v11;
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v5 - v5;
  v15 = v3;
  v14 = v2;
  v13 = *(v6 + 16);
  (*(v9 + 16))();
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t AADeviceProperty.publisher.setter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  *(v2 + *(a2 + 52)) = v5;
}

uint64_t AADeviceProperty.objectWillChange.getter(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 56));

  return v3;
}

uint64_t AADeviceProperty.objectWillChange.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + *(a2 + 56)) = a1;
}

uint64_t AADeviceProperty.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v11 = a1;
  v13 = "Fatal error";
  v14 = "Unexpectedly found nil while unwrapping an Optional value";
  v15 = "HeadphoneManager/AADevicePropertyWrapper.swift";
  v24 = 0;
  v22 = 0;
  v16 = *(a1 + 24);
  v25 = v16;
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v5 - v19;
  v24 = v2;
  v23[1] = *(v3 + 16);
  v21 = *(v2 + *(v3 + 52));

  if (v21)
  {
    v9 = v21;
    v8 = v21;
    v22 = v21;

    *v10 = v8;
  }

  else
  {
    (*(v17 + 16))(v20, v12, v16);
    HeadphonePropertyWrapperPublisher.init(_:)(v20, v16, v23);
    *(v12 + *(v11 + 52)) = v23[0];

    v7 = *(v12 + *(v11 + 52));

    if (v7)
    {
      v6 = v7;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    *v10 = v6;
  }

  return result;
}

uint64_t AADeviceProperty.configKeyPath.getter(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 60));

  return v3;
}

char *AADeviceProperty.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a7;
  v35 = a1;
  v34 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v37 = a6;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v44[5] = a5;
  v44[4] = a6;
  v32 = *(a6 - 8);
  v33 = a6 - 8;
  v27[0] = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v29 = v27 - v27[0];
  v44[0] = v7;
  v44[1] = v8;
  v44[2] = v9;
  v44[3] = v10;
  v27[3] = 0;
  v38 = type metadata accessor for AADeviceProperty(0, v44);
  v28 = (*(*(v38 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v35);
  v12 = v38;
  v13 = v27 - v28;
  v36 = v13;
  v43 = v27 - v28;
  v42 = v11;
  v41 = v14;
  v40 = v15;
  v30 = *v16;
  v39 = v30;
  *&v13[v38[13]] = v17;
  *&v13[v12[14]] = v17;

  v18 = v29;
  v19 = v32;
  v20 = v34;
  v21 = v37;
  *&v36[v38[15]] = v35;
  (*(v19 + 16))(v18, v20, v21);
  (*(v32 + 32))(v36, v29, v37);
  v22 = v31;
  v23 = v37;
  v24 = v38;
  v25 = v36;
  v36[v38[16]] = v30;
  outlined init with copy of AADeviceProperty<A, B>(v25, v22, v23, v24);
  (*(v32 + 8))(v34, v37);

  result = v36;
  outlined destroy of AADeviceProperty<A, B>(v36, v37, v38);
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t partial apply for closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  v2 = *(*(v1 + 24) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static AADeviceProperty.subscript.setter(a1, *(v1 + 48), *(v1 + 56), v1 + v3, *(v1 + v4), v1 + ((v4 + 8 + *(v2 + 80)) & ~*(v2 + 80)));
}

uint64_t outlined init with copy of AADeviceProperty<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  (*(*(a3 - 8) + 16))();
  v5 = a4[13];
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = a4[14];
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v10 = a4[15];
  v11 = *(a1 + v10);

  result = a2;
  *(a2 + v10) = v11;
  *(a2 + a4[16]) = *(a1 + a4[16]);
  return result;
}

uint64_t HeadphoneDataProvider.kDefaultsStorageIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier);

  return v2;
}

uint64_t HeadphoneDataProvider.defaultsObserver.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  outlined consume of DefaultsObserver??(v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void (*HeadphoneDataProvider.defaultsObserver.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HeadphoneDataProvider.defaultsObserver.getter();
  return HeadphoneDataProvider.defaultsObserver.modify;
}

void HeadphoneDataProvider.defaultsObserver.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    MEMORY[0x1E69E5928](*a1);
    HeadphoneDataProvider.defaultsObserver.setter(v2);
    outlined destroy of DefaultsObserver?(a1);
  }

  else
  {
    HeadphoneDataProvider.defaultsObserver.setter(*a1);
  }
}

uint64_t static HeadphoneDataProvider.shared.getter()
{
  v1 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t static HeadphoneDataProvider.shared.setter(uint64_t a1)
{
  v3 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t variable initialization expression of HeadphoneDataProvider.listeners()
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  return Set.init()();
}

uint64_t HeadphoneDataProvider.listeners.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.listeners.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t HeadphoneDataProvider.shouldShowMock.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMock);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDataProvider.shouldShowMockKey.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMockKey);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.shouldShowMockKey.setter(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMockKey);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t closure #1 in closure #1 in HeadphoneDataProvider.init()(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v12 = a1;
  v10 = a2;
  v11 = a3;
  outlined init with copy of Any(a1, v9);
  type metadata accessor for HeadphoneDevice(0);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    type metadata accessor for ReplayAudioAccessoryDevice();
    v4 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v5 = ReplayAudioAccessoryDevice.__allocating_init(withCBDevice:)(v4);
    a2();
    MEMORY[0x1E69E5920](v5);

    return MEMORY[0x1E69E5920](v6);
  }

  return result;
}

uint64_t closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v65 = a1;
  v66 = a2;
  v74 = a3;
  v75 = a4;
  v59 = partial apply for implicit closure #1 in closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler();
  v60 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
  v61 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v64 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v79 = 0;
  v72 = 0;
  v67 = type metadata accessor for Logger();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v71 = v27 - v70;
  v88 = v4;
  v89 = v5;
  v86 = v6;
  v87 = v7;
  type metadata accessor for JSONDecoder();
  v73 = JSONDecoder.__allocating_init()();
  v76 = type metadata accessor for ReplayData(v72);
  lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v77 = 0;
  v78 = 0;

  v57 = v85;
  v58 = v77;
  v55 = v77;
  v56 = v85;
  if (v85)
  {
    v54 = v56;
    v36 = v56;
    v79 = v56;

    v37 = v65;
    v38 = v66;
    v39 = v36;
  }

  else
  {
    v8 = v71;
    v9 = Logger.shared.unsafeMutableAddressor();
    (*(v68 + 16))(v8, v9, v67);
    outlined copy of Data._Representation(v74, v75);
    v42 = 32;
    v43 = 7;
    v10 = swift_allocObject();
    v11 = v75;
    v40 = v10;
    *(v10 + 16) = v74;
    *(v10 + 24) = v11;

    v12 = swift_allocObject();
    v13 = v40;
    v44 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v41 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v44;
    v45 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v45;
    v49 = v16;
    *(v16 + 16) = v61;
    *(v16 + 24) = v17;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v48 = _allocateUninitializedArray<A>(_:)();
    v50 = v18;

    v19 = v46;
    v20 = v50;
    *v50 = v62;
    v20[1] = v19;

    v21 = v47;
    v22 = v50;
    v50[2] = v63;
    v22[3] = v21;

    v23 = v49;
    v24 = v50;
    v50[4] = v64;
    v24[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v52, v53))
    {
      v25 = v55;
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0, v28, v28);
      v31 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v32 = &v84;
      v84 = v29;
      v33 = &v83;
      v83 = v30;
      v34 = &v82;
      v82 = v31;
      serialize(_:at:)(2, &v84);
      serialize(_:at:)(1, v32);
      v80 = v62;
      v81 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v80, v32, v33, v34);
      v35 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v80 = v63;
        v81 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
        v27[2] = 0;
        v80 = v64;
        v81 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
        _os_log_impl(&dword_1D93D0000, v52, v53, "HeadphoneManager-Replay: could not decode from JSONDecoder %s!", v29, 0xCu);
        destroyStorage<A>(_:count:)(v30, 0, v28);
        destroyStorage<A>(_:count:)(v31, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v29, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v52);
    (*(v68 + 8))(v71, v67);
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  return v37;
}

uint64_t implicit closure #1 in closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined copy of Data._Representation(a1, a2);
  result = a1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @guaranteed Data) -> (@owned (String, ReplayData)?)@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  return result;
}

void closure #2 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler()(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v37 = a7;
  v38 = a6;
  v39 = a5;
  v40 = a4;
  v41 = a3;
  v42 = a2;
  v43 = a1;
  v44 = 0;
  v55 = 0;
  v53 = 0;
  v48 = 0;
  v61 = a1;
  v62 = a2;
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v56 = a6;
  v57 = a7;
  v45 = (*(*a3 + 184))();
  if ((v7 & 1) == 0)
  {
    v36 = v45;
    v55 = v45;
    v54 = v45;
    v8 = String.init<A>(_:)();
    v33 = v9;
    v35 = (*((*v40 & *MEMORY[0x1E69E7D40]) + 0x160))(v8);
    v34 = v35;

    if (v35)
    {
      v32 = v34;
      v23 = v34;
      v53 = v34;

      CBDevice.replayDevice.setter(v41);

      v51[3] = MEMORY[0x1E69E6158];
      v51[0] = v43;
      v51[1] = v42;
      v26 = MEMORY[0x1E69E6158];
      __swift_project_boxed_opaque_existential_0(v51, MEMORY[0x1E69E6158]);
      v24 = *(v26 - 8);
      v25 = v24;
      v28 = &v12;
      MEMORY[0x1EEE9AC00](&v12);
      v27 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))();
      v29 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v25 + 8))(v27, v26);
      v31 = [v39 __swift_objectForKeyedSubscript_];
      v30 = v31;
      swift_unknownObjectRelease();
      if (v31)
      {
        v22 = v30;
        v21 = v30;
        v20 = &v46;
        _bridgeAnyObjectToAny(_:)();
        outlined init with take of Any(v20, &v49);
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0uLL;
        v50 = 0uLL;
      }

      v52[1] = v50;
      v52[0] = v49;
      if (*(&v50 + 1))
      {
        type metadata accessor for HeadphoneReplayDevice(0);
        if (swift_dynamicCast())
        {
          v18 = v47;
        }

        else
        {
          v18 = 0;
        }

        v17 = v18;
        __swift_destroy_boxed_opaque_existential_0(v51);
        v19 = v17;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v51);
        outlined destroy of Any?(v52);
        v19 = 0;
      }

      v16 = v19;
      if (v19)
      {
        v15 = v16;
        v14 = v16;
        v48 = v16;
        (*((*v16 & *MEMORY[0x1E69E7D40]) + 0xC88))(v41);
      }

      type metadata accessor for ReplayAudioAccessoryDevice();
      v11 = v23;
      v13 = ReplayAudioAccessoryDevice.__allocating_init(withCBDevice:)(v23);
      v38();
    }
  }
}

uint64_t HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v182 = a1;
  v183 = a2;
  v174 = a3;
  v175 = a4;
  v156 = partial apply for implicit closure #2 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:);
  v157 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v158 = closure #1 in OSLogArguments.append(_:)partial apply;
  v159 = closure #1 in OSLogArguments.append(_:)partial apply;
  v160 = closure #1 in OSLogArguments.append(_:)partial apply;
  v161 = partial apply for implicit closure #1 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:);
  v162 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_10;
  v163 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_10;
  v164 = closure #1 in OSLogArguments.append(_:)partial apply;
  v165 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_10;
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  v214 = 0;
  v166 = 0;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v204 = 0;
  v199 = 0;
  v200 = 0;
  v190 = 0;
  v176 = 0;
  v167 = type metadata accessor for Logger();
  v168 = *(v167 - 8);
  v169 = v167 - 8;
  v170 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v171 = &v53 - v170;
  v172 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v53 - v172;
  v177 = type metadata accessor for URL();
  v178 = *(v177 - 8);
  v179 = v177 - 8;
  v180 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v176);
  v181 = &v53 - v180;
  v217 = v7;
  v218 = v8;
  v215 = v9;
  v216 = v10;
  v214 = v4;
  type metadata accessor for NSBundle();
  swift_getObjectType();
  v187 = @nonobjc NSBundle.__allocating_init(for:)();

  v186 = MEMORY[0x1DA730940](v182, v183);

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("data", 4uLL, 1);
  object = v11._object;
  v185 = MEMORY[0x1DA730940](v11._countAndFlagsBits);

  v188 = [v187 pathForResource:v186 ofType:v185];
  MEMORY[0x1E69E5920](v185);
  MEMORY[0x1E69E5920](v186);
  MEMORY[0x1E69E5920](v187);
  if (v188)
  {
    v155 = v188;
    v150 = v188;
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v12;
    MEMORY[0x1E69E5920](v150);
    v153 = v151;
    v154 = v152;
  }

  else
  {
    v153 = 0;
    v154 = 0;
  }

  v148 = v154;
  v149 = v153;
  if (v154)
  {
    v146 = v149;
    v147 = v148;
    v13 = v166;
    v140 = v148;
    v207 = v149;
    v208 = v148;
    URL.init(fileURLWithPath:)();
    default argument 1 of Data.init(contentsOf:options:)();
    v14 = Data.init(contentsOf:options:)();
    v141 = v13;
    v142 = v14;
    v143 = v15;
    v144 = v13;
    if (v13)
    {
      v55 = v144;
      v56 = 0;
      (*(v178 + 8))(v181, v177);

      v137 = 0;
      v138 = 0xF000000000000000;
      v139 = v56;
    }

    else
    {
      v136 = v143;
      v135 = v142;
      (*(v178 + 8))(v181, v177);
      v137 = v135;
      v138 = v136;
      v139 = v141;
    }

    v132 = v139;
    v133 = v138;
    v134 = v137;
    if ((v138 & 0xF000000000000000) == 0xF000000000000000)
    {

      v145 = v132;
    }

    else
    {
      v130 = v134;
      v131 = v133;
      v125 = v133;
      v126 = v134;
      v205 = v134;
      v206 = v133;
      v127 = objc_opt_self();
      outlined copy of Data._Representation(v126, v125);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v126, v125);
      v129 = [v127 unarchiveObjectWithData_];
      MEMORY[0x1E69E5920](isa);
      if (v129)
      {
        v124 = v129;
        v123 = v129;
        v122 = v189;
        _bridgeAnyObjectToAny(_:)();
        outlined init with take of Any(v122, &v201);
        swift_unknownObjectRelease();
      }

      else
      {
        v201 = 0uLL;
        v202 = 0uLL;
      }

      v203[0] = v201;
      v203[1] = v202;
      if (*(&v202 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, _sSDys11AnyHashableVypGMR);
        if (swift_dynamicCast())
        {
          v121 = v189[4];
        }

        else
        {
          v121 = 0;
        }

        v120 = v121;
      }

      else
      {
        outlined destroy of Any?(v203);
        v120 = 0;
      }

      v119 = v120;
      if (v120)
      {
        v118 = v119;
        v16 = v132;
        v204 = v119;

        v109 = Data.init(hexString:)(v174, v175);
        v110 = v17;
        v199 = v109;
        v200 = v17;
        v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("btAd", 4uLL, 1);
        v113 = &v198;
        v198 = v18;
        v111 = &v197;
        _convertToAnyHashable<A>(_:)();
        outlined copy of Data._Representation(v109, v110);
        v112 = v196;
        v196[3] = MEMORY[0x1E6969080];
        v196[0] = v109;
        v196[1] = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, _sSDys11AnyHashableVypGMR);
        Dictionary.subscript.setter();
        outlined destroy of String(v113);
        type metadata accessor for CBDevice();
        v114 = v204;

        v19 = CBDevice.__allocating_init(dictionary:)(v114);
        v115 = v16;
        v116 = v19;
        v117 = v16;
        if (v16)
        {
          v54 = 0;

          v107 = 0;
          v108 = v54;
        }

        else
        {
          v107 = v116;
          v108 = 0;
        }

        v105 = v108;
        v106 = v107;
        if (v107)
        {
          v104 = v106;
          v102 = v106;
          v190 = v106;
          outlined consume of Data._Representation(v109, v110);
          outlined destroy of [AnyHashable : Any](&v204);
          outlined consume of Data._Representation(v126, v125);

          return v102;
        }

        else
        {
          v20 = v173;
          v21 = Logger.shared.unsafeMutableAddressor();
          (*(v168 + 16))(v20, v21, v167);

          v90 = 32;
          v91 = 7;
          v22 = swift_allocObject();
          v23 = v183;
          v92 = v22;
          *(v22 + 16) = v182;
          *(v22 + 24) = v23;
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();
          v89 = 17;
          v94 = swift_allocObject();
          *(v94 + 16) = 32;
          v95 = swift_allocObject();
          *(v95 + 16) = 8;
          v24 = swift_allocObject();
          v25 = v92;
          v93 = v24;
          *(v24 + 16) = v156;
          *(v24 + 24) = v25;
          v26 = swift_allocObject();
          v27 = v93;
          v97 = v26;
          *(v26 + 16) = v157;
          *(v26 + 24) = v27;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v96 = _allocateUninitializedArray<A>(_:)();
          v98 = v28;

          v29 = v94;
          v30 = v98;
          *v98 = v158;
          v30[1] = v29;

          v31 = v95;
          v32 = v98;
          v98[2] = v159;
          v32[3] = v31;

          v33 = v97;
          v34 = v98;
          v98[4] = v160;
          v34[5] = v33;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v100, v101))
          {
            v35 = v105;
            v82 = static UnsafeMutablePointer.allocate(capacity:)();
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v83 = createStorage<A>(capacity:type:)(0, v81, v81);
            v84 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v85 = &v195;
            v195 = v82;
            v86 = &v194;
            v194 = v83;
            v87 = &v193;
            v193 = v84;
            serialize(_:at:)(2, &v195);
            serialize(_:at:)(1, v85);
            v191 = v158;
            v192 = v94;
            closure #1 in osLogInternal(_:log:type:)(&v191, v85, v86, v87);
            v88 = v35;
            if (v35)
            {

              __break(1u);
            }

            else
            {
              v191 = v159;
              v192 = v95;
              closure #1 in osLogInternal(_:log:type:)(&v191, &v195, &v194, &v193);
              v80 = 0;
              v191 = v160;
              v192 = v97;
              closure #1 in osLogInternal(_:log:type:)(&v191, &v195, &v194, &v193);
              _os_log_impl(&dword_1D93D0000, v100, v101, "HeadphoneManager-Replay: could not inflate %s!", v82, 0xCu);
              destroyStorage<A>(_:count:)(v83, 0, v81);
              destroyStorage<A>(_:count:)(v84, 1, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v82, MEMORY[0x1E69E7508]);
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v100);
          (*(v168 + 8))(v173, v167);
          outlined consume of Data._Representation(v109, v110);
          outlined destroy of [AnyHashable : Any](&v204);
          outlined consume of Data._Representation(v126, v125);

          return 0;
        }
      }

      outlined consume of Data._Representation(v126, v125);

      v145 = v132;
    }
  }

  else
  {
    v145 = v166;
  }

  v36 = v171;
  v66 = v145;
  v37 = Logger.shared.unsafeMutableAddressor();
  (*(v168 + 16))(v36, v37, v167);

  v68 = 32;
  v69 = 7;
  v38 = swift_allocObject();
  v39 = v183;
  v70 = v38;
  *(v38 + 16) = v182;
  *(v38 + 24) = v39;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  v67 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v40 = swift_allocObject();
  v41 = v70;
  v71 = v40;
  *(v40 + 16) = v161;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v71;
  v75 = v42;
  *(v42 + 16) = v162;
  *(v42 + 24) = v43;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v74 = _allocateUninitializedArray<A>(_:)();
  v76 = v44;

  v45 = v72;
  v46 = v76;
  *v76 = v163;
  v46[1] = v45;

  v47 = v73;
  v48 = v76;
  v76[2] = v164;
  v48[3] = v47;

  v49 = v75;
  v50 = v76;
  v76[4] = v165;
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v78, v79))
  {
    v51 = v66;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v60 = createStorage<A>(capacity:type:)(0, v58, v58);
    v61 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v62 = &v213;
    v213 = v59;
    v63 = &v212;
    v212 = v60;
    v64 = &v211;
    v211 = v61;
    serialize(_:at:)(2, &v213);
    serialize(_:at:)(1, v62);
    v209 = v163;
    v210 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v209, v62, v63, v64);
    v65 = v51;
    if (v51)
    {

      __break(1u);
    }

    else
    {
      v209 = v164;
      v210 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v209, &v213, &v212, &v211);
      v57 = 0;
      v209 = v165;
      v210 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v209, &v213, &v212, &v211);
      _os_log_impl(&dword_1D93D0000, v78, v79, "HeadphoneManager-Replay: could not unarchive %s!", v59, 0xCu);
      destroyStorage<A>(_:count:)(v60, 0, v58);
      destroyStorage<A>(_:count:)(v61, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v59, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v78);
  (*(v168 + 8))(v171, v167);
  return 0;
}

unint64_t type metadata accessor for NSBundle()
{
  v2 = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSBundle);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSBundle.__allocating_init(for:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t default argument 1 of Data.init(contentsOf:options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataReadingOptionsV_Tt0gq5(0);

  return 0;
}

id CBDevice.__allocating_init(dictionary:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = @nonobjc CBDevice.init(dictionary:)(a1);
  if (v4)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

id HeadphoneDataProvider.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc CBDevice.init(dictionary:)(uint64_t a1)
{
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, "\\1");
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v5 = [v3 initWithDictionary:v4.super.isa error:v6];
  MEMORY[0x1E69E5928](0);
  MEMORY[0x1E69E5920](0);
  if (v5)
  {
    MEMORY[0x1E69E5920](v4.super.isa);

    return v5;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    MEMORY[0x1E69E5920](v4.super.isa);

    return v2;
  }
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataReadingOptionsV_Tt0gq5(uint64_t result)
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

    type metadata accessor for NSDataReadingOptions(0);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void *outlined destroy of DefaultsObserver??(void *a1)
{
  if (*a1 != 1)
  {
    MEMORY[0x1E69E5920](*a1);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, "\\1");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSDataReadingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSDataReadingOptions;
  if (!lazy cache variable for type metadata for NSDataReadingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataReadingOptions);
      return v2;
    }
  }

  return v5;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1()
{
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v1 = lazy protocol witness table accessor for type Data and conformance Data();
  v2 = MEMORY[0x1E6969080];

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v4, v2, v1);
}

unint64_t lazy protocol witness table accessor for type [Any] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Any] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Any] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayypGMd, &_sSayypGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Any] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t one-time initialization function for none()
{
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16HeadphoneManager16FeatureOptionSetVGMd, "&1");
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type [FeatureOptionSet] and conformance [A]();
  return SetAlgebra.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet()
{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [FeatureOptionSet] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [FeatureOptionSet] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FeatureOptionSet] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16HeadphoneManager16FeatureOptionSetVGMd, "&1");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [FeatureOptionSet] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *FeatureOptionSet.none.unsafeMutableAddressor()
{
  if (one-time initialization token for none != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.none;
}

int *FeatureOptionSet.rename.unsafeMutableAddressor()
{
  if (one-time initialization token for rename != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.rename;
}

int *FeatureOptionSet.doubleTap.unsafeMutableAddressor()
{
  if (one-time initialization token for doubleTap != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.doubleTap;
}

int *FeatureOptionSet.doubleTapEnhanced.unsafeMutableAddressor()
{
  if (one-time initialization token for doubleTapEnhanced != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.doubleTapEnhanced;
}

int *FeatureOptionSet.inEarDetection.unsafeMutableAddressor()
{
  if (one-time initialization token for inEarDetection != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.inEarDetection;
}

int *FeatureOptionSet.mic.unsafeMutableAddressor()
{
  if (one-time initialization token for mic != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.mic;
}

int *FeatureOptionSet.headDetection.unsafeMutableAddressor()
{
  if (one-time initialization token for headDetection != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.headDetection;
}

int *FeatureOptionSet.transparency.unsafeMutableAddressor()
{
  if (one-time initialization token for transparency != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.transparency;
}

int *FeatureOptionSet.anc.unsafeMutableAddressor()
{
  if (one-time initialization token for anc != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.anc;
}

int *FeatureOptionSet.untethered.unsafeMutableAddressor()
{
  if (one-time initialization token for untethered != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.untethered;
}

void *one-time initialization function for all()
{
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = *FeatureOptionSet.rename.unsafeMutableAddressor();
  v2[1] = *FeatureOptionSet.doubleTap.unsafeMutableAddressor();
  v2[2] = *FeatureOptionSet.doubleTapEnhanced.unsafeMutableAddressor();
  v2[3] = *FeatureOptionSet.inEarDetection.unsafeMutableAddressor();
  v2[4] = *FeatureOptionSet.mic.unsafeMutableAddressor();
  v2[5] = *FeatureOptionSet.headDetection.unsafeMutableAddressor();
  v2[6] = *FeatureOptionSet.transparency.unsafeMutableAddressor();
  v2[7] = *FeatureOptionSet.anc.unsafeMutableAddressor();
  v2[8] = *FeatureOptionSet.untethered.unsafeMutableAddressor();
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  return SetAlgebra<>.init(arrayLiteral:)();
}

void *FeatureOptionSet.all.unsafeMutableAddressor()
{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.all;
}

void *one-time initialization function for Replay_B698()
{
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = *FeatureOptionSet.rename.unsafeMutableAddressor();
  v2[1] = *FeatureOptionSet.inEarDetection.unsafeMutableAddressor();
  v2[2] = *FeatureOptionSet.mic.unsafeMutableAddressor();
  v2[3] = *FeatureOptionSet.transparency.unsafeMutableAddressor();
  v2[4] = *FeatureOptionSet.untethered.unsafeMutableAddressor();
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  return SetAlgebra<>.init(arrayLiteral:)();
}

void *FeatureOptionSet.Replay_B698.unsafeMutableAddressor()
{
  if (one-time initialization token for Replay_B698 != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.Replay_B698;
}

void *one-time initialization function for Replay_Beats_B607()
{
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = *FeatureOptionSet.rename.unsafeMutableAddressor();
  v2[1] = *FeatureOptionSet.inEarDetection.unsafeMutableAddressor();
  v2[2] = *FeatureOptionSet.mic.unsafeMutableAddressor();
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  return SetAlgebra<>.init(arrayLiteral:)();
}

void *FeatureOptionSet.Replay_Beats_B607.unsafeMutableAddressor()
{
  if (one-time initialization token for Replay_Beats_B607 != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.Replay_Beats_B607;
}

uint64_t protocol witness for SetAlgebra.init() in conformance FeatureOptionSet(uint64_t a1)
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance FeatureOptionSet(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance FeatureOptionSet(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance FeatureOptionSet(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance FeatureOptionSet(uint64_t a1@<X8>)
{
  FeatureOptionSet.init(rawValue:)();
  *a1 = v1;
  *(a1 + 4) = 0;
}

uint64_t HeadphoneReplayDevice.replayDevice.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneReplayDevice.replayDevice.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t HeadphoneReplayDevice.listeners.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneReplayDevice.listeners.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t HeadphoneReplayDevice.init(cbDevice:)(uint64_t a1)
{
  *OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice = 0;
  v2 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_listeners;
  type metadata accessor for AnyCancellable();
  *v2 = Array.init()();
  MEMORY[0x1E69E5928](a1);
  v6 = HeadphoneDevice.init(cbDevice:)(a1);
  MEMORY[0x1E69E5928](v6);
  v4 = CBDevice.replayDevice.getter();
  v3 = (v6 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice);
  swift_beginAccess();
  *v3 = v4;

  swift_endAccess();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v6;
}

uint64_t HeadphoneReplayDevice.name.getter()
{
  v14 = v0;
  v11 = HeadphoneReplayDevice.replayDevice.getter();
  if (v11)
  {
    v1 = v11;

    outlined destroy of ReplayData?(&v11);
    v5 = (*(*v1 + 400))();
    v6 = v2;

    v7 = v5;
    v8 = v6;
  }

  else
  {
    outlined destroy of ReplayData?(&v11);
    v7 = 0;
    v8 = 0;
  }

  v9 = v7;
  v10 = v8;
  (MEMORY[0x1E69E5928])();
  if (v8)
  {
    v12 = v9;
    v13 = v10;
  }

  else
  {
    (MEMORY[0x1E69E5928])();
    v12 = HeadphoneDevice.name.getter();
    v13 = v3;
    (MEMORY[0x1E69E5920])();
  }

  (MEMORY[0x1E69E5920])();
  return v12;
}

uint64_t HeadphoneReplayDevice.name.setter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](v2);
  HeadphoneDevice.name.setter(a1, a2);
  return (MEMORY[0x1E69E5920])();
}

void (*HeadphoneReplayDevice.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = HeadphoneReplayDevice.name.getter();
  a1[1] = v2;
  return HeadphoneReplayDevice.name.modify;
}

void HeadphoneReplayDevice.name.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    HeadphoneReplayDevice.name.setter(v2, v3);
    outlined destroy of String(a1);
  }

  else
  {
    HeadphoneReplayDevice.name.setter(*a1, a1[1]);
  }
}

uint64_t HeadphoneReplayDevice.accessorySettingFeatureBitMask.getter()
{
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x240))();
  [v3 productID];
  MEMORY[0x1E69E5920](v3);
  type metadata accessor for CBProductID(0);
  lazy protocol witness table accessor for type CBProductID and conformance CBProductID();
  if (== infix<A>(_:_:)())
  {
    return *FeatureOptionSet.Replay_B698.unsafeMutableAddressor();
  }

  else
  {
    return *FeatureOptionSet.Replay_Beats_B607.unsafeMutableAddressor();
  }
}

uint64_t HeadphoneReplayDevice.accessorySettingFeatureBitMask.setter(int a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.accessorySettingFeatureBitMask.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.accessorySettingFeatureBitMask.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.accessorySettingFeatureBitMask.getter();
  return HeadphoneReplayDevice.accessorySettingFeatureBitMask.modify;
}

uint64_t HeadphoneReplayDevice.deviceColor.getter()
{
  v11 = v0;
  v10 = HeadphoneReplayDevice.replayDevice.getter();
  if (v10)
  {
    v1 = v10;

    outlined destroy of ReplayData?(&v10);
    v2 = (*(*v1 + 424))();
    v7 = v2;
    v6 = BYTE4(v2);

    v8 = v7;
    v9 = v6;
  }

  else
  {
    outlined destroy of ReplayData?(&v10);
    v8 = 0;
    v9 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v9)
  {
    (MEMORY[0x1E69E5928])();
    v4 = HeadphoneDevice.deviceColor.getter();
    (MEMORY[0x1E69E5920])();
    v5 = v4;
  }

  else
  {
    v5 = v8;
  }

  (MEMORY[0x1E69E5920])();
  return v5;
}

uint64_t HeadphoneReplayDevice.deviceColor.setter(int a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.deviceColor.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.deviceColor.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.deviceColor.getter();
  return HeadphoneReplayDevice.deviceColor.modify;
}

uint64_t HeadphoneReplayDevice.productInfo.getter()
{
  MEMORY[0x1E69E5928](v0);
  v2 = HeadphoneDevice.productInfo.getter();
  (MEMORY[0x1E69E5920])();
  return v2;
}

uint64_t HeadphoneReplayDevice.productInfo.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.productInfo.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.productInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HeadphoneReplayDevice.productInfo.getter();
  return HeadphoneReplayDevice.productInfo.modify;
}

uint64_t HeadphoneReplayDevice.productInfo.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return HeadphoneReplayDevice.productInfo.setter(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  HeadphoneReplayDevice.productInfo.setter(v3);
  return MEMORY[0x1E69E5920](*a1);
}

float HeadphoneReplayDevice.batteryLevelMain.getter()
{
  v11 = v0;
  v10 = HeadphoneReplayDevice.replayDevice.getter();
  if (v10)
  {
    v1 = v10;

    outlined destroy of ReplayData?(&v10);
    v2 = (*(*v1 + 376))();
    v7 = *&v2;
    v6 = BYTE4(v2);

    v8 = v7;
    v9 = v6;
  }

  else
  {
    outlined destroy of ReplayData?(&v10);
    v8 = 0.0;
    v9 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v9)
  {
    (MEMORY[0x1E69E5928])();
    v4 = HeadphoneDevice.batteryLevelMain.getter();
    (MEMORY[0x1E69E5920])();
    v5 = v4;
  }

  else
  {
    v5 = v8;
  }

  (MEMORY[0x1E69E5920])();
  return v5;
}

uint64_t HeadphoneReplayDevice.batteryLevelMain.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.batteryLevelMain.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelMain.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelMain.getter();
  return HeadphoneReplayDevice.batteryLevelMain.modify;
}

float HeadphoneReplayDevice.batteryLevelCase.getter()
{
  v11 = v0;
  v10 = HeadphoneReplayDevice.replayDevice.getter();
  if (v10)
  {
    v1 = v10;

    outlined destroy of ReplayData?(&v10);
    v2 = (*(*v1 + 304))();
    v7 = *&v2;
    v6 = BYTE4(v2);

    v8 = v7;
    v9 = v6;
  }

  else
  {
    outlined destroy of ReplayData?(&v10);
    v8 = 0.0;
    v9 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v9)
  {
    (MEMORY[0x1E69E5928])();
    v4 = HeadphoneDevice.batteryLevelCase.getter();
    (MEMORY[0x1E69E5920])();
    v5 = v4;
  }

  else
  {
    v5 = v8;
  }

  (MEMORY[0x1E69E5920])();
  return v5;
}

uint64_t HeadphoneReplayDevice.batteryLevelCase.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.batteryLevelCase.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelCase.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelCase.getter();
  return HeadphoneReplayDevice.batteryLevelCase.modify;
}

float HeadphoneReplayDevice.batteryLevelLeft.getter()
{
  v11 = v0;
  v10 = HeadphoneReplayDevice.replayDevice.getter();
  if (v10)
  {
    v1 = v10;

    outlined destroy of ReplayData?(&v10);
    v2 = (*(*v1 + 328))();
    v7 = *&v2;
    v6 = BYTE4(v2);

    v8 = v7;
    v9 = v6;
  }

  else
  {
    outlined destroy of ReplayData?(&v10);
    v8 = 0.0;
    v9 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v9)
  {
    (MEMORY[0x1E69E5928])();
    v4 = HeadphoneDevice.batteryLevelLeft.getter();
    (MEMORY[0x1E69E5920])();
    v5 = v4;
  }

  else
  {
    v5 = v8;
  }

  (MEMORY[0x1E69E5920])();
  return v5;
}

uint64_t HeadphoneReplayDevice.batteryLevelLeft.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.batteryLevelLeft.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelLeft.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelLeft.getter();
  return HeadphoneReplayDevice.batteryLevelLeft.modify;
}

float HeadphoneReplayDevice.batteryLevelRight.getter()
{
  v11 = v0;
  v10 = HeadphoneReplayDevice.replayDevice.getter();
  if (v10)
  {
    v1 = v10;

    outlined destroy of ReplayData?(&v10);
    v2 = (*(*v1 + 352))();
    v7 = *&v2;
    v6 = BYTE4(v2);

    v8 = v7;
    v9 = v6;
  }

  else
  {
    outlined destroy of ReplayData?(&v10);
    v8 = 0.0;
    v9 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v9)
  {
    (MEMORY[0x1E69E5928])();
    v4 = HeadphoneDevice.batteryLevelRight.getter();
    (MEMORY[0x1E69E5920])();
    v5 = v4;
  }

  else
  {
    v5 = v8;
  }

  (MEMORY[0x1E69E5920])();
  return v5;
}

uint64_t HeadphoneReplayDevice.batteryLevelRight.setter(float a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.batteryLevelRight.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelRight.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelRight.getter();
  return HeadphoneReplayDevice.batteryLevelRight.modify;
}

Swift::Void __swiftcall HeadphoneReplayDevice.captureCBDeviceData()()
{
  v143 = *MEMORY[0x1E69E9840];
  v101 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v131 = 0;
  v82 = 0;
  v139 = 0;
  v138 = 0;
  v83 = type metadata accessor for Logger();
  v84 = *(v83 - 8);
  v85 = v84;
  MEMORY[0x1EEE9AC00](0);
  v86 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for URL();
  v87 = v114;
  v88 = *(v114 - 8);
  v112 = v88;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v114 - 8);
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v30 - v90;
  MEMORY[0x1EEE9AC00](&v30 - v90);
  v113 = &v30 - v90;
  v91 = &v30 - v90;
  v137 = &v30 - v90;
  v136 = v0;
  v92 = [objc_opt_self() defaultManager];
  v102 = 1;
  v111 = 1;
  v93 = [v92 URLsForDirectory:9 inDomains:?];

  v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v95;
  v135 = v95;

  Array.subscript.getter();
  v133 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v134 = v2;
  v100 = "";
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v101, v102);
  object = v3._object;
  v104 = &v133;
  MEMORY[0x1DA7310D0](v3._countAndFlagsBits);
  v4 = v124;

  v5 = v4;
  v6 = *v4;
  v123 = MEMORY[0x1E69E7D40];
  v97 = (*((v6 & *MEMORY[0x1E69E7D40]) + 0x228))(v5);

  v98 = [v97 productID];
  v132 = v98;
  v99 = type metadata accessor for CBProductID(v101);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v100, v101, v102);
  v103 = v7._object;
  MEMORY[0x1DA7310D0](v7._countAndFlagsBits);

  v106 = v133;
  v105 = v134;

  outlined destroy of DefaultStringInterpolation(v104);
  MEMORY[0x1DA7309B0](v106, v105);
  v107 = v8;
  URL.appendingPathComponent(_:)();
  v9 = v124;

  v109 = *(v112 + 8);
  v110 = (v112 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v109(v108, v114);
  v117 = MEMORY[0x1E69E7CA0] + 8;
  v118 = _allocateUninitializedArray<A>(_:)();
  v10[3] = v114;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  v115 = *(v112 + 16);
  v116 = (v112 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v115(boxed_opaque_existential_0, v113, v114);
  _finalizeUninitializedArray<A>(_:)();
  v122 = v12;
  v119 = default argument 1 of print(_:separator:terminator:)();
  v121 = v13;
  default argument 2 of print(_:separator:terminator:)();
  v120 = v14;
  print(_:separator:terminator:)();

  v15 = v9;
  v125 = (*((*v9 & *v123) + 0x228))(v15);

  v127 = [v125 dictionaryRepresentation];
  v126 = v127;

  if (v127)
  {
    v81 = v126;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v79 = v81;
  v131 = v81;
  v142 = 0;
  v76 = objc_opt_self();
  v16 = v79;
  v130 = v142;
  v80 = [v76 archivedDataWithRootObject:v79 requiringSecureCoding:0 error:&v130];
  v77 = v80;
  v78 = v130;
  v17 = v130;
  v18 = v142;
  v142 = v78;

  swift_unknownObjectRelease();
  if (v80)
  {
    v75 = v77;
    v19 = v82;
    v62 = v77;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v20;
    v63 = v71;
    v64 = v20;
    v138 = v71;
    v139 = v20;

    v65 = MEMORY[0x1E69E7CA0] + 8;
    v66 = _allocateUninitializedArray<A>(_:)();
    v21[3] = v87;
    v22 = __swift_allocate_boxed_opaque_existential_0(v21);
    v115(v22, v91, v87);
    _finalizeUninitializedArray<A>(_:)();
    v70 = v23;
    v67 = default argument 1 of print(_:separator:terminator:)();
    v69 = v24;
    default argument 2 of print(_:separator:terminator:)();
    v68 = v25;
    print(_:separator:terminator:)();

    default argument 1 of Data.write(to:options:)();
    Data.write(to:options:)();
    v73 = v19;
    v74 = v19;
    if (!v19)
    {
      outlined consume of Data._Representation(v63, v64);

      v109(v91, v87);

      v61 = v73;
      return;
    }

    v31 = v74;
    v32 = 0;
    outlined consume of Data._Representation(v63, v64);

    v109(v91, v87);

    v53 = v31;
    v52 = v32;
  }

  else
  {
    v33 = v142;
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = 0;

    v109(v91, v87);

    v53 = v34;
    v52 = v35;
  }

  v26 = v86;
  v54 = v52;
  v55 = v53;
  v27 = Logger.shared.unsafeMutableAddressor();
  (*(v85 + 16))(v26, v27, v83);
  v59 = Logger.logObject.getter();
  v56 = v59;
  v58 = static os_log_type_t.default.getter();
  v57 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v60 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v59, v58))
  {
    v28 = v54;
    v43 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = v43;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = 0;
    v44 = createStorage<A>(capacity:type:)(0, v40, v40);
    v42 = v44;
    v45 = createStorage<A>(capacity:type:)(v41, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v129 = v43;
    v141 = v44;
    v140 = v45;
    v46 = 0;
    v47 = &v129;
    serialize(_:at:)(0, &v129);
    serialize(_:at:)(v46, v47);
    v128 = v60;
    v48 = &v145;
    MEMORY[0x1EEE9AC00](&v145);
    v49 = var20;
    var20[2] = v29;
    var20[3] = &v141;
    var20[4] = &v140;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v51 = v28;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v56, v57, "HeadphoneManager-Replay: capture device data failed!", v39, 2u);
      v37 = 0;
      destroyStorage<A>(_:count:)(v42, 0, v40);
      destroyStorage<A>(_:count:)(v45, v37, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v39, MEMORY[0x1E69E7508]);

      v38 = v51;
    }
  }

  else
  {

    v38 = v54;
  }

  v36 = v38;

  (*(v85 + 8))(v86, v83);
  v61 = v36;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t default argument 1 of Data.write(to:options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataWritingOptionsV_Tt0gq5(0);

  return 0;
}

id HeadphoneReplayDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneReplayDevice(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HeadphoneReplayDevice(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for HeadphoneReplayDevice;
  if (!type metadata singleton initialization cache for HeadphoneReplayDevice)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for HeadphoneReplayDevice(uint64_t a1)
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataWritingOptionsV_Tt0gq5(uint64_t result)
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

    type metadata accessor for NSDataWritingOptions(0);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t type metadata accessor for NSDataWritingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSDataWritingOptions;
  if (!lazy cache variable for type metadata for NSDataWritingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataWritingOptions);
      return v2;
    }
  }

  return v5;
}

uint64_t DefaultFeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t DefaultFeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  MEMORY[0x1E69E5928](a2);
  *(v2 + 24) = a2;
  MEMORY[0x1E69E5920](a2);
  return v2;
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance DefaultFeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t B698FeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B698FeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8212 || a1 == 8228)
  {
    *(v6 + 16) = a1;
    MEMORY[0x1E69E5928](a2);
    *(v6 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v6;
  }

  else
  {
    type metadata accessor for B698FeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B698FeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t B768FeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B768FeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8217 || a1 == 8219)
  {
    *(v6 + 16) = a1;
    MEMORY[0x1E69E5928](a2);
    *(v6 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v6;
  }

  else
  {
    type metadata accessor for B768FeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B768FeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t B788FeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B788FeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8231 || a1 == 8232)
  {
    *(v6 + 16) = a1;
    MEMORY[0x1E69E5928](a2);
    *(v6 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v6;
  }

  else
  {
    type metadata accessor for B788FeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B788FeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t Binding._optional<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v34 = partial apply for closure #1 in Binding._optional<A>();
  v35 = partial apply for closure #2 in Binding._optional<A>();
  v54 = 0;
  v53 = 0;
  v36 = *(a1 - 8);
  v37 = v36;
  v38 = *(v36 + 64);
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v22 - v39;
  v42 = *(v3 + 16);
  v41 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v22 - v41;
  v52 = *(v42 + 16);
  v55 = v52;
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v43 = v49;
  v45 = *(v49 + 64);
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v46 = &v22 - v44;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v22 - v47;
  v54 = &v22 - v47;
  v53 = v2;
  MEMORY[0x1DA7306D0](v6);
  if ((*(v49 + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of A1?(v51, v52);
    v21 = type metadata accessor for Binding();
    return (*(*(v21 - 8) + 56))(v31, 1);
  }

  else
  {
    v22 = v43;
    v25 = *(v49 + 32);
    v24 = v49 + 32;
    v25(v48, v51, v52);
    (*(v49 + 16))(v46, v48, v52);
    v23 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v26 = 7;
    v7 = swift_allocObject();
    v8 = v23;
    v9 = v46;
    v10 = v25;
    v11 = v52;
    v28 = v7;
    v30 = 0;
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v11;
    v10(v7 + v8, v9);
    outlined init with copy of Binding<A1?>(v33, v40, v52, v42, v32);
    v27 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v12 = swift_allocObject();
    v13 = v27;
    v14 = v42;
    v15 = v32;
    v16 = v52;
    v17 = v12;
    v18 = v40;
    v29 = v17;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v16;
    outlined init with take of Binding<A1?>(v18, &v17[v13], v16, v14, v15);
    Binding.init(get:set:)();
    v19 = type metadata accessor for Binding();
    (*(*(v19 - 8) + 56))(v31, 0, 1);
    return (*(v49 + 8))(v48, v52);
  }
}

uint64_t outlined destroy of A1?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t closure #2 in Binding._optional<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[1] = a1;
  v13 = a5;
  v18 = 0;
  v17 = 0;
  v19 = a5;
  v14 = 0;
  v15 = type metadata accessor for Optional();
  v10 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v16 = v9 - v10;
  v18 = v6;
  v17 = a4;
  v11 = *(v7 - 8);
  v12 = v7 - 8;
  (*(v11 + 16))();
  (*(v11 + 56))(v16, 0, 1, v13);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

char *outlined init with copy of Binding<A1?>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;

  *a2 = v7;
  v10 = *(a1 + 1);

  *(a2 + 1) = v10;
  v13 = *(a5 + 32);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(&a1[v13], 1))
  {
    memcpy(&a2[v13], &a1[v13], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))();
    (*(v14 + 56))(&a2[v13], 0, 1, a3);
  }

  return a2;
}

char *outlined init with take of Binding<A1?>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v10 = *(a5 + 32);
  v11 = *(a3 - 8);
  if ((*(v11 + 48))(&a1[v10], 1))
  {
    memcpy(&a2[v10], &a1[v10], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(&a2[v10], 0, 1, a3);
  }

  return a2;
}

uint64_t partial apply for closure #2 in Binding._optional<A>()(uint64_t a1)
{
  v7 = v1[4];
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1 + ((*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80));

  return closure #2 in Binding._optional<A>()(a1, v3, v4, v5, v7);
}

uint64_t ==? infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v12 = a2;
  v16 = a3;
  v13 = a4;
  v20 = 0;
  v19 = 0;
  v21 = a3;
  v14 = *(a3 - 8);
  v15 = a3 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a2);
  v17 = &v6 - v9;
  v20 = v4;
  v19 = v12;
  v10 = *(v14 + 16);
  v11 = v14 + 16;
  v10();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v14 + 8))(v17, v16);
  if (v18)
  {
    v7 = 0;
  }

  else
  {
    (v10)(v17, v12, v16);
    (*(v14 + 40))(v8, v17, v16);
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t HeadphonePropertyWrapperPublisher.didSet.getter(uint64_t a1)
{
  v13 = a1;
  v9 = &protocol conformance descriptor for HeadphonePropertyWrapperPublisher<A>;
  v18 = MEMORY[0x1E695BE98];
  v25 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, _sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v7 - v8;
  v14 = type metadata accessor for NSRunLoop();
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v26 = v13;
  v27 = v14;
  v28 = WitnessTable;
  v29 = v16;
  v11 = 0;
  v21 = type metadata accessor for Publishers.ReceiveOn();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13);
  v22 = &v7 - v10;
  v25 = *v1;
  v24[2] = *(v3 + 16);
  v24[1] = v25;
  v4 = [objc_opt_self() mainRunLoop];
  v12 = v24;
  v24[0] = v4;
  v5 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v5 - 8) + 56))(v17, 1);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v17);
  MEMORY[0x1E69E5920](v24[0]);
  swift_getWitnessTable();
  v23 = Publisher.eraseToAnyPublisher()();
  (*(v19 + 8))(v22, v21);
  return v23;
}

unint64_t type metadata accessor for NSRunLoop()
{
  v2 = lazy cache variable for type metadata for NSRunLoop;
  if (!lazy cache variable for type metadata for NSRunLoop)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSRunLoop);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  v2 = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSRunLoop();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v3 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t Published.Publisher.didSet.getter(uint64_t a1)
{
  v11 = a1;
  v7[1] = MEMORY[0x1E695C068];
  v16 = MEMORY[0x1E695BE98];
  v23 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, _sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v7[0] = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v15 = v7 - v7[0];
  v12 = type metadata accessor for NSRunLoop();
  WitnessTable = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v24 = v11;
  v25 = v12;
  v26 = WitnessTable;
  v27 = v14;
  v9 = 0;
  v19 = type metadata accessor for Publishers.ReceiveOn();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v11);
  v20 = v7 - v8;
  v23 = v1;
  v22[1] = *(v3 + 16);
  v4 = [objc_opt_self() mainRunLoop];
  v10 = v22;
  v22[0] = v4;
  v5 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v5 - 8) + 56))(v15, 1);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v15);
  MEMORY[0x1E69E5920](v22[0]);
  swift_getWitnessTable();
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v20, v19);
  return v21;
}

uint64_t HMMultiState.description.getter(char a1)
{
  type metadata accessor for HMMultiState(0);
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Don't know", 0xAuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t HeadphonePropertyWrapperPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
}

uint64_t HeadphonePropertyWrapperPublisher.subject.getter()
{
  v2 = *v0;

  return v2;
}

void HeadphonePropertyWrapperPublisher.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3;
  v10 = a1;
  v9 = a2;
  v11 = v13;
  v13[0] = 0;
  v12 = 0;
  v13[1] = a2;
  v7 = *(a2 - 8);
  v8 = a2 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for CurrentValueSubject();
  (*(v7 + 16))(v5, v10, v9);
  v13[0] = CurrentValueSubject.__allocating_init(_:)();
  outlined init with copy of HeadphonePropertyWrapperPublisher<A>(v11, v6);
  (*(v7 + 8))(v10, v9);
  outlined destroy of HeadphonePropertyWrapperPublisher<A>(v11);
}

void *outlined init with copy of HeadphonePropertyWrapperPublisher<A>(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, uint64_t *a2)
{
  v4 = *a2;

  result = a1;
  *a1 = v4;
  return result;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;

  *a1 = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for HeadphonePropertyWrapperPublisher(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for HeadphonePropertyWrapperPublisher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t B494BFeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B494BFeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8239)
  {
    *(v5 + 16) = 8239;
    MEMORY[0x1E69E5928](a2);
    *(v5 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v5;
  }

  else
  {
    type metadata accessor for B494BFeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B494BFeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x1EEDC4558](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x1EEE68D88]();
}

{
  return MEMORY[0x1EEE68D98]();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x1EEE68EB8](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x1EEE6A998]();
}

{
  return MEMORY[0x1EEE6A9A0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6AC68]();
}

{
  return MEMORY[0x1EEE6AC70]();
}

{
  return MEMORY[0x1EEE6ACB8]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADA8]();
}

{
  return MEMORY[0x1EEE6ADB0]();
}

{
  return MEMORY[0x1EEE6ADF0]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x1EEE6B178]();
}

{
  return MEMORY[0x1EEE6B180]();
}

{
  return MEMORY[0x1EEE6B188]();
}