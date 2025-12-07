uint64_t GetMenstruationPredictionIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 96) = *v1;
  *(v3 + 160) = a1;

  return MEMORY[0x2822009F8](GetMenstruationPredictionIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetMenstruationPredictionIntentHandler.handle(intent:)(a1);
}

uint64_t sub_26996AA88()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:)(v7, v5, v6);
}

id GetMenstruationPredictionIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CycleTrackingFetcher.isReadingAuthorized()(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  MEMORY[0x277D82BE0](a1);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(a1);
}

uint64_t CycleTrackingFetcher.isReadingAuthorized()(unsigned int a1)
{
  v5 = *v1;
  v4 = *(*v1 + 32);
  *(v5 + 16) = *v1;

  v2 = *(*(v5 + 16) + 8);

  return v2(a1);
}

uint64_t CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  return MEMORY[0x2822009F8](CycleTrackingFetcher.query(projectionFocus:), 0);
}

uint64_t CycleTrackingFetcher.query(projectionFocus:)()
{
  v5 = v0[7];
  v6 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(projectionFocus:)", 0x17uLL, 1);
  v0[8] = v1._object;
  MEMORY[0x277D82BE0](v5);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v2 = swift_task_alloc();
  *(v7 + 80) = v2;
  MenstruationPredictionIntentResponse = type metadata accessor for GetMenstruationPredictionIntentResponse();
  *v2 = *(v7 + 16);
  v2[1] = CycleTrackingFetcher.query(projectionFocus:);

  return MEMORY[0x2822007B8](v7 + 40, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in CycleTrackingFetcher.query(projectionFocus:), v8, MenstruationPredictionIntentResponse);
}

{
  v2 = *(*v0 + 56);
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](CycleTrackingFetcher.query(projectionFocus:), 0);
}

{
  *(v0 + 16) = v0;
  return (*(*(v0 + 16) + 8))(*(v0 + 40));
}

uint64_t closure #1 in CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a1;
  v17 = a2;
  v18 = a3;
  v16 = partial apply for closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:);
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR);
  v11 = *(v15 - 8);
  v12 = v15 - 8;
  v9 = v11;
  v10 = *(v11 + 64);
  v3 = MEMORY[0x28223BE20](v15, v8);
  v14 = &v7 - v4;
  v22 = v5;
  v21 = v17;
  v20 = v18;
  (*(v11 + 16))(v3);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v13, v14, v15);
  CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:)(v18, v16, v19, v17);
}

uint64_t closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v46 = a3;
  v45 = a2;
  v47 = a1;
  v61 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v40 = 0;
  v57 = type metadata accessor for Logger();
  v41 = v57;
  v42 = *(v57 - 8);
  v55 = v42;
  v43 = v42;
  MEMORY[0x28223BE20](v47, v45);
  v51 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v51;
  v76 = v5;
  v74 = v6;
  v75 = v7;
  v73 = v8;
  v9 = v8;
  v10 = v54;

  v11 = v54;
  v12 = swift_allocObject();
  v13 = v45;
  v14 = v46;
  v15 = v47;
  v16 = v54;
  v50 = v12;
  v48 = v12;
  v12[2] = v54;
  v12[3] = v13;
  v12[4] = v14;
  v12[5] = v16;
  v12[6] = v15;
  v49 = partial apply for closure #1 in CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:);
  v71 = partial apply for closure #1 in CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:);
  v72 = v12;

  type metadata accessor for HKMCAnalysisQuery();

  v17 = HKMCAnalysisQuery.__allocating_init(updateHandler:)(v49, v50);
  v18 = v51;
  v53 = v17;
  v52 = v17;
  v70 = v17;
  v19 = v54;
  [v54 executeQuery_];

  v56 = Logger.wellnessIntents.unsafeMutableAddressor();
  v58 = &v69;
  swift_beginAccess();
  (*(v55 + 16))(v18, v56, v57);
  swift_endAccess();
  v63 = Logger.logObject.getter();
  v59 = v63;
  v62 = static os_log_type_t.debug.getter();
  v60 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v64 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v63, v62))
  {
    v20 = v40;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = 0;
    v32 = createStorage<A>(capacity:type:)(0, v28, v28);
    v30 = v32;
    v33 = createStorage<A>(capacity:type:)(v29, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v68 = v31;
    v67 = v32;
    v66 = v33;
    v34 = 0;
    v35 = &v68;
    serialize(_:at:)(0, &v68);
    serialize(_:at:)(v34, v35);
    v65 = v64;
    v36 = &v24;
    MEMORY[0x28223BE20](&v24, v21);
    v37 = &v24 - 6;
    *(&v24 - 4) = v22;
    *(&v24 - 3) = &v67;
    *(&v24 - 2) = &v66;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v39 = v20;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v59, v60, "Querying menstrual cycles", v27, 2u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v33, v25, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v27, MEMORY[0x277D84B78]);

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v43 + 8))(v44, v41);
}

uint64_t closure #1 in CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v160 = a8;
  v159 = a7;
  v158 = a6;
  v157 = a5;
  v162 = a4;
  v172 = a3;
  v163 = a2;
  v161 = a1;
  v155 = 0;
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v192 = 0;
  v156 = 0;
  v182 = 0;
  v181 = 0;
  v179 = 0;
  v164 = type metadata accessor for Logger();
  v165 = *(v164 - 8);
  v166 = v165;
  v168 = *(v165 + 64);
  MEMORY[0x28223BE20](v162, v163);
  v170 = (v168 + 15) & 0xFFFFFFFFFFFFFFF0;
  v167 = &v50 - v170;
  MEMORY[0x28223BE20](v8, v9);
  v169 = &v50 - v170;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v171 = &v50 - v170;
  v202 = v13;
  v201 = v14;
  v200 = v15;
  v199 = v16;
  v197 = v17;
  v198 = v18;
  v196 = v19;
  v195 = v20;
  [v16 stopQuery_];
  v21 = v172;
  if (v172)
  {
    v154 = v172;
    v23 = v171;
    v134 = v172;
    v179 = v172;
    v132 = Logger.wellnessIntents.unsafeMutableAddressor();
    v140 = 32;
    v133 = &v178;
    swift_beginAccess();
    (*(v166 + 16))(v23, v132, v164);
    swift_endAccess();
    v24 = v134;
    v141 = 7;
    v142 = swift_allocObject();
    *(v142 + 16) = v134;
    v152 = Logger.logObject.getter();
    v135 = v152;
    v151 = static os_log_type_t.error.getter();
    v136 = v151;
    v137 = 17;
    v145 = swift_allocObject();
    v138 = v145;
    *(v145 + 16) = 64;
    v146 = swift_allocObject();
    v139 = v146;
    *(v146 + 16) = 8;
    v25 = swift_allocObject();
    v26 = v142;
    v143 = v25;
    *(v25 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v143;
    v149 = v27;
    v144 = v27;
    *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v27 + 24) = v28;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v147 = _allocateUninitializedArray<A>(_:)();
    v148 = v29;

    v30 = v145;
    v31 = v148;
    *v148 = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[1] = v30;

    v32 = v146;
    v33 = v148;
    v148[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v33[3] = v32;

    v34 = v148;
    v35 = v149;
    v148[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v34[5] = v35;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v152, v151))
    {
      v37 = v156;
      v125 = static UnsafeMutablePointer.allocate(capacity:)();
      v122 = v125;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v128 = 1;
      v126 = createStorage<A>(capacity:type:)(1, v123, v123);
      v124 = v126;
      v127 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v177 = v125;
      v176 = v126;
      v175 = v127;
      v129 = &v177;
      serialize(_:at:)(2, &v177);
      serialize(_:at:)(v128, v129);
      v173 = partial apply for closure #1 in OSLogArguments.append(_:);
      v174 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v173, v129, &v176, &v175);
      v130 = v37;
      v131 = v37;
      if (v37)
      {
        v120 = 0;

        __break(1u);
      }

      else
      {
        v173 = partial apply for closure #1 in OSLogArguments.append(_:);
        v174 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v173, &v177, &v176, &v175);
        v118 = 0;
        v119 = 0;
        v173 = partial apply for closure #1 in OSLogArguments.append(_:);
        v174 = v144;
        closure #1 in osLogInternal(_:log:type:)(&v173, &v177, &v176, &v175);
        v116 = 0;
        v117 = 0;
        _os_log_impl(&dword_269912000, v135, v136, "Failed to query menstrual cycle analysis: %@", v122, 0xCu);
        destroyStorage<A>(_:count:)(v124, 1, v123);
        destroyStorage<A>(_:count:)(v127, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v122, MEMORY[0x277D84B78]);

        v121 = v116;
      }
    }

    else
    {
      v38 = v156;

      v121 = v38;
    }

    v114 = v121;

    (*(v166 + 8))(v171, v164);

    v112 = 0;
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v113 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(5, v112);
    v157();

    return v114;
  }

  v22 = v163;
  if (v163)
  {
    v153 = v163;
    v109 = v163;
    v110 = [v163 menstruationProjectionsEnabled];

    v111 = v110;
  }

  else
  {
    v111 = 2;
  }

  v107 = v111;
  v108 = &v194;
  v193[30] = v111;
  v194 = 1;
  if (v111 != 2)
  {
    v180 = v107;
    if (*v108 != 2)
    {
      v106 = v180 ^ *v108 ^ 1;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (*v108 != 2)
  {
LABEL_20:
    v106 = 0;
    goto LABEL_18;
  }

  v106 = 1;
LABEL_18:
  if (v106)
  {
    v39 = v163;
    if (v163)
    {
      v105 = v163;
      v96 = v163;
      v182 = v163;
      v95 = CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)(v163, v160, v159);
      v181 = v95;

      (v157)(v95);

      return v156;
    }

    else
    {
      v40 = v169;
      v97 = Logger.wellnessIntents.unsafeMutableAddressor();
      v98 = &v187;
      v101 = 0;
      swift_beginAccess();
      (*(v166 + 16))(v40, v97, v164);
      swift_endAccess();
      v103 = Logger.logObject.getter();
      v99 = v103;
      v102 = static os_log_type_t.debug.getter();
      v100 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v104 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v103, v102))
      {
        v41 = v156;
        v86 = static UnsafeMutablePointer.allocate(capacity:)();
        v82 = v86;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v84 = 0;
        v87 = createStorage<A>(capacity:type:)(0, v83, v83);
        v85 = v87;
        v88 = createStorage<A>(capacity:type:)(v84, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v186 = v86;
        v185 = v87;
        v184 = v88;
        v89 = 0;
        v90 = &v186;
        serialize(_:at:)(0, &v186);
        serialize(_:at:)(v89, v90);
        v183 = v104;
        v91 = &v50;
        MEMORY[0x28223BE20](&v50, v42);
        v92 = &v50 - 6;
        *(&v50 - 4) = v43;
        *(&v50 - 3) = &v185;
        *(&v50 - 2) = &v184;
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v94 = v41;
        if (v41)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v99, v100, "No menstrual cycle analysis found", v82, 2u);
          v80 = 0;
          destroyStorage<A>(_:count:)(v85, 0, v83);
          destroyStorage<A>(_:count:)(v88, v80, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v82, MEMORY[0x277D84B78]);

          v81 = v94;
        }
      }

      else
      {

        v81 = v156;
      }

      v79 = v81;

      (*(v166 + 8))(v169, v164);

      v77 = 0;
      type metadata accessor for GetMenstruationPredictionIntentResponse();
      v78 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(102, v77);
      v157();

      return v79;
    }
  }

  else
  {
    v44 = v167;
    v69 = Logger.wellnessIntents.unsafeMutableAddressor();
    v70 = v193;
    v73 = 0;
    swift_beginAccess();
    (*(v166 + 16))(v44, v69, v164);
    swift_endAccess();
    v75 = Logger.logObject.getter();
    v71 = v75;
    v74 = static os_log_type_t.error.getter();
    v72 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v76 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v75, v74))
    {
      v46 = v156;
      v60 = static UnsafeMutablePointer.allocate(capacity:)();
      v56 = v60;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v58 = 0;
      v61 = createStorage<A>(capacity:type:)(0, v57, v57);
      v59 = v61;
      v62 = createStorage<A>(capacity:type:)(v58, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v191 = v60;
      v190 = v61;
      v189 = v62;
      v63 = 0;
      v64 = &v191;
      serialize(_:at:)(0, &v191);
      serialize(_:at:)(v63, v64);
      v188 = v76;
      v65 = &v50;
      MEMORY[0x28223BE20](&v50, v47);
      v66 = &v50 - 6;
      *(&v50 - 4) = v48;
      *(&v50 - 3) = &v190;
      *(&v50 - 2) = &v189;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v68 = v46;
      if (v46)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v71, v72, "Predictions are not enabled", v56, 2u);
        v54 = 0;
        destroyStorage<A>(_:count:)(v59, 0, v57);
        destroyStorage<A>(_:count:)(v62, v54, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v56, MEMORY[0x277D84B78]);

        v55 = v68;
      }
    }

    else
    {

      v55 = v156;
    }

    v53 = v55;

    (*(v166 + 8))(v167, v164);
    v51 = 0;
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v52 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(103, v51);
    v192 = v52;

    (v157)(v52);

    return v53;
  }
}

char *CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)(void *a1, _BYTE *a2, uint64_t a3)
{
  v448 = a3;
  v449 = a2;
  v474 = a1;
  v465 = 0;
  v571 = 0;
  v570 = 0;
  v569 = 0;
  v568 = 0;
  v567 = 0;
  v566 = 0;
  v565 = 0;
  v564 = 0;
  v562 = 0;
  v417 = 0;
  v554 = 0;
  v553 = 0;
  v550 = 0;
  v549 = 0;
  v538 = 0;
  v533 = 0;
  v531 = 0;
  v530 = 0;
  v529 = 0;
  v418 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3);
  v419 = &v134 - v418;
  v420 = type metadata accessor for Date();
  v421 = *(v420 - 8);
  v422 = v421;
  MEMORY[0x28223BE20](v420 - 8, v420);
  v423 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v465, v5);
  v427 = (v425 + 15) & 0xFFFFFFFFFFFFFFF0;
  v424 = &v134 - v427;
  MEMORY[0x28223BE20](v6, &v134 - v427);
  v426 = &v134 - v427;
  MEMORY[0x28223BE20](v7, &v134 - v427);
  v428 = &v134 - v427;
  v429 = type metadata accessor for DateInterval();
  v430 = *(v429 - 8);
  v431 = v430;
  v433 = *(v430 + 64);
  MEMORY[0x28223BE20](v465, v429);
  v435 = (v433 + 15) & 0xFFFFFFFFFFFFFFF0;
  v432 = &v134 - v435;
  v571 = &v134 - v435;
  MEMORY[0x28223BE20](v8, &v134 - v435);
  v434 = &v134 - v435;
  v570 = &v134 - v435;
  MEMORY[0x28223BE20](v9, &v134 - v435);
  v436 = &v134 - v435;
  v569 = &v134 - v435;
  v437 = type metadata accessor for Calendar.Identifier();
  v438 = *(v437 - 8);
  v439 = v438;
  MEMORY[0x28223BE20](v465, v437);
  v440 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = type metadata accessor for Calendar();
  v442 = *(v441 - 8);
  v443 = v442;
  v444 = *(v442 + 64);
  MEMORY[0x28223BE20](v465, v441);
  v446 = (v444 + 15) & 0xFFFFFFFFFFFFFFF0;
  v445 = &v134 - v446;
  MEMORY[0x28223BE20](v11, &v134 - v446);
  v447 = &v134 - v446;
  v568 = &v134 - v446;
  v468 = type metadata accessor for Logger();
  v450 = v468;
  v451 = *(v468 - 8);
  v466 = v451;
  v452 = v451;
  v457 = *(v451 + 64);
  MEMORY[0x28223BE20](v474, v449);
  v459 = (v457 + 15) & 0xFFFFFFFFFFFFFFF0;
  v453 = &v134 - v459;
  MEMORY[0x28223BE20](v12, v13);
  v454 = &v134 - v459;
  MEMORY[0x28223BE20](v14, v15);
  v455 = &v134 - v459;
  MEMORY[0x28223BE20](v16, v17);
  v456 = &v134 - v459;
  MEMORY[0x28223BE20](v18, v19);
  v458 = &v134 - v459;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v23 = &v134 - v459;
  v460 = &v134 - v459;
  v567 = v24;
  v566 = v25;
  v565 = v26;
  v464 = [v24 menstruationProjections];
  v462 = type metadata accessor for HKMCProjection();
  v461 = v462;
  v463 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v472 = MEMORY[0x26D6494A0](v463, v462);
  v564 = v472;

  v467 = Logger.wellnessIntents.unsafeMutableAddressor();
  v483 = 32;
  v488 = 32;
  v471 = &v563;
  swift_beginAccess();
  v469 = *(v466 + 16);
  v470 = (v466 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v469(v23, v467, v468);
  swift_endAccess();
  v473 = 24;
  v489 = 7;
  v27 = swift_allocObject();
  v28 = v474;
  v480 = v27;
  *(v27 + 16) = v472;
  v29 = v28;
  v475 = swift_allocObject();
  *(v475 + 16) = v474;

  v30 = swift_allocObject();
  v31 = v475;
  v490 = v30;
  *(v30 + 16) = partial apply for implicit closure #2 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
  *(v30 + 24) = v31;

  v504 = Logger.logObject.getter();
  v476 = v504;
  v503 = static os_log_type_t.debug.getter();
  v477 = v503;
  v484 = 17;
  v494 = swift_allocObject();
  v478 = v494;
  *(v494 + 16) = 0;
  v495 = swift_allocObject();
  v479 = v495;
  v486 = 8;
  *(v495 + 16) = 8;
  v32 = swift_allocObject();
  v33 = v480;
  v481 = v32;
  *(v32 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v481;
  v496 = v34;
  v482 = v34;
  *(v34 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v34 + 24) = v35;
  v497 = swift_allocObject();
  v485 = v497;
  *(v497 + 16) = v483;
  v498 = swift_allocObject();
  v487 = v498;
  *(v498 + 16) = v486;
  v36 = swift_allocObject();
  v37 = v490;
  v491 = v36;
  *(v36 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v491;
  v501 = v38;
  v492 = v38;
  *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v38 + 24) = v39;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v493 = v502;
  v499 = _allocateUninitializedArray<A>(_:)();
  v500 = v40;

  v41 = v494;
  v42 = v500;
  *v500 = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[1] = v41;

  v43 = v495;
  v44 = v500;
  v500[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v44[3] = v43;

  v45 = v496;
  v46 = v500;
  v500[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v46[5] = v45;

  v47 = v497;
  v48 = v500;
  v500[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[7] = v47;

  v49 = v498;
  v50 = v500;
  v500[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[9] = v49;

  v51 = v500;
  v52 = v501;
  v500[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[11] = v52;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v504, v503))
  {
    v53 = v417;
    v410 = static UnsafeMutablePointer.allocate(capacity:)();
    v407 = v410;
    v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v411 = createStorage<A>(capacity:type:)(0, v408, v408);
    v409 = v411;
    v412 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v509 = v410;
    v508 = v411;
    v507 = v412;
    v413 = 2;
    v414 = &v509;
    serialize(_:at:)(2, &v509);
    serialize(_:at:)(v413, v414);
    v505 = partial apply for closure #1 in OSLogArguments.append(_:);
    v506 = v478;
    closure #1 in osLogInternal(_:log:type:)(&v505, v414, &v508, &v507);
    v415 = v53;
    v416 = v53;
    if (v53)
    {
      v405 = 0;

      __break(1u);
    }

    else
    {
      v505 = partial apply for closure #1 in OSLogArguments.append(_:);
      v506 = v479;
      closure #1 in osLogInternal(_:log:type:)(&v505, &v509, &v508, &v507);
      v403 = 0;
      v404 = 0;
      v505 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v506 = v482;
      closure #1 in osLogInternal(_:log:type:)(&v505, &v509, &v508, &v507);
      v401 = 0;
      v402 = 0;
      v505 = partial apply for closure #1 in OSLogArguments.append(_:);
      v506 = v485;
      closure #1 in osLogInternal(_:log:type:)(&v505, &v509, &v508, &v507);
      v399 = 0;
      v400 = 0;
      v505 = partial apply for closure #1 in OSLogArguments.append(_:);
      v506 = v487;
      closure #1 in osLogInternal(_:log:type:)(&v505, &v509, &v508, &v507);
      v397 = 0;
      v398 = 0;
      v505 = partial apply for closure #1 in OSLogArguments.append(_:);
      v506 = v492;
      closure #1 in osLogInternal(_:log:type:)(&v505, &v509, &v508, &v507);
      v395 = 0;
      v396 = 0;
      _os_log_impl(&dword_269912000, v476, v477, "Found %ld projections in %s", v407, 0x16u);
      destroyStorage<A>(_:count:)(v409, 0, v408);
      destroyStorage<A>(_:count:)(v412, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v407, MEMORY[0x277D84B78]);

      v406 = v395;
    }
  }

  else
  {
    v54 = v417;

    v406 = v54;
  }

  v55 = v445;
  v56 = v406;

  v383 = *(v452 + 8);
  v384 = (v452 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v383(v460, v450);
  (*(v439 + 104))(v440, *MEMORY[0x277CC9830], v437);
  Calendar.init(identifier:)();
  (*(v439 + 8))(v440, v437);
  (*(v443 + 16))(v55, v447, v441);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v385 = *(v443 + 8);
  v386 = (v443 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v385(v445, v441);
  v390 = HKMCTodayIndex();
  v388 = v390;

  v562 = v390;
  v389 = [v474 menstruationProjections];
  v560 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v391 = &v134;
  MEMORY[0x28223BE20](v390, &v134);
  v392 = &v134 - 4;
  *(&v134 - 2) = v57;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
  lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]();
  Sequence.first(where:)();
  v394 = v56;
  if (v56)
  {
    result = v391;
    __break(1u);
  }

  else
  {
    outlined destroy of [HKQuantityType](&v560);

    v382 = v561;
    if (!v561)
    {
      v130 = v453;
      v153 = Logger.wellness.unsafeMutableAddressor();
      v154 = &v559;
      v156 = 0;
      swift_beginAccess();
      v469(v130, v153, v450);
      swift_endAccess();
      v159 = Logger.logObject.getter();
      v155 = v159;
      v158 = static os_log_type_t.error.getter();
      v157 = v158;
      v160 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v159, v158))
      {
        v131 = v394;
        v144 = static UnsafeMutablePointer.allocate(capacity:)();
        v140 = v144;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v142 = 0;
        v145 = createStorage<A>(capacity:type:)(0, v141, v141);
        v143 = v145;
        v146 = createStorage<A>(capacity:type:)(v142, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v558 = v144;
        v557 = v145;
        v556 = v146;
        v147 = 0;
        v148 = &v558;
        serialize(_:at:)(0, &v558);
        serialize(_:at:)(v147, v148);
        v555 = v160;
        v149 = &v134;
        MEMORY[0x28223BE20](&v134, v132);
        v150 = &v134 - 6;
        *(&v134 - 4) = v133;
        *(&v134 - 3) = &v557;
        *(&v134 - 2) = &v556;
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v152 = v131;
        if (v131)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v155, v157, "Found no usable projections in the analysis", v140, 2u);
          v138 = 0;
          destroyStorage<A>(_:count:)(v143, 0, v141);
          destroyStorage<A>(_:count:)(v146, v138, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v140, MEMORY[0x277D84B78]);

          v139 = v152;
        }
      }

      else
      {

        v139 = v394;
      }

      v137 = v139;

      v383(v453, v450);
      v135 = 0;
      type metadata accessor for GetMenstruationPredictionIntentResponse();
      v136 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(102, v135);
      v385(v447, v441);
      v161 = v136;
      v162 = v137;
      return v161;
    }

    v381 = v382;
    v377 = v382;
    v554 = v382;
    v376 = 0;
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v378 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(4, v376);
    v553 = v378;
    v58 = [v377 mostLikelyDays];
    v552 = v59;
    v551 = v58;
    Calendar.dateInterval(for:)(v58, v59, v428);
    v379 = *(v431 + 48);
    v380 = (v431 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v379(v428, 1, v429) == 1)
    {
      outlined destroy of DateInterval?(v428);
      v375 = v394;
LABEL_60:
      v192 = v375;
      v193 = [v474 cycles];
      if (v193)
      {
        v191 = v193;
        v188 = v193;
        v187 = type metadata accessor for HKMCCycle();
        v189 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v190 = v189;
      }

      else
      {
        v190 = 0;
      }

      v186 = v190;
      if (v190 && (v185 = v186, v182 = v186, v548 = v186, v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9HKMCCycleCGMd, &_sSaySo9HKMCCycleCGMR), lazy protocol witness table accessor for type [HKMCCycle] and conformance [A](), Collection.first.getter(), v184 = v547, v183 = v547, , v184))
      {
        v180 = v183;
        v173 = v183;
        v174 = [v183 menstruationSegment];

        v127 = [v174 days];
        v546 = v128;
        v545 = v127;
        v175 = v127;
        v176 = v128;

        v177 = v175;
        v178 = v176;
        v179 = 0;
      }

      else
      {
        v177 = 0;
        v178 = 0;
        v179 = 1;
      }

      v171 = v178;
      v172 = v177;
      if ((v179 & 1) == 0)
      {
        v169 = v172;
        v170 = v171;
        v168 = v171;
        v167 = v172;
        v549 = v172;
        v550 = v171;
        static Calendar.current.getter();
        Calendar.dateInterval(for:)(v167, v168, v424);
        v385(v445, v441);
        v129 = v379(v424, 1, v429);
        if (v129 == 1)
        {
          outlined destroy of DateInterval?(v424);
        }

        else
        {
          (*(v431 + 32))(v432, v424, v429);
          DateInterval.start.getter();
          v163 = Date._bridgeToObjectiveC()().super.isa;
          v165 = *(v422 + 8);
          v164 = v422 + 8;
          v165(v423, v420);
          [v378 setLastPeriodStart_];

          DateInterval.end.getter();
          v166 = Date._bridgeToObjectiveC()().super.isa;
          v165(v423, v420);
          [v378 setLastPeriodEnd_];

          (*(v431 + 8))(v432, v429);
        }
      }

      v385(v447, v441);
      v161 = v378;
      v162 = v192;
      return v161;
    }

    v373 = *(v431 + 32);
    v374 = (v431 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v373(v436, v428, v429);
    v60 = [v377 allDays];
    v544 = v61;
    v543 = v60;
    Calendar.dateInterval(for:)(v60, v61, v426);
    if (v379(v426, 1, v429) == 1)
    {
      outlined destroy of DateInterval?(v426);
      (*(v431 + 8))(v436, v429);
      v375 = v394;
      goto LABEL_60;
    }

    v373(v434, v426, v429);
    v62 = [v377 mostLikelyDays];
    v542 = v63;
    v541 = v62;
    v539 = v62;
    v540 = v63;
    v577 = v63;
    v576 = v62;
    v575 = v62 + v63 - 1;
    if (v575 < v62)
    {
      v372 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v372 = v575;
    }

    v371 = v372;
    v538 = v372;
    v64 = [v377 allDays];
    v537 = v65;
    v536 = v64;
    v534 = v64;
    v535 = v65;
    v574 = v65;
    v573 = v64;
    v572 = v64 + v65 - 1;
    if (v572 < v64)
    {
      v370 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v370 = v572;
    }

    v66 = v458;
    v342 = v370;
    v533 = v370;
    v339 = Logger.wellnessIntents.unsafeMutableAddressor();
    v355 = 32;
    v340 = &v532;
    swift_beginAccess();
    v469(v66, v339, v450);
    swift_endAccess();
    v341 = 24;
    v356 = 7;
    v347 = swift_allocObject();
    *(v347 + 16) = v371;
    v357 = swift_allocObject();
    *(v357 + 16) = v342;
    v369 = Logger.logObject.getter();
    v343 = v369;
    v368 = static os_log_type_t.debug.getter();
    v344 = v368;
    v351 = 17;
    v360 = swift_allocObject();
    v345 = v360;
    v350 = 0;
    *(v360 + 16) = 0;
    v361 = swift_allocObject();
    v346 = v361;
    v353 = 8;
    *(v361 + 16) = 8;
    v67 = swift_allocObject();
    v68 = v347;
    v348 = v67;
    *(v67 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
    *(v67 + 24) = v68;
    v69 = swift_allocObject();
    v70 = v348;
    v362 = v69;
    v349 = v69;
    *(v69 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v69 + 24) = v70;
    v363 = swift_allocObject();
    v352 = v363;
    *(v363 + 16) = v350;
    v364 = swift_allocObject();
    v354 = v364;
    *(v364 + 16) = v353;
    v71 = swift_allocObject();
    v72 = v357;
    v358 = v71;
    *(v71 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
    *(v71 + 24) = v72;
    v73 = swift_allocObject();
    v74 = v358;
    v367 = v73;
    v359 = v73;
    *(v73 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v73 + 24) = v74;
    v365 = _allocateUninitializedArray<A>(_:)();
    v366 = v75;

    v76 = v360;
    v77 = v366;
    *v366 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[1] = v76;

    v78 = v361;
    v79 = v366;
    v366[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v79[3] = v78;

    v80 = v362;
    v81 = v366;
    v366[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v81[5] = v80;

    v82 = v363;
    v83 = v366;
    v366[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[7] = v82;

    v84 = v364;
    v85 = v366;
    v366[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[9] = v84;

    v86 = v366;
    v87 = v367;
    v366[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v86[11] = v87;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v369, v368))
    {
      v88 = v394;
      v333 = static UnsafeMutablePointer.allocate(capacity:)();
      v329 = v333;
      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v331 = 0;
      v334 = createStorage<A>(capacity:type:)(0, v330, v330);
      v332 = v334;
      v335 = createStorage<A>(capacity:type:)(v331, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v514 = v333;
      v513 = v334;
      v512 = v335;
      v336 = &v514;
      serialize(_:at:)(0, &v514);
      serialize(_:at:)(2, v336);
      v510 = partial apply for closure #1 in OSLogArguments.append(_:);
      v511 = v345;
      closure #1 in osLogInternal(_:log:type:)(&v510, v336, &v513, &v512);
      v337 = v88;
      v338 = v88;
      if (v88)
      {
        v327 = 0;

        __break(1u);
      }

      else
      {
        v510 = partial apply for closure #1 in OSLogArguments.append(_:);
        v511 = v346;
        closure #1 in osLogInternal(_:log:type:)(&v510, &v514, &v513, &v512);
        v325 = 0;
        v326 = 0;
        v510 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v511 = v349;
        closure #1 in osLogInternal(_:log:type:)(&v510, &v514, &v513, &v512);
        v323 = 0;
        v324 = 0;
        v510 = partial apply for closure #1 in OSLogArguments.append(_:);
        v511 = v352;
        closure #1 in osLogInternal(_:log:type:)(&v510, &v514, &v513, &v512);
        v321 = 0;
        v322 = 0;
        v510 = partial apply for closure #1 in OSLogArguments.append(_:);
        v511 = v354;
        closure #1 in osLogInternal(_:log:type:)(&v510, &v514, &v513, &v512);
        v319 = 0;
        v320 = 0;
        v510 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v511 = v359;
        closure #1 in osLogInternal(_:log:type:)(&v510, &v514, &v513, &v512);
        v317 = 0;
        v318 = 0;
        _os_log_impl(&dword_269912000, v343, v344, "end_mostLikelyDays: %ld. end_allDays: %ld", v329, 0x16u);
        v316 = 0;
        destroyStorage<A>(_:count:)(v332, 0, v330);
        destroyStorage<A>(_:count:)(v335, v316, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v329, MEMORY[0x277D84B78]);

        v328 = v317;
      }
    }

    else
    {
      v89 = v394;

      v328 = v89;
    }

    v314 = v328;

    result = (v383)(v458, v450);
    v91 = __OFSUB__(v342, v371);
    v315 = v342 - v371;
    if (!v91)
    {
      v92 = v456;
      v531 = v315;
      v529 = v371;
      v530 = v315;
      v285 = Logger.wellnessIntents.unsafeMutableAddressor();
      v294 = 32;
      v299 = 32;
      v286 = &v528;
      swift_beginAccess();
      v469(v92, v285, v450);
      swift_endAccess();
      v300 = 7;
      v291 = swift_allocObject();
      *(v291 + 16) = v315;
      v93 = swift_allocObject();
      v94 = v315;
      v301 = v93;
      *(v93 + 16) = v371;
      *(v93 + 24) = v94;
      v313 = Logger.logObject.getter();
      v287 = v313;
      v312 = static os_log_type_t.debug.getter();
      v288 = v312;
      v295 = 17;
      v304 = swift_allocObject();
      v289 = v304;
      *(v304 + 16) = 0;
      v305 = swift_allocObject();
      v290 = v305;
      v297 = 8;
      *(v305 + 16) = 8;
      v95 = swift_allocObject();
      v96 = v291;
      v292 = v95;
      *(v95 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v292;
      v306 = v97;
      v293 = v97;
      *(v97 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
      *(v97 + 24) = v98;
      v307 = swift_allocObject();
      v296 = v307;
      *(v307 + 16) = v294;
      v308 = swift_allocObject();
      v298 = v308;
      *(v308 + 16) = v297;
      v99 = swift_allocObject();
      v100 = v301;
      v302 = v99;
      *(v99 + 16) = partial apply for implicit closure #6 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v302;
      v311 = v101;
      v303 = v101;
      *(v101 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v101 + 24) = v102;
      v309 = _allocateUninitializedArray<A>(_:)();
      v310 = v103;

      v104 = v304;
      v105 = v310;
      *v310 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105[1] = v104;

      v106 = v305;
      v107 = v310;
      v310[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v107[3] = v106;

      v108 = v306;
      v109 = v310;
      v310[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v109[5] = v108;

      v110 = v307;
      v111 = v310;
      v310[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v111[7] = v110;

      v112 = v308;
      v113 = v310;
      v310[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v113[9] = v112;

      v114 = v310;
      v115 = v311;
      v310[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v114[11] = v115;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v313, v312))
      {
        v116 = v314;
        v278 = static UnsafeMutablePointer.allocate(capacity:)();
        v275 = v278;
        v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v279 = createStorage<A>(capacity:type:)(0, v276, v276);
        v277 = v279;
        v280 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v519[0] = v278;
        v518 = v279;
        v517 = v280;
        v281 = 2;
        v282 = v519;
        serialize(_:at:)(2, v519);
        serialize(_:at:)(v281, v282);
        v515 = partial apply for closure #1 in OSLogArguments.append(_:);
        v516 = v289;
        closure #1 in osLogInternal(_:log:type:)(&v515, v282, &v518, &v517);
        v283 = v116;
        v284 = v116;
        if (v116)
        {
          v273 = 0;

          __break(1u);
        }

        else
        {
          v515 = partial apply for closure #1 in OSLogArguments.append(_:);
          v516 = v290;
          closure #1 in osLogInternal(_:log:type:)(&v515, v519, &v518, &v517);
          v271 = 0;
          v272 = 0;
          v515 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
          v516 = v293;
          closure #1 in osLogInternal(_:log:type:)(&v515, v519, &v518, &v517);
          v269 = 0;
          v270 = 0;
          v515 = partial apply for closure #1 in OSLogArguments.append(_:);
          v516 = v296;
          closure #1 in osLogInternal(_:log:type:)(&v515, v519, &v518, &v517);
          v267 = 0;
          v268 = 0;
          v515 = partial apply for closure #1 in OSLogArguments.append(_:);
          v516 = v298;
          closure #1 in osLogInternal(_:log:type:)(&v515, v519, &v518, &v517);
          v265 = 0;
          v266 = 0;
          v515 = partial apply for closure #1 in OSLogArguments.append(_:);
          v516 = v303;
          closure #1 in osLogInternal(_:log:type:)(&v515, v519, &v518, &v517);
          v263 = 0;
          v264 = 0;
          _os_log_impl(&dword_269912000, v287, v288, "trailingDuration: %ld. trailingAllDays: %s", v275, 0x16u);
          destroyStorage<A>(_:count:)(v277, 0, v276);
          destroyStorage<A>(_:count:)(v280, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v275, MEMORY[0x277D84B78]);

          v274 = v263;
        }
      }

      else
      {
        v117 = v314;

        v274 = v117;
      }

      v261 = v274;

      v383(v456, v450);
      v527[3] = v371;
      v527[4] = v315;
      v580 = v315;
      v579 = v371;
      v578 = v388;
      v262 = 0;
      if (v388 >= v371)
      {
        v262 = v578 - v579 < v580;
      }

      if (v262)
      {
        v519[6] = v449;
        v519[5] = 1;
        v260 = lazy protocol witness table accessor for type PeriodProjectionFocus and conformance PeriodProjectionFocus();
        if (== infix<A>(_:_:)())
        {
          v259 = 1;
        }

        else
        {
          v519[4] = v449;
          v519[3] = 3;
          v259 = == infix<A>(_:_:)();
        }

        if (v259)
        {
          v258 = 1;
        }

        else
        {
          v519[2] = v449;
          v519[1] = 5;
          v258 = == infix<A>(_:_:)();
        }

        v257 = v258;
      }

      else
      {
        v257 = 0;
      }

      if (v257)
      {
        v118 = v455;
        v249 = Logger.wellnessIntents.unsafeMutableAddressor();
        v250 = v523;
        v252 = 0;
        swift_beginAccess();
        v469(v118, v249, v450);
        swift_endAccess();
        v255 = Logger.logObject.getter();
        v251 = v255;
        v254 = static os_log_type_t.debug.getter();
        v253 = v254;
        v256 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v255, v254))
        {
          v119 = v261;
          v240 = static UnsafeMutablePointer.allocate(capacity:)();
          v236 = v240;
          v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v238 = 0;
          v241 = createStorage<A>(capacity:type:)(0, v237, v237);
          v239 = v241;
          v242 = createStorage<A>(capacity:type:)(v238, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v522 = v240;
          v521 = v241;
          v520 = v242;
          v243 = 0;
          v244 = &v522;
          serialize(_:at:)(0, &v522);
          serialize(_:at:)(v243, v244);
          v519[7] = v256;
          v245 = &v134;
          MEMORY[0x28223BE20](&v134, v120);
          v246 = &v134 - 6;
          *(&v134 - 4) = v121;
          *(&v134 - 3) = &v521;
          *(&v134 - 2) = &v520;
          v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v248 = v119;
          if (v119)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v251, v253, "Setting nextPeriodStart/End for the trailingAllDays range", v236, 2u);
            v234 = 0;
            destroyStorage<A>(_:count:)(v239, 0, v237);
            destroyStorage<A>(_:count:)(v242, v234, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v236, MEMORY[0x277D84B78]);

            v235 = v248;
          }
        }

        else
        {

          v235 = v261;
        }

        v229 = v235;

        v383(v455, v450);
        DateInterval.end.getter();
        v232 = Date._bridgeToObjectiveC()().super.isa;
        v230 = *(v422 + 8);
        v231 = (v422 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v230(v423, v420);
        [v378 setNextPeriodStart_];

        v122 = *(v422 + 56);
        v233 = 1;
        v122(v419, 1, 1, v420);
        if ((*(v422 + 48))(v419, v233, v420) == 1)
        {
          v228 = 0;
        }

        else
        {
          v227 = Date._bridgeToObjectiveC()().super.isa;
          v230(v419, v420);
          v228 = v227;
        }

        v225 = v228;
        [v378 setNextPeriodEnd_];

        v226 = v229;
      }

      else
      {
        v123 = v454;
        v217 = Logger.wellnessIntents.unsafeMutableAddressor();
        v218 = v527;
        v220 = 0;
        swift_beginAccess();
        v469(v123, v217, v450);
        swift_endAccess();
        v223 = Logger.logObject.getter();
        v219 = v223;
        v222 = static os_log_type_t.debug.getter();
        v221 = v222;
        v224 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v223, v222))
        {
          v124 = v261;
          v208 = static UnsafeMutablePointer.allocate(capacity:)();
          v204 = v208;
          v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v206 = 0;
          v209 = createStorage<A>(capacity:type:)(0, v205, v205);
          v207 = v209;
          v210 = createStorage<A>(capacity:type:)(v206, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v526 = v208;
          v525 = v209;
          v524 = v210;
          v211 = 0;
          v212 = &v526;
          serialize(_:at:)(0, &v526);
          serialize(_:at:)(v211, v212);
          v523[3] = v224;
          v213 = &v134;
          MEMORY[0x28223BE20](&v134, v125);
          v214 = &v134 - 6;
          *(&v134 - 4) = v126;
          *(&v134 - 3) = &v525;
          *(&v134 - 2) = &v524;
          v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v216 = v124;
          if (v124)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v219, v221, "Setting nextPeriodStart/End for the standard range", v204, 2u);
            v202 = 0;
            destroyStorage<A>(_:count:)(v207, 0, v205);
            destroyStorage<A>(_:count:)(v210, v202, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v204, MEMORY[0x277D84B78]);

            v203 = v216;
          }
        }

        else
        {

          v203 = v261;
        }

        v201 = v203;

        v383(v454, v450);
        DateInterval.end.getter();
        v197 = Date._bridgeToObjectiveC()().super.isa;
        v199 = *(v422 + 8);
        v198 = v422 + 8;
        v199(v423, v420);
        [v378 setNextPeriodEnd_];

        DateInterval.start.getter();
        v200 = Date._bridgeToObjectiveC()().super.isa;
        v199(v423, v420);
        [v378 setNextPeriodStart_];

        v226 = v201;
      }

      v196 = v226;
      v195 = *(v431 + 8);
      v194 = v431 + 8;
      v195(v434, v429);
      v195(v436, v429);
      v375 = v196;
      goto LABEL_60;
    }
  }

  __break(1u);
  return result;
}

uint64_t implicit closure #2 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 menstruationProjections];
  type metadata accessor for HKMCProjection();
  *a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return MEMORY[0x277D82BD8](v4);
}

BOOL closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)(id *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = [*a1 isPartiallyLogged];
  MEMORY[0x277D82BE0](v7);
  if (v8)
  {
    v4 = 0;
  }

  else
  {
    v9 = [v7 allDays];
    if (v9 + v2 - 1 < v9)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v9 + v2 - 1;
    }

    v4 = v5 >= a2;
  }

  MEMORY[0x277D82BD8](v7);
  return v4;
}

uint64_t protocol witness for CycleTrackingAnalysisFetching.isReadingAuthorized() in conformance CycleTrackingFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for CycleTrackingAnalysisFetching.query(projectionFocus:) in conformance CycleTrackingFetcher(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.query(projectionFocus:)(a1, v6);
}

id @nonobjc HKMCAnalysisQuery.init(updateHandler:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = 0;
  v9 = thunk for @escaping @callee_guaranteed (@guaranteed HKMCAnalysisQuery, @guaranteed HKMCAnalysis?, @guaranteed Error?) -> ();
  v10 = &block_descriptor_3;
  v4 = _Block_copy(&aBlock);
  v5 = [v3 initWithUpdateHandler_];
  _Block_release(v4);

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKMCAnalysisQuery, @guaranteed HKMCAnalysis?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v6(a2, a3);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_26996FFD0()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

unint64_t type metadata accessor for HKMCAnalysisQuery()
{
  v2 = lazy cache variable for type metadata for HKMCAnalysisQuery;
  if (!lazy cache variable for type metadata for HKMCAnalysisQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMCAnalysisQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKMCProjection()
{
  v2 = lazy cache variable for type metadata for HKMCProjection;
  if (!lazy cache variable for type metadata for HKMCProjection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMCProjection);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
  v1 = lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = MEMORY[0x28223BE20](0, a2);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    MEMORY[0x28223BE20](v23, &v18);
    v16 = v29;
    v17 = v10;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in serialize<A>(_:at:), &v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1, a2);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type [HKMCCycle] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMCCycle] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCCycle] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo9HKMCCycleCGMd, &_sSaySo9HKMCCycleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCCycle] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKMCCycle()
{
  v2 = lazy cache variable for type metadata for HKMCCycle;
  if (!lazy cache variable for type metadata for HKMCCycle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMCCycle);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PeriodProjectionFocus and conformance PeriodProjectionFocus()
{
  v2 = lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus;
  if (!lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus;
  if (!lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_269971150()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:)(a1, v3);
}

void *GetActivitySummaryIntentHandler.init(store:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for ActivitySummaryFetcher;
    __dst[4] = &protocol witness table for ActivitySummaryFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents31GetActivitySummaryIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t GetActivitySummaryIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[19] = v1;
  v2[15] = v2;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v3 = type metadata accessor for Logger();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[16] = a1;
  v2[17] = v1;

  return MEMORY[0x2822009F8](GetActivitySummaryIntentHandler.handle(intent:), 0);
}

{
  v5 = *v2;
  v5[15] = *v2;
  v5[25] = a1;
  v5[26] = v1;

  if (v1)
  {
    v3 = GetActivitySummaryIntentHandler.handle(intent:);
  }

  else
  {
    v3 = GetActivitySummaryIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t GetActivitySummaryIntentHandler.handle(intent:)()
{
  v1 = v0[19];
  v0[15] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents31GetActivitySummaryIntentHandler_store, (v0 + 2));
  v7 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = (*(v5 + 8) + **(v5 + 8));
  v2 = swift_task_alloc();
  *(v4 + 184) = v2;
  *v2 = *(v4 + 120);
  v2[1] = GetActivitySummaryIntentHandler.handle(intent:);

  return v6(v7, v5);
}

{
  v9 = *(v0 + 216);
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v9)
  {
    outlined init with copy of QuantityPersisting(v8[19] + OBJC_IVAR____TtC19SiriWellnessIntents31GetActivitySummaryIntentHandler_store, (v8 + 7));
    v6 = v8[10];
    v4 = v8[11];
    __swift_project_boxed_opaque_existential_1(v8 + 7, v6);
    v5 = (*(v4 + 16) + **(v4 + 16));
    v3 = swift_task_alloc();
    v8[24] = v3;
    *v3 = v8[15];
    v3[1] = GetActivitySummaryIntentHandler.handle(intent:);

    return v5(v6, v4);
  }

  else
  {
    type metadata accessor for GetAcitivitySummaryIntentResponse();
    v7 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(101, 0);

    v1 = *(v8[15] + 8);

    return v1(v7);
  }
}

{
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[25];

  v1 = *(v0[15] + 8);

  return v1(v3);
}

{
  v34 = v0;
  v20 = v0[26];
  v1 = v0[22];
  v17 = v0[21];
  v19 = v0[20];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v20;
  v0[18] = v20;
  v18 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v17 + 16))(v1, v18, v19);
  swift_endAccess();
  v3 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v4;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_269912000, v27, v28, "%s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[26];
  v8 = v16[22];
  v9 = v16[20];
  v7 = v16[21];
  MEMORY[0x277D82BD8](v27);
  (*(v7 + 8))(v8, v9);
  type metadata accessor for GetAcitivitySummaryIntentResponse();
  v11 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v5 = *(v16[15] + 8);

  return v5(v11);
}

uint64_t GetActivitySummaryIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 120) = *v1;
  *(v3 + 216) = a1;

  return MEMORY[0x2822009F8](GetActivitySummaryIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetActivitySummaryIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetActivitySummaryIntentHandler.handle(intent:)(a1);
}

id GetActivitySummaryIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ActivitySummaryFetcher.query()(uint64_t a1)
{
  *(v1 + 168) = a1;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 400) = 0;
  v2 = type metadata accessor for Logger();
  *(v1 + 176) = v2;
  *(v1 + 184) = *(v2 - 8);
  *(v1 + 192) = swift_task_alloc();
  v3 = type metadata accessor for Date();
  *(v1 + 200) = v3;
  *(v1 + 208) = *(v3 - 8);
  *(v1 + 216) = swift_task_alloc();
  v4 = type metadata accessor for Calendar();
  *(v1 + 224) = v4;
  *(v1 + 232) = *(v4 - 8);
  *(v1 + 240) = swift_task_alloc();
  v5 = type metadata accessor for DateComponents();
  *(v1 + 248) = v5;
  *(v1 + 256) = *(v5 - 8);
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 48) = a1;

  return MEMORY[0x2822009F8](ActivitySummaryFetcher.query(), 0);
}

{
  v5 = *v2;
  *(v5 + 40) = *v2;
  *(v5 + 328) = a1;
  *(v5 + 336) = v1;

  if (v1)
  {
    v3 = ActivitySummaryFetcher.query();
  }

  else
  {

    v3 = ActivitySummaryFetcher.query();
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t ActivitySummaryFetcher.query()()
{
  v41 = v0[34];
  v44 = v0[33];
  v42 = v0[32];
  v43 = v0[31];
  v39 = v0[30];
  v38 = v0[29];
  v40 = v0[28];
  v36 = v0[27];
  v35 = v0[26];
  v37 = v0[25];
  v0[5] = v0;
  v33 = type metadata accessor for Calendar.Component();
  _allocateUninitializedArray<A>(_:)();
  v31 = v1;
  v29 = *(v33 - 8);
  v32 = *(v29 + 104);
  v32();
  v30 = *(v29 + 72);
  (v32)(v31 + v30, *MEMORY[0x277CC9968], v33);
  (v32)(v31 + 2 * v30, *MEMORY[0x277CC9998], v33);
  (v32)(v31 + 3 * v30, *MEMORY[0x277CC9988], v33);
  (v32)(v31 + 4 * v30, *MEMORY[0x277CC9978], v33);
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v34 = Set.init(arrayLiteral:)();
  v0[35] = v34;
  v0[7] = v34;
  static Calendar.current.getter();
  Date.init()();
  Calendar.dateComponents(_:from:)();
  (*(v35 + 8))(v36, v37);
  (*(v38 + 8))(v39, v40);
  v45 = objc_opt_self();
  (*(v42 + 16))(v44, v41, v43);
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v2 = *(v42 + 8);
  v0[36] = v2;
  v0[37] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v44, v43);
  v47 = [v45 predicateForActivitySummaryWithDateComponents_];
  v0[38] = v47;
  MEMORY[0x277D82BD8](isa);
  v0[8] = v47;
  type metadata accessor for HKQuantityType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = *MEMORY[0x277CCC918];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC918]);
  v50 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  v0[39] = v50;
  MEMORY[0x277D82BD8](v49);
  if (v50)
  {
    v3 = *(v28 + 168);
    v26 = v3;
    *(v28 + 104) = v50;
    MEMORY[0x277D82BE0](v3);
    v27 = swift_task_alloc();
    *(v28 + 320) = v27;
    *v27 = *(v28 + 40);
    v27[1] = ActivitySummaryFetcher.query();

    return getPreferredUnit(for:store:)(v50, v26);
  }

  else
  {
    v5 = *(v28 + 192);
    v22 = *(v28 + 176);
    v20 = *(v28 + 184);
    v21 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v20 + 16))(v5, v21, v22);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v25 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v23))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = createStorage<A>(capacity:type:)(0, v15, v15);
      v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v28 + 72) = buf;
      *(v28 + 80) = v17;
      *(v28 + 88) = v18;
      serialize(_:at:)(0, (v28 + 72));
      serialize(_:at:)(0, (v28 + 72));
      *(v28 + 96) = v25;
      v19 = swift_task_alloc();
      v19[2] = v28 + 72;
      v19[3] = v28 + 80;
      v19[4] = v28 + 88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v23, "Error fetching preferred unit for .activeEnergyBurned", buf, 2u);
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v10 = *(v28 + 304);
    v14 = *(v28 + 288);
    v12 = *(v28 + 272);
    v13 = *(v28 + 248);
    v8 = *(v28 + 192);
    v9 = *(v28 + 176);
    v7 = *(v28 + 184);
    MEMORY[0x277D82BD8](oslog);
    (*(v7 + 8))(v8, v9);
    type metadata accessor for GetAcitivitySummaryIntentResponse();
    v11 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v10);
    v14(v12, v13);

    v6 = *(*(v28 + 40) + 8);

    return v6(v11);
  }
}

{
  v51 = v0[41];
  v0[5] = v0;
  v52 = v0[42];
  v0[43] = v51;
  if (!v51)
  {
    MEMORY[0x277D82BD8](*(v50 + 312));
    v48 = v52;
LABEL_14:
    v6 = *(v50 + 192);
    v31 = *(v50 + 176);
    v29 = *(v50 + 184);
    v30 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v29 + 16))(v6, v30, v31);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v34 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v32))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0, v24, v24);
      v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v50 + 72) = buf;
      *(v50 + 80) = v26;
      *(v50 + 88) = v27;
      serialize(_:at:)(0, (v50 + 72));
      serialize(_:at:)(0, (v50 + 72));
      *(v50 + 96) = v34;
      v28 = swift_task_alloc();
      v28[2] = v50 + 72;
      v28[3] = v50 + 80;
      v28[4] = v50 + 88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v48)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v32, "Error fetching preferred unit for .activeEnergyBurned", buf, 2u);
      destroyStorage<A>(_:count:)(v26, 0, v24);
      destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v19 = *(v50 + 304);
    v23 = *(v50 + 288);
    v21 = *(v50 + 272);
    v22 = *(v50 + 248);
    v17 = *(v50 + 192);
    v18 = *(v50 + 176);
    v16 = *(v50 + 184);
    MEMORY[0x277D82BD8](oslog);
    (*(v16 + 8))(v17, v18);
    type metadata accessor for GetAcitivitySummaryIntentResponse();
    v20 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v19);
    v23(v21, v22);

    v7 = *(*(v50 + 40) + 8);
    v8 = v20;

    return v7(v8);
  }

  v1 = *(v50 + 168);
  *(v50 + 112) = v51;
  v2 = ActivitySummaryFetcher.summaryUnit(for:)(v51, v1);
  v49 = v2;
  *(v50 + 352) = v2;
  if (!v2)
  {
    v46 = *(v50 + 312);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v46);
    v48 = v52;
    goto LABEL_14;
  }

  v3 = *(v50 + 168);
  *(v50 + 120) = v2;
  v4 = ActivitySummaryFetcher.unitEnergy(for:)(v51, v3);
  v47 = v4;
  *(v50 + 360) = v4;
  if (!v4)
  {
    v42 = *(v50 + 312);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v42);
    v48 = v52;
    goto LABEL_14;
  }

  v44 = *(v50 + 168);
  *(v50 + 128) = v4;
  MEMORY[0x277D82BE0](v44);
  *(v50 + 136) = 0;
  v45 = [v44 wheelchairUseWithError_];
  v43 = *(v50 + 136);
  MEMORY[0x277D82BE0](v43);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v44);
  if (!v45)
  {
    v12 = *(v50 + 304);
    v15 = *(v50 + 288);
    v13 = *(v50 + 272);
    v14 = *(v50 + 248);
    v11 = *(v50 + 312);
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v43);
    swift_willThrow();
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v15(v13, v14);

    v7 = *(*(v50 + 40) + 8);
    v8 = v10;

    return v7(v8);
  }

  v36 = *(v50 + 304);
  v38 = *(v50 + 168);
  v35 = [v45 wheelchairUse];
  MEMORY[0x277D82BD8](v45);
  *(v50 + 144) = v35;
  *(v50 + 152) = 2;
  type metadata accessor for HKWheelchairUse(0);
  lazy protocol witness table accessor for type HKWheelchairUse and conformance HKWheelchairUse();
  v37 = == infix<A>(_:_:)();
  *(v50 + 400) = v37 & 1;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query()", 7uLL, 1);
  *(v50 + 368) = v5._object;
  MEMORY[0x277D82BE0](v36);
  MEMORY[0x277D82BE0](v49);
  MEMORY[0x277D82BE0](v47);
  MEMORY[0x277D82BE0](v51);
  MEMORY[0x277D82BE0](v38);
  v39 = swift_task_alloc();
  *(v50 + 376) = v39;
  *(v39 + 16) = v36;
  *(v39 + 24) = v37 & 1;
  *(v39 + 32) = v49;
  *(v39 + 40) = v47;
  *(v39 + 48) = v51;
  *(v39 + 56) = v38;
  v40 = swift_task_alloc();
  *(v50 + 384) = v40;
  AcitivitySummaryIntentResponse = type metadata accessor for GetAcitivitySummaryIntentResponse();
  *v40 = *(v50 + 40);
  v40[1] = ActivitySummaryFetcher.query();

  return MEMORY[0x2822008A0](v50 + 160, 0, 0, v5._countAndFlagsBits, v5._object, partial apply for closure #1 in ActivitySummaryFetcher.query(), v39, AcitivitySummaryIntentResponse);
}

{
  v9 = *v1;
  v9[5] = *v1;
  v9[49] = v0;

  if (v0)
  {
    v2 = ActivitySummaryFetcher.query();
  }

  else
  {
    v6 = v9[45];
    v5 = v9[44];
    v7 = v9[43];
    v4 = v9[38];
    v8 = v9[21];

    v2 = ActivitySummaryFetcher.query();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[45];
  v5 = v0[44];
  v6 = v0[43];
  v7 = v0[39];
  v8 = v0[38];
  v11 = v0[36];
  v9 = v0[34];
  v10 = v0[31];
  v0[5] = v0;
  v4 = v0[20];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v11(v9, v10);

  v2 = *(v0[5] + 8);

  return v2(v4);
}

{
  v25 = v0[42];
  v1 = v0[21];
  v0[5] = v0;
  MEMORY[0x277D82BD8](v1);

  v0[43] = 0;
  MEMORY[0x277D82BD8](*(v24 + 312));
  v2 = *(v24 + 192);
  v20 = *(v24 + 176);
  v18 = *(v24 + 184);
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v18 + 16))(v2, v19, v20);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v23 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v21))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0, v13, v13);
    v16 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v24 + 72) = buf;
    *(v24 + 80) = v15;
    *(v24 + 88) = v16;
    serialize(_:at:)(0, (v24 + 72));
    serialize(_:at:)(0, (v24 + 72));
    *(v24 + 96) = v23;
    v17 = swift_task_alloc();
    v17[2] = v24 + 72;
    v17[3] = v24 + 80;
    v17[4] = v24 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v21, "Error fetching preferred unit for .activeEnergyBurned", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v24 + 304);
  v12 = *(v24 + 288);
  v10 = *(v24 + 272);
  v11 = *(v24 + 248);
  v6 = *(v24 + 192);
  v7 = *(v24 + 176);
  v5 = *(v24 + 184);
  MEMORY[0x277D82BD8](oslog);
  (*(v5 + 8))(v6, v7);
  type metadata accessor for GetAcitivitySummaryIntentResponse();
  v9 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](v8);
  v12(v10, v11);

  v3 = *(*(v24 + 40) + 8);

  return v3(v9);
}

{
  v4 = v0[45];
  v5 = v0[44];
  v6 = v0[43];
  v7 = v0[39];
  v8 = v0[38];
  v11 = v0[36];
  v9 = v0[34];
  v10 = v0[31];
  v3 = v0[21];
  v0[5] = v0;

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v11(v9, v10);

  v1 = *(v0[5] + 8);

  return v1();
}

id ActivitySummaryFetcher.summaryUnit(for:)(void *a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  v10 = [a1 unitString];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v2;

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kJ", 2uLL, 1);
  v18 = v11;
  v19 = v12;
  v13 = MEMORY[0x26D649310](v20._countAndFlagsBits, v20._object, v11, v12);
  outlined destroy of String.UTF8View(&v20);
  if (v13)
  {

    v8 = [objc_opt_self() jouleUnitWithMetricPrefix_];

    MEMORY[0x277D82BD8](v10);
    return v8;
  }

  else
  {

    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cal", 3uLL, 1);
    v15 = v11;
    v16 = v12;
    v7 = MEMORY[0x26D649310](v17._countAndFlagsBits, v17._object, v11, v12);
    outlined destroy of String.UTF8View(&v17);
    if (v7)
    {

      v6 = [objc_opt_self() largeCalorieUnit];

      MEMORY[0x277D82BD8](v10);
      return v6;
    }

    else
    {

      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kcal", 4uLL, 1);
      v5 = MEMORY[0x26D649310](v14._countAndFlagsBits, v14._object, v11, v12);
      outlined destroy of String.UTF8View(&v14);

      if (v5)
      {
        v4 = [objc_opt_self() kilocalorieUnit];

        MEMORY[0x277D82BD8](v10);
        return v4;
      }

      else
      {

        MEMORY[0x277D82BD8](v10);
        return 0;
      }
    }
  }
}

id ActivitySummaryFetcher.unitEnergy(for:)(void *a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v8 = [a1 unitString];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v2;

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kJ", 2uLL, 1);
  v16 = v9;
  v17 = v10;
  v11 = MEMORY[0x26D649310](v18._countAndFlagsBits, v18._object, v9, v10);
  outlined destroy of String.UTF8View(&v18);
  if (v11)
  {

    v6 = [objc_opt_self() kilojoules];

    MEMORY[0x277D82BD8](v8);
    return v6;
  }

  else
  {

    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cal", 3uLL, 1);
    v13 = v9;
    v14 = v10;
    v5 = MEMORY[0x26D649310](v15._countAndFlagsBits, v15._object, v9, v10);
    outlined destroy of String.UTF8View(&v15);
    if (v5)
    {

      MEMORY[0x277D82BD8](v8);
    }

    else
    {

      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kcal", 4uLL, 1);
      v4 = MEMORY[0x26D649310](v12._countAndFlagsBits, v12._object, v9, v10);
      outlined destroy of String.UTF8View(&v12);
      if ((v4 & 1) == 0)
      {

        MEMORY[0x277D82BD8](v8);
        return 0;
      }

      MEMORY[0x277D82BD8](v8);
    }

    return [objc_opt_self() kilocalories];
  }
}

uint64_t closure #1 in ActivitySummaryFetcher.query()(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v25 = a1;
  v43 = a2;
  v34 = a3;
  v35 = a4;
  v37 = a5;
  v39 = a6;
  v44 = a7;
  v41 = partial apply for closure #1 in closure #1 in ActivitySummaryFetcher.query();
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR);
  v28 = *(v32 - 8);
  v29 = v32 - 8;
  v26 = v28;
  v27 = *(v28 + 64);
  v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v43);
  v31 = &v24 - v24;
  v53 = v7;
  v52 = v8;
  v51 = v9 & 1;
  v50 = v10;
  v49 = v11;
  v48 = v12;
  v47 = v13;
  type metadata accessor for HKActivitySummaryQuery();
  MEMORY[0x277D82BE0](v43);
  (*(v28 + 16))(v31, v25, v32);
  MEMORY[0x277D82BE0](v35);
  MEMORY[0x277D82BE0](v37);
  MEMORY[0x277D82BE0](v39);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v33 = v30 + v27;
  v36 = (v30 + v27 + 8) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v28 + 32))(v42 + v30, v31, v32);
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v18 = v39;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  v22 = v43;
  *(v42 + v33) = v34;
  *(v21 + v15) = v14;
  *(v21 + v17) = v16;
  *(v21 + v19) = v18;
  v45 = HKActivitySummaryQuery.__allocating_init(predicate:resultsHandler:)(v22, v20, v21);
  v46 = v45;
  MEMORY[0x277D82BE0](v44);
  [v44 executeQuery_];
  MEMORY[0x277D82BD8](v44);
  return MEMORY[0x277D82BD8](v45);
}

void closure #1 in closure #1 in ActivitySummaryFetcher.query()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v182 = a1;
  v188 = a2;
  v197 = a3;
  v183 = a4;
  v184 = a5;
  v185 = a6;
  v186 = a7;
  v187 = a8;
  v162 = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v163 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v164 = partial apply for closure #1 in OSLogArguments.append(_:);
  v165 = partial apply for closure #1 in OSLogArguments.append(_:);
  v166 = partial apply for closure #1 in OSLogArguments.append(_:);
  v167 = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  v168 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v169 = partial apply for closure #1 in OSLogArguments.append(_:);
  v170 = partial apply for closure #1 in OSLogArguments.append(_:);
  v171 = partial apply for closure #1 in OSLogArguments.append(_:);
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v216 = 0;
  v214 = 0;
  v172 = 0;
  v205 = 0;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v174 = *(v173 - 8);
  v175 = v173 - 8;
  v176 = (v174[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v173, v8);
  v177 = &isa - v176;
  v178 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&isa - v176, v10);
  v179 = &isa - v178;
  v228 = &isa - v178;
  v180 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13);
  v181 = &isa - v180;
  v227 = &isa - v180;
  v189 = type metadata accessor for Logger();
  v190 = *(v189 - 8);
  v191 = v189 - 8;
  v193 = *(v190 + 64);
  v192 = (v193 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v197, v188);
  v194 = &isa - v192;
  v195 = (v193 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15);
  v196 = &isa - v195;
  v226 = v16;
  v225 = v17;
  v224 = v18;
  v223 = v19;
  v222 = v20 & 1;
  v221 = v21;
  v220 = v22;
  v219 = v23;
  v24 = v18;
  if (v197)
  {
    v161 = v197;
    v25 = v196;
    v146 = v197;
    v205 = v197;
    v144 = Logger.wellnessIntents.unsafeMutableAddressor();
    v145 = &v204;
    v148 = 32;
    swift_beginAccess();
    (*(v190 + 16))(v25, v144, v189);
    swift_endAccess();
    v26 = v146;
    v149 = 7;
    v150 = swift_allocObject();
    *(v150 + 16) = v146;
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.error.getter();
    v147 = 17;
    v152 = swift_allocObject();
    *(v152 + 16) = 64;
    v153 = swift_allocObject();
    *(v153 + 16) = 8;
    v27 = swift_allocObject();
    v28 = v150;
    v151 = v27;
    *(v27 + 16) = v162;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v151;
    v155 = v29;
    *(v29 + 16) = v163;
    *(v29 + 24) = v30;
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v154 = _allocateUninitializedArray<A>(_:)();
    v156 = v31;

    v32 = v152;
    v33 = v156;
    *v156 = v164;
    v33[1] = v32;

    v34 = v153;
    v35 = v156;
    v156[2] = v165;
    v35[3] = v34;

    v36 = v155;
    v37 = v156;
    v156[4] = v166;
    v37[5] = v36;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v158, v159))
    {
      v38 = v172;
      v137 = static UnsafeMutablePointer.allocate(capacity:)();
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v138 = createStorage<A>(capacity:type:)(1, v136, v136);
      v139 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v140 = &v202;
      v202 = v137;
      v141 = &v201;
      v201 = v138;
      v142 = &v200;
      v200 = v139;
      serialize(_:at:)(2, &v202);
      serialize(_:at:)(1, v140);
      v198 = v164;
      v199 = v152;
      closure #1 in osLogInternal(_:log:type:)(&v198, v140, v141, v142);
      v143 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v198 = v165;
        v199 = v153;
        closure #1 in osLogInternal(_:log:type:)(&v198, &v202, &v201, &v200);
        v135 = 0;
        v198 = v166;
        v199 = v155;
        closure #1 in osLogInternal(_:log:type:)(&v198, &v202, &v201, &v200);
        _os_log_impl(&dword_269912000, v158, v159, "Error while querying HealthKit for quantity samples: %@", v137, 0xCu);
        destroyStorage<A>(_:count:)(v138, 1, v136);
        destroyStorage<A>(_:count:)(v139, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v137, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v158);
    (*(v190 + 8))(v196, v189);
    v39 = v146;
    v134 = &v203;
    v203 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    if (v188)
    {
      v160 = v188;
      v131 = v188;
      v207 = v188;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKActivitySummaryCGMd, &_sSaySo17HKActivitySummaryCGMR);
      lazy protocol witness table accessor for type [HKActivitySummary] and conformance [A]();
      Collection.first.getter();
      v132 = v206;

      v133 = v132;
    }

    else
    {
      v133 = 0;
    }

    v129 = v133;
    if (v133)
    {
      v128 = v129;
      v40 = v194;
      v111 = v129;
      v216 = v129;
      v109 = Logger.wellnessIntents.unsafeMutableAddressor();
      v110 = &v215;
      v113 = 32;
      swift_beginAccess();
      (*(v190 + 16))(v40, v109, v189);
      swift_endAccess();
      MEMORY[0x277D82BE0](v111);
      v114 = 7;
      v115 = swift_allocObject();
      *(v115 + 16) = v111;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.debug.getter();
      v112 = 17;
      v117 = swift_allocObject();
      *(v117 + 16) = 64;
      v118 = swift_allocObject();
      *(v118 + 16) = 8;
      v41 = swift_allocObject();
      v42 = v115;
      v116 = v41;
      *(v41 + 16) = v167;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v116;
      v120 = v43;
      *(v43 + 16) = v168;
      *(v43 + 24) = v44;
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v119 = _allocateUninitializedArray<A>(_:)();
      v121 = v45;

      v46 = v117;
      v47 = v121;
      *v121 = v169;
      v47[1] = v46;

      v48 = v118;
      v49 = v121;
      v121[2] = v170;
      v49[3] = v48;

      v50 = v120;
      v51 = v121;
      v121[4] = v171;
      v51[5] = v50;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v123, v124))
      {
        v52 = v172;
        v102 = static UnsafeMutablePointer.allocate(capacity:)();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v103 = createStorage<A>(capacity:type:)(1, v101, v101);
        v104 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v105 = &v212;
        v212 = v102;
        v106 = &v211;
        v211 = v103;
        v107 = &v210;
        v210 = v104;
        serialize(_:at:)(2, &v212);
        serialize(_:at:)(1, v105);
        v208 = v169;
        v209 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v208, v105, v106, v107);
        v108 = v52;
        if (v52)
        {

          __break(1u);
        }

        else
        {
          v208 = v170;
          v209 = v118;
          closure #1 in osLogInternal(_:log:type:)(&v208, &v212, &v211, &v210);
          v100 = 0;
          v208 = v171;
          v209 = v120;
          closure #1 in osLogInternal(_:log:type:)(&v208, &v212, &v211, &v210);
          _os_log_impl(&dword_269912000, v123, v124, "summary: %@", v102, 0xCu);
          destroyStorage<A>(_:count:)(v103, 1, v101);
          destroyStorage<A>(_:count:)(v104, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v102, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v123);
      (*(v190 + 8))(v194, v189);
      v83 = 0;
      type metadata accessor for GetAcitivitySummaryIntentResponse();
      v99 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(4, v83);
      v214 = v99;
      type metadata accessor for NSNumber();
      v53.super.super.isa = NSNumber.__allocating_init(value:)(v184 & 1).super.super.isa;
      v54 = v177;
      isa = v53.super.super.isa;
      [v99 setIsWheelchairUser_];
      MEMORY[0x277D82BD8](isa);
      v68 = [v111 appleExerciseTime];
      v77 = 0x277CCD000uLL;
      v55 = objc_opt_self();
      v70 = 0x1FBC5C000uLL;
      v67 = [v55 0x1FBC5CB71];
      v85 = 0x1FBD82000uLL;
      [v68 0x1FBD82CC3];
      v69 = v56;
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v68);
      [v99 setAppleExerciseTime_];
      v72 = [v111 appleExerciseTimeGoal];
      v71 = [objc_opt_self() (v70 + 2929)];
      [v72 (v85 + 3267)];
      v73 = v57;
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      [v99 setAppleExerciseTimeGoal_];
      v75 = [v111 appleStandHours];
      v58 = objc_opt_self();
      v78 = 0x1FBD81000uLL;
      v74 = [v58 0x1FBD81184];
      [v75 (v85 + 3267)];
      v76 = v59;
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v75);
      [v99 setAppleStandHours_];
      v80 = [v111 appleStandHoursGoal];
      v79 = [objc_opt_self() (v78 + 388)];
      [v80 (v85 + 3267)];
      v81 = v60;
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v80);
      [v99 setAppleStandHoursGoal_];
      v82 = [v111 activeEnergyBurnedGoal];
      [v82 (v85 + 3267)];
      v84 = v61;
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BE0](v186);
      v88 = type metadata accessor for NSUnitEnergy();
      Measurement.init(value:unit:)();
      v86 = [v111 activeEnergyBurned];
      [v86 (v85 + 3267)];
      v87 = v62;
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BE0](v186);
      Measurement.init(value:unit:)();
      v91 = v174[2];
      v90 = v174 + 2;
      v91(v54, v181, v173);
      v229 = Measurement._bridgeToObjectiveC()();
      v63 = v177;
      v89 = v229.super.isa;
      v98 = v174[1];
      v97 = v174 + 1;
      v98(v177, v173, *&v229._doubleValue);
      [v99 setActiveEnergyBurnedGoal_];
      MEMORY[0x277D82BD8](v89);
      v91(v63, v179, v173);
      v230 = Measurement._bridgeToObjectiveC()();
      v92 = v230.super.isa;
      v98(v177, v173, *&v230._doubleValue);
      [v99 setActiveEnergyBurned_];
      MEMORY[0x277D82BD8](v92);
      v94 = [v187 unitString];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v65;
      v95 = MEMORY[0x26D6492A0](v64);

      MEMORY[0x277D82BD8](v94);
      [v99 setActiveEnergyBurnedUnit_];
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BE0](v99);
      v96 = &v213;
      v213 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      (v98)(v179, v173);
      (v98)(v181, v173);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v111);
    }

    else
    {
      v125 = 0;
      type metadata accessor for GetAcitivitySummaryIntentResponse();
      v127 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(102, v125);
      v218 = v127;
      MEMORY[0x277D82BE0](v127);
      v126 = &v217;
      v217 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      MEMORY[0x277D82BD8](v127);
    }
  }
}

uint64_t protocol witness for ActivitySummaryFetching.isReadingAuthorized() in conformance ActivitySummaryFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for ActivitySummaryFetching.query() in conformance ActivitySummaryFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher;

  return ActivitySummaryFetcher.query()(v5);
}

id @nonobjc HKActivitySummaryQuery.init(predicate:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = 0;
  v11 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ();
  v12 = &block_descriptor_4;
  v5 = _Block_copy(&aBlock);
  v7 = [v4 initWithPredicate:a1 resultsHandler:?];
  _Block_release(v5);

  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKActivitySummary();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_2699774E4()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetActivitySummaryIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetActivitySummaryIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component()
{
  v2 = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    type metadata accessor for Calendar.Component();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKWheelchairUse and conformance HKWheelchairUse()
{
  v2 = lazy protocol witness table cache variable for type HKWheelchairUse and conformance HKWheelchairUse;
  if (!lazy protocol witness table cache variable for type HKWheelchairUse and conformance HKWheelchairUse)
  {
    type metadata accessor for HKWheelchairUse(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKWheelchairUse and conformance HKWheelchairUse);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKActivitySummaryQuery()
{
  v2 = lazy cache variable for type metadata for HKActivitySummaryQuery;
  if (!lazy cache variable for type metadata for HKActivitySummaryQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKActivitySummaryQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699777F0()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (v1 + *(v3 + 64) + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  MEMORY[0x277D82BD8](*(v0 + v4));
  MEMORY[0x277D82BD8](*(v0 + v5));
  MEMORY[0x277D82BD8](*(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in ActivitySummaryFetcher.query()(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR) - 8);
  v4 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v5 = v4 + *(v15 + 64);
  v6 = (v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v6);
  v9 = *(v3 + v7);
  v10 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v3 + v5) & 1;

  closure #1 in closure #1 in ActivitySummaryFetcher.query()(a1, a2, a3, v3 + v4, v11, v8, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKActivitySummary()
{
  v2 = lazy cache variable for type metadata for HKActivitySummary;
  if (!lazy cache variable for type metadata for HKActivitySummary)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKActivitySummary);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSUnitEnergy()
{
  v2 = lazy cache variable for type metadata for NSUnitEnergy;
  if (!lazy cache variable for type metadata for NSUnitEnergy)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSUnitEnergy);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKActivitySummary] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKActivitySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKActivitySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKActivitySummaryCGMd, &_sSaySo17HKActivitySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKActivitySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t PeriodFlow.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PeriodFlow@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PeriodFlow.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

id static PeriodFlowResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodFlow.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue_];

  return v1;
}

id static PeriodFlowResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodFlow.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm_];

  return v1;
}

id PeriodFlowResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id PeriodFlowResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for PeriodFlowResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id PeriodFlowResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeriodFlowResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type PeriodFlow and conformance PeriodFlow()
{
  v2 = lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow;
  if (!lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow;
  if (!lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessAttribute_optional __swiftcall WellnessAttribute.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "completed";
  *(v1 + 8) = 9;
  *(v1 + 16) = 2;
  *(v1 + 24) = "distance";
  *(v1 + 32) = 8;
  *(v1 + 40) = 2;
  *(v1 + 48) = "duration";
  *(v1 + 56) = 8;
  *(v1 + 64) = 2;
  *(v1 + 72) = "start";
  *(v1 + 80) = 5;
  *(v1 + 88) = 2;
  *(v1 + 96) = "stop";
  *(v1 + 104) = 4;
  *(v1 + 112) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessAttribute_completed;
LABEL_12:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessAttribute_distance;
      goto LABEL_12;
    case 2:
      v5.value = SiriWellnessIntents_WellnessAttribute_duration;
      goto LABEL_12;
    case 3:
      v5.value = SiriWellnessIntents_WellnessAttribute_start;
      goto LABEL_12;
    case 4:
      v5.value = SiriWellnessIntents_WellnessAttribute_stop;
      goto LABEL_12;
  }

  return 5;
}

uint64_t WellnessAttribute.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("completed", 9uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("distance", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("duration", 8uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stop", 4uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessAttribute and conformance WellnessAttribute()
{
  v2 = lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute;
  if (!lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute;
  if (!lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessAttribute_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessAttribute@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessAttribute_optional *a2@<X8>)
{
  result.value = WellnessAttribute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessAttribute@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessAttribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
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

_BYTE *storeEnumTagSinglePayload for WellnessAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
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

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
      *result = a2 + 4;
    }
  }

  return result;
}

void *LogSpecificMedicationsIntentHandler.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v12 = v1;
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v2 = MedsUndoer.init()();
    __dst[3] = &type metadata for SpecificMedicationsPersistor;
    __dst[4] = &protocol witness table for SpecificMedicationsPersistor;
    __dst[0] = v2;
    __dst[1] = v3;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage]);
  v8.receiver = v12;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v5);
  v12 = v5;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v12);
  return v5;
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 656) = v1;
  *(v2 + 648) = a1;
  *(v2 + 408) = v2;
  *(v2 + 416) = 0;
  *(v2 + 424) = 0;
  *(v2 + 952) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 544) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  v3 = type metadata accessor for Date();
  *(v2 + 664) = v3;
  *(v2 + 672) = *(v3 - 8);
  *(v2 + 680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v2 + 688) = swift_task_alloc();
  *(v2 + 696) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v2 + 704) = v4;
  *(v2 + 712) = *(v4 - 8);
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  *(v2 + 744) = swift_task_alloc();
  *(v2 + 752) = swift_task_alloc();
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  *(v2 + 416) = a1;
  *(v2 + 424) = v1;

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

{
  v2 = v1[96];
  v20 = v1[89];
  v22 = v1[88];
  v1[51] = v1;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v20 + 16);
  v1[97] = v3;
  v1[98] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v1[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v19 + 616) = buf;
    *(v19 + 624) = v16;
    *(v19 + 632) = v17;
    serialize(_:at:)(0, (v19 + 616));
    serialize(_:at:)(0, (v19 + 616));
    *(v19 + 640) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 616;
    v18[3] = v19 + 624;
    v18[4] = v19 + 632;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Checking authorization for medications...", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v19 + 800) = 0;
  v8 = *(v19 + 768);
  v9 = *(v19 + 704);
  v10 = *(v19 + 656);
  v7 = *(v19 + 712);
  MEMORY[0x277D82BD8](v24);
  v4 = *(v7 + 8);
  *(v19 + 808) = v4;
  *(v19 + 816) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v8, v9);
  outlined init with copy of QuantityPersisting(v10 + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v19 + 16);
  v13 = *(v19 + 40);
  v11 = *(v19 + 48);
  __swift_project_boxed_opaque_existential_1((v19 + 16), v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v5 = swift_task_alloc();
  *(v19 + 824) = v5;
  *v5 = *(v19 + 408);
  v5[1] = LogSpecificMedicationsIntentHandler.handle(intent:);

  return v12(v13, v11);
}

{
  v3 = *v1;
  *(v3 + 408) = *v1;
  *(v3 + 872) = a1;

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 408) = *v1;
  *(v3 + 912) = a1;

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

{
  v5 = *v1;
  v4 = *(*v1 + 696);
  v3 = *(*v1 + 688);
  *(v5 + 408) = *v1;
  *(v5 + 944) = a1;

  outlined destroy of Date?(v3);
  outlined destroy of Date?(v4);

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 408) = *v1;
  *(v3 + 953) = a1;

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2)
{
  v268 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v249 = v2;
  v250 = *(v2 + 953);
  *(v2 + 408) = v2;
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if ((v250 & 1) == 0)
  {
    v36 = *(v2 + 776);
    v23 = *(v2 + 720);
    v35 = *(v2 + 704);
    v34 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v36(v23, v34, v35);
    swift_endAccess();
    v38 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v39 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v38, v37))
    {
      v24 = *(v2 + 800);
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v2 + 432) = v30;
      *(v2 + 440) = v31;
      *(v2 + 448) = v32;
      serialize(_:at:)(0, (v2 + 432));
      serialize(_:at:)(0, (v2 + 432));
      *(v2 + 456) = v39;
      v33 = swift_task_alloc();
      v33[2] = v2 + 432;
      v33[3] = v2 + 440;
      v33[4] = v2 + 448;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v24)
      {
      }

      _os_log_impl(&dword_269912000, v38, v37, "Not authorized to write medications data.", v30, 2u);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v28 = *(v2 + 808);
    v26 = *(v2 + 720);
    v27 = *(v2 + 704);
    MEMORY[0x277D82BD8](v38);
    v28(v26, v27);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v191 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    goto LABEL_118;
  }

  v245 = *(v2 + 776);
  v3 = *(v2 + 760);
  v244 = *(v2 + 704);
  v243 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v245(v3, v243, v244);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v246 = static os_log_type_t.debug.getter();
  v248 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v246))
  {
    v4 = *(v2 + 800);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v240 = createStorage<A>(capacity:type:)(0, v238, v238);
    v241 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v2 + 584) = buf;
    *(v2 + 592) = v240;
    *(v2 + 600) = v241;
    serialize(_:at:)(0, (v2 + 584));
    serialize(_:at:)(0, (v2 + 584));
    *(v2 + 608) = v248;
    v242 = swift_task_alloc();
    v242[2] = v2 + 584;
    v242[3] = v2 + 592;
    v242[4] = v2 + 600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v4)
    {
    }

    _os_log_impl(&dword_269912000, oslog, v246, "Authorization check successful for medications!", buf, 2u);
    destroyStorage<A>(_:count:)(v240, 0, v238);
    destroyStorage<A>(_:count:)(v241, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v237 = 0;
  }

  else
  {

    v237 = *(v2 + 800);
  }

  v235 = *(v2 + 808);
  v233 = *(v2 + 760);
  v234 = *(v2 + 704);
  v236 = *(v2 + 648);
  MEMORY[0x277D82BD8](oslog);
  v235(v233, v234);
  *(v2 + 464) = [v236 medStatus];
  if (*(v2 + 464))
  {
    v230 = *(v2 + 464);
    MEMORY[0x277D82BE0](v230);
    outlined destroy of HealthKitPersistor((v2 + 464));
    v231 = [v230 BOOLValue];
    MEMORY[0x277D82BD8](v230);
    v232 = v231;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v2 + 464));
    v232 = 2;
  }

  if (v232 == 2)
  {
    v50 = *(v2 + 776);
    v22 = *(v2 + 728);
    v49 = *(v2 + 704);
    v48 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v50(v22, v48, v49);
    swift_endAccess();
    v52 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v53 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v52, v51))
    {

      goto LABEL_111;
    }

    v44 = static UnsafeMutablePointer.allocate(capacity:)();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = createStorage<A>(capacity:type:)(0, v43, v43);
    v46 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v2 + 472) = v44;
    *(v2 + 480) = v45;
    *(v2 + 488) = v46;
    serialize(_:at:)(0, (v2 + 472));
    serialize(_:at:)(0, (v2 + 472));
    *(v2 + 496) = v53;
    v47 = swift_task_alloc();
    v47[2] = v2 + 472;
    v47[3] = v2 + 480;
    v47[4] = v2 + 488;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v237)
    {

      _os_log_impl(&dword_269912000, v52, v51, "Unable to extract BOOLean value for medStatusTaken from LogSpecificMedicationsIntent.", v44, 2u);
      destroyStorage<A>(_:count:)(v45, 0, v43);
      destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v44, MEMORY[0x277D84B78]);

LABEL_111:
      v42 = *(v2 + 808);
      v40 = *(v2 + 728);
      v41 = *(v2 + 704);
      MEMORY[0x277D82BD8](v52);
      v42(v40, v41);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v191 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
LABEL_118:

      v25 = *(*(v2 + 408) + 8);

      return v25(v191);
    }
  }

  v5 = *(v2 + 648);
  *(v2 + 952) = v232 & 1;
  v229 = [v5 medicationIDs];
  if (v229)
  {
    v227 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v229);
    v228 = v227;
  }

  else
  {
    v228 = 0;
  }

  *(v2 + 832) = v228;
  if (!v228)
  {
    goto LABEL_52;
  }

  v6 = *(v2 + 648);
  *(v2 + 544) = v228;
  v225 = [v6 logAsNeeded];
  MEMORY[0x277D82BE0](v225);
  type metadata accessor for NSNumber();
  v226.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  MEMORY[0x277D82BE0](v226.super.super.isa);
  *(v2 + 360) = v225;
  *(v2 + 368) = v226;
  if (*(v2 + 360))
  {
    outlined init with copy of NSNumber?((v2 + 360), (v2 + 576));
    if (*(v2 + 368))
    {
      v266 = *(v2 + 576);
      v267 = *(v2 + 368);
      v224 = static NSObject.== infix(_:_:)();
      MEMORY[0x277D82BD8](v267);
      MEMORY[0x277D82BD8](v266);
      outlined destroy of HealthKitPersistor((v2 + 360));
      MEMORY[0x277D82BD8](v226.super.super.isa);
      MEMORY[0x277D82BD8](v225);
      if ((v224 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_26;
    }

    MEMORY[0x277D82BD8](*(v2 + 576));
  }

  else if (!*(v2 + 368))
  {
    outlined destroy of HealthKitPersistor((v2 + 360));
    MEMORY[0x277D82BD8](v226.super.super.isa);
    MEMORY[0x277D82BD8](v225);
LABEL_26:
    *(v2 + 552) = v228;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    Collection.first.getter();
    v222 = *(v2 + 376);
    v223 = *(v2 + 384);
    *(v2 + 840) = v223;
    if (v223)
    {
      *(v2 + 392) = v222;
      *(v2 + 400) = v223;
      if (MEMORY[0x26D6494A0](v228, MEMORY[0x277D837D0]) == 1)
      {
        v221 = *(v2 + 648);
        outlined init with copy of QuantityPersisting(*(v2 + 656) + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v2 + 136);
        v219 = *(v2 + 160);
        v220 = *(v2 + 168);
        __swift_project_boxed_opaque_existential_1((v2 + 136), v219);
        *(v2 + 560) = [v221 dosage];
        if (*(v2 + 560))
        {
          v218 = *(v2 + 560);
          MEMORY[0x277D82BE0](v218);
          outlined destroy of HealthKitPersistor((v2 + 560));
          [v218 doubleValue];
          MEMORY[0x277D82BD8](v218);
        }

        else
        {
          outlined destroy of HealthKitPersistor((v2 + 560));
        }

        v217 = [*(v2 + 648) dosageUnit];
        if (v217)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v215 = v7;
          MEMORY[0x277D82BD8](v217);
          v216 = v215;
        }

        else
        {
          v216 = 0;
        }

        *(v2 + 848) = v216;
        *(v2 + 568) = [*(v2 + 648) strength];
        if (*(v2 + 568))
        {
          v213 = *(v2 + 568);
          MEMORY[0x277D82BE0](v213);
          outlined destroy of HealthKitPersistor((v2 + 568));
          [v213 doubleValue];
          MEMORY[0x277D82BD8](v213);
          v214 = 0;
        }

        else
        {
          outlined destroy of HealthKitPersistor((v2 + 568));
          v214 = 1;
        }

        v212 = [*(v2 + 648) strengthUnit];
        if (v212)
        {
          v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v209 = v8;
          MEMORY[0x277D82BD8](v212);
          v210 = v208;
          v211 = v209;
        }

        else
        {
          v210 = 0;
          v211 = 0;
        }

        *(v2 + 856) = v211;
        v207 = *(v220 + 32) + **(v220 + 32);
        v9 = swift_task_alloc();
        v249[108] = v9;
        *v9 = v249[51];
        v9[1] = LogSpecificMedicationsIntentHandler.handle(intent:);
        v270 = v214 & 1;
        v271 = v210;
        v272 = v211;
        v273 = v219;
        v274 = v220;

        __asm { BRAA            X8, X16 }
      }
    }

    v198 = *(v2 + 776);
    v10 = *(v2 + 752);
    v197 = *(v2 + 704);
    v196 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v198(v10, v196, v197);
    swift_endAccess();

    v199 = swift_allocObject();
    *(v199 + 16) = v228;
    log = Logger.logObject.getter();
    v206 = static os_log_type_t.error.getter();
    v201 = swift_allocObject();
    *(v201 + 16) = 0;
    v202 = swift_allocObject();
    *(v202 + 16) = 8;
    v200 = swift_allocObject();
    *(v200 + 16) = partial apply for implicit closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v200 + 24) = v199;
    v203 = swift_allocObject();
    *(v203 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v203 + 24) = v200;
    _allocateUninitializedArray<A>(_:)();
    v204 = v11;

    *v204 = partial apply for closure #1 in OSLogArguments.append(_:);
    v204[1] = v201;

    v204[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v204[3] = v202;

    v204[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v204[5] = v203;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v206))
    {
      v193 = static UnsafeMutablePointer.allocate(capacity:)();
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v194 = createStorage<A>(capacity:type:)(0, v192, v192);
      v195 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v261 = v193;
      v262 = v194;
      v263 = v195;
      serialize(_:at:)(0, &v261);
      serialize(_:at:)(1, &v261);
      v264 = partial apply for closure #1 in OSLogArguments.append(_:);
      v265 = v201;
      closure #1 in osLogInternal(_:log:type:)(&v264, &v261, &v262, &v263);
      if (v237)
      {
      }

      v264 = partial apply for closure #1 in OSLogArguments.append(_:);
      v265 = v202;
      closure #1 in osLogInternal(_:log:type:)(&v264, &v261, &v262, &v263);
      v264 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v265 = v203;
      closure #1 in osLogInternal(_:log:type:)(&v264, &v261, &v262, &v263);
      _os_log_impl(&dword_269912000, log, v206, "saveAsNeededWithStrength should only be called with a single medicationID but %ld found, returning .failure.", v193, 0xCu);
      destroyStorage<A>(_:count:)(v194, 0, v192);
      destroyStorage<A>(_:count:)(v195, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v193, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v189 = *(v2 + 808);
    v187 = *(v2 + 752);
    v188 = *(v2 + 704);
    MEMORY[0x277D82BD8](log);
    v189(v187, v188);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v190 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v191 = v190;
    goto LABEL_118;
  }

  outlined destroy of (HKQuantitySample, HKQuantitySample)((v2 + 360));
  MEMORY[0x277D82BD8](v226.super.super.isa);
  MEMORY[0x277D82BD8](v225);
LABEL_51:

LABEL_52:
  v186 = [*(v2 + 648) scheduleID];
  if (v186)
  {
    v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v13;
    MEMORY[0x277D82BD8](v186);
    v184 = v182;
    v185 = v183;
  }

  else
  {
    v184 = 0;
    v185 = 0;
  }

  *(v2 + 880) = v185;
  if (!v185)
  {
    v86 = *(v2 + 776);
    v18 = *(v2 + 736);
    v85 = *(v2 + 704);
    v87 = *(v2 + 648);
    v84 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v86(v18, v84, v85);
    swift_endAccess();
    MEMORY[0x277D82BE0](v87);
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    MEMORY[0x277D82BE0](v87);
    v90 = swift_allocObject();
    *(v90 + 16) = v87;
    MEMORY[0x277D82BE0](v87);
    v92 = swift_allocObject();
    *(v92 + 16) = v87;
    v94 = swift_allocObject();
    *(v94 + 16) = v232 & 1;
    MEMORY[0x277D82BE0](v87);
    v98 = swift_allocObject();
    *(v98 + 16) = v87;
    MEMORY[0x277D82BE0](v87);
    v100 = swift_allocObject();
    *(v100 + 16) = v87;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v103 = swift_allocObject();
    *(v103 + 16) = 8;
    v89 = swift_allocObject();
    *(v89 + 16) = partial apply for implicit closure #2 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v89 + 24) = v88;
    v104 = swift_allocObject();
    *(v104 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v104 + 24) = v89;
    v105 = swift_allocObject();
    *(v105 + 16) = 32;
    v106 = swift_allocObject();
    *(v106 + 16) = 8;
    v91 = swift_allocObject();
    *(v91 + 16) = partial apply for implicit closure #3 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v91 + 24) = v90;
    v107 = swift_allocObject();
    *(v107 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v107 + 24) = v91;
    v108 = swift_allocObject();
    *(v108 + 16) = 32;
    v109 = swift_allocObject();
    *(v109 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for implicit closure #4 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v93 + 24) = v92;
    v110 = swift_allocObject();
    *(v110 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v110 + 24) = v93;
    v111 = swift_allocObject();
    *(v111 + 16) = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = 4;
    v95 = swift_allocObject();
    *(v95 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v95 + 24) = v94;
    v96 = swift_allocObject();
    *(v96 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v96 + 24) = v95;
    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v97 + 24) = v96;
    v113 = swift_allocObject();
    *(v113 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v113 + 24) = v97;
    v114 = swift_allocObject();
    *(v114 + 16) = 32;
    v115 = swift_allocObject();
    *(v115 + 16) = 8;
    v99 = swift_allocObject();
    *(v99 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v99 + 24) = v98;
    v116 = swift_allocObject();
    *(v116 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v116 + 24) = v99;
    v117 = swift_allocObject();
    *(v117 + 16) = 32;
    v118 = swift_allocObject();
    *(v118 + 16) = 8;
    v101 = swift_allocObject();
    *(v101 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v101 + 24) = v100;
    v119 = swift_allocObject();
    *(v119 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v119 + 24) = v101;
    _allocateUninitializedArray<A>(_:)();
    v120 = v19;

    *v120 = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[1] = v102;

    v120[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[3] = v103;

    v120[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[5] = v104;

    v120[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[7] = v105;

    v120[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[9] = v106;

    v120[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[11] = v107;

    v120[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[13] = v108;

    v120[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[15] = v109;

    v120[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[17] = v110;

    v120[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[19] = v111;

    v120[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[21] = v112;

    v120[22] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v120[23] = v113;

    v120[24] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[25] = v114;

    v120[26] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[27] = v115;

    v120[28] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[29] = v116;

    v120[30] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[31] = v117;

    v120[32] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[33] = v118;

    v120[34] = partial apply for closure #1 in OSLogArguments.append(_:);
    v120[35] = v119;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v121, v122))
    {
      v81 = static UnsafeMutablePointer.allocate(capacity:)();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v82 = createStorage<A>(capacity:type:)(0, v80, v80);
      v83 = createStorage<A>(capacity:type:)(5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v251 = v81;
      v252 = v82;
      v253 = v83;
      serialize(_:at:)(2, &v251);
      serialize(_:at:)(6, &v251);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      if (v237)
      {
      }

      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v105;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v106;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v107;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v108;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v109;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v110;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v111;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v255 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v116;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v118;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      _os_log_impl(&dword_269912000, v121, v122, "Not provided scheduleID, so persisting specific medication as default...\nstartTime: %s,\nendTime: %s,\nmedicationID: %s,\nmedStatusIsTaken: %{BOOL}d,\ndosage: %s,\ndosageUnit: %s,", v81, 0x3Au);
      destroyStorage<A>(_:count:)(v82, 0, v80);
      destroyStorage<A>(_:count:)(v83, 5, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v81, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v74 = *(v2 + 808);
    v72 = *(v2 + 736);
    v73 = *(v2 + 704);
    v75 = *(v2 + 656);
    v78 = *(v2 + 648);
    MEMORY[0x277D82BD8](v121);
    v74(v72, v73);
    outlined init with copy of QuantityPersisting(v75 + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v2 + 56);
    v76 = *(v2 + 80);
    v77 = *(v2 + 88);
    __swift_project_boxed_opaque_existential_1((v2 + 56), v76);
    v79 = [v78 startTime];
    if (v79)
    {
      v71 = *(v2 + 696);
      v69 = *(v2 + 680);
      v70 = *(v2 + 664);
      v68 = *(v2 + 672);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v68 + 32))(v71, v69, v70);
      (*(v68 + 56))(v71, 0, 1, v70);
      MEMORY[0x277D82BD8](v79);
    }

    else
    {
      (*(*(v2 + 672) + 56))(*(v2 + 696), 1, 1, *(v2 + 664));
    }

    v67 = [*(v2 + 648) endTime];
    if (v67)
    {
      v66 = *(v2 + 688);
      v64 = *(v2 + 680);
      v65 = *(v2 + 664);
      v63 = *(v2 + 672);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v63 + 32))(v66, v64, v65);
      (*(v63 + 56))(v66, 0, 1, v65);
      MEMORY[0x277D82BD8](v67);
    }

    else
    {
      (*(*(v2 + 672) + 56))(*(v2 + 688), 1, 1, *(v2 + 664));
    }

    *(v2 + 504) = [*(v2 + 648) hasMeridiem];
    if (*(v2 + 504))
    {
      v62 = *(v2 + 504);
      MEMORY[0x277D82BE0](v62);
      outlined destroy of HealthKitPersistor((v2 + 504));
      [v62 BOOLValue];
      MEMORY[0x277D82BD8](v62);
    }

    else
    {
      outlined destroy of HealthKitPersistor((v2 + 504));
    }

    v61 = [*(v2 + 648) medicationIDs];
    if (v61)
    {
      v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v61);
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    *(v2 + 920) = v60;
    *(v2 + 512) = [*(v2 + 648) dosage];
    if (*(v2 + 512))
    {
      v58 = *(v2 + 512);
      MEMORY[0x277D82BE0](v58);
      outlined destroy of HealthKitPersistor((v2 + 512));
      [v58 doubleValue];
      MEMORY[0x277D82BD8](v58);
    }

    else
    {
      outlined destroy of HealthKitPersistor((v2 + 512));
    }

    v57 = [*(v2 + 648) dosageUnit];
    if (v57)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v20;
      MEMORY[0x277D82BD8](v57);
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    *(v2 + 928) = v56;
    v54 = *(v77 + 16) + **(v77 + 16);
    v21 = swift_task_alloc();
    *(v2 + 936) = v21;
    *v21 = *(v2 + 408);
    v21[1] = LogSpecificMedicationsIntentHandler.handle(intent:);
    v272 = v56;
    v273 = v76;
    v274 = v77;

    __asm { BRAA            X8, X16 }
  }

  v150 = *(v2 + 776);
  v14 = *(v2 + 744);
  v149 = *(v2 + 704);
  v151 = *(v2 + 648);
  *(v2 + 344) = v184;
  *(v2 + 352) = v185;
  v148 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v150(v14, v148, v149);
  swift_endAccess();

  v152 = swift_allocObject();
  *(v152 + 16) = v184;
  *(v152 + 24) = v185;
  MEMORY[0x277D82BE0](v151);
  v154 = swift_allocObject();
  *(v154 + 16) = v151;
  v156 = swift_allocObject();
  *(v156 + 16) = v232 & 1;
  MEMORY[0x277D82BE0](v151);
  v160 = swift_allocObject();
  *(v160 + 16) = v151;
  MEMORY[0x277D82BE0](v151);
  v162 = swift_allocObject();
  *(v162 + 16) = v151;
  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.debug.getter();
  v164 = swift_allocObject();
  *(v164 + 16) = 32;
  v165 = swift_allocObject();
  *(v165 + 16) = 8;
  v153 = swift_allocObject();
  *(v153 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
  *(v153 + 24) = v152;
  v166 = swift_allocObject();
  *(v166 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v166 + 24) = v153;
  v167 = swift_allocObject();
  *(v167 + 16) = 32;
  v168 = swift_allocObject();
  *(v168 + 16) = 8;
  v155 = swift_allocObject();
  *(v155 + 16) = partial apply for implicit closure #4 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v155 + 24) = v154;
  v169 = swift_allocObject();
  *(v169 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v169 + 24) = v155;
  v170 = swift_allocObject();
  *(v170 + 16) = 0;
  v171 = swift_allocObject();
  *(v171 + 16) = 4;
  v157 = swift_allocObject();
  *(v157 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v157 + 24) = v156;
  v158 = swift_allocObject();
  *(v158 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v158 + 24) = v157;
  v159 = swift_allocObject();
  *(v159 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v159 + 24) = v158;
  v172 = swift_allocObject();
  *(v172 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v172 + 24) = v159;
  v173 = swift_allocObject();
  *(v173 + 16) = 32;
  v174 = swift_allocObject();
  *(v174 + 16) = 8;
  v161 = swift_allocObject();
  *(v161 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v161 + 24) = v160;
  v175 = swift_allocObject();
  *(v175 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v175 + 24) = v161;
  v176 = swift_allocObject();
  *(v176 + 16) = 32;
  v177 = swift_allocObject();
  *(v177 + 16) = 8;
  v163 = swift_allocObject();
  *(v163 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v163 + 24) = v162;
  v178 = swift_allocObject();
  *(v178 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v178 + 24) = v163;
  _allocateUninitializedArray<A>(_:)();
  v179 = v15;

  *v179 = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[1] = v164;

  v179[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[3] = v165;

  v179[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[5] = v166;

  v179[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[7] = v167;

  v179[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[9] = v168;

  v179[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[11] = v169;

  v179[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[13] = v170;

  v179[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[15] = v171;

  v179[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v179[17] = v172;

  v179[18] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[19] = v173;

  v179[20] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[21] = v174;

  v179[22] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[23] = v175;

  v179[24] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[25] = v176;

  v179[26] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[27] = v177;

  v179[28] = partial apply for closure #1 in OSLogArguments.append(_:);
  v179[29] = v178;
  _finalizeUninitializedArray<A>(_:)();

  if (!os_log_type_enabled(v180, v181))
  {

LABEL_61:
    v138 = *(v2 + 808);
    v136 = *(v2 + 744);
    v137 = *(v2 + 704);
    v139 = *(v2 + 656);
    v142 = *(v2 + 648);
    MEMORY[0x277D82BD8](v180);
    v138(v136, v137);
    outlined init with copy of QuantityPersisting(v139 + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v2 + 96);
    v140 = *(v2 + 120);
    v141 = *(v2 + 128);
    __swift_project_boxed_opaque_existential_1((v2 + 96), v140);
    v143 = [v142 medicationIDs];
    if (v143)
    {
      v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v143);
      v135 = v134;
    }

    else
    {
      v135 = 0;
    }

    *(v2 + 888) = v135;
    *(v2 + 520) = [*(v2 + 648) dosage];
    if (*(v2 + 520))
    {
      v133 = *(v2 + 520);
      MEMORY[0x277D82BE0](v133);
      outlined destroy of HealthKitPersistor((v2 + 520));
      [v133 doubleValue];
      MEMORY[0x277D82BD8](v133);
    }

    else
    {
      outlined destroy of HealthKitPersistor((v2 + 520));
    }

    v132 = [*(v2 + 648) dosageUnit];
    if (v132)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v16;
      MEMORY[0x277D82BD8](v132);
      v131 = v130;
    }

    else
    {
      v131 = 0;
    }

    *(v2 + 896) = v131;
    *(v2 + 528) = [*(v2 + 648) confirmedAsNeeded];
    if (*(v2 + 528))
    {
      v127 = *(v2 + 528);
      MEMORY[0x277D82BE0](v127);
      outlined destroy of HealthKitPersistor((v2 + 528));
      v128 = [v127 BOOLValue];
      MEMORY[0x277D82BD8](v127);
      v129 = v128;
    }

    else
    {
      outlined destroy of HealthKitPersistor((v2 + 528));
      v129 = 2;
    }

    *(v2 + 536) = [*(v2 + 648) confirmedAsScheduled];
    if (*(v2 + 536))
    {
      v124 = *(v2 + 536);
      MEMORY[0x277D82BE0](v124);
      outlined destroy of HealthKitPersistor((v2 + 536));
      v125 = [v124 BOOLValue];
      MEMORY[0x277D82BD8](v124);
      v126 = v125;
    }

    else
    {
      outlined destroy of HealthKitPersistor((v2 + 536));
      v126 = 2;
    }

    v123 = *(v141 + 24) + **(v141 + 24);
    v17 = swift_task_alloc();
    v249[113] = v17;
    *v17 = v249[51];
    v17[1] = LogSpecificMedicationsIntentHandler.handle(intent:);
    LOBYTE(v272) = v129;
    BYTE1(v272) = v126;
    v273 = v140;
    v274 = v141;

    __asm { BRAA            X8, X16 }
  }

  v145 = static UnsafeMutablePointer.allocate(capacity:)();
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v146 = createStorage<A>(capacity:type:)(0, v144, v144);
  v147 = createStorage<A>(capacity:type:)(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  v256 = v145;
  v257 = v146;
  v258 = v147;
  serialize(_:at:)(2, &v256);
  serialize(_:at:)(5, &v256);
  v259 = partial apply for closure #1 in OSLogArguments.append(_:);
  v260 = v164;
  closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
  if (!v237)
  {
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v165;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v166;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v167;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v168;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v169;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v170;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v171;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v260 = v172;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v173;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v174;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v175;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v176;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v177;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    v259 = partial apply for closure #1 in OSLogArguments.append(_:);
    v260 = v178;
    closure #1 in osLogInternal(_:log:type:)(&v259, &v256, &v257, &v258);
    _os_log_impl(&dword_269912000, v180, v181, "Provided scheduleID and potentially {medicationID, dosage, dosageUnit}, so persisting specific medication...\n    scheduleID: %s,\n    medicationID: %s,\n    medStatusIsTaken: %{BOOL}d,\n    dosage: %s,\n    dosageUnit: %s,", v145, 0x30u);
    destroyStorage<A>(_:count:)(v146, 0, v144);
    destroyStorage<A>(_:count:)(v147, 4, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v145, MEMORY[0x277D84B78]);

    goto LABEL_61;
  }
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)()
{
  v0[51] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v3 = v0[109];

  v1 = *(v0[51] + 8);

  return v1(v3);
}

{
  v0[51] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v3 = v0[114];

  v1 = *(v0[51] + 8);

  return v1(v3);
}

{
  v0[51] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[118];

  v1 = *(v0[51] + 8);

  return v1(v3);
}

uint64_t implicit closure #2 in LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  v12 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v1);
  v11 = v6 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v12, v2);
  v15 = v6 - v14;
  v16 = [v4 startTime];
  if (v16)
  {
    v6[1] = v16;
    v6[0] = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v15, v11, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    MEMORY[0x277D82BD8](v6[0]);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #3 in LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  v12 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v1);
  v11 = v6 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v12, v2);
  v15 = v6 - v14;
  v16 = [v4 endTime];
  if (v16)
  {
    v6[1] = v16;
    v6[0] = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v15, v11, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    MEMORY[0x277D82BD8](v6[0]);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in LogSpecificMedicationsIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 medicationIDs];
  if (v2)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
  lazy protocol witness table accessor for type [String]? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:)(void *a1)
{
  [a1 dosage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 dosageUnit];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t @objc closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return LogSpecificMedicationsIntentHandler.handle(intent:)(a1);
}

id LogSpecificMedicationsIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SpecificMedicationsPersistor.isLoggingAuthorized()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  MEMORY[0x277D82BE0](a1);
  v3 = swift_task_alloc();
  *(v5 + 48) = v3;
  *v3 = *(v5 + 32);
  v3[1] = SpecificMedicationsPersistor.isLoggingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(a1);
}

uint64_t SpecificMedicationsPersistor.isLoggingAuthorized()(unsigned int a1)
{
  v5 = *v1;
  v4 = *(*v1 + 40);
  *(v5 + 32) = *v1;

  v2 = *(*(v5 + 32) + 8);

  return v2(a1);
}

uint64_t SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = v23;
  *(v8 + 328) = v22;
  *(v8 + 320) = v21;
  *(v8 + 312) = a8;
  *(v8 + 131) = a7;
  *(v8 + 304) = a6;
  *(v8 + 130) = a5 & 1;
  *(v8 + 296) = a4;
  *(v8 + 129) = a3 & 1;
  *(v8 + 288) = a2;
  *(v8 + 280) = a1;
  *(v8 + 136) = v8;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 488) = 0;
  *(v8 + 160) = 0;
  *(v8 + 496) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 504) = 0;
  *(v8 + 512) = 0;
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  v11 = type metadata accessor for DateInterval();
  *(v8 + 344) = v11;
  *(v8 + 352) = *(v11 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 400) = v12;
  *(v8 + 408) = *(v12 - 8);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
  *(v8 + 488) = a3 & 1;
  *(v8 + 160) = a4;
  *(v8 + 496) = a5 & 1;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7 & 1;
  *(v8 + 88) = a8;
  *(v8 + 96) = v21;
  *(v8 + 104) = v22;
  *(v8 + 112) = v23;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)(uint64_t a1)
{
  v2 = v1[54];
  v85 = v1[51];
  v87 = v1[50];
  v1[17] = v1;
  v86 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v88 = *(v85 + 16);
  v88(v2, v86, v87);
  swift_endAccess();
  v90 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v91 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v90, v89))
  {
    v80 = static UnsafeMutablePointer.allocate(capacity:)();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v81 = createStorage<A>(capacity:type:)(0, v79, v79);
    v82 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v84 + 248) = v80;
    *(v84 + 256) = v81;
    *(v84 + 264) = v82;
    serialize(_:at:)(0, (v84 + 248));
    serialize(_:at:)(0, (v84 + 248));
    *(v84 + 272) = v91;
    v83 = swift_task_alloc();
    v83[2] = v84 + 248;
    v83[3] = v84 + 256;
    v83[4] = v84 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v90, v89, "Starting to save medication.", v80, 2u);
    destroyStorage<A>(_:count:)(v81, 0, v79);
    destroyStorage<A>(_:count:)(v82, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v80, MEMORY[0x277D84B78]);
  }

  v70 = *(v84 + 432);
  v71 = *(v84 + 400);
  v76 = *(v84 + 392);
  v77 = *(v84 + 344);
  v74 = *(v84 + 288);
  v73 = *(v84 + 280);
  v69 = *(v84 + 408);
  v75 = *(v84 + 352);
  MEMORY[0x277D82BD8](v90);
  v72 = *(v69 + 8);
  v72(v70, v71);
  dateInterval(startTime:endTime:)(v73, v74, v76);
  v78 = *(v75 + 48);
  v68 = v78(v76, 1, v77) != 1;
  v3 = *(v84 + 131);
  *(v84 + 504) = v68;
  v67 = (v3 & 1) == 0;

  v66 = v67 || *(v84 + 320) != 0;

  *(v84 + 512) = v66;
  if (v68 && v66)
  {
    v4 = *(v84 + 424);
    v62 = *(v84 + 400);
    v61 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v88(v4, v61, v62);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v65 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v63))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v58 = createStorage<A>(capacity:type:)(0, v56, v56);
      v59 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v84 + 216) = buf;
      *(v84 + 224) = v58;
      *(v84 + 232) = v59;
      serialize(_:at:)(0, (v84 + 216));
      serialize(_:at:)(0, (v84 + 216));
      *(v84 + 240) = v65;
      v60 = swift_task_alloc();
      v60[2] = v84 + 216;
      v60[3] = v84 + 224;
      v60[4] = v84 + 232;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v63, "User specified dosage or dosageUnit while logging a scheduled med. This isn't currently supported. Returning failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v58, 0, v56);
      destroyStorage<A>(_:count:)(v59, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v51 = *(v84 + 424);
    v52 = *(v84 + 400);
    v53 = *(v84 + 392);
    MEMORY[0x277D82BD8](oslog);
    v72(v51, v52);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v54 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    outlined destroy of DateInterval?(v53);
    v55 = v54;
LABEL_31:

    v27 = *(*(v84 + 136) + 8);

    return v27(v55);
  }

  v50 = *(v84 + 296);

  if (!v50)
  {
LABEL_20:
    v46 = *(v84 + 376);
    v45 = *(v84 + 344);
    outlined init with copy of DateInterval?(*(v84 + 392), v46);
    if (v78(v46, 1, v45) != 1)
    {
      (*(*(v84 + 352) + 32))(*(v84 + 360), *(v84 + 376), *(v84 + 344));
      v13 = swift_task_alloc();
      *(v84 + 456) = v13;
      *v13 = *(v84 + 136);
      v13[1] = SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:);
      v14 = *(v84 + 360);
      v15 = *(v84 + 336);
      v16 = *(v84 + 328);
      v17 = *(v84 + 130) & 1;
      v18 = *(v84 + 129) & 1;

      return SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)(v14, v17, v18, v16, v15);
    }

    v44 = *(v84 + 296);
    outlined destroy of DateInterval?(*(v84 + 376));

    if (v44)
    {
      v43 = *(v84 + 296);
      v42 = *(v84 + 131);
      *(v84 + 200) = v43;
      v19 = swift_task_alloc();
      *(v84 + 472) = v19;
      *v19 = *(v84 + 136);
      v19[1] = SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:);
      v20 = *(v84 + 336);
      v21 = *(v84 + 328);
      v22 = *(v84 + 320);
      v23 = *(v84 + 312);
      v24 = *(v84 + 304);
      v25 = *(v84 + 130) & 1;

      return SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)(v43, v25, v24, v42 & 1, v23, v22, v21, v20);
    }

    v26 = *(v84 + 416);
    v38 = *(v84 + 400);
    v37 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v88(v26, v37, v38);
    swift_endAccess();
    log = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v41 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v39))
    {
      v33 = static UnsafeMutablePointer.allocate(capacity:)();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v34 = createStorage<A>(capacity:type:)(0, v32, v32);
      v35 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v84 + 168) = v33;
      *(v84 + 176) = v34;
      *(v84 + 184) = v35;
      serialize(_:at:)(0, (v84 + 168));
      serialize(_:at:)(0, (v84 + 168));
      *(v84 + 192) = v41;
      v36 = swift_task_alloc();
      v36[2] = v84 + 168;
      v36[3] = v84 + 176;
      v36[4] = v84 + 184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v39, "Neither time nor schedule specified even though this is a Specific Med Logging Intent Handler, returning .failure.", v33, 2u);
      destroyStorage<A>(_:count:)(v34, 0, v32);
      destroyStorage<A>(_:count:)(v35, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v33, MEMORY[0x277D84B78]);
    }

    v28 = *(v84 + 416);
    v29 = *(v84 + 400);
    v30 = *(v84 + 392);
    MEMORY[0x277D82BD8](log);
    v72(v28, v29);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v31 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    outlined destroy of DateInterval?(v30);
    v55 = v31;
    goto LABEL_31;
  }

  v47 = *(v84 + 296);
  v5 = *(v84 + 392);
  v49 = *(v84 + 384);
  v48 = *(v84 + 344);
  *(v84 + 208) = v47;
  outlined init with copy of DateInterval?(v5, v49);
  if (v78(v49, 1, v48) == 1)
  {
    outlined destroy of DateInterval?(*(v84 + 384));

    goto LABEL_20;
  }

  (*(*(v84 + 352) + 32))(*(v84 + 368), *(v84 + 384), *(v84 + 344));
  v6 = swift_task_alloc();
  *(v84 + 440) = v6;
  *v6 = *(v84 + 136);
  v6[1] = SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:);
  v7 = *(v84 + 368);
  v8 = *(v84 + 336);
  v9 = *(v84 + 328);
  v10 = *(v84 + 130) & 1;
  v11 = *(v84 + 129) & 1;

  return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)(v47, v7, v10, v11, v9, v8);
}

{
  v3 = *v1;
  *(v3 + 136) = *v1;
  *(v3 + 448) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v3 = *v1;
  *(v3 + 136) = *v1;
  *(v3 + 464) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v3 = *v1;
  *(v3 + 136) = *v1;
  *(v3 + 480) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)()
{
  v6 = v0[49];
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[43];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);

  outlined destroy of DateInterval?(v6);
  v7 = v0[56];

  v4 = *(v0[17] + 8);

  return v4(v7);
}

{
  v6 = v0[49];
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);
  outlined destroy of DateInterval?(v6);
  v7 = v0[58];

  v4 = *(v0[17] + 8);

  return v4(v7);
}

{
  v3 = v0[49];
  v0[17] = v0;

  outlined destroy of DateInterval?(v3);
  v4 = v0[60];

  v1 = *(v0[17] + 8);

  return v1(v4);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 232) = a6;
  *(v6 + 224) = a5;
  *(v6 + 442) = a4 & 1;
  *(v6 + 441) = a3 & 1;
  *(v6 + 216) = a2;
  *(v6 + 208) = a1;
  *(v6 + 104) = v6;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 456) = 0;
  *(v6 + 464) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  v7 = type metadata accessor for Logger();
  *(v6 + 240) = v7;
  *(v6 + 248) = *(v7 - 8);
  *(v6 + 256) = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  *(v6 + 440) = a3 & 1;
  *(v6 + 448) = a4 & 1;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)()
{
  v1 = *(v0 + 442);
  *(v0 + 104) = v0;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v29 + 296) = v2;
    *v2 = *(v29 + 104);
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v3 = *(v29 + 232);
    v4 = *(v29 + 224);
    v5 = *(v29 + 216);
    v6 = *(v29 + 208);
    v7 = *(v29 + 441) & 1;

    return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v6, v5, v7, v4, v3);
  }

  v26 = *(v29 + 208);
  getFallbackDateInterval(specifiedDateInterval:)(*(v29 + 216), *(v29 + 288));
  type metadata accessor for HKMedicationExposableDoseEvent();
  *(v29 + 128) = _allocateUninitializedArray<A>(_:)();
  *(v29 + 136) = _allocateUninitializedArray<A>(_:)();

  *(v29 + 144) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v27 = *(v29 + 72);
  *(v29 + 304) = v27;
  v28 = *(v29 + 80);
  *(v29 + 312) = v28;
  if (v28)
  {
    *(v29 + 88) = v27;
    *(v29 + 96) = v28;
    *(v29 + 320) = type metadata accessor for HKMedicationIdentifier();

    v25 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v27, v28);
    *(v29 + 328) = v25;
    v9 = swift_task_alloc();
    *(v29 + 336) = v9;
    *v9 = *(v29 + 104);
    v9[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v10 = *(v29 + 232);
    v11 = *(v29 + 224);
    v12 = *(v29 + 216);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v12, v25, v11, v10);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v29 + 56));
    v21 = *(v29 + 128);

    *(v29 + 152) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v22 = Collection.isEmpty.getter();

    *(v29 + 456) = (v22 ^ 1) & 1;
    v23 = *(v29 + 136);

    *(v29 + 160) = v23;
    v24 = Collection.isEmpty.getter();

    *(v29 + 464) = (v24 ^ 1) & 1;
    if ((v22 ^ 1) & 1) != 0 || ((v24 ^ 1))
    {
      if ((v22 ^ 1) & 1) != 0 && ((v24 ^ 1))
      {
        SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)(*(v29 + 216), *(v29 + 288), *(v29 + 224), *(v29 + 232), *(v29 + 280));
        v14 = swift_task_alloc();
        *(v29 + 392) = v14;
        *v14 = *(v29 + 104);
        v14[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v5 = *(v29 + 280);
        v3 = *(v29 + 232);
        v4 = *(v29 + 224);
        v6 = *(v29 + 208);
        v7 = *(v29 + 441) & 1;
      }

      else if ((v22 ^ 1))
      {
        v15 = swift_task_alloc();
        *(v29 + 408) = v15;
        *v15 = *(v29 + 104);
        v15[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v3 = *(v29 + 232);
        v4 = *(v29 + 224);
        v5 = *(v29 + 216);
        v6 = *(v29 + 208);
        v7 = *(v29 + 441) & 1;
      }

      else
      {
        v16 = swift_task_alloc();
        *(v29 + 424) = v16;
        *v16 = *(v29 + 104);
        v16[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v5 = *(v29 + 288);
        v3 = *(v29 + 232);
        v4 = *(v29 + 224);
        v6 = *(v29 + 208);
        v7 = *(v29 + 441) & 1;
      }

      return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v6, v5, v7, v4, v3);
    }

    v19 = *(v29 + 288);
    v18 = *(v29 + 264);
    v17 = *(v29 + 272);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v20 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
    outlined destroy of [HKQuantityType]((v29 + 136));
    outlined destroy of [HKQuantityType]((v29 + 128));
    (*(v17 + 8))(v19, v18);

    v13 = *(*(v29 + 104) + 8);

    return v13(v20);
  }
}

{
  v1 = v0[43];
  v8 = v0[39];
  v7 = v0[38];
  v0[13] = v0;
  v0[22] = v1;

  v10 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v7, v8);
  v0[45] = v10;
  v2 = swift_task_alloc();
  v9[46] = v2;
  *v2 = v9[13];
  v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  v3 = v9[36];
  v4 = v9[29];
  v5 = v9[28];

  return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v3, v10, v5, v4);
}

{
  v25 = v0[47];
  v26 = v0[43];
  v0[13] = v0;
  v0[23] = v25;

  v0[24] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();

  v0[25] = v25;
  Array.append<A>(contentsOf:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v27 = v0[9];
  v0[38] = v27;
  v28 = v0[10];
  v0[39] = v28;
  if (v28)
  {
    *(v24 + 88) = v27;
    *(v24 + 96) = v28;
    *(v24 + 320) = type metadata accessor for HKMedicationIdentifier();

    v23 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v27, v28);
    *(v24 + 328) = v23;
    v1 = swift_task_alloc();
    *(v24 + 336) = v1;
    *v1 = *(v24 + 104);
    v1[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v2 = *(v24 + 232);
    v3 = *(v24 + 224);
    v4 = *(v24 + 216);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v4, v23, v3, v2);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v24 + 56));
    v19 = *(v24 + 128);

    *(v24 + 152) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v20 = Collection.isEmpty.getter();

    *(v24 + 456) = (v20 ^ 1) & 1;
    v21 = *(v24 + 136);

    *(v24 + 160) = v21;
    v22 = Collection.isEmpty.getter();

    *(v24 + 464) = (v22 ^ 1) & 1;
    if ((v20 ^ 1) & 1) != 0 || ((v22 ^ 1))
    {
      if ((v20 ^ 1) & 1) != 0 && ((v22 ^ 1))
      {
        SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)(*(v24 + 216), *(v24 + 288), *(v24 + 224), *(v24 + 232), *(v24 + 280));
        v7 = swift_task_alloc();
        *(v24 + 392) = v7;
        *v7 = *(v24 + 104);
        v7[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v8 = *(v24 + 280);
        v9 = *(v24 + 232);
        v10 = *(v24 + 224);
        v11 = *(v24 + 208);
        v12 = *(v24 + 441) & 1;
      }

      else if ((v20 ^ 1))
      {
        v13 = swift_task_alloc();
        *(v24 + 408) = v13;
        *v13 = *(v24 + 104);
        v13[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v9 = *(v24 + 232);
        v10 = *(v24 + 224);
        v8 = *(v24 + 216);
        v11 = *(v24 + 208);
        v12 = *(v24 + 441) & 1;
      }

      else
      {
        v14 = swift_task_alloc();
        *(v24 + 424) = v14;
        *v14 = *(v24 + 104);
        v14[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v8 = *(v24 + 288);
        v9 = *(v24 + 232);
        v10 = *(v24 + 224);
        v11 = *(v24 + 208);
        v12 = *(v24 + 441) & 1;
      }

      return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v11, v8, v12, v10, v9);
    }

    else
    {
      v17 = *(v24 + 288);
      v16 = *(v24 + 264);
      v15 = *(v24 + 272);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v18 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
      outlined destroy of [HKQuantityType]((v24 + 136));
      outlined destroy of [HKQuantityType]((v24 + 128));
      (*(v15 + 8))(v17, v16);

      v6 = *(*(v24 + 104) + 8);

      return v6(v18);
    }
  }
}

{
  v7 = v0[36];
  v1 = v0[35];
  v2 = v0[34];
  v5 = v0[33];
  v0[13] = v0;
  v6 = *(v2 + 8);
  v6(v1);
  outlined destroy of [HKQuantityType](v0 + 17);
  outlined destroy of [HKQuantityType](v0 + 16);
  (v6)(v7, v5);
  v8 = v0[50];

  v3 = *(v0[13] + 8);

  return v3(v8);
}

{
  v5 = v0[36];
  v3 = v0[34];
  v4 = v0[33];
  v0[13] = v0;
  outlined destroy of [HKQuantityType](v0 + 17);
  outlined destroy of [HKQuantityType](v0 + 16);
  (*(v3 + 8))(v5, v4);
  v6 = v0[52];

  v1 = *(v0[13] + 8);

  return v1(v6);
}

{
  v5 = v0[36];
  v3 = v0[34];
  v4 = v0[33];
  v0[13] = v0;
  outlined destroy of [HKQuantityType](v0 + 17);
  outlined destroy of [HKQuantityType](v0 + 16);
  (*(v3 + 8))(v5, v4);
  v6 = v0[54];

  v1 = *(v0[13] + 8);

  return v1(v6);
}

{
  v38 = v0;
  v1 = v0[41];
  v0[13] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 7);
  v23 = v0[44];
  v2 = v0[32];
  v20 = v0[31];
  v22 = v0[30];
  v3 = v23;
  v0[21] = v23;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v20 + 16))(v2, v21, v22);
  swift_endAccess();
  v4 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v5;

  *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v27;

  v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[3] = v28;

  v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v31, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v33 = buf;
    v34 = v17;
    v35 = v18;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_269912000, v31, v32, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v19[36];
  v12 = v19[33];
  v9 = v19[32];
  v10 = v19[30];
  v11 = v19[34];
  v8 = v19[31];
  MEMORY[0x277D82BD8](v31);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v14 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  outlined destroy of [HKQuantityType](v19 + 17);
  outlined destroy of [HKQuantityType](v19 + 16);
  (*(v11 + 8))(v13, v12);

  v6 = *(v19[13] + 8);

  return v6(v14);
}

{
  v38 = v0;
  v1 = v0[45];
  v0[13] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 7);
  v23 = v0[48];
  v2 = v0[32];
  v20 = v0[31];
  v22 = v0[30];
  v3 = v23;
  v0[21] = v23;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v20 + 16))(v2, v21, v22);
  swift_endAccess();
  v4 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v5;

  *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v27;

  v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[3] = v28;

  v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v31, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v33 = buf;
    v34 = v17;
    v35 = v18;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_269912000, v31, v32, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v19[36];
  v12 = v19[33];
  v9 = v19[32];
  v10 = v19[30];
  v11 = v19[34];
  v8 = v19[31];
  MEMORY[0x277D82BD8](v31);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v14 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  outlined destroy of [HKQuantityType](v19 + 17);
  outlined destroy of [HKQuantityType](v19 + 16);
  (*(v11 + 8))(v13, v12);

  v6 = *(v19[13] + 8);

  return v6(v14);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 104) = *v1;

  v2 = *(*(v4 + 104) + 8);

  return v2(a1);
}

{
  v5 = *v2;
  *(v5 + 104) = *v2;
  *(v5 + 344) = a1;
  *(v5 + 352) = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  else
  {

    v3 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v5 = *v2;
  *(v5 + 104) = *v2;
  *(v5 + 376) = a1;
  *(v5 + 384) = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  else
  {

    v3 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v3 = *v1;
  *(v3 + 104) = *v1;
  *(v3 + 400) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v3 = *v1;
  *(v3 + 104) = *v1;
  *(v3 + 416) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v3 = *v1;
  *(v3 + 104) = *v1;
  *(v3 + 432) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a5;
  *(v5 + 120) = a4;
  *(v5 + 298) = a3 & 1;
  *(v5 + 297) = a2 & 1;
  *(v5 + 112) = a1;
  *(v5 + 56) = v5;
  *(v5 + 64) = 0;
  *(v5 + 296) = 0;
  *(v5 + 304) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 312) = 0;
  *(v5 + 320) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 64) = a1;
  *(v5 + 296) = a2 & 1;
  *(v5 + 304) = a3 & 1;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)()
{
  v1 = *(v0 + 298);
  *(v0 + 56) = v0;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v12 + 192) = v2;
    *v2 = *(v12 + 56);
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v3 = *(v12 + 128);
    v4 = *(v12 + 120);
    v5 = *(v12 + 112);
    v6 = *(v12 + 297) & 1;

    return SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(v5, v6, v4, v3);
  }

  else
  {
    getFallbackDateInterval(specifiedDateInterval:)(*(v12 + 112), *(v12 + 184));
    v8 = swift_task_alloc();
    *(v12 + 200) = v8;
    *v8 = *(v12 + 56);
    v8[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v9 = *(v12 + 128);
    v10 = *(v12 + 120);
    v11 = *(v12 + 112);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v11, 0, v10, v9);
  }
}

{
  v16 = *(v0 + 232);
  v1 = *(v0 + 208);
  *(v0 + 56) = v0;
  *(v0 + 88) = v16;
  *(v0 + 96) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v17 = Collection.isEmpty.getter() ^ 1;
  *(v0 + 312) = v17 & 1;
  *(v0 + 104) = v16;
  v18 = Collection.isEmpty.getter() ^ 1;
  *(v0 + 320) = v18 & 1;
  if (v17 & 1) != 0 || (v18)
  {
    if (v17 & 1) != 0 && (v18)
    {
      SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)(*(v15 + 112), *(v15 + 184), *(v15 + 120), *(v15 + 128), *(v15 + 176));
      v4 = swift_task_alloc();
      *(v15 + 248) = v4;
      *v4 = *(v15 + 56);
      v4[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
      v5 = *(v15 + 176);
      v6 = *(v15 + 128);
      v7 = *(v15 + 120);
      v8 = *(v15 + 297) & 1;
    }

    else if (v17)
    {
      v9 = swift_task_alloc();
      *(v15 + 264) = v9;
      *v9 = *(v15 + 56);
      v9[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
      v6 = *(v15 + 128);
      v7 = *(v15 + 120);
      v5 = *(v15 + 112);
      v8 = *(v15 + 297) & 1;
    }

    else
    {
      v10 = swift_task_alloc();
      *(v15 + 280) = v10;
      *v10 = *(v15 + 56);
      v10[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
      v5 = *(v15 + 184);
      v6 = *(v15 + 128);
      v7 = *(v15 + 120);
      v8 = *(v15 + 297) & 1;
    }

    return SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(v5, v8, v7, v6);
  }

  else
  {
    v12 = *(v15 + 184);
    v13 = *(v15 + 160);
    v11 = *(v15 + 168);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v14 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

    (*(v11 + 8))(v12, v13);

    v2 = *(*(v15 + 56) + 8);

    return v2(v14);
  }
}

{
  v5 = v0[23];
  v1 = v0[22];
  v2 = v0[21];
  v6 = v0[20];
  v0[7] = v0;
  v7 = *(v2 + 8);
  v7(v1);

  (v7)(v5, v6);
  v8 = v0[32];

  v3 = *(v0[7] + 8);

  return v3(v8);
}

{
  v4 = v0[23];
  v3 = v0[21];
  v5 = v0[20];
  v0[7] = v0;

  (*(v3 + 8))(v4, v5);
  v6 = v0[34];

  v1 = *(v0[7] + 8);

  return v1(v6);
}

{
  v4 = v0[23];
  v3 = v0[21];
  v5 = v0[20];
  v0[7] = v0;

  (*(v3 + 8))(v4, v5);
  v6 = v0[36];

  v1 = *(v0[7] + 8);

  return v1(v6);
}

{
  v37 = v0;
  v0[7] = v0;
  v22 = v0[27];
  v1 = v0[19];
  v19 = v0[18];
  v21 = v0[17];
  v2 = v22;
  v0[9] = v22;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v19 + 16))(v1, v20, v21);
  swift_endAccess();
  v3 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(1, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v16;
    v34 = v17;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v16, 1, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v18[23];
  v12 = v18[20];
  v8 = v18[19];
  v9 = v18[17];
  v10 = v18[21];
  v7 = v18[18];
  MEMORY[0x277D82BD8](v30);
  (*(v7 + 8))(v8, v9);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v13 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v10 + 8))(v11, v12);

  v5 = *(v18[7] + 8);

  return v5(v13);
}

{
  v37 = v0;
  v0[7] = v0;

  v22 = v0[30];
  v1 = v0[19];
  v19 = v0[18];
  v21 = v0[17];
  v2 = v22;
  v0[9] = v22;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v19 + 16))(v1, v20, v21);
  swift_endAccess();
  v3 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(1, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v16;
    v34 = v17;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v16, 1, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v18[23];
  v12 = v18[20];
  v8 = v18[19];
  v9 = v18[17];
  v10 = v18[21];
  v7 = v18[18];
  MEMORY[0x277D82BD8](v30);
  (*(v7 + 8))(v8, v9);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v13 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v10 + 8))(v11, v12);

  v5 = *(v18[7] + 8);

  return v5(v13);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 56) = *v1;

  v2 = *(*(v4 + 56) + 8);

  return v2(a1);
}

{
  v9 = *v2;
  v9[7] = *v2;
  v9[26] = a1;
  v9[27] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
  }

  else
  {
    v9[10] = a1;
    v3 = swift_task_alloc();
    v9[28] = v3;
    *v3 = v9[7];
    v3[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v4 = v9[23];
    v5 = v9[16];
    v6 = v9[15];

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v4, 0, v6, v5);
  }
}

{
  v5 = *v2;
  v5[7] = *v2;
  v5[29] = a1;
  v5[30] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v3 = *v1;
  *(v3 + 56) = *v1;
  *(v3 + 256) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v3 = *v1;
  *(v3 + 56) = *v1;
  *(v3 + 272) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v3 = *v1;
  *(v3 + 56) = *v1;
  *(v3 + 288) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1112) = a8;
  *(v8 + 1104) = a7;
  *(v8 + 1096) = a6;
  *(v8 + 1088) = a5;
  *(v8 + 634) = a4;
  *(v8 + 1080) = a3;
  *(v8 + 633) = a2 & 1;
  *(v8 + 1072) = a1;
  *(v8 + 640) = v8;
  *(v8 + 648) = 0;
  *(v8 + 1624) = 0;
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  *(v8 + 512) = 0;
  *(v8 + 520) = 0;
  *(v8 + 656) = 0;
  *(v8 + 664) = 0;
  *(v8 + 528) = 0;
  *(v8 + 536) = 0;
  *(v8 + 680) = 0;
  *(v8 + 712) = 0;
  *(v8 + 720) = 0;
  *(v8 + 736) = 0;
  *(v8 + 560) = 0;
  *(v8 + 568) = 0;
  *(v8 + 1632) = 0;
  *(v8 + 840) = 0;
  *(v8 + 880) = 0;
  *(v8 + 576) = 0;
  *(v8 + 584) = 0;
  *(v8 + 904) = 0;
  *(v8 + 912) = 0;
  *(v8 + 920) = 0;
  *(v8 + 968) = 0;
  *(v8 + 608) = 0;
  *(v8 + 616) = 0;
  *(v8 + 976) = 0;
  *(v8 + 984) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v8 + 1136) = v9;
  *(v8 + 1144) = *(v9 - 8);
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  v10 = type metadata accessor for DateInterval();
  *(v8 + 1184) = v10;
  v13 = *(v10 - 8);
  *(v8 + 1192) = v13;
  *(v8 + 1200) = *(v13 + 64);
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 1224) = v11;
  *(v8 + 1232) = *(v11 - 8);
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 1248) = swift_task_alloc();
  *(v8 + 1256) = swift_task_alloc();
  *(v8 + 1264) = swift_task_alloc();
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 648) = a1;
  *(v8 + 1624) = a2 & 1;
  *(v8 + 624) = a3;
  *(v8 + 632) = a4 & 1;
  *(v8 + 496) = a5;
  *(v8 + 504) = a6;
  *(v8 + 512) = a7;
  *(v8 + 520) = a8;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)(uint64_t a1)
{
  v129 = v1;
  v2 = v1[165];
  v107 = v1[154];
  v109 = v1[153];
  v1[80] = v1;
  v108 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v110 = *(v107 + 16);
  v1[166] = v110;
  v1[167] = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v110(v2, v108, v109);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();
  v1[168] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v113 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v111))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v103 = createStorage<A>(capacity:type:)(0, v101, v101);
    v104 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v106 + 1040) = buf;
    *(v106 + 1048) = v103;
    *(v106 + 1056) = v104;
    serialize(_:at:)(0, (v106 + 1040));
    serialize(_:at:)(0, (v106 + 1040));
    *(v106 + 1064) = v113;
    v105 = swift_task_alloc();
    v105[2] = v106 + 1040;
    v105[3] = v106 + 1048;
    v105[4] = v106 + 1056;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v111, "Got name.", buf, 2u);
    destroyStorage<A>(_:count:)(v103, 0, v101);
    destroyStorage<A>(_:count:)(v104, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v76 = *(v106 + 1320);
  v80 = *(v106 + 1312);
  v87 = *(v106 + 1224);
  v89 = *(v106 + 1216);
  v91 = *(v106 + 1208);
  v92 = *(v106 + 1184);
  v79 = *(v106 + 1176);
  v84 = *(v106 + 1168);
  v81 = *(v106 + 1160);
  v85 = *(v106 + 1152);
  v82 = *(v106 + 1136);
  v75 = *(v106 + 1232);
  v88 = *(v106 + 1192);
  v78 = *(v106 + 1144);
  MEMORY[0x277D82BD8](oslog);
  v77 = *(v75 + 8);
  *(v106 + 1352) = v77;
  *(v106 + 1360) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77(v76, v87);
  Date.init()();
  Date.startOfDay.getter(v84);
  v83 = *(v78 + 8);
  v83(v79, v82);
  Date.init()();
  Date.endOfDay.getter(v85);
  v83(v81, v82);
  DateInterval.init(start:end:)();
  v86 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v110(v80, v86, v87);
  swift_endAccess();
  (*(v88 + 16))(v91, v89, v92);
  v90 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v93 = swift_allocObject();
  (*(v88 + 32))(v93 + v90, v91, v92);
  log = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  v95 = swift_allocObject();
  *(v95 + 16) = 32;
  v96 = swift_allocObject();
  *(v96 + 16) = 8;
  v94 = swift_allocObject();
  *(v94 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v94 + 24) = v93;
  v97 = swift_allocObject();
  *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v97 + 24) = v94;
  _allocateUninitializedArray<A>(_:)();
  v98 = v3;

  *v98 = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[1] = v95;

  v98[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[3] = v96;

  v98[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[5] = v97;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v100))
  {
    v72 = static UnsafeMutablePointer.allocate(capacity:)();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v73 = createStorage<A>(capacity:type:)(0, v71, v71);
    v74 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v124 = v72;
    v125 = v73;
    v126 = v74;
    serialize(_:at:)(2, &v124);
    serialize(_:at:)(1, &v124);
    v127 = partial apply for closure #1 in OSLogArguments.append(_:);
    v128 = v95;
    closure #1 in osLogInternal(_:log:type:)(&v127, &v124, &v125, &v126);
    v127 = partial apply for closure #1 in OSLogArguments.append(_:);
    v128 = v96;
    closure #1 in osLogInternal(_:log:type:)(&v127, &v124, &v125, &v126);
    v127 = partial apply for closure #1 in OSLogArguments.append(_:);
    v128 = v97;
    closure #1 in osLogInternal(_:log:type:)(&v127, &v124, &v125, &v126);
    _os_log_impl(&dword_269912000, log, v100, "searching dateinterval1: %s", v72, 0xCu);
    destroyStorage<A>(_:count:)(v73, 0, v71);
    destroyStorage<A>(_:count:)(v74, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v72, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v64 = *(v106 + 1312);
  v65 = *(v106 + 1224);
  v67 = *(v106 + 1072);
  MEMORY[0x277D82BD8](log);
  v77(v64, v65);
  v66 = swift_allocObject();
  *(v106 + 1368) = v66;
  *(v106 + 656) = v66 + 16;
  *(v106 + 1376) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v66 + 16) = _allocateUninitializedArray<A>(_:)();
  v4 = swift_allocObject();
  *(v106 + 1384) = v4;
  *(v106 + 664) = v4 + 16;
  *(v4 + 16) = 0;

  *(v106 + 672) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v68 = *(v106 + 544);
  v69 = *(v106 + 552);
  *(v106 + 1392) = v69;
  if (v69)
  {
    *(v106 + 608) = v68;
    *(v106 + 616) = v69;
    type metadata accessor for HKMedicationIdentifier();

    v63 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v68, v69);
    *(v106 + 1400) = v63;
    v5 = swift_task_alloc();
    *(v106 + 1408) = v5;
    *v5 = *(v106 + 640);
    v5[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v6 = *(v106 + 1216);
    v7 = *(v106 + 1112);
    v8 = *(v106 + 1104);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v6, v63, v8, v7);
  }

  else
  {
    v55 = *(v106 + 1368);
    v54 = *(v106 + 1328);
    v10 = *(v106 + 1304);
    v53 = *(v106 + 1224);
    outlined destroy of [HKQuantityType]((v106 + 528));
    v52 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v54(v10, v52, v53);
    swift_endAccess();

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v56 + 24) = v55;
    v59 = swift_allocObject();
    *(v59 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v59 + 24) = v56;
    _allocateUninitializedArray<A>(_:)();
    v60 = v11;

    *v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v60[1] = v57;

    v60[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v60[3] = v58;

    v60[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v60[5] = v59;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v61, v62))
    {
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0, v48, v48);
      v51 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v119 = v49;
      v120 = v50;
      v121 = v51;
      serialize(_:at:)(0, &v119);
      serialize(_:at:)(1, &v119);
      v122 = partial apply for closure #1 in OSLogArguments.append(_:);
      v123 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v122, &v119, &v120, &v121);
      v122 = partial apply for closure #1 in OSLogArguments.append(_:);
      v123 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v122, &v119, &v120, &v121);
      v122 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v123 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v122, &v119, &v120, &v121);
      _os_log_impl(&dword_269912000, v61, v62, "starting to get list of scheduled doseEvents (%ld)", v49, 0xCu);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v49, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v40 = *(v106 + 1368);
    v34 = *(v106 + 1352);
    v39 = *(v106 + 1328);
    v33 = *(v106 + 1304);
    v12 = *(v106 + 1296);
    v38 = *(v106 + 1224);
    MEMORY[0x277D82BD8](v61);
    v34(v33, v38);
    swift_beginAccess();
    v35 = *(v40 + 16);

    swift_endAccess();
    v36 = filterUniqueDoseEvents(doseEvents:)(v35, v13);

    swift_beginAccess();
    *(v40 + 16) = v36;

    swift_endAccess();
    v37 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v39(v12, v37, v38);
    swift_endAccess();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v41 + 24) = v40;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v44 + 24) = v41;
    _allocateUninitializedArray<A>(_:)();
    v45 = v14;

    *v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v45[1] = v42;

    v45[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v45[3] = v43;

    v45[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v45[5] = v44;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v46, v47))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v114 = v30;
      v115 = v31;
      v116 = v32;
      serialize(_:at:)(0, &v114);
      serialize(_:at:)(1, &v114);
      v117 = partial apply for closure #1 in OSLogArguments.append(_:);
      v118 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
      v117 = partial apply for closure #1 in OSLogArguments.append(_:);
      v118 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
      v117 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v118 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
      _os_log_impl(&dword_269912000, v46, v47, "Name only: got %ld scheduled doseEvents", v30, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v22 = *(v106 + 1352);
    v20 = *(v106 + 1296);
    v21 = *(v106 + 1224);
    v23 = (*(v106 + 1368) + 16);
    MEMORY[0x277D82BD8](v46);
    v22(v20, v21);
    v24 = swift_allocObject();
    *(v106 + 1432) = v24;
    *(v106 + 680) = v24 + 16;
    swift_beginAccess();
    v25 = *v23;

    swift_endAccess();
    *(v106 + 688) = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    *(v106 + 1440) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    *(v106 + 1448) = v27;
    v15 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    *(v106 + 1456) = v15;
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v26, v27, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v70);
    *(v106 + 1464) = 0;
    outlined destroy of [HKQuantityType]((v106 + 688));
    *(v106 + 696) = v28;
    *(v106 + 1472) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    lazy protocol witness table accessor for type [String?] and conformance [A]();
    *(v106 + 704) = Set.init<A>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSSgGMd, &_sShySSSgGMR);
    lazy protocol witness table accessor for type Set<String?> and conformance Set<A>();
    *(v24 + 16) = Array.init<A>(_:)();
    v16 = swift_task_alloc();
    *(v106 + 1480) = v16;
    *v16 = *(v106 + 640);
    v16[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v17 = *(v106 + 1112);
    v18 = *(v106 + 1104);
    v19 = *(v106 + 1072);

    return SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(v19, 0, 1, 0, 0, 1, v18, v17);
  }
}

{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[80] = *v2;
  v6[177] = a1;
  v6[178] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  }

  else
  {

    v3 = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v3 = *v1;
  *(v3 + 640) = *v1;
  *(v3 + 1488) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v3 = *v1;
  *(v3 + 640) = *v1;
  *(v3 + 1544) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v3 = *v1;
  *(v3 + 640) = *v1;
  *(v3 + 1576) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v2 = *(v1 + 1576);
  *(v1 + 640) = v1;
  if (v2)
  {
    v31 = *(v32 + 1560);
    MEMORY[0x277D82BD8](*(v32 + 1576));
    v3 = swift_task_alloc();
    *(v32 + 1584) = v3;
    *v3 = *(v32 + 640);
    v3[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v4 = *(v32 + 1112);
    v5 = *(v32 + 1104);
    v6 = *(v32 + 633) & 1;

    return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v31, v6, v5, v4);
  }

  else
  {
    v27 = *(v32 + 1328);
    v8 = *(v32 + 1256);
    v26 = *(v32 + 1224);
    v25 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v27(v8, v25, v26);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v28))
    {
      v9 = *(v32 + 1552);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(0, v20, v20);
      v23 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v32 + 848) = buf;
      *(v32 + 856) = v22;
      *(v32 + 864) = v23;
      serialize(_:at:)(0, (v32 + 848));
      serialize(_:at:)(0, (v32 + 848));
      *(v32 + 872) = v30;
      v24 = swift_task_alloc();
      v24[2] = v32 + 848;
      v24[3] = v32 + 856;
      v24[4] = v32 + 864;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v9)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v28, "Got a complex med request wrt dosage/dosageUnit in first turn, skipping confirmAsScheduled & punching out.", buf, 2u);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v32 + 1496);
    v13 = *(v32 + 1352);
    v11 = *(v32 + 1256);
    v12 = *(v32 + 1224);
    v17 = *(v32 + 1216);
    v18 = *(v32 + 1184);
    v14 = *(v32 + 1560);
    v16 = *(v32 + 1192);
    MEMORY[0x277D82BD8](oslog);
    v13(v11, v12);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v19 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(112, 0);
    MEMORY[0x277D82BD8](v14);

    MEMORY[0x277D82BD8](v15);

    (*(v16 + 8))(v17, v18);

    v10 = *(*(v32 + 640) + 8);

    return v10(v19);
  }
}

{
  v3 = *v1;
  *(v3 + 640) = *v1;
  *(v3 + 1592) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 1112);
  *(v4 + 640) = *v1;
  *(v4 + 1616) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)()
{
  v82 = v0;
  v70 = v0[177];
  v0[80] = v0;

  v0[122] = v70;

  v0[128] = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();
  v0[129] = v70;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v71 = Collection.isEmpty.getter();

  result = v71;
  if ((v71 & 1) == 0)
  {
    v6 = *(v69[173] + 16);
    v65 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    *(v69[173] + 16) = v65;
  }

  outlined destroy of [HKQuantityType](v69 + 122);

  v64 = v69[178];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v67 = v69[68];
  v66 = v69[69];
  v69[174] = v66;
  if (v66)
  {
    v69[76] = v67;
    v69[77] = v66;
    type metadata accessor for HKMedicationIdentifier();

    v68 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)(v67, v66);
    v69[175] = v68;
    v2 = swift_task_alloc();
    v69[176] = v2;
    *v2 = v69[80];
    v2[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v3 = v69[152];
    v4 = v69[139];
    v5 = v69[138];

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v3, v68, v5, v4);
  }

  else
  {
    v56 = v69[171];
    v55 = v69[166];
    v8 = v69[163];
    v54 = v69[153];
    outlined destroy of [HKQuantityType](v69 + 66);
    v53 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v55(v8, v53, v54);
    swift_endAccess();

    oslog = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v57 + 24) = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v60 + 24) = v57;
    _allocateUninitializedArray<A>(_:)();
    v61 = v9;

    *v61 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[1] = v58;

    v61[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[3] = v59;

    v61[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v61[5] = v60;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v63))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v77 = buf;
      v78 = v51;
      v79 = v52;
      serialize(_:at:)(0, &v77);
      serialize(_:at:)(1, &v77);
      v80 = partial apply for closure #1 in OSLogArguments.append(_:);
      v81 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
      if (v64)
      {
      }

      v80 = partial apply for closure #1 in OSLogArguments.append(_:);
      v81 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
      v80 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v81 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
      _os_log_impl(&dword_269912000, oslog, v63, "starting to get list of scheduled doseEvents (%ld)", buf, 0xCu);
      destroyStorage<A>(_:count:)(v51, 0, v49);
      destroyStorage<A>(_:count:)(v52, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v47 = 0;
    }

    else
    {

      v47 = v64;
    }

    v39 = v69[171];
    v33 = v69[169];
    v38 = v69[166];
    v32 = v69[163];
    v10 = v69[162];
    v37 = v69[153];
    MEMORY[0x277D82BD8](oslog);
    v33(v32, v37);
    swift_beginAccess();
    v34 = *(v39 + 16);

    swift_endAccess();
    v35 = filterUniqueDoseEvents(doseEvents:)(v34, v11);

    swift_beginAccess();
    *(v39 + 16) = v35;

    swift_endAccess();
    v36 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v38(v10, v36, v37);
    swift_endAccess();

    log = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v40 + 24) = v39;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v43 + 24) = v40;
    _allocateUninitializedArray<A>(_:)();
    v44 = v12;

    *v44 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[1] = v41;

    v44[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[3] = v42;

    v44[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v44[5] = v43;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v46))
    {
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0, v28, v28);
      v31 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v72 = v29;
      v73 = v30;
      v74 = v31;
      serialize(_:at:)(0, &v72);
      serialize(_:at:)(1, &v72);
      v75 = partial apply for closure #1 in OSLogArguments.append(_:);
      v76 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v75, &v72, &v73, &v74);
      if (v47)
      {
      }

      v75 = partial apply for closure #1 in OSLogArguments.append(_:);
      v76 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v75, &v72, &v73, &v74);
      v75 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v76 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v75, &v72, &v73, &v74);
      _os_log_impl(&dword_269912000, log, v46, "Name only: got %ld scheduled doseEvents", v29, 0xCu);
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v31, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v29, MEMORY[0x277D84B78]);

      v27 = 0;
    }

    else
    {

      v27 = v47;
    }

    v20 = v69[169];
    v18 = v69[162];
    v19 = v69[153];
    v21 = (v69[171] + 16);
    MEMORY[0x277D82BD8](log);
    v20(v18, v19);
    v22 = swift_allocObject();
    v69[179] = v22;
    v69[85] = v22 + 16;
    swift_beginAccess();
    v23 = *v21;

    swift_endAccess();
    v69[86] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    v69[180] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v69[181] = v25;
    v13 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v69[182] = v13;
    result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v24, v25, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v48);
    v26 = result;
    v69[183] = v27;
    if (!v27)
    {
      outlined destroy of [HKQuantityType](v69 + 86);
      v69[87] = v26;
      v69[184] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
      lazy protocol witness table accessor for type String? and conformance <A> A?();
      lazy protocol witness table accessor for type [String?] and conformance [A]();
      v69[88] = Set.init<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSSgGMd, &_sShySSSgGMR);
      lazy protocol witness table accessor for type Set<String?> and conformance Set<A>();
      *(v22 + 16) = Array.init<A>(_:)();
      v14 = swift_task_alloc();
      v69[185] = v14;
      *v14 = v69[80];
      v14[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
      v15 = v69[139];
      v16 = v69[138];
      v17 = v69[134];

      return SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(v17, 0, 1, 0, 0, 1, v16, v15);
    }
  }

  return result;
}

{
  v190 = v0;
  isa = v0[186].super.super.isa;
  v1 = v0[183].super.super.isa;
  v172 = v0[172].super.super.isa;
  v0[80].super.super.isa = v0;
  v0[89].super.super.isa = isa;
  type metadata accessor for NSNumber();
  v169.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v0[187].super.super.isa = v169.super.super.isa;
  v0[90].super.super.isa = v169.super.super.isa;
  v0[91].super.super.isa = isa;
  MEMORY[0x277D82BE0](v169.super.super.isa);
  v170 = swift_task_alloc();
  v170[2].super.super.isa = v169.super.super.isa;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  v2 = lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v174 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), v170, v171, v172, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v173);
  v0[188].super.super.isa = v174;
  if (v1)
  {
    return MEMORY[0x277D82BD8](v169.super.super.isa);
  }

  v158 = *(v167 + 1328);
  v3 = *(v167 + 1288);
  v157 = *(v167 + 1224);

  MEMORY[0x277D82BD8](v169.super.super.isa);
  *(v167 + 736) = v174;
  v156 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v158(v3, v156, v157);
  swift_endAccess();

  v159 = swift_allocObject();
  *(v159 + 16) = v174;
  oslog = Logger.logObject.getter();
  v166 = static os_log_type_t.debug.getter();
  v161 = swift_allocObject();
  *(v161 + 16) = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = 8;
  v160 = swift_allocObject();
  *(v160 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v160 + 24) = v159;
  v163 = swift_allocObject();
  *(v163 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v163 + 24) = v160;
  _allocateUninitializedArray<A>(_:)();
  v164 = v4;

  *v164 = partial apply for closure #1 in OSLogArguments.append(_:);
  v164[1] = v161;

  v164[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v164[3] = v162;

  v164[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v164[5] = v163;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v166))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v154 = createStorage<A>(capacity:type:)(0, v152, v152);
    v155 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v185 = buf;
    v186 = v154;
    v187 = v155;
    serialize(_:at:)(0, &v185);
    serialize(_:at:)(1, &v185);
    v188 = partial apply for closure #1 in OSLogArguments.append(_:);
    v189 = v161;
    closure #1 in osLogInternal(_:log:type:)(&v188, &v185, &v186, &v187);
    v188 = partial apply for closure #1 in OSLogArguments.append(_:);
    v189 = v162;
    closure #1 in osLogInternal(_:log:type:)(&v188, &v185, &v186, &v187);
    v188 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v189 = v163;
    closure #1 in osLogInternal(_:log:type:)(&v188, &v185, &v186, &v187);
    _os_log_impl(&dword_269912000, oslog, v166, "Name only: created %ld as needed doseEvents with matching name", buf, 0xCu);
    destroyStorage<A>(_:count:)(v154, 0, v152);
    destroyStorage<A>(_:count:)(v155, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v151 = *(v167 + 1352);
  v149 = *(v167 + 1288);
  v150 = *(v167 + 1224);
  MEMORY[0x277D82BD8](oslog);
  v151(v149, v150);

  *(v167 + 744) = v174;
  swift_beginAccess();
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();
  swift_endAccess();

  *(v167 + 752) = v174;
  Collection<>.makeIterator()();
  while (1)
  {
    *(v167 + 1512) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v148 = *(v167 + 760);
    if (!v148)
    {
      break;
    }

    *(v167 + 968) = v148;
    v147 = [v148 scheduleItemIdentifier];
    if (v147)
    {
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v5;
      MEMORY[0x277D82BD8](v147);
      v145 = v143;
      v146 = v144;
    }

    else
    {
      v145 = 0;
      v146 = 0;
    }

    *(v167 + 592) = v145;
    *(v167 + 600) = v146;
    Array.append(_:)();
    MEMORY[0x277D82BD8](v148);
  }

  v140 = (*(v167 + 1368) + 16);
  outlined destroy of [HKQuantityType]((v167 + 560));
  swift_beginAccess();
  v141 = *v140;

  swift_endAccess();
  *(v167 + 768) = v141;
  v142 = Collection.isEmpty.getter();

  if (v142)
  {
    v136 = *(v167 + 1328);
    v6 = *(v167 + 1280);
    v135 = *(v167 + 1224);
    v134 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v136(v6, v134, v135);
    swift_endAccess();
    log = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    v139 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v137))
    {
      v130 = static UnsafeMutablePointer.allocate(capacity:)();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v131 = createStorage<A>(capacity:type:)(0, v129, v129);
      v132 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v167 + 936) = v130;
      *(v167 + 944) = v131;
      *(v167 + 952) = v132;
      serialize(_:at:)(0, (v167 + 936));
      serialize(_:at:)(0, (v167 + 936));
      *(v167 + 960) = v139;
      v133 = swift_task_alloc();
      v133[2] = v167 + 936;
      v133[3] = v167 + 944;
      v133[4] = v167 + 952;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v137, "Name specified, but no potential time match nor as needed match found. Returning .noMatchFound.", v130, 2u);
      destroyStorage<A>(_:count:)(v131, 0, v129);
      destroyStorage<A>(_:count:)(v132, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v130, MEMORY[0x277D84B78]);
    }

    v123 = *(v167 + 1352);
    v121 = *(v167 + 1280);
    v122 = *(v167 + 1224);
    v125 = *(v167 + 1216);
    v126 = *(v167 + 1184);
    v124 = *(v167 + 1192);
    MEMORY[0x277D82BD8](log);
    v123(v121, v122);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v127 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

    MEMORY[0x277D82BD8](v169.super.super.isa);

    (*(v124 + 8))(v125, v126);
    v128 = v127;
    goto LABEL_47;
  }

  v118 = *(v167 + 1448);
  v119 = *(*(v167 + 1432) + 16);

  v120 = MEMORY[0x26D6494A0](v119, v118);

  if (v120 > 1 || *(*(v167 + 1384) + 16) > 1)
  {
    v103 = *(v167 + 1432);
    v106 = *(v167 + 1384);
    v102 = *(v167 + 1328);
    v7 = *(v167 + 1272);
    v101 = *(v167 + 1224);
    v100 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v102(v7, v100, v101);
    swift_endAccess();

    v104 = swift_allocObject();
    *(v104 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v104 + 24) = v103;

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    v108 = swift_allocObject();
    *(v108 + 16) = 32;
    v109 = swift_allocObject();
    *(v109 + 16) = 8;
    v105 = swift_allocObject();
    *(v105 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3;
    *(v105 + 24) = v104;
    v110 = swift_allocObject();
    *(v110 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v110 + 24) = v105;
    v111 = swift_allocObject();
    *(v111 + 16) = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = 8;
    v107 = swift_allocObject();
    *(v107 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v107 + 24) = v106;
    v113 = swift_allocObject();
    *(v113 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v113 + 24) = v107;
    _allocateUninitializedArray<A>(_:)();
    v114 = v8;

    *v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v114[1] = v108;

    v114[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v114[3] = v109;

    v114[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v114[5] = v110;

    v114[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v114[7] = v111;

    v114[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v114[9] = v112;

    v114[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v114[11] = v113;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v115, v116))
    {
      v97 = static UnsafeMutablePointer.allocate(capacity:)();
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v98 = createStorage<A>(capacity:type:)(0, v96, v96);
      v99 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v180 = v97;
      v181 = v98;
      v182 = v99;
      serialize(_:at:)(2, &v180);
      serialize(_:at:)(2, &v180);
      v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v184 = v108;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
      v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v184 = v109;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
      v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v184 = v110;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
      v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v184 = v111;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
      v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v184 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
      v183 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v184 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v183, &v180, &v181, &v182);
      _os_log_impl(&dword_269912000, v115, v116, "Multiple times (%s) or strengths (%ld) found for specified name today, now returning .needsNameDisambiguation", v97, 0x16u);
      destroyStorage<A>(_:count:)(v98, 0, v96);
      destroyStorage<A>(_:count:)(v99, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v97, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v92 = *(v167 + 1352);
    v90 = *(v167 + 1272);
    v91 = *(v167 + 1224);
    v93 = (*(v167 + 1368) + 16);
    MEMORY[0x277D82BD8](v115);
    v92(v90, v91);
    *(v167 + 1520) = type metadata accessor for MatchedMedName();
    *(v167 + 880) = _allocateUninitializedArray<A>(_:)();
    swift_beginAccess();
    v94 = *v93;

    swift_endAccess();
    *(v167 + 888) = v94;
    Collection<>.makeIterator()();
    IndexingIterator.next()();
    v95 = *(v167 + 896);
    *(v167 + 1528) = v95;
    if (!v95)
    {
      v85 = *(v167 + 1496);
      v87 = *(v167 + 1216);
      v88 = *(v167 + 1184);
      v86 = *(v167 + 1192);
      outlined destroy of [HKQuantityType]((v167 + 576));
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v89 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
      MEMORY[0x277D82BE0](v89);
      *(v167 + 904) = v89;

      v84 = Array._bridgeToObjectiveC()().super.isa;

      [v89 setMatchingMeds_];
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](*(v167 + 904));
      outlined destroy of [HKQuantityType]((v167 + 880));

      MEMORY[0x277D82BD8](v85);

      (*(v86 + 8))(v87, v88);
      v128 = v89;
LABEL_47:

      v28 = *(*(v167 + 640) + 8);

      return v28(v128);
    }

    *(v167 + 912) = v95;
    v9 = swift_task_alloc();
    *(v167 + 1536) = v9;
    *v9 = *(v167 + 640);
    v9[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v10 = *(v167 + 1112);
    v11 = *(v167 + 1104);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v95, 1, v11, v10);
  }

  else
  {
    v72 = *(v167 + 1328);
    v13 = *(v167 + 1264);
    v71 = *(v167 + 1224);
    v73 = *(v167 + 633);
    v70 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v72(v13, v70, v71);
    swift_endAccess();
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 4;
    v75 = swift_allocObject();
    *(v75 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v75 + 24) = v74;
    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v76 + 24) = v75;
    v77 = swift_allocObject();
    *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v77 + 24) = v76;
    v80 = swift_allocObject();
    *(v80 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v80 + 24) = v77;
    _allocateUninitializedArray<A>(_:)();
    v81 = v14;

    *v81 = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[1] = v78;

    v81[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v81[3] = v79;

    v81[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v81[5] = v80;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v82, v83))
    {
      v67 = static UnsafeMutablePointer.allocate(capacity:)();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v68 = createStorage<A>(capacity:type:)(0, v66, v66);
      v69 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v175 = v67;
      v176 = v68;
      v177 = v69;
      serialize(_:at:)(0, &v175);
      serialize(_:at:)(1, &v175);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      v178 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v179 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      _os_log_impl(&dword_269912000, v82, v83, "Calling writeDoseEvent() for specified name with medStatus: %{BOOL}d", v67, 8u);
      destroyStorage<A>(_:count:)(v68, 0, v66);
      destroyStorage<A>(_:count:)(v69, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v67, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    *(v167 + 1552) = 0;
    v62 = *(v167 + 1352);
    v60 = *(v167 + 1264);
    v61 = *(v167 + 1224);
    v63 = (*(v167 + 1368) + 16);
    MEMORY[0x277D82BD8](v82);
    v62(v60, v61);
    swift_beginAccess();
    v64 = *v63;

    swift_endAccess();
    *(v167 + 776) = v64;
    Collection.first.getter();
    v65 = *(v167 + 784);

    if (v65)
    {
      v59 = [v65 scheduledDate];
      if (v59)
      {
        v56 = *(v167 + 1176);
        v57 = *(v167 + 1136);
        v58 = *(v167 + 1120);
        v55 = *(v167 + 1144);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v55 + 32))(v58, v56, v57);
        (*(v55 + 56))(v58, 0, 1, v57);
        MEMORY[0x277D82BD8](v59);
      }

      else
      {
        (*(*(v167 + 1144) + 56))(*(v167 + 1120), 1, 1, *(v167 + 1136));
      }

      outlined init with take of Date?(*(v167 + 1120), *(v167 + 1128));
      MEMORY[0x277D82BD8](v65);
    }

    else
    {
      (*(*(v167 + 1144) + 56))(*(v167 + 1128), 1, 1, *(v167 + 1136));
    }

    v54 = (*(*(v167 + 1144) + 48))(*(v167 + 1128), 1, *(v167 + 1136)) != 1;
    outlined destroy of Date?(*(v167 + 1128));
    *(v167 + 1632) = v54;
    if (v54)
    {
      v51 = *(v167 + 1368);
      swift_beginAccess();
      v52 = *(v51 + 16);

      swift_endAccess();
      *(v167 + 792) = v52;
      Collection.first.getter();
      v53 = *(v167 + 800);
      *(v167 + 1560) = v53;
      if (!v53)
      {
        v46 = *(v167 + 1328);
        v21 = *(v167 + 1248);
        v45 = *(v167 + 1224);

        v44 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        v46(v21, v44, v45);
        swift_endAccess();
        v48 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        v49 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v48, v47))
        {
          v40 = static UnsafeMutablePointer.allocate(capacity:)();
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v41 = createStorage<A>(capacity:type:)(0, v39, v39);
          v42 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v167 + 808) = v40;
          *(v167 + 816) = v41;
          *(v167 + 824) = v42;
          serialize(_:at:)(0, (v167 + 808));
          serialize(_:at:)(0, (v167 + 808));
          *(v167 + 832) = v49;
          v43 = swift_task_alloc();
          v43[2] = v167 + 808;
          v43[3] = v167 + 816;
          v43[4] = v167 + 824;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, v48, v47, "Should have at least one dose event to start confirmation, but found none. Returning failure.", v40, 2u);
          destroyStorage<A>(_:count:)(v41, 0, v39);
          destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
        }

        v34 = *(v167 + 1352);
        v32 = *(v167 + 1248);
        v33 = *(v167 + 1224);
        v36 = *(v167 + 1216);
        v37 = *(v167 + 1184);
        v35 = *(v167 + 1192);
        MEMORY[0x277D82BD8](v48);
        v34(v32, v33);
        type metadata accessor for LogSpecificMedicationsIntentResponse();
        v38 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

        MEMORY[0x277D82BD8](v169.super.super.isa);

        (*(v35 + 8))(v36, v37);
        v128 = v38;
        goto LABEL_47;
      }

      v50 = *(v167 + 634);
      *(v167 + 840) = v53;

      v15 = swift_task_alloc();
      *(v167 + 1568) = v15;
      *v15 = *(v167 + 640);
      v15[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
      v16 = *(v167 + 1112);
      v17 = *(v167 + 1104);
      v18 = *(v167 + 1096);
      v19 = *(v167 + 1088);
      v20 = *(v167 + 1080);

      return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v53, v20, v50 & 1, v19, v18, v17, v16);
    }

    else
    {
      v31 = *(v167 + 634);
      v29 = (*(v167 + 1368) + 16);
      MEMORY[0x277D82BE0](*(v167 + 1112));
      swift_beginAccess();
      v30 = *v29;
      *(v167 + 1600) = *v29;

      swift_endAccess();
      v22 = swift_task_alloc();
      *(v167 + 1608) = v22;
      *v22 = *(v167 + 640);
      v22[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
      v23 = *(v167 + 1112);
      v24 = *(v167 + 1096);
      v25 = *(v167 + 1088);
      v26 = *(v167 + 1080);
      v27 = *(v167 + 633);
      v192 = *(v167 + 1104);
      v193 = v23;

      return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v23, v30, v27 & 1, 1, v26, v31 & 1, v25, v24);
    }
  }
}

{
  v12 = v0[193];
  v13 = v0[191];
  v0[80] = v0;
  v0[115] = v12;
  MEMORY[0x277D82BE0](v12);
  v0[116] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  IndexingIterator.next()();
  v15 = v14[112];
  v14[191] = v15;
  if (v15)
  {
    v14[114] = v15;
    v1 = swift_task_alloc();
    v14[192] = v1;
    *v1 = v14[80];
    v1[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v2 = v14[139];
    v3 = v14[138];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v15, 1, v3, v2);
  }

  else
  {
    v7 = v14[187];
    v9 = v14[152];
    v10 = v14[148];
    v8 = v14[149];
    outlined destroy of [HKQuantityType](v14 + 72);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v11 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    MEMORY[0x277D82BE0](v11);
    v14[113] = v11;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v14[113]);
    outlined destroy of [HKQuantityType](v14 + 110);

    MEMORY[0x277D82BD8](v7);

    (*(v8 + 8))(v9, v10);

    v5 = *(v14[80] + 8);

    return v5(v11);
  }
}

{
  v1 = v0[195];
  v4 = v0[187];
  v6 = v0[152];
  v5 = v0[149];
  v7 = v0[148];
  v0[80] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v4);

  (*(v5 + 8))(v6, v7);
  v8 = v0[199];

  v2 = *(v0[80] + 8);

  return v2(v8);
}

{
  v3 = v0[187];
  v5 = v0[152];
  v4 = v0[149];
  v6 = v0[148];
  v0[80] = v0;

  MEMORY[0x277D82BD8](v3);

  (*(v4 + 8))(v5, v6);
  v7 = v0[202];

  v1 = *(v0[80] + 8);

  return v1(v7);
}

{
  v20 = v0[178];
  v1 = v0[175];
  v23 = v0[166];
  v2 = v0[155];
  v22 = v0[153];
  v0[80] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 66);

  v3 = v20;
  v0[123] = v20;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v23(v2, v21, v22);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v19 + 992) = buf;
    *(v19 + 1000) = v16;
    *(v19 + 1008) = v17;
    serialize(_:at:)(0, (v19 + 992));
    serialize(_:at:)(0, (v19 + 992));
    *(v19 + 1016) = v26;
    v18 = swift_task_alloc();
    v18[2] = v19 + 992;
    v18[3] = v19 + 1000;
    v18[4] = v19 + 1008;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v24, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v19 + 1424);
  v8 = *(v19 + 1352);
  v6 = *(v19 + 1240);
  v7 = *(v19 + 1224);
  v11 = *(v19 + 1216);
  v12 = *(v19 + 1184);
  v10 = *(v19 + 1192);
  MEMORY[0x277D82BD8](oslog);
  v8(v6, v7);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v13 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v10 + 8))(v11, v12);

  v4 = *(*(v19 + 640) + 8);

  return v4(v13);
}

uint64_t SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v24;
  *(v8 + 264) = v23;
  *(v8 + 256) = v22;
  *(v8 + 248) = v21;
  *(v8 + 115) = v20;
  *(v8 + 240) = a8;
  *(v8 + 232) = a7;
  *(v8 + 224) = a6;
  *(v8 + 114) = a5;
  *(v8 + 216) = a4;
  *(v8 + 113) = a3 & 1;
  *(v8 + 208) = a2;
  *(v8 + 200) = a1;
  *(v8 + 136) = v8;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 360) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 144) = 0;
  *(v8 + 160) = 0;
  v11 = type metadata accessor for Logger();
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 360) = a3 & 1;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5 & 1;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 120) = a8;
  *(v8 + 128) = v20 & 1;
  *(v8 + 72) = v21;
  *(v8 + 80) = v22;
  *(v8 + 88) = v23;
  *(v8 + 96) = v24;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(uint64_t a1)
{
  v2 = v1[37];
  v26 = v1[36];
  v28 = v1[35];
  v1[17] = v1;
  v27 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v26 + 16))(v2, v27, v28);
  swift_endAccess();
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0, v20, v20);
    v23 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v25 + 168) = buf;
    *(v25 + 176) = v22;
    *(v25 + 184) = v23;
    serialize(_:at:)(0, (v25 + 168));
    serialize(_:at:)(0, (v25 + 168));
    *(v25 + 192) = v31;
    v24 = swift_task_alloc();
    v24[2] = v25 + 168;
    v24[3] = v25 + 176;
    v24[4] = v25 + 184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v30, v29, "Starting to save As Needed Medication whose strength we know post-disambiguation", buf, 2u);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v25 + 304) = 0;
  v13 = *(v25 + 296);
  v14 = *(v25 + 280);
  v18 = *(v25 + 115);
  v17 = *(v25 + 208);
  v15 = *(v25 + 200);
  v12 = *(v25 + 288);
  MEMORY[0x277D82BD8](v30);
  (*(v12 + 8))(v13, v14);
  _allocateUninitializedArray<A>(_:)();
  v16 = v3;

  *v16 = v15;
  v16[1] = v17;
  _finalizeUninitializedArray<A>(_:)();
  v19 = v4;
  *(v25 + 312) = v4;
  v5 = swift_task_alloc();
  *(v25 + 320) = v5;
  *v5 = *(v25 + 136);
  v5[1] = SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:);
  v6 = *(v25 + 272);
  v7 = *(v25 + 264);
  v8 = *(v25 + 256);
  v9 = *(v25 + 248);
  v10 = *(v25 + 240);

  return SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(v19, v10, v18 & 1, v9, v8, 0, v7, v6);
}

{
  v3 = *v1;
  *(v3 + 136) = *v1;
  *(v3 + 328) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), 0);
}

{
  v4 = *v1;
  v3 = *(*v1 + 272);
  *(v4 + 136) = *v1;
  *(v4 + 352) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)()
{
  v1 = v0[41];
  v2 = v0[38];
  v0[17] = v0;
  v0[18] = v1;
  v0[19] = v1;
  v14 = swift_task_alloc();
  *(v14 + 16) = -1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  v16 = type metadata accessor for HKMedicationExposableDoseEvent();
  v3 = lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), v14, v15, v16, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v17);
  v18 = result;
  v0[42] = result;
  if (!v2)
  {
    v11 = *(v13 + 272);
    v12 = *(v13 + 114);

    *(v13 + 160) = v18;
    MEMORY[0x277D82BE0](v11);
    v5 = swift_task_alloc();
    *(v13 + 344) = v5;
    *v5 = *(v13 + 136);
    v5[1] = SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:);
    v6 = *(v13 + 272);
    v7 = *(v13 + 232);
    v8 = *(v13 + 224);
    v9 = *(v13 + 216);
    v10 = *(v13 + 113) & 1;

    return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v6, v18, v10, 1, v9, v12 & 1, v8, v7);
  }

  return result;
}

{
  *(v0 + 136) = v0;

  v1 = *(*(v0 + 136) + 8);
  v2 = *(v0 + 352);

  return v1(v2);
}

uint64_t SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = a8;
  *(v8 + 224) = a7;
  *(v8 + 130) = a6 & 1;
  *(v8 + 216) = a5;
  *(v8 + 208) = a4;
  *(v8 + 129) = a3;
  *(v8 + 200) = a2;
  *(v8 + 192) = a1;
  *(v8 + 136) = v8;
  *(v8 + 144) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 344) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 152) = 0;
  *(v8 + 184) = 0;
  v9 = type metadata accessor for Logger();
  *(v8 + 240) = v9;
  *(v8 + 248) = *(v9 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 144) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3 & 1;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 344) = a6 & 1;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:), 0);
}

uint64_t SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)()
{
  v35 = v0;
  v1 = v0[34];
  v17 = v0[31];
  v19 = v0[30];
  v20 = v0[24];
  v0[17] = v0;
  v18 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v17 + 16);
  v0[35] = v2;
  v0[36] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v18, v19);
  swift_endAccess();

  v21 = swift_allocObject();
  *(v21 + 16) = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v22 + 24) = v21;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v26 + 24) = v23;
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[1] = v24;

  v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[3] = v25;

  v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v14;
    v32 = v15;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_269912000, v28, v29, "Attempting to getMedicationsMatching for medicationIDs: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[34];
  v11 = v16[30];
  v9 = v16[31];
  MEMORY[0x277D82BD8](v28);
  v4 = *(v9 + 8);
  v16[38] = v4;
  v16[39] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v10, v11);
  v5 = swift_task_alloc();
  v16[40] = v5;
  *v5 = v16[17];
  v5[1] = SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
  v6 = v16[29];
  v7 = v16[28];

  return SpecificMedicationsPersistor.doUTCQueryForMedications()(v7, v6);
}

{
  v41 = v0;
  v1 = v0[42];
  v2 = v0[41];
  v34 = v0[24];
  v0[17] = v0;
  v0[20] = v2;

  *(swift_task_alloc() + 16) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v35 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
  }

  else
  {
    v31 = *(v33 + 130);

    *(v33 + 168) = v35;
    *(swift_task_alloc() + 16) = v31;
    v32 = _ArrayProtocol.filter(_:)();
    v28 = *(v33 + 216);
    v27 = *(v33 + 208);
    v26 = *(v33 + 129);
    v25 = *(v33 + 200);

    *(v33 + 176) = v32;

    v29 = swift_task_alloc();
    *(v29 + 16) = v25;
    *(v29 + 24) = v26 & 1;
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    v30 = _ArrayProtocol.filter(_:)();
    v16 = *(v33 + 280);
    v3 = *(v33 + 264);
    v15 = *(v33 + 240);

    *(v33 + 184) = v30;
    v14 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v16(v3, v14, v15);
    swift_endAccess();

    v17 = swift_allocObject();
    *(v17 + 16) = v30;
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v21 + 24) = v18;
    _allocateUninitializedArray<A>(_:)();
    v22 = v4;

    *v22 = partial apply for closure #1 in OSLogArguments.append(_:);
    v22[1] = v19;

    v22[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v22[3] = v20;

    v22[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v22[5] = v21;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v24))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v12 = createStorage<A>(capacity:type:)(0, v10, v10);
      v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v36 = buf;
      v37 = v12;
      v38 = v13;
      serialize(_:at:)(0, &v36);
      serialize(_:at:)(1, &v36);
      v39 = partial apply for closure #1 in OSLogArguments.append(_:);
      v40 = v19;
      closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
      v39 = partial apply for closure #1 in OSLogArguments.append(_:);
      v40 = v20;
      closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
      v39 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v40 = v21;
      closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
      _os_log_impl(&dword_269912000, oslog, v24, "got matchingUserTrackedMeds: %ld", buf, 0xCu);
      destroyStorage<A>(_:count:)(v12, 0, v10);
      destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v9 = *(v33 + 304);
    v7 = *(v33 + 264);
    v8 = *(v33 + 240);
    MEMORY[0x277D82BD8](oslog);
    v9(v7, v8);

    v5 = *(*(v33 + 136) + 8);

    return v5(v30);
  }
}

{
  v35 = v0;
  v20 = v0[42];
  v19 = v0[35];
  v1 = v0[32];
  v18 = v0[30];
  v0[17] = v0;
  v2 = v20;
  v0[19] = v20;
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v19(v1, v17, v18);
  swift_endAccess();
  v3 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v26 + 24) = v23;
  _allocateUninitializedArray<A>(_:)();
  v27 = v4;

  *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[1] = v24;

  v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[3] = v25;

  v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(1, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v14;
    v32 = v15;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_269912000, v28, v29, "Error doing UTC Query for Medications: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 1, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[42];
  v9 = v16[38];
  v7 = v16[32];
  v8 = v16[30];
  MEMORY[0x277D82BD8](v28);
  v9(v7, v8);
  type metadata accessor for HKUserTrackedMedication();
  v11 = _allocateUninitializedArray<A>(_:)();

  v5 = *(v16[17] + 8);

  return v5(v11);
}

uint64_t SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(uint64_t a1)
{
  v5 = *v2;
  v5[17] = *v2;
  v5[41] = a1;
  v5[42] = v1;

  if (v1)
  {
    v3 = SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
  }

  else
  {
    v3 = SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

id closure #1 in SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)@<X0>(uint64_t *a1@<X0>, Swift::Int a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = objc_opt_self();
  type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(a2).super.super.isa;
  v8 = [v6 asNeededExposableDoseEventForMedication:v5 doseQuantity:?];
  MEMORY[0x277D82BD8](isa);
  result = v8;
  *a3 = v8;
  return result;
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1048) = v22;
  *(v8 + 1040) = v21;
  *(v8 + 1032) = a8;
  *(v8 + 1024) = a7;
  *(v8 + 555) = a6;
  *(v8 + 1016) = a5;
  *(v8 + 554) = a4 & 1;
  *(v8 + 553) = a3 & 1;
  *(v8 + 1008) = a2;
  *(v8 + 1000) = a1;
  *(v8 + 560) = v8;
  *(v8 + 568) = 0;
  *(v8 + 576) = 0;
  *(v8 + 1432) = 0;
  *(v8 + 1440) = 0;
  *(v8 + 544) = 0;
  *(v8 + 552) = 0;
  *(v8 + 384) = 0;
  *(v8 + 392) = 0;
  *(v8 + 400) = 0;
  *(v8 + 408) = 0;
  *(v8 + 584) = 0;
  *(v8 + 592) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 616) = 0;
  *(v8 + 656) = 0;
  *(v8 + 664) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 704) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 728) = 0;
  *(v8 + 736) = 0;
  *(v8 + 752) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  *(v8 + 792) = 0;
  *(v8 + 800) = 0;
  *(v8 + 816) = 0;
  *(v8 + 856) = 0;
  *(v8 + 880) = 0;
  *(v8 + 888) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v8 + 1072) = v9;
  *(v8 + 1080) = *(v9 - 8);
  *(v8 + 1088) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 1096) = v10;
  *(v8 + 1104) = *(v10 - 8);
  *(v8 + 1112) = swift_task_alloc();
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 568) = a1;
  *(v8 + 576) = a2;
  *(v8 + 1432) = a3 & 1;
  *(v8 + 1440) = a4 & 1;
  *(v8 + 544) = a5;
  *(v8 + 552) = a6 & 1;
  *(v8 + 384) = a7;
  *(v8 + 392) = a8;
  *(v8 + 400) = v21;
  *(v8 + 408) = v22;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(uint64_t a1)
{
  v111 = v1;
  v2 = *(v1 + 1160);
  v81 = *(v1 + 1104);
  v83 = *(v1 + 1096);
  v87 = *(v1 + 1032);
  v86 = *(v1 + 1024);
  v85 = *(v1 + 555);
  v84 = *(v1 + 1016);
  *(v1 + 560) = v1;
  v82 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v81 + 16);
  *(v1 + 1168) = v3;
  *(v1 + 1176) = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v82, v83);
  swift_endAccess();
  v88 = swift_allocObject();
  *(v88 + 16) = v84;
  *(v88 + 24) = v85 & 1;

  v90 = swift_allocObject();
  *(v90 + 16) = v86;
  *(v90 + 24) = v87;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v93 = swift_allocObject();
  *(v93 + 16) = 8;
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v89 + 24) = v88;
  v94 = swift_allocObject();
  *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v94 + 24) = v89;
  v95 = swift_allocObject();
  *(v95 + 16) = 32;
  v96 = swift_allocObject();
  *(v96 + 16) = 8;
  v91 = swift_allocObject();
  *(v91 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v91 + 24) = v90;
  v97 = swift_allocObject();
  *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v97 + 24) = v91;
  *(v1 + 1184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v98 = v4;

  *v98 = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[1] = v92;

  v98[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[3] = v93;

  v98[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[5] = v94;

  v98[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[7] = v95;

  v98[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[9] = v96;

  v98[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v98[11] = v97;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v99, v100))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v78 = createStorage<A>(capacity:type:)(0, v76, v76);
    v79 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v106 = buf;
    v107 = v78;
    v108 = v79;
    serialize(_:at:)(2, &v106);
    serialize(_:at:)(2, &v106);
    v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
    v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
    v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110 = v94;
    closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
    v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110 = v95;
    closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
    v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110 = v96;
    closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
    v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110 = v97;
    closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
    _os_log_impl(&dword_269912000, v99, v100, "Starting to write dose event: dosage (%s), dosageUnit (%s)", buf, 0x16u);
    destroyStorage<A>(_:count:)(v78, 0, v76);
    destroyStorage<A>(_:count:)(v79, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v72 = *(v80 + 1160);
  v73 = *(v80 + 1096);
  v74 = *(v80 + 553);
  v71 = *(v80 + 1104);
  MEMORY[0x277D82BD8](v99);
  v5 = *(v71 + 8);
  *(v80 + 1192) = v5;
  *(v80 + 1200) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v72, v73);
  if (v74)
  {
    v70 = 4;
  }

  else
  {
    v70 = 5;
  }

  *(v80 + 1208) = v70;
  v68 = *(v80 + 1008);
  *(v80 + 584) = v70;
  *(v80 + 1216) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v80 + 592) = _allocateUninitializedArray<A>(_:)();

  *(v80 + 600) = v68;
  *(v80 + 1224) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  *(v80 + 1232) = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  *(v80 + 1240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v69 = *(v80 + 608);
  *(v80 + 1248) = v69;
  if (v69)
  {
    v49 = *(v80 + 1168);
    v6 = *(v80 + 1152);
    v48 = *(v80 + 1096);
    *(v80 + 816) = v69;
    v47 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v49(v6, v47, v48);
    swift_endAccess();
    MEMORY[0x277D82BE0](v69);
    v50 = swift_allocObject();
    *(v50 + 16) = v69;
    MEMORY[0x277D82BE0](v69);
    v52 = swift_allocObject();
    *(v52 + 16) = v69;
    MEMORY[0x277D82BE0](v69);
    v54 = swift_allocObject();
    *(v54 + 16) = v69;
    oslog = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v51 + 24) = v50;
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v58 + 24) = v51;
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v53 + 24) = v52;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v61 + 24) = v53;
    v62 = swift_allocObject();
    *(v62 + 16) = 32;
    v63 = swift_allocObject();
    *(v63 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v55 + 24) = v54;
    v64 = swift_allocObject();
    *(v64 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v64 + 24) = v55;
    _allocateUninitializedArray<A>(_:)();
    v65 = v7;

    *v65 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[1] = v56;

    v65[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[3] = v57;

    v65[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[5] = v58;

    v65[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[7] = v59;

    v65[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[9] = v60;

    v65[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[11] = v61;

    v65[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[13] = v62;

    v65[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[15] = v63;

    v65[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v65[17] = v64;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v67))
    {
      v44 = static UnsafeMutablePointer.allocate(capacity:)();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v45 = createStorage<A>(capacity:type:)(0, v43, v43);
      v46 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v80 + 976) = v44;
      *(v80 + 984) = v45;
      *(v80 + 992) = v46;
      serialize(_:at:)(2, (v80 + 976));
      serialize(_:at:)(3, (v80 + 976));
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v56;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v57;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v58;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v59;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v60;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v61;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v62;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v63;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      *(v80 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v80 + 536) = v64;
      closure #1 in osLogInternal(_:log:type:)((v80 + 528), v80 + 976, v80 + 984, v80 + 992);
      _os_log_impl(&dword_269912000, oslog, v67, "in writeDoseEvent(), started with a doseEvent w/ dosage: (%s), scheduledDosage: (%s), logOrigin: (%s)", v44, 0x20u);
      destroyStorage<A>(_:count:)(v45, 0, v43);
      destroyStorage<A>(_:count:)(v46, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v44, MEMORY[0x277D84B78]);
    }

    *(v80 + 1256) = 0;
    v41 = *(v80 + 1192);
    v39 = *(v80 + 1152);
    v40 = *(v80 + 1096);
    v42 = *(v80 + 555);
    MEMORY[0x277D82BD8](oslog);
    v41(v39, v40);
    v8 = swift_task_alloc();
    *(v80 + 1264) = v8;
    *v8 = *(v80 + 560);
    v8[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v9 = *(v80 + 1048);
    v10 = *(v80 + 1040);
    v11 = *(v80 + 1032);
    v12 = *(v80 + 1024);
    v13 = *(v80 + 1016);

    return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v69, v13, v42 & 1, v12, v11, v10, v9);
  }

  else
  {
    v29 = *(v80 + 1168);
    v15 = *(v80 + 1120);
    v28 = *(v80 + 1096);
    outlined destroy of [HKQuantityType]((v80 + 416));
    v27 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v29(v15, v27, v28);
    swift_endAccess();
    v30 = *(v80 + 592);

    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    log = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v32 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v35 + 24) = v32;
    _allocateUninitializedArray<A>(_:)();
    v36 = v16;

    *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[1] = v33;

    v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[3] = v34;

    v36[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v36[5] = v35;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v38))
    {
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0, v23, v23);
      v26 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v101 = v24;
      v102 = v25;
      v103 = v26;
      serialize(_:at:)(0, &v101);
      serialize(_:at:)(1, &v101);
      v104 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105 = v33;
      closure #1 in osLogInternal(_:log:type:)(&v104, &v101, &v102, &v103);
      v104 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v104, &v101, &v102, &v103);
      v104 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v105 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v104, &v101, &v102, &v103);
      _os_log_impl(&dword_269912000, log, v38, "writeDoseEvent() - added %ld doseEvents to updatedDoseEvents", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v24, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v19 = *(v80 + 1192);
    v17 = *(v80 + 1120);
    v18 = *(v80 + 1096);
    v22 = *(v80 + 1000);
    MEMORY[0x277D82BD8](log);
    v19(v17, v18);
    swift_beginAccess();
    swift_endAccess();
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v80 + 1280) = isa;

    *(v80 + 16) = *(v80 + 560);
    *(v80 + 56) = v75;
    *(v80 + 24) = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v20 = swift_continuation_init();
    *(v80 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v80 + 112) = v20;
    *(v80 + 80) = MEMORY[0x277D85DD0];
    *(v80 + 88) = 1107296256;
    *(v80 + 92) = 0;
    *(v80 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v80 + 104) = &block_descriptor_5;
    [v22 writeDoseEvents:isa completion:?];

    return MEMORY[0x282200938](v80 + 16);
  }
}

{
  v3 = *v1;
  *(v3 + 560) = *v1;
  *(v3 + 1272) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v154 = v1;
  v2 = *(v1 + 1272);
  *(v1 + 560) = v1;
  if (!v2)
  {
    v56 = *(v148 + 1168);
    v17 = *(v148 + 1128);
    v55 = *(v148 + 1096);
    v54 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v56(v17, v54, v55);
    swift_endAccess();
    v58 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v59 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v58, v57))
    {
      v18 = *(v148 + 1256);
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0, v49, v49);
      v52 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v148 + 824) = v50;
      *(v148 + 832) = v51;
      *(v148 + 840) = v52;
      serialize(_:at:)(0, (v148 + 824));
      serialize(_:at:)(0, (v148 + 824));
      *(v148 + 848) = v59;
      v53 = swift_task_alloc();
      v53[2] = v148 + 824;
      v53[3] = v148 + 832;
      v53[4] = v148 + 840;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v18)
      {
      }

      _os_log_impl(&dword_269912000, v58, v57, "in writeDoseEvent, got complex dosage logging error, returning .gotComplexDosageLoggingError.", v50, 2u);
      destroyStorage<A>(_:count:)(v51, 0, v49);
      destroyStorage<A>(_:count:)(v52, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v50, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v46 = *(v148 + 1192);
    v44 = *(v148 + 1128);
    v45 = *(v148 + 1096);
    v47 = *(v148 + 1248);
    MEMORY[0x277D82BD8](v58);
    v46(v44, v45);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v48 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(112, 0);
    MEMORY[0x277D82BD8](v47);
    outlined destroy of [HKQuantityType]((v148 + 416));
    outlined destroy of [HKQuantityType]((v148 + 592));
    v103 = v48;
    goto LABEL_42;
  }

  v115 = *(v148 + 1272);
  *(v148 + 856) = v115;
  *(v148 + 864) = [v115 logOrigin];
  *(v148 + 872) = 1;
  type metadata accessor for HKMedicationDoseEventLogOrigin(0);
  lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin();
  v12 = == infix<A>(_:_:)();
  if (v12)
  {
    *(v148 + 960) = *(v148 + 1208);
    *(v148 + 968) = 4;
    type metadata accessor for HKMedicationDoseEventStatus(0);
    lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v111 = *(v148 + 1168);
      v13 = *(v148 + 1144);
      v110 = *(v148 + 1096);
      v109 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v111(v13, v109, v110);
      swift_endAccess();
      log = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v114 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(log, v112))
      {

        goto LABEL_20;
      }

      v14 = *(v148 + 1256);
      v105 = static UnsafeMutablePointer.allocate(capacity:)();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v106 = createStorage<A>(capacity:type:)(0, v104, v104);
      v107 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v148 + 928) = v105;
      *(v148 + 936) = v106;
      *(v148 + 944) = v107;
      serialize(_:at:)(0, (v148 + 928));
      serialize(_:at:)(0, (v148 + 928));
      *(v148 + 952) = v114;
      v108 = swift_task_alloc();
      v108[2] = v148 + 928;
      v108[3] = v148 + 936;
      v108[4] = v148 + 944;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v14)
      {

        _os_log_impl(&dword_269912000, log, v112, "This is an as needed dose event; you can only log it as taken, but got different requested status. returning .failure", v105, 2u);
        destroyStorage<A>(_:count:)(v106, 0, v104);
        destroyStorage<A>(_:count:)(v107, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v105, MEMORY[0x277D84B78]);

LABEL_20:
        v100 = *(v148 + 1192);
        v98 = *(v148 + 1144);
        v99 = *(v148 + 1096);
        v101 = *(v148 + 1248);
        MEMORY[0x277D82BD8](log);
        v100(v98, v99);
        type metadata accessor for LogSpecificMedicationsIntentResponse();
        v102 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
        MEMORY[0x277D82BD8](v115);
        MEMORY[0x277D82BD8](v101);
        outlined destroy of [HKQuantityType]((v148 + 416));
        outlined destroy of [HKQuantityType]((v148 + 592));
        v103 = v102;
LABEL_42:

        v21 = *(*(v148 + 560) + 8);

        return v21(v103);
      }
    }
  }

  v77 = *(v148 + 1168);
  v69 = *(v148 + 1136);
  v76 = *(v148 + 1096);
  v72 = *(v148 + 1088);
  v71 = *(v148 + 1072);
  v79 = *(v148 + 1248);
  v70 = *(v148 + 1080);
  v73 = [v115 updateForNewStatus_];
  *(v148 + 880) = v73;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v70 + 8))(v72, v71);
  v78 = [v73 updateForNewStartDate_];
  MEMORY[0x277D82BD8](isa);
  *(v148 + 888) = v78;
  v75 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v77(v69, v75, v76);
  swift_endAccess();
  MEMORY[0x277D82BE0](v78);
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  MEMORY[0x277D82BE0](v78);
  v82 = swift_allocObject();
  *(v82 + 16) = v78;
  MEMORY[0x277D82BE0](v79);
  v84 = swift_allocObject();
  *(v84 + 16) = v79;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  v86 = swift_allocObject();
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  *(v87 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = partial apply for implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v81 + 24) = v80;
  v88 = swift_allocObject();
  *(v88 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v88 + 24) = v81;
  v89 = swift_allocObject();
  *(v89 + 16) = 32;
  v90 = swift_allocObject();
  *(v90 + 16) = 8;
  v83 = swift_allocObject();
  *(v83 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v83 + 24) = v82;
  v91 = swift_allocObject();
  *(v91 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v91 + 24) = v83;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v93 = swift_allocObject();
  *(v93 + 16) = 8;
  v85 = swift_allocObject();
  *(v85 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v85 + 24) = v84;
  v94 = swift_allocObject();
  *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v94 + 24) = v85;
  _allocateUninitializedArray<A>(_:)();
  v95 = v15;

  *v95 = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[1] = v86;

  v95[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[3] = v87;

  v95[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[5] = v88;

  v95[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[7] = v89;

  v95[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[9] = v90;

  v95[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[11] = v91;

  v95[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[13] = v92;

  v95[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[15] = v93;

  v95[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v95[17] = v94;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v96, v97))
  {
    v16 = *(v148 + 1256);
    v66 = static UnsafeMutablePointer.allocate(capacity:)();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v67 = createStorage<A>(capacity:type:)(0, v65, v65);
    v68 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v148 + 904) = v66;
    *(v148 + 912) = v67;
    *(v148 + 920) = v68;
    serialize(_:at:)(2, (v148 + 904));
    serialize(_:at:)(3, (v148 + 904));
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v86;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    if (v16)
    {
      goto LABEL_7;
    }

    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v87;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v88;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v89;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v90;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v91;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v92;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v93;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    *(v148 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 520) = v94;
    closure #1 in osLogInternal(_:log:type:)((v148 + 512), v148 + 904, v148 + 912, v148 + 920);
    _os_log_impl(&dword_269912000, v96, v97, "in writeDoseEvent(), updated to doseEvent w/ dosage: (%s), scheduledDosage: (%s), logOrigin: (%s)", v66, 0x20u);
    destroyStorage<A>(_:count:)(v67, 0, v65);
    destroyStorage<A>(_:count:)(v68, 3, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v66, MEMORY[0x277D84B78]);

    v64 = 0;
  }

  else
  {

    v64 = *(v148 + 1256);
  }

  v62 = *(v148 + 1192);
  v60 = *(v148 + 1136);
  v61 = *(v148 + 1096);
  v63 = *(v148 + 1248);
  MEMORY[0x277D82BD8](v96);
  v62(v60, v61);
  MEMORY[0x277D82BE0](v78);
  *(v148 + 896) = v78;
  Array.append(_:)();
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](v63);
  *(v148 + 1240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v126 = *(v148 + 608);
  *(v148 + 1248) = v126;
  if (v126)
  {
    v129 = *(v148 + 1168);
    v3 = *(v148 + 1152);
    v128 = *(v148 + 1096);
    *(v148 + 816) = v126;
    v127 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v129(v3, v127, v128);
    swift_endAccess();
    MEMORY[0x277D82BE0](v126);
    v130 = swift_allocObject();
    *(v130 + 16) = v126;
    MEMORY[0x277D82BE0](v126);
    v132 = swift_allocObject();
    *(v132 + 16) = v126;
    MEMORY[0x277D82BE0](v126);
    v134 = swift_allocObject();
    *(v134 + 16) = v126;
    oslog = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    v136 = swift_allocObject();
    *(v136 + 16) = 32;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v131 = swift_allocObject();
    *(v131 + 16) = partial apply for implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v131 + 24) = v130;
    v138 = swift_allocObject();
    *(v138 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v138 + 24) = v131;
    v139 = swift_allocObject();
    *(v139 + 16) = 32;
    v140 = swift_allocObject();
    *(v140 + 16) = 8;
    v133 = swift_allocObject();
    *(v133 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v133 + 24) = v132;
    v141 = swift_allocObject();
    *(v141 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v141 + 24) = v133;
    v142 = swift_allocObject();
    *(v142 + 16) = 32;
    v143 = swift_allocObject();
    *(v143 + 16) = 8;
    v135 = swift_allocObject();
    *(v135 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v135 + 24) = v134;
    v144 = swift_allocObject();
    *(v144 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v144 + 24) = v135;
    _allocateUninitializedArray<A>(_:)();
    v145 = v4;

    *v145 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[1] = v136;

    v145[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[3] = v137;

    v145[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[5] = v138;

    v145[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[7] = v139;

    v145[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[9] = v140;

    v145[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[11] = v141;

    v145[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[13] = v142;

    v145[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[15] = v143;

    v145[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v145[17] = v144;
    _finalizeUninitializedArray<A>(_:)();

    if (!os_log_type_enabled(oslog, v147))
    {

      v120 = v64;
      goto LABEL_8;
    }

    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v124 = createStorage<A>(capacity:type:)(0, v122, v122);
    v125 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v148 + 976) = buf;
    *(v148 + 984) = v124;
    *(v148 + 992) = v125;
    serialize(_:at:)(2, (v148 + 976));
    serialize(_:at:)(3, (v148 + 976));
    *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v148 + 536) = v136;
    closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
    if (!v64)
    {
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v137;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v138;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v139;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v140;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v141;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v142;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v143;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      *(v148 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v148 + 536) = v144;
      closure #1 in osLogInternal(_:log:type:)((v148 + 528), v148 + 976, v148 + 984, v148 + 992);
      _os_log_impl(&dword_269912000, oslog, v147, "in writeDoseEvent(), started with a doseEvent w/ dosage: (%s), scheduledDosage: (%s), logOrigin: (%s)", buf, 0x20u);
      destroyStorage<A>(_:count:)(v124, 0, v122);
      destroyStorage<A>(_:count:)(v125, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v120 = 0;
LABEL_8:
      *(v148 + 1256) = v120;
      v118 = *(v148 + 1192);
      v116 = *(v148 + 1152);
      v117 = *(v148 + 1096);
      v119 = *(v148 + 555);
      MEMORY[0x277D82BD8](oslog);
      v118(v116, v117);
      v6 = swift_task_alloc();
      *(v148 + 1264) = v6;
      *v6 = *(v148 + 560);
      v6[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v7 = *(v148 + 1048);
      v8 = *(v148 + 1040);
      v9 = *(v148 + 1032);
      v10 = *(v148 + 1024);
      v11 = *(v148 + 1016);

      return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v126, v11, v119 & 1, v10, v9, v8, v7);
    }

LABEL_7:
  }

  v34 = *(v148 + 1168);
  v19 = *(v148 + 1120);
  v33 = *(v148 + 1096);
  outlined destroy of [HKQuantityType]((v148 + 416));
  v32 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v34(v19, v32, v33);
  swift_endAccess();
  v35 = *(v148 + 592);

  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v40 + 24) = v37;
  _allocateUninitializedArray<A>(_:)();
  v41 = v20;

  *v41 = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[1] = v38;

  v41[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[3] = v39;

  v41[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v41[5] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v42, v43))
  {
    v29 = static UnsafeMutablePointer.allocate(capacity:)();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = createStorage<A>(capacity:type:)(0, v28, v28);
    v31 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v149 = v29;
    v150 = v30;
    v151 = v31;
    serialize(_:at:)(0, &v149);
    serialize(_:at:)(1, &v149);
    v152 = partial apply for closure #1 in OSLogArguments.append(_:);
    v153 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
    if (v64)
    {
    }

    v152 = partial apply for closure #1 in OSLogArguments.append(_:);
    v153 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
    v152 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v153 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
    _os_log_impl(&dword_269912000, v42, v43, "writeDoseEvent() - added %ld doseEvents to updatedDoseEvents", v29, 0xCu);
    destroyStorage<A>(_:count:)(v30, 0, v28);
    destroyStorage<A>(_:count:)(v31, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v29, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v24 = *(v148 + 1192);
  v22 = *(v148 + 1120);
  v23 = *(v148 + 1096);
  v27 = *(v148 + 1000);
  MEMORY[0x277D82BD8](v42);
  v24(v22, v23);
  swift_beginAccess();
  swift_endAccess();
  v26 = Array._bridgeToObjectiveC()().super.isa;
  *(v148 + 1280) = v26;

  *(v148 + 16) = *(v148 + 560);
  *(v148 + 56) = v121;
  *(v148 + 24) = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  v25 = swift_continuation_init();
  *(v148 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v148 + 112) = v25;
  *(v148 + 80) = MEMORY[0x277D85DD0];
  *(v148 + 88) = 1107296256;
  *(v148 + 92) = 0;
  *(v148 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v148 + 104) = &block_descriptor_5;
  [v27 writeDoseEvents:v26 completion:?];

  return MEMORY[0x282200938](v148 + 16);
}

{
  v3 = *v1;
  *(v3 + 560) = *v1;
  *(v3 + 1328) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v3 = *v1;
  *(v3 + 560) = *v1;
  *(v3 + 1424) = a1;

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v18 = v1[161];
  v17 = v1[160];
  v21 = v1[146];
  v16 = v1[139];
  v20 = v1[137];
  v1[70] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v17);
  v2 = v18;
  v1[77] = v18;
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v21(v16, v19, v20);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 624) = buf;
    *(v15 + 632) = v12;
    *(v15 + 640) = v13;
    serialize(_:at:)(0, (v15 + 624));
    serialize(_:at:)(0, (v15 + 624));
    *(v15 + 648) = v24;
    v14 = swift_task_alloc();
    v14[2] = v15 + 624;
    v14[3] = v15 + 632;
    v14[4] = v15 + 640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Failed writing updated dose events for specific meds.", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 1288);
  v7 = *(v15 + 1192);
  v5 = *(v15 + 1112);
  v6 = *(v15 + 1096);
  MEMORY[0x277D82BD8](v23);
  v7(v5, v6);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v9 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  outlined destroy of [HKQuantityType]((v15 + 592));

  v3 = *(*(v15 + 560) + 8);

  return v3(v9);
}