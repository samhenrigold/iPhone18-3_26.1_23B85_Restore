uint64_t Binding.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_12();
    outlined init with copy of MaterializedViewPhysicalPlan(v9 + *(v11 + 72) * v8, a4);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for StorableValue(0);
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, type metadata accessor for SQLDataType, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType, type metadata accessor for SQLDataType, &protocol conformance descriptor for SQLDataType);
}

{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, type metadata accessor for SQLRawDataType, &lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType, type metadata accessor for SQLRawDataType, &protocol conformance descriptor for SQLRawDataType);
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72656765746E69;
  v5 = 1684632949;
  if (v2 != 6)
  {
    v5 = 1819047278;
  }

  v6 = 1635017060;
  if (v2 != 4)
  {
    v6 = 1852797802;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (v2 != 2)
  {
    v8 = 1702125924;
    v7 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C62756F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for KeyedAggregationMetadataCache(0);
  if (!*(v1 + v6[12]))
  {
    return 0;
  }

  v7 = v6;
  v8 = (v1 + v6[15]);
  v9 = v8[1];
  if (!v9)
  {
    return 0;
  }

  v22 = *v8;
  v23 = v8[2];
  v10 = *(v1 + v6[14]);
  v11 = *(v4 + v6[7]);

  v12 = specialized Dictionary.subscript.getter(a1, v11);
  v13._rawValue = v12;
  if (v10 != 1 && !v12)
  {
    v14 = (v4 + v7[8]);
    v15 = specialized OrderedDictionary.subscript.getter(a1, *v14, v14[1]);
    if (v15 == 1)
    {
      v21 = v14;

      v13._rawValue = v23(a1);

      if (!v3)
      {
        v16._countAndFlagsBits = v22;
        v16._object = v9;
        v17 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v16, v13);

        if (!v18)
        {
          if (v17)
          {
            _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5();
            specialized _arrayForceCast<A, B>(_:)();

            static KeyedAggregationMetadataCache.metadataFromRow(_:groupBySchema:payloadSchema:)();
            v13._rawValue = v20;
          }

          else
          {
            v13._rawValue = 0;
          }

          specialized OrderedDictionary.updateValue(_:forKey:)(v13._rawValue, a1);
          if (*(v4 + v7[9]) < *(v21[1] + 16))
          {
            specialized OrderedDictionary.removeFirst()();
          }
        }
      }
    }

    else
    {
      v13._rawValue = v15;
    }
  }

  return v13._rawValue;
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

void closure #2 in static KeyedQueryPlannerMetadataCache.readMetadataSQL(materializedViewName:groupBySchema:)(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for StorableValue(0);
  MEMORY[0x1EEE9AC00](v29, v5);
  v30 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 == v9)
  {
    v25[1] = v2;
    if (v8)
    {
      v10 = *(v6 + 80);
      v11 = (v10 + 32) & ~v10;
      v12 = a1 + v11;
      v13 = *(v6 + 72);
      v27 = v11 + 2 * v13;
      v28 = v10;
      v14 = MEMORY[0x1E69E7CC0];
      v26 = xmmword_184D29A90;
      while (1)
      {
        v31 = v8;
        v15 = v30;
        _s12BiomeStreams13StorableValueOWOcTm_0(v12, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = v26;
        v17 = v16 + v11;
        _s12BiomeStreams13StorableValueOWOcTm_0(v15, v16 + v11);
        _s12BiomeStreams13StorableValueOWObTm_1(v15, v17 + v13);
        v18 = *(v14 + 16);
        if (__OFADD__(v18, 2))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v14 + 24) >> 1, v19 < v18 + 2))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v20;
          v19 = *(v20 + 24) >> 1;
        }

        if (v19 - *(v14 + 16) < 2)
        {
          goto LABEL_15;
        }

        swift_arrayInitWithCopy();

        v21 = *(v14 + 16);
        v22 = __OFADD__(v21, 2);
        v23 = v21 + 2;
        if (v22)
        {
          goto LABEL_16;
        }

        *(v14 + 16) = v23;
        v12 += v13;
        v8 = v31 - 1;
        if (v31 == 1)
        {
          return;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
    swift_allocError();
    *v24 = v8;
    v24[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void static KeyedAggregationMetadataCache.metadataFromRow(_:groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_64();
  v198 = v0;
  v176 = v2;
  v4 = v3;
  v6 = v5;
  v194 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_59(&v174 - v10);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  OUTLINED_FUNCTION_2_1();
  v180 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_30();
  v181 = v16;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_30();
  v185 = v19;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_51();
  v179 = v22;
  v23 = OUTLINED_FUNCTION_43();
  v182 = type metadata accessor for StorableValue(v23);
  OUTLINED_FUNCTION_2_1();
  v193 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_9_0();
  v184 = v27;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_30();
  v178 = v30;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_51();
  v196 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  OUTLINED_FUNCTION_2_1();
  v189 = v37;
  v190 = v36;
  MEMORY[0x1EEE9AC00](v36, v38);
  OUTLINED_FUNCTION_9_0();
  v188 = v39;
  OUTLINED_FUNCTION_27();
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v44 = &v174 - v43;
  MEMORY[0x1EEE9AC00](v42, v45);
  OUTLINED_FUNCTION_51();
  v187 = v46;
  v47 = 0;
  v48 = *(v4 + 16);
  v191 = v4;
  v192 = v48;
  v186 = v6 + 64;
  v49 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v197 = v49;
    if (v192 == v47)
    {
      if (*(v176 + 16))
      {
        v98 = 0;
        v99 = v176 + 32;
        v100 = MEMORY[0x1E69E7CC0];
        v101 = v181;
        v174 = *(v176 + 16);
        v176 += 32;
        do
        {
          v102 = *(v99 + 8 * v98);
          v186 = v98 + 1;
          v187 = v100;

          OUTLINED_FUNCTION_64_2();
          v192 = Dictionary.init(dictionaryLiteral:)();
          v103 = 0;
          v104 = *(v102 + 16);
          v188 = v102;
          v189 = v104;
          while (v189 != v103)
          {
            if (v103 >= *(v102 + 16))
            {
              goto LABEL_48;
            }

            v105 = v179;
            OUTLINED_FUNCTION_12_6();
            v108 = *(v107 + 72);
            v191 = v109;
            outlined init with copy of Date?(v102 + v106 + v108 * v109, v105, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
            v110 = v105[1];
            v111 = v105[2];
            v112 = v105[3];
            v113 = v183;
            v114 = *(v183 + 64);
            v115 = v185;
            v195 = *v105;
            v196 = v110;
            *v185 = v195;
            *(v115 + 1) = v110;
            *(v115 + 2) = v111;
            *(v115 + 3) = v112;
            v116 = type metadata accessor for SQLDataType();
            OUTLINED_FUNCTION_83();
            v118 = v117;
            (*(v117 + 32))(&v115[v114], v105 + v114, v116);
            outlined init with copy of Date?(v115, v101, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);

            v119 = *(v113 + 64);
            v120 = v194;
            if (!*(v194 + 16))
            {

LABEL_44:

              v197 = *(v118 + 8);
              v197(v101 + v119, v116);
              v198 = OUTLINED_FUNCTION_156_0();
              OUTLINED_FUNCTION_1_23();
              v163 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v161, v162, &protocol conformance descriptor for MetadataSQLError);
              v164 = OUTLINED_FUNCTION_33_4(v163);
              v166 = v165;
              v167 = v185;
              v168 = v175;
              outlined init with copy of Date?(v185, v175, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
              v169 = *v168;
              v170 = v168[1];

              v171 = *(v183 + 64);
              *v166 = v169;
              v166[1] = v170;
              swift_storeEnumTagMultiPayload();
              v198 = v164;
              swift_willThrow();
              v197(v168 + v171, v116);
              v97 = v167;
              v95 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd;
              v96 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR;
              goto LABEL_15;
            }

            v121 = specialized __RawDictionaryStorage.find<A>(_:)(*(v101 + 16), *(v101 + 24));
            v123 = v122;

            if ((v123 & 1) == 0)
            {
              goto LABEL_44;
            }

            v124 = *(*(v120 + 56) + 24 * v121 + 16);
            v125 = OUTLINED_FUNCTION_60_2();
            outlined copy of DatabaseValue(v125, v126, v124);
            (*(v118 + 8))(v101 + v119, v116);
            v127 = v178;
            v128 = OUTLINED_FUNCTION_60_2();
            v129 = v198;
            static StorableValue.fromDatabaseValue(_:dataType:)(v128, v130, v124, v131, v132);
            v198 = v129;
            if (v129)
            {

              v172 = OUTLINED_FUNCTION_60_2();
              outlined consume of DatabaseValue(v172, v173, v124);

              v95 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd;
              v96 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR;
              v97 = v185;
              goto LABEL_15;
            }

            LODWORD(v190) = v124;
            OUTLINED_FUNCTION_2_12();
            _s12BiomeStreams13StorableValueOWOcTm_0(v127, v184);
            v133 = v192;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v199 = v133;
            specialized __RawDictionaryStorage.find<A>(_:)(v195, v196);
            OUTLINED_FUNCTION_15_3();
            v139 = v137 + v138;
            if (__OFADD__(v137, v138))
            {
              goto LABEL_49;
            }

            v140 = v135;
            v141 = v136;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v139))
            {
              v142 = specialized __RawDictionaryStorage.find<A>(_:)(v195, v196);
              v144 = v177;
              if ((v141 & 1) != (v143 & 1))
              {
                goto LABEL_51;
              }

              v140 = v142;
            }

            else
            {
              v144 = v177;
            }

            v192 = v133;
            if (v141)
            {
              v145 = *(v193 + 72) * v140;
              _s12BiomeStreams13StorableValueOWObTm_1(v199[7] + v145, v144);
              _s12BiomeStreams13StorableValueOWObTm_1(v184, v199[7] + v145);
              v146 = OUTLINED_FUNCTION_60_2();
              outlined consume of DatabaseValue(v146, v147, v190);
              _s12BiomeStreams13StorableValueOWOhTm_1();
              v148 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_14_4(&v133[v140 >> 6]);
              v149 = (v133[6] + 16 * v140);
              v150 = v196;
              *v149 = v195;
              v149[1] = v150;
              _s12BiomeStreams13StorableValueOWObTm_1(v184, v133[7] + *(v193 + 72) * v140);

              v151 = OUTLINED_FUNCTION_60_2();
              outlined consume of DatabaseValue(v151, v152, v190);
              OUTLINED_FUNCTION_81();
              _s12BiomeStreams13StorableValueOWOhTm_1();
              OUTLINED_FUNCTION_142_0();
              if (v154)
              {
                goto LABEL_50;
              }

              v133[2] = v153;
              v148 = 1;
            }

            __swift_storeEnumTagSinglePayload(v144, v148, 1, v182);
            outlined destroy of (columnName: String, dataType: SQLDataType)(v144, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
            outlined destroy of (columnName: String, dataType: SQLDataType)(v185, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
            v103 = v191 + 1;
            v101 = v181;
            v102 = v188;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_42_1();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v187 = v157;
          }

          v98 = v186;
          v100 = v187;
          v99 = v176;
          v156 = *(v187 + 2);
          v155 = *(v187 + 3);
          if (v156 >= v155 >> 1)
          {
            OUTLINED_FUNCTION_4_9(v155);
            OUTLINED_FUNCTION_71_1();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v99 = v176;
            v98 = v186;
            v100 = v158;
          }

          *(v100 + 16) = v156 + 1;
          *(v100 + 8 * v156 + 32) = v192;
        }

        while (v98 != v174);
      }

      goto LABEL_41;
    }

    OUTLINED_FUNCTION_12_6();
    v52 = *(v51 + 72);
    v195 = v53;
    v54 = v187;
    outlined init with copy of Date?(v191 + v50 + v52 * v53, v187, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v55 = *(v54 + 1);
    v56 = v190;
    v57 = *(v190 + 48);
    *v44 = *v54;
    *(v44 + 1) = v55;
    v58 = type metadata accessor for SQLDataType();
    OUTLINED_FUNCTION_83();
    v60 = v59;
    (*(v59 + 32))(&v44[v57], &v54[v57], v58);
    v61 = v44;
    v62 = v44;
    v63 = v188;
    outlined init with copy of Date?(v62, v188, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v65 = *v63;
    v64 = *(v63 + 1);
    (*(v60 + 8))(&v63[*(v56 + 48)], v58);
    v66 = v194;
    if (!*(v194 + 16) || (v67 = OUTLINED_FUNCTION_77(), v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v68), (v70 & 1) == 0))
    {

      OUTLINED_FUNCTION_156_0();
      OUTLINED_FUNCTION_1_23();
      v92 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v90, v91, &protocol conformance descriptor for MetadataSQLError);
      v93 = OUTLINED_FUNCTION_33_4(v92);
      *v94 = v65;
      v94[1] = v64;
      swift_storeEnumTagMultiPayload();
      v198 = v93;
      swift_willThrow();
      v95 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd;
      v96 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR;
      v97 = v61;
LABEL_15:
      outlined destroy of (columnName: String, dataType: SQLDataType)(v97, v95, v96);
      goto LABEL_41;
    }

    v71 = v69;

    if (v71 < 0 || v71 >= 1 << *(v66 + 32))
    {
      break;
    }

    if (((*(v186 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
    {
      goto LABEL_47;
    }

    v72 = *(*(v66 + 56) + 24 * v71 + 16);
    v73 = OUTLINED_FUNCTION_29_5();
    outlined copy of DatabaseValue(v73, v74, v72);
    v44 = v61;
    v75 = OUTLINED_FUNCTION_29_5();
    v76 = v198;
    static StorableValue.fromDatabaseValue(_:dataType:)(v75, v77, v72, v78, v79);
    v198 = v76;
    if (v76)
    {
      outlined destroy of (columnName: String, dataType: SQLDataType)(v61, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v159 = OUTLINED_FUNCTION_29_5();
      outlined consume of DatabaseValue(v159, v160, v72);

LABEL_41:
      OUTLINED_FUNCTION_65();
      return;
    }

    v80 = OUTLINED_FUNCTION_29_5();
    outlined consume of DatabaseValue(v80, v81, v72);
    OUTLINED_FUNCTION_2_12();
    v82 = OUTLINED_FUNCTION_133_0();
    _s12BiomeStreams13StorableValueOWOcTm_0(v82, v83);
    v49 = v197;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_42_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v88;
    }

    v85 = *(v49 + 2);
    v84 = *(v49 + 3);
    if (v85 >= v84 >> 1)
    {
      OUTLINED_FUNCTION_4_9(v84);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v89;
    }

    _s12BiomeStreams13StorableValueOWOhTm_1();
    outlined destroy of (columnName: String, dataType: SQLDataType)(v61, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    *(v49 + 2) = v85 + 1;
    OUTLINED_FUNCTION_12_6();
    _s12BiomeStreams13StorableValueOWObTm_1(v1, v49 + v86 + *(v87 + 72) * v85);
    v47 = v195 + 1;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
  if (!*(v4 + MatchingRecordCache[12]))
  {
    return 0;
  }

  v7 = MatchingRecordCache;
  v8 = (v4 + MatchingRecordCache[15]);
  v9 = v8[1];
  if (!v9)
  {
    return 0;
  }

  sql = *v8;
  v28 = v8[2];
  v10 = *(v4 + MatchingRecordCache[14]);
  v11 = *(v4 + MatchingRecordCache[7]);

  v29 = a1;
  v13 = specialized Dictionary.subscript.getter(a1, v11);
  v14 = v12;
  if (v10 == 1)
  {

    if (!v14)
    {
      return 0;
    }

    return v13 & 1;
  }

  if (v12)
  {

    return v13 & 1;
  }

  v26 = (v4 + v7[8]);
  v17 = specialized OrderedDictionary.subscript.getter(v29, *v26, v26[1]);
  if (v18 == 1)
  {

    v15._rawValue = v28(v29);

    if (!v3)
    {
      v19._countAndFlagsBits = sql;
      v19._object = v9;
      v20 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v19, v15);

      if (!v21)
      {
        if (v20)
        {
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5();
          specialized _arrayForceCast<A, B>(_:)();

          static KeyedFirstMatchingRecordCache.metadataFromRow(_:groupBySchema:payloadSchema:)();
          v23 = v22;
          v25 = v24;

          v15._rawValue = (v25 & 1);
        }

        else
        {
          v15._rawValue = 0;
          v23 = 0;
        }

        specialized OrderedDictionary.updateValue(_:forKey:)(v15._rawValue, v23, v29);
        if (*(v4 + v7[9]) < *(v26[1] + 16))
        {
          specialized OrderedDictionary.removeFirst()();
        }
      }
    }
  }

  else
  {
    v15._rawValue = v17;
  }

  return v15._rawValue;
}

void static KeyedFirstMatchingRecordCache.metadataFromRow(_:groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_64();
  v166 = v1;
  v148 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_84();
  v162 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_9_0();
  v152 = v11;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v16 = OUTLINED_FUNCTION_47(v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_9_0();
  v151 = v18;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_51();
  v147 = v21;
  v22 = OUTLINED_FUNCTION_43();
  type metadata accessor for StorableValue(v22);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_9_0();
  v149 = v25;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_30();
  v150 = v28;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_30();
  v163 = v31;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  OUTLINED_FUNCTION_2_1();
  v155 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_9_0();
  v154 = v36;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_51();
  v153 = v41;
  v42 = 0;
  v156 = v6;
  v158 = *(v6 + 16);
  v161 = (v8 + 32);
  v146 = v8;
  v167 = v0;
  v159 = v0 + 64;
  v160 = (v8 + 8);
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v165 = v43;
    if (v158 == v42)
    {
      break;
    }

    OUTLINED_FUNCTION_12_6();
    v47 = v46;
    outlined init with copy of Date?(v156 + v44 + *(v45 + 72) * v46, v153, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v48 = *(v153 + 1);
    v49 = *(v155 + 48);
    *v3 = *v153;
    *(v3 + 1) = v48;
    (*v161)(&v3[v49], &v153[v49], v162);
    outlined init with copy of Date?(v3, v154, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v51 = *v154;
    v50 = v154[1];
    (*v160)(v154 + *(v155 + 48), v162);
    if (!*(v0 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v51, v50), (v52 & 1) == 0))
    {

      OUTLINED_FUNCTION_156_0();
      OUTLINED_FUNCTION_1_23();
      v72 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v70, v71, &protocol conformance descriptor for MetadataSQLError);
      OUTLINED_FUNCTION_33_4(v72);
      *v73 = v51;
      v73[1] = v50;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      outlined destroy of (columnName: String, dataType: SQLDataType)(v3, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
LABEL_47:
      OUTLINED_FUNCTION_65();
      return;
    }

    OUTLINED_FUNCTION_121_0();

    if (v0 < 0 || v0 >= 1 << *(v0 + 32))
    {
      goto LABEL_49;
    }

    if (((*(v159 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
    {
      goto LABEL_50;
    }

    v53 = OUTLINED_FUNCTION_37_2();
    outlined copy of DatabaseValue(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_37_2();
    static StorableValue.fromDatabaseValue(_:dataType:)(v56, v57, v58, v59, v60);
    if (v1)
    {
      outlined destroy of (columnName: String, dataType: SQLDataType)(v3, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v132 = OUTLINED_FUNCTION_37_2();
      outlined consume of DatabaseValue(v132, v133, v134);
LABEL_46:

      goto LABEL_47;
    }

    v61 = OUTLINED_FUNCTION_37_2();
    outlined consume of DatabaseValue(v61, v62, v63);
    OUTLINED_FUNCTION_2_12();
    _s12BiomeStreams13StorableValueOWOcTm_0(v2, v163);
    v43 = v165;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_42_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = v68;
    }

    v65 = *(v43 + 16);
    v64 = *(v43 + 24);
    if (v65 >= v64 >> 1)
    {
      OUTLINED_FUNCTION_4_9(v64);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = v69;
    }

    _s12BiomeStreams13StorableValueOWOhTm_1();
    outlined destroy of (columnName: String, dataType: SQLDataType)(v3, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    *(v43 + 16) = v65 + 1;
    OUTLINED_FUNCTION_12_6();
    _s12BiomeStreams13StorableValueOWObTm_1(v163, v43 + v66 + *(v67 + 72) * v65);
    v42 = v47 + 1;
  }

  v74 = Dictionary.init(dictionaryLiteral:)();
  v75 = v148 + 64;
  v76 = 1 << *(v148 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v148 + 64);
  v79 = (v76 + 63) >> 6;

  v80 = 0;
  v81 = v151;
  v157 = v79;
  while (1)
  {
    v164 = v74;
    if (!v78)
    {
      break;
    }

LABEL_23:
    v78 &= v78 - 1;
    OUTLINED_FUNCTION_111_0();
    v85 = *v83;
    v84 = v83[1];
    (*(v146 + 16))(v145, v87 + *(v146 + 72) * v86, v162);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    v89 = *(v88 + 48);
    *v151 = v85;
    *(v151 + 1) = v84;
    v81 = v151;
    (*(v146 + 32))(&v151[v89], v145, v162);
    __swift_storeEnumTagSinglePayload(v151, 0, 1, v88);

LABEL_24:
    outlined init with take of UUID?(v81, v147, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    if (__swift_getEnumTagSinglePayload(v147, 1, v90) == 1)
    {

      goto LABEL_47;
    }

    v92 = *v147;
    v91 = v147[1];
    (*v161)(v152, v147 + *(v90 + 48), v162);
    if (!*(v167 + 16) || (v93 = OUTLINED_FUNCTION_52(), v95 = specialized __RawDictionaryStorage.find<A>(_:)(v93, v94), (v96 & 1) == 0))
    {

      OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_1_23();
      v137 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v135, v136, &protocol conformance descriptor for MetadataSQLError);
      OUTLINED_FUNCTION_34_3(v137);
      *v138 = v92;
      v138[1] = v91;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v139 = OUTLINED_FUNCTION_19_6();
      v140(v139);
      goto LABEL_47;
    }

    if ((v95 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_119();
    if (v99 == v100)
    {
      goto LABEL_51;
    }

    if (((*(v159 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
    {
      goto LABEL_52;
    }

    v101 = *(*(v98 + 56) + 24 * v97 + 16);
    v102 = OUTLINED_FUNCTION_29_5();
    outlined copy of DatabaseValue(v102, v103, v101);
    v104 = OUTLINED_FUNCTION_29_5();
    static StorableValue.fromDatabaseValue(_:dataType:)(v104, v105, v101, v152, v106);
    if (v166)
    {
      v141 = OUTLINED_FUNCTION_19_6();
      v142(v141);

      v143 = OUTLINED_FUNCTION_29_5();
      outlined consume of DatabaseValue(v143, v144, v101);

      goto LABEL_46;
    }

    v107 = OUTLINED_FUNCTION_29_5();
    outlined consume of DatabaseValue(v107, v108, v101);
    OUTLINED_FUNCTION_2_12();
    _s12BiomeStreams13StorableValueOWOcTm_0(v150, v149);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = OUTLINED_FUNCTION_52();
    specialized __RawDictionaryStorage.find<A>(_:)(v110, v111);
    OUTLINED_FUNCTION_27_3();
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      goto LABEL_53;
    }

    v117 = v112;
    v118 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v116))
    {
      v119 = OUTLINED_FUNCTION_52();
      v121 = specialized __RawDictionaryStorage.find<A>(_:)(v119, v120);
      if ((v118 & 1) != (v122 & 1))
      {
        goto LABEL_55;
      }

      v117 = v121;
    }

    if (v118)
    {

      v74 = v164;
      OUTLINED_FUNCTION_145_0();
      outlined assign with take of StorableValue(v149, v123);
      OUTLINED_FUNCTION_0_24();
      _s12BiomeStreams13StorableValueOWOhTm_1();
      v124 = OUTLINED_FUNCTION_19_6();
      v125(v124);
    }

    else
    {
      v74 = v164;
      OUTLINED_FUNCTION_14_4(v164 + 8 * (v117 >> 6));
      v126 = (*(v164 + 48) + 16 * v117);
      *v126 = v92;
      v126[1] = v91;
      OUTLINED_FUNCTION_145_0();
      _s12BiomeStreams13StorableValueOWObTm_1(v149, v127);
      _s12BiomeStreams13StorableValueOWOhTm_1();
      v128 = OUTLINED_FUNCTION_19_6();
      v129(v128);
      OUTLINED_FUNCTION_142_0();
      if (v100)
      {
        goto LABEL_54;
      }

      *(v164 + 16) = v130;
    }

    v81 = v151;
    v79 = v157;
    v75 = v148 + 64;
  }

  while (1)
  {
    v82 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v82 >= v79)
    {
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      __swift_storeEnumTagSinglePayload(v81, 1, 1, v131);
      v78 = 0;
      goto LABEL_24;
    }

    v78 = *(v75 + 8 * v82);
    ++v80;
    if (v78)
    {
      v80 = v82;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StorableValue(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v26 - v12;
  v14 = v2 + 64;
  v15 = -1 << *(v2 + 32);
  result = a2 & ~v15;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v17 = ~v15;
    v18 = *(a1 + 16);
    v27 = v2 + 64;
    v28 = a1;
    v26 = ~v15;
    while (1)
    {
      v19 = *(*(v2 + 48) + 8 * result);
      if (*(v19 + 16) == v18)
      {
        break;
      }

LABEL_13:
      result = (result + 1) & v17;
      if (((*(v14 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v18 && v19 != a1)
    {
      v29 = result;
      v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v21 = v19 + v20;
      v22 = a1 + v20;

      v23 = 0;
      while (v23 < *(v19 + 16))
      {
        v24 = *(v6 + 72) * v23;
        result = outlined init with copy of StorableValue(v21 + v24, v13);
        if (v18 == v23)
        {
          goto LABEL_17;
        }

        outlined init with copy of StorableValue(v22 + v24, v10);
        v25 = static StorableValue.== infix(_:_:)(v13, v10);
        outlined destroy of StorableValue(v10);
        result = outlined destroy of StorableValue(v13);
        if ((v25 & 1) == 0)
        {

          a1 = v28;
          result = v29;
          v17 = v26;
          v14 = v27;
          goto LABEL_13;
        }

        if (v18 == ++v23)
        {

          return v29;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v30);
  v137[4] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v33);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = OUTLINED_FUNCTION_0_22(v34, &a11);
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a10);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v41);
  v42 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v43 = OUTLINED_FUNCTION_0_22(v42, &a9);
  v137[7] = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &v141);
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13();
  v50 = OUTLINED_FUNCTION_82_1();
  v51 = OUTLINED_FUNCTION_0_22(v50, &v140);
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v54);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_25_4(v57, v131);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = OUTLINED_FUNCTION_47(v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_51();
  v64 = OUTLINED_FUNCTION_7(v63);
  v137[8] = type metadata accessor for StorableValue(v64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_8_5(v67, v132);
  v70 = MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_6_3(v70, v71, v72, v73, v74, v75, v76, v77, v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVSgGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVSgGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v139);
  OUTLINED_FUNCTION_60_1();
  if (v78)
  {
    OUTLINED_FUNCTION_17_3(v137);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_110_0(v79);
    OUTLINED_FUNCTION_64_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_41_1(*v80);
    OUTLINED_FUNCTION_23_2();
    if (v82)
    {
LABEL_3:
      v83 = __clz(__rbit64(v82));
      goto LABEL_9;
    }

LABEL_4:
    OUTLINED_FUNCTION_99_1();
    while (1)
    {
      if (__OFADD__(v84, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        JUMPOUT(0x18491AB18);
      }

      if (v84 + 1 >= v85)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1();
      if (v86)
      {
        v83 = __clz(__rbit64(v86));
LABEL_9:
        v135 = v81;
        v87 = v83 | (v81 << 6);
        v88 = *(v22[6] + 8 * v87);
        v136 = *(v22[7] + 16 * v87);
        OUTLINED_FUNCTION_97_1();
        if ((v89 & 1) == 0)
        {
        }

        Hasher.init(_seed:)();
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v88)
        {
          OUTLINED_FUNCTION_5_6();
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v90 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v90, v91);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v97)
                {
                  OUTLINED_FUNCTION_52_1(v96);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v92 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v118 = OUTLINED_FUNCTION_7_5(*&v96);
                  if (!(v119 ^ v120 | v111))
                  {
                    goto LABEL_57;
                  }

                  if (v118 <= -9.22337204e18)
                  {
                    goto LABEL_58;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v119)
                  {
                    goto LABEL_59;
                  }

                  Int.hashValue.getter();
                  v92 = Int.hashValue.getter();
                }

LABEL_34:
                MEMORY[0x1865F6890](v92);
LABEL_35:
                outlined destroy of StorableValue(v138);
LABEL_36:
                OUTLINED_FUNCTION_95_1();
                if (v111)
                {
                  goto LABEL_38;
                }

                break;
              case 2u:
                v93 = OUTLINED_FUNCTION_92_1();
                _s10Foundation4UUIDVSgWObTm_0(v93, v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v95 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v95);
                if (v111)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  v105 = OUTLINED_FUNCTION_40_1();
                  v106(v105);
                  OUTLINED_FUNCTION_35_2();
                  OUTLINED_FUNCTION_59_1();
                  v107();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_58_0();
                  v108();
                  v109 = OUTLINED_FUNCTION_44_1();
                  v110(v109);
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v111)
                  {
                    goto LABEL_60;
                  }

                  OUTLINED_FUNCTION_16_0();
                  v112 = OUTLINED_FUNCTION_18_3();
                  v113(v112);
                  OUTLINED_FUNCTION_9_5();
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v114 = OUTLINED_FUNCTION_34_1();
                  v115(v114);
                  OUTLINED_FUNCTION_61_0();
                  v116 = OUTLINED_FUNCTION_74_1();
                  v117(v116);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1();
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v138);
                v23 = v137[9];
                goto LABEL_36;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v24 = Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v92 = OUTLINED_FUNCTION_57_1();
                goto LABEL_34;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                v98 = lazy protocol witness table accessor for type Data and conformance Data();
                v99 = OUTLINED_FUNCTION_43_0(v98);
                MEMORY[0x1865F6890](v99);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_35;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v100, v101, v102, &_s10Foundation4UUIDVSgMR);
                v103 = lazy protocol witness table accessor for type UUID and conformance UUID();
                v104 = OUTLINED_FUNCTION_80_1(v103);
                MEMORY[0x1865F6890](v104);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_35;
              case 7u:
                v92 = OUTLINED_FUNCTION_88_0();
                goto LABEL_34;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_38:
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_4();
        OUTLINED_FUNCTION_37_0();
        if (v111)
        {
          OUTLINED_FUNCTION_21_2();
          v22 = v134;
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v111 && (v122 & 1) != 0)
            {
              goto LABEL_56;
            }

            OUTLINED_FUNCTION_56_1();
          }

          while (v111);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          v22 = v134;
        }

        OUTLINED_FUNCTION_1_20(v121);
        *(v124 + 16 * v123) = v136;
        ++*(v24 + 16);
        v81 = v135;
        if (v82)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_97_1();
    if (v125)
    {
      OUTLINED_FUNCTION_33_2();
      if (v119 != v120)
      {
        OUTLINED_FUNCTION_53_1(v126, v127);
      }

      else
      {
        v128 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v128, v129, v130);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v30);
  v132[3] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v33);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = OUTLINED_FUNCTION_0_22(v34, &a12);
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a11);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v41);
  v42 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v43 = OUTLINED_FUNCTION_0_22(v42, &a10);
  v132[6] = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &a9);
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13();
  v50 = OUTLINED_FUNCTION_82_1();
  v51 = OUTLINED_FUNCTION_0_22(v50, &v137);
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v54);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_25_4(v57, v127);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = OUTLINED_FUNCTION_47(v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_51();
  v64 = OUTLINED_FUNCTION_7(v63);
  v132[7] = type metadata accessor for StorableValue(v64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_8_5(v67, v128);
  v70 = MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_6_3(v70, v71, v72, v73, v74, v75, v76, v77, v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGSgGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGSgGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v136);
  OUTLINED_FUNCTION_60_1();
  if (v78)
  {
    OUTLINED_FUNCTION_17_3(v132);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_101_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_75_1(*MEMORY[0x1E6969380]);
    OUTLINED_FUNCTION_67_1();
    if (v81)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    v82 = v80;
    while (1)
    {
      if (__OFADD__(v82, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        JUMPOUT(0x18491BD4CLL);
      }

      if (v82 + 1 >= v79)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1();
      if (v83)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3();
        v22 = *(v85 + 8 * v84);
        OUTLINED_FUNCTION_109_0();
        if ((v86 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a14);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6();
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v87 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v87, v88);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v94)
                {
                  OUTLINED_FUNCTION_52_1(v93);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v89 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v113 = OUTLINED_FUNCTION_7_5(*&v93);
                  if (!(v114 ^ v115 | v106))
                  {
                    goto LABEL_58;
                  }

                  if (v113 <= -9.22337204e18)
                  {
                    goto LABEL_59;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v114)
                  {
                    goto LABEL_60;
                  }

                  Int.hashValue.getter();
                  v89 = Int.hashValue.getter();
                }

                v22 = &v135;
LABEL_35:
                MEMORY[0x1865F6890](v89);
LABEL_36:
                outlined destroy of StorableValue(v133);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v106)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v90 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v90, v91, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v92 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v92);
                if (v106)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  OUTLINED_FUNCTION_16_0();
                  OUTLINED_FUNCTION_87_1();
                  OUTLINED_FUNCTION_59_1();
                  v102();
                  OUTLINED_FUNCTION_35_2();
                  OUTLINED_FUNCTION_58_0();
                  v103();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_111();
                  v104();
                  OUTLINED_FUNCTION_46_1();
                  OUTLINED_FUNCTION_113_0();
                  v105();
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v106)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_16_0();
                  v107 = OUTLINED_FUNCTION_18_3();
                  v108(v107);
                  OUTLINED_FUNCTION_9_5();
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v109 = OUTLINED_FUNCTION_34_1();
                  v110(v109);
                  OUTLINED_FUNCTION_61_0();
                  v111 = OUTLINED_FUNCTION_74_1();
                  v112(v111);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1();
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v133);
                v23 = v132[8];
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v134;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v89 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                v95 = lazy protocol witness table accessor for type Data and conformance Data();
                v96 = OUTLINED_FUNCTION_43_0(v95);
                v22 = &v135;
                MEMORY[0x1865F6890](v96);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v97, v98, v99, &_s10Foundation4UUIDVSgMR);
                v100 = lazy protocol witness table accessor for type UUID and conformance UUID();
                v101 = OUTLINED_FUNCTION_80_1(v100);
                v22 = &v135;
                MEMORY[0x1865F6890](v101);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v89 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_4();
        OUTLINED_FUNCTION_37_0();
        if (v106)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v106 && (v117 & 1) != 0)
            {
              goto LABEL_57;
            }

            OUTLINED_FUNCTION_56_1();
          }

          while (v106);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v116);
        *(v119 + 8 * v118) = v131;
        OUTLINED_FUNCTION_27_1();
        v79 = v130;
        if (v120)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_109_0();
    if (v121)
    {
      OUTLINED_FUNCTION_33_2();
      if (v114 != v115)
      {
        OUTLINED_FUNCTION_53_1(v122, v123);
      }

      else
      {
        v124 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v124, v125, v126);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v30);
  v137[4] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v33);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = OUTLINED_FUNCTION_0_22(v34, &a11);
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a10);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v41);
  v42 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v43 = OUTLINED_FUNCTION_0_22(v42, &a9);
  v137[7] = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &v143);
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13();
  v50 = OUTLINED_FUNCTION_82_1();
  v51 = OUTLINED_FUNCTION_0_22(v50, &v142);
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v54);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_25_4(v57, v132);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = OUTLINED_FUNCTION_47(v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_51();
  v64 = OUTLINED_FUNCTION_7(v63);
  v137[8] = type metadata accessor for StorableValue(v64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_8_5(v67, v133);
  v70 = MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_6_3(v70, v71, v72, v73, v74, v75, v76, v77, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventtGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventtGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v141);
  OUTLINED_FUNCTION_60_1();
  if (v78)
  {
    OUTLINED_FUNCTION_17_3(v137);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_110_0(v79);
    OUTLINED_FUNCTION_64_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_41_1(*v80);
    OUTLINED_FUNCTION_23_2();
    if (v81)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    OUTLINED_FUNCTION_99_1();
    while (1)
    {
      if (__OFADD__(v82, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        JUMPOUT(0x18491D3C8);
      }

      if (v82 + 1 >= v83)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1();
      if (v84)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3();
        v87 = v86 + 16 * v85;
        v22 = *v87;
        v135 = *(v87 + 8);
        OUTLINED_FUNCTION_97_1();
        if ((v88 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a14);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6();
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v89 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v89, v90);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v96)
                {
                  OUTLINED_FUNCTION_52_1(v95);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v91 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v117 = OUTLINED_FUNCTION_7_5(*&v95);
                  if (!(v118 ^ v119 | v110))
                  {
                    goto LABEL_58;
                  }

                  if (v117 <= -9.22337204e18)
                  {
                    goto LABEL_59;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v118)
                  {
                    goto LABEL_60;
                  }

                  Int.hashValue.getter();
                  v91 = Int.hashValue.getter();
                }

                v22 = v140;
LABEL_35:
                MEMORY[0x1865F6890](v91);
LABEL_36:
                outlined destroy of StorableValue(v138);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v110)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v92 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v92, v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v94 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v94);
                if (v110)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  v104 = OUTLINED_FUNCTION_40_1();
                  v105(v104);
                  OUTLINED_FUNCTION_35_2();
                  OUTLINED_FUNCTION_59_1();
                  v106();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_58_0();
                  v107();
                  v108 = OUTLINED_FUNCTION_44_1();
                  v109(v108);
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v110)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_16_0();
                  v111 = OUTLINED_FUNCTION_18_3();
                  v112(v111);
                  OUTLINED_FUNCTION_9_5();
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v113 = OUTLINED_FUNCTION_34_1();
                  v114(v113);
                  OUTLINED_FUNCTION_61_0();
                  v115 = OUTLINED_FUNCTION_74_1();
                  v116(v115);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1();
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v138);
                v23 = v137[9];
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v139;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v91 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                v97 = lazy protocol witness table accessor for type Data and conformance Data();
                v98 = OUTLINED_FUNCTION_43_0(v97);
                v22 = v140;
                MEMORY[0x1865F6890](v98);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v99, v100, v101, &_s10Foundation4UUIDVSgMR);
                v102 = lazy protocol witness table accessor for type UUID and conformance UUID();
                v103 = OUTLINED_FUNCTION_80_1(v102);
                v22 = v140;
                MEMORY[0x1865F6890](v103);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v91 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_4();
        OUTLINED_FUNCTION_37_0();
        if (v110)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v110 && (v121 & 1) != 0)
            {
              goto LABEL_57;
            }

            OUTLINED_FUNCTION_56_1();
          }

          while (v110);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v120);
        v124 = v123 + 16 * v122;
        *v124 = v136;
        *(v124 + 8) = v135;
        OUTLINED_FUNCTION_27_1();
        if (v125)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_97_1();
    if (v126)
    {
      OUTLINED_FUNCTION_33_2();
      if (v118 != v119)
      {
        OUTLINED_FUNCTION_53_1(v127, v128);
      }

      else
      {
        v129 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v129, v130, v131);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v30);
  v132[3] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v33);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = OUTLINED_FUNCTION_0_22(v34, &a12);
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a11);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v41);
  v42 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v43 = OUTLINED_FUNCTION_0_22(v42, &a10);
  v132[6] = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &a9);
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13();
  v50 = OUTLINED_FUNCTION_82_1();
  v51 = OUTLINED_FUNCTION_0_22(v50, &v137);
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v54);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_25_4(v57, v127);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = OUTLINED_FUNCTION_47(v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_51();
  v64 = OUTLINED_FUNCTION_7(v63);
  v132[7] = type metadata accessor for StorableValue(v64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_8_5(v67, v128);
  v70 = MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_6_3(v70, v71, v72, v73, v74, v75, v76, v77, v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v136);
  OUTLINED_FUNCTION_60_1();
  if (v78)
  {
    OUTLINED_FUNCTION_17_3(v132);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_101_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_75_1(*MEMORY[0x1E6969380]);
    OUTLINED_FUNCTION_67_1();
    if (v81)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    v82 = v80;
    while (1)
    {
      if (__OFADD__(v82, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        JUMPOUT(0x184921A54);
      }

      if (v82 + 1 >= v79)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1();
      if (v83)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3();
        v22 = *(v85 + 8 * v84);
        OUTLINED_FUNCTION_109_0();
        if ((v86 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a14);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6();
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v87 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v87, v88);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v94)
                {
                  OUTLINED_FUNCTION_52_1(v93);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v89 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v113 = OUTLINED_FUNCTION_7_5(*&v93);
                  if (!(v114 ^ v115 | v106))
                  {
                    goto LABEL_58;
                  }

                  if (v113 <= -9.22337204e18)
                  {
                    goto LABEL_59;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v114)
                  {
                    goto LABEL_60;
                  }

                  Int.hashValue.getter();
                  v89 = Int.hashValue.getter();
                }

                v22 = v135;
LABEL_35:
                MEMORY[0x1865F6890](v89);
LABEL_36:
                outlined destroy of StorableValue(v133);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v106)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v90 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v90, v91, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v92 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v92);
                if (v106)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  OUTLINED_FUNCTION_16_0();
                  OUTLINED_FUNCTION_87_1();
                  OUTLINED_FUNCTION_59_1();
                  v102();
                  OUTLINED_FUNCTION_35_2();
                  OUTLINED_FUNCTION_58_0();
                  v103();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_111();
                  v104();
                  OUTLINED_FUNCTION_46_1();
                  OUTLINED_FUNCTION_113_0();
                  v105();
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v106)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_16_0();
                  v107 = OUTLINED_FUNCTION_18_3();
                  v108(v107);
                  OUTLINED_FUNCTION_9_5();
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v109 = OUTLINED_FUNCTION_34_1();
                  v110(v109);
                  OUTLINED_FUNCTION_61_0();
                  v111 = OUTLINED_FUNCTION_74_1();
                  v112(v111);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1();
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v133);
                v23 = v132[8];
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v134;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v89 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                v95 = lazy protocol witness table accessor for type Data and conformance Data();
                v96 = OUTLINED_FUNCTION_43_0(v95);
                v22 = v135;
                MEMORY[0x1865F6890](v96);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v97, v98, v99, &_s10Foundation4UUIDVSgMR);
                v100 = lazy protocol witness table accessor for type UUID and conformance UUID();
                v101 = OUTLINED_FUNCTION_80_1(v100);
                v22 = v135;
                MEMORY[0x1865F6890](v101);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v89 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_4();
        OUTLINED_FUNCTION_37_0();
        if (v106)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v106 && (v117 & 1) != 0)
            {
              goto LABEL_57;
            }

            OUTLINED_FUNCTION_56_1();
          }

          while (v106);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v116);
        *(v119 + 8 * v118) = v131;
        OUTLINED_FUNCTION_27_1();
        v79 = v130;
        if (v120)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_109_0();
    if (v121)
    {
      OUTLINED_FUNCTION_33_2();
      if (v114 != v115)
      {
        OUTLINED_FUNCTION_53_1(v122, v123);
      }

      else
      {
        v124 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v124, v125, v126);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v30);
  v141[5] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v33);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = OUTLINED_FUNCTION_0_22(v34, &a10);
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a9);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v41);
  v42 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v43 = OUTLINED_FUNCTION_0_22(v42, &v151);
  v142 = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &v150);
  v141[0] = v49;
  MEMORY[0x1EEE9AC00](v48, v50);
  OUTLINED_FUNCTION_13();
  v51 = OUTLINED_FUNCTION_82_1();
  v52 = OUTLINED_FUNCTION_0_22(v51, &v149);
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v55);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v56, v57);
  OUTLINED_FUNCTION_25_4(v58, v133);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60 = OUTLINED_FUNCTION_47(v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_51();
  v65 = OUTLINED_FUNCTION_7(v64);
  v143 = type metadata accessor for StorableValue(v65);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_8_5(v68, v134);
  v71 = MEMORY[0x1EEE9AC00](v69, v70);
  OUTLINED_FUNCTION_6_3(v71, v72, v73, v74, v75, v76, v77, v78, v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v148);
  OUTLINED_FUNCTION_60_1();
  if (v79)
  {
    OUTLINED_FUNCTION_17_3(v141);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    v142 = v24;
    v82 = v144;
    v136 = v80;
    if (v83)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    v84 = v81;
    while (1)
    {
      if (__OFADD__(v84, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        JUMPOUT(0x184925584);
      }

      if (v84 + 1 >= v80)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1();
      if (v85)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3();
        OUTLINED_FUNCTION_112_0((v87 + v86 * v88));
        v140 = *(v89 + 16);
        if ((v139 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a13);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v23)
        {
          OUTLINED_FUNCTION_5_6();
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v90 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v90, v91);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v97)
                {
                  OUTLINED_FUNCTION_52_1(v96);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v92 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v118 = OUTLINED_FUNCTION_7_5(*&v96);
                  if (!(v119 ^ v120 | v111))
                  {
                    goto LABEL_58;
                  }

                  if (v118 <= -9.22337204e18)
                  {
                    goto LABEL_59;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v119)
                  {
                    goto LABEL_60;
                  }

                  Int.hashValue.getter();
                  v92 = Int.hashValue.getter();
                }

                v22 = v147;
LABEL_35:
                MEMORY[0x1865F6890](v92);
LABEL_36:
                outlined destroy of StorableValue(v145);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v111)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v93 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v93, v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v95 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v95);
                if (v111)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  OUTLINED_FUNCTION_16_0();
                  v105 = OUTLINED_FUNCTION_87_1();
                  v106(v105, v138);
                  v107 = OUTLINED_FUNCTION_35_2();
                  v108(v107, v137);
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_59_1();
                  v109();
                  OUTLINED_FUNCTION_46_1();
                  OUTLINED_FUNCTION_58_0();
                  v110();
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v111)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_16_0();
                  v112 = OUTLINED_FUNCTION_18_3();
                  v113(v112);
                  OUTLINED_FUNCTION_9_5();
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v114 = OUTLINED_FUNCTION_34_1();
                  v115(v114);
                  OUTLINED_FUNCTION_61_0();
                  v116 = OUTLINED_FUNCTION_74_1();
                  v117(v116);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v82);
                  OUTLINED_FUNCTION_94_1();
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v145);
                v82 = v144;
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v146;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v92 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                v98 = lazy protocol witness table accessor for type Data and conformance Data();
                v99 = OUTLINED_FUNCTION_43_0(v98);
                v22 = v147;
                MEMORY[0x1865F6890](v99);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v100, v101, v102, &_s10Foundation4UUIDVSgMR);
                v103 = lazy protocol witness table accessor for type UUID and conformance UUID();
                v104 = OUTLINED_FUNCTION_80_1(v103);
                v22 = v147;
                MEMORY[0x1865F6890](v104);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v92 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_4();
        OUTLINED_FUNCTION_37_0();
        if (v111)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v111 && (v122 & 1) != 0)
            {
              goto LABEL_57;
            }

            OUTLINED_FUNCTION_56_1();
          }

          while (v111);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v121);
        OUTLINED_FUNCTION_91_1(v124 + v123 * v125);
        *(v126 + 16) = v140;
        OUTLINED_FUNCTION_27_1();
        v80 = v136;
        if (v127)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    if (v139)
    {
      OUTLINED_FUNCTION_33_2();
      if (v119 != v120)
      {
        OUTLINED_FUNCTION_53_1(v128, v129);
      }

      else
      {
        v130 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v130, v131, v132);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v30);
  v133[4] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v33);
  v34 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = OUTLINED_FUNCTION_0_22(v34, &a11);
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a10);
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v41);
  v42 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v43 = OUTLINED_FUNCTION_0_22(v42, &a9);
  v133[7] = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v46);
  v47 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v48 = OUTLINED_FUNCTION_0_22(v47, &v139);
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13();
  v50 = OUTLINED_FUNCTION_82_1();
  v51 = OUTLINED_FUNCTION_0_22(v50, &v138);
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v54);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_25_4(v57, v130);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = OUTLINED_FUNCTION_47(v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_51();
  v64 = OUTLINED_FUNCTION_7(v63);
  v133[8] = type metadata accessor for StorableValue(v64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_8_5(v67, v131);
  v70 = MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_6_3(v70, v71, v72, v73, v74, v75, v76, v77, v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v137);
  OUTLINED_FUNCTION_60_1();
  if (v78)
  {
    OUTLINED_FUNCTION_17_3(v133);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_110_0(v79);
    OUTLINED_FUNCTION_64_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_41_1(*v80);
    OUTLINED_FUNCTION_23_2();
    if (v81)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    OUTLINED_FUNCTION_99_1();
    while (1)
    {
      if (__OFADD__(v82, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        JUMPOUT(0x184926F04);
      }

      if (v82 + 1 >= v83)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1();
      if (v84)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3();
        OUTLINED_FUNCTION_112_0((v86 + 16 * v85));
        OUTLINED_FUNCTION_97_1();
        if ((v87 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a13);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6();
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v88 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v88, v89);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v95)
                {
                  OUTLINED_FUNCTION_52_1(v94);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v90 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v116 = OUTLINED_FUNCTION_7_5(*&v94);
                  if (!(v117 ^ v118 | v109))
                  {
                    goto LABEL_58;
                  }

                  if (v116 <= -9.22337204e18)
                  {
                    goto LABEL_59;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v117)
                  {
                    goto LABEL_60;
                  }

                  Int.hashValue.getter();
                  v90 = Int.hashValue.getter();
                }

                v22 = v136;
LABEL_35:
                MEMORY[0x1865F6890](v90);
LABEL_36:
                outlined destroy of StorableValue(v134);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v109)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v91 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v91, v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v93 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v93);
                if (v109)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  v103 = OUTLINED_FUNCTION_40_1();
                  v104(v103);
                  OUTLINED_FUNCTION_35_2();
                  OUTLINED_FUNCTION_59_1();
                  v105();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_58_0();
                  v106();
                  v107 = OUTLINED_FUNCTION_44_1();
                  v108(v107);
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v109)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_16_0();
                  v110 = OUTLINED_FUNCTION_18_3();
                  v111(v110);
                  OUTLINED_FUNCTION_9_5();
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v112 = OUTLINED_FUNCTION_34_1();
                  v113(v112);
                  OUTLINED_FUNCTION_61_0();
                  v114 = OUTLINED_FUNCTION_74_1();
                  v115(v114);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1();
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v134);
                v23 = v133[9];
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v135;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v90 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                v96 = lazy protocol witness table accessor for type Data and conformance Data();
                v97 = OUTLINED_FUNCTION_43_0(v96);
                v22 = v136;
                MEMORY[0x1865F6890](v97);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v98, v99, v100, &_s10Foundation4UUIDVSgMR);
                v101 = lazy protocol witness table accessor for type UUID and conformance UUID();
                v102 = OUTLINED_FUNCTION_80_1(v101);
                v22 = v136;
                MEMORY[0x1865F6890](v102);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v90 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        Hasher._finalize()();
        OUTLINED_FUNCTION_10_4();
        OUTLINED_FUNCTION_37_0();
        if (v109)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v109 && (v120 & 1) != 0)
            {
              goto LABEL_57;
            }

            OUTLINED_FUNCTION_56_1();
          }

          while (v109);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v119);
        OUTLINED_FUNCTION_91_1(v122 + 16 * v121);
        OUTLINED_FUNCTION_27_1();
        if (v123)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_97_1();
    if (v124)
    {
      OUTLINED_FUNCTION_33_2();
      if (v117 != v118)
      {
        OUTLINED_FUNCTION_53_1(v125, v126);
      }

      else
      {
        v127 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v127, v128, v129);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  v3 = *v0;
  v4 = v0[1];
  *(v1 - 152) = v3;
  *(v1 - 104) = v3;
  *(v1 - 96) = v4;
}

void OUTLINED_FUNCTION_8_6()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v3 = *(v1 + 36);

  return scanner_errposition(v3, v0);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = (*(v6 + 56) + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v14;
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 56) + 16 * result;
  *v9 = v10;
  *(v9 + 8) = v11 & 1;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v14;
  }

  return result;
}

uint64_t outlined consume of ChangeRecord??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined init with copy of Aggregation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void COUNT_STAR.processEvent(changeRecord:expressionEvaluator:)()
{
  v2 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_13();
  COUNT_STAR.getCurrentAggregationEvent()(v4, v5, v6, v7, v8, v9, v10, v11, v24, v26, v28, v30, vars0, vars8);
  if (!v1)
  {
    v12 = type metadata accessor for COUNT_STAR(0);
    v20 = *(v12 + 24);
    v21 = *(v0 + v20);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      *(v0 + v20) = v23;
      COUNT_STAR.getCurrentAggregationEvent()(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v31, vars0a, vars8a);
      OUTLINED_FUNCTION_4_6();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }
}

void COUNT_STAR.getCurrentAggregationEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_212();
  v17 = OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_12_3();
  v20 = type metadata accessor for StorableValue(0);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13();
  v23 = OUTLINED_FUNCTION_139();
  v24 = *(type metadata accessor for COUNT_STAR(v23) + 20);
  v25 = OUTLINED_FUNCTION_99_0();
  v16(v25);
  OUTLINED_FUNCTION_122();
  if (!v15)
  {
    v26 = OUTLINED_FUNCTION_27_0();
    (v16)(v26, v14 + v24, v17);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_135();
    _s12BiomeStreams13StorableValueOWObTm_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

double OUTLINED_FUNCTION_102_0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2 + *(v2 + a1);
  *(v2 + a1) = result;
  return result;
}

void OUTLINED_FUNCTION_102_1()
{

  Hasher._combine(_:)(1u);
}

void OUTLINED_FUNCTION_115_0()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for BMStreamBase(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_152_0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 208) & 1;

  return outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(a1, a2, v4);
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_98_2();
  v8 = OUTLINED_FUNCTION_77();
  specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  OUTLINED_FUNCTION_15_3();
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v17 = OUTLINED_FUNCTION_77();
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    if ((v16 & 1) == (v20 & 1))
    {
      v15 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v16)
  {
    v21 = *(v29 + 56);
    v22 = type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_12();
    v24 = *(v23 + 72) * v15;
    _s12BiomeStreams13StorableValueOWObTm_1(v21 + v24, a3);
    _s12BiomeStreams13StorableValueOWObTm_1(a1, *(v29 + 56) + v24);
    result = __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_94_2();
    specialized _NativeDictionary._insert(at:key:value:)(v26, v27, a2, a1, v29);
    v28 = type metadata accessor for StorableValue(0);
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v28);
  }

  *v3 = v29;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5);
  v9 = (v8 + 16 * v7);
  *v9 = v10;
  v9[1] = v11;
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_2_8();
  result = outlined init with take of MaterializedViewPhysicalPlan(a4, v12);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

BOOL partial apply for closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(uint64_t a1)
{
  Description = type metadata accessor for SelectCore()[-1].Description;
  v4 = (*(Description + 80) + 32) & ~*(Description + 80);
  v5 = (Description[8] + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(a1, v8, v9, v1 + v4, v7, v10, v11);
}

id get_CDEventStreamsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDEventStreamsClass_softClass;
  v7 = get_CDEventStreamsClass_softClass;
  if (!get_CDEventStreamsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_CDEventStreamsClass_block_invoke;
    v3[3] = &unk_1E6E52EB0;
    v3[4] = &v4;
    __get_CDEventStreamsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18491BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id upperCaseInitialCharacter(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v2];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = [v1 characterAtIndex:i];
      if ((v5 - 97) < 0x1Au && i == 0)
      {
        v7 = v5 - 32;
      }

      else
      {
        v7 = v5;
      }

      [v3 appendFormat:@"%C", v7];
    }
  }

  return v3;
}

uint64_t specialized KeyedQueryPlannerMetadataCache.setValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for KeyedAggregationMetadataCache(0);
  v7 = v6;
  v8 = *(v2 + v6[12]);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = (v2 + v6[15]);
  v10 = v9[1];
  if (v10)
  {
    v32 = v3;
    v29 = *v9;
    v30 = v9[2];
    v11 = *(v2 + v6[14]);
    v12 = *(v4 + v6[7]);

    v31 = v12;
    v13 = specialized Dictionary.subscript.getter(a2, v12);
    v14 = v13;
    if (v11 != 1)
    {
      if (v13)
      {

        goto LABEL_9;
      }

      v21 = (v4 + v7[8]);
      v22 = specialized OrderedDictionary.subscript.getter(a2, *v21, v21[1]);
      if (v22 == 1)
      {
        v28 = v21;

        v23._rawValue = v30(a2);

        if (v32 || (v24._object = v10, v24._countAndFlagsBits = v29, v25 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v24, v23), , v26))
        {
        }

        if (v25)
        {
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5();
          specialized _arrayForceCast<A, B>(_:)();

          static KeyedAggregationMetadataCache.metadataFromRow(_:groupBySchema:payloadSchema:)();
          v14 = v27;
        }

        else
        {
          v14 = 0;
        }

        specialized OrderedDictionary.updateValue(_:forKey:)(v14, a2);
        if (*(v4 + v7[9]) < *(v28[1] + 16))
        {
          specialized OrderedDictionary.removeFirst()();
        }
      }

      else
      {
        v14 = v22;
      }
    }

    if (!v14)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_13;
    }

LABEL_9:

    if (!specialized Dictionary.subscript.getter(a2, v31) || (v16 = v15, , (v16 & 1) != 0))
    {
      v8 = 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:
  v17 = v4 + v7[8];

  specialized OrderedDictionary.updateValue(_:forKey:)(v18, a2);
  if (*(v4 + v7[9]) < *(*(v17 + 8) + 16))
  {
    specialized OrderedDictionary.removeFirst()();
  }

  specialized Dictionary._Variant.updateValue(_:forKey:)(v19, v8, a2);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1865F6650);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t outlined consume of [[String : StorableValue]]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser19AggregationFunctionVGSaySDySS0F7Streams13StorableValueOGGG_AL0H0_psAE_pTg504_s14f11SQLParser19hi18VSDySS0A7Streams13kl11OGAD0C0_ps5C389_pIgngrzo_AC_AGtAdH_psAI_pIegnrzr_TR04_s12a223Streams5group33_69E06497FCCD36C7847396967BD3AC6FLL7changes2by8metadata20aggregationFunctions13resultColumns6having19expressionEvaluatorSayAA12ChangeRecordVGAM_Say0A9SQLParser13SQLExpressionVGAA20QueryPlannerMetadataCSayAN19cd92VGSayAN12ResultColumnVGAPSgAA0vR0CtKFyAA14GroupedChangesACLLVz_ALtKXEfU0_AA0Z0_pAU_SDySSAA13fG10OGtKXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AggregationFunction();
  Description = v6[-1].Description;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v59 = &v51 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
  v15 = MEMORY[0x1EEE9AC00](v62, v14);
  v65 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v52 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v58 = &v51 - v21;
  v22 = *(a1 + 16);
  v63 = *(a2 + 16);
  v64 = a1;
  if (v63 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v63;
  }

  v69 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v25 = v69;
  v60 = v22;
  v61 = Description;
  v57 = v23;
  if (v23)
  {
    v26 = 0;
    v55 = a2 + 32;
    v56 = Description + 16;
    v53 = v11;
    v54 = (Description + 32);
    while (v22 != v26)
    {
      result = (*(Description + 2))(v11, v64 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v26, v6);
      if (v63 == v26)
      {
        goto LABEL_27;
      }

      v27 = v3;
      v28 = v25;
      v29 = *(v55 + 8 * v26);
      v30 = *(v62 + 48);
      v31 = v65;
      (*v54)(v65, v11, v6);
      *(v31 + v30) = v29;

      v25 = v31;
      AggregationFunction.newAggregation()();
      if (v27)
      {

        outlined destroy of UUID?(v65, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
        return v25;
      }

      v32 = a2;
      v33 = v6;
      v35 = v67;
      v34 = v68;
      __swift_mutable_project_boxed_opaque_existential_1(&v66, v67);
      (*(v34 + 48))(v29, v35, v34);
      outlined destroy of UUID?(v65, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
      v25 = v28;
      v69 = v28;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v25 = v69;
      }

      ++v26;
      *(v25 + 16) = v37 + 1;
      result = outlined init with take of Aggregation(&v66, v25 + 40 * v37 + 32);
      v6 = v33;
      v22 = v60;
      Description = v61;
      a2 = v32;
      v11 = v53;
      v3 = 0;
      if (v57 == v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_12:
    v65 = Description + 16;
    v56 = (a2 + 32);
    v38 = (Description + 32);
    for (i = v57; v22 != i; ++i)
    {
      if (i >= v22)
      {
        goto LABEL_28;
      }

      result = (*(Description + 2))(v59, v64 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * i, v6);
      if (__OFADD__(i, 1))
      {
        goto LABEL_29;
      }

      if (v63 == i)
      {
        (*(Description + 1))(v59, v6);
        return v25;
      }

      if (i >= v63)
      {
        goto LABEL_30;
      }

      v40 = v25;
      v41 = *&v56[8 * i];
      v42 = v62;
      v43 = *(v62 + 48);
      v44 = v52;
      (*v38)(v52, v59, v6);
      *(v44 + v43) = v41;
      v45 = v58;
      outlined init with take of UUID?(v44, v58, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
      v46 = *(v45 + *(v42 + 48));

      v25 = v45;
      AggregationFunction.newAggregation()();
      if (v3)
      {
        outlined destroy of UUID?(v58, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);

        return v25;
      }

      v47 = v67;
      v48 = v68;
      __swift_mutable_project_boxed_opaque_existential_1(&v66, v67);
      (*(v48 + 48))(v46, v47, v48);
      outlined destroy of UUID?(v58, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
      v25 = v40;
      v69 = v40;
      v50 = *(v40 + 16);
      v49 = *(v40 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v25 = v69;
      }

      *(v25 + 16) = v50 + 1;
      result = outlined init with take of Aggregation(&v66, v25 + 40 * v50 + 32);
      v22 = v60;
      Description = v61;
    }

    return v25;
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams11Aggregation_pMd, &_s12BiomeStreams11Aggregation_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser11SQLDataTypeOtGMd, &_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser11SQLDataTypeOtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10columnName_14BiomeSQLParser11SQLDataTypeO04dataI0tGMd, &_ss23_ContiguousArrayStorageCySS10columnName_14BiomeSQLParser11SQLDataTypeO04dataI0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGMd, &_ss23_ContiguousArrayStorageCySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_12BiomeStreams13StorableValueO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_12BiomeStreams13StorableValueO5valuetGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t passesHaving #1 (payload:) in closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v121 = a4;
  v115 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v113 = &v104 - v9;
  v10 = type metadata accessor for StorableValue(0);
  v111 = *(v10 - 8);
  v112 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v110 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v108 = &v104 - v15;
  v122 = type metadata accessor for ResultColumn();
  Description = v122[-1].Description;
  v18 = MEMORY[0x1EEE9AC00](v122, v17);
  v116 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v120 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v104 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v104 - v28;
  v30 = type metadata accessor for SQLExpression();
  v31 = v30[-1].Description;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v119 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v104 - v36;
  v38 = a2;
  v40 = v39;
  outlined init with copy of Date?(v38, v29, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  if (__swift_getEnumTagSinglePayload(v29, 1, v40) == 1)
  {
    outlined destroy of UUID?(v29, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    LOBYTE(v41) = 1;
    return v41 & 1;
  }

  v118 = v31;
  v42 = v31[4];
  v105 = v37;
  v117 = v40;
  v42(v37, v29, v40);
  v43 = v115;
  v41 = *(v115 + 2);
  v114 = (Description + 32);
  v125 = (Description + 8);
  v126 = Description + 16;
  v124 = a1;

  v44 = 0;
  v123 = MEMORY[0x1E69E7CC0];
  v45 = v122;
  v46 = v43;
  while (v41 != v44)
  {
    v47 = (Description[80] + 32) & ~Description[80];
    v48 = v46;
    v49 = *(Description + 9);
    (*(Description + 2))(v25, v46 + v47 + v49 * v44, v45);
    v50 = v45;
    ResultColumn.alias.getter();
    if (v51)
    {

      v115 = *v114;
      (v115)(v116, v25, v45);
      v52 = v123;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v52;
      v127 = v52;
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v50;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1);
        v45 = v122;
        v54 = v127;
      }

      v56 = v54[2];
      v55 = v54[3];
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v123 = v56 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1);
        v45 = v122;
        v57 = v123;
        v54 = v127;
      }

      ++v44;
      v54[2] = v57;
      v123 = v54;
      (v115)(v54 + v47 + v56 * v49, v116, v45);
      v46 = v48;
    }

    else
    {
      (*v125)(v25, v45);
      ++v44;
      v46 = v48;
    }
  }

  v58 = v123;
  v116 = *(v123 + 16);
  if (!v116)
  {
    v94 = v118;
LABEL_35:

    v100 = v105;
    v101 = v107;
    v102 = SQLExpressionEvaluator.evaluatesToTrue(expression:payload:)(v105);
    if (!v101)
    {
      LOBYTE(v41) = v102;
    }

    (v94[1])(v100, v117);

    return v41 & 1;
  }

  v41 = 0;
  v115 = (v123 + ((Description[80] + 32) & ~Description[80]));
  v114 = (v118 + 1);
  while (v41 < *(v58 + 16))
  {
    v59 = v120;
    (*(Description + 2))(v120, v115 + *(Description + 9) * v41, v45);
    v60 = ResultColumn.name.getter();
    v62 = v61;
    v63 = v119;
    ResultColumn.expression.getter(v119);
    (*(Description + 1))(v59, v45);
    v64 = SQLExpression.sql.getter();
    v66 = v65;
    (*v114)(v63, v117);
    v67 = *(v121 + 16);
    if (!*(v67 + 16))
    {

LABEL_25:
      v84 = v124;
      v85 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
      v87 = v86;

      if (v87)
      {
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v84;
        v89 = v84[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v88, v89);
        v90 = v127;

        v91 = v113;
        outlined init with take of StorableValue(v90[7] + *(v111 + 72) * v85, v113);
        v124 = v90;
        v92 = v112;
        _NativeDictionary._delete(at:)();
        v93 = 0;
      }

      else
      {
        v93 = 1;
        v92 = v112;
        v91 = v113;
      }

      v94 = v118;
      v58 = v123;
      __swift_storeEnumTagSinglePayload(v91, v93, 1, v92);
      outlined destroy of UUID?(v91, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      v45 = v122;
      goto LABEL_32;
    }

    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v66);
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_25;
    }

    v71 = *(v67 + 56);
    v109 = *(v111 + 72);
    v72 = v108;
    outlined init with copy of StorableValue(v71 + v109 * v68, v108);
    outlined init with take of StorableValue(v72, v110);
    v73 = v124;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v73;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
    v77 = v73[2];
    v78 = (v76 & 1) == 0;
    v79 = v77 + v78;
    if (__OFADD__(v77, v78))
    {
      goto LABEL_40;
    }

    v80 = v75;
    v81 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v74, v79))
    {
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_42;
      }

      v80 = v82;
    }

    v45 = v122;
    if (v81)
    {

      v124 = v127;
      outlined assign with take of StorableValue(v110, v127[7] + v80 * v109);
    }

    else
    {
      v95 = v127;
      v127[(v80 >> 6) + 8] |= 1 << v80;
      v96 = (v95[6] + 16 * v80);
      *v96 = v60;
      v96[1] = v62;
      outlined init with take of StorableValue(v110, v95[7] + v80 * v109);
      v97 = v95[2];
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        goto LABEL_41;
      }

      v124 = v95;
      v95[2] = v99;
    }

    v94 = v118;
    v58 = v123;
LABEL_32:
    if (v116 == ++v41)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> COUNT_STAR.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_49_0();
  if (!v7)
  {
    v15 = type metadata accessor for COUNT_STAR(0);
    v16 = 0;
    goto LABEL_8;
  }

  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_71_0();
    swift_once();
    if (!*(v2 + 16))
    {
      goto LABEL_12;
    }
  }

  v8 = OUTLINED_FUNCTION_110();
  specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_85_0();
  v11 = type metadata accessor for StorableValue(0);
  v12 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_92(v12, v13, v11);
  if (!v14)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v3, v18);
      goto LABEL_12;
    }

    if (*(v3 + 8) == 1)
    {
      goto LABEL_12;
    }

    v16 = *v3;
    v15 = type metadata accessor for COUNT_STAR(0);
LABEL_8:
    *(v1 + *(v15 + 24)) = v16;
    return;
  }

  outlined destroy of UUID?(v3, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
LABEL_12:
  v19 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
  v20 = OUTLINED_FUNCTION_63(&type metadata for SQLError, v19);
  OUTLINED_FUNCTION_19_2(v20, v21);
  swift_willThrow();
}

uint64_t static BMPoirotSchematizerShim.searchValue(in:withFieldNumber:typeRawValue:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v24[1] = a5;
  v25 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v24 - v14;
  type metadata accessor for TypeSchema();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  static BMPoirotSchematizerShim.bmTypeToPoirotType(type:)(a4, v19 - v18);
  a6(a1, a2, a3, v20);
  static BMPoirotSchematizerShim.poirotValueToObjcValue(value:)(v15, v25);
  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  v21 = OUTLINED_FUNCTION_2_11();
  return v22(v21);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t *a1, unint64_t a2)
{
  v381 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v10);
  v361 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  v345 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v331 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v20);
  v360 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  OUTLINED_FUNCTION_2_1();
  v344 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_9_0();
  v374 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v29);
  v359 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  OUTLINED_FUNCTION_2_1();
  v343 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_51();
  v375 = v37;
  v358 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  OUTLINED_FUNCTION_2_1();
  v342 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v45);
  v357 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  OUTLINED_FUNCTION_2_1();
  v341 = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v53);
  v356 = type metadata accessor for Date.ISO8601FormatStyle();
  OUTLINED_FUNCTION_2_1();
  v340 = v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v57, v58);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_51();
  v347 = v61;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v62, v63);
  v366 = &v331 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v69, v70);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v71, v72);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v75, v76);
  OUTLINED_FUNCTION_51();
  v78 = OUTLINED_FUNCTION_7(v77);
  type metadata accessor for StorableValue(v78);
  OUTLINED_FUNCTION_2_1();
  v379 = v79;
  v380 = v80;
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v84 = &v331 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82, v85);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  v88 = MEMORY[0x1EEE9AC00](v86, v87);
  v90 = &v331 - v89;
  v92 = MEMORY[0x1EEE9AC00](v88, v91);
  v94 = &v331 - v93;
  MEMORY[0x1EEE9AC00](v92, v95);
  OUTLINED_FUNCTION_30();
  v376 = v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  OUTLINED_FUNCTION_30();
  v377 = v99;
  v102 = MEMORY[0x1EEE9AC00](v100, v101);
  v104 = (&v331 - v103);
  MEMORY[0x1EEE9AC00](v102, v105);
  OUTLINED_FUNCTION_51();
  v378 = v107;
  v346 = v2;
  v108 = *v2;
  v109 = *(*v2 + 16);
  v110 = *(*v2 + 24);
  if (v110 > v109 && (v106 & 1) != 0)
  {
    goto LABEL_3;
  }

  v352 = *v2;
  v335 = v18;
  if (v106)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMd, _ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMR);
    OUTLINED_FUNCTION_59_0(&v383);
    v116 = static _SetStorage.resize(original:capacity:move:)();
    v117 = v109[2];
    v368 = v116;
    if (v117)
    {
      v332 = v109 + 7;
      OUTLINED_FUNCTION_34_2();
      LODWORD(v350) = *MEMORY[0x1E6969360];
      OUTLINED_FUNCTION_10_6();
      v349 = v118;
      LODWORD(v339) = *MEMORY[0x1E6969358];
      OUTLINED_FUNCTION_10_6();
      v338 = v119;
      LODWORD(v337) = *MEMORY[0x1E6969370];
      OUTLINED_FUNCTION_10_6();
      v336 = v120;
      OUTLINED_FUNCTION_7_7(*MEMORY[0x1E6969380]);
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_53();
      v333 = v121;
      v334 = v125;
      if (v124)
      {
LABEL_9:
        v126 = v109;
        v127 = __clz(__rbit64(v124));
        v351 = (v124 - 1) & v124;
        goto LABEL_15;
      }

LABEL_10:
      v128 = v122;
      while (1)
      {
        v129 = v128 + 1;
        if (__OFADD__(v128, 1))
        {
          goto LABEL_165;
        }

        if (v129 >= v121)
        {
          break;
        }

        ++v128;
        if (v332[v129])
        {
          v126 = v109;
          OUTLINED_FUNCTION_27_2();
          v351 = v131 & v130;
LABEL_15:
          v355 = v122;
          v132 = *(v123[6] + 8 * (v127 | (v122 << 6)));
          Hasher.init(_seed:)();
          MEMORY[0x1865F6890](*(v132 + 16));
          v364 = v132;
          v133 = *(v132 + 16);
          v109 = v126;
          if (v133)
          {
            OUTLINED_FUNCTION_19_0();
            v135 = v364 + v134;
            v374 = *(v136 + 72);
            while (1)
            {
              v137 = v378;
              outlined init with copy of StorableValue(v135, v378);
              outlined init with copy of StorableValue(v137, v104);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  if (v104[1])
                  {
                    v382 = *v104;
                    LOBYTE(v383) = 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_26:
                    v141 = Optional<A>.hashValue.getter();
                  }

                  else
                  {
                    v172 = OUTLINED_FUNCTION_7_5(*v104);
                    if (!(v174 ^ v114 | v173))
                    {
                      goto LABEL_171;
                    }

                    if (v172 <= -9.22337204e18)
                    {
                      goto LABEL_172;
                    }

                    OUTLINED_FUNCTION_45_1();
                    if (!v174)
                    {
                      goto LABEL_173;
                    }

                    Int.hashValue.getter();
                    v141 = Int.hashValue.getter();
                  }

LABEL_38:
                  MEMORY[0x1865F6890](v141);
LABEL_39:
                  outlined destroy of StorableValue(v378);
LABEL_40:
                  v135 += v374;
                  if (!--v133)
                  {
                    goto LABEL_41;
                  }

                  break;
                case 2u:
                  v142 = i;
                  v109 = &_s10Foundation4DateVSgMd;
                  _s10Foundation4UUIDVSgWObTm_1(v104, i, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v143 = v142;
                  v144 = v363;
                  outlined init with copy of Date?(v143, v363);
                  v369 = type metadata accessor for Date();
                  if (__swift_getEnumTagSinglePayload(v144, 1, v369) == 1)
                  {
                    _s10Foundation4UUIDVSgWOhTm_1(v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    Hasher._combine(_:)(0);
                    OUTLINED_FUNCTION_38_1();
                    OUTLINED_FUNCTION_53();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_21_3();
                    v157();
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_20_5();
                    v158();
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_18_4();
                    v159();
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_19_5();
                    v160();
                    v161 = v372;
                    TimeZone.init(secondsFromGMT:)();
                    v162 = v361;
                    if (__swift_getEnumTagSinglePayload(v161, 1, v361) == 1)
                    {
                      goto LABEL_180;
                    }

                    OUTLINED_FUNCTION_16_0();
                    v163(v348, v161, v162);
                    Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
                    v164 = v363;
                    v165 = Date.ISO8601Format(_:)();
                    v167 = v166;
                    OUTLINED_FUNCTION_16_0();
                    v168 = OUTLINED_FUNCTION_26_4();
                    v169(v168);
                    OUTLINED_FUNCTION_28();
                    (*(v170 + 8))(v164);
                    v171 = MEMORY[0x1865F62C0](v165, v167);

                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865F6890](v171);
                    v109 = v161;
                    OUTLINED_FUNCTION_53();
                    v145 = &_s10Foundation4DateVSgMd;
                    v146 = &_s10Foundation4DateVSgMR;
                  }

                  _s10Foundation4UUIDVSgWOhTm_1(i, v145, v146);
                  outlined destroy of StorableValue(v378);
                  goto LABEL_40;
                case 3u:
                  v147 = v104[1];
                  v382 = *v104;
                  v383 = v147;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  Optional<A>.hashValue.getter();

                  OUTLINED_FUNCTION_53();
                  goto LABEL_38;
                case 4u:
                  v139 = v104[1];
                  v382 = *v104;
                  v383 = v139;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v140 = Optional<A>.hashValue.getter();
                  OUTLINED_FUNCTION_53();

                  v141 = v140;
                  goto LABEL_38;
                case 5u:
                  v148 = *(v104 + 1);
                  v382 = *v104;
                  v383 = *&v148;
                  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                  lazy protocol witness table accessor for type Data and conformance Data();
                  OUTLINED_FUNCTION_38_1();
                  v149 = Optional<A>.hashValue.getter();
                  MEMORY[0x1865F6890](v149);
                  OUTLINED_FUNCTION_53();
                  outlined consume of Data?(v150, v148);
                  goto LABEL_39;
                case 6u:
                  OUTLINED_FUNCTION_22_4();
                  _s10Foundation4UUIDVSgWObTm_1(v151, v152, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  OUTLINED_FUNCTION_3_14();
                  v154 = lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(&lazy protocol witness table cache variable for type UUID and conformance UUID, v153, MEMORY[0x1E69695B8]);
                  v155 = OUTLINED_FUNCTION_14_3(v154);
                  MEMORY[0x1865F6890](v155);
                  OUTLINED_FUNCTION_38_1();
                  _s10Foundation4UUIDVSgWOhTm_1(v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  goto LABEL_39;
                case 7u:
                  v141 = 0;
                  goto LABEL_38;
                default:
                  v138 = *(v104 + 8);
                  v382 = *v104;
                  LOBYTE(v383) = v138;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                  goto LABEL_26;
              }
            }
          }

LABEL_41:
          Hasher._finalize()();
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_37_1();
          if (v173)
          {
            OUTLINED_FUNCTION_31_4();
            v123 = *(v182 - 256);
            do
            {
              if (++v179 == v181 && (v180 & 1) != 0)
              {
                goto LABEL_166;
              }

              v183 = v179 == v181;
              if (v179 == v181)
              {
                v179 = 0;
              }

              v180 |= v183;
              v184 = *(v177 + 8 * v179);
            }

            while (v184 == -1);
            v175 = __clz(__rbit64(~v184)) + (v179 << 6);
          }

          else
          {
            OUTLINED_FUNCTION_32_3();
            v123 = *(v178 - 256);
          }

          *(v177 + ((v175 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v175;
          *(*(v176 + 48) + 8 * v175) = v364;
          ++*(v176 + 16);
          v122 = v355;
          v121 = v333;
          v124 = v351;
          if (v351)
          {
            goto LABEL_9;
          }

          goto LABEL_10;
        }
      }

      v207 = 1 << *(v123 + 32);
      if (v207 >= 64)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v207 + 63) >> 6, v332);
        v123 = v352;
      }

      else
      {
        *v332 = -1 << v207;
      }

      v273 = v346;
      v123[2] = 0;

      goto LABEL_123;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMd, _ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMR);
    if (v110 > v109)
    {
      OUTLINED_FUNCTION_59_0(&v383);
      v185 = static _SetStorage.copy(original:)();
      v186 = v109;
      v187 = v185;
      if (v109[2])
      {
        v188 = v185;
        v189 = (v185 + 56);
        v190 = v109 + 7;
        v191 = ((1 << *(v188 + 32)) + 63) >> 6;
        if (v188 != v109 || v189 >= &v109[v191 + 7])
        {
          memmove(v189, v109 + 7, 8 * v191);
          v186 = v352;
          v188 = v187;
        }

        v193 = 0;
        *(v188 + 16) = v186[2];
        v194 = 1 << *(v186 + 32);
        v195 = v186[7];
        v196 = -1;
        if (v194 < 64)
        {
          v196 = ~(-1 << v194);
        }

        v197 = v196 & v195;
        v198 = (v194 + 63) >> 6;
        if ((v196 & v195) == 0)
        {
          goto LABEL_64;
        }

        while (1)
        {
          v199 = __clz(__rbit64(v197));
          v197 &= v197 - 1;
          v200 = v199 | (v193 << 6);
          v201 = v187;
          v202 = v352;
          while (1)
          {
            *(*(v201 + 48) + 8 * v200) = *(v202[6] + 8 * v200);

            if (v197)
            {
              break;
            }

LABEL_64:
            v203 = v193;
            do
            {
              v193 = v203 + 1;
              if (__OFADD__(v203, 1))
              {
                goto LABEL_167;
              }

              if (v193 >= v198)
              {
                goto LABEL_119;
              }

              ++v203;
            }

            while (!v190[v193]);
            OUTLINED_FUNCTION_27_2();
            v197 = v205 & v204;
            v200 = v206 | (v193 << 6);
          }
        }
      }

LABEL_119:

      v108 = v187;
      *v346 = v187;
LABEL_3:
      v111 = v381;
      v112 = a2;
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_59_0(&v383);
    v208 = static _SetStorage.resize(original:capacity:move:)();
    v209 = v109[2];
    v368 = v208;
    if (v209)
    {
      v332 = v109 + 7;
      OUTLINED_FUNCTION_34_2();
      LODWORD(v363) = *MEMORY[0x1E6969360];
      OUTLINED_FUNCTION_10_6();
      v354 = v210;
      LODWORD(v353) = *MEMORY[0x1E6969358];
      OUTLINED_FUNCTION_10_6();
      v348 = v211;
      LODWORD(v347) = *MEMORY[0x1E6969370];
      OUTLINED_FUNCTION_10_6();
      v336 = v212;
      OUTLINED_FUNCTION_7_7(*MEMORY[0x1E6969380]);
      v216 = v364;
      v334 = v215;
      v333 = v217;
      if (!v213)
      {
        goto LABEL_76;
      }

      while (1)
      {
        v218 = __clz(__rbit64(v213));
        for (i = (v213 - 1) & v213; ; i = v222 & v221)
        {
          v372 = v214;
          v223 = *(v109[6] + 8 * (v218 | (v214 << 6)));
          Hasher.init(_seed:)();
          MEMORY[0x1865F6890](*(v223 + 16));
          v224 = *(v223 + 16);
          v373 = v223;
          if (v224)
          {
            v225 = v380;
            OUTLINED_FUNCTION_19_0();
            v227 = v223 + v226;

            v228 = *(v225 + 72);
            v229 = v369;
            v378 = v228;
            while (1)
            {
              outlined init with copy of StorableValue(v227, v229);
              outlined init with copy of StorableValue(v229, v84);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  if (v84[8])
                  {
                    v382 = *v84;
                    LOBYTE(v383) = 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_90:
                    v231 = Optional<A>.hashValue.getter();
                  }

                  else
                  {
                    v261 = OUTLINED_FUNCTION_7_5(*v84);
                    if (!(v174 ^ v114 | v173))
                    {
                      goto LABEL_177;
                    }

                    if (v261 <= -9.22337204e18)
                    {
                      goto LABEL_178;
                    }

                    OUTLINED_FUNCTION_45_1();
                    if (!v174)
                    {
                      goto LABEL_179;
                    }

                    Int.hashValue.getter();
                    v231 = Int.hashValue.getter();
                  }

LABEL_103:
                  MEMORY[0x1865F6890](v231);
LABEL_104:
                  outlined destroy of StorableValue(v229);
LABEL_105:
                  v227 += v228;
                  if (!--v224)
                  {
                    goto LABEL_108;
                  }

                  break;
                case 2u:
                  v232 = v355;
                  _s10Foundation4UUIDVSgWObTm_1(v84, v355, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v233 = v232;
                  v229 = v351;
                  outlined init with copy of Date?(v233, v351);
                  v375 = type metadata accessor for Date();
                  if (__swift_getEnumTagSinglePayload(v229, 1, v375) == 1)
                  {
                    _s10Foundation4UUIDVSgWOhTm_1(v229, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0();
                    v245 = v216;
                    OUTLINED_FUNCTION_21_3();
                    v246();
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_20_5();
                    v247();
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_18_4();
                    v248();
                    OUTLINED_FUNCTION_16_0();
                    OUTLINED_FUNCTION_19_5();
                    v249();
                    v250 = v339;
                    TimeZone.init(secondsFromGMT:)();
                    v251 = v361;
                    if (__swift_getEnumTagSinglePayload(v250, 1, v361) == 1)
                    {
                      goto LABEL_182;
                    }

                    OUTLINED_FUNCTION_16_0();
                    v252(v338, v250, v251);
                    v216 = v245;
                    Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
                    v253 = v351;
                    v254 = Date.ISO8601Format(_:)();
                    v256 = v255;
                    OUTLINED_FUNCTION_16_0();
                    v257 = OUTLINED_FUNCTION_26_4();
                    v258(v257);
                    OUTLINED_FUNCTION_28();
                    (*(v259 + 8))(v253);
                    *&v229 = COERCE_DOUBLE(MEMORY[0x1865F62C0](v254, v256));

                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865F6890](v229);
                  }

                  _s10Foundation4UUIDVSgWOhTm_1(v355, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v260 = OUTLINED_FUNCTION_59_0(&v384);
                  outlined destroy of StorableValue(v260);
                  v228 = v378;
                  goto LABEL_105;
                case 3u:
                case 4u:
                  v229 = *(v84 + 1);
                  v382 = *v84;
                  v383 = *&v229;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v230 = Optional<A>.hashValue.getter();
                  OUTLINED_FUNCTION_24_3();

                  v231 = v230;
                  v216 = v364;
                  goto LABEL_103;
                case 5u:
                  v229 = *v84;
                  v235 = *(v84 + 1);
                  v382 = *v84;
                  v383 = *&v235;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                  lazy protocol witness table accessor for type Data and conformance Data();
                  v236 = Optional<A>.hashValue.getter();
                  MEMORY[0x1865F6890](v236);
                  v237 = OUTLINED_FUNCTION_24_3();
                  v238 = v235;
                  v216 = v364;
                  outlined consume of Data?(v237, v238);
                  goto LABEL_104;
                case 6u:
                  OUTLINED_FUNCTION_22_4();
                  _s10Foundation4UUIDVSgWObTm_1(v239, v240, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  OUTLINED_FUNCTION_3_14();
                  v242 = lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(&lazy protocol witness table cache variable for type UUID and conformance UUID, v241, MEMORY[0x1E69695B8]);
                  v243 = OUTLINED_FUNCTION_14_3(v242);
                  MEMORY[0x1865F6890](v243);
                  v244 = OUTLINED_FUNCTION_24_3();
                  v228 = v378;
                  _s10Foundation4UUIDVSgWOhTm_1(v244, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  goto LABEL_104;
                case 7u:
                  v231 = 0;
                  goto LABEL_103;
                default:
                  v234 = v84[8];
                  v382 = *v84;
                  LOBYTE(v383) = v234;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                  goto LABEL_90;
              }
            }
          }

LABEL_108:
          Hasher._finalize()();
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_37_1();
          if (v173)
          {
            OUTLINED_FUNCTION_31_4();
            v109 = *(v270 - 256);
            v215 = v334;
            v266 = v373;
            do
            {
              if (++v267 == v269 && (v268 & 1) != 0)
              {
                goto LABEL_169;
              }

              v271 = v267 == v269;
              if (v267 == v269)
              {
                v267 = 0;
              }

              v268 |= v271;
              v272 = *(v264 + 8 * v267);
            }

            while (v272 == -1);
            v262 = __clz(__rbit64(~v272)) + (v267 << 6);
          }

          else
          {
            OUTLINED_FUNCTION_32_3();
            v109 = *(v265 - 256);
            v215 = v334;
            v266 = v373;
          }

          *(v264 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v262;
          *(*(v263 + 48) + 8 * v262) = v266;
          ++*(v263 + 16);
          v214 = v372;
          v213 = i;
          if (i)
          {
            break;
          }

LABEL_76:
          v219 = v214;
          do
          {
            v220 = v219 + 1;
            if (__OFADD__(v219, 1))
            {
              goto LABEL_168;
            }

            if (v220 >= v215)
            {
              goto LABEL_120;
            }

            ++v219;
          }

          while (!v332[v220]);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

LABEL_120:

  v273 = v346;
LABEL_123:
  *v273 = v368;
  Hasher.init(_seed:)();
  v274 = v381;
  v275 = v381[2];
  MEMORY[0x1865F6890](v275);
  v276 = v274[2];
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_30_4();
  v277 = v370;
  if (v276)
  {
    OUTLINED_FUNCTION_19_0();
    v279 = v381 + v278;
    OUTLINED_FUNCTION_10_6();
    v374 = v280;
    v378 = *(v281 + 72);
    OUTLINED_FUNCTION_10_6();
    v373 = v282;
    OUTLINED_FUNCTION_10_6();
    v372 = v283;
    LODWORD(v369) = *MEMORY[0x1E6969360];
    OUTLINED_FUNCTION_10_6();
    i = v284;
    v354 = v345 + 32;
    LODWORD(v364) = *MEMORY[0x1E6969358];
    LODWORD(v363) = *MEMORY[0x1E6969370];
    v353 = v340 + 8;
    LODWORD(v355) = *MEMORY[0x1E6969380];
    v285 = &_s10Foundation4DateVSgMR;
    while (1)
    {
      v286 = v377;
      outlined init with copy of StorableValue(v279, v377);
      outlined init with copy of StorableValue(v286, v376);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (v376[1])
          {
            v382 = *v376;
            LOBYTE(v383) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_132:
            v288 = Optional<A>.hashValue.getter();
          }

          else
          {
            v318 = OUTLINED_FUNCTION_7_5(*v376);
            if (!(v174 ^ v114 | v173))
            {
              goto LABEL_174;
            }

            if (v318 <= -9.22337204e18)
            {
              goto LABEL_175;
            }

            OUTLINED_FUNCTION_45_1();
            if (!v174)
            {
              goto LABEL_176;
            }

            Int.hashValue.getter();
            v288 = Int.hashValue.getter();
          }

LABEL_145:
          MEMORY[0x1865F6890](v288);
          OUTLINED_FUNCTION_30_4();
LABEL_146:
          outlined destroy of StorableValue(v377);
LABEL_147:
          v279 += v378;
          if (!--v276)
          {
            goto LABEL_148;
          }

          break;
        case 2u:
          v289 = v362;
          v290 = v285;
          _s10Foundation4UUIDVSgWObTm_1(v376, v362, &_s10Foundation4DateVSgMd, v285);
          outlined init with copy of Date?(v289, *&v277);
          v291 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(*&v277, 1, v291) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_1(*&v277, &_s10Foundation4DateVSgMd, v285);
            Hasher._combine(_:)(0);
          }

          else
          {
            v375 = v291;
            OUTLINED_FUNCTION_21_3();
            v302();
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_20_5();
            v303();
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_18_4();
            v304();
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_19_5();
            v305();
            v306 = v371;
            TimeZone.init(secondsFromGMT:)();
            v307 = v361;
            if (__swift_getEnumTagSinglePayload(v306, 1, v361) == 1)
            {
              goto LABEL_181;
            }

            OUTLINED_FUNCTION_16_0();
            v308(v335, v306, v307);
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v309 = v370;
            v310 = Date.ISO8601Format(_:)();
            v312 = v311;
            OUTLINED_FUNCTION_16_0();
            v313 = OUTLINED_FUNCTION_26_4();
            v314(v313);
            OUTLINED_FUNCTION_28();
            (*(v315 + 8))(COERCE_DOUBLE(*&v309));
            v316 = MEMORY[0x1865F62C0](v310, v312);

            Hasher._combine(_:)(1u);
            v317 = v316;
            v277 = v309;
            MEMORY[0x1865F6890](v317);
            v290 = &_s10Foundation4DateVSgMR;
          }

          _s10Foundation4UUIDVSgWOhTm_1(v362, &_s10Foundation4DateVSgMd, v290);
          outlined destroy of StorableValue(v377);
          OUTLINED_FUNCTION_30_4();
          v285 = v290;
          OUTLINED_FUNCTION_36_1();
          goto LABEL_147;
        case 3u:
        case 4u:
          v277 = v376[1];
          v382 = *v376;
          v383 = v277;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v287 = Optional<A>.hashValue.getter();
          OUTLINED_FUNCTION_25_5();
          OUTLINED_FUNCTION_36_1();

          v288 = v287;
          goto LABEL_145;
        case 5u:
          v277 = *v376;
          v293 = *(v376 + 1);
          v382 = *v376;
          v383 = *&v293;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          lazy protocol witness table accessor for type Data and conformance Data();
          v294 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v294);
          OUTLINED_FUNCTION_30_4();
          OUTLINED_FUNCTION_25_5();
          OUTLINED_FUNCTION_36_1();
          outlined consume of Data?(v295, v293);
          goto LABEL_146;
        case 6u:
          OUTLINED_FUNCTION_22_4();
          _s10Foundation4UUIDVSgWObTm_1(v296, v297, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_3_14();
          v299 = lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(&lazy protocol witness table cache variable for type UUID and conformance UUID, v298, MEMORY[0x1E69695B8]);
          v300 = OUTLINED_FUNCTION_14_3(v299);
          MEMORY[0x1865F6890](v300);
          OUTLINED_FUNCTION_30_4();
          v301 = OUTLINED_FUNCTION_25_5();
          _s10Foundation4UUIDVSgWOhTm_1(v301, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          goto LABEL_146;
        case 7u:
          v288 = 0;
          goto LABEL_145;
        default:
          v292 = *(v376 + 8);
          v382 = *v376;
          LOBYTE(v383) = v292;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
          goto LABEL_132;
      }
    }
  }

LABEL_148:
  v319 = Hasher._finalize()();
  v108 = v368;
  v320 = v368 + 56;
  v321 = -1 << *(v368 + 32);
  v112 = v319 & ~v321;
  if (((*(v368 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
  {
    v111 = v381;
    goto LABEL_4;
  }

  v322 = ~v321;
  v111 = v381;
  do
  {
    v323 = *(*(v108 + 48) + 8 * v112);
    if (v323[2] != v275)
    {
      goto LABEL_160;
    }

    v379 = v112;
    if (!v275 || v323 == v111)
    {
      goto LABEL_184;
    }

    OUTLINED_FUNCTION_19_0();
    v325 = v323 + v324;
    v327 = v326 + v324;

    v328 = 0;
    while (1)
    {
      if (v328 >= v323[2])
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:

LABEL_184:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x184920484);
      }

      v329 = *(v380 + 72) * v328;
      outlined init with copy of StorableValue(v325 + v329, v94);
      if (v328 >= v381[2])
      {
        goto LABEL_164;
      }

      outlined init with copy of StorableValue(v327 + v329, v90);
      v330 = static StorableValue.== infix(_:_:)(v94, v90);
      outlined destroy of StorableValue(v90);
      outlined destroy of StorableValue(v94);
      if ((v330 & 1) == 0)
      {
        break;
      }

      if (v275 == ++v328)
      {
        goto LABEL_183;
      }
    }

    v111 = v381;
    v108 = v368;
    v112 = v379;
LABEL_160:
    v112 = (v112 + 1) & v322;
  }

  while (((*(v320 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) != 0);
LABEL_4:
  *(v108 + 8 * (v112 >> 6) + 56) |= 1 << v112;
  *(*(v108 + 48) + 8 * v112) = v111;
  v113 = *(v108 + 16);
  v114 = __OFADD__(v113, 1);
  v115 = v113 + 1;
  if (v114)
  {
    goto LABEL_170;
  }

  *(v108 + 16) = v115;
}

uint64_t static BMPoirotSchematizerShim.bmTypeToPoirotType(type:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xF)
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x1865F6280](0xD000000000000017, 0x8000000184DDC630);
    type metadata accessor for BMProtoDataType();
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_1E6E54838 + a1);
    v4 = type metadata accessor for TypeSchema();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t SQLExpression.expressionString.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t outlined init with take of Aggregation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_dynamicCast();
}

uint64_t outlined init with take of AnyValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AnyValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyValue(uint64_t a1)
{
  v2 = type metadata accessor for AnyValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for SQLExpression(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SQLExpressionEvaluator.evaluatesToTrue(expression:payload:)(uint64_t a1)
{
  v3 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v54 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_2_1();
  v55 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_14();
  v16 = (v14 - v15);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v50 - v23;
  v25 = v56;
  SQLExpressionEvaluator.execute(expression:payload:)(&v50 - v23);
  if (!v25)
  {
    v52 = v10;
    v53 = v9;
    v50 = a1;
    v51 = v16;
    v56 = v21;
    v27 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_184D29DA0;
    v29 = type metadata accessor for StorableValue;
    outlined init with copy of SQLExpressionEvaluatorError();
    outlined init with copy of SQLExpressionEvaluatorError();
    outlined init with copy of SQLExpressionEvaluatorError();
    v30 = SQLExpressionEvaluator.execute(stmt:bindingValues:)(v27, v28);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (v30 && *(v30 + 2) == 1)
    {
      specialized Collection.first.getter(v30, &v57);

      v31 = v56;
      if (v58)
      {
        v32 = v3;
        v33 = v59;

        v34 = v53;
        v35 = v54;
        (*(v54 + 104))(v53, 0, v32);
        v36 = OUTLINED_FUNCTION_81();
        static StorableValue.fromDatabaseValue(_:dataType:)(v36, v37, v33, v34, v38);
        (*(v35 + 8))(v34, v32);
        v40 = OUTLINED_FUNCTION_81();
        outlined consume of DatabaseValue(v40, v41, v33);
        v30 = v51;
        outlined init with copy of SQLExpressionEvaluatorError();
        v29 = v52;
        if (!swift_getEnumCaseMultiPayload())
        {
          outlined destroy of StorableValue(v31);
          outlined destroy of StorableValue(v24);
          v26 = (*v30 > 0) & ~*(v30 + 8);
          return v26 & 1;
        }

LABEL_12:
        outlined destroy of StorableValue(v30);
        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        MEMORY[0x1865F6280](0xD000000000000029, 0x8000000184DDC070);
        v30 = MEMORY[0x1E69E7068];
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](0xD000000000000010, 0x8000000184DDC0A0);
        type metadata accessor for SQLExpression();
        _print_unlocked<A, B>(_:_:)();
        v44 = v57;
        for (i = v58; ; i = v58)
        {
          OUTLINED_FUNCTION_9_2("Fatal error", v42, v43, v44, i, "BiomeStreams/SQLExpressionEvaluator.swift");
          __break(1u);
LABEL_14:
          v46 = String.init(cString:)();
          MEMORY[0x1865F6280](v46);

          MEMORY[0x1865F6280](v29 + 5, 0x8000000184DDC050);
          if (v30)
          {
            v47 = *(v30 + 2);
          }

          else
          {
            v47 = 0;
          }

          v60 = v47;
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = v49;
          MEMORY[0x1865F6280](v48);

          v44 = v57;
        }
      }
    }

    else
    {
      v29 = 0xD000000000000010;
      v57 = 0;
      v58 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x1865F6280](0xD000000000000025, 0x8000000184DDC020);
      if (sqlite3_sql(v27))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return v26 & 1;
}

id __BMEventTimestampSQLColumn_block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:(*(*(a1 + 32) + 16))()];

  return v1;
}

NSString *__BMEventClassNameSQLColumn_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataType];

  return NSStringFromClass(v2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void static KeyedAggregationMetadataCache.columnNames(groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_24_4();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  OUTLINED_FUNCTION_2_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_51();
  v64 = v16;
  v17 = *(v5 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v61 = v3;
    v69 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_114();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v20, v21);
    OUTLINED_FUNCTION_19_0();
    v23 = v5 + v22;
    v63 = *(v11 + 72);
    do
    {
      outlined init with copy of Date?(v23, v64, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      outlined init with take of UUID?(v64, v1, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v24 = *v1;
      v25 = *(v1 + 1);
      v26 = *(v66 + 48);
      type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_5_7();
      (*(v27 + 8))(&v1[v26]);
      v29 = *(v69 + 16);
      v28 = *(v69 + 24);
      if (v29 >= v28 >> 1)
      {
        v31 = OUTLINED_FUNCTION_4_9(v28);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31, v29 + 1, 1);
      }

      *(v69 + 16) = v29 + 1;
      v30 = v69 + 16 * v29;
      *(v30 + 32) = v24;
      *(v30 + 40) = v25;
      v23 += v63;
      --v17;
    }

    while (v17);
    v18 = MEMORY[0x1E69E7CC0];
    v3 = v61;
  }

  v32 = 0;
  v60 = v3 + 32;
  v62 = *(v3 + 16);
  v33 = v18;
  while (1)
  {
    if (v32 == v62)
    {
      goto LABEL_27;
    }

    v34 = *(v60 + 8 * v32);
    v35 = *(v34 + 16);
    if (v35)
    {
      v65 = v33;
      v67 = v32;

      v36 = OUTLINED_FUNCTION_92_2();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36, v35, 0);
      v37 = v18;
      OUTLINED_FUNCTION_12_6();
      v39 = v34 + v38;
      v41 = *(v40 + 72);
      do
      {
        v42 = OUTLINED_FUNCTION_64_2();
        outlined init with copy of Date?(v42, v43, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v44 = OUTLINED_FUNCTION_20();
        outlined init with take of UUID?(v44, v45, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);

        v46 = *(v0 + 16);
        v47 = *(v0 + 24);
        v48 = *(v68 + 64);
        type metadata accessor for SQLDataType();
        OUTLINED_FUNCTION_5_7();
        (*(v49 + 8))(v0 + v48);
        v51 = *(v37 + 16);
        v50 = *(v37 + 24);
        if (v51 >= v50 >> 1)
        {
          v53 = OUTLINED_FUNCTION_4_9(v50);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v51 + 1, 1);
        }

        *(v37 + 16) = v51 + 1;
        v52 = v37 + 16 * v51;
        *(v52 + 32) = v46;
        *(v52 + 40) = v47;
        v39 += v41;
        --v35;
      }

      while (v35);

      v18 = MEMORY[0x1E69E7CC0];
      v33 = v65;
      v32 = v67;
    }

    else
    {
      v37 = v18;
    }

    v54 = *(v37 + 16);
    v55 = *(v33 + 16);
    if (__OFADD__(v55, v54))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v55 + v54 > *(v33 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v56;
    }

    ++v32;
    if (*(v37 + 16))
    {
      if ((*(v33 + 24) >> 1) - *(v33 + 16) < v54)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      if (v54)
      {
        v57 = *(v33 + 16);
        v58 = __OFADD__(v57, v54);
        v59 = v57 + v54;
        if (v58)
        {
          goto LABEL_30;
        }

        *(v33 + 16) = v59;
      }
    }

    else
    {

      if (v54)
      {
        __break(1u);
LABEL_27:
        specialized Array.append<A>(contentsOf:)(v33);
        OUTLINED_FUNCTION_169();
        return;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v181 = a5;
  v185 = a4;
  v186 = a2;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v190 = *(v191 - 8);
  v8 = MEMORY[0x1EEE9AC00](v191, v7);
  v184 = (&v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v195 = (&v180 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v194 = &v180 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v189 = &v180 - v17;
  v18 = type metadata accessor for StorableValue(0);
  v208 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v182 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v183 = &v180 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v193 = &v180 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v188 = &v180 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v192 = &v180 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v212 = &v180 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v187 = &v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v180 - v41;
  j = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v197 = *(j - 8);
  v44 = MEMORY[0x1EEE9AC00](j, v43);
  v205 = &v180 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v46);
  v213 = (&v180 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  MEMORY[0x1EEE9AC00](v48, v49);
  v196 = (&v180 - v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v55 = &v180 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v56);
  v58 = (&v180 - v57);
  v207 = v18;
  v59 = Dictionary.init(dictionaryLiteral:)();
  v204 = a1;
  v60 = *(a1 + 16);
  v198 = a3;
  v61 = *(a3 + 16);
  if (v60 == v61)
  {
    v62 = 0;
    v202 = v42;
    v203 = v60;
    v200 = v55;
    v201 = v48;
    for (i = v58; ; v58 = i)
    {
      if (v62 == v60)
      {
        v63 = 1;
      }

      else
      {
        if (v62 >= v60)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v18 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_60;
        }

        v64 = v196;
        v65 = v198 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v62;
        v66 = *(v48 + 48);
        *v196 = v62;
        outlined init with copy of Date?(v65, v64 + v66, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        outlined init with take of UUID?(v64, v55, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
        v63 = 0;
        v60 = v62 + 1;
      }

      __swift_storeEnumTagSinglePayload(v55, v63, 1, v48);
      outlined init with take of UUID?(v55, v58, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
      if (__swift_getEnumTagSinglePayload(v58, 1, v48) == 1)
      {
        break;
      }

      v209 = v60;
      v210 = v59;
      v67 = *v58;
      isUniquelyReferenced_nonNull_native = (v58 + *(v48 + 48));
      v69 = *isUniquelyReferenced_nonNull_native;
      *&v211 = isUniquelyReferenced_nonNull_native[1];
      v70 = j;
      v71 = *(j + 48);
      v72 = type metadata accessor for SQLDataType();
      v73 = *(v72[-1].Description + 4);
      v74 = v205;
      v73(&v205[v71], isUniquelyReferenced_nonNull_native + v71, v72);
      v75 = *(v70 + 48);
      v76 = v213;
      v77 = v69;
      *v213 = v69;
      v78 = v211;
      *(v76 + 1) = v211;
      v73(v76 + v75, (v74 + v71), v72);
      v60 = v203;
      if (v67 >= v203)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:

        type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
        swift_allocError();
        *v165 = isUniquelyReferenced_nonNull_native;
        v165[1] = v74;
        goto LABEL_41;
      }

      v79 = *(v208 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(v204 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + v79 * v67, v212);
      v80 = v210;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v214 = v80;
      v74 = v77;
      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v78);
      v83 = *(v80 + 16);
      v84 = (v82 & 1) == 0;
      v85 = v83 + v84;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_57;
      }

      v18 = v81;
      v86 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v85))
      {
        v87 = v74;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v78);
        v62 = v209;
        if ((v86 & 1) != (v89 & 1))
        {
          goto LABEL_82;
        }

        v18 = v88;
      }

      else
      {
        v87 = v74;
        v62 = v209;
      }

      v59 = v214;
      if (v86)
      {
        v90 = v18 * v79;
        v18 = type metadata accessor for StorableValue;
        v91 = v202;
        _s12BiomeStreams13StorableValueOWObTm_1(*(v214 + 56) + v90, v202);
        _s12BiomeStreams13StorableValueOWObTm_1(v212, *(v59 + 56) + v90);
        __swift_storeEnumTagSinglePayload(v91, 0, 1, v207);
      }

      else
      {
        *(v214 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        v92 = (*(v59 + 48) + 16 * v18);
        *v92 = v87;
        v92[1] = v78;
        _s12BiomeStreams13StorableValueOWObTm_1(v212, *(v59 + 56) + v18 * v79);
        v93 = *(v59 + 16);
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (v94)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        *(v59 + 16) = v95;
        v91 = v202;
        __swift_storeEnumTagSinglePayload(v202, 1, 1, v207);
      }

      outlined destroy of (columnName: String, dataType: SQLDataType)(v91, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      outlined destroy of (columnName: String, dataType: SQLDataType)(v213, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v55 = v200;
      v48 = v201;
    }

    v97 = *(v186 + 16);
    v98 = *(v185 + 16);
    if (v97 != v98)
    {
      v145 = *(v186 + 16);

      type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
      swift_allocError();
      *v146 = v98;
      v146[1] = v145;
      goto LABEL_41;
    }

    v99 = 0;
    v100 = v185 + 32;
    v101 = v186 + 32;
    v201 = v185 + 32;
    v202 = v97;
    v200 = (v186 + 32);
LABEL_23:
    if (v99 != v97)
    {
      v102 = *(v100 + 8 * v99);
      v205 = v99 + 1;
      v103 = *(v101 + 8 * v99);
      v210 = *(v102 + 16);

      v209 = v103;

      v104 = 0;
      for (j = v102; ; v102 = j)
      {
        if (v210 == v104)
        {

          v99 = v205;
          v100 = v201;
          v97 = v202;
          v101 = v200;
          goto LABEL_23;
        }

        if (v104 >= *(v102 + 16))
        {
          goto LABEL_72;
        }

        v105 = v189;
        outlined init with copy of Date?(v102 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v104, v189, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v106 = *(v105 + 1);
        v108 = *(v105 + 2);
        v107 = *(v105 + 3);
        v109 = v191;
        v110 = *(v191 + 64);
        v111 = v194;
        *v194 = *v105;
        *(v111 + 1) = v106;
        v212 = v108;
        v213 = v107;
        *(v111 + 2) = v108;
        *(v111 + 3) = v107;
        v112 = type metadata accessor for SQLDataType();
        Description = v112[-1].Description;
        Description[4](&v111[v110], &v105[v110], v112);
        v114 = v195;
        outlined init with copy of Date?(v111, v195, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v116 = *v114;
        v115 = v114[1];

        v117 = *(v109 + 64);
        v118 = v209;
        if (!*(v209 + 16))
        {

LABEL_43:

          v213 = Description[1];
          (v213)(v195 + v117, v112);
          v212 = type metadata accessor for MetadataSQLError(0);
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
          swift_allocError();
          v149 = v148;
          v150 = v194;
          v151 = v184;
          outlined init with copy of Date?(v194, v184, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v152 = *v151;
          v153 = v151[1];

          v154 = *(v191 + 64);
          *v149 = v152;
          v149[1] = v153;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (v213)(v151 + v154, v112);
          return outlined destroy of (columnName: String, dataType: SQLDataType)(v150, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        }

        *&v211 = v104;
        v119 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v115);
        v121 = v120;

        if ((v121 & 1) == 0)
        {
          goto LABEL_43;
        }

        v122 = *(v208 + 72);
        v123 = *(v118 + 56) + v122 * v119;
        v124 = v188;
        _s12BiomeStreams13StorableValueOWOcTm_0(v123, v188);
        v125 = v124;
        v126 = v192;
        _s12BiomeStreams13StorableValueOWObTm_1(v125, v192);
        (Description[1])(v195 + v117, v112);
        _s12BiomeStreams13StorableValueOWOcTm_0(v126, v193);
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v214 = v59;
        v129 = v212;
        v128 = v213;
        v130 = specialized __RawDictionaryStorage.find<A>(_:)(v212, v213);
        v132 = *(v59 + 16);
        v133 = (v131 & 1) == 0;
        v134 = v132 + v133;
        if (__OFADD__(v132, v133))
        {
          goto LABEL_73;
        }

        v135 = v130;
        v136 = v131;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v127, v134))
        {
          v137 = specialized __RawDictionaryStorage.find<A>(_:)(v129, v128);
          v139 = v187;
          v140 = v211;
          if ((v136 & 1) != (v138 & 1))
          {
            goto LABEL_82;
          }

          v135 = v137;
        }

        else
        {
          v139 = v187;
          v140 = v211;
        }

        v59 = v214;
        if (v136)
        {
          _s12BiomeStreams13StorableValueOWObTm_1(*(v214 + 56) + v135 * v122, v139);
          _s12BiomeStreams13StorableValueOWObTm_1(v193, *(v59 + 56) + v135 * v122);
          _s12BiomeStreams13StorableValueOWOhTm_1();
          v141 = 0;
        }

        else
        {
          *(v214 + 8 * (v135 >> 6) + 64) |= 1 << v135;
          v142 = (*(v59 + 48) + 16 * v135);
          *v142 = v129;
          v142[1] = v128;
          _s12BiomeStreams13StorableValueOWObTm_1(v193, *(v59 + 56) + v135 * v122);

          _s12BiomeStreams13StorableValueOWOhTm_1();
          v143 = *(v59 + 16);
          v94 = __OFADD__(v143, 1);
          v144 = v143 + 1;
          if (v94)
          {
            __break(1u);
            goto LABEL_77;
          }

          *(v59 + 16) = v144;
          v141 = 1;
        }

        __swift_storeEnumTagSinglePayload(v139, v141, 1, v207);
        outlined destroy of (columnName: String, dataType: SQLDataType)(v139, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        outlined destroy of (columnName: String, dataType: SQLDataType)(v194, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v104 = v140 + 1;
      }
    }

    v155 = *(v181 + 16);
    v156 = (v181 + 40);
    v18 = MEMORY[0x1E69E7CC0];
    if (v155)
    {
      do
      {
        isUniquelyReferenced_nonNull_native = *(v156 - 1);
        v74 = *v156;
        v157 = *(v59 + 16);

        if (!v157)
        {
          goto LABEL_58;
        }

        v158 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v74);
        if ((v159 & 1) == 0)
        {
          goto LABEL_58;
        }

        v160 = v158;

        if (v160 < 0 || v160 >= 1 << *(v59 + 32))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (((*(v59 + 64 + ((v160 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v160) & 1) == 0)
        {
          goto LABEL_78;
        }

        v161 = *(v208 + 72);
        _s12BiomeStreams13StorableValueOWOcTm_0(*(v59 + 56) + v161 * v160, v183);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v163;
        }

        v162 = *(v18 + 16);
        if (v162 >= *(v18 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v164;
        }

        *(v18 + 16) = v162 + 1;
        _s12BiomeStreams13StorableValueOWObTm_1(v183, v18 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + v162 * v161);
        v156 += 2;
      }

      while (--v155);
    }

LABEL_61:

    v214 = v18;
    v166 = v203;
    if (v203)
    {
      v167 = *(v208 + 80);
      v168 = (v167 + 32) & ~v167;
      v169 = v204 + v168;
      v170 = *(v208 + 72);
      v212 = v168 + 2 * v170;
      v213 = v167;
      v171 = MEMORY[0x1E69E7CC0];
      v211 = xmmword_184D29A90;
      while (1)
      {
        v172 = v182;
        _s12BiomeStreams13StorableValueOWOcTm_0(v169, v182);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
        v173 = swift_allocObject();
        *(v173 + 16) = v211;
        v174 = v173 + v168;
        _s12BiomeStreams13StorableValueOWOcTm_0(v172, v173 + v168);
        _s12BiomeStreams13StorableValueOWObTm_1(v172, v174 + v170);
        v175 = *(v171 + 16);
        if (__OFADD__(v175, 2))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v176 = *(v171 + 24) >> 1, v176 < v175 + 2))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v171 = v177;
          v176 = *(v177 + 24) >> 1;
        }

        if (v176 - *(v171 + 16) < 2)
        {
          goto LABEL_80;
        }

        swift_arrayInitWithCopy();

        v178 = *(v171 + 16);
        v94 = __OFADD__(v178, 2);
        v179 = v178 + 2;
        if (v94)
        {
          goto LABEL_81;
        }

        *(v171 + 16) = v179;
        v169 += v170;
        if (!--v166)
        {
          goto LABEL_75;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
LABEL_74:
      v171 = MEMORY[0x1E69E7CC0];
LABEL_75:
      specialized Array.append<A>(contentsOf:)(v171);
      return v214;
    }
  }

  else
  {

    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
    swift_allocError();
    *v96 = v61;
    v96[1] = v60;
LABEL_41:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for StorableValue);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for AggregationFunction);
}

uint64_t OrderedDictionary.KeyWrapper.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for ChangeRecord(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t static StorableValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v181 = a1;
  v182 = a2;
  v178 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_1();
  v168 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_94(v11 - v10);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_29();
  v177 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_47(v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_9_0();
  v167 = v18;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_30();
  v175 = v21;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_51();
  v179 = v24;
  OUTLINED_FUNCTION_43();
  type metadata accessor for Date.ISO8601FormatStyle();
  OUTLINED_FUNCTION_2_1();
  v173 = v26;
  v174 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  OUTLINED_FUNCTION_13();
  v172 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = OUTLINED_FUNCTION_47(v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_9_0();
  v171 = v33;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_30();
  v169 = v36;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_30();
  v176 = v39;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_51();
  v180 = v42;
  v43 = OUTLINED_FUNCTION_43();
  type metadata accessor for StorableValue(v43);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_67();
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v166 - v49;
  MEMORY[0x1EEE9AC00](v48, v51);
  OUTLINED_FUNCTION_96();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_49();
  v58 = MEMORY[0x1EEE9AC00](v56, v57);
  v60 = &v166 - v59;
  v62 = MEMORY[0x1EEE9AC00](v58, v61);
  v64 = (&v166 - v63);
  MEMORY[0x1EEE9AC00](v62, v65);
  OUTLINED_FUNCTION_95();
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v166 - v68;
  outlined init with copy of StorableValue(v181, &v166 - v68);
  OUTLINED_FUNCTION_104();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v84 = *v69;
      v85 = v69[8];
      outlined init with copy of StorableValue(v182, v64);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        OUTLINED_FUNCTION_1_12();
        v73 = v64;
        goto LABEL_42;
      }

      if (v85)
      {
        if ((v64[1] & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_73;
      }

      if (v64[1])
      {
        goto LABEL_43;
      }

      v83 = vabdd_f64(v84, *v64) < 0.00001;
      return v83 & 1;
    case 2u:
      v78 = v180;
      outlined init with take of UUID?(v69, v180, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of StorableValue(v182, v60);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        outlined destroy of UUID?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_1_12();
        v73 = v60;
        goto LABEL_42;
      }

      v79 = v176;
      outlined init with take of UUID?(v60, v176, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v80 = v169;
      outlined init with copy of Date?(v78, v169, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v81 = type metadata accessor for Date();
      OUTLINED_FUNCTION_92(v80, 1, v81);
      if (v82)
      {
        outlined destroy of UUID?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v116 = 0;
        v118 = 0;
      }

      else
      {
        v115 = v172;
        default argument 0 of Date.ISO8601Format(_:)(v172);
        v116 = Date.ISO8601Format(_:)();
        v118 = v117;
        (*(v173 + 8))(v115, v174);
        OUTLINED_FUNCTION_28();
        (*(v119 + 8))(v80, v81);
      }

      v120 = v171;
      outlined init with copy of Date?(v79, v171, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_92(v120, 1, v81);
      if (v82)
      {
        outlined destroy of UUID?(v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if (v118)
        {
          goto LABEL_68;
        }

        v124 = 0;
      }

      else
      {
        v121 = v172;
        default argument 0 of Date.ISO8601Format(_:)(v172);
        v122 = Date.ISO8601Format(_:)();
        v124 = v123;
        (*(v173 + 8))(v121, v174);
        OUTLINED_FUNCTION_28();
        (*(v125 + 8))(v120, v81);
        if (v118)
        {
          if (v124)
          {
            if (v116 == v122 && v118 == v124)
            {
              v83 = 1;
            }

            else
            {
              OUTLINED_FUNCTION_77();
              OUTLINED_FUNCTION_89();
              v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            OUTLINED_FUNCTION_107(v79);
            v165 = v78;
LABEL_77:
            OUTLINED_FUNCTION_107(v165);
            return v83 & 1;
          }

LABEL_68:

          OUTLINED_FUNCTION_41();
          outlined destroy of UUID?(v141, v142, v143);
          OUTLINED_FUNCTION_41();
          goto LABEL_69;
        }
      }

      outlined destroy of UUID?(v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v144 = OUTLINED_FUNCTION_52();
      outlined destroy of UUID?(v144, v145, &_s10Foundation4DateVSgMR);
      if (v124)
      {
LABEL_72:

LABEL_43:
        v83 = 0;
      }

      else
      {
LABEL_73:
        v83 = 1;
      }

      return v83 & 1;
    case 3u:
      v74 = *v69;
      v75 = *(v69 + 1);
      outlined init with copy of StorableValue(v182, v2);
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        OUTLINED_FUNCTION_1_12();
        v73 = v2;
        goto LABEL_42;
      }

      v76 = v2[1];
      if (!v75)
      {
        goto LABEL_45;
      }

      if (v76)
      {
        v77 = *v2;
        goto LABEL_16;
      }

      goto LABEL_72;
    case 4u:
      v74 = *v69;
      v75 = *(v69 + 1);
      outlined init with copy of StorableValue(v182, v4);
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        OUTLINED_FUNCTION_1_12();
        v73 = v4;
        goto LABEL_42;
      }

      v76 = v4[1];
      if (v75)
      {
        if (!v76)
        {
          goto LABEL_72;
        }

        v77 = *v4;
LABEL_16:
        v82 = v74 == v77 && v75 == v76;
        if (!v82)
        {
          OUTLINED_FUNCTION_81();
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v83 & 1;
        }

        goto LABEL_73;
      }

LABEL_45:
      if (!v76)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    case 5u:
      v86 = *(v69 + 1);
      outlined init with copy of StorableValue(v182, v5);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v112 = OUTLINED_FUNCTION_48();
        outlined consume of Data?(v112, v113);
        OUTLINED_FUNCTION_1_12();
        v73 = v5;
        goto LABEL_42;
      }

      v87 = *(v5 + 8);
      if (v86 >> 60 == 15)
      {
        if (v87 >> 60 == 15)
        {
          v88 = OUTLINED_FUNCTION_48();
          outlined consume of Data?(v88, v89);
          goto LABEL_73;
        }
      }

      else if (v87 >> 60 != 15)
      {
        v146 = OUTLINED_FUNCTION_48();
        outlined copy of Data?(v146, v147);
        v148 = OUTLINED_FUNCTION_70();
        outlined copy of Data?(v148, v149);
        v150 = OUTLINED_FUNCTION_48();
        v83 = MEMORY[0x1865F5B00](v150);
        v151 = OUTLINED_FUNCTION_70();
        outlined consume of Data?(v151, v152);
        v153 = OUTLINED_FUNCTION_70();
        outlined consume of Data?(v153, v154);
        v155 = OUTLINED_FUNCTION_48();
        outlined consume of Data?(v155, v156);
        v157 = OUTLINED_FUNCTION_48();
        outlined consume of Data?(v157, v158);
        return v83 & 1;
      }

      v127 = OUTLINED_FUNCTION_48();
      outlined consume of Data?(v127, v128);
      v129 = OUTLINED_FUNCTION_70();
      outlined consume of Data?(v129, v130);
      goto LABEL_43;
    case 6u:
      v90 = v179;
      outlined init with take of UUID?(v69, v179, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined init with copy of StorableValue(v182, v50);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        outlined destroy of UUID?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_1_12();
        v73 = v50;
        goto LABEL_42;
      }

      v91 = v175;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v92, v93, v94, v95);
      v96 = *(v170 + 48);
      v97 = v177;
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v98, v99, v100, v101);
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v102, v103, v104, v105);
      v106 = v178;
      OUTLINED_FUNCTION_92(v97, 1, v178);
      if (v82)
      {
        v107 = OUTLINED_FUNCTION_39();
        outlined destroy of UUID?(v107, v108, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v109, v110, v111);
        OUTLINED_FUNCTION_92(v97 + v96, 1, v106);
        if (v82)
        {
          outlined destroy of UUID?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          goto LABEL_73;
        }
      }

      else
      {
        v131 = v167;
        outlined init with copy of Date?(v97, v167, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_92(v97 + v96, 1, v106);
        if (!v132)
        {
          v159 = v168;
          v160 = v97 + v96;
          v161 = v166;
          (*(v168 + 32))(v166, v160, v106);
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v162, v163, MEMORY[0x1E69695C8]);
          v83 = dispatch thunk of static Equatable.== infix(_:_:)();
          v164 = *(v159 + 8);
          v164(v161, v106);
          OUTLINED_FUNCTION_107(v91);
          OUTLINED_FUNCTION_107(v90);
          v164(v131, v106);
          v165 = v97;
          goto LABEL_77;
        }

        v133 = OUTLINED_FUNCTION_39();
        outlined destroy of UUID?(v133, v134, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v135, v136, v137);
        (*(v168 + 8))(v131, v106);
      }

      v138 = &_s10Foundation4UUIDVSg_ADtMd;
      v139 = &_s10Foundation4UUIDVSg_ADtMR;
      v140 = v97;
LABEL_69:
      outlined destroy of UUID?(v140, v138, v139);
      goto LABEL_43;
    case 7u:
      outlined init with copy of StorableValue(v182, v6);
      v83 = swift_getEnumCaseMultiPayload() == 7;
      outlined destroy of StorableValue(v6, type metadata accessor for StorableValue);
      return v83 & 1;
    default:
      v70 = *v69;
      v71 = v69[8];
      outlined init with copy of StorableValue(v182, v3);
      OUTLINED_FUNCTION_72();
      if (!swift_getEnumCaseMultiPayload())
      {
        v83 = *(v3 + 8);
        if ((v71 & 1) == 0)
        {
          v83 = (v70 == *v3) & ~v83;
        }

        return v83 & 1;
      }

      OUTLINED_FUNCTION_1_12();
      v73 = v3;
LABEL_42:
      outlined destroy of StorableValue(v73, v72);
      goto LABEL_43;
  }
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v1 - 552) = v0;
  *(v1 - 544) = *(v0 + 40);
  return *(v1 - 160);
}

void OUTLINED_FUNCTION_67_1()
{
  *(v6 - 224) = v5;
  *(v6 - 504) = v0;
  *(v6 - 392) = v4;
  *(v6 - 480) = v2;
  *(v6 - 488) = v3;
  *(v6 - 496) = v1;
}

void OUTLINED_FUNCTION_109_1()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_106_0@<X0>(void *a1@<X8>)
{
  v7 = (v5 + v4);
  v8 = a1[1];
  *v7 = *a1;
  v7[1] = v8;
  v9 = v5 + v4 + *(v1 + 48);
  *v9 = *(v2 + *(v3 + 32));
  *(v9 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_106_1()
{

  return outlined init with copy of Date?(v0, v1);
}

uint64_t StorableValue.hash(into:)(uint64_t a1)
{
  v50[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_68();
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  OUTLINED_FUNCTION_2_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v50 - v19;
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13();
  v25 = v24 - v23;
  outlined init with copy of StorableValue(v1, v24 - v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (*(v25 + 8))
      {
        v51 = *v25;
        LOBYTE(v52) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
        goto LABEL_9;
      }

      static StorableValue.hashForDouble(double:)(*v25);
      v28 = Int.hashValue.getter();
      return MEMORY[0x1865F6890](v28);
    case 2u:
      outlined init with take of UUID?(v25, v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of Date?(v20, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v29 = type metadata accessor for Date();
      OUTLINED_FUNCTION_92(v3, 1, v29);
      if (v30)
      {
        outlined destroy of UUID?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        Hasher._combine(_:)(0);
      }

      else
      {
        default argument 0 of Date.ISO8601Format(_:)(v13);
        v44 = Date.ISO8601Format(_:)();
        v46 = v45;
        (*(v8 + 8))(v13, v6);
        OUTLINED_FUNCTION_28();
        v47 = OUTLINED_FUNCTION_86();
        v48(v47);
        v49 = MEMORY[0x1865F62C0](v44, v46);

        Hasher._combine(_:)(1u);
        MEMORY[0x1865F6890](v49);
      }

      v42 = &_s10Foundation4DateVSgMd;
      v43 = &_s10Foundation4DateVSgMR;
      v41 = v20;
      return outlined destroy of UUID?(v41, v42, v43);
    case 3u:
    case 4u:
      v26 = *(v25 + 8);
      v51 = *v25;
      v52 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v27 = Optional<A>.hashValue.getter();

      v28 = v27;
      return MEMORY[0x1865F6890](v28);
    case 5u:
      v33 = *(v25 + 8);
      v51 = *v25;
      v32 = *&v51;
      v52 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      v34 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v34);
      return outlined consume of Data?(v32, v33);
    case 6u:
      v36 = OUTLINED_FUNCTION_73();
      outlined init with take of UUID?(v36, v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_7_1();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v38, v39, MEMORY[0x1E69695B8]);
      v40 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v40);
      v41 = v2;
      v42 = &_s10Foundation4UUIDVSgMd;
      v43 = &_s10Foundation4UUIDVSgMR;
      return outlined destroy of UUID?(v41, v42, v43);
    case 7u:
      v28 = 0;
      return MEMORY[0x1865F6890](v28);
    default:
      v31 = *(v25 + 8);
      v51 = *v25;
      LOBYTE(v52) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
LABEL_9:
      v28 = Optional<A>.hashValue.getter();
      return MEMORY[0x1865F6890](v28);
  }
}

uint64_t static StorableValue.hashForDouble(double:)(double a1)
{
  v1 = floor(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return Int.hashValue.getter();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_98_2();
  specialized __RawDictionaryStorage.find<A>(_:)(a4, v11, v12, v13, v14, v15, v16, v17, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, vars0, vars8);
  v19 = v18;
  OUTLINED_FUNCTION_15_3();
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v20;
  OUTLINED_FUNCTION_138_0();
  if (v30 == v31)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMR);
    _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native, v24, v25, v26, v27, v28, v29, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, vars0a, vars8a);
  specialized __RawDictionaryStorage.find<A>(_:)(a4, v32, v33, v34, v35, v36, v37, v38, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, vars0b, vars8b);
  if ((v5 & 1) != (v40 & 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v39;
LABEL_7:
  if (v5)
  {
    v41 = (v51[7] + 24 * v19);
    result = *v41;
    *v41 = a1 & 1;
    *(v41 + 1) = a2;
    v41[16] = a3 & 1;
  }

  else
  {
    v43 = OUTLINED_FUNCTION_68_1();
    specialized _NativeDictionary._insert(at:key:value:)(v43, v44, v45, a2, v46, v51);

    result = 0;
  }

  *v4 = v51;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3 & 1;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void *_s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a5;
  v166 = a4;
  v167 = a2;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v171 = *(v172 - 8);
  v8 = MEMORY[0x1EEE9AC00](v172, v7);
  v165 = (&v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v176 = (&v162 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v175 = &v162 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v170 = &v162 - v17;
  v18 = type metadata accessor for StorableValue(0);
  v189 = *(v18 - 1);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v164 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v174 = &v162 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v169 = &v162 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v173 = &v162 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v193 = &v162 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v168 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v162 - v38;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v178 = *(i - 8);
  v41 = MEMORY[0x1EEE9AC00](i, v40);
  v186 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v43);
  v194 = (&v162 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  MEMORY[0x1EEE9AC00](v45, v46);
  v177 = (&v162 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v52 = &v162 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v53);
  v55 = (&v162 - v54);
  v188 = v18;
  v56 = Dictionary.init(dictionaryLiteral:)();
  v185 = a1;
  v57 = *(a1 + 2);
  v179 = a3;
  v58 = *(a3 + 16);
  if (v57 != v58)
  {

    v18 = type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
    swift_allocError();
    *v93 = v58;
    v93[1] = v57;
LABEL_40:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v18;
  }

  v59 = 0;
  v182 = v45;
  v183 = v39;
  v184 = v57;
  v180 = v55;
  v181 = v52;
  while (1)
  {
    if (v59 == v57)
    {
      v60 = 1;
      v18 = v57;
    }

    else
    {
      if (v59 >= v57)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v18 = (v59 + 1);
      if (__OFADD__(v59, 1))
      {
        goto LABEL_60;
      }

      v61 = v177;
      v62 = v179 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v59;
      v63 = *(v45 + 48);
      *v177 = v59;
      outlined init with copy of Date?(v62, v61 + v63, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      outlined init with take of UUID?(v61, v52, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
      v60 = 0;
    }

    __swift_storeEnumTagSinglePayload(v52, v60, 1, v45);
    outlined init with take of UUID?(v52, v55, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v55, 1, v45) == 1)
    {
      v94 = *(v167 + 16);
      v95 = *(v166 + 16);
      if (v94 != v95)
      {
        v142 = *(v167 + 16);

        v18 = type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
        swift_allocError();
        *v143 = v95;
        v143[1] = v142;
        goto LABEL_40;
      }

      v96 = 0;
      v97 = v166 + 32;
      v98 = v167 + 32;
      v184 = v166 + 32;
      v185 = v94;
      v183 = (v167 + 32);
LABEL_22:
      if (v96 != v94)
      {
        v99 = *(v97 + 8 * v96);
        v186 = v96 + 1;
        v100 = *(v98 + 8 * v96);
        v191 = *(v99 + 16);

        v190 = v100;

        v101 = 0;
        for (i = v99; ; v99 = i)
        {
          if (v191 == v101)
          {

            v94 = v185;
            v96 = v186;
            v98 = v183;
            v97 = v184;
            goto LABEL_22;
          }

          if (v101 >= *(v99 + 16))
          {
            goto LABEL_63;
          }

          v102 = v170;
          outlined init with copy of Date?(v99 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v101, v170, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v103 = *(v102 + 1);
          v105 = *(v102 + 2);
          v104 = *(v102 + 3);
          v106 = v172;
          v107 = *(v172 + 64);
          v108 = v175;
          *v175 = *v102;
          *(v108 + 1) = v103;
          v193 = v105;
          v194 = v104;
          *(v108 + 2) = v105;
          *(v108 + 3) = v104;
          v109 = type metadata accessor for SQLDataType();
          Description = v109[-1].Description;
          Description[4](&v108[v107], &v102[v107], v109);
          v111 = v176;
          outlined init with copy of Date?(v108, v176, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v113 = *v111;
          v112 = v111[1];

          v114 = *(v106 + 64);
          v115 = v190;
          if (!v190[2])
          {
            break;
          }

          v192 = v101;
          v116 = specialized __RawDictionaryStorage.find<A>(_:)(v113, v112);
          v118 = v117;

          if ((v118 & 1) == 0)
          {
            goto LABEL_42;
          }

          v119 = *(v189 + 72);
          v120 = v115[7] + v119 * v116;
          v121 = v169;
          _s12BiomeStreams13StorableValueOWOcTm_0(v120, v169);
          v122 = v121;
          v123 = v173;
          _s12BiomeStreams13StorableValueOWObTm_1(v122, v173);
          (Description[1])(v176 + v114, v109);
          _s12BiomeStreams13StorableValueOWOcTm_0(v123, v174);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v195 = v56;
          v126 = v193;
          v125 = v194;
          v127 = specialized __RawDictionaryStorage.find<A>(_:)(v193, v194);
          v129 = *(v56 + 16);
          v130 = (v128 & 1) == 0;
          v131 = v129 + v130;
          if (__OFADD__(v129, v130))
          {
            goto LABEL_64;
          }

          v132 = v127;
          v133 = v128;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v131))
          {
            v134 = specialized __RawDictionaryStorage.find<A>(_:)(v126, v125);
            v136 = v192;
            if ((v133 & 1) != (v135 & 1))
            {
              goto LABEL_68;
            }

            v132 = v134;
          }

          else
          {
            v136 = v192;
          }

          v56 = v195;
          if (v133)
          {
            v137 = v168;
            _s12BiomeStreams13StorableValueOWObTm_1(*(v195 + 56) + v132 * v119, v168);
            _s12BiomeStreams13StorableValueOWObTm_1(v174, *(v56 + 56) + v132 * v119);
            _s12BiomeStreams13StorableValueOWOhTm_1();
            v138 = 0;
          }

          else
          {
            *(v195 + 8 * (v132 >> 6) + 64) |= 1 << v132;
            v139 = (*(v56 + 48) + 16 * v132);
            *v139 = v126;
            v139[1] = v125;
            _s12BiomeStreams13StorableValueOWObTm_1(v174, *(v56 + 56) + v132 * v119);

            _s12BiomeStreams13StorableValueOWOhTm_1();
            v140 = *(v56 + 16);
            v91 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v91)
            {
              goto LABEL_65;
            }

            *(v56 + 16) = v141;
            v138 = 1;
            v137 = v168;
          }

          __swift_storeEnumTagSinglePayload(v137, v138, 1, v188);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v137, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v175, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v101 = v136 + 1;
        }

LABEL_42:

        v194 = Description[1];
        (v194)(v176 + v114, v109);
        v193 = type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
        swift_allocError();
        v145 = v144;
        v18 = v175;
        v146 = v165;
        outlined init with copy of Date?(v175, v165, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v147 = *v146;
        v148 = v146[1];

        v149 = *(v172 + 64);
        *v145 = v147;
        v145[1] = v148;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (v194)(v146 + v149, v109);
        outlined destroy of (columnName: String, dataType: SQLDataType)(v18, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        return v18;
      }

      v151 = *(v163 + 16);
      v152 = (v163 + 40);
      v18 = MEMORY[0x1E69E7CC0];
      if (v151)
      {
        do
        {
          v64 = *(v152 - 1);
          v57 = *v152;
          v153 = *(v56 + 16);

          if (!v153)
          {
            goto LABEL_58;
          }

          v154 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v57);
          if ((v155 & 1) == 0)
          {
            goto LABEL_58;
          }

          v156 = v154;

          if (v156 < 0 || v156 >= 1 << *(v56 + 32))
          {
            goto LABEL_66;
          }

          if (((*(v56 + 64 + ((v156 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
          {
            goto LABEL_67;
          }

          v157 = *(v189 + 72);
          _s12BiomeStreams13StorableValueOWOcTm_0(*(v56 + 56) + v157 * v156, v164);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v18 = v159;
          }

          v158 = v18[2];
          if (v158 >= v18[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v18 = v160;
          }

          v18[2] = v158 + 1;
          _s12BiomeStreams13StorableValueOWObTm_1(v164, v18 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + v158 * v157);
          v152 += 2;
        }

        while (--v151);
      }

LABEL_61:

      return v18;
    }

    v190 = v18;
    v191 = v56;
    v64 = *v55;
    v65 = (v55 + *(v45 + 48));
    v66 = *v65;
    v192 = v65[1];
    v67 = i;
    v68 = *(i + 48);
    v69 = type metadata accessor for SQLDataType();
    v70 = *(v69[-1].Description + 4);
    v71 = v186;
    v70(&v186[v68], v65 + v68, v69);
    v72 = *(v67 + 48);
    v73 = v194;
    v74 = v66;
    *v194 = v66;
    v18 = v192;
    *(v73 + 1) = v192;
    v70(v73 + v72, &v71[v68], v69);
    v57 = v184;
    if (v64 >= v184)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      v18 = type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
      swift_allocError();
      *v161 = v64;
      v161[1] = v57;
      goto LABEL_40;
    }

    v75 = *(v189 + 72);
    _s12BiomeStreams13StorableValueOWOcTm_0(&v185[((*(v189 + 80) + 32) & ~*(v189 + 80)) + v75 * v64], v193);
    v76 = v191;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v195 = v76;
    v78 = v74;
    v79 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v18);
    v81 = *(v76 + 16);
    v82 = (v80 & 1) == 0;
    v83 = v81 + v82;
    if (__OFADD__(v81, v82))
    {
      goto LABEL_57;
    }

    v84 = v79;
    v85 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v77, v83))
    {
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v18);
      if ((v85 & 1) != (v87 & 1))
      {
        goto LABEL_68;
      }

      v84 = v86;
    }

    v56 = v195;
    if (v85)
    {
      v18 = type metadata accessor for StorableValue;
      v88 = v183;
      _s12BiomeStreams13StorableValueOWObTm_1(*(v195 + 56) + v84 * v75, v183);
      _s12BiomeStreams13StorableValueOWObTm_1(v193, *(v56 + 56) + v84 * v75);
      __swift_storeEnumTagSinglePayload(v88, 0, 1, v188);
      goto LABEL_18;
    }

    *(v195 + 8 * (v84 >> 6) + 64) |= 1 << v84;
    v89 = (*(v56 + 48) + 16 * v84);
    *v89 = v78;
    v89[1] = v18;
    _s12BiomeStreams13StorableValueOWObTm_1(v193, *(v56 + 56) + v84 * v75);
    v90 = *(v56 + 16);
    v91 = __OFADD__(v90, 1);
    v92 = v90 + 1;
    if (v91)
    {
      break;
    }

    *(v56 + 16) = v92;
    v88 = v183;
    __swift_storeEnumTagSinglePayload(v183, 1, 1, v188);

LABEL_18:
    outlined destroy of (columnName: String, dataType: SQLDataType)(v88, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    outlined destroy of (columnName: String, dataType: SQLDataType)(v194, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v52 = v181;
    v45 = v182;
    v55 = v180;
    v59 = v190;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void static KeyedFirstMatchingRecordCache.columnNames(groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_204();
  v2 = v1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_24_4();
  v9 = *(v2 + 16);
  if (v9)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v10 = OUTLINED_FUNCTION_92_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v9, 0);
    OUTLINED_FUNCTION_19_0();
    v12 = v2 + v11;
    v27 = *(v4 + 72);
    do
    {
      v13 = OUTLINED_FUNCTION_86();
      outlined init with copy of Date?(v13, v14, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v15 = OUTLINED_FUNCTION_20();
      outlined init with take of UUID?(v15, v16, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v18 = *v0;
      v17 = *(v0 + 1);
      v19 = *(v28 + 48);
      type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_5_7();
      (*(v20 + 8))(&v0[v19]);
      v22 = *(v29 + 16);
      v21 = *(v29 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_4_9(v21);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v22 + 1, 1);
      }

      *(v29 + 16) = v22 + 1;
      v23 = v29 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v17;
      v12 += v27;
      --v9;
    }

    while (v9);
  }

  v26 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5Tm(v25);
  specialized Array.append<A>(contentsOf:)(v26);
  OUTLINED_FUNCTION_169();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5Tm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  specialized Sequence._copySequenceContents(initializing:)();
  v4 = v3;
  outlined consume of [String : [String]].Iterator._Variant(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = OUTLINED_FUNCTION_22_2();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_1_18();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v169 = a6;
  v175 = a5;
  v179 = a3;
  v194 = type metadata accessor for SQLDataType();
  Description = v194[-1].Description;
  MEMORY[0x1EEE9AC00](v194, v9);
  v171 = &v168[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v174 = &v168[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v15);
  v178 = &v168[-v16];
  v17 = type metadata accessor for StorableValue(0);
  v193 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v170 = &v168[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v177 = &v168[-v23];
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v173 = &v168[-v26];
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v176 = &v168[-v29];
  MEMORY[0x1EEE9AC00](v28, v30);
  v198 = &v168[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v172 = &v168[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v168[-v37];
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v181 = *(v189 - 8);
  v40 = MEMORY[0x1EEE9AC00](v189, v39);
  v188 = &v168[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40, v42);
  v199 = &v168[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  MEMORY[0x1EEE9AC00](v44, v45);
  v180 = &v168[-v46];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v51 = &v168[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v49, v52);
  v54 = &v168[-v53];
  v192 = v17;
  v55 = Dictionary.init(dictionaryLiteral:)();
  v187 = a1;
  v56 = *(a1 + 16);
  v182 = a4;
  v57 = *(a4 + 16);
  if (v56 == v57)
  {
    v58 = 0;
    v190 = (Description + 32);
    v191 = Description;
    v185 = v44;
    v186 = v38;
    v183 = v54;
    v184 = v51;
    v197 = v56;
    while (1)
    {
      if (v58 == v56)
      {
        v59 = 1;
        v196 = v56;
      }

      else
      {
        if (v58 >= v56)
        {
          goto LABEL_66;
        }

        v60 = (v58 + 1);
        if (__OFADD__(v58, 1))
        {
          goto LABEL_67;
        }

        v61 = v180;
        v62 = v182 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v58;
        v63 = *(v44 + 48);
        *v180 = v58;
        outlined init with copy of Date?(v62, v61 + v63, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        outlined init with take of UUID?(v61, v51, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
        v59 = 0;
        v196 = v60;
      }

      __swift_storeEnumTagSinglePayload(v51, v59, 1, v44);
      outlined init with take of UUID?(v51, v54, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
      if (__swift_getEnumTagSinglePayload(v54, 1, v44) == 1)
      {
        break;
      }

      v195 = v55;
      v64 = *v54;
      v65 = (v54 + *(v44 + 48));
      v66 = *v65;
      v67 = v65[1];
      v68 = v189;
      v69 = *(v189 + 48);
      v70 = *v190;
      v71 = v188;
      v72 = v194;
      (*v190)(&v188[v69], v65 + v69, v194);
      v73 = *(v68 + 48);
      v74 = v199;
      *v199 = v66;
      *(v74 + 8) = v67;
      v70(v74 + v73, &v71[v69], v72);
      if (v64 >= v197)
      {
        goto LABEL_64;
      }

      v75 = *(v193 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(v187 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + v75 * v64, v198);
      v76 = v195;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200 = v76;
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
      v80 = *(v76 + 16);
      v81 = (v79 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_65;
      }

      v83 = v78;
      v84 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v82))
      {
        v85 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
        v56 = v197;
        if ((v84 & 1) != (v86 & 1))
        {
          goto LABEL_73;
        }

        v83 = v85;
      }

      else
      {
        v56 = v197;
      }

      v55 = v200;
      if (v84)
      {
        v87 = v83 * v75;
        v88 = v186;
        _s12BiomeStreams13StorableValueOWObTm_1(*(v200 + 56) + v87, v186);
        _s12BiomeStreams13StorableValueOWObTm_1(v198, *(v55 + 56) + v87);
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v192);
      }

      else
      {
        *(v200 + 8 * (v83 >> 6) + 64) |= 1 << v83;
        v89 = (*(v55 + 48) + 16 * v83);
        *v89 = v66;
        v89[1] = v67;
        _s12BiomeStreams13StorableValueOWObTm_1(v198, *(v55 + 56) + v83 * v75);
        v90 = *(v55 + 16);
        v91 = __OFADD__(v90, 1);
        v92 = v90 + 1;
        if (v91)
        {
          goto LABEL_68;
        }

        *(v55 + 16) = v92;
        v88 = v186;
        __swift_storeEnumTagSinglePayload(v186, 1, 1, v192);
      }

      outlined destroy of (columnName: String, dataType: SQLDataType)(v88, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      outlined destroy of (columnName: String, dataType: SQLDataType)(v199, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      Description = v191;
      v51 = v184;
      v44 = v185;
      v54 = v183;
      v58 = v196;
    }

    v95 = v179;
    v96 = v175;
    if (*(v179 + 16) != *(v175 + 16))
    {

      v93 = type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
      swift_allocError();
      v151 = *(v95 + 16);
      *v152 = v96[2];
      v152[1] = v151;
      goto LABEL_46;
    }

    v97 = v175 + 64;
    v98 = 1 << *(v175 + 32);
    v99 = -1;
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    v100 = v99 & *(v175 + 64);
    v101 = (v98 + 63) >> 6;
    v189 = (Description + 16);
    v197 = (Description + 8);

    v102 = 0;
    v103 = v178;
    v195 = v101;
    v196 = v96 + 8;
    if (!v100)
    {
LABEL_26:
      while (1)
      {
        v104 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          break;
        }

        if (v104 >= v101)
        {
          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v119 = v174;
          __swift_storeEnumTagSinglePayload(v174, 1, 1, v150);
          v100 = 0;
          goto LABEL_31;
        }

        v100 = *(v97 + 8 * v104);
        ++v102;
        if (v100)
        {
          v102 = v104;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    while (1)
    {
      v104 = v102;
LABEL_30:
      v105 = __clz(__rbit64(v100));
      v100 &= v100 - 1;
      v106 = v105 | (v104 << 6);
      v107 = v96[7];
      v108 = (v96[6] + 16 * v106);
      v109 = v108[1];
      v199 = *v108;
      v110 = v107 + *(Description + 9) * v106;
      v111 = *(Description + 2);
      v112 = Description;
      v113 = v171;
      v114 = v194;
      v111(v171, v110, v194);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v116 = *(v115 + 48);
      v117 = v174;
      *v174 = v199;
      v117[1] = v109;
      v118 = *(v112 + 4);
      v119 = v117;
      v118(v117 + v116, v113, v114);
      __swift_storeEnumTagSinglePayload(v119, 0, 1, v115);

      v103 = v178;
LABEL_31:
      outlined init with take of UUID?(v119, v103, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
      v120 = v103;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      if (__swift_getEnumTagSinglePayload(v120, 1, v121) == 1)
      {
        break;
      }

      v123 = *v120;
      v122 = v120[1];
      v124 = *(v121 + 48);
      if (!*(v179 + 16) || (v125 = specialized __RawDictionaryStorage.find<A>(_:)(v123, v122), (v126 & 1) == 0))
      {

        v93 = type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
        swift_allocError();
        *v154 = v123;
        v154[1] = v122;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v197)(&v124[v178], v194);
        return v93;
      }

      v127 = *(v179 + 56);
      v128 = *(v193 + 72);
      v198 = v124;
      v199 = v128;
      v129 = v173;
      _s12BiomeStreams13StorableValueOWOcTm_0(v127 + v128 * v125, v173);
      v130 = v129;
      v131 = v176;
      _s12BiomeStreams13StorableValueOWObTm_1(v130, v176);
      _s12BiomeStreams13StorableValueOWOcTm_0(v131, v177);
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v200 = v55;
      v133 = v123;
      v134 = v123;
      v135 = v122;
      v136 = specialized __RawDictionaryStorage.find<A>(_:)(v134, v122);
      v138 = *(v55 + 16);
      v139 = (v137 & 1) == 0;
      v140 = v138 + v139;
      if (__OFADD__(v138, v139))
      {
        goto LABEL_69;
      }

      v141 = v136;
      v142 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v132, v140))
      {
        v143 = specialized __RawDictionaryStorage.find<A>(_:)(v133, v135);
        if ((v142 & 1) != (v144 & 1))
        {
          goto LABEL_73;
        }

        v141 = v143;
      }

      v55 = v200;
      if (v142)
      {
        v145 = v141 * v199;
        v146 = v172;
        _s12BiomeStreams13StorableValueOWObTm_1(*(v200 + 56) + v141 * v199, v172);
        _s12BiomeStreams13StorableValueOWObTm_1(v177, *(v55 + 56) + v145);
        __swift_storeEnumTagSinglePayload(v146, 0, 1, v192);
      }

      else
      {
        *(v200 + 8 * (v141 >> 6) + 64) |= 1 << v141;
        v147 = (*(v55 + 48) + 16 * v141);
        *v147 = v133;
        v147[1] = v135;
        _s12BiomeStreams13StorableValueOWObTm_1(v177, *(v55 + 56) + v141 * v199);
        v148 = *(v55 + 16);
        v91 = __OFADD__(v148, 1);
        v149 = v148 + 1;
        if (v91)
        {
          goto LABEL_70;
        }

        *(v55 + 16) = v149;
        v146 = v172;
        __swift_storeEnumTagSinglePayload(v172, 1, 1, v192);
      }

      outlined destroy of (columnName: String, dataType: SQLDataType)(v146, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      _s12BiomeStreams13StorableValueOWOhTm_1();
      v103 = v178;
      (*v197)(&v198[v178], v194);
      v96 = v175;
      Description = v191;
      v101 = v195;
      v97 = v196;
      if (!v100)
      {
        goto LABEL_26;
      }
    }

    v155 = *(v169 + 16);
    v156 = (v169 + 40);
    v93 = MEMORY[0x1E69E7CC0];
    if (!v155)
    {
LABEL_62:

      return v93;
    }

    while (1)
    {
      v158 = *(v156 - 1);
      v157 = *v156;
      v159 = *(v55 + 16);

      if (!v159)
      {
        break;
      }

      v160 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
      if ((v161 & 1) == 0)
      {
        break;
      }

      v162 = v160;

      if (v162 < 0 || v162 >= 1 << *(v55 + 32))
      {
        goto LABEL_71;
      }

      if (((*(v55 + 64 + ((v162 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
      {
        goto LABEL_72;
      }

      v163 = *(v193 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(*(v55 + 56) + v163 * v162, v170);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v93 = v165;
      }

      v164 = *(v93 + 16);
      if (v164 >= *(v93 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v93 = v166;
      }

      *(v93 + 16) = v164 + 1;
      _s12BiomeStreams13StorableValueOWObTm_1(v170, v93 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + v164 * v163);
      v156 += 2;
      if (!--v155)
      {
        goto LABEL_62;
      }
    }

    v93 = type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
    swift_allocError();
    *v167 = v158;
    v167[1] = v157;
  }

  else
  {

    v93 = type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError, &protocol conformance descriptor for MetadataSQLError);
    swift_allocError();
    *v94 = v57;
    v94[1] = v56;
  }

LABEL_46:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v93;
}

uint64_t sub_1849284DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

    return (v8 + 1);
  }
}

id BMEventBookmarkSQLColumns()
{
  v28[4] = *MEMORY[0x1E69E9840];
  v0 = [BMSQLEventMetadataColumn alloc];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __BMEventBookmarkSQLColumns_block_invoke_5;
  v26 = &unk_1E6E53388;
  v27 = &__block_literal_global_34;
  v1 = [BMSQLEventMetadataColumn initWithName:v0 dataType:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" requestOnly:@"_bookmark.streamId" extractBlock:2 setValueBlock:1];
  v28[0] = v1;
  v2 = [BMSQLEventMetadataColumn alloc];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __BMEventBookmarkSQLColumns_block_invoke_6;
  v21 = &unk_1E6E53388;
  v22 = &__block_literal_global_36_0;
  v3 = [BMSQLEventMetadataColumn initWithName:v2 dataType:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" requestOnly:@"_bookmark.segmentName" extractBlock:2 setValueBlock:1];
  v28[1] = v3;
  v4 = [BMSQLEventMetadataColumn alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __BMEventBookmarkSQLColumns_block_invoke_7;
  v16[3] = &unk_1E6E53410;
  v17 = &__block_literal_global_38;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __BMEventBookmarkSQLColumns_block_invoke_8;
  v14[3] = &unk_1E6E53388;
  v15 = &__block_literal_global_38;
  v5 = [(BMSQLEventMetadataColumn *)v4 initWithName:@"_bookmark.iterationStartTime" dataType:1 requestOnly:1 extractBlock:v16 setValueBlock:v14];
  v28[2] = v5;
  v6 = [BMSQLEventMetadataColumn alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __BMEventBookmarkSQLColumns_block_invoke_9;
  v12[3] = &unk_1E6E53410;
  v13 = &__block_literal_global_41;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __BMEventBookmarkSQLColumns_block_invoke_10;
  v10[3] = &unk_1E6E53388;
  v11 = &__block_literal_global_41;
  v7 = [(BMSQLEventMetadataColumn *)v6 initWithName:@"_bookmark.offset" dataType:0 requestOnly:1 extractBlock:v12 setValueBlock:v10];
  v28[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];

  return v8;
}

id get_DKDiscoverabilitySignalsMetadataKeyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKDiscoverabilitySignalsMetadataKeyClass_softClass;
  v7 = get_DKDiscoverabilitySignalsMetadataKeyClass_softClass;
  if (!get_DKDiscoverabilitySignalsMetadataKeyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_DKDiscoverabilitySignalsMetadataKeyClass_block_invoke;
    v3[3] = &unk_1E6E52EB0;
    v3[4] = &v4;
    __get_DKDiscoverabilitySignalsMetadataKeyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_184928AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BMPBIntentEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          if (v13 == 10)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 92) |= 0x10u;
            while (1)
            {
              v54 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v54 & 0x7F) << v31;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                LOBYTE(v37) = 0;
                goto LABEL_90;
              }
            }

            v37 = (v33 != 0) & ~[a2 hasError];
LABEL_90:
            *(a1 + 88) = v37;
            goto LABEL_98;
          }

          if (v13 == 11)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 92) |= 8u;
            while (1)
            {
              v51 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v51 & 0x7F) << v39;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v41;
            }

LABEL_94:
            v46 = 64;
            goto LABEL_95;
          }

          if (v13 != 12)
          {
LABEL_79:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_98;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          switch(v13)
          {
            case 7:
              v25 = 0;
              v26 = 0;
              v27 = 0;
              *(a1 + 92) |= 2u;
              while (1)
              {
                v52 = 0;
                v28 = [a2 position] + 1;
                if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                {
                  v30 = [a2 data];
                  [v30 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v27 |= (v52 & 0x7F) << v25;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v11 = v26++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_88;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v27;
              }

LABEL_88:
              v46 = 40;
LABEL_95:
              *(a1 + v46) = v22;
              goto LABEL_98;
            case 8:
              v14 = PBReaderReadData();
              v15 = 56;
              break;
            case 9:
              v14 = PBReaderReadString();
              v15 = 72;
              break;
            default:
              goto LABEL_79;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          case 6:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 92) |= 4u;
            while (1)
            {
              v53 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v53 & 0x7F) << v16;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_84;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_84:
            v46 = 44;
            goto LABEL_95;
          default:
            goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            *(a1 + 92) |= 1u;
            v49 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v49;
            goto LABEL_98;
          case 2:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 80;
            break;
          default:
            goto LABEL_79;
        }
      }

      v38 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_98:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t typeWithBMPBIntentType(uint64_t result)
{
  if (result < 4)
  {
    return result;
  }

  v1 = __biome_log_for_category();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    typeWithBMPBIntentType_cold_1();
  }

  return 0;
}

uint64_t interactionDirectionWithPB(uint64_t result)
{
  if (result < 4)
  {
    return result;
  }

  v1 = __biome_log_for_category();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    interactionDirectionWithPB_cold_1();
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.add(library:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  closure #1 in static UnifiedLibrary.Library.add(library:)(&v4[4], a1, a2);
  os_unfair_lock_unlock(v4 + 6);
}

void type metadata accessor for Int64?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t static UnifiedLibrary.set(bmLibraryStreamBasesFunc:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0(&one-time initialization token for initializedLibrary);
  }

  return a3(a1, a2);
}

void *__getBiomeLibraryNodeSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BiomeLibraryLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6E53B20;
    v6 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_1;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_1)
  {
    __getBiomeLibraryNodeSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "BiomeLibraryNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryNodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void closure #1 in variable initialization expression of static UnifiedLibrary.initializedLibrary()
{
  v0 = objc_opt_self();
  v8 = protocol witness for static LibraryBase.databaseResourceIdentifier(legacyViewName:) in conformance UnifiedLibrary.Library;
  v9 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?);
  v7 = &block_descriptor_0;
  v1 = _Block_copy(&v4);

  [v0 setLegacyViewResourceMappingCallback_];
  _Block_release(v1);
  v8 = protocol witness for static LibraryBase.streamIdentifier(legacyStreamName:) in conformance UnifiedLibrary.Library;
  v9 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?);
  v7 = &block_descriptor_24;
  v2 = _Block_copy(&v4);

  [v0 setLegacyStreamNameMappingCallback_];
  _Block_release(v2);
  v8 = protocol witness for static LibraryBase.streamIdentifier(uuidString:) in conformance UnifiedLibrary.Library;
  v9 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?);
  v7 = &block_descriptor_27;
  v3 = _Block_copy(&v4);

  [v0 setUUIDStreamNameMappingCallback_];
  _Block_release(v3);
}

uint64_t static UnifiedLibrary.add(library:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0(&one-time initialization token for initializedLibrary);
  }

  return static UnifiedLibrary.Library.add(library:)(a1, a2);
}

uint64_t one-time initialization function for lockedLibraries()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay12BiomeStreams11LibraryBase_pXpGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay12BiomeStreams11LibraryBase_pXpGSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  static UnifiedLibrary.Library.lockedLibraries = result;
  return result;
}

uint64_t closure #1 in static UnifiedLibrary.Library.add(library:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = (*result + 32);
  v7 = *(*result + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 2;
    if (v8 == a2)
    {
      return result;
    }
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v9 = *(*v5 + 16);
  result = specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v10 = *v5;
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *v5 = v10;
  return result;
}

id BMConvertObjectToJSONString(void *a1, void *a2)
{
  v3 = a1;
  if (!v3 || ([MEMORY[0x1E695DFB0] null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v3))
  {
    v8 = 0;
  }

  else
  {
    v11 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v11];
    v6 = v11;
    v7 = v6;
    if (v5)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    }

    else if (a2)
    {
      v9 = v6;
      v8 = 0;
      *a2 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id __BMEventBookmarkSQLColumns_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  v3 = [v2 streamId];

  return v3;
}

id __BMEventBookmarkSQLColumns_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  v3 = [v2 segmentName];

  return v3;
}

uint64_t __BMEventBookmarkSQLColumns_block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  (*(*(a1 + 32) + 16))();

  return [v1 numberWithDouble:?];
}

double __BMEventBookmarkSQLColumns_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  [v2 iterationStartTime];
  v4 = v3;

  return v4;
}

uint64_t __BMEventBookmarkSQLColumns_block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedLong:v2];
}

uint64_t __BMEventBookmarkSQLColumns_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  v3 = [v2 offset];

  return v3;
}

uint64_t BiomeLibraryInternalLibrary()
{
  v3 = 0;
  v0 = BiomeLibraryInternalLibraryCore(&v3);
  if (!v0)
  {
    BiomeLibraryInternalLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for ResultColumn);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for AggregationFunction);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SQLExpression);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for StorableValue);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for Schema);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

uint64_t sub_18492B478(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_98(*a1);
  }

  type metadata accessor for SelectCore();
  v4 = OUTLINED_FUNCTION_100();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void *sub_18492B4F0(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for SelectCore();
    v4 = OUTLINED_FUNCTION_100();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t _s12BiomeStreams13StorableValueO04DateD10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOs0F3KeyAAsAGP06stringD0xSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = StorableValue.DataValueCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_18492BC58()
{
  OUTLINED_FUNCTION_141();
  if (v1)
  {
    return OUTLINED_FUNCTION_98(*(v0 + 8));
  }

  OUTLINED_FUNCTION_144();
  type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_175();
  v4 = OUTLINED_FUNCTION_129(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_18492BCBC()
{
  OUTLINED_FUNCTION_105_0();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for SQLDataType();
    OUTLINED_FUNCTION_174();
    v4 = OUTLINED_FUNCTION_129(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v0, v6);
  }
}

uint64_t sub_18492BD28()
{
  OUTLINED_FUNCTION_141();
  if (v3)
  {
    return OUTLINED_FUNCTION_98(*(v1 + 8));
  }

  OUTLINED_FUNCTION_144();
  type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_83();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_175();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    OUTLINED_FUNCTION_83();
    if (*(v7 + 84) == v0)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      type metadata accessor for SQLDataType();
      v6 = *(v2 + 28);
    }
  }

  v8 = OUTLINED_FUNCTION_129(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_18492BE18()
{
  OUTLINED_FUNCTION_105_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    type metadata accessor for SQLExpression();
    OUTLINED_FUNCTION_83();
    if (*(v7 + 84) == v6)
    {
      OUTLINED_FUNCTION_174();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      OUTLINED_FUNCTION_83();
      if (*(v9 + 84) == v6)
      {
        v8 = *(v5 + 24);
      }

      else
      {
        type metadata accessor for SQLDataType();
        v8 = *(v5 + 28);
      }
    }

    v10 = OUTLINED_FUNCTION_129(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}