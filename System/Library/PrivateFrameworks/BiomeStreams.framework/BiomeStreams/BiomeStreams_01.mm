uint64_t bmstream_vtab_filter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, sqlite3_value **a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    bmstream_vtab_filter_cold_1(a2, a4, v10);
  }

  v11 = [*(a1 + 8) virtualTable];
  v12 = [v11 acceptPublisherOptions];

  if ((v12 & 1) == 0)
  {
    [*(a1 + 8) reset];
    goto LABEL_28;
  }

  if (a2)
  {
    v22 = sqlite3_value_double(*a5);
    v23 = [MEMORY[0x1E695DF00] distantPast];
    [v23 timeIntervalSince1970];
    v25 = v24;

    if (v22 <= v25)
    {
      v29 = [MEMORY[0x1E695DF00] distantPast];
    }

    else
    {
      v26 = [MEMORY[0x1E695DF00] distantFuture];
      [v26 timeIntervalSince1970];
      v28 = v27;

      if (v22 >= v28)
      {
        [MEMORY[0x1E695DF00] distantFuture];
      }

      else
      {
        [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v22 + -0.000001];
      }
      v29 = ;
    }

    v13 = v29;
    if ((a2 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if ((a2 & 2) != 0)
    {
LABEL_6:
      v14 = sqlite3_value_double(a5[a4 != 1]);
      v15 = [MEMORY[0x1E695DF00] distantPast];
      [v15 timeIntervalSince1970];
      v17 = v16;

      if (v14 <= v17)
      {
        v21 = [MEMORY[0x1E695DF00] distantPast];
      }

      else
      {
        v18 = [MEMORY[0x1E695DF00] distantFuture];
        [v18 timeIntervalSince1970];
        v20 = v19;

        if (v14 >= v20)
        {
          [MEMORY[0x1E695DF00] distantFuture];
        }

        else
        {
          [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v14 + 0.000001];
        }
        v21 = ;
      }

      v30 = v21;
      goto LABEL_22;
    }
  }

  v30 = 0;
LABEL_22:
  v31 = [BMPublisherOptions alloc];
  if ((a2 & 4) != 0)
  {
    v32 = v30;
    v33 = v13;
    v34 = 1;
  }

  else
  {
    v32 = v13;
    v33 = v30;
    v34 = 0;
  }

  v35 = [(BMPublisherOptions *)v31 initWithStartDate:v32 endDate:v33 maxEvents:0 lastN:0 reversed:v34];
  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    bmstream_vtab_filter_cold_2();
  }

  [*(a1 + 8) resetWithOptions:v35];
LABEL_28:
  objc_autoreleasePoolPop(v9);
  return 0;
}

uint64_t bmstream_vtab_close(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1[1] close];
  v3 = a1[1];
  a1[1] = 0;

  sqlite3_free(a1);
  objc_autoreleasePoolPop(v2);
  return 0;
}

void OUTLINED_FUNCTION_23_2()
{
  *(v6 - 224) = v5;
  *(v6 - 512) = v0;
  *(v6 - 400) = v4;
  *(v6 - 488) = v2;
  *(v6 - 496) = v3;
  *(v6 - 504) = v1;
}

uint64_t OUTLINED_FUNCTION_18_0(sqlite3 *a1, const char *a2, uint64_t a3, uint64_t a4, sqlite3_stmt **a5)
{

  return sqlite3_prepare_v3(a1, a2, -1, 1u, a5, 0);
}

id BMSQLDatabaseError(uint64_t a1, sqlite3 *a2, const char *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v8 = [v6 initWithFormat:@"BMSQLDatabase error (%@)", v7];

  v9 = sqlite3_errmsg(a2);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    [v8 appendFormat:@" %@.", v11];

    if (a3 && strcmp(v10, a3))
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    [v8 appendFormat:@" %@", v12];
  }

  v13 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E696A578];
  v14 = [v8 copy];
  v19[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16 = [v13 initWithDomain:@"BMSQLDatabaseErrorDomain" code:a1 userInfo:v15];

  return v16;
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return specialized Dictionary.subscript.getter(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_83_1()
{

  Hasher._combine(_:)(0);
}

void MAX.aggregationMetadata()()
{
  OUTLINED_FUNCTION_64();
  v2 = v0;
  v4 = v3;
  type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v33 = v6;
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  OUTLINED_FUNCTION_9();
  v32 = v8;
  v9 = *(v4 + 16);
  v10 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0();
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_184D29AA0;
  v20 = (v19 + v18);
  v21 = *(v4 + 48);
  v22 = (v2 + *(v4 + 44));
  v23 = v22[1];
  *v20 = *v22;
  v20[1] = v23;
  v24 = *(v12 + 16);
  v35 = v2;
  v24(v16, v2 + v21, v10);
  OUTLINED_FUNCTION_92(v16, 1, v9);
  if (v25)
  {
    v26 = *(v12 + 8);

    v26(v16, v10);
    v36 = 0u;
    v37 = 0u;
  }

  else
  {
    *(&v37 + 1) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
    (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, v16, v9);
  }

  v28 = v32;
  v29 = *(v31 + 48);
  (*(v33 + 16))(v32, v35 + *(v4 + 40), v34);
  StorableValue.init(_:dataType:)(&v36, v28, (v20 + v29));
  if (v1)
  {

    *(v19 + 16) = 0;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    type metadata accessor for StorableValue(0);
    Dictionary.init(dictionaryLiteral:)();
  }

  OUTLINED_FUNCTION_65();
}

{
  MAX.aggregationMetadata()();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return outlined consume of Data?(v0, v1);
}

uint64_t StorableValue.init(_:dataType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v216 = a3;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_29();
  v211 = v8;
  v9 = OUTLINED_FUNCTION_43();
  v215 = type metadata accessor for StorableValue(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_9_0();
  v209 = v12;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_30();
  v213 = v15;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_30();
  v212 = v18;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_51();
  v214 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v208 - v26;
  v28 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_13();
  v33 = v32 - v31;
  v35 = *(v34 + 16);
  v218 = a2;
  v36 = a2;
  v37 = v34;
  v35(v32 - v31, v36, v28);
  v38 = *(v37 + 88);
  v217 = v28;
  v39 = v38(v33, v28);
  switch(v39)
  {
    case 0:
      outlined init with copy of Date?(a1, v220, &_sypSgMd, &_sypSgMR);
      v40 = v221;
      v41 = a1;
      if (!v221)
      {
        v77 = OUTLINED_FUNCTION_31();
        v78(v77);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v79, v80, v81);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v82, v83, v84);
        v52 = 0;
LABEL_60:
        v181 = v216;
        *v216 = v52;
        *(v181 + 8) = v40 == 0;
        return swift_storeEnumTagMultiPayload();
      }

      v42 = OUTLINED_FUNCTION_42();
      outlined init with take of Any(v42, v43);
      outlined init with copy of Any(v222, v220);
      v44 = type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v47 = OUTLINED_FUNCTION_17(v44, v45, v46, v44);
      if (v47)
      {
        v50 = v37;
        v51 = v219;
        v52 = [v219 longLongValue];

        (*(v50 + 8))(v218, v217);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        outlined destroy of UUID?(v41, &_sypSgMd, &_sypSgMR);
LABEL_59:
        __swift_destroy_boxed_opaque_existential_1Tm(v220);
        goto LABEL_60;
      }

      v85 = OUTLINED_FUNCTION_17(v47, v48, v49, MEMORY[0x1E69E7360]);
      if (v85)
      {
        v88 = OUTLINED_FUNCTION_31();
        v89(v88);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
        v52 = v219;
        goto LABEL_59;
      }

      v114 = OUTLINED_FUNCTION_17(v85, v86, v87, MEMORY[0x1E69E72F0]);
      if (v114)
      {
        v117 = OUTLINED_FUNCTION_31();
        v118(v117);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
LABEL_58:
        outlined destroy of UUID?(v41, &_sypSgMd, &_sypSgMR);
        goto LABEL_59;
      }

      v133 = OUTLINED_FUNCTION_17(v114, v115, v116, MEMORY[0x1E69E7290]);
      if (v133)
      {
        v136 = OUTLINED_FUNCTION_31();
        v137(v136);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
        goto LABEL_58;
      }

      v154 = OUTLINED_FUNCTION_17(v133, v134, v135, MEMORY[0x1E69E7230]);
      if (v154)
      {
        v157 = OUTLINED_FUNCTION_31();
        v158(v157);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
        goto LABEL_58;
      }

      v173 = OUTLINED_FUNCTION_17(v154, v155, v156, MEMORY[0x1E69E6530]);
      if (v173)
      {
        goto LABEL_57;
      }

      v176 = OUTLINED_FUNCTION_17(v173, v174, v175, MEMORY[0x1E69E76D8]);
      if (v176)
      {
        goto LABEL_57;
      }

      v191 = OUTLINED_FUNCTION_17(v176, v177, v178, MEMORY[0x1E69E7668]);
      if (v191)
      {
        v194 = OUTLINED_FUNCTION_31();
        v195(v194);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
        goto LABEL_58;
      }

      v198 = OUTLINED_FUNCTION_17(v191, v192, v193, MEMORY[0x1E69E75F8]);
      if (v198)
      {
        v201 = OUTLINED_FUNCTION_31();
        v202(v201);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
        goto LABEL_58;
      }

      v203 = OUTLINED_FUNCTION_17(v198, v199, v200, MEMORY[0x1E69E7508]);
      if (v203)
      {
        v206 = OUTLINED_FUNCTION_31();
        v207(v206);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_17(v203, v204, v205, MEMORY[0x1E69E6810]))
      {
LABEL_57:
        v179 = OUTLINED_FUNCTION_31();
        v180(v179);
        __swift_destroy_boxed_opaque_existential_1Tm(v222);
        v52 = v219;
        goto LABEL_58;
      }

LABEL_35:
      v128 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v128);
      OUTLINED_FUNCTION_53_0();
      outlined init with copy of Any(v222, v129);
      OUTLINED_FUNCTION_15();
      swift_willThrow();
      v130 = OUTLINED_FUNCTION_31();
      v131(v130);
      __swift_destroy_boxed_opaque_existential_1Tm(v222);
      outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
      return __swift_destroy_boxed_opaque_existential_1Tm(v220);
    case 1:
      v53 = a1;
      outlined init with copy of Date?(a1, v220, &_sypSgMd, &_sypSgMR);
      if (v221)
      {
        v54 = OUTLINED_FUNCTION_42();
        outlined init with take of Any(v54, v55);
        outlined init with copy of Any(v222, v220);
        v56 = type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        v59 = OUTLINED_FUNCTION_17(v56, v57, v58, v56);
        if (v59)
        {
          v62 = v219;
          [v219 doubleValue];
          v64 = v63;

          v65 = OUTLINED_FUNCTION_31();
          v66(v65);
          __swift_destroy_boxed_opaque_existential_1Tm(v222);
          v67 = v64;
        }

        else
        {
          if (!OUTLINED_FUNCTION_17(v59, v60, v61, MEMORY[0x1E69E63B0]))
          {
            goto LABEL_35;
          }

          v112 = OUTLINED_FUNCTION_31();
          v113(v112);
          __swift_destroy_boxed_opaque_existential_1Tm(v222);
          v67 = v219;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v220);
        if ((~v67 & 0x7FF0000000000000) != 0)
        {
          outlined destroy of UUID?(v53, &_sypSgMd, &_sypSgMR);
          v111 = 0;
        }

        else
        {
          outlined destroy of UUID?(v53, &_sypSgMd, &_sypSgMR);
          v111 = (v67 & 0xFFFFFFFFFFFFFLL) != 0;
          if ((v67 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v67 = 0;
          }
        }
      }

      else
      {
        v103 = OUTLINED_FUNCTION_31();
        v104(v103);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v105, v106, v107);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v108, v109, v110);
        v67 = 0;
        v111 = 1;
      }

      v127 = v216;
      *v216 = v67;
      *(v127 + 8) = v111;
      return swift_storeEnumTagMultiPayload();
    case 2:
      v68 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v68, v69, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_42();
      if (swift_dynamicCast())
      {
        v70 = OUTLINED_FUNCTION_88();
        v71(v70);

        OUTLINED_FUNCTION_32();
        if (v72)
        {
          v73 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v73, v74);
          OUTLINED_FUNCTION_56();
          v76 = *(&v219 + 1);
          v75 = v219;
        }

        else
        {
          outlined destroy of UUID?(v220, &_sypSgMd, &_sypSgMR);
          v75 = 0;
          v76 = 0;
        }

        *v3 = v75;
        v3[1] = v76;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v153 = v3;
        return outlined init with take of StorableValue(v153, v216);
      }

      goto LABEL_43;
    case 3:
      v90 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v90, v91, &_sypSgMd, &_sypSgMR);
      v92 = OUTLINED_FUNCTION_50();
      __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
      if (!swift_dynamicCast())
      {
        v138 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63(&type metadata for SQLError, v138);
        OUTLINED_FUNCTION_53_0();
        outlined init with copy of Date?(v33, v139, &_sypSgMd, &_sypSgMR);
        OUTLINED_FUNCTION_15();
        swift_willThrow();
        (*(v37 + 8))(v218, v217);
        return outlined destroy of UUID?(v33, &_sypSgMd, &_sypSgMR);
      }

      (*(v37 + 8))(v218, v217);
      outlined destroy of UUID?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_32();
      if (v94)
      {
        v95 = OUTLINED_FUNCTION_42();
        outlined init with take of Any(v95, v96);
        v97 = type metadata accessor for Date();
        v98 = v214;
        swift_dynamicCast();
        v99 = v98;
        v100 = 0;
        v101 = 1;
        v102 = v97;
      }

      else
      {
        outlined destroy of UUID?(v220, &_sypSgMd, &_sypSgMR);
        type metadata accessor for Date();
        v98 = v214;
        OUTLINED_FUNCTION_102();
      }

      __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
LABEL_71:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_15();
      v153 = v98;
      return outlined init with take of StorableValue(v153, v216);
    case 4:
      v119 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v119, v120, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_42();
      if (swift_dynamicCast())
      {
        v121 = OUTLINED_FUNCTION_88();
        v122(v121);
        outlined consume of Data?(v220[0], v220[1]);
        OUTLINED_FUNCTION_32();
        if (v123)
        {
          v124 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v124, v125);
          OUTLINED_FUNCTION_56();
          v126 = v219;
        }

        else
        {
          outlined destroy of UUID?(v220, &_sypSgMd, &_sypSgMR);
          v126 = xmmword_184D27CF0;
        }

        v98 = v213;
        *v213 = v126;
        goto LABEL_71;
      }

      goto LABEL_43;
    case 5:
      v140 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v140, v141, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_42();
      if (swift_dynamicCast())
      {
        v142 = OUTLINED_FUNCTION_88();
        v143(v142);

        OUTLINED_FUNCTION_32();
        if (v144)
        {
          v145 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v145, v146);
          OUTLINED_FUNCTION_56();
          v148 = *(&v219 + 1);
          v147 = v219;
        }

        else
        {
          outlined destroy of UUID?(v220, &_sypSgMd, &_sypSgMR);
          v147 = 0;
          v148 = 0;
        }

        v98 = v212;
        *v212 = v147;
        *(v98 + 1) = v148;
        goto LABEL_71;
      }

      goto LABEL_43;
    case 6:
      v159 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v159, v160, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v161 = v211;
      if (swift_dynamicCast())
      {
        v162 = OUTLINED_FUNCTION_31();
        v163(v162);
        outlined destroy of UUID?(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_32();
        if (v164)
        {
          v165 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v165, v166);
          v167 = type metadata accessor for UUID();
          v168 = v209;
          swift_dynamicCast();
          v169 = v168;
          v170 = 0;
          v171 = 1;
          v172 = v167;
        }

        else
        {
          outlined destroy of UUID?(v220, &_sypSgMd, &_sypSgMR);
          type metadata accessor for UUID();
          v168 = v209;
          OUTLINED_FUNCTION_102();
        }

        __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v153 = v168;
        return outlined init with take of StorableValue(v153, v216);
      }

      goto LABEL_43;
  }

  if (v39 != 7)
  {
    v182 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63(&type metadata for SQLError, v182);
    v183 = v37;
    v185 = v184;
    v186 = v217;
    v184[3] = v217;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v184);
    v188 = v218;
    v35(boxed_opaque_existential_0Tm, v218, v186);
    *(v185 + 2) = 0u;
    *(v185 + 3) = 0u;
    *(v185 + 64) = 3;
    swift_willThrow();
    v189 = *(v183 + 8);
    v189(v188, v186);
    outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
    v190 = OUTLINED_FUNCTION_76();
    return (v189)(v190);
  }

  v33 = a1;
  if (*(a1 + 24))
  {
LABEL_43:
    v149 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63(&type metadata for SQLError, v149);
    OUTLINED_FUNCTION_53_0();
    outlined init with copy of Date?(v33, v150, &_sypSgMd, &_sypSgMR);
    OUTLINED_FUNCTION_15();
    swift_willThrow();
    v151 = OUTLINED_FUNCTION_88();
    v152(v151);
    return outlined destroy of UUID?(v33, &_sypSgMd, &_sypSgMR);
  }

  v196 = OUTLINED_FUNCTION_31();
  v197(v196);
  outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_105()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_105_1()
{
}

uint64_t $defer #1 () in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v10, v3) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v10, v3);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v19, v20, v23, a3, v21, v22, 2u);
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
  }

  return (*(v13 + 8))(v18, v11);
}

BOOL closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v148 = a7;
  v147 = a6;
  v163 = a5;
  v153 = a4;
  v154 = a3;
  v191 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v149 = &v146 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v167 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v146 - v17;
  v173 = type metadata accessor for SQLDataType();
  Description = v173[-1].Description;
  MEMORY[0x1EEE9AC00](v173, v20);
  v172 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StorableValue(0);
  v23 = *(v22 - 8);
  v179 = v22;
  v180 = v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v171 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v146 - v29;
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v185 = &v146 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = (&v146 - v35);
  v178 = type metadata accessor for SQLExpression();
  v151 = v178[-1].Description;
  v38 = MEMORY[0x1EEE9AC00](v178, v37);
  v146 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v165 = &v146 - v42;
  MEMORY[0x1EEE9AC00](v41, v43);
  v166 = &v146 - v44;
  v186 = type metadata accessor for ResultColumn();
  v182 = v186[-1].Description;
  v46 = MEMORY[0x1EEE9AC00](v186, v45);
  v164 = &v146 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v150 = &v146 - v50;
  MEMORY[0x1EEE9AC00](v49, v51);
  v152 = &v146 - v52;
  v155 = objc_autoreleasePoolPush();
  v53 = [a2 schema];
  v54 = [v53 columns];

  type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMSQLColumn, off_1E6E51FA0);
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v176 = specialized Array._getCount()(v55);
  v56 = 0;
  v57 = 0;
  v175 = (v55 & 0xC000000000000001);
  v177 = v55;
  v174 = v55 & 0xFFFFFFFFFFFFFF8;
  v162 = 2;
  v58 = (Description + 104);
  v161 = 0;
  v160 = 1;
  v159 = 3;
  v158 = 4;
  v157 = 6;
  v168 = 5;
  v156 = 7;
  v59 = MEMORY[0x1E69E7CC8];
  v181 = v30;
  v170 = v18;
  v169 = (Description + 104);
  while (v176 != v56)
  {
    if (v175)
    {
      v60 = MEMORY[0x1865F65C0](v56, v177);
    }

    else
    {
      if (v56 >= *(v174 + 16))
      {
        goto LABEL_71;
      }

      v60 = *(v177 + 8 * v56 + 32);
    }

    v61 = v60;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    v184 = v56;
    v62 = [v60 extractBlock];
    if (!v62)
    {
      goto LABEL_78;
    }

    v63 = v62;
    v187 = 0;
    v64 = v62[2];
    swift_unknownObjectRetain();
    if (v64(v63, a1, &v187))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _Block_release(v63);
      swift_unknownObjectRelease();
    }

    else
    {
      _Block_release(v63);
      swift_unknownObjectRelease();
      v188 = 0u;
      v189 = 0u;
    }

    v190[0] = v188;
    v190[1] = v189;
    if (v187)
    {
      v124 = v187;

      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v125 = swift_allocError();
      v127 = v126;
      v128 = [v61 name];
      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;

      *v127 = v129;
      *(v127 + 8) = v131;
      *(v127 + 64) = 0;

      outlined destroy of UUID?(v190, &_sypSgMd, &_sypSgMR);
      v132 = *(v154 + 16);
      *(v154 + 16) = v125;

      v133 = 0;
      v134 = v155;
      goto LABEL_65;
    }

    outlined init with copy of Date?(v190, &v188, &_sypSgMd, &_sypSgMR);
    v65 = [v61 dataType];
    v66 = v168;
    switch(v65)
    {
      case 0uLL:
        v67 = v190 + 8;
        goto LABEL_20;
      case 1uLL:
        v67 = v190 + 4;
        goto LABEL_20;
      case 2uLL:
        v67 = v190 + 12;
        goto LABEL_20;
      case 3uLL:
        v67 = v190;
        goto LABEL_20;
      case 4uLL:
        v67 = &v189 + 12;
        goto LABEL_20;
      case 5uLL:
        goto LABEL_21;
      case 6uLL:
        v67 = &v189 + 8;
        goto LABEL_20;
      default:
        v67 = &v189 + 4;
LABEL_20:
        v66 = *(v67 - 64);
LABEL_21:
        v68 = v172;
        (*v58)(v172, v66, v173);
        StorableValue.init(_:dataType:)(&v188, v68, v36);
        if (v57)
        {
          outlined destroy of UUID?(v190, &_sypSgMd, &_sypSgMR);

          goto LABEL_63;
        }

        v183 = 0;
        outlined init with copy of StorableValue(v36, v185);
        v69 = v61;
        v70 = [v61 name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = String.lowercased()();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v188 = v59;
        v73 = specialized __RawDictionaryStorage.find<A>(_:)(v71._countAndFlagsBits, v71._object);
        v75 = v59[2];
        v76 = (v74 & 1) == 0;
        v77 = v75 + v76;
        if (__OFADD__(v75, v76))
        {
          goto LABEL_73;
        }

        v78 = v73;
        v79 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v77))
        {
          v80 = specialized __RawDictionaryStorage.find<A>(_:)(v71._countAndFlagsBits, v71._object);
          if ((v79 & 1) != (v81 & 1))
          {
LABEL_79:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            JUMPOUT(0x184907114);
          }

          v78 = v80;
        }

        v59 = v188;
        if (v79)
        {
          v82 = *(v180 + 72) * v78;
          v83 = v170;
          outlined init with take of StorableValue(*(v188 + 56) + v82, v170);
          outlined init with take of StorableValue(v185, v59[7] + v82);
          __swift_storeEnumTagSinglePayload(v83, 0, 1, v179);
        }

        else
        {
          *(v188 + 8 * (v78 >> 6) + 64) |= 1 << v78;
          *(v59[6] + 16 * v78) = v71;
          outlined init with take of StorableValue(v185, v59[7] + *(v180 + 72) * v78);
          v84 = v59[2];
          v85 = __OFADD__(v84, 1);
          v86 = v84 + 1;
          if (v85)
          {
            goto LABEL_76;
          }

          v59[2] = v86;
          v83 = v170;
          __swift_storeEnumTagSinglePayload(v170, 1, 1, v179);
        }

        outlined destroy of UUID?(v83, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        outlined destroy of StorableValue(v36, type metadata accessor for StorableValue);
        outlined destroy of UUID?(v190, &_sypSgMd, &_sypSgMR);
        v57 = v183;
        v56 = v184 + 1;
        v30 = v181;
        v58 = v169;
        break;
    }
  }

  v87 = SelectCore.select.getter();
  v88 = 0;
  v177 = *(v87 + 16);
  v185 = v182 + 16;
  v183 = (v151 + 8);
  v175 = (v182 + 32);
  v184 = (v182 + 8);
  v176 = MEMORY[0x1E69E7CC0];
  v89 = v152;
  while (v177 != v88)
  {
    if (v88 >= *(v87 + 16))
    {
      goto LABEL_72;
    }

    v90 = (v182[80] + 32) & ~v182[80];
    v91 = *(v182 + 9);
    (*(v182 + 2))(v89, v87 + v90 + v91 * v88, v186);
    v92 = v89;
    ResultColumn.alias.getter();
    if (v93 && (, v94 = v166, ResultColumn.expression.getter(v166), v95 = SQLExpression.aggregationFunctions.getter(), (*v183)(v94, v178), v96 = *(v95 + 16), , !v96))
    {
      v174 = *v175;
      (v174)(v150, v92, v186);
      v97 = v176;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      *&v190[0] = v97;
      if (v98)
      {
        v89 = v92;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 16) + 1, 1);
        v89 = v152;
        v97 = *&v190[0];
      }

      v100 = *(v97 + 16);
      v99 = *(v97 + 24);
      if (v100 >= v99 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v99 > 1, v100 + 1, 1);
        v89 = v152;
        v97 = *&v190[0];
      }

      ++v88;
      *(v97 + 16) = v100 + 1;
      v176 = v97;
      (v174)(v97 + v90 + v100 * v91, v150, v186);
      v30 = v181;
    }

    else
    {
      (*v184)(v92, v186);
      ++v88;
      v89 = v92;
    }
  }

  v101 = 0;
  v102 = v176;
  v177 = *(v176 + 16);
  v103 = v59;
  v104 = v165;
  v105 = v164;
  while (1)
  {
    if (v177 == v101)
    {

      v135 = v149;
      SelectCore.where.getter(v149);
      v136 = v178;
      if (__swift_getEnumTagSinglePayload(v135, 1, v178) == 1)
      {
        outlined destroy of UUID?(v135, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v134 = v155;
      }

      else
      {
        v143 = v146;
        (*(v151 + 4))(v146, v135, v136);
        v144 = SQLExpressionEvaluator.evaluatesToTrue(expression:payload:)(v143);
        v134 = v155;
        if (v57)
        {
          (*v183)(v143, v136);

          goto LABEL_64;
        }

        v145 = v144;
        (*v183)(v143, v136);
        if ((v145 & 1) == 0)
        {

          v133 = 1;
          goto LABEL_65;
        }
      }

      v137 = v147;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v138 = *(*(v137 + 16) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v138);
      v139 = *(v137 + 16);
      *(v139 + 16) = v138 + 1;
      v140 = v139 + 16 * v138;
      *(v140 + 32) = 0;
      *(v140 + 40) = v103;
      *(v137 + 16) = v139;
      v133 = v138 + 1 < v148;
      goto LABEL_65;
    }

    if (v101 >= *(v102 + 16))
    {
      goto LABEL_74;
    }

    (*(v182 + 2))(v105, v102 + ((v182[80] + 32) & ~v182[80]) + *(v182 + 9) * v101, v186);
    ResultColumn.expression.getter(v104);
    SQLExpressionEvaluator.execute(expression:payload:)(v30);
    if (v57)
    {
      break;
    }

    (*v183)(v104, v178);
    outlined init with copy of StorableValue(v30, v171);
    v106 = ResultColumn.name.getter();
    v108 = v107;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    *&v190[0] = v103;
    v110 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v108);
    v112 = v103[2];
    v113 = (v111 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      goto LABEL_75;
    }

    v115 = v110;
    v116 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v109, v114))
    {
      v117 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v108);
      if ((v116 & 1) != (v118 & 1))
      {
        goto LABEL_79;
      }

      v115 = v117;
    }

    v103 = *&v190[0];
    if (v116)
    {
      v119 = *(v180 + 72) * v115;
      v120 = v167;
      outlined init with take of StorableValue(*(*&v190[0] + 56) + v119, v167);
      outlined init with take of StorableValue(v171, v103[7] + v119);
      __swift_storeEnumTagSinglePayload(v120, 0, 1, v179);
    }

    else
    {
      *(*&v190[0] + 8 * (v115 >> 6) + 64) |= 1 << v115;
      v121 = (v103[6] + 16 * v115);
      *v121 = v106;
      v121[1] = v108;
      outlined init with take of StorableValue(v171, v103[7] + *(v180 + 72) * v115);
      v122 = v103[2];
      v85 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v85)
      {
        goto LABEL_77;
      }

      v103[2] = v123;
      v120 = v167;
      __swift_storeEnumTagSinglePayload(v167, 1, 1, v179);
    }

    outlined destroy of UUID?(v120, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    v30 = v181;
    outlined destroy of StorableValue(v181, type metadata accessor for StorableValue);
    v105 = v164;
    (*v184)(v164, v186);
    ++v101;
    v104 = v165;
    v102 = v176;
  }

  (*v183)(v104, v178);
  (*v184)(v105, v186);

LABEL_63:
  v134 = v155;
LABEL_64:
  v141 = *(v154 + 16);
  *(v154 + 16) = v57;

  v133 = 0;
LABEL_65:
  objc_autoreleasePoolPop(v134);
  return v133;
}

uint64_t StorableValue.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_48();
  outlined init with copy of StorableValue(v7, v8);
  OUTLINED_FUNCTION_50();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = &enum case for SQLDataType.double(_:);
      goto LABEL_9;
    case 2u:
      v10 = &enum case for SQLDataType.date(_:);
      goto LABEL_11;
    case 3u:
      outlined destroy of StorableValue(v6, type metadata accessor for StorableValue);
      v9 = &enum case for SQLDataType.string(_:);
      goto LABEL_9;
    case 4u:
      outlined destroy of StorableValue(v6, type metadata accessor for StorableValue);
      v9 = &enum case for SQLDataType.json(_:);
      goto LABEL_9;
    case 5u:
      outlined destroy of StorableValue(v6, type metadata accessor for StorableValue);
      v9 = &enum case for SQLDataType.data(_:);
      goto LABEL_9;
    case 6u:
      v10 = &enum case for SQLDataType.uuid(_:);
LABEL_11:
      v14 = *v10;
      type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12();
      (*(v15 + 104))(a1, v14);
      OUTLINED_FUNCTION_1_12();
      return outlined destroy of StorableValue(v6, v16);
    case 7u:
      v9 = &enum case for SQLDataType.null(_:);
      goto LABEL_9;
    default:
      v9 = &enum case for SQLDataType.integer(_:);
LABEL_9:
      v11 = *v9;
      type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12();
      return (*(v12 + 104))(a1, v11);
  }
}

uint64_t closure #2 in recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a7;
  v57 = a4;
  v53 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v54 = *(v59 - 8);
  v11 = MEMORY[0x1EEE9AC00](v59, v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v58 = &v50 - v15;
  v16 = type metadata accessor for SQLDataType();
  Description = v16[-1].Description;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StorableValue(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a6 + 16) && (v52 = a3, v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v25 & 1) != 0))
  {
    specialized Dictionary.subscript.getter(v23, v24, *(a6 + 36), 0, a6);

    StorableValue.dataType.getter(v19);
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType(&lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType, type metadata accessor for SQLDataType, &protocol conformance descriptor for SQLDataType);
    v26 = v57;
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = Description;
    Description[1](v19, v16);
    if (v27)
    {
      outlined init with take of StorableValue(v23, v53);

      return a2;
    }

    else
    {
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      v47 = v46;
      v46[3] = v20;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
      outlined init with copy of StorableValue(v23, boxed_opaque_existential_0);
      v47[7] = v16;
      v49 = __swift_allocate_boxed_opaque_existential_0(v47 + 4);
      v28[2](v49, v26, v16);
      *(v47 + 64) = 3;
      swift_willThrow();
      return outlined destroy of StorableValue(v23);
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v30 = swift_allocError();
    v32 = v31;
    v33 = v56;
    v34 = *(v56 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v51 = v31;
      v52 = a6;
      v57 = v16;
      v53 = v30;
      v60 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v35 = v60;
      v36 = v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v56 = *(v54 + 72);
      v37 = Description + 1;
      do
      {
        v38 = v58;
        outlined init with copy of (key: String, value: SQLDataType)(v36, v58, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with take of (key: String, value: SQLDataType)(v38, v13, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        v40 = *v13;
        v39 = *(v13 + 1);
        (*v37)(&v13[*(v59 + 48)], v57);
        v60 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
          v35 = v60;
        }

        *(v35 + 16) = v42 + 1;
        v43 = v35 + 16 * v42;
        *(v43 + 32) = v40;
        *(v43 + 40) = v39;
        v36 += v56;
        --v34;
      }

      while (v34);
      v32 = v51;
    }

    v45 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5(v44);
    *v32 = v35;
    *(v32 + 8) = v45;
    *(v32 + 64) = 7;
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type SQLError and conformance SQLError()
{
  result = lazy protocol witness table cache variable for type SQLError and conformance SQLError;
  if (!lazy protocol witness table cache variable for type SQLError and conformance SQLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLError and conformance SQLError);
  }

  return result;
}

uint64_t static BMPoirotSchematizerShim.poirotValueToObjcValue(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnumValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for AnyValue();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v26 - v19;
  outlined init with copy of AnyValue?(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v12, &_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    outlined init with take of AnyValue(v12, v20);
    outlined init with copy of AnyValue(v20, v17);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v22 = *v17;
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E7668];
        goto LABEL_14;
      case 2u:
        v22 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E7360];
        goto LABEL_14;
      case 3u:
        v22 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E76D8];
        goto LABEL_14;
      case 4u:
        v22 = *v17;
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E6448];
        goto LABEL_14;
      case 5u:
        v22 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E63B0];
        goto LABEL_14;
      case 6u:
        v23 = 0;
        LOBYTE(v22) = *v17;
        v24 = MEMORY[0x1E69E6370];
        goto LABEL_14;
      case 7u:
        (*(v5 + 32))(v8, v17, v4);
        v27 = 0;
        v28 = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        MEMORY[0x1865F6280](0xD000000000000016, 0x8000000184DDC610);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](0xD000000000000026, 0x8000000184DDC5E0);
        goto LABEL_18;
      case 8u:
        v22 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v12 = *(v17 + 1);
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E6158];
        goto LABEL_14;
      case 9u:
        v22 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v12 = *(v17 + 1);
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E6969080];
        goto LABEL_14;
      case 0xAu:
        v25 = *v17;
        v27 = 0;
        v28 = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        MEMORY[0x1865F6280](0xD000000000000019, 0x8000000184DDC5C0);
        v26[1] = v25;
        type metadata accessor for SchematizedData();
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](0xD000000000000026, 0x8000000184DDC5E0);
LABEL_18:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x184907C6CLL);
      default:
        v22 = *v17;
        v23 = *v17 & 0xFFFFFF00;
        v24 = MEMORY[0x1E69E72F0];
LABEL_14:
        result = outlined destroy of AnyValue(v20);
        *a2 = v23 | v22;
        *(a2 + 4) = a1;
        *(a2 + 8) = v12;
        *(a2 + 24) = v24;
        break;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BookmarkCache.flush()()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for BookmarkCache(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 && *(v0 + *(v1 + 24)) == 1)
  {
    v3 = objc_opt_self();
    v29 = 0;
    swift_unknownObjectRetain();
    v4 = [v3 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v29];
    v5 = v29;
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v7;

      v29 = MaterializedView.name.getter();
      v30 = v8;

      OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_136_0();
      MEMORY[0x1865F6280]();

      v9 = v29;
      v10 = v30;
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x1865F6280](0x204543414C504552, 0xED0000204F544E49);
      MEMORY[0x1865F6280](v9, v10);

      OUTLINED_FUNCTION_72_2();
      MEMORY[0x1865F6280](0xD000000000000029);
      v11 = v29;
      v12 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
      v13 = *(type metadata accessor for StorableValue(0) - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_184D29A90;
      v17 = v16 + v15;
      *v17 = 1;
      *(v17 + 8) = 0;
      OUTLINED_FUNCTION_114();
      swift_storeEnumTagMultiPayload();
      v18 = (v17 + v14);
      *v18 = v6;
      v18[1] = v28;
      swift_storeEnumTagMultiPayload();
      v19 = OUTLINED_FUNCTION_77();
      outlined copy of Data._Representation(v19, v20);
      v21._countAndFlagsBits = v11;
      v21._object = v12;
      SQLExpressionEvaluator.execute(sql:bindingValues:)(v21, v16);
      if (v22)
      {
        swift_unknownObjectRelease();
        v23 = OUTLINED_FUNCTION_77();
        outlined consume of Data._Representation(v23, v24);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        swift_unknownObjectRelease();
        v26 = OUTLINED_FUNCTION_77();
        outlined consume of Data._Representation(v26, v27);
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    else
    {
      v25 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryPlannerMetadata.storeMetadata()()
{
  BookmarkCache.flush()();
  if (!v0)
  {
    specialized KeyedQueryPlannerMetadataCache.flush()();
    specialized KeyedQueryPlannerMetadataCache.flush()();
  }
}

void specialized KeyedQueryPlannerMetadataCache.flush()()
{
  v261._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v263 = *(v261._countAndFlagsBits - 8);
  v3 = MEMORY[0x1EEE9AC00](v261._countAndFlagsBits, v2);
  v261._object = &v248 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v264 = (&v248 - v6);
  MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
  if (!*(v0 + MatchingRecordCache[12]))
  {
    return;
  }

  v8 = *(v0 + MatchingRecordCache[7]);
  if (!*(v8 + 16))
  {
    return;
  }

  v250 = MatchingRecordCache[7];
  v265 = v1;
  _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
  v252 = v9;
  v254 = MatchingRecordCache;
  v10 = MatchingRecordCache[13];
  v256 = v0;
  v259 = *(v0 + v10);
  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  countAndFlagsBits = MEMORY[0x1E69E7CC8];
  v255 = MEMORY[0x1E69E7CC8];
  v257 = v8;
  v258 = v15;
  v260 = v8 + 64;
  if (v14)
  {
    while (1)
    {
LABEL_10:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v16 << 6);
      v21 = *(*(v8 + 48) + 8 * v20);
      v22 = (*(v8 + 56) + 24 * v20);
      LODWORD(v262) = *v22;
      v23 = *(v22 + 1);
      v24 = v22[16];

      swift_bridgeObjectRetain_n();
      if (v24)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v268._countAndFlagsBits = countAndFlagsBits;
        specialized __RawDictionaryStorage.find<A>(_:)(v21, v26, v27, v28, v29, v30, v31, v32, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261._countAndFlagsBits);
        v41 = v40;
        v42 = countAndFlagsBits[2];
        v43 = (v33 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_122;
        }

        v45 = v33;
        if (countAndFlagsBits[3] >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMR);
            _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native, v34, v35, v36, v37, v38, v39, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261._countAndFlagsBits);
          specialized __RawDictionaryStorage.find<A>(_:)(v21, v46, v47, v48, v49, v50, v51, v52, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261._countAndFlagsBits);
          if ((v45 & 1) != (v54 & 1))
          {
            goto LABEL_126;
          }

          v41 = v53;
        }

        v55 = v262;
        if (v45)
        {

          countAndFlagsBits = v268._countAndFlagsBits;
          v56 = *(v268._countAndFlagsBits + 56);
LABEL_19:
          v57 = v56 + 16 * v41;
          *v57 = v55;
          *(v57 + 8) = v23;

          goto LABEL_22;
        }

        countAndFlagsBits = v268._countAndFlagsBits;
        *(v268._countAndFlagsBits + 8 * (v41 >> 6) + 64) |= 1 << v41;
        *(countAndFlagsBits[6] + 8 * v41) = v21;
        v58 = countAndFlagsBits[7] + 16 * v41;
        *v58 = v55;
        *(v58 + 8) = v23;

        v59 = countAndFlagsBits[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_123;
        }

        countAndFlagsBits[2] = v61;
      }

      else
      {
        v62 = countAndFlagsBits;
        v63 = v255;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v268._countAndFlagsBits = v63;
        specialized __RawDictionaryStorage.find<A>(_:)(v21, v65, v66, v67, v68, v69, v70, v71, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261._countAndFlagsBits);
        v41 = v79;
        v80 = *(v63 + 16);
        v81 = (v72 & 1) == 0;
        v82 = v80 + v81;
        if (__OFADD__(v80, v81))
        {
          goto LABEL_124;
        }

        v83 = v72;
        if (*(v63 + 24) >= v82)
        {
          if ((v64 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMR);
            _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, v64, v73, v74, v75, v76, v77, v78, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261._countAndFlagsBits);
          specialized __RawDictionaryStorage.find<A>(_:)(v21, v84, v85, v86, v87, v88, v89, v90, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261._countAndFlagsBits);
          if ((v83 & 1) != (v92 & 1))
          {
            goto LABEL_126;
          }

          v41 = v91;
        }

        countAndFlagsBits = v62;
        v55 = v262;
        if (v83)
        {

          v255 = v268._countAndFlagsBits;
          v56 = *(v268._countAndFlagsBits + 56);
          goto LABEL_19;
        }

        v93 = v268._countAndFlagsBits;
        *(v268._countAndFlagsBits + 8 * (v41 >> 6) + 64) |= 1 << v41;
        *(v93[6] + 8 * v41) = v21;
        v94 = v93[7] + 16 * v41;
        *v94 = v55;
        *(v94 + 8) = v23;

        v95 = v93[2];
        v60 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v60)
        {
          goto LABEL_125;
        }

        v255 = v93;
        v93[2] = v96;
      }

LABEL_22:
      v8 = v257;
      v15 = v258;
      v11 = v260;
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  v97 = countAndFlagsBits[2];
  v253 = countAndFlagsBits;
  if (v97)
  {
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v99 = v98;
    static KeyedFirstMatchingRecordCache.columnNames(groupBySchema:payloadSchema:)();
    v101 = v100;
    v262 = v99;
    v102 = *(v99 + 16);
    v251 = v100;
    if (v102)
    {
      v260 = v102;
      v266 = 0;
      v267 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v268._countAndFlagsBits = 0x20455441445055;
      v268._object = 0xE700000000000000;
      v103 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
      v105 = v104;

      MEMORY[0x1865F6280](v103, v105);

      MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
      v106 = *(v101 + 16);
      v107 = MEMORY[0x1E69E7CC0];
      if (v106)
      {
        v269 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
        v108 = v269;
        v109 = (v101 + 40);
        do
        {
          v111 = *(v109 - 1);
          v110 = *v109;
          v266 = 34;
          v267 = 0xE100000000000000;

          MEMORY[0x1865F6280](v111, v110);
          MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

          v112 = v266;
          v113 = v267;
          v269 = v108;
          v115 = *(v108 + 16);
          v114 = *(v108 + 24);
          if (v115 >= v114 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v115 + 1, 1);
            v108 = v269;
          }

          *(v108 + 16) = v115 + 1;
          v116 = v108 + 16 * v115;
          *(v116 + 32) = v112;
          *(v116 + 40) = v113;
          v109 += 2;
          --v106;
        }

        while (v106);
        v107 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v108 = MEMORY[0x1E69E7CC0];
      }

      v266 = v108;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v136 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v249 = v135;
      v248 = v136;
      v137 = BidirectionalCollection<>.joined(separator:)();
      v139 = v138;

      MEMORY[0x1865F6280](v137, v139);

      MEMORY[0x1865F6280](0x282045524548570ALL, 0xED0000202020200ALL);
      v266 = v107;
      v140 = v260;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v260, 0);
      v141 = 0;
      v142 = v266;
      v258 = v262 + ((*(v263 + 80) + 32) & ~*(v263 + 80));
      v143 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd;
      while (v140 != v141)
      {
        if (v141 >= *(v262 + 16))
        {
          goto LABEL_121;
        }

        object = v261._object;
        outlined init with copy of Date?(v258 + *(v263 + 72) * v141, v261._object, v143, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v145 = v265;
        closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
        v265 = v145;
        if (v145)
        {

          outlined destroy of (columnName: String, dataType: SQLDataType)(object, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);

          goto LABEL_59;
        }

        v148 = v146;
        v149 = v147;
        v150 = v143;
        outlined destroy of (columnName: String, dataType: SQLDataType)(object, v143, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v266 = v142;
        v152 = *(v142 + 16);
        v151 = *(v142 + 24);
        if (v152 >= v151 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v151 > 1, v152 + 1, 1);
          v142 = v266;
        }

        ++v141;
        *(v142 + 16) = v152 + 1;
        v153 = v142 + 16 * v152;
        *(v153 + 32) = v148;
        *(v153 + 40) = v149;
        v140 = v260;
        v143 = v150;
        if (v260 == v141)
        {
          v266 = v142;
          v154 = BidirectionalCollection<>.joined(separator:)();
          v156 = v155;

          MEMORY[0x1865F6280](v154, v156);

          MEMORY[0x1865F6280](10506, 0xE200000000000000);
          goto LABEL_61;
        }
      }

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v268._countAndFlagsBits = 0;
    v268._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v268._countAndFlagsBits = 0x20455441445055;
    v268._object = 0xE700000000000000;
    v119 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
    v121 = v120;

    MEMORY[0x1865F6280](v119, v121);

    MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
    v122 = *(v101 + 16);
    v123 = MEMORY[0x1E69E7CC0];
    if (v122)
    {
      v269 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 0);
      v123 = v269;
      v124 = (v101 + 40);
      do
      {
        v126 = *(v124 - 1);
        v125 = *v124;
        v266 = 34;
        v267 = 0xE100000000000000;

        MEMORY[0x1865F6280](v126, v125);
        MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

        v128 = v266;
        v127 = v267;
        v269 = v123;
        v130 = *(v123 + 16);
        v129 = *(v123 + 24);
        if (v130 >= v129 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v129 > 1, v130 + 1, 1);
          v123 = v269;
        }

        *(v123 + 16) = v130 + 1;
        v131 = v123 + 16 * v130;
        *(v131 + 32) = v128;
        *(v131 + 40) = v127;
        v124 += 2;
        --v122;
      }

      while (v122);
    }

    v266 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v132 = BidirectionalCollection<>.joined(separator:)();
    v134 = v133;

    MEMORY[0x1865F6280](v132, v134);

LABEL_61:
    v261 = v268;
    v157 = v253;
    v158 = v253 + 8;
    v159 = 1 << *(v253 + 32);
    v160 = -1;
    if (v159 < 64)
    {
      v160 = ~(-1 << v159);
    }

    v161 = v160 & v253[8];
    v162 = (v159 + 63) >> 6;

    v163 = 0;
    if (v161)
    {
      while (1)
      {
        v164 = v163;
LABEL_68:
        v165 = __clz(__rbit64(v161)) | (v164 << 6);
        v166 = *(*(v157 + 48) + 8 * v165);
        v167 = (*(v157 + 56) + 16 * v165);
        v168 = *v167;
        v169 = *(v167 + 1);

        v170 = v168;
        v171 = v265;
        PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5(v166, v170, v169, v262, v259, v251);
        if (v171)
        {

          goto LABEL_60;
        }

        v173._rawValue = PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5;

        SQLExpressionEvaluator.execute(sql:bindingValues:)(v261, v173);
        v265 = v174;
        if (v174)
        {
          break;
        }

        v161 &= v161 - 1;

        v163 = v164;
        v157 = v253;
        if (!v161)
        {
          goto LABEL_65;
        }
      }

LABEL_59:

      goto LABEL_60;
    }

LABEL_65:
    while (1)
    {
      v164 = v163 + 1;
      if (__OFADD__(v163, 1))
      {
        break;
      }

      if (v164 >= v162)
      {

        v118 = v255;
        v117 = v256;
        v8 = v257;
        goto LABEL_73;
      }

      v161 = v158[v164];
      ++v163;
      if (v161)
      {
        goto LABEL_68;
      }
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v118 = v255;
  v117 = v256;
LABEL_73:
  v175 = v252;
  if (*(v118 + 16))
  {
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v262 = v176;
    static KeyedFirstMatchingRecordCache.columnNames(groupBySchema:payloadSchema:)();
    v178 = v177;
    v268._countAndFlagsBits = 0xD000000000000010;
    v268._object = 0x8000000184DDCE80;
    v179 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
    v181 = v180;

    MEMORY[0x1865F6280](v179, v181);

    MEMORY[0x1865F6280](10272, 0xE200000000000000);
    v182 = v178[2];
    v183 = MEMORY[0x1E69E7CC0];
    v261._object = v178;
    if (v182)
    {
      v269 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v182, 0);
      v183 = v269;
      v184 = v178 + 5;
      v185 = v182;
      do
      {
        v187 = *(v184 - 1);
        v186 = *v184;
        v266 = 34;
        v267 = 0xE100000000000000;

        MEMORY[0x1865F6280](v187, v186);
        MEMORY[0x1865F6280](34, 0xE100000000000000);

        v189 = v266;
        v188 = v267;
        v269 = v183;
        v191 = *(v183 + 16);
        v190 = *(v183 + 24);
        if (v191 >= v190 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v190 > 1, v191 + 1, 1);
          v183 = v269;
        }

        *(v183 + 16) = v191 + 1;
        v192 = v183 + 16 * v191;
        *(v192 + 32) = v189;
        *(v192 + 40) = v188;
        v184 += 2;
        --v185;
      }

      while (v185);
    }

    v266 = v183;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v193 = BidirectionalCollection<>.joined(separator:)();
    v195 = v194;

    MEMORY[0x1865F6280](v193, v195);

    MEMORY[0x1865F6280](0x4156202020200A29, 0xEF2028205345554CLL);
    v196 = MEMORY[0x1E69E7CC0];
    if (v182)
    {
      v266 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v182, 0);
      v196 = v266;
      v197 = *(v266 + 16);
      v198 = 16 * v197;
      do
      {
        v266 = v196;
        v199 = *(v196 + 24);
        v200 = v197 + 1;
        if (v197 >= v199 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v199 > 1, v197 + 1, 1);
          v196 = v266;
        }

        *(v196 + 16) = v200;
        v201 = v196 + v198;
        *(v201 + 32) = 63;
        *(v201 + 40) = 0xE100000000000000;
        v198 += 16;
        v197 = v200;
        --v182;
      }

      while (v182);
    }

    v266 = v196;
    v202 = BidirectionalCollection<>.joined(separator:)();
    v204 = v203;

    MEMORY[0x1865F6280](v202, v204);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    v260 = v268._countAndFlagsBits;
    v261._countAndFlagsBits = v268._object;
    v205 = v255 + 8;
    v206 = 1 << *(v255 + 32);
    v207 = -1;
    if (v206 < 64)
    {
      v207 = ~(-1 << v206);
    }

    v208 = v207 & v255[8];
    v209 = (v206 + 63) >> 6;

    v210 = 0;
    if (v208)
    {
      while (1)
      {
        v211 = v210;
LABEL_91:
        v212 = __clz(__rbit64(v208)) | (v211 << 6);
        v213 = *(v255[6] + 8 * v212);
        v214 = (v255[7] + 16 * v212);
        v215 = *v214;
        v216 = *(v214 + 1);

        v217 = v215;
        v218 = v265;
        PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5(v213, v217, v216, v262, v259, v261._object);
        if (v218)
        {
          break;
        }

        v220._rawValue = PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5;

        v221._countAndFlagsBits = v260;
        v221._object = v261._countAndFlagsBits;
        SQLExpressionEvaluator.execute(sql:bindingValues:)(v221, v220);
        v265 = v222;
        if (v222)
        {
          break;
        }

        v208 &= v208 - 1;

        v210 = v211;
        if (!v208)
        {
          goto LABEL_88;
        }
      }

LABEL_60:

      return;
    }

LABEL_88:
    while (1)
    {
      v211 = v210 + 1;
      if (__OFADD__(v210, 1))
      {
        goto LABEL_118;
      }

      if (v211 >= v209)
      {

        v117 = v256;
        v8 = v257;
        v175 = v252;
        break;
      }

      v208 = v205[v211];
      ++v210;
      if (v208)
      {
        goto LABEL_91;
      }
    }
  }

  if (*(v175 + 16))
  {
    v223 = *(v117 + v254[11]);
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v225 = v224;

    v226 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
    v228 = v227;

    v268._countAndFlagsBits = v226;
    v268._object = v228;

    MEMORY[0x1865F6280](0x7865646E695FLL, 0xE600000000000000);
    v229 = v268._countAndFlagsBits;
    v230 = v268._object;
    v268._countAndFlagsBits = 0xD000000000000022;
    v268._object = 0x8000000184DDCE50;
    MEMORY[0x1865F6280](v229, v230);
    v231 = v225;

    MEMORY[0x1865F6280](542002976, 0xE400000000000000);
    MEMORY[0x1865F6280](v226, v228);

    MEMORY[0x1865F6280](2107424, 0xE300000000000000);
    v232 = v225[2];
    if (v232)
    {
      v262 = v223;
      v269 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v232, 0);
      v233 = v269;
      v234 = *(v263 + 80);
      v261._object = v231;
      v235 = v231 + ((v234 + 32) & ~v234);
      v263 = *(v263 + 72);
      do
      {
        v236 = v264;
        outlined init with copy of Date?(v235, v264, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v266 = 34;
        v267 = 0xE100000000000000;
        MEMORY[0x1865F6280](*v236, v236[1]);
        MEMORY[0x1865F6280](34, 0xE100000000000000);
        v238 = v266;
        v237 = v267;
        outlined destroy of (columnName: String, dataType: SQLDataType)(v236, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v269 = v233;
        v240 = *(v233 + 16);
        v239 = *(v233 + 24);
        if (v240 >= v239 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v239 > 1, v240 + 1, 1);
          v233 = v269;
        }

        *(v233 + 16) = v240 + 1;
        v241 = v233 + 16 * v240;
        *(v241 + 32) = v238;
        *(v241 + 40) = v237;
        v235 += v263;
        --v232;
      }

      while (v232);

      v117 = v256;
    }

    else
    {

      v233 = MEMORY[0x1E69E7CC0];
    }

    v266 = v233;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v242 = BidirectionalCollection<>.joined(separator:)();
    v244 = v243;

    MEMORY[0x1865F6280](v242, v244);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    SQLExpressionEvaluator.execute(sql:bindingValues:)(v268, MEMORY[0x1E69E7CC0]);
    if (v245)
    {

      return;
    }

    v8 = v257;
  }

  else
  {
  }

  v246 = v254[14];
  if (*(v117 + v246) == 1)
  {
    v247 = *(v8 + 16);

    if (v247)
    {
      *(v117 + v246) = 0;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventt_GMd, &_sSD8_VariantVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventt_GMR);
  Dictionary._Variant.removeAll(keepingCapacity:)(1);
}

{
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v252 = *(v250 - 1);
  v3 = MEMORY[0x1EEE9AC00](v250, v2);
  v5 = &v238 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v253 = (&v238 - v7);
  v8 = type metadata accessor for KeyedAggregationMetadataCache(0);
  if (!*(v0 + v8[12]))
  {
    return;
  }

  v248._object = v5;
  v9 = *(v0 + v8[7]);
  if (!*(v9 + 16))
  {
    return;
  }

  v240 = v8[7];
  v255 = v1;
  _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
  v242 = v10;
  v243 = v8;
  v11 = v8[13];
  v245 = v0;
  v247 = *(v0 + v11);
  v12 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v19 = MEMORY[0x1E69E7CC8];
  v244 = v9;
  v251 = v9 + 64;
  v248._countAndFlagsBits = v16;
LABEL_6:
  v249 = v18;
  while (1)
  {
    v254 = v19;
    if (!v15)
    {
      break;
    }

LABEL_12:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v22 = v21 | (v17 << 6);
    v23 = *(v9 + 56);
    v24 = *(*(v9 + 48) + 8 * v22);
    v25 = (v23 + 16 * v22);
    v26 = *v25;
    v27 = *(v25 + 8);

    swift_bridgeObjectRetain_n();
    if ((v27 & 1) == 0)
    {
      v61 = v249;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v258._countAndFlagsBits = v61;
      specialized __RawDictionaryStorage.find<A>(_:)(v24, v63, v64, v65, v66, v67, v68, v69, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248._countAndFlagsBits, v248._object, v249, v250);
      v78 = v77;
      v79 = *(v61 + 16);
      v80 = (v70 & 1) == 0;
      v81 = v79 + v80;
      if (__OFADD__(v79, v80))
      {
        goto LABEL_127;
      }

      v82 = v70;
      if (*(v61 + 24) >= v81)
      {
        v19 = v254;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMR);
          _NativeDictionary.copy()();
          goto LABEL_29;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, isUniquelyReferenced_nonNull_native, v71, v72, v73, v74, v75, v76, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248._countAndFlagsBits, v248._object, v249, v250);
        specialized __RawDictionaryStorage.find<A>(_:)(v24, v83, v84, v85, v86, v87, v88, v89, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248._countAndFlagsBits, v248._object, v249, v250);
        if ((v82 & 1) != (v91 & 1))
        {
          goto LABEL_129;
        }

        v78 = v90;
LABEL_29:
        v19 = v254;
      }

      if (v82)
      {

        countAndFlagsBits = v258._countAndFlagsBits;
        *(*(v258._countAndFlagsBits + 56) + 8 * v78) = v26;
        v18 = countAndFlagsBits;
      }

      else
      {
        v93 = v258._countAndFlagsBits;
        *(v258._countAndFlagsBits + 8 * (v78 >> 6) + 64) |= 1 << v78;
        *(*(v93 + 48) + 8 * v78) = v24;
        *(*(v93 + 56) + 8 * v78) = v26;
        v18 = v93;

        v94 = *(v18 + 16);
        v59 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v59)
        {
          goto LABEL_128;
        }

        *(v18 + 16) = v95;
      }

      v9 = v244;
      v12 = v251;
      v16 = v248._countAndFlagsBits;
      goto LABEL_6;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v258._countAndFlagsBits = v19;
    specialized __RawDictionaryStorage.find<A>(_:)(v24, v29, v30, v31, v32, v33, v34, v35, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248._countAndFlagsBits, v248._object, v249, v250);
    v44 = v43;
    v45 = v254[2];
    v46 = (v36 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v48 = v36;
    if (v254[3] >= v47)
    {
      if (v28)
      {
        if (v36)
        {
          goto LABEL_20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMR);
        _NativeDictionary.copy()();
        if (v48)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v28, v37, v38, v39, v40, v41, v42, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248._countAndFlagsBits, v248._object, v249, v250);
      specialized __RawDictionaryStorage.find<A>(_:)(v24, v49, v50, v51, v52, v53, v54, v55, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248._countAndFlagsBits, v248._object, v249, v250);
      if ((v48 & 1) != (v57 & 1))
      {
        goto LABEL_129;
      }

      v44 = v56;
      if (v48)
      {
LABEL_20:

        v19 = v258._countAndFlagsBits;
        *(*(v258._countAndFlagsBits + 56) + 8 * v44) = v26;

        goto LABEL_24;
      }
    }

    v19 = v258._countAndFlagsBits;
    *(v258._countAndFlagsBits + 8 * (v44 >> 6) + 64) |= 1 << v44;
    *(v19[6] + 8 * v44) = v24;
    *(v19[7] + 8 * v44) = v26;

    v58 = v19[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_126;
    }

    v19[2] = v60;
LABEL_24:
    v18 = v249;
    v9 = v244;
    v12 = v251;
    v16 = v248._countAndFlagsBits;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v17;
    if (v15)
    {
      v17 = v20;
      goto LABEL_12;
    }
  }

  if (v19[2])
  {
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v97 = v96;
    static KeyedAggregationMetadataCache.columnNames(groupBySchema:payloadSchema:)();
    v99 = v98;
    v251 = v97;
    v100 = *(v97 + 16);
    v241 = v98;
    if (v100)
    {
      v248._countAndFlagsBits = v100;
      v256 = 0;
      v257 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v258._countAndFlagsBits = 0x20455441445055;
      v258._object = 0xE700000000000000;
      v101 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
      v103 = v102;

      MEMORY[0x1865F6280](v101, v103);

      MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
      v104 = *(v99 + 16);
      v105 = MEMORY[0x1E69E7CC0];
      if (v104)
      {
        v259 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
        v106 = v259;
        v107 = (v99 + 40);
        do
        {
          v109 = *(v107 - 1);
          v108 = *v107;
          v256 = 34;
          v257 = 0xE100000000000000;

          MEMORY[0x1865F6280](v109, v108);
          MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

          v110 = v256;
          v111 = v257;
          v259 = v106;
          v113 = *(v106 + 16);
          v112 = *(v106 + 24);
          if (v113 >= v112 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1);
            v106 = v259;
          }

          *(v106 + 16) = v113 + 1;
          v114 = v106 + 16 * v113;
          *(v114 + 32) = v110;
          *(v114 + 40) = v111;
          v107 += 2;
          --v104;
        }

        while (v104);
        v105 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v106 = MEMORY[0x1E69E7CC0];
      }

      v256 = v106;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v134 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v239 = v133;
      v238 = v134;
      v135 = BidirectionalCollection<>.joined(separator:)();
      v137 = v136;

      MEMORY[0x1865F6280](v135, v137);

      MEMORY[0x1865F6280](0x282045524548570ALL, 0xED0000202020200ALL);
      v256 = v105;
      v138 = v248._countAndFlagsBits;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v248._countAndFlagsBits, 0);
      v139 = 0;
      v140 = v256;
      v246 = v251 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
      v141 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd;
      while (v138 != v139)
      {
        if (v139 >= *(v251 + 16))
        {
          goto LABEL_124;
        }

        object = v248._object;
        outlined init with copy of Date?(v246 + *(v252 + 72) * v139, v248._object, v141, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v143 = v255;
        closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
        v255 = v143;
        if (v143)
        {

          outlined destroy of (columnName: String, dataType: SQLDataType)(object, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);

          goto LABEL_62;
        }

        v146 = v144;
        v147 = v145;
        v148 = v141;
        outlined destroy of (columnName: String, dataType: SQLDataType)(object, v141, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v256 = v140;
        v150 = *(v140 + 16);
        v149 = *(v140 + 24);
        if (v150 >= v149 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v150 + 1, 1);
          v140 = v256;
        }

        ++v139;
        *(v140 + 16) = v150 + 1;
        v151 = v140 + 16 * v150;
        *(v151 + 32) = v146;
        *(v151 + 40) = v147;
        v138 = v248._countAndFlagsBits;
        v141 = v148;
        if (v248._countAndFlagsBits == v139)
        {
          v256 = v140;
          v152 = BidirectionalCollection<>.joined(separator:)();
          v154 = v153;

          MEMORY[0x1865F6280](v152, v154);

          MEMORY[0x1865F6280](10506, 0xE200000000000000);
          goto LABEL_64;
        }
      }

      goto LABEL_123;
    }

    v258._countAndFlagsBits = 0;
    v258._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v258._countAndFlagsBits = 0x20455441445055;
    v258._object = 0xE700000000000000;
    v117 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    v119 = v118;

    MEMORY[0x1865F6280](v117, v119);

    MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
    v120 = *(v99 + 16);
    v121 = MEMORY[0x1E69E7CC0];
    if (v120)
    {
      v259 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 0);
      v121 = v259;
      v122 = (v99 + 40);
      do
      {
        v124 = *(v122 - 1);
        v123 = *v122;
        v256 = 34;
        v257 = 0xE100000000000000;

        MEMORY[0x1865F6280](v124, v123);
        MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

        v126 = v256;
        v125 = v257;
        v259 = v121;
        v128 = *(v121 + 16);
        v127 = *(v121 + 24);
        if (v128 >= v127 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v127 > 1, v128 + 1, 1);
          v121 = v259;
        }

        *(v121 + 16) = v128 + 1;
        v129 = v121 + 16 * v128;
        *(v129 + 32) = v126;
        *(v129 + 40) = v125;
        v122 += 2;
        --v120;
      }

      while (v120);
    }

    v256 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v130 = BidirectionalCollection<>.joined(separator:)();
    v132 = v131;

    MEMORY[0x1865F6280](v130, v132);

LABEL_64:
    v248._object = v258._countAndFlagsBits;
    v250 = v258._object;
    v155 = v254;
    v156 = v254 + 8;
    v157 = 1 << *(v254 + 32);
    v158 = -1;
    if (v157 < 64)
    {
      v158 = ~(-1 << v157);
    }

    v159 = v158 & v254[8];
    v160 = (v157 + 63) >> 6;

    v161 = 0;
    if (v159)
    {
      while (1)
      {
        v162 = v161;
LABEL_71:
        v163 = (v162 << 9) | (8 * __clz(__rbit64(v159)));
        v164 = *(v155[6] + v163);
        v165 = *(v155[7] + v163);

        v166 = v255;
        PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5(v164, v165, v251, v247, v241);
        if (v166)
        {

          goto LABEL_63;
        }

        v168._rawValue = PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5;

        v169._countAndFlagsBits = v248._object;
        v169._object = v250;
        SQLExpressionEvaluator.execute(sql:bindingValues:)(v169, v168);
        v255 = v170;
        if (v170)
        {
          break;
        }

        v159 &= v159 - 1;

        v161 = v162;
        v155 = v254;
        if (!v159)
        {
          goto LABEL_68;
        }
      }

LABEL_62:

LABEL_63:

      return;
    }

LABEL_68:
    while (1)
    {
      v162 = v161 + 1;
      if (__OFADD__(v161, 1))
      {
        break;
      }

      if (v162 >= v160)
      {

        v115 = v255;
        v9 = v244;
        v116 = v245;
        v18 = v249;
        goto LABEL_76;
      }

      v159 = v156[v162];
      ++v161;
      if (v159)
      {
        goto LABEL_71;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v115 = v255;
  v116 = v245;
LABEL_76:
  if (*(v18 + 16))
  {
    v255 = v115;
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v251 = v171;
    static KeyedAggregationMetadataCache.columnNames(groupBySchema:payloadSchema:)();
    v173 = v172;
    v258._countAndFlagsBits = 0xD000000000000010;
    v258._object = 0x8000000184DDCE80;
    v174 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    v176 = v175;

    MEMORY[0x1865F6280](v174, v176);

    MEMORY[0x1865F6280](10272, 0xE200000000000000);
    v177 = v173[2];
    v178 = MEMORY[0x1E69E7CC0];
    v250 = v173;
    if (v177)
    {
      v259 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v177, 0);
      v178 = v259;
      v179 = v173 + 5;
      v180 = v177;
      do
      {
        v182 = *(v179 - 1);
        v181 = *v179;
        v256 = 34;
        v257 = 0xE100000000000000;

        MEMORY[0x1865F6280](v182, v181);
        MEMORY[0x1865F6280](34, 0xE100000000000000);

        v184 = v256;
        v183 = v257;
        v259 = v178;
        v186 = *(v178 + 16);
        v185 = *(v178 + 24);
        if (v186 >= v185 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v185 > 1, v186 + 1, 1);
          v178 = v259;
        }

        *(v178 + 16) = v186 + 1;
        v187 = v178 + 16 * v186;
        *(v187 + 32) = v184;
        *(v187 + 40) = v183;
        v179 += 2;
        --v180;
      }

      while (v180);
    }

    v256 = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v188 = BidirectionalCollection<>.joined(separator:)();
    v190 = v189;

    MEMORY[0x1865F6280](v188, v190);

    MEMORY[0x1865F6280](0x4156202020200A29, 0xEF2028205345554CLL);
    v191 = MEMORY[0x1E69E7CC0];
    if (v177)
    {
      v256 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v177, 0);
      v191 = v256;
      v192 = *(v256 + 16);
      v193 = 16 * v192;
      do
      {
        v256 = v191;
        v194 = *(v191 + 24);
        v195 = v192 + 1;
        if (v192 >= v194 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v194 > 1, v192 + 1, 1);
          v191 = v256;
        }

        *(v191 + 16) = v195;
        v196 = v191 + v193;
        *(v196 + 32) = 63;
        *(v196 + 40) = 0xE100000000000000;
        v193 += 16;
        v192 = v195;
        --v177;
      }

      while (v177);
    }

    v256 = v191;
    v197 = BidirectionalCollection<>.joined(separator:)();
    v199 = v198;

    MEMORY[0x1865F6280](v197, v199);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    v248 = v258;
    v200 = v249 + 64;
    v201 = 1 << *(v249 + 32);
    v202 = -1;
    if (v201 < 64)
    {
      v202 = ~(-1 << v201);
    }

    v203 = v202 & *(v249 + 64);
    v204 = (v201 + 63) >> 6;

    for (i = 0; ; i = v206)
    {
      v115 = v255;
      if (!v203)
      {
        break;
      }

      v206 = i;
LABEL_95:
      v207 = (v206 << 9) | (8 * __clz(__rbit64(v203)));
      v208 = *(*(v249 + 48) + v207);
      v209 = *(*(v249 + 56) + v207);

      PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5(v208, v209, v251, v247, v250);
      if (v115 || (v211._rawValue = PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5, , SQLExpressionEvaluator.execute(sql:bindingValues:)(v248, v211), (v255 = v212) != 0))
      {

        goto LABEL_63;
      }

      v203 &= v203 - 1;
    }

    while (1)
    {
      v206 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_121;
      }

      if (v206 >= v204)
      {

        v9 = v244;
        v116 = v245;
        break;
      }

      v203 = *(v200 + 8 * v206);
      ++i;
      if (v203)
      {
        goto LABEL_95;
      }
    }
  }

  if (*(v242 + 16))
  {
    v213 = *(v116 + v243[11]);
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v215 = v214;

    v216 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    v218 = v217;

    v258._countAndFlagsBits = v216;
    v258._object = v218;

    MEMORY[0x1865F6280](0x7865646E695FLL, 0xE600000000000000);
    v219 = v258._countAndFlagsBits;
    v220 = v258._object;
    v258._countAndFlagsBits = 0xD000000000000022;
    v258._object = 0x8000000184DDCE50;
    MEMORY[0x1865F6280](v219, v220);
    v221 = v215;

    MEMORY[0x1865F6280](542002976, 0xE400000000000000);
    MEMORY[0x1865F6280](v216, v218);

    MEMORY[0x1865F6280](2107424, 0xE300000000000000);
    v222 = v215[2];
    if (v222)
    {
      v251 = v213;
      v255 = v115;
      v259 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v222, 0);
      v223 = v259;
      v224 = *(v252 + 80);
      v250 = v221;
      v225 = v221 + ((v224 + 32) & ~v224);
      v252 = *(v252 + 72);
      do
      {
        v226 = v253;
        outlined init with copy of Date?(v225, v253, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v256 = 34;
        v257 = 0xE100000000000000;
        MEMORY[0x1865F6280](*v226, v226[1]);
        MEMORY[0x1865F6280](34, 0xE100000000000000);
        v228 = v256;
        v227 = v257;
        outlined destroy of (columnName: String, dataType: SQLDataType)(v226, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v259 = v223;
        v230 = *(v223 + 16);
        v229 = *(v223 + 24);
        if (v230 >= v229 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v229 > 1, v230 + 1, 1);
          v223 = v259;
        }

        *(v223 + 16) = v230 + 1;
        v231 = v223 + 16 * v230;
        *(v231 + 32) = v228;
        *(v231 + 40) = v227;
        v225 += v252;
        --v222;
      }

      while (v222);
    }

    else
    {

      v223 = MEMORY[0x1E69E7CC0];
    }

    v256 = v223;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v232 = BidirectionalCollection<>.joined(separator:)();
    v234 = v233;

    MEMORY[0x1865F6280](v232, v234);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    SQLExpressionEvaluator.execute(sql:bindingValues:)(v258, MEMORY[0x1E69E7CC0]);
    if (v235)
    {

      return;
    }

    v9 = v244;
  }

  else
  {
  }

  v236 = v243[14];
  if (*(v245 + v236) == 1)
  {
    v237 = *(v9 + 16);

    if (v237)
    {
      *(v245 + v236) = 0;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventt_GMd, &_sSD8_VariantVySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventt_GMR);
  Dictionary._Variant.removeAll(keepingCapacity:)(1);
}

uint64_t SQLExpressionEvaluator.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sqlite3_finalize(*(*(v2 + 56) + ((v9 << 9) | (8 * v10))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_14;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  sqlite3_finalize(*(v1 + 40));
  if (*(v1 + 16) != 1)
  {
    goto LABEL_18;
  }

  v11 = sqlite3_close_v2(*(v1 + 24));
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = BMSQLDatabaseError(v11, *(v1 + 24), 0);
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = v14;

  v37[0] = v13;
  v37[1] = v15;
  OUTLINED_FUNCTION_1();
  v36 = v16;
  OUTLINED_FUNCTION_2_7();
  v34 = v17;
  v35 = v18;
  v19 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_14_1(v19, v20, v21, v22, v23, v24, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6158], v19, v19, v19, v34, v35, v36);
  OUTLINED_FUNCTION_3_10();
  v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v3 = v26;

  if (one-time initialization token for SQL != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logging.SQL);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v30 = 136315138;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v3, v37);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_1848EE000, v28, v29, "SQLExpressionEvaluator: Failed to close database connection with error: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1865F7B70](v31, -1, -1);
    MEMORY[0x1865F7B70](v30, -1, -1);
  }

  else
  {
  }

LABEL_18:

  return v1;
}

uint64_t QueryPlannerMetadata.deinit()
{
  v1 = OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_materializedView;
  type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_5_7();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_32_4();
  _s12BiomeStreams13StorableValueOWOhTm_1();
  OUTLINED_FUNCTION_31_5();
  _s12BiomeStreams13StorableValueOWOhTm_1();
  _s12BiomeStreams13StorableValueOWOhTm_1();
  return v0;
}

uint64_t QueryPlannerMetadata.__deallocating_deinit()
{
  QueryPlannerMetadata.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 OUTLINED_FUNCTION_32()
{
  result = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = result;
  return result;
}

void *OUTLINED_FUNCTION_32_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14BiomeSQLParser19AggregationFunctionV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

unint64_t *SelectCorePhysicalPlan.update(metadata:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_29();
  v229 = v6;
  OUTLINED_FUNCTION_43();
  v243 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v219 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_13();
  v241 = v11 - v10;
  v12 = OUTLINED_FUNCTION_43();
  v245 = type metadata accessor for StorableValue(v12);
  OUTLINED_FUNCTION_2_1();
  v237 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_9_0();
  v228 = v16;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_30();
  v236 = v19;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_30();
  v248 = v22;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_51();
  v240 = v25;
  OUTLINED_FUNCTION_43();
  v239 = type metadata accessor for ResultColumn();
  OUTLINED_FUNCTION_2_1();
  v242 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_94(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_47(v31);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_29();
  v221 = v34;
  OUTLINED_FUNCTION_43();
  v235 = type metadata accessor for SelectCore();
  OUTLINED_FUNCTION_2_1();
  v226 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_59(&v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v224 = objc_autoreleasePoolPush();
  v40 = type metadata accessor for SelectCorePhysicalPlan(0);
  v41 = v40[5];
  v42 = *(v1 + v40[6]);
  v43 = v40[8];
  v227 = *(v1 + v40[7]);
  v244 = *(v1 + v43);
  OUTLINED_FUNCTION_93();
  v233 = swift_allocObject();
  *(v233 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_93();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = v44;
  v246 = [v42 publisher];
  v46 = &a1[OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_bookmark];
  v231 = *&v46[*(type metadata accessor for BookmarkCache(0) + 20)];
  v47 = swift_allocObject();
  v47[2] = v42;
  v47[3] = v45;
  v247 = v45;
  v47[4] = a1;
  v255 = partial apply for closure #1 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:);
  v256 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v252 = 1107296256;
  v230 = &v253;
  v253 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ();
  v254 = &block_descriptor;
  v232 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v48 = v42;
  v225 = v48;

  v220 = a1;

  v49 = v226;
  v50 = *(v226 + 2);
  v223 = v1;
  v222 = v41;
  v51 = v234;
  v52 = v235;
  v50(v234, v1 + v41, v235);
  v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v54 = (v37 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v247;
  *(v56 + 16) = v48;
  *(v56 + 24) = v57;
  (*(v49 + 32))(v56 + v53, v51, v52);
  *(v56 + v54) = v244;
  OUTLINED_FUNCTION_101();
  v58 = v233;
  *(v56 + v55) = v233;
  *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v255 = partial apply for closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:);
  v256 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v252 = 1107296256;
  v253 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v254 = &block_descriptor_36;
  v60 = _Block_copy(&aBlock);
  v61 = v225;
  v62 = v247;

  v63 = v58;

  v64 = v246;
  v65 = v232;
  v66 = [v246 drivableSinkWithBookmark:v231 completion:v232 shouldContinue:v60];
  _Block_release(v60);
  _Block_release(v65);

  swift_unknownObjectRelease();
  v67 = v62[2];
  if (v67)
  {
    swift_willThrow();
    v68 = v67;

LABEL_88:
    objc_autoreleasePoolPop(v224);
    return v63;
  }

  v69 = v249;
  v70 = v58[2];

  v71 = *(v70 + 2);
  v72 = v223;
  v73 = v222;
  v74 = SelectCore.groupBy.getter();
  v218 = v71;
  if (!v74)
  {
    v87 = MEMORY[0x1E69E7CC0];
    v88 = v219;
    goto LABEL_51;
  }

  v75 = v74;
  v226 = v70;
  v76 = selectAndHavingAggregateFunctions(selectCore:)(v72 + v73);
  v247 = SelectCore.select.getter();
  v77 = v221;
  SelectCore.having.getter(v221);
  aBlock = v75;

  specialized MutableCollection<>.sort(by:)(&aBlock);
  p_aBlock = v69;
  if (!v69)
  {

    v79 = aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS12BiomeStreams13StorableValueOGMd, &_sSDySS12BiomeStreams13StorableValueOGMR);
    lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
    OUTLINED_FUNCTION_73();
    v80 = Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_73();
    v81 = Dictionary.init(dictionaryLiteral:)();
    MEMORY[0x1EEE9AC00](v81, v82);
    v217[2] = v79;
    v217[3] = v244;
    v217[4] = v220;
    v217[5] = v76;
    v217[6] = v77;
    v217[7] = v247;
    v84 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CD0], v80, v83, partial apply for closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:), v217, v226);
    v249 = 0;
    v89 = v85;
    v232 = v86;
    v225 = v84;

    v90 = *(v89 + 16);
    v231 = v89;
    if (v90)
    {
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_105();
      p_aBlock = v231;
      v91 = aBlock;
      v92 = specialized Dictionary.startIndex.getter(v231);
      v95 = v92;
      v96 = 0;
      v97 = p_aBlock + 8;
      v230 = p_aBlock + 9;
      v233 = v90;
      v234 = p_aBlock + 8;
      if ((v92 & 0x8000000000000000) == 0)
      {
        while (v95 < 1 << *(p_aBlock + 32))
        {
          if ((v97[v95 >> 6] & (1 << v95)) == 0)
          {
            goto LABEL_96;
          }

          if (*(p_aBlock + 9) != v93)
          {
            goto LABEL_97;
          }

          OUTLINED_FUNCTION_103(v92, v93, v94);
          v99 = *(v98 + 8 * v95);
          aBlock = v91;
          v101 = v91[2];
          v100 = v91[3];

          if (v101 >= v100 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1);
            p_aBlock = v231;
            v91 = aBlock;
          }

          v91[2] = v101 + 1;
          v102 = &v91[2 * v101];
          *(v102 + 32) = 1;
          v102[5] = v99;
          v103 = 1 << *(p_aBlock + 32);
          if (v95 >= v103)
          {
            goto LABEL_98;
          }

          v97 = v234;
          v104 = v234[v95 >> 6];
          if ((v104 & (1 << v95)) == 0)
          {
            goto LABEL_99;
          }

          if (*(p_aBlock + 9) != v246)
          {
            goto LABEL_100;
          }

          v247 = v91;
          v105 = v104 & (-2 << (v95 & 0x3F));
          if (v105)
          {
            v103 = __clz(__rbit64(v105)) | v95 & 0x7FFFFFFFFFFFFFC0;
            v87 = MEMORY[0x1E69E7CC0];
            v106 = v233;
          }

          else
          {
            OUTLINED_FUNCTION_54();
            v87 = MEMORY[0x1E69E7CC0];
            v106 = v233;
            while (v109 < v108)
            {
              v112 = *v110++;
              v111 = v112;
              p_aBlock += 8;
              ++v109;
              if (v112)
              {
                v92 = outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v95, v107, v235 & 1);
                v103 = p_aBlock + __clz(__rbit64(v111));
                goto LABEL_24;
              }
            }

            v92 = outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v95, v107, v235 & 1);
LABEL_24:
            p_aBlock = v231;
          }

          if (++v96 == v106)
          {
            goto LABEL_29;
          }

          v94 = 0;
          v93 = *(p_aBlock + 9);
          v95 = v103;
          v91 = v247;
          if (v103 < 0)
          {
            break;
          }
        }
      }

LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v247 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v113 = v232[2];
    v114 = MEMORY[0x1E69E7CC0];
    if (v113)
    {
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_105();
      p_aBlock = v232;
      v115 = aBlock;
      v118 = specialized Dictionary.startIndex.getter(v232);
      v114 = v115;
      v119 = 0;
      v120 = p_aBlock + 8;
      v230 = p_aBlock + 9;
      v233 = v113;
      v234 = p_aBlock + 8;
      if ((v118 & 0x8000000000000000) == 0)
      {
        while (v118 < 1 << *(p_aBlock + 32))
        {
          if ((v120[v118 >> 6] & (1 << v118)) == 0)
          {
            goto LABEL_102;
          }

          if (*(p_aBlock + 9) != v116)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_103(v114, v116, v117);
          v122 = *(v121 + 8 * v118);
          aBlock = v123;
          v125 = v123[2];
          v124 = v123[3];
          v126 = v123;

          v114 = v126;
          if (v125 >= v124 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v124 > 1, v125 + 1, 1);
            p_aBlock = v232;
            v114 = aBlock;
          }

          *(v114 + 16) = v125 + 1;
          v127 = v114 + 16 * v125;
          *(v127 + 32) = 0;
          *(v127 + 40) = v122;
          v128 = 1 << *(p_aBlock + 32);
          if (v118 >= v128)
          {
            goto LABEL_104;
          }

          v120 = v234;
          v129 = v234[v118 >> 6];
          if ((v129 & (1 << v118)) == 0)
          {
            goto LABEL_105;
          }

          if (*(p_aBlock + 9) != v246)
          {
            goto LABEL_106;
          }

          v130 = v129 & (-2 << (v118 & 0x3F));
          if (v130)
          {
            v128 = __clz(__rbit64(v130)) | v118 & 0x7FFFFFFFFFFFFFC0;
            v87 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            OUTLINED_FUNCTION_54();
            v87 = MEMORY[0x1E69E7CC0];
            while (v134 < v133)
            {
              v137 = *v135++;
              v136 = v137;
              p_aBlock += 8;
              ++v134;
              if (v137)
              {
                v138 = v131;
                outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v118, v132, v235 & 1);
                v114 = v138;
                v128 = p_aBlock + __clz(__rbit64(v136));
                goto LABEL_46;
              }
            }

            v139 = v131;
            outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v118, v132, v235 & 1);
            v114 = v139;
LABEL_46:
            p_aBlock = v232;
          }

          if (++v119 == v233)
          {
            goto LABEL_50;
          }

          v117 = 0;
          v116 = *(p_aBlock + 9);
          v118 = v128;
          if (v128 < 0)
          {
            break;
          }
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_111;
    }

LABEL_50:
    aBlock = v247;
    specialized Array.append<A>(contentsOf:)(v114);

    v70 = aBlock;
    outlined destroy of UUID?(v221, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v88 = v219;
LABEL_51:
    v140 = SelectCore.select.getter();
    v141 = *(v70 + 2);
    if (!v141)
    {

      v63 = MEMORY[0x1E69E7CC0];
LABEL_91:
      OUTLINED_FUNCTION_101();
      objc_autoreleasePoolPop(v224);
      return v63;
    }

    aBlock = v87;
    p_aBlock = &aBlock;
    v221 = v141;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141, 0);
    v142 = 0;
    v225 = aBlock;
    v143 = v70 + 32;
    v232 = (v242 + 16);
    v231 = (v242 + 8);
    v233 = v88 + 8;
    v234 = *(v140 + 16);
    v226 = v70;
    v230 = v140;
    v220 = v70 + 32;
    while (v142 < *(v70 + 2))
    {
      v223 = v142 + 1;
      v144 = &v143[16 * v142];
      LODWORD(v222) = *v144;
      p_aBlock = *(v144 + 1);
      swift_bridgeObjectRetain_n();
      v145 = Dictionary.init(dictionaryLiteral:)();
      v146 = 0;
      v235 = p_aBlock;
      v147 = p_aBlock;
      while (v234 != v146)
      {
        if (v146 >= *(v140 + 16))
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v246 = v146;
        v247 = v145;
        v148 = v242;
        v149 = v238;
        v150 = v239;
        (*(v242 + 16))(v238, v140 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v146, v239);
        v151 = ResultColumn.name.getter();
        v153 = v152;
        ResultColumn.expression.getter(v241);
        (*(v148 + 8))(v149, v150);
        v154 = v240;
        v63 = v244;
        v155 = v249;
        SQLExpressionEvaluator.execute(expression:payload:)(v240);
        v249 = v155;
        if (v155)
        {

          v214 = OUTLINED_FUNCTION_58();
          v215(v214);

          goto LABEL_88;
        }

        v156 = OUTLINED_FUNCTION_58();
        v157(v156);
        OUTLINED_FUNCTION_0_15();
        outlined init with take of StorableValue(v154, v248);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v250 = v147;
        v159 = v153;
        p_aBlock = v147;
        v160 = specialized __RawDictionaryStorage.find<A>(_:)(v151, v153);
        v162 = v147[2];
        v163 = (v161 & 1) == 0;
        v164 = v162 + v163;
        if (__OFADD__(v162, v163))
        {
          goto LABEL_93;
        }

        v165 = v160;
        v166 = v161;
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        p_aBlock = &v250;
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v164))
        {
          p_aBlock = v250;
          v168 = specialized __RawDictionaryStorage.find<A>(_:)(v151, v159);
          v145 = v247;
          if ((v166 & 1) != (v169 & 1))
          {
            goto LABEL_110;
          }

          v165 = v168;
          v170 = v237;
        }

        else
        {
          v170 = v237;
          v145 = v247;
        }

        v247 = v167;
        v147 = v250;
        if (v166)
        {
          v171 = *(v170 + 72);
          outlined assign with take of StorableValue(v248, v250[7] + v171 * v165);
          v172 = v147[2];
          v173 = v159;
        }

        else
        {
          OUTLINED_FUNCTION_75(&v250[v165 >> 6]);
          v174 = (v147[6] + 16 * v165);
          *v174 = v151;
          v174[1] = v159;
          v173 = v159;
          v171 = *(v175 + 72);
          OUTLINED_FUNCTION_0_15();
          outlined init with take of StorableValue(v248, v176);
          v177 = v147[2];
          v172 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
            goto LABEL_94;
          }

          v147[2] = v172;
        }

        v178 = v236;
        if (v172 && (v179 = OUTLINED_FUNCTION_74(), v181 = specialized __RawDictionaryStorage.find<A>(_:)(v179, v180), (v182 & 1) != 0))
        {
          v183 = v171;
          outlined init with copy of StorableValue(v147[7] + v171 * v181, v178);
          OUTLINED_FUNCTION_0_15();
          outlined init with take of StorableValue(v178, v228);
          p_aBlock = v145;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v250 = p_aBlock;
          v185 = OUTLINED_FUNCTION_74();
          v187 = specialized __RawDictionaryStorage.find<A>(_:)(v185, v186);
          v189 = v188;
          v190 = p_aBlock[2];
          v191 = (v188 & 1) == 0;
          if (__OFADD__(v190, v191))
          {
            goto LABEL_107;
          }

          v192 = v187;
          p_aBlock = &v250;
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v184, v190 + v191))
          {
            p_aBlock = v250;
            v193 = OUTLINED_FUNCTION_74();
            v195 = specialized __RawDictionaryStorage.find<A>(_:)(v193, v194);
            if ((v189 & 1) != (v196 & 1))
            {
              goto LABEL_110;
            }

            v192 = v195;
          }

          v145 = v250;
          if (v189)
          {
            outlined assign with take of StorableValue(v228, v250[7] + v192 * v183);
          }

          else
          {
            OUTLINED_FUNCTION_75(&v250[v192 >> 6]);
            v205 = (v145[6] + 16 * v192);
            *v205 = v151;
            v205[1] = v173;
            OUTLINED_FUNCTION_0_15();
            outlined init with take of StorableValue(v228, v206);
            v207 = v145[2];
            v208 = __OFADD__(v207, 1);
            v209 = v207 + 1;
            if (v208)
            {
              goto LABEL_108;
            }

            v145[2] = v209;
          }

          v204 = v246;
        }

        else
        {
          v197 = OUTLINED_FUNCTION_74();
          specialized __RawDictionaryStorage.find<A>(_:)(v197, v198);
          if (v199)
          {
            v200 = swift_isUniquelyReferenced_nonNull_native();
            v250 = v145;
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v200, v145[3]);
            v145 = v250;

            OUTLINED_FUNCTION_0_15();
            p_aBlock = v229;
            outlined init with take of StorableValue(v201, v229);
            v202 = v245;
            _NativeDictionary._delete(at:)();
            v203 = 0;
          }

          else
          {
            v203 = 1;
            p_aBlock = v229;
            v202 = v245;
          }

          v204 = v246;
          __swift_storeEnumTagSinglePayload(p_aBlock, v203, 1, v202);

          outlined destroy of UUID?(p_aBlock, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        }

        v140 = v230;
        v146 = (v204 + 1);
      }

      v210 = v225;
      aBlock = v225;
      v212 = v225[2];
      v211 = v225[3];
      if (v212 >= v211 >> 1)
      {
        p_aBlock = &aBlock;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v211 > 1, v212 + 1, 1);
        v210 = aBlock;
      }

      v210[2] = v212 + 1;
      v225 = v210;
      v213 = &v210[2 * v212];
      *(v213 + 32) = v222;
      v213[5] = v145;
      v142 = v223;
      v70 = v226;
      v143 = v220;
      if (v223 == v221)
      {

        v63 = v225;
        goto LABEL_91;
      }
    }

    goto LABEL_109;
  }

LABEL_111:

  __break(1u);
  return result;
}

uint64_t sub_18490ACC0()
{

  OUTLINED_FUNCTION_93();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18490ACF4()
{
  OUTLINED_FUNCTION_93();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18490AD28()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18490AD70()
{
  v1 = type metadata accessor for SelectCore();
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

void *DBViewWriter.init(database:tableName:schema:createTableSQL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v223 = a6;
  v224 = a3;
  v219 = a5;
  v246 = a4;
  v221 = a2;
  v242 = a7;
  v250 = type metadata accessor for SQLRawDataType();
  OUTLINED_FUNCTION_2_1();
  v218 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_9();
  v239 = v12;
  v248 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v232 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_9();
  v238 = v16;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_2_1();
  v240 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_14();
  v241 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v245 = &v209[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
  OUTLINED_FUNCTION_2_1();
  v243 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_14();
  v31 = v29 - v30;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v209[-v35];
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v209[-v39];
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v209[-v42];
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v44 = SQLExpressionEvaluator.init(db:)(a1);
  if (v7)
  {
  }

  v235 = v36;
  v244 = v31;
  v249 = v25;
  v251 = v40;
  v247 = a1;
  v215 = v44;
  v46 = v224;

  v47 = specialized _copyCollectionToContiguousArray<A>(_:)(v246);

  v255[0] = v47;
  specialized MutableCollection<>.sort(by:)(v255);
  v213 = 0;
  v48 = v46;
  v49 = v255[0];
  v50 = *(v255[0] + 16);
  v51 = MEMORY[0x1E69E7CC0];
  v53 = v242;
  v52 = v243;
  v236 = v255[0];
  v54 = v247;
  v55 = v241;
  if (v50)
  {
    v255[0] = MEMORY[0x1E69E7CC0];
    v52 = &enum case for SQLRawDataType.REAL(_:);

    v228 = v50;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v56 = 0;
    v51 = v255[0];
    OUTLINED_FUNCTION_19_0();
    v231 = v49 + v58;
    v233 = (v232 + 2);
    v230 = (v232 + 11);
    v229 = 0;
    v225 = 1;
    v220 = 2;
    v217 = 3;
    v214 = 4;
    v212 = 5;
    v211 = 6;
    v210 = 7;
    v227 = (v218 + 104);
    LODWORD(v234) = 0;
    ++v232;
    v216 = 3;
    v222 = 2;
    v226 = 1;
    while (v56 < *(v49 + 16))
    {
      v246 = v51;
      v59 = v245;
      outlined init with copy of (key: String, value: SQLDataType)(v231 + *(v57 + 72) * v56, v245, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v60 = *(v249 + 48);
      outlined init with copy of (key: String, value: SQLDataType)(v59, v55, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v61 = *v55;
      v62 = v55[1];
      v63 = v238;
      v53 = *(v237 + 48);
      *v43 = v61;
      *(v43 + 1) = v62;
      v52 = *v233;
      v64 = &v53[v59];
      v65 = v248;
      (*v233)(v63, v64, v248);
      v66 = (*v230)(v63, v65);
      v67 = v234;
      if (v66 != v229)
      {
        v67 = v226;
        if (v66 != v225)
        {
          v67 = v222;
          if (v66 != v220)
          {
            v67 = v226;
            if (v66 != v217)
            {
              v67 = v216;
              if (v66 != v214)
              {
                v67 = v222;
                if (v66 != v212)
                {
                  v67 = v216;
                  if (v66 != v211)
                  {
                    v67 = v234;
                    if (v66 != v210)
                    {
                      goto LABEL_65;
                    }
                  }
                }
              }
            }
          }
        }
      }

      outlined destroy of UUID?(v245, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      (*v227)(&v43[v60], v67, v250);
      v55 = v241;
      (*v232)(&v53[v241], v248);
      v51 = v246;
      v255[0] = v246;
      v69 = *(v246 + 16);
      v68 = *(v246 + 24);
      if (v69 >= v68 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v68);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71, v72, v73);
        v51 = v255[0];
      }

      ++v56;
      *(v51 + 16) = v69 + 1;
      v52 = v243;
      OUTLINED_FUNCTION_19_0();
      outlined init with take of (key: String, value: SQLDataType)(v43, v51 + v70 + *(v52 + 9) * v69, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v53 = v242;
      v49 = v236;
      v54 = v247;
      v57 = v240;
      if (v228 == v56)
      {

        v74 = v224;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_65:

    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    v204 = v203;
    v205 = v248;
    v203[3] = v248;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v203);
    v207 = v245;
    (v52)(boxed_opaque_existential_0, &v53[v245], v205);
    *(v204 + 2) = 0u;
    *(v204 + 3) = 0u;
    *(v204 + 64) = 3;
    swift_willThrow();
    outlined destroy of UUID?(v207, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    v208 = *v232;
    (*v232)(v238, v205);
    v208(&v53[v241], v205);
  }

  v74 = v48;
LABEL_20:
  v75 = MEMORY[0x1E69E7CC0];
  v248 = *(v51 + 16);
  v76 = v218;
  v246 = v51;
  if (v248)
  {
    v254[0] = MEMORY[0x1E69E7CC0];
    v77 = OUTLINED_FUNCTION_10_5();
    v79 = v78;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77, v78, v80);
    v75 = v254[0];
    OUTLINED_FUNCTION_19_0();
    v81 = v52;
    v83 = v51 + v82;
    v245 = *(v81 + 9);
    v241 = (v76 + 8);
    v84 = v251;
    do
    {
      outlined init with copy of (key: String, value: SQLDataType)(v83, v84, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v255[0] = 34;
      v255[1] = 0xE100000000000000;
      MEMORY[0x1865F6280](*v84, v84[1]);
      MEMORY[0x1865F6280](8226, 0xE200000000000000);
      v85 = v235;
      outlined init with copy of (key: String, value: SQLDataType)(v251, v235, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);

      v86 = *(v249 + 48);
      v87 = SQLRawDataType.rawValue.getter();
      v89 = v88;
      (*v241)(v85 + v86, v250);
      MEMORY[0x1865F6280](v87, v89);
      v84 = v251;

      v90 = v255[0];
      v91 = v255[1];
      outlined destroy of UUID?(v84, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v254[0] = v75;
      v93 = *(v75 + 16);
      v92 = *(v75 + 24);
      if (v93 >= v92 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v92);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v95, v96, v97);
        v84 = v251;
        v75 = v254[0];
      }

      *(v75 + 16) = v93 + 1;
      v94 = v75 + 16 * v93;
      *(v94 + 32) = v90;
      *(v94 + 40) = v91;
      v83 += v245;
      --v79;
    }

    while (v79);
    v74 = v224;
    v53 = v242;
    v54 = v247;
  }

  v255[0] = v75;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v233 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v234 = v98;
  v99 = BidirectionalCollection<>.joined(separator:)();
  v101 = v100;

  if (v223)
  {

    v102 = v219;
    v103 = v221;
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    _StringGuts.grow(_:)(43);

    v255[0] = 0xD00000000000001BLL;
    v255[1] = 0x8000000184DDC1D0;
    v103 = v221;
    MEMORY[0x1865F6280](v221, v74);
    MEMORY[0x1865F6280](2107424, 0xE300000000000000);
    MEMORY[0x1865F6280](v99, v101);

    MEMORY[0x1865F6280](0x4349525453202920, 0xE900000000000054);
    v102 = v255[0];
    v223 = v255[1];
  }

  v104 = v243;
  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(31);

  strcpy(v255, "INSERT INTO ");
  BYTE5(v255[1]) = 0;
  HIWORD(v255[1]) = -5120;
  MEMORY[0x1865F6280](v103, v74);
  MEMORY[0x1865F6280](10272, 0xE200000000000000);
  v219 = v102;
  if (v248)
  {
    v252 = MEMORY[0x1E69E7CC0];
    v105 = OUTLINED_FUNCTION_10_5();
    v107 = v106;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v105, v106, v108);
    v109 = v251;
    v110 = v252;
    OUTLINED_FUNCTION_19_0();
    v111 = v104;
    v113 = v246 + v112;
    v245 = *(v111 + 9);
    do
    {
      outlined init with copy of (key: String, value: SQLDataType)(v113, v109, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      OUTLINED_FUNCTION_7_6();
      MEMORY[0x1865F6280](34, 0xE100000000000000);
      v109 = v251;
      v115 = v254[0];
      v114 = v254[1];
      outlined destroy of UUID?(v251, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v252 = v110;
      v117 = *(v110 + 16);
      v116 = *(v110 + 24);
      if (v117 >= v116 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v116);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v119, v120, v121);
        v109 = v251;
        v110 = v252;
      }

      *(v110 + 16) = v117 + 1;
      v118 = v110 + 16 * v117;
      *(v118 + 32) = v115;
      *(v118 + 40) = v114;
      v113 += v245;
      --v107;
    }

    while (v107);
    OUTLINED_FUNCTION_3_13();
    v122 = BidirectionalCollection<>.joined(separator:)();
    v124 = v123;

    MEMORY[0x1865F6280](v122, v124);

    OUTLINED_FUNCTION_6_4();
    v254[0] = MEMORY[0x1E69E7CC0];
    v125 = v248;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v248, 0);
    v126 = v254[0];
    v127 = *(v254[0] + 16);
    v128 = 16 * v127;
    v54 = v247;
    do
    {
      v254[0] = v126;
      v129 = *(v126 + 24);
      v130 = v127 + 1;
      if (v127 >= v129 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v129 > 1, v127 + 1, 1);
        v126 = v254[0];
      }

      *(v126 + 16) = v130;
      v131 = v126 + v128;
      *(v131 + 32) = 63;
      *(v131 + 40) = 0xE100000000000000;
      v128 += 16;
      v127 = v130;
      v125 = (v125 - 1);
    }

    while (v125);
    v74 = v224;
    v53 = v242;
  }

  else
  {
    v132 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_13();
    v245 = BidirectionalCollection<>.joined(separator:)();
    v134 = v133;

    MEMORY[0x1865F6280](v245, v134);

    OUTLINED_FUNCTION_6_4();
    v126 = v132;
  }

  v254[0] = v126;
  v135 = BidirectionalCollection<>.joined(separator:)();
  v137 = v136;

  MEMORY[0x1865F6280](v135, v137);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
  v231 = v255[0];
  v232 = v255[1];
  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(70);
  MEMORY[0x1865F6280](0x46204554454C4544, 0xEC000000204D4F52);
  v138 = v221;
  MEMORY[0x1865F6280](v221, v74);
  MEMORY[0x1865F6280](0xD000000000000022, 0x8000000184DDC1F0);
  MEMORY[0x1865F6280](v138, v74);
  MEMORY[0x1865F6280](0x2820455245485720, 0xE800000000000000);
  v139 = MEMORY[0x1E69E7CC0];
  v140 = v243;
  if (v248)
  {
    v256 = MEMORY[0x1E69E7CC0];
    v141 = OUTLINED_FUNCTION_10_5();
    v143 = v142;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v141, v142, v144);
    OUTLINED_FUNCTION_19_0();
    v146 = v246 + v145;
    v245 = v218 + 104;
    v139 = v256;
    v240 = *(v140 + 9);
    v241 = (v218 + 8);
    v238 = "SELECT rowid FROM ";
    LODWORD(v237) = 1;
    v235 = "    CREATE INDEX IF NOT EXISTS ";
    v147 = v143;
    while (1)
    {
      outlined init with copy of (key: String, value: SQLDataType)(v146, v244, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      (*v245)(v239, v237, v250);
      lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType(&lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType, type metadata accessor for SQLRawDataType, &protocol conformance descriptor for SQLRawDataType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v254[0] == v252 && v254[1] == v253)
      {
        break;
      }

      v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v150 = OUTLINED_FUNCTION_13_3();
      v151(v150);

      if (v149)
      {
        goto LABEL_49;
      }

      v254[0] = 0;
      v254[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v254[0] = 8744;
      v254[1] = 0xE200000000000000;
      v152 = v244;
      OUTLINED_FUNCTION_8_6();
      v153 = 0x524F203F203D2022;
      v154 = 0xEB00000000222820;
LABEL_50:
      MEMORY[0x1865F6280](v153, v154);
      OUTLINED_FUNCTION_8_6();
      MEMORY[0x1865F6280](0xD000000000000019, v238 | 0x8000000000000000);
      v157 = v254[0];
      v158 = v254[1];
      outlined destroy of UUID?(v152, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v256 = v139;
      v160 = *(v139 + 16);
      v159 = *(v139 + 24);
      if (v160 >= v159 >> 1)
      {
        v162 = OUTLINED_FUNCTION_4_9(v159);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v162, v160 + 1, 1);
        v139 = v256;
      }

      *(v139 + 16) = v160 + 1;
      v161 = v139 + 16 * v160;
      *(v161 + 32) = v157;
      *(v161 + 40) = v158;
      v146 += v240;
      --v147;
      v54 = v247;
      if (!v147)
      {
        v74 = v224;
        v53 = v242;
        goto LABEL_54;
      }
    }

    v155 = OUTLINED_FUNCTION_13_3();
    v156(v155);

LABEL_49:
    v254[0] = 0;
    v254[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1865F6280](0x222873626128, 0xE600000000000000);
    v152 = v244;
    OUTLINED_FUNCTION_8_6();
    v153 = 0xD000000000000016;
    v154 = v235 | 0x8000000000000000;
    goto LABEL_50;
  }

LABEL_54:
  v254[0] = v139;
  v163 = BidirectionalCollection<>.joined(separator:)();
  v165 = v164;

  MEMORY[0x1865F6280](v163, v165);

  MEMORY[0x1865F6280](0x2054494D494C2029, 0xEA00000000002931);
  v245 = v255[0];
  v249 = v255[1];
  v166 = v221;
  v255[0] = v221;
  v255[1] = v74;

  MEMORY[0x1865F6280](0x7865646E695FLL, 0xE600000000000000);
  v167 = v255[0];
  v168 = v255[1];
  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(46);

  v255[0] = 0xD00000000000001FLL;
  v255[1] = 0x8000000184DDC240;
  MEMORY[0x1865F6280](v167, v168);

  MEMORY[0x1865F6280](542002976, 0xE400000000000000);
  MEMORY[0x1865F6280](v166, v74);

  MEMORY[0x1865F6280](2107424, 0xE300000000000000);
  if (v248)
  {
    v252 = MEMORY[0x1E69E7CC0];
    v169 = OUTLINED_FUNCTION_10_5();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v169, v170, v171);
    v172 = v251;
    v173 = v252;
    OUTLINED_FUNCTION_19_0();
    v175 = v246 + v174;
    v250 = *(v176 + 72);
    do
    {
      outlined init with copy of (key: String, value: SQLDataType)(v175, v172, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      OUTLINED_FUNCTION_7_6();
      MEMORY[0x1865F6280](34, 0xE100000000000000);
      v172 = v251;
      v177 = v254[0];
      v178 = v254[1];
      outlined destroy of UUID?(v251, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v252 = v173;
      v180 = *(v173 + 16);
      v179 = *(v173 + 24);
      if (v180 >= v179 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v179);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v182, v183, v184);
        v172 = v251;
        v173 = v252;
      }

      *(v173 + 16) = v180 + 1;
      v181 = v173 + 16 * v180;
      *(v181 + 32) = v177;
      *(v181 + 40) = v178;
      v175 += v250;
      v248 = (v248 - 1);
    }

    while (v248);

    v53 = v242;
    v54 = v247;
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_13();
  v185 = BidirectionalCollection<>.joined(separator:)();
  v187 = v186;

  MEMORY[0x1865F6280](v185, v187);

  MEMORY[0x1865F6280](10528, 0xE200000000000000);
  v188 = v255[0];
  v189 = v255[1];
  v190 = v219;
  v191 = v223;
  v192 = String.utf8CString.getter();
  v193 = sqlite3_exec(v54, (v192 + 32), 0, 0, 0);

  if (v193)
  {
    v194 = BMSQLDatabaseError(v193, v54, 0);
    swift_getErrorValue();
    v195 = Error.localizedDescription.getter();
    v196 = v191;
    v198 = v197;

    v255[0] = v195;
    v255[1] = v198;
    strcpy(v254, "BMSQLDatabase");
    HIWORD(v254[1]) = -4864;
    v252 = 0x62617461444C5153;
    v253 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v199 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v201 = v200;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v202 = v190;
    *(v202 + 8) = v196;
    *(v202 + 16) = v199;
    *(v202 + 24) = v201;
    *(v202 + 32) = 1;
    swift_willThrow();
  }

  else
  {

    v254[0] = v54;
    v254[1] = v215;
    v254[2] = v221;
    v254[3] = v224;
    v254[4] = v236;
    v254[5] = v231;
    v254[6] = v232;
    v254[7] = v245;
    v254[8] = v249;
    v254[9] = v188;
    v254[10] = v189;
    v255[0] = v54;
    v255[1] = v215;
    v255[2] = v221;
    v255[3] = v224;
    v255[4] = v236;
    v255[5] = v231;
    v255[6] = v232;
    v255[7] = v245;
    v255[8] = v249;
    v255[9] = v188;
    v255[10] = v189;
    outlined init with copy of DBViewWriter(v254, &v252);
    outlined destroy of DBViewWriter(v255);
    return memcpy(v53, v254, 0x58uLL);
  }
}

uint64_t ResultColumn.name.getter()
{
  if (!*(v0 + 104))
  {
  }

  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_133()
{
  result = v1;
  *(v2 - 128) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  *v2 = *(v1 + *(a1 + 28));
  *(v2 + 8) = 0;

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_deallocPartialClassInstance();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v9 = MEMORY[0x1EEE9AC00](v39, v8);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v30 - v13);
  result = MEMORY[0x1EEE9AC00](v12, v15);
  v19 = (&v30 - v18);
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v35 = v22;
      v36 = a3;
      v33 = v25;
      v34 = v24;
      while (1)
      {
        outlined init with copy of (key: String, value: SQLDataType)(v25, v19, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with copy of (key: String, value: SQLDataType)(v22, v14, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if (*v19 == *v14 && v19[1] == v14[1])
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of UUID?(v14, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        result = outlined destroy of UUID?(v19, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if (v27)
        {
          if (!v37)
          {
            __break(1u);
            return result;
          }

          v28 = v38;
          outlined init with take of (key: String, value: SQLDataType)(v25, v38, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          swift_arrayInitWithTakeFrontToBack();
          result = outlined init with take of (key: String, value: SQLDataType)(v28, v22, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v22 += v23;
          v25 += v23;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      outlined destroy of UUID?(v14, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      result = outlined destroy of UUID?(v19, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
LABEL_14:
      a3 = v36 + 1;
      v22 = v35 + v31;
      v24 = v34 - 1;
      v25 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t outlined init with copy of (key: String, value: SQLDataType)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  *(v6 - 536) = v2;
  *(v6 - 528) = v1;
  *(v6 - 520) = v5;
  *(v6 - 512) = v3;
  *(v6 - 72) = v4;

  return SQLExpressionEvaluator.execute(expression:payload:)(v0);
}

uint64_t OUTLINED_FUNCTION_122()
{

  return StorableValue.init(_:dataType:)(v2 - 96, v1, v0);
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_2_1();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_9_0();
  v38 = v11;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_51();
  v37 = v14;
  v15 = v1 + 64;
  v16 = -1 << *(v1 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v1 + 64);
  if (!v5)
  {
    v20 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v15;
    v7[2] = ~v16;
    v7[3] = v20;
    v7[4] = v18;
    OUTLINED_FUNCTION_169();
    return;
  }

  if (!v3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(v1 + 32);
    v33 = v7;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v16) >> 6;
    v34 = v1;
    v35 = v3;
    while (1)
    {
      if (v19 >= v3)
      {
        goto LABEL_25;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        while (1)
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v18 = 0;
            v7 = v33;
            goto LABEL_20;
          }

          v18 = *(v15 + 8 * v23);
          ++v20;
          if (v18)
          {
            v40 = v5;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v40 = v5;
      v23 = v20;
LABEL_16:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(v1 + 48);
      v27 = *(v1 + 56);
      v28 = (v26 + 16 * v25);
      v29 = *v28;
      v30 = v28[1];
      type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12();
      (*(v31 + 16))(&v38[*(v39 + 48)], v27 + *(v31 + 72) * v25);
      *v38 = v29;
      *(v38 + 1) = v30;
      outlined init with take of UUID?(v38, v37, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      outlined init with take of UUID?(v37, v40, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v3 = v35;
      if (v22 == v35)
      {
        break;
      }

      v5 = v40 + *(v36 + 72);

      v19 = v22;
      v20 = v23;
      v1 = v34;
    }

    v20 = v23;
    v7 = v33;
    v1 = v34;
LABEL_20:
    v16 = v32;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

{
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_169();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_14BiomeSQLParser11SQLDataTypeO5valuet_Tt1g5(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  specialized Sequence._copySequenceContents(initializing:)();
  v4 = v3;

  outlined consume of [String : [String]].Iterator._Variant(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12[0] = v3 + v6;
  v12[1] = v5;
  result = _minimumMergeRunLength(_:)(v5);
  if (result >= v5)
  {
    if (v5)
    {
      result = specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, v12);
    }
  }

  else
  {
    v8 = result;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v10[0] = v9 + v6;
    v10[1] = v5 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, v12, v8);
    *(v9 + 16) = 0;
  }

  *a1 = v3;
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_0();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_90_1()
{
  v2 = v0[1];
  *(v1 - 192) = *v0;
  *(v1 - 184) = v2;
}

void closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_64();
  v2 = type metadata accessor for SQLRawDataType();
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_80_2();
  SQLDataType.columnType()();
  if (!v9)
  {
    (*(v4 + 104))(v0, 1, v2);
    v10 = specialized == infix<A>(_:_:)(v1, v0);
    v11 = *(v4 + 8);
    v12 = OUTLINED_FUNCTION_94_2();
    v11(v12);
    (v11)(v1, v2);
    if (v10)
    {
      _StringGuts.grow(_:)(57);
      MEMORY[0x1865F6280](0x222873626128, 0xE600000000000000);
      v13 = OUTLINED_FUNCTION_20();
      MEMORY[0x1865F6280](v13);
      v14 = 0xD000000000000016;
      v15 = 0x8000000184DDC260;
    }

    else
    {
      _StringGuts.grow(_:)(42);

      v16 = OUTLINED_FUNCTION_20();
      MEMORY[0x1865F6280](v16);
      v14 = 0x524F203F203D2022;
      v15 = 0xEB00000000222820;
    }

    MEMORY[0x1865F6280](v14, v15);
    v17 = OUTLINED_FUNCTION_20();
    MEMORY[0x1865F6280](v17);
    OUTLINED_FUNCTION_72_2();
    MEMORY[0x1865F6280](0xD000000000000019);
  }

  OUTLINED_FUNCTION_65();
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMR, type metadata accessor for ResultColumn, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR, type metadata accessor for Schema, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:), &type metadata for ChangeRecord);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR, type metadata accessor for StorableValue, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = v4;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(a4, a5, a6);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v23 - v7);
  v9 = *(v1 + 16);
  if (v9)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v10 = OUTLINED_FUNCTION_41_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v11, v12);
    v13 = v25;
    Description = type metadata accessor for SQLExpression()[-1].Description;
    v15 = v1 + ((*(Description + 80) + 32) & ~*(Description + 80));
    v16 = Description[9];
    do
    {
      v17 = *(v2 + 48);
      v18 = SQLExpression.sql.getter();
      strcpy(&v24, "group_by_key_");
      HIWORD(v24) = -4864;
      MEMORY[0x1865F6280](v18);

      v19 = *(&v24 + 1);
      *v8 = v24;
      v8[1] = v19;
      SQLExpression.returnType.getter(v8 + v17);
      v25 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v13 = v25;
      }

      *(v13 + 16) = v21 + 1;
      OUTLINED_FUNCTION_19_0();
      outlined init with take of UUID?(v8, v13 + v22 + *(v4 + 72) * v21, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
      v15 += v16;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_169();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v3 = *(v1 - 200);

  return outlined init with copy of StorableValue(v0, v3);
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

void OUTLINED_FUNCTION_74_2()
{

  JUMPOUT(0x1865F6280);
}

uint64_t outlined destroy of (columnName: String, dataType: SQLDataType)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_7();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_39_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_107(uint64_t a1)
{

  return outlined destroy of UUID?(a1, v1, v2);
}

ValueMetadata *OUTLINED_FUNCTION_107_0()
{

  return type metadata accessor for SQLDataType();
}

void OUTLINED_FUNCTION_107_1()
{

  JUMPOUT(0x1865F62C0);
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t static KeyedAggregationMetadataCache.tableName(materializedViewName:)()
{
  OUTLINED_FUNCTION_86_2();
  _StringGuts.grow(_:)(36);

  OUTLINED_FUNCTION_72_2();
  MEMORY[0x1865F6280](0xD000000000000022);
  return v0;
}

uint64_t tableExists(sqlExpressionEvaluator:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(63);
  MEMORY[0x1865F6280](0xD00000000000003CLL, 0x8000000184DDCEF0);
  MEMORY[0x1865F6280](a2, a3);
  MEMORY[0x1865F6280](39, 0xE100000000000000);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v5, MEMORY[0x1E69E7CC0]);

  if (!v8)
  {
    if (v6)
    {

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

BiomeSQLParser::SQLRawDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDataType.columnType()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = *(v6 + 16);
  v12(v10 - v9, v2, v4);
  v13 = (*(v6 + 88))(v11, v4);
  switch(v13)
  {
    case 0:
      goto LABEL_2;
    case 1:
LABEL_4:
      v14 = &enum case for SQLRawDataType.REAL(_:);
      goto LABEL_10;
    case 2:
LABEL_6:
      v14 = &enum case for SQLRawDataType.TEXT(_:);
      goto LABEL_10;
    case 3:
      goto LABEL_4;
    case 4:
      goto LABEL_9;
    case 5:
      goto LABEL_6;
    case 6:
LABEL_9:
      v14 = &enum case for SQLRawDataType.BLOB(_:);
      goto LABEL_10;
    case 7:
LABEL_2:
      v14 = &enum case for SQLRawDataType.INTEGER(_:);
LABEL_10:
      v15 = *v14;
      type metadata accessor for SQLRawDataType();
      OUTLINED_FUNCTION_12();
      return (*(v16 + 104))(v3, v15);
  }

  v18 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
  OUTLINED_FUNCTION_63(&type metadata for SQLError, v18);
  v20 = v19;
  v19[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  v12(boxed_opaque_existential_0, v2, v4);
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *(v20 + 64) = 3;
  swift_willThrow();
  return (*(v6 + 8))(v11, v4);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [StorableValue] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [StorableValue] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type StorableValue and conformance StorableValue, type metadata accessor for StorableValue, &protocol conformance descriptor for StorableValue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [StorableValue] and conformance <A> [A]);
  }

  return result;
}

void OUTLINED_FUNCTION_103_1()
{

  JUMPOUT(0x1865F6890);
}

uint64_t Schema.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Schema.JSONEach(with:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v13[0] = 0x65756C6176;
  v13[1] = 0xE500000000000000;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v4 = static _DictionaryStorage.allocate(capacity:)();

  _s10Foundation4UUIDVSgWOhTm_0(v13, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
  v7 = v6;

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v4[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v4[6] + 16 * v5);
    *v9 = 0x65756C6176;
    v9[1] = 0xE500000000000000;
    *(v4[7] + v5) = v3;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      v4[2] = v12;
      *a2 = 0x6361655F6E6F736ALL;
      a2[1] = 0xE900000000000068;
      a2[2] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_118()
{
  *(v1 - 96) = 0u;
  *(v1 - 80) = 0u;
  return v0;
}

uint64_t ResultColumn.alias.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v56 = a3;
  v5 = type metadata accessor for SQLDataType();
  Description = v5[-1].Description;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v46 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v54 = (v45 - v17);
  v53 = *(a1 + 16);
  if (!v53)
  {
  }

  v18 = 0;
  v52 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = *(v15 + 48);
  v50 = v12;
  v51 = v19;
  v55 = (Description + 32);
  v45[2] = Description + 8;
  v45[3] = Description + 16;
  v45[1] = Description + 40;
  v47 = v16;
  v48 = a1;
  v49 = Description;
  while (v18 < *(a1 + 16))
  {
    v20 = v54;
    outlined init with copy of Date?(v52 + *(v16 + 72) * v18, v54, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v22 = *v20;
    v21 = v20[1];
    v23 = *v55;
    v24 = v20 + v51;
    v25 = v5;
    (*v55)(v12, v24, v5);
    v26 = *v56;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_18;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, a2 & 1);
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v21);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_20;
      }

      v28 = v33;
    }

    v35 = *v56;
    if (v32)
    {
      v36 = v49;
      v37 = v49[9] * v28;
      v38 = v46;
      v5 = v25;
      (v49[2])(v46, v35[7] + v37, v25);
      v12 = v50;
      v36[1](v50, v25);

      (v36[5])(v35[7] + v37, v38, v25);
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v35[6] + 16 * v28);
      *v39 = v22;
      v39[1] = v21;
      v40 = v35[7] + v49[9] * v28;
      v12 = v50;
      v5 = v25;
      v23(v40, v50, v25);
      v41 = v35[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_19;
      }

      v35[2] = v43;
    }

    ++v18;
    a2 = 1;
    v16 = v47;
    a1 = v48;
    if (v53 == v18)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BiomeSQLParser::Schema __swiftcall Schema.init(tableName:columns:)(Swift::String tableName, Swift::OpaquePointer columns)
{
  *v2 = tableName;
  *(v2 + 16) = columns;
  result.tableName = tableName;
  result.columns = columns;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_14BiomeSQLParser11SQLDataTypeO5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
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

uint64_t lazy protocol witness table accessor for type StorableValue and conformance StorableValue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)()
{
  OUTLINED_FUNCTION_86_2();
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_72_2();
  MEMORY[0x1865F6280](0xD000000000000019);
  return v0;
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return _s10Foundation4UUIDVSgWOhTm_0(v1, v0, v2);
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLRawDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x52454745544E49;
  v5 = 1415071060;
  v6 = 1112493122;
  if (v2 != 3)
  {
    v6 = 1280070990;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 1279346002;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SQLRawDataType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1415071060;
  v4 = 1112493122;
  if (v1 != 3)
  {
    v4 = 1280070990;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1279346002;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t bmstream_vtab_bestindex(uint64_t a1, int *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  a2[10] = 0;
  v49 = (a2 + 10);
  v4 = *(a1 + 24);
  v5 = objc_autoreleasePoolPush();
  v6 = v4;
  v7 = [v6 stream];

  if (v7)
  {
    v8 = [v6 stream];
    v9 = [v8 configuration];

    v10 = objc_alloc(MEMORY[0x1E698F140]);
    v11 = [v6 stream];
    v12 = [v11 identifier];
    v13 = [v9 storeConfig];
    v14 = [v9 eventClass];
    v15 = [v6 useCase];
    v16 = [v10 initWithStream:v12 permission:0 config:v13 includeTombstones:0 eventDataClass:v14 useCase:v15];

    LODWORD(v15) = [v16 frameCountInStreamDataStoreFromSegmentsContainingTime:0.0 to:CFAbsoluteTimeGetCurrent()];
    v7 = v15;
  }

  objc_autoreleasePoolPop(v5);
  *(a2 + 9) = v7;
  if ([v6 acceptPublisherOptions])
  {
    v17 = [v6 schema];
    v18 = [v17 columns];
    v19 = [v18 count];

    if (v19)
    {
      v20 = 0;
      while (1)
      {
        v21 = [v6 schema];
        v22 = [v21 columns];
        v23 = [v22 objectAtIndexedSubscript:v20];

        v24 = [v23 name];
        LOBYTE(v22) = [v24 isEqualToString:@"eventTimestamp"];

        if (v22)
        {
          break;
        }

        ++v20;
        v25 = [v6 schema];
        v26 = [v25 columns];
        v27 = [v26 count];

        if (v27 <= v20)
        {
          goto LABEL_36;
        }
      }

      if (a2[4] == 1)
      {
        v28 = *(a2 + 3);
        if (*v28 == v20)
        {
          a2[15] = 1;
          if (*(v28 + 4))
          {
            *v49 |= 4u;
          }
        }
      }

      if (*a2 < 1)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v30 = 0;
      v50 = 0;
      v47 = -1;
      v48 = -1;
      do
      {
        v31 = (*(a2 + 1) + v29);
        v32 = *v31;
        v33 = *(v31 + 4);
        v34 = *(v31 + 5);
        v35 = __biome_log_for_category();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v46 = [MEMORY[0x1E696AD98] numberWithInt:v30];
          v45 = [MEMORY[0x1E696AD98] numberWithInt:v32];
          v44 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v33];
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v34];
          *buf = 138413058;
          v53 = v46;
          v54 = 2112;
          v55 = v45;
          v56 = 2112;
          v57 = v44;
          v58 = 2112;
          v59 = v37;
          v38 = v37;
          _os_log_debug_impl(&dword_1848EE000, v35, OS_LOG_TYPE_DEBUG, "bmstream_vtab_bestindex constraint %@ - iColumn: %@; op: %@; usable: %@", buf, 0x2Au);
        }

        v36 = v32 != v20 || v34 == 0;
        if (!v36 && v33 <= 0x20)
        {
          if (((1 << v33) & 0x100000014) != 0)
          {
            ++HIDWORD(v50);
            v48 = v30;
          }

          else if (((1 << v33) & 0x10100) != 0)
          {
            LODWORD(v50) = v50 + 1;
            v47 = v30;
          }
        }

        ++v30;
        v29 += 12;
      }

      while (v30 < *a2);
      if (HIDWORD(v50) == 1)
      {
        v39 = a2[10];
        a2[10] = v39 | 1;
        v40 = *(a2 + 4);
        *(v40 + 8 * v48) = 1;
        if (v50 == 1)
        {
          *v49 = v39 | 3;
          v41 = 2;
LABEL_32:
          *(v40 + 8 * v47) = v41;
        }
      }

      else if (v50 == 1)
      {
        a2[10] |= 2u;
        v40 = *(a2 + 4);
        v41 = 1;
        goto LABEL_32;
      }

LABEL_33:
      v42 = __biome_log_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        bmstream_vtab_bestindex_cold_1(v49, v42);
      }
    }
  }

LABEL_36:

  objc_autoreleasePoolPop(context);
  return 0;
}

uint64_t bmstream_vtab_open(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sqlite3_malloc(16);
  if (v5)
  {
    v6 = v5;
    *v5 = 0;
    v5[1] = 0;
    *a2 = v5;
    v7 = [[BMPublisherVirtualTableCursor alloc] initWithVirtualTable:*(a1 + 24)];
    v8 = v6[1];
    v6[1] = v7;

    v9 = 0;
  }

  else
  {
    v9 = 7;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

BOOL bmstream_vtab_eof(uint64_t a1)
{
  v1 = [*(a1 + 8) rowObject];
  v2 = v1 == 0;

  return v2;
}

uint64_t bmstream_vtab_disconnect(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  objc_storeWeak((a1 + 32), 0);
  sqlite3_free(a1);
  objc_autoreleasePoolPop(v2);
  return 0;
}

void bmstream_udf_destructor_callback(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    *a1 = 0;

    v3 = a1[1];
    a1[1] = 0;

    sqlite3_free(a1);
  }
}

void biome_each_vtab_destroy(void **a1)
{
  v2 = *a1;
  *a1 = 0;

  sqlite3_free(a1);
}

void bmstream_vtab_destroy(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeWeak(a1, 0);
  sqlite3_free(a1);

  objc_autoreleasePoolPop(v2);
}

void *static UnifiedLibrary.library.getter()
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0(&one-time initialization token for initializedLibrary);
  }

  return &unk_1EF2A1980;
}

uint64_t outlined init with copy of AnyValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of StorableValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorableValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v55) = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  OUTLINED_FUNCTION_2_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v53 - v11);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_14();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v53 - v21;
  v56 = a3;
  v57 = a1;
  v23 = *(a3 + 16);
  v24 = *(a1 + 16);
  if (v23 == v24)
  {
    v25 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v59 = MEMORY[0x1E69E7CC0];
      v26 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v25 = v59;
      OUTLINED_FUNCTION_19_0();
      v28 = (v57 + v27);
      v29 = *(v26 + 72);
      while (1)
      {
        v30 = closure #2 in recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(v12 + *(v54 + 48), *v28, v28[1], (v28 + *(v58 + 48)), v55 & 1, v56, v57);
        if (v4)
        {
          break;
        }

        *v12 = v30;
        v12[1] = v31;
        v59 = v25;
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          v35 = OUTLINED_FUNCTION_4_9(v32);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v33 + 1, 1);
          v25 = v59;
        }

        *(v25 + 16) = v33 + 1;
        OUTLINED_FUNCTION_19_0();
        outlined init with take of (key: String, value: SQLDataType)(v12, v25 + v34 + *(v8 + 72) * v33, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
        v28 = (v28 + v29);
        --v23;
        v4 = 0;
        if (!v23)
        {
          return v25;
        }
      }
    }
  }

  else
  {
    v36 = v20;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v37 = swift_allocError();
    v39 = v38;
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v54 = v38;
      v55 = v37;
      v59 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v25 = v59;
      OUTLINED_FUNCTION_19_0();
      v41 = v57 + v40;
      v57 = *(v36 + 72);
      do
      {
        outlined init with copy of (key: String, value: SQLDataType)(v41, v22, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with take of (key: String, value: SQLDataType)(v22, v17, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        v42 = *v17;
        v43 = *(v17 + 1);
        v44 = *(v58 + 48);
        type metadata accessor for SQLDataType();
        OUTLINED_FUNCTION_12();
        (*(v45 + 8))(&v17[v44]);
        v59 = v25;
        v47 = *(v25 + 16);
        v46 = *(v25 + 24);
        if (v47 >= v46 >> 1)
        {
          v49 = OUTLINED_FUNCTION_4_9(v46);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v47 + 1, 1);
          v25 = v59;
        }

        *(v25 + 16) = v47 + 1;
        v48 = v25 + 16 * v47;
        *(v48 + 32) = v42;
        *(v48 + 40) = v43;
        v41 += v57;
        --v24;
      }

      while (v24);
      v39 = v54;
    }

    v51 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5(v50);
    *v39 = v25;
    *(v39 + 8) = v51;
    *(v39 + 64) = 7;
    swift_willThrow();
  }

  return v25;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 1684632949;
  if (a1 != 6)
  {
    v4 = 1819047278;
  }

  v5 = 1635017060;
  if (a1 != 4)
  {
    v5 = 1852797802;
  }

  if (a1 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  v7 = 0x676E69727473;
  if (a1 != 2)
  {
    v7 = 1702125924;
    v6 = 0xE400000000000000;
  }

  v8 = 0x656C62756F64;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x72656765746E69;
  }

  if (a1 > 1u)
  {
    v3 = v6;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (a2 > 3u)
  {
    v11 = 0xE400000000000000;
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v9 != 1684632949)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 1819047278)
      {
LABEL_45:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_46;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 1635017060)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 1852797802)
    {
      goto LABEL_45;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x676E69727473)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1702125924)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x656C62756F64)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x72656765746E69)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1279346002;
    }

    else
    {
      v4 = 0x52454745544E49;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 2)
    {
      v4 = 1415071060;
    }

    else if (a1 == 3)
    {
      v4 = 1112493122;
    }

    else
    {
      v4 = 1280070990;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1279346002;
    }

    else
    {
      v8 = 0x52454745544E49;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 1112493122;
    if (a2 != 3)
    {
      v5 = 1280070990;
    }

    if (a2 == 2)
    {
      v6 = 1415071060;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE400000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_26_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_26_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = v9;
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v8 = *(a6 + 16);
  v9 = (a6 + 40);
  if (!v8)
  {
    return v14[0];
  }

  while (1)
  {
    v10 = *v9;
    v12[0] = *(v9 - 8);
    v13 = v10;

    a4(v14, v12);
    if (v6)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      return v14[0];
    }
  }
}

uint64_t outlined destroy of StorableValue(uint64_t a1)
{
  v2 = type metadata accessor for StorableValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SQLExpressionEvaluatorError()
{
  OUTLINED_FUNCTION_1_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_81();
  v3(v2);
  return v0;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_19_0();
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_19_0();
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double OUTLINED_FUNCTION_31_1@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  result = a2 + a3;
  *(v3 + a1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_31_3()
{
  v2 = *(v0 + 8);
  *(v1 - 192) = *v0;
  *(v1 - 184) = v2;
}

uint64_t SQLExpressionEvaluator.__deallocating_deinit()
{
  SQLExpressionEvaluator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1)
{

  return Optional<A>.hashValue.getter();
}

void specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_77_1();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v29);
  v150 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v34);
  v35 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v36 = OUTLINED_FUNCTION_0_22(v35, &a17);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a15);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &a14);
  v50 = v49;
  MEMORY[0x1EEE9AC00](v48, v51);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v52);
  v53 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v54 = OUTLINED_FUNCTION_0_22(v53, &a13);
  v148 = v55;
  MEMORY[0x1EEE9AC00](v54, v56);
  OUTLINED_FUNCTION_13();
  v59 = v58 - v57;
  v60 = type metadata accessor for Date.ISO8601FormatStyle();
  v61 = OUTLINED_FUNCTION_0_22(v60, &a10);
  v154 = v62;
  MEMORY[0x1EEE9AC00](v61, v63);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v65);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_25_4(v68, v130[0]);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v70 = OUTLINED_FUNCTION_47(v69);
  v72 = MEMORY[0x1EEE9AC00](v70, v71);
  v152 = v130 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v74);
  OUTLINED_FUNCTION_51();
  v153 = v75;
  v155 = type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_2_1();
  v77 = v76;
  v80 = MEMORY[0x1EEE9AC00](v78, v79);
  v82 = v130 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80, v83);
  v85 = v130 - v84;
  Hasher.init(_seed:)();
  v149 = v25;
  v86 = *(v25 + 16);
  MEMORY[0x1865F6890](v86);
  if (v86)
  {
    v87 = v50;
    v88 = v149 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v138 = v148 + 104;
    v137 = v87 + 104;
    v136 = v44 + 104;
    v135 = v38 + 104;
    v134 = *MEMORY[0x1E6969360];
    v130[1] = v31 + 32;
    v133 = *MEMORY[0x1E6969358];
    OUTLINED_FUNCTION_110_0(v154 + 8);
    v132 = *v89;
    v131 = *v90;
    v139 = v59;
    v92 = v91;
    v154 = v91;
    while (1)
    {
      outlined init with copy of StorableValue(v88, v85);
      outlined init with copy of StorableValue(v85, v82);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (v82[8])
          {
            v156 = *v82;
            LOBYTE(v157) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_12:
            v96 = Optional<A>.hashValue.getter();
          }

          else
          {
            v126 = OUTLINED_FUNCTION_7_5(*v82);
            if (!(v127 ^ v128 | v116))
            {
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              JUMPOUT(0x184912598);
            }

            if (v126 <= -9.22337204e18)
            {
              goto LABEL_28;
            }

            OUTLINED_FUNCTION_45_1();
            if (!v127)
            {
              goto LABEL_29;
            }

            Int.hashValue.getter();
            v96 = Int.hashValue.getter();
          }

LABEL_25:
          MEMORY[0x1865F6890](v96);
LABEL_26:
          outlined destroy of StorableValue(v85);
          v88 += v92;
          if (!--v86)
          {
            goto LABEL_27;
          }

          break;
        case 2u:
          v97 = v153;
          _s10Foundation4UUIDVSgWObTm_0(v82, v153, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v98 = v97;
          v99 = v152;
          outlined init with copy of Date?(v98, v152);
          v100 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(v99, 1, v100) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            Hasher._combine(_:)(0);
          }

          else
          {
            v148 = v100;
            OUTLINED_FUNCTION_16_0();
            v111(v139, v134, v143);
            v112 = OUTLINED_FUNCTION_46_1();
            v113(v112, v133, v144);
            OUTLINED_FUNCTION_16_0();
            v114(v142, v132, v145);
            OUTLINED_FUNCTION_16_0();
            v115(v146, v131, v147);
            OUTLINED_FUNCTION_51_0();
            OUTLINED_FUNCTION_29_3();
            if (v116)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_16_0();
            v117 = OUTLINED_FUNCTION_87_1();
            v118(v117, v99, v150);
            v119 = v140;
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v120 = v152;
            v121 = Date.ISO8601Format(_:)();
            v123 = v122;
            OUTLINED_FUNCTION_16_0();
            v124(v119, v141);
            (*(*(v148 - 8) + 8))(v120);
            v125 = MEMORY[0x1865F62C0](v121, v123);

            OUTLINED_FUNCTION_102_1();
            MEMORY[0x1865F6890](v125);
            v92 = v154;
          }

          v108 = v153;
          v109 = &_s10Foundation4DateVSgMd;
          v110 = &_s10Foundation4DateVSgMR;
LABEL_18:
          _s10Foundation4UUIDVSgWOhTm_0(v108, v109, v110);
          goto LABEL_26;
        case 3u:
          v101 = *(v82 + 1);
          v156 = *v82;
          v157 = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v102 = Optional<A>.hashValue.getter();

          v96 = v102;
          goto LABEL_25;
        case 4u:
          v94 = *(v82 + 1);
          v156 = *v82;
          v157 = v94;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v95 = Optional<A>.hashValue.getter();

          v96 = v95;
          goto LABEL_25;
        case 5u:
          v104 = *(v82 + 1);
          v156 = *v82;
          v103 = *&v156;
          v157 = v104;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          lazy protocol witness table accessor for type Data and conformance Data();
          v92 = v154;
          v105 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v105);
          outlined consume of Data?(v103, v104);
          goto LABEL_26;
        case 6u:
          v106 = v151;
          _s10Foundation4UUIDVSgWObTm_0(v82, v151, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          lazy protocol witness table accessor for type UUID and conformance UUID();
          v107 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v107);
          v108 = v106;
          v92 = v154;
          v109 = &_s10Foundation4UUIDVSgMd;
          v110 = &_s10Foundation4UUIDVSgMR;
          goto LABEL_18;
        case 7u:
          v96 = OUTLINED_FUNCTION_88_0();
          goto LABEL_25;
        default:
          v93 = v82[8];
          v156 = *v82;
          LOBYTE(v157) = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
          goto LABEL_12;
      }
    }
  }

LABEL_27:
  v129 = Hasher._finalize()();
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v149, v129);
  OUTLINED_FUNCTION_85_1();
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t SQLExpressionEvaluator.execute(expression:payload:)@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  OUTLINED_FUNCTION_1_0();
  type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v115 = v6;
  v116 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  OUTLINED_FUNCTION_14();
  v112 = (v8 - v9);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v10, v11);
  v121 = &v111 - v12;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = &v111 - v15;
  v122 = type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_2_1();
  v127 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_14();
  v126 = v19 - v20;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v21, v22);
  v119 = &v111 - v23;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v24, v25);
  v125 = &v111 - v26;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v27, v28);
  v120 = &v111 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  OUTLINED_FUNCTION_14();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v111 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser7BindingVSgMd, &_s14BiomeSQLParser7BindingVSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v111 - v41;
  v43 = type metadata accessor for Binding();
  OUTLINED_FUNCTION_2_1();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_14();
  v123 = (v48 - v49);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v50, v51);
  v124 = &v111 - v52;
  v118 = v2;
  v54 = SQLExpression.expressionString.getter() == 63 && v53 == 0xE100000000000000;
  v117 = v3;
  if (v54)
  {
  }

  else
  {
    Description = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((Description & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v55 = SQLExpression.bindings.getter();
  specialized Collection.first.getter(v55, type metadata accessor for Binding, v42);

  if (__swift_getEnumTagSinglePayload(v42, 1, v43) != 1)
  {
    v73 = v124;
    v74 = OUTLINED_FUNCTION_16_1();
    v75(v74);
    Binding.name.getter();
    v76 = String.lowercased()();

    specialized Dictionary.subscript.getter(v76._countAndFlagsBits, v76._object, v1, v38);
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v34, 1, v122) == 1)
    {
      outlined destroy of UUID?(v34, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      v77 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v77);
      *v78 = v76;
      *(v78 + 64) = 2;
      swift_willThrow();
      outlined destroy of UUID?(v38, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      return (*(v45 + 8))(v73, v43);
    }

    else
    {
      v125 = v38;
      v126 = v45;
      v127 = v43;

      v83 = v34;
      v84 = v120;
      outlined init with take of StorableValue(v83, v120);
      v85 = v113;
      StorableValue.dataType.getter(v113);
      v86 = v121;
      SQLExpression.returnType.getter(v121);
      LOBYTE(v86) = specialized == infix<A>(_:_:)(v85, v86);
      v88 = v115;
      v87 = v116;
      v89 = *(v115 + 8);
      v90 = OUTLINED_FUNCTION_16_1();
      v89(v90);
      (v89)(v85, v87);
      if (v86 & 1) != 0 || (StorableValue.dataType.getter(v85), v91 = v121, v123 = *(v88 + 104), v123(v121, 2, v87), v92 = specialized == infix<A>(_:_:)(v85, v91), v93 = OUTLINED_FUNCTION_16_1(), v89(v93), (v89)(v85, v87), (v92) && (v94 = v91, SQLExpression.returnType.getter(v85), v123(v91, 5, v87), v95 = specialized == infix<A>(_:_:)(v85, v91), (v89)(v94, v87), (v89)(v85, v87), (v95))
      {
        outlined destroy of UUID?(v125, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        (*(v126 + 8))(v124, v127);
        return outlined init with take of StorableValue(v84, v114);
      }

      else
      {
        v96 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63(&type metadata for SQLError, v96);
        v97[3] = v87;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v97);
        StorableValue.dataType.getter(boxed_opaque_existential_0);
        OUTLINED_FUNCTION_15();
        swift_willThrow();
        outlined destroy of StorableValue(v84);
        outlined destroy of UUID?(v125, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        return (*(v126 + 8))(v124, v127);
      }
    }
  }

  outlined destroy of UUID?(v42, &_s14BiomeSQLParser7BindingVSgMd, &_s14BiomeSQLParser7BindingVSgMR);
LABEL_10:
  v56 = SQLExpression.bindings.getter();
  v57 = 0;
  v58 = *(v56 + 16);
  v121 = (v45 + 16);
  v122 = v58;
  v120 = v45 + 8;
  v59._rawValue = MEMORY[0x1E69E7CC0];
  while (v122 != v57)
  {
    if (v57 >= *(v56 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v60 = v56 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v61 = *(v45 + 72);
    v124 = v57;
    v62 = v123;
    (*(v45 + 16))(v123, v60 + v61 * v57, v43);
    Binding.name.getter();
    v38 = v1;
    (*(v45 + 8))(v62, v43);
    v63 = String.lowercased()();

    if (!*(v1 + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(v63._countAndFlagsBits, v63._object), (v64 & 1) == 0))
    {

      v70 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v70);
      *v71 = v63;
      *(v71 + 64) = 2;
      return swift_willThrow();
    }

    Description = v127[4].Description;
    v65 = v119;
    outlined init with copy of SQLExpressionEvaluatorError();
    outlined init with take of StorableValue(v65, v125);
    outlined init with copy of SQLExpressionEvaluatorError();
    rawValue = v59._rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      rawValue = v68;
    }

    v67 = rawValue[2];
    v59._rawValue = rawValue;
    if (v67 >= rawValue[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v59._rawValue = v69;
    }

    outlined destroy of StorableValue(v125);
    *(v59._rawValue + 2) = v67 + 1;
    outlined init with take of StorableValue(v126, v59._rawValue + ((LOBYTE(v127[5].Kind) + 32) & ~LOBYTE(v127[5].Kind)) + v67 * Description);
    v57 = v124 + 1;
    v1 = v38;
  }

  v128 = 0x205443454C4553;
  v129 = 0xE700000000000000;
  v79 = SQLExpression.expressionString.getter();
  MEMORY[0x1865F6280](v79);

  Description = v128;
  v1 = v129;

  v80._countAndFlagsBits = Description;
  v80._object = v1;
  v81 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v80, v59);
  if (v82)
  {

    return swift_bridgeObjectRelease_n();
  }

  v38 = v81;

  if (v38 && *(v38 + 2) == 1)
  {
    specialized Collection.first.getter(v38, &v128);

    if (v129)
    {

      v99 = v112;
      SQLExpression.returnType.getter(v112);
      v100 = OUTLINED_FUNCTION_7_2();
      static StorableValue.fromDatabaseValue(_:dataType:)(v100, v101, v102, v99, v103);
      (*(v115 + 8))(v99, v116);
      v104 = OUTLINED_FUNCTION_7_2();
      return outlined consume of DatabaseValue(v104, v105, v106);
    }

    goto LABEL_35;
  }

LABEL_36:
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  MEMORY[0x1865F6280](0xD000000000000025, 0x8000000184DDC020);
  MEMORY[0x1865F6280](Description, v1);
  MEMORY[0x1865F6280](0xD000000000000015, 0x8000000184DDC050);
  if (v38)
  {
    v107 = *(v38 + 2);
  }

  else
  {
    v107 = 0;
  }

  v130 = v107;
  v108 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F6280](v108);

  result = OUTLINED_FUNCTION_9_2("Fatal error", v109, v110, v128, v129, "BiomeStreams/SQLExpressionEvaluator.swift");
  __break(1u);
  return result;
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

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t getEnumTagSinglePayload for Binding(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t outlined init with copy of StorableValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorableValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void closure #1 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 error];
  if (v9)
  {
    v10 = v9;
    v11 = [a3 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    *(v16 + 16) = v10;
    *(v16 + 64) = 10;
    v17 = *(a4 + 16);
    *(a4 + 16) = v15;
  }

  else
  {
    v18 = a5 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_bookmark;
    v19 = type metadata accessor for BookmarkCache(0);
    *(v18 + *(v19 + 20)) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v18 + *(v19 + 24)) = 1;
  }
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  OUTLINED_FUNCTION_2_1();
  v9 = v8;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v15 = OUTLINED_FUNCTION_92_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15, v14, 0);
    v16 = v24;
    OUTLINED_FUNCTION_19_0();
    v18 = v1 + v17;
    v19 = *(v3 + 72);
    do
    {
      outlined init with copy of Date?(v18, v7, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
      swift_dynamicCast();
      v24 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v16 = v24;
      }

      *(v16 + 16) = v21 + 1;
      OUTLINED_FUNCTION_19_0();
      outlined init with take of UUID?(v13, v16 + v22 + *(v9 + 72) * v21, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_169();
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_25_3();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_5_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_5_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t static StorableValue.fromDatabaseValue(_:dataType:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v89 = a5;
  v90 = a4;
  v88 = a3;
  v7 = a3;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_1();
  v86 = v9;
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  OUTLINED_FUNCTION_13();
  v85 = v12 - v11;
  v13 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_14();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v84 - v23;
  v25 = *(v15 + 16);
  v26 = (v15 + 88);
  v27 = v7 == 4;
  v28 = a2;
  if (!v27 || a2 | a1)
  {
    v84[0] = *(v15 + 16);
    v84[1] = v15 + 16;
    v25(v20, v90, v13);
    v33 = (*v26)(v20, v13);
    if (!v33)
    {
      LOBYTE(v15) = v88;
      if (!v88)
      {
        v34 = v89;
        *v89 = a1;
        *(v34 + 8) = 0;
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    v35 = v33;
    switch(v33)
    {
      case 1:
        OUTLINED_FUNCTION_12_2();
        if (v36 == 1)
        {
          v37 = v89;
          *v89 = a1;
          *(v37 + 8) = 0;
          goto LABEL_9;
        }

        goto LABEL_40;
      case 2:
        OUTLINED_FUNCTION_12_2();
        if (v38 == 2)
        {
LABEL_17:
          OUTLINED_FUNCTION_19_1();
          OUTLINED_FUNCTION_8_1();
          swift_storeEnumTagMultiPayload();
        }

LABEL_40:
        v54 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63(&type metadata for SQLError, v54);
        v56 = v55;
        *(v55 + 24) = &type metadata for DatabaseValue;
        *v55 = a1;
        *(v55 + 8) = a2;
        *(v55 + 16) = v15;
        *(v55 + 56) = v13;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v55 + 32));
        (v84[0])(boxed_opaque_existential_0, v90, v13);
        *(v56 + 64) = 3;
        swift_willThrow();
        v58 = OUTLINED_FUNCTION_104();
        return outlined copy of DatabaseValue(v58, v59, v15);
      case 3:
        OUTLINED_FUNCTION_12_2();
        if (v41 == 1)
        {
          v42 = v89;
          Date.init(timeIntervalSince1970:)();
          v43 = type metadata accessor for Date();
          v44 = v42;
          v45 = 0;
LABEL_25:
          __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);
          type metadata accessor for StorableValue(0);
          OUTLINED_FUNCTION_8_1();
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_40;
      case 4:
        OUTLINED_FUNCTION_12_2();
        if (v46 == 3)
        {
          OUTLINED_FUNCTION_19_1();
          OUTLINED_FUNCTION_8_1();
          swift_storeEnumTagMultiPayload();
          v47 = OUTLINED_FUNCTION_104();
          return outlined copy of Data._Representation(v47, v48);
        }

        goto LABEL_40;
      case 5:
        OUTLINED_FUNCTION_12_2();
        if (v49 == 2)
        {
          goto LABEL_17;
        }

        goto LABEL_40;
    }

    if (v33 != 6)
    {
      v60 = a1;
      v61 = v28;
      v62 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v62);
      v64 = v63;
      if (v35 != 7)
      {
        *(v63 + 24) = v13;
        v66 = __swift_allocate_boxed_opaque_existential_0(v63);
        (v84[0])(v66, v90, v13);
        *(v64 + 32) = 0u;
        *(v64 + 48) = 0u;
        *(v64 + 64) = 3;
        swift_willThrow();
        return (*(v15 + 8))(v20, v13);
      }

      *(v63 + 24) = &type metadata for DatabaseValue;
      *v63 = v60;
      *(v63 + 8) = v61;
      LOBYTE(v15) = v88;
      *(v63 + 16) = v88;
      *(v63 + 56) = v13;
      v65 = __swift_allocate_boxed_opaque_existential_0((v63 + 32));
      (v84[0])(v65, v90, v13);
      *(v64 + 64) = 3;
      swift_willThrow();
      v58 = v60;
      v59 = v61;
      return outlined copy of DatabaseValue(v58, v59, v15);
    }

    OUTLINED_FUNCTION_12_2();
    if (v50 != 3)
    {
      goto LABEL_40;
    }

    v51 = OUTLINED_FUNCTION_104();
    outlined copy of Data._Representation(v51, v52);
    v53 = OUTLINED_FUNCTION_104();
    if (MEMORY[0x1865F5B30](v53) != 16)
    {
      v70 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v70);
      v72 = v71;
      *(v71 + 24) = &type metadata for DatabaseValue;
      *v71 = a1;
      *(v71 + 8) = a2;
      *(v71 + 16) = 3;
      *(v71 + 56) = v13;
      v73 = __swift_allocate_boxed_opaque_existential_0((v71 + 32));
      (v84[0])(v73, v90, v13);
      *(v72 + 64) = 3;
      return swift_willThrow();
    }

    switch(a2 >> 62)
    {
      case 1uLL:
        if (a1 > a1 >> 32)
        {
          __break(1u);
        }

        else
        {
          v74 = __DataStorage._bytes.getter();
          if (v74)
          {
            v75 = __DataStorage._offset.getter();
            if (__OFSUB__(a1, v75))
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v74 += a1 - v75;
          }

          a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          MEMORY[0x1865F59E0]();
          if (v74)
          {
LABEL_62:
            v79 = v85;
            UUID.init(uuid:)();
            v80 = OUTLINED_FUNCTION_104();
            outlined consume of DatabaseValue(v80, v81, 3);
            v82 = v87;
            v83 = v89;
            (*(v86 + 32))(v89, v79, v87);
            __swift_storeEnumTagSinglePayload(v83, 0, 1, v82);
            type metadata accessor for StorableValue(0);
            OUTLINED_FUNCTION_8_1();
            return swift_storeEnumTagMultiPayload();
          }

          __break(1u);
LABEL_58:
          v76 = *(a1 + 16);
          v77 = __DataStorage._bytes.getter();
          if (!v77)
          {
            goto LABEL_61;
          }

          v78 = __DataStorage._offset.getter();
          if (!__OFSUB__(v76, v78))
          {
            v77 += v76 - v78;
LABEL_61:
            MEMORY[0x1865F59E0]();
            if (v77)
            {
              goto LABEL_62;
            }

LABEL_66:
            __break(1u);
            JUMPOUT(0x184914518);
          }
        }

        __break(1u);
        goto LABEL_65;
      case 2uLL:
        goto LABEL_58;
      default:
        goto LABEL_62;
    }
  }

  v29 = v13;
  v30 = v13;
  v31 = *(v15 + 16);
  v25(v84 - v23, v90, v30);
  v32 = (*v26)(v24, v29);
  switch(v32)
  {
    case 0:
    case 1:
      OUTLINED_FUNCTION_24_0();
LABEL_9:
      type metadata accessor for StorableValue(0);
      OUTLINED_FUNCTION_8_1();
      return swift_storeEnumTagMultiPayload();
    case 2:
LABEL_19:
      type metadata accessor for StorableValue(0);
      v40 = v89;
      *v89 = 0;
      v40[1] = 0;
      return swift_storeEnumTagMultiPayload();
    case 3:
      v43 = type metadata accessor for Date();
      v44 = v89;
      v45 = 1;
      goto LABEL_25;
    case 4:
      *v89 = xmmword_184D27CF0;
      type metadata accessor for StorableValue(0);
      OUTLINED_FUNCTION_8_1();
      return swift_storeEnumTagMultiPayload();
    case 5:
      goto LABEL_19;
    case 6:
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v87);
      type metadata accessor for StorableValue(0);
      OUTLINED_FUNCTION_8_1();
      return swift_storeEnumTagMultiPayload();
    case 7:
      type metadata accessor for StorableValue(0);
      return swift_storeEnumTagMultiPayload();
  }

  v67 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
  OUTLINED_FUNCTION_63(&type metadata for SQLError, v67);
  v68[3] = v29;
  v69 = __swift_allocate_boxed_opaque_existential_0(v68);
  v31(v69, v90, v29);
  OUTLINED_FUNCTION_15();
  swift_willThrow();
  return (*(v15 + 8))(v24, v29);
}

uint64_t closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v9 = v8;
  v475 = a6;
  v481 = a5;
  v492 = a4;
  v489 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v443 = &v408 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v453 = &v408 - v19;
  v459 = type metadata accessor for TimeZone();
  v449 = *(v459 - 8);
  v21 = MEMORY[0x1EEE9AC00](v459, v20);
  v442 = &v408 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v452 = &v408 - v24;
  v458 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v448 = *(v458 - 8);
  v26 = MEMORY[0x1EEE9AC00](v458, v25);
  v441 = &v408 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v466 = &v408 - v29;
  v457 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v447 = *(v457 - 8);
  v31 = MEMORY[0x1EEE9AC00](v457, v30);
  v440 = &v408 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v33);
  v484 = &v408 - v34;
  v456 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v446 = *(v456 - 8);
  v36 = MEMORY[0x1EEE9AC00](v456, v35);
  v38 = &v408 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v486 = &v408 - v40;
  v455 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v445 = *(v455 - 8);
  v42 = MEMORY[0x1EEE9AC00](v455, v41);
  v44 = &v408 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v451 = &v408 - v46;
  v454 = type metadata accessor for Date.ISO8601FormatStyle();
  v444 = *(v454 - 8);
  v48 = MEMORY[0x1EEE9AC00](v454, v47);
  v439 = &v408 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v50);
  v450 = &v408 - v51;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v463, v52);
  v462 = &v408 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v461 = &v408 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v460 = &v408 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v464 = &v408 - v63;
  MEMORY[0x1EEE9AC00](v62, v64);
  v465 = &v408 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetSgMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetSgMR);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v480 = (&v408 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v68, v70);
  v477 = (&v408 - v71);
  v467 = type metadata accessor for AggregationFunction.AggregationType();
  Description = v467[-1].Description;
  MEMORY[0x1EEE9AC00](v467, v73);
  v470 = &v408 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v77 = MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v476 = (&v408 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v469 = &v408 - v81;
  MEMORY[0x1EEE9AC00](v80, v82);
  v468 = &v408 - v83;
  v84 = type metadata accessor for AggregationEvent(0);
  v86 = MEMORY[0x1EEE9AC00](v84 - 8, v85);
  v471 = &v408 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v86, v88);
  v485 = &v408 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89, v91);
  v473 = &v408 - v93;
  MEMORY[0x1EEE9AC00](v92, v94);
  v474 = &v408 - v95;
  v483 = type metadata accessor for AggregationFunction();
  v472 = *(v483 - 1);
  MEMORY[0x1EEE9AC00](v483, v96);
  v482 = &v408 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v479 = type metadata accessor for SQLExpression();
  v478 = v479[-1].Description;
  MEMORY[0x1EEE9AC00](v479, v98);
  v494 = &v408 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for StorableValue(0);
  v491 = *(v100 - 8);
  v102 = MEMORY[0x1EEE9AC00](v100, v101);
  v104 = MEMORY[0x1EEE9AC00](v102, v103);
  v106 = &v408 - v105;
  v108 = MEMORY[0x1EEE9AC00](v104, v107);
  v110 = MEMORY[0x1EEE9AC00](v108, &v408 - v109);
  v112 = MEMORY[0x1EEE9AC00](v110, v111);
  v114 = MEMORY[0x1EEE9AC00](v112, v113);
  v116 = MEMORY[0x1EEE9AC00](v114, v115);
  v118 = MEMORY[0x1EEE9AC00](v116, v117);
  v120 = MEMORY[0x1EEE9AC00](v118, v119);
  v493 = &v408 - v128;
  v129 = *a2;
  if (v129 == 1)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v130 = 1;
    v130[64] = 6;
    return swift_willThrow();
  }

  v430 = Description;
  v434 = v129;
  v435 = v124;
  v438 = v123;
  v433 = v122;
  v432 = v121;
  v429 = v106;
  v428 = v127;
  v437 = v120;
  v436 = v126;
  v431 = v125;
  v425 = a7;
  v426 = a8;
  v427 = a1;
  v490 = *(a2 + 1);
  v132 = v489;
  v133 = v489[2];
  v134 = MEMORY[0x1E69E7CC0];
  v424 = v38;
  v423 = v44;
  if (v133)
  {
    *&v495 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133, 0);
    v488 = *(v478 + 16);
    v135 = v132 + ((*(v478 + 80) + 32) & ~*(v478 + 80));
    v136 = (v478 + 8);
    v489 = (v478 + 16);
    v487 = *(v478 + 72);
    v137 = v479;
    v138 = v494;
    v134 = v495;
    v139 = v493;
    do
    {
      (v488)(v138, v135, v137);
      SQLExpressionEvaluator.execute(expression:payload:)(v139);
      if (v9)
      {
        (*v136)(v138, v137);
      }

      v9 = 0;
      (*v136)(v138, v137);
      v140 = v134;
      *&v495 = v134;
      v142 = *(v134 + 16);
      v141 = *(v134 + 24);
      if (v142 >= v141 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v141 > 1, v142 + 1, 1);
        v137 = v479;
        v140 = v495;
      }

      *(v140 + 16) = v142 + 1;
      v134 = v140;
      v139 = v493;
      outlined init with take of StorableValue(v493, v140 + ((*(v491 + 80) + 32) & ~*(v491 + 80)) + *(v491 + 72) * v142);
      v135 += v487;
      --v133;
      v138 = v494;
    }

    while (v133);
  }

  v143 = OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedAggregationMetadata;
  v144 = v9;
  v145 = specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v134);
  v146 = v484;
  v147 = v486;
  v148 = v485;
  if (v144)
  {
  }

  v149 = v145;
  v422 = v143;
  v487 = v134;
  if (v145)
  {
    if (*(v475 + 16) != v145[2])
    {

      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v164 = v481;
      *(v164 + 64) = 9;
      swift_willThrow();
    }

    v151 = 0;

    v493 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser19AggregationFunctionVGSaySDySS0F7Streams13StorableValueOGGG_AL0H0_psAE_pTg504_s14f11SQLParser19hi18VSDySS0A7Streams13kl11OGAD0C0_ps5C389_pIgngrzo_AC_AGtAdH_psAI_pIegnrzr_TR04_s12a223Streams5group33_69E06497FCCD36C7847396967BD3AC6FLL7changes2by8metadata20aggregationFunctions13resultColumns6having19expressionEvaluatorSayAA12ChangeRecordVGAM_Say0A9SQLParser13SQLExpressionVGAA20QueryPlannerMetadataCSayAN19cd92VGSayAN12ResultColumnVGAPSgAA0vR0CtKFyAA14GroupedChangesACLLVz_ALtKXEfU0_AA0Z0_pAU_SDySSAA13fG10OGtKXEfU0_Tf3nnnpf_nTf1cn_n(v150, v149);
  }

  else
  {
    v152 = *(v475 + 16);
    v153 = MEMORY[0x1E69E7CC0];
    if (v152)
    {
      *&v498 = MEMORY[0x1E69E7CC0];
      v154 = v475;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v152, 0);
      v153 = v498;
      v155 = 0;
      v493 = *(v472 + 16);
      v156 = v154 + ((*(v472 + 80) + 32) & ~*(v472 + 80));
      v157 = (v472 + 8);
      v158 = *(v472 + 72);
      do
      {
        v159 = v153;
        v160 = v482;
        v161 = v483;
        (v493)(v482, v156, v483);
        AggregationFunction.newAggregation()();
        if (v155)
        {
          (*v157)(v160, v161);
          goto LABEL_25;
        }

        v494 = 0;
        (*v157)(v160, v161);
        v153 = v159;
        *&v498 = v159;
        v163 = *(v159 + 16);
        v162 = *(v159 + 24);
        if (v163 >= v162 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1);
          v153 = v498;
        }

        *(v153 + 16) = v163 + 1;
        outlined init with take of Aggregation(&v495, v153 + 40 * v163 + 32);
        v156 += v158;
        --v152;
        v155 = v494;
        v148 = v485;
      }

      while (v152);
      v146 = v484;
      v147 = v486;
    }

    else
    {
      v494 = 0;
    }

    v493 = v153;
    v167 = *(v153 + 16);
    v168 = MEMORY[0x1E69E7CC0];
    if (v167)
    {
      *&v498 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v167, 0);
      v169 = v493;
      v170 = 0;
      v168 = v498;
      v171 = v493 + 32;
      do
      {
        if (v170 >= *(v169 + 16))
        {
          __break(1u);
LABEL_161:

LABEL_162:

          goto LABEL_163;
        }

        outlined init with copy of Aggregation(v171, &v495);
        v172 = *(&v496 + 1);
        v173 = v497;
        __swift_project_boxed_opaque_existential_1(&v495, *(&v496 + 1));
        v174 = v494;
        v175 = (*(v173 + 40))(v172, v173);
        v494 = v174;
        if (v174)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v495);
        }

        v176 = v175;
        __swift_destroy_boxed_opaque_existential_1Tm(&v495);
        *&v498 = v168;
        v178 = *(v168 + 16);
        v177 = *(v168 + 24);
        v169 = v493;
        if (v178 >= v177 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v177 > 1, v178 + 1, 1);
          v169 = v493;
          v168 = v498;
        }

        ++v170;
        *(v168 + 16) = v178 + 1;
        *(v168 + 8 * v178 + 32) = v176;
        v171 += 40;
        v146 = v484;
        v147 = v486;
      }

      while (v167 != v170);
    }

    v179 = v481;
    v180 = v487;
    v181 = v494;
    specialized KeyedQueryPlannerMetadataCache.setValue(_:forKey:)(v168, v487);
    if (v181)
    {
    }

    v182 = v179 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord;
    specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v180);
    v300 = 0;
    if (v183)
    {

      MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
      specialized Dictionary.subscript.getter(v487, *(v182 + *(MatchingRecordCache + 28)));
      if (!v298 || (v299 = v297, , (v299 & 1) != 0))
      {
        v300 = 1;
      }
    }

    v302 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
    v303 = v182 + *(v302 + 32);
    v304 = v490;

    specialized OrderedDictionary.updateValue(_:forKey:)(v434, v304, v487);
    if (*(v182 + *(v302 + 36)) < *(*(v303 + 8) + 16))
    {
      specialized OrderedDictionary.removeFirst()();
    }

    v305 = v490;

    specialized Dictionary._Variant.updateValue(_:forKey:)(0, v305, v300, v487);

    v151 = 0;
  }

  v165 = v481 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord;
  specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v487);
  v184 = v166;
  v409 = v165;
  if (!v166)
  {

    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v301 = v481;
    *(v301 + 64) = 9;
    swift_willThrow();
  }

  v185 = swift_allocObject();
  v408 = v185;
  *(v185 + 16) = v184;
  v489 = (v185 + 16);
  v186 = v493;
  v413 = v493 + 32;
  v416 = (v430 + 88);
  v415 = 3;
  v414 = 4;
  v412 = (v430 + 8);
  v411 = (v430 + 96);
  v410 = (v478 + 8);
  v482 = (v490 + 8);
  v420 = v184;

  v187 = 0;
  v419 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v188 = *(v493 + 16);
    v189 = 0uLL;
    if (v187 == v188)
    {
      v190 = 0uLL;
      v191 = 0uLL;
    }

    else
    {
      if (v187 >= v188)
      {
        goto LABEL_219;
      }

      v192 = v187 + 1;
      *&v498 = v187;
      outlined init with copy of Aggregation(v413 + 40 * v187, &v498 + 8);
      v189 = v498;
      v190 = v499;
      v187 = v192;
      v191 = v500;
    }

    v495 = v189;
    v496 = v190;
    v497 = v191;
    if (!v191)
    {
      break;
    }

    v193 = v189;
    if ((v189 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x184917B58);
    }

    v418 = v187;
    if (v189 >= v186[2])
    {
      goto LABEL_214;
    }

    outlined init with copy of Aggregation(&v186[5 * v189 + 4], &v498);
    v194 = *(&v499 + 1);
    v195 = v500;
    __swift_project_boxed_opaque_existential_1(&v498, *(&v499 + 1));
    v430 = (*(v195 + 8))(v194, v195);
    v478 = v196;
    __swift_destroy_boxed_opaque_existential_1Tm(&v498);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v186 = v293;
    }

    if (v193 >= v186[2])
    {
      goto LABEL_215;
    }

    v197 = &v186[5 * v193];
    v198 = v186;
    v199 = v197[7];
    v200 = v197[8];
    __swift_mutable_project_boxed_opaque_existential_1((v197 + 4), v199);
    v201 = v148;
    v202 = v148;
    v203 = v471;
    (*(v200 + 32))(v201, v471, 0, v490, v492, v199, v200);
    if (v151)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v495 + 1);
    }

    outlined init with take of StorableValue(v202, v474);
    outlined init with take of StorableValue(v203, v473);
    v421 = v198;
    v204 = v198[2];
    v417 = v193;
    if (v193 >= v204)
    {
      goto LABEL_216;
    }

    outlined init with copy of Aggregation((v197 + 4), &v498);
    v205 = *(&v499 + 1);
    v206 = v500;
    __swift_project_boxed_opaque_existential_1(&v498, *(&v499 + 1));
    v207 = (*(v206 + 40))(v205, v206);
    v494 = 0;
    v208 = v207;
    v209 = v419;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v209 = v294;
    }

    v148 = v485;
    v210 = v430;
    v211 = *(v209 + 16);
    if (v211 >= *(v209 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v209 = v295;
    }

    *(v209 + 16) = v211 + 1;
    v419 = v209;
    *(v209 + 8 * v211 + 32) = v208;
    __swift_destroy_boxed_opaque_existential_1Tm(&v498);
    outlined init with copy of StorableValue(v474, v435);
    v212 = v420;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v498 = v212;
    v214 = v478;
    v215 = specialized __RawDictionaryStorage.find<A>(_:)(v210, v478);
    v217 = v212[2];
    v218 = (v216 & 1) == 0;
    v219 = v217 + v218;
    if (__OFADD__(v217, v218))
    {
      goto LABEL_217;
    }

    v220 = v215;
    v221 = v216;
    v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v219))
    {
      v222 = specialized __RawDictionaryStorage.find<A>(_:)(v210, v214);
      v146 = v484;
      v147 = v486;
      if ((v221 & 1) != (v223 & 1))
      {
        goto LABEL_233;
      }

      v220 = v222;
    }

    else
    {
      v146 = v484;
      v147 = v486;
    }

    v224 = v498;
    v420 = v498;
    if (v221)
    {
      v225 = *(v498 + 56);
      v488 = *(v491 + 72);
      v226 = v488 * v220;
      v227 = v468;
      outlined init with take of StorableValue(v225 + v488 * v220, v468);
      outlined init with take of StorableValue(v435, v224[7] + v226);
      __swift_storeEnumTagSinglePayload(v227, 0, 1, v437);
    }

    else
    {
      *(v498 + 8 * (v220 >> 6) + 64) |= 1 << v220;
      v228 = (v224[6] + 16 * v220);
      *v228 = v210;
      v228[1] = v214;
      v229 = v224[7];
      v488 = *(v491 + 72);
      outlined init with take of StorableValue(v435, v229 + v488 * v220);
      v230 = v224[2];
      v231 = __OFADD__(v230, 1);
      v232 = v230 + 1;
      if (v231)
      {
        goto LABEL_220;
      }

      v224[2] = v232;
      v227 = v468;
      __swift_storeEnumTagSinglePayload(v468, 1, 1, v437);
    }

    v233 = v470;
    outlined destroy of UUID?(v227, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    v234 = v436;
    outlined init with copy of StorableValue(v473, v436);
    v235 = v469;
    specialized Dictionary._Variant.updateValue(_:forKey:)(v234, v478, v469);

    outlined destroy of UUID?(v235, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    if (v417 >= *(v475 + 16))
    {
      goto LABEL_218;
    }

    AggregationFunction.aggregationType.getter(v233);
    v236 = v467;
    v237 = (*v416)(v233, v467);
    v238 = v237 == v415 || v237 == v414;
    v151 = v494;
    v239 = v480;
    v186 = v421;
    if (!v238)
    {
      outlined destroy of StorableValue(v473, type metadata accessor for AggregationEvent);
      outlined destroy of StorableValue(v474, type metadata accessor for AggregationEvent);
      (*v412)(v233, v236);
      goto LABEL_104;
    }

    (*v411)(v233, v236);
    (*v410)(v233, v479);
    v240 = v474;
    v241 = v473;
    if (static StorableValue.== infix(_:_:)(v474, v473))
    {
      outlined destroy of StorableValue(v241, type metadata accessor for AggregationEvent);
      outlined destroy of StorableValue(v240, type metadata accessor for AggregationEvent);
      goto LABEL_104;
    }

    v242 = v409;
    specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v487);
    if (v151)
    {

      outlined destroy of StorableValue(v473, type metadata accessor for AggregationEvent);
      outlined destroy of StorableValue(v474, type metadata accessor for AggregationEvent);

      __swift_destroy_boxed_opaque_existential_1Tm(&v495 + 1);
    }

    v494 = 0;
    v248 = 0;
    if (v243)
    {

      v244 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
      specialized Dictionary.subscript.getter(v487, *(v242 + *(v244 + 28)));
      if (!v246 || (v247 = v245, , (v247 & 1) != 0))
      {
        v248 = 1;
      }
    }

    v249 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
    v250 = v242 + *(v249 + 32);
    v251 = v490;

    specialized OrderedDictionary.updateValue(_:forKey:)(v434, v251, v487);
    if (*(v242 + *(v249 + 36)) < *(*(v250 + 8) + 16))
    {
      specialized OrderedDictionary.removeFirst()();
    }

    v252 = v490;

    specialized Dictionary._Variant.updateValue(_:forKey:)(0, v252, v248, v487);

    v253 = 1 << *(v252 + 32);
    if (v253 < 64)
    {
      v254 = ~(-1 << v253);
    }

    else
    {
      v254 = -1;
    }

    v151 = v254 & *(v252 + 64);
    v255 = (v253 + 63) >> 6;

    v256 = 0;
    v257 = v482;
    v186 = &_sSS3key_12BiomeStreams13StorableValueO5valuetMd;
    v478 = v255;
    if (v151)
    {
      goto LABEL_85;
    }

    while (1)
    {
LABEL_86:
      v259 = v256 + 1;
      if (__OFADD__(v256, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      if (v259 >= v255)
      {
        break;
      }

      v151 = *&v257[8 * v259];
      ++v256;
      if (v151)
      {
        v258 = v147;
        v256 = v259;
        goto LABEL_90;
      }
    }

    v258 = v147;
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
    __swift_storeEnumTagSinglePayload(v239, 1, 1, v292);
    v151 = 0;
    while (2)
    {
      v269 = v239;
      v270 = v477;
      outlined init with take of UUID?(v269, v477, &_sSS3key_12BiomeStreams13StorableValueO5valuetSgMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetSgMR);
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
      if (__swift_getEnumTagSinglePayload(v270, 1, v271) != 1)
      {
        v273 = *v270;
        v272 = v270[1];
        outlined init with take of StorableValue(v270 + *(v271 + 48), v438);
        v274 = v489;
        v146 = swift_isUniquelyReferenced_nonNull_native();
        *&v498 = *v274;
        v275 = v498;
        v276 = specialized __RawDictionaryStorage.find<A>(_:)(v273, v272);
        v278 = v277;
        v279 = *(v275 + 16);
        v280 = (v277 & 1) == 0;
        if (__OFADD__(v279, v280))
        {
          __break(1u);
          goto LABEL_166;
        }

        v281 = v276;
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v146, v279 + v280))
        {
          v282 = specialized __RawDictionaryStorage.find<A>(_:)(v273, v272);
          if ((v278 & 1) != (v283 & 1))
          {
            goto LABEL_233;
          }

          v281 = v282;
        }

        if (v278)
        {

          v284 = v498;
          v285 = v488 * v281;
          v286 = v476;
          outlined init with take of StorableValue(*(v498 + 56) + v488 * v281, v476);
          outlined init with take of StorableValue(v438, v284[7] + v285);
          v287 = 0;
          v288 = v437;
          v147 = v486;
        }

        else
        {
          v284 = v498;
          *(v498 + 8 * (v281 >> 6) + 64) |= 1 << v281;
          v289 = (v284[6] + 16 * v281);
          *v289 = v273;
          v289[1] = v272;
          outlined init with take of StorableValue(v438, v284[7] + v488 * v281);
          v290 = v284[2];
          v231 = __OFADD__(v290, 1);
          v291 = v290 + 1;
          if (v231)
          {
            __break(1u);
            goto LABEL_171;
          }

          v284[2] = v291;
          v287 = 1;
          v288 = v437;
          v147 = v486;
          v286 = v476;
        }

        v257 = v482;
        v186 = &_sSS3key_12BiomeStreams13StorableValueO5valuetMd;
        __swift_storeEnumTagSinglePayload(v286, v287, 1, v288);
        outlined destroy of UUID?(v286, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        *v489 = v284;
        v239 = v480;
        v255 = v478;
        if (!v151)
        {
          goto LABEL_86;
        }

LABEL_85:
        v258 = v147;
        v259 = v256;
LABEL_90:
        v260 = __clz(__rbit64(v151));
        v151 &= v151 - 1;
        v261 = v260 | (v259 << 6);
        v262 = (v490[6] + 16 * v261);
        v263 = *v262;
        v264 = v262[1];
        v265 = v436;
        outlined init with copy of StorableValue(v490[7] + v488 * v261, v436);
        v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
        v267 = *(v266 + 48);
        v268 = v480;
        *v480 = v263;
        v268[1] = v264;
        v239 = v268;
        outlined init with take of StorableValue(v265, v268 + v267);
        __swift_storeEnumTagSinglePayload(v239, 0, 1, v266);

        continue;
      }

      break;
    }

    outlined destroy of StorableValue(v473, type metadata accessor for AggregationEvent);
    outlined destroy of StorableValue(v474, type metadata accessor for AggregationEvent);
    v151 = v494;
    v186 = v421;
    v148 = v485;
    v147 = v258;
    v146 = v484;
LABEL_104:
    __swift_destroy_boxed_opaque_existential_1Tm(&v495 + 1);
    v187 = v418;
  }

  specialized KeyedQueryPlannerMetadataCache.setValue(_:forKey:)(v419, v487);
  if (v151)
  {
  }

LABEL_118:

  v306 = *v427;
  v307 = *(*v427 + 16);
  v308 = v408;
  v421 = v186;
  v489 = v306;
  if (v307)
  {
    Hasher.init(_seed:)();
    v309 = v487;
    v490 = *(v487 + 16);
    MEMORY[0x1865F6890]();
    v310 = *(v309 + 16);
    v494 = v151;
    v311 = v466;
    v312 = v433;
    if (v310)
    {
      v313 = v487 + ((*(v491 + 80) + 32) & ~*(v491 + 80));
      v485 = (v445 + 104);
      v493 = *(v491 + 72);
      v483 = (v446 + 104);
      v482 = (v447 + 104);
      LODWORD(v481) = *MEMORY[0x1E6969360];
      v480 = (v448 + 104);
      v476 = (v449 + 32);
      LODWORD(v479) = *MEMORY[0x1E6969358];
      LODWORD(v478) = *MEMORY[0x1E6969370];
      v475 = v444 + 8;
      LODWORD(v477) = *MEMORY[0x1E6969380];
      while (1)
      {
        outlined init with copy of StorableValue(v313, v312);
        outlined init with copy of StorableValue(v312, v432);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            if (*(v432 + 8))
            {
              *&v498 = *v432;
              BYTE8(v498) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_128:
              v316 = Optional<A>.hashValue.getter();
LABEL_130:
              MEMORY[0x1865F6890](v316);
              v311 = v466;
LABEL_131:
              outlined destroy of StorableValue(v433, type metadata accessor for StorableValue);
            }

            else
            {
              v337 = floor(*v432);
              if ((*&v337 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_225;
              }

              if (v337 <= -9.22337204e18)
              {
                goto LABEL_226;
              }

              if (v337 >= 9.22337204e18)
              {
                goto LABEL_227;
              }

              Int.hashValue.getter();
              v338 = Int.hashValue.getter();
              MEMORY[0x1865F6890](v338);
              outlined destroy of StorableValue(v433, type metadata accessor for StorableValue);
LABEL_143:
              v311 = v466;
            }

            v313 += v493;
            --v310;
            v312 = v433;
            if (!v310)
            {
              goto LABEL_144;
            }

            break;
          case 2u:
            v317 = v465;
            outlined init with take of UUID?(v432, v465, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v318 = v317;
            v319 = v464;
            outlined init with copy of Date?(v318, v464, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v320 = type metadata accessor for Date();
            if (__swift_getEnumTagSinglePayload(v319, 1, v320) == 1)
            {
              outlined destroy of UUID?(v319, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              Hasher._combine(_:)(0);
            }

            else
            {
              v488 = v320;
              (*v485)(v451, v481, v455);
              (*v483)(v147, v479, v456);
              (*v482)(v146, v478, v457);
              (*v480)(v311, v477, v458);
              v328 = v146;
              v329 = v453;
              TimeZone.init(secondsFromGMT:)();
              v330 = v459;
              if (__swift_getEnumTagSinglePayload(v329, 1, v459) == 1)
              {
                goto LABEL_231;
              }

              (*v476)(v452, v329, v330);
              v331 = v450;
              Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
              v332 = v464;
              v333 = Date.ISO8601Format(_:)();
              v335 = v334;
              (*v475)(v331, v454);
              (*(*(v488 - 8) + 8))(v332);
              v336 = MEMORY[0x1865F62C0](v333, v335);

              Hasher._combine(_:)(1u);
              MEMORY[0x1865F6890](v336);
              v146 = v328;
            }

            outlined destroy of UUID?(v465, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined destroy of StorableValue(v433, type metadata accessor for StorableValue);
            v151 = v494;
            goto LABEL_143;
          case 3u:
          case 4u:
            v314 = *(v432 + 8);
            *&v498 = *v432;
            *(&v498 + 1) = v314;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v315 = Optional<A>.hashValue.getter();
            v151 = v494;

            v316 = v315;
            v147 = v486;
            goto LABEL_130;
          case 5u:
            v323 = *(v432 + 8);
            *&v498 = *v432;
            v322 = v498;
            *(&v498 + 1) = v323;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
            lazy protocol witness table accessor for type Data and conformance Data();
            v146 = v484;
            v324 = Optional<A>.hashValue.getter();
            MEMORY[0x1865F6890](v324);
            v311 = v466;
            v151 = v494;
            v325 = v323;
            v147 = v486;
            outlined consume of Data?(v322, v325);
            goto LABEL_131;
          case 6u:
            v326 = v462;
            outlined init with take of UUID?(v432, v462, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
            v327 = Optional<A>.hashValue.getter();
            MEMORY[0x1865F6890](v327);
            v311 = v466;
            outlined destroy of UUID?(v326, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            goto LABEL_131;
          case 7u:
            v316 = 0;
            goto LABEL_130;
          default:
            v321 = *(v432 + 8);
            *&v498 = *v432;
            BYTE8(v498) = v321;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
            goto LABEL_128;
        }
      }
    }

LABEL_144:
    v339 = Hasher._finalize()();
    v340 = v489;
    v341 = (v489 + 7);
    v342 = -1 << *(v489 + 32);
    v343 = v339 & ~v342;
    v308 = v408;
    if ((*(v489 + ((v343 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v343))
    {
      v344 = ~v342;
      v493 = (v489 + 7);
      v488 = ~v342;
      do
      {
        v345 = *(v340[6] + 8 * v343);
        if (*(v345 + 16) == v490)
        {
          if (!v490 || v345 == v487)
          {
            goto LABEL_162;
          }

          v346 = (*(v491 + 80) + 32) & ~*(v491 + 80);
          v347 = v345 + v346;
          v348 = v487 + v346;

          v349 = 0;
          while (1)
          {
            if (v349 >= *(v345 + 16))
            {
              goto LABEL_221;
            }

            v350 = *(v491 + 72) * v349;
            v351 = v436;
            outlined init with copy of StorableValue(v347 + v350, v436);
            if (v349 >= *(v487 + 16))
            {
              goto LABEL_222;
            }

            v352 = v431;
            outlined init with copy of StorableValue(v348 + v350, v431);
            v353 = static StorableValue.== infix(_:_:)(v351, v352);
            outlined destroy of StorableValue(v352, type metadata accessor for StorableValue);
            outlined destroy of StorableValue(v351, type metadata accessor for StorableValue);
            if ((v353 & 1) == 0)
            {
              break;
            }

            if (v490 == ++v349)
            {
              goto LABEL_161;
            }
          }

          v341 = v493;
          v151 = v494;
          v308 = v408;
          v340 = v489;
          v344 = v488;
        }

        v343 = (v343 + 1) & v344;
      }

      while (((*(v341 + ((v343 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v343) & 1) != 0);
    }
  }

  LOBYTE(v276) = passesHaving #1 (payload:) in closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(v420, v425, v426, v308, v492);
  v272 = v151;
  if (v151)
  {
  }

LABEL_166:
  v494 = v272;
  if (v276)
  {
    v357 = v427;
    v358 = swift_isUniquelyReferenced_nonNull_native();
    *&v495 = v357[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v420, v487, v358);
    v357[1] = v495;
    goto LABEL_172;
  }

LABEL_171:

LABEL_172:
  Hasher.init(_seed:)();
  v361 = v487;
  v493 = *(v487 + 16);
  MEMORY[0x1865F6890]();
  v362 = *(v361 + 16);
  v363 = v429;
  if (v362)
  {
    v364 = v487 + ((*(v491 + 80) + 32) & ~*(v491 + 80));
    v486 = (v445 + 104);
    v365 = *(v491 + 72);
    v485 = (v446 + 104);
    v484 = (v447 + 104);
    LODWORD(v483) = *MEMORY[0x1E6969360];
    v482 = (v448 + 104);
    v478 = v449 + 32;
    LODWORD(v481) = *MEMORY[0x1E6969358];
    LODWORD(v480) = *MEMORY[0x1E6969370];
    v477 = (v444 + 8);
    LODWORD(v479) = *MEMORY[0x1E6969380];
    v488 = v365;
    while (1)
    {
      outlined init with copy of StorableValue(v364, v363);
      outlined init with copy of StorableValue(v363, v428);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (*(v428 + 8))
          {
            *&v498 = *v428;
            BYTE8(v498) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_181:
            v368 = Optional<A>.hashValue.getter();
LABEL_183:
            MEMORY[0x1865F6890](v368);
LABEL_190:
            outlined destroy of StorableValue(v429, type metadata accessor for StorableValue);
          }

          else
          {
            v389 = floor(*v428);
            if ((*&v389 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_228;
            }

            if (v389 <= -9.22337204e18)
            {
              goto LABEL_229;
            }

            if (v389 >= 9.22337204e18)
            {
              goto LABEL_230;
            }

            Int.hashValue.getter();
            v390 = Int.hashValue.getter();
            MEMORY[0x1865F6890](v390);
            outlined destroy of StorableValue(v429, type metadata accessor for StorableValue);
            v365 = v488;
          }

          v364 += v365;
          --v362;
          v363 = v429;
          if (!v362)
          {
            goto LABEL_197;
          }

          break;
        case 2u:
          v369 = v460;
          outlined init with take of UUID?(v428, v460, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v370 = v369;
          v371 = v461;
          outlined init with copy of Date?(v370, v461, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v490 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(v371, 1, v490) == 1)
          {
            outlined destroy of UUID?(v461, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            Hasher._combine(_:)(0);
          }

          else
          {
            (*v486)(v423, v483, v455);
            (*v485)(v424, v481, v456);
            (*v484)(v440, v480, v457);
            (*v482)(v441, v479, v458);
            v381 = v443;
            TimeZone.init(secondsFromGMT:)();
            v382 = v459;
            if (__swift_getEnumTagSinglePayload(v381, 1, v459) == 1)
            {
              goto LABEL_232;
            }

            (*v478)(v442, v381, v382);
            v383 = v439;
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v384 = v461;
            v385 = Date.ISO8601Format(_:)();
            v387 = v386;
            (*v477)(v383, v454);
            (*(*(v490 - 1) + 8))(v384);
            v388 = MEMORY[0x1865F62C0](v385, v387);

            Hasher._combine(_:)(1u);
            MEMORY[0x1865F6890](v388);
            v365 = v488;
          }

          v378 = v460;
          v379 = &_s10Foundation4DateVSgMd;
          v380 = &_s10Foundation4DateVSgMR;
LABEL_189:
          outlined destroy of UUID?(v378, v379, v380);
          goto LABEL_190;
        case 3u:
        case 4u:
          v366 = *(v428 + 8);
          *&v498 = *v428;
          *(&v498 + 1) = v366;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v367 = Optional<A>.hashValue.getter();

          v368 = v367;
          goto LABEL_183;
        case 5u:
          v374 = *(v428 + 8);
          *&v498 = *v428;
          v373 = v498;
          *(&v498 + 1) = v374;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          lazy protocol witness table accessor for type Data and conformance Data();
          v375 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v375);
          outlined consume of Data?(v373, v374);
          goto LABEL_190;
        case 6u:
          v376 = v462;
          outlined init with take of UUID?(v428, v462, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v377 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v377);
          v378 = v376;
          v379 = &_s10Foundation4UUIDVSgMd;
          v380 = &_s10Foundation4UUIDVSgMR;
          goto LABEL_189;
        case 7u:
          v368 = 0;
          goto LABEL_183;
        default:
          v372 = *(v428 + 8);
          *&v498 = *v428;
          BYTE8(v498) = v372;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
          goto LABEL_181;
      }
    }
  }

LABEL_197:
  v391 = Hasher._finalize()();
  v392 = v489;
  v393 = (v489 + 7);
  v394 = -1 << *(v489 + 32);
  v395 = v391 & ~v394;
  if ((*(v489 + ((v395 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v395))
  {
    v396 = ~v394;
    v490 = v489 + 7;
    v488 = ~v394;
    do
    {
      v397 = *(v392[6] + 8 * v395);
      if (*(v397 + 16) == v493)
      {
        if (!v493 || v397 == v487)
        {
          goto LABEL_163;
        }

        v398 = (*(v491 + 80) + 32) & ~*(v491 + 80);
        v399 = v397 + v398;
        v400 = v487 + v398;

        v401 = 0;
        while (1)
        {
          if (v401 >= *(v397 + 16))
          {
            goto LABEL_223;
          }

          v402 = *(v491 + 72) * v401;
          v403 = v436;
          outlined init with copy of StorableValue(v399 + v402, v436);
          if (v401 >= *(v487 + 16))
          {
            goto LABEL_224;
          }

          v404 = v431;
          outlined init with copy of StorableValue(v400 + v402, v431);
          v405 = static StorableValue.== infix(_:_:)(v403, v404);
          outlined destroy of StorableValue(v404, type metadata accessor for StorableValue);
          outlined destroy of StorableValue(v403, type metadata accessor for StorableValue);
          if ((v405 & 1) == 0)
          {
            break;
          }

          if (v493 == ++v401)
          {
            goto LABEL_162;
          }
        }

        v392 = v489;
        v393 = v490;
        v396 = v488;
      }

      v395 = (v395 + 1) & v396;
    }

    while (((*(v393 + ((v395 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v395) & 1) != 0);
  }

  v406 = v427;
  swift_isUniquelyReferenced_nonNull_native();
  *&v495 = *v406;

  specialized _NativeSet.insertNew(_:at:isUnique:)(v407, v395);
  *v406 = v495;
LABEL_163:
  v354 = *(v408 + 16);
  v355 = v494;
  v356 = passesHaving #1 (payload:) in closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(v354, v425, v426, v408, v492);
  if (v355)
  {

LABEL_25:
  }

  if ((v356 & 1) == 0)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v487);
  }

  v359 = v427;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  *&v495 = v359[2];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v354, v487, v360);

  v359[2] = v495;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for Binding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}