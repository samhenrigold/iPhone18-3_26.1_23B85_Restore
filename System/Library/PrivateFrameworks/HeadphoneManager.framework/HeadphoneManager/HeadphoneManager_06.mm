uint64_t $defer #1 () in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(void *a1)
{
  v3 = a1;
  v2 = 0;
  return (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x188))(&v2);
}

uint64_t implicit closure #2 in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(void *a1)
{
  v2 = [a1 debugDescription];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

Swift::Void __swiftcall HearingRecord.setPublishedAudiogram(_:)(HKAudiogramSample a1)
{
  isa = a1.super.super.super.isa;
  v66 = partial apply for closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v67 = implicit closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v68 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v69 = implicit closure #2 in HearingRecord.setPublishedAudiogram(_:);
  v70 = _sSiIegd_SiIegr_TRTA_3;
  v71 = closure #1 in OSLogArguments.append(_:)partial apply;
  v72 = closure #1 in OSLogArguments.append(_:)partial apply;
  v73 = closure #1 in OSLogArguments.append(_:)partial apply;
  v74 = closure #1 in OSLogArguments.append(_:)partial apply;
  v75 = closure #1 in OSLogArguments.append(_:)partial apply;
  v76 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_4;
  v100 = 0;
  v99 = 0;
  v77 = 0;
  v93 = 0;
  v92 = 0;
  v79 = type metadata accessor for Logger();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v30 - v82;
  v100 = MEMORY[0x1EEE9AC00](isa);
  v99 = v1;
  v84 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v84)
  {
    v65 = v84;
    v64 = v84;
    v93 = v84;
    type metadata accessor for HMDeviceConfigurations();
    v63 = HMDeviceConfigurations.__allocating_init()();
    v92 = v63;
    [v63 setSelectedAudiogram_];
    v57 = *Headphone_Manager.shared.unsafeMutableAddressor();
    v2 = v57;
    v3 = MEMORY[0x1E69E5928](v57);
    v62 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x150))(v3);
    MEMORY[0x1E69E5920](v57);
    v59 = [v64 bluetoothUUID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v5;
    v61 = MEMORY[0x1DA730940](v4);

    MEMORY[0x1E69E5920](v59);
    MEMORY[0x1E69E5928](isa);
    v6 = swift_allocObject();
    v7 = v66;
    *(v6 + 16) = isa;
    v90 = v7;
    v91 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = 0;
    v88 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v89 = &block_descriptor_4;
    v60 = _Block_copy(&aBlock);

    [v62 modifyDeviceConfig:v63 identifier:v61 completion:v60];
    _Block_release(v60);
    MEMORY[0x1E69E5920](v61);
    MEMORY[0x1E69E5920](v62);
    MEMORY[0x1E69E5920](v63);
    MEMORY[0x1E69E5920](v64);
  }

  else
  {
    v8 = v83;
    v9 = Logger.shared.unsafeMutableAddressor();
    (*(v80 + 16))(v8, v9, v79);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v41 = 17;
    v44 = 7;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    v42 = 8;
    *(v47 + 16) = 8;
    v43 = 32;
    v10 = swift_allocObject();
    v40 = v10;
    *(v10 + 16) = v67;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v40;
    v48 = v11;
    *(v11 + 16) = v68;
    *(v11 + 24) = v12;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = v42;
    v13 = swift_allocObject();
    v45 = v13;
    *(v13 + 16) = v69;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v45;
    v52 = v14;
    *(v14 + 16) = v70;
    *(v14 + 24) = v15;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v51 = _allocateUninitializedArray<A>(_:)();
    v53 = v16;

    v17 = v46;
    v18 = v53;
    *v53 = v71;
    v18[1] = v17;

    v19 = v47;
    v20 = v53;
    v53[2] = v72;
    v20[3] = v19;

    v21 = v48;
    v22 = v53;
    v53[4] = v73;
    v22[5] = v21;

    v23 = v49;
    v24 = v53;
    v53[6] = v74;
    v24[7] = v23;

    v25 = v50;
    v26 = v53;
    v53[8] = v75;
    v26[9] = v25;

    v27 = v52;
    v28 = v53;
    v53[10] = v76;
    v28[11] = v27;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v55, v56))
    {
      v29 = v77;
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0, v31, v31);
      v34 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v36 = &v98;
      v98 = v32;
      v37 = &v97;
      v97 = v33;
      v38 = &v96;
      v96 = v34;
      v35 = 2;
      serialize(_:at:)(2, &v98);
      serialize(_:at:)(v35, v36);
      v94 = v71;
      v95 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v94, v36, v37, v38);
      v39 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v94 = v72;
        v95 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[3] = 0;
        v94 = v73;
        v95 = v48;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[2] = 0;
        v94 = v74;
        v95 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[1] = 0;
        v94 = v75;
        v95 = v50;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[0] = 0;
        v94 = v76;
        v95 = v52;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        _os_log_impl(&dword_1D93D0000, v55, v56, "HeadphoneManager: %s: %ld unable to set audiogram without device record!", v32, 0x16u);
        destroyStorage<A>(_:count:)(v33, 0, v31);
        destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v32, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v55);
    (*(v80 + 8))(v83, v79);
  }
}

void closure #1 in HearingRecord.setPublishedAudiogram(_:)(void *a1, uint64_t a2)
{
  v188 = a1;
  v180 = a2;
  v148 = implicit closure #1 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v149 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v150 = implicit closure #2 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v151 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v152 = partial apply for implicit closure #3 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v153 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v154 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v155 = closure #1 in OSLogArguments.append(_:)partial apply;
  v156 = closure #1 in OSLogArguments.append(_:)partial apply;
  v157 = closure #1 in OSLogArguments.append(_:)partial apply;
  v158 = closure #1 in OSLogArguments.append(_:)partial apply;
  v159 = closure #1 in OSLogArguments.append(_:)partial apply;
  v160 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v161 = closure #1 in OSLogArguments.append(_:)partial apply;
  v162 = closure #1 in OSLogArguments.append(_:)partial apply;
  v163 = closure #1 in OSLogArguments.append(_:)partial apply;
  v164 = implicit closure #4 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v165 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v166 = implicit closure #5 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v167 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v168 = partial apply for implicit closure #6 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v169 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v170 = closure #1 in OSLogArguments.append(_:)partial apply;
  v171 = closure #1 in OSLogArguments.append(_:)partial apply;
  v172 = closure #1 in OSLogArguments.append(_:)partial apply;
  v173 = closure #1 in OSLogArguments.append(_:)partial apply;
  v174 = closure #1 in OSLogArguments.append(_:)partial apply;
  v175 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v176 = closure #1 in OSLogArguments.append(_:)partial apply;
  v177 = closure #1 in OSLogArguments.append(_:)partial apply;
  v178 = closure #1 in OSLogArguments.append(_:)partial apply;
  v201 = 0;
  v200 = 0;
  v179 = 0;
  v194 = 0;
  v181 = type metadata accessor for Logger();
  v182 = *(v181 - 8);
  v183 = v181 - 8;
  v184 = (*(v182 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v188);
  v185 = v74 - v184;
  v186 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v187 = v74 - v186;
  v201 = v4;
  v200 = v5;
  v6 = v4;
  if (v188)
  {
    v147 = v188;
    v7 = v187;
    v123 = v188;
    v194 = v188;
    v8 = Logger.shared.unsafeMutableAddressor();
    (*(v182 + 16))(v7, v8, v181);
    v9 = v123;
    v130 = 7;
    v128 = swift_allocObject();
    *(v128 + 16) = v123;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    v126 = 17;
    v133 = swift_allocObject();
    *(v133 + 16) = 32;
    v134 = swift_allocObject();
    v127 = 8;
    *(v134 + 16) = 8;
    v129 = 32;
    v10 = swift_allocObject();
    v124 = v10;
    *(v10 + 16) = v148;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v124;
    v135 = v11;
    *(v11 + 16) = v149;
    *(v11 + 24) = v12;
    v136 = swift_allocObject();
    *(v136 + 16) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v127;
    v13 = swift_allocObject();
    v125 = v13;
    *(v13 + 16) = v150;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v125;
    v138 = v14;
    *(v14 + 16) = v151;
    *(v14 + 24) = v15;
    v139 = swift_allocObject();
    *(v139 + 16) = 64;
    v140 = swift_allocObject();
    *(v140 + 16) = v127;
    v16 = swift_allocObject();
    v17 = v128;
    v131 = v16;
    *(v16 + 16) = v152;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v131;
    v132 = v18;
    *(v18 + 16) = v153;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v132;
    v142 = v20;
    *(v20 + 16) = v154;
    *(v20 + 24) = v21;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v141 = _allocateUninitializedArray<A>(_:)();
    v143 = v22;

    v23 = v133;
    v24 = v143;
    *v143 = v155;
    v24[1] = v23;

    v25 = v134;
    v26 = v143;
    v143[2] = v156;
    v26[3] = v25;

    v27 = v135;
    v28 = v143;
    v143[4] = v157;
    v28[5] = v27;

    v29 = v136;
    v30 = v143;
    v143[6] = v158;
    v30[7] = v29;

    v31 = v137;
    v32 = v143;
    v143[8] = v159;
    v32[9] = v31;

    v33 = v138;
    v34 = v143;
    v143[10] = v160;
    v34[11] = v33;

    v35 = v139;
    v36 = v143;
    v143[12] = v161;
    v36[13] = v35;

    v37 = v140;
    v38 = v143;
    v143[14] = v162;
    v38[15] = v37;

    v39 = v142;
    v40 = v143;
    v143[16] = v163;
    v40[17] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v145, v146))
    {
      v41 = v179;
      v116 = static UnsafeMutablePointer.allocate(capacity:)();
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v115 = 1;
      v117 = createStorage<A>(capacity:type:)(1, v114, v114);
      v118 = createStorage<A>(capacity:type:)(v115, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v119 = &v193;
      v193 = v116;
      v120 = &v192;
      v192 = v117;
      v121 = &v191;
      v191 = v118;
      serialize(_:at:)(2, &v193);
      serialize(_:at:)(3, v119);
      v189 = v155;
      v190 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v189, v119, v120, v121);
      v122 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v189 = v156;
        v190 = v134;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v113 = 0;
        v189 = v157;
        v190 = v135;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v112 = 0;
        v189 = v158;
        v190 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v111 = 0;
        v189 = v159;
        v190 = v137;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v110 = 0;
        v189 = v160;
        v190 = v138;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v109 = 0;
        v189 = v161;
        v190 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v108 = 0;
        v189 = v162;
        v190 = v140;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v107 = 0;
        v189 = v163;
        v190 = v142;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        _os_log_impl(&dword_1D93D0000, v145, v146, "HeadphoneManager: %s: %ld failed to set published audiogram! %@", v116, 0x20u);
        v106 = 1;
        destroyStorage<A>(_:count:)(v117, 1, v114);
        destroyStorage<A>(_:count:)(v118, v106, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v116, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v145);
    (*(v182 + 8))(v187, v181);
  }

  else
  {
    v42 = v185;
    v43 = Logger.shared.unsafeMutableAddressor();
    (*(v182 + 16))(v42, v43, v181);
    MEMORY[0x1E69E5928](v180);
    v89 = 7;
    v90 = swift_allocObject();
    *(v90 + 16) = v180;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    v86 = 17;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v93 = swift_allocObject();
    v87 = 8;
    *(v93 + 16) = 8;
    v88 = 32;
    v44 = swift_allocObject();
    v84 = v44;
    *(v44 + 16) = v164;
    *(v44 + 24) = 0;
    v45 = swift_allocObject();
    v46 = v84;
    v94 = v45;
    *(v45 + 16) = v165;
    *(v45 + 24) = v46;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    v47 = swift_allocObject();
    v85 = v47;
    *(v47 + 16) = v166;
    *(v47 + 24) = 0;
    v48 = swift_allocObject();
    v49 = v85;
    v97 = v48;
    *(v48 + 16) = v167;
    *(v48 + 24) = v49;
    v98 = swift_allocObject();
    *(v98 + 16) = 64;
    v99 = swift_allocObject();
    *(v99 + 16) = v87;
    v50 = swift_allocObject();
    v51 = v90;
    v91 = v50;
    *(v50 + 16) = v168;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v91;
    v101 = v52;
    *(v52 + 16) = v169;
    *(v52 + 24) = v53;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v100 = _allocateUninitializedArray<A>(_:)();
    v102 = v54;

    v55 = v92;
    v56 = v102;
    *v102 = v170;
    v56[1] = v55;

    v57 = v93;
    v58 = v102;
    v102[2] = v171;
    v58[3] = v57;

    v59 = v94;
    v60 = v102;
    v102[4] = v172;
    v60[5] = v59;

    v61 = v95;
    v62 = v102;
    v102[6] = v173;
    v62[7] = v61;

    v63 = v96;
    v64 = v102;
    v102[8] = v174;
    v64[9] = v63;

    v65 = v97;
    v66 = v102;
    v102[10] = v175;
    v66[11] = v65;

    v67 = v98;
    v68 = v102;
    v102[12] = v176;
    v68[13] = v67;

    v69 = v99;
    v70 = v102;
    v102[14] = v177;
    v70[15] = v69;

    v71 = v101;
    v72 = v102;
    v102[16] = v178;
    v72[17] = v71;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v104, v105))
    {
      v73 = v179;
      v77 = static UnsafeMutablePointer.allocate(capacity:)();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = 1;
      v78 = createStorage<A>(capacity:type:)(1, v75, v75);
      v79 = createStorage<A>(capacity:type:)(v76, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v80 = &v199;
      v199 = v77;
      v81 = &v198;
      v198 = v78;
      v82 = &v197;
      v197 = v79;
      serialize(_:at:)(2, &v199);
      serialize(_:at:)(3, v80);
      v195 = v170;
      v196 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v195, v80, v81, v82);
      v83 = v73;
      if (v73)
      {

        __break(1u);
      }

      else
      {
        v195 = v171;
        v196 = v93;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[7] = 0;
        v195 = v172;
        v196 = v94;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[6] = 0;
        v195 = v173;
        v196 = v95;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[5] = 0;
        v195 = v174;
        v196 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[4] = 0;
        v195 = v175;
        v196 = v97;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[3] = 0;
        v195 = v176;
        v196 = v98;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[2] = 0;
        v195 = v177;
        v196 = v99;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[1] = 0;
        v195 = v178;
        v196 = v101;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        _os_log_impl(&dword_1D93D0000, v104, v105, "HeadphoneManager: %s: %ld sucessfully set published audiogram! %@", v77, 0x20u);
        v74[0] = 1;
        destroyStorage<A>(_:count:)(v78, 1, v75);
        destroyStorage<A>(_:count:)(v79, v74[0], MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v77, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v104);
    (*(v182 + 8))(v185, v181);
  }
}

uint64_t default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
}

{
  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
}

uint64_t HearingRecord.resetHearingAidTunings(completion:)(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v36 = a1;
  v37 = a2;
  v35 = v2;
  v34 = 2;
  v17 = MEMORY[0x1E69E7D40];
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x188))(&v34);
  type metadata accessor for HMDeviceConfigurations();
  v24 = HMDeviceConfigurations.__allocating_init()();
  v33 = v24;
  type metadata accessor for NSNumber();
  isa = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setBalance_];
  MEMORY[0x1E69E5920](isa);
  v11 = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setTone_];
  MEMORY[0x1E69E5920](v11);
  v12 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v24 setBeamFormer_];
  MEMORY[0x1E69E5920](v12);
  v13 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v24 setNoiseSuppression_];
  MEMORY[0x1E69E5920](v13);
  v14 = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setOwnVoiceLevelGain_];
  MEMORY[0x1E69E5920](v14);
  v15 = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setAmplification_];
  MEMORY[0x1E69E5920](v15);
  v3 = Headphone_Manager.shared.unsafeMutableAddressor();
  v4 = *v3;
  v16 = *v3;
  v5 = MEMORY[0x1E69E5928](*v3);
  v23 = (*((*v4 & *v17) + 0x150))(v5);
  v6 = MEMORY[0x1E69E5920](v16);
  v7 = (*((*v25 & *v17) + 0x350))(v6);
  v22 = MEMORY[0x1DA730940](v7);

  v20 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  MEMORY[0x1E69E5928](v24);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v20;
  v8[5] = v24;
  v31 = partial apply for closure #1 in HearingRecord.resetHearingAidTunings(completion:);
  v32 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = 0;
  v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v30 = &block_descriptor_327;
  v21 = _Block_copy(&aBlock);

  [v23 modifyDeviceConfig:v24 identifier:v22 completion:v21];
  _Block_release(v21);
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v24);
  return $defer #1 () in HearingRecord.resetHearingAidTunings(completion:)(v25);
}

uint64_t $defer #1 () in HearingRecord.resetHearingAidTunings(completion:)(void *a1)
{
  v3 = a1;
  v2 = 0;
  return (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x188))(&v2);
}

uint64_t closure #1 in HearingRecord.resetHearingAidTunings(completion:)(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v151 = a1;
  v145 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v130 = implicit closure #1 in closure #1 in HearingRecord.resetHearingAidTunings(completion:);
  v131 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v132 = partial apply for implicit closure #2 in closure #1 in HearingRecord.resetHearingAidTunings(completion:);
  v133 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v134 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v135 = closure #1 in OSLogArguments.append(_:)partial apply;
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v137 = closure #1 in OSLogArguments.append(_:)partial apply;
  v138 = closure #1 in OSLogArguments.append(_:)partial apply;
  v139 = closure #1 in OSLogArguments.append(_:)partial apply;
  v140 = closure #1 in OSLogArguments.append(_:)partial apply;
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v169 = 0;
  v168 = 0;
  v157 = 0;
  v141 = 0;
  v146 = type metadata accessor for Logger();
  v147 = *(v146 - 8);
  v148 = v146 - 8;
  v149 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v57 - v149;
  v172 = MEMORY[0x1EEE9AC00](v151);
  v170 = v5;
  v171 = v6;
  v169 = v7 + 16;
  v168 = v8;
  v9 = v172;
  if (v151)
  {
    v129 = v151;
    v10 = v150;
    v108 = v151;
    v157 = v151;
    v11 = Logger.shared.unsafeMutableAddressor();
    (*(v147 + 16))(v10, v11, v146);
    v12 = v108;
    v114 = 7;
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    v110 = 17;
    v117 = swift_allocObject();
    *(v117 + 16) = 32;
    v118 = swift_allocObject();
    v111 = 8;
    *(v118 + 16) = 8;
    v113 = 32;
    v13 = swift_allocObject();
    v109 = v13;
    *(v13 + 16) = v130;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v109;
    v119 = v14;
    *(v14 + 16) = v131;
    *(v14 + 24) = v15;
    v120 = swift_allocObject();
    *(v120 + 16) = 64;
    v121 = swift_allocObject();
    *(v121 + 16) = v111;
    v16 = swift_allocObject();
    v17 = v112;
    v115 = v16;
    *(v16 + 16) = v132;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v115;
    v116 = v18;
    *(v18 + 16) = v133;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v116;
    v123 = v20;
    *(v20 + 16) = v134;
    *(v20 + 24) = v21;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v122 = _allocateUninitializedArray<A>(_:)();
    v124 = v22;

    v23 = v117;
    v24 = v124;
    *v124 = v135;
    v24[1] = v23;

    v25 = v118;
    v26 = v124;
    v124[2] = v136;
    v26[3] = v25;

    v27 = v119;
    v28 = v124;
    v124[4] = v137;
    v28[5] = v27;

    v29 = v120;
    v30 = v124;
    v124[6] = v138;
    v30[7] = v29;

    v31 = v121;
    v32 = v124;
    v124[8] = v139;
    v32[9] = v31;

    v33 = v123;
    v34 = v124;
    v124[10] = v140;
    v34[11] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v126, v127))
    {
      v35 = v141;
      v100 = static UnsafeMutablePointer.allocate(capacity:)();
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v99 = 1;
      v101 = createStorage<A>(capacity:type:)(1, v98, v98);
      v102 = createStorage<A>(capacity:type:)(v99, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v104 = &v156;
      v156 = v100;
      v105 = &v155;
      v155 = v101;
      v106 = &v154;
      v154 = v102;
      v103 = 2;
      serialize(_:at:)(2, &v156);
      serialize(_:at:)(v103, v104);
      v152 = v135;
      v153 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v152, v104, v105, v106);
      v107 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v152 = v136;
        v153 = v118;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v97 = 0;
        v152 = v137;
        v153 = v119;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v96 = 0;
        v152 = v138;
        v153 = v120;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v95 = 0;
        v152 = v139;
        v153 = v121;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v94 = 0;
        v152 = v140;
        v153 = v123;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        _os_log_impl(&dword_1D93D0000, v126, v127, "HeadphoneManager: %s:  reset HearingAid Tunings failed ... restoring %@", v100, 0x16u);
        v93 = 1;
        destroyStorage<A>(_:count:)(v101, 1, v98);
        destroyStorage<A>(_:count:)(v102, v93, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v100, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v126);
    (*(v147 + 8))(v150, v146);

    return $defer #1 () in closure #1 in HearingRecord.resetHearingAidTunings(completion:)(v145, v142);
  }

  else
  {
    v128 = v143 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v37 = Strong;
      v92 = Strong;
      MEMORY[0x1E69E5928](Strong);
      outlined destroy of HearingRecord?(p_Strong);
      swift_endAccess();
      v158 = 2;
      (*((*v37 & *MEMORY[0x1E69E7D40]) + 0x188))(&v158);
      MEMORY[0x1E69E5920](v92);
    }

    else
    {
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
    }

    v90 = v143 + 16;
    swift_beginAccess();
    v166 = swift_unknownObjectWeakLoadStrong();
    if (v166)
    {
      v86 = &v166;
      v38 = v166;
      v89 = v166;
      MEMORY[0x1E69E5928](v166);
      outlined destroy of HearingRecord?(v86);
      swift_endAccess();
      v87 = [v144 amplification];
      [v87 floatValue];
      v88 = v39;
      v40 = MEMORY[0x1E69E5920](v87);
      (*((*v38 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v40, v88);
      MEMORY[0x1E69E5920](v89);
    }

    else
    {
      outlined destroy of HearingRecord?(&v166);
      swift_endAccess();
    }

    v85 = v143 + 16;
    swift_beginAccess();
    v165 = swift_unknownObjectWeakLoadStrong();
    if (v165)
    {
      v81 = &v165;
      v41 = v165;
      v84 = v165;
      MEMORY[0x1E69E5928](v165);
      outlined destroy of HearingRecord?(v81);
      swift_endAccess();
      v82 = [v144 balance];
      [v82 floatValue];
      v83 = v42;
      v43 = MEMORY[0x1E69E5920](v82);
      (*((*v41 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v43, v83);
      MEMORY[0x1E69E5920](v84);
    }

    else
    {
      outlined destroy of HearingRecord?(&v165);
      swift_endAccess();
    }

    v80 = v143 + 16;
    swift_beginAccess();
    v164 = swift_unknownObjectWeakLoadStrong();
    if (v164)
    {
      v76 = &v164;
      v44 = v164;
      v79 = v164;
      MEMORY[0x1E69E5928](v164);
      outlined destroy of HearingRecord?(v76);
      swift_endAccess();
      v77 = [v144 ownVoiceLevelGain];
      [v77 floatValue];
      v78 = v45;
      v46 = MEMORY[0x1E69E5920](v77);
      (*((*v44 & *MEMORY[0x1E69E7D40]) + 0x220))(v46, v78);
      MEMORY[0x1E69E5920](v79);
    }

    else
    {
      outlined destroy of HearingRecord?(&v164);
      swift_endAccess();
    }

    v75 = v143 + 16;
    swift_beginAccess();
    v163 = swift_unknownObjectWeakLoadStrong();
    if (v163)
    {
      v71 = &v163;
      v47 = v163;
      v74 = v163;
      MEMORY[0x1E69E5928](v163);
      outlined destroy of HearingRecord?(v71);
      swift_endAccess();
      v72 = [v144 beamFormer];
      [v72 floatValue];
      v73 = v48;
      v49 = MEMORY[0x1E69E5920](v72);
      (*((*v47 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v49, v73);
      MEMORY[0x1E69E5920](v74);
    }

    else
    {
      outlined destroy of HearingRecord?(&v163);
      swift_endAccess();
    }

    v70 = v143 + 16;
    swift_beginAccess();
    v162 = swift_unknownObjectWeakLoadStrong();
    if (v162)
    {
      v66 = &v162;
      v50 = v162;
      v69 = v162;
      MEMORY[0x1E69E5928](v162);
      outlined destroy of HearingRecord?(v66);
      swift_endAccess();
      v67 = [v144 noiseSuppression];
      [v67 floatValue];
      v68 = v51;
      v52 = MEMORY[0x1E69E5920](v67);
      (*((*v50 & *MEMORY[0x1E69E7D40]) + 0x200))(v52, v68);
      MEMORY[0x1E69E5920](v69);
    }

    else
    {
      outlined destroy of HearingRecord?(&v162);
      swift_endAccess();
    }

    v65 = v143 + 16;
    swift_beginAccess();
    v161[0] = swift_unknownObjectWeakLoadStrong();
    if (v161[0])
    {
      v61 = v161;
      v53 = v161[0];
      v64 = v161[0];
      MEMORY[0x1E69E5928](v161[0]);
      outlined destroy of HearingRecord?(v61);
      swift_endAccess();
      v62 = [v144 tone];
      [v62 floatValue];
      v63 = v54;
      v55 = MEMORY[0x1E69E5920](v62);
      (*((*v53 & *MEMORY[0x1E69E7D40]) + 0x240))(v55, v63);
      MEMORY[0x1E69E5920](v64);
    }

    else
    {
      outlined destroy of HearingRecord?(v161);
      swift_endAccess();
    }

    v60 = v143 + 16;
    swift_beginAccess();
    v160[0] = swift_unknownObjectWeakLoadStrong();
    if (v160[0])
    {
      v58 = v160;
      v56 = v160[0];
      v59 = v160[0];
      MEMORY[0x1E69E5928](v160[0]);
      outlined destroy of HearingRecord?(v58);
      swift_endAccess();
      v159 = 0;
      (*((*v56 & *MEMORY[0x1E69E7D40]) + 0x188))(&v159);
      MEMORY[0x1E69E5920](v59);
    }

    else
    {
      outlined destroy of HearingRecord?(v160);
      swift_endAccess();
    }

    return $defer #1 () in closure #1 in HearingRecord.resetHearingAidTunings(completion:)(v145, v142);
  }
}

uint64_t $defer #1 () in closure #1 in HearingRecord.resetHearingAidTunings(completion:)(void (*a1)(void), uint64_t a2)
{

  a1();
}

uint64_t HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a1;
  v64 = a2;
  v61 = a3;
  v62 = a4;
  v72 = partial apply for implicit closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
  v76 = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_2;
  v78 = closure #1 in OSLogArguments.append(_:)partial apply;
  v80 = closure #1 in OSLogArguments.append(_:)partial apply;
  v83 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_2;
  v59 = partial apply for closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v60 = 0;
  v69 = type metadata accessor for Logger();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v39 - v65;
  v66 = &v39 - v65;
  v106 = MEMORY[0x1EEE9AC00](v70);
  v105 = v5;
  v103 = v6;
  v104 = v7;
  v102 = v8;
  v9 = Logger.shared.unsafeMutableAddressor();
  (*(v67 + 16))(v4, v9, v69);
  MEMORY[0x1E69E5928](v70);
  v74 = 7;
  v75 = swift_allocObject();
  *(v75 + 16) = v70;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  v71 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 64;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v73 = 32;
  v10 = swift_allocObject();
  v11 = v75;
  v77 = v10;
  *(v10 + 16) = v72;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v77;
  v84 = v12;
  *(v12 + 16) = v76;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v82 = _allocateUninitializedArray<A>(_:)();
  v85 = v14;

  v15 = v79;
  v16 = v85;
  *v85 = v78;
  v16[1] = v15;

  v17 = v81;
  v18 = v85;
  v85[2] = v80;
  v18[3] = v17;

  v19 = v84;
  v20 = v85;
  v85[4] = v83;
  v20[5] = v19;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v87, v88))
  {
    v21 = v60;
    v52 = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = createStorage<A>(capacity:type:)(1, v51, v51);
    v54 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v55 = &v93;
    v93 = v52;
    v56 = &v92;
    v92 = v53;
    v57 = &v91;
    v91 = v54;
    serialize(_:at:)(2, &v93);
    serialize(_:at:)(1, v55);
    v89 = v78;
    v90 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v89, v55, v56, v57);
    v58 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v89 = v80;
      v90 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      v50 = 0;
      v89 = v83;
      v90 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_1D93D0000, v87, v88, "HeadphoneManager: group config set: %@", v52, 0xCu);
      destroyStorage<A>(_:count:)(v53, 1, v51);
      destroyStorage<A>(_:count:)(v54, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v52, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  v22 = v63;
  MEMORY[0x1E69E5920](v87);
  (*(v67 + 8))(v66, v69);
  v101 = 2;
  v23 = *v22;
  v41 = MEMORY[0x1E69E7D40];
  (*((v23 & *MEMORY[0x1E69E7D40]) + 0x188))(&v101);
  v40 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v24 = v40;
  v25 = MEMORY[0x1E69E5928](v40);
  v26 = (*((*v24 & *v41) + 0x150))(v25);
  v27 = v63;
  v49 = v26;
  v28 = MEMORY[0x1E69E5920](v40);
  v29 = (*((*v27 & *v41) + 0x350))(v28);
  v42 = v30;
  v48 = MEMORY[0x1DA730940](v29);

  v45 = 7;
  v46 = swift_allocObject();
  v43 = v46 + 16;
  MEMORY[0x1E69E5928](v63);
  v44 = v63;
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v44);

  MEMORY[0x1E69E5928](v70);
  v31 = swift_allocObject();
  v32 = v62;
  v33 = v64;
  v34 = v59;
  v35 = v70;
  v36 = v31;
  v37 = v46;
  v36[2] = v61;
  v36[3] = v32;
  v36[4] = v37;
  v36[5] = v33;
  v36[6] = v35;
  v99 = v34;
  v100 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = 0;
  v97 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v98 = &block_descriptor_351;
  v47 = _Block_copy(&aBlock);

  [v49 modifyDeviceConfig:v70 identifier:v48 completion:v47];
  _Block_release(v47);
  MEMORY[0x1E69E5920](v48);
  MEMORY[0x1E69E5920](v49);
  return $defer #1 () in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(v63);
}

uint64_t $defer #1 () in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(void *a1)
{
  v3 = a1;
  v2 = 0;
  return (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x188))(&v2);
}

void closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v119 = a6;
  v118 = a5;
  v117 = a4;
  v116 = a3;
  v120 = a2;
  v126 = a1;
  v114 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v115 = 0;
  v132 = 0;
  v121 = type metadata accessor for Logger();
  v122 = *(v121 - 8);
  v123 = v122;
  v6 = MEMORY[0x1EEE9AC00](v126);
  v124 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v6;
  v141 = v8;
  v142 = v9;
  v125 = v10 + 16;
  v140 = v10 + 16;
  v139 = v11;
  v138 = v12;
  v13 = v6;
  if (v126)
  {
    v113 = v126;
    v14 = v124;
    v84 = v126;
    v132 = v126;
    v15 = Logger.shared.unsafeMutableAddressor();
    (*(v123 + 16))(v14, v15, v121);
    v16 = v84;
    v98 = 7;
    v96 = swift_allocObject();
    *(v96 + 16) = v84;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v112 = Logger.logObject.getter();
    v85 = v112;
    v111 = static os_log_type_t.error.getter();
    v86 = v111;
    v92 = 17;
    v102 = swift_allocObject();
    v87 = v102;
    v88 = 32;
    *(v102 + 16) = 32;
    v17 = swift_allocObject();
    v18 = v88;
    v103 = v17;
    v89 = v17;
    v94 = 8;
    *(v17 + 16) = 8;
    v97 = v18;
    v19 = swift_allocObject();
    v90 = v19;
    *(v19 + 16) = implicit closure #1 in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
    *(v19 + 24) = 0;
    v20 = swift_allocObject();
    v21 = v90;
    v104 = v20;
    v91 = v20;
    *(v20 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v20 + 24) = v21;
    v105 = swift_allocObject();
    v93 = v105;
    *(v105 + 16) = 64;
    v106 = swift_allocObject();
    v95 = v106;
    *(v106 + 16) = v94;
    v22 = swift_allocObject();
    v23 = v96;
    v99 = v22;
    *(v22 + 16) = partial apply for implicit closure #2 in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v99;
    v100 = v24;
    *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v100;
    v109 = v26;
    v101 = v26;
    *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v26 + 24) = v27;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v107 = _allocateUninitializedArray<A>(_:)();
    v108 = v28;

    v29 = v102;
    v30 = v108;
    *v108 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30[1] = v29;

    v31 = v103;
    v32 = v108;
    v108[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[3] = v31;

    v33 = v104;
    v34 = v108;
    v108[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v34[5] = v33;

    v35 = v105;
    v36 = v108;
    v108[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v36[7] = v35;

    v37 = v106;
    v38 = v108;
    v108[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v38[9] = v37;

    v39 = v108;
    v40 = v109;
    v108[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v39[11] = v40;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v112, v111))
    {
      v42 = v115;
      v77 = static UnsafeMutablePointer.allocate(capacity:)();
      v73 = v77;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v75 = 1;
      v78 = createStorage<A>(capacity:type:)(1, v74, v74);
      v76 = v78;
      v79 = createStorage<A>(capacity:type:)(v75, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v131 = v77;
      v130 = v78;
      v129 = v79;
      v80 = 2;
      v81 = &v131;
      serialize(_:at:)(2, &v131);
      serialize(_:at:)(v80, v81);
      v127 = closure #1 in OSLogArguments.append(_:)partial apply;
      v128 = v87;
      closure #1 in osLogInternal(_:log:type:)(&v127, v81, &v130, &v129);
      v82 = v42;
      v83 = v42;
      if (v42)
      {
        v71 = 0;

        __break(1u);
      }

      else
      {
        v127 = closure #1 in OSLogArguments.append(_:)partial apply;
        v128 = v89;
        closure #1 in osLogInternal(_:log:type:)(&v127, &v131, &v130, &v129);
        v69 = 0;
        v70 = 0;
        v127 = closure #1 in OSLogArguments.append(_:)partial apply;
        v128 = v91;
        closure #1 in osLogInternal(_:log:type:)(&v127, &v131, &v130, &v129);
        v67 = 0;
        v68 = 0;
        v127 = closure #1 in OSLogArguments.append(_:)partial apply;
        v128 = v93;
        closure #1 in osLogInternal(_:log:type:)(&v127, &v131, &v130, &v129);
        v65 = 0;
        v66 = 0;
        v127 = closure #1 in OSLogArguments.append(_:)partial apply;
        v128 = v95;
        closure #1 in osLogInternal(_:log:type:)(&v127, &v131, &v130, &v129);
        v63 = 0;
        v64 = 0;
        v127 = closure #1 in OSLogArguments.append(_:)partial apply;
        v128 = v101;
        closure #1 in osLogInternal(_:log:type:)(&v127, &v131, &v130, &v129);
        v61 = 0;
        v62 = 0;
        _os_log_impl(&dword_1D93D0000, v85, v86, "HeadphoneManager: %s:  (Set) updateGroupValues failed ... restoring %@", v73, 0x16u);
        v60 = 1;
        destroyStorage<A>(_:count:)(v76, 1, v74);
        destroyStorage<A>(_:count:)(v79, v60, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v73, MEMORY[0x1E69E7508]);

        v72 = v61;
      }
    }

    else
    {
      v43 = v115;

      v72 = v43;
    }

    v44 = v72;

    (*(v123 + 8))(v124, v121);
    $defer #1 () in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(v120, v116);
    v59 = v44;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v58 = Strong;
      v46 = Strong;
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
      v133 = 2;
      (*((*v45 & *MEMORY[0x1E69E7D40]) + 0x188))(&v133);
    }

    else
    {
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
    }

    v47 = v115;
    v136 = v118;

    v48 = v119;
    v54 = &v52;
    MEMORY[0x1EEE9AC00](&v52);
    v55 = &v52 - 4;
    *(&v52 - 2) = v117;
    *(&v52 - 1) = v49;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMd, &_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMR);
    lazy protocol witness table accessor for type [PartialKeyPath<HearingRecordModel>] and conformance [A]();
    Sequence.forEach(_:)();
    v57 = v47;
    if (v47)
    {

      __break(1u);
    }

    else
    {

      swift_beginAccess();
      v135 = swift_unknownObjectWeakLoadStrong();
      if (v135)
      {
        v50 = v135;
        v53 = v135;
        v51 = v135;
        outlined destroy of HearingRecord?(&v135);
        swift_endAccess();
        v134 = 0;
        (*((*v50 & *MEMORY[0x1E69E7D40]) + 0x188))(&v134);
      }

      else
      {
        outlined destroy of HearingRecord?(&v135);
        swift_endAccess();
      }

      $defer #1 () in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(v120, v116);
      v59 = v57;
    }
  }
}

uint64_t $defer #1 () in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(void (*a1)(void), uint64_t a2)
{

  a1();
}

uint64_t closure #1 in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v95 = *a1;
  v94 = a2 + 16;
  v93 = a3;

  v92[31] = swift_getKeyPath();
  v92[30] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMd, &_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMR);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v78)
  {

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v76 = Strong;
      MEMORY[0x1E69E5928](Strong);
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
      v74 = [a3 amplification];
      [v74 floatValue];
      v75 = v5;
      v6 = MEMORY[0x1E69E5920](v74);
      (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v6, v75);
      return MEMORY[0x1E69E5920](v76);
    }

    else
    {
      outlined destroy of HearingRecord?(&Strong);
      return swift_endAccess();
    }
  }

  else
  {

    v92[29] = swift_getKeyPath();
    v92[28] = v95;
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v73)
    {

      swift_beginAccess();
      v80 = swift_unknownObjectWeakLoadStrong();
      if (v80)
      {
        v7 = v80;
        v72 = v80;
        MEMORY[0x1E69E5928](v80);
        outlined destroy of HearingRecord?(&v80);
        swift_endAccess();
        v70 = [a3 balance];
        [v70 floatValue];
        v71 = v8;
        v9 = MEMORY[0x1E69E5920](v70);
        (*((*v7 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v9, v71);
        return MEMORY[0x1E69E5920](v72);
      }

      else
      {
        outlined destroy of HearingRecord?(&v80);
        return swift_endAccess();
      }
    }

    else
    {

      v92[27] = swift_getKeyPath();
      v92[26] = v95;
      v69 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v69)
      {

        swift_beginAccess();
        v81 = swift_unknownObjectWeakLoadStrong();
        if (v81)
        {
          v10 = v81;
          v68 = v81;
          MEMORY[0x1E69E5928](v81);
          outlined destroy of HearingRecord?(&v81);
          swift_endAccess();
          v66 = [a3 beamFormer];
          [v66 floatValue];
          v67 = v11;
          v12 = MEMORY[0x1E69E5920](v66);
          (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v12, v67);
          return MEMORY[0x1E69E5920](v68);
        }

        else
        {
          outlined destroy of HearingRecord?(&v81);
          return swift_endAccess();
        }
      }

      else
      {

        v92[25] = swift_getKeyPath();
        v92[24] = v95;
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v65)
        {

          swift_beginAccess();
          v82 = swift_unknownObjectWeakLoadStrong();
          if (v82)
          {
            v13 = v82;
            v64 = v82;
            MEMORY[0x1E69E5928](v82);
            outlined destroy of HearingRecord?(&v82);
            swift_endAccess();
            v62 = [a3 noiseSuppression];
            [v62 floatValue];
            v63 = v14;
            v15 = MEMORY[0x1E69E5920](v62);
            (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x200))(v15, v63);
            return MEMORY[0x1E69E5920](v64);
          }

          else
          {
            outlined destroy of HearingRecord?(&v82);
            return swift_endAccess();
          }
        }

        else
        {

          v92[23] = swift_getKeyPath();
          v92[22] = v95;
          v61 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v61)
          {

            swift_beginAccess();
            v83 = swift_unknownObjectWeakLoadStrong();
            if (v83)
            {
              v16 = v83;
              v60 = v83;
              MEMORY[0x1E69E5928](v83);
              outlined destroy of HearingRecord?(&v83);
              swift_endAccess();
              v58 = [a3 ownVoiceLevelGain];
              [v58 floatValue];
              v59 = v17;
              v18 = MEMORY[0x1E69E5920](v58);
              (*((*v16 & *MEMORY[0x1E69E7D40]) + 0x220))(v18, v59);
              return MEMORY[0x1E69E5920](v60);
            }

            else
            {
              outlined destroy of HearingRecord?(&v83);
              return swift_endAccess();
            }
          }

          else
          {

            v92[21] = swift_getKeyPath();
            v92[20] = v95;
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v57)
            {

              swift_beginAccess();
              v84 = swift_unknownObjectWeakLoadStrong();
              if (v84)
              {
                v19 = v84;
                v56 = v84;
                MEMORY[0x1E69E5928](v84);
                outlined destroy of HearingRecord?(&v84);
                swift_endAccess();
                v20 = [a3 enablePMEVoice];
                (*((*v19 & *MEMORY[0x1E69E7D40]) + 0x260))(v20);
                return MEMORY[0x1E69E5920](v56);
              }

              else
              {
                outlined destroy of HearingRecord?(&v84);
                return swift_endAccess();
              }
            }

            else
            {

              v92[19] = swift_getKeyPath();
              v92[18] = v95;
              v55 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v55)
              {

                swift_beginAccess();
                v85 = swift_unknownObjectWeakLoadStrong();
                if (v85)
                {
                  v21 = v85;
                  v54 = v85;
                  MEMORY[0x1E69E5928](v85);
                  outlined destroy of HearingRecord?(&v85);
                  swift_endAccess();
                  v22 = [a3 enablePMEMedia];
                  (*((*v21 & *MEMORY[0x1E69E7D40]) + 0x280))(v22);
                  return MEMORY[0x1E69E5920](v54);
                }

                else
                {
                  outlined destroy of HearingRecord?(&v85);
                  return swift_endAccess();
                }
              }

              else
              {

                v92[17] = swift_getKeyPath();
                v92[16] = v95;
                v53 = dispatch thunk of static Equatable.== infix(_:_:)();

                if (v53)
                {

                  swift_beginAccess();
                  v86 = swift_unknownObjectWeakLoadStrong();
                  if (v86)
                  {
                    v23 = v86;
                    v52 = v86;
                    MEMORY[0x1E69E5928](v86);
                    outlined destroy of HearingRecord?(&v86);
                    swift_endAccess();
                    v50 = [a3 tone];
                    [v50 floatValue];
                    v51 = v24;
                    v25 = MEMORY[0x1E69E5920](v50);
                    (*((*v23 & *MEMORY[0x1E69E7D40]) + 0x240))(v25, v51);
                    return MEMORY[0x1E69E5920](v52);
                  }

                  else
                  {
                    outlined destroy of HearingRecord?(&v86);
                    return swift_endAccess();
                  }
                }

                else
                {

                  v92[15] = swift_getKeyPath();
                  v92[14] = v95;
                  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v49)
                  {

                    swift_beginAccess();
                    v87 = swift_unknownObjectWeakLoadStrong();
                    if (v87)
                    {
                      v26 = v87;
                      v48 = v87;
                      MEMORY[0x1E69E5928](v87);
                      outlined destroy of HearingRecord?(&v87);
                      swift_endAccess();
                      v27 = [a3 enableHearingAssist];
                      (*((*v26 & *MEMORY[0x1E69E7D40]) + 0x2C0))(v27);
                      return MEMORY[0x1E69E5920](v48);
                    }

                    else
                    {
                      outlined destroy of HearingRecord?(&v87);
                      return swift_endAccess();
                    }
                  }

                  else
                  {

                    v92[13] = swift_getKeyPath();
                    v92[12] = v95;
                    v47 = dispatch thunk of static Equatable.== infix(_:_:)();

                    if (v47)
                    {

                      swift_beginAccess();
                      v88 = swift_unknownObjectWeakLoadStrong();
                      if (v88)
                      {
                        v28 = v88;
                        v46 = v88;
                        MEMORY[0x1E69E5928](v88);
                        outlined destroy of HearingRecord?(&v88);
                        swift_endAccess();
                        v29 = [a3 enableMediaAssist];
                        (*((*v28 & *MEMORY[0x1E69E7D40]) + 0x2A0))(v29);
                        return MEMORY[0x1E69E5920](v46);
                      }

                      else
                      {
                        outlined destroy of HearingRecord?(&v88);
                        return swift_endAccess();
                      }
                    }

                    else
                    {

                      v92[11] = swift_getKeyPath();
                      v92[10] = v95;
                      v45 = dispatch thunk of static Equatable.== infix(_:_:)();

                      if (v45)
                      {

                        swift_beginAccess();
                        v89 = swift_unknownObjectWeakLoadStrong();
                        if (v89)
                        {
                          v30 = v89;
                          v44 = v89;
                          MEMORY[0x1E69E5928](v89);
                          outlined destroy of HearingRecord?(&v89);
                          swift_endAccess();
                          v31 = [a3 enableHearingAid];
                          (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x300))(v31);
                          return MEMORY[0x1E69E5920](v44);
                        }

                        else
                        {
                          outlined destroy of HearingRecord?(&v89);
                          return swift_endAccess();
                        }
                      }

                      else
                      {

                        v92[9] = swift_getKeyPath();
                        v92[8] = v95;
                        v43 = dispatch thunk of static Equatable.== infix(_:_:)();

                        if (v43)
                        {

                          swift_beginAccess();
                          v90 = swift_unknownObjectWeakLoadStrong();
                          if (v90)
                          {
                            v32 = v90;
                            v42 = v90;
                            MEMORY[0x1E69E5928](v90);
                            outlined destroy of HearingRecord?(&v90);
                            swift_endAccess();
                            v33 = [a3 enableSwipeGain];
                            (*((*v32 & *MEMORY[0x1E69E7D40]) + 0x2E0))(v33);
                            return MEMORY[0x1E69E5920](v42);
                          }

                          else
                          {
                            outlined destroy of HearingRecord?(&v90);
                            return swift_endAccess();
                          }
                        }

                        else
                        {

                          v92[7] = swift_getKeyPath();
                          v92[6] = v95;
                          v41 = dispatch thunk of static Equatable.== infix(_:_:)();

                          if (v41)
                          {

                            swift_beginAccess();
                            v91 = swift_unknownObjectWeakLoadStrong();
                            if (v91)
                            {
                              v34 = v91;
                              v40 = v91;
                              MEMORY[0x1E69E5928](v91);
                              outlined destroy of HearingRecord?(&v91);
                              swift_endAccess();
                              v35 = [a3 enableHearingProtection];
                              (*((*v34 & *MEMORY[0x1E69E7D40]) + 0x4D8))(v35);
                              return MEMORY[0x1E69E5920](v40);
                            }

                            else
                            {
                              outlined destroy of HearingRecord?(&v91);
                              return swift_endAccess();
                            }
                          }

                          else
                          {

                            v92[5] = swift_getKeyPath();
                            v92[4] = v95;
                            v39 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v39)
                            {

                              swift_beginAccess();
                              v92[0] = swift_unknownObjectWeakLoadStrong();
                              if (v92[0])
                              {
                                v36 = v92[0];
                                v38 = v92[0];
                                MEMORY[0x1E69E5928](v92[0]);
                                outlined destroy of HearingRecord?(v92);
                                swift_endAccess();
                                v37 = [a3 enableHearingProtectionPPE];
                                (*((*v36 & *MEMORY[0x1E69E7D40]) + 0x6A8))(v37);
                                return MEMORY[0x1E69E5920](v38);
                              }

                              else
                              {
                                outlined destroy of HearingRecord?(v92);
                                return swift_endAccess();
                              }
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

uint64_t HearingRecord.debugDescription.getter()
{
  v335 = 0;
  v334._countAndFlagsBits = 0;
  v334._object = 0;
  v334 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" tone: ", 7uLL, 1);
  v332 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v333 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v241 = MEMORY[0x1E69E7D40];
  v331 = (*((*v240 & *MEMORY[0x1E69E7D40]) + 0x238))(v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v4);

  v183 = v332;
  v182 = v333;

  outlined destroy of DefaultStringInterpolation(&v332);
  v5 = MEMORY[0x1DA7309B0](v183, v182);
  MEMORY[0x1DA7309C0](v0._countAndFlagsBits, v0._object, v5);

  static String.+= infix(_:_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" amp: ", 6uLL, 1);
  v329 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v330 = v7;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v8);

  v328 = (*((*v240 & *v241) + 0x198))(v9);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v10);

  v185 = v329;
  v184 = v330;

  outlined destroy of DefaultStringInterpolation(&v329);
  v11 = MEMORY[0x1DA7309B0](v185, v184);
  MEMORY[0x1DA7309C0](v6._countAndFlagsBits, v6._object, v11);

  static String.+= infix(_:_:)();

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bal: ", 6uLL, 1);
  v326 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v327 = v13;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v14);

  v325 = (*((*v240 & *v241) + 0x1B8))(v15);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v16);

  v187 = v326;
  v186 = v327;

  outlined destroy of DefaultStringInterpolation(&v326);
  v17 = MEMORY[0x1DA7309B0](v187, v186);
  MEMORY[0x1DA7309C0](v12._countAndFlagsBits, v12._object, v17);

  static String.+= infix(_:_:)();

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bmFrmr: ", 9uLL, 1);
  v323 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v324 = v19;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v20);

  v322 = (*((*v240 & *v241) + 0x1D8))(v21);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v22);

  v189 = v323;
  v188 = v324;

  outlined destroy of DefaultStringInterpolation(&v323);
  v23 = MEMORY[0x1DA7309B0](v189, v188);
  MEMORY[0x1DA7309C0](v18._countAndFlagsBits, v18._object, v23);

  static String.+= infix(_:_:)();

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" nseSup: ", 9uLL, 1);
  v320 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v321 = v25;
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v26);

  v319 = (*((*v240 & *v241) + 0x1F8))(v27);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v28);

  v191 = v320;
  v190 = v321;

  outlined destroy of DefaultStringInterpolation(&v320);
  v29 = MEMORY[0x1DA7309B0](v191, v190);
  MEMORY[0x1DA7309C0](v24._countAndFlagsBits, v24._object, v29);

  static String.+= infix(_:_:)();

  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ownV: ", 7uLL, 1);
  v317 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v318 = v31;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v32);

  v316 = (*((*v240 & *v241) + 0x218))(v33);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v34);

  v193 = v317;
  v192 = v318;

  outlined destroy of DefaultStringInterpolation(&v317);
  v35 = MEMORY[0x1DA7309B0](v193, v192);
  MEMORY[0x1DA7309C0](v30._countAndFlagsBits, v30._object, v35);

  static String.+= infix(_:_:)();

  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" pmeV En: ", 0xAuLL, 1);
  v314 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v315 = v37;
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v38);

  v313 = (*((*v240 & *v241) + 0x258))(v39);
  type metadata accessor for HMMultiState(0);
  lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v40);

  v195 = v314;
  v194 = v315;

  outlined destroy of DefaultStringInterpolation(&v314);
  v41 = MEMORY[0x1DA7309B0](v195, v194);
  MEMORY[0x1DA7309C0](v36._countAndFlagsBits, v36._object, v41);

  static String.+= infix(_:_:)();

  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" pmeM En: ", 0xAuLL, 1);
  v311 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v312 = v43;
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v44);

  v310 = (*((*v240 & *v241) + 0x278))(v45);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v46);

  v197 = v311;
  v196 = v312;

  outlined destroy of DefaultStringInterpolation(&v311);
  v47 = MEMORY[0x1DA7309B0](v197, v196);
  MEMORY[0x1DA7309C0](v42._countAndFlagsBits, v42._object, v47);

  static String.+= infix(_:_:)();

  v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ha En: ", 8uLL, 1);
  v308 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v309 = v49;
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v50);

  v307 = (*((*v240 & *v241) + 0x2B8))(v51);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v52);

  v199 = v308;
  v198 = v309;

  outlined destroy of DefaultStringInterpolation(&v308);
  v53 = MEMORY[0x1DA7309B0](v199, v198);
  MEMORY[0x1DA7309C0](v48._countAndFlagsBits, v48._object, v53);

  static String.+= infix(_:_:)();

  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ma En: ", 8uLL, 1);
  v305 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v306 = v55;
  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v56);

  v304 = (*((*v240 & *v241) + 0x298))(v57);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v58);

  v201 = v305;
  v200 = v306;

  outlined destroy of DefaultStringInterpolation(&v305);
  v59 = MEMORY[0x1DA7309B0](v201, v200);
  MEMORY[0x1DA7309C0](v54._countAndFlagsBits, v54._object, v59);

  static String.+= infix(_:_:)();

  v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" swpGain En: ", 0xDuLL, 1);
  v302 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v303 = v61;
  v62 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v62);

  v301 = (*((*v240 & *v241) + 0x2D8))(v63);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v64);

  v203 = v302;
  v202 = v303;

  outlined destroy of DefaultStringInterpolation(&v302);
  v65 = MEMORY[0x1DA7309B0](v203, v202);
  MEMORY[0x1DA7309C0](v60._countAndFlagsBits, v60._object, v65);

  static String.+= infix(_:_:)();

  v66 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" h aEn: ", 8uLL, 1);
  v299 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v300 = v67;
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v68);

  v298 = (*((*v240 & *v241) + 0x2F8))(v69);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v70);

  v205 = v299;
  v204 = v300;

  outlined destroy of DefaultStringInterpolation(&v299);
  v71 = MEMORY[0x1DA7309B0](v205, v204);
  MEMORY[0x1DA7309C0](v66._countAndFlagsBits, v66._object, v71);

  static String.+= infix(_:_:)();

  v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hAs Cap: ", 0xAuLL, 1);
  v296 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v297 = v73;
  v74 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v74);

  v295 = (*((*v240 & *v241) + 0x3E0))(v75);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v76);

  v207 = v296;
  v206 = v297;

  outlined destroy of DefaultStringInterpolation(&v296);
  v77 = MEMORY[0x1DA7309B0](v207, v206);
  MEMORY[0x1DA7309C0](v72._countAndFlagsBits, v72._object, v77);

  static String.+= infix(_:_:)();

  v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hAs enrll: ", 0xCuLL, 1);
  v293 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v294 = v79;
  v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v80);

  v292 = (*((*v240 & *v241) + 0x410))(v81);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v82);

  v209 = v293;
  v208 = v294;

  outlined destroy of DefaultStringInterpolation(&v293);
  v83 = MEMORY[0x1DA7309B0](v209, v208);
  MEMORY[0x1DA7309C0](v78._countAndFlagsBits, v78._object, v83);

  static String.+= infix(_:_:)();

  v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hAs RegStat: ", 0xEuLL, 1);
  v290 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v291 = v85;
  v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v86);

  v289 = (*((*v240 & *v241) + 0x440))(v87);
  type metadata accessor for HMRegionStatus(0);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v88);

  v211 = v290;
  v210 = v291;

  outlined destroy of DefaultStringInterpolation(&v290);
  v89 = MEMORY[0x1DA7309B0](v211, v210);
  MEMORY[0x1DA7309C0](v84._countAndFlagsBits, v84._object, v89);

  static String.+= infix(_:_:)();

  v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp RegStat: ", 0xDuLL, 1);
  v287 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v288 = v91;
  v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v92);

  v286 = (*((*v240 & *v241) + 0x470))(v93);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v94);

  v213 = v287;
  v212 = v288;

  outlined destroy of DefaultStringInterpolation(&v287);
  v95 = MEMORY[0x1DA7309B0](v213, v212);
  MEMORY[0x1DA7309C0](v90._countAndFlagsBits, v90._object, v95);

  static String.+= infix(_:_:)();

  v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp Cap: ", 9uLL, 1);
  v284 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v285 = v97;
  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v98);

  v283 = (*((*v240 & *v241) + 0x4A0))(v99);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v100);

  v215 = v284;
  v214 = v285;

  outlined destroy of DefaultStringInterpolation(&v284);
  v101 = MEMORY[0x1DA7309B0](v215, v214);
  MEMORY[0x1DA7309C0](v96._countAndFlagsBits, v96._object, v101);

  static String.+= infix(_:_:)();

  v102 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp En: ", 8uLL, 1);
  v281 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v282 = v103;
  v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v104);

  v280 = (*((*v240 & *v241) + 0x4D0))(v105);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v106);

  v217 = v281;
  v216 = v282;

  outlined destroy of DefaultStringInterpolation(&v281);
  v107 = MEMORY[0x1DA7309B0](v217, v216);
  MEMORY[0x1DA7309C0](v102._countAndFlagsBits, v102._object, v107);

  static String.+= infix(_:_:)();

  v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ht RegStat: ", 0xDuLL, 1);
  v278 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v279 = v109;
  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v110);

  v277 = (*((*v240 & *v241) + 0x4F0))(v111);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v112);

  v219 = v278;
  v218 = v279;

  outlined destroy of DefaultStringInterpolation(&v278);
  v113 = MEMORY[0x1DA7309B0](v219, v218);
  MEMORY[0x1DA7309C0](v108._countAndFlagsBits, v108._object, v113);

  static String.+= infix(_:_:)();

  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp Ocl res: ", 0xDuLL, 1);
  v275 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v276 = v115;
  v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v116);

  v274 = (*((*v240 & *v241) + 0x580))(v117);
  type metadata accessor for HMOcclusionResult(0);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v118 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v118);

  v221 = v275;
  v220 = v276;

  outlined destroy of DefaultStringInterpolation(&v275);
  v119 = MEMORY[0x1DA7309B0](v221, v220);
  MEMORY[0x1DA7309C0](v114._countAndFlagsBits, v114._object, v119);

  static String.+= infix(_:_:)();

  v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" offMo Cap: ", 0xCuLL, 1);
  v272 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v273 = v121;
  v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v122);

  v271 = (*((*v240 & *v241) + 0x3B0))(v123);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v124);

  v223 = v272;
  v222 = v273;

  outlined destroy of DefaultStringInterpolation(&v272);
  v125 = MEMORY[0x1DA7309B0](v223, v222);
  MEMORY[0x1DA7309C0](v120._countAndFlagsBits, v120._object, v125);

  static String.+= infix(_:_:)();

  v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" offMo Allow: ", 0xEuLL, 1);
  v269 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v270 = v127;
  v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v128);

  v268 = [v240 listeningModeOffAllowed];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v129 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v129);

  v225 = v269;
  v224 = v270;

  outlined destroy of DefaultStringInterpolation(&v269);
  v130 = MEMORY[0x1DA7309B0](v225, v224);
  MEMORY[0x1DA7309C0](v126._countAndFlagsBits, v126._object, v130);

  static String.+= infix(_:_:)();

  v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" btAddress: ", 0xCuLL, 1);
  v266 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v267 = v132;
  v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v133);

  v265[0] = (*((*v240 & *v241) + 0x320))(v134);
  v265[1] = v135;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v265);
  v136 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v136);

  v227 = v266;
  v226 = v267;

  outlined destroy of DefaultStringInterpolation(&v266);
  v137 = MEMORY[0x1DA7309B0](v227, v226);
  MEMORY[0x1DA7309C0](v131._countAndFlagsBits, v131._object, v137);

  static String.+= infix(_:_:)();

  v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" btUUID: ", 9uLL, 1);
  v263 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v264 = v139;
  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v140);

  v262[0] = (*((*v240 & *v241) + 0x350))(v141);
  v262[1] = v142;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v262);
  v143 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v143);

  v229 = v263;
  v228 = v264;

  outlined destroy of DefaultStringInterpolation(&v263);
  v144 = MEMORY[0x1DA7309B0](v229, v228);
  MEMORY[0x1DA7309C0](v138._countAndFlagsBits, v138._object, v144);

  static String.+= infix(_:_:)();

  v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp PPE Cap: ", 0xDuLL, 1);
  v260 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v261 = v146;
  v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v147);

  v259 = (*((*v240 & *v241) + 0x640))(v148);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v149);

  v231 = v260;
  v230 = v261;

  outlined destroy of DefaultStringInterpolation(&v260);
  v150 = MEMORY[0x1DA7309B0](v231, v230);
  MEMORY[0x1DA7309C0](v145._countAndFlagsBits, v145._object, v150);

  static String.+= infix(_:_:)();

  v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp PPE CapLvl: ", 0x10uLL, 1);
  v257 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v258 = v152;
  v153 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v153);

  v256 = (*((*v240 & *v241) + 0x670))(v154);
  type metadata accessor for NSNumber();
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v256);
  v155 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v155);

  v233 = v257;
  v232 = v258;

  outlined destroy of DefaultStringInterpolation(&v257);
  v156 = MEMORY[0x1DA7309B0](v233, v232);
  MEMORY[0x1DA7309C0](v151._countAndFlagsBits, v151._object, v156);

  static String.+= infix(_:_:)();

  v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp PPE En: ", 0xCuLL, 1);
  v254 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v255 = v158;
  v159 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v159);

  v253 = (*((*v240 & *v241) + 0x6A0))(v160);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v161);

  v235 = v254;
  v234 = v255;

  outlined destroy of DefaultStringInterpolation(&v254);
  v162 = MEMORY[0x1DA7309B0](v235, v234);
  MEMORY[0x1DA7309C0](v157._countAndFlagsBits, v157._object, v162);

  static String.+= infix(_:_:)();

  v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp ppE RegStat: ", 0x11uLL, 1);
  v251 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v252 = v164;
  v165 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v165);

  v250 = (*((*v240 & *v241) + 0x6C0))(v166);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v167);

  v237 = v251;
  v236 = v252;

  outlined destroy of DefaultStringInterpolation(&v251);
  v168 = MEMORY[0x1DA7309B0](v237, v236);
  MEMORY[0x1DA7309C0](v163._countAndFlagsBits, v163._object, v168);

  static String.+= infix(_:_:)();

  v169 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ha V2 RegStat: ", 0x10uLL, 1);
  v248 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v249 = v170;
  v171 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v171);

  v247 = (*((*v240 & *v241) + 0x6F0))(v172);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v173);

  v239 = v248;
  v238 = v249;

  outlined destroy of DefaultStringInterpolation(&v248);
  v174 = MEMORY[0x1DA7309B0](v239, v238);
  MEMORY[0x1DA7309C0](v169._countAndFlagsBits, v169._object, v174);

  static String.+= infix(_:_:)();

  v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ha V2 Cap: ", 0xCuLL, 1);
  v245 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v246 = v176;
  v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v177);

  (*((*v240 & *v241) + 0x720))(v178);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v179 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v179);

  v243 = v245;
  v242 = v246;

  outlined destroy of DefaultStringInterpolation(&v245);
  v180 = MEMORY[0x1DA7309B0](v243, v242);
  MEMORY[0x1DA7309C0](v175._countAndFlagsBits, v175._object, v180);

  static String.+= infix(_:_:)();

  v244 = v334._countAndFlagsBits;

  outlined destroy of String(&v334);
  return v244;
}

char *HearingRecord.init()()
{
  v224 = 0;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCGMd, &_s7Combine9PublishedVySo8NSNumberCGMR);
  v146 = *(v151 - 8);
  v147 = v151 - 8;
  v11 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v10 - v11;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HMInfoCSgGMd, &_s7Combine9PublishedVySo6HMInfoCSgGMR);
  v138 = *(v143 - 8);
  v139 = v143 - 8;
  v12 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v10 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  v127 = *(v135 - 8);
  v128 = v135 - 8;
  v13 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v10 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HMOcclusionResultVGMd, &_s7Combine9PublishedVySo17HMOcclusionResultVGMR);
  v121 = *(v126 - 8);
  v122 = v126 - 8;
  v14 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v10 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  v111 = *(v118 - 8);
  v112 = v118 - 8;
  v15 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v10 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v97 = *(v165 - 8);
  v98 = v165 - 8;
  v16 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v10 - v16;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v87 = *(v172 - 8);
  v88 = v172 - 8;
  v17 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v10 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v75 = *(v84 - 8);
  v76 = v84 - 8;
  v18 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v10 - v18;
  v224 = v0;
  v0[OBJC_IVAR____TtC16HeadphoneManager13HearingRecord_deviceRemoteSendState] = 0;
  v20 = v224;
  v19 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__amplification;
  KeyPath = swift_getKeyPath();
  v22 = &v223;
  v39 = 0;
  v223 = 0;
  v175 = 0;
  v176 = type metadata accessor for HearingRecord(0);
  v157 = lazy protocol witness table accessor for type HearingRecord and conformance HearingRecord();
  v44 = MEMORY[0x1E69E6448];
  v45 = MEMORY[0x1E69E6498];
  v46 = MEMORY[0x1E69E6470];
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v222);
  v221 = v222;
  HearingRecordConfig.init(_:_:_:)(KeyPath, v22, &v221, v176, v44, &v20[v19]);
  v24 = v224;
  v23 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__balance;
  v25 = swift_getKeyPath();
  v26 = &v220;
  v220 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v219);
  v218 = v219;
  HearingRecordConfig.init(_:_:_:)(v25, v26, &v218, v176, v44, &v24[v23]);
  v28 = v224;
  v27 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__beamFormer;
  v29 = swift_getKeyPath();
  v30 = &v217;
  v217 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v216);
  v215 = v216;
  HearingRecordConfig.init(_:_:_:)(v29, v30, &v215, v176, v44, &v28[v27]);
  v32 = v224;
  v31 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__noiseSuppression;
  v33 = swift_getKeyPath();
  v34 = &v214;
  v214 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v213);
  v212 = v213;
  HearingRecordConfig.init(_:_:_:)(v33, v34, &v212, v176, v44, &v32[v31]);
  v36 = v224;
  v35 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__ownVoiceLevel;
  v37 = swift_getKeyPath();
  v38 = &v211;
  v211 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v210);
  v209 = v210;
  HearingRecordConfig.init(_:_:_:)(v37, v38, &v209, v176, v44, &v36[v35]);
  v41 = v224;
  v40 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__tone;
  v42 = swift_getKeyPath();
  v43 = &v208;
  v208 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v207);
  v206 = v207;
  HearingRecordConfig.init(_:_:_:)(v42, v43, &v206, v176, v44, &v41[v40]);
  v48 = v224;
  v47 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__pmeVoiceEnabled;
  v49 = swift_getKeyPath();
  v50 = &v205;
  v205 = 0;
  v156 = type metadata accessor for HMMultiState(v175);
  v158 = lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  v159 = lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v204);
  v203 = v204;
  HearingRecordConfig.init(_:_:_:)(v49, v50, &v203, v176, v156, &v48[v47]);
  v52 = v224;
  v51 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__pmeMediaEnabled;
  v53 = swift_getKeyPath();
  v54 = &v202;
  v202 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v201);
  v200 = v201;
  HearingRecordConfig.init(_:_:_:)(v53, v54, &v200, v176, v156, &v52[v51]);
  v56 = v224;
  v55 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__mediaAssistEnabled;
  v57 = swift_getKeyPath();
  v58 = &v199;
  v199 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v198);
  v197 = v198;
  HearingRecordConfig.init(_:_:_:)(v57, v58, &v197, v176, v156, &v56[v55]);
  v60 = v224;
  v59 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistEnabled;
  v61 = swift_getKeyPath();
  v62 = &v196;
  v196 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v195);
  v194 = v195;
  HearingRecordConfig.init(_:_:_:)(v61, v62, &v194, v176, v156, &v60[v59]);
  v64 = v224;
  v63 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__swipeGainEnabled;
  v65 = swift_getKeyPath();
  v66 = &v193;
  v193 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v192);
  v191 = v192;
  HearingRecordConfig.init(_:_:_:)(v65, v66, &v191, v176, v156, &v64[v63]);
  v68 = v224;
  v67 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidEnabled;
  v69 = swift_getKeyPath();
  v70 = &v190;
  v190 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v189);
  v188 = v189;
  HearingRecordConfig.init(_:_:_:)(v69, v70, &v188, v176, v156, &v68[v67]);
  v72 = v224;
  v71 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__listeningModeOffAllowed;
  v73 = swift_getKeyPath();
  v74 = &v187;
  v187 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v186);
  v185 = v186;
  HearingRecordConfig.init(_:_:_:)(v73, v74, &v185, v176, v156, &v72[v71]);
  v78 = v224;
  v77 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__bluetoothAddress;
  v80 = "";
  v79 = 1;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v175, 1);
  property wrapper backing initializer of HearingRecord.bluetoothAddress(v1._countAndFlagsBits, v1._object, v83);
  v86 = *(v75 + 32);
  v85 = v75 + 32;
  v86(&v78[v77], v83, v84);
  v82 = v224;
  v81 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__bluetoothUUID;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v80, v175, v79 & 1);
  property wrapper backing initializer of HearingRecord.bluetoothUUID(v2._countAndFlagsBits, v2._object, v83);
  v86(&v82[v81], v83, v84);
  v90 = v224;
  v89 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earTipFitTestCapability;
  v168 = 0;
  property wrapper backing initializer of HearingRecord.earTipFitTestCapability(0, v171);
  v174 = *(v87 + 32);
  v173 = v87 + 32;
  v174(&v90[v89], v171, v172);
  v92 = v224;
  v91 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hideOffModeCapability;
  property wrapper backing initializer of HearingRecord.hideOffModeCapability(v168, v171);
  v174(&v92[v91], v171, v172);
  v94 = v224;
  v93 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistCapability;
  property wrapper backing initializer of HearingRecord.hearingAssistCapability(v168, v171);
  v174(&v94[v93], v171, v172);
  v96 = v224;
  v95 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistEnrolled;
  property wrapper backing initializer of HearingRecord.hearingAssistEnrolled(v168, v171);
  v174(&v96[v95], v171, v172);
  v100 = v224;
  v99 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistRegionStatus;
  property wrapper backing initializer of HearingRecord.hearingAssistRegionStatus(v168, v164);
  v167 = *(v97 + 32);
  v166 = v97 + 32;
  v167(&v100[v99], v164, v165);
  v102 = v224;
  v101 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionRegionStatus;
  property wrapper backing initializer of HearingRecord.hearingProtectionRegionStatus(v168, v164);
  v167(&v102[v101], v164, v165);
  v104 = v224;
  v103 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionCapability;
  property wrapper backing initializer of HearingRecord.hearingProtectionCapability(v168, v171);
  v174(&v104[v103], v171, v172);
  v106 = v224;
  v105 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionEnabled;
  v107 = swift_getKeyPath();
  v108 = &v184;
  v184 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v183);
  v182 = v183;
  HearingRecordConfig.init(_:_:_:)(v107, v108, &v182, v176, v156, &v106[v105]);
  v110 = v224;
  v109 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingTestRegionStatus;
  property wrapper backing initializer of HearingRecord.hearingTestRegionStatus(v168, v164);
  v167(&v110[v109], v164, v165);
  v114 = v224;
  v113 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayLeft;
  type metadata accessor for NSNumber();
  v3 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.earLossArrayLeft(v3, v117);
  v120 = *(v111 + 32);
  v119 = v111 + 32;
  v120(&v114[v113], v117, v118);
  v116 = v224;
  v115 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayRight;
  v4 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.earLossArrayRight(v4, v117);
  v120(&v116[v115], v117, v118);
  v124 = v224;
  v123 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionOcclusionResult;
  property wrapper backing initializer of HearingRecord.hearingProtectionOcclusionResult(v168, v125);
  (*(v121 + 32))(&v124[v123], v125, v126);
  v130 = v224;
  v129 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__validAudiograms;
  v131 = type metadata accessor for HKAudiogramSample();
  v5 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.validAudiograms(v5, v134);
  v137 = *(v127 + 32);
  v136 = v127 + 32;
  v137(&v130[v129], v134, v135);
  v133 = v224;
  v132 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__invalidAudiograms;
  v6 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.invalidAudiograms(v6, v134);
  v137(&v133[v132], v134, v135);
  v141 = v224;
  v140 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__safetyInformation;
  property wrapper backing initializer of HearingRecord.safetyInformation(v175, v142);
  (*(v138 + 32))(&v141[v140], v142, v143);
  v145 = v224;
  v144 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapability;
  property wrapper backing initializer of HearingRecord.hearingProtectionPPECapability(v168, v171);
  v174(&v145[v144], v171, v172);
  v149 = v224;
  v148 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapLevel;
  v7.super.super.isa = NSNumber.__allocating_init(value:)(v175).super.super.isa;
  property wrapper backing initializer of HearingRecord.hearingProtectionPPECapLevel(v7.super.super.isa, v150);
  (*(v146 + 32))(&v149[v148], v150, v151);
  v153 = v224;
  v152 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPEEnabled;
  v154 = swift_getKeyPath();
  v155 = &v181;
  v181 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v180);
  v179 = v180;
  HearingRecordConfig.init(_:_:_:)(v154, v155, &v179, v176, v156, &v153[v152]);
  v161 = v224;
  v160 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPERegionStatus;
  property wrapper backing initializer of HearingRecord.hearingProtectionPPERegionStatus(v168, v164);
  v167(&v161[v160], v164, v165);
  v163 = v224;
  v162 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2RegionStatus;
  property wrapper backing initializer of HearingRecord.hearingAidV2RegionStatus(v168, v164);
  v167(&v163[v162], v164, v165);
  v170 = v224;
  v169 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2Capability;
  property wrapper backing initializer of HearingRecord.hearingAidV2Capability(v168, v171);
  v174(&v170[v169], v171, v172);
  v8 = v176;
  *&v224[OBJC_IVAR____TtC16HeadphoneManager13HearingRecord_deviceRecord] = v175;
  v178.receiver = v224;
  v178.super_class = v8;
  v177 = objc_msgSendSuper2(&v178, sel_init);
  MEMORY[0x1E69E5928](v177);
  v224 = v177;
  MEMORY[0x1E69E5920](v177);
  return v177;
}

id HearingRecord.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingRecord(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HearingRecord@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HearingRecord(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t key path getter for HearingRecordModel.bluetoothAddress : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 296))(v2);
  a2[1] = v3;
}

uint64_t key path setter for HearingRecordModel.bluetoothAddress : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 304))(v4, v6);
}

uint64_t HearingRecordModel.bluetoothAddress.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.bluetoothAddress.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.bluetoothUUID : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 320))(v2);
  a2[1] = v3;
}

uint64_t key path setter for HearingRecordModel.bluetoothUUID : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 328))(v4, v6);
}

uint64_t HearingRecordModel.bluetoothUUID.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.bluetoothUUID.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  swift_endAccess();
}

uint64_t HearingRecordModel.amplification.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.amplification.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.balance.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.balance.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.beamFormer.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.beamFormer.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HearingRecordModel.earLossArrayLeft : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 416))(v2);
}

uint64_t key path setter for HearingRecordModel.earLossArrayLeft : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of [NSNumber](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 424))(v4);
}

uint64_t HearingRecordModel.earLossArrayLeft.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.earLossArrayLeft.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 72) = a1;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.earLossArrayRight : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 440))(v2);
}

uint64_t key path setter for HearingRecordModel.earLossArrayRight : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of [NSNumber](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 448))(v4);
}

uint64_t HearingRecordModel.earLossArrayRight.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 80);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.earLossArrayRight.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 80) = a1;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingAssistCapability : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 464))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistCapability : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 472))(v3);
}

uint64_t HearingRecordModel.hearingAssistCapability.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistCapability.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.mediaAssistEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 89);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.mediaAssistEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 89) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingAssistEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 90);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 90) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingAssistEnrolled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 536))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistEnrolled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 544))(v3);
}

uint64_t HearingRecordModel.hearingAssistEnrolled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 91);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistEnrolled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 91) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingAssistRegionStatus : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 560))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistRegionStatus : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 568))(v3);
}

uint64_t HearingRecordModel.hearingAssistRegionStatus.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 92);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistRegionStatus.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 92) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingProtectionRegionStatus : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 584))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingProtectionRegionStatus : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 592))(v3);
}

uint64_t HearingRecordModel.hearingProtectionRegionStatus.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 93);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionRegionStatus.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 93) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingProtectionCapability : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 608))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingProtectionCapability : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 616))(v3);
}

uint64_t HearingRecordModel.hearingProtectionCapability.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 94);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionCapability.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 94) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingProtectionEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 95);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 95) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingTestRegionStatus : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 656))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingTestRegionStatus : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 664))(v3);
}

uint64_t HearingRecordModel.hearingTestRegionStatus.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingTestRegionStatus.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingAidEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 97);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAidEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 97) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.noiseSuppression.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.noiseSuppression.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.ownVoiceLevel.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.ownVoiceLevel.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.pmeVoiceEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.pmeVoiceEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.pmeMediaEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 121);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.pmeMediaEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 121) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.tone.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 128);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.tone.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HearingRecordModel.validAudiograms : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 824))(v2);
}

uint64_t key path setter for HearingRecordModel.validAudiograms : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of [HKAudiogramSample](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 832))(v4);
}

uint64_t HearingRecordModel.validAudiograms.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 136);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.validAudiograms.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 136) = a1;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.invalidAudiograms : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 848))(v2);
}

uint64_t key path setter for HearingRecordModel.invalidAudiograms : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of [HKAudiogramSample](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 856))(v4);
}

uint64_t HearingRecordModel.invalidAudiograms.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 144);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.invalidAudiograms.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 144) = a1;

  swift_endAccess();
}

uint64_t HearingRecordModel.swipeGainEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 152);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.swipeGainEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.listeningModeOffAllowed.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 153);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.listeningModeOffAllowed.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 153) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingProtectionPPEEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 154);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionPPEEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 154) = a1;
  return swift_endAccess();
}

uint64_t static HearingRecordModel.debugStringForModifyPath(keyPath:)(uint64_t a1)
{

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMd, &_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMR);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v18)
  {

    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amplification", 0xDuLL, 1)._countAndFlagsBits;
  }

  else
  {

    swift_getKeyPath();
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v16)
    {

      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balance", 7uLL, 1)._countAndFlagsBits;
    }

    else
    {

      swift_getKeyPath();
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {

        return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("beamFormer", 0xAuLL, 1)._countAndFlagsBits;
      }

      else
      {

        swift_getKeyPath();
        v14 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v14)
        {

          return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noiseSuppression", 0x10uLL, 1)._countAndFlagsBits;
        }

        else
        {

          swift_getKeyPath();
          v13 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v13)
          {

            return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ownVoiceLevel", 0xDuLL, 1)._countAndFlagsBits;
          }

          else
          {

            swift_getKeyPath();
            v12 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v12)
            {

              return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pmeVoiceEnabled", 0xFuLL, 1)._countAndFlagsBits;
            }

            else
            {

              swift_getKeyPath();
              v11 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v11)
              {

                return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pmeMediaEnabled", 0xFuLL, 1)._countAndFlagsBits;
              }

              else
              {

                swift_getKeyPath();
                v10 = dispatch thunk of static Equatable.== infix(_:_:)();

                if (v10)
                {

                  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tone", 4uLL, 1)._countAndFlagsBits;
                }

                else
                {

                  swift_getKeyPath();
                  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v9)
                  {

                    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingAssistEnabled", 0x14uLL, 1)._countAndFlagsBits;
                  }

                  else
                  {

                    swift_getKeyPath();
                    v8 = dispatch thunk of static Equatable.== infix(_:_:)();

                    if (v8)
                    {

                      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mediaAssistEnabled", 0x12uLL, 1)._countAndFlagsBits;
                    }

                    else
                    {

                      swift_getKeyPath();
                      v7 = dispatch thunk of static Equatable.== infix(_:_:)();

                      if (v7)
                      {

                        return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingAidEnabled", 0x11uLL, 1)._countAndFlagsBits;
                      }

                      else
                      {

                        swift_getKeyPath();
                        v6 = dispatch thunk of static Equatable.== infix(_:_:)();

                        if (v6)
                        {

                          return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("swipeGainEnabled", 0x10uLL, 1)._countAndFlagsBits;
                        }

                        else
                        {

                          swift_getKeyPath();
                          v5 = dispatch thunk of static Equatable.== infix(_:_:)();

                          if (v5)
                          {

                            return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingProtectionEnabled", 0x18uLL, 1)._countAndFlagsBits;
                          }

                          else
                          {

                            swift_getKeyPath();
                            v4 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v4)
                            {

                              return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("listeningModeOffAllowed:", 0x18uLL, 1)._countAndFlagsBits;
                            }

                            else
                            {

                              swift_getKeyPath();
                              v3 = dispatch thunk of static Equatable.== infix(_:_:)();

                              if (v3)
                              {
                                return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingProtectionPPEEnabled", 0x1BuLL, 1)._countAndFlagsBits;
                              }

                              else
                              {
                                return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNKNOWN", 7uLL, 1)._countAndFlagsBits;
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
}

uint64_t HearingRecordModel.deinit()
{
  outlined destroy of String((v0 + 2));
  outlined destroy of String((v0 + 4));
  MEMORY[0x1E69E5920](v0[6]);
  MEMORY[0x1E69E5920](v0[7]);
  MEMORY[0x1E69E5920](v0[8]);
  outlined destroy of [NSNumber](v0 + 9);
  outlined destroy of [NSNumber](v0 + 10);
  MEMORY[0x1E69E5920](v0[13]);
  MEMORY[0x1E69E5920](v0[14]);
  MEMORY[0x1E69E5920](v0[16]);
  outlined destroy of [HKAudiogramSample](v0 + 17);
  outlined destroy of [HKAudiogramSample](v0 + 18);
  return v2;
}

uint64_t HearingRecordModel.init()()
{
  v0[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v0[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  type metadata accessor for NSNumber();
  *(v3 + 48) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 56) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 64) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 72) = _allocateUninitializedArray<A>(_:)();
  *(v3 + 80) = _allocateUninitializedArray<A>(_:)();
  *(v3 + 88) = 0;
  *(v3 + 89) = 0;
  *(v3 + 90) = 0;
  *(v3 + 91) = 0;
  *(v3 + 92) = 0;
  *(v3 + 93) = 0;
  *(v3 + 94) = 0;
  *(v3 + 95) = 0;
  *(v3 + 96) = 0;
  *(v3 + 97) = 0;
  *(v3 + 104) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 112) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 120) = 0;
  *(v3 + 121) = 0;
  *(v3 + 128) = NSNumber.init(integerLiteral:)(0);
  type metadata accessor for HKAudiogramSample();
  *(v3 + 136) = _allocateUninitializedArray<A>(_:)();
  v1 = _allocateUninitializedArray<A>(_:)();
  result = v3;
  *(v3 + 144) = v1;
  *(v3 + 152) = 0;
  *(v3 + 153) = 0;
  *(v3 + 154) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HMRegionStatus@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HMRegionStatus.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HMRegionStatus@<X0>(_BYTE *a1@<X8>)
{
  result = HMRegionStatus.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HMMultiState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HMMultiState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HMMultiState@<X0>(_BYTE *a1@<X8>)
{
  result = HMMultiState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HMOcclusionResult@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = HMOcclusionResult.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t HMOcclusionResult.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HMOcclusionResult@<X0>(_DWORD *a1@<X8>)
{
  result = HMOcclusionResult.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

{
  return a1();
}

unint64_t lazy protocol witness table accessor for type [NSNumber] and conformance <A> [A]()
{
  v2 = lazy protocol witness table cache variable for type [NSNumber] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [NSNumber] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NSNumber] and conformance <A> [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HMOcclusionResult and conformance HMOcclusionResult()
{
  v2 = lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult;
  if (!lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult)
  {
    type metadata accessor for HMOcclusionResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult;
  if (!lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult)
  {
    type metadata accessor for HMOcclusionResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HMInfo? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type HMInfo? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HMInfo? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6HMInfoCSgMd, &_sSo6HMInfoCSgMR);
    lazy protocol witness table accessor for type HMInfo and conformance NSObject();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMInfo? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HMInfo and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HMInfo and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HMInfo and conformance NSObject)
  {
    type metadata accessor for HMInfo();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMInfo and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HMInfo()
{
  v2 = lazy cache variable for type metadata for HMInfo;
  if (!lazy cache variable for type metadata for HMInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t block_copy_helper_325(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_349(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of HearingRecordConfig<HearingRecord, Float>(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of HearingRecordConfig<HearingRecord, HMMultiState>(void *a1)
{
}

unint64_t instantiation function for generic protocol witness table for HearingRecord(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HearingRecord and conformance HearingRecord();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata accessor for Published<HMInfo?>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for Published<HMInfo?>;
  if (!lazy cache variable for type metadata for Published<HMInfo?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6HMInfoCSgMd, &_sSo6HMInfoCSgMR);
    v4 = type metadata accessor for Published();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for Published<HMInfo?>);
      return v2;
    }
  }

  return v5;
}

void *outlined init with copy of [HKAudiogramSample](void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of [NSNumber](void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of HMDeviceRecord?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [PartialKeyPath<HearingRecordModel>] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PartialKeyPath<HearingRecordModel>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PartialKeyPath<HearingRecordModel>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMd, &_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PartialKeyPath<HearingRecordModel>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

void *outlined init with copy of HMInfo?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t static Logger.subsystem.getter()
{
  v1 = Logger.subsystem.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static Logger.subsystem.setter(uint64_t a1, uint64_t a2)
{
  v4 = Logger.subsystem.unsafeMutableAddressor();

  swift_beginAccess();
  *v4 = a1;
  *(v4 + 1) = a2;

  swift_endAccess();
}

uint64_t (*static Logger.subsystem.modify())(uint64_t a1)
{
  Logger.subsystem.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.subsystem.modify;
}

uint64_t static Logger.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.shared.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t variable initialization expression of Headphone_Manager.dispatchQueue()
{
  v9 = 0;
  v2 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = &v1 - v2;
  v3 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v7 = &v1 - v3;
  v4 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v6 = &v1 - v4;
  type metadata accessor for OS_dispatch_queue();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneManager", 0x1AuLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v8);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t Headphone_Manager.dispatchQueue.getter()
{
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneManager_dispatchQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t Headphone_Manager._topLevelUIHandler.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t (*Headphone_Manager._topLevelUIHandler.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 1556);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___HPMHeadphoneManager__topLevelUIHandler;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return Headphone_Manager._topLevelUIHandler.modify;
}

void Headphone_Manager._topLevelUIHandler.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(v2 + 3);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

uint64_t Headphone_Manager.topLevelUIHandler.getter()
{
  v42 = 0;
  v32 = 0;
  v33 = type metadata accessor for Logger();
  v34 = *(v33 - 8);
  v35 = v34;
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v0;
  v41 = Headphone_Manager._topLevelUIHandler.getter();
  v31 = v41 == 0;
  v30 = v31;
  outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v41);
  if (v30)
  {
    v2 = v36;
    v3 = Logger.shared.unsafeMutableAddressor();
    (*(v35 + 16))(v2, v3, v33);
    v28 = Logger.logObject.getter();
    v25 = v28;
    v27 = static os_log_type_t.error.getter();
    v26 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v28, v27))
    {
      v4 = v32;
      v16 = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = v16;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v14 = 0;
      v17 = createStorage<A>(capacity:type:)(0, v13, v13);
      v15 = v17;
      v18 = createStorage<A>(capacity:type:)(v14, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v40 = v16;
      v39 = v17;
      v38 = v18;
      v19 = 0;
      v20 = &v40;
      serialize(_:at:)(0, &v40);
      serialize(_:at:)(v19, v20);
      v37 = v29;
      v21 = &v7;
      MEMORY[0x1EEE9AC00](&v7);
      v22 = &v7 - 6;
      *(&v7 - 4) = v5;
      *(&v7 - 3) = &v39;
      *(&v7 - 2) = &v38;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v24 = v4;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v25, v26, "HeadphoneManager: deviceDiscoveryHandler unset", v12, 2u);
        v10 = 0;
        destroyStorage<A>(_:count:)(v15, 0, v13);
        destroyStorage<A>(_:count:)(v18, v10, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v12, MEMORY[0x1E69E7508]);

        v11 = v24;
      }
    }

    else
    {

      v11 = v32;
    }

    v8 = v11;

    (*(v35 + 8))(v36, v33);
    v9 = v8;
  }

  else
  {
    v9 = v32;
  }

  return Headphone_Manager._topLevelUIHandler.getter();
}

uint64_t key path getter for Headphone_Manager.topLevelUIHandler : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xD8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.topLevelUIHandler : Headphone_Manager(void *a1, void *a2)
{
  outlined init with copy of HeadphoneMangerTopLevelEntryUIHandling?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xE0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.topLevelUIHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Headphone_Manager.topLevelUIHandler.getter();
  return Headphone_Manager.topLevelUIHandler.modify;
}

void Headphone_Manager.topLevelUIHandler.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    swift_unknownObjectRetain();
    Headphone_Manager.topLevelUIHandler.setter(v2);
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(a1);
  }

  else
  {
    Headphone_Manager.topLevelUIHandler.setter(*a1);
  }
}

uint64_t Headphone_Manager.cbDiscovery.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_cbDiscovery);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.cbDiscovery.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_cbDiscovery);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t Headphone_Manager.controller.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_controller);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.controller.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_controller);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t Headphone_Manager.connection.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_connection);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.connection.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_connection);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t Headphone_Manager.deviceManager.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_deviceManager);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for Headphone_Manager.hmsClient : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x150))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.hmsClient : Headphone_Manager(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x158))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t Headphone_Manager.hmsClient.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*Headphone_Manager.hmsClient.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Headphone_Manager.hmsClient.getter();
  return Headphone_Manager.hmsClient.modify;
}

uint64_t Headphone_Manager.hmsClient.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return Headphone_Manager.hmsClient.setter(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  Headphone_Manager.hmsClient.setter(v3);
  return MEMORY[0x1E69E5920](*a1);
}

uint64_t Headphone_Manager.audioAccessoryToken.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.audioAccessoryToken.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for Headphone_Manager.cbUserController : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.cbUserController : Headphone_Manager(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x188))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t Headphone_Manager.cbUserController.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*Headphone_Manager.cbUserController.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Headphone_Manager.cbUserController.getter();
  return Headphone_Manager.cbUserController.modify;
}

uint64_t Headphone_Manager.cbUserController.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return Headphone_Manager.cbUserController.setter(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  Headphone_Manager.cbUserController.setter(v3);
  return MEMORY[0x1E69E5920](*a1);
}

uint64_t Headphone_Manager.connectedRecords.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t Headphone_Manager.connectedRecords.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for Headphone_Manager.connectedRecords : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x198))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.connectedRecords : Headphone_Manager(void *a1, void *a2)
{
  outlined init with copy of [String : HMDeviceRecord](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.connectedRecords.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 736);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return Headphone_Manager.connectedRecords.modify;
}

void Headphone_Manager.connectedRecords.modify(uint64_t *a1, char a2)
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

uint64_t variable initialization expression of Headphone_Manager._connectedRecords()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14HMDeviceRecordCtMd, &_sSS_So14HMDeviceRecordCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HMDeviceRecord();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for Headphone_Manager.$connectedRecords : Headphone_Manager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for Headphone_Manager.$connectedRecords : Headphone_Manager(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x1B8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t Headphone_Manager.$connectedRecords.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Headphone_Manager.$connectedRecords.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*Headphone_Manager.$connectedRecords.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 25887);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 25887);
  v6[4] = __swift_coroFrameAllocStub(v5, 25887);
  Headphone_Manager.$connectedRecords.getter();
  return Headphone_Manager.$connectedRecords.modify;
}

void Headphone_Manager.$connectedRecords.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    Headphone_Manager.$connectedRecords.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    Headphone_Manager.$connectedRecords.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t Headphone_Manager._connectedRecords.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedRecords;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t Headphone_Manager._connectedRecords.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedRecords;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t Headphone_Manager.deviceConnectionListener.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t Headphone_Manager.deviceConnectionListener.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for Headphone_Manager.deviceConnectionListener : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.deviceConnectionListener : Headphone_Manager(void *a1, void *a2)
{
  outlined init with copy of CBDeviceReporting?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1D0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t (*Headphone_Manager.deviceConnectionListener.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 136);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___HPMHeadphoneManager_deviceConnectionListener;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return Headphone_Manager.deviceConnectionListener.modify;
}

void Headphone_Manager.deviceConnectionListener.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    outlined destroy of CBDeviceReporting?(v2 + 3);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

uint64_t Headphone_Manager.connectedHeadphones.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t Headphone_Manager.connectedHeadphones.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for Headphone_Manager.connectedHeadphones : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.connectedHeadphones : Headphone_Manager(void *a1, void *a2)
{
  outlined init with copy of [String : HeadphoneDevice](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.connectedHeadphones.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 26052);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return Headphone_Manager.connectedHeadphones.modify;
}

void Headphone_Manager.connectedHeadphones.modify(uint64_t *a1, char a2)
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

uint64_t variable initialization expression of Headphone_Manager._connectedHeadphones()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HeadphoneDevice(0);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for Headphone_Manager.$connectedHeadphones : Headphone_Manager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1F8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for Headphone_Manager.$connectedHeadphones : Headphone_Manager(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x200))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t Headphone_Manager.$connectedHeadphones.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Headphone_Manager.$connectedHeadphones.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*Headphone_Manager.$connectedHeadphones.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 23004);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 23004);
  v6[4] = __swift_coroFrameAllocStub(v5, 23004);
  Headphone_Manager.$connectedHeadphones.getter();
  return Headphone_Manager.$connectedHeadphones.modify;
}

void Headphone_Manager.$connectedHeadphones.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    Headphone_Manager.$connectedHeadphones.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    Headphone_Manager.$connectedHeadphones.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t Headphone_Manager._connectedHeadphones.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedHeadphones;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t Headphone_Manager._connectedHeadphones.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedHeadphones;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t Headphone_Manager.pairedHeadphones.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t Headphone_Manager.pairedHeadphones.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for Headphone_Manager.pairedHeadphones : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x210))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.pairedHeadphones : Headphone_Manager(void *a1, void *a2)
{
  outlined init with copy of [String : HeadphoneDevice](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x218))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.pairedHeadphones.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 4296);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return Headphone_Manager.pairedHeadphones.modify;
}

void Headphone_Manager.pairedHeadphones.modify(uint64_t *a1, char a2)
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

uint64_t variable initialization expression of Headphone_Manager._pairedHeadphones()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HeadphoneDevice(0);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for Headphone_Manager.$pairedHeadphones : Headphone_Manager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for Headphone_Manager.$pairedHeadphones : Headphone_Manager(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x230))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t Headphone_Manager.$pairedHeadphones.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Headphone_Manager.$pairedHeadphones.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*Headphone_Manager.$pairedHeadphones.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 52768);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 52768);
  v6[4] = __swift_coroFrameAllocStub(v5, 52768);
  Headphone_Manager.$pairedHeadphones.getter();
  return Headphone_Manager.$pairedHeadphones.modify;
}

void Headphone_Manager.$pairedHeadphones.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    Headphone_Manager.$pairedHeadphones.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    Headphone_Manager.$pairedHeadphones.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t Headphone_Manager._pairedHeadphones.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneManager__pairedHeadphones;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t Headphone_Manager._pairedHeadphones.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneManager__pairedHeadphones;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t variable initialization expression of Headphone_Manager.pendingConnectedHeadphones()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HeadphoneDevice(0);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t Headphone_Manager.pendingConnectedHeadphones.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_pendingConnectedHeadphones);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.pendingConnectedHeadphones.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___HPMHeadphoneManager_pendingConnectedHeadphones);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t key path getter for Headphone_Manager.pendingConnectedHeadphones : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x240))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.pendingConnectedHeadphones : Headphone_Manager(void *a1, void *a2)
{
  outlined init with copy of [String : HeadphoneDevice](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x248))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void closure #1 in Headphone_Manager.init()(unsigned int a1, uint64_t a2)
{
  v31 = a2;
  v30 = a1;
  v51 = 0;
  v41 = 0;
  v50 = 0;
  v29 = 0;
  v38 = type metadata accessor for Logger();
  v32 = v38;
  v33 = *(v38 - 8);
  v37 = v33;
  v34 = v33;
  v2 = MEMORY[0x1EEE9AC00](v30);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v4;
  v51 = v2;
  v36 = v5 + 16;
  v50 = v5 + 16;
  v6 = Logger.shared.unsafeMutableAddressor();
  (*(v37 + 16))(v4, v6, v38);
  v43 = Logger.logObject.getter();
  v39 = v43;
  v42 = static os_log_type_t.default.getter();
  v40 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v44 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v43, v42))
  {
    v7 = v29;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = v20;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = 0;
    v21 = createStorage<A>(capacity:type:)(0, v17, v17);
    v19 = v21;
    v22 = createStorage<A>(capacity:type:)(v18, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v48 = v20;
    v47 = v21;
    v46 = v22;
    v23 = 0;
    v24 = &v48;
    serialize(_:at:)(0, &v48);
    serialize(_:at:)(v23, v24);
    v45 = v44;
    v25 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v26 = &v12 - 6;
    *(&v12 - 4) = v8;
    *(&v12 - 3) = &v47;
    *(&v12 - 2) = &v46;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v28 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v39, v40, "HeadphoneManager:Connection: audioaccessoryd started", v16, 2u);
      v14 = 0;
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v22, v14, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v16, MEMORY[0x1E69E7508]);

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v34 + 8))(v35, v32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v13 = Strong;
    v10 = Strong;
    outlined destroy of Headphone_Manager?(&Strong);
    v11 = swift_endAccess();
    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x258))(v11);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

id Headphone_Manager.__deallocating_deinit()
{
  v11 = 0;
  v2 = &v0[OBJC_IVAR___HPMHeadphoneManager_deviceManager];
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  [v3 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v3);
  v4 = &v0[OBJC_IVAR___HPMHeadphoneManager_cbDiscovery];
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4);
  swift_endAccess();
  [v5 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v5);
  v6 = &v0[OBJC_IVAR___HPMHeadphoneManager_controller];
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x1E69E5928](*v6);
  swift_endAccess();
  [v7 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v7);
  v8 = &v0[OBJC_IVAR___HPMHeadphoneManager_connection];
  swift_beginAccess();
  v9 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  [v9 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v9);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for Headphone_Manager(0);
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

Swift::Void __swiftcall Headphone_Manager.resetDeviceManager()()
{
  v5 = MEMORY[0x1E69E7D40];
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x150))();
  [v3 0x1FAC3AE78];
  v1 = MEMORY[0x1E69E5920](v3);
  v4 = (*((*v6 & *v5) + 0x138))(v1);
  [v4 0x1FAC3AE78];
  v2 = MEMORY[0x1E69E5920](v4);
  (*((*v6 & *v5) + 0x260))(v2);
  Headphone_Manager.configHearingModeClient()();
}

Swift::Void __swiftcall Headphone_Manager.configDeviceManager()()
{
  v100 = 0;
  v145 = 0;
  v89 = 0;
  v97 = type metadata accessor for Logger();
  v91 = v97;
  v92 = *(v97 - 8);
  v96 = v92;
  v93 = v92;
  v94 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v0 = &v33 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v0;
  v145 = v1;
  v2 = Logger.shared.unsafeMutableAddressor();
  (*(v96 + 16))(v0, v2, v97);
  v102 = Logger.logObject.getter();
  v98 = v102;
  v101 = static os_log_type_t.default.getter();
  v99 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v103 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v102, v101))
  {
    v3 = v89;
    v80 = static UnsafeMutablePointer.allocate(capacity:)();
    v76 = v80;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v78 = 0;
    v81 = createStorage<A>(capacity:type:)(0, v77, v77);
    v79 = v81;
    v82 = createStorage<A>(capacity:type:)(v78, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v107 = v80;
    v106 = v81;
    v105 = v82;
    v83 = 0;
    v84 = &v107;
    serialize(_:at:)(0, &v107);
    serialize(_:at:)(v83, v84);
    v104 = v103;
    v85 = &v33;
    MEMORY[0x1EEE9AC00](&v33);
    v86 = &v33 - 6;
    *(&v33 - 4) = v4;
    *(&v33 - 3) = &v106;
    *(&v33 - 2) = &v105;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v88 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v98, v99, "HeadphoneManager:Connection: Starting Device Manager", v76, 2u);
      v74 = 0;
      destroyStorage<A>(_:count:)(v79, 0, v77);
      destroyStorage<A>(_:count:)(v82, v74, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v76, MEMORY[0x1E69E7508]);

      v75 = v88;
    }
  }

  else
  {

    v75 = v89;
  }

  (*(v93 + 8))(v95, v91);
  v67 = 0;
  type metadata accessor for AADeviceManager();
  v5 = AADeviceManager.__allocating_init()();
  v6 = Headphone_Manager.deviceManager.setter(v5);
  v7 = *v90;
  v71 = MEMORY[0x1E69E7D40];
  v8 = (*((v7 & *MEMORY[0x1E69E7D40]) + 0x138))(v6);
  v9 = v90;
  v66 = v8;
  v10 = v90;
  v11 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v143 = partial apply for closure #1 in Headphone_Manager.configDeviceManager();
  v144 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v139 = 1107296256;
  v140 = 0;
  v141 = thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ();
  v142 = &block_descriptor_20;
  v65 = _Block_copy(&aBlock);

  [v66 setDeviceFoundHandler_];
  _Block_release(v65);

  v68 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  v70 = &v137;
  swift_beginAccess();
  v69 = *v68;
  v13 = v69;
  v14 = swift_endAccess();
  v72 = (*((*v9 & *v71) + 0x138))(v14);
  v73 = [v72 deviceFoundHandler];
  if (v73)
  {
    v64 = v73;
    v61 = v73;
    v15 = swift_allocObject();
    *(v15 + 16) = v61;
    v62 = thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply;
    v63 = v15;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v16 = *v69;
  v58 = MEMORY[0x1E69E7D40];
  (*((v16 & *MEMORY[0x1E69E7D40]) + 0x100))(v62, v63);
  v17 = v90;

  v18 = (*((*v17 & *v58) + 0x138))();
  v19 = v90;
  v54 = v18;
  v20 = v90;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v135 = partial apply for closure #2 in Headphone_Manager.configDeviceManager();
  v136 = v21;
  v130 = MEMORY[0x1E69E9820];
  v131 = 1107296256;
  v132 = 0;
  v133 = thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ();
  v134 = &block_descriptor_26;
  v53 = _Block_copy(&v130);

  [v54 setDeviceLostHandler_];
  _Block_release(v53);

  v55 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  v57 = &v129;
  swift_beginAccess();
  v56 = *v55;
  v22 = v56;
  v23 = swift_endAccess();
  v59 = (*((*v19 & *v58) + 0x138))(v23);
  v60 = [v59 deviceLostHandler];
  if (v60)
  {
    v52 = v60;
    v49 = v60;
    v24 = swift_allocObject();
    *(v24 + 16) = v49;
    v50 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ();
    v51 = v24;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v25 = *v56;
  v44 = MEMORY[0x1E69E7D40];
  (*((v25 & *MEMORY[0x1E69E7D40]) + 0x118))(v50, v51);
  v26 = v90;

  v27 = (*((*v26 & *v44) + 0x138))();
  v28 = v90;
  v36 = v27;
  v39 = &unk_1F54DF478;
  v37 = 24;
  v38 = 7;
  v34 = swift_allocObject();
  v33 = v34 + 16;
  v29 = v28;
  swift_unknownObjectWeakInit();

  v127 = partial apply for closure #3 in Headphone_Manager.configDeviceManager();
  v128 = v34;
  v122 = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v123 = 1107296256;
  v46 = 0;
  v124 = 0;
  v125 = thunk for @escaping @callee_guaranteed () -> ();
  v126 = &block_descriptor_30;
  v35 = _Block_copy(&v122);

  [v36 setInterruptionHandler_];
  _Block_release(v35);

  v30 = (*((*v28 & *v44) + 0x138))();
  v31 = v90;
  v43 = v30;
  v41 = swift_allocObject();
  v40 = v41 + 16;
  v32 = v31;
  swift_unknownObjectWeakInit();

  v120 = partial apply for closure #4 in Headphone_Manager.configDeviceManager();
  v121 = v41;
  v115 = MEMORY[0x1E69E9820];
  v116 = v45;
  v117 = v46;
  v118 = thunk for @escaping @callee_guaranteed () -> ();
  v119 = &block_descriptor_34;
  v42 = _Block_copy(&v115);

  [v43 setInvalidationHandler_];
  _Block_release(v42);

  v48 = (*((*v31 & *v44) + 0x138))();
  v113 = closure #5 in Headphone_Manager.configDeviceManager();
  v114 = 0;
  v108 = MEMORY[0x1E69E9820];
  v109 = v45;
  v110 = v46;
  v111 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v112 = &block_descriptor_37;
  v47 = _Block_copy(&v108);
  [v48 activateWithCompletion_];
  _Block_release(v47);
}

uint64_t closure #1 in Headphone_Manager.configDeviceManager()(void *a1, void *a2)
{
  v384 = a2;
  v381 = a1;
  v382 = 0;
  v455 = 0;
  v454 = 0;
  v383 = 0;
  v448 = 0;
  v443 = 0;
  v442 = 0;
  v440 = 0;
  v439 = 0;
  v434 = 0;
  v433 = 0;
  v423 = 0;
  v411 = 0;
  v385 = type metadata accessor for Logger();
  v386 = *(v385 - 8);
  v387 = v386;
  v391 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v385 - 8);
  v393 = (v391 + 15) & 0xFFFFFFFFFFFFFFF0;
  v388 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v389 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v390 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v392 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v394 = &v133 - v393;
  v455 = a1;
  v454 = v3;
  v395 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(a1);
  if (v395)
  {
    v380 = v395;
    v18 = v392;
    v341 = v395;
    v448 = v395;
    v19 = Logger.shared.unsafeMutableAddressor();
    v339 = *(v387 + 16);
    v340 = (v387 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v339(v18, v19, v385);
    v20 = v341;
    v349 = 7;
    v350 = swift_allocObject();
    *(v350 + 16) = v341;
    v361 = Logger.logObject.getter();
    v342 = v361;
    v360 = static os_log_type_t.default.getter();
    v343 = v360;
    v344 = 17;
    v354 = swift_allocObject();
    v345 = v354;
    v346 = 32;
    *(v354 + 16) = 32;
    v21 = swift_allocObject();
    v22 = v346;
    v355 = v21;
    v347 = v21;
    *(v21 + 16) = 8;
    v348 = v22;
    v23 = swift_allocObject();
    v24 = v350;
    v351 = v23;
    *(v23 + 16) = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.configDeviceManager();
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v351;
    v358 = v25;
    v352 = v25;
    *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v25 + 24) = v26;
    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v353 = v359;
    v356 = _allocateUninitializedArray<A>(_:)();
    v357 = v27;

    v28 = v354;
    v29 = v357;
    *v357 = closure #1 in OSLogArguments.append(_:)partial apply;
    v29[1] = v28;

    v30 = v355;
    v31 = v357;
    v357[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v31[3] = v30;

    v32 = v357;
    v33 = v358;
    v357[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[5] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v361, v360))
    {
      v35 = v383;
      v332 = static UnsafeMutablePointer.allocate(capacity:)();
      v329 = v332;
      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v333 = createStorage<A>(capacity:type:)(0, v330, v330);
      v331 = v333;
      v335 = 1;
      v334 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v400 = v332;
      v399 = v333;
      v398 = v334;
      v336 = &v400;
      serialize(_:at:)(2, &v400);
      serialize(_:at:)(v335, v336);
      v396 = closure #1 in OSLogArguments.append(_:)partial apply;
      v397 = v345;
      closure #1 in osLogInternal(_:log:type:)(&v396, v336, &v399, &v398);
      v337 = v35;
      v338 = v35;
      if (v35)
      {
        v327 = 0;

        __break(1u);
      }

      else
      {
        v396 = closure #1 in OSLogArguments.append(_:)partial apply;
        v397 = v347;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v400, &v399, &v398);
        v325 = 0;
        v326 = 0;
        v396 = closure #1 in OSLogArguments.append(_:)partial apply;
        v397 = v352;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v400, &v399, &v398);
        v323 = 0;
        v324 = 0;
        _os_log_impl(&dword_1D93D0000, v342, v343, "HeadphoneManager:Connection: AAF Device Found: %s", v329, 0xCu);
        destroyStorage<A>(_:count:)(v331, 0, v330);
        destroyStorage<A>(_:count:)(v334, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v329, MEMORY[0x1E69E7508]);

        v328 = v323;
      }
    }

    else
    {
      v36 = v383;

      v328 = v36;
    }

    v319 = v328;

    v320 = *(v387 + 8);
    v321 = (v387 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v320(v392, v385);
    v322 = [v341 btAddressData];
    if (v322)
    {
      v318 = v322;
      v313 = v322;
      v314 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v315 = v37;

      v316 = v314;
      v317 = v315;
    }

    else
    {
      v316 = 0;
      v317 = 0xF000000000000000;
    }

    v311 = v317;
    v312 = v316;
    if (v317 >> 60 == 15)
    {
      v38 = v390;
      v39 = Logger.shared.unsafeMutableAddressor();
      v339(v38, v39, v385);
      v307 = Logger.logObject.getter();
      v304 = v307;
      v306 = static os_log_type_t.error.getter();
      v305 = v306;
      v308 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v307, v306))
      {
        v128 = v319;
        v157 = static UnsafeMutablePointer.allocate(capacity:)();
        v153 = v157;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v155 = 0;
        v158 = createStorage<A>(capacity:type:)(0, v154, v154);
        v156 = v158;
        v159 = createStorage<A>(capacity:type:)(v155, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v447 = v157;
        v446 = v158;
        v445 = v159;
        v160 = 0;
        v161 = &v447;
        serialize(_:at:)(0, &v447);
        serialize(_:at:)(v160, v161);
        v444 = v308;
        v162 = &v133;
        MEMORY[0x1EEE9AC00](&v133);
        v163 = &v133 - 6;
        *(&v133 - 4) = v129;
        *(&v133 - 3) = &v446;
        *(&v133 - 2) = &v445;
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v165 = v128;
        if (v128)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v304, v305, "HeadphoneManager:Connection: Invalid BT Address", v153, 2u);
          v151 = 0;
          destroyStorage<A>(_:count:)(v156, 0, v154);
          destroyStorage<A>(_:count:)(v159, v151, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v153, MEMORY[0x1E69E7508]);

          v152 = v165;
        }
      }

      else
      {

        v152 = v319;
      }

      v150 = v152;

      v320(v390, v385);
      return v150;
    }

    else
    {
      v309 = v312;
      v310 = v311;
      v302 = v311;
      v303 = v312;
      v442 = v312;
      v443 = v311;
      if (MEMORY[0x1DA730470]() == 6)
      {
        v40 = v384;
        v291 = 1;
        v297 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X-%02X-%02X-%02X-%02X-%02X", 0x1DuLL, 1);
        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
        v296 = _allocateUninitializedArray<A>(_:)();
        v294 = v41;
        v42 = MEMORY[0x1DA7304B0](0, v303, v302);
        v43 = v291;
        v44 = v303;
        v45 = v302;
        v46 = v294;
        v292 = MEMORY[0x1E69E7508];
        v294[3] = MEMORY[0x1E69E7508];
        v293 = MEMORY[0x1E69E7558];
        v46[4] = MEMORY[0x1E69E7558];
        *v46 = v42;
        v47 = MEMORY[0x1DA7304B0](v43, v44, v45);
        v48 = v303;
        v49 = v302;
        v50 = v293;
        v51 = v294;
        v294[8] = v292;
        v51[9] = v50;
        *(v51 + 40) = v47;
        v52 = MEMORY[0x1DA7304B0](2, v48, v49);
        v53 = v303;
        v54 = v302;
        v55 = v293;
        v56 = v294;
        v294[13] = v292;
        v56[14] = v55;
        *(v56 + 80) = v52;
        v57 = MEMORY[0x1DA7304B0](3, v53, v54);
        v58 = v303;
        v59 = v302;
        v60 = v293;
        v61 = v294;
        v294[18] = v292;
        v61[19] = v60;
        *(v61 + 120) = v57;
        v62 = MEMORY[0x1DA7304B0](4, v58, v59);
        v63 = v303;
        v64 = v302;
        v65 = v293;
        v66 = v294;
        v294[23] = v292;
        v66[24] = v65;
        *(v66 + 160) = v62;
        v67 = MEMORY[0x1DA7304B0](5, v63, v64);
        v68 = v293;
        v69 = v294;
        v294[28] = v292;
        v69[29] = v68;
        *(v69 + 200) = v67;
        _finalizeUninitializedArray<A>(_:)();
        v300 = String.init(format:_:)();
        v301 = v70;
        v298 = v300;
        v299 = v70;

        v433 = v300;
        v434 = v301;
        if ((*((*v40 & *MEMORY[0x1E69E7D40]) + 0x270))(v341))
        {
          v71 = v384;

          v288 = (*((*v71 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v72);
          v287 = v288;
          v426[0] = v298;
          v426[1] = v299;
          type metadata accessor for HeadphoneDevice(0);
          v289 = v426;
          MEMORY[0x1DA7308E0](&v427);
          outlined destroy of String(v289);
          v290 = v427;
          if (v427)
          {
            v286 = v290;
            v76 = v290;
            v285 = v290;
            v411 = v290;

            v77 = *v76;
            v281 = MEMORY[0x1E69E7D40];
            (*((v77 & *MEMORY[0x1E69E7D40]) + 0xB78))(v381, v341);
            v78 = v384;

            v410 = 0;
            v79 = *((*v78 & *v281) + 0x220);
            v269 = &v409;
            v270 = v79();
            v408[0] = v298;
            v408[1] = v299;
            v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
            v267 = &v407;
            v271 = v408;
            v80 = Dictionary.subscript.modify();
            v81 = v384;
            v268 = v80;
            v266 = v82;
            v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
            v274 = lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?();
            ==? infix<A>(_:_:)(v266, &v410, v273, v274);
            v282 = 0;
            v268(v267);
            v270(v269, v282);
            outlined destroy of String(v271);

            v83 = v285;
            v406 = v285;
            v84 = *((*v81 & *v281) + 0x1F0);
            v277 = &v405;
            v278 = v84();
            v404[0] = v298;
            v404[1] = v299;
            v275 = &v403;
            v279 = v404;
            v85 = Dictionary.subscript.modify();
            v86 = v285;
            v276 = v85;
            v280 = &v406;
            ==? infix<A>(_:_:)(v87, &v406, v273, v274);
            v276(v275, v282);
            v278(v277, v282);
            outlined destroy of String(v279);
            outlined destroy of HeadphoneDevice?(v280);
            v402 = 1;
            v88 = *((*v86 & *v281) + 0x3A0);
            v283 = &v401;
            v284 = v88();
            ==? infix<A>(_:_:)(v89, &v402, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
            v284(v283, v282);
          }

          else
          {

            v424 = closure #1 in closure #1 in Headphone_Manager.configDeviceManager()(v384, v298, v299, v381, v341);
            v73 = v381;
            v74 = v341;
            v75 = v384;
            if (v424)
            {
              v425 = v424;
            }

            else
            {
              v90 = v384;
              v265 = [v381 headphoneDeviceWithCbDevice:v341 withDelegate:v384];
              swift_unknownObjectRelease();
              v425 = v265;
              if (v424)
              {
                outlined destroy of HeadphoneDevice?(&v424);
              }
            }

            v91 = v384;

            v253 = v425;
            v244 = v425;
            v423 = v425;

            v92 = v253;
            v422 = v253;
            v93 = *v91;
            v264 = MEMORY[0x1E69E7D40];
            v94 = *((v93 & *MEMORY[0x1E69E7D40]) + 0x1F0);
            v248 = &v421;
            v249 = v94();
            v420[0] = v298;
            v420[1] = v299;
            v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
            v246 = &v419;
            v250 = v420;
            v95 = Dictionary.subscript.modify();
            v96 = v384;
            v247 = v95;
            v245 = v97;
            v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
            v255 = lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?();
            v251 = &v422;
            ==? infix<A>(_:_:)(v245, &v422, v254, v255);
            v261 = 0;
            v247(v246);
            v249(v248, v261);
            outlined destroy of String(v250);
            outlined destroy of HeadphoneDevice?(v251);

            v418 = 0;
            v98 = *((*v96 & *v264) + 0x220);
            v258 = &v417;
            v259 = v98();
            v416[0] = v298;
            v416[1] = v299;
            v256 = &v415;
            v260 = v416;
            v99 = Dictionary.subscript.modify();
            v100 = v253;
            v257 = v99;
            ==? infix<A>(_:_:)(v101, &v418, v254, v255);
            v257(v256, v261);
            v259(v258, v261);
            outlined destroy of String(v260);
            v414 = 1;
            v102 = *((*v100 & *v264) + 0x3A0);
            v262 = &v413;
            v103 = v102();
            v104 = v384;
            v263 = v103;
            ==? infix<A>(_:_:)(v105, &v414, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
            v106 = v263(v262, v261);
            v412 = (*((*v104 & *v264) + 0xD8))(v106);
            if (v412)
            {
              v243 = v412;
              swift_unknownObjectRetain();
              outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v412);
              swift_getObjectType();
              [v243 addTopLevelEntryWithHpDevice_];
              swift_unknownObjectRelease();
            }

            else
            {
              outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v412);
            }
          }

          v242 = v319;
        }

        else
        {
          v107 = v389;
          v108 = Logger.shared.unsafeMutableAddressor();
          v339(v107, v108, v385);
          v109 = v341;
          v231 = 7;
          v232 = swift_allocObject();
          *(v232 + 16) = v341;
          v241 = Logger.logObject.getter();
          v225 = v241;
          v240 = static os_log_type_t.error.getter();
          v226 = v240;
          v227 = 17;
          v235 = swift_allocObject();
          v228 = v235;
          *(v235 + 16) = 64;
          v236 = swift_allocObject();
          v229 = v236;
          *(v236 + 16) = 8;
          v230 = 32;
          v110 = swift_allocObject();
          v111 = v232;
          v233 = v110;
          *(v110 + 16) = partial apply for implicit closure #5 in closure #1 in Headphone_Manager.configDeviceManager();
          *(v110 + 24) = v111;
          v112 = swift_allocObject();
          v113 = v233;
          v239 = v112;
          v234 = v112;
          *(v112 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
          *(v112 + 24) = v113;
          v237 = _allocateUninitializedArray<A>(_:)();
          v238 = v114;

          v115 = v235;
          v116 = v238;
          *v238 = closure #1 in OSLogArguments.append(_:)partial apply;
          v116[1] = v115;

          v117 = v236;
          v118 = v238;
          v238[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v118[3] = v117;

          v119 = v238;
          v120 = v239;
          v238[4] = closure #1 in OSLogArguments.append(_:)partial apply;
          v119[5] = v120;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v241, v240))
          {
            v121 = v319;
            v218 = static UnsafeMutablePointer.allocate(capacity:)();
            v215 = v218;
            v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v221 = 1;
            v219 = createStorage<A>(capacity:type:)(1, v216, v216);
            v217 = v219;
            v220 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v432 = v218;
            v431 = v219;
            v430 = v220;
            v222 = &v432;
            serialize(_:at:)(2, &v432);
            serialize(_:at:)(v221, v222);
            v428 = closure #1 in OSLogArguments.append(_:)partial apply;
            v429 = v228;
            closure #1 in osLogInternal(_:log:type:)(&v428, v222, &v431, &v430);
            v223 = v121;
            v224 = v121;
            if (v121)
            {
              v213 = 0;

              __break(1u);
            }

            else
            {
              v428 = closure #1 in OSLogArguments.append(_:)partial apply;
              v429 = v229;
              closure #1 in osLogInternal(_:log:type:)(&v428, &v432, &v431, &v430);
              v211 = 0;
              v212 = 0;
              v428 = closure #1 in OSLogArguments.append(_:)partial apply;
              v429 = v234;
              closure #1 in osLogInternal(_:log:type:)(&v428, &v432, &v431, &v430);
              v209 = 0;
              v210 = 0;
              _os_log_impl(&dword_1D93D0000, v225, v226, "HeadphoneManager:Connection: Not Supported Apple Headphone %@", v215, 0xCu);
              destroyStorage<A>(_:count:)(v217, 1, v216);
              destroyStorage<A>(_:count:)(v220, 0, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v215, MEMORY[0x1E69E7508]);

              v214 = v209;
            }
          }

          else
          {
            v122 = v319;

            v214 = v122;
          }

          v208 = v214;

          v320(v389, v385);
          v242 = v208;
        }

        v206 = v242;

        v207 = v206;
      }

      else
      {
        v123 = v388;
        v124 = Logger.shared.unsafeMutableAddressor();
        v339(v123, v124, v385);
        v204 = Logger.logObject.getter();
        v201 = v204;
        v203 = static os_log_type_t.error.getter();
        v202 = v203;
        v205 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v204, v203))
        {
          v125 = v319;
          v192 = static UnsafeMutablePointer.allocate(capacity:)();
          v188 = v192;
          v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v190 = 0;
          v193 = createStorage<A>(capacity:type:)(0, v189, v189);
          v191 = v193;
          v194 = createStorage<A>(capacity:type:)(v190, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v438 = v192;
          v437 = v193;
          v436 = v194;
          v195 = 0;
          v196 = &v438;
          serialize(_:at:)(0, &v438);
          serialize(_:at:)(v195, v196);
          v435 = v205;
          v197 = &v133;
          MEMORY[0x1EEE9AC00](&v133);
          v198 = &v133 - 6;
          *(&v133 - 4) = v126;
          *(&v133 - 3) = &v437;
          *(&v133 - 2) = &v436;
          v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v200 = v125;
          if (v125)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1D93D0000, v201, v202, "HeadphoneManager:Connection: Invalid BT Address Length", v188, 2u);
            v186 = 0;
            destroyStorage<A>(_:count:)(v191, 0, v189);
            destroyStorage<A>(_:count:)(v194, v186, MEMORY[0x1E69E7CA0] + 8);
            MEMORY[0x1DA730D30](v188, MEMORY[0x1E69E7508]);

            v187 = v200;
          }
        }

        else
        {

          v187 = v319;
        }

        v185 = v187;

        v320(v388, v385);
        v207 = v185;
      }

      v184 = v207;
      v441 = (*((*v384 & *MEMORY[0x1E69E7D40]) + 0x1C8))();
      if (v441)
      {
        v180 = v441;
        v179 = v441;
        swift_unknownObjectRetain();
        outlined destroy of CBDeviceReporting?(&v441);
        swift_getObjectType();
        v181 = [v180 deviceFoundHandler];
        if (v181)
        {
          v178 = v181;
          v175 = v181;
          v127 = swift_allocObject();
          *(v127 + 16) = v175;
          v176 = thunk for @escaping @callee_unowned @convention(block) (@unowned CBDevice) -> ()partial apply;
          v177 = v127;
        }

        else
        {
          v176 = 0;
          v177 = 0;
        }

        v174 = v177;
        v173 = v176;
        swift_unknownObjectRelease();
        v182 = v173;
        v183 = v174;
      }

      else
      {
        outlined destroy of CBDeviceReporting?(&v441);
        v182 = 0;
        v183 = 0;
      }

      v171 = v183;
      v172 = v182;
      if (v182)
      {
        v169 = v172;
        v170 = v171;
        v168 = v171;
        v167 = v172;
        v439 = v172;
        v440 = v171;

        v167(v341);
      }

      outlined consume of Data._Representation(v303, v302);

      return v184;
    }
  }

  else
  {
    v4 = v394;
    v5 = Logger.shared.unsafeMutableAddressor();
    (*(v387 + 16))(v4, v5, v385);
    v6 = v381;
    v368 = 7;
    v369 = swift_allocObject();
    *(v369 + 16) = v381;
    v379 = Logger.logObject.getter();
    v362 = v379;
    v378 = static os_log_type_t.error.getter();
    v363 = v378;
    v364 = 17;
    v372 = swift_allocObject();
    v365 = v372;
    *(v372 + 16) = 64;
    v373 = swift_allocObject();
    v366 = v373;
    *(v373 + 16) = 8;
    v367 = 32;
    v7 = swift_allocObject();
    v8 = v369;
    v370 = v7;
    *(v7 + 16) = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.configDeviceManager();
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v370;
    v376 = v9;
    v371 = v9;
    *(v9 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
    *(v9 + 24) = v10;
    v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v374 = _allocateUninitializedArray<A>(_:)();
    v375 = v11;

    v12 = v372;
    v13 = v375;
    *v375 = closure #1 in OSLogArguments.append(_:)partial apply;
    v13[1] = v12;

    v14 = v373;
    v15 = v375;
    v375[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v15[3] = v14;

    v16 = v375;
    v17 = v376;
    v375[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v16[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v379, v378))
    {
      v130 = v383;
      v143 = static UnsafeMutablePointer.allocate(capacity:)();
      v140 = v143;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v146 = 1;
      v144 = createStorage<A>(capacity:type:)(1, v141, v141);
      v142 = v144;
      v145 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v453 = v143;
      v452 = v144;
      v451 = v145;
      v147 = &v453;
      serialize(_:at:)(2, &v453);
      serialize(_:at:)(v146, v147);
      v449 = closure #1 in OSLogArguments.append(_:)partial apply;
      v450 = v365;
      closure #1 in osLogInternal(_:log:type:)(&v449, v147, &v452, &v451);
      v148 = v130;
      v149 = v130;
      if (v130)
      {
        v138 = 0;

        __break(1u);
      }

      else
      {
        v449 = closure #1 in OSLogArguments.append(_:)partial apply;
        v450 = v366;
        closure #1 in osLogInternal(_:log:type:)(&v449, &v453, &v452, &v451);
        v136 = 0;
        v137 = 0;
        v449 = closure #1 in OSLogArguments.append(_:)partial apply;
        v450 = v371;
        closure #1 in osLogInternal(_:log:type:)(&v449, &v453, &v452, &v451);
        v134 = 0;
        v135 = 0;
        _os_log_impl(&dword_1D93D0000, v362, v363, "HeadphoneManager:Connection: AAF Device: %@ is missing cbDevice early exit found handler", v140, 0xCu);
        destroyStorage<A>(_:count:)(v142, 1, v141);
        destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v140, MEMORY[0x1E69E7508]);

        v139 = v134;
      }
    }

    else
    {
      v131 = v383;

      v139 = v131;
    }

    v133 = v139;

    (*(v387 + 8))(v394, v385);
    return v133;
  }
}

uint64_t implicit closure #2 in closure #1 in Headphone_Manager.configDeviceManager()(void *a1)
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

void *closure #1 in closure #1 in Headphone_Manager.configDeviceManager()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[5] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[2] = a4;
  v15[1] = a5;

  v12 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x210))();
  v14[0] = a2;
  v14[1] = a3;
  v6 = type metadata accessor for HeadphoneDevice(0);
  MEMORY[0x1DA7308E0](v15, v14, v12, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
  outlined destroy of String(v14);
  v13 = v15[0];

  MEMORY[0x1E69E5928](v13);
  if (v13)
  {
    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0xB78))(a4, a5);
    MEMORY[0x1E69E5920](v13);
  }

  return v13;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

uint64_t closure #2 in Headphone_Manager.configDeviceManager()(void *a1, void *a2)
{
  v370 = a2;
  v367 = a1;
  v368 = 0;
  v433 = 0;
  v432 = 0;
  v369 = 0;
  v426 = 0;
  v421 = 0;
  v420 = 0;
  v418 = 0;
  v417 = 0;
  v412 = 0;
  v411 = 0;
  v404 = 0;
  v371 = type metadata accessor for Logger();
  v372 = *(v371 - 8);
  v373 = v372;
  v378 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v371 - 8);
  v380 = (v378 + 15) & 0xFFFFFFFFFFFFFFF0;
  v374 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v375 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v376 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v377 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v379 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v381 = &v119 - v380;
  v433 = a1;
  v432 = v3;
  v382 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(a1);
  if (v382)
  {
    v366 = v382;
    v18 = v379;
    v327 = v382;
    v426 = v382;
    v19 = Logger.shared.unsafeMutableAddressor();
    v325 = *(v373 + 16);
    v326 = (v373 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v325(v18, v19, v371);
    v20 = v327;
    v335 = 7;
    v336 = swift_allocObject();
    *(v336 + 16) = v327;
    v347 = Logger.logObject.getter();
    v328 = v347;
    v346 = static os_log_type_t.default.getter();
    v329 = v346;
    v330 = 17;
    v340 = swift_allocObject();
    v331 = v340;
    v332 = 32;
    *(v340 + 16) = 32;
    v21 = swift_allocObject();
    v22 = v332;
    v341 = v21;
    v333 = v21;
    *(v21 + 16) = 8;
    v334 = v22;
    v23 = swift_allocObject();
    v24 = v336;
    v337 = v23;
    *(v23 + 16) = partial apply for implicit closure #2 in closure #2 in Headphone_Manager.configDeviceManager();
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v337;
    v344 = v25;
    v338 = v25;
    *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v25 + 24) = v26;
    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v339 = v345;
    v342 = _allocateUninitializedArray<A>(_:)();
    v343 = v27;

    v28 = v340;
    v29 = v343;
    *v343 = closure #1 in OSLogArguments.append(_:)partial apply;
    v29[1] = v28;

    v30 = v341;
    v31 = v343;
    v343[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v31[3] = v30;

    v32 = v343;
    v33 = v344;
    v343[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[5] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v347, v346))
    {
      v35 = v369;
      v318 = static UnsafeMutablePointer.allocate(capacity:)();
      v315 = v318;
      v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v319 = createStorage<A>(capacity:type:)(0, v316, v316);
      v317 = v319;
      v321 = 1;
      v320 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v387 = v318;
      v386 = v319;
      v385 = v320;
      v322 = &v387;
      serialize(_:at:)(2, &v387);
      serialize(_:at:)(v321, v322);
      v383 = closure #1 in OSLogArguments.append(_:)partial apply;
      v384 = v331;
      closure #1 in osLogInternal(_:log:type:)(&v383, v322, &v386, &v385);
      v323 = v35;
      v324 = v35;
      if (v35)
      {
        v313 = 0;

        __break(1u);
      }

      else
      {
        v383 = closure #1 in OSLogArguments.append(_:)partial apply;
        v384 = v333;
        closure #1 in osLogInternal(_:log:type:)(&v383, &v387, &v386, &v385);
        v311 = 0;
        v312 = 0;
        v383 = closure #1 in OSLogArguments.append(_:)partial apply;
        v384 = v338;
        closure #1 in osLogInternal(_:log:type:)(&v383, &v387, &v386, &v385);
        v309 = 0;
        v310 = 0;
        _os_log_impl(&dword_1D93D0000, v328, v329, "HeadphoneManager:Connection: AAF Device Lost: %s", v315, 0xCu);
        destroyStorage<A>(_:count:)(v317, 0, v316);
        destroyStorage<A>(_:count:)(v320, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v315, MEMORY[0x1E69E7508]);

        v314 = v309;
      }
    }

    else
    {
      v36 = v369;

      v314 = v36;
    }

    v305 = v314;

    v306 = *(v373 + 8);
    v307 = (v373 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v306(v379, v371);
    v308 = [v327 btAddressData];
    if (v308)
    {
      v304 = v308;
      v299 = v308;
      v300 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v301 = v37;

      v302 = v300;
      v303 = v301;
    }

    else
    {
      v302 = 0;
      v303 = 0xF000000000000000;
    }

    v297 = v303;
    v298 = v302;
    if (v303 >> 60 == 15)
    {
      v38 = v377;
      v39 = Logger.shared.unsafeMutableAddressor();
      v325(v38, v39, v371);
      v293 = Logger.logObject.getter();
      v290 = v293;
      v292 = static os_log_type_t.error.getter();
      v291 = v292;
      v294 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v293, v292))
      {
        v114 = v305;
        v143 = static UnsafeMutablePointer.allocate(capacity:)();
        v139 = v143;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v141 = 0;
        v144 = createStorage<A>(capacity:type:)(0, v140, v140);
        v142 = v144;
        v145 = createStorage<A>(capacity:type:)(v141, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v425 = v143;
        v424 = v144;
        v423 = v145;
        v146 = 0;
        v147 = &v425;
        serialize(_:at:)(0, &v425);
        serialize(_:at:)(v146, v147);
        v422 = v294;
        v148 = &v119;
        MEMORY[0x1EEE9AC00](&v119);
        v149 = &v119 - 6;
        *(&v119 - 4) = v115;
        *(&v119 - 3) = &v424;
        *(&v119 - 2) = &v423;
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v151 = v114;
        if (v114)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v290, v291, "HeadphoneManager:Connection: Invalid BT Address", v139, 2u);
          v137 = 0;
          destroyStorage<A>(_:count:)(v142, 0, v140);
          destroyStorage<A>(_:count:)(v145, v137, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v139, MEMORY[0x1E69E7508]);

          v138 = v151;
        }
      }

      else
      {

        v138 = v305;
      }

      v136 = v138;

      v306(v377, v371);
      return v136;
    }

    else
    {
      v295 = v298;
      v296 = v297;
      v288 = v297;
      v289 = v298;
      v420 = v298;
      v421 = v297;
      if (MEMORY[0x1DA730470]() == 6)
      {
        v40 = v370;
        v272 = 1;
        v278 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X-%02X-%02X-%02X-%02X-%02X", 0x1DuLL, 1);
        v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
        v277 = _allocateUninitializedArray<A>(_:)();
        v275 = v41;
        v283 = 0;
        v42 = MEMORY[0x1DA7304B0]();
        v43 = v272;
        v44 = v289;
        v45 = v288;
        v46 = v275;
        v273 = MEMORY[0x1E69E7508];
        v275[3] = MEMORY[0x1E69E7508];
        v274 = MEMORY[0x1E69E7558];
        v46[4] = MEMORY[0x1E69E7558];
        *v46 = v42;
        v47 = MEMORY[0x1DA7304B0](v43, v44, v45);
        v48 = v289;
        v49 = v288;
        v50 = v274;
        v51 = v275;
        v275[8] = v273;
        v51[9] = v50;
        *(v51 + 40) = v47;
        v52 = MEMORY[0x1DA7304B0](2, v48, v49);
        v53 = v289;
        v54 = v288;
        v55 = v274;
        v56 = v275;
        v275[13] = v273;
        v56[14] = v55;
        *(v56 + 80) = v52;
        v57 = MEMORY[0x1DA7304B0](3, v53, v54);
        v58 = v289;
        v59 = v288;
        v60 = v274;
        v61 = v275;
        v275[18] = v273;
        v61[19] = v60;
        *(v61 + 120) = v57;
        v62 = MEMORY[0x1DA7304B0](4, v58, v59);
        v63 = v289;
        v64 = v288;
        v65 = v274;
        v66 = v275;
        v275[23] = v273;
        v66[24] = v65;
        *(v66 + 160) = v62;
        v67 = MEMORY[0x1DA7304B0](5, v63, v64);
        v68 = v274;
        v69 = v275;
        v275[28] = v273;
        v69[29] = v68;
        *(v69 + 200) = v67;
        _finalizeUninitializedArray<A>(_:)();
        v281 = String.init(format:_:)();
        v282 = v70;
        v279 = v281;
        v280 = v70;

        v411 = v281;
        v412 = v282;

        v285 = (*((*v40 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v71);
        v284 = v285;
        v409[0] = v281;
        v409[1] = v282;
        type metadata accessor for HeadphoneDevice(v283);
        v286 = v409;
        MEMORY[0x1DA7308E0](&v410);
        outlined destroy of String(v286);
        v287 = v410;
        if (v410)
        {
          v271 = v287;
          v74 = v370;
          v265 = v287;
          v404 = v287;

          v76 = (*((*v74 & *MEMORY[0x1E69E7D40]) + 0xD8))(v75);
          v403 = v76;
          if (v76)
          {
            v264 = v403;
            swift_unknownObjectRetain();
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v403);
            swift_getObjectType();
            [v264 removeTopLevelEntryWithHpDevice_];
            swift_unknownObjectRelease();
          }

          else
          {
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v403);
          }

          v77 = v370;

          v402 = 0;
          v78 = *v77;
          v243 = MEMORY[0x1E69E7D40];
          v79 = *((v78 & *MEMORY[0x1E69E7D40]) + 0x1F0);
          v231 = &v401;
          v232 = v79();
          v400[0] = v279;
          v400[1] = v280;
          v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
          v229 = &v399;
          v233 = v400;
          v80 = Dictionary.subscript.modify();
          v81 = v370;
          v230 = v80;
          v228 = v82;
          v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
          v236 = lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?();
          ==? infix<A>(_:_:)(v228, &v402, v235, v236);
          v244 = 0;
          v230(v229);
          v232(v231, v244);
          outlined destroy of String(v233);

          v83 = v265;
          v398 = v265;
          v84 = *((*v81 & *v243) + 0x220);
          v239 = &v397;
          v240 = v84();
          v396[0] = v279;
          v396[1] = v280;
          v237 = &v395;
          v241 = v396;
          v85 = Dictionary.subscript.modify();
          v86 = v265;
          v238 = v85;
          v242 = &v398;
          ==? infix<A>(_:_:)(v87, &v398, v235, v236);
          v238(v237, v244);
          v240(v239, v244);
          outlined destroy of String(v241);
          outlined destroy of HeadphoneDevice?(v242);
          v394 = v244;
          v88 = *((*v86 & *v243) + 0x3A0);
          v245 = &v393;
          v89 = v88();
          v90 = v375;
          v246 = v89;
          ==? infix<A>(_:_:)(v91, &v394, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
          v246(v245, v244);
          v92 = Logger.shared.unsafeMutableAddressor();
          v325(v90, v92, v371);
          v93 = v265;
          v253 = 7;
          v254 = swift_allocObject();
          *(v254 + 16) = v265;
          v263 = Logger.logObject.getter();
          v247 = v263;
          v262 = static os_log_type_t.default.getter();
          v248 = v262;
          v249 = 17;
          v257 = swift_allocObject();
          v250 = v257;
          *(v257 + 16) = 64;
          v258 = swift_allocObject();
          v251 = v258;
          *(v258 + 16) = 8;
          v252 = 32;
          v94 = swift_allocObject();
          v95 = v254;
          v255 = v94;
          *(v94 + 16) = partial apply for implicit closure #4 in closure #2 in Headphone_Manager.configDeviceManager();
          *(v94 + 24) = v95;
          v96 = swift_allocObject();
          v97 = v255;
          v261 = v96;
          v256 = v96;
          *(v96 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
          *(v96 + 24) = v97;
          v259 = _allocateUninitializedArray<A>(_:)();
          v260 = v98;

          v99 = v257;
          v100 = v260;
          *v260 = closure #1 in OSLogArguments.append(_:)partial apply;
          v100[1] = v99;

          v101 = v258;
          v102 = v260;
          v260[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v102[3] = v101;

          v103 = v260;
          v104 = v261;
          v260[4] = closure #1 in OSLogArguments.append(_:)partial apply;
          v103[5] = v104;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v263, v262))
          {
            v105 = v305;
            v221 = static UnsafeMutablePointer.allocate(capacity:)();
            v218 = v221;
            v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v224 = 1;
            v222 = createStorage<A>(capacity:type:)(1, v219, v219);
            v220 = v222;
            v223 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v392 = v221;
            v391 = v222;
            v390 = v223;
            v225 = &v392;
            serialize(_:at:)(2, &v392);
            serialize(_:at:)(v224, v225);
            v388 = closure #1 in OSLogArguments.append(_:)partial apply;
            v389 = v250;
            closure #1 in osLogInternal(_:log:type:)(&v388, v225, &v391, &v390);
            v226 = v105;
            v227 = v105;
            if (v105)
            {
              v216 = 0;

              __break(1u);
            }

            else
            {
              v388 = closure #1 in OSLogArguments.append(_:)partial apply;
              v389 = v251;
              closure #1 in osLogInternal(_:log:type:)(&v388, &v392, &v391, &v390);
              v214 = 0;
              v215 = 0;
              v388 = closure #1 in OSLogArguments.append(_:)partial apply;
              v389 = v256;
              closure #1 in osLogInternal(_:log:type:)(&v388, &v392, &v391, &v390);
              v212 = 0;
              v213 = 0;
              _os_log_impl(&dword_1D93D0000, v247, v248, "HeadphoneManager:Connection: Removed Device: %@ added to Paired", v218, 0xCu);
              destroyStorage<A>(_:count:)(v220, 1, v219);
              destroyStorage<A>(_:count:)(v223, 0, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v218, MEMORY[0x1E69E7508]);

              v217 = v212;
            }
          }

          else
          {
            v106 = v305;

            v217 = v106;
          }

          v210 = v217;

          v306(v375, v371);
          v211 = v210;
        }

        else
        {
          v72 = v376;

          v73 = Logger.shared.unsafeMutableAddressor();
          v325(v72, v73, v371);
          v269 = Logger.logObject.getter();
          v266 = v269;
          v268 = static os_log_type_t.error.getter();
          v267 = v268;
          v270 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v269, v268))
          {
            v107 = v305;
            v201 = static UnsafeMutablePointer.allocate(capacity:)();
            v197 = v201;
            v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v199 = 0;
            v202 = createStorage<A>(capacity:type:)(0, v198, v198);
            v200 = v202;
            v203 = createStorage<A>(capacity:type:)(v199, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v408 = v201;
            v407 = v202;
            v406 = v203;
            v204 = 0;
            v205 = &v408;
            serialize(_:at:)(0, &v408);
            serialize(_:at:)(v204, v205);
            v405 = v270;
            v206 = &v119;
            MEMORY[0x1EEE9AC00](&v119);
            v207 = &v119 - 6;
            *(&v119 - 4) = v108;
            *(&v119 - 3) = &v407;
            *(&v119 - 2) = &v406;
            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v209 = v107;
            if (v107)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_1D93D0000, v266, v267, "HeadphoneManager:Connection: Failed to remove the device", v197, 2u);
              v195 = 0;
              destroyStorage<A>(_:count:)(v200, 0, v198);
              destroyStorage<A>(_:count:)(v203, v195, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v197, MEMORY[0x1E69E7508]);

              v196 = v209;
            }
          }

          else
          {

            v196 = v305;
          }

          v194 = v196;

          v306(v376, v371);
          v211 = v194;
        }

        v192 = v211;

        v193 = v192;
      }

      else
      {
        v109 = v374;
        v110 = Logger.shared.unsafeMutableAddressor();
        v325(v109, v110, v371);
        v190 = Logger.logObject.getter();
        v187 = v190;
        v189 = static os_log_type_t.error.getter();
        v188 = v189;
        v191 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v190, v189))
        {
          v111 = v305;
          v178 = static UnsafeMutablePointer.allocate(capacity:)();
          v174 = v178;
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v176 = 0;
          v179 = createStorage<A>(capacity:type:)(0, v175, v175);
          v177 = v179;
          v180 = createStorage<A>(capacity:type:)(v176, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v416 = v178;
          v415 = v179;
          v414 = v180;
          v181 = 0;
          v182 = &v416;
          serialize(_:at:)(0, &v416);
          serialize(_:at:)(v181, v182);
          v413 = v191;
          v183 = &v119;
          MEMORY[0x1EEE9AC00](&v119);
          v184 = &v119 - 6;
          *(&v119 - 4) = v112;
          *(&v119 - 3) = &v415;
          *(&v119 - 2) = &v414;
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v186 = v111;
          if (v111)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1D93D0000, v187, v188, "HeadphoneManager:Connection: Invalid BT Address Length", v174, 2u);
            v172 = 0;
            destroyStorage<A>(_:count:)(v177, 0, v175);
            destroyStorage<A>(_:count:)(v180, v172, MEMORY[0x1E69E7CA0] + 8);
            MEMORY[0x1DA730D30](v174, MEMORY[0x1E69E7508]);

            v173 = v186;
          }
        }

        else
        {

          v173 = v305;
        }

        v171 = v173;

        v306(v374, v371);
        v193 = v171;
      }

      v170 = v193;
      v419 = (*((*v370 & *MEMORY[0x1E69E7D40]) + 0x1C8))();
      if (v419)
      {
        v166 = v419;
        v165 = v419;
        swift_unknownObjectRetain();
        outlined destroy of CBDeviceReporting?(&v419);
        swift_getObjectType();
        v167 = [v166 deviceLostHandler];
        if (v167)
        {
          v164 = v167;
          v161 = v167;
          v113 = swift_allocObject();
          *(v113 + 16) = v161;
          v162 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CBDevice) -> ();
          v163 = v113;
        }

        else
        {
          v162 = 0;
          v163 = 0;
        }

        v160 = v163;
        v159 = v162;
        swift_unknownObjectRelease();
        v168 = v159;
        v169 = v160;
      }

      else
      {
        outlined destroy of CBDeviceReporting?(&v419);
        v168 = 0;
        v169 = 0;
      }

      v157 = v169;
      v158 = v168;
      if (v168)
      {
        v155 = v158;
        v156 = v157;
        v154 = v157;
        v153 = v158;
        v417 = v158;
        v418 = v157;

        v153(v327);
      }

      outlined consume of Data._Representation(v289, v288);

      return v170;
    }
  }

  else
  {
    v4 = v381;
    v5 = Logger.shared.unsafeMutableAddressor();
    (*(v373 + 16))(v4, v5, v371);
    v6 = v367;
    v354 = 7;
    v355 = swift_allocObject();
    *(v355 + 16) = v367;
    v365 = Logger.logObject.getter();
    v348 = v365;
    v364 = static os_log_type_t.error.getter();
    v349 = v364;
    v350 = 17;
    v358 = swift_allocObject();
    v351 = v358;
    *(v358 + 16) = 64;
    v359 = swift_allocObject();
    v352 = v359;
    *(v359 + 16) = 8;
    v353 = 32;
    v7 = swift_allocObject();
    v8 = v355;
    v356 = v7;
    *(v7 + 16) = partial apply for implicit closure #1 in closure #2 in Headphone_Manager.configDeviceManager();
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v356;
    v362 = v9;
    v357 = v9;
    *(v9 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
    *(v9 + 24) = v10;
    v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v360 = _allocateUninitializedArray<A>(_:)();
    v361 = v11;

    v12 = v358;
    v13 = v361;
    *v361 = closure #1 in OSLogArguments.append(_:)partial apply;
    v13[1] = v12;

    v14 = v359;
    v15 = v361;
    v361[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v15[3] = v14;

    v16 = v361;
    v17 = v362;
    v361[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v16[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v365, v364))
    {
      v116 = v369;
      v129 = static UnsafeMutablePointer.allocate(capacity:)();
      v126 = v129;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v132 = 1;
      v130 = createStorage<A>(capacity:type:)(1, v127, v127);
      v128 = v130;
      v131 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v431 = v129;
      v430 = v130;
      v429 = v131;
      v133 = &v431;
      serialize(_:at:)(2, &v431);
      serialize(_:at:)(v132, v133);
      v427 = closure #1 in OSLogArguments.append(_:)partial apply;
      v428 = v351;
      closure #1 in osLogInternal(_:log:type:)(&v427, v133, &v430, &v429);
      v134 = v116;
      v135 = v116;
      if (v116)
      {
        v124 = 0;

        __break(1u);
      }

      else
      {
        v427 = closure #1 in OSLogArguments.append(_:)partial apply;
        v428 = v352;
        closure #1 in osLogInternal(_:log:type:)(&v427, &v431, &v430, &v429);
        v122 = 0;
        v123 = 0;
        v427 = closure #1 in OSLogArguments.append(_:)partial apply;
        v428 = v357;
        closure #1 in osLogInternal(_:log:type:)(&v427, &v431, &v430, &v429);
        v120 = 0;
        v121 = 0;
        _os_log_impl(&dword_1D93D0000, v348, v349, "HeadphoneManager:Connection: AAF Device: %@ is missing cbDevice early exit lost handler", v126, 0xCu);
        destroyStorage<A>(_:count:)(v128, 1, v127);
        destroyStorage<A>(_:count:)(v131, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v126, MEMORY[0x1E69E7508]);

        v125 = v120;
      }
    }

    else
    {
      v117 = v369;

      v125 = v117;
    }

    v119 = v125;

    (*(v373 + 8))(v381, v371);
    return v119;
  }
}

uint64_t implicit closure #2 in closure #2 in Headphone_Manager.configDeviceManager()(void *a1)
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

void closure #3 in Headphone_Manager.configDeviceManager()(uint64_t a1)
{
  v41 = a1;
  v51 = 0;
  v62 = 0;
  v40 = 0;
  v48 = type metadata accessor for Logger();
  v42 = v48;
  v43 = *(v48 - 8);
  v47 = v43;
  v44 = v43;
  v1 = MEMORY[0x1EEE9AC00](v41);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v3;
  v46 = v1 + 16;
  v62 = v1 + 16;
  v4 = Logger.shared.unsafeMutableAddressor();
  (*(v47 + 16))(v3, v4, v48);
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.error.getter();
  v50 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v5 = v40;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = 0;
    v32 = createStorage<A>(capacity:type:)(0, v28, v28);
    v30 = v32;
    v33 = createStorage<A>(capacity:type:)(v29, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v58 = v31;
    v57 = v32;
    v56 = v33;
    v34 = 0;
    v35 = &v58;
    serialize(_:at:)(0, &v58);
    serialize(_:at:)(v34, v35);
    v55 = v54;
    v36 = v15;
    MEMORY[0x1EEE9AC00](v15);
    v37 = &v15[-6];
    v15[-4] = v6;
    v15[-3] = &v57;
    v15[-2] = &v56;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v39 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v49, v50, "HeadphoneManager: AAF interruptionHandler!", v27, 2u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v33, v25, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v27, MEMORY[0x1E69E7508]);

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  v24 = v26;

  (*(v44 + 8))(v45, v42);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = v24;
    v9 = Strong;
    v19 = Strong;
    v10 = Strong;
    outlined destroy of Headphone_Manager?(&Strong);
    v11 = swift_endAccess();
    v18 = (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v11);
    v17 = v18;
    type metadata accessor for HeadphoneDevice(0);
    v20 = Dictionary.values.getter();

    v59 = v20;

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMd, &_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMR);
    lazy protocol witness table accessor for type [String : HeadphoneDevice].Values and conformance [A : B].Values();
    Sequence.forEach(_:)();
    v22 = v8;
    if (v8)
    {

      __break(1u);
      return;
    }

    outlined destroy of [String : HeadphoneDevice].Values(&v59);

    v23 = v22;
  }

  else
  {
    v7 = v24;
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
    v23 = v7;
  }

  swift_beginAccess();
  v60 = swift_unknownObjectWeakLoadStrong();
  if (v60)
  {
    v12 = v60;
    v16 = v60;
    v13 = v60;
    outlined destroy of Headphone_Manager?(&v60);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
    v15[0] = 0;
    v15[1] = _allocateUninitializedArray<A>(_:)();
    type metadata accessor for HeadphoneDevice(v15[0]);
    v14 = Dictionary.init(dictionaryLiteral:)();
    (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v14);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v60);
    swift_endAccess();
  }
}

uint64_t closure #1 in closure #3 in Headphone_Manager.configDeviceManager()(void **a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v19 = *a1;
  v18 = a2 + 16;
  v13 = (*((*v19 & *MEMORY[0x1E69E7D40]) + 0xA80))();
  v14 = (*(*v13 + 1936))(v13);
  if (!v14)
  {
  }

  v17 = v14;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = Strong;
  if (Strong)
  {
    v4 = v16;
    v10 = v16;
    MEMORY[0x1E69E5928](v16);
    outlined destroy of Headphone_Manager?(&v16);
    v5 = swift_endAccess();
    v11 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5);
    MEMORY[0x1E69E5920](v10);
    v12 = [v11 deviceLostHandler];
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      v8 = thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v15[0] = v8;
    v15[1] = v9;
    if (v8)
    {
      v7 = v15[0];

      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
      v7(v14);
    }

    else
    {
      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
    }
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v16);
    swift_endAccess();
  }

  return MEMORY[0x1E69E5920](v14);
}

void closure #4 in Headphone_Manager.configDeviceManager()(uint64_t a1)
{
  v41 = a1;
  v51 = 0;
  v62 = 0;
  v40 = 0;
  v48 = type metadata accessor for Logger();
  v42 = v48;
  v43 = *(v48 - 8);
  v47 = v43;
  v44 = v43;
  v1 = MEMORY[0x1EEE9AC00](v41);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v3;
  v46 = v1 + 16;
  v62 = v1 + 16;
  v4 = Logger.shared.unsafeMutableAddressor();
  (*(v47 + 16))(v3, v4, v48);
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.error.getter();
  v50 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v5 = v40;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = 0;
    v32 = createStorage<A>(capacity:type:)(0, v28, v28);
    v30 = v32;
    v33 = createStorage<A>(capacity:type:)(v29, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v58 = v31;
    v57 = v32;
    v56 = v33;
    v34 = 0;
    v35 = &v58;
    serialize(_:at:)(0, &v58);
    serialize(_:at:)(v34, v35);
    v55 = v54;
    v36 = v15;
    MEMORY[0x1EEE9AC00](v15);
    v37 = &v15[-6];
    v15[-4] = v6;
    v15[-3] = &v57;
    v15[-2] = &v56;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v39 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v49, v50, "HeadphoneManager: AAF invalidationHandler!", v27, 2u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v33, v25, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v27, MEMORY[0x1E69E7508]);

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  v24 = v26;

  (*(v44 + 8))(v45, v42);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = v24;
    v9 = Strong;
    v19 = Strong;
    v10 = Strong;
    outlined destroy of Headphone_Manager?(&Strong);
    v11 = swift_endAccess();
    v18 = (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v11);
    v17 = v18;
    type metadata accessor for HeadphoneDevice(0);
    v20 = Dictionary.values.getter();

    v59 = v20;

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMd, &_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMR);
    lazy protocol witness table accessor for type [String : HeadphoneDevice].Values and conformance [A : B].Values();
    Sequence.forEach(_:)();
    v22 = v8;
    if (v8)
    {

      __break(1u);
      return;
    }

    outlined destroy of [String : HeadphoneDevice].Values(&v59);

    v23 = v22;
  }

  else
  {
    v7 = v24;
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
    v23 = v7;
  }

  swift_beginAccess();
  v60 = swift_unknownObjectWeakLoadStrong();
  if (v60)
  {
    v12 = v60;
    v16 = v60;
    v13 = v60;
    outlined destroy of Headphone_Manager?(&v60);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
    v15[0] = 0;
    v15[1] = _allocateUninitializedArray<A>(_:)();
    type metadata accessor for HeadphoneDevice(v15[0]);
    v14 = Dictionary.init(dictionaryLiteral:)();
    (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v14);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v60);
    swift_endAccess();
  }
}

uint64_t closure #1 in closure #4 in Headphone_Manager.configDeviceManager()(void **a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v19 = *a1;
  v18 = a2 + 16;
  v13 = (*((*v19 & *MEMORY[0x1E69E7D40]) + 0xA80))();
  v14 = (*(*v13 + 1936))(v13);
  if (!v14)
  {
  }

  v17 = v14;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = Strong;
  if (Strong)
  {
    v4 = v16;
    v10 = v16;
    MEMORY[0x1E69E5928](v16);
    outlined destroy of Headphone_Manager?(&v16);
    v5 = swift_endAccess();
    v11 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5);
    MEMORY[0x1E69E5920](v10);
    v12 = [v11 deviceLostHandler];
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      v8 = thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v15[0] = v8;
    v15[1] = v9;
    if (v8)
    {
      v7 = v15[0];

      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
      v7(v14);
    }

    else
    {
      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
    }
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v16);
    swift_endAccess();
  }

  return MEMORY[0x1E69E5920](v14);
}

void closure #5 in Headphone_Manager.configDeviceManager()(void *a1)
{
  v56 = a1;
  v44 = partial apply for implicit closure #1 in closure #5 in Headphone_Manager.configDeviceManager();
  v45 = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesys5Error_pyXA_AA0B7PrivacyVSStFSo8NSObjectCycfu_TA_0;
  v46 = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesySo8NSObjectCyXA_AA0B7PrivacyVSStFAHSgycfu_TA_0;
  v47 = closure #1 in OSLogArguments.append(_:)partial apply;
  v48 = closure #1 in OSLogArguments.append(_:)partial apply;
  v49 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = 0;
  v62 = 0;
  v50 = 0;
  v51 = type metadata accessor for Logger();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v19 - v54;
  v63 = MEMORY[0x1EEE9AC00](v56);
  v1 = v63;
  if (v56)
  {
    v43 = v56;
    v2 = v55;
    v28 = v56;
    v62 = v56;
    v3 = Logger.shared.unsafeMutableAddressor();
    (*(v52 + 16))(v2, v3, v51);
    v4 = v28;
    v32 = 7;
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v29 = 17;
    v35 = swift_allocObject();
    *(v35 + 16) = 64;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v31 = 32;
    v5 = swift_allocObject();
    v6 = v30;
    v33 = v5;
    *(v5 + 16) = v44;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v33;
    v34 = v7;
    *(v7 + 16) = v45;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v34;
    v38 = v9;
    *(v9 + 16) = v46;
    *(v9 + 24) = v10;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v37 = _allocateUninitializedArray<A>(_:)();
    v39 = v11;

    v12 = v35;
    v13 = v39;
    *v39 = v47;
    v13[1] = v12;

    v14 = v36;
    v15 = v39;
    v39[2] = v48;
    v15[3] = v14;

    v16 = v38;
    v17 = v39;
    v39[4] = v49;
    v17[5] = v16;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v41, v42))
    {
      v18 = v50;
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(1, v20, v20);
      v23 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v24 = &v61;
      v61 = v21;
      v25 = &v60;
      v60 = v22;
      v26 = &v59;
      v59 = v23;
      serialize(_:at:)(2, &v61);
      serialize(_:at:)(1, v24);
      v57 = v47;
      v58 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v57, v24, v25, v26);
      v27 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v57 = v48;
        v58 = v36;
        closure #1 in osLogInternal(_:log:type:)(&v57, &v61, &v60, &v59);
        v19 = 0;
        v57 = v49;
        v58 = v38;
        closure #1 in osLogInternal(_:log:type:)(&v57, &v61, &v60, &v59);
        _os_log_impl(&dword_1D93D0000, v41, v42, "HeadphoneManager: AAF Discovery Activation Failed: %@", v21, 0xCu);
        destroyStorage<A>(_:count:)(v22, 1, v20);
        destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v21, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v41);
    (*(v52 + 8))(v55, v51);
  }
}

uint64_t closure #1 in Headphone_Manager.configCBUserController()()
{
  v31 = 0;
  v22 = 0;
  v28 = type metadata accessor for Logger();
  v23 = v28;
  v24 = *(v28 - 8);
  v27 = v24;
  v25 = v24;
  MEMORY[0x1EEE9AC00](v28 - 8);
  v1 = &v6 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  v2 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v27 + 16))(v1, v2, v28);
  v33 = Logger.logObject.getter();
  v29 = v33;
  v32 = static os_log_type_t.default.getter();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v33, v32))
  {
    v3 = v22;
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = 0;
    v14 = createStorage<A>(capacity:type:)(0, v10, v10);
    v12 = v14;
    v15 = createStorage<A>(capacity:type:)(v11, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v38 = v13;
    v37 = v14;
    v36 = v15;
    v16 = 0;
    v17 = &v38;
    serialize(_:at:)(0, &v38);
    serialize(_:at:)(v16, v17);
    v35 = v34;
    v18 = &v6;
    MEMORY[0x1EEE9AC00](&v6);
    v19 = &v6 - 6;
    *(&v6 - 4) = v4;
    *(&v6 - 3) = &v37;
    *(&v6 - 2) = &v36;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v29, v30, "FW Seeding: CBUserController interruptionHandler", v9, 2u);
      v7 = 0;
      destroyStorage<A>(_:count:)(v12, 0, v10);
      destroyStorage<A>(_:count:)(v15, v7, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v9, MEMORY[0x1E69E7508]);

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  return (*(v25 + 8))(v26, v23);
}

uint64_t closure #2 in Headphone_Manager.configCBUserController()()
{
  v31 = 0;
  v22 = 0;
  v28 = type metadata accessor for Logger();
  v23 = v28;
  v24 = *(v28 - 8);
  v27 = v24;
  v25 = v24;
  MEMORY[0x1EEE9AC00](v28 - 8);
  v1 = &v6 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  v2 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v27 + 16))(v1, v2, v28);
  v33 = Logger.logObject.getter();
  v29 = v33;
  v32 = static os_log_type_t.default.getter();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v33, v32))
  {
    v3 = v22;
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = 0;
    v14 = createStorage<A>(capacity:type:)(0, v10, v10);
    v12 = v14;
    v15 = createStorage<A>(capacity:type:)(v11, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v38 = v13;
    v37 = v14;
    v36 = v15;
    v16 = 0;
    v17 = &v38;
    serialize(_:at:)(0, &v38);
    serialize(_:at:)(v16, v17);
    v35 = v34;
    v18 = &v6;
    MEMORY[0x1EEE9AC00](&v6);
    v19 = &v6 - 6;
    *(&v6 - 4) = v4;
    *(&v6 - 3) = &v37;
    *(&v6 - 2) = &v36;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v29, v30, "FW Seeding: CBUserController invalidationHandler", v9, 2u);
      v7 = 0;
      destroyStorage<A>(_:count:)(v12, 0, v10);
      destroyStorage<A>(_:count:)(v15, v7, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v9, MEMORY[0x1E69E7508]);

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  return (*(v25 + 8))(v26, v23);
}

uint64_t Headphone_Manager.isAppleHeadphone(cbDevice:)(void *a1)
{
  v4 = CBProductIDIsAppleHeadphone([a1 productID]);
  MEMORY[0x1E69E5928](a1);
  if (v4)
  {
    [a1 vendorID];
    type metadata accessor for CBVendorID(0);
    lazy protocol witness table accessor for type CBVendorID and conformance CBVendorID();
    v2 = == infix<A>(_:_:)();
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E69E5920](a1);
  return v2 & 1;
}

uint64_t Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(uint64_t *a1, uint64_t a2)
{
  v101 = a1;
  v112 = a2;
  v114 = partial apply for implicit closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v118 = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_3;
  v120 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_7;
  v122 = closure #1 in OSLogArguments.append(_:)partial apply;
  v125 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_3;
  v93 = partial apply for closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v94 = partial apply for implicit closure #2 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v95 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_7;
  v96 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v98 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_7;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v99 = 0;
  v109 = type metadata accessor for Logger();
  v107 = *(v109 - 8);
  v108 = v109 - 8;
  v103 = v107[8];
  v102 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v101);
  v104 = &v46 - v102;
  v105 = v102;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v105;
  v106 = &v46 - v105;
  v153 = v3;
  v152 = v5;
  v151 = v6;
  v7 = Logger.shared.unsafeMutableAddressor();
  v110 = v107[2];
  v111 = v107 + 2;
  v110(v4, v7, v109);
  MEMORY[0x1E69E5928](v112);
  v116 = 7;
  v117 = swift_allocObject();
  *(v117 + 16) = v112;
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  v113 = 17;
  v121 = swift_allocObject();
  *(v121 + 16) = 64;
  v123 = swift_allocObject();
  *(v123 + 16) = 8;
  v115 = 32;
  v8 = swift_allocObject();
  v9 = v117;
  v119 = v8;
  *(v8 + 16) = v114;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v119;
  v126 = v10;
  *(v10 + 16) = v118;
  *(v10 + 24) = v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v124 = _allocateUninitializedArray<A>(_:)();
  v127 = v12;

  v13 = v121;
  v14 = v127;
  *v127 = v120;
  v14[1] = v13;

  v15 = v123;
  v16 = v127;
  v127[2] = v122;
  v16[3] = v15;

  v17 = v126;
  v18 = v127;
  v127[4] = v125;
  v18[5] = v17;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v129, v130))
  {
    v19 = v99;
    v86 = static UnsafeMutablePointer.allocate(capacity:)();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v87 = createStorage<A>(capacity:type:)(1, v85, v85);
    v88 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v89 = &v135;
    v135 = v86;
    v90 = &v134;
    v134 = v87;
    v91 = &v133;
    v133 = v88;
    serialize(_:at:)(2, &v135);
    serialize(_:at:)(1, v89);
    v131 = v120;
    v132 = v121;
    closure #1 in osLogInternal(_:log:type:)(&v131, v89, v90, v91);
    v92 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v131 = v122;
      v132 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v135, &v134, &v133);
      v83 = 0;
      v131 = v125;
      v132 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v135, &v134, &v133);
      v82 = 0;
      _os_log_impl(&dword_1D93D0000, v129, v130, "HeadphoneManager: Update Device Config: %@", v86, 0xCu);
      destroyStorage<A>(_:count:)(v87, 1, v85);
      destroyStorage<A>(_:count:)(v88, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v86, MEMORY[0x1E69E7508]);

      v84 = v82;
    }
  }

  else
  {
    v20 = v99;

    v84 = v20;
  }

  v21 = v101;
  v74 = v84;
  MEMORY[0x1E69E5920](v129);
  v75 = v107[1];
  v76 = v107 + 1;
  v75(v106, v109);
  v22 = *v21;
  v77 = MEMORY[0x1E69E7D40];
  (*((v22 & *MEMORY[0x1E69E7D40]) + 0x278))(1);
  v23 = v100;
  v78 = *(v101 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v79 = *(v101 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  v80 = (*((*v23 & *v77) + 0x1E0))(v24);
  v81 = v149;
  v149[0] = v78;
  v149[1] = v79;
  v25 = type metadata accessor for HeadphoneDevice(0);
  MEMORY[0x1DA7308E0](&v150, v81, v80, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6168]);
  outlined destroy of String(v81);
  v148 = v150;
  v73 = v150 == 0;
  v72 = v73;
  outlined destroy of HeadphoneDevice?(&v148);

  if (v72)
  {
    v27 = v104;
    v28 = Logger.shared.unsafeMutableAddressor();
    v110(v27, v28, v109);
    MEMORY[0x1E69E5928](v101);
    v62 = 7;
    v63 = swift_allocObject();
    *(v63 + 16) = v101;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v60 = 17;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v66 = swift_allocObject();
    *(v66 + 16) = 8;
    v61 = 32;
    v29 = swift_allocObject();
    v30 = v63;
    v64 = v29;
    *(v29 + 16) = v94;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v64;
    v68 = v31;
    *(v31 + 16) = v95;
    *(v31 + 24) = v32;
    v67 = _allocateUninitializedArray<A>(_:)();
    v69 = v33;

    v34 = v65;
    v35 = v69;
    *v69 = v96;
    v35[1] = v34;

    v36 = v66;
    v37 = v69;
    v69[2] = v97;
    v37[3] = v36;

    v38 = v68;
    v39 = v69;
    v69[4] = v98;
    v39[5] = v38;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v70, v71))
    {
      v40 = v74;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(0, v52, v52);
      v55 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v56 = &v140;
      v140 = v53;
      v57 = &v139;
      v139 = v54;
      v58 = &v138;
      v138 = v55;
      serialize(_:at:)(2, &v140);
      serialize(_:at:)(1, v56);
      v136 = v96;
      v137 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v136, v56, v57, v58);
      v59 = v40;
      if (v40)
      {

        __break(1u);
      }

      else
      {
        v136 = v97;
        v137 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v136, &v140, &v139, &v138);
        v51 = 0;
        v136 = v98;
        v137 = v68;
        closure #1 in osLogInternal(_:log:type:)(&v136, &v140, &v139, &v138);
        _os_log_impl(&dword_1D93D0000, v70, v71, "HeadphoneManager: Update Device Config, Device Not Connected with UUID: %s", v53, 0xCu);
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v53, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v70);
    return (v75)(v104, v109);
  }

  else
  {
    v42 = *v100;
    v47 = MEMORY[0x1E69E7D40];
    v50 = (*((v42 & *MEMORY[0x1E69E7D40]) + 0x108))(v26);
    v49 = (*((*v101 & *v47) + 0x228))();
    MEMORY[0x1E69E5928](v112);
    MEMORY[0x1E69E5928](v101);
    v43 = swift_allocObject();
    v44 = v101;
    v45 = v93;
    *(v43 + 16) = v112;
    *(v43 + 24) = v44;
    v146 = v45;
    v147 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v142 = 1107296256;
    v143 = 0;
    v144 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v145 = &block_descriptor_73;
    v48 = _Block_copy(&aBlock);

    [v50 modifyDevice:v49 settings:v112 completion:v48];
    _Block_release(v48);
    MEMORY[0x1E69E5920](v49);
    return MEMORY[0x1E69E5920](v50);
  }
}

uint64_t implicit closure #2 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);

  return v2;
}

uint64_t closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(void *a1, uint64_t a2, void *a3)
{
  v105 = a1;
  v97 = a2;
  v96 = a3;
  v85 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v86 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v87 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88 = closure #1 in OSLogArguments.append(_:)partial apply;
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v90 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v91 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v92 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = closure #1 in OSLogArguments.append(_:)partial apply;
  v94 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v95 = 0;
  v111 = 0;
  v98 = type metadata accessor for Logger();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v105);
  v102 = &v39 - v101;
  v103 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v104 = &v39 - v103;
  v119 = v5;
  v118 = v6;
  v117 = v7;
  v8 = v5;
  if (v105)
  {
    v84 = v105;
    v22 = v102;
    v57 = v105;
    v111 = v105;
    v23 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v22, v23, v98);
    v24 = v57;
    v60 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v58 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = 32;
    v25 = swift_allocObject();
    v26 = v61;
    v62 = v25;
    *(v25 + 16) = v85;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v62;
    v66 = v27;
    *(v27 + 16) = v86;
    *(v27 + 24) = v28;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v29;

    v30 = v63;
    v31 = v67;
    *v67 = v87;
    v31[1] = v30;

    v32 = v64;
    v33 = v67;
    v67[2] = v88;
    v33[3] = v32;

    v34 = v66;
    v35 = v67;
    v67[4] = v89;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v36 = v95;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v53 = &v110;
      v110 = v50;
      v54 = &v109;
      v109 = v51;
      v55 = &v108;
      v108 = v52;
      serialize(_:at:)(2, &v110);
      serialize(_:at:)(1, v53);
      v106 = v87;
      v107 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v106, v53, v54, v55);
      v56 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v106 = v88;
        v107 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        v48 = 0;
        v106 = v89;
        v107 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        _os_log_impl(&dword_1D93D0000, v69, v70, "HeadphoneManager: Update Device Config Failed, Error: %s", v50, 0xCu);
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v50, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v99 + 8))(v102, v98);
  }

  else
  {
    v9 = v104;
    v10 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v9, v10, v98);
    MEMORY[0x1E69E5928](v97);
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v97;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 64;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v11 = swift_allocObject();
    v12 = v74;
    v75 = v11;
    *(v11 + 16) = v90;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v75;
    v79 = v13;
    *(v13 + 16) = v91;
    *(v13 + 24) = v14;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v78 = _allocateUninitializedArray<A>(_:)();
    v80 = v15;

    v16 = v76;
    v17 = v80;
    *v80 = v92;
    v17[1] = v16;

    v18 = v77;
    v19 = v80;
    v80[2] = v93;
    v19[3] = v18;

    v20 = v79;
    v21 = v80;
    v80[4] = v94;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v82, v83))
    {
      v37 = v95;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(1, v40, v40);
      v43 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v44 = &v116;
      v116 = v41;
      v45 = &v115;
      v115 = v42;
      v46 = &v114;
      v114 = v43;
      serialize(_:at:)(2, &v116);
      serialize(_:at:)(1, v44);
      v112 = v92;
      v113 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v112, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v112 = v93;
        v113 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        v39 = 0;
        v112 = v94;
        v113 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        _os_log_impl(&dword_1D93D0000, v82, v83, "HeadphoneManager: Successfully Updated Device Config: %@", v41, 0xCu);
        destroyStorage<A>(_:count:)(v42, 1, v40);
        destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v99 + 8))(v104, v98);
  }

  return (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x278))(0);
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(uint64_t *a1, uint64_t a2)
{
  v41 = a1;
  v47 = a2;
  v49 = partial apply for implicit closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v55 = closure #1 in OSLogArguments.append(_:)partial apply;
  v57 = closure #1 in OSLogArguments.append(_:)partial apply;
  v60 = closure #1 in OSLogArguments.append(_:)partial apply;
  v38 = partial apply for closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v39 = 0;
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v42 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v25 - v42;
  v43 = &v25 - v42;
  v80 = MEMORY[0x1EEE9AC00](v41);
  v79 = v3;
  v78 = v4;
  v5 = Logger.shared.unsafeMutableAddressor();
  (*(v44 + 16))(v2, v5, v46);
  MEMORY[0x1E69E5928](v47);
  v51 = 7;
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v48 = 17;
  v56 = swift_allocObject();
  *(v56 + 16) = 64;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v50 = 32;
  v6 = swift_allocObject();
  v7 = v52;
  v54 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v54;
  v61 = v8;
  *(v8 + 16) = v53;
  *(v8 + 24) = v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v62 = v10;

  v11 = v56;
  v12 = v62;
  *v62 = v55;
  v12[1] = v11;

  v13 = v58;
  v14 = v62;
  v62[2] = v57;
  v14[3] = v13;

  v15 = v61;
  v16 = v62;
  v62[4] = v60;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    v17 = v39;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(1, v30, v30);
    v33 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    v36 = &v68;
    v68 = v33;
    serialize(_:at:)(2, &v70);
    serialize(_:at:)(1, v34);
    v66 = v55;
    v67 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v66, v34, v35, v36);
    v37 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v66 = v57;
      v67 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      v29 = 0;
      v66 = v60;
      v67 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_1D93D0000, v64, v65, "HeadphoneManager: Update Offline Device Config: %@", v31, 0xCu);
      destroyStorage<A>(_:count:)(v32, 1, v30);
      destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v31, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  v18 = v41;
  MEMORY[0x1E69E5920](v64);
  (*(v44 + 8))(v43, v46);
  v19 = *v18;
  v25 = MEMORY[0x1E69E7D40];
  v20 = (*((v19 & *MEMORY[0x1E69E7D40]) + 0x278))(1);
  v28 = (*((*v40 & *v25) + 0x108))(v20);
  v27 = (*((*v41 & *v25) + 0x228))();
  MEMORY[0x1E69E5928](v47);
  MEMORY[0x1E69E5928](v41);
  v21 = swift_allocObject();
  v22 = v41;
  v23 = v38;
  *(v21 + 16) = v47;
  *(v21 + 24) = v22;
  v76 = v23;
  v77 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = 0;
  v74 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v75 = &block_descriptor_115;
  v26 = _Block_copy(&aBlock);

  [v28 modifyDevice:v27 settings:v47 completion:v26];
  _Block_release(v26);
  MEMORY[0x1E69E5920](v27);
  return MEMORY[0x1E69E5920](v28);
}

uint64_t closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(void *a1, uint64_t a2, void *a3)
{
  v105 = a1;
  v97 = a2;
  v96 = a3;
  v85 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v86 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v87 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88 = closure #1 in OSLogArguments.append(_:)partial apply;
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v90 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v91 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v92 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = closure #1 in OSLogArguments.append(_:)partial apply;
  v94 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v95 = 0;
  v111 = 0;
  v98 = type metadata accessor for Logger();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v105);
  v102 = &v39 - v101;
  v103 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v104 = &v39 - v103;
  v119 = v5;
  v118 = v6;
  v117 = v7;
  v8 = v5;
  if (v105)
  {
    v84 = v105;
    v22 = v102;
    v57 = v105;
    v111 = v105;
    v23 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v22, v23, v98);
    v24 = v57;
    v60 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v58 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = 32;
    v25 = swift_allocObject();
    v26 = v61;
    v62 = v25;
    *(v25 + 16) = v85;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v62;
    v66 = v27;
    *(v27 + 16) = v86;
    *(v27 + 24) = v28;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v29;

    v30 = v63;
    v31 = v67;
    *v67 = v87;
    v31[1] = v30;

    v32 = v64;
    v33 = v67;
    v67[2] = v88;
    v33[3] = v32;

    v34 = v66;
    v35 = v67;
    v67[4] = v89;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v36 = v95;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v53 = &v110;
      v110 = v50;
      v54 = &v109;
      v109 = v51;
      v55 = &v108;
      v108 = v52;
      serialize(_:at:)(2, &v110);
      serialize(_:at:)(1, v53);
      v106 = v87;
      v107 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v106, v53, v54, v55);
      v56 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v106 = v88;
        v107 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        v48 = 0;
        v106 = v89;
        v107 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        _os_log_impl(&dword_1D93D0000, v69, v70, "HeadphoneManager: Update Offline Device Config Failed, Error: %s", v50, 0xCu);
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v50, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v99 + 8))(v102, v98);
  }

  else
  {
    v9 = v104;
    v10 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v9, v10, v98);
    MEMORY[0x1E69E5928](v97);
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v97;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 64;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v11 = swift_allocObject();
    v12 = v74;
    v75 = v11;
    *(v11 + 16) = v90;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v75;
    v79 = v13;
    *(v13 + 16) = v91;
    *(v13 + 24) = v14;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v78 = _allocateUninitializedArray<A>(_:)();
    v80 = v15;

    v16 = v76;
    v17 = v80;
    *v80 = v92;
    v17[1] = v16;

    v18 = v77;
    v19 = v80;
    v80[2] = v93;
    v19[3] = v18;

    v20 = v79;
    v21 = v80;
    v80[4] = v94;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v82, v83))
    {
      v37 = v95;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(1, v40, v40);
      v43 = createStorage<A>(capacity:type:)(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v44 = &v116;
      v116 = v41;
      v45 = &v115;
      v115 = v42;
      v46 = &v114;
      v114 = v43;
      serialize(_:at:)(2, &v116);
      serialize(_:at:)(1, v44);
      v112 = v92;
      v113 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v112, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v112 = v93;
        v113 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        v39 = 0;
        v112 = v94;
        v113 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        _os_log_impl(&dword_1D93D0000, v82, v83, "HeadphoneManager: Successfully Updated Offline Device Config: %@", v41, 0xCu);
        destroyStorage<A>(_:count:)(v42, 1, v40);
        destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v99 + 8))(v104, v98);
  }

  return (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x278))(0);
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t Headphone_Manager.disconnect(hpDevice:)(void *a1)
{
  v22 = a1;
  v21 = v1;
  v9 = MEMORY[0x1E69E7D40];
  v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x120))();
  v7 = (*((*a1 & *v9) + 0x228))();
  [v6 setPeerDevice_];
  MEMORY[0x1E69E5920](v6);
  v2 = MEMORY[0x1E69E5920](v7);
  v8 = (*((*v10 & *v9) + 0x120))(v2);
  [v8 setServiceFlags_];
  v3 = MEMORY[0x1E69E5920](v8);
  v13 = (*((*v10 & *v9) + 0x120))(v3);
  MEMORY[0x1E69E5928](a1);
  (MEMORY[0x1E69E5928])();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v10;
  v19 = partial apply for closure #1 in Headphone_Manager.disconnect(hpDevice:);
  v20 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = 0;
  v17 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v18 = &block_descriptor_121;
  v12 = _Block_copy(&aBlock);

  [v13 disconnectWithCompletion_];
  _Block_release(v12);
  return MEMORY[0x1E69E5920](v13);
}

void closure #1 in Headphone_Manager.disconnect(hpDevice:)(void *a1, uint64_t a2, void *a3)
{
  v108 = a1;
  v100 = a2;
  v99 = a3;
  v88 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.disconnect(hpDevice:);
  v89 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v90 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = closure #1 in OSLogArguments.append(_:)partial apply;
  v92 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.disconnect(hpDevice:);
  v94 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v95 = closure #1 in OSLogArguments.append(_:)partial apply;
  v96 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v98 = 0;
  v114 = 0;
  v101 = type metadata accessor for Logger();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v108);
  v105 = &v40 - v104;
  v106 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v107 = &v40 - v106;
  v122 = v5;
  v121 = v6;
  v120 = v7;
  v8 = v5;
  if (v108)
  {
    v87 = v108;
    v22 = v105;
    v60 = v108;
    v114 = v108;
    v23 = Logger.shared.unsafeMutableAddressor();
    (*(v102 + 16))(v22, v23, v101);
    v24 = v60;
    v63 = 7;
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v61 = 17;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v62 = 32;
    v25 = swift_allocObject();
    v26 = v64;
    v65 = v25;
    *(v25 + 16) = v88;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v65;
    v69 = v27;
    *(v27 + 16) = v89;
    *(v27 + 24) = v28;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v68 = _allocateUninitializedArray<A>(_:)();
    v70 = v29;

    v30 = v66;
    v31 = v70;
    *v70 = v90;
    v31[1] = v30;

    v32 = v67;
    v33 = v70;
    v70[2] = v91;
    v33[3] = v32;

    v34 = v69;
    v35 = v70;
    v70[4] = v92;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v72, v73))
    {
      v36 = v98;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(0, v52, v52);
      v55 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v56 = &v113;
      v113 = v53;
      v57 = &v112;
      v112 = v54;
      v58 = &v111;
      v111 = v55;
      serialize(_:at:)(2, &v113);
      serialize(_:at:)(1, v56);
      v109 = v90;
      v110 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v109, v56, v57, v58);
      v59 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v109 = v91;
        v110 = v67;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        v51 = 0;
        v109 = v92;
        v110 = v69;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        _os_log_impl(&dword_1D93D0000, v72, v73, "HeadphoneManager: Disconnect Failed, Error: %s", v53, 0xCu);
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v53, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v72);
    (*(v102 + 8))(v105, v101);
  }

  else
  {
    v9 = v107;
    v10 = Logger.shared.unsafeMutableAddressor();
    (*(v102 + 16))(v9, v10, v101);
    MEMORY[0x1E69E5928](v100);
    v76 = 7;
    v77 = swift_allocObject();
    *(v77 + 16) = v100;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    v74 = 17;
    v79 = swift_allocObject();
    *(v79 + 16) = 32;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v75 = 32;
    v11 = swift_allocObject();
    v12 = v77;
    v78 = v11;
    *(v11 + 16) = v93;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v78;
    v82 = v13;
    *(v13 + 16) = v94;
    *(v13 + 24) = v14;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v81 = _allocateUninitializedArray<A>(_:)();
    v83 = v15;

    v16 = v79;
    v17 = v83;
    *v83 = v95;
    v17[1] = v16;

    v18 = v80;
    v19 = v83;
    v83[2] = v96;
    v19[3] = v18;

    v20 = v82;
    v21 = v83;
    v83[4] = v97;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v85, v86))
    {
      v37 = v98;
      v44 = static UnsafeMutablePointer.allocate(capacity:)();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v45 = createStorage<A>(capacity:type:)(0, v43, v43);
      v46 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v47 = &v119;
      v119 = v44;
      v48 = &v118;
      v118 = v45;
      v49 = &v117;
      v117 = v46;
      serialize(_:at:)(2, &v119);
      serialize(_:at:)(1, v47);
      v115 = v95;
      v116 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v115, v47, v48, v49);
      v50 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v115 = v96;
        v116 = v80;
        closure #1 in osLogInternal(_:log:type:)(&v115, &v119, &v118, &v117);
        v42 = 0;
        v115 = v97;
        v116 = v82;
        closure #1 in osLogInternal(_:log:type:)(&v115, &v119, &v118, &v117);
        _os_log_impl(&dword_1D93D0000, v85, v86, "HeadphoneManager: Disconnected from %s", v44, 0xCu);
        destroyStorage<A>(_:count:)(v45, 0, v43);
        destroyStorage<A>(_:count:)(v46, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v44, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v38 = v99;
    MEMORY[0x1E69E5920](v85);
    v39 = (*(v102 + 8))(v107, v101);
    v41 = (*((*v38 & *MEMORY[0x1E69E7D40]) + 0x120))(v39);
    [v41 invalidate];
    MEMORY[0x1E69E5920](v41);
  }
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.disconnect(hpDevice:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t Headphone_Manager.unpair(hpDevice:)(void *a1)
{
  v17 = a1;
  v16 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v8 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x108))();
  v7 = (*((*a1 & *v4) + 0x228))();
  MEMORY[0x1E69E5928](a1);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v14 = partial apply for closure #1 in Headphone_Manager.unpair(hpDevice:);
  v15 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v13 = &block_descriptor_127;
  v6 = _Block_copy(&aBlock);

  [v8 deleteDevice:v7 completion:v6];
  _Block_release(v6);
  MEMORY[0x1E69E5920](v7);
  return MEMORY[0x1E69E5920](v8);
}

void closure #1 in Headphone_Manager.unpair(hpDevice:)(void *a1, uint64_t a2)
{
  v101 = a1;
  v93 = a2;
  v82 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.unpair(hpDevice:);
  v83 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v84 = closure #1 in OSLogArguments.append(_:)partial apply;
  v85 = closure #1 in OSLogArguments.append(_:)partial apply;
  v86 = closure #1 in OSLogArguments.append(_:)partial apply;
  v87 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.unpair(hpDevice:);
  v88 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v90 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = closure #1 in OSLogArguments.append(_:)partial apply;
  v114 = 0;
  v113 = 0;
  v92 = 0;
  v107 = 0;
  v94 = type metadata accessor for Logger();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v101);
  v98 = &v36 - v97;
  v99 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v100 = &v36 - v99;
  v114 = v4;
  v113 = v5;
  v6 = v4;
  if (v101)
  {
    v81 = v101;
    v20 = v98;
    v54 = v101;
    v107 = v101;
    v21 = Logger.shared.unsafeMutableAddressor();
    (*(v95 + 16))(v20, v21, v94);
    v22 = v54;
    v57 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    v55 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v56 = 32;
    v23 = swift_allocObject();
    v24 = v58;
    v59 = v23;
    *(v23 + 16) = v82;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v59;
    v63 = v25;
    *(v25 + 16) = v83;
    *(v25 + 24) = v26;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v62 = _allocateUninitializedArray<A>(_:)();
    v64 = v27;

    v28 = v60;
    v29 = v64;
    *v64 = v84;
    v29[1] = v28;

    v30 = v61;
    v31 = v64;
    v64[2] = v85;
    v31[3] = v30;

    v32 = v63;
    v33 = v64;
    v64[4] = v86;
    v33[5] = v32;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v66, v67))
    {
      v34 = v92;
      v47 = static UnsafeMutablePointer.allocate(capacity:)();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = createStorage<A>(capacity:type:)(0, v46, v46);
      v49 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v50 = &v106;
      v106 = v47;
      v51 = &v105;
      v105 = v48;
      v52 = &v104;
      v104 = v49;
      serialize(_:at:)(2, &v106);
      serialize(_:at:)(1, v50);
      v102 = v84;
      v103 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v102, v50, v51, v52);
      v53 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v102 = v85;
        v103 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v102, &v106, &v105, &v104);
        v45 = 0;
        v102 = v86;
        v103 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v102, &v106, &v105, &v104);
        _os_log_impl(&dword_1D93D0000, v66, v67, "HeadphoneManager: Forget this device Failed, Error: %s", v47, 0xCu);
        destroyStorage<A>(_:count:)(v48, 0, v46);
        destroyStorage<A>(_:count:)(v49, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v47, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v66);
    (*(v95 + 8))(v98, v94);
  }

  else
  {
    v7 = v100;
    v8 = Logger.shared.unsafeMutableAddressor();
    (*(v95 + 16))(v7, v8, v94);
    MEMORY[0x1E69E5928](v93);
    v70 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v93;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    v68 = 17;
    v73 = swift_allocObject();
    *(v73 + 16) = 32;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v69 = 32;
    v9 = swift_allocObject();
    v10 = v71;
    v72 = v9;
    *(v9 + 16) = v87;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v72;
    v76 = v11;
    *(v11 + 16) = v88;
    *(v11 + 24) = v12;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v75 = _allocateUninitializedArray<A>(_:)();
    v77 = v13;

    v14 = v73;
    v15 = v77;
    *v77 = v89;
    v15[1] = v14;

    v16 = v74;
    v17 = v77;
    v77[2] = v90;
    v17[3] = v16;

    v18 = v76;
    v19 = v77;
    v77[4] = v91;
    v19[5] = v18;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v79, v80))
    {
      v35 = v92;
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = createStorage<A>(capacity:type:)(0, v37, v37);
      v40 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v41 = &v112;
      v112 = v38;
      v42 = &v111;
      v111 = v39;
      v43 = &v110;
      v110 = v40;
      serialize(_:at:)(2, &v112);
      serialize(_:at:)(1, v41);
      v108 = v89;
      v109 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v108, v41, v42, v43);
      v44 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v108 = v90;
        v109 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v112, &v111, &v110);
        v36 = 0;
        v108 = v91;
        v109 = v76;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v112, &v111, &v110);
        _os_log_impl(&dword_1D93D0000, v79, v80, "HeadphoneManager: Forget %s", v38, 0xCu);
        destroyStorage<A>(_:count:)(v39, 0, v37);
        destroyStorage<A>(_:count:)(v40, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v38, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v79);
    (*(v95 + 8))(v100, v94);
  }
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.unpair(hpDevice:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

void *Headphone_Manager.headphoneDevice(forAddress:)(uint64_t a1, uint64_t a2)
{
  v226 = a1;
  v225 = a2;
  v204 = implicit closure #3 in Headphone_Manager.headphoneDevice(forAddress:);
  v205 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v206 = partial apply for implicit closure #4 in Headphone_Manager.headphoneDevice(forAddress:);
  v207 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v208 = closure #1 in OSLogArguments.append(_:)partial apply;
  v209 = closure #1 in OSLogArguments.append(_:)partial apply;
  v210 = closure #1 in OSLogArguments.append(_:)partial apply;
  v211 = closure #1 in OSLogArguments.append(_:)partial apply;
  v212 = closure #1 in OSLogArguments.append(_:)partial apply;
  v213 = closure #1 in OSLogArguments.append(_:)partial apply;
  v214 = implicit closure #2 in Headphone_Manager.headphoneDevice(forAddress:);
  v215 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v216 = closure #1 in OSLogArguments.append(_:)partial apply;
  v217 = closure #1 in OSLogArguments.append(_:)partial apply;
  v218 = closure #1 in OSLogArguments.append(_:)partial apply;
  v219 = implicit closure #1 in Headphone_Manager.headphoneDevice(forAddress:);
  v220 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v221 = closure #1 in OSLogArguments.append(_:)partial apply;
  v222 = closure #1 in OSLogArguments.append(_:)partial apply;
  v223 = closure #1 in OSLogArguments.append(_:)partial apply;
  v288 = 0;
  v289 = 0;
  v287 = 0;
  v281 = 0;
  v282 = 0;
  v224 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v257 = 0;
  v258 = 0;
  v251 = 0;
  v249 = 0;
  v244 = 0;
  v227 = type metadata accessor for Logger();
  v228 = *(v227 - 8);
  v229 = v227 - 8;
  v230 = (*(v228 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v226);
  v231 = v81 - v230;
  v232 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v233 = v81 - v232;
  v234 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v235 = v81 - v234;
  v288 = v7;
  v289 = v8;
  v287 = v2;
  v285 = v7;
  v286 = v8;
  v236 = 1;
  v238 = 1;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v241 = &v284;
  v284 = v9;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", v236, v238 & 1);
  v240 = &v283;
  v283 = v10;
  v237 = lazy protocol witness table accessor for type String and conformance String();
  v245 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v12 = v239;
  v242 = v11;
  v243 = v13;
  outlined destroy of String(v240);
  outlined destroy of String(v241);
  v281 = v242;
  v282 = v243;

  v246 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v14);
  v247 = v279;
  v279[0] = v242;
  v279[1] = v243;
  v15 = type metadata accessor for HeadphoneDevice(v244);
  MEMORY[0x1DA7308E0](&v280, v247, v246, v245, v15, MEMORY[0x1E69E6168]);
  outlined destroy of String(v247);
  v248 = v280;
  if (v280)
  {
    v203 = v248;
    v201 = v248;
    v249 = v248;

    return v201;
  }

  v16 = v239;

  v199 = (*((*v16 & *MEMORY[0x1E69E7D40]) + 0x138))(v17);
  v277 = v226;
  v278 = v225;
  v191 = 1;
  v192 = 1;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  v195 = &v276;
  v276 = v18;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", v191, v192 & 1);
  v194 = &v275;
  v275 = v19;
  v193 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v196 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v197 = v20;
  outlined destroy of String(v194);
  outlined destroy of String(v195);
  v198 = MEMORY[0x1DA730940](v196, v197);

  v200 = [v199 fetchAudioAccessoryDeviceForBTAddress_];
  MEMORY[0x1E69E5920](v198);
  MEMORY[0x1E69E5920](v199);
  if (v200)
  {
    v190 = v200;
    v188 = v200;
    v269 = v200;
    v21 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(v200);
    v189 = v21;
    if (v21)
    {
      v187 = v189;
      v22 = v239;
      v185 = v189;
      v268 = v189;
      MEMORY[0x1E69E5928](v239);
      v180 = [v188 headphoneDeviceWithCbDevice:v185 withDelegate:v22];
      swift_unknownObjectRelease();
      v267 = v180;

      MEMORY[0x1E69E5928](v180);
      v182 = &v266;
      v266 = v180;
      v181 = v265;
      v265[0] = v242;
      v265[1] = v243;
      v23 = *((*v22 & *MEMORY[0x1E69E7D40]) + 0x1F0);
      v183 = &v264;
      v184 = v23();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
      Dictionary.subscript.setter();
      v184();
      v24 = [v185 identifier];
      v186 = v24;
      if (v24)
      {
        v179 = v186;
        v174 = v186;
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v25;
        MEMORY[0x1E69E5920](v174);
        v177 = v175;
        v178 = v176;
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      v172 = v178;
      v173 = v177;
      if (v178)
      {
        v170 = v173;
        v171 = v172;
        v166 = v172;
        v165 = v173;
        v257 = v173;
        v258 = v172;
        v164 = *Headphone_Manager.shared.unsafeMutableAddressor();
        v26 = v164;
        v27 = MEMORY[0x1E69E5928](v164);
        v168 = (*((*v26 & *MEMORY[0x1E69E7D40]) + 0x150))(v27);
        MEMORY[0x1E69E5920](v164);

        v167 = MEMORY[0x1DA730940](v165, v166);

        v169 = [v168 fetchHearingModeDeviceRecordForIdentifier_];
        MEMORY[0x1E69E5920](v167);
        MEMORY[0x1E69E5920](v168);
        if (v169)
        {
          v163 = v169;
          v160 = v169;
          v251 = v169;
          v28 = *v180;
          v162 = MEMORY[0x1E69E7D40];
          v161 = (*((v28 & *MEMORY[0x1E69E7D40]) + 0xA50))();
          (*((*v161 & *v162) + 0x768))(v160);
          v29 = v239;
          v30 = MEMORY[0x1E69E5920](v161);
          v250 = (*((*v29 & *v162) + 0xD8))(v30);
          if (v250)
          {
            v158 = &v250;
            v159 = v250;
            swift_unknownObjectRetain();
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(v158);
            swift_getObjectType();
            [v159 addTopLevelEntryWithHpDevice_];
            swift_unknownObjectRelease();
          }

          else
          {
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v250);
          }

          v157 = v180;
          MEMORY[0x1E69E5920](v160);

          MEMORY[0x1E69E5920](v185);
          MEMORY[0x1E69E5920](v188);

          return v157;
        }

        else
        {
          v31 = v235;
          v32 = Logger.shared.unsafeMutableAddressor();
          (*(v228 + 16))(v31, v32, v227);
          MEMORY[0x1E69E5928](v180);
          v143 = 7;
          v144 = swift_allocObject();
          *(v144 + 16) = v180;
          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.error.getter();
          v140 = 17;
          v146 = swift_allocObject();
          *(v146 + 16) = 32;
          v147 = swift_allocObject();
          v141 = 8;
          *(v147 + 16) = 8;
          v142 = 32;
          v33 = swift_allocObject();
          v139 = v33;
          *(v33 + 16) = v204;
          *(v33 + 24) = 0;
          v34 = swift_allocObject();
          v35 = v139;
          v148 = v34;
          *(v34 + 16) = v205;
          *(v34 + 24) = v35;
          v149 = swift_allocObject();
          *(v149 + 16) = 64;
          v150 = swift_allocObject();
          *(v150 + 16) = v141;
          v36 = swift_allocObject();
          v37 = v144;
          v145 = v36;
          *(v36 + 16) = v206;
          *(v36 + 24) = v37;
          v38 = swift_allocObject();
          v39 = v145;
          v152 = v38;
          *(v38 + 16) = v207;
          *(v38 + 24) = v39;
          v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v151 = _allocateUninitializedArray<A>(_:)();
          v153 = v40;

          v41 = v146;
          v42 = v153;
          *v153 = v208;
          v42[1] = v41;

          v43 = v147;
          v44 = v153;
          v153[2] = v209;
          v44[3] = v43;

          v45 = v148;
          v46 = v153;
          v153[4] = v210;
          v46[5] = v45;

          v47 = v149;
          v48 = v153;
          v153[6] = v211;
          v48[7] = v47;

          v49 = v150;
          v50 = v153;
          v153[8] = v212;
          v50[9] = v49;

          v51 = v152;
          v52 = v153;
          v153[10] = v213;
          v52[11] = v51;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v155, v156))
          {
            v53 = v224;
            v131 = static UnsafeMutablePointer.allocate(capacity:)();
            v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v130 = 1;
            v132 = createStorage<A>(capacity:type:)(1, v129, v129);
            v133 = createStorage<A>(capacity:type:)(v130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v135 = &v256;
            v256 = v131;
            v136 = &v255;
            v255 = v132;
            v137 = &v254;
            v254 = v133;
            v134 = 2;
            serialize(_:at:)(2, &v256);
            serialize(_:at:)(v134, v135);
            v252 = v208;
            v253 = v146;
            closure #1 in osLogInternal(_:log:type:)(&v252, v135, v136, v137);
            v138 = v53;
            if (v53)
            {

              __break(1u);
            }

            else
            {
              v252 = v209;
              v253 = v147;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v128 = 0;
              v252 = v210;
              v253 = v148;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v127 = 0;
              v252 = v211;
              v253 = v149;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v126 = 0;
              v252 = v212;
              v253 = v150;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v125 = 0;
              v252 = v213;
              v253 = v152;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              _os_log_impl(&dword_1D93D0000, v155, v156, "HeadphoneManager: %s: sync fetch returned nil returning device %@", v131, 0x16u);
              v124 = 1;
              destroyStorage<A>(_:count:)(v132, 1, v129);
              destroyStorage<A>(_:count:)(v133, v124, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v131, MEMORY[0x1E69E7508]);
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v155);
          (*(v228 + 8))(v235, v227);
          v123 = v180;

          MEMORY[0x1E69E5920](v185);
          MEMORY[0x1E69E5920](v188);

          return v123;
        }
      }

      else
      {
        v54 = v233;
        v55 = Logger.shared.unsafeMutableAddressor();
        (*(v228 + 16))(v54, v55, v227);
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();
        v111 = 17;
        v113 = 7;
        v115 = swift_allocObject();
        *(v115 + 16) = 32;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v112 = 32;
        v56 = swift_allocObject();
        v114 = v56;
        *(v56 + 16) = v214;
        *(v56 + 24) = 0;
        v57 = swift_allocObject();
        v58 = v114;
        v118 = v57;
        *(v57 + 16) = v215;
        *(v57 + 24) = v58;
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v117 = _allocateUninitializedArray<A>(_:)();
        v119 = v59;

        v60 = v115;
        v61 = v119;
        *v119 = v216;
        v61[1] = v60;

        v62 = v116;
        v63 = v119;
        v119[2] = v217;
        v63[3] = v62;

        v64 = v118;
        v65 = v119;
        v119[4] = v218;
        v65[5] = v64;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v121, v122))
        {
          v66 = v224;
          v104 = static UnsafeMutablePointer.allocate(capacity:)();
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v105 = createStorage<A>(capacity:type:)(0, v103, v103);
          v106 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v107 = &v263;
          v263 = v104;
          v108 = &v262;
          v262 = v105;
          v109 = &v261;
          v261 = v106;
          serialize(_:at:)(2, &v263);
          serialize(_:at:)(1, v107);
          v259 = v216;
          v260 = v115;
          closure #1 in osLogInternal(_:log:type:)(&v259, v107, v108, v109);
          v110 = v66;
          if (v66)
          {

            __break(1u);
          }

          else
          {
            v259 = v217;
            v260 = v116;
            closure #1 in osLogInternal(_:log:type:)(&v259, &v263, &v262, &v261);
            v102 = 0;
            v259 = v218;
            v260 = v118;
            closure #1 in osLogInternal(_:log:type:)(&v259, &v263, &v262, &v261);
            _os_log_impl(&dword_1D93D0000, v121, v122, "HeadphoneManager: %s: uuidString lookup for HR Fetch failed!", v104, 0xCu);
            destroyStorage<A>(_:count:)(v105, 0, v103);
            destroyStorage<A>(_:count:)(v106, 1, MEMORY[0x1E69E7CA0] + 8);
            MEMORY[0x1DA730D30](v104, MEMORY[0x1E69E7508]);
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v121);
        (*(v228 + 8))(v233, v227);
        MEMORY[0x1E69E5920](v180);
        MEMORY[0x1E69E5920](v185);
        MEMORY[0x1E69E5920](v188);

        return 0;
      }
    }

    MEMORY[0x1E69E5920](v188);
  }

  v67 = v231;
  v68 = Logger.shared.unsafeMutableAddressor();
  (*(v228 + 16))(v67, v68, v227);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  v90 = 17;
  v92 = 7;
  v94 = swift_allocObject();
  *(v94 + 16) = 32;
  v95 = swift_allocObject();
  *(v95 + 16) = 8;
  v91 = 32;
  v69 = swift_allocObject();
  v93 = v69;
  *(v69 + 16) = v219;
  *(v69 + 24) = 0;
  v70 = swift_allocObject();
  v71 = v93;
  v97 = v70;
  *(v70 + 16) = v220;
  *(v70 + 24) = v71;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v96 = _allocateUninitializedArray<A>(_:)();
  v98 = v72;

  v73 = v94;
  v74 = v98;
  *v98 = v221;
  v74[1] = v73;

  v75 = v95;
  v76 = v98;
  v98[2] = v222;
  v76[3] = v75;

  v77 = v97;
  v78 = v98;
  v98[4] = v223;
  v78[5] = v77;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v100, v101))
  {
    v79 = v224;
    v83 = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v84 = createStorage<A>(capacity:type:)(0, v82, v82);
    v85 = createStorage<A>(capacity:type:)(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v86 = &v274;
    v274 = v83;
    v87 = &v273;
    v273 = v84;
    v88 = &v272;
    v272 = v85;
    serialize(_:at:)(2, &v274);
    serialize(_:at:)(1, v86);
    v270 = v221;
    v271 = v94;
    closure #1 in osLogInternal(_:log:type:)(&v270, v86, v87, v88);
    v89 = v79;
    if (v79)
    {

      __break(1u);
    }

    else
    {
      v270 = v222;
      v271 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v270, &v274, &v273, &v272);
      v81[1] = 0;
      v270 = v223;
      v271 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v270, &v274, &v273, &v272);
      _os_log_impl(&dword_1D93D0000, v100, v101, "HeadphoneManager: %s: AAF Device: is missing cbDevice early exit found handler", v83, 0xCu);
      destroyStorage<A>(_:count:)(v84, 0, v82);
      destroyStorage<A>(_:count:)(v85, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v83, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v100);
  (*(v228 + 8))(v231, v227);

  return 0;
}